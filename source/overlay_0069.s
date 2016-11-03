
/*
0x32a200 in arm9.bin
*/

.section .iwram69, "ax"


.thumb
Function_225c700: @ 225c700 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      0x2006840
	mov     r2, #0x5
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x69
	lsl     r2, r2, #16
	bl      0x2017fc8
	ldr     r1, [pc, #0xf0] @ 0x225c80c, (=0xc724)
	mov     r0, r4
	mov     r2, #0x69
	bl      0x200681c
	ldr     r2, [pc, #0xe8] @ 0x225c80c, (=0xc724)
	mov     r1, #0x0
	mov     r4, r0
	blx     0x20d5124
	ldr     r0, [r5, #0x4]
	bl      0x202c878
	str     r0, [r4, #0xc]
	ldr     r0, [r5, #0x4]
	bl      0x2025e44
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0xc]
	bl      0x202c8c0
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0xc]
	bl      0x202c8c4
	str     r0, [r4, #0x18]
	ldr     r0, [r5, #0x8]
	mov     r1, r5
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_225d2a8
	mov     r0, r4
	ldr     r1, [r4, #0x10]
	add     r0, #0x20
	mov     r2, #0x69
	bl      Function_225d318
	mov     r0, #0x5e
	lsl     r0, r0, #2
	mov     r1, r4
	add     r0, r4, r0
	add     r1, #0x20
	mov     r2, #0x69
	bl      Function_225d6d8
	mov     r0, #0x5a
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x69
	bl      Function_225ef1c
	mov     r0, #0x69
	str     r0, [sp, #0x4]
	mov     r2, sp
	ldr     r1, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	.hword  0x1f12 @ sub r2, r2, #0x4
	str     r1, [r2, #0x0]
	str     r0, [r2, #0x4]
	mov     r0, #0x89
	ldr     r3, [r2, #0x0]
	lsl     r0, r0, #2
	mov     r2, r4
	ldr     r1, [r5, #0x0]
	add     r0, r4, r0
	add     r2, #0x20
	bl      Function_225d7a0
	add     r3, r4, #0x4
	ldr     r0, [pc, #0x68] @ 0x225c810, (=0xc3cc)
	ldmia   r3!, {r1,r2}
	add     r0, r4, r0
	mov     r3, #0x69
	bl      Function_225da74
	ldr     r0, [pc, #0x60] @ 0x225c814, (=0xc3e0)
	mov     r2, #0x5a
	mov     r1, r4
	lsl     r2, r2, #2
	add     r0, r4, r0
	add     r1, #0x20
	add     r2, r4, r2
	mov     r3, #0x69
	bl      Function_225dbb4
	mov     r2, #0x69
	str     r2, [sp, #0x0]
	mov     r0, #0xc7
	lsl     r0, r0, #8
	mov     r1, r4
	add     r2, #0xff
	ldr     r3, [r5, #0x4]
	add     r0, r4, r0
	add     r1, #0x20
	add     r2, r4, r2
	bl      Function_225dd60
	ldr     r0, [pc, #0x38] @ 0x225c818, (=0xc40c)
	mov     r2, #0x5a
	mov     r1, r4
	lsl     r2, r2, #2
	add     r0, r4, r0
	add     r1, #0x20
	add     r2, r4, r2
	mov     r3, #0x69
	bl      Function_225dec0
	mov     r0, r4
	mov     r1, r5
	bl      Function_225d030
	ldr     r0, [pc, #0x20] @ 0x225c81c, (=0x225cf91)
	mov     r1, r4
	bl      0x2017798
	bl      0x20177a4
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x225c80a

.align 2
.word 0xc724 @ 0x225c80c
.word 0xc3cc @ 0x225c810
.word 0xc3e0 @ 0x225c814
.word 0xc40c @ 0x225c818
.word 0x225cf91 @ 0x225c81c



.thumb
Function_225c820: @ 225c820 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	bl      0x200682c
	mov     r7, r0
	mov     r0, r5
	bl      0x2006840
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x6
	bhi     branch_225c8ee
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225c848

Jumppoints_225c848:
.hword branch_225c856 - Jumppoints_225c848 - 2
.hword branch_225c87c - Jumppoints_225c848 - 2
.hword branch_225c88c - Jumppoints_225c848 - 2
.hword branch_225c8ee - Jumppoints_225c848 - 2
.hword branch_225c8ee - Jumppoints_225c848 - 2
.hword branch_225c8c0 - Jumppoints_225c848 - 2
.hword branch_225c8e0 - Jumppoints_225c848 - 2
.thumb
branch_225c856: @ 225c856 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x69
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	ldr     r0, [r5, #0xc]
	mov     r1, #0x1
	bl      0x222e31c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225c8ee
@ 0x225c87c

.thumb
branch_225c87c: @ 225c87c :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_225c8ee
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225c8ee
@ 0x225c88c

.thumb
branch_225c88c: @ 225c88c :thumb
	mov     r0, r7
	bl      Function_225ce64
	mov     r6, r0
	mov     r0, r7
	bl      Function_225cf30
	ldr     r0, [r5, #0xc]
	bl      0x222e12c
	cmp     r0, #0x1
	bne     branch_225c8ac
	ldr     r0, [r5, #0xc]
	bl      0x222e2a4
	mov     r6, #0x1
.thumb
branch_225c8ac: @ 225c8ac :thumb
	bl      0x2231760
	cmp     r0, #0x1
	bne     branch_225c8b6
	mov     r6, #0x1
.thumb
branch_225c8b6: @ 225c8b6 :thumb
	cmp     r6, #0x1
	bne     branch_225c8ee
	mov     r0, #0x5
	str     r0, [r4, #0x0]
	b       branch_225c8ee
@ 0x225c8c0

.thumb
branch_225c8c0: @ 225c8c0 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x69
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_225c8ee
@ 0x225c8e0

.thumb
branch_225c8e0: @ 225c8e0 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_225c8ee
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x225c8ee

.thumb
branch_225c8ee: @ 225c8ee :thumb
	mov     r0, r7
	bl      Function_225cf50
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225c8fa


.align 2, 0


.thumb
Function_225c8fc: @ 225c8fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	mov     r0, r5
	bl      0x2006840
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	bl      0x20177a4
	ldr     r0, [pc, #0x58] @ 0x225c974, (=0xc40c)
	mov     r1, r4
	add     r0, r4, r0
	add     r1, #0x20
	bl      Function_225dfbc
	mov     r0, #0xc7
	lsl     r0, r0, #8
	add     r0, r4, r0
	bl      Function_225ddc8
	ldr     r0, [pc, #0x48] @ 0x225c978, (=0xc3e0)
	add     r0, r4, r0
	bl      Function_225dc48
	ldr     r0, [pc, #0x44] @ 0x225c97c, (=0xc3cc)
	add     r0, r4, r0
	bl      Function_225daec
	mov     r0, #0x5e
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225d71c
	mov     r0, #0x89
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225d838
	mov     r0, #0x5a
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225ef54
	add     r4, #0x20
	mov     r0, r4
	bl      Function_225d35c
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x69
	bl      0x201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225c974

.word 0xc40c @ 0x225c974
.word 0xc3e0 @ 0x225c978
.word 0xc3cc @ 0x225c97c
.thumb
Function_225c980: @ 225c980 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r5, r0
	str     r1, [sp, #0xc]
	mov     r0, #0x66
	mov     r1, r2
	str     r2, [sp, #0x10]
	bl      0x2006c24
	mov     r2, #0x0
	str     r2, [r5, #0x0]
	str     r2, [sp, #0x0]
	add     r1, sp, #0x2c
	str     r1, [sp, #0x4]
	ldr     r3, [sp, #0x10]
	mov     r1, #0x12
	str     r0, [sp, #0x24]
	bl      0x2007250
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x6
	blx     _u32_div_f
	mov     r7, r0
	ldr     r0, [sp, #0x20]
	mov     r6, #0x1
	add     r4, r0, #0x6
	cmp     r7, #0x1
	ble     branch_225c9ee
.thumb
branch_225c9bc: @ 225c9bc :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x2
	beq     branch_225c9e6
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	mov     r2, #0x2
	str     r0, [sp, #0x8]
	mov     r3, #0x4
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	bl      Function_225ca7c
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
.thumb
branch_225c9e6: @ 225c9e6 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1da4 @ add r4, r4, #0x6
	cmp     r6, r7
	blt     branch_225c9bc
.thumb
branch_225c9ee: @ 225c9ee :thumb
	ldr     r0, [sp, #0x20]
	bl      0x20181c4
	mov     r7, #0x1
	bl      0x20996d0
	str     r0, [sp, #0x18]
	cmp     r0, #0x1
	ble     branch_225ca72
.thumb
branch_225ca00: @ 225ca00 :thumb
	mov     r0, r7
	bl      0x2099764
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	add     r0, sp, #0x28
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x24]
	ldr     r3, [sp, #0x10]
	mov     r2, #0x0
	bl      0x2007250
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x28]
	mov     r6, #0x1
	lsr     r0, r0, #2
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x1c]
	add     r4, r0, #0x4
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1
	ble     branch_225ca64
.thumb
branch_225ca2e: @ 225ca2e :thumb
	mov     r0, r7
	bl      0x2099748
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	mov     r3, #0x2
	ldsh    r2, [r4, r2]
	ldsh    r3, [r4, r3]
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	bl      Function_225ca7c
	ldr     r0, [r5, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	ldr     r0, [sp, #0x14]
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_225ca2e
.thumb
branch_225ca64: @ 225ca64 :thumb
	ldr     r0, [sp, #0x1c]
	bl      0x20181c4
	ldr     r0, [sp, #0x18]
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, r0
	blt     branch_225ca00
.thumb
branch_225ca72: @ 225ca72 :thumb
	ldr     r0, [sp, #0x24]
	bl      0x2006ca8
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x225ca7c

.thumb
Function_225ca7c: @ 225ca7c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	ldr     r5, [pc, #0x6c] @ 0x225caf0, (=0x225f09c)
	mov     r7, r2
	mov     r6, r3
	mov     r4, r0
	mov     r12, r1
	add     r3, sp, #0xc
	mov     r2, #0x4
.thumb
branch_225ca8e: @ 225ca8e :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_225ca8e
	ldr     r0, [r5, #0x0]
	mov     r1, #0x30
	str     r0, [r3, #0x0]
	mov     r0, r12
	mov     r5, r0
	mul     r5, r1
	add     r0, r4, r5
	strh    r7, [r0, #0x4]
	strh    r6, [r0, #0x6]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	add     r0, sp, #0xc
	add     r1, sp, #0x0
	str     r7, [sp, #0x0]
	str     r6, [sp, #0x4]
	bl      Function_225cb6c
	add     r3, r4, r5
	add     r6, sp, #0xc
	add     r3, #0x8
	mov     r2, #0x4
.thumb
branch_225cac0: @ 225cac0 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_225cac0
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	ldr     r0, [sp, #0x50]
	cmp     r0, #0x0
	beq     branch_225cae0
	add     r2, sp, #0x38
	ldrh    r1, [r2, #0x10]
	ldrh    r2, [r2, #0x14]
	bl      Function_225d91c
	add     r1, r4, r5
	strh    r0, [r1, #0x2c]
.thumb
branch_225cae0: @ 225cae0 :thumb
	add     r0, sp, #0x38
	ldrh    r2, [r0, #0x10]
	add     r1, r4, r5
	strh    r2, [r1, #0x2e]
	ldrh    r0, [r0, #0x14]
	strh    r0, [r1, #0x30]
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x225caf0

.word 0x225f09c @ 0x225caf0
.thumb
Function_225caf4: @ 225caf4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x24
	mov     r4, r1
	ldr     r1, [r4, #0x4]
	ldr     r3, [pc, #0x68] @ 0x225cb68, (=0x20f983c)
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	asr     r1, r1, #4
	lsl     r2, r1, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	mov     r5, r0
	bl      0x20bb5c8
	ldr     r0, [r4, #0x0]
	ldr     r3, [pc, #0x4c] @ 0x225cb68, (=0x20f983c)
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x0
	bl      0x20bb5ac
	mov     r0, r5
	add     r1, sp, #0x0
	mov     r2, r5
	blx     0x20bb8ec
	ldr     r0, [r4, #0x8]
	ldr     r3, [pc, #0x28] @ 0x225cb68, (=0x20f983c)
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x0
	bl      0x20bb5e4
	mov     r0, r5
	add     r1, sp, #0x0
	mov     r2, r5
	blx     0x20bb8ec
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x225cb66


.align 2


.word 0x20f983c @ 0x225cb68
.thumb
Function_225cb6c: @ 225cb6c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x24
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	ldr     r3, [pc, #0x68] @ 0x225cbe0, (=0x20f983c)
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	asr     r1, r1, #4
	lsl     r2, r1, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	mov     r5, r0
	bl      0x20bb5c8
	ldr     r0, [r4, #0x4]
	ldr     r3, [pc, #0x4c] @ 0x225cbe0, (=0x20f983c)
	neg     r0, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x0
	bl      0x20bb5ac
	mov     r0, r5
	add     r1, sp, #0x0
	mov     r2, r5
	blx     0x20bb8ec
	ldr     r0, [r4, #0x8]
	ldr     r3, [pc, #0x24] @ 0x225cbe0, (=0x20f983c)
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r2, r0, #1
	add     r1, r2, #0x1
	lsl     r1, r1, #1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x0
	bl      0x20bb5e4
	mov     r0, r5
	add     r1, sp, #0x0
	mov     r2, r5
	blx     0x20bb8ec
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x225cbe0

.word 0x20f983c @ 0x225cbe0
.thumb
Function_225cbe4: @ 225cbe4 :thumb
	push    {r3-r7,lr}
	mov     lr, r0
	ldr     r0, [pc, #0x60] @ 0x225cc4c, (=0x21bf6bc)
	mov     r12, r1
	ldrh    r5, [r0, #0x1c]
	mov     r1, #0x0
	mov     r7, r2
	mov     r6, r3
	ldr     r0, [pc, #0x58] @ 0x225cc50, (=0xffff)
	mov     r2, r1
	mov     r3, r1
	mov     r4, r1
	cmp     r5, r0
	beq     branch_225cc14
	mov     r0, lr
	sub     r3, r5, r0
	bpl     branch_225cc0e
	.hword  0x1e48 @ sub r0, r1, #0x1
	eor     r3, r0
	mov     r1, #0x10
	b       branch_225cc14
@ 0x225cc0e

.thumb
branch_225cc0e: @ 225cc0e :thumb
	cmp     r3, #0x0
	ble     branch_225cc14
	mov     r1, #0x20
.thumb
branch_225cc14: @ 225cc14 :thumb
	str     r1, [r7, #0x0]
	mov     r1, #0x3f
	mov     r0, r3
	and     r0, r1
	str     r0, [r6, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x225cc4c, (=0x21bf6bc)
	ldrh    r3, [r0, #0x1e]
	ldr     r0, [pc, #0x2c] @ 0x225cc50, (=0xffff)
	cmp     r3, r0
	beq     branch_225cc3c
	mov     r0, r12
	sub     r4, r3, r0
	bpl     branch_225cc36
	sub     r1, #0x40
	eor     r4, r1
	mov     r2, #0x80
	b       branch_225cc3c
@ 0x225cc36

.thumb
branch_225cc36: @ 225cc36 :thumb
	cmp     r4, #0x0
	ble     branch_225cc3c
	mov     r2, #0x40
.thumb
branch_225cc3c: @ 225cc3c :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, r4
	str     r2, [r0, #0x0]
	mov     r0, #0x3f
	and     r1, r0
	ldr     r0, [sp, #0x1c]
	str     r1, [r0, #0x0]
	pop     {r3-r7,pc}
@ 0x225cc4c

.word 0x21bf6bc @ 0x225cc4c
.word 0xffff @ 0x225cc50
.thumb
Function_225cc54: @ 225cc54 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x5e
	lsl     r0, r0, #2
	str     r1, [sp, #0x0]
	add     r0, r4, r0
	add     r1, sp, #0xc
	mov     r7, r2
	bl      Function_225d780
	ldr     r0, [pc, #0x184] @ 0x225cdf4, (=0xc3e0)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_225dd10
	mov     r6, r0
	ldr     r0, [pc, #0x178] @ 0x225cdf4, (=0xc3e0)
	mov     r1, #0x1
	add     r0, r4, r0
	bl      Function_225dd10
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x16c] @ 0x225cdf4, (=0xc3e0)
	mov     r1, #0x2
	add     r0, r4, r0
	bl      Function_225dd10
	mov     r5, r0
	ldr     r0, [pc, #0x164] @ 0x225cdf8, (=0xc3cc)
	add     r0, r4, r0
	bl      Function_225dbb0
	ldr     r2, [sp, #0x10]
	mov     r1, r0
	lsl     r2, r2, #16
	ldr     r0, [sp, #0xc]
	asr     r2, r2, #16
	mov     r12, r2
	lsl     r0, r0, #16
	ldr     r2, [sp, #0x0]
	mov     r3, #0x1
	asr     r0, r0, #16
	tst     r2, r3
	bne     branch_225ccb8
	mov     r2, r6
	tst     r2, r3
	beq     branch_225cccc
.thumb
branch_225ccb8: @ 225ccb8 :thumb
	ldr     r0, [r4, #0x4]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_225ccc6
	mov     r0, #0x1
	str     r0, [sp, #0x8]
.thumb
branch_225ccc6: @ 225ccc6 :thumb
	ldr     r0, [sp, #0x8]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x225cccc

.thumb
branch_225cccc: @ 225cccc :thumb
	cmp     r1, #0x0
	bne     branch_225ccf4
	ldr     r1, [sp, #0x4]
	cmp     r1, #0x0
	bne     branch_225ccda
	cmp     r5, #0x0
	beq     branch_225ccee
.thumb
branch_225ccda: @ 225ccda :thumb
	ldr     r2, [sp, #0x4]
	mov     r1, #0x55
	mul     r1, r2
	lsl     r1, r1, #16
	lsr     r3, r1, #16
	mov     r1, #0x55
	mul     r1, r5
	lsl     r1, r1, #16
	lsr     r5, r1, #16
	b       branch_225cd16
@ 0x225ccee

.thumb
branch_225ccee: @ 225ccee :thumb
	lsl     r3, r3, #9
	mov     r5, r3
	b       branch_225cd16
@ 0x225ccf4

.thumb
branch_225ccf4: @ 225ccf4 :thumb
	ldr     r1, [sp, #0x4]
	cmp     r1, #0x0
	bne     branch_225ccfe
	cmp     r5, #0x0
	beq     branch_225cd12
.thumb
branch_225ccfe: @ 225ccfe :thumb
	ldr     r2, [sp, #0x4]
	mov     r1, #0xa
	mul     r1, r2
	lsl     r1, r1, #16
	lsr     r3, r1, #16
	mov     r1, #0xa
	mul     r1, r5
	lsl     r1, r1, #16
	lsr     r5, r1, #16
	b       branch_225cd16
@ 0x225cd12

.thumb
branch_225cd12: @ 225cd12 :thumb
	mov     r3, #0x20
	mov     r5, r3
.thumb
branch_225cd16: @ 225cd16 :thumb
	mov     r2, #0x20
	mov     r1, r7
	tst     r1, r2
	bne     branch_225cd24
	mov     r1, r6
	tst     r1, r2
	beq     branch_225cd44
.thumb
branch_225cd24: @ 225cd24 :thumb
	ldr     r1, [r4, #0x4]
	lsl     r1, r1, #31
	lsr     r1, r1, #31
	cmp     r1, #0x1
	bne     branch_225cd36
	ldr     r1, [sp, #0x10]
	add     r1, r1, r3
	str     r1, [sp, #0x10]
	b       branch_225cd44
@ 0x225cd36

.thumb
branch_225cd36: @ 225cd36 :thumb
	ldr     r2, [pc, #0xc4] @ 0x225cdfc, (=0xffffd820)
	mov     r1, r12
	cmp     r1, r2
	bge     branch_225cd44
	ldr     r1, [sp, #0x10]
	add     r1, r1, r3
	str     r1, [sp, #0x10]
.thumb
branch_225cd44: @ 225cd44 :thumb
	mov     r2, #0x10
	mov     r1, r7
	tst     r1, r2
	bne     branch_225cd52
	mov     r1, r6
	tst     r1, r2
	beq     branch_225cd72
.thumb
branch_225cd52: @ 225cd52 :thumb
	ldr     r1, [r4, #0x4]
	lsl     r1, r1, #31
	lsr     r1, r1, #31
	cmp     r1, #0x1
	bne     branch_225cd64
	ldr     r1, [sp, #0x10]
	sub     r1, r1, r3
	str     r1, [sp, #0x10]
	b       branch_225cd72
@ 0x225cd64

.thumb
branch_225cd64: @ 225cd64 :thumb
	ldr     r2, [pc, #0x98] @ 0x225ce00, (=0xffffcc80)
	mov     r1, r12
	cmp     r1, r2
	ble     branch_225cd72
	ldr     r1, [sp, #0x10]
	sub     r1, r1, r3
	str     r1, [sp, #0x10]
.thumb
branch_225cd72: @ 225cd72 :thumb
	mov     r1, #0x40
	mov     r2, r7
	tst     r2, r1
	bne     branch_225cd7e
	tst     r1, r6
	beq     branch_225cdaa
.thumb
branch_225cd7e: @ 225cd7e :thumb
	ldr     r1, [r4, #0x4]
	lsl     r1, r1, #31
	lsr     r1, r1, #31
	cmp     r1, #0x1
	bne     branch_225cd9e
	mov     r1, #0x3e
	add     r2, r0, r5
	lsl     r1, r1, #8
	cmp     r2, r1
	bge     branch_225cd9a
	ldr     r1, [sp, #0xc]
	add     r1, r1, r5
	str     r1, [sp, #0xc]
	b       branch_225cdaa
@ 0x225cd9a

.thumb
branch_225cd9a: @ 225cd9a :thumb
	str     r1, [sp, #0xc]
	b       branch_225cdaa
@ 0x225cd9e

.thumb
branch_225cd9e: @ 225cd9e :thumb
	ldr     r1, [pc, #0x64] @ 0x225ce04, (=0x2020)
	cmp     r0, r1
	bge     branch_225cdaa
	ldr     r1, [sp, #0xc]
	add     r1, r1, r5
	str     r1, [sp, #0xc]
.thumb
branch_225cdaa: @ 225cdaa :thumb
	mov     r1, #0x80
	mov     r2, r7
	tst     r2, r1
	bne     branch_225cdb6
	tst     r1, r6
	beq     branch_225cde2
.thumb
branch_225cdb6: @ 225cdb6 :thumb
	ldr     r1, [r4, #0x4]
	lsl     r1, r1, #31
	lsr     r1, r1, #31
	cmp     r1, #0x1
	bne     branch_225cdd4
	sub     r1, r0, r5
	ldr     r0, [pc, #0x44] @ 0x225ce08, (=0xffffc200)
	cmp     r1, r0
	ble     branch_225cdd0
	ldr     r0, [sp, #0xc]
	sub     r0, r0, r5
	str     r0, [sp, #0xc]
	b       branch_225cde2
@ 0x225cdd0

.thumb
branch_225cdd0: @ 225cdd0 :thumb
	str     r0, [sp, #0xc]
	b       branch_225cde2
@ 0x225cdd4

.thumb
branch_225cdd4: @ 225cdd4 :thumb
	mov     r1, #0x13
	lsl     r1, r1, #8
	cmp     r0, r1
	ble     branch_225cde2
	ldr     r0, [sp, #0xc]
	sub     r0, r0, r5
	str     r0, [sp, #0xc]
.thumb
branch_225cde2: @ 225cde2 :thumb
	mov     r0, #0x5e
	lsl     r0, r0, #2
	add     r0, r4, r0
	add     r1, sp, #0xc
	bl      Function_225d790
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x225cdf4

.word 0xc3e0 @ 0x225cdf4
.word 0xc3cc @ 0x225cdf8
.word 0xffffd820 @ 0x225cdfc
.word 0xffffcc80 @ 0x225ce00
.word 0x2020 @ 0x225ce04
.word 0xffffc200 @ 0x225ce08
.thumb
Function_225ce0c: @ 225ce0c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	blt     branch_225ce20
	ldr     r1, [pc, #0x48] @ 0x225ce60, (=0xffff)
	blx     _s32_div_f
	str     r1, [r4, #0x0]
	b       branch_225ce36
@ 0x225ce20

.thumb
branch_225ce20: @ 225ce20 :thumb
	bge     branch_225ce24
	neg     r0, r0
.thumb
branch_225ce24: @ 225ce24 :thumb
	ldr     r1, [pc, #0x38] @ 0x225ce60, (=0xffff)
	blx     _s32_div_f
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x30] @ 0x225ce60, (=0xffff)
	ldr     r2, [r4, #0x0]
	mul     r0, r1
	add     r0, r2, r0
	str     r0, [r4, #0x0]
.thumb
branch_225ce36: @ 225ce36 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	blt     branch_225ce46
	ldr     r1, [pc, #0x20] @ 0x225ce60, (=0xffff)
	blx     _s32_div_f
	str     r1, [r4, #0x4]
	pop     {r4,pc}
@ 0x225ce46

.thumb
branch_225ce46: @ 225ce46 :thumb
	bge     branch_225ce4a
	neg     r0, r0
.thumb
branch_225ce4a: @ 225ce4a :thumb
	ldr     r1, [pc, #0x14] @ 0x225ce60, (=0xffff)
	blx     _s32_div_f
	add     r1, r0, #0x1
	ldr     r0, [pc, #0xc] @ 0x225ce60, (=0xffff)
	ldr     r2, [r4, #0x4]
	mul     r0, r1
	add     r0, r2, r0
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x225ce5e


.align 2


.word 0xffff @ 0x225ce60
.thumb
Function_225ce64: @ 225ce64 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r1, [r4, #0x0]
	cmp     r1, #0x3
	bhi     branch_225cf1c
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x225ce7a

Jumppoints_225ce7a:
.hword branch_225ce82 - Jumppoints_225ce7a - 2
.hword branch_225cea8 - Jumppoints_225ce7a - 2
.hword branch_225cec0 - Jumppoints_225ce7a - 2
.hword branch_225cee2 - Jumppoints_225ce7a - 2
.thumb
branch_225ce82: @ 225ce82 :thumb
	bl      Function_225cf9c
	cmp     r0, #0x0
	beq     branch_225cf20
	cmp     r0, #0x1
	beq     branch_225ce94
	cmp     r0, #0x2
	beq     branch_225cea2
	b       branch_225cf20
@ 0x225ce94

.thumb
branch_225ce94: @ 225ce94 :thumb
	ldr     r0, [pc, #0x8c] @ 0x225cf24, (=0xc3cc)
	add     r0, r4, r0
	bl      Function_225db00
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_225cf20
@ 0x225cea2

.thumb
branch_225cea2: @ 225cea2 :thumb
	mov     r0, #0x2
	strh    r0, [r4, #0x0]
	b       branch_225cf20
@ 0x225cea8

.thumb
branch_225cea8: @ 225cea8 :thumb
	ldr     r0, [pc, #0x78] @ 0x225cf24, (=0xc3cc)
	mov     r1, #0x89
	lsl     r1, r1, #2
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_225db2c
	cmp     r0, #0x1
	bne     branch_225cf20
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	b       branch_225cf20
@ 0x225cec0

.thumb
branch_225cec0: @ 225cec0 :thumb
	mov     r0, #0xc7
	lsl     r0, r0, #8
	add     r0, r4, r0
	bl      Function_225ddfc
	ldr     r0, [pc, #0x5c] @ 0x225cf28, (=0xc40c)
	add     r0, r4, r0
	bl      Function_225e084
	ldr     r0, [pc, #0x58] @ 0x225cf2c, (=0xc3e0)
	add     r0, r4, r0
	bl      Function_225dd2c
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_225cf20
@ 0x225cee2

.thumb
branch_225cee2: @ 225cee2 :thumb
	mov     r0, #0xc7
	lsl     r0, r0, #8
	add     r0, r4, r0
	bl      Function_225de40
	cmp     r0, #0x0
	beq     branch_225cf20
	cmp     r0, #0x1
	beq     branch_225cf18
	cmp     r0, #0x2
	bne     branch_225cf18
	ldr     r0, [pc, #0x2c] @ 0x225cf28, (=0xc40c)
	add     r0, r4, r0
	bl      Function_225e0a0
	mov     r0, #0xc7
	lsl     r0, r0, #8
	add     r0, r4, r0
	bl      Function_225dea0
	ldr     r0, [pc, #0x20] @ 0x225cf2c, (=0xc3e0)
	add     r0, r4, r0
	bl      Function_225dd44
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	b       branch_225cf20
@ 0x225cf18

.thumb
branch_225cf18: @ 225cf18 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225cf1c

.thumb
branch_225cf1c: @ 225cf1c :thumb
	bl      ErrorHandling
.thumb
branch_225cf20: @ 225cf20 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225cf24

.word 0xc3cc @ 0x225cf24
.word 0xc40c @ 0x225cf28
.word 0xc3e0 @ 0x225cf2c
.thumb
Function_225cf30: @ 225cf30 :thumb
	push    {r3,lr}
	mov     r2, r0
	ldrh    r0, [r2, #0x2]
	cmp     r0, #0x0
	bne     branch_225cf4a
	ldr     r0, [pc, #0x10] @ 0x225cf4c, (=0xc40c)
	mov     r1, #0x5a
	lsl     r1, r1, #2
	add     r0, r2, r0
	add     r1, r2, r1
	add     r2, #0x20
	bl      Function_225e00c
.thumb
branch_225cf4a: @ 225cf4a :thumb
	pop     {r3,pc}
@ 0x225cf4c

.word 0xc40c @ 0x225cf4c
.thumb
Function_225cf50: @ 225cf50 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x20241b4
	ldr     r0, [pc, #0x30] @ 0x225cf8c, (=0xc3cc)
	add     r0, r4, r0
	bl      Function_225daf8
	mov     r0, #0x5e
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225d728
	mov     r1, #0x89
	lsl     r1, r1, #2
	add     r0, r4, r1
	sub     r1, #0xac
	add     r1, r4, r1
	bl      Function_225d854
	add     r4, #0x20
	mov     r0, r4
	bl      Function_225d384
	mov     r0, #0x0
	mov     r1, #0x1
	bl      0x20241bc
	pop     {r4,pc}
@ 0x225cf8a


.align 2


.word 0xc3cc @ 0x225cf8c
.thumb
Function_225cf90: @ 225cf90 :thumb
	ldr     r3, [pc, #0x4] @ 0x225cf98, (=0x225d391)
	add     r0, #0x20
	bx      r3
@ 0x225cf96


.align 2


.word 0x225d391 @ 0x225cf98
.thumb
Function_225cf9c: @ 225cf9c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x78] @ 0x225d01c, (=0xc3e0)
	add     r0, r5, r0
	bl      Function_225dc54
	ldr     r0, [pc, #0x70] @ 0x225d01c, (=0xc3e0)
	ldr     r1, [r5, r0]
	mov     r0, #0x2
	tst     r1, r0
	beq     branch_225cfc0
	ldr     r0, [pc, #0x68] @ 0x225d020, (=0x5dd)
	bl      0x2005748
	add     sp, #0xc
	mov     r0, #0x2
	pop     {r4,r5,pc}
@ 0x225cfc0

.thumb
branch_225cfc0: @ 225cfc0 :thumb
	ldr     r2, [pc, #0x60] @ 0x225d024, (=0x21bf67c)
	lsl     r0, r0, #9
	ldr     r1, [r2, #0x48]
	tst     r0, r1
	beq     branch_225d00c
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_225d088
	cmp     r0, #0x1
	bne     branch_225d016
	ldr     r0, [pc, #0x50] @ 0x225d028, (=0xc40c)
	add     r1, sp, #0x0
	add     r0, r5, r0
	bl      Function_225e0f8
	cmp     r0, #0x0
	bne     branch_225d016
	ldr     r0, [pc, #0x40] @ 0x225d028, (=0xc40c)
	add     r1, sp, #0x0
	add     r0, r5, r0
	bl      Function_225e0c0
	cmp     r0, #0x0
	beq     branch_225d016
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	lsl     r1, r1, #24
	lsl     r2, r2, #24
	mov     r0, r5
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_225d268
	ldr     r0, [pc, #0x24] @ 0x225d02c, (=0x5bf)
	bl      0x2005748
	b       branch_225d016
@ 0x225d00c

.thumb
branch_225d00c: @ 225d00c :thumb
	ldr     r2, [r2, #0x44]
	mov     r0, r5
	bl      Function_225cc54
	mov     r4, r0
.thumb
branch_225d016: @ 225d016 :thumb
	mov     r0, r4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x225d01c

.word 0xc3e0 @ 0x225d01c
.word 0x5dd @ 0x225d020
.word 0x21bf67c @ 0x225d024
.word 0xc40c @ 0x225d028
.word 0x5bf @ 0x225d02c
.thumb
Function_225d030: @ 225d030 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x14]
	ldr     r2, [r5, #0x18]
	lsl     r1, r1, #24
	lsl     r2, r2, #24
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_225d268
	cmp     r0, #0x0
	bne     branch_225d084
	ldr     r0, [r4, #0x0]
	bl      Function_225efec
	mov     r6, r0
	cmp     r6, #0x32
	beq     branch_225d084
	lsl     r1, r6, #24
	ldr     r0, [r4, #0x0]
	lsr     r1, r1, #24
	bl      0x22315d8
	mov     r7, r0
	lsl     r1, r6, #24
	ldr     r0, [r4, #0x0]
	lsr     r1, r1, #24
	bl      0x22315fc
	mov     r2, r0
	lsl     r1, r7, #24
	lsl     r2, r2, #24
	mov     r0, r5
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_225d268
	cmp     r0, #0x1
	beq     branch_225d084
	bl      ErrorHandling
.thumb
branch_225d084: @ 225d084 :thumb
	pop     {r3-r7,pc}
@ 0x225d086


.align 2, 0


.thumb
Function_225d088: @ 225d088 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_225d0d8
	mov     r6, r0
	mov     r0, #0x89
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_225da70
	cmp     r6, r0
	bcc     branch_225d0a6
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225d0a6

.thumb
branch_225d0a6: @ 225d0a6 :thumb
	mov     r2, r5
	add     r2, #0x1c
	ldr     r2, [r2, #0x0]
	mov     r0, r5
	mov     r1, r6
	bl      Function_225d1e0
	str     r0, [r4, #0x0]
	mov     r0, #0x89
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r6
	bl      Function_225da38
	str     r0, [r4, #0x4]
	mov     r0, #0x89
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r6
	bl      Function_225da54
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225d0d6


.align 2, 0


.thumb
Function_225d0d8: @ 225d0d8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r5, r0
	mov     r0, #0x89
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_225da70
	str     r0, [sp, #0x14]
	mov     r0, #0x5e
	lsl     r0, r0, #2
	add     r0, r5, r0
	add     r1, sp, #0x24
	bl      Function_225d780
	ldr     r1, [sp, #0x24]
	mov     r6, #0x1
	mov     r0, r1
	sub     r0, #0x80
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     r1, #0x80
	str     r0, [sp, #0xc]
	lsl     r0, r1, #16
	asr     r0, r0, #16
	ldr     r1, [sp, #0x28]
	str     r0, [sp, #0x8]
	mov     r0, r1
	sub     r0, #0x80
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     r1, #0x80
	str     r0, [sp, #0x4]
	lsl     r0, r1, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	lsl     r6, r6, #8
	mov     r4, #0x0
	str     r0, [sp, #0x10]
	cmp     r0, #0x0
	bls     branch_225d18c
	add     r7, sp, #0x18
.thumb
branch_225d12e: @ 225d12e :thumb
	mov     r0, #0x89
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r7
	mov     r2, r4
	bl      Function_225d9f0
	mov     r0, #0x89
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r4
	bl      Function_225da1c
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0xc]
	cmp     r1, r2
	ble     branch_225d184
	ldr     r2, [sp, #0x8]
	cmp     r1, r2
	bge     branch_225d184
	ldr     r1, [sp, #0x1c]
	ldr     r2, [sp, #0x4]
	cmp     r1, r2
	ble     branch_225d184
	ldr     r2, [sp, #0x0]
	cmp     r1, r2
	bge     branch_225d184
	cmp     r0, #0x3
	beq     branch_225d184
	add     r0, sp, #0x24
	bl      Function_225ce0c
	mov     r0, r7
	bl      Function_225ce0c
	add     r0, sp, #0x24
	mov     r1, r7
	bl      Function_225d194
	cmp     r0, r6
	bcs     branch_225d184
	mov     r6, r0
	str     r4, [sp, #0x10]
.thumb
branch_225d184: @ 225d184 :thumb
	ldr     r0, [sp, #0x14]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	bcc     branch_225d12e
.thumb
branch_225d18c: @ 225d18c :thumb
	ldr     r0, [sp, #0x10]
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x225d192


.align 2, 0


.thumb
Function_225d194: @ 225d194 :thumb
	push    {r3-r5,lr}
	ldr     r3, [r0, #0x0]
	ldr     r2, [r1, #0x0]
	sub     r4, r3, r2
	bpl     branch_225d1a0
	neg     r4, r4
.thumb
branch_225d1a0: @ 225d1a0 :thumb
	ldr     r2, [r0, #0x4]
	ldr     r0, [r1, #0x4]
	sub     r5, r2, r0
	bpl     branch_225d1aa
	neg     r5, r5
.thumb
branch_225d1aa: @ 225d1aa :thumb
	mov     r0, #0xb4
	bl      0x201d278
	cmp     r4, r0
	ble     branch_225d1b8
	ldr     r0, [pc, #0x24] @ 0x225d1dc, (=0xffff)
	sub     r4, r0, r4
.thumb
branch_225d1b8: @ 225d1b8 :thumb
	mov     r0, #0xb4
	bl      0x201d278
	cmp     r5, r0
	ble     branch_225d1c6
	ldr     r0, [pc, #0x18] @ 0x225d1dc, (=0xffff)
	sub     r5, r0, r5
.thumb
branch_225d1c6: @ 225d1c6 :thumb
	mov     r1, r4
	mov     r0, r5
	mul     r1, r4
	mul     r0, r5
	add     r0, r1, r0
	lsl     r0, r0, #12
	blx     0x20bcff0
	asr     r0, r0, #12
	pop     {r3-r5,pc}
@ 0x225d1da


.align 2


.word 0xffff @ 0x225d1dc
.thumb
Function_225d1e0: @ 225d1e0 :thumb
	push    {r0-r3}
.thumb
Function_225d1e2: @ 225d1e2 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	add     r0, sp, #0x30
	ldrb    r0, [r0, #0x8]
	mov     r7, r1
	mov     r1, #0xdb
	.hword  0x1f04 @ sub r4, r0, #0x4
	mov     r0, #0x89
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, #0x3
	bl      Function_225d9c4
	mov     r6, r0
	mov     r0, #0x89
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_225da70
	cmp     r6, r0
	bcc     branch_225d212
	bl      ErrorHandling
.thumb
branch_225d212: @ 225d212 :thumb
	mov     r0, #0x89
	lsl     r0, r0, #2
	add     r0, r5, r0
	add     r1, sp, #0xc
	mov     r2, r6
	bl      Function_225d9f0
	mov     r0, #0x89
	lsl     r0, r0, #2
	add     r0, r5, r0
	add     r1, sp, #0x0
	mov     r2, r7
	bl      Function_225d9f0
	ldr     r1, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	sub     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r0, #0x18
	mul     r0, r1
	ldr     r1, [pc, #0x24] @ 0x225d264, (=0xffff)
	blx     _s32_div_f
	add     r4, r4, r0
	bpl     branch_225d248
	add     r4, #0x18
.thumb
branch_225d248: @ 225d248 :thumb
	cmp     r4, #0x18
	blt     branch_225d256
	mov     r0, r4
	mov     r1, #0x18
	blx     _s32_div_f
	mov     r4, r1
.thumb
branch_225d256: @ 225d256 :thumb
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r7}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x225d262


.align 2


.word 0xffff @ 0x225d264
.thumb
Function_225d268: @ 225d268 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0x89
	lsl     r0, r0, #2
	add     r0, r4, r0
	add     r3, sp, #0xc
	bl      Function_225d984
	cmp     r0, #0x3
	beq     branch_225d2a0
	mov     r0, #0x5e
	lsl     r0, r0, #2
	add     r0, r4, r0
	add     r1, sp, #0x0
	bl      Function_225d780
	ldr     r0, [sp, #0x8]
	add     r1, sp, #0xc
	str     r0, [sp, #0x14]
	mov     r0, #0x5e
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225d790
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225d2a0

.thumb
branch_225d2a0: @ 225d2a0 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r4,pc}
@ 0x225d2a6


.align 2, 0


.thumb
Function_225d2a8: @ 225d2a8 :thumb
	push    {r4-r7}
	ldr     r4, [r0, #0x4]
	mov     r2, #0x2
	bic     r4, r2
	mov     r3, #0x1
	bic     r4, r3
	ldr     r3, [pc, #0x5c] @ 0x225d314, (=0x20e4c44)
	str     r4, [r0, #0x4]
	ldrb    r3, [r3, #0x0]
	cmp     r3, #0x1
	ldr     r3, [r0, #0x4]
	bne     branch_225d2c8
	mov     r2, #0x2
	orr     r2, r3
	str     r2, [r0, #0x4]
	b       branch_225d2cc
@ 0x225d2c8

.thumb
branch_225d2c8: @ 225d2c8 :thumb
	bic     r3, r2
	str     r3, [r0, #0x4]
.thumb
branch_225d2cc: @ 225d2cc :thumb
	ldr     r2, [r0, #0x4]
	lsl     r3, r2, #30
	lsr     r3, r3, #31
	cmp     r3, #0x1
	bne     branch_225d306
	mov     r3, #0x0
	mov     r4, r3
	mov     r5, #0x1
	mov     r6, #0x1
.thumb
branch_225d2de: @ 225d2de :thumb
	ldr     r2, [r1, #0x0]
	add     r7, r2, r4
	ldrb    r7, [r7, #0x3]
	lsl     r7, r7, #24
	lsr     r7, r7, #28
	cmp     r7, #0x1
	bne     branch_225d2fa
	ldrh    r2, [r2, r4]
	cmp     r2, #0x67
	beq     branch_225d2fa
	ldr     r2, [r0, #0x4]
	bic     r2, r5
	orr     r2, r6
	str     r2, [r0, #0x4]
.thumb
branch_225d2fa: @ 225d2fa :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r3, #0x32
	blt     branch_225d2de
	pop     {r4-r7}
	bx      lr
@ 0x225d306

.thumb
branch_225d306: @ 225d306 :thumb
	mov     r1, #0x1
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	str     r1, [r0, #0x4]
	pop     {r4-r7}
	bx      lr
@ 0x225d314

.word 0x20e4c44 @ 0x225d314
.thumb
Function_225d318: @ 225d318 :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0xa3
	mov     r1, r4
	bl      0x2006c24
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x40
	mov     r1, r4
	bl      0x201dbec
	ldr     r0, [pc, #0x20] @ 0x225d358, (=0x225f0c0)
	bl      0x201fe94
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_225d3a4
	mov     r0, r5
	mov     r1, r4
	bl      Function_225d53c
	mov     r0, r5
	mov     r1, r4
	bl      Function_225d604
	pop     {r4-r6,pc}
@ 0x225d358

.word 0x225f0c0 @ 0x225d358
.thumb
Function_225d35c: @ 225d35c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2006ca8
	bl      0x201dc3c
	mov     r0, r4
	bl      Function_225d504
	mov     r0, r4
	bl      Function_225d5d8
	mov     r0, r4
	bl      Function_225d63c
	pop     {r4,pc}
@ 0x225d382


.align 2, 0


.thumb
Function_225d384: @ 225d384 :thumb
	ldr     r3, [pc, #0x4] @ 0x225d38c, (=0x20219f9)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x225d38a


.align 2


.word 0x20219f9 @ 0x225d38c
.thumb
Function_225d390: @ 225d390 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	bl      0x201c2b8
	bl      0x200a858
	bl      0x201dcac
	pop     {r3,pc}
@ 0x225d3a2


.align 2, 0


.thumb
Function_225d3a4: @ 225d3a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [pc, #0x144] @ 0x225d4f0, (=0x225f040)
	mov     r7, r2
	str     r1, [sp, #0x10]
	bl      0x2018368
	mov     r0, r7
	bl      0x2018340
	str     r0, [r5, #0x0]
	ldr     r0, [pc, #0x134] @ 0x225d4f4, (=0x21bf6dc)
	mov     r1, #0x1
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	mov     r0, #0x0
	ldr     r6, [pc, #0x12c] @ 0x225d4f8, (=0x225f154)
	ldr     r4, [pc, #0x130] @ 0x225d4fc, (=0x225f060)
	str     r0, [sp, #0x14]
.thumb
branch_225d3ce: @ 225d3ce :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r2, r6
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x20
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	mov     r2, #0x0
	mov     r3, r7
	bl      0x2019690
	ldr     r1, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      0x2019ebc
	ldr     r0, [sp, #0x14]
	add     r6, #0x1c
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	str     r0, [sp, #0x14]
	cmp     r0, #0x5
	blt     branch_225d3ce
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x51
	str     r7, [sp, #0x4]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x5
	mov     r2, #0x4
	bl      0x2007130
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x51
	str     r7, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x0]
	mov     r1, #0xb
	mov     r3, #0x4
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x51
	str     r7, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x0]
	mov     r1, #0xc
	mov     r3, #0x4
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x51
	str     r7, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x0]
	mov     r1, #0x4
	mov     r3, #0x6
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x51
	str     r7, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x0]
	mov     r1, #0x12
	mov     r3, #0x7
	bl      0x200710c
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r7
	bl      0x2002e98
	mov     r1, #0x16
	mov     r0, #0x4
	lsl     r1, r1, #4
	mov     r2, r7
	bl      0x2002e98
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	mov     r2, #0x1f
	bl      0x200daa4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	mov     r2, #0x1f
	bl      0x200daa4
	ldr     r0, [sp, #0x10]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	str     r4, [sp, #0x0]
	str     r7, [sp, #0x4]
	mov     r2, #0xa
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	mov     r3, r2
	bl      0x200dd0c
	str     r4, [sp, #0x0]
	str     r7, [sp, #0x4]
	mov     r1, #0x1
	ldr     r0, [r5, #0x0]
	mov     r2, r1
	mov     r3, #0x2
	bl      0x200dd0c
	ldr     r1, [pc, #0x18] @ 0x225d500, (=0x72ca)
	mov     r0, #0x0
	bl      0x201975c
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x225d4f0

.word 0x225f040 @ 0x225d4f0
.word 0x21bf6dc @ 0x225d4f4
.word 0x225f154 @ 0x225d4f8
.word 0x225f060 @ 0x225d4fc
.word 0x72ca @ 0x225d500
.thumb
Function_225d504: @ 225d504 :thumb
	push    {r4-r6,lr}
	ldr     r5, [pc, #0x2c] @ 0x225d534, (=0x225f060)
	mov     r6, r0
	mov     r4, #0x0
.thumb
branch_225d50c: @ 225d50c :thumb
	ldr     r1, [r5, #0x0]
	ldr     r0, [r6, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      0x2019044
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x5
	blt     branch_225d50c
	ldr     r0, [r6, #0x0]
	bl      0x20181c4
	ldr     r0, [pc, #0x10] @ 0x225d538, (=0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	pop     {r4-r6,pc}
@ 0x225d532


.align 2


.word 0x225f060 @ 0x225d534
.word 0x21bf6dc @ 0x225d538
.thumb
Function_225d53c: @ 225d53c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r6, r1
	blx     0x20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7e
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x1f
	str     r3, [sp, #0xc]
	mov     r2, r0
	str     r6, [sp, #0x10]
	bl      0x200a784
	mov     r1, #0x10
	ldr     r0, [pc, #0x70] @ 0x225d5d4, (=0x225f050)
	mov     r2, r1
	bl      0x201e88c
	mov     r0, #0x20
	mov     r1, r6
	bl      0x201f834
	bl      0x201e994
	bl      0x201f8e4
	mov     r0, #0x1
	mov     r1, #0x10
	bl      0x200966c
	mov     r0, #0x1
	bl      0x2009704
	mov     r1, r5
	mov     r0, #0x20
	add     r1, #0x8
	mov     r2, r6
	bl      0x20095c4
	str     r0, [r5, #0x4]
	mov     r0, r5
	mov     r2, #0x1
	add     r0, #0x8
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      0x200964c
	mov     r7, #0x13
	mov     r4, #0x0
	lsl     r7, r7, #4
.thumb
branch_225d5a8: @ 225d5a8 :thumb
	mov     r0, #0x20
	mov     r1, r4
	mov     r2, r6
	bl      0x2009714
	str     r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_225d5a8
	bl      0x2039734
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225d5d4

.word 0x225f050 @ 0x225d5d4
.thumb
Function_225d5d8: @ 225d5d8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	bl      0x2021964
	mov     r6, #0x13
	mov     r4, #0x0
	lsl     r6, r6, #4
.thumb
branch_225d5e8: @ 225d5e8 :thumb
	ldr     r0, [r5, r6]
	bl      0x2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_225d5e8
	bl      0x201e958
	bl      0x201f8b4
	bl      0x200a878
	pop     {r4-r6,pc}
@ 0x225d604

.thumb
Function_225d604: @ 225d604 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x24] @ 0x225d634, (=0x225d64d)
	mov     r2, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r1
	mov     r1, #0x0
	mov     r3, r1
	bl      0x2024220
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	mov     r0, #0x0
	ldr     r3, [pc, #0x10] @ 0x225d638, (=0xfffff001)
	mov     r1, r0
	mov     r2, r0
	blx     0x20af51c
	add     sp, #0x8
	pop     {r4,pc}
@ 0x225d634

.word 0x225d64d @ 0x225d634
.word 0xfffff001 @ 0x225d638
.thumb
Function_225d63c: @ 225d63c :thumb
	mov     r1, #0x5
	lsl     r1, r1, #6
	ldr     r3, [pc, #0x4] @ 0x225d648, (=0x20242c5)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x225d646


.align 2


.word 0x20242c5 @ 0x225d648
.thumb
Function_225d64c: @ 225d64c :thumb
	push    {r3,lr}
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff0c
	ldr     r0, [pc, #0x64] @ 0x225d6bc, (=0x4000008)
	mov     r1, #0x3
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strh    r1, [r0, #0x0]
	add     r0, #0x58
	ldrh    r2, [r0, #0x0]
	ldr     r1, [pc, #0x54] @ 0x225d6c0, (=0xffffcffd)
	and     r2, r1
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	add     r2, r1, #0x2
	and     r3, r2
	mov     r2, #0x10
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r2, [pc, #0x44] @ 0x225d6c4, (=0xcffb)
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
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	blx     0x20bfc74
	mov     r1, #0x0
	ldr     r0, [pc, #0x1c] @ 0x225d6c8, (=0x6b5a)
	ldr     r2, [pc, #0x20] @ 0x225d6cc, (=0x7fff)
	mov     r3, #0x3f
	str     r1, [sp, #0x0]
	blx     0x20bfd58
	ldr     r1, [pc, #0x18] @ 0x225d6d0, (=0xbfff0000)
	ldr     r0, [pc, #0x1c] @ 0x225d6d4, (=0x4000580)
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x225d6bc

.word 0x4000008 @ 0x225d6bc
.word 0xffffcffd @ 0x225d6c0
.word 0xcffb @ 0x225d6c4
.word 0x6b5a @ 0x225d6c8
.word 0x7fff @ 0x225d6cc
.word 0xbfff0000 @ 0x225d6d0
.word 0x4000580 @ 0x225d6d4
.thumb
Function_225d6d8: @ 225d6d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r3, r2
	mov     r2, #0x0
	str     r2, [r4, #0x0]
	str     r2, [r4, #0x4]
	mov     r0, #0x1
	str     r2, [r4, #0x8]
	lsl     r0, r0, #12
	str     r0, [r4, #0xc]
	str     r0, [r4, #0x10]
	str     r0, [r4, #0x14]
	mov     r0, #0x69
	lsl     r0, r0, #6
	str     r0, [r4, #0x18]
	mov     r0, #0x1f
	lsl     r0, r0, #10
	str     r0, [r4, #0x1c]
	str     r2, [r4, #0x20]
	mov     r2, #0x51
	lsl     r2, r2, #2
	mov     r0, r4
	ldr     r1, [r1, r2]
	add     r0, #0x9c
	mov     r2, #0x3
	bl      0x20170d8
	mov     r0, r4
	add     r4, #0x9c
	add     r0, #0x24
	mov     r1, r4
	bl      0x2017258
	pop     {r4,pc}
@ 0x225d71c

.thumb
Function_225d71c: @ 225d71c :thumb
	ldr     r3, [pc, #0x4] @ 0x225d724, (=0x2017111)
	add     r0, #0x9c
	bx      r3
@ 0x225d722


.align 2


.word 0x2017111 @ 0x225d724
.thumb
Function_225d728: @ 225d728 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x24
	mov     r4, r0
	add     r1, sp, #0x0
	bl      Function_225d770
	mov     r0, r4
	ldr     r1, [r4, #0x0]
	ldr     r2, [r4, #0x4]
	ldr     r3, [r4, #0x8]
	add     r0, #0x24
	bl      0x2017350
	mov     r0, r4
	ldr     r1, [r4, #0xc]
	ldr     r2, [r4, #0x10]
	ldr     r3, [r4, #0x14]
	add     r0, #0x24
	bl      0x201736c
	add     r4, #0x24
	mov     r0, r4
	add     r1, sp, #0x0
	bl      0x2017330
	add     sp, #0x24
	pop     {r3,r4,pc}
@ 0x225d75e


.align 2, 0


.thumb
Function_225d760: @ 225d760 :thumb
	mov     r3, r0
	mov     r2, r1
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	bx      lr
@ 0x225d76e


.align 2, 0


.thumb
Function_225d770: @ 225d770 :thumb
	mov     r2, r0
	ldr     r3, [pc, #0x8] @ 0x225d77c, (=0x225caf5)
	add     r2, #0x18
	mov     r0, r1
	mov     r1, r2
	bx      r3
@ 0x225d77c

.word 0x225caf5 @ 0x225d77c
.thumb
Function_225d780: @ 225d780 :thumb
	mov     r2, r0
	add     r2, #0x18
	mov     r3, r1
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r3, #0x0]
	bx      lr
@ 0x225d790

.thumb
Function_225d790: @ 225d790 :thumb
	mov     r3, r1
	mov     r2, r0
	ldmia   r3!, {r0,r1}
	add     r2, #0x18
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	bx      lr
@ 0x225d7a0

.thumb
Function_225d7a0: @ 225d7a0 :thumb
	push    {r0-r3}
.thumb
Function_225d7a2: @ 225d7a2 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r2, [sp, #0x4]
	ldr     r2, [sp, #0x34]
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x34]
	bl      Function_225c980
	ldr     r1, [pc, #0x74] @ 0x225d828, (=0xc178)
	ldr     r0, [sp, #0x0]
	ldr     r4, [pc, #0x74] @ 0x225d82c, (=0x225f028)
	add     r5, r0, r1
	ldr     r1, [pc, #0x74] @ 0x225d830, (=0xc010)
	mov     r7, #0x0
	add     r6, r0, r1
.thumb
branch_225d7c0: @ 225d7c0 :thumb
	mov     r1, #0x51
	ldr     r2, [sp, #0x4]
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	ldr     r2, [r4, #0x0]
	ldr     r3, [sp, #0x34]
	mov     r0, r5
	bl      0x20170d8
	mov     r0, r6
	mov     r1, r5
	bl      0x2017258
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x10
	add     r6, #0x78
	cmp     r7, #0x3
	blt     branch_225d7c0
	ldr     r0, [sp, #0x2c]
	ldr     r2, [pc, #0x48] @ 0x225d834, (=0xc004)
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_225d80e
	mov     r3, #0x3
	ldr     r0, [sp, #0x0]
	lsl     r3, r3, #8
	str     r3, [r0, r2]
	add     r1, r2, #0x4
	str     r3, [r0, r1]
	mov     r1, #0x1
	lsl     r1, r1, #12
	add     r2, #0x8
	str     r1, [r0, r2]
	add     sp, #0x8
	pop     {r3-r7}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x225d80e

.thumb
branch_225d80e: @ 225d80e :thumb
	mov     r3, #0x1
	ldr     r0, [sp, #0x0]
	lsl     r3, r3, #12
	str     r3, [r0, r2]
	add     r1, r2, #0x4
	str     r3, [r0, r1]
	add     r2, #0x8
	str     r3, [r0, r2]
	add     sp, #0x8
	pop     {r3-r7}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x225d828

.word 0xc178 @ 0x225d828
.word 0x225f028 @ 0x225d82c
.word 0xc010 @ 0x225d830
.word 0xc004 @ 0x225d834
.thumb
Function_225d838: @ 225d838 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x14] @ 0x225d850, (=0xc178)
	mov     r4, #0x0
	add     r5, r0, r1
.thumb
branch_225d840: @ 225d840 :thumb
	mov     r0, r5
	bl      0x2017110
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x3
	blt     branch_225d840
	pop     {r3-r5,pc}
@ 0x225d850

.word 0xc178 @ 0x225d850
.thumb
Function_225d854: @ 225d854 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x58
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	add     r1, sp, #0x4
	bl      Function_225d760
	mov     r0, r4
	add     r1, sp, #0x10
	bl      Function_225d770
	ldr     r0, [pc, #0x98] @ 0x225d908, (=0xc010)
	ldr     r7, [pc, #0x9c] @ 0x225d90c, (=0x19a)
	mov     r6, #0x0
	add     r4, r5, r0
.thumb
branch_225d874: @ 225d874 :thumb
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0xc]
	mov     r0, r4
	bl      0x2017350
	cmp     r6, #0x2
	ldr     r1, [pc, #0x8c] @ 0x225d910, (=0xc004)
	bne     branch_225d89a
	ldr     r3, [pc, #0x8c] @ 0x225d914, (=0xc00c)
	ldr     r2, [pc, #0x8c] @ 0x225d918, (=0xc008)
	ldr     r3, [r5, r3]
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	mov     r0, r4
	add     r3, r3, r7
	bl      0x201736c
	b       branch_225d8aa
@ 0x225d89a

.thumb
branch_225d89a: @ 225d89a :thumb
	ldr     r2, [pc, #0x7c] @ 0x225d918, (=0xc008)
	ldr     r3, [pc, #0x74] @ 0x225d914, (=0xc00c)
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	ldr     r3, [r5, r3]
	mov     r0, r4
	bl      0x201736c
.thumb
branch_225d8aa: @ 225d8aa :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x78
	cmp     r6, #0x3
	blt     branch_225d874
	add     r0, sp, #0x34
	blx     0x20bb4c8
	mov     r0, #0xc1
	lsl     r0, r0, #8
	add     r0, r5, r0
	add     r1, sp, #0x34
	bl      0x2017330
	ldr     r0, [r5, #0x0]
	mov     r7, #0x0
	cmp     r0, #0x0
	bls     branch_225d904
	ldr     r0, [pc, #0x38] @ 0x225d908, (=0xc010)
	mov     r6, r5
	add     r0, r5, r0
	add     r6, #0x8
	mov     r4, r5
	str     r0, [sp, #0x0]
.thumb
branch_225d8d8: @ 225d8d8 :thumb
	mov     r0, r6
	add     r1, sp, #0x10
	add     r2, sp, #0x34
	blx     0x20bb8ec
	ldrh    r2, [r4, #0x2c]
	cmp     r2, #0x3
	beq     branch_225d8f8
	mov     r0, #0x78
	mov     r1, r2
	mul     r1, r0
	ldr     r0, [sp, #0x0]
	add     r0, r0, r1
	add     r1, sp, #0x34
	bl      0x2017330
.thumb
branch_225d8f8: @ 225d8f8 :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x30
	add     r4, #0x30
	cmp     r7, r0
	bcc     branch_225d8d8
.thumb
branch_225d904: @ 225d904 :thumb
	add     sp, #0x58
	pop     {r3-r7,pc}
@ 0x225d908

.word 0xc010 @ 0x225d908
.word 0x19a @ 0x225d90c
.word 0xc004 @ 0x225d910
.word 0xc00c @ 0x225d914
.word 0xc008 @ 0x225d918
.thumb
Function_225d91c: @ 225d91c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r7, r1
	str     r2, [sp, #0x0]
	mov     r4, #0x0
.thumb
branch_225d928: @ 225d928 :thumb
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      0x223164c
	cmp     r0, #0x0
	beq     branch_225d976
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      0x2231624
	lsl     r1, r4, #24
	str     r0, [sp, #0x4]
	mov     r0, r5
	lsr     r1, r1, #24
	bl      0x22315d8
	lsl     r0, r0, #24
	lsl     r1, r4, #24
	lsr     r6, r0, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      0x22315fc
	cmp     r6, r7
	bne     branch_225d976
	ldr     r1, [sp, #0x0]
	cmp     r0, r1
	bne     branch_225d976
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_225d970
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x225d970

.thumb
branch_225d970: @ 225d970 :thumb
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x225d976

.thumb
branch_225d976: @ 225d976 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x32
	blt     branch_225d928
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225d982


.align 2, 0


.thumb
Function_225d984: @ 225d984 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r2, [sp, #0x0]
	mov     r5, r0
	mov     r7, r1
	str     r3, [sp, #0x4]
	mov     r4, #0x3
	bl      Function_225da70
	mov     r6, r0
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	mov     r1, r7
	bl      Function_225d9c4
	mov     r7, r0
	cmp     r7, r6
	bge     branch_225d9bc
	mov     r0, r5
	mov     r1, r7
	bl      Function_225da1c
	mov     r4, r0
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	mov     r2, r7
	bl      Function_225d9f0
.thumb
branch_225d9bc: @ 225d9bc :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225d9c2


.align 2, 0


.thumb
Function_225d9c4: @ 225d9c4 :thumb
	push    {r4,r5}
	ldr     r5, [r0, #0x0]
	mov     r4, #0x0
	cmp     r5, #0x0
	bls     branch_225d9e8
.thumb
branch_225d9ce: @ 225d9ce :thumb
	ldrh    r3, [r0, #0x2e]
	cmp     r1, r3
	bne     branch_225d9e0
	ldrh    r3, [r0, #0x30]
	cmp     r2, r3
	bne     branch_225d9e0
	mov     r0, r4
	pop     {r4,r5}
	bx      lr
@ 0x225d9e0

.thumb
branch_225d9e0: @ 225d9e0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x30
	cmp     r4, r5
	bcc     branch_225d9ce
.thumb
branch_225d9e8: @ 225d9e8 :thumb
	mov     r0, r5
	pop     {r4,r5}
	bx      lr
@ 0x225d9ee


.align 2, 0


.thumb
Function_225d9f0: @ 225d9f0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, r2
	mov     r4, r1
	cmp     r6, r0
	bcc     branch_225da02
	bl      ErrorHandling
.thumb
branch_225da02: @ 225da02 :thumb
	mov     r0, #0x30
	mul     r0, r6
	add     r1, r5, r0
	mov     r0, #0x4
	ldsh    r0, [r1, r0]
	str     r0, [r4, #0x0]
	mov     r0, #0x6
	ldsh    r0, [r1, r0]
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	pop     {r4-r6,pc}
@ 0x225da1a


.align 2, 0


.thumb
Function_225da1c: @ 225da1c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	cmp     r4, r0
	bcc     branch_225da2c
	bl      ErrorHandling
.thumb
branch_225da2c: @ 225da2c :thumb
	mov     r0, #0x30
	mul     r0, r4
	add     r0, r5, r0
	ldrh    r0, [r0, #0x2c]
	pop     {r3-r5,pc}
@ 0x225da36


.align 2, 0


.thumb
Function_225da38: @ 225da38 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	cmp     r4, r0
	bcc     branch_225da48
	bl      ErrorHandling
.thumb
branch_225da48: @ 225da48 :thumb
	mov     r0, #0x30
	mul     r0, r4
	add     r0, r5, r0
	ldrh    r0, [r0, #0x2e]
	pop     {r3-r5,pc}
@ 0x225da52


.align 2, 0


.thumb
Function_225da54: @ 225da54 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	cmp     r4, r0
	bcc     branch_225da64
	bl      ErrorHandling
.thumb
branch_225da64: @ 225da64 :thumb
	mov     r0, #0x30
	mul     r0, r4
	add     r0, r5, r0
	ldrh    r0, [r0, #0x30]
	pop     {r3-r5,pc}
@ 0x225da6e


.align 2, 0


.thumb
Function_225da70: @ 225da70 :thumb
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x225da74

.thumb
Function_225da74: @ 225da74 :thumb
	push    {r0-r3}
.thumb
Function_225da76: @ 225da76 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, r3
	bl      0x20203ac
	str     r0, [r4, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x54] @ 0x225dae0, (=0x225f01c)
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x54] @ 0x225dae4, (=0x225f034)
	ldr     r2, [pc, #0x54] @ 0x225dae8, (=0x5c1)
	bl      0x2020784
	mov     r1, #0x19
	ldr     r2, [r4, #0x0]
	mov     r0, #0x0
	lsl     r1, r1, #14
	bl      0x20206bc
	ldr     r1, [r4, #0x0]
	mov     r0, #0x0
	bl      0x2020854
	ldr     r0, [r4, #0x0]
	bl      0x20203d4
	ldr     r0, [sp, #0x14]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	bne     branch_225dac2
	mov     r0, #0x1
	strh    r0, [r4, #0x10]
	mov     r0, #0x5
	lsl     r0, r0, #16
	b       branch_225daca
@ 0x225dac2

.thumb
branch_225dac2: @ 225dac2 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x10]
	mov     r0, #0x4a
	lsl     r0, r0, #14
.thumb
branch_225daca: @ 225daca :thumb
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x0]
	bl      0x2020a50
	add     sp, #0x8
	pop     {r4}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x225dade


.align 2


.word 0x225f01c @ 0x225dae0
.word 0x225f034 @ 0x225dae4
.word 0x5c1 @ 0x225dae8
.thumb
Function_225daec: @ 225daec :thumb
	ldr     r3, [pc, #0x4] @ 0x225daf4, (=0x20203b9)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x225daf2


.align 2


.word 0x20203b9 @ 0x225daf4
.thumb
Function_225daf8: @ 225daf8 :thumb
	ldr     r3, [pc, #0x0] @ 0x225dafc, (=0x20203ed)
	bx      r3
@ 0x225dafc

.word 0x20203ed @ 0x225dafc
.thumb
Function_225db00: @ 225db00 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0x10]
	cmp     r0, #0x0
	bne     branch_225db16
	mov     r0, #0x1
	strh    r0, [r4, #0x10]
	ldr     r0, [pc, #0x18] @ 0x225db28, (=0x5be)
	bl      0x2005748
	b       branch_225db20
@ 0x225db16

.thumb
branch_225db16: @ 225db16 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x10]
	ldr     r0, [pc, #0xc] @ 0x225db28, (=0x5be)
	bl      0x2005748
.thumb
branch_225db20: @ 225db20 :thumb
	mov     r0, #0x1
	strh    r0, [r4, #0x12]
	pop     {r4,pc}
@ 0x225db26


.align 2


.word 0x5be @ 0x225db28
.thumb
Function_225db2c: @ 225db2c :thumb
	push    {r3,lr}
	mov     r2, r0
	ldrh    r0, [r2, #0x12]
	cmp     r0, #0x0
	bne     branch_225db3a
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x225db3a

.thumb
branch_225db3a: @ 225db3a :thumb
	ldrh    r0, [r2, #0x10]
	cmp     r0, #0x0
	beq     branch_225db72
	cmp     r0, #0x1
	bne     branch_225db9e
	mov     r0, #0x16
	ldr     r3, [r2, #0xc]
	lsl     r0, r0, #14
	cmp     r3, r0
	ble     branch_225db66
	mov     r0, #0x2
	lsl     r0, r0, #14
	sub     r0, r3, r0
	str     r0, [r2, #0xc]
	ldr     r0, [pc, #0x54] @ 0x225dbac, (=0xc004)
	ldr     r3, [r1, r0]
	sub     r3, #0x80
	str     r3, [r1, r0]
	ldr     r3, [r1, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r3, [r1, r0]
	b       branch_225db9e
@ 0x225db66

.thumb
branch_225db66: @ 225db66 :thumb
	mov     r0, #0x5
	lsl     r0, r0, #16
	str     r0, [r2, #0xc]
	mov     r0, #0x0
	strh    r0, [r2, #0x12]
	b       branch_225db9e
@ 0x225db72

.thumb
branch_225db72: @ 225db72 :thumb
	mov     r0, #0x12
	ldr     r3, [r2, #0xc]
	lsl     r0, r0, #16
	cmp     r3, r0
	bge     branch_225db94
	mov     r0, #0x2
	lsl     r0, r0, #14
	add     r0, r3, r0
	str     r0, [r2, #0xc]
	ldr     r0, [pc, #0x24] @ 0x225dbac, (=0xc004)
	ldr     r3, [r1, r0]
	add     r3, #0x80
	str     r3, [r1, r0]
	ldr     r3, [r1, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r3, [r1, r0]
	b       branch_225db9e
@ 0x225db94

.thumb
branch_225db94: @ 225db94 :thumb
	mov     r0, #0x4a
	lsl     r0, r0, #14
	str     r0, [r2, #0xc]
	mov     r0, #0x0
	strh    r0, [r2, #0x12]
.thumb
branch_225db9e: @ 225db9e :thumb
	ldr     r0, [r2, #0xc]
	ldr     r1, [r2, #0x0]
	bl      0x2020a50
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225dbaa


.align 2


.word 0xc004 @ 0x225dbac
.thumb
Function_225dbb0: @ 225dbb0 :thumb
	ldrh    r0, [r0, #0x10]
	bx      lr
@ 0x225dbb4

.thumb
Function_225dbb4: @ 225dbb4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r6, r2
	mov     r1, #0x0
	mov     r2, #0x2c
	mov     r5, r0
	mov     r7, r3
	blx     0x20d5124
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r2, #0x1
	mov     r1, r5
	str     r2, [sp, #0xc]
	mov     r0, #0x28
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r1, #0x1c
	mov     r3, #0x19
	bl      0x201a7e8
	mov     r0, r5
	add     r0, #0x1c
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_225ef74
	mov     r4, r0
	mov     r0, #0x2
	mov     r1, r7
	bl      0x2002bb8
	mov     r0, #0x2
	mov     r1, r4
	mov     r2, #0x0
	mov     r3, #0x30
	bl      0x2002eec
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x28] @ 0x225dc44, (=0x2010f)
	mov     r2, r4
	str     r0, [sp, #0x8]
	mov     r0, r5
	str     r1, [sp, #0xc]
	add     r0, #0x1c
	mov     r1, #0x2
	bl      0x201d78c
	mov     r0, #0x2
	bl      0x2002c60
	add     r5, #0x1c
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, #0x1f
	mov     r3, r1
	bl      0x200dc48
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225dc44

.word 0x2010f @ 0x225dc44
.thumb
Function_225dc48: @ 225dc48 :thumb
	ldr     r3, [pc, #0x4] @ 0x225dc50, (=0x201a8fd)
	add     r0, #0x1c
	bx      r3
@ 0x225dc4e


.align 2


.word 0x201a8fd @ 0x225dc50
.thumb
Function_225dc54: @ 225dc54 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0xac] @ 0x225dd0c, (=0x21bf6bc)
	ldrh    r1, [r0, #0x20]
	cmp     r1, #0x0
	beq     branch_225dc9c
	ldrh    r1, [r0, #0x1c]
	cmp     r1, #0xc8
	bcc     branch_225dc82
	cmp     r1, #0xf8
	bhi     branch_225dc82
	ldrh    r0, [r0, #0x1e]
	cmp     r0, #0xa8
	bcc     branch_225dc82
	cmp     r0, #0xb8
	bhi     branch_225dc82
	mov     r0, #0x2
	add     sp, #0x18
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x225dc82

.thumb
branch_225dc82: @ 225dc82 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	str     r0, [r4, #0x10]
	str     r0, [r4, #0x14]
	str     r0, [r4, #0x18]
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x7c] @ 0x225dd0c, (=0x21bf6bc)
	ldrh    r1, [r0, #0x1c]
	str     r1, [r4, #0x8]
	ldrh    r0, [r0, #0x1e]
	str     r0, [r4, #0xc]
	mov     r0, #0x4
	str     r0, [r4, #0x18]
.thumb
branch_225dc9c: @ 225dc9c :thumb
	ldr     r0, [pc, #0x6c] @ 0x225dd0c, (=0x21bf6bc)
	ldrh    r0, [r0, #0x22]
	cmp     r0, #0x0
	beq     branch_225dcf4
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	beq     branch_225dcb2
	cmp     r1, #0x1
	beq     branch_225dcc2
	add     sp, #0x18
	pop     {r4,pc}
@ 0x225dcb2

.thumb
branch_225dcb2: @ 225dcb2 :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_225dcbe
	add     r0, r1, #0x1
	str     r0, [r4, #0x4]
	b       branch_225dcc2
@ 0x225dcbe

.thumb
branch_225dcbe: @ 225dcbe :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x18]
.thumb
branch_225dcc2: @ 225dcc2 :thumb
	add     r0, sp, #0xc
	str     r0, [sp, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	add     r2, sp, #0x14
	add     r3, sp, #0x10
	bl      Function_225cbe4
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0xc]
	orr     r0, r1
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x10]
	str     r0, [r4, #0x10]
	ldr     r0, [sp, #0x8]
	add     sp, #0x18
	str     r0, [r4, #0x14]
	ldr     r0, [pc, #0x20] @ 0x225dd0c, (=0x21bf6bc)
	ldrh    r1, [r0, #0x1c]
	str     r1, [r4, #0x8]
	ldrh    r0, [r0, #0x1e]
	str     r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x225dcf4

.thumb
branch_225dcf4: @ 225dcf4 :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_225dcfe
	mov     r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_225dcfe: @ 225dcfe :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	str     r0, [r4, #0x10]
	str     r0, [r4, #0x14]
	str     r0, [r4, #0x18]
	add     sp, #0x18
	pop     {r4,pc}
@ 0x225dd0c

.word 0x21bf6bc @ 0x225dd0c
.thumb
Function_225dd10: @ 225dd10 :thumb
	cmp     r1, #0x0
	beq     branch_225dd1e
	cmp     r1, #0x1
	beq     branch_225dd22
	cmp     r1, #0x2
	beq     branch_225dd26
	bx      lr
@ 0x225dd1e

.thumb
branch_225dd1e: @ 225dd1e :thumb
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x225dd22

.thumb
branch_225dd22: @ 225dd22 :thumb
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x225dd26

.thumb
branch_225dd26: @ 225dd26 :thumb
	ldr     r0, [r0, #0x14]
	bx      lr
@ 0x225dd2a


.align 2, 0


.thumb
Function_225dd2c: @ 225dd2c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x1c
	mov     r1, #0x1
	bl      0x200dc9c
	add     r4, #0x1c
	mov     r0, r4
	bl      0x201ad10
	pop     {r4,pc}
@ 0x225dd42


.align 2, 0


.thumb
Function_225dd44: @ 225dd44 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x1c
	bl      0x201a9a4
	add     r4, #0x1c
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, #0x1f
	mov     r3, r1
	bl      0x200dc48
	pop     {r4,pc}
@ 0x225dd5e


.align 2, 0


.thumb
Function_225dd60: @ 225dd60 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	mov     r1, #0x0
	mov     r2, #0x2c
	mov     r5, r0
	blx     0x20d5124
	mov     r0, r7
	bl      0x2025e44
	bl      0x2027ac0
	str     r0, [r5, #0x8]
	ldr     r1, [sp, #0x28]
	mov     r0, #0x80
	bl      0x2023790
	str     r0, [r5, #0xc]
	mov     r2, #0x1
	mov     r1, r5
	str     r2, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	mov     r0, #0x34
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r1, #0x10
	mov     r3, #0x2
	bl      0x201a7e8
	mov     r0, r5
	add     r0, #0x10
	mov     r1, #0xf
	bl      0x201ada4
	ldr     r2, [r5, #0xc]
	mov     r0, r6
	mov     r1, #0x5
	bl      Function_225ef84
	ldr     r0, [sp, #0x28]
	bl      0x2015920
	str     r0, [r5, #0x20]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225ddc8

.thumb
Function_225ddc8: @ 225ddc8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	beq     branch_225dde4
	ldr     r0, [r4, #0x4]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d730
.thumb
branch_225dde4: @ 225dde4 :thumb
	ldr     r0, [r4, #0xc]
	bl      0x20237bc
	ldr     r0, [r4, #0x20]
	bl      0x2015938
	add     r4, #0x10
	mov     r0, r4
	bl      0x201a8fc
	pop     {r4,pc}
@ 0x225ddfa


.align 2, 0


.thumb
Function_225ddfc: @ 225ddfc :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	add     r0, #0x10
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x10
	mov     r2, r1
	mov     r3, #0x2
	bl      0x200e060
	mov     r0, r4
	add     r0, #0x10
	bl      0x201a9a4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r4
	ldr     r2, [r4, #0xc]
	add     r0, #0x10
	bl      0x201d738
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x225de40

.thumb
Function_225de40: @ 225de40 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_225de52
	cmp     r0, #0x1
	beq     branch_225de8c
	b       branch_225de94
@ 0x225de52

.thumb
branch_225de52: @ 225de52 :thumb
	ldr     r0, [r5, #0x4]
	mov     r4, #0x0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_225de94
	ldr     r3, [pc, #0x38] @ 0x225de9c, (=0x225f074)
	add     r2, sp, #0x0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, r5
	add     r0, #0x10
	bl      0x201c28c
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x20]
	add     r1, sp, #0x0
	bl      0x2015958
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225de94
@ 0x225de8c

.thumb
branch_225de8c: @ 225de8c :thumb
	ldr     r0, [r5, #0x20]
	bl      0x20159fc
	mov     r4, r0
.thumb
branch_225de94: @ 225de94 :thumb
	mov     r0, r4
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x225de9a


.align 2


.word 0x225f074 @ 0x225de9c
.thumb
Function_225dea0: @ 225dea0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	bl      0x2015a54
	mov     r0, r4
	add     r0, #0x10
	mov     r1, #0x1
	bl      0x200e084
	add     r4, #0x10
	mov     r0, r4
	bl      0x201ad10
	pop     {r4,pc}
@ 0x225debe


.align 2, 0


.thumb
Function_225dec0: @ 225dec0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	str     r1, [sp, #0x18]
	str     r2, [sp, #0x1c]
	mov     r2, #0x0
	mov     r1, r0
	str     r0, [sp, #0x14]
	str     r3, [sp, #0x20]
	str     r2, [r1, #0x0]
	bl      Function_225e13c
	ldr     r5, [sp, #0x14]
	ldr     r4, [pc, #0xd8] @ 0x225dfb4, (=Unknown_225f014)
	ldr     r6, [pc, #0xdc] @ 0x225dfb8, (=0x225f118)
	mov     r7, #0x0
	add     r5, #0xa0
branch_225dee0: @ 225dee0 :thumb
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x18]
	str     r0, [sp, #0x0]
	ldrb    r3, [r4, #0x0]
	mov     r0, r5
	mov     r2, r6
	bl      Function_225e748
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0xc
	add     r5, #0x28
	cmp     r7, #0x5
	blt     branch_225dee0
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r2, #0x4
	str     r2, [sp, #0x8]
	mov     r0, #0xb
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	mov     r3, #0x6a
	ldr     r1, [sp, #0x14]
	lsl     r3, r3, #2
	add     r1, r1, r3
	ldr     r0, [r0, #0x0]
	mov     r3, #0x2
	bl      0x201a7e8
	mov     r1, #0x6a
	ldr     r0, [sp, #0x14]
	lsl     r1, r1, #2
	add     r0, r0, r1
	mov     r1, #0xf
	bl      0x201ada4
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x0
	bl      Function_225ef74
	mov     r3, #0x0
	mov     r2, r0
	str     r3, [sp, #0x0]
	mov     r1, #0xff
	str     r1, [sp, #0x4]
	ldr     r0, [sp, #0x14]
	add     r1, #0xa9
	add     r0, r0, r1
	mov     r1, #0x1
	str     r3, [sp, #0x8]
	bl      0x201d738
	mov     r1, #0x6a
	mov     r2, #0xa
	ldr     r0, [sp, #0x14]
	lsl     r1, r1, #2
	add     r0, r0, r1
	mov     r1, #0x0
	mov     r3, r2
	bl      0x200e060
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x20]
	bl      Function_225e590
	ldr     r0, [sp, #0x20]
	mov     r1, #0x51
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, #0x13
	mov     r2, #0x0
	add     r3, #0x98
	bl      0x20071d0
	ldr     r1, [sp, #0x14]
	mov     r3, #0xb9
	add     r1, #0x94
	str     r0, [r1, #0x0]
	mov     r1, #0x6e
	ldr     r0, [sp, #0x14]
	lsl     r1, r1, #2
	add     r0, r0, r1
	ldr     r2, [sp, #0x14]
	lsl     r3, r3, #2
	add     r2, r2, r3
	ldr     r1, [sp, #0x18]
	ldr     r3, [sp, #0x20]
	bl      Function_225e960
	mov     r1, #0xb9
	ldr     r0, [sp, #0x14]
	lsl     r1, r1, #2
	add     r0, r0, r1
	bl      Function_225e478
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x225dfb2

.align 2
.word Unknown_225f014 @ 0x225dfb4
.word 0x225f118 @ 0x225dfb8



.thumb
Function_225dfbc: @ 225dfbc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0xb9
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r4, r1
	bl      Function_225e4e8
	mov     r0, #0x6e
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, r4
	bl      Function_225eae8
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bl      0x20181c4
	mov     r0, r5
	bl      Function_225e61c
	mov     r0, #0x6a
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      0x201a8fc
	mov     r0, r5
	bl      Function_225e148
	mov     r4, #0x0
	add     r5, #0xa0
.thumb
branch_225dffc: @ 225dffc :thumb
	mov     r0, r5
	bl      Function_225e7dc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x28
	cmp     r4, #0x5
	blt     branch_225dffc
	pop     {r3-r5,pc}
@ 0x225e00c

.thumb
Function_225e00c: @ 225e00c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r3, [r4, #0x0]
	mov     r5, r2
	cmp     r3, #0x4
	bhi     branch_225e080
	add     r3, r3, r3
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
@ 0x225e024

Jumppoints_225e024:
.hword branch_225e02e - Jumppoints_225e024 - 2
.hword branch_225e046 - Jumppoints_225e024 - 2
.hword branch_225e050 - Jumppoints_225e024 - 2
.hword branch_225e060 - Jumppoints_225e024 - 2
.hword branch_225e072 - Jumppoints_225e024 - 2
.thumb
branch_225e02e: @ 225e02e :thumb
	mov     r1, r5
	bl      Function_225e1ec
	mov     r0, #0x6e
	mov     r1, #0xb9
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_225ec08
	pop     {r3-r5,pc}
@ 0x225e046

.thumb
branch_225e046: @ 225e046 :thumb
	bl      Function_225e208
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x225e050

.thumb
branch_225e050: @ 225e050 :thumb
	mov     r1, r5
	bl      Function_225e2d0
	cmp     r0, #0x1
	bne     branch_225e080
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x225e060

.thumb
branch_225e060: @ 225e060 :thumb
	bl      Function_225e2dc
	mov     r0, r4
	mov     r1, r5
	bl      Function_225e2e4
	mov     r0, #0x4
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x225e072

.thumb
branch_225e072: @ 225e072 :thumb
	mov     r1, r5
	bl      Function_225e2e4
	cmp     r0, #0x1
	bne     branch_225e080
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_225e080: @ 225e080 :thumb
	pop     {r3-r5,pc}
@ 0x225e082


.align 2, 0


.thumb
Function_225e084: @ 225e084 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x6a
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x1
	bl      0x200e084
	mov     r0, #0x6a
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      0x201ad10
	pop     {r4,pc}
@ 0x225e0a0

.thumb
Function_225e0a0: @ 225e0a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x6a
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      0x201a9a4
	mov     r0, #0x6a
	lsl     r0, r0, #2
	mov     r2, #0xa
	add     r0, r4, r0
	mov     r1, #0x1
	mov     r3, r2
	bl      0x200e060
	pop     {r4,pc}
@ 0x225e0c0

.thumb
Function_225e0c0: @ 225e0c0 :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x0]
	cmp     r2, #0x4
	bhi     branch_225e0f0
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x225e0d4

Jumppoints_225e0d4:
.hword branch_225e0de - Jumppoints_225e0d4 - 2
.hword branch_225e0ec - Jumppoints_225e0d4 - 2
.hword branch_225e0e4 - Jumppoints_225e0d4 - 2
.hword branch_225e0ec - Jumppoints_225e0d4 - 2
.hword branch_225e0ec - Jumppoints_225e0d4 - 2
.thumb
branch_225e0de: @ 225e0de :thumb
	mov     r2, #0x1
	str     r2, [r0, #0x0]
	b       branch_225e0f0
@ 0x225e0e4

.thumb
branch_225e0e4: @ 225e0e4 :thumb
	mov     r1, #0x3
	str     r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225e0ec

.thumb
branch_225e0ec: @ 225e0ec :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225e0f0

.thumb
branch_225e0f0: @ 225e0f0 :thumb
	bl      Function_225e154
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x225e0f8

.thumb
Function_225e0f8: @ 225e0f8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r5, r1
	mov     r4, #0x0
	add     r7, sp, #0x0
.thumb
branch_225e104: @ 225e104 :thumb
	mov     r0, r6
	mov     r1, r7
	mov     r2, r4
	bl      Function_225e1c0
	cmp     r0, #0x0
	bne     branch_225e118
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x225e118

.thumb
branch_225e118: @ 225e118 :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	cmp     r1, r0
	bne     branch_225e12e
	ldr     r1, [sp, #0x8]
	ldr     r0, [r5, #0x8]
	cmp     r1, r0
	bne     branch_225e12e
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x225e12e

.thumb
branch_225e12e: @ 225e12e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_225e104
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225e13a


.align 2, 0


.thumb
Function_225e13c: @ 225e13c :thumb
	mov     r1, #0x0
	strh    r1, [r0, #0x34]
	strh    r1, [r0, #0x36]
	str     r1, [r0, #0x38]
	bx      lr
@ 0x225e146


.align 2, 0


.thumb
Function_225e148: @ 225e148 :thumb
	mov     r1, #0x0
	strh    r1, [r0, #0x34]
	strh    r1, [r0, #0x36]
	str     r1, [r0, #0x38]
	bx      lr
@ 0x225e152


.align 2, 0


.thumb
Function_225e154: @ 225e154 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldrh    r1, [r5, #0x36]
	.hword  0x1c49 @ add r1, r1, #0x1
	lsr     r3, r1, #31
	lsl     r2, r1, #30
	sub     r2, r2, r3
	mov     r1, #0x1e
	ror     r2, r1
	ldrh    r1, [r5, #0x34]
	add     r2, r3, r2
	cmp     r2, r1
	bne     branch_225e174
	bl      Function_225e1a0
.thumb
branch_225e174: @ 225e174 :thumb
	ldrh    r1, [r5, #0x36]
	mov     r0, #0xc
	mul     r0, r1
	add     r0, r5, r0
	add     r2, r0, #0x4
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r2, #0x0]
	ldrh    r0, [r5, #0x36]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r2, r0, #31
	lsl     r1, r0, #30
	sub     r1, r1, r2
	mov     r0, #0x1e
	ror     r1, r0
	add     r0, r2, r1
	strh    r0, [r5, #0x36]
	ldr     r0, [r5, #0x38]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x38]
	pop     {r3-r5,pc}
@ 0x225e1a0

.thumb
Function_225e1a0: @ 225e1a0 :thumb
	ldrh    r2, [r0, #0x34]
	ldrh    r1, [r0, #0x36]
	cmp     r1, r2
	beq     branch_225e1be
	add     r1, r2, #0x1
	lsr     r3, r1, #31
	lsl     r2, r1, #30
	sub     r2, r2, r3
	mov     r1, #0x1e
	ror     r2, r1
	add     r1, r3, r2
	strh    r1, [r0, #0x34]
	ldr     r1, [r0, #0x38]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0x38]
.thumb
branch_225e1be: @ 225e1be :thumb
	bx      lr
@ 0x225e1c0

.thumb
Function_225e1c0: @ 225e1c0 :thumb
	mov     r3, r1
	ldr     r1, [r0, #0x38]
	cmp     r2, r1
	bcc     branch_225e1cc
	mov     r0, #0x0
	bx      lr
@ 0x225e1cc

.thumb
branch_225e1cc: @ 225e1cc :thumb
	ldrh    r1, [r0, #0x36]
	.hword  0x1e49 @ sub r1, r1, #0x1
	sub     r2, r1, r2
	bpl     branch_225e1d6
	.hword  0x1d12 @ add r2, r2, #0x4
.thumb
branch_225e1d6: @ 225e1d6 :thumb
	mov     r1, #0xc
	mul     r1, r2
	add     r0, r0, r1
	add     r2, r0, #0x4
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x1
	bx      lr
@ 0x225e1ea


.align 2, 0


.thumb
Function_225e1ec: @ 225e1ec :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
	add     r5, #0xa0
.thumb
branch_225e1f6: @ 225e1f6 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_225e810
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x28
	cmp     r4, #0x5
	blt     branch_225e1f6
	pop     {r4-r6,pc}
@ 0x225e208

.thumb
Function_225e208: @ 225e208 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	str     r1, [sp, #0x0]
	add     r0, #0x40
	mov     r1, #0x0
	mov     r2, #0x48
	blx     0x20d5124
	mov     r6, #0x0
	strh    r6, [r5, #0x3c]
	mov     r4, r5
	strh    r6, [r5, #0x3e]
	add     r4, #0xa0
.thumb
branch_225e224: @ 225e224 :thumb
	mov     r0, r4
	bl      Function_225e904
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x28
	cmp     r6, #0x5
	blt     branch_225e224
	mov     r0, #0x6e
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_225eb60
	mov     r0, r5
	str     r0, [sp, #0x8]
	add     r0, #0xa0
	mov     r7, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r5
	mvn     r7, r7
	str     r0, [sp, #0xc]
	add     r0, #0x3e
	mov     r6, #0x0
	str     r7, [sp, #0x10]
	str     r0, [sp, #0xc]
.thumb
branch_225e254: @ 225e254 :thumb
	mov     r0, #0x2
	sub     r4, r0, r6
	mov     r0, r5
	add     r1, sp, #0x14
	mov     r2, r6
	bl      Function_225e1c0
	cmp     r0, #0x1
	bne     branch_225e2ba
	ldr     r0, [sp, #0x14]
	bl      Function_225eeec
	mov     r1, #0x28
	str     r0, [sp, #0x4]
	mul     r1, r0
	ldr     r0, [sp, #0x8]
	mov     r2, #0x1
	add     r0, r0, r1
	mov     r1, r4
	bl      Function_225e8ec
	ldr     r3, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x14
	bl      Function_225e644
	lsl     r0, r4, #2
	add     r1, r5, r0
	lsl     r3, r7, #24
	ldr     r0, [sp, #0x4]
	add     r1, #0x88
	str     r0, [r1, #0x0]
	ldr     r2, [sp, #0x14]
	mov     r0, #0x6e
	lsl     r0, r0, #2
	lsl     r1, r4, #24
	lsl     r2, r2, #24
	add     r0, r5, r0
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_225eb8c
	ldr     r0, [sp, #0xc]
	ldrh    r0, [r0, #0x0]
	add     r1, r0, #0x6
	ldr     r0, [sp, #0xc]
	strh    r1, [r0, #0x0]
	ldr     r7, [sp, #0x14]
	b       branch_225e2c6
@ 0x225e2ba

.thumb
branch_225e2ba: @ 225e2ba :thumb
	lsl     r0, r4, #2
	add     r1, r5, r0
	add     r1, #0x88
	mov     r0, #0x5
	ldr     r7, [sp, #0x10]
	str     r0, [r1, #0x0]
.thumb
branch_225e2c6: @ 225e2c6 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, #0x3
	blt     branch_225e254
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x225e2d0

.thumb
Function_225e2d0: @ 225e2d0 :thumb
	ldr     r3, [pc, #0x4] @ 0x225e2d8, (=0x225e2f1)
	mov     r2, #0x2
	bx      r3
@ 0x225e2d6


.align 2


.word 0x225e2f1 @ 0x225e2d8
.thumb
Function_225e2dc: @ 225e2dc :thumb
	ldrh    r1, [r0, #0x3c]
	lsr     r1, r1, #1
	strh    r1, [r0, #0x3c]
	bx      lr
@ 0x225e2e4

.thumb
Function_225e2e4: @ 225e2e4 :thumb
	ldr     r3, [pc, #0x4] @ 0x225e2ec, (=0x225e2f1)
	mov     r2, #0x1
	bx      r3
@ 0x225e2ea


.align 2


.word 0x225e2f1 @ 0x225e2ec
.thumb
Function_225e2f0: @ 225e2f0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0x3c]
	mov     r4, r2
	mov     r6, r1
	mov     r1, r4
	mov     r7, #0x1
	str     r0, [sp, #0x0]
	blx     _s32_div_f
	cmp     r1, #0x0
	bne     branch_225e318
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	blx     _s32_div_f
	mov     r1, r0
	mov     r0, r5
	bl      Function_225e368
.thumb
branch_225e318: @ 225e318 :thumb
	ldrh    r0, [r5, #0x3c]
	add     r1, r0, #0x1
	mov     r0, #0x12
	mul     r0, r4
	cmp     r1, r0
	bge     branch_225e326
	strh    r1, [r5, #0x3c]
.thumb
branch_225e326: @ 225e326 :thumb
	ldrh    r0, [r5, #0x3e]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_225e346
.thumb
branch_225e32e: @ 225e32e :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_225e374
	cmp     r0, #0x0
	bne     branch_225e33e
	mov     r7, #0x0
.thumb
branch_225e33e: @ 225e33e :thumb
	ldrh    r0, [r5, #0x3e]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_225e32e
.thumb
branch_225e346: @ 225e346 :thumb
	cmp     r7, #0x1
	bne     branch_225e362
	mov     r0, #0x6e
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_225ebec
	mov     r0, #0xb9
	lsl     r0, r0, #2
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, r1
	bl      Function_225e51c
.thumb
branch_225e362: @ 225e362 :thumb
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x225e366


.align 2, 0


.thumb
Function_225e368: @ 225e368 :thumb
	lsl     r1, r1, #2
	add     r0, r0, r1
	mov     r2, #0x1
	add     r0, #0x40
	strb    r2, [r0, #0x0]
	bx      lr
@ 0x225e374

.thumb
Function_225e374: @ 225e374 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r2, [sp, #0x0]
	mov     r5, r0
	lsl     r2, r1, #2
	add     r0, r5, r2
	add     r0, #0x40
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_225e38e
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x225e38e

.thumb
branch_225e38e: @ 225e38e :thumb
	mov     r0, r5
	add     r0, #0x41
	ldsb    r4, [r0, r2]
	add     r6, r0, r2
	cmp     r4, #0x2
	blt     branch_225e3a0
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x225e3a0

.thumb
branch_225e3a0: @ 225e3a0 :thumb
	mov     r0, #0x11
	sub     r7, r0, r1
	mov     r0, r7
	mov     r1, #0x6
	blx     _u32_div_f
	str     r0, [sp, #0xc]
	mov     r0, r7
	mov     r1, #0x6
	blx     _u32_div_f
	ldr     r0, [sp, #0xc]
	str     r1, [sp, #0x4]
	lsl     r0, r0, #2
	add     r0, r5, r0
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r4, #0x0
	str     r0, [sp, #0x8]
	beq     branch_225e3ce
	cmp     r4, #0x1
	beq     branch_225e3fc
	b       branch_225e424
@ 0x225e3ce

.thumb
branch_225e3ce: @ 225e3ce :thumb
	mov     r0, r5
	bl      Function_225e70c
	mov     r3, r0
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x4]
	mov     r0, r5
	bl      Function_225e71c
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	mov     r1, r7
	bl      Function_225e430
	mov     r0, #0xb9
	lsl     r0, r0, #2
	lsl     r1, r7, #19
	add     r0, r5, r0
	asr     r1, r1, #16
	mov     r2, #0x90
	bl      Function_225e51c
	b       branch_225e424
@ 0x225e3fc

.thumb
branch_225e3fc: @ 225e3fc :thumb
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x4]
	mov     r0, r5
	bl      Function_225e6e8
	mov     r3, r0
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x4]
	mov     r0, r5
	bl      Function_225e71c
	ldr     r0, [sp, #0x8]
	mov     r1, #0x28
	add     r5, #0xa0
	mul     r1, r0
	add     r0, r5, r1
	ldr     r2, [sp, #0x0]
	mov     r1, r7
	bl      Function_225e910
.thumb
branch_225e424: @ 225e424 :thumb
	mov     r0, #0x0
	ldsb    r1, [r6, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r6, #0x0]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225e430

.thumb
Function_225e430: @ 225e430 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	mov     r4, r2
	mov     r2, #0x20
	str     r2, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r2, r0
	add     r2, #0xc
	str     r2, [sp, #0x8]
	mov     r2, #0x0
	lsl     r1, r1, #24
	str     r2, [sp, #0xc]
	lsr     r3, r1, #24
	str     r3, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x6
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x0]
	bl      0x20198e8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	bl      0x201c3c0
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x225e476


.align 2, 0


.thumb
Function_225e478: @ 225e478 :thumb
	push    {r4-r6,lr}
	ldr     r1, [pc, #0x5c] @ 0x225e4d8, (=0x4001000)
	ldr     r2, [pc, #0x5c] @ 0x225e4dc, (=0xffff1fff)
	ldr     r3, [r1, #0x0]
	mov     r5, r1
	and     r3, r2
	mov     r2, #0x6
	lsl     r2, r2, #12
	orr     r2, r3
	str     r2, [r1, #0x0]
	add     r5, #0x4a
	ldrh    r6, [r5, #0x0]
	mov     r3, #0x3f
	mov     r2, #0x1f
	bic     r6, r3
	orr     r2, r6
	strh    r2, [r5, #0x0]
	add     r1, #0x48
	ldrh    r5, [r1, #0x0]
	mov     r2, #0xf
	mov     r4, r0
	bic     r5, r3
	mov     r3, r5
	orr     r3, r2
	strh    r3, [r1, #0x0]
	ldrh    r5, [r1, #0x0]
	ldr     r3, [pc, #0x30] @ 0x225e4e0, (=0xffffc0ff)
	lsl     r2, r2, #8
	and     r3, r5
	orr     r2, r3
	strh    r2, [r1, #0x0]
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_225e504
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_225e51c
	ldr     r0, [pc, #0x18] @ 0x225e4e4, (=0x225e535)
	mov     r1, r4
	mov     r2, #0x0
	bl      0x200da3c
	str     r0, [r4, #0xc]
	pop     {r4-r6,pc}
@ 0x225e4d6


.align 2


.word 0x4001000 @ 0x225e4d8
.word 0xffff1fff @ 0x225e4dc
.word 0xffffc0ff @ 0x225e4e0
.word 0x225e535 @ 0x225e4e4
.thumb
Function_225e4e8: @ 225e4e8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      0x200da58
	ldr     r2, [pc, #0x8] @ 0x225e4fc, (=0x4001000)
	ldr     r0, [pc, #0xc] @ 0x225e500, (=0xffff1fff)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	pop     {r3,pc}
@ 0x225e4fc

.word 0x4001000 @ 0x225e4fc
.word 0xffff1fff @ 0x225e500
.thumb
Function_225e504: @ 225e504 :thumb
	cmp     r1, #0x0
	bge     branch_225e50a
	mov     r1, #0x0
.thumb
branch_225e50a: @ 225e50a :thumb
	cmp     r2, #0x0
	bge     branch_225e510
	mov     r2, #0x0
.thumb
branch_225e510: @ 225e510 :thumb
	mov     r3, #0x1
	strh    r3, [r0, #0x0]
	strh    r1, [r0, #0x4]
	strh    r2, [r0, #0x6]
	bx      lr
@ 0x225e51a


.align 2, 0


.thumb
Function_225e51c: @ 225e51c :thumb
	cmp     r1, #0x0
	bge     branch_225e522
	mov     r1, #0x0
.thumb
branch_225e522: @ 225e522 :thumb
	cmp     r2, #0x0
	bge     branch_225e528
	mov     r2, #0x0
.thumb
branch_225e528: @ 225e528 :thumb
	mov     r3, #0x1
	strh    r3, [r0, #0x2]
	strh    r1, [r0, #0x8]
	strh    r2, [r0, #0xa]
	bx      lr
@ 0x225e532


.align 2, 0


.thumb
Function_225e534: @ 225e534 :thumb
	push    {r4,r5}
	mov     r4, #0x0
	ldsh    r0, [r1, r4]
	cmp     r0, #0x0
	beq     branch_225e55c
	mov     r0, #0x6
	ldsh    r2, [r1, r0]
	mov     r0, #0x4
	ldsh    r5, [r1, r0]
	ldr     r0, [pc, #0x40] @ 0x225e588, (=0x4001040)
	mov     r3, #0xff
	strh    r3, [r0, #0x0]
	lsl     r2, r2, #24
	lsl     r5, r5, #8
	lsl     r3, r3, #8
	and     r3, r5
	lsr     r2, r2, #24
	orr     r2, r3
	strh    r2, [r0, #0x4]
	strh    r4, [r1, #0x0]
.thumb
branch_225e55c: @ 225e55c :thumb
	mov     r0, #0x2
	ldsh    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_225e584
	mov     r0, #0xa
	ldsh    r2, [r1, r0]
	mov     r0, #0x8
	ldsh    r4, [r1, r0]
	ldr     r0, [pc, #0x1c] @ 0x225e58c, (=0x4001042)
	mov     r3, #0xff
	strh    r3, [r0, #0x0]
	lsl     r2, r2, #24
	lsl     r4, r4, #8
	lsl     r3, r3, #8
	and     r3, r4
	lsr     r2, r2, #24
	orr     r2, r3
	strh    r2, [r0, #0x4]
	mov     r0, #0x0
	strh    r0, [r1, #0x2]
.thumb
branch_225e584: @ 225e584 :thumb
	pop     {r4,r5}
	bx      lr
@ 0x225e588

.word 0x4001040 @ 0x225e588
.word 0x4001042 @ 0x225e58c
.thumb
Function_225e590: @ 225e590 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r6, #0x94
	str     r1, [sp, #0x18]
	mov     r1, r6
	mov     r7, #0x0
	add     r1, #0xd4
	str     r0, [sp, #0x14]
	mov     r4, r7
	add     r5, r0, r1
.thumb
branch_225e5a4: @ 225e5a4 :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	mov     r1, r5
	ldr     r0, [r0, #0x0]
	mov     r2, #0x5
	mov     r3, #0x0
	bl      0x201a7e8
	mov     r0, r5
	mov     r1, #0x0
	add     r6, #0xa2
	bl      0x201ada4
	mov     r0, r5
	bl      0x201a954
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1da4 @ add r4, r4, #0x6
	add     r5, #0x10
	cmp     r7, #0x3
	blt     branch_225e5a4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	mov     r0, #0x94
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	mov     r2, #0x66
	ldr     r1, [sp, #0x14]
	lsl     r2, r2, #2
	add     r1, r1, r2
	ldr     r0, [r0, #0x0]
	mov     r2, #0x5
	bl      0x201a7e8
	mov     r1, #0x66
	ldr     r0, [sp, #0x14]
	lsl     r1, r1, #2
	add     r0, r0, r1
	mov     r1, #0x0
	bl      0x201ada4
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x225e61c

.thumb
Function_225e61c: @ 225e61c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r0, #0x5a
	lsl     r0, r0, #2
	mov     r4, #0x0
	add     r5, r6, r0
.thumb
branch_225e628: @ 225e628 :thumb
	mov     r0, r5
	bl      0x201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x3
	blt     branch_225e628
	mov     r0, #0x66
	lsl     r0, r0, #2
	add     r0, r6, r0
	bl      0x201a8fc
	pop     {r4-r6,pc}
@ 0x225e642


.align 2, 0


.thumb
Function_225e644: @ 225e644 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	mov     r7, r3
	cmp     r4, #0x3
	bcc     branch_225e658
	bl      ErrorHandling
.thumb
branch_225e658: @ 225e658 :thumb
	mov     r0, #0x5a
	lsl     r0, r0, #2
	add     r5, r5, r0
	lsl     r4, r4, #4
	add     r0, r5, r4
	mov     r1, #0x0
	bl      0x201ada4
	ldr     r0, [r6, #0x0]
	bl      Function_225eeec
	str     r0, [sp, #0x10]
	mov     r0, r7
	mov     r1, #0x2
	bl      Function_225ef74
	mov     r3, #0x0
	mov     r2, r0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x58] @ 0x225e6e0, (=0x225f088)
	ldr     r0, [r0, r1]
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	add     r0, r5, r4
	bl      0x201d78c
	ldr     r1, [r6, #0x4]
	mov     r0, r7
	bl      Function_225ef90
	mov     r2, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x38] @ 0x225e6e4, (=0x10200)
	mov     r3, #0x0
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	add     r0, r5, r4
	mov     r1, #0x1
	bl      0x201d78c
	ldr     r1, [r6, #0x4]
	ldr     r2, [r6, #0x8]
	mov     r0, r7
	bl      Function_225efb8
	mov     r2, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x14] @ 0x225e6e4, (=0x10200)
	mov     r3, #0x0
	str     r0, [sp, #0x8]
	add     r0, r5, r4
	mov     r1, #0x1
	str     r3, [sp, #0xc]
	bl      0x201d78c
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225e6e0

.word 0x225f088 @ 0x225e6e0
.word 0x10200 @ 0x225e6e4
.thumb
Function_225e6e8: @ 225e6e8 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x3
	bcc     branch_225e6f8
	bl      ErrorHandling
.thumb
branch_225e6f8: @ 225e6f8 :thumb
	lsl     r0, r4, #4
	add     r1, r5, r0
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	mov     r0, #0x36
	lsl     r0, r0, #4
	mul     r0, r6
	add     r0, r1, r0
	pop     {r4-r6,pc}
@ 0x225e70c

.thumb
Function_225e70c: @ 225e70c :thumb
	mov     r2, #0x69
	lsl     r2, r2, #2
	ldr     r2, [r0, r2]
	mov     r0, #0x36
	lsl     r0, r0, #4
	mul     r0, r1
	add     r0, r2, r0
	bx      lr
@ 0x225e71c

.thumb
Function_225e71c: @ 225e71c :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r2, #0x5a
	lsl     r2, r2, #2
	add     r2, r0, r2
	lsl     r0, r1, #4
	add     r0, r2, r0
	mov     r4, r3
	bl      0x201c2a4
	mov     r3, #0x1b
	mov     r1, r5
	mul     r1, r3
	add     r0, r0, r1
	lsl     r1, r0, #16
	mov     r0, #0x15
	lsr     r1, r1, #11
	mov     r2, r4
	lsl     r3, r3, #5
	bl      0x201dc68
	pop     {r3-r5,pc}
@ 0x225e748

.thumb
Function_225e748: @ 225e748 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x28]
	str     r2, [sp, #0x8]
	str     r1, [sp, #0x28]
	mov     r1, #0x0
	mov     r2, #0x28
	mov     r7, r0
	mov     r4, r3
	blx     0x20d5124
	ldr     r0, [sp, #0x8]
	strh    r4, [r7, #0x2]
	ldrh    r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_225e7a8
	strh    r0, [r7, #0x18]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldrh    r0, [r7, #0x18]
	cmp     r0, #0x0
	ble     branch_225e7a8
	mov     r6, r7
	ldr     r4, [sp, #0x8]
	add     r6, #0x10
	mov     r5, r7
.thumb
branch_225e77e: @ 225e77e :thumb
	ldr     r0, [sp, #0x28]
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	ldrh    r1, [r4, #0x0]
	mov     r2, #0x0
	mov     r3, r6
	bl      0x20071d0
	str     r0, [r5, #0x8]
	ldr     r0, [sp, #0xc]
	ldrh    r1, [r7, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [sp, #0xc]
	cmp     r0, r1
	blt     branch_225e77e
.thumb
branch_225e7a8: @ 225e7a8 :thumb
	ldr     r0, [sp, #0x8]
	ldrh    r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_225e7d8
	mov     r0, r7
	add     r0, #0x24
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r2, r7
	ldrh    r1, [r0, #0xa]
	mov     r0, r7
	add     r0, #0x26
	strb    r1, [r0, #0x0]
	mov     r1, #0x51
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	ldr     r1, [sp, #0x8]
	ldr     r3, [sp, #0x28]
	ldrh    r1, [r1, #0x6]
	add     r2, #0x20
	bl      0x20071ec
	str     r0, [r7, #0x1c]
.thumb
branch_225e7d8: @ 225e7d8 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225e7dc

.thumb
Function_225e7dc: @ 225e7dc :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldrh    r0, [r6, #0x18]
	cmp     r0, #0x0
	beq     branch_225e7fe
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_225e7fe
	mov     r5, r6
.thumb
branch_225e7ee: @ 225e7ee :thumb
	ldr     r0, [r5, #0x8]
	bl      0x20181c4
	ldrh    r0, [r6, #0x18]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_225e7ee
.thumb
branch_225e7fe: @ 225e7fe :thumb
	mov     r0, r6
	add     r0, #0x24
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_225e80e
	ldr     r0, [r6, #0x1c]
	bl      0x20181c4
.thumb
branch_225e80e: @ 225e80e :thumb
	pop     {r4-r6,pc}
@ 0x225e810

.thumb
Function_225e810: @ 225e810 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	ldrh    r4, [r5, #0x0]
	ldrh    r0, [r5, #0x18]
	ldrh    r6, [r5, #0x2]
	mov     r7, r1
	mul     r0, r4
	mov     r1, r6
	blx     _s32_div_f
	str     r0, [sp, #0x20]
	mov     r0, r5
	add     r0, #0x24
	ldrb    r0, [r0, #0x0]
	mov     r1, r6
	mul     r0, r4
	blx     _s32_div_f
	str     r0, [sp, #0x1c]
	add     r0, r4, #0x1
	mov     r1, r6
	blx     _s32_div_f
	strh    r1, [r5, #0x0]
	ldrh    r0, [r5, #0x18]
	cmp     r0, #0x0
	beq     branch_225e8a8
	ldrh    r1, [r5, #0x1a]
	ldr     r0, [sp, #0x20]
	cmp     r0, r1
	beq     branch_225e8a8
	mov     r6, #0x0
	strh    r0, [r5, #0x1a]
	mov     r4, r6
.thumb
branch_225e856: @ 225e856 :thumb
	add     r0, r5, r6
	ldrb    r0, [r0, #0x4]
	cmp     r0, #0x1
	bne     branch_225e8a0
	ldrh    r0, [r5, #0x1a]
	mov     r1, #0x20
	mov     r2, #0x0
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x10]
	str     r1, [sp, #0x0]
	mov     r1, #0x6
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	lsl     r1, r4, #24
	lsr     r3, r1, #24
	str     r3, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x6
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r7, #0x0]
	bl      0x20198e8
	ldr     r0, [r7, #0x0]
	mov     r1, #0x6
	bl      0x201c3c0
.thumb
branch_225e8a0: @ 225e8a0 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1da4 @ add r4, r4, #0x6
	cmp     r6, #0x3
	blt     branch_225e856
.thumb
branch_225e8a8: @ 225e8a8 :thumb
	mov     r0, r5
	add     r0, #0x24
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_225e8e8
	mov     r0, r5
	add     r0, #0x25
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x1c]
	cmp     r0, r1
	beq     branch_225e8e8
	mov     r1, r5
	add     r1, #0x25
	strb    r0, [r1, #0x0]
	ldr     r2, [r5, #0x20]
	mov     r1, r5
	add     r1, #0x26
	ldrb    r1, [r1, #0x0]
	add     r5, #0x25
	ldr     r3, [r2, #0xc]
	ldrb    r2, [r5, #0x0]
	mov     r0, #0x1f
	lsl     r1, r1, #5
	lsl     r2, r2, #5
	add     r2, r3, r2
	mov     r3, #0x20
	bl      0x201dc68
	cmp     r0, #0x0
	bne     branch_225e8e8
	bl      ErrorHandling
.thumb
branch_225e8e8: @ 225e8e8 :thumb
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x225e8ec

.thumb
Function_225e8ec: @ 225e8ec :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x3
	bcc     branch_225e8fc
	bl      ErrorHandling
.thumb
branch_225e8fc: @ 225e8fc :thumb
	add     r0, r5, r4
	strb    r6, [r0, #0x4]
	pop     {r4-r6,pc}
@ 0x225e902


.align 2, 0


.thumb
Function_225e904: @ 225e904 :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x4]
	strb    r1, [r0, #0x5]
	strb    r1, [r0, #0x6]
	strb    r1, [r0, #0x7]
	bx      lr
@ 0x225e910

.thumb
Function_225e910: @ 225e910 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r2
	ldrh    r2, [r0, #0x18]
	cmp     r2, #0x0
	beq     branch_225e95c
	ldrh    r2, [r0, #0x1a]
	lsl     r1, r1, #24
	lsr     r3, r1, #24
	lsl     r2, r2, #2
	add     r0, r0, r2
	ldr     r0, [r0, #0x10]
	mov     r2, #0x20
	str     r2, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r2, r0
	add     r2, #0xc
	str     r2, [sp, #0x8]
	mov     r2, #0x0
	str     r2, [sp, #0xc]
	str     r3, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x6
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x0]
	bl      0x20198e8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	bl      0x201c3c0
.thumb
branch_225e95c: @ 225e95c :thumb
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x225e960

.thumb
Function_225e960: @ 225e960 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x88
	str     r0, [sp, #0x2c]
	str     r2, [sp, #0x30]
	mov     r0, #0x0
	mov     r5, r1
	add     r2, sp, #0x44
	mov     r1, r0
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r2, #0x4b
	ldr     r0, [sp, #0x2c]
	lsl     r2, r2, #2
	str     r3, [sp, #0x34]
	blx     0x20d5124
	ldr     r0, [sp, #0x2c]
	mov     r2, #0x2
	strh    r2, [r0, #0x30]
	mov     r1, #0x80
	strh    r1, [r0, #0x32]
	ldr     r0, [r5, #0x4]
	ldr     r3, [sp, #0x34]
	str     r0, [sp, #0x44]
	add     r0, sp, #0x64
	str     r0, [sp, #0x48]
	mov     r0, #0x40
	str     r0, [sp, #0x58]
	str     r3, [sp, #0x60]
	str     r2, [sp, #0x5c]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r2, [sp, #0x4]
	mov     r2, #0xc
	str     r2, [sp, #0x8]
	ldr     r2, [sp, #0x34]
	add     r0, #0xf4
	str     r2, [sp, #0xc]
	add     r1, #0xc4
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, #0x14
	bl      0x2009b04
	ldr     r1, [sp, #0x2c]
	str     r0, [r1, #0x70]
	bl      0x200a640
	cmp     r0, #0x0
	bne     branch_225e9cc
	bl      ErrorHandling
.thumb
branch_225e9cc: @ 225e9cc :thumb
	ldr     r0, [sp, #0x2c]
	ldr     r0, [r0, #0x70]
	bl      0x2009d4c
	mov     r0, #0x15
	str     r0, [sp, #0x40]
	ldr     r4, [sp, #0x2c]
	mov     r0, #0x16
	str     r0, [sp, #0x3c]
	mov     r0, #0x17
	mov     r6, #0x0
	str     r0, [sp, #0x38]
	mov     r7, r4
.thumb
branch_225e9e6: @ 225e9e6 :thumb
	str     r6, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x34]
	mov     r1, #0x51
	str     r0, [sp, #0x8]
	mov     r0, #0x13
	lsl     r0, r0, #4
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r2, [sp, #0x40]
	mov     r3, #0x0
	bl      0x2009a4c
	str     r0, [r4, #0x6c]
	mov     r1, #0x51
	str     r6, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x34]
	lsl     r1, r1, #2
	str     r0, [sp, #0x8]
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r2, [sp, #0x3c]
	mov     r3, #0x0
	bl      0x2009bc4
	str     r0, [r4, #0x74]
	mov     r1, #0x51
	str     r6, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x34]
	lsl     r1, r1, #2
	str     r0, [sp, #0x8]
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r2, [sp, #0x38]
	mov     r3, #0x0
	bl      0x2009bc4
	str     r0, [r4, #0x78]
	ldr     r0, [r4, #0x6c]
	bl      0x200a3dc
	cmp     r0, #0x0
	bne     branch_225ea54
	bl      ErrorHandling
.thumb
branch_225ea54: @ 225ea54 :thumb
	ldr     r0, [r4, #0x6c]
	bl      0x2009d4c
	mov     r0, #0x0
	str     r6, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r6
	str     r0, [sp, #0x14]
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0x0
	str     r0, [sp, #0x18]
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r3, r6
	str     r0, [sp, #0x1c]
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x20]
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, sp, #0x64
	bl      0x20093b4
	add     r0, sp, #0x44
	bl      0x2021b90
	str     r0, [r7, #0x3c]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r1, #0x1
	ldr     r0, [r7, #0x3c]
	lsl     r1, r1, #12
	bl      0x2021ce4
	ldr     r0, [sp, #0x40]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1cc0 @ add r0, r0, #0x3
	str     r0, [sp, #0x40]
	ldr     r0, [sp, #0x3c]
	add     r4, #0x10
	.hword  0x1cc0 @ add r0, r0, #0x3
	str     r0, [sp, #0x3c]
	ldr     r0, [sp, #0x38]
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1cc0 @ add r0, r0, #0x3
	str     r0, [sp, #0x38]
	cmp     r6, #0xc
	blt     branch_225e9e6
	ldr     r0, [sp, #0x2c]
	bl      Function_225ebec
	mov     r1, #0x0
	ldr     r0, [sp, #0x30]
	mov     r2, r1
	bl      Function_225e51c
	add     sp, #0x88
	pop     {r3-r7,pc}
@ 0x225eae6


.align 2, 0


.thumb
Function_225eae8: @ 225eae8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [pc, #0x68] @ 0x225eb5c, (=0x5c1)
	mov     r1, #0x0
	bl      0x20057a4
	mov     r0, #0x0
	ldr     r7, [sp, #0x0]
	str     r0, [sp, #0x8]
.thumb
branch_225eafe: @ 225eafe :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      0x2021bd4
	ldr     r0, [r7, #0x6c]
	bl      0x200a4e4
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	bne     branch_225eb26
	ldr     r0, [r7, #0x70]
	bl      0x200a6dc
	mov     r0, #0x4d
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	ldr     r1, [r7, #0x70]
	bl      0x2009d68
.thumb
branch_225eb26: @ 225eb26 :thumb
	ldr     r5, [sp, #0x4]
	mov     r4, #0x0
	mov     r6, r7
.thumb
branch_225eb2c: @ 225eb2c :thumb
	cmp     r4, #0x1
	beq     branch_225eb3c
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r1, [r6, #0x6c]
	bl      0x2009d68
.thumb
branch_225eb3c: @ 225eb3c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_225eb2c
	ldr     r0, [sp, #0x0]
	add     r7, #0x10
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, #0xc
	blt     branch_225eafe
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225eb5c

.word 0x5c1 @ 0x225eb5c
.thumb
Function_225eb60: @ 225eb60 :thumb
	mov     r1, r0
	mov     r2, r0
	mov     r3, #0x0
	add     r1, #0x34
	strb    r3, [r1, #0x0]
	add     r2, #0x34
	strb    r3, [r2, #0x1]
	strb    r3, [r2, #0x2]
	mov     r1, r0
	strb    r3, [r2, #0x3]
	mov     r2, r0
	add     r1, #0x38
	strb    r3, [r1, #0x0]
	add     r2, #0x38
	strb    r3, [r2, #0x1]
	strb    r3, [r2, #0x2]
	strb    r3, [r2, #0x3]
	mov     r1, #0x2
	strh    r1, [r0, #0x30]
	mov     r1, #0x80
	strh    r1, [r0, #0x32]
	bx      lr
@ 0x225eb8c

.thumb
Function_225eb8c: @ 225eb8c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	add     r0, r5, r4
	mov     r6, r5
	str     r3, [sp, #0x0]
	mov     r1, #0x1
	add     r0, #0x34
	strb    r1, [r0, #0x0]
	add     r6, #0x38
	mov     r0, r2
	bl      Function_225ef04
	strb    r0, [r6, r4]
	lsl     r7, r4, #4
	ldrb    r2, [r6, r4]
	mov     r1, #0x30
	ldr     r3, [pc, #0x38] @ 0x225ebe8, (=0x225f1e0)
	mul     r1, r2
	add     r1, r3, r1
	add     r0, r5, r7
	add     r1, r1, r7
	bl      Function_225ecf0
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x18
	bcs     branch_225ebe4
	bl      Function_225ef04
	ldrb    r1, [r6, r4]
	cmp     r0, r1
	bne     branch_225ebe4
	cmp     r4, #0x2
	bcs     branch_225ebe4
	add     r0, r4, #0x1
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r1, #0x1
	bl      Function_225ed10
	add     r0, r5, r7
	mov     r1, #0x1
	bl      Function_225ed0c
.thumb
branch_225ebe4: @ 225ebe4 :thumb
	pop     {r3-r7,pc}
@ 0x225ebe6


.align 2


.word 0x225f1e0 @ 0x225ebe8
.thumb
Function_225ebec: @ 225ebec :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, r4
.thumb
branch_225ebf4: @ 225ebf4 :thumb
	ldr     r0, [r5, #0x3c]
	mov     r1, r6
	bl      0x2021cac
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xc
	blt     branch_225ebf4
	pop     {r4-r6,pc}
@ 0x225ec06


.align 2, 0


.thumb
Function_225ec08: @ 225ec08 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x32
	ldsh    r2, [r5, r1]
	cmp     r2, #0x0
	ble     branch_225ec36
	.hword  0x1e52 @ sub r2, r2, #0x1
	strh    r2, [r5, #0x32]
	ldsh    r1, [r5, r1]
	cmp     r1, #0x0
	bne     branch_225ec6a
	mov     r1, #0x30
	ldsh    r1, [r5, r1]
	mov     r2, r4
	bl      Function_225ec70
	cmp     r0, #0x1
	bne     branch_225ec6a
	ldr     r0, [pc, #0x3c] @ 0x225ec6c, (=0x5c1)
	bl      0x2005748
	pop     {r3-r5,pc}
@ 0x225ec36

.thumb
branch_225ec36: @ 225ec36 :thumb
	mov     r1, #0x30
	ldsh    r1, [r5, r1]
	mov     r2, r4
	bl      Function_225ecac
	cmp     r0, #0x1
	bne     branch_225ec6a
	mov     r1, #0x30
	ldsh    r0, [r5, r1]
	.hword  0x1e40 @ sub r0, r0, #0x1
	bmi     branch_225ec5a
	strh    r0, [r5, #0x30]
	ldsh    r1, [r5, r1]
	mov     r0, r5
	mov     r2, r4
	bl      Function_225ec70
	pop     {r3-r5,pc}
@ 0x225ec5a

.thumb
branch_225ec5a: @ 225ec5a :thumb
	ldr     r0, [pc, #0x10] @ 0x225ec6c, (=0x5c1)
	mov     r1, #0x0
	bl      0x20057a4
	mov     r0, #0x2
	strh    r0, [r5, #0x30]
	mov     r0, #0x80
	strh    r0, [r5, #0x32]
.thumb
branch_225ec6a: @ 225ec6a :thumb
	pop     {r3-r5,pc}
@ 0x225ec6c

.word 0x5c1 @ 0x225ec6c
.thumb
Function_225ec70: @ 225ec70 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	add     r0, r5, r4
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_225ec84
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225ec84

.thumb
branch_225ec84: @ 225ec84 :thumb
	lsl     r0, r4, #4
	add     r0, r5, r0
	mov     r1, r2
	bl      Function_225ed5c
	add     r0, r5, r4
	add     r0, #0x38
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x1
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x3c]
	bl      0x2021cac
	mov     r0, r5
	mov     r1, r4
	bl      Function_225eec4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225ecac

.thumb
Function_225ecac: @ 225ecac :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	add     r0, r5, r4
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_225ecc0
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225ecc0

.thumb
branch_225ecc0: @ 225ecc0 :thumb
	lsl     r0, r4, #4
	add     r0, r5, r0
	mov     r1, r2
	bl      Function_225ed14
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_225eec4
	cmp     r6, #0x1
	bne     branch_225ecea
	add     r0, r5, r4
	add     r0, #0x38
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x0
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x3c]
	bl      0x2021cac
.thumb
branch_225ecea: @ 225ecea :thumb
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x225ecee


.align 2, 0


.thumb
Function_225ecf0: @ 225ecf0 :thumb
	str     r1, [r0, #0xc]
	mov     r3, #0x0
	ldsh    r2, [r1, r3]
	strh    r2, [r0, #0x0]
	mov     r2, #0x2
	ldsh    r1, [r1, r2]
	add     r1, #0x10
	strh    r1, [r0, #0x2]
	strh    r3, [r0, #0x4]
	strh    r3, [r0, #0x6]
	strh    r3, [r0, #0x8]
	strh    r3, [r0, #0xa]
	bx      lr
@ 0x225ed0a


.align 2, 0


.thumb
Function_225ed0c: @ 225ed0c :thumb
	strh    r1, [r0, #0x8]
	bx      lr
@ 0x225ed10

.thumb
Function_225ed10: @ 225ed10 :thumb
	strh    r1, [r0, #0xa]
	bx      lr
@ 0x225ed14

.thumb
Function_225ed14: @ 225ed14 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r1, #0x4
	ldsh    r3, [r5, r1]
	ldr     r2, [r5, #0xc]
	mov     r1, #0x8
	ldsh    r1, [r2, r1]
	cmp     r3, r1
	ble     branch_225ed2c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225ed2c

.thumb
branch_225ed2c: @ 225ed2c :thumb
	bl      Function_225ed90
	mov     r0, #0x4
	ldsh    r0, [r5, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x4]
	mov     r0, #0x6
	ldsh    r0, [r5, r0]
	ldr     r1, [r5, #0xc]
	add     r2, r0, #0x1
	mov     r0, #0xc
	ldsh    r0, [r1, r0]
	cmp     r2, r0
	ble     branch_225ed4e
	mov     r0, #0x0
	strh    r0, [r5, #0x6]
	b       branch_225ed50
@ 0x225ed4e

.thumb
branch_225ed4e: @ 225ed4e :thumb
	strh    r2, [r5, #0x6]
.thumb
branch_225ed50: @ 225ed50 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_225ee68
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225ed5c

.thumb
Function_225ed5c: @ 225ed5c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x0
	strh    r1, [r5, #0x4]
	strh    r1, [r5, #0x6]
	bl      Function_225ed90
	mov     r0, r5
	mov     r1, r4
	bl      Function_225ee68
	pop     {r3-r5,pc}
@ 0x225ed76


.align 2, 0


.thumb
Function_225ed78: @ 225ed78 :thumb
	mov     r2, #0x0
	ldsh    r2, [r0, r2]
	lsl     r2, r2, #12
	str     r2, [r1, #0x0]
	mov     r2, #0x2
	ldsh    r0, [r0, r2]
	lsl     r3, r0, #12
	lsl     r0, r2, #19
	add     r0, r3, r0
	str     r0, [r1, #0x4]
	bx      lr
@ 0x225ed8e


.align 2, 0


.thumb
Function_225ed90: @ 225ed90 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0xa]
	ldr     r2, [r5, #0xc]
	cmp     r0, #0x0
	bne     branch_225eda8
	mov     r0, #0x6
	ldsh    r0, [r2, r0]
	sub     r0, #0x10
	lsl     r0, r0, #16
	asr     r7, r0, #16
	b       branch_225edac
@ 0x225eda8

.thumb
branch_225eda8: @ 225eda8 :thumb
	mov     r0, #0x6
	ldsh    r7, [r2, r0]
.thumb
branch_225edac: @ 225edac :thumb
	ldrh    r0, [r5, #0x8]
	cmp     r0, #0x0
	bne     branch_225edbe
	mov     r0, #0x2
	ldsh    r0, [r2, r0]
	add     r0, #0x10
	lsl     r0, r0, #16
	asr     r4, r0, #16
	b       branch_225edc2
@ 0x225edbe

.thumb
branch_225edbe: @ 225edbe :thumb
	mov     r0, #0x2
	ldsh    r4, [r2, r0]
.thumb
branch_225edc2: @ 225edc2 :thumb
	mov     r0, #0x0
	ldsh    r6, [r2, r0]
	mov     r0, #0x4
	ldsh    r1, [r5, r0]
	ldsh    r0, [r2, r0]
	sub     r0, r0, r6
	mul     r0, r1
	mov     r1, #0x8
	ldsh    r1, [r2, r1]
	blx     _s32_div_f
	add     r0, r6, r0
	strh    r0, [r5, #0x0]
	mov     r0, #0x4
	ldsh    r1, [r5, r0]
	sub     r0, r7, r4
	ldr     r2, [r5, #0xc]
	mul     r0, r1
	mov     r1, #0x8
	ldsh    r1, [r2, r1]
	blx     _s32_div_f
	add     r0, r4, r0
	strh    r0, [r5, #0x2]
	mov     r0, #0x6
	ldsh    r1, [r5, r0]
	ldr     r0, [pc, #0x68] @ 0x225ee60, (=0xffff)
	ldr     r4, [r5, #0xc]
	mul     r0, r1
	mov     r1, #0xc
	ldsh    r1, [r4, r1]
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x54] @ 0x225ee64, (=0x20f983c)
	ldsh    r6, [r0, r1]
	mov     r0, #0xa
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_225ee2a
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_225ee38
@ 0x225ee2a

.thumb
branch_225ee2a: @ 225ee2a :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_225ee38: @ 225ee38 :thumb
	blx     0x20e1740
	asr     r1, r0, #31
	asr     r3, r6, #31
	mov     r2, r6
	blx     0x20e1f1c
	mov     r3, #0x2
	mov     r4, #0x0
	lsl     r3, r3, #10
	add     r3, r0, r3
	adc     r1, r4
	lsl     r0, r1, #20
	lsr     r1, r3, #12
	orr     r1, r0
	ldsh    r2, [r5, r4]
	asr     r0, r1, #12
	add     r0, r2, r0
	strh    r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x225ee60

.word 0xffff @ 0x225ee60
.word 0x20f983c @ 0x225ee64
.thumb
Function_225ee68: @ 225ee68 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x0
	mov     r5, r0
	mov     r0, r4
	mov     r2, r1
	bl      Function_225e504
	ldrh    r0, [r5, #0x8]
	cmp     r0, #0x0
	bne     branch_225ee9c
	ldr     r1, [r5, #0xc]
	mov     r0, #0x2
	ldsh    r1, [r1, r0]
	ldsh    r2, [r5, r0]
	mov     r0, r1
	sub     r0, #0x10
	cmp     r2, r0
	ble     branch_225ee9c
	mov     r2, r1
	add     r2, #0x20
	lsl     r2, r2, #16
	mov     r0, r4
	asr     r2, r2, #16
	bl      Function_225e504
.thumb
branch_225ee9c: @ 225ee9c :thumb
	ldrh    r0, [r5, #0xa]
	cmp     r0, #0x0
	bne     branch_225eec0
	ldr     r1, [r5, #0xc]
	mov     r0, #0x6
	ldsh    r2, [r1, r0]
	mov     r0, #0x2
	ldsh    r0, [r5, r0]
	sub     r0, #0x10
	cmp     r0, r2
	bgt     branch_225eec0
	mov     r1, r2
	sub     r1, #0x20
	lsl     r1, r1, #16
	mov     r0, r4
	asr     r1, r1, #16
	bl      Function_225e504
.thumb
branch_225eec0: @ 225eec0 :thumb
	pop     {r3-r5,pc}
@ 0x225eec2


.align 2, 0


.thumb
Function_225eec4: @ 225eec4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	lsl     r0, r4, #4
	add     r0, r5, r0
	add     r1, sp, #0x0
	bl      Function_225ed78
	add     r0, r5, r4
	add     r0, #0x38
	ldrb    r0, [r0, #0x0]
	add     r1, sp, #0x0
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x3c]
	bl      0x2021c50
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x225eeec

.thumb
Function_225eeec: @ 225eeec :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r4, #0x18
	bcc     branch_225eef8
	bl      ErrorHandling
.thumb
branch_225eef8: @ 225eef8 :thumb
	ldr     r0, [pc, #0x4] @ 0x225ef00, (=0x225f0e8)
	lsl     r1, r4, #1
	ldrb    r0, [r0, r1]
	pop     {r4,pc}
@ 0x225ef00

.word 0x225f0e8 @ 0x225ef00
.thumb
Function_225ef04: @ 225ef04 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r4, #0x18
	bcc     branch_225ef10
	bl      ErrorHandling
.thumb
branch_225ef10: @ 225ef10 :thumb
	ldr     r0, [pc, #0x4] @ 0x225ef18, (=0x225f0e9)
	lsl     r1, r4, #1
	ldrb    r0, [r0, r1]
	pop     {r4,pc}
@ 0x225ef18

.word 0x225f0e9 @ 0x225ef18
.thumb
Function_225ef1c: @ 225ef1c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r2, #0xae
	mov     r5, r0
	mov     r0, #0x0
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, r4
	bl      0x200b144
	str     r0, [r5, #0x0]
	mov     r0, #0x8
	mov     r1, #0x40
	mov     r2, r4
	bl      0x200b368
	str     r0, [r5, #0x4]
	mov     r0, #0x80
	mov     r1, r4
	bl      0x2023790
	str     r0, [r5, #0x8]
	mov     r0, #0x80
	mov     r1, r4
	bl      0x2023790
	str     r0, [r5, #0xc]
	pop     {r3-r5,pc}
@ 0x225ef54

.thumb
Function_225ef54: @ 225ef54 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      0x200b190
	ldr     r0, [r4, #0x4]
	bl      0x200b3f0
	ldr     r0, [r4, #0x8]
	bl      0x20237bc
	ldr     r0, [r4, #0xc]
	bl      0x20237bc
	pop     {r4,pc}
@ 0x225ef72


.align 2, 0


.thumb
Function_225ef74: @ 225ef74 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r2, [r4, #0x8]
	bl      0x200b1b8
	ldr     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x225ef84

.thumb
Function_225ef84: @ 225ef84 :thumb
	ldr     r3, [pc, #0x4] @ 0x225ef8c, (=0x200b1b9)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x225ef8a


.align 2


.word 0x200b1b9 @ 0x225ef8c
.thumb
Function_225ef90: @ 225ef90 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r2, [r5, #0xc]
	mov     r1, #0x3
	bl      0x200b1b8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	mov     r2, r4
	bl      0x200bdd0
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, #0x8]
	ldr     r2, [r5, #0xc]
	bl      0x200c388
	ldr     r0, [r5, #0x8]
	pop     {r3-r5,pc}
@ 0x225efb8

.thumb
Function_225efb8: @ 225efb8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	mov     r6, r2
	bl      0x200c41c
	ldr     r0, [r5, #0x0]
	ldr     r2, [r5, #0xc]
	mov     r1, #0x3
	bl      0x200b1b8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	mov     r2, r4
	mov     r3, r6
	bl      0x200be08
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, #0x8]
	ldr     r2, [r5, #0xc]
	bl      0x200c388
	ldr     r0, [r5, #0x8]
	pop     {r4-r6,pc}
@ 0x225efea


.align 2, 0


.thumb
Function_225efec: @ 225efec :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_225eff2: @ 225eff2 :thumb
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      0x223164c
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bne     branch_225f008
	mov     r0, r4
	pop     {r3-r5,pc}

branch_225f008: @ 225f008 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x32
	blt     branch_225eff2
	mov     r0, #0x32
	pop     {r3-r5,pc}
@ 0x225f012


.align 2, 0
Unknown_225f014: @ 0x225f014
.incbin "./baserom/overlay/overlay_0069.bin", 0x2914, 0x225f440 - 0x225f014


@end 0x225f440




