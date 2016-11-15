
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


@ 0x18a200 in arm9.bin

.section .iwram7, "ax"


.thumb
Function_2249960: @ 2249960 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0xa4] @ 0x2249a0c, (=0x224f5a0)
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	bne     branch_2249982
	ldr     r0, [pc, #0x94] @ 0x2249a0c, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_201d730
branch_2249982: @ 2249982 :thumb
	cmp     r4, #0x0
	beq     branch_22499a4
	ldr     r0, [pc, #0x84] @ 0x2249a0c, (=0x224f5a0)
	mov     r1, r5
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x74]
	ldr     r2, [r2, #0x10]
	bl      Function_200b1b8
	ldr     r0, [pc, #0x74] @ 0x2249a0c, (=0x224f5a0)
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x58]
	ldr     r1, [r2, #0x14]
	ldr     r2, [r2, #0x10]
	bl      Function_200c388
	b       branch_22499b2
@ 0x22499a4

.thumb
branch_22499a4: @ 22499a4 :thumb
	ldr     r0, [pc, #0x64] @ 0x2249a0c, (=0x224f5a0)
	mov     r1, r5
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x74]
	ldr     r2, [r2, #0x14]
	bl      Function_200b1b8
.thumb
branch_22499b2: @ 22499b2 :thumb
	ldr     r0, [pc, #0x58] @ 0x2249a0c, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x40
	bl      Function_201a7cc
	cmp     r0, #0x0
	bne     branch_22499d0
	ldr     r0, [pc, #0x48] @ 0x2249a0c, (=0x224f5a0)
	mov     r2, #0x3
	ldr     r1, [r0, #0x0]
	ldr     r0, [r1, #0x68]
	add     r1, #0x40
	ldr     r0, [r0, #0x8]
	bl      Function_205d8f4
.thumb
branch_22499d0: @ 22499d0 :thumb
	ldr     r0, [pc, #0x38] @ 0x2249a0c, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x68]
	ldr     r0, [r0, #0xc]
	bl      LoadPlayerDataAdress
	mov     r1, r0
	ldr     r0, [pc, #0x2c] @ 0x2249a0c, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x40
	bl      Function_205d944
	ldr     r0, [pc, #0x20] @ 0x2249a0c, (=0x224f5a0)
	ldr     r4, [r0, #0x0]
	ldr     r0, [r4, #0x68]
	ldr     r0, [r0, #0xc]
	bl      LoadPlayerDataAdress
	mov     r2, r0
	mov     r0, r4
	ldr     r1, [r4, #0x14]
	add     r0, #0x40
	mov     r3, #0x1
	bl      Function_205d994
	ldr     r1, [pc, #0x8] @ 0x2249a0c, (=0x224f5a0)
	ldr     r1, [r1, #0x0]
	add     r1, #0x94
	strb    r0, [r1, #0x0]
	pop     {r3-r5,pc}
@ 0x2249a0c

.word 0x224f5a0 @ 0x2249a0c
.thumb
Function_2249a10: @ 2249a10 :thumb
	push    {r0-r3}
.thumb
Function_2249a12: @ 2249a12 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x34
	ldr     r0, [pc, #0x94] @ 0x2249aac, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x20
	bl      Function_201a7cc
	cmp     r0, #0x0
	bne     branch_2249a54
	ldr     r0, [pc, #0x84] @ 0x2249aac, (=0x224f5a0)
	add     r3, sp, #0x60
	ldr     r1, [r0, #0x0]
	add     r0, sp, #0x64
	ldrb    r0, [r0, #0x0]
	ldrb    r3, [r3, #0x0]
	mov     r2, #0x3
	str     r0, [sp, #0x0]
	add     r0, sp, #0x68
	ldrb    r0, [r0, #0x0]
	str     r0, [sp, #0x4]
	add     r0, sp, #0x6c
	ldrb    r0, [r0, #0x0]
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	add     r0, sp, #0x40
	ldrh    r0, [r0, #0x30]
	str     r0, [sp, #0x10]
	ldr     r0, [r1, #0x68]
	add     r1, #0x20
	ldr     r0, [r0, #0x8]
	bl      Function_201a7e8
.thumb
branch_2249a54: @ 2249a54 :thumb
	ldr     r0, [pc, #0x54] @ 0x2249aac, (=0x224f5a0)
	ldr     r2, [pc, #0x58] @ 0x2249ab0, (=0x3d9)
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	add     r0, #0x20
	mov     r3, #0xb
	bl      Function_200dc48
	add     r4, sp, #0x40
	add     r3, sp, #0x14
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [pc, #0x30] @ 0x2249aac, (=0x224f5a0)
	mov     r3, #0x4
	ldr     r1, [r0, #0x0]
	ldr     r0, [r1, #0x64]
	add     r1, #0x20
	str     r1, [sp, #0x20]
	str     r0, [sp, #0x14]
	mov     r1, #0x0
	mov     r0, r2
	mov     r2, r1
	bl      Function_200112c
	ldr     r1, [pc, #0x18] @ 0x2249aac, (=0x224f5a0)
	ldr     r2, [r1, #0x0]
	str     r0, [r2, #0x5c]
	ldr     r0, [r1, #0x0]
	add     r0, #0x20
	bl      Function_201a954
	add     sp, #0x34
	pop     {r3,r4}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x2249aaa


.align 2


.word 0x224f5a0 @ 0x2249aac
.word 0x3d9 @ 0x2249ab0
.thumb
Function_2249ab4: @ 2249ab4 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xd4] @ 0x2249b90, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2249ac4
	bl      ErrorHandling
branch_2249ac4: @ 2249ac4 :thumb
	mov     r0, #0x4
	mov     r1, #0x9c
	bl      malloc_maybe
	ldr     r1, [pc, #0xc0] @ 0x2249b90, (=0x224f5a0)
	mov     r2, #0x9c
	str     r0, [r1, #0x0]
	mov     r1, #0x0
	blx     MI_CpuFill8
	ldr     r0, [pc, #0xb4] @ 0x2249b90, (=0x224f5a0)
	mov     r2, #0x0
	ldr     r1, [r0, #0x0]
	mov     r3, #0x4
	add     r1, #0x88
	str     r2, [r1, #0x0]
	ldr     r1, [r0, #0x0]
	str     r4, [r1, #0x68]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1a
	add     r0, #0x97
	strb    r2, [r0, #0x0]
	ldr     r2, [pc, #0xa0] @ 0x2249b94, (=0x161)
	mov     r0, #0x1
	bl      Function_200b144
	ldr     r1, [pc, #0x94] @ 0x2249b90, (=0x224f5a0)
	ldr     r2, [r1, #0x0]
	str     r0, [r2, #0x74]
	ldr     r0, [r1, #0x0]
	ldr     r0, [r0, #0x68]
	bl      Function_203d174
	bl      LoadTrainerDataAdress
	ldr     r1, [pc, #0x84] @ 0x2249b90, (=0x224f5a0)
	ldr     r1, [r1, #0x0]
	str     r0, [r1, #0x78]
	mov     r0, #0x4
	bl      AllocTrainerData
	ldr     r1, [pc, #0x78] @ 0x2249b90, (=0x224f5a0)
	ldr     r2, [r1, #0x0]
	str     r0, [r2, #0x7c]
	ldr     r0, [r1, #0x0]
	add     r0, #0x20
	bl      Function_201a7a0
	ldr     r0, [pc, #0x68] @ 0x2249b90, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x30
	bl      Function_201a7a0
	ldr     r0, [pc, #0x60] @ 0x2249b90, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x40
	bl      Function_201a7a0
	mov     r0, #0x4
	bl      Function_200b358
	ldr     r1, [pc, #0x50] @ 0x2249b90, (=0x224f5a0)
	ldr     r1, [r1, #0x0]
	str     r0, [r1, #0x50]
	mov     r0, #0x4
	bl      Function_200b358
	ldr     r1, [pc, #0x44] @ 0x2249b90, (=0x224f5a0)
	ldr     r1, [r1, #0x0]
	str     r0, [r1, #0x54]
	mov     r0, #0x4
	bl      Function_200b358
	ldr     r1, [pc, #0x38] @ 0x2249b90, (=0x224f5a0)
	ldr     r2, [r1, #0x0]
	str     r0, [r2, #0x58]
	ldr     r0, [r1, #0x0]
	mov     r2, #0x0
	add     r0, #0x98
	strb    r2, [r0, #0x0]
	mov     r5, r2
.thumb
branch_2249b66: @ 2249b66 :thumb
	ldr     r0, [r1, #0x0]
	add     r0, r0, r2
	add     r0, #0x80
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r5, [r0, #0x0]
	cmp     r2, #0x8
	blt     branch_2249b66
	ldr     r6, [pc, #0x18] @ 0x2249b90, (=0x224f5a0)
	mov     r4, r5
	mov     r7, #0x8c
.thumb
branch_2249b7a: @ 2249b7a :thumb
	mov     r0, r7
	mov     r1, #0x4
	bl      Function_2023790
	ldr     r1, [r6, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	str     r0, [r1, r4]
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x8
	blt     branch_2249b7a
	pop     {r3-r7,pc}
@ 0x2249b90

.word 0x224f5a0 @ 0x2249b90
.word 0x161 @ 0x2249b94
.thumb
Function_2249b98: @ 2249b98 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	ldr     r6, [pc, #0x88] @ 0x2249c28, (=0x224f5a0)
	mov     r5, r4
.thumb
branch_2249ba0: @ 2249ba0 :thumb
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, r5]
	bl      Function_20237bc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_2249ba0
	ldr     r0, [pc, #0x74] @ 0x2249c28, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x7c]
	bl      free
	ldr     r0, [pc, #0x6c] @ 0x2249c28, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x50]
	cmp     r0, #0x0
	beq     branch_2249bd0
	bl      Function_200b3f0
	ldr     r0, [pc, #0x5c] @ 0x2249c28, (=0x224f5a0)
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	str     r1, [r0, #0x50]
.thumb
branch_2249bd0: @ 2249bd0 :thumb
	ldr     r0, [pc, #0x54] @ 0x2249c28, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x54]
	cmp     r0, #0x0
	beq     branch_2249be6
	bl      Function_200b3f0
	ldr     r0, [pc, #0x48] @ 0x2249c28, (=0x224f5a0)
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	str     r1, [r0, #0x54]
.thumb
branch_2249be6: @ 2249be6 :thumb
	ldr     r0, [pc, #0x40] @ 0x2249c28, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x58]
	cmp     r0, #0x0
	beq     branch_2249bfc
	bl      Function_200b3f0
	ldr     r0, [pc, #0x30] @ 0x2249c28, (=0x224f5a0)
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	str     r1, [r0, #0x58]
.thumb
branch_2249bfc: @ 2249bfc :thumb
	ldr     r0, [pc, #0x28] @ 0x2249c28, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x74]
	bl      Function_200b190
	ldr     r0, [pc, #0x20] @ 0x2249c28, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	ldr     r1, [r0, #0x4c]
	cmp     r1, #0x0
	beq     branch_2249c16
	add     r0, #0x40
	bl      Function_201a8fc
.thumb
branch_2249c16: @ 2249c16 :thumb
	ldr     r0, [pc, #0x10] @ 0x2249c28, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	bl      free
	ldr     r0, [pc, #0x8] @ 0x2249c28, (=0x224f5a0)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	pop     {r4-r6,pc}
@ 0x2249c26


.align 2


.word 0x224f5a0 @ 0x2249c28
.thumb
Function_2249c2c: @ 2249c2c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224b3fc
	mov     r2, r0
	ldr     r0, [r4, #0x68]
	add     r4, #0x91
	ldrb    r1, [r4, #0x0]
	bl      Function_2059748
	pop     {r4,pc}
@ 0x2249c42


.align 2, 0


.thumb
Function_2249c44: @ 2249c44 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x14] @ 0x2249c5c, (=0x224f5a0)
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	add     r0, #0x98
	strb    r1, [r0, #0x0]
	cmp     r2, #0x0
	bne     branch_2249c5a
	ldr     r0, [pc, #0x8] @ 0x2249c60, (=0x5dc)
	bl      Function_2005748
.thumb
branch_2249c5a: @ 2249c5a :thumb
	pop     {r3,pc}
@ 0x2249c5c

.word 0x224f5a0 @ 0x2249c5c
.word 0x5dc @ 0x2249c60
.thumb
Function_2249c64: @ 2249c64 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x3
	mov     r5, r0
	mov     r4, #0x0
	bl      Function_2001504
	cmp     r0, #0x0
	bls     branch_2249c92
	mov     r6, r4
	mov     r7, #0x3
.thumb
branch_2249c78: @ 2249c78 :thumb
	lsl     r2, r4, #24
	mov     r0, r5
	mov     r1, r6
	lsr     r2, r2, #24
	bl      Function_2249c94
	mov     r0, r5
	mov     r1, r7
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      Function_2001504
	cmp     r4, r0
	bcc     branch_2249c78
.thumb
branch_2249c92: @ 2249c92 :thumb
	pop     {r3-r7,pc}
@ 0x2249c94

.thumb
Function_2249c94: @ 2249c94 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r2
	bl      Function_2033808
	mov     r4, r0
	mov     r2, #0x0
	add     r0, sp, #0xc
	strh    r2, [r0, #0x0]
	ldr     r0, [pc, #0x160] @ 0x2249e08, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x5c]
	cmp     r0, #0x0
	beq     branch_2249cb6
	add     r1, sp, #0xc
	bl      Function_20014dc
.thumb
branch_2249cb6: @ 2249cb6 :thumb
	add     r0, sp, #0xc
	ldrh    r1, [r0, #0x0]
	add     r1, r1, r5
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x148] @ 0x2249e08, (=0x224f5a0)
	lsl     r5, r5, #4
	ldr     r0, [r0, #0x0]
	add     r0, #0x20
	bl      Function_201c294
	lsl     r0, r0, #3
	sub     r0, #0x8
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x12c] @ 0x2249e08, (=0x224f5a0)
	lsl     r3, r5, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	add     r0, #0x20
	mov     r2, #0x8
	lsr     r3, r3, #16
	bl      Function_201ae78
	add     r0, sp, #0xc
	ldrh    r2, [r0, #0x0]
	cmp     r2, r4
	bge     branch_2249db8
	ldr     r1, [pc, #0x114] @ 0x2249e08, (=0x224f5a0)
	mov     r0, r2
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0x7c]
	bl      Function_20339ac
	mov     r3, #0x2
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x100] @ 0x2249e08, (=0x224f5a0)
	add     r2, sp, #0xc
	ldr     r0, [r0, #0x0]
	ldrh    r2, [r2, #0x0]
	ldr     r0, [r0, #0x50]
	mov     r1, #0x0
	.hword  0x1c52 @ add r2, r2, #0x1
	bl      Function_200b60c
	ldr     r0, [pc, #0xec] @ 0x2249e08, (=0x224f5a0)
	mov     r1, #0x1
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x50]
	ldr     r2, [r2, #0x7c]
	bl      Function_200b498
	ldr     r0, [pc, #0xe0] @ 0x2249e08, (=0x224f5a0)
	mov     r1, #0x3f
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x74]
	ldr     r2, [r2, #0x4]
	bl      Function_200b1b8
	ldr     r0, [pc, #0xd0] @ 0x2249e08, (=0x224f5a0)
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x50]
	ldmia   r2!, {r1,r2}
	bl      Function_200c388
	ldr     r0, [pc, #0xc4] @ 0x2249e08, (=0x224f5a0)
	mov     r1, #0x0
	ldr     r2, [r0, #0x0]
	mov     r0, #0xff
	str     r5, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r2
	str     r1, [sp, #0x8]
	ldr     r2, [r2, #0x0]
	add     r0, #0x20
	mov     r3, #0x8
	bl      Function_201d738
	ldr     r0, [pc, #0xac] @ 0x2249e08, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x7c]
	bl      GetTrainerID
	mov     r2, r0
	mov     r1, #0x2
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x94] @ 0x2249e08, (=0x224f5a0)
	lsr     r2, r2, #16
	ldr     r0, [r0, #0x0]
	mov     r3, #0x5
	ldr     r0, [r0, #0x50]
	bl      Function_200b60c
	ldr     r0, [pc, #0x88] @ 0x2249e08, (=0x224f5a0)
	mov     r1, #0x41
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x74]
	ldr     r2, [r2, #0xc]
	bl      Function_200b1b8
	ldr     r0, [pc, #0x78] @ 0x2249e08, (=0x224f5a0)
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x50]
	ldr     r1, [r2, #0x8]
	ldr     r2, [r2, #0xc]
	bl      Function_200c388
	ldr     r0, [pc, #0x6c] @ 0x2249e08, (=0x224f5a0)
	mov     r1, #0x0
	ldr     r2, [r0, #0x0]
	mov     r0, #0xff
	str     r5, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, r2
	ldr     r2, [r2, #0x8]
	add     r0, #0x20
	mov     r3, #0x58
	bl      Function_201d738
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2249db8

.thumb
branch_2249db8: @ 2249db8 :thumb
	mov     r3, #0x2
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x44] @ 0x2249e08, (=0x224f5a0)
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	ldr     r0, [r0, #0x50]
	bl      Function_200b60c
	ldr     r0, [pc, #0x38] @ 0x2249e08, (=0x224f5a0)
	mov     r1, #0x40
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x74]
	ldr     r2, [r2, #0x4]
	bl      Function_200b1b8
	ldr     r0, [pc, #0x28] @ 0x2249e08, (=0x224f5a0)
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x50]
	ldmia   r2!, {r1,r2}
	bl      Function_200c388
	ldr     r0, [pc, #0x1c] @ 0x2249e08, (=0x224f5a0)
	mov     r1, #0x0
	ldr     r2, [r0, #0x0]
	mov     r0, #0xff
	str     r5, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r2
	str     r1, [sp, #0x8]
	ldr     r2, [r2, #0x0]
	add     r0, #0x20
	mov     r3, #0x8
	bl      Function_201d738
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2249e06


.align 2


.word 0x224f5a0 @ 0x2249e08
.thumb
Function_2249e0c: @ 2249e0c :thumb
	push    {r4,lr}
	add     sp, #-0x98
	mov     r4, r0
	ldr     r0, [pc, #0xb8] @ 0x2249ecc, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x30
	bl      Function_201a7cc
	cmp     r0, #0x0
	bne     branch_2249e46
	ldr     r0, [pc, #0xa8] @ 0x2249ecc, (=0x224f5a0)
	mov     r2, #0x3
	ldr     r1, [r0, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0xc9
	str     r0, [sp, #0x10]
	ldr     r0, [r1, #0x68]
	add     r1, #0x30
	ldr     r0, [r0, #0x8]
	mov     r3, #0x17
	bl      Function_201a7e8
.thumb
branch_2249e46: @ 2249e46 :thumb
	ldr     r0, [pc, #0x84] @ 0x2249ecc, (=0x224f5a0)
	ldr     r2, [pc, #0x84] @ 0x2249ed0, (=0x3d9)
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	add     r0, #0x30
	mov     r3, #0xb
	bl      Function_200dc48
	ldr     r0, [pc, #0x74] @ 0x2249ecc, (=0x224f5a0)
	mov     r1, #0xf
	ldr     r0, [r0, #0x0]
	add     r0, #0x30
	bl      Function_201ada4
	ldr     r0, [pc, #0x68] @ 0x2249ecc, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x30
	bl      Function_201a954
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x97
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x5c] @ 0x2249ed4, (=0x224a719)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_200d9e8
	ldr     r0, [pc, #0x4c] @ 0x2249ecc, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	bl      Function_2249ee0
	ldr     r4, [pc, #0x50] @ 0x2249ed8, (=0x224ef64)
	add     r3, sp, #0x14
	mov     r2, #0x10
.thumb
branch_2249e8c: @ 2249e8c :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2249e8c
	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0x30] @ 0x2249ecc, (=0x224f5a0)
	ldr     r1, [r0, #0x0]
	mov     r0, r1
	add     r0, #0x91
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x8
	bne     branch_2249eb4
	add     r1, #0x92
	ldrb    r0, [r1, #0x0]
	mov     r1, #0x0
	add     r0, #0x67
	bl      Function_2249960
	b       branch_2249ec0
@ 0x2249eb4

.thumb
branch_2249eb4: @ 2249eb4 :thumb
	lsl     r1, r0, #2
	add     r0, sp, #0x14
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bl      Function_2249960
.thumb
branch_2249ec0: @ 2249ec0 :thumb
	ldr     r0, [pc, #0x18] @ 0x2249edc, (=0x2249f55)
	bl      Function_224a530
	add     sp, #0x98
	pop     {r4,pc}
@ 0x2249eca


.align 2


.word 0x224f5a0 @ 0x2249ecc
.word 0x3d9 @ 0x2249ed0
.word 0x224a719 @ 0x2249ed4
.word 0x224ef64 @ 0x2249ed8
.word 0x2249f55 @ 0x2249edc
.thumb
Function_2249ee0: @ 2249ee0 :thumb
	push    {lr}
	add     sp, #-0xc
	ldr     r0, [pc, #0x68] @ 0x2249f50, (=0x224f5a0)
	mov     r1, #0x0
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x54]
	ldr     r2, [r2, #0x78]
	bl      Function_200b498
	ldr     r0, [pc, #0x5c] @ 0x2249f50, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x78]
	bl      GetTrainerID
	mov     r2, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	lsl     r2, r2, #16
	ldr     r0, [pc, #0x48] @ 0x2249f50, (=0x224f5a0)
	str     r1, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	lsr     r2, r2, #16
	ldr     r0, [r0, #0x54]
	mov     r3, #0x5
	bl      Function_200b60c
	ldr     r0, [pc, #0x38] @ 0x2249f50, (=0x224f5a0)
	mov     r1, #0x3e
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x74]
	ldr     r2, [r2, #0x18]
	bl      Function_200b1b8
	ldr     r0, [pc, #0x28] @ 0x2249f50, (=0x224f5a0)
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x54]
	ldr     r1, [r2, #0x1c]
	ldr     r2, [r2, #0x18]
	bl      Function_200c388
	ldr     r0, [pc, #0x1c] @ 0x2249f50, (=0x224f5a0)
	mov     r3, #0x2
	ldr     r2, [r0, #0x0]
	mov     r1, #0x0
	str     r3, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, r2
	str     r1, [sp, #0x8]
	ldr     r2, [r2, #0x1c]
	add     r0, #0x30
	bl      Function_201d738
	add     sp, #0xc
	pop     {pc}
@ 0x2249f4e


.align 2


.word 0x224f5a0 @ 0x2249f50
.thumb
Function_2249f54: @ 2249f54 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	ldr     r0, [pc, #0x94] @ 0x2249ff0, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_2249fec
	mov     r0, #0x10
	mov     r1, #0x4
	bl      Function_2013a04
	ldr     r4, [pc, #0x7c] @ 0x2249ff0, (=0x224f5a0)
	mov     r5, #0x0
	ldr     r1, [r4, #0x0]
	mov     r6, #0x2
	str     r0, [r1, #0x64]
	mov     r7, #0x1
.thumb
branch_2249f7c: @ 2249f7c :thumb
	str     r6, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x50]
	add     r2, r5, #0x1
	mov     r3, r6
	bl      Function_200b60c
	ldr     r2, [r4, #0x0]
	mov     r1, #0x40
	ldr     r0, [r2, #0x74]
	ldr     r2, [r2, #0x4]
	bl      Function_200b1b8
	ldr     r2, [r4, #0x0]
	ldr     r0, [r2, #0x50]
	ldmia   r2!, {r1,r2}
	bl      Function_200c388
	ldr     r1, [r4, #0x0]
	mov     r2, #0x0
	ldr     r0, [r1, #0x64]
	ldr     r1, [r1, #0x0]
	bl      Function_2013a6c
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x10
	blt     branch_2249f7c
	mov     r1, #0x1
	str     r1, [sp, #0x10]
	mov     r0, #0x2
	str     r0, [sp, #0x14]
	mov     r0, #0x14
	str     r0, [sp, #0x18]
	mov     r0, #0xa
	mov     r4, sp
	str     r0, [sp, #0x1c]
	sub     r4, #0x10
	ldr     r3, [pc, #0x28] @ 0x2249ff4, (=0x224ed34)
	str     r1, [sp, #0x20]
	mov     r2, r4
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r4!, {r0-r3}
	bl      Function_2249a10
	ldr     r0, [pc, #0x10] @ 0x2249ff8, (=0x2249ffd)
	bl      Function_224a530
.thumb
branch_2249fec: @ 2249fec :thumb
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2249ff0

.word 0x224f5a0 @ 0x2249ff0
.word 0x224ed34 @ 0x2249ff4
.word 0x2249ffd @ 0x2249ff8
.thumb
Function_2249ffc: @ 2249ffc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_2249ee0
	bl      Function_20360f0
	cmp     r0, #0x0
	beq     branch_224a028
	ldr     r0, [pc, #0xa8] @ 0x224a0bc, (=0x224f5a0)
	mov     r1, #0x3
	ldr     r0, [r0, #0x0]
	add     r0, #0x88
	str     r1, [r0, #0x0]
	bl      Function_224a528
	mov     r0, r5
	mov     r1, r4
	bl      Function_224afd8
	pop     {r3-r5,pc}
@ 0x224a028

.thumb
branch_224a028: @ 224a028 :thumb
	bl      Function_2033870
	cmp     r0, #0x0
	beq     branch_224a036
	mov     r0, #0x0
	mvn     r0, r0
	b       branch_224a040
@ 0x224a036

.thumb
branch_224a036: @ 224a036 :thumb
	ldr     r0, [pc, #0x84] @ 0x224a0bc, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x5c]
	bl      Function_2001288
.thumb
branch_224a040: @ 224a040 :thumb
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_224a056
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	bne     branch_224a074
	mov     r0, r4
	bl      Function_224a0c8
	pop     {r3-r5,pc}
@ 0x224a056

.thumb
branch_224a056: @ 224a056 :thumb
	ldr     r0, [pc, #0x68] @ 0x224a0c0, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [pc, #0x5c] @ 0x224a0bc, (=0x224f5a0)
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	add     r0, #0x88
	str     r1, [r0, #0x0]
	bl      Function_224a528
	mov     r0, r5
	mov     r1, r4
	bl      Function_224afd8
	pop     {r3-r5,pc}
@ 0x224a074

.thumb
branch_224a074: @ 224a074 :thumb
	ldr     r0, [pc, #0x48] @ 0x224a0c0, (=0x5dc)
	bl      Function_2005748
	mov     r1, r4
	ldr     r0, [r4, #0x5c]
	add     r1, #0x8e
	bl      Function_20014d0
	bl      Function_2033808
	mov     r1, r4
	add     r1, #0x8e
	ldrh    r1, [r1, #0x0]
	cmp     r0, r1
	ble     branch_224a0ba
	mov     r0, r4
	bl      Function_224a0c8
	mov     r0, r4
	add     r0, #0x8e
	ldrh    r0, [r0, #0x0]
	bl      Function_203383c
	mov     r1, r4
	add     r1, #0x8e
	add     r4, #0x8e
	strh    r0, [r1, #0x0]
	ldrh    r0, [r4, #0x0]
	bl      Function_2059788
	bl      Function_20365d0
	ldr     r0, [pc, #0xc] @ 0x224a0c4, (=0x224a129)
	bl      Function_224a530
.thumb
branch_224a0ba: @ 224a0ba :thumb
	pop     {r3-r5,pc}
@ 0x224a0bc

.word 0x224f5a0 @ 0x224a0bc
.word 0x5dc @ 0x224a0c0
.word 0x224a129 @ 0x224a0c4
.thumb
Function_224a0c8: @ 224a0c8 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	bl      Function_2033870
	cmp     r0, #0x0
	bne     branch_224a0e0
	ldr     r0, [pc, #0x4c] @ 0x224a124, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x98
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_224a11e
.thumb
branch_224a0e0: @ 224a0e0 :thumb
	ldr     r0, [pc, #0x40] @ 0x224a124, (=0x224f5a0)
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	add     r0, #0x98
	strb    r1, [r0, #0x0]
	bl      Function_2033884
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x50
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x224a124, (=0x224f5a0)
	mov     r1, #0xf
	ldr     r0, [r0, #0x0]
	mov     r2, #0x8
	add     r0, #0x20
	mov     r3, #0x0
	bl      Function_201ae78
	ldr     r0, [pc, #0x1c] @ 0x224a124, (=0x224f5a0)
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	mov     r2, r1
	ldr     r0, [r0, #0x5c]
	bl      Function_2249c64
	ldr     r0, [pc, #0xc] @ 0x224a124, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x20
	bl      Function_201a954
.thumb
branch_224a11e: @ 224a11e :thumb
	add     sp, #0x8
	pop     {r3,pc}
@ 0x224a122


.align 2


.word 0x224f5a0 @ 0x224a124
.thumb
Function_224a128: @ 224a128 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	bl      Function_20360f0
	cmp     r0, #0x0
	beq     branch_224a152
	mov     r0, r5
	mov     r1, r4
	bl      Function_224afd8
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_2249960
	mov     r0, r4
	bl      Function_224b348
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x224a152

.thumb
branch_224a152: @ 224a152 :thumb
	bl      Function_203608c
	bl      Function_2032ee8
	cmp     r0, #0x0
	beq     branch_224a238
	bl      Function_20365d0
	ldr     r1, [pc, #0xd8] @ 0x224a23c, (=0x224f5a0)
	mov     r0, r4
	add     r0, #0x8e
	ldr     r1, [r1, #0x0]
	ldrh    r0, [r0, #0x0]
	ldr     r1, [r1, #0x7c]
	bl      Function_20339ac
	ldr     r2, [pc, #0xc8] @ 0x224a23c, (=0x224f5a0)
	ldr     r0, [r4, #0x58]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x1
	ldr     r2, [r2, #0x7c]
	bl      Function_200b498
	bl      Function_224b3d4
	cmp     r0, #0x2
	bgt     branch_224a192
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_2249960
	b       branch_224a232
@ 0x224a192

.thumb
branch_224a192: @ 224a192 :thumb
	ldr     r0, [pc, #0xa8] @ 0x224a23c, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	bne     branch_224a1ae
	ldr     r0, [pc, #0x98] @ 0x224a23c, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_201d730
.thumb
branch_224a1ae: @ 224a1ae :thumb
	ldr     r0, [pc, #0x8c] @ 0x224a23c, (=0x224f5a0)
	mov     r1, #0x2
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x74]
	ldr     r2, [r2, #0x10]
	bl      Function_200b1b8
	ldr     r0, [pc, #0x7c] @ 0x224a23c, (=0x224f5a0)
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x58]
	ldr     r1, [r2, #0x14]
	ldr     r2, [r2, #0x10]
	bl      Function_200c388
	ldr     r0, [pc, #0x70] @ 0x224a23c, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x40
	bl      Function_201a7cc
	cmp     r0, #0x0
	bne     branch_224a1e8
	ldr     r0, [pc, #0x60] @ 0x224a23c, (=0x224f5a0)
	mov     r2, #0x3
	ldr     r1, [r0, #0x0]
	ldr     r0, [r1, #0x68]
	add     r1, #0x40
	ldr     r0, [r0, #0x8]
	bl      Function_205d8f4
.thumb
branch_224a1e8: @ 224a1e8 :thumb
	ldr     r0, [pc, #0x50] @ 0x224a23c, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x68]
	ldr     r0, [r0, #0xc]
	bl      LoadPlayerDataAdress
	mov     r1, r0
	ldr     r0, [pc, #0x44] @ 0x224a23c, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x40
	bl      Function_205d944
	mov     r0, #0x1
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002ae4
	mov     r0, #0x0
	bl      Function_2002b20
	ldr     r0, [pc, #0x28] @ 0x224a23c, (=0x224f5a0)
	mov     r3, #0x0
	ldr     r2, [r0, #0x0]
	mov     r1, #0x1
	str     r3, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, r2
	str     r3, [sp, #0x8]
	ldr     r2, [r2, #0x14]
	add     r0, #0x40
	bl      Function_201d738
	ldr     r1, [pc, #0x10] @ 0x224a23c, (=0x224f5a0)
	ldr     r1, [r1, #0x0]
	add     r1, #0x94
	strb    r0, [r1, #0x0]
.thumb
branch_224a232: @ 224a232 :thumb
	ldr     r0, [pc, #0xc] @ 0x224a240, (=0x224a34d)
	bl      Function_224a530
.thumb
branch_224a238: @ 224a238 :thumb
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x224a23c

.word 0x224f5a0 @ 0x224a23c
.word 0x224a34d @ 0x224a240
.thumb
Function_224a244: @ 224a244 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, r1
	bl      Function_20360f0
	cmp     r0, #0x0
	beq     branch_224a26a
	mov     r0, r6
	mov     r1, r4
	bl      Function_224afd8
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_2249960
	mov     r0, r4
	bl      Function_224b348
	b       branch_224a33e
@ 0x224a26a

.thumb
branch_224a26a: @ 224a26a :thumb
	mov     r0, #0x0
	mov     r1, #0x3
	bl      Function_20365a8
	mov     r5, r0
	bl      Function_203608c
	cmp     r5, r0
	bne     branch_224a290
	bl      Function_20365d0
	mov     r0, r6
	mov     r1, r4
	bl      Function_224afd8
	mov     r0, r4
	bl      Function_224b2dc
	b       branch_224a33e
@ 0x224a290

.thumb
branch_224a290: @ 224a290 :thumb
	mov     r0, #0x0
	mov     r1, #0x5
	bl      Function_20365a8
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_224a2b4
	bl      Function_20365d0
	mov     r0, r6
	mov     r1, r4
	bl      Function_224afd8
	mov     r0, r4
	bl      Function_224b2dc
	b       branch_224a33e
@ 0x224a2b4

.thumb
branch_224a2b4: @ 224a2b4 :thumb
	mov     r0, #0x0
	mov     r1, #0x4
	bl      Function_20365a8
	mov     r5, r0
	bl      Function_203608c
	cmp     r5, r0
	bne     branch_224a2d6
	mov     r0, #0x61
	mov     r1, #0x0
	bl      Function_2249960
	ldr     r0, [pc, #0x74] @ 0x224a344, (=0x224ab65)
	bl      Function_224a530
	b       branch_224a33e
@ 0x224a2d6

.thumb
branch_224a2d6: @ 224a2d6 :thumb
	mov     r0, #0x0
	mov     r1, #0x2
	bl      Function_20365a8
	mov     r5, r0
	bl      Function_203608c
	cmp     r5, r0
	bne     branch_224a322
	bl      Function_20365d0
	bl      Function_2032e64
	mov     r1, r4
	add     r1, #0x90
	strb    r0, [r1, #0x0]
	ldr     r0, [pc, #0x50] @ 0x224a348, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	bne     branch_224a312
	ldr     r0, [pc, #0x40] @ 0x224a348, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_201d730
.thumb
branch_224a312: @ 224a312 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_224afd8
	mov     r0, r4
	bl      Function_224b08c
	b       branch_224a33e
@ 0x224a322

.thumb
branch_224a322: @ 224a322 :thumb
	bl      Function_224b4e4
	cmp     r0, #0x0
	beq     branch_224a33a
	mov     r0, r6
	mov     r1, r4
	bl      Function_224afd8
	mov     r0, r4
	bl      Function_224b2dc
	b       branch_224a33e
@ 0x224a33a

.thumb
branch_224a33a: @ 224a33a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224a33e

.thumb
branch_224a33e: @ 224a33e :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x224a342


.align 2


.word 0x224ab65 @ 0x224a344
.word 0x224f5a0 @ 0x224a348
.thumb
Function_224a34c: @ 224a34c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x34] @ 0x224a388, (=0x224f5a0)
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_224a386
	mov     r0, r5
	mov     r1, r4
	bl      Function_224a244
	cmp     r0, #0x0
	bne     branch_224a386
	ldr     r0, [pc, #0x1c] @ 0x224a38c, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_224a386
	mov     r0, #0x3
	mov     r1, #0x0
	bl      Function_2249960
	ldr     r0, [pc, #0xc] @ 0x224a390, (=0x224a395)
	bl      Function_224a530
.thumb
branch_224a386: @ 224a386 :thumb
	pop     {r3-r5,pc}
@ 0x224a388

.word 0x224f5a0 @ 0x224a388
.word 0x21bf67c @ 0x224a38c
.word 0x224a395 @ 0x224a390
.thumb
Function_224a394: @ 224a394 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	bl      Function_224a244
	cmp     r0, #0x0
	bne     branch_224a3d0
	ldr     r0, [pc, #0x30] @ 0x224a3d4, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_224a3d0
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x224a3d4, (=0x224f5a0)
	ldr     r1, [pc, #0x1c] @ 0x224a3d8, (=Unknown_224ed0c)
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x224a3dc, (=0x3d9)
	ldr     r0, [r0, #0x68]
	mov     r3, #0xb
	ldr     r0, [r0, #0x8]
	bl      Function_2002100
	str     r0, [r4, #0x60]
	ldr     r0, [pc, #0x14] @ 0x224a3e0, (=0x224a3e5)
	bl      Function_224a530
branch_224a3d0: @ 224a3d0 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224a3d4

.word 0x224f5a0 @ 0x224a3d4
.word Unknown_224ed0c @ 0x224a3d8
.word 0x3d9 @ 0x224a3dc
.word 0x224a3e5 @ 0x224a3e0



.thumb
Function_224a3e4: @ 224a3e4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_224a244
	cmp     r0, #0x0
	ldr     r0, [r4, #0x60]
	beq     branch_224a400
	mov     r1, #0x4
	bl      Function_2002154
	mov     r0, #0x0
	str     r0, [r4, #0x60]
	pop     {r3-r5,pc}
@ 0x224a400

.thumb
branch_224a400: @ 224a400 :thumb
	mov     r1, #0x4
	bl      Function_2002114
	cmp     r0, #0x0
	bne     branch_224a422
	mov     r0, r5
	mov     r1, r4
	bl      Function_224afd8
	mov     r0, #0x6
	mov     r1, #0x0
	bl      Function_2249960
	mov     r0, r4
	bl      Function_224b348
	pop     {r3-r5,pc}
@ 0x224a422

.thumb
branch_224a422: @ 224a422 :thumb
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_224a430
	ldr     r0, [pc, #0x8] @ 0x224a434, (=0x224a129)
	bl      Function_224a530
.thumb
branch_224a430: @ 224a430 :thumb
	pop     {r3-r5,pc}
@ 0x224a432


.align 2


.word Function_224a128+1 @ =0x224a129, 0x224a434
.thumb
Function_224a438: @ 224a438 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r2
	mov     r2, #0x0
	add     r0, sp, #0xc
	strh    r2, [r0, #0x0]
	ldr     r0, [pc, #0xc4] @ 0x224a50c, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x5c]
	cmp     r0, #0x0
	beq     branch_224a454
	add     r1, sp, #0xc
	bl      Function_20014dc
.thumb
branch_224a454: @ 224a454 :thumb
	add     r0, sp, #0xc
	ldrh    r1, [r0, #0x0]
	add     r1, r1, r4
	strh    r1, [r0, #0x0]
	ldrh    r0, [r0, #0x0]
	bl      Function_2032ee8
	cmp     r0, #0x0
	beq     branch_224a506
	add     r0, sp, #0xc
	ldrh    r0, [r0, #0x0]
	bl      Function_2032ee8
	mov     r2, r0
	ldr     r0, [pc, #0x98] @ 0x224a50c, (=0x224f5a0)
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x50]
	bl      Function_200b498
	ldr     r0, [pc, #0x8c] @ 0x224a50c, (=0x224f5a0)
	mov     r1, #0x42
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x74]
	ldr     r2, [r2, #0x4]
	bl      Function_200b1b8
	ldr     r0, [pc, #0x80] @ 0x224a50c, (=0x224f5a0)
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x50]
	ldmia   r2!, {r1,r2}
	bl      Function_200c388
	ldr     r0, [pc, #0x74] @ 0x224a50c, (=0x224f5a0)
	lsl     r4, r4, #4
	ldr     r2, [r0, #0x0]
	mov     r1, #0x0
	str     r4, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, r2
	str     r1, [sp, #0x8]
	ldr     r2, [r2, #0x0]
	add     r0, #0x20
	mov     r3, #0x8
	bl      Function_201d738
	add     r0, sp, #0xc
	ldrh    r0, [r0, #0x0]
	bl      Function_2032ee8
	bl      GetSecretTrainerID
	mov     r1, #0x2
	mov     r2, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x44] @ 0x224a50c, (=0x224f5a0)
	mov     r3, #0x5
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x50]
	bl      Function_200b60c
	ldr     r0, [pc, #0x38] @ 0x224a50c, (=0x224f5a0)
	mov     r1, #0x41
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x74]
	ldr     r2, [r2, #0xc]
	bl      Function_200b1b8
	ldr     r0, [pc, #0x28] @ 0x224a50c, (=0x224f5a0)
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x50]
	ldr     r1, [r2, #0x8]
	ldr     r2, [r2, #0xc]
	bl      Function_200c388
	ldr     r0, [pc, #0x1c] @ 0x224a50c, (=0x224f5a0)
	mov     r1, #0x0
	ldr     r2, [r0, #0x0]
	mov     r3, #0x48
	str     r4, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, r2
	str     r1, [sp, #0x8]
	ldr     r2, [r2, #0x8]
	add     r0, #0x20
	bl      Function_201d738
.thumb
branch_224a506: @ 224a506 :thumb
	add     sp, #0x10
	pop     {r4,pc}
@ 0x224a50a


.align 2


.word 0x224f5a0 @ 0x224a50c
.thumb
Function_224a510: @ 224a510 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224b3fc
	mov     r2, r0
	ldr     r0, [r4, #0x68]
	add     r4, #0x91
	ldrb    r1, [r4, #0x0]
	bl      Function_2059708
	pop     {r4,pc}
@ 0x224a526


.align 2, 0


.thumb
Function_224a528: @ 224a528 :thumb
	ldr     r3, [pc, #0x0] @ 0x224a52c, (=0x205987d)
	bx      r3
@ 0x224a52c

.word 0x205987d @ 0x224a52c
.thumb
Function_224a530: @ 224a530 :thumb
	ldr     r1, [pc, #0x4] @ 0x224a538, (=0x224f5a0)
	ldr     r1, [r1, #0x0]
	str     r0, [r1, #0x6c]
	bx      lr
@ 0x224a538

.word 0x224f5a0 @ 0x224a538
.thumb
Function_224a53c: @ 224a53c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r0, [pc, #0x7c] @ 0x224a5c0, (=0x224a719)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_200d9e8
	bl      Function_224a5d0
	ldr     r0, [pc, #0x70] @ 0x224a5c4, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x30
	bl      Function_201a7cc
	cmp     r0, #0x0
	bne     branch_224a584
	ldr     r0, [pc, #0x64] @ 0x224a5c4, (=0x224f5a0)
	mov     r2, #0x3
	ldr     r1, [r0, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0xcd
	str     r0, [sp, #0x10]
	ldr     r0, [r1, #0x68]
	add     r1, #0x30
	ldr     r0, [r0, #0x8]
	mov     r3, #0x16
	bl      Function_201a7e8
.thumb
branch_224a584: @ 224a584 :thumb
	ldr     r0, [pc, #0x3c] @ 0x224a5c4, (=0x224f5a0)
	ldr     r2, [pc, #0x40] @ 0x224a5c8, (=0x3d9)
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	add     r0, #0x30
	mov     r3, #0xb
	bl      Function_200dc48
	ldr     r0, [pc, #0x2c] @ 0x224a5c4, (=0x224f5a0)
	mov     r1, #0xf
	ldr     r0, [r0, #0x0]
	add     r0, #0x30
	bl      Function_201ada4
	ldr     r0, [pc, #0x20] @ 0x224a5c4, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x30
	bl      Function_201a954
	mov     r0, #0x1
	add     r4, #0x97
	strb    r0, [r4, #0x0]
	mov     r0, #0x0
	bl      Function_2032e1c
	ldr     r0, [pc, #0x14] @ 0x224a5cc, (=0x224a72d)
	bl      Function_224a530
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x224a5c0

.word 0x224a719 @ 0x224a5c0
.word 0x224f5a0 @ 0x224a5c4
.word 0x3d9 @ 0x224a5c8
.word 0x224a72d @ 0x224a5cc
.thumb
Function_224a5d0: @ 224a5d0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x84
	ldr     r4, [pc, #0x6c] @ 0x224a644, (=0x224edd8)
	add     r3, sp, #0x0
	mov     r2, #0x10
.thumb
branch_224a5da: @ 224a5da :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224a5da
	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0x60] @ 0x224a648, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x91
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x21
	bcc     branch_224a5f6
	bl      ErrorHandling
.thumb
branch_224a5f6: @ 224a5f6 :thumb
	ldr     r0, [pc, #0x50] @ 0x224a648, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x91
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x8
	bne     branch_224a632
	bl      Function_2032e64
	cmp     r0, #0x1
	ble     branch_224a61e
	ldr     r0, [pc, #0x3c] @ 0x224a648, (=0x224f5a0)
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	add     r0, #0x92
	ldrb    r0, [r0, #0x0]
	add     r0, #0x6c
	bl      Function_2249960
	add     sp, #0x84
	pop     {r3,r4,pc}
@ 0x224a61e

.thumb
branch_224a61e: @ 224a61e :thumb
	ldr     r0, [pc, #0x28] @ 0x224a648, (=0x224f5a0)
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	add     r0, #0x92
	ldrb    r0, [r0, #0x0]
	add     r0, #0x62
	bl      Function_2249960
	add     sp, #0x84
	pop     {r3,r4,pc}
@ 0x224a632

.thumb
branch_224a632: @ 224a632 :thumb
	lsl     r1, r0, #2
	add     r0, sp, #0x0
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bl      Function_2249960
	add     sp, #0x84
	pop     {r3,r4,pc}
@ 0x224a642


.align 2


.word 0x224edd8 @ 0x224a644
.word 0x224f5a0 @ 0x224a648
.thumb
Function_224a64c: @ 224a64c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	bl      Function_2032e64
	mov     r4, r0
	bl      Function_224b3d4
	cmp     r4, r0
	blt     branch_224a668
	bl      Function_2032e64
	mov     r2, r0
	mov     r4, #0x44
	b       branch_224a676
@ 0x224a668

.thumb
branch_224a668: @ 224a668 :thumb
	bl      Function_224b3d4
	mov     r4, r0
	bl      Function_2032e64
	sub     r2, r4, r0
	mov     r4, #0x43
.thumb
branch_224a676: @ 224a676 :thumb
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x50] @ 0x224a6d0, (=0x224f5a0)
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	mov     r3, #0x2
	ldr     r0, [r0, #0x54]
	bl      Function_200b60c
	ldr     r0, [pc, #0x40] @ 0x224a6d0, (=0x224f5a0)
	mov     r1, #0xf
	ldr     r0, [r0, #0x0]
	add     r0, #0x30
	bl      Function_201ada4
	ldr     r0, [pc, #0x34] @ 0x224a6d0, (=0x224f5a0)
	mov     r1, r4
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x74]
	ldr     r2, [r2, #0x1c]
	bl      Function_200b1b8
	ldr     r0, [pc, #0x28] @ 0x224a6d0, (=0x224f5a0)
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, #0x54]
	ldr     r1, [r2, #0x18]
	ldr     r2, [r2, #0x1c]
	bl      Function_200c388
	ldr     r0, [pc, #0x18] @ 0x224a6d0, (=0x224f5a0)
	mov     r3, #0x2
	ldr     r2, [r0, #0x0]
	mov     r1, #0x0
	str     r3, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, r2
	str     r1, [sp, #0x8]
	ldr     r2, [r2, #0x18]
	add     r0, #0x30
	bl      Function_201d738
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x224a6d0

.word 0x224f5a0 @ 0x224a6d0
.thumb
Function_224a6d4: @ 224a6d4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x84
	ldr     r6, [pc, #0x38] @ 0x224a714, (=0x224ed54)
	mov     r2, r0
	mov     r4, r1
	add     r5, sp, #0x0
	mov     r3, #0x10
.thumb
branch_224a6e2: @ 224a6e2 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	.hword  0x1e5b @ sub r3, r3, #0x1
	bne     branch_224a6e2
	ldr     r0, [r6, #0x0]
	str     r0, [r5, #0x0]
	mov     r0, r2
	bl      Function_2032ee8
	mov     r2, r0
	beq     branch_224a700
	ldr     r0, [r4, #0x58]
	mov     r1, #0x1
	bl      Function_200b498
.thumb
branch_224a700: @ 224a700 :thumb
	add     r4, #0x91
	ldrb    r0, [r4, #0x0]
	lsl     r1, r0, #2
	add     r0, sp, #0x0
	ldr     r0, [r0, r1]
	mov     r1, #0x1
	bl      Function_2249960
	add     sp, #0x84
	pop     {r3-r6,pc}
@ 0x224a714

.word 0x224ed54 @ 0x224a714
.thumb
Function_224a718: @ 224a718 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0xc] @ 0x224a728, (=0x224f5a0)
	ldr     r2, [r2, #0x0]
	ldr     r2, [r2, #0x6c]
	cmp     r2, #0x0
	beq     branch_224a726
	blx     r2
.thumb
branch_224a726: @ 224a726 :thumb
	pop     {r3,pc}
@ 0x224a728

.word 0x224f5a0 @ 0x224a728
.thumb
Function_224a72c: @ 224a72c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r0, r1
	bl      Function_224a64c
	ldr     r0, [pc, #0x8c] @ 0x224a7c4, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_224a7c0
	mov     r0, #0x5
	mov     r1, #0x4
	bl      Function_2013a04
	ldr     r4, [pc, #0x74] @ 0x224a7c4, (=0x224f5a0)
	mov     r5, #0x0
	ldr     r1, [r4, #0x0]
	mov     r6, #0x45
	str     r0, [r1, #0x64]
	mov     r7, r5
.thumb
branch_224a75a: @ 224a75a :thumb
	ldr     r1, [r4, #0x0]
	mov     r2, r6
	ldr     r0, [r1, #0x64]
	ldr     r1, [r1, #0x74]
	mov     r3, r7
	bl      Function_2013a4c
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x5
	blt     branch_224a75a
	ldr     r1, [pc, #0x54] @ 0x224a7c4, (=0x224f5a0)
	mov     r2, #0x1
	ldr     r0, [r1, #0x0]
	mov     r3, #0x0
	add     r0, #0x98
	strb    r2, [r0, #0x0]
	mov     r2, r3
.thumb
branch_224a77c: @ 224a77c :thumb
	ldr     r0, [r1, #0x0]
	add     r0, r0, r3
	add     r0, #0x80
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r2, [r0, #0x0]
	cmp     r3, #0x8
	blt     branch_224a77c
	mov     r1, #0x1
	str     r1, [sp, #0x10]
	mov     r0, #0x2
	str     r0, [sp, #0x14]
	mov     r0, #0x11
	str     r0, [sp, #0x18]
	mov     r0, #0xc
	mov     r4, sp
	str     r0, [sp, #0x1c]
	sub     r4, #0x10
	ldr     r3, [pc, #0x28] @ 0x224a7c8, (=0x224ed14)
	str     r1, [sp, #0x20]
	mov     r2, r4
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r4!, {r0-r3}
	bl      Function_2249a10
	ldr     r0, [pc, #0x10] @ 0x224a7cc, (=0x224a7d1)
	bl      Function_224a530
.thumb
branch_224a7c0: @ 224a7c0 :thumb
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x224a7c4

.word 0x224f5a0 @ 0x224a7c4
.word 0x224ed14 @ 0x224a7c8
.word 0x224a7d1 @ 0x224a7cc
.thumb
Function_224a7d0: @ 224a7d0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x8c
	str     r0, [sp, #0x0]
	mov     r0, r1
	str     r1, [sp, #0x4]
	bl      Function_224a64c
	mov     r7, #0x1
	ldr     r4, [pc, #0x180] @ 0x224a964, (=0x224f5a0)
	mov     r5, #0x0
	mov     r6, r7
.thumb
branch_224a7e6: @ 224a7e6 :thumb
	mov     r0, r5
	bl      Function_2032dc4
	cmp     r0, #0x0
	beq     branch_224a804
	cmp     r5, #0x0
	beq     branch_224a804
	ldr     r0, [r4, #0x0]
	add     r0, r0, r5
	add     r0, #0x80
	strb    r6, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	add     r0, #0x98
	strb    r6, [r0, #0x0]
	b       branch_224a84e
@ 0x224a804

.thumb
branch_224a804: @ 224a804 :thumb
	mov     r0, r5
	bl      Function_2032ee8
	cmp     r0, #0x0
	beq     branch_224a828
	ldr     r1, [r4, #0x0]
	add     r0, r1, r5
	add     r0, #0x80
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_224a828
	add     r0, r1, r5
	add     r0, #0x80
	strb    r7, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	add     r0, #0x98
	strb    r7, [r0, #0x0]
	b       branch_224a84e
@ 0x224a828

.thumb
branch_224a828: @ 224a828 :thumb
	mov     r0, r5
	bl      Function_2032ee8
	cmp     r0, #0x0
	bne     branch_224a84e
	ldr     r1, [r4, #0x0]
	add     r0, r1, r5
	add     r0, #0x80
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_224a84e
	add     r1, r1, r5
	add     r1, #0x80
	mov     r0, #0x0
	strb    r0, [r1, #0x0]
	ldr     r1, [r4, #0x0]
	mov     r0, #0x1
	add     r1, #0x98
	strb    r0, [r1, #0x0]
.thumb
branch_224a84e: @ 224a84e :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x8
	blt     branch_224a7e6
	ldr     r1, [pc, #0x10c] @ 0x224a964, (=0x224f5a0)
	ldr     r2, [r1, #0x0]
	mov     r0, r2
	add     r0, #0x98
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_224a8a6
	mov     r0, #0x0
	add     r2, #0x98
	strb    r0, [r2, #0x0]
	ldr     r0, [r1, #0x0]
	ldr     r0, [r0, #0x5c]
	bl      Function_20013ac
	ldr     r0, [pc, #0xf0] @ 0x224a964, (=0x224f5a0)
	mov     r1, #0x3
	ldr     r0, [r0, #0x0]
	mov     r5, #0x0
	ldr     r0, [r0, #0x5c]
	bl      Function_2001504
	cmp     r0, #0x0
	bls     branch_224a8a6
	ldr     r4, [pc, #0xe0] @ 0x224a964, (=0x224f5a0)
	mov     r6, r5
	mov     r7, #0x3
.thumb
branch_224a888: @ 224a888 :thumb
	ldr     r0, [r4, #0x0]
	lsl     r2, r5, #24
	ldr     r0, [r0, #0x5c]
	mov     r1, r6
	lsr     r2, r2, #24
	bl      Function_224a438
	ldr     r0, [r4, #0x0]
	mov     r1, r7
	ldr     r0, [r0, #0x5c]
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      Function_2001504
	cmp     r5, r0
	bcc     branch_224a888
.thumb
branch_224a8a6: @ 224a8a6 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x5c]
	bl      Function_2001288
	mov     r4, r0
	bl      Function_2032e44
	cmp     r0, #0xff
	beq     branch_224a8de
	bl      Function_2032e44
	ldr     r1, [sp, #0x4]
	add     r1, #0x95
	strb    r0, [r1, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x224a968, (=0x60d)
	bl      Function_2005748
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x4]
	add     r0, #0x95
	ldrb    r0, [r0, #0x0]
	bl      Function_224a6d4
	ldr     r0, [pc, #0x94] @ 0x224a96c, (=0x224af85)
	bl      Function_224a530
	add     sp, #0x8c
	pop     {r4-r7,pc}
@ 0x224a8de

.thumb
branch_224a8de: @ 224a8de :thumb
	bl      Function_20360f0
	cmp     r0, #0x0
	beq     branch_224a900
	bl      Function_224a528
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      Function_224afd8
	ldr     r0, [pc, #0x70] @ 0x224a964, (=0x224f5a0)
	mov     r1, #0x3
	ldr     r0, [r0, #0x0]
	add     sp, #0x8c
	add     r0, #0x88
	str     r1, [r0, #0x0]
	pop     {r4-r7,pc}
@ 0x224a900

.thumb
branch_224a900: @ 224a900 :thumb
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_224a910
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	beq     branch_224a95e
	b       branch_224a91a
@ 0x224a910

.thumb
branch_224a910: @ 224a910 :thumb
	ldr     r0, [pc, #0x5c] @ 0x224a970, (=0x224ae11)
	bl      Function_224a530
	add     sp, #0x8c
	pop     {r4-r7,pc}
@ 0x224a91a

.thumb
branch_224a91a: @ 224a91a :thumb
	bl      Function_224b3d4
	mov     r4, r0
	bl      Function_2032e64
	cmp     r4, r0
	bgt     branch_224a95e
	ldr     r4, [pc, #0x48] @ 0x224a974, (=0x224eee0)
	add     r3, sp, #0x8
	mov     r2, #0x10
.thumb
branch_224a92e: @ 224a92e :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224a92e
	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	bl      Function_2032e64
	ldr     r1, [sp, #0x4]
	add     r1, #0x90
	strb    r0, [r1, #0x0]
	ldr     r0, [sp, #0x4]
	add     r0, #0x91
	str     r0, [sp, #0x4]
	ldrb    r0, [r0, #0x0]
	lsl     r1, r0, #2
	add     r0, sp, #0x8
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bl      Function_2249960
	ldr     r0, [pc, #0x1c] @ 0x224a978, (=0x224ac49)
	bl      Function_224a530
.thumb
branch_224a95e: @ 224a95e :thumb
	add     sp, #0x8c
	pop     {r4-r7,pc}
@ 0x224a962


.align 2


.word 0x224f5a0 @ 0x224a964
.word 0x60d @ 0x224a968
.word 0x224af85 @ 0x224a96c
.word 0x224ae11 @ 0x224a970
.word 0x224eee0 @ 0x224a974
.word 0x224ac49 @ 0x224a978
.thumb
Function_224a97c: @ 224a97c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r6, r0
	mov     r0, r4
	bl      Function_224a64c
	ldr     r0, [r4, #0x5c]
	bl      Function_2001288
	ldr     r0, [r4, #0x60]
	mov     r1, #0x4
	bl      Function_2002114
	mov     r5, r0
	mov     r0, r4
	add     r0, #0x95
	ldrb    r0, [r0, #0x0]
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_224aa1a
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_224a9b6
	ldr     r0, [r4, #0x60]
	mov     r1, #0x4
	bl      Function_2002154
.thumb
branch_224a9b6: @ 224a9b6 :thumb
	mov     r0, r4
	add     r0, #0x91
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x8
	bne     branch_224aa02
	mov     r5, #0x1
	bl      Function_224b3e8
	cmp     r0, #0x1
	ble     branch_224a9f2
	mov     r4, #0x5
.thumb
branch_224a9cc: @ 224a9cc :thumb
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_224a9e8
	mov     r0, r5
	bl      Function_2032d98
	lsl     r1, r5, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      Function_2036594
.thumb
branch_224a9e8: @ 224a9e8 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      Function_224b3e8
	cmp     r5, r0
	blt     branch_224a9cc
.thumb
branch_224a9f2: @ 224a9f2 :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_2249960
	ldr     r0, [pc, #0x158] @ 0x224ab54, (=0x224aba5)
	bl      Function_224a530
	pop     {r4-r6,pc}
@ 0x224aa02

.thumb
branch_224aa02: @ 224aa02 :thumb
	add     r4, #0x95
	ldrb    r0, [r4, #0x0]
	bl      Function_2032d98
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_2249960
	ldr     r0, [pc, #0x140] @ 0x224ab54, (=0x224aba5)
	bl      Function_224a530
	pop     {r4-r6,pc}
@ 0x224aa1a

.thumb
branch_224aa1a: @ 224aa1a :thumb
	bl      Function_20360f0
	cmp     r0, #0x0
	bne     branch_224aa2a
	bl      Function_224b4e4
	cmp     r0, #0x0
	beq     branch_224aa52
.thumb
branch_224aa2a: @ 224aa2a :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_224aa3a
	ldr     r0, [r4, #0x60]
	mov     r1, #0x4
	bl      Function_2002154
.thumb
branch_224aa3a: @ 224aa3a :thumb
	add     r4, #0x95
	ldrb    r0, [r4, #0x0]
	bl      Function_2032d98
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_2249960
	ldr     r0, [pc, #0x108] @ 0x224ab54, (=0x224aba5)
	bl      Function_224a530
	pop     {r4-r6,pc}
@ 0x224aa52

.thumb
branch_224aa52: @ 224aa52 :thumb
	cmp     r5, #0x0
	bne     branch_224aae2
	mov     r0, r4
	add     r0, #0x91
	ldrb    r0, [r0, #0x0]
	add     r0, #0xff
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bhi     branch_224aa88
	bl      Function_2032fe4
	cmp     r0, #0x0
	bne     branch_224aa88
	mov     r0, #0x61
	mov     r1, #0x0
	bl      Function_2249960
	ldr     r0, [pc, #0xe0] @ 0x224ab58, (=0x224ab65)
	bl      Function_224a530
	add     r4, #0x95
	ldrb    r1, [r4, #0x0]
	mov     r0, #0x4
	bl      Function_2036594
	pop     {r4-r6,pc}
@ 0x224aa88

.thumb
branch_224aa88: @ 224aa88 :thumb
	mov     r0, r4
	add     r0, #0x95
	ldrb    r0, [r0, #0x0]
	bl      Function_2032e1c
	mov     r1, r4
	add     r1, #0x95
	ldrb    r1, [r1, #0x0]
	mov     r0, #0x2
	bl      Function_2036594
	bl      Function_224b3e8
	mov     r5, r0
	bl      Function_2032e64
	cmp     r5, r0
	bne     branch_224aad6
	bl      Function_2032e64
	mov     r1, r4
	add     r1, #0x90
	strb    r0, [r1, #0x0]
	bl      Function_224b3e8
	cmp     r0, #0x2
	ble     branch_224aac6
	ldr     r0, [pc, #0x9c] @ 0x224ab5c, (=0x224ac09)
	bl      Function_224a530
	pop     {r4-r6,pc}
@ 0x224aac6

.thumb
branch_224aac6: @ 224aac6 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_224afd8
	mov     r0, r4
	bl      Function_224b054
	pop     {r4-r6,pc}
@ 0x224aad6

.thumb
branch_224aad6: @ 224aad6 :thumb
	bl      Function_224a5d0
	ldr     r0, [pc, #0x84] @ 0x224ab60, (=0x224abe1)
	bl      Function_224a530
	pop     {r4-r6,pc}
@ 0x224aae2

.thumb
branch_224aae2: @ 224aae2 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	beq     branch_224ab50
	mov     r0, r4
	add     r0, #0x91
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x8
	bne     branch_224ab32
	mov     r5, #0x1
	bl      Function_224b3e8
	cmp     r0, #0x1
	ble     branch_224ab26
	mov     r4, #0x5
.thumb
branch_224ab00: @ 224ab00 :thumb
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_224ab1c
	mov     r0, r5
	bl      Function_2032d98
	lsl     r1, r5, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      Function_2036594
.thumb
branch_224ab1c: @ 224ab1c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      Function_224b3e8
	cmp     r5, r0
	blt     branch_224ab00
.thumb
branch_224ab26: @ 224ab26 :thumb
	bl      Function_224a5d0
	ldr     r0, [pc, #0x34] @ 0x224ab60, (=0x224abe1)
	bl      Function_224a530
	pop     {r4-r6,pc}
@ 0x224ab32

.thumb
branch_224ab32: @ 224ab32 :thumb
	mov     r0, r4
	add     r0, #0x95
	ldrb    r0, [r0, #0x0]
	bl      Function_2032d98
	add     r4, #0x95
	ldrb    r1, [r4, #0x0]
	mov     r0, #0x3
	bl      Function_2036594
	bl      Function_224a5d0
	ldr     r0, [pc, #0x14] @ 0x224ab60, (=0x224abe1)
	bl      Function_224a530
.thumb
branch_224ab50: @ 224ab50 :thumb
	pop     {r4-r6,pc}
@ 0x224ab52


.align 2


.word 0x224aba5 @ 0x224ab54
.word 0x224ab65 @ 0x224ab58
.word 0x224ac09 @ 0x224ab5c
.word 0x224abe1 @ 0x224ab60
.thumb
Function_224ab64: @ 224ab64 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x30] @ 0x224ab9c, (=0x224f5a0)
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_224ab9a
	ldr     r0, [pc, #0x24] @ 0x224aba0, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_224ab9a
	mov     r0, r5
	mov     r1, r4
	bl      Function_224afd8
	bl      Function_224a528
	ldr     r0, [pc, #0x8] @ 0x224ab9c, (=0x224f5a0)
	mov     r1, #0x4
	ldr     r0, [r0, #0x0]
	add     r0, #0x88
	str     r1, [r0, #0x0]
.thumb
branch_224ab9a: @ 224ab9a :thumb
	pop     {r3-r5,pc}
@ 0x224ab9c

.word 0x224f5a0 @ 0x224ab9c
.word 0x21bf67c @ 0x224aba0
.thumb
Function_224aba4: @ 224aba4 :thumb
	push    {r3,lr}
	mov     r0, r1
	bl      Function_224a64c
	ldr     r0, [pc, #0x24] @ 0x224abd4, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_224abd0
	ldr     r0, [pc, #0x18] @ 0x224abd8, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_224abd0
	bl      Function_224a5d0
	ldr     r0, [pc, #0x10] @ 0x224abdc, (=0x224abe1)
	bl      Function_224a530
.thumb
branch_224abd0: @ 224abd0 :thumb
	pop     {r3,pc}
@ 0x224abd2


.align 2


.word 0x224f5a0 @ 0x224abd4
.word 0x21bf67c @ 0x224abd8
.word 0x224abe1 @ 0x224abdc
.thumb
Function_224abe0: @ 224abe0 :thumb
	push    {r3,lr}
	mov     r0, r1
	bl      Function_224a64c
	ldr     r0, [pc, #0x14] @ 0x224ac00, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_224abfe
	ldr     r0, [pc, #0x8] @ 0x224ac04, (=0x224a7d1)
	bl      Function_224a530
.thumb
branch_224abfe: @ 224abfe :thumb
	pop     {r3,pc}
@ 0x224ac00

.word 0x224f5a0 @ 0x224ac00
.word Function_224a7d0+1 @ =0x224a7d1, 0x224ac04
.thumb
Function_224ac08: @ 224ac08 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x84
	ldr     r5, [pc, #0x30] @ 0x224ac40, (=0x224efe8)
	mov     r4, r1
	add     r3, sp, #0x0
	mov     r2, #0x10
.thumb
branch_224ac14: @ 224ac14 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224ac14
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r4
	bl      Function_224a64c
	add     r4, #0x91
	ldrb    r0, [r4, #0x0]
	lsl     r1, r0, #2
	add     r0, sp, #0x0
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bl      Function_2249960
	ldr     r0, [pc, #0xc] @ 0x224ac44, (=0x224ac49)
	bl      Function_224a530
	add     sp, #0x84
	pop     {r4,r5,pc}
@ 0x224ac40

.word 0x224efe8 @ 0x224ac40
.word 0x224ac49 @ 0x224ac44
.thumb
Function_224ac48: @ 224ac48 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	mov     r0, r4
	bl      Function_224a64c
	mov     r0, #0x0
	bl      Function_2036994
	ldr     r0, [r4, #0x5c]
	bl      Function_2001288
	ldr     r0, [pc, #0x30] @ 0x224ac94, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_224ac8e
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x224ac94, (=0x224f5a0)
	ldr     r1, [pc, #0x20] @ 0x224ac98, (=Unknown_224ed0c)
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x20] @ 0x224ac9c, (=0x3d9)
	ldr     r0, [r0, #0x68]
	mov     r3, #0xb
	ldr     r0, [r0, #0x8]
	bl      Function_2002100
	str     r0, [r4, #0x60]
	ldr     r0, [pc, #0x14] @ 0x224aca0, (=0x224aca5)
	bl      Function_224a530
branch_224ac8e: @ 224ac8e :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224ac92

.align 2
.word 0x224f5a0 @ 0x224ac94
.word Unknown_224ed0c @ 0x224ac98
.word 0x3d9 @ 0x224ac9c
.word 0x224aca5 @ 0x224aca0



.thumb
Function_224aca4: @ 224aca4 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	bl      Function_224a64c
	ldr     r0, [r5, #0x5c]
	bl      Function_2001288
	ldr     r0, [r5, #0x60]
	mov     r1, #0x4
	bl      Function_2002114
	mov     r4, r0
	bl      Function_20360f0
	cmp     r0, #0x0
	bne     branch_224acd6
	bl      Function_2035e18
	mov     r1, r5
	add     r1, #0x90
	ldrb    r1, [r1, #0x0]
	cmp     r1, r0
	beq     branch_224acf2
.thumb
branch_224acd6: @ 224acd6 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_224ace6
	ldr     r0, [r5, #0x60]
	mov     r1, #0x4
	bl      Function_2002154
.thumb
branch_224ace6: @ 224ace6 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x60]
	ldr     r0, [pc, #0x70] @ 0x224ad5c, (=0x224ad69)
	bl      Function_224a530
	pop     {r4-r6,pc}
@ 0x224acf2

.thumb
branch_224acf2: @ 224acf2 :thumb
	cmp     r4, #0x0
	bne     branch_224ad34
	add     r5, #0x91
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x8
	bne     branch_224ad26
	mov     r4, #0x1
	bl      Function_2035e18
	cmp     r0, #0x1
	ble     branch_224ad26
.thumb
branch_224ad08: @ 224ad08 :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_224ad1c
	ldr     r0, [pc, #0x44] @ 0x224ad5c, (=0x224ad69)
	bl      Function_224a530
	pop     {r4-r6,pc}
@ 0x224ad1c

.thumb
branch_224ad1c: @ 224ad1c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      Function_2035e18
	cmp     r4, r0
	blt     branch_224ad08
.thumb
branch_224ad26: @ 224ad26 :thumb
	mov     r0, #0xa
	bl      Function_20364f0
	ldr     r0, [pc, #0x30] @ 0x224ad60, (=0x224af2d)
	bl      Function_224a530
	pop     {r4-r6,pc}
@ 0x224ad34

.thumb
branch_224ad34: @ 224ad34 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_224ad58
	mov     r0, #0x1
	bl      Function_2036994
	bl      Function_224a528
	mov     r0, r6
	mov     r1, r5
	bl      Function_224afd8
	ldr     r0, [pc, #0x14] @ 0x224ad64, (=0x224f5a0)
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	add     r0, #0x88
	str     r1, [r0, #0x0]
.thumb
branch_224ad58: @ 224ad58 :thumb
	pop     {r4-r6,pc}
@ 0x224ad5a


.align 2


.word 0x224ad69 @ 0x224ad5c
.word 0x224af2d @ 0x224ad60
.word 0x224f5a0 @ 0x224ad64
.thumb
Function_224ad68: @ 224ad68 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x84
	ldr     r6, [pc, #0x5c] @ 0x224adcc, (=0x224ee5c)
	mov     r2, r0
	mov     r4, r1
	add     r5, sp, #0x0
	mov     r3, #0x10
.thumb
branch_224ad76: @ 224ad76 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	.hword  0x1e5b @ sub r3, r3, #0x1
	bne     branch_224ad76
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	str     r0, [r5, #0x0]
	mov     r0, r2
	bl      Function_224afd8
	ldr     r0, [pc, #0x44] @ 0x224add0, (=0x224f5a0)
	ldr     r1, [r0, #0x0]
	mov     r0, r1
	add     r0, #0x91
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x8
	bne     branch_224ada6
	add     r1, #0x92
	ldrb    r0, [r1, #0x0]
	mov     r1, #0x0
	add     r0, #0x76
	bl      Function_2249960
	b       branch_224adb8
@ 0x224ada6

.thumb
branch_224ada6: @ 224ada6 :thumb
	mov     r0, r4
	add     r0, #0x91
	ldrb    r0, [r0, #0x0]
	lsl     r1, r0, #2
	add     r0, sp, #0x0
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bl      Function_2249960
.thumb
branch_224adb8: @ 224adb8 :thumb
	bl      Function_205987c
	ldr     r0, [pc, #0x14] @ 0x224add4, (=0x224add9)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_200d9e8
	add     sp, #0x84
	pop     {r3-r6,pc}
@ 0x224adca


.align 2


.word 0x224ee5c @ 0x224adcc
.word 0x224f5a0 @ 0x224add0
.word 0x224add9 @ 0x224add4
.thumb
Function_224add8: @ 224add8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x224ae08, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_224ae06
	ldr     r0, [pc, #0x1c] @ 0x224ae0c, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_224ae06
	ldr     r0, [pc, #0x10] @ 0x224ae08, (=0x224f5a0)
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	add     r0, #0x88
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_200da58
.thumb
branch_224ae06: @ 224ae06 :thumb
	pop     {r4,pc}
@ 0x224ae08

.word 0x224f5a0 @ 0x224ae08
.word 0x21bf67c @ 0x224ae0c
.thumb
Function_224ae10: @ 224ae10 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x84
	ldr     r6, [pc, #0x54] @ 0x224ae6c, (=0x224f06c)
	mov     r5, r0
	mov     r4, r1
	add     r3, sp, #0x0
	mov     r2, #0x10
.thumb
branch_224ae1e: @ 224ae1e :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224ae1e
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r4
	bl      Function_224a64c
	bl      Function_2032e64
	cmp     r0, #0x1
	ble     branch_224ae52
	add     r4, #0x91
	ldrb    r0, [r4, #0x0]
	lsl     r1, r0, #2
	add     r0, sp, #0x0
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bl      Function_2249960
	ldr     r0, [pc, #0x24] @ 0x224ae70, (=0x224ae79)
	bl      Function_224a530
	add     sp, #0x84
	pop     {r3-r6,pc}
@ 0x224ae52

.thumb
branch_224ae52: @ 224ae52 :thumb
	bl      Function_224a528
	mov     r0, r5
	mov     r1, r4
	bl      Function_224afd8
	ldr     r0, [pc, #0x14] @ 0x224ae74, (=0x224f5a0)
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	add     r0, #0x88
	str     r1, [r0, #0x0]
	add     sp, #0x84
	pop     {r3-r6,pc}
@ 0x224ae6c

.word 0x224f06c @ 0x224ae6c
.word 0x224ae79 @ 0x224ae70
.word 0x224f5a0 @ 0x224ae74
.thumb
Function_224ae78: @ 224ae78 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	mov     r0, r4
	bl      Function_224a64c
	ldr     r0, [r4, #0x5c]
	bl      Function_2001288
	ldr     r0, [pc, #0x30] @ 0x224aebc, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_224aeb8
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x224aebc, (=0x224f5a0)
	ldr     r1, [pc, #0x1c] @ 0x224aec0, (=Unknown_224ed0c)
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x224aec4, (=0x3d9)
	ldr     r0, [r0, #0x68]
	mov     r3, #0xb
	ldr     r0, [r0, #0x8]
	bl      Function_2002100
	str     r0, [r4, #0x60]
	ldr     r0, [pc, #0x14] @ 0x224aec8, (=0x224aecd)
	bl      Function_224a530
branch_224aeb8: @ 224aeb8 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224aebc

.word 0x224f5a0 @ 0x224aebc
.word Unknown_224ed0c @ 0x224aec0
.word 0x3d9 @ 0x224aec4
.word 0x224aecd @ 0x224aec8



.thumb
Function_224aecc: @ 224aecc :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	bl      Function_224a64c
	ldr     r0, [r5, #0x5c]
	bl      Function_2001288
	ldr     r0, [r5, #0x60]
	mov     r1, #0x4
	bl      Function_2002114
	mov     r4, r0
	bl      Function_20360f0
	cmp     r0, #0x0
	beq     branch_224aef4
	mov     r4, #0x1
	mvn     r4, r4
.thumb
branch_224aef4: @ 224aef4 :thumb
	cmp     r4, #0x0
	bne     branch_224af10
	bl      Function_224a528
	mov     r0, r6
	mov     r1, r5
	bl      Function_224afd8
	ldr     r0, [pc, #0x1c] @ 0x224af24, (=0x224f5a0)
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	add     r0, #0x88
	str     r1, [r0, #0x0]
	pop     {r4-r6,pc}
@ 0x224af10

.thumb
branch_224af10: @ 224af10 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_224af22
	bl      Function_224a5d0
	ldr     r0, [pc, #0x8] @ 0x224af28, (=0x224abe1)
	bl      Function_224a530
.thumb
branch_224af22: @ 224af22 :thumb
	pop     {r4-r6,pc}
@ 0x224af24

.word 0x224f5a0 @ 0x224af24
.word Function_224abe0+1 @ =0x224abe1, 0x224af28
.thumb
Function_224af2c: @ 224af2c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_20360f0
	cmp     r0, #0x0
	bne     branch_224af48
	bl      Function_2035e18
	mov     r1, r4
	add     r1, #0x90
	ldrb    r1, [r1, #0x0]
	cmp     r1, r0
	beq     branch_224af50
.thumb
branch_224af48: @ 224af48 :thumb
	ldr     r0, [pc, #0x34] @ 0x224af80, (=0x224ad69)
	bl      Function_224a530
	pop     {r3-r5,pc}
@ 0x224af50

.thumb
branch_224af50: @ 224af50 :thumb
	mov     r0, r4
	bl      Function_224a64c
	ldr     r0, [r4, #0x5c]
	bl      Function_2001288
	mov     r0, #0xa
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_224af7c
	bl      Function_2036450
	cmp     r0, #0x0
	beq     branch_224af7c
	mov     r0, r5
	mov     r1, r4
	bl      Function_224afd8
	mov     r0, r4
	bl      Function_224b3a8
.thumb
branch_224af7c: @ 224af7c :thumb
	pop     {r3-r5,pc}
@ 0x224af7e


.align 2


.word Function_224ad68+1 @ =0x224ad69, 0x224af80
.thumb
Function_224af84: @ 224af84 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	mov     r0, r4
	bl      Function_224a64c
	ldr     r0, [r4, #0x5c]
	bl      Function_2001288
	ldr     r0, [pc, #0x30] @ 0x224afc8, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_224afc4
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x224afc8, (=0x224f5a0)
	ldr     r1, [pc, #0x1c] @ 0x224afcc, (=Unknown_224ed0c)
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x224afd0, (=0x3d9)
	ldr     r0, [r0, #0x68]
	mov     r3, #0xb
	ldr     r0, [r0, #0x8]
	bl      Function_2002100
	str     r0, [r4, #0x60]
	ldr     r0, [pc, #0x14] @ 0x224afd4, (=0x224a97d)
	bl      Function_224a530
branch_224afc4: @ 224afc4 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224afc8

.word 0x224f5a0 @ 0x224afc8
.word Unknown_224ed0c @ 0x224afcc
.word 0x3d9 @ 0x224afd0
.word Function_224a97c+1 @ =0x224a97d, 0x224afd4



.thumb
Function_224afd8: @ 224afd8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x70] @ 0x224b050, (=0x224f5a0)
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	add     r0, #0x40
	bl      Function_201ada4
	mov     r0, r4
	add     r0, #0x20
	mov     r1, #0x0
	bl      Function_200dc9c
	ldr     r0, [r4, #0x64]
	bl      Function_2013a3c
	mov     r1, #0x0
	ldr     r0, [r4, #0x5c]
	mov     r2, r1
	bl      Function_2001384
	mov     r0, r4
	add     r0, #0x20
	bl      Function_201acf4
	mov     r0, r4
	add     r0, #0x20
	bl      Function_201a8fc
	mov     r0, r4
	add     r0, #0x97
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_224b044
	ldr     r0, [pc, #0x30] @ 0x224b050, (=0x224f5a0)
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	add     r0, #0x30
	bl      Function_200dc9c
	ldr     r0, [pc, #0x24] @ 0x224b050, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x30
	bl      Function_201acf4
	ldr     r0, [pc, #0x18] @ 0x224b050, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x30
	bl      Function_201a8fc
	mov     r0, #0x0
	add     r4, #0x97
	strb    r0, [r4, #0x0]
.thumb
branch_224b044: @ 224b044 :thumb
	cmp     r5, #0x0
	beq     branch_224b04e
	mov     r0, r5
	bl      Function_200da58
.thumb
branch_224b04e: @ 224b04e :thumb
	pop     {r3-r5,pc}
@ 0x224b050

.word 0x224f5a0 @ 0x224b050
.thumb
Function_224b054: @ 224b054 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	bl      Function_2032ee8
	mov     r2, r0
	ldr     r0, [r4, #0x58]
	mov     r1, #0x1
	bl      Function_200b498
	mov     r0, #0x39
	mov     r1, #0x1
	bl      Function_2249960
	ldr     r0, [pc, #0x10] @ 0x224b084, (=0x224a719)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_200d9e8
	ldr     r0, [pc, #0xc] @ 0x224b088, (=0x224b0e9)
	bl      Function_224a530
	pop     {r4,pc}
@ 0x224b082


.align 2


.word Function_224a718+1 @ =0x224a719, 0x224b084
.word 0x224b0e9 @ 0x224b088
.thumb
Function_224b08c: @ 224b08c :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x4c] @ 0x224b0dc, (=0x224f5a0)
	mov     r4, r0
	add     r0, #0x8e
	ldr     r1, [r1, #0x0]
	ldrh    r0, [r0, #0x0]
	ldr     r1, [r1, #0x7c]
	bl      Function_20339ac
	ldr     r2, [pc, #0x3c] @ 0x224b0dc, (=0x224f5a0)
	ldr     r0, [r4, #0x58]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x1
	ldr     r2, [r2, #0x7c]
	bl      Function_200b498
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_2249960
	bl      Function_2035e18
	mov     r1, r4
	add     r1, #0x90
	strb    r0, [r1, #0x0]
	ldr     r0, [pc, #0x20] @ 0x224b0e0, (=0x224a719)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_200d9e8
	ldr     r0, [pc, #0x18] @ 0x224b0e4, (=0x224b0e9)
	bl      Function_224a530
	ldr     r0, [pc, #0xc] @ 0x224b0dc, (=0x224f5a0)
	mov     r1, #0x5a
	ldr     r0, [r0, #0x0]
	add     r0, #0x96
	strb    r1, [r0, #0x0]
	pop     {r4,pc}
@ 0x224b0da


.align 2


.word 0x224f5a0 @ 0x224b0dc
.word 0x224a719 @ 0x224b0e0
.word 0x224b0e9 @ 0x224b0e4
.thumb
Function_224b0e8: @ 224b0e8 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_224b108
	bl      Function_2035e18
	add     r4, #0x90
	ldrb    r1, [r4, #0x0]
	cmp     r1, r0
	beq     branch_224b108
	ldr     r0, [pc, #0x3c] @ 0x224b140, (=0x224b275)
	bl      Function_224a530
	pop     {r4,pc}
@ 0x224b108

.thumb
branch_224b108: @ 224b108 :thumb
	bl      Function_224b4e4
	cmp     r0, #0x0
	bne     branch_224b118
	bl      Function_20360f0
	cmp     r0, #0x0
	beq     branch_224b120
.thumb
branch_224b118: @ 224b118 :thumb
	ldr     r0, [pc, #0x24] @ 0x224b140, (=0x224b275)
	bl      Function_224a530
	pop     {r4,pc}
@ 0x224b120

.thumb
branch_224b120: @ 224b120 :thumb
	ldr     r0, [pc, #0x20] @ 0x224b144, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_224b13c
	mov     r0, #0xa
	bl      Function_20364f0
	ldr     r0, [pc, #0x10] @ 0x224b148, (=0x224b14d)
	bl      Function_224a530
.thumb
branch_224b13c: @ 224b13c :thumb
	pop     {r4,pc}
@ 0x224b13e


.align 2


.word 0x224b275 @ 0x224b140
.word 0x224f5a0 @ 0x224b144
.word 0x224b14d @ 0x224b148
.thumb
Function_224b14c: @ 224b14c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x84
	mov     r5, r0
	mov     r4, r1
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_224b172
	bl      Function_2035e18
	mov     r1, r4
	add     r1, #0x90
	ldrb    r1, [r1, #0x0]
	cmp     r1, r0
	beq     branch_224b172
	ldr     r0, [pc, #0xfc] @ 0x224b268, (=0x224b275)
	bl      Function_224a530
	b       branch_224b202
@ 0x224b172

.thumb
branch_224b172: @ 224b172 :thumb
	bl      Function_224b4e4
	cmp     r0, #0x0
	bne     branch_224b182
	bl      Function_20360f0
	cmp     r0, #0x0
	beq     branch_224b18c
.thumb
branch_224b182: @ 224b182 :thumb
	ldr     r0, [pc, #0xe4] @ 0x224b268, (=0x224b275)
	bl      Function_224a530
	add     sp, #0x84
	pop     {r3-r6,pc}
@ 0x224b18c

.thumb
branch_224b18c: @ 224b18c :thumb
	mov     r0, #0x0
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_224b1a0
	ldr     r0, [pc, #0xd0] @ 0x224b268, (=0x224b275)
	bl      Function_224a530
	add     sp, #0x84
	pop     {r3-r6,pc}
@ 0x224b1a0

.thumb
branch_224b1a0: @ 224b1a0 :thumb
	mov     r0, #0x0
	mov     r1, #0x5
	bl      Function_20365a8
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_224b1ba
	ldr     r0, [pc, #0xb4] @ 0x224b268, (=0x224b275)
	bl      Function_224a530
	add     sp, #0x84
	pop     {r3-r6,pc}
@ 0x224b1ba

.thumb
branch_224b1ba: @ 224b1ba :thumb
	mov     r0, #0xa
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_224b202
	bl      Function_2036450
	cmp     r0, #0x0
	beq     branch_224b202
	ldr     r0, [pc, #0x9c] @ 0x224b26c, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	bne     branch_224b1e8
	ldr     r0, [pc, #0x8c] @ 0x224b26c, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_201d730
.thumb
branch_224b1e8: @ 224b1e8 :thumb
	bl      Function_2035e18
	mov     r1, r4
	add     r1, #0x90
	strb    r0, [r1, #0x0]
	mov     r0, r4
	bl      Function_224b3a8
	mov     r0, r5
	bl      Function_200da58
	add     sp, #0x84
	pop     {r3-r6,pc}
@ 0x224b202

.thumb
branch_224b202: @ 224b202 :thumb
	ldr     r2, [pc, #0x68] @ 0x224b26c, (=0x224f5a0)
	ldr     r0, [r2, #0x0]
	mov     r1, r0
	add     r1, #0x96
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_224b264
	mov     r1, r0
	add     r1, #0x96
	ldrb    r1, [r1, #0x0]
	add     r0, #0x96
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r0, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r0, r2
	add     r0, #0x96
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_224b264
	ldr     r6, [pc, #0x44] @ 0x224b270, (=0x224f0f0)
	add     r5, sp, #0x0
	mov     r3, #0x10
.thumb
branch_224b22e: @ 224b22e :thumb
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	.hword  0x1e5b @ sub r3, r3, #0x1
	bne     branch_224b22e
	ldr     r0, [r6, #0x0]
	str     r0, [r5, #0x0]
	mov     r0, r2
	add     r0, #0x91
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x8
	bne     branch_224b254
	add     r2, #0x92
	ldrb    r0, [r2, #0x0]
	mov     r1, #0x0
	add     r0, #0x71
	bl      Function_2249960
	add     sp, #0x84
	pop     {r3-r6,pc}
@ 0x224b254

.thumb
branch_224b254: @ 224b254 :thumb
	add     r4, #0x91
	ldrb    r0, [r4, #0x0]
	lsl     r1, r0, #2
	add     r0, sp, #0x0
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bl      Function_2249960
.thumb
branch_224b264: @ 224b264 :thumb
	add     sp, #0x84
	pop     {r3-r6,pc}
@ 0x224b268

.word 0x224b275 @ 0x224b268
.word 0x224f5a0 @ 0x224b26c
.word 0x224f0f0 @ 0x224b270
.thumb
Function_224b274: @ 224b274 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x20] @ 0x224b298, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_224b294
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_2249960
	ldr     r0, [pc, #0xc] @ 0x224b29c, (=0x224b2a1)
	bl      Function_224a530
.thumb
branch_224b294: @ 224b294 :thumb
	pop     {r3,pc}
@ 0x224b296


.align 2


.word 0x224f5a0 @ 0x224b298
.word 0x224b2a1 @ 0x224b29c
.thumb
Function_224b2a0: @ 224b2a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x2c] @ 0x224b2d4, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_224b2d2
	ldr     r0, [pc, #0x20] @ 0x224b2d8, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_224b2d2
	mov     r0, r4
	bl      Function_200da58
	bl      Function_224a528
	ldr     r0, [pc, #0x8] @ 0x224b2d4, (=0x224f5a0)
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	add     r0, #0x88
	str     r1, [r0, #0x0]
.thumb
branch_224b2d2: @ 224b2d2 :thumb
	pop     {r4,pc}
@ 0x224b2d4

.word 0x224f5a0 @ 0x224b2d4
.word 0x21bf67c @ 0x224b2d8
.thumb
Function_224b2dc: @ 224b2dc :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x34] @ 0x224b314, (=0x224f5a0)
	mov     r4, r0
	add     r0, #0x8e
	ldr     r1, [r1, #0x0]
	ldrh    r0, [r0, #0x0]
	ldr     r1, [r1, #0x7c]
	bl      Function_20339ac
	ldr     r2, [pc, #0x24] @ 0x224b314, (=0x224f5a0)
	ldr     r0, [r4, #0x58]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x1
	ldr     r2, [r2, #0x7c]
	bl      Function_200b498
	mov     r0, #0x5
	mov     r1, #0x1
	bl      Function_2249960
	bl      Function_20597a4
	ldr     r0, [pc, #0xc] @ 0x224b318, (=0x224b31d)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_200d9e8
	pop     {r4,pc}
@ 0x224b314

.word 0x224f5a0 @ 0x224b314
.word 0x224b31d @ 0x224b318
.thumb
Function_224b31c: @ 224b31c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x20] @ 0x224b344, (=0x224f5a0)
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_224b342
	bl      Function_20597a4
	mov     r0, r4
	bl      Function_2249e0c
	mov     r0, r5
	bl      Function_200da58
.thumb
branch_224b342: @ 224b342 :thumb
	pop     {r3-r5,pc}
@ 0x224b344

.word 0x224f5a0 @ 0x224b344
.thumb
Function_224b348: @ 224b348 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_20597a4
	mov     r4, #0x0
.thumb
branch_224b352: @ 224b352 :thumb
	mov     r0, r4
	bl      Function_2032d98
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x8
	blt     branch_224b352
	ldr     r0, [pc, #0xc] @ 0x224b36c, (=0x224b371)
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_200d9e8
	pop     {r3-r5,pc}
@ 0x224b36a


.align 2


.word 0x224b371 @ 0x224b36c
.thumb
Function_224b370: @ 224b370 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x28] @ 0x224b3a0, (=0x224f5a0)
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_224b39c
	ldr     r0, [pc, #0x1c] @ 0x224b3a4, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_224b39c
	mov     r0, r4
	bl      Function_2249e0c
	mov     r0, r5
	bl      Function_200da58
.thumb
branch_224b39c: @ 224b39c :thumb
	pop     {r3-r5,pc}
@ 0x224b39e


.align 2


.word 0x224f5a0 @ 0x224b3a0
.word 0x21bf67c @ 0x224b3a4
.thumb
Function_224b3a8: @ 224b3a8 :thumb
	push    {r3,lr}
	mov     r0, #0x0
	bl      Function_2036994
	ldr     r0, [pc, #0x1c] @ 0x224b3d0, (=0x224f5a0)
	mov     r1, #0x2
	ldr     r0, [r0, #0x0]
	add     r0, #0x88
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_20388f4
	bl      Function_2032ac0
	mov     r0, #0x1
	bl      Function_2033ea8
	pop     {r3,pc}
@ 0x224b3ce


.align 2


.word 0x224f5a0 @ 0x224b3d0
.thumb
Function_224b3d4: @ 224b3d4 :thumb
	ldr     r0, [pc, #0x8] @ 0x224b3e0, (=0x224f5a0)
	ldr     r3, [pc, #0xc] @ 0x224b3e4, (=0x2036159)
	ldr     r0, [r0, #0x0]
	add     r0, #0x91
	ldrb    r0, [r0, #0x0]
	bx      r3
@ 0x224b3e0

.word 0x224f5a0 @ 0x224b3e0
.word 0x2036159 @ 0x224b3e4
.thumb
Function_224b3e8: @ 224b3e8 :thumb
	ldr     r0, [pc, #0x8] @ 0x224b3f4, (=0x224f5a0)
	ldr     r3, [pc, #0xc] @ 0x224b3f8, (=0x2036149)
	ldr     r0, [r0, #0x0]
	add     r0, #0x91
	ldrb    r0, [r0, #0x0]
	bx      r3
@ 0x224b3f4

.word 0x224f5a0 @ 0x224b3f4
.word 0x2036149 @ 0x224b3f8
.thumb
Function_224b3fc: @ 224b3fc :thumb
	ldr     r0, [pc, #0x10] @ 0x224b410, (=0x224f5a0)
	ldr     r2, [r0, #0x0]
	mov     r0, r2
	add     r0, #0x92
	add     r2, #0x93
	ldrb    r1, [r0, #0x0]
	ldrb    r0, [r2, #0x0]
	lsl     r0, r0, #4
	add     r0, r1, r0
	bx      lr
@ 0x224b410

.word 0x224f5a0 @ 0x224b410
.thumb
Function_224b414: @ 224b414 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_2249ab4
	ldr     r0, [pc, #0x28] @ 0x224b44c, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x91
	strb    r4, [r0, #0x0]
	.hword  0x1ee0 @ sub r0, r4, #0x3
	cmp     r0, #0x1
	bhi     branch_224b436
	mov     r0, #0x0
	add     r5, #0xb0
	str     r0, [r5, #0x0]
.thumb
branch_224b436: @ 224b436 :thumb
	ldr     r0, [pc, #0x14] @ 0x224b44c, (=0x224f5a0)
	ldr     r1, [r0, #0x0]
	add     r1, #0x92
	strb    r6, [r1, #0x0]
	ldr     r1, [r0, #0x0]
	add     r1, #0x93
	strb    r7, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_2249c2c
	pop     {r3-r7,pc}
@ 0x224b44c

.word 0x224f5a0 @ 0x224b44c
.thumb
Function_224b450: @ 224b450 :thumb
	ldr     r0, [pc, #0x4] @ 0x224b458, (=0x224f5a0)
	ldr     r3, [pc, #0x8] @ 0x224b45c, (=0x2249e0d)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x224b458

.word 0x224f5a0 @ 0x224b458
.word 0x2249e0d @ 0x224b45c
.thumb
Function_224b460: @ 224b460 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x14] @ 0x224b478, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x88
	ldr     r4, [r0, #0x0]
	cmp     r4, #0x0
	beq     branch_224b472
	bl      Function_2249b98
.thumb
branch_224b472: @ 224b472 :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x224b476


.align 2


.word 0x224f5a0 @ 0x224b478
.thumb
Function_224b47c: @ 224b47c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_2249ab4
	ldr     r0, [pc, #0x28] @ 0x224b4b4, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x91
	strb    r4, [r0, #0x0]
	.hword  0x1ee0 @ sub r0, r4, #0x3
	cmp     r0, #0x1
	bhi     branch_224b49e
	mov     r0, #0x0
	add     r5, #0xb0
	str     r0, [r5, #0x0]
.thumb
branch_224b49e: @ 224b49e :thumb
	ldr     r0, [pc, #0x14] @ 0x224b4b4, (=0x224f5a0)
	ldr     r1, [r0, #0x0]
	add     r1, #0x92
	strb    r6, [r1, #0x0]
	ldr     r1, [r0, #0x0]
	add     r1, #0x93
	strb    r7, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_224a510
	pop     {r3-r7,pc}
@ 0x224b4b4

.word 0x224f5a0 @ 0x224b4b4
.thumb
Function_224b4b8: @ 224b4b8 :thumb
	ldr     r0, [pc, #0x4] @ 0x224b4c0, (=0x224f5a0)
	ldr     r3, [pc, #0x8] @ 0x224b4c4, (=0x224a53d)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x224b4c0

.word 0x224f5a0 @ 0x224b4c0
.word 0x224a53d @ 0x224b4c4
.thumb
Function_224b4c8: @ 224b4c8 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x14] @ 0x224b4e0, (=0x224f5a0)
	ldr     r0, [r0, #0x0]
	add     r0, #0x88
	ldr     r4, [r0, #0x0]
	cmp     r4, #0x0
	beq     branch_224b4da
	bl      Function_2249b98
.thumb
branch_224b4da: @ 224b4da :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x224b4de


.align 2


.word 0x224f5a0 @ 0x224b4e0
.thumb
Function_224b4e4: @ 224b4e4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x224b4e8

.thumb
Function_224b4e8: @ 224b4e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x54
	mov     r4, r1
	bl      Function_201a7cc
	cmp     r0, #0x0
	bne     branch_224b522
	mov     r0, r5
	add     r0, #0x54
	bl      Function_201a7a0
	ldr     r0, [r5, #0x10]
	mov     r1, r5
	ldr     r0, [r0, #0x8]
	add     r1, #0x54
	mov     r2, #0x3
	bl      Function_205d8f4
	ldr     r0, [r5, #0x10]
	ldr     r0, [r0, #0xc]
	bl      LoadPlayerDataAdress
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x54
	bl      Function_205d944
	b       branch_224b52a
@ 0x224b522

.thumb
branch_224b522: @ 224b522 :thumb
	mov     r0, r5
	add     r0, #0x54
	bl      Function_205d988
.thumb
branch_224b52a: @ 224b52a :thumb
	ldr     r0, [r5, #0x68]
	ldr     r2, [r5, #0x14]
	mov     r1, r4
	bl      Function_200b1b8
	ldr     r0, [r5, #0x64]
	ldr     r1, [r5, #0x18]
	ldr     r2, [r5, #0x14]
	bl      Function_200c388
	ldr     r0, [r5, #0x10]
	ldr     r0, [r0, #0xc]
	bl      LoadPlayerDataAdress
	mov     r2, r0
	mov     r0, r5
	ldr     r1, [r5, #0x18]
	add     r0, #0x54
	mov     r3, #0x1
	bl      Function_205d994
	str     r0, [r5, #0x74]
	pop     {r3-r5,pc}
@ 0x224b558

.thumb
Function_224b558: @ 224b558 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_224b570
	add     r0, #0x54
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, r4
	add     r0, #0x54
	bl      Function_201acf4
.thumb
branch_224b570: @ 224b570 :thumb
	add     r4, #0x54
	mov     r0, r4
	bl      Function_201a8fc
	pop     {r4,pc}
@ 0x224b57a


.align 2, 0


.thumb
Function_224b57c: @ 224b57c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	ldr     r2, [r4, #0x1c]
	ldr     r0, [r0, #0xc]
	mov     r3, #0x4
	bl      Function_202616c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	ldr     r0, [r4, #0x64]
	ldr     r2, [r4, #0x1c]
	mov     r3, r1
	bl      Function_200b48c
	add     sp, #0x8
	pop     {r4,pc}
@ 0x224b5a6


.align 2, 0


.thumb
Function_224b5a8: @ 224b5a8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	mov     r4, r5
	ldr     r0, [r0, #0xc]
	mov     r1, #0x0
	add     r4, #0x34
	bl      Function_202610c
	mov     r6, #0x5
	cmp     r0, #0x0
	beq     branch_224b5c4
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_224b5c4: @ 224b5c4 :thumb
	mov     r0, r4
	bl      Function_201a7cc
	cmp     r0, #0x0
	bne     branch_224b656
	add     r0, r6, #0x2
	mov     r1, #0x4
	bl      Function_2013a04
	str     r0, [r5, #0x8]
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	add     r0, r6, #0x2
	lsl     r0, r0, #25
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	ldr     r0, [r5, #0x10]
	mov     r1, r4
	ldr     r0, [r0, #0x8]
	mov     r2, #0x3
	bl      Function_201a7e8
	mov     r0, r5
	ldr     r2, [pc, #0xa4] @ 0x224b6a4, (=0x3d9)
	add     r0, #0x34
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200dc48
	ldr     r0, [r5, #0x8]
	ldr     r1, [r5, #0x68]
	mov     r2, #0x7b
	mov     r3, #0xc
	bl      Function_2013a4c
	mov     r4, #0x0
	cmp     r6, #0x0
	ble     branch_224b648
	mov     r7, #0x71
.thumb
branch_224b61c: @ 224b61c :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_224b57c
	ldr     r0, [r5, #0x68]
	ldr     r2, [r5, #0x1c]
	mov     r1, r7
	bl      Function_200b1b8
	ldr     r0, [r5, #0x64]
	ldr     r1, [r5, #0x20]
	ldr     r2, [r5, #0x1c]
	bl      Function_200c388
	ldr     r0, [r5, #0x8]
	ldr     r1, [r5, #0x20]
	mov     r2, r4
	bl      Function_2013a6c
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	blt     branch_224b61c
.thumb
branch_224b648: @ 224b648 :thumb
	mov     r2, #0x72
	mov     r3, r2
	ldr     r0, [r5, #0x8]
	ldr     r1, [r5, #0x68]
	sub     r3, #0x74
	bl      Function_2013a4c
.thumb
branch_224b656: @ 224b656 :thumb
	ldr     r4, [pc, #0x50] @ 0x224b6a8, (=0x224f188)
	add     r3, sp, #0x14
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	add     r0, r6, #0x2
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	add     r0, sp, #0x14
	strh    r1, [r0, #0x10]
	strh    r1, [r0, #0x12]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x0
	str     r0, [sp, #0x14]
	mov     r0, r5
	add     r0, #0x34
	str     r0, [sp, #0x20]
	mov     r0, r2
	mov     r2, r5
	str     r5, [sp, #0x30]
	add     r2, #0x78
	ldrh    r2, [r2, #0x0]
	mov     r3, #0x4
	bl      Function_200112c
	str     r0, [r5, #0x0]
	add     r5, #0x34
	mov     r0, r5
	bl      Function_201a954
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x224b6a2


.align 2


.word 0x3d9 @ 0x224b6a4
.word 0x224f188 @ 0x224b6a8
.thumb
Function_224b6ac: @ 224b6ac :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_224b6e6
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_2001384
	mov     r0, r4
	add     r0, #0x34
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r1, r4
	add     r1, #0x38
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r4, #0x34]
	bl      Function_201c3c0
	mov     r0, r4
	add     r0, #0x34
	bl      Function_201a8fc
	ldr     r0, [r4, #0x8]
	bl      Function_2013a3c
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_224b6e6: @ 224b6e6 :thumb
	pop     {r4,pc}
@ 0x224b6e8

.thumb
Function_224b6e8: @ 224b6e8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      Function_2001288
	mov     r4, r0
	mov     r2, r5
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	add     r2, #0x78
	bl      Function_20014dc
	mov     r0, r5
	add     r0, #0x80
	ldrh    r6, [r0, #0x0]
	mov     r1, r5
	ldr     r0, [r5, #0x0]
	add     r1, #0x80
	bl      Function_20014d0
	mov     r0, r5
	add     r0, #0x80
	ldrh    r0, [r0, #0x0]
	cmp     r6, r0
	beq     branch_224b720
	ldr     r0, [pc, #0x68] @ 0x224b784, (=0x5dc)
	bl      Function_2005748
.thumb
branch_224b720: @ 224b720 :thumb
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_224b750
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	beq     branch_224b734
	cmp     r4, #0xc
	beq     branch_224b738
	b       branch_224b76a
@ 0x224b734

.thumb
branch_224b734: @ 224b734 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224b738

.thumb
branch_224b738: @ 224b738 :thumb
	ldr     r0, [pc, #0x48] @ 0x224b784, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [r5, #0x10]
	mov     r1, #0x0
	add     r0, #0xb0
	str     r1, [r0, #0x0]
	mov     r0, r5
	bl      Function_224b6ac
	mov     r0, #0x2
	pop     {r4-r6,pc}
@ 0x224b750

.thumb
branch_224b750: @ 224b750 :thumb
	ldr     r0, [pc, #0x30] @ 0x224b784, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [r5, #0x10]
	mov     r1, #0x0
	add     r0, #0xb0
	str     r1, [r0, #0x0]
	mov     r0, r5
	bl      Function_224b6ac
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4-r6,pc}
@ 0x224b76a

.thumb
branch_224b76a: @ 224b76a :thumb
	ldr     r0, [pc, #0x18] @ 0x224b784, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [r5, #0x10]
	mov     r1, r4
	ldr     r0, [r0, #0xc]
	bl      Function_2026150
	ldr     r1, [r5, #0x10]
	add     r1, #0xb0
	str     r0, [r1, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x224b784

.word 0x5dc @ 0x224b784
.thumb
Function_224b788: @ 224b788 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x34
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x4
	ldr     r4, [pc, #0x98] @ 0x224b82c, (=0x224f4d8)
	bl      Function_2013a04
	str     r0, [r5, #0xc]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x84] @ 0x224b830, (=0x201)
	mov     r1, r5
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x10]
	add     r1, #0x44
	ldr     r0, [r0, #0x8]
	mov     r2, #0x3
	mov     r3, #0x16
	bl      Function_201a7e8
	mov     r0, r5
	ldr     r2, [pc, #0x70] @ 0x224b834, (=0x3d9)
	add     r0, #0x44
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200dc48
	mov     r6, #0x0
.thumb
branch_224b7ce: @ 224b7ce :thumb
	ldr     r0, [r5, #0xc]
	ldr     r1, [r5, #0x68]
	ldr     r2, [r4, #0x0]
	ldr     r3, [r4, #0x4]
	bl      Function_2013a4c
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, #0x3
	blt     branch_224b7ce
	ldr     r4, [pc, #0x54] @ 0x224b838, (=0x224f188)
	add     r3, sp, #0x14
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r1, #0x3
	add     r0, sp, #0x14
	strh    r1, [r0, #0x10]
	strh    r1, [r0, #0x12]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x0
	str     r0, [sp, #0x14]
	mov     r0, r5
	add     r0, #0x44
	str     r0, [sp, #0x20]
	mov     r0, r2
	mov     r2, r5
	str     r5, [sp, #0x30]
	add     r2, #0x7a
	ldrh    r2, [r2, #0x0]
	mov     r3, #0x4
	bl      Function_200112c
	str     r0, [r5, #0x4]
	add     r5, #0x44
	mov     r0, r5
	bl      Function_201a954
	add     sp, #0x34
	pop     {r3-r6,pc}
@ 0x224b82a


.align 2


.word 0x224f4d8 @ 0x224b82c
.word 0x201 @ 0x224b830
.word 0x3d9 @ 0x224b834
.word 0x224f188 @ 0x224b838
.thumb
Function_224b83c: @ 224b83c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	bl      Function_2001288
	mov     r4, r0
	mov     r2, r5
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	add     r2, #0x7a
	bl      Function_20014dc
	mov     r0, r5
	add     r0, #0x82
	ldrh    r6, [r0, #0x0]
	mov     r1, r5
	ldr     r0, [r5, #0x4]
	add     r1, #0x82
	bl      Function_20014d0
	mov     r0, r5
	add     r0, #0x82
	ldrh    r0, [r0, #0x0]
	cmp     r6, r0
	beq     branch_224b874
	ldr     r0, [pc, #0x68] @ 0x224b8d8, (=0x5dc)
	bl      Function_2005748
.thumb
branch_224b874: @ 224b874 :thumb
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_224b886
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	bne     branch_224b892
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224b886

.thumb
branch_224b886: @ 224b886 :thumb
	ldr     r0, [pc, #0x50] @ 0x224b8d8, (=0x5dc)
	bl      Function_2005748
	mov     r4, #0x0
	mvn     r4, r4
	b       branch_224b89e
@ 0x224b892

.thumb
branch_224b892: @ 224b892 :thumb
	ldr     r0, [pc, #0x44] @ 0x224b8d8, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	bl      Function_224b6ac
.thumb
branch_224b89e: @ 224b89e :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_224b8d4
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_2001384
	mov     r0, r5
	add     r0, #0x44
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r1, r5
	add     r1, #0x48
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r5, #0x44]
	bl      Function_201c3c0
	mov     r0, r5
	add     r0, #0x44
	bl      Function_201a8fc
	ldr     r0, [r5, #0xc]
	bl      Function_2013a3c
	mov     r0, #0x0
	str     r0, [r5, #0x4]
.thumb
branch_224b8d4: @ 224b8d4 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x224b8d8

.word 0x5dc @ 0x224b8d8
.thumb
Function_224b8dc: @ 224b8dc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	ldr     r2, [pc, #0x29c] @ 0x224bb80, (=0x161)
	str     r0, [sp, #0x14]
	ldr     r5, [r0, #0x64]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x4
	bl      Function_200b144
	str     r0, [sp, #0x30]
	mov     r0, #0xb4
	mov     r1, #0x4
	bl      Function_2023790
	str     r0, [sp, #0x2c]
	mov     r0, #0xb4
	mov     r1, #0x4
	bl      Function_2023790
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x14]
	mov     r2, #0x3
	str     r0, [sp, #0x24]
	add     r0, #0x24
	str     r0, [sp, #0x24]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x13
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x24]
	ldr     r0, [r0, #0x10]
	mov     r3, #0x4
	ldr     r0, [r0, #0x8]
	bl      Function_201a7e8
	ldr     r0, [sp, #0x24]
	ldr     r2, [pc, #0x24c] @ 0x224bb84, (=0x3d9)
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200dc48
	ldr     r0, [sp, #0x24]
	mov     r1, #0xf
	bl      Function_201ada4
	ldr     r0, [sp, #0x14]
	mov     r1, r0
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      Function_224b57c
	ldr     r0, [sp, #0x30]
	ldr     r2, [sp, #0x2c]
	mov     r1, #0x5f
	bl      Function_200b1b8
	ldr     r1, [sp, #0x28]
	ldr     r2, [sp, #0x2c]
	mov     r0, r5
	bl      Function_200c388
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x24]
	ldr     r2, [sp, #0x28]
	mov     r3, #0x39
	str     r1, [sp, #0x8]
	bl      Function_201d738
	mov     r6, #0x0
	mov     r4, #0x10
	mov     r7, #0xff
.thumb
branch_224b982: @ 224b982 :thumb
	mov     r1, r6
	ldr     r0, [sp, #0x30]
	ldr     r2, [sp, #0x2c]
	add     r1, #0x4b
	bl      Function_200b1b8
	str     r4, [sp, #0x0]
	str     r7, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x24]
	ldr     r2, [sp, #0x2c]
	mov     r1, #0x0
	mov     r3, #0x2
	bl      Function_201d738
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xf
	cmp     r6, #0x9
	blt     branch_224b982
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	ldr     r0, [pc, #0x1d8] @ 0x224bb88, (=0x224f4cc)
	ldr     r7, [pc, #0x1d8] @ 0x224bb8c, (=0x224f4c0)
	str     r0, [sp, #0x20]
	mov     r0, #0x10
	str     r0, [sp, #0x1c]
.thumb
branch_224b9b8: @ 224b9b8 :thumb
	ldr     r0, [sp, #0x14]
	ldrb    r1, [r7, #0x0]
	ldr     r0, [r0, #0x10]
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	bl      Function_2026074
	mov     r2, r0
	ldr     r0, [sp, #0x20]
	ldrb    r4, [r0, #0x0]
	ldrb    r0, [r7, #0x0]
	cmp     r0, #0xb
	bls     branch_224b9d4
	b       branch_224bb10
@ 0x224b9d4

.thumb
branch_224b9d4: @ 224b9d4 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224b9e0

Jumppoints_224b9e0:
.hword branch_224bb10 - Jumppoints_224b9e0 - 2
.hword branch_224b9f8 - Jumppoints_224b9e0 - 2
.hword branch_224ba0a - Jumppoints_224b9e0 - 2
.hword branch_224ba1e - Jumppoints_224b9e0 - 2
.hword branch_224bb0a - Jumppoints_224b9e0 - 2
.hword branch_224ba3a - Jumppoints_224b9e0 - 2
.hword branch_224bb10 - Jumppoints_224b9e0 - 2
.hword branch_224bab8 - Jumppoints_224b9e0 - 2
.hword branch_224bb10 - Jumppoints_224b9e0 - 2
.hword branch_224bb0a - Jumppoints_224b9e0 - 2
.hword branch_224bb0a - Jumppoints_224b9e0 - 2
.hword branch_224bb0a - Jumppoints_224b9e0 - 2
.thumb
branch_224b9f8: @ 224b9f8 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x1
	bl      Function_200b60c
	b       branch_224bb10
@ 0x224ba0a

.thumb
branch_224ba0a: @ 224ba0a :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_200b60c
	b       branch_224bb10
@ 0x224ba1e

.thumb
branch_224ba1e: @ 224ba1e :thumb
	cmp     r2, #0x0
	bne     branch_224ba26
	mov     r4, #0x60
	b       branch_224bb10
@ 0x224ba26

.thumb
branch_224ba26: @ 224ba26 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_200b60c
	b       branch_224bb10

branch_224ba3a: @ 224ba3a :thumb
	cmp     r2, #0x0
	ldr     r0, [pc, #0x150] @ 0x224bb90, (=0x2710)
	blt     branch_224ba54
	mul     r0, r2
	mov     r1, #0xfe
	blx     _s32_div_f
	.hword  0x1d40 @ add r0, r0, #0x5
	mov     r1, #0xa
	blx     _s32_div_f
	mov     r6, r0
	b       branch_224ba68

branch_224ba54: @ 224ba54 :thumb
	neg     r1, r2
	mul     r0, r1
	mov     r1, #0xfe
	blx     _s32_div_f
	.hword  0x1d40 @ add r0, r0, #0x5
	mov     r1, #0xa
	blx     _s32_div_f
	neg     r6, r0
.thumb
branch_224ba68: @ 224ba68 :thumb
	mov     r0, r6
	mov     r1, #0xc
	blx     _s32_div_f
	blx     Function_20d4070
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x2
	bl      Function_200b60c
	mov     r0, r6
	mov     r1, #0xc
	blx     _s32_div_f
	mov     r0, r1
	blx     Function_20d4070
	mov     r2, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x1
	mov     r3, #0x2
	bl      Function_200b60c
	cmp     r6, #0x0
	bne     branch_224bab2
	mov     r4, #0x60
	b       branch_224bb10
@ 0x224bab2

.thumb
branch_224bab2: @ 224bab2 :thumb
	ble     branch_224bb10
	.hword  0x1c64 @ add r4, r4, #0x1
	b       branch_224bb10
@ 0x224bab8

.thumb
branch_224bab8: @ 224bab8 :thumb
	cmp     r2, #0x0
	ldr     r0, [pc, #0xd8] @ 0x224bb94, (=0x35d2e)
	blt     branch_224bad0
	mov     r1, r2
	mul     r1, r0
	ldr     r0, [pc, #0xd4] @ 0x224bb98, (=0xc350)
	add     r0, r1, r0
	ldr     r1, [pc, #0xd4] @ 0x224bb9c, (=0x186a0)
	blx     _s32_div_f
	mov     r6, r0
	b       branch_224bae2
@ 0x224bad0

.thumb
branch_224bad0: @ 224bad0 :thumb
	neg     r1, r2
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [pc, #0xc0] @ 0x224bb98, (=0xc350)
	ldr     r1, [pc, #0xc0] @ 0x224bb9c, (=0x186a0)
	add     r0, r2, r0
	blx     _s32_div_f
	neg     r6, r0
.thumb
branch_224bae2: @ 224bae2 :thumb
	mov     r0, r6
	blx     Function_20d4070
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	mov     r3, #0x3
	bl      Function_200b60c
	cmp     r6, #0x0
	bne     branch_224bb04
	mov     r4, #0x60
	b       branch_224bb10
@ 0x224bb04

.thumb
branch_224bb04: @ 224bb04 :thumb
	ble     branch_224bb10
	.hword  0x1c64 @ add r4, r4, #0x1
	b       branch_224bb10
@ 0x224bb0a

.thumb
branch_224bb0a: @ 224bb0a :thumb
	cmp     r2, #0x0
	bne     branch_224bb10
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_224bb10: @ 224bb10 :thumb
	ldr     r0, [sp, #0x30]
	ldr     r2, [sp, #0x2c]
	mov     r1, r4
	bl      Function_200b1b8
	ldr     r1, [sp, #0x28]
	ldr     r2, [sp, #0x2c]
	mov     r0, r5
	bl      Function_200c388
	mov     r0, #0x0
	ldr     r1, [sp, #0x28]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r4, r0
	ldr     r0, [sp, #0x1c]
	mov     r3, #0xbf
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x24]
	ldr     r2, [sp, #0x28]
	mov     r1, #0x0
	sub     r3, r3, r4
	bl      Function_201d738
	ldr     r0, [sp, #0x20]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	add     r0, #0xf
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, #0x9
	bge     branch_224bb64
	b       branch_224b9b8
@ 0x224bb64

.thumb
branch_224bb64: @ 224bb64 :thumb
	ldr     r0, [sp, #0x2c]
	bl      Function_20237bc
	ldr     r0, [sp, #0x28]
	bl      Function_20237bc
	ldr     r0, [sp, #0x30]
	bl      Function_200b190
	ldr     r0, [sp, #0x24]
	bl      Function_201a954
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x224bb80

.word 0x161 @ 0x224bb80
.word 0x3d9 @ 0x224bb84
.word 0x224f4cc @ 0x224bb88
.word 0x224f4c0 @ 0x224bb8c
.word 0x2710 @ 0x224bb90
.word 0x35d2e @ 0x224bb94
.word 0xc350 @ 0x224bb98
.word 0x186a0 @ 0x224bb9c



.thumb
Function_224bba0: @ 224bba0 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x24
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r1, r4
	add     r1, #0x28
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r4, #0x24]
	bl      Function_201c3c0
	add     r4, #0x24
	mov     r0, r4
	bl      Function_201a8fc
	pop     {r4,pc}
@ 0x224bbc2


.align 2, 0
.thumb
Function_224bbc4: @ 224bbc4 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r0
	ldr     r0, [r4, #0x10]
	ldr     r2, [r4, #0x6c]
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	bl      Function_207a594
	cmp     r0, #0x0
	beq     branch_224bbee
	cmp     r0, #0x1
	beq     branch_224bc2e
	cmp     r0, #0x4
	beq     branch_224bbf4
	b       branch_224bc2e
@ 0x224bbee

.thumb
branch_224bbee: @ 224bbee :thumb
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224bbf4

.thumb
branch_224bbf4: @ 224bbf4 :thumb
	ldr     r0, [pc, #0x78] @ 0x224bc70, (=0x5f3)
	bl      Function_2005748
	mov     r1, r4
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	mov     r0, r4
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      Function_224b57c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	bl      Function_2026074
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r2, r0
	ldr     r0, [r4, #0x64]
	mov     r3, r1
	bl      Function_200b60c
	mov     r0, r4
	mov     r1, #0x6b
	bl      Function_224b4e8
	b       branch_224bc68
@ 0x224bc2e

.thumb
branch_224bc2e: @ 224bc2e :thumb
	ldr     r0, [pc, #0x40] @ 0x224bc70, (=0x5f3)
	bl      Function_2005748
	mov     r1, r4
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	mov     r0, r4
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      Function_224b57c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x3
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	bl      Function_2026074
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x64]
	mov     r3, #0x3
	bl      Function_200b60c
	mov     r0, r4
	mov     r1, #0x79
	bl      Function_224b4e8
.thumb
branch_224bc68: @ 224bc68 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x224bc6e


.align 2


.word 0x5f3 @ 0x224bc70
.thumb
Function_224bc74: @ 224bc74 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2050a60
	mov     r0, r4
	bl      Function_2050a64
	mov     r4, r0
	ldr     r1, [r4, #0x7c]
	cmp     r1, #0xb
	bls     branch_224bc8c
	b       branch_224be02
@ 0x224bc8c

.thumb
branch_224bc8c: @ 224bc8c :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224bc98

Jumppoints_224bc98:
.hword branch_224bcb0 - Jumppoints_224bc98 - 2
.hword branch_224bcbe - Jumppoints_224bc98 - 2
.hword branch_224bcdc - Jumppoints_224bc98 - 2
.hword branch_224bd0e - Jumppoints_224bc98 - 2
.hword branch_224bd1a - Jumppoints_224bc98 - 2
.hword branch_224bd40 - Jumppoints_224bc98 - 2
.hword branch_224bd5a - Jumppoints_224bc98 - 2
.hword branch_224bd78 - Jumppoints_224bc98 - 2
.hword branch_224bd8c - Jumppoints_224bc98 - 2
.hword branch_224bdae - Jumppoints_224bc98 - 2
.hword branch_224be06 - Jumppoints_224bc98 - 2
.hword branch_224bdc2 - Jumppoints_224bc98 - 2
.thumb
branch_224bcb0: @ 224bcb0 :thumb
	mov     r1, #0x6a
	bl      Function_224b4e8
	ldr     r0, [r4, #0x7c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x7c]
	b       branch_224be06
@ 0x224bcbe

.thumb
branch_224bcbe: @ 224bcbe :thumb
	ldr     r0, [r4, #0x74]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_205da04
	cmp     r0, #0x0
	bne     branch_224bcce
	b       branch_224be06
@ 0x224bcce

.thumb
branch_224bcce: @ 224bcce :thumb
	mov     r0, r4
	bl      Function_224b5a8
	ldr     r0, [r4, #0x7c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x7c]
	b       branch_224be06
@ 0x224bcdc

.thumb
branch_224bcdc: @ 224bcdc :thumb
	bl      Function_224b6e8
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_224bcf4
	ldr     r0, [r4, #0x70]
	mov     r1, #0x2
	strh    r1, [r0, #0x0]
	mov     r0, #0xb
	str     r0, [r4, #0x7c]
	b       branch_224be06
@ 0x224bcf4

.thumb
branch_224bcf4: @ 224bcf4 :thumb
	cmp     r0, #0x2
	bne     branch_224bd04
	ldr     r0, [r4, #0x70]
	mov     r1, #0x3
	strh    r1, [r0, #0x0]
	mov     r0, #0xb
	str     r0, [r4, #0x7c]
	b       branch_224be06
@ 0x224bd04

.thumb
branch_224bd04: @ 224bd04 :thumb
	cmp     r0, #0x1
	bne     branch_224be06
	mov     r0, #0x3
	str     r0, [r4, #0x7c]
	b       branch_224be06
@ 0x224bd0e

.thumb
branch_224bd0e: @ 224bd0e :thumb
	bl      Function_224b788
	ldr     r0, [r4, #0x7c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x7c]
	b       branch_224be06
@ 0x224bd1a

.thumb
branch_224bd1a: @ 224bd1a :thumb
	bl      Function_224b83c
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_224bd2c
	mov     r0, #0x2
	str     r0, [r4, #0x7c]
	b       branch_224be06
@ 0x224bd2c

.thumb
branch_224bd2c: @ 224bd2c :thumb
	cmp     r0, #0x1
	bne     branch_224bd36
	mov     r0, #0x5
	str     r0, [r4, #0x7c]
	b       branch_224be06
@ 0x224bd36

.thumb
branch_224bd36: @ 224bd36 :thumb
	cmp     r0, #0x2
	bne     branch_224be06
	mov     r0, #0x7
	str     r0, [r4, #0x7c]
	b       branch_224be06
@ 0x224bd40

.thumb
branch_224bd40: @ 224bd40 :thumb
	bl      Function_224bbc4
	cmp     r0, #0x0
	beq     branch_224bd54
	ldr     r0, [r4, #0x70]
	mov     r1, #0x1
	strh    r1, [r0, #0x0]
	mov     r0, #0xb
	str     r0, [r4, #0x7c]
	b       branch_224be06
@ 0x224bd54

.thumb
branch_224bd54: @ 224bd54 :thumb
	mov     r0, #0x6
	str     r0, [r4, #0x7c]
	b       branch_224be06
@ 0x224bd5a

.thumb
branch_224bd5a: @ 224bd5a :thumb
	ldr     r0, [r4, #0x74]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_224be06
	ldr     r0, [pc, #0xa0] @ 0x224be0c, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_224be06
	mov     r0, #0x0
	str     r0, [r4, #0x7c]
	b       branch_224be06
@ 0x224bd78

.thumb
branch_224bd78: @ 224bd78 :thumb
	mov     r1, #0x1
	bl      Function_224b558
	mov     r0, r4
	bl      Function_224b8dc
	ldr     r0, [r4, #0x7c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x7c]
	b       branch_224be06
@ 0x224bd8c

.thumb
branch_224bd8c: @ 224bd8c :thumb
	ldr     r1, [pc, #0x7c] @ 0x224be0c, (=0x21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x3
	tst     r1, r2
	beq     branch_224be06
	bl      Function_224bba0
	mov     r0, r4
	mov     r1, #0x6a
	bl      Function_224b4e8
	mov     r0, r4
	bl      Function_224b5a8
	mov     r0, #0x9
	str     r0, [r4, #0x7c]
	b       branch_224be06
@ 0x224bdae

.thumb
branch_224bdae: @ 224bdae :thumb
	ldr     r0, [r4, #0x74]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_205da04
	cmp     r0, #0x0
	beq     branch_224be06
	mov     r0, #0x3
	str     r0, [r4, #0x7c]
	b       branch_224be06
@ 0x224bdc2

.thumb
branch_224bdc2: @ 224bdc2 :thumb
	bl      Function_224b6ac
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_224b558
	ldr     r0, [r4, #0x64]
	bl      Function_200b3f0
	ldr     r0, [r4, #0x68]
	bl      Function_200b190
	ldr     r0, [r4, #0x14]
	bl      Function_20237bc
	ldr     r0, [r4, #0x18]
	bl      Function_20237bc
	ldr     r0, [r4, #0x1c]
	bl      Function_20237bc
	ldr     r0, [r4, #0x20]
	bl      Function_20237bc
	ldr     r0, [r4, #0x6c]
	bl      Function_207a2c0
	mov     r0, r4
	bl      free
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224be02

.thumb
branch_224be02: @ 224be02 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224be06

.thumb
branch_224be06: @ 224be06 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224be0a


.align 2


.word 0x21bf67c @ 0x224be0c
.thumb
Function_224be10: @ 224be10 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0xb
	mov     r1, #0x84
	bl      malloc2_maybe
	mov     r1, #0x0
	mov     r2, #0x84
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r0, #0x0
	str     r0, [r4, #0x7c]
	str     r5, [r4, #0x10]
	add     r5, #0xb0
	str     r0, [r5, #0x0]
	mov     r0, #0x4
	bl      Function_200b358
	str     r0, [r4, #0x64]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, #0xdd
	mov     r3, #0x4
	bl      Function_200b144
	str     r0, [r4, #0x68]
	mov     r0, #0xb4
	mov     r1, #0x4
	bl      Function_2023790
	str     r0, [r4, #0x14]
	mov     r0, #0xb4
	mov     r1, #0x4
	bl      Function_2023790
	str     r0, [r4, #0x18]
	mov     r0, #0xb4
	mov     r1, #0x4
	bl      Function_2023790
	str     r0, [r4, #0x1c]
	mov     r0, #0xb4
	mov     r1, #0x4
	bl      Function_2023790
	str     r0, [r4, #0x20]
	mov     r0, #0xb
	bl      Function_207a2a8
	str     r0, [r4, #0x6c]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x224be7a


.align 2, 0


.thumb
Function_224be7c: @ 224be7c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2050a60
	bl      Function_224be10
	mov     r2, r0
	ldr     r1, [pc, #0x8] @ 0x224be98, (=0x224bc75)
	mov     r0, r5
	str     r4, [r2, #0x70]
	bl      Function_2050944
	pop     {r3-r5,pc}
@ 0x224be98

.word Function_224bc74+1 @ =0x224bc75, 0x224be98
.thumb
Function_224be9c: @ 224be9c :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r1, #0xc1
	lsl     r1, r1, #2
	mov     r5, r0
	mov     r7, r2
	bl      malloc_maybe
	mov     r2, #0xc1
	mov     r4, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     Function_20d5124
	str     r5, [r4, #0x18]
	str     r7, [r4, #0x14]
	str     r6, [r4, #0x8]
	mov     r0, r6
	bl      LoadVariableAreaAdress_e
	bl      Function_2029d04
	str     r0, [r4, #0xc]
	mov     r0, r6
	bl      LoadVariableAreaAdress_3
	str     r0, [r4, #0x10]
	mov     r2, #0x8f
	ldr     r3, [r4, #0x18]
	mov     r0, #0x0
	mov     r1, #0x1a
	lsl     r2, r2, #2
	bl      Function_200b144
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_224c338
	mov     r0, r4
	bl      Function_224c35c
	mov     r0, r4
	bl      Function_224c3cc
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x224befc

.thumb
Function_224befc: @ 224befc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200b190
	mov     r0, r4
	bl      Function_224c3b8
	mov     r0, r4
	bl      Function_224c3e0
	mov     r2, #0xc1
	mov     r0, r4
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     Function_20d5124
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x224bf2a


.align 2, 0


.thumb
Function_224bf2c: @ 224bf2c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0xc
	bls     branch_224bf3a
	b       branch_224c32a
@ 0x224bf3a

.thumb
branch_224bf3a: @ 224bf3a :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224bf46

Jumppoints_224bf46:
.hword branch_224bf60 - Jumppoints_224bf46 - 2
.hword branch_224bf9e - Jumppoints_224bf46 - 2
.hword branch_224bfde - Jumppoints_224bf46 - 2
.hword branch_224c036 - Jumppoints_224bf46 - 2
.hword branch_224c06c - Jumppoints_224bf46 - 2
.hword branch_224c10e - Jumppoints_224bf46 - 2
.hword branch_224c122 - Jumppoints_224bf46 - 2
.hword branch_224c212 - Jumppoints_224bf46 - 2
.hword branch_224c262 - Jumppoints_224bf46 - 2
.hword branch_224c28e - Jumppoints_224bf46 - 2
.hword branch_224c2ba - Jumppoints_224bf46 - 2
.hword branch_224c2ce - Jumppoints_224bf46 - 2
.hword branch_224c2fc - Jumppoints_224bf46 - 2
.thumb
branch_224bf60: @ 224bf60 :thumb
	mov     r3, #0x55
	lsl     r3, r3, #2
	add     r0, r4, r3
	.hword  0x1f1b @ sub r3, r3, #0x4
	ldr     r1, [r4, #0x14]
	ldr     r2, [r4, #0x18]
	ldr     r3, [r4, r3]
	bl      Function_224c3ec
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x4
	bl      Function_200b1ec
	mov     r5, r0
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r2, [r4, #0x18]
	add     r0, r4, r0
	mov     r1, r5
	bl      Function_224c468
	mov     r0, r5
	bl      Function_20237bc
	mov     r0, #0xb
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_224c32a
@ 0x224bf9e

.thumb
branch_224bf9e: @ 224bf9e :thumb
	ldr     r0, [r4, #0xc]
	ldr     r1, [pc, #0x348] @ 0x224c2ec, (=0x224f1b4)
	mov     r2, #0x16
	bl      Function_224cc88
	cmp     r0, #0x0
	beq     branch_224bfd8
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_200b1ec
	mov     r5, r0
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r2, [r4, #0x18]
	add     r0, r4, r0
	mov     r1, r5
	bl      Function_224c468
	mov     r0, r5
	bl      Function_20237bc
	mov     r0, #0xb
	str     r0, [r4, #0x0]
	mov     r0, #0xc
	str     r0, [r4, #0x4]
	b       branch_224c32a
@ 0x224bfd8

.thumb
branch_224bfd8: @ 224bfd8 :thumb
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	b       branch_224c32a
@ 0x224bfde

.thumb
branch_224bfde: @ 224bfde :thumb
	mov     r2, #0x5a
	lsl     r2, r2, #2
	add     r0, r4, r2
	sub     r2, #0x20
	ldr     r1, [r4, #0x14]
	ldr     r2, [r4, r2]
	ldr     r3, [r4, #0x18]
	bl      Function_224c620
	ldr     r0, [r4, #0x18]
	mov     r1, #0x5a
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x14]
	lsl     r1, r1, #2
	str     r0, [sp, #0x4]
	mov     r0, #0x2f
	lsl     r0, r0, #4
	ldr     r2, [pc, #0x2e8] @ 0x224c2ec, (=0x224f1b4)
	ldr     r3, [r4, #0x10]
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_224cbd0
	mov     r1, #0x52
	mov     r0, #0x16
	lsl     r1, r1, #2
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r1]
	add     r1, #0x3c
	str     r0, [sp, #0x4]
	mov     r0, #0x2f
	lsl     r0, r0, #4
	add     r0, r4, r0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x2cc] @ 0x224c2f0, (=0x224cbe5)
	ldr     r3, [pc, #0x2c4] @ 0x224c2ec, (=0x224f1b4)
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x1c]
	str     r0, [sp, #0x10]
	add     r0, r4, r1
	ldr     r1, [r4, #0x14]
	ldr     r2, [r4, #0x18]
	bl      Function_224c768
.thumb
branch_224c036: @ 224c036 :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_224ca0c
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_200b1ec
	mov     r5, r0
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r2, [r4, #0x18]
	add     r0, r4, r0
	mov     r1, r5
	bl      Function_224c468
	mov     r0, r5
	bl      Function_20237bc
	mov     r0, #0xa
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	str     r0, [r4, #0x4]
	b       branch_224c32a
@ 0x224c06c

.thumb
branch_224c06c: @ 224c06c :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_224c9a4
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_224c0d2
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	beq     branch_224c0d2
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x12
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x14]
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2019cb8
	mov     r0, #0x61
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_224ca34
	mov     r0, #0x2b
	lsl     r0, r0, #4
	ldrh    r0, [r4, r0]
	mov     r1, #0x55
	lsl     r1, r1, #2
	str     r0, [sp, #0x0]
	add     r0, r4, r1
	sub     r1, #0xc
	ldr     r1, [r4, r1]
	ldr     r2, [r4, #0x18]
	ldr     r3, [pc, #0x22c] @ 0x224c2ec, (=0x224f1b4)
	bl      Function_224c4e0
	mov     r0, #0xa
	str     r0, [r4, #0x0]
	mov     r0, #0x5
	str     r0, [r4, #0x4]
	ldr     r0, [pc, #0x228] @ 0x224c2f4, (=0x5dc)
	bl      Function_2005748
	b       branch_224c32a
@ 0x224c0d2

.thumb
branch_224c0d2: @ 224c0d2 :thumb
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_224c0dc
	b       branch_224c32a
@ 0x224c0dc

.thumb
branch_224c0dc: @ 224c0dc :thumb
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xb
	bl      Function_200b1ec
	mov     r5, r0
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r2, [r4, #0x18]
	add     r0, r4, r0
	mov     r1, r5
	bl      Function_224c468
	mov     r0, r5
	bl      Function_20237bc
	mov     r0, #0xb
	str     r0, [r4, #0x0]
	mov     r0, #0xc
	str     r0, [r4, #0x4]
	ldr     r0, [pc, #0x1ec] @ 0x224c2f4, (=0x5dc)
	bl      Function_2005748
	b       branch_224c32a
@ 0x224c10e

.thumb
branch_224c10e: @ 224c10e :thumb
	mov     r0, #0xb9
	lsl     r0, r0, #2
	ldr     r1, [r4, #0x14]
	ldr     r2, [r4, #0x18]
	add     r0, r4, r0
	bl      Function_224cc44
	mov     r0, #0x6
	str     r0, [r4, #0x0]
	b       branch_224c32a
@ 0x224c122

.thumb
branch_224c122: @ 224c122 :thumb
	mov     r0, #0xb9
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_224cc78
	cmp     r0, #0x0
	bne     branch_224c1f8
	mov     r2, #0x2b
	lsl     r2, r2, #4
	ldrh    r2, [r4, r2]
	ldr     r0, [r4, #0x10]
	ldr     r1, [pc, #0x1b0] @ 0x224c2ec, (=0x224f1b4)
	ldr     r3, [r4, #0x18]
	bl      Function_224ccb8
	cmp     r0, #0x0
	bne     branch_224c17a
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x9
	bl      Function_200b1ec
	mov     r5, r0
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r2, [r4, #0x18]
	add     r0, r4, r0
	mov     r1, r5
	bl      Function_224c468
	mov     r0, r5
	bl      Function_20237bc
	mov     r0, #0xb
	str     r0, [r4, #0x0]
	mov     r0, #0x3
	str     r0, [r4, #0x4]
	mov     r0, #0xb9
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_224cc6c
	b       branch_224c32a
@ 0x224c17a

.thumb
branch_224c17a: @ 224c17a :thumb
	mov     r2, #0x2b
	lsl     r2, r2, #4
	ldrh    r2, [r4, r2]
	ldr     r0, [r4, #0xc]
	ldr     r1, [pc, #0x168] @ 0x224c2ec, (=0x224f1b4)
	bl      Function_224cce4
	cmp     r0, #0x0
	bne     branch_224c1c2
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xa
	bl      Function_200b1ec
	mov     r5, r0
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r2, [r4, #0x18]
	add     r0, r4, r0
	mov     r1, r5
	bl      Function_224c468
	mov     r0, r5
	bl      Function_20237bc
	mov     r0, #0xb9
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_224cc6c
	mov     r0, #0xb
	str     r0, [r4, #0x0]
	mov     r0, #0x3
	str     r0, [r4, #0x4]
	b       branch_224c32a
@ 0x224c1c2

.thumb
branch_224c1c2: @ 224c1c2 :thumb
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x8
	bl      Function_200b1ec
	mov     r5, r0
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r2, [r4, #0x18]
	add     r0, r4, r0
	mov     r1, r5
	bl      Function_224c468
	mov     r0, r5
	bl      Function_20237bc
	mov     r0, #0xb9
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_224cc6c
	mov     r0, #0xb
	str     r0, [r4, #0x0]
	mov     r0, #0x7
	str     r0, [r4, #0x4]
	b       branch_224c32a
@ 0x224c1f8

.thumb
branch_224c1f8: @ 224c1f8 :thumb
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_224c202
	b       branch_224c32a
@ 0x224c202

.thumb
branch_224c202: @ 224c202 :thumb
	mov     r0, #0xb9
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_224cc6c
	mov     r0, #0x3
	str     r0, [r4, #0x0]
	b       branch_224c32a
@ 0x224c212

.thumb
branch_224c212: @ 224c212 :thumb
	ldr     r0, [r4, #0x18]
	mov     r3, #0x2b
	str     r0, [sp, #0x0]
	lsl     r3, r3, #4
	ldrh    r3, [r4, r3]
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x10]
	ldr     r2, [pc, #0xc8] @ 0x224c2ec, (=0x224f1b4)
	bl      Function_224ccf4
	mov     r0, #0x2b
	lsl     r0, r0, #4
	ldrh    r0, [r4, r0]
	mov     r1, #0x55
	lsl     r1, r1, #2
	str     r0, [sp, #0x0]
	add     r0, r4, r1
	sub     r1, #0xc
	ldr     r1, [r4, r1]
	ldr     r2, [r4, #0x18]
	ldr     r3, [pc, #0xb0] @ 0x224c2ec, (=0x224f1b4)
	bl      Function_224c580
	ldr     r0, [r4, #0xc]
	ldr     r1, [pc, #0xa8] @ 0x224c2ec, (=0x224f1b4)
	mov     r2, #0x16
	bl      Function_224cc88
	cmp     r0, #0x0
	beq     branch_224c258
	mov     r0, #0xb
	str     r0, [r4, #0x0]
	mov     r0, #0x8
	str     r0, [r4, #0x4]
	b       branch_224c32a
@ 0x224c258

.thumb
branch_224c258: @ 224c258 :thumb
	mov     r0, #0xb
	str     r0, [r4, #0x0]
	mov     r0, #0x3
	str     r0, [r4, #0x4]
	b       branch_224c32a
@ 0x224c262

.thumb
branch_224c262: @ 224c262 :thumb
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xd
	bl      Function_200b1ec
	mov     r5, r0
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r2, [r4, #0x18]
	add     r0, r4, r0
	mov     r1, r5
	bl      Function_224c468
	mov     r0, r5
	bl      Function_20237bc
	mov     r0, #0xb
	str     r0, [r4, #0x0]
	mov     r0, #0x9
	str     r0, [r4, #0x4]
	b       branch_224c32a
@ 0x224c28e

.thumb
branch_224c28e: @ 224c28e :thumb
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_200b1ec
	mov     r5, r0
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r2, [r4, #0x18]
	add     r0, r4, r0
	mov     r1, r5
	bl      Function_224c468
	mov     r0, r5
	bl      Function_20237bc
	mov     r0, #0xb
	str     r0, [r4, #0x0]
	mov     r0, #0xc
	str     r0, [r4, #0x4]
	b       branch_224c32a
@ 0x224c2ba

.thumb
branch_224c2ba: @ 224c2ba :thumb
	mov     r0, #0x55
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_224c4b8
	cmp     r0, #0x0
	beq     branch_224c32a
	ldr     r0, [r4, #0x4]
	str     r0, [r4, #0x0]
	b       branch_224c32a
@ 0x224c2ce

.thumb
branch_224c2ce: @ 224c2ce :thumb
	mov     r0, #0x55
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_224c4b8
	cmp     r0, #0x0
	beq     branch_224c32a
	ldr     r0, [pc, #0x18] @ 0x224c2f8, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_224c32a
	ldr     r0, [r4, #0x4]
	str     r0, [r4, #0x0]
	b       branch_224c32a
@ 0x224c2ec

.word 0x224f1b4 @ 0x224c2ec
.word 0x224cbe5 @ 0x224c2f0
.word 0x5dc @ 0x224c2f4
.word 0x21bf67c @ 0x224c2f8
.thumb
branch_224c2fc: @ 224c2fc :thumb
	mov     r0, #0x55
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_224c444
	mov     r0, #0x5a
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_224c698
	mov     r0, #0x61
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_224c934
	mov     r0, #0xb9
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_224cc6c
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x224c32a

.thumb
branch_224c32a: @ 224c32a :thumb
	ldr     r0, [r4, #0x1c]
	bl      Function_20219f8
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x224c336


.align 2, 0


.thumb
Function_224c338: @ 224c338 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	bl      LoadPlayerDataAdress
	mov     r4, r0
	bl      Function_2027b50
	mov     r1, #0x53
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r4
	bl      Function_2027ac0
	mov     r1, #0x15
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	pop     {r3-r5,pc}
@ 0x224c35c

.thumb
Function_224c35c: @ 224c35c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x3
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x18]
	mov     r2, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x14]
	mov     r3, #0xa
	bl      Function_200dd0c
	mov     r1, #0x6
	ldr     r2, [r4, #0x18]
	mov     r0, #0x0
	lsl     r1, r1, #6
	bl      Function_2002e98
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x18]
	mov     r1, #0x3
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x14]
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200daa4
	mov     r1, #0x1a
	ldr     r2, [r4, #0x18]
	mov     r0, #0x0
	lsl     r1, r1, #4
	bl      Function_2002e7c
	ldr     r0, [r4, #0x14]
	mov     r1, #0x3
	bl      Function_2019ebc
	add     sp, #0x8
	pop     {r4,pc}
@ 0x224c3b6


.align 2, 0


.thumb
Function_224c3b8: @ 224c3b8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x14]
	mov     r1, #0x3
	bl      Function_2019ebc
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_205d8cc
	pop     {r3,pc}
@ 0x224c3cc

.thumb
Function_224c3cc: @ 224c3cc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	ldr     r2, [r4, #0x18]
	mov     r0, #0x2
	add     r1, #0x20
	bl      Function_20095c4
	str     r0, [r4, #0x1c]
	pop     {r4,pc}
@ 0x224c3e0

.thumb
Function_224c3e0: @ 224c3e0 :thumb
	ldr     r3, [pc, #0x4] @ 0x224c3e8, (=0x2021965)
	ldr     r0, [r0, #0x1c]
	bx      r3
@ 0x224c3e6


.align 2


.word 0x2021965 @ 0x224c3e8
.thumb
Function_224c3ec: @ 224c3ec :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	cmp     r0, #0x1
	beq     branch_224c43e
	str     r3, [r5, #0x8]
	mov     r0, r2
	mov     r1, #0x1
	bl      Function_201a778
	str     r0, [r5, #0x4]
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	str     r0, [sp, #0x10]
	ldr     r1, [r5, #0x4]
	mov     r0, r4
	mov     r2, #0x3
	mov     r3, #0x2
	bl      Function_201a7e8
	ldr     r0, [r5, #0x4]
	mov     r1, #0xf
	bl      Function_201ada4
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200e060
	mov     r0, #0x1
	str     r0, [r5, #0x0]
.thumb
branch_224c43e: @ 224c43e :thumb
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x224c442


.align 2, 0


.thumb
Function_224c444: @ 224c444 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_224c466
	ldr     r0, [r4, #0x4]
	bl      Function_201acf4
	ldr     r0, [r4, #0x4]
	bl      Function_201a8fc
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_201a928
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_224c466: @ 224c466 :thumb
	pop     {r4,pc}
@ 0x224c468

.thumb
Function_224c468: @ 224c468 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	mov     r4, r1
	mov     r6, r2
	cmp     r0, #0x0
	beq     branch_224c47c
	bl      ErrorHandling
.thumb
branch_224c47c: @ 224c47c :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, r4
	mov     r1, r6
	bl      Function_2023868
	str     r0, [r5, #0x10]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x224c4b4, (=0x1020f)
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	ldr     r2, [r5, #0x10]
	bl      Function_201d78c
	str     r0, [r5, #0xc]
	ldr     r0, [r5, #0x4]
	bl      Function_201a954
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x224c4b2


.align 2


.word 0x1020f @ 0x224c4b4
.thumb
Function_224c4b8: @ 224c4b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_224c4dc
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_224c4d8
	bl      Function_20237bc
	mov     r0, #0x0
	str     r0, [r4, #0x10]
.thumb
branch_224c4d8: @ 224c4d8 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224c4dc

.thumb
branch_224c4dc: @ 224c4dc :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224c4e0

.thumb
Function_224c4e0: @ 224c4e0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	mov     r0, r2
	mov     r4, r1
	mov     r5, r3
	bl      Function_200b358
	mov     r6, r0
	ldr     r1, [sp, #0xc]
	mov     r0, #0xc8
	bl      Function_2023790
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_200b1ec
	ldr     r1, [sp, #0x30]
	str     r0, [sp, #0x14]
	mov     r7, r5
	mov     r0, #0xc
	mov     r4, r1
	mul     r4, r0
	add     r7, #0x8
	ldr     r0, [r7, r4]
	cmp     r0, #0x1
	bne     branch_224c52a
	add     r2, r5, r4
	ldr     r2, [r2, #0x4]
	mov     r0, r6
	mov     r1, #0x0
	add     r2, #0x95
	bl      Function_200b70c
	b       branch_224c538
@ 0x224c52a

.thumb
branch_224c52a: @ 224c52a :thumb
	add     r2, r5, r4
	ldr     r2, [r2, #0x4]
	mov     r0, r6
	mov     r1, #0x0
	add     r2, #0x95
	bl      Function_200b77c
.thumb
branch_224c538: @ 224c538 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r2, [r7, r4]
	mov     r0, r6
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r2, [r5, r4]
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_200bfac
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x14]
	mov     r0, r6
	bl      Function_200c388
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	bl      Function_224c468
	mov     r0, r6
	bl      Function_200b3f0
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc
	ldr     r0, [sp, #0x14]
	bl      Function_20237bc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x224c57e


.align 2, 0


.thumb
Function_224c580: @ 224c580 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	mov     r0, r2
	mov     r4, r1
	mov     r5, r3
	bl      Function_200b358
	mov     r6, r0
	ldr     r1, [sp, #0xc]
	mov     r0, #0xc8
	bl      Function_2023790
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0xc
	bl      Function_200b1ec
	ldr     r1, [sp, #0x30]
	str     r0, [sp, #0x14]
	mov     r7, r5
	mov     r0, #0xc
	mov     r4, r1
	mul     r4, r0
	add     r7, #0x8
	ldr     r0, [r7, r4]
	cmp     r0, #0x1
	bne     branch_224c5ca
	add     r2, r5, r4
	ldr     r2, [r2, #0x4]
	mov     r0, r6
	mov     r1, #0x0
	add     r2, #0x95
	bl      Function_200b70c
	b       branch_224c5d8
@ 0x224c5ca

.thumb
branch_224c5ca: @ 224c5ca :thumb
	add     r2, r5, r4
	ldr     r2, [r2, #0x4]
	mov     r0, r6
	mov     r1, #0x0
	add     r2, #0x95
	bl      Function_200b77c
.thumb
branch_224c5d8: @ 224c5d8 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r2, [r7, r4]
	mov     r0, r6
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r2, [r5, r4]
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_200bfac
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x14]
	mov     r0, r6
	bl      Function_200c388
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	bl      Function_224c468
	mov     r0, r6
	bl      Function_200b3f0
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc
	ldr     r0, [sp, #0x14]
	bl      Function_20237bc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x224c61e


.align 2, 0


.thumb
Function_224c620: @ 224c620 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	mov     r4, r1
	mov     r7, r2
	str     r3, [sp, #0x14]
	cmp     r0, #0x1
	beq     branch_224c692
	mov     r0, r3
	mov     r1, #0x1
	bl      Function_201a778
	str     r0, [r6, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, #0xe
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x94
	str     r0, [sp, #0x10]
	ldr     r1, [r6, #0x4]
	mov     r0, r4
	mov     r2, #0x3
	mov     r3, #0x1
	bl      Function_201a7e8
	ldr     r0, [sp, #0x14]
	bl      Function_200b358
	str     r0, [r6, #0x8]
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_224c668: @ 224c668 :thumb
	mov     r1, r4
	mov     r0, r7
	add     r1, #0x10
	bl      Function_200b1ec
	str     r0, [r5, #0x10]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_224c668
	ldr     r1, [sp, #0x14]
	mov     r0, #0x20
	bl      Function_2023790
	str     r0, [r6, #0xc]
	ldr     r0, [r6, #0x4]
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0x1
	str     r0, [r6, #0x0]
.thumb
branch_224c692: @ 224c692 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x224c696


.align 2, 0


.thumb
Function_224c698: @ 224c698 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_224c6d8
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_224c6a6: @ 224c6a6 :thumb
	ldr     r0, [r5, #0x10]
	bl      Function_20237bc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_224c6a6
	ldr     r0, [r6, #0xc]
	bl      Function_20237bc
	ldr     r0, [r6, #0x8]
	bl      Function_200b3f0
	ldr     r0, [r6, #0x4]
	bl      Function_201acf4
	ldr     r0, [r6, #0x4]
	bl      Function_201a8fc
	ldr     r0, [r6, #0x4]
	mov     r1, #0x1
	bl      Function_201a928
	mov     r0, #0x0
	str     r0, [r6, #0x0]
.thumb
branch_224c6d8: @ 224c6d8 :thumb
	pop     {r4-r6,pc}
@ 0x224c6da


.align 2, 0


.thumb
Function_224c6dc: @ 224c6dc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r1
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	add     r6, #0x95
	mov     r4, r2
	mov     r1, #0x0
	mov     r2, r6
	mov     r7, r3
	bl      Function_200b70c
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r5, #0x8]
	mov     r2, r4
	mov     r3, #0x3
	bl      Function_200b60c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x2
	mov     r2, r7
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r0, [r5, #0x4]
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r7, #0x0
	mov     r6, r5
	mov     r4, r7
.thumb
branch_224c724: @ 224c724 :thumb
	ldr     r0, [r5, #0x8]
	ldr     r1, [r5, #0xc]
	ldr     r2, [r6, #0x10]
	bl      Function_200c388
	mov     r1, #0x0
	str     r4, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x224c764, (=0x1020f)
	mov     r3, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	ldr     r2, [r5, #0xc]
	bl      Function_201d78c
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	add     r4, #0x10
	cmp     r7, #0x3
	blt     branch_224c724
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200dc48
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224c762


.align 2


.word 0x1020f @ 0x224c764
.thumb
Function_224c768: @ 224c768 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x64
	mov     r5, r0
	ldr     r0, [sp, #0x78]
	mov     r4, r1
	str     r0, [sp, #0x78]
	ldr     r0, [r5, #0x0]
	str     r2, [sp, #0x14]
	str     r3, [sp, #0x18]
	cmp     r0, #0x1
	bne     branch_224c780
	b       branch_224c924
@ 0x224c780

.thumb
branch_224c780: @ 224c780 :thumb
	ldr     r0, [sp, #0x78]
	mov     r1, #0x1
	mov     r2, #0x12
	str     r1, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r2, r2, #4
	str     r0, [r5, r2]
	mov     r0, r2
	ldr     r3, [sp, #0x80]
	add     r0, #0x10
	str     r3, [r5, r0]
	ldr     r0, [sp, #0x84]
	add     r2, #0x14
	str     r0, [r5, r2]
	ldr     r0, [sp, #0x14]
	bl      Function_201a778
	str     r0, [r5, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0xe
	str     r0, [sp, #0x4]
	mov     r0, #0x10
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0xe8
	str     r0, [sp, #0x10]
	ldr     r1, [r5, #0x4]
	mov     r0, r4
	mov     r2, #0x3
	mov     r3, #0x11
	bl      Function_201a7e8
	ldr     r0, [sp, #0x14]
	bl      Function_200b358
	mov     r1, #0x49
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r1, [sp, #0x14]
	mov     r0, #0x20
	bl      Function_2023790
	mov     r1, #0x4a
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [sp, #0x7c]
	mov     r1, #0x10
	bl      Function_200b1ec
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x78]
	mov     r7, #0x0
	cmp     r0, #0x0
	bls     branch_224c844
	mov     r6, r5
	mov     r4, r5
.thumb
branch_224c7f4: @ 224c7f4 :thumb
	mov     r0, #0x49
	ldr     r2, [sp, #0x18]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x0
	bl      Function_200bfac
	mov     r0, #0x49
	mov     r1, #0x4a
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r2, [sp, #0x1c]
	bl      Function_200c388
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x14]
	bl      Function_2023868
	mov     r1, r6
	add     r1, #0xc4
	str     r0, [r1, #0x0]
	mov     r0, r6
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	.hword  0x1d36 @ add r6, r6, #0x4
	str     r0, [r4, #0xc]
	str     r7, [r4, #0x10]
	ldr     r0, [sp, #0x18]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r0, #0xc
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x78]
	add     r4, #0x8
	cmp     r7, r0
	bcc     branch_224c7f4
.thumb
branch_224c844: @ 224c844 :thumb
	ldr     r0, [sp, #0x78]
	mov     r4, r5
	lsl     r6, r0, #2
	ldr     r0, [sp, #0x7c]
	add     r4, #0xc4
	mov     r1, #0x13
	bl      Function_200b1ec
	str     r0, [r4, r6]
	ldr     r0, [sp, #0x78]
	lsl     r1, r0, #3
	ldr     r0, [r4, r6]
	add     r1, r5, r1
	str     r0, [r1, #0xc]
	ldr     r0, [sp, #0x78]
	str     r0, [r1, #0x10]
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_200b3f0
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_20237bc
	ldr     r0, [sp, #0x1c]
	bl      Function_20237bc
	ldr     r3, [sp, #0x14]
	ldr     r0, [r5, #0x4]
	ldr     r1, [pc, #0xa4] @ 0x224c928, (=0x224f4f0)
	lsl     r3, r3, #24
	str     r0, [r1, #0xc]
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	lsr     r3, r3, #24
	strh    r0, [r1, #0x10]
	mov     r0, r5
	add     r0, #0xc
	str     r0, [r1, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x90] @ 0x224c92c, (=0x224f4f0)
	mov     r2, r1
	bl      Function_200112c
	str     r0, [r5, #0x8]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200dc48
	mov     r7, #0x4e
	mov     r4, #0x0
	mov     r6, r5
	lsl     r7, r7, #2
.thumb
branch_224c8b8: @ 224c8b8 :thumb
	ldr     r2, [sp, #0x14]
	mov     r0, #0x1
	mov     r1, r4
	bl      Function_2009714
	str     r0, [r6, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0x4
	blt     branch_224c8b8
	ldr     r2, [sp, #0x14]
	add     r0, sp, #0x40
	mov     r1, r5
	bl      Function_224ca54
	ldr     r0, [sp, #0x88]
	mov     r6, #0x0
	str     r0, [sp, #0x20]
	add     r0, sp, #0x40
	str     r0, [sp, #0x24]
	mov     r0, #0x1
	str     r0, [sp, #0x38]
	ldr     r0, [sp, #0x14]
	mov     r7, #0x56
	str     r0, [sp, #0x3c]
	mov     r0, #0x3
	lsl     r0, r0, #18
	ldr     r4, [pc, #0x40] @ 0x224c930, (=0x224f1a8)
	str     r6, [sp, #0x34]
	str     r0, [sp, #0x28]
	lsl     r7, r7, #2
.thumb
branch_224c8f6: @ 224c8f6 :thumb
	ldrb    r0, [r4, #0x0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x20
	bl      Function_2021b90
	mov     r1, #0x56
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      Function_2021d6c
	ldr     r0, [r5, r7]
	mov     r1, #0x1
	bl      Function_2021cc8
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x2
	blt     branch_224c8f6
.thumb
branch_224c924: @ 224c924 :thumb
	add     sp, #0x64
	pop     {r4-r7,pc}
@ 0x224c928

.word 0x224f4f0 @ 0x224c928
.word 0x224f4f0 @ 0x224c92c
.word 0x224f1a8 @ 0x224c930
.thumb
Function_224c934: @ 224c934 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_224c9a2
	mov     r7, #0x56
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_224c946: @ 224c946 :thumb
	ldr     r0, [r5, r7]
	bl      Function_2021bd4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_224c946
	mov     r0, r6
	bl      Function_224cb40
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_224c980
	mov     r7, #0x12
	mov     r4, r6
	lsl     r7, r7, #4
.thumb
branch_224c96c: @ 224c96c :thumb
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	bl      Function_20237bc
	ldr     r0, [r6, r7]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, r0
	blt     branch_224c96c
.thumb
branch_224c980: @ 224c980 :thumb
	mov     r1, #0x0
	ldr     r0, [r6, #0x8]
	mov     r2, r1
	bl      Function_2001384
	ldr     r0, [r6, #0x4]
	bl      Function_201acf4
	ldr     r0, [r6, #0x4]
	bl      Function_201a8fc
	ldr     r0, [r6, #0x4]
	mov     r1, #0x1
	bl      Function_201a928
	mov     r0, #0x1
	str     r0, [r6, #0x0]
.thumb
branch_224c9a2: @ 224c9a2 :thumb
	pop     {r3-r7,pc}
@ 0x224c9a4

.thumb
Function_224c9a4: @ 224c9a4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	bl      Function_2001288
	mov     r1, #0x0
	mov     r4, r0
	mvn     r1, r1
	cmp     r4, r1
	bne     branch_224c9ea
	ldr     r0, [r5, #0x8]
	add     r1, sp, #0x0
	bl      Function_20014d0
	mov     r2, #0x4b
	add     r0, sp, #0x0
	lsl     r2, r2, #2
	ldrh    r1, [r0, #0x0]
	ldrh    r0, [r5, r2]
	cmp     r0, r1
	beq     branch_224ca02
	strh    r1, [r5, r2]
	add     r0, r2, #0x4
	ldrh    r1, [r5, r2]
	add     r2, #0x8
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	blx     r2
	ldr     r0, [pc, #0x28] @ 0x224ca08, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	bl      Function_224cb70
	b       branch_224ca02
@ 0x224c9ea

.thumb
branch_224c9ea: @ 224c9ea :thumb
	.hword  0x1e48 @ sub r0, r1, #0x1
	cmp     r4, r0
	beq     branch_224ca02
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldrh    r2, [r5, r0]
	sub     r0, #0xc
	ldr     r0, [r5, r0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r2, r0
	bne     branch_224ca02
	.hword  0x1e4c @ sub r4, r1, #0x1
.thumb
branch_224ca02: @ 224ca02 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x224ca06


.align 2


.word 0x5dc @ 0x224ca08
.thumb
Function_224ca0c: @ 224ca0c :thumb
	push    {r4,lr}
	mov     r2, #0x13
	lsl     r2, r2, #4
	mov     r4, r0
	.hword  0x1f11 @ sub r1, r2, #0x4
	ldr     r0, [r4, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldrh    r1, [r4, r1]
	ldr     r2, [r4, r2]
	blx     r2
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200dc48
	mov     r0, r4
	bl      Function_224cb70
	pop     {r4,pc}
@ 0x224ca34

.thumb
Function_224ca34: @ 224ca34 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	pop     {r4,pc}
@ 0x224ca52


.align 2, 0


.thumb
Function_224ca54: @ 224ca54 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r4, r2
	mov     r7, r0
	mov     r5, r1
	mov     r0, #0x3e
	mov     r1, r4
	bl      LoadFromNARC_8
	ldr     r1, [pc, #0xd4] @ 0x224cb3c, (=0x1388)
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	lsr     r0, r1, #4
	str     r4, [sp, #0x8]
	ldr     r0, [r5, r0]
	mov     r1, r6
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2009a4c
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [pc, #0xb4] @ 0x224cb3c, (=0x1388)
	sub     r1, #0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r0, [r5, r1]
	mov     r1, r6
	mov     r2, #0xa
	mov     r3, #0x0
	bl      Function_2009b04
	mov     r1, #0x53
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [pc, #0x94] @ 0x224cb3c, (=0x1388)
	sub     r1, #0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r6
	mov     r2, #0x5
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x15
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	ldr     r0, [pc, #0x74] @ 0x224cb3c, (=0x1388)
	sub     r1, #0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r6
	mov     r2, #0x6
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x55
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r6
	bl      Call_FS_CloseFile
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_200a3dc
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_200a640
	ldr     r1, [pc, #0x3c] @ 0x224cb3c, (=0x1388)
	mov     r0, #0x0
	mov     r3, #0x4f
	str     r1, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	lsr     r2, r1, #4
	ldr     r2, [r5, r2]
	lsl     r3, r3, #2
	str     r2, [sp, #0x14]
	ldr     r2, [r5, r3]
	str     r2, [sp, #0x18]
	add     r2, r3, #0x4
	ldr     r2, [r5, r2]
	add     r3, #0x8
	str     r2, [sp, #0x1c]
	ldr     r2, [r5, r3]
	mov     r3, r1
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	mov     r0, r7
	mov     r2, r1
	bl      Function_20093b4
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x224cb3a


.align 2


.word 0x1388 @ 0x224cb3c
.thumb
Function_224cb40: @ 224cb40 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_200a4e4
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_200a6dc
	mov     r6, #0x4e
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_224cb5e: @ 224cb5e :thumb
	ldr     r0, [r5, r6]
	bl      Function_2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_224cb5e
	pop     {r4-r6,pc}
@ 0x224cb6e


.align 2, 0


.thumb
Function_224cb70: @ 224cb70 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0x0
	mov     r2, #0x0
	bl      Function_20014dc
	add     r0, sp, #0x0
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_224cb96
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	b       branch_224cba2
@ 0x224cb96

.thumb
branch_224cb96: @ 224cb96 :thumb
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2021cac
.thumb
branch_224cba2: @ 224cba2 :thumb
	add     r0, sp, #0x0
	ldrh    r2, [r0, #0x0]
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1fc9 @ sub r1, r1, #0x7
	cmp     r2, r1
	blt     branch_224cbc0
	add     r0, #0x3c
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224cbc0

.thumb
branch_224cbc0: @ 224cbc0 :thumb
	add     r0, #0x3c
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2021cac
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224cbce


.align 2, 0


.thumb
Function_224cbd0: @ 224cbd0 :thumb
	push    {r3,r4}
	ldr     r4, [sp, #0xc]
	str     r4, [r0, #0x4]
	str     r1, [r0, #0x8]
	str     r2, [r0, #0xc]
	ldr     r1, [sp, #0x8]
	str     r3, [r0, #0x10]
	str     r1, [r0, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x224cbe4

.thumb
Function_224cbe4: @ 224cbe4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	cmp     r1, #0x16
	bcs     branch_224cc1c
	mov     r4, r1
	mov     r0, #0xc
	mul     r4, r0
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x10]
	add     r1, r1, r4
	ldr     r1, [r1, #0x4]
	ldr     r2, [r5, #0x0]
	add     r1, #0x95
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_207d730
	ldr     r1, [r5, #0xc]
	mov     r3, r0
	add     r2, r1, r4
	ldr     r1, [r2, #0x4]
	ldr     r0, [r5, #0x8]
	ldr     r2, [r2, #0x8]
	bl      Function_224c6dc
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x224cc1c

.thumb
branch_224cc1c: @ 224cc1c :thumb
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	mov     r2, #0x0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2019cb8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x3
	bl      Function_2019448
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x224cc44

.thumb
Function_224cc44: @ 224cc44 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r2
	cmp     r0, #0x1
	beq     branch_224cc66
	mov     r0, r1
	ldr     r1, [pc, #0x14] @ 0x224cc68, (=0x224f1ac)
	mov     r2, #0x1f
	mov     r3, #0xb
	str     r4, [sp, #0x0]
	bl      Function_2002100
	str     r0, [r5, #0x4]
	str     r4, [r5, #0x8]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
.thumb
branch_224cc66: @ 224cc66 :thumb
	pop     {r3-r5,pc}
@ 0x224cc68

.word 0x224f1ac @ 0x224cc68
.thumb
Function_224cc6c: @ 224cc6c :thumb
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_224cc76
	mov     r1, #0x0
	str     r1, [r0, #0x0]
.thumb
branch_224cc76: @ 224cc76 :thumb
	bx      lr
@ 0x224cc78

.thumb
Function_224cc78: @ 224cc78 :thumb
	ldr     r3, [pc, #0x8] @ 0x224cc84, (=0x2002115)
	mov     r1, r0
	ldr     r0, [r1, #0x4]
	ldr     r1, [r1, #0x8]
	bx      r3
@ 0x224cc82


.align 2


.word 0x2002115 @ 0x224cc84
.thumb
Function_224cc88: @ 224cc88 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	mov     r6, r2
	ldr     r4, [pc, #0x20] @ 0x224ccb4, (=0x0)
	beq     branch_224ccae
.thumb
branch_224cc94: @ 224cc94 :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, r7
	mov     r2, #0x1
	bl      Function_2029d50
	cmp     r0, #0x1
	bne     branch_224cca6
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224cca6

.thumb
branch_224cca6: @ 224cca6 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, r6
	bcc     branch_224cc94
.thumb
branch_224ccae: @ 224ccae :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224ccb2


.align 2


.word 0x0 @ 0x224ccb4
.thumb
Function_224ccb8: @ 224ccb8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r2
	mov     r1, #0xc
	mul     r4, r1
	add     r1, r5, r4
	ldr     r1, [r1, #0x4]
	mov     r2, r3
	add     r1, #0x95
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_207d730
	add     r1, r5, r4
	ldr     r1, [r1, #0x8]
	cmp     r0, r1
	bcc     branch_224ccde
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224ccde

.thumb
branch_224ccde: @ 224ccde :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224cce2


.align 2, 0


.thumb
Function_224cce4: @ 224cce4 :thumb
	mov     r3, #0xc
	mul     r3, r2
	ldr     r1, [r1, r3]
	ldr     r3, [pc, #0x4] @ 0x224ccf0, (=0x2029d51)
	mov     r2, #0x1
	bx      r3
@ 0x224ccf0

.word 0x2029d51 @ 0x224ccf0
.thumb
Function_224ccf4: @ 224ccf4 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r1, #0xc
	mul     r1, r3
	add     r3, r2, r1
	ldr     r4, [r3, #0x4]
	ldr     r1, [r2, r1]
	ldr     r5, [r3, #0x8]
	add     r4, #0x95
	mov     r2, #0x1
	bl      Function_2029e2c
	lsl     r1, r4, #16
	lsl     r2, r5, #16
	ldr     r3, [sp, #0x10]
	mov     r0, r6
	lsr     r1, r1, #16
	lsr     r2, r2, #16
	bl      GiveItem
	cmp     r0, #0x1
	beq     branch_224cd24
	bl      ErrorHandling
branch_224cd24: @ 224cd24 :thumb
	pop     {r4-r6,pc}
@ 0x224cd26


.align 2, 0
.thumb
Function_224cd28: @ 224cd28 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, #0x1
	mov     r5, r0
	ldr     r2, [pc, #0x50] @ 0x224cd84, (=0xffff)
	mov     r0, #0x0
	lsl     r1, r1, #8
.thumb
branch_224cd36: @ 224cd36 :thumb
	lsl     r3, r0, #1
	ldrh    r3, [r4, r3]
	cmp     r3, r2
	beq     branch_224cd48
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, r1
	bcc     branch_224cd36
.thumb
branch_224cd48: @ 224cd48 :thumb
	mov     r1, #0x23
	lsl     r1, r1, #4
	strb    r0, [r5, r1]
	ldrb    r1, [r5, r1]
	mov     r0, #0xb
	lsl     r1, r1, #1
	bl      malloc_maybe
	mov     r1, #0x8b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldrb    r1, [r5, r1]
	mov     r0, #0x0
	cmp     r1, #0x0
	ble     branch_224cd82
	mov     r1, #0x8b
	lsl     r1, r1, #2
	add     r2, r1, #0x4
.thumb
branch_224cd6e: @ 224cd6e :thumb
	lsl     r7, r0, #1
	ldrh    r6, [r4, r7]
	ldr     r3, [r5, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r6, [r3, r7]
	lsl     r0, r0, #16
	ldrb    r3, [r5, r2]
	lsr     r0, r0, #16
	cmp     r0, r3
	blt     branch_224cd6e
.thumb
branch_224cd82: @ 224cd82 :thumb
	pop     {r3-r7,pc}
@ 0x224cd84

.word 0xffff @ 0x224cd84
.thumb
Function_224cd88: @ 224cd88 :thumb
	push    {r4,lr}
	mov     r1, #0x95
	mov     r0, #0xb
	lsl     r1, r1, #2
	bl      malloc_maybe
	mov     r2, #0x95
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     Function_20d5124
	mov     r0, r4
	pop     {r4,pc}
@ 0x224cda4

.thumb
Function_224cda4: @ 224cda4 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	str     r2, [sp, #0x0]
	mov     r6, r3
	bl      Function_224cd88
	mov     r4, r0
	ldr     r0, [r5, #0x8]
	mov     r1, #0xb
	str     r0, [r4, #0x0]
	mov     r0, #0x60
	bl      Function_2023790
	mov     r1, #0x8d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r5, #0xc]
	bl      LoadTrainerDataAdress
	mov     r1, #0x83
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r5, #0xc]
	bl      LoadPlayerDataAdress
	mov     r1, #0x85
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_14
	mov     r1, #0x87
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x89
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r2, [sp, #0x18]
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	mov     r0, r5
	bl      Function_224ce90
	ldr     r1, [pc, #0x84] @ 0x224ce88, (=0x242)
	mov     r3, #0xb
	strb    r0, [r4, r1]
	mov     r0, r5
	add     r0, #0x9c
	ldr     r2, [r0, #0x0]
	mov     r0, r1
	sub     r0, #0x2a
	str     r2, [r4, r0]
	add     r0, r1, #0x3
	strb    r6, [r4, r0]
	ldr     r0, [r5, #0xc]
	sub     r1, #0x22
	str     r0, [r4, r1]
	mov     r0, #0x1
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_200c440
	mov     r1, #0x25
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	sub     r1, #0xb
	ldrb    r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_224ce44
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_3
	mov     r1, #0x21
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	b       branch_224ce72
@ 0x224ce44

.thumb
branch_224ce44: @ 224ce44 :thumb
	cmp     r0, #0x3
	bne     branch_224ce56
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_3
	mov     r1, #0x21
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	b       branch_224ce72
@ 0x224ce56

.thumb
branch_224ce56: @ 224ce56 :thumb
	cmp     r0, #0x1
	ldr     r0, [r5, #0xc]
	bne     branch_224ce68
	bl      LoadVariableAreaAdress_c
	mov     r1, #0x21
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	b       branch_224ce72
@ 0x224ce68

.thumb
branch_224ce68: @ 224ce68 :thumb
	bl      LoadVariableAreaAdress_15
	mov     r1, #0x21
	lsl     r1, r1, #4
	str     r0, [r4, r1]
.thumb
branch_224ce72: @ 224ce72 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	bl      Function_224cd28
	ldr     r1, [pc, #0x10] @ 0x224ce8c, (=0x224cead)
	mov     r0, r7
	mov     r2, r4
	bl      Function_2050944
	pop     {r3-r7,pc}
@ 0x224ce86


.align 2


.word 0x242 @ 0x224ce88
.word 0x224cead @ 0x224ce8c
.thumb
Function_224ce90: @ 224ce90 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x3c]
	bl      GetSpriteFaceDirection
	cmp     r0, #0x0
	beq     branch_224cea4
	cmp     r0, #0x1
	beq     branch_224cea4
	cmp     r0, #0x3
	bne     branch_224cea8
.thumb
branch_224cea4: @ 224cea4 :thumb
	mov     r0, #0xa
	pop     {r3,pc}
@ 0x224cea8

.thumb
branch_224cea8: @ 224cea8 :thumb
	mov     r0, #0x8
	pop     {r3,pc}
@ 0x224ceac

.thumb
Function_224ceac: @ 224ceac :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      Function_2050a60
	mov     r5, r0
	mov     r0, r6
	bl      Function_2050a64
	ldr     r1, [pc, #0x144] @ 0x224d004, (=0x233)
	mov     r4, r0
	ldrb    r1, [r4, r1]
	cmp     r1, #0x14
	bls     branch_224cec8
	b       branch_224cfd0
@ 0x224cec8

.thumb
branch_224cec8: @ 224cec8 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224ced4

Jumppoints_224ced4:
.hword branch_224cefe - Jumppoints_224ced4 - 2
.hword branch_224cf0a - Jumppoints_224ced4 - 2
.hword branch_224cf14 - Jumppoints_224ced4 - 2
.hword branch_224cf24 - Jumppoints_224ced4 - 2
.hword branch_224cf2e - Jumppoints_224ced4 - 2
.hword branch_224cf38 - Jumppoints_224ced4 - 2
.hword branch_224cf42 - Jumppoints_224ced4 - 2
.hword branch_224cf4c - Jumppoints_224ced4 - 2
.hword branch_224cf56 - Jumppoints_224ced4 - 2
.hword branch_224cf60 - Jumppoints_224ced4 - 2
.hword branch_224cf6a - Jumppoints_224ced4 - 2
.hword branch_224cf74 - Jumppoints_224ced4 - 2
.hword branch_224cf7e - Jumppoints_224ced4 - 2
.hword branch_224cf8c - Jumppoints_224ced4 - 2
.hword branch_224cf96 - Jumppoints_224ced4 - 2
.hword branch_224cfa0 - Jumppoints_224ced4 - 2
.hword branch_224cfd0 - Jumppoints_224ced4 - 2
.hword branch_224cfd0 - Jumppoints_224ced4 - 2
.hword branch_224cfa8 - Jumppoints_224ced4 - 2
.hword branch_224cfb6 - Jumppoints_224ced4 - 2
.hword branch_224cfc6 - Jumppoints_224ced4 - 2
.thumb
branch_224cefe: @ 224cefe :thumb
	bl      Function_224d008
	ldr     r0, [pc, #0x100] @ 0x224d004, (=0x233)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	b       branch_224cfd0
@ 0x224cf0a

.thumb
branch_224cf0a: @ 224cf0a :thumb
	bl      Function_224d1ec
	ldr     r1, [pc, #0xf4] @ 0x224d004, (=0x233)
	strb    r0, [r4, r1]
	b       branch_224cfd0
@ 0x224cf14

.thumb
branch_224cf14: @ 224cf14 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_224d388
	ldr     r0, [pc, #0xe4] @ 0x224d004, (=0x233)
	mov     r1, #0x3
	strb    r1, [r4, r0]
	b       branch_224cfd0
@ 0x224cf24

.thumb
branch_224cf24: @ 224cf24 :thumb
	bl      Function_224d620
	ldr     r1, [pc, #0xd8] @ 0x224d004, (=0x233)
	strb    r0, [r4, r1]
	b       branch_224cfd0
@ 0x224cf2e

.thumb
branch_224cf2e: @ 224cf2e :thumb
	bl      Function_224dc84
	ldr     r1, [pc, #0xd0] @ 0x224d004, (=0x233)
	strb    r0, [r4, r1]
	b       branch_224cfd0
@ 0x224cf38

.thumb
branch_224cf38: @ 224cf38 :thumb
	bl      Function_224de94
	ldr     r1, [pc, #0xc4] @ 0x224d004, (=0x233)
	strb    r0, [r4, r1]
	b       branch_224cfd0
@ 0x224cf42

.thumb
branch_224cf42: @ 224cf42 :thumb
	bl      Function_224dfb0
	ldr     r1, [pc, #0xbc] @ 0x224d004, (=0x233)
	strb    r0, [r4, r1]
	b       branch_224cfd0
@ 0x224cf4c

.thumb
branch_224cf4c: @ 224cf4c :thumb
	bl      Function_224e3a0
	ldr     r1, [pc, #0xb0] @ 0x224d004, (=0x233)
	strb    r0, [r4, r1]
	b       branch_224cfd0
@ 0x224cf56

.thumb
branch_224cf56: @ 224cf56 :thumb
	bl      Function_224e3d8
	ldr     r1, [pc, #0xa8] @ 0x224d004, (=0x233)
	strb    r0, [r4, r1]
	b       branch_224cfd0
@ 0x224cf60

.thumb
branch_224cf60: @ 224cf60 :thumb
	bl      Function_224e5b0
	ldr     r1, [pc, #0x9c] @ 0x224d004, (=0x233)
	strb    r0, [r4, r1]
	b       branch_224cfd0
@ 0x224cf6a

.thumb
branch_224cf6a: @ 224cf6a :thumb
	bl      Function_224e6b8
	ldr     r1, [pc, #0x94] @ 0x224d004, (=0x233)
	strb    r0, [r4, r1]
	b       branch_224cfd0
@ 0x224cf74

.thumb
branch_224cf74: @ 224cf74 :thumb
	bl      Function_224e7c8
	ldr     r1, [pc, #0x88] @ 0x224d004, (=0x233)
	strb    r0, [r4, r1]
	b       branch_224cfd0
@ 0x224cf7e

.thumb
branch_224cf7e: @ 224cf7e :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_224e950
	ldr     r1, [pc, #0x7c] @ 0x224d004, (=0x233)
	strb    r0, [r4, r1]
	b       branch_224cfd0
@ 0x224cf8c

.thumb
branch_224cf8c: @ 224cf8c :thumb
	bl      Function_224ea2c
	ldr     r1, [pc, #0x70] @ 0x224d004, (=0x233)
	strb    r0, [r4, r1]
	b       branch_224cfd0
@ 0x224cf96

.thumb
branch_224cf96: @ 224cf96 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_224ec20
	b       branch_224cfd0
@ 0x224cfa0

.thumb
branch_224cfa0: @ 224cfa0 :thumb
	mov     r0, r6
	bl      Function_224ec38
	b       branch_224cfd0
@ 0x224cfa8

.thumb
branch_224cfa8: @ 224cfa8 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_224ec9c
	ldr     r1, [pc, #0x50] @ 0x224d004, (=0x233)
	strb    r0, [r4, r1]
	b       branch_224cfd0
@ 0x224cfb6

.thumb
branch_224cfb6: @ 224cfb6 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_224ea54
	ldr     r0, [pc, #0x44] @ 0x224d004, (=0x233)
	mov     r1, #0x14
	strb    r1, [r4, r0]
	b       branch_224cfd0
@ 0x224cfc6

.thumb
branch_224cfc6: @ 224cfc6 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_224d250
	pop     {r4-r6,pc}
@ 0x224cfd0

.thumb
branch_224cfd0: @ 224cfd0 :thumb
	ldr     r0, [pc, #0x30] @ 0x224d004, (=0x233)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x4
	bcc     branch_224cffe
	cmp     r1, #0xb
	bhi     branch_224cffe
	sub     r0, #0x3b
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	lsl     r1, r1, #12
	bl      Function_2021e2c
	mov     r0, #0x7f
	lsl     r0, r0, #2
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	lsl     r1, r1, #12
	bl      Function_2021e2c
	add     r4, #0x94
	ldr     r0, [r4, #0x0]
	bl      Function_20219f8
.thumb
branch_224cffe: @ 224cffe :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224d002


.align 2


.word 0x233 @ 0x224d004
.thumb
Function_224d008: @ 224d008 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224d018
	mov     r0, r4
	bl      Function_224d040
	pop     {r4,pc}
@ 0x224d018

.thumb
Function_224d018: @ 224d018 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x20] @ 0x224d03c, (=0x21f)
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0xb
	bl      Function_200b144
	mov     r1, r4
	add     r1, #0x88
	str     r0, [r1, #0x0]
	mov     r0, #0xb
	bl      Function_200b358
	add     r4, #0x8c
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x224d03a


.align 2


.word 0x21f @ 0x224d03c
.thumb
Function_224d040: @ 224d040 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldr     r0, [pc, #0x198] @ 0x224d1e0, (=0x245)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_224d0bc
	mov     r4, #0x3
	mov     r0, r4
	mov     r1, #0xb
	bl      Function_2013a04
	mov     r1, r5
	add     r1, #0x84
	str     r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x84
	add     r1, #0x88
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0xf
	mov     r3, #0x2
	bl      Function_2013a4c
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x84
	add     r1, #0x88
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x10
	mov     r3, #0xe
	bl      Function_2013a4c
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x84
	add     r1, #0x88
	mov     r2, #0x11
	mov     r3, r2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	sub     r3, #0x13
	bl      Function_2013a4c
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r1, #0xd
	str     r1, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [pc, #0x138] @ 0x224d1e4, (=0x1e9)
	mov     r1, r5
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	add     r1, #0x8
	mov     r2, r4
	bl      Function_201a7e8
	b       branch_224d174
@ 0x224d0bc

.thumb
branch_224d0bc: @ 224d0bc :thumb
	cmp     r0, #0x3
	bne     branch_224d11c
	mov     r4, #0x2
	mov     r0, r4
	mov     r1, #0xb
	bl      Function_2013a04
	mov     r1, r5
	add     r1, #0x84
	str     r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x84
	add     r1, #0x88
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x1d
	mov     r3, r4
	bl      Function_2013a4c
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x84
	add     r1, #0x88
	mov     r2, #0x1e
	mov     r3, r2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	sub     r3, #0x20
	bl      Function_2013a4c
	mov     r1, #0xd
	str     r1, [sp, #0x0]
	mov     r0, #0x7
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [pc, #0xd8] @ 0x224d1e4, (=0x1e9)
	mov     r1, r5
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	add     r1, #0x8
	mov     r2, #0x3
	mov     r3, #0x17
	bl      Function_201a7e8
	b       branch_224d174
@ 0x224d11c

.thumb
branch_224d11c: @ 224d11c :thumb
	mov     r4, #0x2
	mov     r0, r4
	mov     r1, #0xb
	bl      Function_2013a04
	mov     r1, r5
	add     r1, #0x84
	str     r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x84
	add     r1, #0x88
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0xf
	mov     r3, r4
	bl      Function_2013a4c
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x84
	add     r1, #0x88
	mov     r2, #0x11
	mov     r3, r2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	sub     r3, #0x13
	bl      Function_2013a4c
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r1, #0xd
	str     r1, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [pc, #0x7c] @ 0x224d1e4, (=0x1e9)
	mov     r1, r5
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	add     r1, #0x8
	mov     r2, #0x3
	bl      Function_201a7e8
.thumb
branch_224d174: @ 224d174 :thumb
	mov     r0, r5
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	add     r2, sp, #0x14
	str     r0, [sp, #0x14]
	mov     r0, r5
	add     r0, #0x8
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	strb    r0, [r2, #0x8]
	mov     r1, #0x1
	strb    r1, [r2, #0x9]
	strb    r4, [r2, #0xa]
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
	strb    r3, [r2, #0xb]
	str     r0, [sp, #0x0]
	mov     r3, #0xb
	str     r3, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	ldr     r2, [pc, #0x38] @ 0x224d1e8, (=0x3d9)
	mov     r1, #0x3
	bl      Function_200daa4
	mov     r0, r5
	ldr     r2, [pc, #0x2c] @ 0x224d1e8, (=0x3d9)
	add     r0, #0x8
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200dc48
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	add     r0, sp, #0x14
	mov     r1, #0x8
	mov     r3, r2
	bl      Function_2001b7c
	add     r5, #0x80
	str     r0, [r5, #0x0]
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x224d1e0

.word 0x245 @ 0x224d1e0
.word 0x1e9 @ 0x224d1e4
.word 0x3d9 @ 0x224d1e8
.thumb
Function_224d1ec: @ 224d1ec :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_2001be0
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_224d208
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	beq     branch_224d218
	b       branch_224d212
@ 0x224d208

.thumb
branch_224d208: @ 224d208 :thumb
	mov     r0, r4
	bl      Function_224d21c
	mov     r0, #0x13
	pop     {r4,pc}
@ 0x224d212

.thumb
branch_224d212: @ 224d212 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r4,pc}
@ 0x224d218

.thumb
branch_224d218: @ 224d218 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224d21c

.thumb
Function_224d21c: @ 224d21c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x8
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, r4
	add     r0, #0x8
	bl      Function_201acf4
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	bl      Function_2013a3c
	add     r4, #0x8
	mov     r0, r4
	bl      Function_201a8fc
	pop     {r4,pc}
@ 0x224d250

.thumb
Function_224d250: @ 224d250 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x9
	mov     r4, r1
	lsl     r0, r0, #6
	ldrb    r0, [r4, r0]
	bl      Function_205da04
	cmp     r0, #0x0
	bne     branch_224d268
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224d268

.thumb
branch_224d268: @ 224d268 :thumb
	ldr     r0, [pc, #0x110] @ 0x224d37c, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	bne     branch_224d274
	b       branch_224d378
@ 0x224d274

.thumb
branch_224d274: @ 224d274 :thumb
	mov     r0, r4
	add     r0, #0x18
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, r4
	add     r0, #0x18
	bl      Function_201a8fc
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	bl      Function_200b190
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	bl      Function_200b3f0
	mov     r0, #0x8d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	ldr     r0, [pc, #0xd8] @ 0x224d380, (=0x245)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_224d35a
	ldr     r0, [r5, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      GetMapName
	cmp     r0, #0x65
	beq     branch_224d35a
	ldr     r0, [r5, #0x1c]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x51
	beq     branch_224d35a
	ldr     r1, [pc, #0xc0] @ 0x224d384, (=0x1be)
	cmp     r0, r1
	beq     branch_224d35a
	mov     r0, r1
	add     r0, #0x85
	ldrb    r2, [r4, r0]
	cmp     r2, #0x0
	beq     branch_224d2ee
	add     r1, #0x86
	ldrb    r0, [r4, r1]
	cmp     r0, #0x0
	beq     branch_224d2ee
	mov     r0, #0xb
	bl      Function_202bd38
	mov     r1, r0
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0x1
	bl      Function_202b758
	b       branch_224d35a
@ 0x224d2ee

.thumb
branch_224d2ee: @ 224d2ee :thumb
	cmp     r2, #0x1
	bls     branch_224d308
	mov     r0, #0xb
	bl      Function_202bd14
	mov     r1, r0
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0x1
	bl      Function_202b758
	b       branch_224d35a
@ 0x224d308

.thumb
branch_224d308: @ 224d308 :thumb
	mov     r0, #0x91
	lsl     r0, r0, #2
	ldrb    r0, [r4, r0]
	cmp     r0, #0x1
	bls     branch_224d328
	mov     r0, #0xb
	bl      Function_202bd2c
	mov     r1, r0
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0x1
	bl      Function_202b758
	b       branch_224d35a
@ 0x224d328

.thumb
branch_224d328: @ 224d328 :thumb
	cmp     r2, #0x0
	beq     branch_224d342
	mov     r0, #0xb
	bl      Function_202bd08
	mov     r1, r0
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0x1
	bl      Function_202b758
	b       branch_224d35a
@ 0x224d342

.thumb
branch_224d342: @ 224d342 :thumb
	cmp     r0, #0x0
	beq     branch_224d35a
	mov     r0, #0xb
	bl      Function_202bd20
	mov     r1, r0
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0x1
	bl      Function_202b758
.thumb
branch_224d35a: @ 224d35a :thumb
	mov     r0, #0x25
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_200c560
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, r4
	bl      free
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224d378

.thumb
branch_224d378: @ 224d378 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224d37c

.word 0x21bf67c @ 0x224d37c
.word 0x245 @ 0x224d380
.word 0x1be @ 0x224d384
.thumb
Function_224d388: @ 224d388 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x12
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	mov     r4, r1
	str     r2, [sp, #0xc]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2019cb8
	mov     r0, r4
	bl      Function_224d21c
	mov     r0, r4
	bl      Function_224d3e8
	mov     r0, #0xb
	bl      Function_20203ac
	mov     r1, r4
	add     r1, #0x90
	str     r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x90
	ldr     r0, [r5, #0x24]
	ldr     r1, [r1, #0x0]
	bl      Function_20203c0
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	bl      Function_20203d4
	ldr     r0, [pc, #0x8] @ 0x224d3e4, (=0x241)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x224d3e2


.align 2


.word 0x241 @ 0x224d3e4
.thumb
Function_224d3e8: @ 224d3e8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r5
	ldr     r7, [pc, #0x4c] @ 0x224d43c, (=0x224f328)
	mov     r6, #0x0
	add     r4, #0x8
.thumb
branch_224d3f4: @ 224d3f4 :thumb
	ldr     r0, [pc, #0x48] @ 0x224d440, (=0x245)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_224d410
	cmp     r0, #0x3
	beq     branch_224d410
	cmp     r6, #0x1
	bne     branch_224d410
	ldr     r0, [r5, #0x0]
	ldr     r2, [pc, #0x3c] @ 0x224d444, (=0x224f2bc)
	mov     r1, r4
	bl      Function_201a8d4
	b       branch_224d42e
@ 0x224d410

.thumb
branch_224d410: @ 224d410 :thumb
	cmp     r0, #0x3
	bne     branch_224d424
	cmp     r6, #0x2
	bne     branch_224d424
	ldr     r0, [r5, #0x0]
	ldr     r2, [pc, #0x2c] @ 0x224d448, (=0x224f2c4)
	mov     r1, r4
	bl      Function_201a8d4
	b       branch_224d42e
@ 0x224d424

.thumb
branch_224d424: @ 224d424 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	mov     r2, r7
	bl      Function_201a8d4
.thumb
branch_224d42e: @ 224d42e :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	add     r7, #0x8
	cmp     r6, #0x6
	bcc     branch_224d3f4
	pop     {r3-r7,pc}
@ 0x224d43a


.align 2


.word 0x224f328 @ 0x224d43c
.word 0x245 @ 0x224d440
.word 0x224f2bc @ 0x224d444
.word 0x224f2c4 @ 0x224d448
.thumb
Function_224d44c: @ 224d44c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x28
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r4, #0x0
	add     r5, #0x8
.thumb
branch_224d45c: @ 224d45c :thumb
	mov     r0, r5
	bl      Function_201acf4
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x6
	bcc     branch_224d45c
	pop     {r3-r5,pc}
@ 0x224d472


.align 2, 0


.thumb
Function_224d474: @ 224d474 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x3e
	mov     r1, #0xb
	bl      LoadFromNARC_8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r2, #0xb
	str     r2, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r3, #0x1
	mov     r4, r0
	bl      Function_20070e8
	ldr     r0, [pc, #0xa8] @ 0x224d544, (=0x245)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_224d4a4
	cmp     r0, #0x3
	bne     branch_224d4be
.thumb
branch_224d4a4: @ 224d4a4 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0xb
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x2
	mov     r3, #0x1
	bl      Function_200710c
	b       branch_224d4d6
@ 0x224d4be

.thumb
branch_224d4be: @ 224d4be :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0xb
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x1
	bl      Function_200710c
.thumb
branch_224d4d6: @ 224d4d6 :thumb
	ldr     r0, [pc, #0x6c] @ 0x224d544, (=0x245)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x3
	bne     branch_224d4f2
	mov     r0, #0x20
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0xb
	mov     r0, r4
	mov     r3, r2
	str     r1, [sp, #0x4]
	bl      Function_2007130
	b       branch_224d506
@ 0x224d4f2

.thumb
branch_224d4f2: @ 224d4f2 :thumb
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2007130
.thumb
branch_224d506: @ 224d506 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0xb
	str     r3, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	mov     r2, #0x1f
	bl      Function_200daa4
	mov     r0, #0x85
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200dd0c
	mov     r0, r4
	bl      Call_FS_CloseFile
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x224d542


.align 2


.word 0x245 @ 0x224d544
.thumb
Function_224d548: @ 224d548 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2020014
	mov     r1, #0x8f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_201a008
	mov     r1, #0x8e
	lsl     r1, r1, #2
	strb    r0, [r4, r1]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_201a008
	ldr     r1, [pc, #0x5c] @ 0x224d5cc, (=0x239)
	strb    r0, [r4, r1]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      Function_201a008
	ldr     r1, [pc, #0x54] @ 0x224d5d0, (=0x23a)
	strb    r0, [r4, r1]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	bl      Function_201a008
	ldr     r1, [pc, #0x4c] @ 0x224d5d4, (=0x23b)
	strb    r0, [r4, r1]
	mov     r0, #0x0
	mov     r1, #0x3
	bl      Function_2019060
	mov     r0, #0x1
	mov     r1, #0x2
	bl      Function_2019060
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_2019060
	mov     r0, #0x3
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x8
	mov     r1, #0x1
	bl      Function_201ff0c
	pop     {r4,pc}
@ 0x224d5ca


.align 2


.word 0x239 @ 0x224d5cc
.word 0x23a @ 0x224d5d0
.word 0x23b @ 0x224d5d4
.thumb
Function_224d5d8: @ 224d5d8 :thumb
	push    {r4,lr}
	mov     r1, #0x8e
	mov     r4, r0
	lsl     r1, r1, #2
	ldrb    r1, [r4, r1]
	mov     r0, #0x0
	bl      Function_2019060
	ldr     r1, [pc, #0x28] @ 0x224d614, (=0x239)
	mov     r0, #0x1
	ldrb    r1, [r4, r1]
	bl      Function_2019060
	ldr     r1, [pc, #0x24] @ 0x224d618, (=0x23a)
	mov     r0, #0x2
	ldrb    r1, [r4, r1]
	bl      Function_2019060
	ldr     r1, [pc, #0x1c] @ 0x224d61c, (=0x23b)
	mov     r0, #0x3
	ldrb    r1, [r4, r1]
	bl      Function_2019060
	mov     r0, #0x8f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_201ff48
	pop     {r4,pc}
@ 0x224d612


.align 2


.word 0x239 @ 0x224d614
.word 0x23a @ 0x224d618
.word 0x23b @ 0x224d61c
.thumb
Function_224d620: @ 224d620 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	ldr     r1, [pc, #0x68] @ 0x224d690, (=0x241)
	mov     r4, r0
	add     r0, r1, #0x1
	ldrb    r2, [r4, r1]
	ldrb    r0, [r4, r0]
	cmp     r2, r0
	beq     branch_224d65a
	ldr     r5, [pc, #0x60] @ 0x224d694, (=0x224f2d4)
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	str     r0, [r3, #0x0]
	add     r1, #0x90
	ldr     r1, [r1, #0x0]
	mov     r0, r2
	bl      Function_2020990
	ldr     r0, [pc, #0x40] @ 0x224d690, (=0x241)
	add     sp, #0xc
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,r5,pc}
@ 0x224d65a

.thumb
branch_224d65a: @ 224d65a :thumb
	mov     r0, #0x0
	strb    r0, [r4, r1]
	mov     r1, #0x6
	mov     r2, #0x2
	lsl     r1, r1, #24
	lsl     r2, r2, #18
	blx     MIi_CpuClear32
	mov     r0, r4
	bl      Function_224ead0
	mov     r0, r4
	bl      Function_224d474
	mov     r0, r4
	bl      Function_224d548
	mov     r0, r4
	bl      Function_224d6bc
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_224daf8
	mov     r0, #0x4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x224d690

.word 0x241 @ 0x224d690
.word 0x224f2d4 @ 0x224d694
.thumb
Function_224d698: @ 224d698 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x1c] @ 0x224d6b8, (=0x245)
	ldrb    r0, [r0, r2]
	cmp     r0, #0x1
	bne     branch_224d6a6
	mov     r0, r1
	pop     {r3,pc}
@ 0x224d6a6

.thumb
branch_224d6a6: @ 224d6a6 :thumb
	cmp     r0, #0x2
	bne     branch_224d6b4
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	bl      Function_2098164
	mov     r1, r0
.thumb
branch_224d6b4: @ 224d6b4 :thumb
	mov     r0, r1
	pop     {r3,pc}
@ 0x224d6b8

.word 0x245 @ 0x224d6b8
.thumb
Function_224d6bc: @ 224d6bc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	ldr     r2, [pc, #0x18c] @ 0x224d850, (=0x245)
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, r2]
	cmp     r0, #0x0
	beq     branch_224d6d2
	cmp     r0, #0x3
	bne     branch_224d6f2
.thumb
branch_224d6d2: @ 224d6d2 :thumb
	mov     r2, #0x62
	mov     r0, #0x0
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0xb
	bl      Function_200b144
	str     r0, [sp, #0xc]
	ldr     r2, [pc, #0x170] @ 0x224d854, (=0x287)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0xb
	bl      Function_200b144
	str     r0, [sp, #0x4]
	b       branch_224d714
@ 0x224d6f2

.thumb
branch_224d6f2: @ 224d6f2 :thumb
	cmp     r0, #0x1
	bne     branch_224d706
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1a
	add     r2, #0x2d
	mov     r3, #0xb
	bl      Function_200b144
	str     r0, [sp, #0xc]
	b       branch_224d714
@ 0x224d706

.thumb
branch_224d706: @ 224d706 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1a
	mov     r2, #0xc
	mov     r3, #0xb
	bl      Function_200b144
	str     r0, [sp, #0xc]
.thumb
branch_224d714: @ 224d714 :thumb
	mov     r0, #0x23
	lsl     r0, r0, #4
	ldrb    r0, [r5, r0]
	mov     r1, #0xb
	.hword  0x1c40 @ add r0, r0, #0x1
	bl      Function_2013a04
	str     r0, [r5, #0x7c]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x23
	lsl     r0, r0, #4
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	bls     branch_224d7b4
	ldr     r4, [sp, #0x8]
.thumb
branch_224d734: @ 224d734 :thumb
	mov     r1, #0x8b
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	mov     r0, r5
	ldrh    r1, [r1, r4]
	bl      Function_224d698
	mov     r6, r0
	mov     r0, #0x69
	lsl     r0, r0, #2
	cmp     r6, r0
	bhi     branch_224d780
	sub     r0, #0x5c
	cmp     r6, r0
	bcc     branch_224d780
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	bl      Function_207d268
	mov     r1, r0
	ldr     r0, [sp, #0x4]
	bl      Function_200b1ec
	mov     r7, r0
	mov     r2, #0x8b
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	ldr     r0, [r5, #0x7c]
	ldrh    r2, [r2, r4]
	mov     r1, r7
	bl      Function_2013a6c
	mov     r0, r7
	bl      Function_20237bc
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	b       branch_224d7a0
@ 0x224d780

.thumb
branch_224d780: @ 224d780 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, r6
	bl      Function_200b1ec
	mov     r2, #0x8b
	mov     r7, r0
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	ldr     r0, [r5, #0x7c]
	ldrh    r2, [r2, r4]
	mov     r1, r7
	bl      Function_2013a6c
	mov     r0, r7
	bl      Function_20237bc
.thumb
branch_224d7a0: @ 224d7a0 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x23
	lsl     r0, r0, #4
	ldrb    r1, [r5, r0]
	ldr     r0, [sp, #0x8]
	cmp     r0, r1
	bcc     branch_224d734
.thumb
branch_224d7b4: @ 224d7b4 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	ldr     r0, [r5, #0x7c]
	beq     branch_224d7ce
	mov     r1, r5
	add     r1, #0x88
	mov     r2, #0x1a
	mov     r3, r2
	ldr     r1, [r1, #0x0]
	sub     r3, #0x1c
	bl      Function_2013a4c
	b       branch_224d7de
@ 0x224d7ce

.thumb
branch_224d7ce: @ 224d7ce :thumb
	mov     r1, r5
	add     r1, #0x88
	mov     r2, #0x8
	mov     r3, r2
	ldr     r1, [r1, #0x0]
	sub     r3, #0xa
	bl      Function_2013a4c
.thumb
branch_224d7de: @ 224d7de :thumb
	ldr     r0, [sp, #0xc]
	bl      Function_200b190
	ldr     r0, [pc, #0x68] @ 0x224d850, (=0x245)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_224d7f0
	cmp     r0, #0x3
	bne     branch_224d7f6
.thumb
branch_224d7f0: @ 224d7f0 :thumb
	ldr     r0, [sp, #0x4]
	bl      Function_200b190
.thumb
branch_224d7f6: @ 224d7f6 :thumb
	ldr     r3, [pc, #0x60] @ 0x224d858, (=0x224f308)
	add     r2, sp, #0x10
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, #0x69
	lsl     r0, r0, #2
	cmp     r6, r0
	bhi     branch_224d820
	sub     r0, #0x5c
	cmp     r6, r0
	bcc     branch_224d820
	mov     r1, #0x23
	add     r0, sp, #0x10
	strb    r1, [r0, #0x15]
	b       branch_224d826
@ 0x224d820

.thumb
branch_224d820: @ 224d820 :thumb
	mov     r1, #0x0
	add     r0, sp, #0x10
	strb    r1, [r0, #0x15]
.thumb
branch_224d826: @ 224d826 :thumb
	ldr     r0, [r5, #0x7c]
	mov     r3, #0xb
	str     r0, [sp, #0x10]
	mov     r0, r5
	add     r0, #0x8
	str     r0, [sp, #0x1c]
	mov     r0, #0x23
	lsl     r0, r0, #4
	ldrb    r0, [r5, r0]
	add     r1, r0, #0x1
	add     r0, sp, #0x10
	strh    r1, [r0, #0x10]
	mov     r1, #0x0
	add     r0, sp, #0x10
	mov     r2, r1
	str     r5, [sp, #0x2c]
	bl      Function_200112c
	str     r0, [r5, #0x78]
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x224d850

.word 0x245 @ 0x224d850
.word 0x287 @ 0x224d854
.word 0x224f308 @ 0x224d858
.thumb
Function_224d85c: @ 224d85c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r1
	mov     r1, #0x13
	str     r0, [sp, #0x10]
	mov     r6, r2
	bl      Function_2001504
	mov     r4, r0
	cmp     r6, #0x1
	beq     branch_224d878
	ldr     r0, [pc, #0x138] @ 0x224d9ac, (=0x638)
	bl      Function_2005748
.thumb
branch_224d878: @ 224d878 :thumb
	mov     r0, r4
	add     r0, #0x18
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r5, r1
	beq     branch_224d938
	ldr     r2, [pc, #0x124] @ 0x224d9b0, (=0x245)
	ldrb    r0, [r4, r2]
	cmp     r0, #0x0
	bne     branch_224d8a8
	mov     r0, #0x82
	mov     r1, #0xb
	bl      Function_2023790
	lsl     r1, r5, #16
	lsr     r1, r1, #16
	mov     r2, #0xb
	mov     r6, r0
	bl      Function_207cfc8
	b       branch_224d90c
@ 0x224d8a8

.thumb
branch_224d8a8: @ 224d8a8 :thumb
	cmp     r0, #0x3
	bne     branch_224d8c2
	mov     r0, #0x82
	mov     r1, #0xb
	bl      Function_2023790
	lsl     r1, r5, #16
	lsr     r1, r1, #16
	mov     r2, #0xb
	mov     r6, r0
	bl      Function_207cfc8
	b       branch_224d90c
@ 0x224d8c2

.thumb
branch_224d8c2: @ 224d8c2 :thumb
	cmp     r0, #0x1
	bne     branch_224d8e6
	mov     r0, #0x0
	mov     r1, #0x1a
	add     r2, #0x2d
	mov     r3, #0xb
	bl      Function_200b144
	mov     r1, r5
	mov     r7, r0
	add     r1, #0x8a
	bl      Function_200b1ec
	mov     r6, r0
	mov     r0, r7
	bl      Function_200b190
	b       branch_224d90c
@ 0x224d8e6

.thumb
branch_224d8e6: @ 224d8e6 :thumb
	mov     r0, #0x0
	mov     r1, #0x1a
	sub     r2, #0x27
	mov     r3, #0xb
	bl      Function_200b144
	mov     r7, r0
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	bl      Function_20981f4
	mov     r1, r0
	mov     r0, r7
	bl      Function_200b1ec
	mov     r6, r0
	mov     r0, r7
	bl      Function_200b190
.thumb
branch_224d90c: @ 224d90c :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x9c] @ 0x224d9b4, (=0xf0e00)
	mov     r2, r6
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0x18
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc
	lsl     r1, r5, #16
	mov     r0, r4
	lsr     r1, r1, #16
	bl      Function_224eb7c
	b       branch_224d940
@ 0x224d938

.thumb
branch_224d938: @ 224d938 :thumb
	mov     r0, r4
	lsr     r1, r1, #16
	bl      Function_224eb7c
.thumb
branch_224d940: @ 224d940 :thumb
	add     r1, sp, #0x14
	ldr     r0, [sp, #0x10]
	add     r1, #0x2
	add     r2, sp, #0x14
	bl      Function_20014dc
	add     r0, sp, #0x14
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x0
	bne     branch_224d962
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	b       branch_224d96e
@ 0x224d962

.thumb
branch_224d962: @ 224d962 :thumb
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2021cac
.thumb
branch_224d96e: @ 224d96e :thumb
	ldr     r0, [sp, #0x10]
	mov     r1, #0x2
	bl      Function_2001504
	cmp     r0, #0x7
	bls     branch_224d992
	add     r1, sp, #0x14
	ldrh    r1, [r1, #0x2]
	.hword  0x1dc9 @ add r1, r1, #0x7
	cmp     r0, r1
	bls     branch_224d992
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2021cac
	b       branch_224d99e
@ 0x224d992

.thumb
branch_224d992: @ 224d992 :thumb
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021cac
.thumb
branch_224d99e: @ 224d99e :thumb
	add     r4, #0x18
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x224d9aa


.align 2


.word 0x638 @ 0x224d9ac
.word 0x245 @ 0x224d9b0
.word 0xf0e00 @ 0x224d9b4
.thumb
Function_224d9b8: @ 224d9b8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r1
	mov     r1, #0x13
	mov     r7, r2
	bl      Function_2001504
	mov     r4, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	beq     branch_224daa0
	lsl     r0, r5, #16
	lsr     r2, r0, #16
	mov     r0, #0x69
	lsl     r0, r0, #2
	cmp     r2, r0
	bhi     branch_224da0a
	mov     r1, r0
	sub     r1, #0x5c
	cmp     r2, r1
	bcc     branch_224da0a
	mov     r1, r0
	sub     r1, #0x5d
	sub     r1, r2, r1
	lsl     r1, r1, #16
	lsr     r2, r1, #16
	mov     r1, #0x2
	mov     r3, r4
	str     r1, [sp, #0x0]
	add     r3, #0x8
	str     r3, [sp, #0x4]
	mov     r3, #0x0
	str     r3, [sp, #0x8]
	add     r3, r7, #0x4
	str     r3, [sp, #0xc]
	add     r0, #0xac
	ldr     r0, [r4, r0]
	mov     r3, r1
	bl      Function_200c648
.thumb
branch_224da0a: @ 224da0a :thumb
	lsl     r1, r5, #16
	mov     r0, r4
	lsr     r1, r1, #16
	bl      Function_224e890
	str     r0, [sp, #0x14]
	mov     r0, #0xc
	mov     r1, #0xb
	bl      Function_2023790
	str     r0, [sp, #0x18]
	ldr     r0, [pc, #0xcc] @ 0x224daf0, (=0x245)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x3
	bne     branch_224da38
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x20
	bl      Function_200b1ec
	str     r0, [sp, #0x10]
	b       branch_224da46
@ 0x224da38

.thumb
branch_224da38: @ 224da38 :thumb
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x9
	bl      Function_200b1ec
	str     r0, [sp, #0x10]
.thumb
branch_224da46: @ 224da46 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	ldr     r2, [sp, #0x14]
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_200b60c
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x10]
	bl      Function_200c388
	mov     r0, #0x0
	ldr     r1, [sp, #0x18]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r12, r0
	str     r7, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x74] @ 0x224daf4, (=0x10200)
	ldr     r2, [sp, #0x18]
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x0
	mov     r6, r12
	mov     r3, #0x98
	add     r0, #0x8
	sub     r3, r3, r6
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc
	ldr     r0, [sp, #0x18]
	bl      Function_20237bc
.thumb
branch_224daa0: @ 224daa0 :thumb
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_224daec
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x8
	bl      Function_200b1ec
	mov     r5, r0
	mov     r0, #0x98
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x8
	mov     r1, #0xf
	mov     r2, #0x0
	mov     r3, r7
	bl      Function_201ae78
	mov     r1, #0x0
	str     r7, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x224daf4, (=0x10200)
	add     r4, #0x8
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r2, r5
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r5
	bl      Function_20237bc
.thumb
branch_224daec: @ 224daec :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x224daf0

.word 0x245 @ 0x224daf0
.word 0x10200 @ 0x224daf4
.thumb
Function_224daf8: @ 224daf8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x180] @ 0x224dc80, (=0x245)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x3
	bne     branch_224dba2
	cmp     r1, #0x0
	bne     branch_224db24
	mov     r0, r5
	add     r0, #0x28
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, r5
	add     r0, #0x28
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200dc48
	b       branch_224db3a
@ 0x224db24

.thumb
branch_224db24: @ 224db24 :thumb
	mov     r0, #0x48
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x0
	add     r0, #0x28
	mov     r1, #0xf
	mov     r3, r2
	bl      Function_201ae78
.thumb
branch_224db3a: @ 224db3a :thumb
	mov     r0, #0x10
	mov     r1, #0xb
	bl      Function_2023790
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x26
	bl      Function_200b1ec
	mov     r6, r0
	mov     r0, r5
	bl      Function_224e8f4
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	mov     r3, #0x6
	bl      Function_200b60c
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	mov     r2, r6
	bl      Function_200c388
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0x0
	mov     r7, r0
	mov     r3, #0x40
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x28
	mov     r2, r4
	sub     r3, r3, r7
	str     r1, [sp, #0x8]
	bl      Function_201d738
	b       branch_224dc66
@ 0x224dba2

.thumb
branch_224dba2: @ 224dba2 :thumb
	cmp     r1, #0x0
	bne     branch_224dbea
	mov     r0, r5
	add     r0, #0x28
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, r5
	add     r0, #0x28
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200dc48
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x12
	bl      Function_200b1ec
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x28
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0x8]
	bl      Function_201d738
	mov     r0, r4
	bl      Function_20237bc
	b       branch_224dbfe
@ 0x224dbea

.thumb
branch_224dbea: @ 224dbea :thumb
	mov     r0, #0x48
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r3, #0x10
	add     r0, #0x28
	mov     r1, #0xf
	mov     r2, #0x0
	str     r3, [sp, #0x4]
	bl      Function_201ae78
.thumb
branch_224dbfe: @ 224dbfe :thumb
	mov     r0, #0x10
	mov     r1, #0xb
	bl      Function_2023790
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      Function_200b1ec
	mov     r6, r0
	mov     r0, r5
	bl      Function_224e8f4
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	mov     r3, #0x6
	bl      Function_200b60c
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	mov     r2, r6
	bl      Function_200c388
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	bl      Function_2002d7c
	mov     r7, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r3, #0x48
	mov     r1, #0x0
	add     r0, #0x28
	mov     r2, r4
	sub     r3, r3, r7
	str     r1, [sp, #0x8]
	bl      Function_201d738
.thumb
branch_224dc66: @ 224dc66 :thumb
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, r4
	bl      Function_20237bc
	add     r5, #0x28
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224dc7e


.align 2


.word 0x245 @ 0x224dc80
.thumb
Function_224dc84: @ 224dc84 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r2, sp, #0x0
	ldr     r0, [r5, #0x78]
	mov     r1, #0x0
	add     r2, #0x2
	bl      Function_20014dc
	ldr     r0, [r5, #0x78]
	bl      Function_2001288
	mov     r4, r0
	ldr     r0, [r5, #0x78]
	mov     r1, #0x0
	add     r2, sp, #0x0
	bl      Function_20014dc
	add     r0, sp, #0x0
	ldrh    r2, [r0, #0x0]
	ldrh    r0, [r0, #0x2]
	cmp     r0, r2
	beq     branch_224dcc4
	mov     r0, #0x2
	lsl     r2, r2, #4
	lsl     r0, r0, #8
	add     r2, #0x18
	lsl     r2, r2, #16
	ldr     r0, [r5, r0]
	mov     r1, #0xac
	asr     r2, r2, #16
	bl      Function_200d494
.thumb
branch_224dcc4: @ 224dcc4 :thumb
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_224dcd6
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	bne     branch_224dcd4
	b       branch_224de7c
@ 0x224dcd4

.thumb
branch_224dcd4: @ 224dcd4 :thumb
	b       branch_224dd04
@ 0x224dcd6

.thumb
branch_224dcd6: @ 224dcd6 :thumb
	mov     r1, #0x0
	ldr     r0, [r5, #0x78]
	mov     r2, r1
	bl      Function_2001384
	ldr     r0, [r5, #0x7c]
	bl      Function_2013a3c
	mov     r0, r5
	bl      Function_224d44c
	mov     r0, r5
	bl      Function_224d5d8
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_2019ebc
	ldr     r0, [pc, #0x184] @ 0x224de80, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0xc
	pop     {r3-r5,pc}
@ 0x224dd04

.thumb
branch_224dd04: @ 224dd04 :thumb
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2021d34
	mov     r1, #0x82
	lsl     r1, r1, #2
	strh    r0, [r5, r1]
	sub     r1, #0xc
	ldr     r0, [r5, r1]
	bl      Function_2021d34
	ldr     r1, [pc, #0x164] @ 0x224de84, (=0x20a)
	strh    r0, [r5, r1]
	sub     r1, #0x12
	ldr     r0, [r5, r1]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_224ec10
	mov     r0, r5
	add     r0, #0x58
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, r5
	add     r0, #0x18
	bl      Function_201acf4
	mov     r0, r5
	add     r0, #0x58
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200e060
	ldr     r1, [pc, #0x128] @ 0x224de88, (=0x246)
	mov     r2, #0x1
	strh    r4, [r5, r1]
	add     r0, r1, #0x2
	strh    r2, [r5, r0]
	ldrh    r1, [r5, r1]
	mov     r0, r5
	bl      Function_224e890
	mov     r1, #0x93
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_224e8f4
	mov     r2, #0x93
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	cmp     r0, r1
	bcs     branch_224dde0
	.hword  0x1fd0 @ sub r0, r2, #0x7
	ldrb    r0, [r5, r0]
	cmp     r0, #0x3
	bne     branch_224dd9c
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x25
	bl      Function_200b1ec
	b       branch_224dda8
@ 0x224dd9c

.thumb
branch_224dd9c: @ 224dd9c :thumb
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	bl      Function_200b1ec
.thumb
branch_224dda8: @ 224dda8 :thumb
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x8d
	add     r0, #0x8c
	lsl     r1, r1, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc
	mov     r2, #0x8d
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0x20
	mov     r0, r5
	ldr     r2, [r5, r2]
	add     r0, #0x58
	mov     r3, #0x1
	bl      Function_205d994
	mov     r1, #0x9
	lsl     r1, r1, #6
	strb    r0, [r5, r1]
	mov     r0, #0xa
	pop     {r3-r5,pc}
@ 0x224dde0

.thumb
branch_224dde0: @ 224dde0 :thumb
	.hword  0x1fd2 @ sub r2, r2, #0x7
	ldrb    r2, [r5, r2]
	cmp     r2, #0x1
	bne     branch_224ddf6
	ldr     r0, [pc, #0x94] @ 0x224de80, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	bl      Function_224e098
	pop     {r3-r5,pc}

branch_224ddf6: @ 224ddf6 :thumb
	blx     _u32_div_f
	ldr     r1, [pc, #0x90] @ 0x224de8c, (=0x24a)
	strh    r0, [r5, r1]
	ldrh    r0, [r5, r1]
	cmp     r0, #0x63
	bls     branch_224de08
	mov     r0, #0x63
	strh    r0, [r5, r1]
branch_224de08: @ 224de08 :thumb
	ldr     r1, [pc, #0x7c] @ 0x224de88, (=0x246)
	mov     r0, r5
	ldrh    r1, [r5, r1]
	mov     r2, #0x0
	bl      Function_224e834
	ldr     r0, [pc, #0x78] @ 0x224de90, (=0x245)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x3
	bne     branch_224de2a
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x21
	bl      Function_200b1ec
	b       branch_224de36
@ 0x224de2a

.thumb
branch_224de2a: @ 224de2a :thumb
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x4
	bl      Function_200b1ec
.thumb
branch_224de36: @ 224de36 :thumb
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x8d
	add     r0, #0x8c
	lsl     r1, r1, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc
	mov     r2, #0x8d
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0x20
	mov     r0, r5
	ldr     r2, [r5, r2]
	add     r0, #0x58
	mov     r3, #0x1
	bl      Function_205d994
	mov     r1, #0x9
	lsl     r1, r1, #6
	strb    r0, [r5, r1]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_224eb38
	ldr     r0, [pc, #0xc] @ 0x224de80, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x5
	pop     {r3-r5,pc}
@ 0x224de7c

.thumb
branch_224de7c: @ 224de7c :thumb
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x224de80

.word 0x5dc @ 0x224de80
.word 0x20a @ 0x224de84
.word 0x246 @ 0x224de88
.word 0x24a @ 0x224de8c
.word 0x245 @ 0x224de90
.thumb
Function_224de94: @ 224de94 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x9
	lsl     r0, r0, #6
	ldrb    r0, [r4, r0]
	bl      Function_205da04
	cmp     r0, #0x0
	bne     branch_224deaa
	mov     r0, #0x5
	pop     {r4,pc}
@ 0x224deaa

.thumb
branch_224deaa: @ 224deaa :thumb
	mov     r0, r4
	bl      Function_224ded4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_224e28c
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2021cac
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2021cac
	mov     r0, #0x6
	pop     {r4,pc}
@ 0x224ded4

.thumb
Function_224ded4: @ 224ded4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r1, [pc, #0xd0] @ 0x224dfac, (=0x245)
	mov     r5, r0
	ldrb    r0, [r5, r1]
	cmp     r0, #0x0
	bne     branch_224def6
	mov     r0, r1
	.hword  0x1c49 @ add r1, r1, #0x1
	sub     r0, #0x35
	ldrh    r1, [r5, r1]
	ldr     r0, [r5, r0]
	mov     r2, #0xb
	bl      Function_207d730
	mov     r4, r0
	b       branch_224df28
@ 0x224def6

.thumb
branch_224def6: @ 224def6 :thumb
	cmp     r0, #0x3
	bne     branch_224df0e
	mov     r0, r1
	.hword  0x1c49 @ add r1, r1, #0x1
	sub     r0, #0x35
	ldrh    r1, [r5, r1]
	ldr     r0, [r5, r0]
	mov     r2, #0xb
	bl      Function_207d730
	mov     r4, r0
	b       branch_224df28
@ 0x224df0e

.thumb
branch_224df0e: @ 224df0e :thumb
	cmp     r0, #0x2
	bne     branch_224df26
	mov     r0, r1
	.hword  0x1c49 @ add r1, r1, #0x1
	sub     r0, #0x35
	ldrh    r1, [r5, r1]
	ldr     r0, [r5, r0]
	bl      Function_202cbc8
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_224df28
@ 0x224df26

.thumb
branch_224df26: @ 224df26 :thumb
	mov     r4, #0x0
.thumb
branch_224df28: @ 224df28 :thumb
	mov     r0, r5
	add     r0, #0x48
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, r5
	add     r0, #0x48
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200dc48
	mov     r0, #0x18
	mov     r1, #0xb
	bl      Function_2023790
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      Function_200b1ec
	mov     r7, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	mov     r2, r4
	mov     r3, #0x3
	bl      Function_200b60c
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_200c388
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x48
	mov     r2, r6
	mov     r3, r1
	str     r1, [sp, #0x8]
	bl      Function_201d738
	mov     r0, r7
	bl      Function_20237bc
	mov     r0, r6
	bl      Function_20237bc
	add     r5, #0x48
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224dfaa


.align 2


.word 0x245 @ 0x224dfac
.thumb
Function_224dfb0: @ 224dfb0 :thumb
	push    {r4,lr}
	mov     r1, #0x92
	mov     r4, r0
	lsl     r1, r1, #2
	add     r0, r4, r1
	.hword  0x1c89 @ add r1, r1, #0x2
	ldrh    r1, [r4, r1]
	bl      Function_208c15c
	cmp     r0, #0x0
	beq     branch_224dfd8
	ldr     r0, [pc, #0xc4] @ 0x224e08c, (=0x638)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_224e28c
	mov     r0, #0x6
	pop     {r4,pc}
@ 0x224dfd8

.thumb
branch_224dfd8: @ 224dfd8 :thumb
	ldr     r0, [pc, #0xb4] @ 0x224e090, (=0x21bf67c)
	mov     r1, #0x1
	ldr     r2, [r0, #0x48]
	mov     r0, r2
	tst     r0, r1
	beq     branch_224e028
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, r4
	add     r0, #0x48
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, r4
	add     r0, #0x38
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0xf
	bl      Function_201ada4
	ldr     r0, [pc, #0x78] @ 0x224e094, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_224e098
	pop     {r4,pc}
@ 0x224e028

.thumb
branch_224e028: @ 224e028 :thumb
	mov     r0, #0x2
	tst     r0, r2
	beq     branch_224e088
	mov     r0, r4
	add     r0, #0x48
	bl      Function_200dc9c
	mov     r0, r4
	add     r0, #0x38
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_224eb38
	mov     r1, #0x7e
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0x10
	ldrh    r1, [r4, r1]
	bl      Function_2021cac
	mov     r1, #0x7f
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0xe
	ldrh    r1, [r4, r1]
	bl      Function_2021cac
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_224ec10
	add     r4, #0x18
	mov     r0, r4
	bl      Function_201a9a4
	ldr     r0, [pc, #0x14] @ 0x224e094, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x4
	pop     {r4,pc}
@ 0x224e088

.thumb
branch_224e088: @ 224e088 :thumb
	mov     r0, #0x6
	pop     {r4,pc}
@ 0x224e08c

.word 0x638 @ 0x224e08c
.word 0x21bf67c @ 0x224e090
.word 0x5dc @ 0x224e094
.thumb
Function_224e098: @ 224e098 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	ldr     r2, [pc, #0x1e4] @ 0x224e284, (=0x245)
	mov     r4, r0
	ldrb    r0, [r4, r2]
	cmp     r0, #0x0
	bne     branch_224e0bc
	mov     r0, r2
	add     r1, r2, #0x1
	.hword  0x1cd2 @ add r2, r2, #0x3
	sub     r0, #0x35
	ldrh    r1, [r4, r1]
	ldrh    r2, [r4, r2]
	ldr     r0, [r4, r0]
	mov     r3, #0xb
	bl      Function_207d55c
	b       branch_224e100
@ 0x224e0bc

.thumb
branch_224e0bc: @ 224e0bc :thumb
	cmp     r0, #0x3
	bne     branch_224e0d6
	mov     r0, r2
	add     r1, r2, #0x1
	.hword  0x1cd2 @ add r2, r2, #0x3
	sub     r0, #0x35
	ldrh    r1, [r4, r1]
	ldrh    r2, [r4, r2]
	ldr     r0, [r4, r0]
	mov     r3, #0xb
	bl      Function_207d55c
	b       branch_224e100
@ 0x224e0d6

.thumb
branch_224e0d6: @ 224e0d6 :thumb
	cmp     r0, #0x1
	bne     branch_224e0ee
	sub     r2, #0x35
	ldr     r0, [r4, r2]
	bl      Function_20289a0
	cmp     r0, #0xc8
	bne     branch_224e0ea
	mov     r0, #0x0
	b       branch_224e100
@ 0x224e0ea

.thumb
branch_224e0ea: @ 224e0ea :thumb
	mov     r0, #0x1
	b       branch_224e100
@ 0x224e0ee

.thumb
branch_224e0ee: @ 224e0ee :thumb
	mov     r0, r2
	add     r1, r2, #0x1
	.hword  0x1cd2 @ add r2, r2, #0x3
	sub     r0, #0x35
	ldrh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, r0]
	bl      Function_202cb70
.thumb
branch_224e100: @ 224e100 :thumb
	cmp     r0, #0x0
	bne     branch_224e192
	mov     r0, #0x92
	mov     r1, #0x0
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	.hword  0x1ec0 @ sub r0, r0, #0x3
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_224e124
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x7
	bl      Function_200b1ec
	mov     r5, r0
	b       branch_224e15a
@ 0x224e124

.thumb
branch_224e124: @ 224e124 :thumb
	cmp     r0, #0x3
	bne     branch_224e138
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x7
	bl      Function_200b1ec
	mov     r5, r0
	b       branch_224e15a
@ 0x224e138

.thumb
branch_224e138: @ 224e138 :thumb
	cmp     r0, #0x1
	bne     branch_224e14c
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0xc
	bl      Function_200b1ec
	mov     r5, r0
	b       branch_224e15a
@ 0x224e14c

.thumb
branch_224e14c: @ 224e14c :thumb
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0xe
	bl      Function_200b1ec
	mov     r5, r0
.thumb
branch_224e15a: @ 224e15a :thumb
	mov     r0, r4
	mov     r1, #0x8d
	add     r0, #0x8c
	lsl     r1, r1, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, r1]
	mov     r2, r5
	bl      Function_200c388
	mov     r0, r5
	bl      Function_20237bc
	mov     r2, #0x8d
	lsl     r2, r2, #2
	ldr     r1, [r4, r2]
	sub     r2, #0x20
	mov     r0, r4
	ldr     r2, [r4, r2]
	add     r0, #0x58
	mov     r3, #0x1
	bl      Function_205d994
	mov     r1, #0x9
	lsl     r1, r1, #6
	strb    r0, [r4, r1]
	add     sp, #0x8
	mov     r0, #0xa
	pop     {r3-r5,pc}
@ 0x224e192

.thumb
branch_224e192: @ 224e192 :thumb
	ldr     r1, [pc, #0xf4] @ 0x224e288, (=0x246)
	mov     r0, r4
	ldrh    r1, [r4, r1]
	mov     r2, #0x0
	bl      Function_224e834
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	mov     r2, #0x92
	mov     r0, r4
	str     r1, [sp, #0x4]
	lsl     r2, r2, #2
	add     r0, #0x8c
	ldsh    r2, [r4, r2]
	ldr     r0, [r0, #0x0]
	mov     r3, #0x2
	bl      Function_200b60c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r2, #0x93
	str     r0, [sp, #0x4]
	lsl     r2, r2, #2
	ldr     r3, [r4, r2]
	.hword  0x1f12 @ sub r2, r2, #0x4
	mov     r0, r4
	ldsh    r2, [r4, r2]
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mul     r2, r3
	mov     r1, #0x2
	mov     r3, #0x6
	bl      Function_200b60c
	ldr     r1, [pc, #0xac] @ 0x224e288, (=0x246)
	mov     r2, r1
	ldrh    r0, [r4, r1]
	sub     r2, #0xa2
	cmp     r0, r2
	bhi     branch_224e226
	sub     r1, #0xfe
	cmp     r0, r1
	bcc     branch_224e226
	bl      Function_207d268
	mov     r2, r0
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	bl      Function_200b630
	ldr     r0, [pc, #0x84] @ 0x224e284, (=0x245)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x3
	bne     branch_224e216
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x24
	bl      Function_200b1ec
	mov     r5, r0
	b       branch_224e24c
@ 0x224e216

.thumb
branch_224e216: @ 224e216 :thumb
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1b
	bl      Function_200b1ec
	mov     r5, r0
	b       branch_224e24c
@ 0x224e226

.thumb
branch_224e226: @ 224e226 :thumb
	ldr     r0, [pc, #0x5c] @ 0x224e284, (=0x245)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x3
	bne     branch_224e23e
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x23
	bl      Function_200b1ec
	mov     r5, r0
	b       branch_224e24c
@ 0x224e23e

.thumb
branch_224e23e: @ 224e23e :thumb
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x5
	bl      Function_200b1ec
	mov     r5, r0
.thumb
branch_224e24c: @ 224e24c :thumb
	mov     r0, r4
	mov     r1, #0x8d
	add     r0, #0x8c
	lsl     r1, r1, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, r1]
	mov     r2, r5
	bl      Function_200c388
	mov     r0, r5
	bl      Function_20237bc
	mov     r2, #0x8d
	lsl     r2, r2, #2
	ldr     r1, [r4, r2]
	sub     r2, #0x20
	mov     r0, r4
	ldr     r2, [r4, r2]
	add     r0, #0x58
	mov     r3, #0x1
	bl      Function_205d994
	mov     r1, #0x9
	lsl     r1, r1, #6
	strb    r0, [r4, r1]
	mov     r0, #0x7
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x224e284

.word 0x245 @ 0x224e284
.word 0x246 @ 0x224e288
.thumb
Function_224e28c: @ 224e28c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	add     r0, #0x38
	mov     r1, #0xf
	bl      Function_201ada4
	cmp     r4, #0x0
	bne     branch_224e2ae
	mov     r0, r5
	add     r0, #0x38
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200dc48
.thumb
branch_224e2ae: @ 224e2ae :thumb
	mov     r0, #0x18
	mov     r1, #0xb
	bl      Function_2023790
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x15
	bl      Function_200b1ec
	mov     r3, #0x2
	mov     r6, r0
	mov     r2, #0x92
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r5
	lsl     r2, r2, #2
	add     r0, #0x8c
	ldsh    r2, [r5, r2]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_200b60c
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	mov     r2, r6
	bl      Function_200c388
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	mov     r0, r5
	add     r0, #0x38
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0x8]
	bl      Function_201d738
	mov     r0, r6
	bl      Function_20237bc
	ldr     r0, [pc, #0x8c] @ 0x224e39c, (=0x245)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x3
	bne     branch_224e322
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x22
	bl      Function_200b1ec
	b       branch_224e32e
@ 0x224e322

.thumb
branch_224e322: @ 224e322 :thumb
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x16
	bl      Function_200b1ec
.thumb
branch_224e32e: @ 224e32e :thumb
	mov     r7, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r2, #0x93
	str     r0, [sp, #0x4]
	lsl     r2, r2, #2
	ldr     r3, [r5, r2]
	.hword  0x1f12 @ sub r2, r2, #0x4
	mov     r0, r5
	ldsh    r2, [r5, r2]
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mul     r2, r3
	mov     r1, #0x0
	mov     r3, #0x6
	bl      Function_200b60c
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	mov     r2, r7
	bl      Function_200c388
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	bl      Function_2002d7c
	mov     r6, r0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r3, #0x60
	mov     r1, #0x0
	add     r0, #0x38
	mov     r2, r4
	sub     r3, r3, r6
	str     r1, [sp, #0x8]
	bl      Function_201d738
	mov     r0, r7
	bl      Function_20237bc
	mov     r0, r4
	bl      Function_20237bc
	add     r5, #0x38
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224e39c

.word 0x245 @ 0x224e39c
.thumb
Function_224e3a0: @ 224e3a0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x9
	lsl     r0, r0, #6
	ldrb    r0, [r4, r0]
	bl      Function_205da04
	cmp     r0, #0x0
	bne     branch_224e3ba
	add     sp, #0x4
	mov     r0, #0x7
	pop     {r3,r4,pc}
@ 0x224e3ba

.thumb
branch_224e3ba: @ 224e3ba :thumb
	mov     r3, #0xb
	str     r3, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x10] @ 0x224e3d4, (=0x224f2cc)
	mov     r2, #0x1f
	bl      Function_2002100
	add     r4, #0x80
	str     r0, [r4, #0x0]
	mov     r0, #0x8
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224e3d2


.align 2


.word 0x224f2cc @ 0x224e3d4
.thumb
Function_224e3d8: @ 224e3d8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xb
	bl      Function_2002114
	cmp     r0, #0x0
	beq     branch_224e3f6
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_224e3f4
	b       branch_224e55e
@ 0x224e3f4

.thumb
branch_224e3f4: @ 224e3f4 :thumb
	b       branch_224e5a0
@ 0x224e3f6

.thumb
branch_224e3f6: @ 224e3f6 :thumb
	ldr     r2, [pc, #0x1ac] @ 0x224e5a4, (=0x245)
	ldrb    r0, [r4, r2]
	cmp     r0, #0x0
	bne     branch_224e454
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6
	bl      Function_200b1ec
	mov     r2, #0x92
	lsl     r2, r2, #2
	mov     r5, r0
	ldsh    r0, [r4, r2]
	cmp     r0, #0x1
	bne     branch_224e428
	mov     r0, r4
	.hword  0x1e92 @ sub r2, r2, #0x2
	add     r0, #0x8c
	ldrh    r2, [r4, r2]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_200b70c
	b       branch_224e438
@ 0x224e428

.thumb
branch_224e428: @ 224e428 :thumb
	mov     r0, r4
	.hword  0x1e92 @ sub r2, r2, #0x2
	add     r0, #0x8c
	ldrh    r2, [r4, r2]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_200b77c
.thumb
branch_224e438: @ 224e438 :thumb
	ldr     r0, [pc, #0x16c] @ 0x224e5a8, (=0x246)
	mov     r1, #0x5
	ldrh    r0, [r4, r0]
	mov     r2, #0xb
	bl      GetItemData
	mov     r2, r0
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_200b7b4
	b       branch_224e518
@ 0x224e454

.thumb
branch_224e454: @ 224e454 :thumb
	cmp     r0, #0x3
	bne     branch_224e4ac
	add     r0, r2, #0x3
	ldsh    r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_224e472
	mov     r0, r4
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0x8c
	ldrh    r2, [r4, r2]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_200b70c
	b       branch_224e482
@ 0x224e472

.thumb
branch_224e472: @ 224e472 :thumb
	mov     r0, r4
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0x8c
	ldrh    r2, [r4, r2]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_200b77c
.thumb
branch_224e482: @ 224e482 :thumb
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6
	bl      Function_200b1ec
	mov     r5, r0
	ldr     r0, [pc, #0x114] @ 0x224e5a8, (=0x246)
	mov     r1, #0x5
	ldrh    r0, [r4, r0]
	mov     r2, #0xb
	bl      GetItemData
	mov     r2, r0
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_200b7b4
	b       branch_224e518
@ 0x224e4ac

.thumb
branch_224e4ac: @ 224e4ac :thumb
	cmp     r0, #0x1
	bne     branch_224e4cc
	add     r1, r2, #0x1
	ldrh    r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_224e834
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0xb
	bl      Function_200b1ec
	mov     r5, r0
	b       branch_224e518
@ 0x224e4cc

.thumb
branch_224e4cc: @ 224e4cc :thumb
	add     r0, r2, #0x3
	ldsh    r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_224e4f0
	add     r0, r2, #0x1
	ldrh    r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_2098164
	mov     r2, r0
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_200be64
	b       branch_224e50a
@ 0x224e4f0

.thumb
branch_224e4f0: @ 224e4f0 :thumb
	add     r0, r2, #0x1
	ldrh    r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_2098164
	mov     r2, r0
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_200be98
.thumb
branch_224e50a: @ 224e50a :thumb
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0xd
	bl      Function_200b1ec
	mov     r5, r0
.thumb
branch_224e518: @ 224e518 :thumb
	mov     r0, r4
	mov     r1, #0x8d
	add     r0, #0x8c
	lsl     r1, r1, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, r1]
	mov     r2, r5
	bl      Function_200c388
	mov     r0, r5
	bl      Function_20237bc
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r2, #0x8d
	lsl     r2, r2, #2
	ldr     r1, [r4, r2]
	sub     r2, #0x20
	mov     r0, r4
	ldr     r2, [r4, r2]
	add     r0, #0x58
	mov     r3, #0x1
	bl      Function_205d994
	mov     r1, #0x9
	lsl     r1, r1, #6
	strb    r0, [r4, r1]
	ldr     r0, [pc, #0x54] @ 0x224e5ac, (=0x644)
	bl      Function_2005748
	mov     r0, #0x9
	pop     {r3-r5,pc}
@ 0x224e55e

.thumb
branch_224e55e: @ 224e55e :thumb
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_224eb38
	mov     r1, #0x7e
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0x10
	ldrh    r1, [r4, r1]
	bl      Function_2021cac
	mov     r1, #0x7f
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0xe
	ldrh    r1, [r4, r1]
	bl      Function_2021cac
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_224ec10
	add     r4, #0x18
	mov     r0, r4
	bl      Function_201a9a4
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x224e5a0

.thumb
branch_224e5a0: @ 224e5a0 :thumb
	mov     r0, #0x8
	pop     {r3-r5,pc}
@ 0x224e5a4

.word 0x245 @ 0x224e5a4
.word 0x246 @ 0x224e5a8
.word 0x644 @ 0x224e5ac
.thumb
Function_224e5b0: @ 224e5b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x9
	lsl     r0, r0, #6
	ldrb    r0, [r4, r0]
	bl      Function_205da04
	cmp     r0, #0x0
	bne     branch_224e5c6
	mov     r0, #0x9
	pop     {r4,pc}
@ 0x224e5c6

.thumb
branch_224e5c6: @ 224e5c6 :thumb
	ldr     r2, [pc, #0xec] @ 0x224e6b4, (=0x245)
	ldrb    r0, [r4, r2]
	cmp     r0, #0x0
	bne     branch_224e5fc
	mov     r0, r2
	add     r1, r2, #0x1
	.hword  0x1cd2 @ add r2, r2, #0x3
	sub     r0, #0x35
	ldrh    r1, [r4, r1]
	ldrh    r2, [r4, r2]
	ldr     r0, [r4, r0]
	mov     r3, #0xb
	bl      Function_207d570
	mov     r2, #0x22
	lsl     r2, r2, #4
	mov     r1, r2
	ldr     r0, [r4, r2]
	add     r2, #0x28
	ldsh    r2, [r4, r2]
	add     r1, #0x26
	ldrh    r1, [r4, r1]
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	bl      Function_206d504
	b       branch_224e63c
@ 0x224e5fc

.thumb
branch_224e5fc: @ 224e5fc :thumb
	cmp     r0, #0x3
	bne     branch_224e616
	mov     r0, r2
	add     r1, r2, #0x1
	.hword  0x1cd2 @ add r2, r2, #0x3
	sub     r0, #0x35
	ldrh    r1, [r4, r1]
	ldrh    r2, [r4, r2]
	ldr     r0, [r4, r0]
	mov     r3, #0xb
	bl      Function_207d570
	b       branch_224e63c
@ 0x224e616

.thumb
branch_224e616: @ 224e616 :thumb
	cmp     r0, #0x1
	bne     branch_224e62a
	mov     r0, r2
	add     r1, r2, #0x1
	sub     r0, #0x35
	ldrh    r1, [r4, r1]
	ldr     r0, [r4, r0]
	bl      Function_202895c
	b       branch_224e63c
@ 0x224e62a

.thumb
branch_224e62a: @ 224e62a :thumb
	mov     r0, r2
	add     r1, r2, #0x1
	.hword  0x1cd2 @ add r2, r2, #0x3
	sub     r0, #0x35
	ldrh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, r0]
	bl      Function_202cae0
.thumb
branch_224e63c: @ 224e63c :thumb
	mov     r1, #0x93
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	.hword  0x1f09 @ sub r1, r1, #0x4
	ldsh    r1, [r4, r1]
	mov     r0, r4
	mul     r1, r2
	bl      Function_224e920
	ldr     r2, [pc, #0x64] @ 0x224e6b4, (=0x245)
	ldrb    r0, [r4, r2]
	cmp     r0, #0x3
	bne     branch_224e66e
	mov     r0, r2
	add     r3, r2, #0x7
	.hword  0x1cd2 @ add r2, r2, #0x3
	sub     r0, #0x29
	ldsh    r2, [r4, r2]
	ldr     r3, [r4, r3]
	ldr     r0, [r4, r0]
	mov     r1, #0x45
	mul     r2, r3
	bl      Function_202cf70
	b       branch_224e684
@ 0x224e66e

.thumb
branch_224e66e: @ 224e66e :thumb
	mov     r0, r2
	add     r3, r2, #0x7
	.hword  0x1cd2 @ add r2, r2, #0x3
	sub     r0, #0x29
	ldsh    r2, [r4, r2]
	ldr     r3, [r4, r3]
	ldr     r0, [r4, r0]
	mov     r1, #0x23
	mul     r2, r3
	bl      Function_202cf70
.thumb
branch_224e684: @ 224e684 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_224daf8
	mov     r1, #0x92
	lsl     r1, r1, #2
	ldsh    r0, [r4, r1]
	cmp     r0, #0x1
	ble     branch_224e69e
	mov     r2, #0x2
	.hword  0x1f48 @ sub r0, r1, #0x5
	strb    r2, [r4, r0]
	b       branch_224e6b0
@ 0x224e69e

.thumb
branch_224e69e: @ 224e69e :thumb
	.hword  0x1f48 @ sub r0, r1, #0x5
	ldrb    r0, [r4, r0]
	cmp     r0, #0xff
	beq     branch_224e6b0
	.hword  0x1f48 @ sub r0, r1, #0x5
	ldrb    r0, [r4, r0]
	add     r2, r0, #0x1
	.hword  0x1f48 @ sub r0, r1, #0x5
	strb    r2, [r4, r0]
.thumb
branch_224e6b0: @ 224e6b0 :thumb
	mov     r0, #0xa
	pop     {r4,pc}
@ 0x224e6b4

.word 0x245 @ 0x224e6b4
.thumb
Function_224e6b8: @ 224e6b8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x9
	lsl     r0, r0, #6
	ldrb    r0, [r5, r0]
	bl      Function_205da04
	cmp     r0, #0x0
	bne     branch_224e6ce
	mov     r0, #0xa
	pop     {r3-r5,pc}
@ 0x224e6ce

.thumb
branch_224e6ce: @ 224e6ce :thumb
	ldr     r0, [pc, #0xec] @ 0x224e7bc, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_224e7b6
	mov     r0, #0x8a
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	cmp     r1, #0x1
	bne     branch_224e6ea
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r5, r0]
	bl      Function_206b3b4
.thumb
branch_224e6ea: @ 224e6ea :thumb
	ldr     r0, [pc, #0xd4] @ 0x224e7c0, (=0x245)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_224e6f6
	cmp     r0, #0x3
	bne     branch_224e774
.thumb
branch_224e6f6: @ 224e6f6 :thumb
	ldr     r1, [pc, #0xcc] @ 0x224e7c4, (=0x246)
	ldrh    r0, [r5, r1]
	cmp     r0, #0x4
	bne     branch_224e774
	add     r0, r1, #0x2
	ldsh    r0, [r5, r0]
	cmp     r0, #0xa
	blt     branch_224e774
	sub     r1, #0x36
	ldr     r0, [r5, r1]
	mov     r1, #0xc
	mov     r2, #0x1
	mov     r3, #0xb
	bl      Function_207d570
	cmp     r0, #0x1
	bne     branch_224e774
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      Function_200b1ec
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x8d
	add     r0, #0x8c
	lsl     r1, r1, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc
	mov     r0, r5
	add     r0, #0x58
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r2, #0x8d
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0x20
	mov     r0, r5
	ldr     r2, [r5, r2]
	add     r0, #0x58
	mov     r3, #0x1
	bl      Function_205d994
	mov     r1, #0x9
	lsl     r1, r1, #6
	strb    r0, [r5, r1]
	sub     r1, #0x20
	ldr     r0, [r5, r1]
	bl      LoadVariableAreaAdress_14
	mov     r1, #0x32
	bl      Function_202cf28
	mov     r0, #0xb
	pop     {r3-r5,pc}
@ 0x224e774

.thumb
branch_224e774: @ 224e774 :thumb
	mov     r0, r5
	add     r0, #0x58
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_224eb38
	mov     r1, #0x7e
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	add     r1, #0x10
	ldrh    r1, [r5, r1]
	bl      Function_2021cac
	mov     r1, #0x7f
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	add     r1, #0xe
	ldrh    r1, [r5, r1]
	bl      Function_2021cac
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_224ec10
	add     r5, #0x18
	mov     r0, r5
	bl      Function_201a9a4
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x224e7b6

.thumb
branch_224e7b6: @ 224e7b6 :thumb
	mov     r0, #0xa
	pop     {r3-r5,pc}
@ 0x224e7ba


.align 2


.word 0x21bf67c @ 0x224e7bc
.word 0x245 @ 0x224e7c0
.word 0x246 @ 0x224e7c4
.thumb
Function_224e7c8: @ 224e7c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x9
	lsl     r0, r0, #6
	ldrb    r0, [r4, r0]
	bl      Function_205da04
	cmp     r0, #0x0
	bne     branch_224e7de
	mov     r0, #0xb
	pop     {r4,pc}

branch_224e7de: @ 224e7de :thumb
	ldr     r0, [pc, #0x50] @ 0x224e830, (=RAM_21bf67c)
	ldr     r1, [r0, #RAM_21bf67c_48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_224e82a
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_224eb38
	mov     r1, #0x7e
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0x10
	ldrh    r1, [r4, r1]
	bl      Function_2021cac
	mov     r1, #0x7f
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0xe
	ldrh    r1, [r4, r1]
	bl      Function_2021cac
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_224ec10
	add     r4, #0x18
	mov     r0, r4
	bl      Function_201a9a4
	mov     r0, #0x4
	pop     {r4,pc}

branch_224e82a: @ 224e82a :thumb
	mov     r0, #0xb
	pop     {r4,pc}
@ 0x224e82e

.align 2
.word RAM_21bf67c @ 0x224e830



.thumb
Function_224e834: @ 224e834 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x50] @ 0x224e88c, (=0x245)
	mov     r3, r1
	ldrb    r0, [r4, r0]
	mov     r5, r2
	cmp     r0, #0x0
	bne     branch_224e852
	add     r4, #0x8c
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	mov     r2, r3
	bl      Function_200b70c
	pop     {r3-r5,pc}
@ 0x224e852

.thumb
branch_224e852: @ 224e852 :thumb
	cmp     r0, #0x3
	bne     branch_224e864
	add     r4, #0x8c
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	mov     r2, r3
	bl      Function_200b70c
	pop     {r3-r5,pc}
@ 0x224e864

.thumb
branch_224e864: @ 224e864 :thumb
	cmp     r0, #0x1
	bne     branch_224e876
	add     r4, #0x8c
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	mov     r2, r3
	bl      Function_200bc80
	pop     {r3-r5,pc}
@ 0x224e876

.thumb
branch_224e876: @ 224e876 :thumb
	lsl     r0, r3, #24
	lsr     r0, r0, #24
	bl      Function_2098164
	add     r4, #0x8c
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_200be64
	pop     {r3-r5,pc}
@ 0x224e88c

.word 0x245 @ 0x224e88c
.thumb
Function_224e890: @ 224e890 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x34] @ 0x224e8c8, (=0x245)
	ldrb    r2, [r0, r2]
	cmp     r2, #0x0
	bne     branch_224e8a6
	mov     r0, r1
	mov     r1, #0x0
	mov     r2, #0xb
	bl      GetItemData
	pop     {r3,pc}
@ 0x224e8a6

.thumb
branch_224e8a6: @ 224e8a6 :thumb
	cmp     r2, #0x3
	bne     branch_224e8b0
	bl      Function_224e8cc
	pop     {r3,pc}
@ 0x224e8b0

.thumb
branch_224e8b0: @ 224e8b0 :thumb
	cmp     r2, #0x1
	bne     branch_224e8bc
	mov     r0, r1
	bl      Function_205745c
	pop     {r3,pc}
@ 0x224e8bc

.thumb
branch_224e8bc: @ 224e8bc :thumb
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	bl      Function_20981d0
	pop     {r3,pc}
@ 0x224e8c6


.align 2


.word 0x245 @ 0x224e8c8
.thumb
Function_224e8cc: @ 224e8cc :thumb
	ldr     r3, [pc, #0x1c] @ 0x224e8ec, (=0x224f3f8)
	mov     r2, #0x0
.thumb
branch_224e8d0: @ 224e8d0 :thumb
	ldrh    r0, [r3, #0x0]
	cmp     r1, r0
	bne     branch_224e8de
	ldr     r0, [pc, #0x18] @ 0x224e8f0, (=0x224f3fa)
	lsl     r1, r2, #2
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x224e8de

.thumb
branch_224e8de: @ 224e8de :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r2, #0x29
	bcc     branch_224e8d0
	mov     r0, #0x0
	bx      lr
@ 0x224e8ea

.align 2
.word 0x224f3f8 @ 0x224e8ec
.word 0x224f3fa @ 0x224e8f0



.thumb
Function_224e8f4: @ 224e8f4 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x24] @ 0x224e91c, (=0x245)
	ldrb    r2, [r0, r1]
	cmp     r2, #0x3
	bne     branch_224e910
	sub     r1, #0x25
	ldr     r0, [r0, r1]
	bl      Function_202d750
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_202d230
	pop     {r3,pc}

branch_224e910: @ 224e910 :thumb
	sub     r1, #0x39
	ldr     r0, [r0, r1]
	bl      GetMoney
	pop     {r3,pc}
@ 0x224e91a

.align 2
.word 0x245 @ 0x224e91c



.thumb
Function_224e920: @ 224e920 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x28] @ 0x224e94c, (=0x245)
	mov     r4, r1
	ldrb    r3, [r0, r2]
	cmp     r3, #0x3
	bne     branch_224e940
	sub     r2, #0x25
	ldr     r0, [r0, r2]
	bl      Function_202d750
	lsl     r1, r4, #16
	lsr     r1, r1, #16
	mov     r2, #0x6
	bl      Function_202d230
	pop     {r4,pc}

branch_224e940: @ 224e940 :thumb
	sub     r2, #0x39
	ldr     r0, [r0, r2]
	bl      TakeMoney
	pop     {r4,pc}
@ 0x224e94a

.align 2
.word 0x245 @ 0x224e94c



.thumb
Function_224e950: @ 224e950 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [pc, #0xc8] @ 0x224ea20, (=0x241)
	mov     r5, r1
	add     r1, r0, #0x1
	ldrb    r2, [r5, r0]
	ldrb    r1, [r5, r1]
	cmp     r2, r1
	beq     branch_224e98c
	ldr     r4, [pc, #0xbc] @ 0x224ea24, (=0x224f2e0)
	add     r3, sp, #0x0
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	str     r0, [r3, #0x0]
	add     r1, #0x90
	ldr     r1, [r1, #0x0]
	mov     r0, r2
	bl      Function_2020990
	ldr     r0, [pc, #0xa0] @ 0x224ea20, (=0x241)
	add     sp, #0xc
	ldrb    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r5, r0]
	mov     r0, #0xc
	pop     {r4,r5,pc}
@ 0x224e98c

.thumb
branch_224e98c: @ 224e98c :thumb
	mov     r1, #0x0
	strb    r1, [r5, r0]
	mov     r0, r5
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, #0x24]
	bl      Function_20203c0
	mov     r0, r5
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	bl      Call_free5
	ldr     r0, [r4, #0x24]
	bl      Function_20203d4
	mov     r0, r5
	bl      Function_224eb14
	ldr     r0, [pc, #0x74] @ 0x224ea28, (=0x245)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x3
	bne     branch_224e9c0
	add     sp, #0xc
	mov     r0, #0x13
	pop     {r4,r5,pc}
@ 0x224e9c0

.thumb
branch_224e9c0: @ 224e9c0 :thumb
	mov     r1, r5
	ldr     r0, [r4, #0x8]
	add     r1, #0x18
	mov     r2, #0x3
	bl      Function_205d8f4
	mov     r1, #0x85
	lsl     r1, r1, #2
	mov     r0, r5
	ldr     r1, [r5, r1]
	add     r0, #0x18
	bl      Function_205d944
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	bl      Function_200b1ec
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x8d
	add     r0, #0x8c
	lsl     r1, r1, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc
	mov     r2, #0x8d
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0x20
	mov     r0, r5
	ldr     r2, [r5, r2]
	add     r0, #0x18
	mov     r3, #0x1
	bl      Function_205d994
	mov     r1, #0x9
	lsl     r1, r1, #6
	strb    r0, [r5, r1]
	mov     r0, #0xd
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x224ea20

.word 0x241 @ 0x224ea20
.word 0x224f2e0 @ 0x224ea24
.word 0x245 @ 0x224ea28
.thumb
Function_224ea2c: @ 224ea2c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x9
	lsl     r0, r0, #6
	ldrb    r0, [r4, r0]
	bl      Function_205da04
	cmp     r0, #0x0
	bne     branch_224ea42
	mov     r0, #0xd
	pop     {r4,pc}
@ 0x224ea42

.thumb
branch_224ea42: @ 224ea42 :thumb
	mov     r0, r4
	add     r0, #0x18
	bl      Function_201a8fc
	mov     r0, r4
	bl      Function_224d040
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224ea54

.thumb
Function_224ea54: @ 224ea54 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x70] @ 0x224eacc, (=0x245)
	mov     r4, r1
	ldrb    r0, [r4, r0]
	cmp     r0, #0x3
	bne     branch_224ea70
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1f
	bl      Function_200b1ec
	b       branch_224ea7c
@ 0x224ea70

.thumb
branch_224ea70: @ 224ea70 :thumb
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_200b1ec
.thumb
branch_224ea7c: @ 224ea7c :thumb
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x8d
	add     r0, #0x8c
	lsl     r1, r1, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, r1]
	mov     r2, r6
	bl      Function_200c388
	mov     r0, r6
	bl      Function_20237bc
	mov     r1, r4
	ldr     r0, [r5, #0x8]
	add     r1, #0x18
	mov     r2, #0x3
	bl      Function_205d8f4
	mov     r1, #0x85
	lsl     r1, r1, #2
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0x18
	bl      Function_205d944
	mov     r2, #0x8d
	lsl     r2, r2, #2
	ldr     r1, [r4, r2]
	sub     r2, #0x20
	mov     r0, r4
	ldr     r2, [r4, r2]
	add     r0, #0x18
	mov     r3, #0x1
	bl      Function_205d994
	mov     r1, #0x9
	lsl     r1, r1, #6
	strb    r0, [r4, r1]
	pop     {r4-r6,pc}
@ 0x224eacc

.word 0x245 @ 0x224eacc
.thumb
Function_224ead0: @ 224ead0 :thumb
	push    {r3-r7,lr}
	ldr     r1, [pc, #0x38] @ 0x224eb0c, (=0x224f2ec)
	mov     r5, r0
	add     r0, #0x94
	mov     r2, #0x4
	mov     r3, #0xb
	bl      0x21d2f14
	mov     r7, r5
	ldr     r4, [pc, #0x2c] @ 0x224eb10, (=0x224f358)
	mov     r6, #0x0
	add     r7, #0x94
.thumb
branch_224eae8: @ 224eae8 :thumb
	mov     r0, r7
	mov     r1, r4
	bl      0x21d3104
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x28
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x4
	bcc     branch_224eae8
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	pop     {r3-r7,pc}
@ 0x224eb0a


.align 2


.word 0x224f2ec @ 0x224eb0c
.word 0x224f358 @ 0x224eb10
.thumb
Function_224eb14: @ 224eb14 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, #0x7e
	mov     r4, #0x0
	mov     r5, r7
	lsl     r6, r6, #2
.thumb
branch_224eb20: @ 224eb20 :thumb
	ldr     r0, [r5, r6]
	bl      Function_2021bd4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	bcc     branch_224eb20
	add     r7, #0x94
	mov     r0, r7
	bl      0x21d30a8
	pop     {r3-r7,pc}
@ 0x224eb38

.thumb
Function_224eb38: @ 224eb38 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x0
	bne     branch_224eb5e
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xb1
	mov     r2, #0x8
	bl      Function_200d494
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xb1
	mov     r2, #0x84
	bl      Function_200d494
	pop     {r4,pc}
@ 0x224eb5e

.thumb
branch_224eb5e: @ 224eb5e :thumb
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xa2
	mov     r2, #0x6c
	bl      Function_200d494
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xa2
	mov     r2, #0x84
	bl      Function_200d494
	pop     {r4,pc}
@ 0x224eb7c

.thumb
Function_224eb7c: @ 224eb7c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [pc, #0x88] @ 0x224ec0c, (=0x245)
	mov     r6, r1
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_224eb9e
	cmp     r1, #0x3
	beq     branch_224eb9e
	sub     r0, #0x41
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x224eb9e

.thumb
branch_224eb9e: @ 224eb9e :thumb
	mov     r0, #0x71
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      Function_2009dc8
	mov     r5, r0
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_207ce78
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	mov     r0, #0x71
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r5
	mov     r2, #0x10
	bl      Function_2009968
	mov     r0, r5
	bl      Function_200a4c0
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2009dc8
	mov     r5, r0
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_207ce78
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r5
	mov     r2, #0x10
	bl      Function_20099d4
	mov     r0, r5
	bl      Function_200a6b8
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x224ec0a


.align 2


.word 0x245 @ 0x224ec0c
.thumb
Function_224ec10: @ 224ec10 :thumb
	mov     r2, #0x2
	lsl     r2, r2, #8
	ldr     r3, [pc, #0x4] @ 0x224ec1c, (=0x200d415)
	ldr     r0, [r0, r2]
	bx      r3
@ 0x224ec1a


.align 2


.word 0x200d415 @ 0x224ec1c
.thumb
Function_224ec20: @ 224ec20 :thumb
	push    {r4,lr}
	mov     r0, #0x0
	mov     r4, r1
	bl      0x21d1744
	ldr     r0, [pc, #0x8] @ 0x224ec34, (=0x233)
	mov     r1, #0xf
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x224ec32


.align 2


.word 0x233 @ 0x224ec34
.thumb
Function_224ec38: @ 224ec38 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_224ec8e
	mov     r0, r6
	bl      Function_2050a60
	mov     r5, r0
	mov     r0, r6
	bl      Function_2050a64
	mov     r4, r0
	bl      Function_224d21c
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_3
	ldr     r1, [pc, #0x30] @ 0x224ec90, (=0x224f49c)
	mov     r2, #0xb
	bl      Function_207d824
	mov     r3, r5
	str     r0, [r4, #0x4]
	add     r3, #0x98
	ldr     r1, [r5, #0xc]
	ldr     r3, [r3, #0x0]
	mov     r2, #0x2
	bl      Function_207cb2c
	ldr     r1, [r4, #0x4]
	mov     r0, r5
	bl      Function_203d1e4
	ldr     r1, [pc, #0x14] @ 0x224ec94, (=0x209ac15)
	mov     r0, r6
	mov     r2, r4
	bl      Function_2050924
	ldr     r0, [pc, #0xc] @ 0x224ec98, (=0x233)
	mov     r1, #0x10
	strb    r1, [r4, r0]
.thumb
branch_224ec8e: @ 224ec8e :thumb
	pop     {r4-r6,pc}
@ 0x224ec90

.word 0x224f49c @ 0x224ec90
.word 0x209ac15 @ 0x224ec94
.word 0x233 @ 0x224ec98
.thumb
Function_224ec9c: @ 224ec9c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	bl      Function_200f2ac
	cmp     r0, #0x0
	bne     branch_224ecae
	mov     r0, #0x12
	pop     {r3-r5,pc}
@ 0x224ecae

.thumb
branch_224ecae: @ 224ecae :thumb
	mov     r1, r5
	ldr     r0, [r4, #0x8]
	add     r1, #0x18
	mov     r2, #0x3
	bl      Function_205d8f4
	mov     r1, #0x85
	lsl     r1, r1, #2
	mov     r0, r5
	ldr     r1, [r5, r1]
	add     r0, #0x18
	bl      Function_205d944
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	bl      Function_200b1ec
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x8d
	add     r0, #0x8c
	lsl     r1, r1, #2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc
	mov     r2, #0x8d
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0x20
	mov     r0, r5
	ldr     r2, [r5, r2]
	add     r0, #0x18
	mov     r3, #0x1
	bl      Function_205d994
	mov     r1, #0x9
	lsl     r1, r1, #6
	strb    r0, [r5, r1]
	mov     r0, #0xd
	pop     {r3-r5,pc}



Unknown_224ed0c: @ @ 0x224ed0c
.incbin "./baserom/overlay/overlay_0007.bin", 0x53ac, 0x224f5a0 - 0x224ed0c


@end 0x224f5a0




