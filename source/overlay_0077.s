
/*
0x34c000 in arm9.bin
*/

.section .iwram77, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      0x200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x200f344
	ldr     r1, [pc, #0x88] @ 0x21d0e20, (=0x4001050)
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	ldr     r1, [pc, #0x88] @ 0x21d0e24, (=0x4000050)
	strh    r0, [r1, #0x0]
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x0
	mov     r1, r0
	bl      0x20177bc
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x6c] @ 0x21d0e28, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x68] @ 0x21d0e2c, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      0x2017dd4
	mov     r2, #0x1
	mov     r0, #0x3
	mov     r1, #0x1e
	lsl     r2, r2, #18
	bl      0x2017fc8
	ldr     r1, [pc, #0x50] @ 0x21d0e30, (=0x504)
	mov     r0, r4
	mov     r2, #0x1e
	bl      0x200681c
	ldr     r2, [pc, #0x48] @ 0x21d0e30, (=0x504)
	mov     r1, #0x0
	mov     r4, r0
	blx     0x20d5124
	mov     r0, #0x1e
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x21d0e34, (=0x4ec)
	mov     r1, #0x0
	strh    r1, [r4, r0]
	add     r0, #0x10
	str     r1, [r4, r0]
	bl      Function_21d1184
	mov     r0, r4
	bl      Function_21d17b4
	mov     r0, r4
	bl      Function_21d11cc
	ldr     r0, [pc, #0x28] @ 0x21d0e38, (=0x21d1179)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	bl      0x201ffd0
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d0e1e

.align 2
.word 0x4001050 @ 0x21d0e20
.word 0x4000050 @ 0x21d0e24
.word 0xffffe0ff @ 0x21d0e28
.word 0x4001000 @ 0x21d0e2c
.word 0x504 @ 0x21d0e30
.word 0x4ec @ 0x21d0e34
.word 0x21d1179 @ 0x21d0e38



.thumb
Function_21d0e3c: @ 21d0e3c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r1
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x6
	bhi     branch_21d0e7a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d0e5a

Jumppoints_21d0e5a:
.hword branch_21d0e68 - Jumppoints_21d0e5a - 2
.hword branch_21d0eb8 - Jumppoints_21d0e5a - 2
.hword branch_21d0ed8 - Jumppoints_21d0e5a - 2
.hword branch_21d0eee - Jumppoints_21d0e5a - 2
.hword branch_21d0fbc - Jumppoints_21d0e5a - 2
.hword branch_21d1078 - Jumppoints_21d0e5a - 2
.hword branch_21d10bc - Jumppoints_21d0e5a - 2
.thumb
branch_21d0e68: @ 21d0e68 :thumb
	mov     r0, #0x8e
	lsl     r0, r0, #2
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x0]
	add     r0, r4, r0
	bl      Function_21d1a60
	cmp     r0, #0x1
	beq     branch_21d0e7c
.thumb
branch_21d0e7a: @ 21d0e7a :thumb
	b       branch_21d10dc
@ 0x21d0e7c

.thumb
branch_21d0e7c: @ 21d0e7c :thumb
	mov     r1, #0x8e
	ldr     r2, [pc, #0x264] @ 0x21d10e4, (=0x21bf67c)
	mov     r0, #0x0
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [r2, #0x6c]
	cmp     r1, #0x0
	bne     branch_21d0ea6
	mov     r2, #0x4f
	mov     r1, #0x1e
	lsl     r2, r2, #4
	str     r1, [r4, r2]
	mov     r1, r2
	mov     r3, #0x1
	sub     r1, #0x18
	str     r3, [r4, r1]
	sub     r2, #0x14
	str     r0, [r4, r2]
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_21d10dc
@ 0x21d0ea6

.thumb
branch_21d0ea6: @ 21d0ea6 :thumb
	mov     r1, #0x4f
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	str     r0, [r2, #0x6c]
	mov     r0, #0x1
	sub     r1, #0x14
	str     r0, [r4, r1]
	str     r0, [r5, #0x0]
	b       branch_21d10dc
@ 0x21d0eb8

.thumb
branch_21d0eb8: @ 21d0eb8 :thumb
	mov     r0, #0x8e
	lsl     r0, r0, #2
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x0]
	add     r0, r4, r0
	bl      Function_21d1df0
	cmp     r0, #0x1
	bne     branch_21d0f9e
	mov     r0, #0x8e
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_21d10dc
@ 0x21d0ed8

.thumb
branch_21d0ed8: @ 21d0ed8 :thumb
	mov     r0, #0x0
	bl      0x2004234
	mov     r0, #0x1
	ldr     r1, [pc, #0x204] @ 0x21d10e8, (=0x495)
	mov     r2, r0
	bl      0x2004550
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d10dc
@ 0x21d0eee

.thumb
branch_21d0eee: @ 21d0eee :thumb
	mov     r0, #0x4f
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d0f12
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	mov     r1, #0x0
	sub     r0, #0x60
	str     r1, [r4, r0]
	mov     r0, #0x8e
	lsl     r0, r0, #2
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x0]
	add     r0, r4, r0
	bl      Function_21d20e4
	b       branch_21d10dc
@ 0x21d0f12

.thumb
branch_21d0f12: @ 21d0f12 :thumb
	mov     r1, #0x1
	sub     r0, #0x60
	str     r1, [r4, r0]
	mov     r0, #0x8e
	lsl     r0, r0, #2
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x0]
	add     r0, r4, r0
	bl      Function_21d20e4
	ldr     r1, [pc, #0x1c4] @ 0x21d10ec, (=0x4fc)
	ldr     r2, [pc, #0x1b8] @ 0x21d10e4, (=0x21bf67c)
	ldr     r0, [r4, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, r1]
	ldr     r3, [r2, #0x48]
	mov     r0, #0x1
	mov     r6, r3
	and     r6, r0
	cmp     r6, #0x1
	beq     branch_21d0f44
	mov     r6, #0x8
	and     r3, r6
	cmp     r3, #0x8
	bne     branch_21d0f68
.thumb
branch_21d0f44: @ 21d0f44 :thumb
	ldr     r0, [pc, #0x1a8] @ 0x21d10f0, (=0x4ec)
	mov     r1, #0x1
	strh    r1, [r4, r0]
	mov     r0, #0x0
	mov     r1, #0x3c
	bl      0x200564c
	ldr     r0, [pc, #0x1a0] @ 0x21d10f4, (=0x1e7)
	mov     r1, #0x1
	bl      0x2005844
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x0]
	bl      Function_21d1d48
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	b       branch_21d10dc
@ 0x21d0f68

.thumb
branch_21d0f68: @ 21d0f68 :thumb
	ldr     r6, [r2, #0x44]
	mov     r3, #0x46
	and     r3, r6
	cmp     r3, #0x46
	bne     branch_21d0f94
	mov     r2, #0x2
	sub     r1, #0x10
	strh    r2, [r4, r1]
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	b       branch_21d10dc
@ 0x21d0f94

.thumb
branch_21d0f94: @ 21d0f94 :thumb
	mov     r3, #0xe1
	ldr     r6, [r4, r1]
	lsl     r3, r3, #2
	cmp     r6, r3
	bgt     branch_21d0fa0
.thumb
branch_21d0f9e: @ 21d0f9e :thumb
	b       branch_21d10dc
@ 0x21d0fa0

.thumb
branch_21d0fa0: @ 21d0fa0 :thumb
	mov     r3, #0x3
	sub     r1, #0x10
	strh    r3, [r4, r1]
	mov     r1, #0x0
	str     r0, [r2, #0x6c]
	bl      0x201ff74
	mov     r0, #0x0
	mov     r1, #0x3c
	bl      0x200564c
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	b       branch_21d10dc
@ 0x21d0fbc

.thumb
branch_21d0fbc: @ 21d0fbc :thumb
	mov     r0, #0x49
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r0, #0x8e
	lsl     r0, r0, #2
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x0]
	add     r0, r4, r0
	bl      Function_21d20e4
	mov     r0, #0x5
	lsl     r0, r0, #8
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0xa
	bne     branch_21d0ffa
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r3, [pc, #0x108] @ 0x21d10f8, (=0x7fff)
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	bl      0x200f174
.thumb
branch_21d0ffa: @ 21d0ffa :thumb
	bl      0x200598c
	cmp     r0, #0x0
	bne     branch_21d10dc
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d10dc
	mov     r0, #0x5
	lsl     r0, r0, #8
	ldr     r1, [r4, r0]
	cmp     r1, #0xa
	blt     branch_21d10dc
	sub     r0, #0x6b
	mov     r1, #0x0
	bl      0x20055d0
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x8
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x6
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r3, [pc, #0x90] @ 0x21d10f8, (=0x7fff)
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	bl      0x200f174
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	b       branch_21d10dc
@ 0x21d1078

.thumb
branch_21d1078: @ 21d1078 :thumb
	mov     r0, #0x49
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r0, #0x8e
	lsl     r0, r0, #2
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x0]
	add     r0, r4, r0
	bl      Function_21d20e4
	bl      0x2005684
	cmp     r0, #0x0
	bne     branch_21d10dc
	ldr     r0, [pc, #0x50] @ 0x21d10e8, (=0x495)
	mov     r1, #0x0
	bl      0x20055d0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r3, [pc, #0x4c] @ 0x21d10f8, (=0x7fff)
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	bl      0x200f174
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	b       branch_21d10dc
@ 0x21d10bc

.thumb
branch_21d10bc: @ 21d10bc :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d10dc
	mov     r0, #0x8e
	lsl     r0, r0, #2
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x0]
	add     r0, r4, r0
	bl      Function_21d21c0
	cmp     r0, #0x1
	bne     branch_21d10dc
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x21d10dc

.thumb
branch_21d10dc: @ 21d10dc :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d10e2


.align 2


.word 0x21bf67c @ 0x21d10e4
.word 0x495 @ 0x21d10e8
.word 0x4fc @ 0x21d10ec
.word 0x4ec @ 0x21d10f0
.word 0x1e7 @ 0x21d10f4
.word 0x7fff @ 0x21d10f8
.thumb
Function_21d10fc: @ 21d10fc :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	bl      0x200682c
	mov     r6, r0
	ldr     r0, [pc, #0x5c] @ 0x21d1164, (=0x4ec)
	ldr     r4, [r6, #0x0]
	ldrh    r5, [r6, r0]
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, r6
	bl      Function_21d11fc
	mov     r0, r6
	bl      Function_21d1908
	mov     r0, r7
	bl      0x2006830
	mov     r0, r4
	bl      0x201807c
	cmp     r5, #0x1
	beq     branch_21d1138
	cmp     r5, #0x2
	beq     branch_21d1144
	cmp     r5, #0x3
	beq     branch_21d1150
.thumb
branch_21d1138: @ 21d1138 :thumb
	mov     r0, #0x0
	ldr     r1, [pc, #0x2c] @ 0x21d1168, (=0x20f8ab4)
	mvn     r0, r0
	bl      0x2000ec4
	b       branch_21d115e
@ 0x21d1144

.thumb
branch_21d1144: @ 21d1144 :thumb
	mov     r0, #0x0
	ldr     r1, [pc, #0x24] @ 0x21d116c, (=0x20f8a48)
	mvn     r0, r0
	bl      0x2000ec4
	b       branch_21d115e
@ 0x21d1150

.thumb
branch_21d1150: @ 21d1150 :thumb
	mov     r0, #0x0
	bl      0x2004234
	ldr     r0, [pc, #0x18] @ 0x21d1170, (=0x4d)
	ldr     r1, [pc, #0x18] @ 0x21d1174, (=0x21d788c)
	bl      0x2000ec4
.thumb
branch_21d115e: @ 21d115e :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d1162


.align 2


.word 0x4ec @ 0x21d1164
.word 0x20f8ab4 @ 0x21d1168
.word 0x20f8a48 @ 0x21d116c
.word 0x4d @ 0x21d1170
.word 0x21d788c @ 0x21d1174
.thumb
Function_21d1178: @ 21d1178 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d1180, (=0x201c2b9)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x21d117e


.align 2


.word 0x201c2b9 @ 0x21d1180
.thumb
Function_21d1184: @ 21d1184 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d11a0, (=0x21d7404)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d118e: @ 21d118e :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d118e
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d11a0

.word 0x21d7404 @ 0x21d11a0
.thumb
Function_21d11a4: @ 21d11a4 :thumb
	ldr     r0, [pc, #0x20] @ 0x21d11c8, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	and     r0, r1
	cmp     r0, #0x1
	beq     branch_21d11c0
	mov     r0, #0x8
	and     r0, r1
	cmp     r0, #0x8
	beq     branch_21d11c0
	mov     r0, #0x4
	and     r0, r1
	cmp     r0, #0x4
	bne     branch_21d11c4
.thumb
branch_21d11c0: @ 21d11c0 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x21d11c4

.thumb
branch_21d11c4: @ 21d11c4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d11c8

.word 0x21bf67c @ 0x21d11c8
.thumb
Function_21d11cc: @ 21d11cc :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x4
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x1
	mov     r3, r1
	bl      Function_2024220
	str     r0, [r4, #0x8]
	ldr     r1, [pc, #0x10] @ 0x21d11f8, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	mov     r0, #0x1
	orr     r0, r2
	strh    r0, [r1, #0x0]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d11f8

.word 0x4000008 @ 0x21d11f8
.thumb
Function_21d11fc: @ 21d11fc :thumb
	ldr     r3, [pc, #0x4] @ 0x21d1204, (=0x20242c5)
	ldr     r0, [r0, #0x8]
	bx      r3
@ 0x21d1202


.align 2


.word 0x20242c5 @ 0x21d1204
.thumb
Function_21d1208: @ 21d1208 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r3
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	add     r0, #0x70
	mov     r1, r4
	mov     r2, #0x4
	bl      0x20182cc
	mov     r0, #0x30
	mov     r1, r6
	mov     r2, r4
	bl      LoadFromNARC_2
	str     r0, [r5, #0x5c]
	mov     r0, #0x30
	mov     r1, r7
	mov     r2, r4
	bl      LoadFromNARC_2
	str     r0, [r5, #0x60]
	mov     r0, #0x30
	mov     r1, #0x2
	mov     r2, r4
	bl      LoadFromNARC_2
	mov     r1, r5
	mov     r2, r5
	str     r0, [r5, #0x64]
	add     r0, r5, #0x4
	add     r1, #0x58
	add     r2, #0x5c
	bl      0x201ca3c
	ldr     r0, [r5, #0x60]
	mov     r1, #0x0
	blx     0x20b3c5c
	mov     r6, r0
	ldr     r0, [r5, #0x64]
	mov     r1, #0x0
	blx     0x20b3c5c
	mov     r7, r0
	mov     r0, r5
	ldr     r2, [r5, #0x58]
	add     r0, #0x70
	mov     r1, r6
	blx     0x20b2cb4
	str     r0, [r5, #0x68]
	mov     r0, r5
	ldr     r2, [r5, #0x58]
	add     r0, #0x70
	mov     r1, r7
	blx     0x20b2cb4
	str     r0, [r5, #0x6c]
	ldr     r0, [r5, #0x5c]
	blx     0x20b3c1c
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x68]
	ldr     r2, [r5, #0x58]
	ldr     r3, [sp, #0x0]
	mov     r1, r6
	blx     0x20ae4f0
	ldr     r0, [r5, #0x6c]
	ldr     r2, [r5, #0x58]
	ldr     r3, [sp, #0x0]
	mov     r1, r7
	blx     0x20ae4f0
	ldr     r1, [r5, #0x68]
	add     r0, r5, #0x4
	blx     0x20ae77c
	ldr     r1, [r5, #0x6c]
	add     r0, r5, #0x4
	blx     0x20ae77c
	mov     r3, r5
	add     r6, sp, #0x10
	mov     r7, #0x0
	str     r7, [r6, #0x0]
	add     r2, sp, #0x4
	str     r7, [r6, #0x4]
	str     r7, [r2, #0x0]
	str     r7, [r6, #0x8]
	str     r7, [r2, #0x4]
	ldmia   r6!, {r0,r1}
	str     r7, [r2, #0x8]
	add     r3, #0x80
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	ldr     r6, [pc, #0x2c] @ 0x21d12fc, (=0x21d72e4)
	str     r0, [r3, #0x0]
	mov     r3, r5
	ldmia   r6!, {r0,r1}
	add     r3, #0x8c
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	mov     r3, r5
	ldmia   r2!, {r0,r1}
	add     r3, #0x98
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	mov     r1, r4
	str     r0, [r3, #0x0]
	mov     r0, r5
	add     r0, #0xac
	str     r7, [r0, #0x0]
	mov     r0, r5
	bl      Function_21d1300
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d12fa


.align 2


.word 0x21d72e4 @ 0x21d12fc
.thumb
Function_21d1300: @ 21d1300 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x30
	mov     r4, r1
	bl      0x2006c24
	mov     r6, r0
	mov     r0, #0x15
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r1, r6
	mov     r2, #0x13
	mov     r3, r4
	bl      0x20170d8
	mov     r0, #0x56
	lsl     r0, r0, #2
	mov     r2, #0x1f
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	lsl     r2, r2, #16
	blx     0x20b2d8c
	mov     r0, #0x56
	lsl     r0, r0, #2
	mov     r2, #0x3f
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	lsl     r2, r2, #24
	blx     0x20b2d8c
	mov     r0, r5
	mov     r1, #0x4a
	str     r4, [sp, #0x0]
	add     r0, #0x70
	lsl     r1, r1, #2
	str     r0, [sp, #0x4]
	add     r0, r5, r1
	add     r1, #0x28
	add     r1, r5, r1
	mov     r2, r6
	mov     r3, #0x15
	bl      0x2017164
	mov     r0, #0x4a
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      0x2017240
	mov     r0, r5
	mov     r1, #0x4f
	str     r4, [sp, #0x0]
	add     r0, #0x70
	lsl     r1, r1, #2
	str     r0, [sp, #0x4]
	add     r0, r5, r1
	add     r1, #0x14
	add     r1, r5, r1
	mov     r2, r6
	mov     r3, #0x14
	bl      0x2017164
	mov     r0, #0x4f
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      0x2017240
	mov     r1, #0x15
	mov     r0, r5
	lsl     r1, r1, #4
	add     r0, #0xb0
	add     r1, r5, r1
	bl      0x2017258
	mov     r1, #0x0
	mov     r0, r5
	add     r0, #0xb0
	mov     r2, r1
	mov     r3, r1
	bl      0x2017350
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r5
	add     r0, #0xb0
	mov     r2, r1
	mov     r3, r1
	bl      0x201736c
	mov     r0, r5
	add     r0, #0xb0
	mov     r1, #0x1
	bl      0x2017348
	mov     r1, #0x4a
	mov     r0, r5
	lsl     r1, r1, #2
	add     r0, #0xb0
	add     r1, r5, r1
	bl      0x201727c
	mov     r1, #0x4f
	mov     r0, r5
	lsl     r1, r1, #2
	add     r0, #0xb0
	add     r1, r5, r1
	bl      0x201727c
	mov     r0, #0x2
	lsl     r0, r0, #8
	add     r0, r5, r0
	mov     r1, r6
	mov     r2, #0x10
	mov     r3, r4
	bl      0x20170d8
	mov     r0, #0x82
	lsl     r0, r0, #2
	mov     r2, #0x1f
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	lsl     r2, r2, #16
	blx     0x20b2d8c
	mov     r0, #0x82
	lsl     r0, r0, #2
	mov     r2, #0x3f
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	lsl     r2, r2, #24
	blx     0x20b2d8c
	mov     r0, r5
	mov     r1, #0x76
	str     r4, [sp, #0x0]
	add     r0, #0x70
	lsl     r1, r1, #2
	str     r0, [sp, #0x4]
	add     r0, r5, r1
	add     r1, #0x28
	add     r1, r5, r1
	mov     r2, r6
	mov     r3, #0x12
	bl      0x2017164
	mov     r0, #0x76
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      0x2017240
	mov     r0, r5
	mov     r1, #0x7b
	str     r4, [sp, #0x0]
	add     r0, #0x70
	lsl     r1, r1, #2
	str     r0, [sp, #0x4]
	add     r0, r5, r1
	add     r1, #0x14
	add     r1, r5, r1
	mov     r2, r6
	mov     r3, #0x11
	bl      0x2017164
	mov     r0, #0x7b
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      0x2017240
	mov     r1, #0x16
	lsl     r1, r1, #4
	add     r0, r5, r1
	add     r1, #0xa0
	add     r1, r5, r1
	bl      0x2017258
	mov     r1, #0x0
	mov     r0, #0x16
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r1
	bl      0x2017350
	mov     r0, #0x16
	mov     r1, #0x1
	lsl     r1, r1, #12
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r2, r1
	mov     r3, r1
	bl      0x201736c
	mov     r0, #0x16
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r1, #0x1
	bl      0x2017348
	mov     r1, #0x16
	lsl     r1, r1, #4
	add     r0, r5, r1
	add     r1, #0x78
	add     r1, r5, r1
	bl      0x201727c
	mov     r1, #0x16
	lsl     r1, r1, #4
	add     r0, r5, r1
	add     r1, #0x8c
	add     r1, r5, r1
	bl      0x201727c
	mov     r0, r6
	bl      0x2006ca8
	mov     r1, #0x85
	ldr     r0, [pc, #0x20] @ 0x21d14dc, (=0xfffffed2)
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r2, [pc, #0x1c] @ 0x21d14e0, (=0xe383)
	add     r0, r1, #0x4
	str     r2, [r5, r0]
	mov     r0, r1
	mov     r2, #0x1
	lsl     r2, r2, #12
	add     r0, #0x8
	str     r2, [r5, r0]
	mov     r0, #0x1e
	lsl     r0, r0, #10
	add     r1, #0xc
	str     r0, [r5, r1]
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x21d14dc

.word 0xfffffed2 @ 0x21d14dc
.word 0xe383 @ 0x21d14e0
.thumb
Function_21d14e4: @ 21d14e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d1514
	mov     r0, r4
	ldr     r1, [r4, #0x68]
	add     r0, #0x70
	blx     0x20b2cd8
	mov     r0, r4
	ldr     r1, [r4, #0x6c]
	add     r0, #0x70
	blx     0x20b2cd8
	ldr     r0, [r4, #0x60]
	bl      free
	ldr     r0, [r4, #0x64]
	bl      free
	ldr     r0, [r4, #0x5c]
	bl      free
	pop     {r4,pc}
@ 0x21d1514

.thumb
Function_21d1514: @ 21d1514 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x15
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      0x2017110
	mov     r0, #0x4a
	lsl     r0, r0, #2
	mov     r1, r4
	add     r0, r4, r0
	add     r1, #0x70
	bl      0x20171a0
	mov     r0, #0x4f
	lsl     r0, r0, #2
	mov     r1, r4
	add     r0, r4, r0
	add     r1, #0x70
	bl      0x20171a0
	mov     r0, #0x2
	lsl     r0, r0, #8
	add     r0, r4, r0
	bl      0x2017110
	mov     r0, #0x76
	lsl     r0, r0, #2
	mov     r1, r4
	add     r0, r4, r0
	add     r1, #0x70
	bl      0x20171a0
	mov     r0, #0x7b
	lsl     r0, r0, #2
	add     r0, r4, r0
	add     r4, #0x70
	mov     r1, r4
	bl      0x20171a0
	pop     {r4,pc}
@ 0x21d1566


.align 2, 0


.thumb
Function_21d1568: @ 21d1568 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x24
	ldr     r6, [pc, #0x184] @ 0x21d16f4, (=0x21d73e0)
	mov     r5, r0
	mov     r4, r1
	add     r3, sp, #0x0
	mov     r2, #0x4
.thumb
branch_21d1576: @ 21d1576 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1576
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x2a
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	bne     branch_21d15b6
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_21d15b6
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	bl      Function_21d25ac
	mov     r1, r4
	add     r1, #0xa8
	ldr     r1, [r1, #0x0]
	mov     r0, #0x0
	bl      0x2020854
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	bl      0x20203d4
	b       branch_21d15cc
@ 0x21d15b6

.thumb
branch_21d15b6: @ 21d15b6 :thumb
	mov     r1, r4
	add     r1, #0xa4
	ldr     r1, [r1, #0x0]
	mov     r0, #0x0
	bl      0x2020854
	mov     r0, r4
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	bl      0x20203d4
.thumb
branch_21d15cc: @ 21d15cc :thumb
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	.hword  0x1c89 @ add r1, r1, #0x2
	str     r1, [r5, r0]
	mov     r1, #0x5a
	ldr     r0, [r5, r0]
	lsl     r1, r1, #2
	blx     _s32_div_f
	mov     r0, #0xab
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x10c] @ 0x21d16f8, (=0xffff)
	mul     r0, r1
	mov     r1, #0x5a
	lsl     r1, r1, #2
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d250
	blx     0x20e01b8
	ldr     r2, [pc, #0xf8] @ 0x21d16fc, (=0x33333333)
	ldr     r3, [pc, #0xfc] @ 0x21d1700, (=0x3fd33333)
	blx     0x20e0234
	blx     0x20e0088
	mov     r1, r4
	add     r1, #0x84
	ldr     r1, [r1, #0x0]
	sub     r1, r1, r0
	mov     r0, r4
	add     r0, #0x84
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d16f0
	cmp     r0, #0x1
	beq     branch_21d162c
	cmp     r0, #0x2
	beq     branch_21d1640
	add     sp, #0x24
	pop     {r3-r6,pc}
@ 0x21d162c

.thumb
branch_21d162c: @ 21d162c :thumb
	bl      Call_G3X_Reset
	mov     r0, #0x1
	mov     r1, r0
	bl      0x20241bc
	mov     r0, #0x0
	add     sp, #0x24
	str     r0, [r4, #0x0]
	pop     {r3-r6,pc}
@ 0x21d1640

.thumb
branch_21d1640: @ 21d1640 :thumb
	bl      Call_G3X_Reset
	bl      0x20203ec
	mov     r1, r4
	add     r0, sp, #0x0
	add     r1, #0x98
	bl      0x201e268
	mov     r0, #0x2a
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	bne     branch_21d166c
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_21d1680
	mov     r0, r4
	bl      Function_21d1704
	b       branch_21d1680
@ 0x21d166c

.thumb
branch_21d166c: @ 21d166c :thumb
	blx     0x20c2be8
	mov     r1, r4
	mov     r3, r4
	add     r0, r4, #0x4
	add     r1, #0x80
	add     r2, sp, #0x0
	add     r3, #0x8c
	bl      0x201ca74
.thumb
branch_21d1680: @ 21d1680 :thumb
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1694
	cmp     r0, #0x1
	beq     branch_21d16a0
	cmp     r0, #0x2
	beq     branch_21d16b0
	b       branch_21d16e8
@ 0x21d1694

.thumb
branch_21d1694: @ 21d1694 :thumb
	ldr     r0, [r4, #0x68]
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x6c]
	str     r1, [r0, #0x0]
	b       branch_21d16e8
@ 0x21d16a0

.thumb
branch_21d16a0: @ 21d16a0 :thumb
	ldr     r0, [r4, #0x68]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d16b0
	mov     r0, #0x0
	add     r4, #0xac
	str     r0, [r4, #0x0]
	b       branch_21d16e8
@ 0x21d16b0

.thumb
branch_21d16b0: @ 21d16b0 :thumb
	ldr     r2, [r4, #0x68]
	mov     r0, #0x1
	ldr     r1, [r2, #0x0]
	lsl     r0, r0, #12
	add     r1, r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [r4, #0x6c]
	ldr     r1, [r2, #0x0]
	add     r0, r1, r0
	str     r0, [r2, #0x0]
	ldr     r2, [r4, #0x68]
	ldr     r0, [r2, #0x8]
	ldr     r1, [r2, #0x0]
	ldrh    r0, [r0, #0x4]
	lsl     r0, r0, #12
	cmp     r1, r0
	bne     branch_21d16d6
	mov     r0, #0x0
	str     r0, [r2, #0x0]
.thumb
branch_21d16d6: @ 21d16d6 :thumb
	ldr     r2, [r4, #0x6c]
	ldr     r0, [r2, #0x8]
	ldr     r1, [r2, #0x0]
	ldrh    r0, [r0, #0x4]
	lsl     r0, r0, #12
	cmp     r1, r0
	bne     branch_21d16e8
	mov     r0, #0x0
	str     r0, [r2, #0x0]
.thumb
branch_21d16e8: @ 21d16e8 :thumb
	mov     r0, #0x1
	mov     r1, r0
	bl      0x20241bc
.thumb
branch_21d16f0: @ 21d16f0 :thumb
	add     sp, #0x24
	pop     {r3-r6,pc}
@ 0x21d16f4

.word 0x21d73e0 @ 0x21d16f4
.word 0xffff @ 0x21d16f8
.word 0x33333333 @ 0x21d16fc
.word 0x3fd33333 @ 0x21d1700
.thumb
Function_21d1704: @ 21d1704 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x89
	lsl     r0, r0, #2
	ldrb    r1, [r4, r0]
	cmp     r1, #0x1
	bne     branch_21d172c
	sub     r0, #0xfc
	mov     r1, #0x1
	add     r0, r4, r0
	lsl     r1, r1, #12
	bl      0x2017204
	cmp     r0, #0x1
	bne     branch_21d172c
	mov     r0, #0x89
	mov     r1, #0x2
	lsl     r0, r0, #2
	strb    r1, [r4, r0]
.thumb
branch_21d172c: @ 21d172c :thumb
	ldr     r0, [pc, #0x80] @ 0x21d17b0, (=0x225)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x1
	bne     branch_21d174a
	sub     r0, #0xe9
	mov     r1, #0x1
	add     r0, r4, r0
	lsl     r1, r1, #12
	bl      0x2017204
	cmp     r0, #0x1
	bne     branch_21d174a
	ldr     r0, [pc, #0x68] @ 0x21d17b0, (=0x225)
	mov     r1, #0x2
	strb    r1, [r4, r0]
.thumb
branch_21d174a: @ 21d174a :thumb
	mov     r0, #0x76
	lsl     r0, r0, #2
	mov     r1, #0x1
	add     r0, r4, r0
	lsl     r1, r1, #12
	bl      0x20171cc
	mov     r0, #0x7b
	lsl     r0, r0, #2
	mov     r1, #0x1
	add     r0, r4, r0
	lsl     r1, r1, #12
	bl      0x20171cc
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     0x20b275c
	mov     r0, #0x16
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      0x2017294
	mov     r0, #0x89
	lsl     r0, r0, #2
	ldrb    r1, [r4, r0]
	cmp     r1, #0x2
	bne     branch_21d178c
	.hword  0x1c40 @ add r0, r0, #0x1
	ldrb    r0, [r4, r0]
	cmp     r0, #0x2
	beq     branch_21d1796
.thumb
branch_21d178c: @ 21d178c :thumb
	add     r4, #0xb0
	mov     r0, r4
	bl      0x2017294
	b       branch_21d17a0
@ 0x21d1796

.thumb
branch_21d1796: @ 21d1796 :thumb
	add     r4, #0xb0
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2017348
.thumb
branch_21d17a0: @ 21d17a0 :thumb
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x0
	str     r2, [sp, #0x0]
	blx     0x20b275c
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d17b0

.word 0x225 @ 0x21d17b0
.thumb
Function_21d17b4: @ 21d17b4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0xb8
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      0x2018340
	add     r3, sp, #0xa8
	ldr     r5, [pc, #0x128] @ 0x21d18ec, (=0x21d72f0)
	str     r0, [r4, #0x4]
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0x118] @ 0x21d18f0, (=0x21d7354)
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
	ldr     r0, [r4, #0x4]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0xfc] @ 0x21d18f4, (=0x21d7370)
	add     r3, sp, #0x70
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
	ldr     r0, [r4, #0x4]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0xe0] @ 0x21d18f8, (=0x21d738c)
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
	ldr     r0, [r4, #0x4]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0xc4] @ 0x21d18fc, (=0x21d73a8)
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
	ldr     r0, [r4, #0x4]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0xa8] @ 0x21d1900, (=0x21d7300)
	add     r3, sp, #0x1c
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0x8c] @ 0x21d1904, (=0x21d731c)
	add     r3, sp, #0x0
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
	ldr     r0, [r4, #0x4]
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x8
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x0
	mov     r1, r0
	bl      0x201975c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201975c
	add     sp, #0xb8
	pop     {r3-r5,pc}
@ 0x21d18ea


.align 2


.word 0x21d72f0 @ 0x21d18ec
.word 0x21d7354 @ 0x21d18f0
.word 0x21d7370 @ 0x21d18f4
.word 0x21d738c @ 0x21d18f8
.word 0x21d73a8 @ 0x21d18fc
.word 0x21d7300 @ 0x21d1900
.word 0x21d731c @ 0x21d1904
.thumb
Function_21d1908: @ 21d1908 :thumb
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
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x8
	mov     r1, #0x0
	bl      0x201ff74
	ldr     r0, [r4, #0x4]
	mov     r1, #0x4
	bl      0x2019044
	ldr     r0, [r4, #0x4]
	mov     r1, #0x5
	bl      0x2019044
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r4, #0x4]
	mov     r1, #0x7
	bl      0x2019044
	ldr     r0, [r4, #0x4]
	bl      free
	pop     {r4,pc}
@ 0x21d1984

.thumb
Function_21d1984: @ 21d1984 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r3, #0x0
	add     r2, sp, #0x0
	strh    r3, [r2, #0x0]
	mov     r4, r1
	add     r1, sp, #0x8
	strh    r3, [r2, #0x2]
	str     r3, [r1, #0x0]
	strh    r3, [r2, #0x4]
	str     r3, [r1, #0x4]
	strh    r3, [r2, #0x6]
	mov     r2, #0x2a
	str     r3, [r1, #0x8]
	lsl     r2, r2, #4
	ldr     r0, [r0, r2]
	cmp     r0, #0x1
	beq     branch_21d1a54
	sub     r2, #0x90
	ldr     r0, [r4, r2]
	cmp     r0, #0x3c
	bcs     branch_21d19c0
	ldr     r0, [pc, #0xa4] @ 0x21d1a58, (=0xfffff600)
	str     r0, [sp, #0x10]
	mov     r0, r1
	mov     r1, r4
	add     r1, #0xa8
	ldr     r1, [r1, #0x0]
	bl      0x2020990
.thumb
branch_21d19c0: @ 21d19c0 :thumb
	mov     r1, #0x21
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	cmp     r0, #0x4b
	bne     branch_21d19d6
	mov     r0, r1
	mov     r2, #0x1
	add     r0, #0x14
	strb    r2, [r4, r0]
	add     r1, #0x15
	strb    r2, [r4, r1]
.thumb
branch_21d19d6: @ 21d19d6 :thumb
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0xfa
	bcc     branch_21d1a4a
	mov     r1, r4
	add     r1, #0xa8
	ldr     r1, [r1, #0x0]
	add     r0, sp, #0x0
	bl      0x2020a94
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0xa8
	ldr     r1, [r1, #0x0]
	add     r0, sp, #0x0
	bl      0x20209d4
	mov     r1, #0x86
	lsl     r1, r1, #2
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r2, [r4, r1]
	ldr     r0, [r4, r0]
	add     r0, r2, r0
	str     r0, [r4, r1]
	ldr     r2, [r4, r1]
	ldr     r0, [pc, #0x48] @ 0x21d1a5c, (=0xc011)
	cmp     r2, r0
	bge     branch_21d1a4a
	str     r0, [r4, r1]
	add     r1, #0x8
	ldr     r0, [r4, r1]
	mov     r1, r4
	asr     r0, r0, #8
	neg     r0, r0
	add     r1, #0xa8
	lsl     r0, r0, #16
	ldr     r1, [r1, #0x0]
	lsr     r0, r0, #16
	bl      0x202094c
	mov     r1, #0x22
	lsl     r1, r1, #4
	mov     r0, r1
	ldr     r2, [r4, r1]
	add     r0, #0x60
	sub     r0, r2, r0
	str     r0, [r4, r1]
	mov     r0, #0x1
	ldr     r2, [r4, r1]
	lsl     r0, r0, #12
	cmp     r2, r0
	bge     branch_21d1a4a
	str     r0, [r4, r1]
.thumb
branch_21d1a4a: @ 21d1a4a :thumb
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_21d1a54: @ 21d1a54 :thumb
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x21d1a58

.word 0xfffff600 @ 0x21d1a58
.word 0xc011 @ 0x21d1a5c
.thumb
Function_21d1a60: @ 21d1a60 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x24
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	bl      Function_21d24c8
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_21d2214
	add     r0, r5, #0x4
	mov     r1, #0x1
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_21d1208
	ldr     r0, [pc, #0x168] @ 0x21d1bf0, (=0x4000060)
	ldr     r2, [pc, #0x16c] @ 0x21d1bf4, (=0xffffcfff)
	ldrh    r1, [r0, #0x0]
	mov     r3, r1
	and     r3, r2
	mov     r1, #0x10
	orr     r1, r3
	strh    r1, [r0, #0x0]
	ldrh    r1, [r0, #0x0]
	and     r2, r1
	mov     r1, #0x8
	orr     r1, r2
	strh    r1, [r0, #0x0]
	mov     r0, #0x9d
	lsl     r0, r0, #2
	mov     r1, r0
	ldr     r2, [r5, r0]
	sub     r1, #0x34
	str     r2, [r5, r1]
	add     r1, r0, #0x4
	ldr     r2, [r5, r1]
	mov     r1, r0
	sub     r1, #0x30
	str     r2, [r5, r1]
	mov     r1, r0
	add     r1, #0x8
	ldr     r2, [r5, r1]
	mov     r1, r0
	sub     r1, #0x2c
	str     r2, [r5, r1]
	mov     r1, r0
	sub     r1, #0x18
	ldr     r2, [r5, r1]
	mov     r1, r0
	sub     r1, #0x28
	str     r2, [r5, r1]
	mov     r1, r0
	sub     r1, #0x14
	ldr     r2, [r5, r1]
	mov     r1, r0
	sub     r1, #0x24
	str     r2, [r5, r1]
	mov     r1, r0
	sub     r1, #0x10
	ldr     r1, [r5, r1]
	sub     r0, #0x20
	str     r1, [r5, r0]
	mov     r0, r4
	bl      0x20203ac
	mov     r1, r5
	add     r1, #0xa8
	str     r0, [r1, #0x0]
	mov     r3, #0x0
	mov     r0, r5
	mov     r1, #0x9
	mov     r2, #0xb6
	str     r3, [sp, #0x0]
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #6
	str     r0, [sp, #0x4]
	add     r0, r5, r1
	add     r1, #0xc
	add     r1, r5, r1
	lsl     r2, r2, #4
	bl      0x2020784
	mov     r2, r5
	add     r2, #0xa8
	mov     r1, #0x4b
	ldr     r2, [r2, #0x0]
	mov     r0, #0x0
	lsl     r1, r1, #14
	bl      0x20206bc
	mov     r1, r5
	add     r1, #0xa8
	ldr     r1, [r1, #0x0]
	mov     r0, #0x0
	bl      0x2020854
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	bl      0x20203d4
	add     r1, sp, #0x18
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, r4
	bl      0x20203ac
	mov     r1, r5
	add     r1, #0xac
	str     r0, [r1, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	str     r0, [sp, #0x8]
	ldr     r2, [pc, #0x9c] @ 0x21d1bf8, (=Unknown_21d72c8)
	ldr     r3, [pc, #0xa0] @ 0x21d1bfc, (=0xfa4)
	add     r0, sp, #0x18
	lsl     r1, r1, #16
	bl      0x20206d0
	mov     r2, r5
	add     r2, #0xac
	mov     r1, #0x4b
	ldr     r2, [r2, #0x0]
	mov     r0, #0x0
	lsl     r1, r1, #14
	bl      0x20206bc
	ldr     r4, [pc, #0x88] @ 0x21d1c00, (=0x21d72d8)
	add     r3, sp, #0xc
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	str     r0, [r3, #0x0]
	add     r1, #0xac
	ldr     r1, [r1, #0x0]
	mov     r0, r2
	bl      0x2020990
	mov     r0, r5
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      0x20203d4
	mov     r3, #0xa3
	lsl     r3, r3, #2
	add     r2, r3, #0x2
	ldsh    r1, [r5, r3]
	.hword  0x1d1b @ add r3, r3, #0x4
	ldsh    r2, [r5, r2]
	ldsh    r3, [r5, r3]
	mov     r0, #0x0
	blx     0x20af51c
	ldr     r1, [pc, #0x54] @ 0x21d1c04, (=0x7fff)
	mov     r0, #0x0
	blx     0x20af558
	ldr     r3, [pc, #0x50] @ 0x21d1c08, (=0x292)
	mov     r0, #0x1
	add     r2, r3, #0x2
	ldsh    r1, [r5, r3]
	.hword  0x1d1b @ add r3, r3, #0x4
	ldsh    r2, [r5, r2]
	ldsh    r3, [r5, r3]
	blx     0x20af51c
	ldr     r1, [pc, #0x3c] @ 0x21d1c04, (=0x7fff)
	mov     r0, #0x1
	blx     0x20af558
	ldr     r2, [pc, #0x20] @ 0x21d1bf0, (=0x4000060)
	ldr     r0, [pc, #0x20] @ 0x21d1bf4, (=0xffffcfff)
	ldrh    r1, [r2, #0x0]
	and     r1, r0
	mov     r0, #0x10
	orr     r0, r1
	strh    r0, [r2, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x21d1c0c, (=0x21bf6dc)
	mov     r1, #0x1
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	mov     r0, #0x2
	str     r0, [r5, #0x4]
	mov     r0, #0x1
	add     sp, #0x24
	pop     {r3-r6,pc}
@ 0x21d1bf0

.word 0x4000060 @ 0x21d1bf0
.word 0xffffcfff @ 0x21d1bf4
.word Unknown_21d72c8 @ 0x21d1bf8
.word 0xfa4 @ 0x21d1bfc
.word 0x21d72d8 @ 0x21d1c00
.word 0x7fff @ 0x21d1c04
.word 0x292 @ 0x21d1c08
.word 0x21bf6dc @ 0x21d1c0c



.thumb
Function_21d1c10: @ 21d1c10 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xa
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	sub     r0, #0xc
	ldr     r0, [r4, r0]
	sub     r0, r1, r0
	mov     r1, #0x3c
	blx     _s32_div_f
	mov     r1, #0x9
	lsl     r1, r1, #6
	ldr     r2, [r4, r1]
	add     r0, r2, r0
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x44
	add     r1, #0x38
	ldr     r2, [r4, r0]
	ldr     r0, [r4, r1]
	mov     r1, #0x3c
	sub     r0, r2, r0
	blx     _s32_div_f
	mov     r1, #0x91
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	add     r0, r2, r0
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x44
	add     r1, #0x38
	ldr     r2, [r4, r0]
	ldr     r0, [r4, r1]
	mov     r1, #0x3c
	sub     r0, r2, r0
	blx     _s32_div_f
	mov     r1, #0x92
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	add     r0, r2, r0
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x20
	add     r1, #0x14
	ldr     r2, [r4, r0]
	ldr     r0, [r4, r1]
	mov     r1, #0x3c
	sub     r0, r2, r0
	blx     _s32_div_f
	mov     r1, #0x93
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	add     r0, r2, r0
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x20
	add     r1, #0x14
	ldr     r2, [r4, r0]
	ldr     r0, [r4, r1]
	mov     r1, #0x3c
	sub     r0, r2, r0
	blx     _s32_div_f
	mov     r1, #0x25
	lsl     r1, r1, #4
	ldr     r2, [r4, r1]
	add     r0, r2, r0
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x20
	add     r1, #0x14
	ldr     r2, [r4, r0]
	ldr     r0, [r4, r1]
	mov     r1, #0x3c
	sub     r0, r2, r0
	blx     _s32_div_f
	mov     r1, #0x95
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	add     r0, r2, r0
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x21d1cbe


.align 2, 0


.thumb
Function_21d1cc0: @ 21d1cc0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x2c
	mov     r4, r1
	mov     r1, #0x5
	mov     r5, r0
	bl      0x2019044
	ldr     r6, [pc, #0x6c] @ 0x21d1d3c, (=0x21d73c4)
	add     r3, sp, #0x10
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x5
	str     r0, [r3, #0x0]
	mov     r0, r5
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x30
	mov     r1, #0x17
	mov     r2, r5
	mov     r3, #0x5
	str     r4, [sp, #0xc]
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x30
	mov     r1, #0x19
	mov     r2, r5
	mov     r3, #0x5
	str     r4, [sp, #0xc]
	bl      0x2006e60
	ldr     r0, [pc, #0x24] @ 0x21d1d40, (=0x4000050)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	mov     r3, #0xa
	ldr     r0, [pc, #0x20] @ 0x21d1d44, (=0x4001050)
	mov     r1, #0x2
	mov     r2, #0x8
	str     r3, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x201ff74
	add     sp, #0x2c
	pop     {r3-r6,pc}
@ 0x21d1d3a


.align 2


.word 0x21d73c4 @ 0x21d1d3c
.word 0x4000050 @ 0x21d1d40
.word 0x4001050 @ 0x21d1d44
.thumb
Function_21d1d48: @ 21d1d48 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x2c
	mov     r5, r1
	mov     r1, #0x4
	mov     r4, r0
	bl      0x2019044
	ldr     r6, [pc, #0x8c] @ 0x21d1de4, (=0x21d7338)
	add     r3, sp, #0x10
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x4
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x30
	mov     r1, #0x16
	mov     r2, r4
	mov     r3, #0x4
	str     r5, [sp, #0xc]
	bl      0x2006e60
	ldr     r0, [pc, #0x58] @ 0x21d1de8, (=0x4001008)
	mov     r2, #0x3
	ldrh    r1, [r0, #0x0]
	bic     r1, r2
	strh    r1, [r0, #0x0]
	ldrh    r3, [r0, #0x2]
	mov     r1, #0x1
	bic     r3, r2
	orr     r1, r3
	strh    r1, [r0, #0x2]
	ldrh    r1, [r0, #0x4]
	bic     r1, r2
	strh    r1, [r0, #0x4]
	ldrh    r3, [r0, #0x6]
	mov     r1, #0x2
	bic     r3, r2
	orr     r1, r3
	strh    r1, [r0, #0x6]
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x6
	mov     r2, #0x3
	mov     r3, #0x1
	bl      Function_2019184
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x21d1dec, (=0x4001050)
	mov     r1, #0x3
	mov     r2, #0xc
	mov     r3, #0x1a
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff74
	add     sp, #0x2c
	pop     {r3-r6,pc}
@ 0x21d1de4

.word 0x21d7338 @ 0x21d1de4
.word 0x4001008 @ 0x21d1de8
.word 0x4001050 @ 0x21d1dec
.thumb
Function_21d1df0: @ 21d1df0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r7, r1
	mov     r5, r2
	mov     r6, #0x0
	bl      Function_21d11a4
	cmp     r0, #0x1
	bne     branch_21d1e22
	mov     r0, #0x2a
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r1, r6
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	bl      0x200f2c0
	mov     r0, #0x3
	bl      0x200abb0
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x21d1e22

.thumb
branch_21d1e22: @ 21d1e22 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0xa
	bhi     branch_21d1eac
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d1e34

Jumppoints_21d1e34:
.hword branch_21d1e4a - Jumppoints_21d1e34 - 2
.hword branch_21d1e78 - Jumppoints_21d1e34 - 2
.hword branch_21d1e98 - Jumppoints_21d1e34 - 2
.hword branch_21d1efa - Jumppoints_21d1e34 - 2
.hword branch_21d1f3a - Jumppoints_21d1e34 - 2
.hword branch_21d1f54 - Jumppoints_21d1e34 - 2
.hword branch_21d1fac - Jumppoints_21d1e34 - 2
.hword branch_21d1ffe - Jumppoints_21d1e34 - 2
.hword branch_21d1fe8 - Jumppoints_21d1e34 - 2
.hword branch_21d2028 - Jumppoints_21d1e34 - 2
.hword branch_21d20a2 - Jumppoints_21d1e34 - 2
.thumb
branch_21d1e4a: @ 21d1e4a :thumb
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, r6
	ldr     r1, [pc, #0x280] @ 0x21d20d8, (=0x29a)
	ldr     r2, [pc, #0x284] @ 0x21d20dc, (=0x10b)
	strh    r0, [r4, r1]
	sub     r1, #0x6e
	strh    r2, [r4, r1]
	mov     r1, #0xf
	str     r1, [sp, #0x0]
	mov     r1, #0x3
	str     r1, [sp, #0x4]
	mov     r1, #0x1
	mov     r2, r1
	mov     r3, r0
	str     r5, [sp, #0x8]
	bl      0x200f174
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d20bc
@ 0x21d1e78

.thumb
branch_21d1e78: @ 21d1e78 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d1eac
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldrh    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d1e90
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r4, r0]
	b       branch_21d20bc
@ 0x21d1e90

.thumb
branch_21d1e90: @ 21d1e90 :thumb
	mov     r1, #0x2
	strh    r1, [r4, r0]
	str     r1, [r4, #0x0]
	b       branch_21d20bc
@ 0x21d1e98

.thumb
branch_21d1e98: @ 21d1e98 :thumb
	mov     r0, #0x1
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d1eac
	mov     r0, #0x2
	bl      0x200ac1c
	cmp     r0, #0x1
	beq     branch_21d1eae
.thumb
branch_21d1eac: @ 21d1eac :thumb
	b       branch_21d20bc
@ 0x21d1eae

.thumb
branch_21d1eae: @ 21d1eae :thumb
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldrh    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d1ef0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	mov     r1, #0x10
	mov     r2, r6
	mov     r3, #0x7
	bl      0x200aae0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	mov     r1, #0x10
	mov     r2, r6
	mov     r3, #0x27
	bl      0x200aae0
	ldr     r1, [pc, #0x1fc] @ 0x21d20d8, (=0x29a)
	mov     r0, #0x2
	strh    r0, [r4, r1]
	mov     r0, r1
	sub     r0, #0x6e
	ldrh    r0, [r4, r0]
	sub     r1, #0x6e
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, r1]
	mov     r0, #0x3
	str     r0, [r4, #0x0]
	b       branch_21d20bc
@ 0x21d1ef0

.thumb
branch_21d1ef0: @ 21d1ef0 :thumb
	mov     r1, r6
	strh    r1, [r4, r0]
	mov     r0, #0x4
	str     r0, [r4, #0x0]
	b       branch_21d20bc
@ 0x21d1efa

.thumb
branch_21d1efa: @ 21d1efa :thumb
	mov     r0, #0x1
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d1fb4
	mov     r0, #0x2
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d1fb4
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	mov     r1, r6
	mov     r2, #0x10
	mov     r3, #0x7
	bl      0x200aae0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	mov     r1, r6
	mov     r2, #0x10
	mov     r3, #0x27
	bl      0x200aae0
	ldr     r0, [pc, #0x1a8] @ 0x21d20d8, (=0x29a)
	mov     r1, #0x3
	strh    r1, [r4, r0]
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	b       branch_21d20bc
@ 0x21d1f3a

.thumb
branch_21d1f3a: @ 21d1f3a :thumb
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldrh    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d1f4a
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r4, r0]
	b       branch_21d20bc
@ 0x21d1f4a

.thumb
branch_21d1f4a: @ 21d1f4a :thumb
	mov     r1, #0x1
	strh    r1, [r4, r0]
	mov     r0, #0x5
	str     r0, [r4, #0x0]
	b       branch_21d20bc
@ 0x21d1f54

.thumb
branch_21d1f54: @ 21d1f54 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d1fb4
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldrh    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d1f94
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r6
	ldr     r3, [pc, #0x16c] @ 0x21d20e0, (=0x7fff)
	mov     r1, r0
	mov     r2, r0
	str     r5, [sp, #0x8]
	bl      0x200f174
	ldr     r1, [pc, #0x158] @ 0x21d20d8, (=0x29a)
	mov     r0, #0x2
	strh    r0, [r4, r1]
	mov     r0, r1
	sub     r0, #0x6e
	ldrh    r0, [r4, r0]
	sub     r1, #0x6e
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, r1]
	mov     r0, #0x6
	str     r0, [r4, #0x0]
	b       branch_21d20bc
@ 0x21d1f94

.thumb
branch_21d1f94: @ 21d1f94 :thumb
	mov     r1, #0xa
	strh    r1, [r4, r0]
	mov     r1, #0x8
	str     r1, [r4, #0x0]
	mov     r1, #0x1
	add     r0, #0x74
	str     r1, [r4, r0]
	mov     r0, r6
	mov     r1, r0
	bl      0x200f344
	b       branch_21d20bc
@ 0x21d1fac

.thumb
branch_21d1fac: @ 21d1fac :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	beq     branch_21d1fb6
.thumb
branch_21d1fb4: @ 21d1fb4 :thumb
	b       branch_21d20bc
@ 0x21d1fb6

.thumb
branch_21d1fb6: @ 21d1fb6 :thumb
	mov     r0, #0xa9
	mov     r1, r6
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, r4
	mov     r1, #0x2
	add     r0, #0xb0
	str     r1, [r0, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	ldr     r3, [pc, #0x104] @ 0x21d20e0, (=0x7fff)
	mov     r2, r1
	str     r5, [sp, #0x8]
	bl      0x200f174
	mov     r0, #0x5
	str     r0, [r4, #0x0]
	b       branch_21d20bc
@ 0x21d1fe8

.thumb
branch_21d1fe8: @ 21d1fe8 :thumb
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldrh    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d1ff8
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r4, r0]
	b       branch_21d20bc
@ 0x21d1ff8

.thumb
branch_21d1ff8: @ 21d1ff8 :thumb
	mov     r0, #0x7
	str     r0, [r4, #0x0]
	b       branch_21d20bc
@ 0x21d1ffe

.thumb
branch_21d1ffe: @ 21d1ffe :thumb
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, r6
	str     r5, [sp, #0x8]
	bl      0x200f174
	mov     r0, #0x8
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x9
	str     r0, [r4, #0x0]
	mov     r0, #0xaa
	mov     r1, r6
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_21d20bc
@ 0x21d2028

.thumb
branch_21d2028: @ 21d2028 :thumb
	mov     r0, r4
	bl      Function_21d1c10
	mov     r1, r4
	mov     r0, #0x9
	add     r1, #0xa8
	lsl     r0, r0, #6
	ldr     r1, [r1, #0x0]
	add     r0, r4, r0
	bl      0x2020acc
	mov     r1, r4
	mov     r0, #0x93
	add     r1, #0xa8
	lsl     r0, r0, #2
	ldr     r1, [r1, #0x0]
	add     r0, r4, r0
	bl      0x2020adc
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x3c
	blt     branch_21d20bc
	mov     r0, #0x4
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, r7
	mov     r1, r5
	bl      Function_21d1cc0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	ldr     r3, [pc, #0x64] @ 0x21d20e0, (=0x7fff)
	mov     r0, #0x4
	mov     r2, r1
	str     r5, [sp, #0x8]
	bl      0x200f174
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x8
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x8b
	mov     r1, #0x5a
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0xa
	str     r0, [r4, #0x0]
	b       branch_21d20bc
@ 0x21d20a2

.thumb
branch_21d20a2: @ 21d20a2 :thumb
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldrh    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d20b2
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r4, r0]
	b       branch_21d20bc
@ 0x21d20b2

.thumb
branch_21d20b2: @ 21d20b2 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d20bc
	mov     r6, #0x1
.thumb
branch_21d20bc: @ 21d20bc :thumb
	mov     r0, r4
	bl      Function_21d2438
	mov     r0, r4
	add     r1, r4, #0x4
	bl      Function_21d1984
	mov     r0, r4
	add     r1, r4, #0x4
	bl      Function_21d1568
	mov     r0, r6
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d20d8

.word 0x29a @ 0x21d20d8
.word 0x10b @ 0x21d20dc
.word 0x7fff @ 0x21d20e0
.thumb
Function_21d20e4: @ 21d20e4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, r1
	mov     r7, r2
	mov     r4, #0x0
	cmp     r0, #0x0
	beq     branch_21d20fa
	cmp     r0, #0x1
	beq     branch_21d2174
	b       branch_21d21b0
@ 0x21d20fa

.thumb
branch_21d20fa: @ 21d20fa :thumb
	mov     r1, r5
	mov     r0, #0xa
	add     r1, #0xa8
	lsl     r0, r0, #6
	ldr     r1, [r1, #0x0]
	add     r0, r5, r0
	bl      0x2020acc
	mov     r1, r5
	mov     r0, #0x9a
	add     r1, #0xa8
	lsl     r0, r0, #2
	ldr     r1, [r1, #0x0]
	add     r0, r5, r0
	bl      0x2020adc
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x8
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x8
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x4
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, r4
	bl      0x200f338
	mov     r0, #0x1
	bl      0x200f338
	mov     r0, r5
	mov     r1, #0x2
	add     r0, #0xb0
	str     r1, [r0, #0x0]
	ldr     r1, [pc, #0x64] @ 0x21d21bc, (=0x7fff)
	mov     r0, #0x1
	blx     0x20af558
	mov     r0, r6
	mov     r1, r7
	bl      Function_21d1cc0
	mov     r0, #0x8b
	mov     r1, r4
	lsl     r0, r0, #2
	strh    r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d21b0
@ 0x21d2174

.thumb
branch_21d2174: @ 21d2174 :thumb
	mov     r0, #0x96
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	cmp     r1, #0x1
	bne     branch_21d219c
	sub     r0, #0x2c
	ldrh    r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_21d2190
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff74
	b       branch_21d219c
@ 0x21d2190

.thumb
branch_21d2190: @ 21d2190 :thumb
	cmp     r0, #0x10
	bne     branch_21d219c
	mov     r0, #0x1
	mov     r1, r4
	bl      0x201ff74
.thumb
branch_21d219c: @ 21d219c :thumb
	mov     r1, #0x8b
	lsl     r1, r1, #2
	ldrh    r0, [r5, r1]
	mov     r4, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, r1]
	ldrh    r2, [r5, r1]
	mov     r0, #0x1f
	and     r0, r2
	strh    r0, [r5, r1]
.thumb
branch_21d21b0: @ 21d21b0 :thumb
	mov     r0, r5
	add     r1, r5, #0x4
	bl      Function_21d1568
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x21d21bc

.word 0x7fff @ 0x21d21bc
.thumb
Function_21d21c0: @ 21d21c0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r4, r1
	mov     r6, r2
	bl      0x20203b8
	mov     r0, r5
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      0x20203b8
	add     r0, r5, #0x4
	bl      Function_21d14e4
	mov     r0, r4
	mov     r1, r6
	mov     r2, r5
	bl      Function_21d2428
	ldr     r2, [pc, #0x1c] @ 0x21d2208, (=0x4000050)
	mov     r3, #0x0
	strh    r3, [r2, #0x0]
	add     r2, #0x10
	ldrh    r1, [r2, #0x0]
	ldr     r0, [pc, #0x14] @ 0x21d220c, (=0xcfdf)
	and     r0, r1
	strh    r0, [r2, #0x0]
	ldr     r0, [pc, #0x14] @ 0x21d2210, (=0x21bf6dc)
	strb    r3, [r0, #0x5]
	bl      0x201ffe8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21d2206


.align 2


.word 0x4000050 @ 0x21d2208
.word 0xcfdf @ 0x21d220c
.word 0x21bf6dc @ 0x21d2210
.thumb
Function_21d2214: @ 21d2214 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r4, r1
	str     r0, [sp, #0x8]
	mov     r6, r2
	mov     r0, #0x30
	mov     r1, #0x17
	mov     r2, r5
	mov     r3, #0x7
	str     r4, [sp, #0xc]
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x30
	mov     r1, #0x1a
	mov     r2, r5
	mov     r3, #0x3
	str     r4, [sp, #0xc]
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x30
	mov     r1, #0x18
	mov     r2, r5
	mov     r3, #0x7
	str     r4, [sp, #0xc]
	bl      0x2006e60
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x30
	mov     r1, #0x1b
	mov     r2, r5
	mov     r3, #0x3
	str     r4, [sp, #0xc]
	bl      0x2006e60
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x30
	mov     r1, #0x7
	mov     r2, #0x4
	str     r4, [sp, #0x4]
	bl      0x2006e84
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x30
	mov     r1, #0x6
	mov     r3, r2
	str     r4, [sp, #0x4]
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x30
	mov     r1, #0xc
	mov     r2, r5
	mov     r3, #0x6
	str     r4, [sp, #0xc]
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0x1
	mov     r0, #0x30
	mov     r1, #0xb
	mov     r2, #0x6
	lsl     r3, r3, #14
	str     r4, [sp, #0x4]
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x30
	mov     r1, #0x16
	mov     r2, r5
	mov     r3, #0x6
	str     r4, [sp, #0xc]
	bl      0x2006e60
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x80
	mov     r1, #0xe
	mov     r2, r5
	mov     r3, #0x5
	str     r4, [sp, #0xc]
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x80
	mov     r1, #0xd
	mov     r2, #0x6
	lsl     r3, r0, #6
	str     r4, [sp, #0x4]
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x80
	mov     r1, #0xc
	mov     r2, r5
	mov     r3, #0x5
	str     r4, [sp, #0xc]
	bl      0x2006e60
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x30
	mov     r1, #0x5
	mov     r2, r5
	mov     r3, #0x1
	str     r4, [sp, #0xc]
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x30
	mov     r1, #0x3
	mov     r2, r5
	mov     r3, #0x1
	str     r4, [sp, #0xc]
	bl      0x2006e60
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	mov     r0, #0x30
	mov     r1, #0x4
	mov     r2, #0x0
	mov     r3, #0x20
	str     r4, [sp, #0x4]
	bl      0x2006e84
	mov     r0, #0x0
	mov     r1, r0
	bl      0x201975c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201975c
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      0x2019690
	ldr     r2, [pc, #0xa8] @ 0x21d2418, (=0x261)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, r4
	bl      Function_200b144
	mov     r7, r0
	mov     r0, #0x40
	mov     r1, r4
	bl      Function_2023790
	mov     r1, #0x23
	lsl     r1, r1, #4
	mov     r4, r0
	ldr     r2, [pc, #0x90] @ 0x21d241c, (=0x21d72d0)
	mov     r0, r5
	add     r1, r6, r1
	bl      0x201a8d4
	mov     r1, #0x0
	mov     r0, #0xe0
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x23
	lsl     r0, r0, #4
	add     r0, r6, r0
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	mov     r0, r7
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_200b1b8
	ldr     r3, [pc, #0x68] @ 0x21d2420, (=0x237)
	mov     r0, #0x0
	ldrb    r3, [r6, r3]
	mov     r1, r4
	mov     r2, #0x1
	lsl     r3, r3, #3
	bl      0x2002eec
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x54] @ 0x21d2424, (=0x10100)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x23
	lsl     r0, r0, #4
	str     r1, [sp, #0x10]
	add     r0, r6, r0
	mov     r2, r4
	str     r1, [sp, #0x14]
	bl      0x201d7e0
	mov     r0, r4
	bl      Function_20237bc
	mov     r0, r7
	bl      Function_200b190
	mov     r1, #0x15
	add     r0, sp, #0x18
	strh    r1, [r0, #0x2]
	strh    r1, [r0, #0x0]
	add     r1, sp, #0x18
	mov     r0, #0x4
	add     r1, #0x2
	mov     r2, #0x2
	mov     r3, #0x42
	bl      0x201972c
	mov     r0, #0x4
	add     r1, sp, #0x18
	mov     r2, #0x2
	mov     r3, #0x44
	bl      0x201972c
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d2418

.word 0x261 @ 0x21d2418
.word 0x21d72d0 @ 0x21d241c
.word 0x237 @ 0x21d2420
.word 0x10100 @ 0x21d2424
.thumb
Function_21d2428: @ 21d2428 :thumb
	mov     r0, #0x23
	lsl     r0, r0, #4
	ldr     r3, [pc, #0x4] @ 0x21d2434, (=0x201a8fd)
	add     r0, r2, r0
	bx      r3
@ 0x21d2432


.align 2


.word 0x201a8fd @ 0x21d2434
.thumb
Function_21d2438: @ 21d2438 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x88] @ 0x21d24c4, (=0x29a)
	ldrh    r2, [r0, r1]
	cmp     r2, #0x3
	bhi     branch_21d2498
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x21d244e

Jumppoints_21d244e:
.hword branch_21d2456 - Jumppoints_21d244e - 2
.hword branch_21d2498 - Jumppoints_21d244e - 2
.hword branch_21d2462 - Jumppoints_21d244e - 2
.hword branch_21d247e - Jumppoints_21d244e - 2
.thumb
branch_21d2456: @ 21d2456 :thumb
	mov     r3, #0x5
	.hword  0x1e8a @ sub r2, r1, #0x2
	strh    r3, [r0, r2]
	mov     r2, #0x1
	strh    r2, [r0, r1]
	b       branch_21d2498
@ 0x21d2462

.thumb
branch_21d2462: @ 21d2462 :thumb
	.hword  0x1e8a @ sub r2, r1, #0x2
	ldrh    r2, [r0, r2]
	add     r3, r2, #0x2
	.hword  0x1e8a @ sub r2, r1, #0x2
	strh    r3, [r0, r2]
	ldrh    r2, [r0, r2]
	cmp     r2, #0x1f
	bcc     branch_21d2498
	mov     r3, #0x1f
	.hword  0x1e8a @ sub r2, r1, #0x2
	strh    r3, [r0, r2]
	mov     r2, #0x1
	strh    r2, [r0, r1]
	b       branch_21d2498
@ 0x21d247e

.thumb
branch_21d247e: @ 21d247e :thumb
	.hword  0x1e8a @ sub r2, r1, #0x2
	ldrh    r2, [r0, r2]
	.hword  0x1e93 @ sub r3, r2, #0x2
	.hword  0x1e8a @ sub r2, r1, #0x2
	strh    r3, [r0, r2]
	ldrh    r2, [r0, r2]
	cmp     r2, #0x5
	bhi     branch_21d2498
	mov     r3, #0x5
	.hword  0x1e8a @ sub r2, r1, #0x2
	strh    r3, [r0, r2]
	mov     r2, #0x1
	strh    r2, [r0, r1]
.thumb
branch_21d2498: @ 21d2498 :thumb
	mov     r1, #0xa6
	lsl     r1, r1, #2
	ldrh    r3, [r0, r1]
	mov     r1, #0x1f
	lsl     r1, r1, #10
	lsl     r2, r3, #10
	and     r1, r2
	mov     r4, r3
	mov     r2, #0x1f
	and     r4, r2
	lsl     r3, r3, #5
	lsl     r2, r2, #5
	and     r2, r3
	orr     r2, r4
	orr     r1, r2
	lsl     r1, r1, #16
	mov     r0, #0x1
	lsr     r1, r1, #16
	blx     0x20af558
	pop     {r4,pc}
@ 0x21d24c2


.align 2


.word 0x29a @ 0x21d24c4
.thumb
Function_21d24c8: @ 21d24c8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r1, #0x97
	lsl     r1, r1, #2
	mov     r4, r0
	mov     r5, #0x0
	mov     r3, #0x3
	mov     r2, #0x96
	str     r5, [r4, r1]
	lsl     r3, r3, #18
	add     r0, r1, #0x4
	str     r3, [r4, r0]
	mov     r0, r1
	lsl     r2, r2, #14
	add     r0, #0x8
	str     r2, [r4, r0]
	mov     r0, r1
	mov     r6, r1
	ldr     r2, [pc, #0xa0] @ 0x21d2590, (=0xfffc0000)
	add     r0, #0xc
	str     r2, [r4, r0]
	mov     r0, r1
	add     r0, #0x10
	str     r3, [r4, r0]
	mov     r2, #0x79
	mov     r0, r1
	lsl     r2, r2, #14
	add     r0, #0x14
	str     r2, [r4, r0]
	mov     r0, r1
	add     r0, #0x18
	str     r5, [r4, r0]
	mov     r2, #0x19
	mov     r0, r1
	lsl     r2, r2, #14
	add     r0, #0x1c
	str     r2, [r4, r0]
	ldr     r0, [pc, #0x80] @ 0x21d2594, (=0xfffee000)
	add     r6, #0x20
	str     r0, [r4, r6]
	mov     r6, r1
	add     r6, #0x24
	str     r5, [r4, r6]
	mov     r5, r1
	add     r5, #0x28
	str     r2, [r4, r5]
	mov     r2, r1
	add     r2, #0x2c
	str     r0, [r4, r2]
	mov     r0, r1
	ldr     r2, [pc, #0x68] @ 0x21d2598, (=0x8db)
	add     r0, #0x30
	strh    r2, [r4, r0]
	mov     r0, r1
	ldr     r2, [pc, #0x64] @ 0x21d259c, (=0xfffff85f)
	add     r0, #0x32
	strh    r2, [r4, r0]
	mov     r2, r1
	ldr     r0, [pc, #0x60] @ 0x21d25a0, (=0xfffff513)
	add     r2, #0x34
	strh    r0, [r4, r2]
	mov     r2, r1
	ldr     r5, [pc, #0x5c] @ 0x21d25a4, (=0xfffff725)
	add     r2, #0x36
	strh    r5, [r4, r2]
	mov     r2, r1
	ldr     r5, [pc, #0x58] @ 0x21d25a8, (=0x7a1)
	add     r2, #0x38
	strh    r5, [r4, r2]
	mov     r2, r1
	add     r2, #0x3a
	strh    r0, [r4, r2]
	mov     r0, r1
	lsr     r2, r3, #6
	add     r0, #0x40
	str     r2, [r4, r0]
	mov     r0, r1
	add     r0, #0x24
	add     r1, #0xc
	add     r0, r4, r0
	add     r1, r4, r1
	add     r2, sp, #0xc
	blx     0x20bd1b0
	add     r0, sp, #0xc
	add     r1, sp, #0x0
	blx     0x20bd3e4
	mov     r0, #0xa3
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	add     r1, r0, #0x2
	ldr     r2, [sp, #0x4]
	.hword  0x1d00 @ add r0, r0, #0x4
	strh    r2, [r4, r1]
	ldr     r1, [sp, #0x8]
	strh    r1, [r4, r0]
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x21d2590

.word 0xfffc0000 @ 0x21d2590
.word 0xfffee000 @ 0x21d2594
.word 0x8db @ 0x21d2598
.word 0xfffff85f @ 0x21d259c
.word 0xfffff513 @ 0x21d25a0
.word 0xfffff725 @ 0x21d25a4
.word 0x7a1 @ 0x21d25a8
.thumb
Function_21d25ac: @ 21d25ac :thumb
	bx      lr
@ 0x21d25ae


.align 2, 0


.thumb
Function_21d25b0: @ 21d25b0 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d25cc, (=0x21d76f4)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d25ba: @ 21d25ba :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d25ba
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d25cc

.word 0x21d76f4 @ 0x21d25cc
.thumb
Function_21d25d0: @ 21d25d0 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d25ec, (=0x21d771c)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d25da: @ 21d25da :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d25da
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d25ec

.word 0x21d771c @ 0x21d25ec
.thumb
Function_21d25f0: @ 21d25f0 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d260c, (=0x21d7744)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d25fa: @ 21d25fa :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d25fa
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d260c

.word 0x21d7744 @ 0x21d260c
.thumb
Function_21d2610: @ 21d2610 :thumb
	push    {r3-r5,lr}
	add     sp, #-0xb8
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      0x2018340
	add     r3, sp, #0xa8
	ldr     r5, [pc, #0xe8] @ 0x21d2708, (=0x21d74cc)
	str     r0, [r4, #0xc]
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0xd8] @ 0x21d270c, (=0x21d7510)
	add     r3, sp, #0x8c
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
	ldr     r0, [r4, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0xbc] @ 0x21d2710, (=0x21d752c)
	add     r3, sp, #0x70
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
	ldr     r0, [r4, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0xa0] @ 0x21d2714, (=0x21d7548)
	add     r3, sp, #0x54
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
	ldr     r0, [r4, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0x84] @ 0x21d2718, (=0x21d75f0)
	add     r3, sp, #0x38
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
	ldr     r0, [r4, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0x68] @ 0x21d271c, (=0x21d75d4)
	add     r3, sp, #0x1c
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x6
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0x4c] @ 0x21d2720, (=0x21d7580)
	add     r3, sp, #0x0
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
	ldr     r0, [r4, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x0
	mov     r1, r0
	bl      0x201975c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201975c
	add     sp, #0xb8
	pop     {r3-r5,pc}
@ 0x21d2706


.align 2


.word 0x21d74cc @ 0x21d2708
.word 0x21d7510 @ 0x21d270c
.word 0x21d752c @ 0x21d2710
.word 0x21d7548 @ 0x21d2714
.word 0x21d75f0 @ 0x21d2718
.word 0x21d75d4 @ 0x21d271c
.word 0x21d7580 @ 0x21d2720
.thumb
Function_21d2724: @ 21d2724 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xd4
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      0x2018340
	add     r3, sp, #0x70
	ldr     r5, [pc, #0xdc] @ 0x21d2810, (=0x21d74ac)
	str     r0, [r4, #0xc]
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0xcc] @ 0x21d2814, (=0x21d75b8)
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
	ldr     r0, [r4, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0xb0] @ 0x21d2818, (=0x21d760c)
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
	ldr     r0, [r4, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0x94] @ 0x21d281c, (=0x21d7628)
	add     r3, sp, #0x1c
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
	ldr     r0, [r4, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0x78] @ 0x21d2820, (=0x21d7644)
	add     r3, sp, #0x0
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
	ldr     r0, [r4, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0x5c] @ 0x21d2824, (=0x21d7838)
	add     r3, sp, #0x80
	mov     r2, #0xa
.thumb
branch_21d27cc: @ 21d27cc :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d27cc
	ldr     r0, [r5, #0x0]
	mov     r1, #0x5
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0xc]
	add     r2, sp, #0x80
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0xc]
	mov     r1, #0x6
	add     r2, sp, #0x9c
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0xc]
	mov     r1, #0x7
	add     r2, sp, #0xb8
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201975c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201975c
	add     sp, #0xd4
	pop     {r4,r5,pc}
@ 0x21d2810

.word 0x21d74ac @ 0x21d2810
.word 0x21d75b8 @ 0x21d2814
.word 0x21d760c @ 0x21d2818
.word 0x21d7628 @ 0x21d281c
.word 0x21d7644 @ 0x21d2820
.word 0x21d7838 @ 0x21d2824
.thumb
Function_21d2828: @ 21d2828 :thumb
	push    {r3-r5,lr}
	add     sp, #-0xa8
	mov     r1, #0x0
	mov     r4, r0
	bl      Function_21d361c
	ldr     r5, [pc, #0xb4] @ 0x21d28ec, (=0x21d767c)
	add     r3, sp, #0x38
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
	ldr     r0, [r4, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0x98] @ 0x21d28f0, (=0x21d7698)
	add     r3, sp, #0x1c
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
	ldr     r0, [r4, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0x7c] @ 0x21d28f4, (=0x21d76b4)
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
	ldr     r0, [r4, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r5, [pc, #0x60] @ 0x21d28f8, (=0x21d77e4)
	add     r3, sp, #0x54
	mov     r2, #0xa
.thumb
branch_21d289a: @ 21d289a :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d289a
	ldr     r0, [r5, #0x0]
	mov     r1, #0x5
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0xc]
	add     r2, sp, #0x54
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0xc]
	mov     r1, #0x6
	add     r2, sp, #0x70
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0xc]
	mov     r1, #0x7
	add     r2, sp, #0x8c
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201975c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201975c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff74
	ldr     r0, [pc, #0x18] @ 0x21d28fc, (=0x28e)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	add     sp, #0xa8
	pop     {r3-r5,pc}
@ 0x21d28ec

.word 0x21d767c @ 0x21d28ec
.word 0x21d7698 @ 0x21d28f0
.word 0x21d76b4 @ 0x21d28f4
.word 0x21d77e4 @ 0x21d28f8
.word 0x28e @ 0x21d28fc
.thumb
Function_21d2900: @ 21d2900 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x48
	mov     r4, r0
	bl      Function_21d35b8
	mov     r0, r4
	bl      Function_21d2828
	ldr     r5, [pc, #0xdc] @ 0x21d29f0, (=0x21d74dc)
	add     r3, sp, #0x38
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0xcc] @ 0x21d29f4, (=0x21d7564)
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
	ldr     r0, [r4, #0xc]
	mov     r3, r1
	bl      0x20183c4
	ldr     r5, [pc, #0xb0] @ 0x21d29f8, (=0x21d759c)
	add     r3, sp, #0x0
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
	ldr     r0, [r4, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	mov     r1, #0x0
	ldr     r0, [r4, #0xc]
	mov     r2, r1
	mov     r3, r1
	bl      Function_2019184
	mov     r1, #0x0
	ldr     r0, [r4, #0xc]
	mov     r2, #0x3
	mov     r3, r1
	bl      Function_2019184
	mov     r2, #0x0
	ldr     r0, [r4, #0xc]
	mov     r1, #0x4
	mov     r3, r2
	bl      Function_2019184
	ldr     r0, [r4, #0xc]
	mov     r1, #0x4
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x8
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x8
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	ldr     r0, [pc, #0x14] @ 0x21d29fc, (=0x28e)
	mov     r1, #0x2
	strb    r1, [r4, r0]
	add     sp, #0x48
	pop     {r3-r5,pc}
@ 0x21d29ee


.align 2


.word 0x21d74dc @ 0x21d29f0
.word 0x21d7564 @ 0x21d29f4
.word 0x21d759c @ 0x21d29f8
.word 0x28e @ 0x21d29fc
.thumb
Function_21d2a00: @ 21d2a00 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x2c
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      0x2018340
	add     r3, sp, #0x1c
	ldr     r5, [pc, #0x40] @ 0x21d2a50, (=0x21d74bc)
	str     r0, [r4, #0xc]
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0x30] @ 0x21d2a54, (=0x21d7660)
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
	ldr     r0, [r4, #0xc]
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201975c
	add     sp, #0x2c
	pop     {r4,r5,pc}
@ 0x21d2a4e


.align 2


.word 0x21d74bc @ 0x21d2a50
.word 0x21d7660 @ 0x21d2a54
.thumb
Function_21d2a58: @ 21d2a58 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x21d2a94, (=0x21d2aa1)
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x1
	mov     r3, r1
	bl      Function_2024220
	str     r0, [r4, #0x10]
	ldr     r3, [pc, #0x20] @ 0x21d2a98, (=0x2100dec)
	mov     r0, #0x2
	mov     r1, #0x0
	ldr     r3, [r3, #0x0]
	lsl     r0, r0, #14
	mov     r2, r1
	blx     r3
	ldr     r3, [pc, #0x18] @ 0x21d2a9c, (=0x2100df4)
	mov     r0, #0x80
	ldr     r3, [r3, #0x0]
	mov     r1, #0x0
	mov     r2, #0x1
	blx     r3
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d2a92


.align 2


.word 0x21d2aa1 @ 0x21d2a94
.word 0x2100dec @ 0x21d2a98
.word 0x2100df4 @ 0x21d2a9c
.thumb
Function_21d2aa0: @ 21d2aa0 :thumb
	push    {r3,lr}
	blx     0x20b2628
	ldr     r0, [pc, #0x6c] @ 0x21d2b14, (=0x4000008)
	mov     r1, #0x3
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strh    r1, [r0, #0x0]
	add     r0, #0x58
	ldrh    r2, [r0, #0x0]
	ldr     r1, [pc, #0x5c] @ 0x21d2b18, (=0xffffcffd)
	and     r2, r1
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	add     r2, r1, #0x2
	and     r3, r2
	mov     r2, #0x10
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r2, [pc, #0x4c] @ 0x21d2b1c, (=0xcffb)
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
	and     r2, r1
	mov     r1, #0x20
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x34] @ 0x21d2b20, (=0x21d74ec)
	blx     0x20bfd2c
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	blx     0x20bfc74
	mov     r0, #0x0
	ldr     r2, [pc, #0x24] @ 0x21d2b24, (=0x7fff)
	mov     r1, r0
	mov     r3, #0x3f
	str     r0, [sp, #0x0]
	blx     0x20bfd58
	ldr     r1, [pc, #0x1c] @ 0x21d2b28, (=0xbfff0000)
	ldr     r0, [pc, #0x1c] @ 0x21d2b2c, (=0x4000580)
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x21d2b12


.align 2


.word 0x4000008 @ 0x21d2b14
.word 0xffffcffd @ 0x21d2b18
.word 0xcffb @ 0x21d2b1c
.word 0x21d74ec @ 0x21d2b20
.word 0x7fff @ 0x21d2b24
.word 0xbfff0000 @ 0x21d2b28
.word 0x4000580 @ 0x21d2b2c
.thumb
Function_21d2b30: @ 21d2b30 :thumb
	ldr     r3, [pc, #0x0] @ 0x21d2b34, (=0x200a859)
	bx      r3
@ 0x21d2b34

.word 0x200a859 @ 0x21d2b34
.thumb
Function_21d2b38: @ 21d2b38 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x124] @ 0x21d2c64, (=0x25b)
	add     r5, #0x34
	ldrb    r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_21d2b84
	ldr     r0, [pc, #0x11c] @ 0x21d2c68, (=0x21bf6dc)
	mov     r1, #0x1
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff74
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	ldr     r1, [pc, #0xf0] @ 0x21d2c64, (=0x25b)
	mov     r0, #0x0
	strb    r0, [r5, r1]
	ldr     r1, [r5, #0x28]
	bl      0x2020854
	ldr     r0, [r5, #0x28]
	bl      0x20203d4
.thumb
branch_21d2b84: @ 21d2b84 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x0
	beq     branch_21d2b90
	bl      0x201c2b8
.thumb
branch_21d2b90: @ 21d2b90 :thumb
	ldr     r7, [pc, #0xd8] @ 0x21d2c6c, (=0x247)
	mov     r4, #0x0
	add     r6, r7, #0x1
.thumb
branch_21d2b96: @ 21d2b96 :thumb
	ldr     r0, [pc, #0xd4] @ 0x21d2c6c, (=0x247)
	ldrb    r1, [r5, r0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_21d2baa
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	mov     r1, #0x1
	bl      0x2019120
.thumb
branch_21d2baa: @ 21d2baa :thumb
	mov     r0, #0x92
	lsl     r0, r0, #2
	ldrb    r1, [r5, r0]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_21d2bc0
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	mov     r1, #0x0
	bl      0x2019120
.thumb
branch_21d2bc0: @ 21d2bc0 :thumb
	ldrb    r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	asr     r0, r0, #1
	strb    r0, [r5, r7]
	ldrb    r0, [r5, r6]
	asr     r0, r0, #1
	strb    r0, [r5, r6]
	cmp     r4, #0x8
	blt     branch_21d2b96
	mov     r2, #0x25
	lsl     r2, r2, #4
	.hword  0x1e91 @ sub r1, r2, #0x2
	ldsh    r6, [r5, r1]
	.hword  0x1f91 @ sub r1, r2, #0x6
	ldsh    r1, [r5, r1]
	.hword  0x1f14 @ sub r4, r2, #0x4
	ldsh    r4, [r5, r4]
	lsl     r3, r1, #8
	mov     r1, #0xff
	lsl     r1, r1, #8
	lsl     r4, r4, #24
	ldsh    r0, [r5, r2]
	and     r3, r1
	lsr     r4, r4, #24
	orr     r3, r4
	ldr     r4, [pc, #0x7c] @ 0x21d2c70, (=0x4000040)
	lsl     r0, r0, #24
	strh    r3, [r4, #0x0]
	lsl     r3, r6, #8
	and     r3, r1
	lsr     r0, r0, #24
	orr     r0, r3
	strh    r0, [r4, #0x4]
	mov     r0, r2
	add     r0, #0x8
	ldsh    r4, [r5, r0]
	add     r0, r2, #0x6
	ldsh    r3, [r5, r0]
	add     r0, r2, #0x2
	add     r6, r2, #0x4
	ldsh    r0, [r5, r0]
	ldsh    r6, [r5, r6]
	lsl     r3, r3, #8
	lsl     r0, r0, #8
	lsl     r6, r6, #24
	and     r0, r1
	lsr     r6, r6, #24
	orr     r6, r0
	ldr     r0, [pc, #0x50] @ 0x21d2c74, (=0x4001040)
	and     r3, r1
	lsl     r1, r4, #24
	lsr     r1, r1, #24
	strh    r6, [r0, #0x0]
	orr     r1, r3
	sub     r2, #0xb
	strh    r1, [r0, #0x4]
	ldrb    r0, [r5, r2]
	cmp     r0, #0x1
	bne     branch_21d2c40
	bl      Function_21d2c80
	ldr     r0, [pc, #0x3c] @ 0x21d2c78, (=0x245)
	mov     r1, #0x0
	strb    r1, [r5, r0]
.thumb
branch_21d2c40: @ 21d2c40 :thumb
	ldr     r0, [pc, #0x38] @ 0x21d2c7c, (=0x246)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_21d2c52
	bl      Function_21d2ce8
	ldr     r0, [pc, #0x2c] @ 0x21d2c7c, (=0x246)
	mov     r1, #0x0
	strb    r1, [r5, r0]
.thumb
branch_21d2c52: @ 21d2c52 :thumb
	bl      0x201dcac
	bl      0x200a858
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x50]
	bl      Function_21d6e40
	pop     {r3-r7,pc}
@ 0x21d2c64

.word 0x25b @ 0x21d2c64
.word 0x21bf6dc @ 0x21d2c68
.word 0x247 @ 0x21d2c6c
.word 0x4000040 @ 0x21d2c70
.word 0x4001040 @ 0x21d2c74
.word 0x245 @ 0x21d2c78
.word 0x246 @ 0x21d2c7c
.thumb
Function_21d2c80: @ 21d2c80 :thumb
	push    {r3-r6}
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r1, [r0, #0x0]
	ldr     r2, [pc, #0x54] @ 0x21d2ce0, (=0xffff1fff)
	mov     r3, r1
	mov     r5, r0
	and     r3, r2
	lsr     r1, r0, #13
	orr     r1, r3
	str     r1, [r0, #0x0]
	add     r5, #0x48
	ldrh    r1, [r5, #0x0]
	mov     r4, #0x3f
	mov     r3, #0x1f
	bic     r1, r4
	orr     r1, r3
	mov     r6, #0x20
	orr     r1, r6
	strh    r1, [r5, #0x0]
	add     r0, #0x4a
	ldrh    r1, [r0, #0x0]
	mov     r5, #0x11
	bic     r1, r4
	orr     r1, r5
	orr     r1, r6
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x21d2ce4, (=0x4001000)
	ldr     r1, [r0, #0x0]
	and     r2, r1
	lsr     r1, r0, #13
	orr     r1, r2
	mov     r2, r0
	str     r1, [r0, #0x0]
	add     r2, #0x48
	ldrh    r1, [r2, #0x0]
	add     r0, #0x4a
	bic     r1, r4
	orr     r1, r3
	orr     r1, r6
	strh    r1, [r2, #0x0]
	ldrh    r1, [r0, #0x0]
	bic     r1, r4
	orr     r1, r5
	orr     r1, r6
	strh    r1, [r0, #0x0]
	pop     {r3-r6}
	bx      lr
@ 0x21d2ce0

.word 0xffff1fff @ 0x21d2ce0
.word 0x4001000 @ 0x21d2ce4
.thumb
Function_21d2ce8: @ 21d2ce8 :thumb
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x10] @ 0x21d2d00, (=0xffff1fff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0xc] @ 0x21d2d04, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	bx      lr
@ 0x21d2cfe


.align 2


.word 0xffff1fff @ 0x21d2d00
.word 0x4001000 @ 0x21d2d04
.thumb
Function_21d2d08: @ 21d2d08 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x200ab84
	ldr     r1, [pc, #0x78] @ 0x21d2d8c, (=0x7fff)
	mov     r0, #0x0
	bl      0x200f344
	ldr     r1, [pc, #0x70] @ 0x21d2d8c, (=0x7fff)
	mov     r0, #0x1
	bl      0x200f344
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x0
	mov     r1, r0
	bl      0x20177bc
	bl      0x201ff00
	bl      0x201ff68
	mov     r0, #0x4
	mov     r1, #0x8
	bl      0x2017dd4
	mov     r2, #0xa
	mov     r0, #0x3
	mov     r1, #0x4c
	lsl     r2, r2, #16
	bl      0x2017fc8
	mov     r1, #0x2b
	mov     r0, r4
	lsl     r1, r1, #4
	mov     r2, #0x4c
	bl      0x200681c
	mov     r2, #0x2b
	mov     r1, #0x0
	lsl     r2, r2, #4
	mov     r4, r0
	blx     0x20d5124
	mov     r0, #0x4c
	str     r0, [r4, #0x0]
	mov     r1, #0x0
	mov     r0, #0xab
	str     r1, [r4, #0x8]
	lsl     r0, r0, #2
	strb    r1, [r4, r0]
	ldr     r0, [pc, #0x1c] @ 0x21d2d90, (=0x21bf6dc)
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	bl      0x201d2d0
	str     r0, [r4, #0x14]
	mov     r0, #0x0
	bl      0x201d2dc
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2d8a


.align 2


.word 0x7fff @ 0x21d2d8c
.word 0x21bf6dc @ 0x21d2d90
.thumb
Function_21d2d94: @ 21d2d94 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	bl      0x200682c
	mov     r5, r0
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d2dd0
	ldr     r0, [pc, #0xac] @ 0x21d2e58, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_21d2db8
	mov     r0, #0x8
	tst     r0, r1
	beq     branch_21d2dd0
.thumb
branch_21d2db8: @ 21d2db8 :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x8]
	ldr     r1, [pc, #0x98] @ 0x21d2e58, (=0x21bf67c)
	mov     r0, #0x0
	str     r0, [r1, #0x6c]
	mov     r1, r0
	bl      0x200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x200f344
.thumb
branch_21d2dd0: @ 21d2dd0 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x4
	bhi     branch_21d2e3e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d2de2

Jumppoints_21d2de2:
.hword branch_21d2dec - Jumppoints_21d2de2 - 2
.hword branch_21d2dfc - Jumppoints_21d2de2 - 2
.hword branch_21d2e0e - Jumppoints_21d2de2 - 2
.hword branch_21d2e20 - Jumppoints_21d2de2 - 2
.hword branch_21d2e32 - Jumppoints_21d2de2 - 2
.thumb
branch_21d2dec: @ 21d2dec :thumb
	mov     r0, #0xab
	lsl     r0, r0, #2
	add     r0, r5, r0
	str     r0, [r5, #0x30]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2e42
@ 0x21d2dfc

.thumb
branch_21d2dfc: @ 21d2dfc :thumb
	mov     r0, r5
	bl      Function_21d2e9c
	cmp     r0, #0x0
	beq     branch_21d2e42
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2e42
@ 0x21d2e0e

.thumb
branch_21d2e0e: @ 21d2e0e :thumb
	mov     r0, r5
	bl      Function_21d33f0
	cmp     r0, #0x0
	beq     branch_21d2e42
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2e42
@ 0x21d2e20

.thumb
branch_21d2e20: @ 21d2e20 :thumb
	mov     r0, r5
	bl      Function_21d5254
	cmp     r0, #0x0
	beq     branch_21d2e42
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2e42
@ 0x21d2e32

.thumb
branch_21d2e32: @ 21d2e32 :thumb
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x24] @ 0x21d2e5c, (=0x97e)
	cmp     r1, r0
	blt     branch_21d2e42
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d2e3e

.thumb
branch_21d2e3e: @ 21d2e3e :thumb
	bl      ErrorHandling
.thumb
branch_21d2e42: @ 21d2e42 :thumb
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_21d2e4c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d2e4c

.thumb
branch_21d2e4c: @ 21d2e4c :thumb
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d2e56


.align 2


.word 0x21bf67c @ 0x21d2e58
.word 0x97e @ 0x21d2e5c
.thumb
Function_21d2e60: @ 21d2e60 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	bl      0x200f2ac
	cmp     r0, #0x0
	bne     branch_21d2e76
	bl      0x200f2c0
.thumb
branch_21d2e76: @ 21d2e76 :thumb
	ldr     r0, [r4, #0x14]
	bl      0x201d2dc
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x4c
	bl      0x201807c
	ldr     r0, [pc, #0x8] @ 0x21d2e94, (=0x4d)
	ldr     r1, [pc, #0xc] @ 0x21d2e98, (=0x21d742c)
	bl      0x2000ec4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d2e94

.word 0x4d @ 0x21d2e94
.word 0x21d742c @ 0x21d2e98
.thumb
Function_21d2e9c: @ 21d2e9c :thumb
	push    {r4,lr}
	mov     r1, r0
	ldr     r0, [r1, #0x8]
	mov     r4, r1
	add     r4, #0x18
	cmp     r0, #0x0
	beq     branch_21d2eae
	mov     r0, #0x3
	strb    r0, [r4, #0x0]
.thumb
branch_21d2eae: @ 21d2eae :thumb
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bhi     branch_21d2f06
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d2ec0

Jumppoints_21d2ec0:
.hword branch_21d2ec8 - Jumppoints_21d2ec0 - 2
.hword branch_21d2ed6 - Jumppoints_21d2ec0 - 2
.hword branch_21d2ee6 - Jumppoints_21d2ec0 - 2
.hword branch_21d2efc - Jumppoints_21d2ec0 - 2
.thumb
branch_21d2ec8: @ 21d2ec8 :thumb
	mov     r0, r1
	bl      Function_21d2f0c
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_21d2f06
@ 0x21d2ed6

.thumb
branch_21d2ed6: @ 21d2ed6 :thumb
	add     r1, #0x18
	mov     r0, r1
	bl      Function_21d2f38
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_21d2f06
@ 0x21d2ee6

.thumb
branch_21d2ee6: @ 21d2ee6 :thumb
	mov     r0, r1
	ldr     r1, [r1, #0x4]
	add     r0, #0x18
	bl      Function_21d30d0
	cmp     r0, #0x0
	beq     branch_21d2f06
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_21d2f06
@ 0x21d2efc

.thumb
branch_21d2efc: @ 21d2efc :thumb
	mov     r0, r1
	bl      Function_21d3234
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2f06

.thumb
branch_21d2f06: @ 21d2f06 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2f0a


.align 2, 0


.thumb
Function_21d2f0c: @ 21d2f0c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d25b0
	mov     r0, r4
	bl      Function_21d2610
	ldr     r0, [r4, #0xc]
	str     r0, [r4, #0x24]
	bl      Function_21d670c
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xc] @ 0x21d2f34, (=0x21d2b31)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	mov     r0, #0x1
	strb    r0, [r4, #0x1a]
	pop     {r4,pc}
@ 0x21d2f32


.align 2


.word Function_21d2b30+1 @ =0x21d2b31, 0x21d2f34
.thumb
Function_21d2f38: @ 21d2f38 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x80
	mov     r1, #0x10
	mov     r3, #0x2
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x80
	mov     r1, #0x10
	mov     r3, #0x6
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x80
	mov     r1, #0x11
	mov     r3, #0x2
	bl      0x2006e60
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x80
	mov     r1, #0x12
	mov     r3, #0x6
	bl      0x2006e60
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x4c
	str     r0, [sp, #0x4]
	mov     r0, #0x80
	mov     r1, #0xf
	mov     r3, r2
	bl      0x2006e84
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x4c
	str     r0, [sp, #0x4]
	mov     r0, #0x80
	mov     r1, #0xf
	mov     r2, #0x4
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x30
	mov     r1, #0xf
	mov     r3, #0x1
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x30
	mov     r1, #0xd
	mov     r3, #0x1
	bl      0x2006e60
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x4c
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x30
	mov     r1, #0xe
	mov     r3, r2
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x80
	mov     r1, #0x13
	mov     r3, #0x3
	bl      0x2006e60
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x80
	mov     r1, #0x13
	mov     r3, #0x7
	bl      0x2006e60
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x80
	mov     r1, #0x72
	mov     r3, #0x5
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0xc]
	mov     r0, #0x80
	mov     r1, #0x71
	mov     r3, #0x5
	bl      0x2006e60
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x4c
	str     r0, [sp, #0x4]
	mov     r0, #0x80
	mov     r1, #0x73
	mov     r2, #0x4
	mov     r3, #0x0
	bl      0x2006e84
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x21d30c8, (=0x4000050)
	mov     r1, #0x2
	mov     r2, #0x8
	mov     r3, #0x0
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x21d30cc, (=0x4001050)
	mov     r1, #0x2
	mov     r2, #0x8
	mov     r3, #0x0
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x1
	mov     r1, r0
	blx     OS_WaitIrq
	mov     r0, #0x0
	bl      0x200f338
	mov     r0, #0x1
	bl      0x200f338
	bl      0x201ffd0
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d30c6


.align 2


.word 0x4000050 @ 0x21d30c8
.word 0x4001050 @ 0x21d30cc
.thumb
Function_21d30d0: @ 21d30d0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	mov     r5, r1
	bl      Function_21d69c0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x5
	bls     branch_21d30e6
	b       branch_21d3208
@ 0x21d30e6

.thumb
branch_21d30e6: @ 21d30e6 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d30f2

Jumppoints_21d30f2:
.hword branch_21d30fe - Jumppoints_21d30f2 - 2
.hword branch_21d3122 - Jumppoints_21d30f2 - 2
.hword branch_21d3148 - Jumppoints_21d30f2 - 2
.hword branch_21d31ae - Jumppoints_21d30f2 - 2
.hword branch_21d31ce - Jumppoints_21d30f2 - 2
.hword branch_21d31fa - Jumppoints_21d30f2 - 2
.thumb
branch_21d30fe: @ 21d30fe :thumb
	mov     r2, #0x0
	strb    r2, [r4, #0x7]
	strb    r2, [r4, #0x6]
	ldr     r0, [pc, #0x108] @ 0x21d3210, (=0x21d32a5)
	strb    r2, [r4, #0x8]
	mov     r1, r4
	bl      0x200d9e8
	str     r0, [r4, #0x10]
	mov     r0, #0x1
	ldr     r1, [pc, #0x100] @ 0x21d3214, (=0x494)
	mov     r2, r0
	bl      0x2004550
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_21d3208
@ 0x21d3122

.thumb
branch_21d3122: @ 21d3122 :thumb
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_21d3208
	cmp     r5, #0x73
	blt     branch_21d3208
	mov     r2, #0x0
	strb    r2, [r4, #0x7]
	mov     r0, #0x10
	strb    r0, [r4, #0x6]
	ldr     r0, [pc, #0xe0] @ 0x21d3218, (=0x21d3301)
	strb    r2, [r4, #0x8]
	mov     r1, r4
	bl      0x200d9e8
	str     r0, [r4, #0x10]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_21d3208
@ 0x21d3148

.thumb
branch_21d3148: @ 21d3148 :thumb
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_21d3208
	ldr     r0, [pc, #0xcc] @ 0x21d321c, (=0x109)
	cmp     r5, r0
	blt     branch_21d3208
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xb4] @ 0x21d3220, (=0x4000050)
	mov     r1, #0x4
	mov     r2, #0x8
	mov     r3, #0x0
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xa8] @ 0x21d3224, (=0x4001050)
	mov     r1, #0x4
	mov     r2, #0x8
	mov     r3, #0x0
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      0x201ff74
	mov     r2, #0x0
	strb    r2, [r4, #0x7]
	strb    r2, [r4, #0x6]
	ldr     r0, [pc, #0x8c] @ 0x21d3228, (=0x21d3361)
	strb    r2, [r4, #0x8]
	mov     r1, r4
	bl      0x200d9e8
	str     r0, [r4, #0x10]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_21d3208
@ 0x21d31ae

.thumb
branch_21d31ae: @ 21d31ae :thumb
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_21d3208
	mov     r2, #0x0
	strb    r2, [r4, #0x7]
	strb    r2, [r4, #0x6]
	ldr     r0, [pc, #0x70] @ 0x21d322c, (=0x21d33a9)
	strb    r2, [r4, #0x8]
	mov     r1, r4
	bl      0x200d9e8
	str     r0, [r4, #0x10]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_21d3208
@ 0x21d31ce

.thumb
branch_21d31ce: @ 21d31ce :thumb
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_21d3208
	ldr     r0, [pc, #0x58] @ 0x21d3230, (=0x1ea)
	cmp     r5, r0
	blt     branch_21d3208
	mov     r0, #0x12
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	mov     r2, r1
	mov     r3, r1
	bl      0x200f174
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_21d3208
@ 0x21d31fa

.thumb
branch_21d31fa: @ 21d31fa :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d3208
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x21d3208

.thumb
branch_21d3208: @ 21d3208 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d320e


.align 2


.word 0x21d32a5 @ 0x21d3210
.word 0x494 @ 0x21d3214
.word 0x21d3301 @ 0x21d3218
.word 0x109 @ 0x21d321c
.word 0x4000050 @ 0x21d3220
.word 0x4001050 @ 0x21d3224
.word 0x21d3361 @ 0x21d3228
.word 0x21d33a9 @ 0x21d322c
.word 0x1ea @ 0x21d3230
.thumb
Function_21d3234: @ 21d3234 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	ldrb    r0, [r4, #0x1a]
	cmp     r0, #0x0
	beq     branch_21d3286
	ldr     r0, [r4, #0x2c]
	bl      Function_21d67b0
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x6
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x7
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x5
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	bl      free
	mov     r0, #0x0
	strb    r0, [r4, #0x1a]
.thumb
branch_21d3286: @ 21d3286 :thumb
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	beq     branch_21d32a0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_21d3296
	bl      ErrorHandling
.thumb
branch_21d3296: @ 21d3296 :thumb
	ldr     r0, [r4, #0x28]
	bl      Function_200da58
	mov     r0, #0x0
	str     r0, [r4, #0x28]
.thumb
branch_21d32a0: @ 21d32a0 :thumb
	pop     {r4,pc}
@ 0x21d32a2


.align 2, 0


.thumb
Function_21d32a4: @ 21d32a4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldrb    r1, [r4, #0x7]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, #0x7]
	ldrb    r1, [r4, #0x7]
	cmp     r1, #0x6
	bcc     branch_21d32c0
	mov     r1, #0x0
	strb    r1, [r4, #0x7]
	ldrb    r1, [r4, #0x6]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, #0x6]
.thumb
branch_21d32c0: @ 21d32c0 :thumb
	ldrb    r1, [r4, #0x6]
	cmp     r1, #0x10
	bcc     branch_21d32d2
	bl      Function_200da58
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
.thumb
branch_21d32d2: @ 21d32d2 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	ldrb    r3, [r4, #0x6]
	ldr     r0, [pc, #0x1c] @ 0x21d32f8, (=0x4000050)
	mov     r1, #0x2
	mov     r2, #0x8
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	ldrb    r3, [r4, #0x6]
	ldr     r0, [pc, #0x10] @ 0x21d32fc, (=0x4001050)
	mov     r1, #0x2
	mov     r2, #0x8
	blx     G2x_SetBlendAlpha_
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d32f6


.align 2


.word 0x4000050 @ 0x21d32f8
.word 0x4001050 @ 0x21d32fc
.thumb
Function_21d3300: @ 21d3300 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldrb    r1, [r4, #0x7]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, #0x7]
	ldrb    r1, [r4, #0x7]
	cmp     r1, #0x4
	bcc     branch_21d331c
	mov     r1, #0x0
	strb    r1, [r4, #0x7]
	ldrb    r1, [r4, #0x6]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, #0x6]
.thumb
branch_21d331c: @ 21d331c :thumb
	ldrb    r1, [r4, #0x6]
	cmp     r1, #0x0
	bne     branch_21d3332
	bl      Function_200da58
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	mov     r1, #0x1
	strb    r1, [r4, #0x8]
	ldr     r0, [r4, #0x18]
	strb    r1, [r0, #0x0]
.thumb
branch_21d3332: @ 21d3332 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	ldrb    r3, [r4, #0x6]
	ldr     r0, [pc, #0x1c] @ 0x21d3358, (=0x4000050)
	mov     r1, #0x2
	mov     r2, #0x8
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	ldrb    r3, [r4, #0x6]
	ldr     r0, [pc, #0x10] @ 0x21d335c, (=0x4001050)
	mov     r1, #0x2
	mov     r2, #0x8
	blx     G2x_SetBlendAlpha_
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d3356


.align 2


.word 0x4000050 @ 0x21d3358
.word 0x4001050 @ 0x21d335c
.thumb
Function_21d3360: @ 21d3360 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldrb    r1, [r4, #0x7]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, #0x7]
	ldrb    r1, [r4, #0x7]
	cmp     r1, #0x4
	bcc     branch_21d337c
	mov     r1, #0x0
	strb    r1, [r4, #0x7]
	ldrb    r1, [r4, #0x6]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, #0x6]
.thumb
branch_21d337c: @ 21d337c :thumb
	ldrb    r1, [r4, #0x6]
	cmp     r1, #0x10
	bcc     branch_21d338e
	bl      Function_200da58
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
.thumb
branch_21d338e: @ 21d338e :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	ldrb    r3, [r4, #0x6]
	ldr     r0, [pc, #0xc] @ 0x21d33a4, (=0x4000050)
	mov     r1, #0x4
	mov     r2, #0x8
	blx     G2x_SetBlendAlpha_
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d33a2


.align 2


.word 0x4000050 @ 0x21d33a4
.thumb
Function_21d33a8: @ 21d33a8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldrb    r1, [r4, #0x7]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, #0x7]
	ldrb    r1, [r4, #0x7]
	cmp     r1, #0x4
	bcc     branch_21d33c4
	mov     r1, #0x0
	strb    r1, [r4, #0x7]
	ldrb    r1, [r4, #0x6]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, #0x6]
.thumb
branch_21d33c4: @ 21d33c4 :thumb
	ldrb    r1, [r4, #0x6]
	cmp     r1, #0x10
	bcc     branch_21d33d6
	bl      Function_200da58
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
.thumb
branch_21d33d6: @ 21d33d6 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	ldrb    r3, [r4, #0x6]
	ldr     r0, [pc, #0xc] @ 0x21d33ec, (=0x4001050)
	mov     r1, #0x4
	mov     r2, #0x8
	blx     G2x_SetBlendAlpha_
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d33ea


.align 2


.word 0x4001050 @ 0x21d33ec
.thumb
Function_21d33f0: @ 21d33f0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	mov     r4, r5
	add     r4, #0x34
	cmp     r0, #0x0
	beq     branch_21d3402
	mov     r0, #0x4
	strb    r0, [r4, #0x0]
.thumb
branch_21d3402: @ 21d3402 :thumb
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x4
	bhi     branch_21d34a4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d3414

Jumppoints_21d3414:
.hword branch_21d341e - Jumppoints_21d3414 - 2
.hword branch_21d342c - Jumppoints_21d3414 - 2
.hword branch_21d343c - Jumppoints_21d3414 - 2
.hword branch_21d3458 - Jumppoints_21d3414 - 2
.hword branch_21d349a - Jumppoints_21d3414 - 2
.thumb
branch_21d341e: @ 21d341e :thumb
	mov     r0, r5
	bl      Function_21d34a8
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_21d34a4
@ 0x21d342c

.thumb
branch_21d342c: @ 21d342c :thumb
	add     r5, #0x34
	mov     r0, r5
	bl      Function_21d37c0
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_21d34a4
@ 0x21d343c

.thumb
branch_21d343c: @ 21d343c :thumb
	mov     r0, r5
	add     r0, #0x34
	mov     r1, #0x0
	bl      Function_21d40dc
	cmp     r0, #0x1
	bne     branch_21d34a4
	mov     r0, #0x1
	add     r5, #0x3a
	strb    r0, [r5, #0x0]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_21d34a4
@ 0x21d3458

.thumb
branch_21d3458: @ 21d3458 :thumb
	mov     r1, r5
	ldr     r2, [r5, #0x4]
	mov     r0, r5
	add     r1, #0x34
	bl      Function_21d4230
	cmp     r0, #0x0
	beq     branch_21d346e
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
.thumb
branch_21d346e: @ 21d346e :thumb
	ldr     r0, [r5, #0x48]
	bl      Function_21d6020
	mov     r0, r5
	add     r0, #0x3a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d3492
	mov     r0, r5
	add     r0, #0x39
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d34a4
	add     r5, #0x34
	mov     r0, r5
	bl      Function_21d4188
	b       branch_21d34a4
@ 0x21d3492

.thumb
branch_21d3492: @ 21d3492 :thumb
	ldr     r0, [r5, #0x50]
	bl      Function_21d6e50
	b       branch_21d34a4
@ 0x21d349a

.thumb
branch_21d349a: @ 21d349a :thumb
	mov     r0, r5
	bl      Function_21d36f8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d34a4

.thumb
branch_21d34a4: @ 21d34a4 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d34a8

.thumb
Function_21d34a8: @ 21d34a8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_21d25d0
	mov     r0, r5
	bl      Function_21d2724
	mov     r0, r5
	bl      Function_21d2a58
	bl      Function_21d555c
	mov     r4, r0
	bl      Function_21d6cb8
	mov     r6, r0
	mov     r0, #0x4c
	mov     r1, r4
	bl      malloc_maybe
	str     r0, [r5, #0x48]
	mov     r0, #0x10
	bl      Function_21d6734
	str     r0, [r5, #0x4c]
	mov     r0, #0x4c
	mov     r1, r6
	bl      malloc_maybe
	str     r0, [r5, #0x50]
	ldr     r0, [r5, #0x48]
	mov     r1, #0x0
	mov     r2, r4
	blx     0x20d5124
	ldr     r0, [r5, #0x50]
	mov     r1, #0x0
	mov     r2, r6
	blx     0x20d5124
	mov     r0, r5
	mov     r1, #0x4
	add     r0, #0x3c
	strb    r1, [r0, #0x0]
	ldr     r0, [r5, #0x50]
	bl      Function_21d6cfc
	ldr     r0, [r5, #0xc]
	mov     r1, #0x0
	str     r0, [r5, #0x44]
	ldr     r0, [pc, #0x88] @ 0x21d3598, (=0x21bf6dc)
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	ldr     r6, [pc, #0x84] @ 0x21d359c, (=0x21d776c)
	ldr     r7, [pc, #0x84] @ 0x21d35a0, (=0x21d7444)
	mov     r4, #0x0
.thumb
branch_21d351c: @ 21d351c :thumb
	mov     r0, #0xc
	mov     r1, r4
	mul     r1, r0
	add     r3, r6, r1
	ldr     r2, [r3, #0x4]
	ldr     r1, [r6, r1]
	ldr     r3, [r3, #0x8]
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	lsl     r3, r3, #16
	mov     r0, r4
	asr     r1, r1, #16
	asr     r2, r2, #16
	asr     r3, r3, #16
	blx     0x20af51c
	lsl     r1, r4, #1
	ldrh    r1, [r7, r1]
	mov     r0, r4
	blx     0x20af558
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x4
	bcc     branch_21d351c
	ldr     r0, [pc, #0x50] @ 0x21d35a4, (=0x4210)
	ldr     r1, [pc, #0x54] @ 0x21d35a8, (=0x318a)
	mov     r2, #0x0
	blx     0x20af56c
	ldr     r0, [pc, #0x50] @ 0x21d35ac, (=0x4a52)
	ldr     r1, [pc, #0x50] @ 0x21d35b0, (=0x39ce)
	mov     r2, #0x0
	blx     0x20af590
	mov     r0, #0x1f
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #14
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0xd
	mov     r2, #0x2
	mov     r3, r1
	blx     0x20af5b4
	ldr     r0, [pc, #0x38] @ 0x21d35b4, (=0x21d2b39)
	mov     r1, r5
	bl      SetMainLoopFunctionCall
	mov     r0, #0xf
	mvn     r0, r0
	mov     r1, #0x8
	mov     r2, #0x1
	bl      0x200ab4c
	mov     r0, #0x1
	add     r5, #0x36
	strb    r0, [r5, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d3598

.word 0x21bf6dc @ 0x21d3598
.word 0x21d776c @ 0x21d359c
.word 0x21d7444 @ 0x21d35a0
.word 0x4210 @ 0x21d35a4
.word 0x318a @ 0x21d35a8
.word 0x4a52 @ 0x21d35ac
.word 0x39ce @ 0x21d35b0
.word 0x21d2b39 @ 0x21d35b4
.thumb
Function_21d35b8: @ 21d35b8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x38
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d35ce
	mov     r0, r5
	add     r0, #0x39
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d3618
.thumb
branch_21d35ce: @ 21d35ce :thumb
	bl      0x20203e0
	ldr     r0, [r5, #0x5c]
	bl      0x20203b8
	mov     r0, #0x27
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_21d35fe
	mov     r7, #0x27
	mov     r4, r5
	lsl     r7, r7, #4
.thumb
branch_21d35ea: @ 21d35ea :thumb
	mov     r0, r4
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	bl      free
	ldr     r0, [r5, r7]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x58
	cmp     r6, r0
	blt     branch_21d35ea
.thumb
branch_21d35fe: @ 21d35fe :thumb
	mov     r0, #0x27
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	ldr     r0, [r5, #0x54]
	bl      free
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x38
	strb    r1, [r0, #0x0]
	add     r5, #0x39
	strb    r1, [r5, #0x0]
.thumb
branch_21d3618: @ 21d3618 :thumb
	pop     {r3-r7,pc}
@ 0x21d361a


.align 2, 0


.thumb
Function_21d361c: @ 21d361c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x36
	ldrb    r0, [r0, #0x0]
	mov     r4, r1
	cmp     r0, #0x0
	beq     branch_21d36f0
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	beq     branch_21d36f0
	ldr     r1, [pc, #0xc0] @ 0x21d36f4, (=0x28e)
	ldrb    r1, [r5, r1]
	cmp     r1, #0x0
	bne     branch_21d3670
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x4
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x5
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x6
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x7
	bl      0x2019044
	b       branch_21d36e2
@ 0x21d3670

.thumb
branch_21d3670: @ 21d3670 :thumb
	cmp     r1, #0x1
	bne     branch_21d36a4
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x5
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x6
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x7
	bl      0x2019044
	b       branch_21d36e2
@ 0x21d36a4

.thumb
branch_21d36a4: @ 21d36a4 :thumb
	mov     r1, #0x0
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x4
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x5
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x6
	bl      0x2019044
	ldr     r0, [r5, #0xc]
	mov     r1, #0x7
	bl      0x2019044
.thumb
branch_21d36e2: @ 21d36e2 :thumb
	cmp     r4, #0x1
	bne     branch_21d36f0
	ldr     r0, [r5, #0xc]
	bl      free
	mov     r0, #0x0
	str     r0, [r5, #0xc]
.thumb
branch_21d36f0: @ 21d36f0 :thumb
	pop     {r3-r5,pc}
@ 0x21d36f2


.align 2


.word 0x28e @ 0x21d36f4
.thumb
Function_21d36f8: @ 21d36f8 :thumb
	push    {r4,lr}
	mov     r3, #0x1
	lsl     r3, r3, #26
	ldr     r2, [r3, #0x0]
	ldr     r1, [pc, #0xb4] @ 0x21d37b8, (=0xffff1fff)
	mov     r4, r0
	and     r1, r2
	str     r1, [r3, #0x0]
	bl      Function_21d35b8
	mov     r0, r4
	add     r0, #0x37
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d3724
	ldr     r0, [r4, #0x48]
	bl      Function_21d5bac
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x37
	strb    r1, [r0, #0x0]
.thumb
branch_21d3724: @ 21d3724 :thumb
	mov     r0, r4
	add     r0, #0x36
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d3788
	ldr     r0, [r4, #0x4c]
	cmp     r0, #0x0
	beq     branch_21d373c
	bl      Function_21d6760
	mov     r0, #0x0
	str     r0, [r4, #0x4c]
.thumb
branch_21d373c: @ 21d373c :thumb
	ldr     r0, [r4, #0x48]
	cmp     r0, #0x0
	beq     branch_21d374a
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x48]
.thumb
branch_21d374a: @ 21d374a :thumb
	ldr     r0, [r4, #0x50]
	cmp     r0, #0x0
	beq     branch_21d375e
	bl      Function_21d6e28
	ldr     r0, [r4, #0x50]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x50]
.thumb
branch_21d375e: @ 21d375e :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d361c
	mov     r0, #0x9d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d377c
	bl      free
	mov     r0, #0x9d
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_21d377c: @ 21d377c :thumb
	ldr     r0, [r4, #0x10]
	bl      0x20242c4
	mov     r0, #0x0
	add     r4, #0x36
	strb    r0, [r4, #0x0]
.thumb
branch_21d3788: @ 21d3788 :thumb
	blx     0x20b2628
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	blx     0x20bfc74
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x18] @ 0x21d37b8, (=0xffff1fff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x14] @ 0x21d37bc, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	pop     {r4,pc}
@ 0x21d37b6


.align 2


.word 0xffff1fff @ 0x21d37b8
.word 0x4001000 @ 0x21d37bc
.thumb
Function_21d37c0: @ 21d37c0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x80
	mov     r1, #0x4c
	bl      0x2006c24
	mov     r3, #0x6
	lsl     r3, r3, #6
	str     r3, [sp, #0x0]
	mov     r1, #0x40
	str     r1, [sp, #0x4]
	mov     r1, #0x4c
	str     r1, [sp, #0x8]
	mov     r1, #0x60
	mov     r2, #0x0
	mov     r4, r0
	bl      0x2007148
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x5f
	mov     r3, #0x3
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0xc
	mov     r3, #0x3
	bl      0x200710c
	mov     r3, #0x7
	lsl     r3, r3, #6
	str     r3, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0xd
	mov     r2, #0x0
	bl      0x2007148
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0xe
	mov     r3, #0x2
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0xc
	mov     r3, #0x2
	bl      0x200710c
	mov     r0, #0x41
	mov     r1, #0x4c
	bl      0x2006c24
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r1, #0x4c
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r1, #0x38
	mov     r3, #0x1
	mov     r6, r0
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r6
	mov     r1, #0x39
	mov     r3, #0x1
	bl      0x200710c
	mov     r0, #0x1
	lsl     r0, r0, #10
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r6
	mov     r1, #0x39
	mov     r3, #0x1
	bl      0x200710c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x4c
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r1, #0x37
	mov     r3, r2
	bl      0x2007130
	mov     r0, r6
	bl      0x2006ca8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x4c
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x3d
	mov     r2, #0x4
	bl      0x2007130
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x3b
	mov     r3, #0x5
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x3f
	mov     r3, #0x5
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x3a
	mov     r3, #0x6
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x3e
	mov     r3, #0x6
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x3c
	mov     r3, #0x7
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x40
	mov     r3, #0x7
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0xe
	mov     r3, #0x4
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0xc
	mov     r3, #0x4
	bl      0x200710c
	mov     r3, #0x7
	lsl     r3, r3, #6
	str     r3, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0xd
	mov     r2, #0x4
	bl      0x2007148
	ldr     r0, [r5, #0x14]
	bl      Function_21d5564
	ldr     r0, [r5, #0x14]
	bl      Function_21d5c3c
	ldr     r0, [r5, #0x14]
	ldr     r1, [r5, #0x18]
	bl      Function_21d5fb4
	mov     r1, #0x5
	mov     r0, #0x0
	lsl     r1, r1, #24
	mov     r2, #0x2
	blx     MIi_CpuClear16
	ldr     r1, [pc, #0x34] @ 0x21d3a0c, (=0x5000400)
	mov     r0, #0x0
	mov     r2, #0x2
	blx     MIi_CpuClear16
	mov     r0, #0xe
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0xf
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x0
	bl      0x200f338
	mov     r0, #0x1
	bl      0x200f338
	mov     r0, r4
	bl      0x2006ca8
	mov     r0, #0x1
	strb    r0, [r5, #0x3]
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d3a0a


.align 2


.word 0x5000400 @ 0x21d3a0c
.thumb
Function_21d3a10: @ 21d3a10 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r2, #0x0
	ldr     r0, [r5, #0x10]
	mov     r1, #0x2
	mov     r3, r2
	bl      0x2018898
	mov     r2, #0x0
	ldr     r0, [r5, #0x10]
	mov     r1, #0x3
	mov     r3, r2
	bl      0x2018898
	ldr     r1, [pc, #0x124] @ 0x21d3b54, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	strh    r2, [r1, #0x0]
	mov     r0, #0x1
	mov     r1, #0x3
	bl      Function_2019060
	mov     r0, #0x80
	mov     r1, #0x4c
	bl      0x2006c24
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x4c
	str     r1, [sp, #0x4]
	mov     r1, #0x44
	mov     r3, r2
	mov     r4, r0
	bl      0x2007130
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x42
	mov     r3, #0x1
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x46
	mov     r3, #0x1
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x41
	mov     r3, #0x2
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x45
	mov     r3, #0x2
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x43
	mov     r3, #0x3
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x47
	mov     r3, #0x3
	bl      0x200710c
	mov     r1, #0x5
	mov     r0, #0x0
	lsl     r1, r1, #24
	mov     r2, #0x2
	blx     MIi_CpuClear16
	ldr     r1, [pc, #0x60] @ 0x21d3b58, (=0x5000400)
	mov     r0, #0x0
	mov     r2, #0x2
	blx     MIi_CpuClear16
	mov     r2, #0x0
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2019184
	mov     r2, #0x0
	ldr     r0, [r5, #0x10]
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2019184
	mov     r2, #0x0
	ldr     r0, [r5, #0x10]
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2019184
	mov     r2, #0x0
	ldr     r0, [r5, #0x10]
	mov     r1, #0x5
	mov     r3, r2
	bl      Function_2019184
	mov     r2, #0x0
	ldr     r0, [r5, #0x10]
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2019184
	mov     r2, #0x0
	ldr     r0, [r5, #0x10]
	mov     r1, #0x7
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	bl      0x2006ca8
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d3b52


.align 2


.word 0x4000008 @ 0x21d3b54
.word 0x5000400 @ 0x21d3b58
.thumb
Function_21d3b5c: @ 21d3b5c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r1
	bl      Function_21d2828
	mov     r0, #0x80
	mov     r1, #0x4c
	bl      0x2006c24
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x4c
	str     r1, [sp, #0x4]
	mov     r1, #0x48
	mov     r3, r2
	mov     r4, r0
	bl      0x2007130
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x4c
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x48
	mov     r2, #0x4
	bl      0x2007130
	mov     r1, #0x2
	mov     r0, #0x4c
	lsl     r1, r1, #8
	bl      malloc_maybe
	mov     r2, #0x9
	lsl     r2, r2, #6
	str     r0, [r5, r2]
	mov     r0, #0x5
	ldr     r1, [r5, r2]
	lsl     r0, r0, #24
	sub     r2, #0x40
	blx     MIi_CpuCopy16
	mov     r1, #0x9
	lsl     r1, r1, #6
	ldr     r1, [r5, r1]
	mov     r0, #0x0
	mov     r2, #0x2
	blx     MIi_CpuClear16
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x49
	mov     r3, #0x1
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r1, #0x4c
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r3, #0x1
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x49
	mov     r3, #0x5
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r1, #0x4c
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r3, #0x5
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x4a
	mov     r3, #0x2
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x4d
	mov     r3, #0x2
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x4a
	mov     r3, #0x6
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x4d
	mov     r3, #0x6
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x4b
	mov     r3, #0x3
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x4e
	mov     r3, #0x3
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x4b
	mov     r3, #0x7
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x4e
	mov     r3, #0x7
	bl      0x200710c
	mov     r1, #0x5
	mov     r0, #0x0
	lsl     r1, r1, #24
	mov     r2, #0x2
	blx     MIi_CpuClear16
	ldr     r1, [pc, #0x60] @ 0x21d3d48, (=0x5000400)
	mov     r0, #0x0
	mov     r2, #0x2
	blx     MIi_CpuClear16
	mov     r2, #0x0
	mov     r3, r2
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	sub     r3, #0x80
	bl      Function_2019184
	mov     r2, #0x0
	mov     r3, r2
	ldr     r0, [r5, #0x10]
	mov     r1, #0x2
	sub     r3, #0xc8
	bl      Function_2019184
	mov     r2, #0x0
	mov     r3, r2
	ldr     r0, [r5, #0x10]
	mov     r1, #0x3
	sub     r3, #0x98
	bl      Function_2019184
	ldr     r0, [r5, #0x10]
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r3, #0x80
	bl      Function_2019184
	ldr     r0, [r5, #0x10]
	mov     r1, #0x6
	mov     r2, #0x0
	mov     r3, #0xc0
	bl      Function_2019184
	ldr     r0, [r5, #0x10]
	mov     r1, #0x7
	mov     r2, #0x0
	mov     r3, #0xb0
	bl      Function_2019184
	mov     r0, r4
	bl      0x2006ca8
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d3d46


.align 2


.word 0x5000400 @ 0x21d3d48
.thumb
Function_21d3d4c: @ 21d3d4c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r1
	bl      Function_21d2900
	mov     r0, #0x80
	mov     r1, #0x4c
	bl      0x2006c24
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r1, #0x4c
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r1, #0x4f
	mov     r4, r0
	bl      0x20070e8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x50
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x51
	mov     r3, #0x4
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x52
	mov     r3, #0x4
	bl      0x200710c
	mov     r0, r4
	bl      0x2006ca8
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d3dc4

.thumb
Function_21d3dc4: @ 21d3dc4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x10c] @ 0x21d3ed8, (=0x21bf6dc)
	ldrb    r0, [r0, #0x5]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x10]
	bne     branch_21d3e50
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r1, #0x3
	ldr     r0, [r4, #0x10]
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2019184
	mov     r2, #0x3
	mov     r3, r2
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	add     r3, #0xfd
	bl      Function_2019184
	mov     r2, #0x3
	mov     r3, r2
	ldr     r0, [r4, #0x10]
	mov     r1, #0x6
	add     r3, #0xfd
	bl      Function_2019184
	mov     r2, #0x3
	mov     r3, r2
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	add     r3, #0xfd
	bl      Function_2019184
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_2019060
	mov     r0, #0x2
	mov     r1, r0
	bl      Function_2019060
	mov     r0, #0x3
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0x5
	mov     r1, #0x1
	bl      Function_2019060
	mov     r0, #0x6
	mov     r1, #0x2
	bl      Function_2019060
	mov     r0, #0x7
	mov     r1, #0x0
	bl      Function_2019060
	b       branch_21d3ecc
@ 0x21d3e50

.thumb
branch_21d3e50: @ 21d3e50 :thumb
	mov     r2, #0x3
	mov     r3, r2
	mov     r1, #0x1
	add     r3, #0xfd
	bl      Function_2019184
	mov     r2, #0x3
	mov     r3, r2
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	add     r3, #0xfd
	bl      Function_2019184
	mov     r1, #0x3
	mov     r3, r1
	ldr     r0, [r4, #0x10]
	mov     r2, r1
	add     r3, #0xfd
	bl      Function_2019184
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	ldr     r0, [r4, #0x10]
	mov     r1, #0x6
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_2019060
	mov     r0, #0x2
	mov     r1, r0
	bl      Function_2019060
	mov     r0, #0x3
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0x5
	mov     r1, #0x1
	bl      Function_2019060
	mov     r0, #0x6
	mov     r1, #0x2
	bl      Function_2019060
	mov     r0, #0x7
	mov     r1, #0x0
	bl      Function_2019060
.thumb
branch_21d3ecc: @ 21d3ecc :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      Function_21d636c
	pop     {r4,pc}
@ 0x21d3ed6


.align 2


.word 0x21bf6dc @ 0x21d3ed8
.thumb
Function_21d3edc: @ 21d3edc :thumb
	push    {r4,lr}
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x3c] @ 0x21d3f20, (=0x21d7458)
	mov     r4, r0
	ldr     r1, [r1, r2]
	mov     r0, #0x80
	mov     r2, #0x4c
	bl      LoadFromNARC_2
	str     r0, [r4, #0x20]
	blx     0x20b3c1c
	str     r0, [r4, #0x24]
	bl      0x201cbcc
	cmp     r0, #0x0
	bne     branch_21d3f02
	bl      ErrorHandling
.thumb
branch_21d3f02: @ 21d3f02 :thumb
	ldr     r0, [r4, #0x24]
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x0
	bne     branch_21d3f0e
	bl      ErrorHandling
.thumb
branch_21d3f0e: @ 21d3f0e :thumb
	ldr     r2, [r4, #0x24]
	ldr     r0, [r4, #0x20]
	ldr     r1, [r2, #0x14]
	add     r1, r2, r1
	sub     r1, r1, r0
	bl      0x20182f0
	pop     {r4,pc}
@ 0x21d3f1e


.align 2


.word 0x21d7458 @ 0x21d3f20
.thumb
Function_21d3f24: @ 21d3f24 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	str     r3, [sp, #0x0]
	cmp     r3, #0x6
	ble     branch_21d3f38
	mov     r0, #0x6
	str     r0, [sp, #0x0]
.thumb
branch_21d3f38: @ 21d3f38 :thumb
	mov     r0, #0x80
	mov     r1, #0x4c
	bl      0x2006c24
	str     r0, [sp, #0x8]
	lsl     r0, r4, #24
	lsr     r7, r0, #24
	ldr     r0, [sp, #0x0]
	cmp     r7, r0
	bge     branch_21d4036
	mov     r0, #0x18
	ldr     r1, [pc, #0xf0] @ 0x21d4040, (=0x21d779c)
	mul     r0, r6
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r5
	str     r0, [sp, #0xc]
	add     r0, #0x2c
	str     r0, [sp, #0xc]
.thumb
branch_21d3f5e: @ 21d3f5e :thumb
	ldr     r0, [sp, #0x4]
	lsl     r1, r7, #2
	ldr     r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_21d4036
	mov     r0, #0x58
	mov     r6, r7
	mul     r6, r0
	ldr     r0, [sp, #0x8]
	mov     r2, #0x4c
	bl      0x2006cb8
	add     r1, r5, r6
	add     r1, #0x80
	str     r0, [r1, #0x0]
	add     r0, r5, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, #0x24]
	bl      0x201cbb0
	cmp     r0, #0x0
	bne     branch_21d3f90
	bl      ErrorHandling
.thumb
branch_21d3f90: @ 21d3f90 :thumb
	add     r0, r5, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	blx     0x20b3c0c
	ldrb    r0, [r0, #0x9]
	cmp     r0, #0x1
	beq     branch_21d3fa4
	bl      ErrorHandling
.thumb
branch_21d3fa4: @ 21d3fa4 :thumb
	add     r0, r5, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	blx     0x20b3c0c
	cmp     r0, #0x0
	beq     branch_21d3fd2
	mov     r2, r0
	add     r2, #0x8
	beq     branch_21d3fc6
	ldrb    r1, [r0, #0x9]
	cmp     r1, #0x0
	bls     branch_21d3fc6
	ldrh    r1, [r0, #0xe]
	add     r1, r2, r1
	.hword  0x1d09 @ add r1, r1, #0x4
	b       branch_21d3fc8
@ 0x21d3fc6

.thumb
branch_21d3fc6: @ 21d3fc6 :thumb
	mov     r1, #0x0
.thumb
branch_21d3fc8: @ 21d3fc8 :thumb
	cmp     r1, #0x0
	beq     branch_21d3fd2
	ldr     r1, [r1, #0x0]
	add     r4, r0, r1
	b       branch_21d3fd4
@ 0x21d3fd2

.thumb
branch_21d3fd2: @ 21d3fd2 :thumb
	mov     r4, #0x0
.thumb
branch_21d3fd4: @ 21d3fd4 :thumb
	cmp     r4, #0x0
	bne     branch_21d3fdc
	bl      ErrorHandling
.thumb
branch_21d3fdc: @ 21d3fdc :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, r4
	add     r0, r0, r6
	blx     0x20ae608
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x40
	blx     0x20b2ce4
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x80
	blx     0x20b2ce4
	mov     r2, #0x2
	mov     r0, r4
	mov     r1, #0x0
	lsl     r2, r2, #8
	blx     0x20b2ce4
	mov     r2, #0x1
	mov     r0, r4
	mov     r1, #0x0
	lsl     r2, r2, #10
	blx     0x20b2ce4
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0xf
	blx     0x20b2d8c
	mov     r0, #0x8f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, r0, #0x1
	mov     r0, #0x8f
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	add     r0, r7, #0x1
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	ldr     r0, [sp, #0x0]
	cmp     r7, r0
	blt     branch_21d3f5e
.thumb
branch_21d4036: @ 21d4036 :thumb
	ldr     r0, [sp, #0x8]
	bl      0x2006ca8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d4040

.word 0x21d779c @ 0x21d4040
.thumb
Function_21d4044: @ 21d4044 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x24
	mov     r4, r0
	mov     r0, #0x4c
	bl      0x20203ac
	add     r3, sp, #0x18
	ldr     r5, [pc, #0x4c] @ 0x21d40a0, (=0x21d7494)
	str     r0, [r4, #0x28]
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x44] @ 0x21d40a4, (=0x29aec1)
	str     r0, [r3, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x28]
	ldr     r3, [pc, #0x3c] @ 0x21d40a8, (=0x5c1)
	str     r0, [sp, #0x8]
	mov     r0, r2
	ldr     r2, [pc, #0x38] @ 0x21d40ac, (=0x21d7500)
	bl      0x20206d0
	ldr     r0, [pc, #0x38] @ 0x21d40b0, (=0x981)
	ldr     r1, [r4, #0x28]
	bl      0x2020910
	ldr     r5, [pc, #0x34] @ 0x21d40b4, (=0x21d7464)
	add     r3, sp, #0xc
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	ldr     r1, [r4, #0x28]
	mov     r0, r2
	bl      0x2020990
	ldr     r0, [r4, #0x28]
	bl      0x20203d4
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x21d409e


.align 2


.word 0x21d7494 @ 0x21d40a0
.word 0x29aec1 @ 0x21d40a4
.word 0x5c1 @ 0x21d40a8
.word 0x21d7500 @ 0x21d40ac
.word 0x981 @ 0x21d40b0
.word 0x21d7464 @ 0x21d40b4
.thumb
Function_21d40b8: @ 21d40b8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	bl      Function_21d3edc
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x0
	mov     r3, #0x6
	bl      Function_21d3f24
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d4044
	mov     r0, #0x1
	strb    r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x21d40dc

.thumb
Function_21d40dc: @ 21d40dc :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	ldrb    r2, [r4, #0x9]
	bne     branch_21d4126
	cmp     r2, #0x0
	beq     branch_21d40f2
	cmp     r2, #0x1
	beq     branch_21d4104
	cmp     r2, #0x2
	b       branch_21d410e
@ 0x21d40f2

.thumb
branch_21d40f2: @ 21d40f2 :thumb
	mov     r2, #0x1
	strb    r2, [r4, #0x5]
	bl      Function_21d3edc
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d4044
	b       branch_21d417c
@ 0x21d4104

.thumb
branch_21d4104: @ 21d4104 :thumb
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_21d3f24
	b       branch_21d417c
@ 0x21d410e

.thumb
branch_21d410e: @ 21d410e :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	mov     r3, #0x6
	bl      Function_21d3f24
	mov     r0, #0x0
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0x5]
	mov     r0, #0x1
	strb    r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x21d4126

.thumb
branch_21d4126: @ 21d4126 :thumb
	cmp     r2, #0x3
	bhi     branch_21d4164
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x21d4136

Jumppoints_21d4136:
.hword branch_21d413e - Jumppoints_21d4136 - 2
.hword branch_21d4150 - Jumppoints_21d4136 - 2
.hword branch_21d415a - Jumppoints_21d4136 - 2
.hword branch_21d4164 - Jumppoints_21d4136 - 2
.thumb
branch_21d413e: @ 21d413e :thumb
	mov     r2, #0x1
	strb    r2, [r4, #0x5]
	bl      Function_21d3edc
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d4044
	b       branch_21d417c
@ 0x21d4150

.thumb
branch_21d4150: @ 21d4150 :thumb
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_21d3f24
	b       branch_21d417c
@ 0x21d415a

.thumb
branch_21d415a: @ 21d415a :thumb
	mov     r2, #0x2
	mov     r3, #0x4
	bl      Function_21d3f24
	b       branch_21d417c
@ 0x21d4164

.thumb
branch_21d4164: @ 21d4164 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x4
	mov     r3, #0x6
	bl      Function_21d3f24
	mov     r0, #0x0
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0x5]
	mov     r0, #0x1
	strb    r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x21d417c

.thumb
branch_21d417c: @ 21d417c :thumb
	ldrb    r0, [r4, #0x9]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x9]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d4186


.align 2, 0


.thumb
Function_21d4188: @ 21d4188 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	ldr     r4, [pc, #0x94] @ 0x21d4224, (=0x21d76d0)
	mov     r5, r0
	add     r3, sp, #0x18
	mov     r2, #0x4
.thumb
branch_21d4194: @ 21d4194 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d4194
	ldr     r0, [r4, #0x0]
	add     r2, sp, #0xc
	str     r0, [r3, #0x0]
	ldr     r3, [pc, #0x84] @ 0x21d4228, (=0x21d7488)
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	add     r1, sp, #0x0
	str     r0, [r2, #0x0]
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	blx     0x20b2628
	bl      Call_G3X_Reset
	bl      0x20203ec
	mov     r0, #0x97
	lsl     r0, r0, #2
	ldrb    r1, [r5, r0]
	cmp     r1, #0x1
	bne     branch_21d41fe
	sub     r0, #0x20
	ldr     r0, [r5, r0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_21d41fe
	mov     r6, r5
	mov     r7, #0x8f
	add     r6, #0x2c
	lsl     r7, r7, #2
.thumb
branch_21d41de: @ 21d41de :thumb
	blx     0x20c2be8
	mov     r0, #0x58
	mul     r0, r4
	add     r0, r6, r0
	add     r1, sp, #0x0
	add     r2, sp, #0x18
	add     r3, sp, #0xc
	bl      0x201ca74
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	ldr     r0, [r5, r7]
	cmp     r4, r0
	blt     branch_21d41de
.thumb
branch_21d41fe: @ 21d41fe :thumb
	ldr     r0, [pc, #0x2c] @ 0x21d422c, (=0x25d)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_21d4216
	blx     0x20b2628
	bl      Call_G3X_Reset
	bl      0x201469c
	bl      0x20146c0
.thumb
branch_21d4216: @ 21d4216 :thumb
	mov     r0, #0x0
	mov     r1, #0x1
	bl      0x20241bc
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x21d4222


.align 2


.word 0x21d76d0 @ 0x21d4224
.word 0x21d7488 @ 0x21d4228
.word 0x25d @ 0x21d422c
.thumb
Function_21d4230: @ 21d4230 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r6, r0
	ldrb    r0, [r4, #0x7]
	mov     r5, r2
	cmp     r0, #0x0
	bne     branch_21d424c
	mov     r1, #0x91
	lsl     r1, r1, #2
	ldrb    r1, [r4, r1]
	ldr     r0, [r4, #0x18]
	bl      Function_21d6ba0
.thumb
branch_21d424c: @ 21d424c :thumb
	ldrb    r0, [r4, #0x7]
	ldrb    r1, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _s32_div_f
	strb    r1, [r4, #0x7]
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x13
	bhi     branch_21d42d0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d426a

Jumppoints_21d426a:
.hword branch_21d4292 - Jumppoints_21d426a - 2
.hword branch_21d42be - Jumppoints_21d426a - 2
.hword branch_21d4318 - Jumppoints_21d426a - 2
.hword branch_21d43d8 - Jumppoints_21d426a - 2
.hword branch_21d4428 - Jumppoints_21d426a - 2
.hword branch_21d45c2 - Jumppoints_21d426a - 2
.hword branch_21d469c - Jumppoints_21d426a - 2
.hword branch_21d46d2 - Jumppoints_21d426a - 2
.hword branch_21d4742 - Jumppoints_21d426a - 2
.hword branch_21d47d8 - Jumppoints_21d426a - 2
.hword branch_21d4878 - Jumppoints_21d426a - 2
.hword branch_21d48b8 - Jumppoints_21d426a - 2
.hword branch_21d4906 - Jumppoints_21d426a - 2
.hword branch_21d4946 - Jumppoints_21d426a - 2
.hword branch_21d4986 - Jumppoints_21d426a - 2
.hword branch_21d49d0 - Jumppoints_21d426a - 2
.hword branch_21d4aa6 - Jumppoints_21d426a - 2
.hword branch_21d4ad6 - Jumppoints_21d426a - 2
.hword branch_21d4b24 - Jumppoints_21d426a - 2
.hword branch_21d4b4e - Jumppoints_21d426a - 2
.thumb
branch_21d4292: @ 21d4292 :thumb
	mov     r0, #0xa
	lsl     r0, r0, #6
	cmp     r5, r0
	blt     branch_21d42d0
	mov     r0, #0x3
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x1
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	mov     r2, r1
	sub     r2, #0x10
	mov     r3, r0
	bl      0x200aae0
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	bl      Function_21d4b54
.thumb
branch_21d42be: @ 21d42be :thumb
	mov     r0, #0x1
	bl      0x200ac1c
	cmp     r0, #0x1
	bne     branch_21d42d0
	mov     r0, #0xaf
	lsl     r0, r0, #2
	cmp     r5, r0
	beq     branch_21d42d4
.thumb
branch_21d42d0: @ 21d42d0 :thumb
	bl      Function_21d4b54
.thumb
branch_21d42d4: @ 21d42d4 :thumb
	mov     r0, #0x0
	mov     r1, #0x1
	bl      0x2019120
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x9
	bl      Function_21d6cd0
	ldr     r0, [r4, #0x1c]
	mov     r1, #0xa
	bl      Function_21d6cd0
	ldr     r0, [r4, #0x1c]
	mov     r1, #0xb
	bl      Function_21d6cd0
	mov     r1, #0x0
	ldr     r0, [pc, #0x2e4] @ 0x21d45dc, (=0x4000050)
	mov     r2, #0xf
	mov     r3, r1
	str     r1, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	ldr     r0, [pc, #0x2dc] @ 0x21d45e0, (=0x25d)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	ldr     r0, [r4, #0x14]
	bl      Function_21d6050
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	bl      Function_21d4b54
.thumb
branch_21d4318: @ 21d4318 :thumb
	ldr     r0, [pc, #0x2c8] @ 0x21d45e4, (=0x311)
	cmp     r5, r0
	bne     branch_21d4336
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x2b8] @ 0x21d45e8, (=0x7fff)
	mov     r0, #0x3
	mov     r2, r1
	bl      0x200f174
.thumb
branch_21d4336: @ 21d4336 :thumb
	ldr     r0, [pc, #0x2b4] @ 0x21d45ec, (=0x316)
	cmp     r5, r0
	bne     branch_21d4368
	bl      0x200f2ac
	cmp     r0, #0x1
	beq     branch_21d4348
	bl      ErrorHandling
.thumb
branch_21d4348: @ 21d4348 :thumb
	ldr     r0, [pc, #0x2a4] @ 0x21d45f0, (=0x247)
	mov     r2, #0x4
	strb    r2, [r4, r0]
	mov     r1, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r4, r0]
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x288] @ 0x21d45e8, (=0x7fff)
	mov     r0, #0x3
	mov     r2, r1
	bl      0x200f174
.thumb
branch_21d4368: @ 21d4368 :thumb
	mov     r0, #0x3b
	lsl     r0, r0, #4
	cmp     r5, r0
	bne     branch_21d439a
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	ldr     r0, [pc, #0x278] @ 0x21d45f4, (=0x25b)
	mov     r3, #0x1
	strb    r3, [r4, r0]
	add     r1, r0, #0x2
	mov     r2, #0x0
	strb    r2, [r4, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r3, [r4, r0]
	ldr     r0, [r4, #0x1c]
	bl      Function_21d6cbc
	bl      0x2014710
	cmp     r0, #0x0
	beq     branch_21d439a
	bl      ErrorHandling
.thumb
branch_21d439a: @ 21d439a :thumb
	ldr     r0, [pc, #0x25c] @ 0x21d45f8, (=0x3b1)
	cmp     r5, r0
	bne     branch_21d43a8
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
.thumb
branch_21d43a8: @ 21d43a8 :thumb
	ldr     r0, [pc, #0x250] @ 0x21d45fc, (=0x3cf)
	cmp     r5, r0
	blt     branch_21d4458
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x12
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x224] @ 0x21d45e8, (=0x7fff)
	mov     r0, #0x3
	mov     r2, r1
	bl      0x200f174
	mov     r0, #0x10
	strb    r0, [r4, #0x8]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       Function_21d4b54
@ 0x21d43d8

.thumb
branch_21d43d8: @ 21d43d8 :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_21d513c
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d4f38
	ldr     r0, [r4, #0x14]
	mov     r1, r5
	bl      Function_21d6530
	ldr     r0, [r4, #0x14]
	mov     r1, r5
	bl      Function_21d60e0
	ldr     r0, [r4, #0x14]
	mov     r1, r5
	bl      Function_21d61b8
	ldr     r0, [pc, #0x1fc] @ 0x21d4600, (=0x628)
	cmp     r5, r0
	blt     branch_21d4458
	mov     r0, #0x12
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	ldr     r3, [pc, #0x1d0] @ 0x21d45e8, (=0x7fff)
	mov     r1, r0
	mov     r2, r0
	bl      0x200f174
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       Function_21d4b54
@ 0x21d4428

.thumb
branch_21d4428: @ 21d4428 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d4f38
	ldr     r0, [r4, #0x14]
	mov     r1, r5
	bl      Function_21d6530
	ldr     r0, [r4, #0x14]
	mov     r1, r5
	bl      Function_21d60e0
	ldr     r0, [r4, #0x14]
	mov     r1, r5
	bl      Function_21d61b8
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d4458
	mov     r0, #0x19
	lsl     r0, r0, #6
	cmp     r5, r0
	bge     branch_21d445a
.thumb
branch_21d4458: @ 21d4458 :thumb
	b       Function_21d4b54
@ 0x21d445a

.thumb
branch_21d445a: @ 21d445a :thumb
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x2019120
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x18]
	bl      Function_21d6000
	mov     r0, #0x91
	mov     r1, #0x1
	lsl     r0, r0, #2
	strb    r1, [r4, r0]
	mov     r0, r6
	mov     r1, r4
	bl      Function_21d3a10
	mov     r1, #0x1
	ldr     r0, [r4, #0x14]
	mov     r2, r1
	bl      Function_21d603c
	ldr     r0, [r4, #0x14]
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_21d603c
	mov     r0, #0x1
	mov     r1, r0
	bl      0x2019120
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x3
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x5
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x6
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x7
	mov     r1, #0x1
	bl      0x2019120
	mov     r1, #0x1
	mov     r3, r1
	ldr     r0, [r4, #0x10]
	mov     r2, #0x0
	add     r3, #0xff
	bl      Function_2019184
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r2, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2019184
	mov     r2, #0x3
	mov     r3, r2
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	add     r3, #0xfd
	bl      Function_2019184
	mov     r2, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2019184
	mov     r1, #0x3
	ldr     r0, [r4, #0x10]
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2019184
	mov     r1, #0x5
	mov     r3, r1
	ldr     r0, [r4, #0x10]
	mov     r2, #0x0
	add     r3, #0xfb
	bl      Function_2019184
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r2, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2019184
	mov     r2, #0x3
	mov     r3, r2
	ldr     r0, [r4, #0x10]
	mov     r1, #0x6
	add     r3, #0xfd
	bl      Function_2019184
	mov     r2, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	mov     r3, r2
	bl      Function_2019184
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r2, #0x26
	lsl     r2, r2, #4
	mov     r0, #0x1
	lsl     r0, r0, #20
	mov     r1, r2
	str     r0, [r4, r2]
	mov     r6, r2
	mov     r0, #0x0
	sub     r1, #0x16
	strh    r0, [r4, r1]
	mov     r1, r2
	mov     r5, #0xff
	sub     r1, #0x14
	strh    r5, [r4, r1]
	mov     r1, r2
	mov     r3, #0x20
	sub     r1, #0x12
	strh    r3, [r4, r1]
	mov     r1, #0x9f
	sub     r6, #0x10
	strh    r1, [r4, r6]
	mov     r6, r2
	sub     r6, #0xe
	strh    r0, [r4, r6]
	mov     r6, r2
	sub     r6, #0xc
	strh    r5, [r4, r6]
	mov     r5, r2
	sub     r5, #0xa
	strh    r3, [r4, r5]
	mov     r3, r2
	sub     r3, #0x8
	strh    r1, [r4, r3]
	mov     r1, #0x1
	sub     r2, #0x1b
	strb    r1, [r4, r2]
	ldr     r2, [pc, #0x3c] @ 0x21d45dc, (=0x4000050)
	strb    r0, [r4, #0x6]
	strh    r0, [r2, #0x0]
	ldr     r2, [pc, #0x5c] @ 0x21d4604, (=0x4001050)
	ldr     r3, [pc, #0x40] @ 0x21d45e8, (=0x7fff)
	strh    r0, [r2, #0x0]
	mov     r2, #0x12
	str     r2, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r2, #0x4c
	str     r2, [sp, #0x8]
	mov     r2, r1
	bl      0x200f174
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       Function_21d4b54
@ 0x21d45c2

.thumb
branch_21d45c2: @ 21d45c2 :thumb
	mov     r0, r4
	bl      Function_21d4b70
	ldr     r0, [r4, #0x14]
	bl      Function_21d607c
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d46b0
	ldr     r0, [pc, #0x30] @ 0x21d4608, (=0x726)
	b       branch_21d460c
@ 0x21d45da


.align 2


.word 0x4000050 @ 0x21d45dc
.word 0x25d @ 0x21d45e0
.word 0x311 @ 0x21d45e4
.word 0x7fff @ 0x21d45e8
.word 0x316 @ 0x21d45ec
.word 0x247 @ 0x21d45f0
.word 0x25b @ 0x21d45f4
.word 0x3b1 @ 0x21d45f8
.word 0x3cf @ 0x21d45fc
.word 0x628 @ 0x21d4600
.word 0x4001050 @ 0x21d4604
.word 0x726 @ 0x21d4608
.thumb
branch_21d460c: @ 21d460c :thumb
	cmp     r5, r0
	blt     branch_21d46b0
	mov     r2, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_201c63c
	mov     r1, #0x3
	mov     r3, r1
	ldr     r0, [r4, #0x10]
	mov     r2, r1
	add     r3, #0xfd
	bl      Function_201c63c
	mov     r2, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	mov     r3, r2
	bl      Function_201c63c
	mov     r2, #0x3
	mov     r3, r2
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	add     r3, #0xfd
	bl      Function_201c63c
	mov     r2, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_201c63c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_201c63c
	mov     r2, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_201c63c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x6
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_201c63c
	mov     r0, #0x92
	mov     r1, #0x22
	lsl     r0, r0, #2
	strb    r1, [r4, r0]
	mov     r1, #0x1
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r1, [r4, r0]
	ldr     r0, [r4, #0x14]
	mov     r2, #0x0
	bl      Function_21d603c
	ldr     r0, [r4, #0x14]
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_21d603c
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       Function_21d4b54
@ 0x21d469c

.thumb
branch_21d469c: @ 21d469c :thumb
	mov     r0, r4
	bl      Function_21d4be4
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d4c04
	ldr     r0, [pc, #0x34c] @ 0x21d49f8, (=0x735)
	cmp     r5, r0
	beq     branch_21d46b2
.thumb
branch_21d46b0: @ 21d46b0 :thumb
	b       Function_21d4b54
@ 0x21d46b2

.thumb
branch_21d46b2: @ 21d46b2 :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       Function_21d4b54
@ 0x21d46d2

.thumb
branch_21d46d2: @ 21d46d2 :thumb
	mov     r0, r4
	bl      Function_21d4be4
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d4c04
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d47b6
	ldr     r0, [pc, #0x310] @ 0x21d49fc, (=0x247)
	mov     r1, #0x22
	strb    r1, [r4, r0]
	mov     r2, #0x0
	mov     r1, #0x44
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r4, r0]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_201c63c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_201c63c
	mov     r2, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	mov     r3, r2
	bl      Function_201c63c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_201c63c
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       Function_21d4b54
@ 0x21d4742

.thumb
branch_21d4742: @ 21d4742 :thumb
	mov     r0, r4
	bl      Function_21d4be4
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d4c04
	ldr     r0, [r4, #0x14]
	mov     r1, r5
	bl      Function_21d6470
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d47b6
	ldr     r0, [pc, #0x29c] @ 0x21d4a00, (=0x744)
	cmp     r5, r0
	bne     branch_21d47b0
	mov     r2, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_201c63c
	mov     r2, #0x3
	mov     r3, r2
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	add     r3, #0xfd
	bl      Function_201c63c
	mov     r2, #0x0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	mov     r3, r2
	bl      Function_201c63c
	mov     r2, #0x3
	mov     r3, r2
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	add     r3, #0xfd
	bl      Function_201c63c
	ldr     r0, [r4, #0x14]
	mov     r1, #0xb
	mov     r2, #0x1
	bl      Function_21d603c
	ldr     r0, [r4, #0x14]
	mov     r1, #0xc
	mov     r2, #0x1
	bl      Function_21d603c
	b       Function_21d4b54
@ 0x21d47b0

.thumb
branch_21d47b0: @ 21d47b0 :thumb
	add     r0, #0x3c
	cmp     r5, r0
	bge     branch_21d47b8
.thumb
branch_21d47b6: @ 21d47b6 :thumb
	b       Function_21d4b54
@ 0x21d47b8

.thumb
branch_21d47b8: @ 21d47b8 :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	ldr     r3, [pc, #0x23c] @ 0x21d4a04, (=0x7fff)
	mov     r1, r0
	mov     r2, r0
	bl      0x200f174
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       Function_21d4b54
@ 0x21d47d8

.thumb
branch_21d47d8: @ 21d47d8 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, r5
	bl      Function_21d6470
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d4868
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x20c] @ 0x21d4a04, (=0x7fff)
	mov     r0, #0x0
	mov     r2, r1
	bl      0x200f174
	ldr     r0, [r4, #0x14]
	mov     r1, #0xb
	mov     r2, #0x0
	bl      Function_21d603c
	ldr     r0, [r4, #0x14]
	mov     r1, #0xc
	mov     r2, #0x0
	bl      Function_21d603c
	ldr     r0, [r4, #0x14]
	mov     r1, #0xd
	mov     r2, #0x1
	bl      Function_21d603c
	ldr     r0, [r4, #0x14]
	mov     r1, #0xe
	mov     r2, #0x1
	bl      Function_21d603c
	ldr     r0, [r4, #0x14]
	mov     r1, #0xf
	mov     r2, #0x1
	bl      Function_21d603c
	ldr     r0, [r4, #0x14]
	mov     r1, #0x10
	mov     r2, #0x1
	bl      Function_21d603c
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      Function_21d636c
	mov     r0, r6
	mov     r1, r4
	bl      Function_21d3b5c
	ldr     r0, [pc, #0x1bc] @ 0x21d4a08, (=0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	mov     r0, r4
	bl      Function_21d3dc4
	ldr     r0, [pc, #0x1b0] @ 0x21d4a0c, (=0x246)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       Function_21d4b54
@ 0x21d4868

.thumb
branch_21d4868: @ 21d4868 :thumb
	mov     r0, r4
	bl      Function_21d4be4
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d4c04
	b       Function_21d4b54
@ 0x21d4878

.thumb
branch_21d4878: @ 21d4878 :thumb
	mov     r1, #0x1
	ldr     r0, [r4, #0x14]
	lsl     r1, r1, #16
	bl      Function_21d6290
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d4dc8
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d48ca
	ldr     r0, [pc, #0x17c] @ 0x21d4a10, (=0x7da)
	cmp     r5, r0
	blt     branch_21d48ca
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, r1
	bl      0x200f174
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       Function_21d4b54
@ 0x21d48b8

.thumb
branch_21d48b8: @ 21d48b8 :thumb
	mov     r1, #0x1
	ldr     r0, [r4, #0x14]
	lsl     r1, r1, #16
	bl      Function_21d6290
	bl      0x200f2ac
	cmp     r0, #0x0
	bne     branch_21d48cc
.thumb
branch_21d48ca: @ 21d48ca :thumb
	b       Function_21d4b54
@ 0x21d48cc

.thumb
branch_21d48cc: @ 21d48cc :thumb
	mov     r1, #0x0
	ldr     r0, [pc, #0x144] @ 0x21d4a14, (=0x4000050)
	mov     r2, #0x3e
	mov     r3, r1
	str     r1, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	mov     r1, #0x5
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #24
	lsl     r2, r2, #8
	blx     MIi_CpuClear16
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      0x200f174
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       Function_21d4b54
@ 0x21d4906

.thumb
branch_21d4906: @ 21d4906 :thumb
	mov     r1, #0x1
	ldr     r0, [r4, #0x14]
	lsl     r1, r1, #16
	bl      Function_21d6290
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d49e2
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x0
	mov     r2, r5
	bl      Function_21d6e78
	cmp     r0, #0x0
	beq     branch_21d49e2
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       Function_21d4b54
@ 0x21d4946

.thumb
branch_21d4946: @ 21d4946 :thumb
	mov     r1, #0x1
	ldr     r0, [r4, #0x14]
	lsl     r1, r1, #16
	bl      Function_21d6290
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d49e2
	ldr     r0, [pc, #0xac] @ 0x21d4a08, (=0x21bf6dc)
	mov     r1, #0x1
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	mov     r0, r4
	bl      Function_21d3dc4
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       Function_21d4b54
@ 0x21d4986

.thumb
branch_21d4986: @ 21d4986 :thumb
	mov     r1, #0x1
	ldr     r0, [r4, #0x14]
	lsl     r1, r1, #16
	bl      Function_21d6290
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d49e2
	ldr     r0, [pc, #0x7c] @ 0x21d4a18, (=0x852)
	cmp     r5, r0
	blt     branch_21d49e2
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x1
	mov     r2, r5
	bl      Function_21d6e78
	cmp     r0, #0x0
	beq     branch_21d49e2
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       Function_21d4b54
@ 0x21d49d0

.thumb
branch_21d49d0: @ 21d49d0 :thumb
	mov     r1, #0x1
	ldr     r0, [r4, #0x14]
	lsl     r1, r1, #16
	bl      Function_21d6290
	bl      0x200f2ac
	cmp     r0, #0x0
	bne     branch_21d49e4
.thumb
branch_21d49e2: @ 21d49e2 :thumb
	b       Function_21d4b54
@ 0x21d49e4

.thumb
branch_21d49e4: @ 21d49e4 :thumb
	mov     r2, #0x9
	lsl     r2, r2, #6
	ldr     r0, [r4, r2]
	mov     r1, #0x5
	lsl     r1, r1, #24
	sub     r2, #0x40
	blx     MIi_CpuCopy16
	ldr     r0, [pc, #0x10] @ 0x21d4a08, (=0x21bf6dc)
	b       branch_21d4a1c
@ 0x21d49f8

.word 0x735 @ 0x21d49f8
.word 0x247 @ 0x21d49fc
.word 0x744 @ 0x21d4a00
.word 0x7fff @ 0x21d4a04
.word 0x21bf6dc @ 0x21d4a08
.word 0x246 @ 0x21d4a0c
.word 0x7da @ 0x21d4a10
.word 0x4000050 @ 0x21d4a14
.word 0x852 @ 0x21d4a18
.thumb
branch_21d4a1c: @ 21d4a1c :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	mov     r0, r6
	mov     r1, r4
	bl      Function_21d3d4c
	mov     r0, r4
	bl      Function_21d3dc4
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_21d636c
	mov     r2, #0x0
	mov     r3, r2
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	sub     r3, #0x3c
	bl      Function_201c63c
	mov     r2, #0x0
	mov     r3, r2
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	sub     r3, #0x3c
	bl      Function_201c63c
	mov     r2, #0x0
	mov     r3, r2
	ldr     r0, [r4, #0x10]
	mov     r1, #0x3
	sub     r3, #0x3c
	bl      Function_201c63c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r3, #0x3c
	bl      Function_201c63c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x6
	mov     r2, #0x0
	mov     r3, #0x3c
	bl      Function_201c63c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	mov     r2, #0x0
	mov     r3, #0x3c
	bl      Function_201c63c
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      0x200f174
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       Function_21d4b54
@ 0x21d4aa6

.thumb
branch_21d4aa6: @ 21d4aa6 :thumb
	mov     r1, #0x1
	ldr     r0, [r4, #0x14]
	lsl     r1, r1, #16
	bl      Function_21d6290
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     Function_21d4b54
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	mov     r2, r1
	mov     r3, #0x0
	bl      0x200f174
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       Function_21d4b54
@ 0x21d4ad6

.thumb
branch_21d4ad6: @ 21d4ad6 :thumb
	mov     r1, #0x1
	ldr     r0, [r4, #0x14]
	lsl     r1, r1, #16
	bl      Function_21d6290
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     Function_21d4b54
	ldr     r0, [pc, #0x70] @ 0x21d4b5c, (=0x8a7)
	cmp     r5, r0
	blt     branch_21d4af4
	mov     r0, r4
	bl      Function_21d4e90
.thumb
branch_21d4af4: @ 21d4af4 :thumb
	ldr     r0, [pc, #0x68] @ 0x21d4b60, (=0x8a8)
	cmp     r5, r0
	blt     Function_21d4b54
	ldr     r1, [pc, #0x68] @ 0x21d4b64, (=0x247)
	mov     r0, #0x11
	ldrb    r2, [r4, r1]
	ldr     r3, [pc, #0x64] @ 0x21d4b68, (=0x7fff)
	orr     r0, r2
	strb    r0, [r4, r1]
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	bl      0x200f174
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       Function_21d4b54
@ 0x21d4b24

.thumb
branch_21d4b24: @ 21d4b24 :thumb
	mov     r0, r4
	bl      Function_21d4e90
	mov     r1, #0x1
	ldr     r0, [r4, #0x14]
	lsl     r1, r1, #16
	bl      Function_21d6290
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     Function_21d4b54
	ldr     r0, [pc, #0x2c] @ 0x21d4b6c, (=0x21bf6dc)
	mov     r1, #0x1
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       Function_21d4b54
@ 0x21d4b4e

.thumb
branch_21d4b4e: @ 21d4b4e :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x21d4b54

.thumb
Function_21d4b54: @ 21d4b54 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d4b5a


.align 2


.word 0x8a7 @ 0x21d4b5c
.word 0x8a8 @ 0x21d4b60
.word 0x247 @ 0x21d4b64
.word 0x7fff @ 0x21d4b68
.word 0x21bf6dc @ 0x21d4b6c
.thumb
Function_21d4b70: @ 21d4b70 :thumb
	push    {r4,lr}
	mov     r3, #0x26
	mov     r4, r0
	lsl     r3, r3, #4
	mov     r0, r3
	ldr     r1, [r4, r3]
	add     r0, #0x20
	add     r0, r1, r0
	str     r0, [r4, r3]
	add     r0, r3, #0x4
	ldr     r1, [r4, r0]
	mov     r0, #0x11
	lsl     r0, r0, #4
	add     r1, r1, r0
	add     r0, r3, #0x4
	str     r1, [r4, r0]
	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r3, [r4, r3]
	ldr     r0, [r4, #0x10]
	asr     r3, r3, #12
	mov     r1, #0x1
	mov     r2, #0x3
	neg     r3, r3
	bl      Function_2019184
	mov     r3, #0x26
	lsl     r3, r3, #4
	ldr     r3, [r4, r3]
	ldr     r0, [r4, #0x10]
	asr     r3, r3, #12
	mov     r1, #0x2
	mov     r2, #0x3
	neg     r3, r3
	bl      Function_2019184
	mov     r3, #0x99
	lsl     r3, r3, #2
	ldr     r3, [r4, r3]
	ldr     r0, [r4, #0x10]
	asr     r3, r3, #12
	mov     r1, #0x5
	mov     r2, #0x3
	neg     r3, r3
	bl      Function_2019184
	mov     r3, #0x26
	lsl     r3, r3, #4
	ldr     r3, [r4, r3]
	ldr     r0, [r4, #0x10]
	asr     r3, r3, #12
	mov     r1, #0x6
	mov     r2, #0x3
	neg     r3, r3
	bl      Function_2019184
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x21d4be4

.thumb
Function_21d4be4: @ 21d4be4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x3
	mov     r2, #0x1
	mov     r3, #0x10
	bl      Function_201c63c
	mov     r2, #0x1
	mov     r3, r2
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	sub     r3, #0x11
	bl      Function_201c63c
	pop     {r4,pc}
@ 0x21d4c04

.thumb
Function_21d4c04: @ 21d4c04 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x1a4] @ 0x21d4db0, (=0x744)
	cmp     r1, r0
	beq     branch_21d4c10
	b       branch_21d4d42
@ 0x21d4c10

.thumb
branch_21d4c10: @ 21d4c10 :thumb
	ldr     r7, [pc, #0x1a0] @ 0x21d4db4, (=0x4000048)
	ldr     r3, [pc, #0x1a4] @ 0x21d4db8, (=0x24a)
	ldrh    r2, [r7, #0x0]
	mov     r0, #0x3f
	mov     r1, #0x1f
	bic     r2, r0
	orr     r1, r2
	mov     r6, #0x20
	orr     r1, r6
	strh    r1, [r7, #0x0]
	ldrh    r2, [r7, #0x2]
	mov     r1, #0x1d
	add     r5, r3, #0x4
	bic     r2, r0
	orr     r1, r2
	orr     r1, r6
	strh    r1, [r7, #0x2]
	mov     r1, #0x0
	strh    r1, [r4, r3]
	mov     r2, #0xff
	add     r1, r3, #0x2
	strh    r2, [r4, r1]
	mov     r1, #0x0
	strh    r1, [r4, r5]
	add     r5, r3, #0x6
	mov     r1, #0x88
	strh    r1, [r4, r5]
	mov     r1, r5
	ldsh    r1, [r4, r1]
	str     r1, [sp, #0x0]
	add     r1, r3, #0x4
	ldsh    r1, [r4, r1]
	mov     r12, r1
	ldsh    r1, [r4, r3]
	lsl     r5, r1, #8
	lsl     r1, r2, #8
	and     r1, r5
	add     r5, r3, #0x2
	ldsh    r5, [r4, r5]
	lsl     r5, r5, #24
	lsr     r5, r5, #24
	orr     r5, r1
	mov     r1, r7
	sub     r1, #0x8
	strh    r5, [r1, #0x0]
	mov     r1, r12
	lsl     r5, r1, #8
	lsl     r1, r2, #8
	and     r1, r5
	ldr     r5, [sp, #0x0]
	lsl     r5, r5, #24
	lsr     r5, r5, #24
	orr     r5, r1
	.hword  0x1f39 @ sub r1, r7, #0x4
	strh    r5, [r1, #0x0]
	lsl     r1, r6, #21
	ldr     r7, [r1, #0x0]
	ldr     r5, [pc, #0x138] @ 0x21d4dbc, (=0xffff1fff)
	and     r7, r5
	lsl     r5, r6, #8
	orr     r5, r7
	str     r5, [r1, #0x0]
	ldr     r1, [pc, #0x130] @ 0x21d4dc0, (=0x4001048)
	mov     r5, #0x1f
	ldrh    r7, [r1, #0x0]
	bic     r7, r0
	orr     r5, r7
	orr     r5, r6
	strh    r5, [r1, #0x0]
	ldrh    r5, [r1, #0x2]
	bic     r5, r0
	mov     r0, #0x1d
	orr     r0, r5
	orr     r0, r6
	strh    r0, [r1, #0x2]
	ldrh    r5, [r1, #0x0]
	ldr     r0, [pc, #0x118] @ 0x21d4dc4, (=0xffffc0ff)
	and     r5, r0
	mov     r0, #0x1f
	lsl     r0, r0, #8
	orr     r5, r0
	lsr     r0, r1, #13
	orr     r0, r5
	mov     r5, r3
	strh    r0, [r1, #0x0]
	add     r5, #0x8
	mov     r0, #0x0
	strh    r0, [r4, r5]
	mov     r0, r3
	add     r0, #0xa
	mov     r5, r3
	strh    r2, [r4, r0]
	add     r5, #0xc
	mov     r0, #0x0
	strh    r0, [r4, r5]
	mov     r5, r3
	add     r5, #0xe
	mov     r0, #0x88
	strh    r0, [r4, r5]
	mov     r0, r3
	add     r0, #0xe
	ldsh    r6, [r4, r0]
	mov     r0, r3
	add     r0, #0xc
	ldsh    r5, [r4, r0]
	mov     r0, r3
	add     r0, #0x8
	ldsh    r0, [r4, r0]
	lsl     r5, r5, #8
	lsl     r7, r0, #8
	lsl     r0, r2, #8
	and     r0, r7
	mov     r7, r3
	add     r7, #0xa
	ldsh    r7, [r4, r7]
	lsl     r7, r7, #24
	lsr     r7, r7, #24
	orr     r7, r0
	mov     r0, r1
	sub     r0, #0x8
	strh    r7, [r0, #0x0]
	lsl     r0, r2, #8
	and     r5, r0
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	orr     r5, r0
	.hword  0x1f08 @ sub r0, r1, #0x4
	strh    r5, [r0, #0x0]
	mov     r0, r3
	add     r0, #0xe
	add     r3, #0xc
	ldsh    r0, [r4, r0]
	ldsh    r5, [r4, r3]
	lsr     r4, r1, #18
	.hword  0x1f8b @ sub r3, r1, #0x6
	strh    r4, [r3, #0x0]
	lsl     r0, r0, #24
	lsl     r3, r5, #8
	lsl     r2, r2, #8
	and     r2, r3
	lsr     r0, r0, #24
	orr     r2, r0
	.hword  0x1e88 @ sub r0, r1, #0x2
	strh    r2, [r0, #0x0]
	sub     r1, #0x48
	ldr     r2, [r1, #0x0]
	ldr     r0, [pc, #0x84] @ 0x21d4dbc, (=0xffff1fff)
	and     r2, r0
	mov     r0, #0x6
	lsl     r0, r0, #12
	orr     r0, r2
	str     r0, [r1, #0x0]
	pop     {r3-r7,pc}
@ 0x21d4d42

.thumb
branch_21d4d42: @ 21d4d42 :thumb
	ble     branch_21d4dae
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_2019ff0
	mov     r1, #0x1
	lsl     r1, r1, #8
	cmp     r0, r1
	blt     branch_21d4d60
	mov     r1, #0x92
	lsl     r1, r1, #2
	ldrb    r2, [r4, r1]
	mov     r0, #0x2
	orr     r0, r2
	strb    r0, [r4, r1]
.thumb
branch_21d4d60: @ 21d4d60 :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	bl      Function_2019ff0
	mov     r1, #0xff
	mvn     r1, r1
	cmp     r0, r1
	bgt     branch_21d4d7c
	mov     r1, #0x92
	lsl     r1, r1, #2
	ldrb    r2, [r4, r1]
	mov     r0, #0x20
	orr     r0, r2
	strb    r0, [r4, r1]
.thumb
branch_21d4d7c: @ 21d4d7c :thumb
	mov     r1, #0x1
	ldr     r0, [r4, #0x10]
	mov     r2, r1
	mov     r3, #0xc
	bl      Function_201c63c
	mov     r2, #0x4
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	.hword  0x1f53 @ sub r3, r2, #0x5
	bl      Function_201c63c
	mov     r2, #0x1
	mov     r3, r2
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	sub     r3, #0xd
	bl      Function_201c63c
	mov     r2, #0x4
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	.hword  0x1f53 @ sub r3, r2, #0x5
	bl      Function_201c63c
.thumb
branch_21d4dae: @ 21d4dae :thumb
	pop     {r3-r7,pc}
@ 0x21d4db0

.word 0x744 @ 0x21d4db0
.word 0x4000048 @ 0x21d4db4
.word 0x24a @ 0x21d4db8
.word 0xffff1fff @ 0x21d4dbc
.word 0x4001048 @ 0x21d4dc0
.word 0xffffc0ff @ 0x21d4dc4
.thumb
Function_21d4dc8: @ 21d4dc8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0xb4] @ 0x21d4e84, (=0x788)
	mov     r4, r1
	cmp     r4, r0
	ble     branch_21d4e0a
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	bl      0x20192ec
	mov     r3, r0
	add     r3, #0x14
	cmp     r3, #0x0
	ble     branch_21d4de6
	mov     r3, #0x0
.thumb
branch_21d4de6: @ 21d4de6 :thumb
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_201c63c
	ldr     r0, [r5, #0x10]
	mov     r1, #0x5
	bl      0x20192ec
	mov     r3, r0
	sub     r3, #0x14
	bpl     branch_21d4e00
	mov     r3, #0x0
.thumb
branch_21d4e00: @ 21d4e00 :thumb
	ldr     r0, [r5, #0x10]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_201c63c
.thumb
branch_21d4e0a: @ 21d4e0a :thumb
	ldr     r0, [pc, #0x7c] @ 0x21d4e88, (=0x78e)
	cmp     r4, r0
	blt     branch_21d4e46
	ldr     r0, [r5, #0x10]
	mov     r1, #0x2
	bl      0x20192ec
	mov     r3, r0
	add     r3, #0x14
	cmp     r3, #0x0
	ble     branch_21d4e22
	mov     r3, #0x0
.thumb
branch_21d4e22: @ 21d4e22 :thumb
	ldr     r0, [r5, #0x10]
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_201c63c
	ldr     r0, [r5, #0x10]
	mov     r1, #0x6
	bl      0x20192ec
	mov     r3, r0
	sub     r3, #0x14
	bpl     branch_21d4e3c
	mov     r3, #0x0
.thumb
branch_21d4e3c: @ 21d4e3c :thumb
	ldr     r0, [r5, #0x10]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_201c63c
.thumb
branch_21d4e46: @ 21d4e46 :thumb
	ldr     r0, [pc, #0x44] @ 0x21d4e8c, (=0x794)
	cmp     r4, r0
	blt     branch_21d4e82
	ldr     r0, [r5, #0x10]
	mov     r1, #0x3
	bl      0x20192ec
	mov     r3, r0
	add     r3, #0x14
	cmp     r3, #0x0
	ble     branch_21d4e5e
	mov     r3, #0x0
.thumb
branch_21d4e5e: @ 21d4e5e :thumb
	ldr     r0, [r5, #0x10]
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_201c63c
	ldr     r0, [r5, #0x10]
	mov     r1, #0x7
	bl      0x20192ec
	mov     r3, r0
	sub     r3, #0x14
	bpl     branch_21d4e78
	mov     r3, #0x0
.thumb
branch_21d4e78: @ 21d4e78 :thumb
	ldr     r0, [r5, #0x10]
	mov     r1, #0x7
	mov     r2, #0x0
	bl      Function_201c63c
.thumb
branch_21d4e82: @ 21d4e82 :thumb
	pop     {r3-r5,pc}
@ 0x21d4e84

.word 0x788 @ 0x21d4e84
.word 0x78e @ 0x21d4e88
.word 0x794 @ 0x21d4e8c
.thumb
Function_21d4e90: @ 21d4e90 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      0x20192ec
	mov     r3, r0
	add     r3, #0xc
	cmp     r3, #0x0
	ble     branch_21d4ea6
	mov     r3, #0x0
.thumb
branch_21d4ea6: @ 21d4ea6 :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_201c63c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	bl      0x20192ec
	mov     r3, r0
	sub     r3, #0xc
	bpl     branch_21d4ec0
	mov     r3, #0x0
.thumb
branch_21d4ec0: @ 21d4ec0 :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_201c63c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	bl      0x20192ec
	mov     r3, r0
	add     r3, #0xc
	cmp     r3, #0x0
	ble     branch_21d4edc
	mov     r3, #0x0
.thumb
branch_21d4edc: @ 21d4edc :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_201c63c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x6
	bl      0x20192ec
	mov     r3, r0
	sub     r3, #0xc
	bpl     branch_21d4ef6
	mov     r3, #0x0
.thumb
branch_21d4ef6: @ 21d4ef6 :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_201c63c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x3
	bl      0x20192ec
	mov     r3, r0
	add     r3, #0xc
	cmp     r3, #0x0
	ble     branch_21d4f12
	mov     r3, #0x0
.thumb
branch_21d4f12: @ 21d4f12 :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_201c63c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	bl      0x20192ec
	mov     r3, r0
	sub     r3, #0xc
	bpl     branch_21d4f2c
	mov     r3, #0x0
.thumb
branch_21d4f2c: @ 21d4f2c :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	mov     r2, #0x0
	bl      Function_201c63c
	pop     {r4,pc}
@ 0x21d4f38

.thumb
Function_21d4f38: @ 21d4f38 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x70
	mov     r4, r0
	add     r0, sp, #0x64
	mov     r2, #0x0
	str     r2, [r0, #0x0]
	ldr     r5, [pc, #0x1b8] @ 0x21d5100, (=0x4a7)
	str     r2, [r0, #0x4]
	str     r2, [r0, #0x8]
	cmp     r1, r5
	bge     branch_21d4f84
	ldr     r0, [r4, #0x28]
	bl      0x2020a88
	ldr     r1, [pc, #0x1ac] @ 0x21d5104, (=0x5c1)
	sub     r0, #0x20
	cmp     r0, r1
	ble     branch_21d4f66
	ldr     r0, [pc, #0x1a8] @ 0x21d5108, (=0xffe0)
	ldr     r1, [r4, #0x28]
	bl      0x202094c
	b       branch_21d4f6e
@ 0x21d4f66

.thumb
branch_21d4f66: @ 21d4f66 :thumb
	mov     r0, r1
	ldr     r1, [r4, #0x28]
	bl      0x2020910
.thumb
branch_21d4f6e: @ 21d4f6e :thumb
	mov     r0, #0x2
	ldr     r1, [sp, #0x6c]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x6c]
	ldr     r1, [r4, #0x28]
	add     r0, sp, #0x64
	bl      0x2020990
	add     sp, #0x70
	pop     {r3-r7,pc}
@ 0x21d4f84

.thumb
branch_21d4f84: @ 21d4f84 :thumb
	bne     branch_21d502a
	ldr     r6, [pc, #0x184] @ 0x21d510c, (=0x21d7470)
	add     r5, sp, #0x58
	ldmia   r6!, {r0,r1}
	mov     r3, r5
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	ldr     r1, [pc, #0x17c] @ 0x21d5110, (=0x29aec1)
	str     r0, [r5, #0x0]
	str     r2, [sp, #0x0]
	str     r2, [sp, #0x4]
	ldr     r0, [r4, #0x28]
	ldr     r2, [pc, #0x174] @ 0x21d5114, (=0x21d7500)
	str     r0, [sp, #0x8]
	mov     r0, r3
	ldr     r3, [pc, #0x160] @ 0x21d5104, (=0x5c1)
	bl      0x20206d0
	ldr     r5, [pc, #0x16c] @ 0x21d5118, (=0x21d74a0)
	add     r3, sp, #0x4c
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	ldr     r1, [r4, #0x28]
	mov     r0, r2
	bl      0x2020990
	blx     0x20b2628
	ldr     r3, [pc, #0x158] @ 0x21d511c, (=0x1194)
	mov     r0, #0x1
	mov     r1, #0x0
	mov     r2, #0x3
	blx     0x20bfc74
	ldr     r1, [pc, #0x150] @ 0x21d5120, (=0x1f7fff)
	ldr     r0, [pc, #0x150] @ 0x21d5124, (=0x4000358)
	mov     r7, #0x0
	str     r1, [r0, #0x0]
	mov     r0, #0x4
	mov     r1, r7
	mov     r2, #0x8
	mov     r3, #0xc
	add     r4, sp, #0x2c
.thumb
branch_21d4fe0: @ 21d4fe0 :thumb
	lsl     r5, r3, #24
	mov     r12, r5
	lsl     r5, r0, #8
	lsl     r6, r2, #16
	orr     r5, r1
	orr     r5, r6
	mov     r6, r12
	orr     r5, r6
	.hword  0x1c7f @ add r7, r7, #0x1
	stmia   r4!, {r5}
	add     r0, #0x10
	add     r1, #0x10
	add     r2, #0x10
	add     r3, #0x10
	cmp     r7, #0x8
	blt     branch_21d4fe0
	add     r0, sp, #0x2c
	blx     0x20bfd44
	mov     r0, #0x9
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x11c] @ 0x21d5128, (=0x4000050)
	mov     r1, #0x2
	mov     r2, #0x21
	mov     r3, #0x7
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0x1
	mov     r1, r0
	bl      0x2019120
	add     sp, #0x70
	pop     {r3-r7,pc}
@ 0x21d502a

.thumb
branch_21d502a: @ 21d502a :thumb
	mov     r3, r5
	add     r3, #0xd2
	cmp     r1, r3
	bge     branch_21d5052
	mov     r1, #0x1
	ldr     r2, [sp, #0x64]
	lsl     r1, r1, #14
	add     r1, r2, r1
	str     r1, [sp, #0x64]
	ldr     r1, [r4, #0x28]
	bl      0x2020990
	mov     r1, #0x1
	ldr     r0, [r4, #0x10]
	mov     r2, r1
	mov     r3, #0x4
	bl      Function_201c63c
	add     sp, #0x70
	pop     {r3-r7,pc}
@ 0x21d5052

.thumb
branch_21d5052: @ 21d5052 :thumb
	add     r5, #0xd2
	cmp     r1, r5
	bne     branch_21d50cc
	ldr     r6, [pc, #0xd0] @ 0x21d512c, (=0x21d744c)
	add     r5, sp, #0x20
	ldmia   r6!, {r0,r1}
	mov     r3, r5
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	ldr     r1, [pc, #0xa8] @ 0x21d5110, (=0x29aec1)
	str     r0, [r5, #0x0]
	str     r2, [sp, #0x0]
	str     r2, [sp, #0x4]
	ldr     r0, [r4, #0x28]
	ldr     r2, [pc, #0xa4] @ 0x21d5114, (=0x21d7500)
	str     r0, [sp, #0x8]
	mov     r0, r3
	ldr     r3, [pc, #0x8c] @ 0x21d5104, (=0x5c1)
	bl      0x20206d0
	ldr     r5, [pc, #0xb4] @ 0x21d5130, (=0x21d747c)
	add     r3, sp, #0x14
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	ldr     r1, [r4, #0x28]
	mov     r0, r2
	bl      0x2020990
	ldr     r2, [pc, #0xa0] @ 0x21d5134, (=0x21d743c)
	add     r1, sp, #0xc
	ldrh    r3, [r2, #0x0]
	add     r0, sp, #0xc
	strh    r3, [r1, #0x0]
	ldrh    r3, [r2, #0x2]
	strh    r3, [r1, #0x2]
	ldrh    r3, [r2, #0x4]
	ldrh    r2, [r2, #0x6]
	strh    r3, [r1, #0x4]
	strh    r2, [r1, #0x6]
	ldr     r1, [r4, #0x28]
	bl      0x20209f8
	blx     0x20b2628
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	blx     0x20bfc74
	ldr     r0, [pc, #0x68] @ 0x21d5128, (=0x4000050)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	bl      0x2019120
	add     sp, #0x70
	pop     {r3-r7,pc}
@ 0x21d50cc

.thumb
branch_21d50cc: @ 21d50cc :thumb
	ldr     r0, [pc, #0x68] @ 0x21d5138, (=0x618)
	cmp     r1, r0
	blt     branch_21d50ea
	ldr     r0, [r4, #0x28]
	bl      0x2020a88
	mov     r1, #0x1
	add     r0, #0x18
	lsl     r1, r1, #14
	cmp     r0, r1
	bge     branch_21d50ea
	ldr     r1, [r4, #0x28]
	mov     r0, #0x18
	bl      0x202094c
.thumb
branch_21d50ea: @ 21d50ea :thumb
	mov     r0, #0x2
	ldr     r1, [sp, #0x64]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x64]
	ldr     r1, [r4, #0x28]
	add     r0, sp, #0x64
	bl      0x2020990
	add     sp, #0x70
	pop     {r3-r7,pc}
@ 0x21d5100

.word 0x4a7 @ 0x21d5100
.word 0x5c1 @ 0x21d5104
.word 0xffe0 @ 0x21d5108
.word 0x21d7470 @ 0x21d510c
.word 0x29aec1 @ 0x21d5110
.word 0x21d7500 @ 0x21d5114
.word 0x21d74a0 @ 0x21d5118
.word 0x1194 @ 0x21d511c
.word 0x1f7fff @ 0x21d5120
.word 0x4000358 @ 0x21d5124
.word 0x4000050 @ 0x21d5128
.word 0x21d744c @ 0x21d512c
.word 0x21d747c @ 0x21d5130
.word 0x21d743c @ 0x21d5134
.word 0x618 @ 0x21d5138
.thumb
Function_21d513c: @ 21d513c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x108] @ 0x21d524c, (=0x573)
	mov     r4, r1
	cmp     r2, r0
	bgt     branch_21d5174
	bge     branch_21d51fa
	sub     r0, #0xd2
	sub     r0, r2, r0
	cmp     r0, #0x9
	bhi     branch_21d5246
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d5160

Jumppoints_21d5160:
.hword branch_21d517e - Jumppoints_21d5160 - 2
.hword branch_21d5246 - Jumppoints_21d5160 - 2
.hword branch_21d5246 - Jumppoints_21d5160 - 2
.hword branch_21d5246 - Jumppoints_21d5160 - 2
.hword branch_21d5246 - Jumppoints_21d5160 - 2
.hword branch_21d5246 - Jumppoints_21d5160 - 2
.hword branch_21d519a - Jumppoints_21d5160 - 2
.hword branch_21d51b8 - Jumppoints_21d5160 - 2
.hword branch_21d51c4 - Jumppoints_21d5160 - 2
.hword branch_21d51d0 - Jumppoints_21d5160 - 2
.thumb
branch_21d5174: @ 21d5174 :thumb
	ldr     r0, [pc, #0xd8] @ 0x21d5250, (=0x579)
	cmp     r2, r0
	beq     branch_21d5216
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d517e

.thumb
branch_21d517e: @ 21d517e :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, r1
	bl      0x200f174
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d519a

.thumb
branch_21d519a: @ 21d519a :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	beq     branch_21d51a6
	bl      ErrorHandling
.thumb
branch_21d51a6: @ 21d51a6 :thumb
	mov     r0, r5
	bl      Function_21d35b8
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d40dc
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d51b8

.thumb
branch_21d51b8: @ 21d51b8 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d40dc
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d51c4

.thumb
branch_21d51c4: @ 21d51c4 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d40dc
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d51d0

.thumb
branch_21d51d0: @ 21d51d0 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d40dc
	cmp     r0, #0x1
	beq     branch_21d51e0
	bl      ErrorHandling
.thumb
branch_21d51e0: @ 21d51e0 :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      0x200f174
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d51fa

.thumb
branch_21d51fa: @ 21d51fa :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, r1
	bl      0x200f174
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d5216

.thumb
branch_21d5216: @ 21d5216 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	beq     branch_21d5222
	bl      ErrorHandling
.thumb
branch_21d5222: @ 21d5222 :thumb
	mov     r0, r5
	bl      Function_21d35b8
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d40b8
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      0x200f174
.thumb
branch_21d5246: @ 21d5246 :thumb
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d524a


.align 2


.word 0x573 @ 0x21d524c
.word 0x579 @ 0x21d5250
.thumb
Function_21d5254: @ 21d5254 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	mov     r5, #0xa7
	lsl     r5, r5, #2
	cmp     r0, #0x0
	beq     branch_21d5266
	mov     r0, #0x3
	strb    r0, [r4, r5]
.thumb
branch_21d5266: @ 21d5266 :thumb
	ldrb    r0, [r4, r5]
	cmp     r0, #0x3
	bhi     branch_21d52c2
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d5278

Jumppoints_21d5278:
.hword branch_21d5280 - Jumppoints_21d5278 - 2
.hword branch_21d528e - Jumppoints_21d5278 - 2
.hword branch_21d52a0 - Jumppoints_21d5278 - 2
.hword branch_21d52b8 - Jumppoints_21d5278 - 2
.thumb
branch_21d5280: @ 21d5280 :thumb
	mov     r0, r4
	bl      Function_21d52c8
	ldrb    r0, [r4, r5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, r5]
	b       branch_21d52c2
@ 0x21d528e

.thumb
branch_21d528e: @ 21d528e :thumb
	mov     r0, #0xa7
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_21d5308
	ldrb    r0, [r4, r5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, r5]
	b       branch_21d52c2
@ 0x21d52a0

.thumb
branch_21d52a0: @ 21d52a0 :thumb
	mov     r0, #0xa7
	lsl     r0, r0, #2
	ldr     r1, [r4, #0x4]
	add     r0, r4, r0
	bl      Function_21d5390
	cmp     r0, #0x0
	beq     branch_21d52c2
	ldrb    r0, [r4, r5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, r5]
	b       branch_21d52c2
@ 0x21d52b8

.thumb
branch_21d52b8: @ 21d52b8 :thumb
	mov     r0, r4
	bl      Function_21d5478
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d52c2

.thumb
branch_21d52c2: @ 21d52c2 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d52c6


.align 2, 0


.thumb
Function_21d52c8: @ 21d52c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d25f0
	mov     r0, r4
	bl      Function_21d2a00
	mov     r0, #0xa9
	ldr     r1, [r4, #0xc]
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r1, [pc, #0x1c] @ 0x21d52fc, (=0x7fff)
	mov     r0, #0x0
	bl      0x200f344
	ldr     r1, [pc, #0x14] @ 0x21d52fc, (=0x7fff)
	mov     r0, #0x1
	bl      0x200f344
	ldr     r0, [pc, #0x10] @ 0x21d5300, (=0x4000050)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0xc] @ 0x21d5304, (=0x29e)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x21d52fc

.word 0x7fff @ 0x21d52fc
.word 0x4000050 @ 0x21d5300
.word 0x29e @ 0x21d5304
.thumb
Function_21d5308: @ 21d5308 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r2, #0x0
	mov     r4, r0
	str     r2, [sp, #0x0]
	mov     r0, #0x4c
	str     r0, [sp, #0x4]
	mov     r0, #0x80
	mov     r1, #0x63
	mov     r3, r2
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x8]
	mov     r0, #0x80
	mov     r1, #0x62
	mov     r3, #0x2
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x8]
	mov     r0, #0x80
	mov     r1, #0x61
	mov     r3, #0x2
	bl      0x2006e60
	bl      0x201ff00
	mov     r0, #0x0
	bl      0x201ff48
	mov     r0, #0x0
	bl      0x201ffb0
	ldr     r0, [pc, #0x28] @ 0x21d538c, (=0xfffe8000)
	mov     r2, #0x0
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2019184
	ldr     r5, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	asr     r3, r5, #11
	lsr     r3, r3, #20
	add     r3, r5, r3
	mov     r1, #0x2
	mov     r2, #0x3
	asr     r3, r3, #12
	bl      Function_2019184
	mov     r0, #0x1
	strb    r0, [r4, #0x3]
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d538c

.word 0xfffe8000 @ 0x21d538c
.thumb
Function_21d5390: @ 21d5390 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x4
	bhi     branch_21d5448
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d53a8

Jumppoints_21d53a8:
.hword branch_21d53b2 - Jumppoints_21d53a8 - 2
.hword branch_21d53d6 - Jumppoints_21d53a8 - 2
.hword branch_21d5404 - Jumppoints_21d53a8 - 2
.hword branch_21d5414 - Jumppoints_21d53a8 - 2
.hword branch_21d543a - Jumppoints_21d53a8 - 2
.thumb
branch_21d53b2: @ 21d53b2 :thumb
	ldr     r0, [pc, #0xb8] @ 0x21d546c, (=0x89d)
	cmp     r1, r0
	blt     branch_21d5448
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0xa8] @ 0x21d5470, (=0x7fff)
	mov     r0, #0x0
	mov     r2, r1
	bl      0x200f174
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_21d5448
@ 0x21d53d6

.thumb
branch_21d53d6: @ 21d53d6 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d5448
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x5a
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_21d5448
@ 0x21d5404

.thumb
branch_21d5404: @ 21d5404 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d5448
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_21d5448
@ 0x21d5414

.thumb
branch_21d5414: @ 21d5414 :thumb
	ldr     r0, [pc, #0x5c] @ 0x21d5474, (=0x974)
	cmp     r1, r0
	blt     branch_21d5448
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_21d5448
@ 0x21d543a

.thumb
branch_21d543a: @ 21d543a :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d5448
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x21d5448

.thumb
branch_21d5448: @ 21d5448 :thumb
	mov     r0, #0x1
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #10
	add     r5, r1, r0
	asr     r3, r5, #11
	str     r5, [r4, #0x4]
	lsr     r3, r3, #20
	add     r3, r5, r3
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	mov     r2, #0x3
	asr     r3, r3, #12
	bl      Function_2019184
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d546a


.align 2


.word 0x89d @ 0x21d546c
.word 0x7fff @ 0x21d5470
.word 0x974 @ 0x21d5474
.thumb
Function_21d5478: @ 21d5478 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x21d54a8, (=0x29e)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d5498
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r4, #0xc]
	bl      free
	ldr     r0, [pc, #0x14] @ 0x21d54a8, (=0x29e)
	mov     r1, #0x0
	strb    r1, [r4, r0]
.thumb
branch_21d5498: @ 21d5498 :thumb
	ldr     r0, [pc, #0x10] @ 0x21d54ac, (=0x29f)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_21d54a4
	mov     r1, #0x0
	strb    r1, [r4, r0]
.thumb
branch_21d54a4: @ 21d54a4 :thumb
	pop     {r4,pc}
@ 0x21d54a6


.align 2


.word 0x29e @ 0x21d54a8
.word 0x29f @ 0x21d54ac
.thumb
Function_21d54b0: @ 21d54b0 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x2c] @ 0x21d54e4, (=0x21d78bc)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x201e86c
	mov     r0, #0xb
	mov     r1, #0x4c
	bl      0x201f834
	bl      0x201e994
	bl      0x201f8e4
	mov     r0, #0x6
	mov     r1, #0x4c
	bl      0x201dbec
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d54e4

.word 0x21d78bc @ 0x21d54e4
.thumb
Function_21d54e8: @ 21d54e8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x2c
	mov     r6, r0
	mov     r0, #0x0
	str     r6, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x44]
	mov     r5, r1
	str     r0, [sp, #0xc]
	mov     r1, #0x4b
	str     r2, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	mov     r4, r3
	str     r0, [sp, #0x14]
	add     r0, r1, #0x4
	ldr     r0, [r5, r0]
	mov     r2, r6
	str     r0, [sp, #0x18]
	mov     r0, r1
	add     r0, #0x8
	ldr     r0, [r5, r0]
	add     r1, #0xc
	str     r0, [sp, #0x1c]
	ldr     r0, [r5, r1]
	mov     r1, r6
	str     r0, [sp, #0x20]
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x40]
	mov     r3, r6
	bl      0x20093b4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x40]
	str     r0, [r4, #0x4]
	str     r1, [r4, #0x8]
	str     r1, [r4, #0xc]
	mov     r0, #0x1
	str     r1, [r4, #0x10]
	lsl     r0, r0, #12
	str     r0, [r4, #0x14]
	str     r0, [r4, #0x18]
	str     r0, [r4, #0x1c]
	strh    r1, [r4, #0x20]
	mov     r0, #0x1
	str     r0, [r4, #0x24]
	ldr     r0, [sp, #0x48]
	str     r0, [r4, #0x28]
	mov     r0, #0x4c
	str     r0, [r4, #0x2c]
	add     sp, #0x2c
	pop     {r3-r6,pc}
@ 0x21d555c

.thumb
Function_21d555c: @ 21d555c :thumb
	mov     r0, #0x2a
	lsl     r0, r0, #4
	bx      lr
@ 0x21d5562


.align 2, 0


.thumb
Function_21d5564: @ 21d5564 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	mov     r5, r0
	mov     r3, r1
	ldr     r0, [pc, #0x50] @ 0x21d55c4, (=0xffcfffef)
	mov     r1, #0x10
	and     r3, r0
	orr     r3, r1
	str     r3, [r2, #0x0]
	ldr     r3, [pc, #0x48] @ 0x21d55c8, (=0x4001000)
	ldr     r2, [r3, #0x0]
	and     r0, r2
	orr     r0, r1
	str     r0, [r3, #0x0]
	bl      Function_21d54b0
	blx     0x20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x80
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x4c
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      0x200a784
	mov     r0, #0x21
	add     r1, r5, #0x4
	mov     r2, #0x4c
	bl      0x20095c4
	str     r0, [r5, #0x0]
	mov     r0, #0x3
	mov     r1, #0x4c
	bl      0x201dcc8
	mov     r1, #0xa7
	lsl     r1, r1, #2
	ldr     r4, [pc, #0xc] @ 0x21d55cc, (=0x21d7914)
	b       branch_21d55d0
@ 0x21d55c2


.align 2


.word 0xffcfffef @ 0x21d55c4
.word 0x4001000 @ 0x21d55c8
.word 0x21d7914 @ 0x21d55cc
.thumb
branch_21d55d0: @ 21d55d0 :thumb
	str     r0, [r5, r1]
	mov     r7, #0x0
	mov     r6, r5
.thumb
branch_21d55d6: @ 21d55d6 :thumb
	ldrb    r0, [r4, #0x0]
	mov     r1, r7
	mov     r2, #0x4c
	bl      0x2009714
	mov     r1, #0x4b
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r7, #0x4
	blt     branch_21d55d6
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe0
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x2e
	bl      0x200985c
	mov     r1, #0x4f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe0
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x2e
	mov     r3, #0x0
	bl      0x200985c
	mov     r1, #0x53
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe0
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x32
	mov     r3, #0x0
	bl      0x200985c
	mov     r1, #0x57
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe0
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x57
	mov     r3, #0x0
	bl      0x200985c
	mov     r1, #0x5b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe0
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x16
	mov     r3, #0x0
	bl      0x200985c
	mov     r1, #0x5f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe0
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x17
	mov     r3, #0x0
	bl      0x200985c
	mov     r1, #0x63
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe0
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x5b
	mov     r3, #0x0
	bl      0x200985c
	mov     r1, #0x67
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x7
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe0
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x53
	mov     r3, #0x0
	bl      0x200985c
	mov     r1, #0x6b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe0
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x53
	mov     r3, #0x0
	bl      0x200985c
	mov     r1, #0x6f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x9
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe0
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x36
	mov     r3, #0x0
	bl      0x200985c
	mov     r1, #0x73
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe0
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x36
	mov     r3, #0x0
	bl      0x200985c
	mov     r1, #0x77
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	add     r0, #0xe4
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x31
	bl      0x20098b8
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	add     r0, #0xe4
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x31
	mov     r3, #0x0
	bl      0x20098b8
	mov     r1, #0x15
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	add     r0, #0xe4
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x35
	mov     r3, #0x0
	bl      0x20098b8
	mov     r1, #0x16
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	add     r0, #0xe4
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x5a
	mov     r3, #0x0
	bl      0x20098b8
	mov     r1, #0x17
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	add     r0, #0xe4
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x14
	mov     r3, #0x0
	bl      0x20098b8
	mov     r1, #0x6
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	add     r0, #0xe4
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x15
	mov     r3, #0x0
	bl      0x20098b8
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	add     r0, #0xe4
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x5e
	mov     r3, #0x0
	bl      0x20098b8
	mov     r1, #0x1a
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x7
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	add     r0, #0xe4
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x56
	mov     r3, #0x0
	bl      0x20098b8
	mov     r1, #0x1b
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	add     r0, #0xe4
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x56
	mov     r3, #0x0
	bl      0x20098b8
	mov     r1, #0x7
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, #0x9
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	add     r0, #0xe4
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x39
	mov     r3, #0x0
	bl      0x20098b8
	mov     r1, #0x1d
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	add     r0, #0xe4
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x39
	mov     r3, #0x0
	bl      0x20098b8
	mov     r1, #0x1e
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x30
	bl      0x2009918
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x30
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x55
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x33
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x59
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x59
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x5d
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x18
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x5d
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x69
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x7
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x55
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x6d
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x55
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x71
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x9
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x37
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x75
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x37
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x79
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x19
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x65
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xec
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x2f
	bl      0x2009918
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xec
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x2f
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x56
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xec
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x34
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x5a
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xec
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x58
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x5e
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xec
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x1a
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x62
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xec
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x1b
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x66
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xec
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x5c
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x6a
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x7
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xec
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x54
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x6e
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xec
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x54
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x72
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x9
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xec
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x38
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x76
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xec
	ldr     r0, [r5, r0]
	mov     r1, #0x80
	mov     r2, #0x38
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x7a
	lsl     r1, r1, #2
	mov     r7, r1
	mov     r6, r1
	str     r0, [r5, r1]
	mov     r4, #0x0
	sub     r7, #0xac
	sub     r6, #0xa8
.thumb
branch_21d5b8c: @ 21d5b8c :thumb
	ldr     r0, [r5, r7]
	bl      0x200a3dc
	ldr     r0, [r5, r6]
	bl      0x200a640
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0xb
	blt     branch_21d5b8c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d5bac

.thumb
Function_21d5bac: @ 21d5bac :thumb
	push    {r3-r7,lr}
	mov     r7, #0x5
	mov     r5, r0
	mov     r4, #0x0
	lsl     r7, r7, #6
.thumb
branch_21d5bb6: @ 21d5bb6 :thumb
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
	cmp     r4, #0xb
	bcc     branch_21d5bb6
	mov     r6, #0x4b
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_21d5bda: @ 21d5bda :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	bl      0x2009754
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x4
	bcc     branch_21d5bda
	ldr     r0, [r5, #0x0]
	bl      0x2021964
	mov     r0, #0x23
	lsl     r0, r0, #4
	mov     r4, #0x0
	add     r6, r5, r0
	mov     r7, #0x24
.thumb
branch_21d5bfe: @ 21d5bfe :thumb
	mov     r0, r4
	mul     r0, r7
	add     r0, r6, r0
	bl      0x20094f0
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x3
	bcc     branch_21d5bfe
	mov     r0, #0xa7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d5c28
	bl      0x201dcf0
	mov     r0, #0xa7
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_21d5c28: @ 21d5c28 :thumb
	bl      0x200a878
	bl      0x201e958
	bl      0x201f8b4
	bl      0x201dc3c
	pop     {r3-r7,pc}
@ 0x21d5c3a


.align 2, 0


.thumb
Function_21d5c3c: @ 21d5c3c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xac
	ldr     r3, [pc, #0x360] @ 0x21d5fa4, (=0x21d78fc)
	mov     r5, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x40
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r3, [pc, #0x354] @ 0x21d5fa8, (=0x21d78cc)
	add     r2, sp, #0x28
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r3, [pc, #0x348] @ 0x21d5fac, (=0x21d78e4)
	add     r2, sp, #0x10
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, #0x23
	lsl     r0, r0, #4
	add     r0, r5, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, r0
	add     r3, sp, #0x58
	bl      Function_21d54e8
	mov     r0, #0x5
	lsl     r0, r0, #16
	str     r0, [sp, #0x60]
	mov     r0, #0x7
	lsl     r0, r0, #16
	str     r0, [sp, #0x64]
	add     r0, sp, #0x58
	bl      0x2021aa0
	mov     r1, #0x7b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x0
	bl      0x2021cc8
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0x9e
	lsl     r0, r0, #2
	add     r0, r5, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r1, #0x2
	str     r1, [sp, #0x8]
	mov     r1, r5
	mov     r2, #0x0
	add     r3, sp, #0x58
	bl      Function_21d54e8
	mov     r0, #0x5
	lsl     r0, r0, #16
	str     r0, [sp, #0x60]
	mov     r0, #0x13
	lsl     r0, r0, #16
	str     r0, [sp, #0x64]
	add     r0, sp, #0x58
	bl      0x2021aa0
	mov     r1, #0x1f
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x0
	bl      0x2021cc8
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0x95
	lsl     r0, r0, #2
	add     r0, r5, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	mov     r1, r5
	mov     r2, #0x0
	add     r3, sp, #0x58
	bl      Function_21d54e8
	mov     r0, #0xb
	lsl     r0, r0, #16
	str     r0, [sp, #0x60]
	mov     r0, #0x7
	lsl     r0, r0, #16
	str     r0, [sp, #0x64]
	add     r0, sp, #0x58
	bl      0x2021aa0
	mov     r1, #0x7d
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x0
	bl      0x2021cc8
	mov     r0, #0x7d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	add     r0, sp, #0x88
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r1, r5
	add     r3, sp, #0x58
	bl      Function_21d54e8
	ldr     r0, [pc, #0x254] @ 0x21d5fb0, (=0xfffc0000)
	str     r0, [sp, #0x60]
	mov     r0, #0x7
	lsl     r0, r0, #16
	str     r0, [sp, #0x64]
	add     r0, sp, #0x58
	bl      0x2021aa0
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	add     r0, sp, #0x88
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x6
	mov     r1, r5
	add     r3, sp, #0x58
	bl      Function_21d54e8
	mov     r0, #0x5
	lsl     r0, r0, #18
	str     r0, [sp, #0x60]
	mov     r0, #0x7
	lsl     r0, r0, #16
	str     r0, [sp, #0x64]
	add     r0, sp, #0x58
	bl      0x2021aa0
	mov     r1, #0x85
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x85
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	add     r0, sp, #0x88
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r2, #0x1
	mov     r0, #0x7
	mov     r1, r5
	add     r3, sp, #0x58
	str     r2, [sp, #0x8]
	bl      Function_21d54e8
	mov     r0, #0x2
	lsl     r0, r0, #18
	str     r0, [sp, #0x60]
	mov     r0, #0x6
	lsl     r0, r0, #16
	str     r0, [sp, #0x64]
	add     r0, sp, #0x58
	bl      0x2021aa0
	mov     r1, #0x86
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cf8
	add     r0, sp, #0x88
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	mov     r1, r5
	mov     r2, #0x1
	add     r3, sp, #0x58
	bl      Function_21d54e8
	mov     r0, #0x2
	lsl     r0, r0, #18
	str     r0, [sp, #0x60]
	mov     r0, #0x12
	lsl     r0, r0, #16
	str     r0, [sp, #0x64]
	add     r0, sp, #0x58
	bl      0x2021aa0
	mov     r1, #0x87
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x87
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0x87
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cf8
	add     r0, sp, #0x88
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	mov     r1, r5
	mov     r2, #0x3
	add     r3, sp, #0x58
	bl      Function_21d54e8
	mov     r0, #0x2
	lsl     r0, r0, #18
	str     r0, [sp, #0x60]
	mov     r0, #0x1a
	lsl     r0, r0, #14
	str     r0, [sp, #0x64]
	add     r0, sp, #0x58
	bl      0x2021aa0
	mov     r1, #0x22
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x22
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	add     r0, sp, #0x58
	bl      0x2021aa0
	mov     r1, #0x89
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x89
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	add     r0, sp, #0x88
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	mov     r1, r5
	mov     r2, #0x3
	add     r3, sp, #0x58
	bl      Function_21d54e8
	mov     r0, #0x2
	lsl     r0, r0, #18
	str     r0, [sp, #0x60]
	mov     r0, #0x4a
	lsl     r0, r0, #14
	str     r0, [sp, #0x64]
	add     r0, sp, #0x58
	bl      0x2021aa0
	mov     r1, #0x8a
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x8a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	add     r0, sp, #0x58
	bl      0x2021aa0
	mov     r1, #0x8b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	add     r7, sp, #0x28
	add     r6, sp, #0x10
	add     r4, sp, #0x40
.thumb
branch_21d5f36: @ 21d5f36 :thumb
	add     r0, sp, #0x88
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	mov     r1, r5
	mov     r2, #0x0
	add     r3, sp, #0x58
	bl      Function_21d54e8
	ldr     r0, [r7, #0x0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x60]
	ldr     r0, [r6, #0x0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x64]
	add     r0, sp, #0x58
	bl      0x2021aa0
	ldr     r1, [r4, #0x0]
	lsl     r1, r1, #2
	add     r2, r5, r1
	mov     r1, #0x7b
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	ldr     r0, [r4, #0x0]
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	ldr     r0, [r4, #0x0]
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      0x2021cac
	ldr     r0, [sp, #0xc]
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	str     r0, [sp, #0xc]
	cmp     r0, #0x6
	blt     branch_21d5f36
	add     sp, #0xac
	pop     {r4-r7,pc}
@ 0x21d5fa4

.word 0x21d78fc @ 0x21d5fa4
.word 0x21d78cc @ 0x21d5fa8
.word 0x21d78e4 @ 0x21d5fac
.word 0xfffc0000 @ 0x21d5fb0
.thumb
Function_21d5fb4: @ 21d5fb4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x60
	mov     r3, r0
	add     r0, sp, #0x3c
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	mov     r6, r1
	mov     r1, r3
	str     r2, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	add     r3, sp, #0xc
	bl      Function_21d54e8
	mov     r5, #0x0
	add     r7, sp, #0xc
.thumb
branch_21d5fd6: @ 21d5fd6 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_21d6794
	mov     r4, r0
	mov     r0, r7
	bl      0x2021aa0
	str     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      0x2021cc8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      0x2021cac
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x10
	blt     branch_21d5fd6
	add     sp, #0x60
	pop     {r3-r7,pc}
@ 0x21d6000

.thumb
Function_21d6000: @ 21d6000 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	mov     r5, r1
	mov     r6, r4
.thumb
branch_21d6008: @ 21d6008 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d6794
	ldr     r0, [r0, #0x0]
	mov     r1, r6
	bl      0x2021cac
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x10
	blt     branch_21d6008
	pop     {r4-r6,pc}
@ 0x21d6020

.thumb
Function_21d6020: @ 21d6020 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      0x20219f8
	mov     r0, #0xa7
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d6038
	bl      0x201dce8
.thumb
branch_21d6038: @ 21d6038 :thumb
	pop     {r4,pc}
@ 0x21d603a


.align 2, 0


.thumb
Function_21d603c: @ 21d603c :thumb
	lsl     r1, r1, #2
	add     r1, r0, r1
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	ldr     r3, [pc, #0x4] @ 0x21d604c, (=0x2021cad)
	mov     r1, r2
	bx      r3
@ 0x21d604c

.word 0x2021cad @ 0x21d604c
.thumb
Function_21d6050: @ 21d6050 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r4, r1
	bl      0x2021cc8
	mov     r0, #0x7d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      0x2021cc8
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      0x2021cc8
	pop     {r3-r5,pc}
@ 0x21d607a


.align 2, 0


.thumb
Function_21d607c: @ 21d607c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x2021d28
	mov     r5, r0
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x2
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #8
	sub     r1, r1, r0
	str     r1, [sp, #0x0]
	sub     r0, #0x10
	ldr     r0, [r4, r0]
	mov     r1, r2
	bl      0x2021c50
	mov     r0, #0x7d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2021d28
	mov     r5, r0
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x2
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #8
	add     r1, r1, r0
	str     r1, [sp, #0x0]
	sub     r0, #0xc
	ldr     r0, [r4, r0]
	mov     r1, r2
	bl      0x2021c50
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d60de


.align 2, 0


.thumb
Function_21d60e0: @ 21d60e0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r1, [pc, #0xc8] @ 0x21d61b0, (=0x582)
	mov     r4, r0
	cmp     r5, r1
	bge     branch_21d60f4
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x21d60f4

.thumb
branch_21d60f4: @ 21d60f4 :thumb
	bne     branch_21d60fe
	mov     r1, #0x3
	mov     r2, #0x1
	bl      Function_21d603c
.thumb
branch_21d60fe: @ 21d60fe :thumb
	ldr     r0, [pc, #0xb4] @ 0x21d61b4, (=0x627)
	cmp     r5, r0
	bge     branch_21d6154
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2021d28
	mov     r5, r0
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x12
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #12
	add     r1, r1, r0
	mov     r0, #0xb
	lsl     r0, r0, #16
	str     r1, [sp, #0x0]
	cmp     r1, r0
	blt     branch_21d6142
	str     r0, [sp, #0x0]
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r2
	bl      0x2021c50
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x21d6142

.thumb
branch_21d6142: @ 21d6142 :thumb
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r2
	bl      0x2021c50
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x21d6154

.thumb
branch_21d6154: @ 21d6154 :thumb
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2021d28
	mov     r5, r0
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x12
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #12
	add     r1, r1, r0
	mov     r0, #0x5
	lsl     r0, r0, #18
	str     r1, [sp, #0x0]
	cmp     r1, r0
	blt     branch_21d619c
	str     r0, [sp, #0x0]
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r2
	bl      0x2021c50
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_21d603c
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x21d619c

.thumb
branch_21d619c: @ 21d619c :thumb
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r2
	bl      0x2021c50
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d61ae


.align 2


.word 0x582 @ 0x21d61b0
.word 0x627 @ 0x21d61b4
.thumb
Function_21d61b8: @ 21d61b8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r1, [pc, #0xc4] @ 0x21d6284, (=0x5dc)
	mov     r4, r0
	cmp     r5, r1
	bge     branch_21d61cc
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x21d61cc

.thumb
branch_21d61cc: @ 21d61cc :thumb
	bne     branch_21d61d6
	mov     r1, #0xa
	mov     r2, #0x1
	bl      Function_21d603c
.thumb
branch_21d61d6: @ 21d61d6 :thumb
	ldr     r0, [pc, #0xb0] @ 0x21d6288, (=0x627)
	cmp     r5, r0
	bge     branch_21d622c
	mov     r0, #0x85
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2021d28
	mov     r5, r0
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x12
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #12
	sub     r1, r1, r0
	mov     r0, #0x5
	lsl     r0, r0, #16
	str     r1, [sp, #0x0]
	cmp     r1, r0
	bgt     branch_21d621a
	str     r0, [sp, #0x0]
	mov     r0, #0x85
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r2
	bl      0x2021c50
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x21d621a

.thumb
branch_21d621a: @ 21d621a :thumb
	mov     r0, #0x85
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r2
	bl      0x2021c50
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x21d622c

.thumb
branch_21d622c: @ 21d622c :thumb
	mov     r0, #0x85
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2021d28
	mov     r5, r0
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x12
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #12
	sub     r1, r1, r0
	ldr     r0, [pc, #0x3c] @ 0x21d628c, (=0xfffc0000)
	str     r1, [sp, #0x0]
	cmp     r1, r0
	bgt     branch_21d6272
	str     r0, [sp, #0x0]
	mov     r0, #0x85
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r2
	bl      0x2021c50
	mov     r0, r4
	mov     r1, #0xa
	mov     r2, #0x0
	bl      Function_21d603c
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x21d6272

.thumb
branch_21d6272: @ 21d6272 :thumb
	mov     r0, #0x85
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r2
	bl      0x2021c50
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d6284

.word 0x5dc @ 0x21d6284
.word 0x627 @ 0x21d6288
.word 0xfffc0000 @ 0x21d628c
.thumb
Function_21d6290: @ 21d6290 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [pc, #0xcc] @ 0x21d6364, (=0x21bf6dc)
	mov     r7, r1
	ldrb    r0, [r0, #0x5]
	cmp     r0, #0x0
	bne     branch_21d62a6
	mov     r6, #0xd
	mov     r4, #0xf
	b       branch_21d62aa
@ 0x21d62a6

.thumb
branch_21d62a6: @ 21d62a6 :thumb
	mov     r6, #0xf
	mov     r4, #0xd
.thumb
branch_21d62aa: @ 21d62aa :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	add     r0, r5, r0
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x0]
	lsl     r0, r6, #2
	str     r0, [sp, #0x4]
	ldr     r0, [r1, r0]
	bl      0x2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0xc]
	add     r1, r0, r7
	mov     r0, #0x6
	lsl     r0, r0, #18
	str     r1, [sp, #0xc]
	cmp     r1, r0
	blt     branch_21d62e0
	mov     r0, #0x1
	lsl     r0, r0, #20
	sub     r0, r1, r0
	str     r0, [sp, #0xc]
.thumb
branch_21d62e0: @ 21d62e0 :thumb
	ldr     r1, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r0, [r1, r0]
	add     r1, sp, #0xc
	bl      0x2021c50
	mov     r0, #0x1
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #20
	sub     r0, r1, r0
	str     r0, [sp, #0xc]
	add     r0, r6, #0x1
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	add     r1, sp, #0xc
	bl      0x2021c50
	mov     r0, #0x7b
	lsl     r0, r0, #2
	add     r6, r5, r0
	lsl     r0, r4, #2
	str     r0, [sp, #0x8]
	ldr     r0, [r6, r0]
	bl      0x2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0xc]
	sub     r1, r0, r7
	ldr     r0, [pc, #0x3c] @ 0x21d6368, (=0xfff80000)
	str     r1, [sp, #0xc]
	cmp     r1, r0
	bgt     branch_21d6338
	mov     r0, #0x1
	lsl     r0, r0, #20
	add     r0, r1, r0
	str     r0, [sp, #0xc]
.thumb
branch_21d6338: @ 21d6338 :thumb
	ldr     r0, [sp, #0x8]
	add     r1, sp, #0xc
	ldr     r0, [r6, r0]
	bl      0x2021c50
	mov     r0, #0x1
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #20
	add     r0, r1, r0
	str     r0, [sp, #0xc]
	add     r0, r4, #0x1
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	add     r1, sp, #0xc
	bl      0x2021c50
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d6362


.align 2


.word 0x21bf6dc @ 0x21d6364
.word 0xfff80000 @ 0x21d6368
.thumb
Function_21d636c: @ 21d636c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	cmp     r1, #0x0
	bne     branch_21d63e2
	ldr     r0, [pc, #0xf4] @ 0x21d646c, (=0x21bf6dc)
	ldrb    r0, [r0, #0x5]
	cmp     r0, #0x0
	bne     branch_21d63b0
	mov     r0, #0x22
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021f24
	mov     r0, #0x89
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021f24
	mov     r0, #0x8a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021f24
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021f24
	b       branch_21d6412
@ 0x21d63b0

.thumb
branch_21d63b0: @ 21d63b0 :thumb
	mov     r0, #0x22
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021f24
	mov     r0, #0x89
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021f24
	mov     r0, #0x8a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021f24
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021f24
	b       branch_21d6412
@ 0x21d63e2

.thumb
branch_21d63e2: @ 21d63e2 :thumb
	mov     r0, #0x22
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      0x2021f24
	mov     r0, #0x89
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      0x2021f24
	mov     r0, #0x8a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      0x2021f24
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      0x2021f24
.thumb
branch_21d6412: @ 21d6412 :thumb
	mov     r0, #0x22
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x2021d28
	mov     r5, r0
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #18
	str     r0, [sp, #0x0]
	mov     r0, #0x22
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x2021c50
	mov     r0, #0x8a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2021d28
	mov     r5, r0
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #18
	str     r0, [sp, #0x0]
	mov     r0, #0x8a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2021c50
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d646a


.align 2


.word 0x21bf6dc @ 0x21d646c
.thumb
Function_21d6470: @ 21d6470 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0xb4] @ 0x21d652c, (=0x744)
	mov     r6, r1
	sub     r4, r6, r0
	bpl     branch_21d6480
	mov     r4, #0x0
.thumb
branch_21d6480: @ 21d6480 :thumb
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2021d30
	mov     r1, #0x7
	mov     r2, r0
	lsl     r1, r1, #10
	mov     r0, #0x86
	add     r1, r2, r1
	lsl     r0, r0, #2
	add     r1, r1, r4
	lsl     r1, r1, #16
	ldr     r0, [r5, r0]
	lsr     r1, r1, #16
	bl      0x2021c94
	mov     r0, #0x87
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2021d30
	mov     r1, #0x7
	mov     r2, r0
	lsl     r1, r1, #10
	mov     r0, #0x87
	sub     r1, r2, r1
	lsl     r0, r0, #2
	sub     r1, r1, r4
	lsl     r1, r1, #16
	ldr     r0, [r5, r0]
	lsr     r1, r1, #16
	bl      0x2021c94
	ldr     r0, [pc, #0x64] @ 0x21d652c, (=0x744)
	cmp     r6, r0
	blt     branch_21d6526
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2021d28
	mov     r4, r0
	add     r3, sp, #0x0
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x1
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r2
	bl      0x2021c50
	mov     r0, #0x87
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2021d28
	mov     r4, r0
	add     r3, sp, #0x0
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x1
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x87
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r2
	bl      0x2021c50
.thumb
branch_21d6526: @ 21d6526 :thumb
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d652a


.align 2


.word 0x744 @ 0x21d652c
.thumb
Function_21d6530: @ 21d6530 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	ldr     r3, [pc, #0x118] @ 0x21d6650, (=0x21d78b0)
	add     r2, sp, #0x18
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldmia   r3!, {r0,r1}
	str     r2, [sp, #0x8]
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [pc, #0x10c] @ 0x21d6654, (=0x21d789c)
	ldr     r1, [r0, #0x8]
	str     r1, [sp, #0x14]
	ldr     r1, [r0, #0xc]
	ldr     r0, [r0, #0x10]
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r1, [pc, #0x100] @ 0x21d6658, (=0x5a5)
	ldr     r0, [sp, #0x4]
	cmp     r0, r1
	blt     branch_21d65ac
	mov     r4, #0x0
.thumb
branch_21d655e: @ 21d655e :thumb
	ldr     r0, [sp, #0x8]
	lsl     r7, r4, #2
	ldr     r0, [r0, r7]
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x0]
	add     r5, r0, r1
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2021d28
	mov     r6, r0
	add     r3, sp, #0x24
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0xd8] @ 0x21d665c, (=0x21d79ac)
	ldr     r1, [sp, #0x24]
	ldr     r0, [r0, r7]
	sub     r0, r1, r0
	str     r0, [sp, #0x24]
	mov     r0, #0x1
	ldr     r1, [sp, #0x28]
	lsl     r0, r0, #14
	sub     r0, r1, r0
	str     r0, [sp, #0x28]
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r2
	bl      0x2021c50
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x3
	bcc     branch_21d655e
.thumb
branch_21d65ac: @ 21d65ac :thumb
	ldr     r1, [pc, #0xb0] @ 0x21d6660, (=0x5d2)
	ldr     r0, [sp, #0x4]
	cmp     r0, r1
	blt     branch_21d65f4
	ldr     r0, [sp, #0x14]
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x0]
	add     r4, r0, r1
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2021d28
	mov     r5, r0
	add     r3, sp, #0x24
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0x8c] @ 0x21d6664, (=0x21d79a0)
	ldr     r1, [sp, #0x24]
	ldr     r0, [r0, #0x0]
	sub     r0, r1, r0
	str     r0, [sp, #0x24]
	mov     r0, #0x3
	ldr     r1, [sp, #0x28]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x28]
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r2
	bl      0x2021c50
.thumb
branch_21d65f4: @ 21d65f4 :thumb
	ldr     r1, [pc, #0x70] @ 0x21d6668, (=0x5e6)
	ldr     r0, [sp, #0x4]
	cmp     r0, r1
	blt     branch_21d664c
	mov     r5, #0x0
.thumb
branch_21d65fe: @ 21d65fe :thumb
	lsl     r7, r5, #2
	add     r0, sp, #0xc
	ldr     r0, [r0, r7]
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x0]
	add     r4, r0, r1
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2021d28
	mov     r6, r0
	add     r3, sp, #0x24
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0x48] @ 0x21d666c, (=0x21d79a4)
	ldr     r1, [sp, #0x24]
	ldr     r0, [r0, r7]
	sub     r0, r1, r0
	str     r0, [sp, #0x24]
	mov     r0, #0x3
	ldr     r1, [sp, #0x28]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x28]
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r2
	bl      0x2021c50
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, #0x2
	bcc     branch_21d65fe
.thumb
branch_21d664c: @ 21d664c :thumb
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x21d6650

.word 0x21d78b0 @ 0x21d6650
.word 0x21d789c @ 0x21d6654
.word 0x5a5 @ 0x21d6658
.word 0x21d79ac @ 0x21d665c
.word 0x5d2 @ 0x21d6660
.word 0x21d79a0 @ 0x21d6664
.word 0x5e6 @ 0x21d6668
.word 0x21d79a4 @ 0x21d666c
.thumb
Function_21d6670: @ 21d6670 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x24] @ 0x21d669c, (=0x21d7920)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x201e86c
	mov     r0, #0x1
	mov     r1, #0x4c
	bl      0x201f834
	bl      0x201e994
	bl      0x201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d669c

.word 0x21d7920 @ 0x21d669c
.thumb
Function_21d66a0: @ 21d66a0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x2c
	mov     r4, r1
	mov     r1, #0x0
	mov     r5, r0
	str     r1, [sp, #0x0]
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r6, r2
	str     r1, [sp, #0xc]
	mov     r2, #0x4b
	str     r1, [sp, #0x10]
	lsl     r2, r2, #2
	ldr     r0, [r5, r2]
	mov     r3, r1
	str     r0, [sp, #0x14]
	add     r0, r2, #0x4
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x18]
	mov     r0, r2
	add     r0, #0x8
	ldr     r0, [r5, r0]
	add     r2, #0xc
	str     r0, [sp, #0x1c]
	ldr     r0, [r5, r2]
	mov     r2, r1
	str     r0, [sp, #0x20]
	str     r1, [sp, #0x24]
	str     r1, [sp, #0x28]
	mov     r0, r6
	bl      0x20093b4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	str     r0, [r4, #0x0]
	str     r6, [r4, #0x4]
	str     r1, [r4, #0x8]
	str     r1, [r4, #0xc]
	mov     r0, #0x1
	str     r1, [r4, #0x10]
	lsl     r0, r0, #12
	str     r0, [r4, #0x14]
	str     r0, [r4, #0x18]
	str     r0, [r4, #0x1c]
	strh    r1, [r4, #0x20]
	mov     r0, #0x1
	str     r0, [r4, #0x24]
	str     r0, [r4, #0x28]
	mov     r0, #0x4c
	str     r0, [r4, #0x2c]
	add     sp, #0x2c
	pop     {r3-r6,pc}
@ 0x21d670a


.align 2, 0


.thumb
Function_21d670c: @ 21d670c :thumb
	push    {r4,lr}
	mov     r1, #0x7d
	mov     r0, #0x4c
	lsl     r1, r1, #2
	bl      malloc_maybe
	mov     r2, #0x7d
	mov     r4, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     0x20d5124
	mov     r0, r4
	bl      Function_21d6800
	mov     r0, r4
	bl      Function_21d6964
	mov     r0, r4
	pop     {r4,pc}
@ 0x21d6734

.thumb
Function_21d6734: @ 21d6734 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x4c
	mov     r1, #0x8
	bl      malloc_maybe
	mov     r4, r0
	mov     r0, #0xc
	mov     r6, r5
	mul     r6, r0
	mov     r0, #0x4c
	mov     r1, r6
	bl      malloc_maybe
	mov     r1, #0x0
	mov     r2, r6
	str     r0, [r4, #0x4]
	blx     0x20d5124
	str     r5, [r4, #0x0]
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x21d6760

.thumb
Function_21d6760: @ 21d6760 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_21d6786
	mov     r4, r6
.thumb
branch_21d676e: @ 21d676e :thumb
	ldr     r0, [r5, #0x4]
	add     r0, r0, r4
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_21d677c
	bl      Function_200da58
.thumb
branch_21d677c: @ 21d677c :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	cmp     r6, r0
	blt     branch_21d676e
.thumb
branch_21d6786: @ 21d6786 :thumb
	ldr     r0, [r5, #0x4]
	bl      free
	mov     r0, r5
	bl      free
	pop     {r4-r6,pc}
@ 0x21d6794

.thumb
Function_21d6794: @ 21d6794 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	cmp     r4, r0
	blt     branch_21d67a4
	bl      ErrorHandling
.thumb
branch_21d67a4: @ 21d67a4 :thumb
	mov     r0, #0xc
	ldr     r1, [r5, #0x4]
	mul     r0, r4
	add     r0, r1, r0
	.hword  0x1d00 @ add r0, r0, #0x4
	pop     {r3-r5,pc}
@ 0x21d67b0

.thumb
Function_21d67b0: @ 21d67b0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_21d691c
	mov     r6, #0x73
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_21d67be: @ 21d67be :thumb
	lsl     r0, r4, #4
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	cmp     r0, #0x0
	beq     branch_21d67cc
	bl      Function_200da58
.thumb
branch_21d67cc: @ 21d67cc :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x3
	bcc     branch_21d67be
	mov     r6, #0x55
	mov     r4, #0x0
	mov     r7, #0xc
	lsl     r6, r6, #2
.thumb
branch_21d67de: @ 21d67de :thumb
	mov     r0, r4
	mul     r0, r7
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	cmp     r0, #0x0
	beq     branch_21d67ee
	bl      Function_200da58
.thumb
branch_21d67ee: @ 21d67ee :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0xa
	bcc     branch_21d67de
	mov     r0, r5
	bl      free
	pop     {r3-r7,pc}
@ 0x21d6800

.thumb
Function_21d6800: @ 21d6800 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	mov     r7, r0
	mov     r3, r1
	ldr     r0, [pc, #0x100] @ 0x21d6910, (=0xffcfffef)
	mov     r1, #0x10
	and     r3, r0
	orr     r3, r1
	str     r3, [r2, #0x0]
	ldr     r3, [pc, #0xf8] @ 0x21d6914, (=0x4001000)
	ldr     r2, [r3, #0x0]
	and     r0, r2
	orr     r0, r1
	str     r0, [r3, #0x0]
	bl      Function_21d6670
	blx     0x20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x80
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x4c
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      0x200a784
	mov     r0, #0xa
	add     r1, r7, #0x4
	mov     r2, #0x4c
	bl      0x20095c4
	ldr     r4, [pc, #0xc8] @ 0x21d6918, (=0x21d7930)
	str     r0, [r7, #0x0]
	mov     r6, #0x0
	mov     r5, r7
.thumb
branch_21d6854: @ 21d6854 :thumb
	ldrb    r0, [r4, #0x0]
	mov     r1, r6
	mov     r2, #0x4c
	bl      0x2009714
	mov     r1, #0x4b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x4
	blt     branch_21d6854
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe0
	ldr     r0, [r7, r0]
	mov     r1, #0x80
	mov     r2, #0x4
	bl      0x200985c
	mov     r1, #0x4f
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x3
	str     r2, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x4c
	str     r0, [sp, #0xc]
	add     r0, #0xe4
	ldr     r0, [r7, r0]
	mov     r1, #0x80
	bl      0x20098b8
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r7, r1]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r7, r0]
	mov     r1, #0x80
	mov     r2, #0x5
	bl      0x2009918
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4c
	str     r0, [sp, #0x8]
	add     r0, #0xec
	ldr     r0, [r7, r0]
	mov     r1, #0x80
	mov     r2, #0x6
	bl      0x2009918
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	sub     r1, #0xc
	ldr     r0, [r7, r1]
	bl      0x200a328
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r7, r0]
	bl      0x200a5c8
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d690e


.align 2


.word 0xffcfffef @ 0x21d6910
.word 0x4001000 @ 0x21d6914
.word 0x21d7930 @ 0x21d6918
.thumb
Function_21d691c: @ 21d691c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x200a4e4
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	bl      0x200a6dc
	mov     r6, #0x4b
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_21d693a: @ 21d693a :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	bl      0x2009754
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x4
	bcc     branch_21d693a
	ldr     r0, [r5, #0x0]
	bl      0x2021964
	bl      0x200a878
	bl      0x201e958
	bl      0x201f8b4
	pop     {r4-r6,pc}
@ 0x21d6962


.align 2, 0


.thumb
Function_21d6964: @ 21d6964 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x54
	mov     r7, r0
	mov     r6, #0x0
	mov     r4, r6
	mov     r5, r7
.thumb
branch_21d6970: @ 21d6970 :thumb
	mov     r0, r7
	add     r1, sp, #0x0
	add     r2, sp, #0x30
	bl      Function_21d66a0
	add     r0, sp, #0x0
	str     r4, [sp, #0x8]
	str     r4, [sp, #0xc]
	bl      0x2021aa0
	mov     r1, #0x15
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cc8
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0x2
	lsl     r0, r0, #12
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, r4, r0
	add     r5, #0xc
	cmp     r6, #0xa
	blt     branch_21d6970
	add     sp, #0x54
	pop     {r4-r7,pc}
@ 0x21d69b2


.align 2, 0


.thumb
Function_21d69b4: @ 21d69b4 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d69bc, (=0x20219f9)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d69ba


.align 2


.word 0x20219f9 @ 0x21d69bc
.thumb
Function_21d69c0: @ 21d69c0 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	cmp     r1, #0xb4
	bne     branch_21d69e2
	mov     r2, #0x3
	str     r2, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x71
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, r4
	mov     r3, r2
	bl      Function_21d6a0c
	b       branch_21d69fc
@ 0x21d69e2

.thumb
branch_21d69e2: @ 21d69e2 :thumb
	ldr     r0, [pc, #0x24] @ 0x21d6a08, (=0x11d)
	cmp     r1, r0
	bne     branch_21d69fc
	mov     r2, #0x3
	add     r0, #0xb7
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	add     r0, r4, r0
	mov     r1, r4
	mov     r3, r2
	bl      Function_21d6a0c
.thumb
branch_21d69fc: @ 21d69fc :thumb
	mov     r0, r4
	bl      Function_21d69b4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d6a06


.align 2


.word 0x11d @ 0x21d6a08
.thumb
Function_21d6a0c: @ 21d6a0c :thumb
	push    {r4,lr}
	mov     r4, r0
	strb    r2, [r4, #0x0]
	ldr     r2, [pc, #0x28] @ 0x21d6a3c, (=0xfffffff8)
	strb    r3, [r4, #0x1]
	add     r2, sp
	ldrb    r0, [r2, #0x10]
	strb    r0, [r4, #0x2]
	mov     r0, #0x0
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x3]
	mov     r0, #0x53
	lsl     r0, r0, #2
	add     r0, r1, r0
	str     r0, [r4, #0xc]
	ldrb    r0, [r2, #0x14]
	mov     r1, r4
	mov     r2, #0xa
	strb    r0, [r4, #0x5]
	ldr     r0, [pc, #0xc] @ 0x21d6a40, (=0x21d6b0d)
	bl      0x200d9e8
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x21d6a3c

.word 0xfffffff8 @ 0x21d6a3c
.word 0x21d6b0d @ 0x21d6a40
.thumb
Function_21d6a44: @ 21d6a44 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r1
	str     r0, [sp, #0x0]
	cmp     r2, #0x0
	bne     branch_21d6a54
	mov     r7, #0x40
	b       branch_21d6a56
@ 0x21d6a54

.thumb
branch_21d6a54: @ 21d6a54 :thumb
	mov     r7, #0x20
.thumb
branch_21d6a56: @ 21d6a56 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	bls     branch_21d6ad2
.thumb
branch_21d6a5c: @ 21d6a5c :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0xa
	bl      Function_21d6adc
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      0x2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x4
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	bl      PRNG
	lsr     r1, r0, #31
	lsl     r2, r0, #25
	sub     r2, r2, r1
	mov     r0, #0x19
	ror     r2, r0
	add     r0, r1, r2
	add     r0, #0x40
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	bl      PRNG
	lsr     r1, r0, #31
	lsl     r2, r0, #26
	sub     r2, r2, r1
	mov     r0, #0x1a
	ror     r2, r0
	add     r0, r1, r2
	add     r0, r7, r0
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	add     r1, sp, #0x4
	bl      0x2021c50
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      0x2021cc8
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r0, [pc, #0x18] @ 0x21d6ad8, (=0x21d6b49)
	mov     r1, r4
	mov     r2, #0x14
	bl      0x200d9e8
	str     r0, [r4, #0x8]
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, r6
	bcc     branch_21d6a5c
.thumb
branch_21d6ad2: @ 21d6ad2 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d6ad6


.align 2


.word 0x21d6b49 @ 0x21d6ad8
.thumb
Function_21d6adc: @ 21d6adc :thumb
	push    {r4,lr}
	mov     r4, #0x0
	mov     r2, #0xc
.thumb
branch_21d6ae2: @ 21d6ae2 :thumb
	mov     r1, r4
	mul     r1, r2
	add     r3, r0, r1
	ldrb    r1, [r0, r1]
	cmp     r1, #0x0
	bne     branch_21d6afa
	mov     r0, #0x1
	strb    r0, [r3, #0x0]
	mov     r0, #0x0
	strb    r0, [r3, #0x1]
	mov     r0, r3
	pop     {r4,pc}
@ 0x21d6afa

.thumb
branch_21d6afa: @ 21d6afa :thumb
	add     r1, r4, #0x1
	lsl     r1, r1, #24
	lsr     r4, r1, #24
	cmp     r4, #0xa
	bcc     branch_21d6ae2
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d6b0c

.thumb
Function_21d6b0c: @ 21d6b0c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x4]
	mov     r5, r0
	add     r0, r1, #0x1
	strb    r0, [r4, #0x4]
	ldrb    r0, [r4, #0x1]
	cmp     r1, r0
	bcc     branch_21d6b44
	ldrb    r1, [r4, #0x0]
	ldrb    r2, [r4, #0x5]
	ldr     r0, [r4, #0xc]
	bl      Function_21d6a44
	mov     r0, #0x0
	strb    r0, [r4, #0x4]
	ldrb    r0, [r4, #0x3]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x3]
	ldrb    r1, [r4, #0x3]
	ldrb    r0, [r4, #0x2]
	cmp     r1, r0
	bcc     branch_21d6b44
	mov     r0, r5
	bl      Function_200da58
	mov     r0, #0x0
	str     r0, [r4, #0x8]
.thumb
branch_21d6b44: @ 21d6b44 :thumb
	pop     {r3-r5,pc}
@ 0x21d6b46


.align 2, 0


.thumb
Function_21d6b48: @ 21d6b48 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	bl      0x2021d28
	mov     r6, r0
	add     r3, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x3
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x4]
	mov     r1, r2
	bl      0x2021c50
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x50
	bcc     branch_21d6b9c
	mov     r0, r5
	bl      Function_200da58
	mov     r1, #0x0
	str     r1, [r4, #0x8]
	strb    r1, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	bl      0x2021cc8
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      0x2021cac
.thumb
branch_21d6b9c: @ 21d6b9c :thumb
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d6ba0

.thumb
Function_21d6ba0: @ 21d6ba0 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d6ba8, (=0x21d6bad)
	mov     r2, r1
	mov     r1, #0x2
	bx      r3
@ 0x21d6ba8

.word 0x21d6bad @ 0x21d6ba8
.thumb
Function_21d6bac: @ 21d6bac :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	ldr     r0, [r6, #0x4]
	mov     r7, r1
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r4, [pc, #0x80] @ 0x21d6c3c, (=0x0)
	beq     branch_21d6c36
.thumb
branch_21d6bbe: @ 21d6bbe :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [r6, #0x0]
	bl      Function_21d6adc
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	bl      0x2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x8
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	bl      PRNG
	mov     r1, #0xe0
	blx     _s32_div_f
	add     r1, #0xa
	lsl     r0, r1, #12
	str     r0, [sp, #0x8]
	bl      PRNG
	mov     r1, #0x38
	blx     _s32_div_f
	add     r1, #0xfa
	lsl     r0, r1, #12
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	add     r1, sp, #0x8
	bl      0x2021c50
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      0x2021cc8
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	ldr     r0, [r5, #0x4]
	bne     branch_21d6c1a
	mov     r1, #0x1
	bl      0x2021cac
	b       branch_21d6c20
@ 0x21d6c1a

.thumb
branch_21d6c1a: @ 21d6c1a :thumb
	mov     r1, #0x0
	bl      0x2021cac
.thumb
branch_21d6c20: @ 21d6c20 :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d6c40, (=0x21d6c45)
	mov     r1, r5
	mov     r2, #0x14
	bl      0x200d9e8
	str     r0, [r5, #0x8]
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, r7
	bcc     branch_21d6bbe
.thumb
branch_21d6c36: @ 21d6c36 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d6c3a


.align 2


.word 0x0 @ 0x21d6c3c
.word 0x21d6c45 @ 0x21d6c40
.thumb
Function_21d6c44: @ 21d6c44 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x1]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, #0x1]
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x8
	bcc     branch_21d6c6c
	bl      Function_200da58
	mov     r1, #0x0
	str     r1, [r4, #0x8]
	strb    r1, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	bl      0x2021cc8
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      0x2021cac
.thumb
branch_21d6c6c: @ 21d6c6c :thumb
	pop     {r4,pc}
@ 0x21d6c6e


.align 2, 0


.thumb
Function_21d6c70: @ 21d6c70 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x1c] @ 0x21d6c90, (=0x2100dec)
	mov     r2, #0x0
	ldr     r3, [r3, #0x0]
	blx     r3
	mov     r4, r0
	bl      0x20145b4
	cmp     r4, #0x0
	bne     branch_21d6c88
	bl      ErrorHandling
.thumb
branch_21d6c88: @ 21d6c88 :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #13
	pop     {r4,pc}
@ 0x21d6c8e


.align 2


.word 0x2100dec @ 0x21d6c90
.thumb
Function_21d6c94: @ 21d6c94 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x1c] @ 0x21d6cb4, (=0x2100df4)
	mov     r2, #0x1
	ldr     r3, [r3, #0x0]
	blx     r3
	mov     r4, r0
	bne     branch_21d6ca6
	bl      ErrorHandling
.thumb
branch_21d6ca6: @ 21d6ca6 :thumb
	mov     r0, r4
	bl      0x20145f4
	lsl     r0, r4, #16
	lsr     r0, r0, #13
	pop     {r4,pc}
@ 0x21d6cb2


.align 2


.word 0x2100df4 @ 0x21d6cb4
.thumb
Function_21d6cb8: @ 21d6cb8 :thumb
	mov     r0, #0x2c
	bx      lr
@ 0x21d6cbc

.thumb
Function_21d6cbc: @ 21d6cbc :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_21d6cc8
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_21d6ccc
.thumb
branch_21d6cc8: @ 21d6cc8 :thumb
	bl      ErrorHandling
.thumb
branch_21d6ccc: @ 21d6ccc :thumb
	ldr     r0, [r4, #0x18]
	pop     {r4,pc}
@ 0x21d6cd0

.thumb
Function_21d6cd0: @ 21d6cd0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	beq     branch_21d6ce0
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x0
	bne     branch_21d6ce4
.thumb
branch_21d6ce0: @ 21d6ce0 :thumb
	bl      ErrorHandling
.thumb
branch_21d6ce4: @ 21d6ce4 :thumb
	ldr     r0, [r5, #0x18]
	mov     r1, #0x1
	bl      0x2014788
	mov     r2, #0x0
	ldr     r0, [r5, #0x18]
	mov     r1, r4
	mov     r3, r2
	bl      0x20146f4
	pop     {r3-r5,pc}
@ 0x21d6cfa


.align 2, 0


.thumb
Function_21d6cfc: @ 21d6cfc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	ldr     r3, [pc, #0x110] @ 0x21d6e14, (=0x21d7934)
	mov     r5, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x28
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	add     r0, sp, #0x10
	bl      0x2013880
	ldr     r2, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	mul     r1, r2
	add     r2, r0, r1
	mov     r1, #0x1
	mov     r4, r2
	and     r4, r1
	mov     r1, #0x3
	blx     _u32_div_f
	mov     r2, r1
	mov     r1, #0x0
	add     r6, sp, #0x28
	add     r7, sp, #0x1c
.thumb
branch_21d6d32: @ 21d6d32 :thumb
	lsl     r3, r2, #2
	ldr     r3, [r6, r3]
	lsl     r0, r1, #2
	str     r3, [r7, r0]
	add     r0, r5, r0
	str     r2, [r0, #0x1c]
	cmp     r4, #0x0
	beq     branch_21d6d46
	.hword  0x1c52 @ add r2, r2, #0x1
	b       branch_21d6d48
@ 0x21d6d46

.thumb
branch_21d6d46: @ 21d6d46 :thumb
	.hword  0x1e52 @ sub r2, r2, #0x1
.thumb
branch_21d6d48: @ 21d6d48 :thumb
	cmp     r2, #0x3
	blt     branch_21d6d50
	mov     r2, #0x0
	b       branch_21d6d56
@ 0x21d6d50

.thumb
branch_21d6d50: @ 21d6d50 :thumb
	cmp     r2, #0x0
	bge     branch_21d6d56
	mov     r2, #0x2
.thumb
branch_21d6d56: @ 21d6d56 :thumb
	add     r0, r1, #0x1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	cmp     r1, #0x3
	bcc     branch_21d6d32
	mov     r0, #0x4c
	bl      0x200762c
	ldr     r7, [pc, #0xb0] @ 0x21d6e18, (=0x21d7958)
	str     r0, [r5, #0x0]
	mov     r4, #0x0
.thumb
branch_21d6d6c: @ 21d6d6c :thumb
	lsl     r6, r4, #2
	add     r1, sp, #0x1c
	mov     r0, #0x0
	ldr     r1, [r1, r6]
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	lsl     r1, r1, #16
	str     r0, [sp, #0x8]
	add     r0, sp, #0x34
	lsr     r1, r1, #16
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_2075fb4
	add     r6, r5, r6
	ldr     r0, [r6, #0x1c]
	add     r1, sp, #0x34
	lsl     r2, r0, #3
	ldr     r0, [pc, #0x88] @ 0x21d6e1c, (=0x3ff)
	add     r3, r7, r2
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x0]
	ldr     r2, [r7, r2]
	ldr     r3, [r3, #0x4]
	bl      0x2007c34
	mov     r1, #0x6
	mov     r2, #0x1
	str     r0, [r6, #0x4]
	bl      0x2007dec
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x3
	bcc     branch_21d6d6c
	mov     r0, #0x1
	str     r0, [r5, #0x10]
	bl      0x2014000
	mov     r1, #0x12
	mov     r0, #0x4c
	lsl     r1, r1, #10
	bl      malloc_maybe
	str     r0, [r5, #0x14]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x4c
	str     r0, [sp, #0x4]
	mov     r3, #0x12
	ldr     r0, [pc, #0x44] @ 0x21d6e20, (=0x21d6c71)
	ldr     r1, [pc, #0x44] @ 0x21d6e24, (=0x21d6c95)
	ldr     r2, [r5, #0x14]
	lsl     r3, r3, #10
	bl      0x2014014
	str     r0, [r5, #0x18]
	bl      0x2014784
	mov     r2, r0
	mov     r0, #0x1
	mov     r1, #0xe1
	lsl     r0, r0, #12
	lsl     r1, r1, #14
	bl      0x20206bc
	mov     r0, #0x3d
	mov     r1, #0x4
	mov     r2, #0x4c
	bl      0x20144c4
	mov     r1, r0
	ldr     r0, [r5, #0x18]
	mov     r2, #0xa
	mov     r3, #0x1
	bl      0x20144cc
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x21d6e14

.word 0x21d7934 @ 0x21d6e14
.word 0x21d7958 @ 0x21d6e18
.word 0x3ff @ 0x21d6e1c
.word 0x21d6c71 @ 0x21d6e20
.word 0x21d6c95 @ 0x21d6e24
.thumb
Function_21d6e28: @ 21d6e28 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	bl      0x201411c
	ldr     r0, [r4, #0x14]
	bl      free
	ldr     r0, [r4, #0x0]
	bl      0x2007b6c
	pop     {r4,pc}
@ 0x21d6e40

.thumb
Function_21d6e40: @ 21d6e40 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_21d6e4c
	ldr     r0, [r0, #0x0]
	bl      0x2008a94
.thumb
branch_21d6e4c: @ 21d6e4c :thumb
	pop     {r3,pc}
@ 0x21d6e4e


.align 2, 0


.thumb
Function_21d6e50: @ 21d6e50 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_21d6e74
	blx     0x20b2628
	bl      Call_G3X_Reset
	blx     0x20a73c0
	ldr     r0, [r4, #0x0]
	bl      0x2007768
	bl      Function_21d725c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x20241bc
.thumb
branch_21d6e74: @ 21d6e74 :thumb
	pop     {r4,pc}
@ 0x21d6e76


.align 2, 0


.thumb
Function_21d6e78: @ 21d6e78 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r2, r4
	add     r2, #0x28
	ldrb    r2, [r2, #0x0]
	mov     r5, r4
	mov     r6, r1
	add     r5, #0x28
	cmp     r2, #0x5
	bls     branch_21d6e90
	b       branch_21d6fe2
@ 0x21d6e90

.thumb
branch_21d6e90: @ 21d6e90 :thumb
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x21d6e9c

Jumppoints_21d6e9c:
.hword branch_21d6ea8 - Jumppoints_21d6e9c - 2
.hword branch_21d6eea - Jumppoints_21d6e9c - 2
.hword branch_21d6f0e - Jumppoints_21d6e9c - 2
.hword branch_21d6f6e - Jumppoints_21d6e9c - 2
.hword branch_21d6f92 - Jumppoints_21d6e9c - 2
.hword branch_21d6fbe - Jumppoints_21d6e9c - 2
.thumb
branch_21d6ea8: @ 21d6ea8 :thumb
	ldr     r0, [pc, #0x13c] @ 0x21d6fe8, (=0x400004a)
	mov     r1, #0x3f
	ldrh    r2, [r0, #0x0]
	add     r7, r4, #0x4
	bic     r2, r1
	mov     r1, #0x11
	orr     r1, r2
	mov     r2, #0x20
	orr     r1, r2
	strh    r1, [r0, #0x0]
	lsl     r0, r6, #2
	str     r0, [sp, #0x0]
	ldr     r0, [r7, r0]
	mov     r1, #0xc
	lsl     r2, r2, #5
	bl      0x2007dec
	ldr     r0, [sp, #0x0]
	mov     r2, #0x1
	ldr     r0, [r7, r0]
	mov     r1, #0xd
	lsl     r2, r2, #10
	bl      0x2007dec
	ldr     r0, [sp, #0x0]
	mov     r1, #0x6
	ldr     r0, [r7, r0]
	mov     r2, #0x0
	bl      0x2007dec
	ldrb    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
.thumb
branch_21d6eea: @ 21d6eea :thumb
	lsl     r2, r6, #2
	add     r2, r4, r2
	ldr     r2, [r2, #0x1c]
	mov     r0, r4
	lsl     r3, r2, #3
	ldr     r2, [pc, #0xf4] @ 0x21d6fec, (=0x21d7940)
	mov     r1, r6
	ldr     r2, [r2, r3]
	blx     r2
	cmp     r0, #0x0
	beq     branch_21d6fe2
	mov     r0, #0x0
	add     r4, #0x29
	strb    r0, [r4, #0x0]
	ldrb    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
	b       branch_21d6fe2
@ 0x21d6f0e

.thumb
branch_21d6f0e: @ 21d6f0e :thumb
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	bl      0x2014788
	mov     r0, r4
	str     r0, [sp, #0x4]
	add     r0, #0x1c
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x4]
	lsl     r6, r6, #2
	add     r7, r4, #0x4
	ldr     r1, [r1, r6]
	mov     r2, #0xc
	mul     r2, r1
	ldr     r1, [pc, #0xc4] @ 0x21d6ff0, (=0x21d7970)
	ldr     r0, [r4, #0x18]
	ldr     r1, [r1, r2]
	ldr     r2, [pc, #0xc0] @ 0x21d6ff4, (=0x21d7269)
	ldr     r3, [r7, r6]
	bl      0x20146f4
	ldr     r1, [sp, #0x4]
	mov     r2, #0xc
	ldr     r1, [r1, r6]
	ldr     r0, [r4, #0x18]
	mul     r2, r1
	ldr     r1, [pc, #0xb4] @ 0x21d6ff8, (=0x21d7974)
	ldr     r3, [r7, r6]
	ldr     r1, [r1, r2]
	ldr     r2, [pc, #0xa8] @ 0x21d6ff4, (=0x21d7269)
	bl      0x20146f4
	ldr     r1, [sp, #0x4]
	ldr     r0, [r4, #0x18]
	ldr     r2, [r1, r6]
	mov     r1, #0xc
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0xa0] @ 0x21d6ffc, (=0x21d7978)
	ldr     r2, [pc, #0x94] @ 0x21d6ff4, (=0x21d7269)
	ldr     r1, [r1, r3]
	ldr     r3, [r7, r6]
	bl      0x20146f4
	ldrb    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
	b       branch_21d6fe2
@ 0x21d6f6e

.thumb
branch_21d6f6e: @ 21d6f6e :thumb
	ldr     r0, [r4, #0x18]
	bl      0x2014710
	cmp     r0, #0x0
	bne     branch_21d6fe2
	ldr     r1, [pc, #0x6c] @ 0x21d6fe8, (=0x400004a)
	mov     r0, #0x3f
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	mov     r0, #0x10
	orr     r2, r0
	mov     r0, #0x20
	orr     r0, r2
	strh    r0, [r1, #0x0]
	ldrb    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
	b       branch_21d6fe2
@ 0x21d6f92

.thumb
branch_21d6f92: @ 21d6f92 :thumb
	lsl     r6, r6, #2
	add     r2, r4, r6
	ldr     r2, [r2, #0x1c]
	lsl     r3, r2, #3
	ldr     r2, [pc, #0x64] @ 0x21d7000, (=0x21d7944)
	ldr     r2, [r2, r3]
	blx     r2
	cmp     r0, #0x0
	beq     branch_21d6fe2
	add     r0, r4, r6
	ldr     r0, [r0, #0x4]
	mov     r1, #0x6
	mov     r2, #0x1
	bl      0x2007dec
	mov     r0, #0x0
	add     r4, #0x29
	strb    r0, [r4, #0x0]
	ldrb    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
	b       branch_21d6fe2
@ 0x21d6fbe

.thumb
branch_21d6fbe: @ 21d6fbe :thumb
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x29
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x14
	bcc     branch_21d6fe2
	mov     r0, #0x0
	add     r4, #0x29
	strb    r0, [r4, #0x0]
	strb    r0, [r5, #0x0]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d6fe2

.thumb
branch_21d6fe2: @ 21d6fe2 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d6fe8

.word 0x400004a @ 0x21d6fe8
.word 0x21d7940 @ 0x21d6fec
.word 0x21d7970 @ 0x21d6ff0
.word 0x21d7269 @ 0x21d6ff4
.word 0x21d7974 @ 0x21d6ff8
.word 0x21d7978 @ 0x21d6ffc
.word 0x21d7944 @ 0x21d7000
.thumb
Function_21d7004: @ 21d7004 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	lsl     r0, r1, #2
	add     r0, r5, r0
	ldr     r4, [r0, #0x4]
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, #0x6
	bl      0x2008274
	mov     r1, #0x1
	mov     r2, r1
	mov     r0, r4
	sub     r2, #0x11
	bl      0x2008274
	mov     r1, #0xc
	mov     r2, r1
	mov     r0, r4
	sub     r2, #0x8c
	bl      0x2008274
	mov     r1, #0xd
	mov     r2, r1
	mov     r0, r4
	sub     r2, #0x8d
	bl      0x2008274
	mov     r0, r5
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0x29
	add     r5, #0x29
	strb    r1, [r0, #0x0]
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x6
	bcc     branch_21d706e
	mov     r1, #0xc
	mov     r2, r1
	mov     r0, r4
	add     r2, #0xf4
	bl      0x2007dec
	mov     r1, #0xd
	mov     r2, r1
	mov     r0, r4
	add     r2, #0xf3
	bl      0x2007dec
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d706e

.thumb
branch_21d706e: @ 21d706e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d7072


.align 2, 0


.thumb
Function_21d7074: @ 21d7074 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	lsl     r0, r1, #2
	add     r0, r5, r0
	ldr     r4, [r0, #0x4]
	mov     r1, #0x0
	mov     r0, r4
	.hword  0x1eca @ sub r2, r1, #0x3
	bl      0x2008274
	mov     r1, #0x1
	mov     r2, r1
	mov     r0, r4
	sub     r2, #0x13
	bl      0x2008274
	mov     r0, r5
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0x29
	add     r5, #0x29
	strb    r1, [r0, #0x0]
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x6
	bcc     branch_21d70c6
	mov     r1, #0xc
	mov     r2, r1
	mov     r0, r4
	add     r2, #0xf4
	bl      0x2007dec
	mov     r1, #0xd
	mov     r2, r1
	mov     r0, r4
	add     r2, #0xf3
	bl      0x2007dec
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d70c6

.thumb
branch_21d70c6: @ 21d70c6 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d70ca


.align 2, 0


.thumb
Function_21d70cc: @ 21d70cc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	lsl     r0, r1, #2
	add     r0, r5, r0
	ldr     r4, [r0, #0x4]
	mov     r1, #0x0
	mov     r2, r1
	mov     r0, r4
	sub     r2, #0x10
	bl      0x2008274
	mov     r1, #0x1
	mov     r2, r1
	mov     r0, r4
	sub     r2, #0x11
	bl      0x2008274
	mov     r1, #0xc
	mov     r2, r1
	mov     r0, r4
	sub     r2, #0x8c
	bl      0x2008274
	mov     r1, #0xd
	mov     r2, r1
	mov     r0, r4
	sub     r2, #0x8d
	bl      0x2008274
	mov     r0, r5
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0x29
	add     r5, #0x29
	strb    r1, [r0, #0x0]
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x6
	bcc     branch_21d7138
	mov     r1, #0xc
	mov     r2, r1
	mov     r0, r4
	add     r2, #0xf4
	bl      0x2007dec
	mov     r1, #0xd
	mov     r2, r1
	mov     r0, r4
	add     r2, #0xf3
	bl      0x2007dec
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d7138

.thumb
branch_21d7138: @ 21d7138 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d713c

.thumb
Function_21d713c: @ 21d713c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	lsl     r0, r1, #2
	add     r0, r5, r0
	ldr     r4, [r0, #0x4]
	mov     r1, #0x0
	mov     r0, r4
	.hword  0x1f8a @ sub r2, r1, #0x6
	bl      0x2008274
	mov     r1, #0x1
	mov     r2, r1
	mov     r0, r4
	sub     r2, #0x11
	bl      0x2008274
	mov     r0, r5
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0x29
	add     r5, #0x29
	strb    r1, [r0, #0x0]
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x6
	bcc     branch_21d718e
	mov     r1, #0xc
	mov     r2, r1
	mov     r0, r4
	add     r2, #0xf4
	bl      0x2007dec
	mov     r1, #0xd
	mov     r2, r1
	mov     r0, r4
	add     r2, #0xf3
	bl      0x2007dec
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d718e

.thumb
branch_21d718e: @ 21d718e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d7192


.align 2, 0


.thumb
Function_21d7194: @ 21d7194 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	lsl     r0, r1, #2
	add     r0, r5, r0
	ldr     r4, [r0, #0x4]
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, #0x8
	bl      0x2008274
	mov     r1, #0x1
	mov     r2, r1
	mov     r0, r4
	sub     r2, #0x11
	bl      0x2008274
	mov     r1, #0xc
	mov     r2, r1
	mov     r0, r4
	sub     r2, #0x8c
	bl      0x2008274
	mov     r1, #0xd
	mov     r2, r1
	mov     r0, r4
	sub     r2, #0x8d
	bl      0x2008274
	mov     r0, r5
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0x29
	add     r5, #0x29
	strb    r1, [r0, #0x0]
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x6
	bcc     branch_21d71fe
	mov     r1, #0xc
	mov     r2, r1
	mov     r0, r4
	add     r2, #0xf4
	bl      0x2007dec
	mov     r1, #0xd
	mov     r2, r1
	mov     r0, r4
	add     r2, #0xf3
	bl      0x2007dec
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d71fe

.thumb
branch_21d71fe: @ 21d71fe :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d7202


.align 2, 0


.thumb
Function_21d7204: @ 21d7204 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	lsl     r0, r1, #2
	add     r0, r5, r0
	ldr     r4, [r0, #0x4]
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, #0x6
	bl      0x2008274
	mov     r1, #0x1
	mov     r2, r1
	mov     r0, r4
	sub     r2, #0x15
	bl      0x2008274
	mov     r0, r5
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0x29
	add     r5, #0x29
	strb    r1, [r0, #0x0]
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x6
	bcc     branch_21d7256
	mov     r1, #0xc
	mov     r2, r1
	mov     r0, r4
	add     r2, #0xf4
	bl      0x2007dec
	mov     r1, #0xd
	mov     r2, r1
	mov     r0, r4
	add     r2, #0xf3
	bl      0x2007dec
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d7256

.thumb
branch_21d7256: @ 21d7256 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d725a


.align 2, 0
.thumb
Function_21d725c: @ 21d725c :thumb
	push    {r3,lr}
	bl      0x201469c
	bl      0x20146c0
	pop     {r3,pc}
@ 0x21d7268


.thumb
Function_21d7268: @ 21d7268 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      0x2014764
	add     r2, sp, #0x0
	mov     r1, #0x0
	str     r1, [r2, #0x0]
	str     r1, [r2, #0x4]
	mov     r4, r0
	str     r1, [r2, #0x8]
	bl      0x20080c0
	sub     r0, #0x80
	mov     r1, #0xac
	mul     r1, r0
	str     r1, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	bl      0x20080c0
	sub     r0, #0x60
	mov     r1, #0xac
	mul     r1, r0
	str     r1, [sp, #0x4]
	mov     r0, #0x40
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	add     r0, r1, r0
	str     r0, [r5, #0x28]
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	add     r0, r1, r0
	str     r0, [r5, #0x2c]
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	add     r0, r1, r0
	str     r0, [r5, #0x30]
	add     sp, #0xc
	pop     {r4,r5,pc}



.align 2, 0
Unknown_21d72c8: @ 0x21d72c8
.incbin "./baserom/overlay/overlay_0077.bin", 0x6548, 0x21d742c - 0x21d72c8


.word Function_21d0d80+1 @ =0x21d0d81, 0x21d742c
.word Function_21d0e3c+1 @ =0x21d0e3d, 0x21d7430
.word Function_21d10fc+1 @ =0x21d10fd, 0x21d7434
.word 0xffffffff @ 0x21d7438

.incbin "./baserom/overlay/overlay_0077.bin", 0x66bc, 0x21d788c - 0x21d743c


.word Function_21d2d08+1 @ =0x21d2d09, 0x21d788c
.word Function_21d2d94+1 @ =0x21d2d95, 0x21d7890
.word Function_21d2e60+1 @ =0x21d2e61, 0x21d7894
.word 0xffffffff @ 0x21d7898

.incbin "./baserom/overlay/overlay_0077.bin", 0x6b1c, 0x21d7940 - 0x21d789c


.word Function_21d7004+1 @ =0x21d7005, 0x21d7940
.word Function_21d7074+1 @ =0x21d7075, 0x21d7944
.word Function_21d70cc+1 @ =0x21d70cd, 0x21d7948
.word Function_21d713c+1 @ =0x21d713d, 0x21d794c
.word Function_21d7194+1 @ =0x21d7195, 0x21d7950
.word Function_21d7204+1 @ =0x21d7205, 0x21d7954
@ 0x21d7958


.incbin "./baserom/overlay/overlay_0077.bin", 0x6bd8, 0x21d7a00 - 0x21d7958


@end 0x21d7a00




