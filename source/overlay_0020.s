
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram20, "ax"


.thumb
.globl Function_20_21d0d80
Function_20_21d0d80: @ 21d0d80 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x0
	beq     branch_21d0d92
	cmp     r1, #0x1
	beq     branch_21d0dca
	b       branch_21d0df2

branch_21d0d92: @ 21d0d92 :thumb
	mov     r1, #0x0
	mov     r0, #0x3e
	mov     r2, r1
	bl      Function_2004550
	mov     r2, #0x2
	mov     r0, #0x3
	mov     r1, #0x22
	lsl     r2, r2, #14
	bl      Function_2017fc8
	mov     r2, #0xa
	mov     r0, #0x3
	mov     r1, #0x23
	lsl     r2, r2, #14
	bl      Function_2017fc8
	mov     r0, r5
	bl      Function_21d0ec8
	ldr     r0, [r0, #0x14]
	mov     r1, #0x0
	bl      Function_21d21a0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0df2

branch_21d0dca: @ 21d0dca :thumb
	bl      LoadOverlayData1c
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	bl      Function_21d21f8
	cmp     r0, #0x0
	beq     branch_21d0df2
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x2
	bne     branch_21d0de8
	ldr     r0, [r4, #0x14]
	bl      Function_21d2df4
	b       branch_21d0dea
@ 0x21d0de8

.thumb
branch_21d0de8: @ 21d0de8 :thumb
	mov     r0, #0x0
.thumb
branch_21d0dea: @ 21d0dea :thumb
	add     r4, #0x64
	strb    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0df2

.thumb
branch_21d0df2: @ 21d0df2 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d0df6


.align 2, 0
.thumb
.globl Function_20_21d0df8
Function_20_21d0df8: @ 21d0df8 :thumb
	push    {r4,lr}
	bl      LoadOverlayData1c
	mov     r4, r0
	ldr     r0, [pc, #0x30] @ 0x21d0e34, (=RAM_21bf67c)
	ldr     r1, [r0, #RAM_21bf67c_48_KeyNewPressed2]
	strh    r1, [r4, #0x30]
	ldr     r1, [r0, #RAM_21bf67c_44_Key]
	strh    r1, [r4, #0x32]
	ldr     r0, [r0, #RAM_21bf67c_4c_Key]
	strh    r0, [r4, #0x34]

	ldr     r0, [r4, #0x40]
	bl      Function_202404c
	ldr     r2, [r4, #0x2c]
	cmp     r2, #0x0
	beq     branch_21d0e26
	mov     r0, r4
	add     r4, #0x28
	mov     r1, r4
	blx     r2
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d0e26

.thumb
branch_21d0e26: @ 21d0e26 :thumb
	mov     r1, r4
	ldr     r2, [r4, #0x20]
	mov     r0, r4
	add     r1, #0x1c
	blx     r2
	pop     {r4,pc}
@ 0x21d0e32

.align 2
.word RAM_21bf67c @ 0x21d0e34



.thumb
Function_21d0e38: @ 21d0e38 :thumb
	push    {r4,lr}
	mov     r4, r2
	cmp     r1, #0x3
	bhi     branch_21d0ea0
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d0e4c

Jumppoints_21d0e4c:
.hword branch_21d0e54 - Jumppoints_21d0e4c - 2
.hword branch_21d0e74 - Jumppoints_21d0e4c - 2
.hword branch_21d0e96 - Jumppoints_21d0e4c - 2
.hword branch_21d0e74 - Jumppoints_21d0e4c - 2
.thumb
branch_21d0e54: @ 21d0e54 :thumb
	str     r0, [r4, #0x38]
	cmp     r0, #0x2
	beq     branch_21d0e60
	cmp     r0, #0x3
	beq     branch_21d0e6a
	pop     {r4,pc}
@ 0x21d0e60

.thumb
branch_21d0e60: @ 21d0e60 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x19
	bl      Function_21d21a0
	pop     {r4,pc}
@ 0x21d0e6a

.thumb
branch_21d0e6a: @ 21d0e6a :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1a
	bl      Function_21d21a0
	pop     {r4,pc}
@ 0x21d0e74

.thumb
branch_21d0e74: @ 21d0e74 :thumb
	cmp     r0, #0x2
	beq     branch_21d0e7e
	cmp     r0, #0x3
	beq     branch_21d0e88
	b       branch_21d0e90
@ 0x21d0e7e

.thumb
branch_21d0e7e: @ 21d0e7e :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1b
	bl      Function_21d21a0
	b       branch_21d0e90
@ 0x21d0e88

.thumb
branch_21d0e88: @ 21d0e88 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1c
	bl      Function_21d21a0
.thumb
branch_21d0e90: @ 21d0e90 :thumb
	mov     r0, #0x4
	str     r0, [r4, #0x38]
	pop     {r4,pc}
@ 0x21d0e96

.thumb
branch_21d0e96: @ 21d0e96 :thumb
	.hword  0x1e81 @ sub r1, r0, #0x2
	cmp     r1, #0x1
	bhi     branch_21d0ea4
	str     r0, [r4, #0x38]
	pop     {r4,pc}
@ 0x21d0ea0

.thumb
branch_21d0ea0: @ 21d0ea0 :thumb
	mov     r0, #0x4
	str     r0, [r4, #0x38]
.thumb
branch_21d0ea4: @ 21d0ea4 :thumb
	pop     {r4,pc}
@ 0x21d0ea6


.align 2, 0
.thumb
.globl Function_20_21d0ea8
Function_20_21d0ea8: @ 21d0ea8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      LoadOverlayData1c
	mov     r1, r4
	bl      Function_21d1014
	mov     r0, #0x22
	bl      Function_201807c
	mov     r0, #0x23
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d0ec6


.align 2, 0


.thumb
Function_21d0ec8: @ 21d0ec8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, #0x68
	mov     r2, #0x22
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r4, r0
	mov     r0, r5
	bl      LoadPtrToOverWorldDataIn18
	str     r0, [r4, #0x0]
	bl      Function_2097550
	str     r0, [r4, #0x4]
	mov     r1, r4
	mov     r2, r4
	ldr     r0, [r4, #0x0]
	add     r1, #0x10
	add     r2, #0x8
	bl      Function_209756c
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x2
	bne     branch_21d0f04
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x60
	add     r1, #0x8
	bl      Function_21d0f64
branch_21d0f04: @ 21d0f04 :thumb

	ldr     r1, [r4, #0x0]
	mov     r0, #0x22
	bl      Function_20998ec
	str     r0, [r4, #0x18]
	ldr     r1, [r4, #0x18]
	mov     r0, r4
	bl      Function_21d2098
	str     r0, [r4, #0x14]
	mov     r0, #0x22
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x34] @ 0x21d0f54, (=0x21d5154)
	ldr     r2, [pc, #0x38] @ 0x21d0f58, (=0x21d0e39)
	mov     r1, #0x5
	mov     r3, r4
	bl      Function_2023fcc
	str     r0, [r4, #0x40]
	mov     r1, #0x0
	str     r1, [r4, #0x44]
	mov     r0, r4
	str     r1, [r4, #0x48]
	add     r0, #0x65
	strb    r1, [r0, #0x0]
	str     r1, [r4, #0x2c]
	ldr     r0, [pc, #0x20] @ 0x21d0f5c, (=0x21d103d)
	str     r1, [r4, #0x28]
	str     r0, [r4, #0x20]
	mov     r0, r4
	str     r1, [r4, #0x1c]
	add     r0, #0x4e
	strh    r1, [r0, #0x0]
	ldr     r1, [pc, #0x18] @ 0x21d0f60, (=0x21d1c5d)
	mov     r0, r4
	bl      Function_21d1c4c
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d0f52

.align 2
.word 0x21d5154 @ 0x21d0f54
.word 0x21d0e39 @ 0x21d0f58
.word 0x21d103d @ 0x21d0f5c
.word 0x21d1c5d @ 0x21d0f60



.thumb
Function_21d0f64: @ 21d0f64 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_2014c80
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	ldsh    r0, [r5, r0]
	bl      Function_2014cd4
	strb    r0, [r5, #0x3]
	mov     r0, r4
	bl      Function_2014c84
	strb    r0, [r5, #0x2]
	pop     {r3-r5,pc}
@ 0x21d0f86


.align 2, 0


.thumb
Function_21d0f88: @ 21d0f88 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x2
	mov     r4, r1
	ldsb    r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r5, #0x2]
	ldsb    r1, [r5, r0]
	mov     r0, #0x3
	ldsb    r0, [r5, r0]
	cmp     r1, r0
	blt     branch_21d0fbc
	mov     r1, #0x0
	strb    r1, [r5, #0x2]
	ldsh    r0, [r5, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x0]
	ldsh    r0, [r5, r1]
	cmp     r0, #0x5
	blt     branch_21d0fb2
	strh    r1, [r5, #0x0]
.thumb
branch_21d0fb2: @ 21d0fb2 :thumb
	mov     r0, #0x0
	ldsh    r0, [r5, r0]
	bl      Function_2014cd4
	strb    r0, [r5, #0x3]
.thumb
branch_21d0fbc: @ 21d0fbc :thumb
	mov     r1, #0x0
	mov     r2, #0x2
	ldsh    r1, [r5, r1]
	ldsb    r2, [r5, r2]
	mov     r0, r4
	bl      Function_2014ce0
	pop     {r3-r5,pc}
@ 0x21d0fcc

.thumb
Function_21d0fcc: @ 21d0fcc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x2
	mov     r4, r1
	ldsb    r1, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r5, #0x2]
	ldsb    r0, [r5, r0]
	cmp     r0, #0x0
	bge     branch_21d1004
	mov     r0, #0x0
	ldsh    r1, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r5, #0x0]
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	bge     branch_21d0ff2
	mov     r0, #0x4
	strh    r0, [r5, #0x0]
.thumb
branch_21d0ff2: @ 21d0ff2 :thumb
	mov     r0, #0x0
	ldsh    r0, [r5, r0]
	bl      Function_2014cd4
	strb    r0, [r5, #0x3]
	mov     r0, #0x3
	ldsb    r0, [r5, r0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, #0x2]
.thumb
branch_21d1004: @ 21d1004 :thumb
	mov     r1, #0x0
	mov     r2, #0x2
	ldsh    r1, [r5, r1]
	ldsb    r2, [r5, r2]
	mov     r0, r4
	bl      Function_2014ce0
	pop     {r3-r5,pc}
@ 0x21d1014

.thumb
Function_21d1014: @ 21d1014 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x40]
	mov     r4, r1
	bl      Function_2024034
	ldr     r0, [r5, #0x14]
	bl      Function_21d2128
	ldr     r0, [r5, #0x18]
	bl      Function_209992c
	mov     r0, r4
	bl      FreeSomeDataAndStore0InOverlayData1c
	pop     {r3-r5,pc}
@ 0x21d1034

.thumb
Function_21d1034: @ 21d1034 :thumb
	str     r1, [r0, #0x20]
	mov     r1, #0x0
	str     r1, [r0, #0x1c]
	bx      lr
@ 0x21d103c

.thumb
Function_21d103c: @ 21d103c :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x4]
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x8] @ 0x21d104c, (=0x21d5148)
	ldr     r2, [r2, r3]
	blx     r2
	pop     {r3,pc}
@ 0x21d104a


.align 2


.word 0x21d5148 @ 0x21d104c
.thumb
Function_21d1050: @ 21d1050 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1066
	cmp     r0, #0x1
	beq     branch_21d10f0
	cmp     r0, #0x2
	beq     branch_21d1104
	b       branch_21d1116
@ 0x21d1066

.thumb
branch_21d1066: @ 21d1066 :thumb
	ldr     r1, [r5, #0x38]
	cmp     r1, #0x0
	bne     branch_21d1076
	mov     r0, r5
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d108c
.thumb
branch_21d1076: @ 21d1076 :thumb
	cmp     r1, #0x1
	bne     branch_21d1084
	mov     r0, r5
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_21d108c
.thumb
branch_21d1084: @ 21d1084 :thumb
	ldrh    r0, [r5, #0x30]
	mov     r1, #0x4
	tst     r1, r0
	beq     branch_21d1096
.thumb
branch_21d108c: @ 21d108c :thumb
	ldr     r1, [pc, #0x8c] @ 0x21d111c, (=0x21d1f39)
	mov     r0, r5
	bl      Function_21d1c4c
	b       branch_21d1116
@ 0x21d1096

.thumb
branch_21d1096: @ 21d1096 :thumb
	mov     r1, #0x88
	tst     r1, r0
	beq     branch_21d10b8
	ldr     r0, [pc, #0x80] @ 0x21d1120, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x4c
	strh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x4
	bl      Function_21d21a0
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d1116
@ 0x21d10b8

.thumb
branch_21d10b8: @ 21d10b8 :thumb
	mov     r1, #0x2
	tst     r1, r0
	beq     branch_21d10ce
	ldr     r0, [pc, #0x60] @ 0x21d1120, (=0x5dc)
	bl      Function_2005748
	ldr     r1, [pc, #0x5c] @ 0x21d1124, (=0x21d1dbd)
	mov     r0, r5
	bl      Function_21d1c4c
	b       branch_21d1116
@ 0x21d10ce

.thumb
branch_21d10ce: @ 21d10ce :thumb
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_21d1116
	ldr     r0, [pc, #0x48] @ 0x21d1120, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x50
	strh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x6
	bl      Function_21d21a0
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	b       branch_21d1116
@ 0x21d10f0

.thumb
branch_21d10f0: @ 21d10f0 :thumb
	ldr     r0, [r5, #0x14]
	bl      Function_21d21f8
	cmp     r0, #0x0
	beq     branch_21d1116
	ldr     r1, [pc, #0x2c] @ 0x21d1128, (=0x21d1469)
	mov     r0, r5
	bl      Function_21d1034
	b       branch_21d1116
@ 0x21d1104

.thumb
branch_21d1104: @ 21d1104 :thumb
	ldr     r0, [r5, #0x14]
	bl      Function_21d21f8
	cmp     r0, #0x0
	beq     branch_21d1116
	ldr     r1, [pc, #0x1c] @ 0x21d112c, (=0x21d15a1)
	mov     r0, r5
	bl      Function_21d1034
.thumb
branch_21d1116: @ 21d1116 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d111a


.align 2


.word 0x21d1f39 @ 0x21d111c
.word 0x5dc @ 0x21d1120
.word 0x21d1dbd @ 0x21d1124
.word 0x21d1469 @ 0x21d1128
.word 0x21d15a1 @ 0x21d112c
.thumb
Function_21d1130: @ 21d1130 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1146
	cmp     r0, #0x1
	beq     branch_21d1220
	cmp     r0, #0x2
	beq     branch_21d1234
	b       branch_21d1246
@ 0x21d1146

.thumb
branch_21d1146: @ 21d1146 :thumb
	ldr     r1, [r5, #0x38]
	cmp     r1, #0x0
	bne     branch_21d1156
	mov     r0, r5
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d116c
.thumb
branch_21d1156: @ 21d1156 :thumb
	cmp     r1, #0x1
	bne     branch_21d1164
	mov     r0, r5
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_21d116c
.thumb
branch_21d1164: @ 21d1164 :thumb
	ldrh    r0, [r5, #0x30]
	mov     r1, #0x4
	tst     r1, r0
	beq     branch_21d1176
.thumb
branch_21d116c: @ 21d116c :thumb
	ldr     r1, [pc, #0xdc] @ 0x21d124c, (=0x21d1f39)
	mov     r0, r5
	bl      Function_21d1c4c
	b       branch_21d1246
@ 0x21d1176

.thumb
branch_21d1176: @ 21d1176 :thumb
	mov     r1, #0x88
	tst     r1, r0
	beq     branch_21d1198
	ldr     r0, [pc, #0xd0] @ 0x21d1250, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x4c
	strh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x4
	bl      Function_21d21a0
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d1246
@ 0x21d1198

.thumb
branch_21d1198: @ 21d1198 :thumb
	mov     r1, #0x20
	tst     r1, r0
	beq     branch_21d11c0
	mov     r0, r5
	add     r0, #0x4e
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1246
	ldr     r0, [pc, #0xa4] @ 0x21d1250, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x4e
	strh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x14]
	mov     r1, #0xc
	bl      Function_21d21a0
	b       branch_21d1246
@ 0x21d11c0

.thumb
branch_21d11c0: @ 21d11c0 :thumb
	mov     r1, #0x10
	tst     r1, r0
	beq     branch_21d11e8
	mov     r0, r5
	add     r0, #0x4e
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d1246
	ldr     r0, [pc, #0x7c] @ 0x21d1250, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0x4e
	strh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x14]
	mov     r1, #0xc
	bl      Function_21d21a0
	b       branch_21d1246
@ 0x21d11e8

.thumb
branch_21d11e8: @ 21d11e8 :thumb
	mov     r1, #0x2
	tst     r1, r0
	beq     branch_21d11fe
	ldr     r0, [pc, #0x60] @ 0x21d1250, (=0x5dc)
	bl      Function_2005748
	ldr     r1, [pc, #0x5c] @ 0x21d1254, (=0x21d1dbd)
	mov     r0, r5
	bl      Function_21d1c4c
	b       branch_21d1246
@ 0x21d11fe

.thumb
branch_21d11fe: @ 21d11fe :thumb
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_21d1246
	ldr     r0, [pc, #0x48] @ 0x21d1250, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x50
	strh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x6
	bl      Function_21d21a0
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	b       branch_21d1246
@ 0x21d1220

.thumb
branch_21d1220: @ 21d1220 :thumb
	ldr     r0, [r5, #0x14]
	bl      Function_21d21f8
	cmp     r0, #0x0
	beq     branch_21d1246
	ldr     r1, [pc, #0x2c] @ 0x21d1258, (=0x21d1469)
	mov     r0, r5
	bl      Function_21d1034
	b       branch_21d1246
@ 0x21d1234

.thumb
branch_21d1234: @ 21d1234 :thumb
	ldr     r0, [r5, #0x14]
	bl      Function_21d21f8
	cmp     r0, #0x0
	beq     branch_21d1246
	ldr     r1, [pc, #0x1c] @ 0x21d125c, (=0x21d15a1)
	mov     r0, r5
	bl      Function_21d1034
.thumb
branch_21d1246: @ 21d1246 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d124a


.align 2


.word 0x21d1f39 @ 0x21d124c
.word 0x5dc @ 0x21d1250
.word 0x21d1dbd @ 0x21d1254
.word 0x21d1469 @ 0x21d1258
.word 0x21d15a1 @ 0x21d125c
.thumb
Function_21d1260: @ 21d1260 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x4
	bhi     branch_21d12dc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d1278

Jumppoints_21d1278:
.hword branch_21d1282 - Jumppoints_21d1278 - 2
.hword branch_21d1292 - Jumppoints_21d1278 - 2
.hword branch_21d1416 - Jumppoints_21d1278 - 2
.hword branch_21d1428 - Jumppoints_21d1278 - 2
.hword branch_21d143c - Jumppoints_21d1278 - 2
.thumb
branch_21d1282: @ 21d1282 :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_21d2df4
	mov     r1, r4
	add     r1, #0x64
	strb    r0, [r1, #0x0]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
.thumb
branch_21d1292: @ 21d1292 :thumb
	ldr     r1, [r4, #0x38]
	cmp     r1, #0x0
	bne     branch_21d12a2
	mov     r0, r4
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d12b8
.thumb
branch_21d12a2: @ 21d12a2 :thumb
	cmp     r1, #0x1
	bne     branch_21d12b0
	mov     r0, r4
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_21d12b8
.thumb
branch_21d12b0: @ 21d12b0 :thumb
	ldrh    r0, [r4, #0x30]
	mov     r1, #0x4
	tst     r1, r0
	beq     branch_21d12c2
.thumb
branch_21d12b8: @ 21d12b8 :thumb
	ldr     r1, [pc, #0x198] @ 0x21d1454, (=0x21d1f39)
	mov     r0, r4
	bl      Function_21d1c4c
	b       branch_21d144e
@ 0x21d12c2

.thumb
branch_21d12c2: @ 21d12c2 :thumb
	mov     r1, #0x40
	tst     r1, r0
	beq     branch_21d12fc
	mov     r0, r4
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d12dc
	mov     r0, r4
	add     r0, #0x4e
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d12de
.thumb
branch_21d12dc: @ 21d12dc :thumb
	b       branch_21d144e
@ 0x21d12de

.thumb
branch_21d12de: @ 21d12de :thumb
	ldr     r0, [pc, #0x178] @ 0x21d1458, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	add     r0, #0x4e
	ldrh    r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x4e
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x14]
	mov     r1, #0xc
	bl      Function_21d21a0
	b       branch_21d144e
@ 0x21d12fc

.thumb
branch_21d12fc: @ 21d12fc :thumb
	mov     r1, #0x80
	tst     r0, r1
	beq     branch_21d134c
	ldr     r0, [pc, #0x154] @ 0x21d1458, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	add     r0, #0x64
	ldrb    r2, [r0, #0x0]
	cmp     r2, #0x0
	beq     branch_21d1336
	mov     r0, r4
	add     r0, #0x4e
	ldrh    r1, [r0, #0x0]
	.hword  0x1e50 @ sub r0, r2, #0x1
	cmp     r1, r0
	bge     branch_21d1336
	mov     r0, r4
	add     r0, #0x4e
	ldrh    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x4e
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x14]
	mov     r1, #0xc
	bl      Function_21d21a0
	b       branch_21d134c
@ 0x21d1336

.thumb
branch_21d1336: @ 21d1336 :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x4c
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x14]
	mov     r1, #0x4
	bl      Function_21d21a0
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d144e
@ 0x21d134c

.thumb
branch_21d134c: @ 21d134c :thumb
	ldrh    r1, [r4, #0x30]
	mov     r0, #0x8
	tst     r0, r1
	bne     branch_21d1366
	mov     r0, #0x1
	mov     r2, r1
	and     r2, r0
	beq     branch_21d1382
	mov     r0, r4
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d1382
.thumb
branch_21d1366: @ 21d1366 :thumb
	ldr     r0, [pc, #0xf0] @ 0x21d1458, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x4c
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x14]
	mov     r1, #0x4
	bl      Function_21d21a0
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d144e
@ 0x21d1382

.thumb
branch_21d1382: @ 21d1382 :thumb
	ldrh    r0, [r4, #0x34]
	mov     r3, #0x20
	tst     r3, r0
	beq     branch_21d13b2
	ldr     r0, [pc, #0xcc] @ 0x21d1458, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x4e
	strh    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x60
	add     r1, #0x8
	bl      Function_21d0fcc
	ldr     r0, [r4, #0x14]
	mov     r1, #0x3
	bl      Function_21d21a0
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_21d144e
@ 0x21d13b2

.thumb
branch_21d13b2: @ 21d13b2 :thumb
	mov     r3, #0x10
	tst     r0, r3
	beq     branch_21d13e0
	ldr     r0, [pc, #0x9c] @ 0x21d1458, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x4e
	strh    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x60
	add     r1, #0x8
	bl      Function_21d0f88
	ldr     r0, [r4, #0x14]
	mov     r1, #0x3
	bl      Function_21d21a0
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_21d144e
@ 0x21d13e0

.thumb
branch_21d13e0: @ 21d13e0 :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_21d13f6
	ldr     r0, [pc, #0x70] @ 0x21d1458, (=0x5dc)
	bl      Function_2005748
	ldr     r1, [pc, #0x6c] @ 0x21d145c, (=0x21d1dbd)
	mov     r0, r4
	bl      Function_21d1c4c
	b       branch_21d144e
@ 0x21d13f6

.thumb
branch_21d13f6: @ 21d13f6 :thumb
	cmp     r2, #0x0
	beq     branch_21d144e
	ldr     r0, [pc, #0x5c] @ 0x21d1458, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x50
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x14]
	mov     r1, #0x6
	bl      Function_21d21a0
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	b       branch_21d144e
@ 0x21d1416

.thumb
branch_21d1416: @ 21d1416 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x3
	bl      Function_21d2210
	cmp     r0, #0x0
	beq     branch_21d144e
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	b       branch_21d144e
@ 0x21d1428

.thumb
branch_21d1428: @ 21d1428 :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_21d21f8
	cmp     r0, #0x0
	beq     branch_21d144e
	ldr     r1, [pc, #0x2c] @ 0x21d1460, (=0x21d1469)
	mov     r0, r4
	bl      Function_21d1034
	b       branch_21d144e
@ 0x21d143c

.thumb
branch_21d143c: @ 21d143c :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_21d21f8
	cmp     r0, #0x0
	beq     branch_21d144e
	ldr     r1, [pc, #0x1c] @ 0x21d1464, (=0x21d15a1)
	mov     r0, r4
	bl      Function_21d1034
.thumb
branch_21d144e: @ 21d144e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d1452


.align 2


.word 0x21d1f39 @ 0x21d1454
.word 0x5dc @ 0x21d1458
.word 0x21d1dbd @ 0x21d145c
.word 0x21d1469 @ 0x21d1460
.word 0x21d15a1 @ 0x21d1464
.thumb
Function_21d1468: @ 21d1468 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x5
	bls     branch_21d1476
	b       branch_21d1588
@ 0x21d1476

.thumb
branch_21d1476: @ 21d1476 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d1482

Jumppoints_21d1482:
.hword branch_21d148e - Jumppoints_21d1482 - 2
.hword branch_21d1558 - Jumppoints_21d1482 - 2
.hword branch_21d1564 - Jumppoints_21d1482 - 2
.hword branch_21d1570 - Jumppoints_21d1482 - 2
.hword branch_21d1570 - Jumppoints_21d1482 - 2
.hword branch_21d1576 - Jumppoints_21d1482 - 2
.thumb
branch_21d148e: @ 21d148e :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_21d21f8
	cmp     r0, #0x0
	beq     branch_21d1588
	ldr     r1, [r4, #0x38]
	cmp     r1, #0x0
	bne     branch_21d14a8
	mov     r0, r4
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d14be
.thumb
branch_21d14a8: @ 21d14a8 :thumb
	cmp     r1, #0x1
	bne     branch_21d14b6
	mov     r0, r4
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_21d14be
.thumb
branch_21d14b6: @ 21d14b6 :thumb
	ldrh    r0, [r4, #0x30]
	mov     r1, #0x4
	tst     r1, r0
	beq     branch_21d14c8
.thumb
branch_21d14be: @ 21d14be :thumb
	ldr     r1, [pc, #0xcc] @ 0x21d158c, (=0x21d1f39)
	mov     r0, r4
	bl      Function_21d1c4c
	b       branch_21d1588
@ 0x21d14c8

.thumb
branch_21d14c8: @ 21d14c8 :thumb
	mov     r1, #0x30
	tst     r1, r0
	beq     branch_21d14ee
	ldr     r0, [pc, #0xc0] @ 0x21d1590, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	add     r0, #0x4c
	ldrh    r1, [r0, #0x0]
	mov     r0, #0x1
	eor     r1, r0
	mov     r0, r4
	add     r0, #0x4c
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x14]
	mov     r1, #0xd
	bl      Function_21d21a0
	b       branch_21d1588
@ 0x21d14ee

.thumb
branch_21d14ee: @ 21d14ee :thumb
	mov     r1, #0x8
	tst     r1, r0
	beq     branch_21d150c
	ldr     r0, [pc, #0x98] @ 0x21d1590, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x4c
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x14]
	mov     r1, #0xd
	bl      Function_21d21a0
	b       branch_21d1588
@ 0x21d150c

.thumb
branch_21d150c: @ 21d150c :thumb
	mov     r1, #0x40
	tst     r1, r0
	beq     branch_21d1526
	ldr     r0, [pc, #0x7c] @ 0x21d1590, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [r4, #0x14]
	mov     r1, #0x5
	bl      Function_21d21a0
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	b       branch_21d1588
@ 0x21d1526

.thumb
branch_21d1526: @ 21d1526 :thumb
	mov     r1, #0x1
	tst     r1, r0
	beq     branch_21d1546
	ldr     r0, [pc, #0x60] @ 0x21d1590, (=0x5dc)
	bl      Function_2005748
	add     r4, #0x4c
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_21d1540
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d1588
@ 0x21d1540

.thumb
branch_21d1540: @ 21d1540 :thumb
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_21d1588
@ 0x21d1546

.thumb
branch_21d1546: @ 21d1546 :thumb
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_21d1588
	ldr     r0, [pc, #0x40] @ 0x21d1590, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_21d1588
@ 0x21d1558

.thumb
branch_21d1558: @ 21d1558 :thumb
	mov     r1, #0x3
	str     r1, [r5, #0x0]
	ldr     r1, [pc, #0x34] @ 0x21d1594, (=0x21d1c91)
	bl      Function_21d1c4c
	b       branch_21d1588
@ 0x21d1564

.thumb
branch_21d1564: @ 21d1564 :thumb
	mov     r1, #0x4
	str     r1, [r5, #0x0]
	ldr     r1, [pc, #0x2c] @ 0x21d1598, (=0x21d1dbd)
	bl      Function_21d1c4c
	b       branch_21d1588
@ 0x21d1570

.thumb
branch_21d1570: @ 21d1570 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	b       branch_21d1588
@ 0x21d1576

.thumb
branch_21d1576: @ 21d1576 :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_21d21f8
	cmp     r0, #0x0
	beq     branch_21d1588
	ldr     r1, [pc, #0x18] @ 0x21d159c, (=0x21d103d)
	mov     r0, r4
	bl      Function_21d1034
.thumb
branch_21d1588: @ 21d1588 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d158c

.word 0x21d1f39 @ 0x21d158c
.word 0x5dc @ 0x21d1590
.word 0x21d1c91 @ 0x21d1594
.word 0x21d1dbd @ 0x21d1598
.word 0x21d103d @ 0x21d159c
.thumb
Function_21d15a0: @ 21d15a0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d15b8
	cmp     r0, #0x1
	beq     branch_21d16ac
	cmp     r0, #0x2
	bne     branch_21d15b6
	b       branch_21d16c0
@ 0x21d15b6

.thumb
branch_21d15b6: @ 21d15b6 :thumb
	b       branch_21d16d0
@ 0x21d15b8

.thumb
branch_21d15b8: @ 21d15b8 :thumb
	ldr     r0, [r5, #0x14]
	mov     r1, #0xf
	bl      Function_21d2210
	cmp     r0, #0x0
	bne     branch_21d15c6
	b       branch_21d16d0
@ 0x21d15c6

.thumb
branch_21d15c6: @ 21d15c6 :thumb
	ldr     r1, [r5, #0x38]
	cmp     r1, #0x0
	bne     branch_21d15d6
	mov     r0, r5
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d15ec
.thumb
branch_21d15d6: @ 21d15d6 :thumb
	cmp     r1, #0x1
	bne     branch_21d15e4
	mov     r0, r5
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_21d15ec
.thumb
branch_21d15e4: @ 21d15e4 :thumb
	ldrh    r0, [r5, #0x30]
	mov     r1, #0x4
	tst     r1, r0
	beq     branch_21d1618
.thumb
branch_21d15ec: @ 21d15ec :thumb
	ldr     r0, [pc, #0xe4] @ 0x21d16d4, (=0x5e4)
	bl      Function_2005748
	mov     r0, r5
	add     r0, #0x65
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x1
	eor     r1, r0
	mov     r0, r5
	add     r0, #0x65
	strb    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x50
	strh    r1, [r0, #0x0]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x18
	bl      Function_21d21a0
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	b       branch_21d16d0
@ 0x21d1618

.thumb
branch_21d1618: @ 21d1618 :thumb
	mov     r1, #0x2
	tst     r1, r0
	beq     branch_21d1636
	ldr     r0, [pc, #0xb8] @ 0x21d16d8, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [r5, #0x14]
	mov     r1, #0x7
	bl      Function_21d21a0
	ldr     r0, [pc, #0xac] @ 0x21d16dc, (=0x21d103d)
	str     r0, [r5, #0x24]
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d16d0
@ 0x21d1636

.thumb
branch_21d1636: @ 21d1636 :thumb
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_21d1692
	mov     r0, r5
	add     r0, #0x50
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0xfe
	bne     branch_21d165e
	ldr     r0, [pc, #0x90] @ 0x21d16d8, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [r5, #0x14]
	mov     r1, #0x7
	bl      Function_21d21a0
	ldr     r0, [pc, #0x84] @ 0x21d16dc, (=0x21d103d)
	str     r0, [r5, #0x24]
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d16d0
@ 0x21d165e

.thumb
branch_21d165e: @ 21d165e :thumb
	mov     r0, r5
	bl      Function_21d16e8
	cmp     r0, #0x0
	beq     branch_21d168a
	ldr     r0, [pc, #0x6c] @ 0x21d16d8, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	add     r0, #0x54
	mov     r1, r5
	bl      Function_21d1884
	ldr     r0, [pc, #0x64] @ 0x21d16e0, (=0x21d18e5)
	mov     r1, #0x8
	str     r0, [r5, #0x24]
	ldr     r0, [r5, #0x14]
	bl      Function_21d21a0
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d16d0
@ 0x21d168a

.thumb
branch_21d168a: @ 21d168a :thumb
	ldr     r0, [pc, #0x58] @ 0x21d16e4, (=0x5f2)
	bl      Function_2005748
	b       branch_21d16d0
@ 0x21d1692

.thumb
branch_21d1692: @ 21d1692 :thumb
	mov     r0, r5
	bl      Function_21d1720
	cmp     r0, #0x0
	beq     branch_21d16d0
	ldr     r0, [pc, #0x38] @ 0x21d16d8, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [r5, #0x14]
	mov     r1, #0xe
	bl      Function_21d21a0
	b       branch_21d16d0
@ 0x21d16ac

.thumb
branch_21d16ac: @ 21d16ac :thumb
	ldr     r0, [r5, #0x14]
	bl      Function_21d21f8
	cmp     r0, #0x0
	beq     branch_21d16d0
	ldr     r1, [r5, #0x24]
	mov     r0, r5
	bl      Function_21d1034
	b       branch_21d16d0
@ 0x21d16c0

.thumb
branch_21d16c0: @ 21d16c0 :thumb
	ldr     r0, [r5, #0x14]
	mov     r1, #0x18
	bl      Function_21d2210
	cmp     r0, #0x0
	beq     branch_21d16d0
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_21d16d0: @ 21d16d0 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d16d4

.word 0x5e4 @ 0x21d16d4
.word 0x5dc @ 0x21d16d8
.word Function_21d103c+1 @ =0x21d103d, 0x21d16dc
.word 0x21d18e5 @ 0x21d16e0
.word 0x5f2 @ 0x21d16e4
.thumb
Function_21d16e8: @ 21d16e8 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	ldr     r0, [r1, #0x18]
	bne     branch_21d170a
	add     r1, #0x50
	ldrh    r1, [r1, #0x0]
	bl      Function_2099ca0
	cmp     r0, #0x0
	beq     branch_21d1706
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d1706

.thumb
branch_21d1706: @ 21d1706 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d170a

.thumb
branch_21d170a: @ 21d170a :thumb
	add     r1, #0x50
	ldrh    r1, [r1, #0x0]
	bl      Function_2099cdc
	cmp     r0, #0x0
	beq     branch_21d171a
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d171a

.thumb
branch_21d171a: @ 21d171a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d171e


.align 2, 0


.thumb
Function_21d1720: @ 21d1720 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #0x65
	ldrb    r1, [r1, #0x0]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x8] @ 0x21d1734, (=Unknown_21d5140)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r3,pc}
@ 0x21d1732

.align 2
.word Unknown_21d5140 @ 0x21d1734



.thumb
Function_21d1738: @ 21d1738 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x50
	ldrh    r2, [r0, #0x0]
	mov     r1, r2
	cmp     r2, #0xfe
	bne     branch_21d1748
	mov     r1, #0xc
.thumb
branch_21d1748: @ 21d1748 :thumb
	cmp     r2, #0xfe
	beq     branch_21d17a4
	mov     r0, r4
	add     r0, #0x52
	strh    r2, [r0, #0x0]
	ldrh    r0, [r4, #0x34]
	mov     r2, #0x40
	tst     r2, r0
	beq     branch_21d1768
	ldr     r0, [pc, #0x84] @ 0x21d17e0, (=0x21d5168)
	lsl     r1, r1, #2
	ldrb    r0, [r0, r1]
	add     r4, #0x50
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1768

.thumb
branch_21d1768: @ 21d1768 :thumb
	mov     r2, #0x80
	tst     r2, r0
	beq     branch_21d177c
	ldr     r0, [pc, #0x74] @ 0x21d17e4, (=0x21d5169)
	lsl     r1, r1, #2
	ldrb    r0, [r0, r1]
	add     r4, #0x50
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d177c

.thumb
branch_21d177c: @ 21d177c :thumb
	mov     r2, #0x20
	tst     r2, r0
	beq     branch_21d1790
	ldr     r0, [pc, #0x64] @ 0x21d17e8, (=0x21d516a)
	lsl     r1, r1, #2
	ldrb    r0, [r0, r1]
	add     r4, #0x50
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1790

.thumb
branch_21d1790: @ 21d1790 :thumb
	mov     r2, #0x10
	tst     r0, r2
	beq     branch_21d17dc
	ldr     r0, [pc, #0x54] @ 0x21d17ec, (=0x21d516b)
	lsl     r1, r1, #2
	ldrb    r0, [r0, r1]
	add     r4, #0x50
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d17a4

.thumb
branch_21d17a4: @ 21d17a4 :thumb
	ldrh    r1, [r4, #0x34]
	mov     r0, #0x40
	tst     r0, r1
	beq     branch_21d17c2
	mov     r0, r4
	add     r0, #0x52
	ldrh    r0, [r0, #0x0]
	mov     r1, #0x3
	blx     _s32_div_f
	add     r1, #0x9
	add     r4, #0x50
	strh    r1, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d17c2

.thumb
branch_21d17c2: @ 21d17c2 :thumb
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_21d17dc
	mov     r0, r4
	add     r0, #0x52
	ldrh    r0, [r0, #0x0]
	mov     r1, #0x3
	blx     _s32_div_f
	add     r4, #0x50
	strh    r1, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d17dc

.thumb
branch_21d17dc: @ 21d17dc :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d17e0

.word 0x21d5168 @ 0x21d17e0
.word 0x21d5169 @ 0x21d17e4
.word 0x21d516a @ 0x21d17e8
.word 0x21d516b @ 0x21d17ec
.thumb
Function_21d17f0: @ 21d17f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x50
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0xfe
	beq     branch_21d184e
	ldrh    r1, [r4, #0x34]
	mov     r3, #0x40
	mov     r2, #0xff
	tst     r3, r1
	beq     branch_21d180e
	bl      Function_21d5098
	mov     r2, r0
	b       branch_21d1836
@ 0x21d180e

.thumb
branch_21d180e: @ 21d180e :thumb
	mov     r3, #0x80
	tst     r3, r1
	beq     branch_21d181c
	bl      Function_21d50b4
	mov     r2, r0
	b       branch_21d1836
@ 0x21d181c

.thumb
branch_21d181c: @ 21d181c :thumb
	mov     r3, #0x10
	tst     r3, r1
	beq     branch_21d182a
	bl      Function_21d50ec
	mov     r2, r0
	b       branch_21d1836
@ 0x21d182a

.thumb
branch_21d182a: @ 21d182a :thumb
	mov     r3, #0x20
	tst     r1, r3
	beq     branch_21d1836
	bl      Function_21d50d0
	mov     r2, r0
.thumb
branch_21d1836: @ 21d1836 :thumb
	cmp     r2, #0xff
	beq     branch_21d1880
	mov     r0, r4
	add     r0, #0x50
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x52
	strh    r1, [r0, #0x0]
	add     r4, #0x50
	strh    r2, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d184e

.thumb
branch_21d184e: @ 21d184e :thumb
	ldrh    r1, [r4, #0x34]
	mov     r0, #0x40
	tst     r0, r1
	beq     branch_21d1868
	mov     r0, r4
	add     r0, #0x52
	ldrh    r0, [r0, #0x0]
	bl      Function_21d5124
	add     r4, #0x50
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1868

.thumb
branch_21d1868: @ 21d1868 :thumb
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_21d1880
	mov     r0, r4
	add     r0, #0x52
	ldrh    r0, [r0, #0x0]
	bl      Function_21d5108
	add     r4, #0x50
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1880

.thumb
branch_21d1880: @ 21d1880 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1884

.thumb
Function_21d1884: @ 21d1884 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	mov     r0, r1
	bl      Function_21d1fe4
	strh    r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldrh    r2, [r4, #0x4]
	cmp     r2, #0xa
	bls     branch_21d18b6
	mov     r1, r2
	sub     r1, #0xa
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r1, r0, #1
	mov     r0, #0x1
	and     r0, r2
	add     r0, r1, r0
	strh    r0, [r4, #0x2]
	pop     {r4,pc}
@ 0x21d18b6

.thumb
branch_21d18b6: @ 21d18b6 :thumb
	strh    r0, [r4, #0x2]
	pop     {r4,pc}
@ 0x21d18ba


.align 2, 0


.thumb
Function_21d18bc: @ 21d18bc :thumb
	ldrb    r1, [r0, #0x6]
	ldrb    r0, [r0, #0x7]
	lsl     r0, r0, #1
	add     r0, r1, r0
	bx      lr
@ 0x21d18c6


.align 2, 0


.thumb
Function_21d18c8: @ 21d18c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d18bc
	ldrh    r1, [r4, #0x0]
	lsl     r1, r1, #1
	add     r0, r1, r0
	pop     {r4,pc}
@ 0x21d18d8

.thumb
Function_21d18d8: @ 21d18d8 :thumb
	ldr     r0, [r0, #0x8]
	bx      lr
@ 0x21d18dc

.thumb
Function_21d18dc: @ 21d18dc :thumb
	ldrh    r0, [r0, #0x0]
	bx      lr
@ 0x21d18e0

.thumb
Function_21d18e0: @ 21d18e0 :thumb
	ldrh    r0, [r0, #0x2]
	bx      lr
@ 0x21d18e4

.thumb
Function_21d18e4: @ 21d18e4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x3
	bls     branch_21d18f2
	b       branch_21d1a54
@ 0x21d18f2

.thumb
branch_21d18f2: @ 21d18f2 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d18fe

Jumppoints_21d18fe:
.hword branch_21d1906 - Jumppoints_21d18fe - 2
.hword branch_21d1a12 - Jumppoints_21d18fe - 2
.hword branch_21d1a24 - Jumppoints_21d18fe - 2
.hword branch_21d1a3e - Jumppoints_21d18fe - 2
.thumb
branch_21d1906: @ 21d1906 :thumb
	ldr     r0, [r4, #0x38]
	cmp     r0, #0x0
	bne     branch_21d1916
	mov     r1, r4
	add     r1, #0x65
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_21d192c
.thumb
branch_21d1916: @ 21d1916 :thumb
	cmp     r0, #0x1
	bne     branch_21d1924
	mov     r1, r4
	add     r1, #0x65
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x1
	bne     branch_21d192c
.thumb
branch_21d1924: @ 21d1924 :thumb
	ldrh    r2, [r4, #0x30]
	mov     r1, #0x4
	tst     r1, r2
	beq     branch_21d195c
.thumb
branch_21d192c: @ 21d192c :thumb
	ldr     r0, [pc, #0x128] @ 0x21d1a58, (=0x5e4)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x50
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x65
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x1
	eor     r1, r0
	mov     r0, r4
	add     r0, #0x65
	strb    r1, [r0, #0x0]
	ldr     r0, [r4, #0x14]
	mov     r1, #0x9
	bl      Function_21d21a0
	ldr     r0, [pc, #0x108] @ 0x21d1a5c, (=0x21d15a1)
	str     r0, [r4, #0x24]
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d1a54
@ 0x21d195c

.thumb
branch_21d195c: @ 21d195c :thumb
	cmp     r0, #0x2
	bne     branch_21d196a
	mov     r0, r4
	add     r0, #0x54
	bl      Function_21d1b48
	b       branch_21d1982
@ 0x21d196a

.thumb
branch_21d196a: @ 21d196a :thumb
	cmp     r0, #0x3
	bne     branch_21d1978
	mov     r0, r4
	add     r0, #0x54
	bl      Function_21d1b70
	b       branch_21d1982
@ 0x21d1978

.thumb
branch_21d1978: @ 21d1978 :thumb
	ldrh    r1, [r4, #0x34]
	mov     r0, r4
	add     r0, #0x54
	bl      Function_21d1a68
.thumb
branch_21d1982: @ 21d1982 :thumb
	cmp     r0, #0x1
	beq     branch_21d1990
	cmp     r0, #0x2
	beq     branch_21d19a2
	cmp     r0, #0x3
	beq     branch_21d19b8
	b       branch_21d19ce
@ 0x21d1990

.thumb
branch_21d1990: @ 21d1990 :thumb
	ldr     r0, [pc, #0xcc] @ 0x21d1a60, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [r4, #0x14]
	mov     r1, #0xf
	bl      Function_21d21a0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d19a2

.thumb
branch_21d19a2: @ 21d19a2 :thumb
	ldr     r0, [pc, #0xbc] @ 0x21d1a60, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [r4, #0x14]
	mov     r1, #0x10
	bl      Function_21d21a0
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d19b8

.thumb
branch_21d19b8: @ 21d19b8 :thumb
	ldr     r0, [pc, #0xa4] @ 0x21d1a60, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [r4, #0x14]
	mov     r1, #0x10
	bl      Function_21d21a0
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d19ce

.thumb
branch_21d19ce: @ 21d19ce :thumb
	ldrh    r1, [r4, #0x30]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_21d19ee
	ldr     r0, [pc, #0x88] @ 0x21d1a60, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [r4, #0x14]
	mov     r1, #0x9
	bl      Function_21d21a0
	ldr     r0, [pc, #0x74] @ 0x21d1a5c, (=0x21d15a1)
	str     r0, [r4, #0x24]
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d1a54
@ 0x21d19ee

.thumb
branch_21d19ee: @ 21d19ee :thumb
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_21d1a54
	ldr     r0, [pc, #0x68] @ 0x21d1a60, (=0x5dc)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d1bb0
	ldr     r0, [pc, #0x60] @ 0x21d1a64, (=0x21d103d)
	mov     r1, #0xa
	str     r0, [r4, #0x24]
	ldr     r0, [r4, #0x14]
	bl      Function_21d21a0
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d1a54
@ 0x21d1a12

.thumb
branch_21d1a12: @ 21d1a12 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x10
	bl      Function_21d2210
	cmp     r0, #0x0
	beq     branch_21d1a54
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	b       branch_21d1a54
@ 0x21d1a24

.thumb
branch_21d1a24: @ 21d1a24 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x10
	bl      Function_21d2210
	cmp     r0, #0x0
	beq     branch_21d1a54
	ldr     r0, [r4, #0x14]
	mov     r1, #0xf
	bl      Function_21d21a0
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	b       branch_21d1a54
@ 0x21d1a3e

.thumb
branch_21d1a3e: @ 21d1a3e :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_21d21f8
	cmp     r0, #0x0
	beq     branch_21d1a54
	ldr     r1, [r4, #0x24]
	mov     r0, r4
	bl      Function_21d1034
	mov     r0, #0x0
	str     r0, [r5, #0x0]
.thumb
branch_21d1a54: @ 21d1a54 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d1a58

.word 0x5e4 @ 0x21d1a58
.word 0x21d15a1 @ 0x21d1a5c
.word 0x5dc @ 0x21d1a60
.word 0x21d103d @ 0x21d1a64
.thumb
Function_21d1a68: @ 21d1a68 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x80
	mov     r4, r0
	tst     r2, r1
	beq     branch_21d1ad2
	ldrb    r1, [r4, #0x7]
	cmp     r1, #0x4
	bcs     branch_21d1aa6
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, #0x7]
	bl      Function_21d18c8
	ldrh    r1, [r4, #0x4]
	cmp     r0, r1
	bcs     branch_21d1a8a
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d1a8a

.thumb
branch_21d1a8a: @ 21d1a8a :thumb
	cmp     r0, r1
	bne     branch_21d1a9c
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_21d1a9c
	mov     r0, #0x0
	strb    r0, [r4, #0x6]
	mov     r0, r1
	pop     {r3-r5,pc}
@ 0x21d1a9c

.thumb
branch_21d1a9c: @ 21d1a9c :thumb
	ldrb    r0, [r4, #0x7]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x7]
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x21d1aa6

.thumb
branch_21d1aa6: @ 21d1aa6 :thumb
	ldrh    r2, [r4, #0x0]
	ldrh    r1, [r4, #0x2]
	cmp     r2, r1
	bcs     branch_21d1ace
	mov     r1, #0x1
	str     r1, [r4, #0x8]
	ldrh    r1, [r4, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x0]
	bl      Function_21d18c8
	ldrh    r1, [r4, #0x4]
	cmp     r0, r1
	bcs     branch_21d1ac6
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x21d1ac6

.thumb
branch_21d1ac6: @ 21d1ac6 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x6]
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x21d1ace

.thumb
branch_21d1ace: @ 21d1ace :thumb
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x21d1ad2

.thumb
branch_21d1ad2: @ 21d1ad2 :thumb
	mov     r5, #0x40
	mov     r2, r1
	tst     r2, r5
	beq     branch_21d1b00
	ldrb    r0, [r4, #0x7]
	cmp     r0, #0x0
	beq     branch_21d1ae8
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x7]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d1ae8

.thumb
branch_21d1ae8: @ 21d1ae8 :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1afc
	sub     r5, #0x41
	str     r5, [r4, #0x8]
	ldrh    r0, [r4, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x0]
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x21d1afc

.thumb
branch_21d1afc: @ 21d1afc :thumb
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x21d1b00

.thumb
branch_21d1b00: @ 21d1b00 :thumb
	mov     r3, #0x30
	mov     r2, r1
	tst     r2, r3
	beq     branch_21d1b2a
	ldrb    r2, [r4, #0x6]
	mov     r1, #0x1
	eor     r1, r2
	strb    r1, [r4, #0x6]
	bl      Function_21d18c8
	ldrh    r1, [r4, #0x4]
	cmp     r0, r1
	bcs     branch_21d1b1e
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d1b1e

.thumb
branch_21d1b1e: @ 21d1b1e :thumb
	ldrb    r1, [r4, #0x6]
	mov     r0, #0x1
	eor     r0, r1
	strb    r0, [r4, #0x6]
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x21d1b2a

.thumb
branch_21d1b2a: @ 21d1b2a :thumb
	lsl     r2, r5, #3
	tst     r2, r1
	beq     branch_21d1b36
	bl      Function_21d1b48
	pop     {r3-r5,pc}
@ 0x21d1b36

.thumb
branch_21d1b36: @ 21d1b36 :thumb
	add     r3, #0xd0
	tst     r1, r3
	beq     branch_21d1b42
	bl      Function_21d1b70
	pop     {r3-r5,pc}
@ 0x21d1b42

.thumb
branch_21d1b42: @ 21d1b42 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d1b46


.align 2, 0


.thumb
Function_21d1b48: @ 21d1b48 :thumb
	ldrh    r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_21d1b6a
	cmp     r1, #0x5
	bcc     branch_21d1b5e
	.hword  0x1f49 @ sub r1, r1, #0x5
	strh    r1, [r0, #0x0]
	mov     r1, #0x4
	mvn     r1, r1
	str     r1, [r0, #0x8]
	b       branch_21d1b66
@ 0x21d1b5e

.thumb
branch_21d1b5e: @ 21d1b5e :thumb
	neg     r1, r1
	str     r1, [r0, #0x8]
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
.thumb
branch_21d1b66: @ 21d1b66 :thumb
	mov     r0, #0x2
	bx      lr
@ 0x21d1b6a

.thumb
branch_21d1b6a: @ 21d1b6a :thumb
	mov     r0, #0x4
	bx      lr
@ 0x21d1b6e


.align 2, 0


.thumb
Function_21d1b70: @ 21d1b70 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r2, [r4, #0x2]
	ldrh    r1, [r4, #0x0]
	cmp     r1, r2
	bcs     branch_21d1bac
	add     r0, r1, #0x5
	cmp     r0, r2
	bgt     branch_21d1b8c
	mov     r0, #0x5
	str     r0, [r4, #0x8]
	ldrh    r0, [r4, #0x0]
	.hword  0x1d40 @ add r0, r0, #0x5
	b       branch_21d1b92
@ 0x21d1b8c

.thumb
branch_21d1b8c: @ 21d1b8c :thumb
	sub     r0, r2, r1
	str     r0, [r4, #0x8]
	ldrh    r0, [r4, #0x2]
.thumb
branch_21d1b92: @ 21d1b92 :thumb
	strh    r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_21d18c8
	ldrh    r1, [r4, #0x4]
	cmp     r0, r1
	bcs     branch_21d1ba4
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x21d1ba4

.thumb
branch_21d1ba4: @ 21d1ba4 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x6]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x21d1bac

.thumb
branch_21d1bac: @ 21d1bac :thumb
	mov     r0, #0x4
	pop     {r4,pc}
@ 0x21d1bb0

.thumb
Function_21d1bb0: @ 21d1bb0 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x54
	bl      Function_21d18c8
	mov     r2, r0
	mov     r0, r4
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x18]
	bne     branch_21d1bd4
	mov     r1, r4
	add     r1, #0x50
	ldrh    r1, [r1, #0x0]
	bl      Function_2099cc8
	b       branch_21d1bde
@ 0x21d1bd4

.thumb
branch_21d1bd4: @ 21d1bd4 :thumb
	mov     r1, r4
	add     r1, #0x50
	ldrh    r1, [r1, #0x0]
	bl      Function_2099d14
.thumb
branch_21d1bde: @ 21d1bde :thumb
	mov     r2, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_21d1bf0
	cmp     r0, #0x1
	beq     branch_21d1bf4
	cmp     r0, #0x2
	beq     branch_21d1c02
	b       branch_21d1c10
@ 0x21d1bf0

.thumb
branch_21d1bf0: @ 21d1bf0 :thumb
	strh    r2, [r4, #0x10]
	b       branch_21d1c10
@ 0x21d1bf4

.thumb
branch_21d1bf4: @ 21d1bf4 :thumb
	mov     r0, r4
	add     r0, #0x4e
	ldrh    r0, [r0, #0x0]
	lsl     r0, r0, #1
	add     r0, r4, r0
	strh    r2, [r0, #0x10]
	b       branch_21d1c10
@ 0x21d1c02

.thumb
branch_21d1c02: @ 21d1c02 :thumb
	mov     r1, r4
	add     r1, #0x4e
	ldrh    r1, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x8
	bl      Function_2014cf8
.thumb
branch_21d1c10: @ 21d1c10 :thumb
	mov     r0, r4
	bl      Function_21d1e8c
	pop     {r4,pc}
@ 0x21d1c18

.thumb
Function_21d1c18: @ 21d1c18 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_21d1c28
	cmp     r1, #0x1
	beq     branch_21d1c38
	b       branch_21d1c46
@ 0x21d1c28

.thumb
branch_21d1c28: @ 21d1c28 :thumb
	ldr     r0, [r0, #0x14]
	mov     r1, #0x1
	bl      Function_21d21a0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d1c46
@ 0x21d1c38

.thumb
branch_21d1c38: @ 21d1c38 :thumb
	ldr     r0, [r0, #0x14]
	bl      Function_21d21f8
	cmp     r0, #0x0
	beq     branch_21d1c46
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1c46

.thumb
branch_21d1c46: @ 21d1c46 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1c4a


.align 2, 0


.thumb
Function_21d1c4c: @ 21d1c4c :thumb
	str     r1, [r0, #0x2c]
	mov     r1, #0x0
	str     r1, [r0, #0x28]
	bx      lr
@ 0x21d1c54

.thumb
Function_21d1c54: @ 21d1c54 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x2c]
	bx      lr
@ 0x21d1c5a


.align 2, 0


.thumb
Function_21d1c5c: @ 21d1c5c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1c6e
	cmp     r0, #0x1
	beq     branch_21d1c7e
	pop     {r3-r5,pc}
@ 0x21d1c6e

.thumb
branch_21d1c6e: @ 21d1c6e :thumb
	ldr     r0, [r5, #0x14]
	mov     r1, #0x2
	bl      Function_21d21a0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1c7e

.thumb
branch_21d1c7e: @ 21d1c7e :thumb
	ldr     r0, [r5, #0x14]
	bl      Function_21d21f8
	cmp     r0, #0x0
	beq     branch_21d1c8e
	mov     r0, r5
	bl      Function_21d1c54
.thumb
branch_21d1c8e: @ 21d1c8e :thumb
	pop     {r3-r5,pc}
@ 0x21d1c90

.thumb
Function_21d1c90: @ 21d1c90 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x3
	bls     branch_21d1c9e
	b       branch_21d1dac
@ 0x21d1c9e

.thumb
branch_21d1c9e: @ 21d1c9e :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d1caa

Jumppoints_21d1caa:
.hword branch_21d1cb2 - Jumppoints_21d1caa - 2
.hword branch_21d1d00 - Jumppoints_21d1caa - 2
.hword branch_21d1d86 - Jumppoints_21d1caa - 2
.hword branch_21d1d9c - Jumppoints_21d1caa - 2
.thumb
branch_21d1cb2: @ 21d1cb2 :thumb
	bl      Function_21d1e70
	cmp     r0, #0x0
	bne     branch_21d1cc4
	ldr     r0, [r4, #0x0]
	bl      Function_2097568
	cmp     r0, #0x0
	beq     branch_21d1cf6
.thumb
branch_21d1cc4: @ 21d1cc4 :thumb
	mov     r0, r4
	bl      Function_21d1e8c
	cmp     r0, #0x0
	beq     branch_21d1ce8
	mov     r0, r4
	add     r0, #0x66
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_21d1ed4
	ldr     r0, [r4, #0x14]
	mov     r1, #0x12
	bl      Function_21d21a0
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1ce8

.thumb
branch_21d1ce8: @ 21d1ce8 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x14
	bl      Function_21d21a0
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1cf6

.thumb
branch_21d1cf6: @ 21d1cf6 :thumb
	ldr     r1, [pc, #0xb8] @ 0x21d1db0, (=0x21d1dbd)
	mov     r0, r4
	bl      Function_21d1c4c
	pop     {r3-r5,pc}
@ 0x21d1d00

.thumb
branch_21d1d00: @ 21d1d00 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x15
	bl      Function_21d2210
	cmp     r0, #0x0
	beq     branch_21d1dac
	ldrh    r1, [r4, #0x30]
	mov     r0, r4
	add     r0, #0x66
	bl      Function_21d1edc
	.hword  0x1cc0 @ add r0, r0, #0x3
	cmp     r0, #0x4
	bhi     branch_21d1dac
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d1d28

Jumppoints_21d1d28:
.hword branch_21d1d32 - Jumppoints_21d1d28 - 2
.hword branch_21d1d42 - Jumppoints_21d1d28 - 2
.hword branch_21d1dac - Jumppoints_21d1d28 - 2
.hword branch_21d1d56 - Jumppoints_21d1d28 - 2
.hword branch_21d1d42 - Jumppoints_21d1d28 - 2
.thumb
branch_21d1d32: @ 21d1d32 :thumb
	ldr     r0, [pc, #0x80] @ 0x21d1db4, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [r4, #0x14]
	mov     r1, #0x15
	bl      Function_21d21a0
	pop     {r3-r5,pc}
@ 0x21d1d42

.thumb
branch_21d1d42: @ 21d1d42 :thumb
	ldr     r0, [pc, #0x70] @ 0x21d1db4, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [r4, #0x14]
	mov     r1, #0x16
	bl      Function_21d21a0
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1d56

.thumb
branch_21d1d56: @ 21d1d56 :thumb
	ldr     r0, [pc, #0x5c] @ 0x21d1db4, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x2
	bne     branch_21d1d6a
	mov     r0, r4
	add     r0, #0x8
	bl      Function_2014d10
.thumb
branch_21d1d6a: @ 21d1d6a :thumb
	mov     r1, r4
	mov     r2, r4
	ldr     r0, [r4, #0x0]
	add     r1, #0x10
	add     r2, #0x8
	bl      Function_20975e4
	ldr     r1, [pc, #0x3c] @ 0x21d1db8, (=0x21d1c19)
	mov     r0, r4
	bl      Function_21d1034
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1d86

.thumb
branch_21d1d86: @ 21d1d86 :thumb
	ldrh    r1, [r4, #0x30]
	mov     r0, #0xf3
	tst     r0, r1
	beq     branch_21d1dac
	ldr     r0, [r4, #0x14]
	mov     r1, #0x11
	bl      Function_21d21a0
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1d9c

.thumb
branch_21d1d9c: @ 21d1d9c :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_21d21f8
	cmp     r0, #0x0
	beq     branch_21d1dac
	mov     r0, r4
	bl      Function_21d1c54
.thumb
branch_21d1dac: @ 21d1dac :thumb
	pop     {r3-r5,pc}
@ 0x21d1dae


.align 2


.word 0x21d1dbd @ 0x21d1db0
.word 0x5dc @ 0x21d1db4
.word 0x21d1c19 @ 0x21d1db8
.thumb
Function_21d1dbc: @ 21d1dbc :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1dd2
	cmp     r0, #0x1
	beq     branch_21d1dec
	cmp     r0, #0x2
	beq     branch_21d1e56
	pop     {r3-r5,pc}
@ 0x21d1dd2

.thumb
branch_21d1dd2: @ 21d1dd2 :thumb
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x66
	mov     r2, r1
	bl      Function_21d1ed4
	ldr     r0, [r4, #0x14]
	mov     r1, #0x13
	bl      Function_21d21a0
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1dec

.thumb
branch_21d1dec: @ 21d1dec :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x15
	bl      Function_21d2210
	cmp     r0, #0x0
	beq     branch_21d1e66
	ldrh    r1, [r4, #0x30]
	mov     r0, r4
	add     r0, #0x66
	bl      Function_21d1edc
	.hword  0x1cc0 @ add r0, r0, #0x3
	cmp     r0, #0x4
	bhi     branch_21d1e66
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d1e14

Jumppoints_21d1e14:
.hword branch_21d1e1e - Jumppoints_21d1e14 - 2
.hword branch_21d1e2e - Jumppoints_21d1e14 - 2
.hword branch_21d1e66 - Jumppoints_21d1e14 - 2
.hword branch_21d1e42 - Jumppoints_21d1e14 - 2
.hword branch_21d1e2e - Jumppoints_21d1e14 - 2
.thumb
branch_21d1e1e: @ 21d1e1e :thumb
	ldr     r0, [pc, #0x48] @ 0x21d1e68, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [r4, #0x14]
	mov     r1, #0x15
	bl      Function_21d21a0
	pop     {r3-r5,pc}
@ 0x21d1e2e

.thumb
branch_21d1e2e: @ 21d1e2e :thumb
	ldr     r0, [pc, #0x38] @ 0x21d1e68, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [r4, #0x14]
	mov     r1, #0x16
	bl      Function_21d21a0
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1e42

.thumb
branch_21d1e42: @ 21d1e42 :thumb
	ldr     r0, [pc, #0x24] @ 0x21d1e68, (=0x5dc)
	bl      Function_2005748
	ldr     r1, [pc, #0x20] @ 0x21d1e6c, (=0x21d1c19)
	mov     r0, r4
	bl      Function_21d1034
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1e56

.thumb
branch_21d1e56: @ 21d1e56 :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_21d21f8
	cmp     r0, #0x0
	beq     branch_21d1e66
	mov     r0, r4
	bl      Function_21d1c54
.thumb
branch_21d1e66: @ 21d1e66 :thumb
	pop     {r3-r5,pc}
@ 0x21d1e68

.word 0x5dc @ 0x21d1e68
.word 0x21d1c19 @ 0x21d1e6c
.thumb
Function_21d1e70: @ 21d1e70 :thumb
	push    {r3,lr}
	mov     r2, r0
	mov     r1, r2
	ldr     r0, [r2, #0x0]
	add     r1, #0x10
	add     r2, #0x8
	bl      Function_20975a0
	cmp     r0, #0x0
	bne     branch_21d1e88
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d1e88

.thumb
branch_21d1e88: @ 21d1e88 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d1e8c

.thumb
Function_21d1e8c: @ 21d1e8c :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	beq     branch_21d1e9e
	cmp     r1, #0x1
	beq     branch_21d1eae
	cmp     r1, #0x2
	beq     branch_21d1ec4
	b       branch_21d1ecc
@ 0x21d1e9e

.thumb
branch_21d1e9e: @ 21d1e9e :thumb
	ldrh    r1, [r0, #0x10]
	ldr     r0, [pc, #0x2c] @ 0x21d1ed0, (=0xffff)
	cmp     r1, r0
	beq     branch_21d1eaa
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d1eaa

.thumb
branch_21d1eaa: @ 21d1eaa :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d1eae

.thumb
branch_21d1eae: @ 21d1eae :thumb
	ldrh    r2, [r0, #0x10]
	ldr     r1, [pc, #0x1c] @ 0x21d1ed0, (=0xffff)
	cmp     r2, r1
	beq     branch_21d1ec0
	ldrh    r0, [r0, #0x12]
	cmp     r0, r1
	beq     branch_21d1ec0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d1ec0

.thumb
branch_21d1ec0: @ 21d1ec0 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d1ec4

.thumb
branch_21d1ec4: @ 21d1ec4 :thumb
	add     r0, #0x8
	bl      Function_2014bd0
	pop     {r3,pc}
@ 0x21d1ecc

.thumb
branch_21d1ecc: @ 21d1ecc :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d1ed0

.word 0xffff @ 0x21d1ed0
.thumb
Function_21d1ed4: @ 21d1ed4 :thumb
	strb    r2, [r0, #0x0]
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x21d1eda


.align 2, 0


.thumb
Function_21d1edc: @ 21d1edc :thumb
	mov     r2, #0x40
	mov     r3, r1
	tst     r3, r2
	beq     branch_21d1efa
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x0
	bne     branch_21d1ef0
	sub     r2, #0x44
	mov     r0, r2
	bx      lr
@ 0x21d1ef0

.thumb
branch_21d1ef0: @ 21d1ef0 :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
	sub     r2, #0x43
	strb    r1, [r0, #0x0]
	mov     r0, r2
	bx      lr
@ 0x21d1efa

.thumb
branch_21d1efa: @ 21d1efa :thumb
	mov     r2, #0x80
	mov     r3, r1
	tst     r3, r2
	beq     branch_21d1f1a
	ldrb    r3, [r0, #0x0]
	ldrb    r1, [r0, #0x1]
	cmp     r3, r1
	bne     branch_21d1f10
	sub     r2, #0x84
	mov     r0, r2
	bx      lr
@ 0x21d1f10

.thumb
branch_21d1f10: @ 21d1f10 :thumb
	add     r1, r3, #0x1
	sub     r2, #0x83
	strb    r1, [r0, #0x0]
	mov     r0, r2
	bx      lr
@ 0x21d1f1a

.thumb
branch_21d1f1a: @ 21d1f1a :thumb
	mov     r2, #0x1
	tst     r2, r1
	beq     branch_21d1f24
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x21d1f24

.thumb
branch_21d1f24: @ 21d1f24 :thumb
	mov     r0, #0x2
	tst     r1, r0
	beq     branch_21d1f2e
	.hword  0x1f00 @ sub r0, r0, #0x4
	bx      lr
@ 0x21d1f2e

.thumb
branch_21d1f2e: @ 21d1f2e :thumb
	.hword  0x1ec0 @ sub r0, r0, #0x3
	bx      lr
@ 0x21d1f32


.align 2, 0


.thumb
Function_21d1f34: @ 21d1f34 :thumb
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x21d1f38

.thumb
Function_21d1f38: @ 21d1f38 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1f4a
	cmp     r0, #0x1
	beq     branch_21d1f6e
	pop     {r3-r5,pc}
@ 0x21d1f4a

.thumb
branch_21d1f4a: @ 21d1f4a :thumb
	ldr     r0, [pc, #0x34] @ 0x21d1f80, (=0x5e4)
	bl      Function_2005748
	mov     r0, r5
	add     r0, #0x65
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x1
	eor     r1, r0
	mov     r0, r5
	add     r0, #0x65
	strb    r1, [r0, #0x0]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x17
	bl      Function_21d21a0
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1f6e

.thumb
branch_21d1f6e: @ 21d1f6e :thumb
	ldr     r0, [r5, #0x14]
	bl      Function_21d21f8
	cmp     r0, #0x0
	beq     branch_21d1f7e
	mov     r0, r5
	bl      Function_21d1c54
.thumb
branch_21d1f7e: @ 21d1f7e :thumb
	pop     {r3-r5,pc}
@ 0x21d1f80

.word 0x5e4 @ 0x21d1f80
.thumb
Function_21d1f84: @ 21d1f84 :thumb
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x21d1f88

.thumb
Function_21d1f88: @ 21d1f88 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d1f90, (=Function_2097554+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d1f8e

.align 2
.word Function_2097554+1 @ 0x21d1f90



.thumb
Function_21d1f94: @ 21d1f94 :thumb
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x21d1f9a


.align 2, 0
.thumb
Function_21d1f9c: @ 21d1f9c :thumb
	ldr     r3, [pc, #0x4] @ 0x21d1fa4, (=Function_2014c80+1)
	add     r0, #0x8
	bx      r3
@ 0x21d1fa2

.align 2
.word Function_2014c80+1 @ 0x21d1fa4



.thumb
Function_21d1fa8: @ 21d1fa8 :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x4]
	cmp     r2, #0x2
	bne     branch_21d1fb8
	add     r0, #0x8
	bl      Function_2014c78
	pop     {r3,pc}
@ 0x21d1fb8

.thumb
branch_21d1fb8: @ 21d1fb8 :thumb
	lsl     r1, r1, #1
	add     r0, r0, r1
	ldrh    r0, [r0, #0x10]
	pop     {r3,pc}
@ 0x21d1fc0

.thumb
Function_21d1fc0: @ 21d1fc0 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d1fc8, (=Function_2014ba0+1)
	add     r0, #0x8
	bx      r3
@ 0x21d1fc6

.align 2
.word Function_2014ba0+1 @ 0x21d1fc8



.thumb
Function_21d1fcc: @ 21d1fcc :thumb
	add     r0, #0x4e
	ldrh    r0, [r0, #0x0]
	bx      lr
@ 0x21d1fd2


.align 2, 0
.thumb
Function_21d1fd4: @ 21d1fd4 :thumb
	add     r0, #0x4c
	ldrh    r0, [r0, #0x0]
	bx      lr
@ 0x21d1fda


.align 2, 0


.thumb
Function_21d1fdc: @ 21d1fdc :thumb
	add     r0, #0x50
	ldrh    r0, [r0, #0x0]
	bx      lr
@ 0x21d1fe2


.align 2, 0


.thumb
Function_21d1fe4: @ 21d1fe4 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	ldr     r0, [r1, #0x18]
	bne     branch_21d1ffc
	add     r1, #0x50
	ldrh    r1, [r1, #0x0]
	bl      Function_2099ca0
	pop     {r3,pc}
@ 0x21d1ffc

.thumb
branch_21d1ffc: @ 21d1ffc :thumb
	add     r1, #0x50
	ldrh    r1, [r1, #0x0]
	bl      Function_2099cdc
	pop     {r3,pc}
@ 0x21d2006


.align 2, 0


.thumb
Function_21d2008: @ 21d2008 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x65
	ldrb    r0, [r0, #0x0]
	mov     r4, r1
	mov     r3, r2
	cmp     r0, #0x0
	ldr     r0, [r5, #0x18]
	bne     branch_21d2026
	add     r5, #0x50
	ldrh    r1, [r5, #0x0]
	mov     r2, r4
	bl      Function_2099ca8
	pop     {r3-r5,pc}
@ 0x21d2026

.thumb
branch_21d2026: @ 21d2026 :thumb
	add     r5, #0x50
	ldrh    r1, [r5, #0x0]
	mov     r2, r4
	bl      Function_2099cec
	pop     {r3-r5,pc}
@ 0x21d2032


.align 2, 0


.thumb
Function_21d2034: @ 21d2034 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d203c, (=0x21d18bd)
	add     r0, #0x54
	bx      r3
@ 0x21d203a


.align 2


.word Function_21d18bc+1 @ =0x21d18bd, 0x21d203c
.thumb
Function_21d2040: @ 21d2040 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d2048, (=0x21d18d9)
	add     r0, #0x54
	bx      r3
@ 0x21d2046


.align 2


.word Function_21d18d8+1 @ =0x21d18d9, 0x21d2048
.thumb
Function_21d204c: @ 21d204c :thumb
	push    {r3,lr}
	add     r0, #0x54
	bl      Function_21d18dc
	cmp     r0, #0x0
	beq     branch_21d205c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d205c

.thumb
branch_21d205c: @ 21d205c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d2060

.thumb
Function_21d2060: @ 21d2060 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x54
	bl      Function_21d18dc
	add     r5, #0x54
	mov     r4, r0
	mov     r0, r5
	bl      Function_21d18e0
	cmp     r4, r0
	bge     branch_21d207c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d207c

.thumb
branch_21d207c: @ 21d207c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d2080

.thumb
Function_21d2080: @ 21d2080 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d2088, (=Function_2097558+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d2086

.align 2
.word Function_2097558+1 @ 0x21d2088



.thumb
Function_21d208c: @ 21d208c :thumb
	ldr     r3, [pc, #0x4] @ 0x21d2094, (=0x21d1f35)
	add     r0, #0x66
	bx      r3
@ 0x21d2092

.align 2
.word Function_21d1f34+1 @ =0x21d1f35, 0x21d2094



.thumb
Function_21d2098: @ 21d2098 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r6, r1
	mov     r1, #0x7d
	mov     r5, r0
	mov     r0, #0x23
	lsl     r1, r1, #2
	bl      malloc
	mov     r4, r0
	beq     branch_21d2118
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	str     r5, [r4, #0x18]
	str     r6, [r4, #0x1c]
	blx     Function_20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x80
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x23
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      Function_200a784
	mov     r1, r4
	mov     r0, #0x80
	add     r1, #0x28
	mov     r2, #0x23
	bl      Function_20095c4
	str     r0, [r4, #0x24]
	mov     r0, #0x23
	bl      Function_2018340
	str     r0, [r4, #0x20]
	ldr     r0, [pc, #0x2c] @ 0x21d2120, (=0x21d2179)
	mov     r1, r4
	mov     r2, #0x2
	bl      AddTaskToTaskList1
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x24] @ 0x21d2124, (=0x21d217d)
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_21d2170
	mov     r1, #0x0
	str     r0, [r4, #0x4]
	mov     r2, r4
	mov     r0, r1
.thumb
branch_21d210e: @ 21d210e :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r2, #0x8]
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x4
	blt     branch_21d210e
.thumb
branch_21d2118: @ 21d2118 :thumb
	mov     r0, r4
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21d211e


.align 2


.word 0x21d2179 @ 0x21d2120
.word 0x21d217d @ 0x21d2124
.thumb
Function_21d2128: @ 21d2128 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	beq     branch_21d216e
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_21d213a: @ 21d213a :thumb
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_21d2144
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21d2144: @ 21d2144 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_21d213a
	ldr     r0, [r6, #0x0]
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r6, #0x4]
	bl      Call_RemoveTaskFromTaskList
	bl      Function_200a878
	ldr     r0, [r6, #0x24]
	bl      Function_2021964
	ldr     r0, [r6, #0x20]
	bl      free
	mov     r0, r6
	bl      free
.thumb
branch_21d216e: @ 21d216e :thumb
	pop     {r4-r6,pc}
@ 0x21d2170


.thumb
Function_21d2170: @ 21d2170 :thumb
	ldr     r3, [pc, #0x0] @ 0x21d2174, (=AddTaskToTaskList2+1)
	bx      r3
@ 0x21d2174

.word AddTaskToTaskList2+1 @ 0x21d2174



.thumb
Function_21d2178: @ 21d2178 :thumb
	bx      lr
@ 0x21d217a


.align 2, 0
.thumb
Function_21d217c: @ 21d217c :thumb
	push    {r3,lr}
	ldr     r0, [r1, #0x24]
	bl      Function_20219f8
	bl      Function_200a858
	ldr     r3, [pc, #0xc] @ 0x21d2198, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x21d219c, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r3,pc}
@ 0x21d2196


.align 2


.word 0x27e0000 @ 0x21d2198
.word 0x3ff8 @ 0x21d219c
.thumb
Function_21d21a0: @ 21d21a0 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	cmp     r6, #0x1d
	bcs     branch_21d21ee
	mov     r0, #0x23
	mov     r1, #0x18
	bl      malloc
	mov     r1, r0
	beq     branch_21d21f2
	mov     r4, #0x0
	str     r4, [r1, #0x14]
	str     r6, [r1, #0xc]
	str     r5, [r1, #0x0]
	ldr     r0, [r5, #0x18]
	mov     r2, r5
	str     r0, [r1, #0x4]
	ldr     r0, [r5, #0x1c]
	str     r0, [r1, #0x8]
.thumb
branch_21d21c8: @ 21d21c8 :thumb
	ldr     r0, [r2, #0x8]
	cmp     r0, #0x0
	bne     branch_21d21e4
	ldr     r0, [pc, #0x24] @ 0x21d21f4, (=0x21d5260)
	lsl     r2, r6, #2
	ldr     r0, [r0, r2]
	mov     r2, #0x1
	str     r4, [r1, #0x10]
	bl      AddTaskToTaskList1
	lsl     r1, r4, #2
	add     r1, r5, r1
	str     r0, [r1, #0x8]
	pop     {r4-r6,pc}
@ 0x21d21e4

.thumb
branch_21d21e4: @ 21d21e4 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r4, #0x4
	blt     branch_21d21c8
	pop     {r4-r6,pc}
@ 0x21d21ee

.thumb
branch_21d21ee: @ 21d21ee :thumb
	bl      ErrorHandling
.thumb
branch_21d21f2: @ 21d21f2 :thumb
	pop     {r4-r6,pc}
@ 0x21d21f4

.word 0x21d5260 @ 0x21d21f4
.thumb
Function_21d21f8: @ 21d21f8 :thumb
	mov     r2, #0x0
.thumb
branch_21d21fa: @ 21d21fa :thumb
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_21d2204
	mov     r0, #0x0
	bx      lr
@ 0x21d2204

.thumb
branch_21d2204: @ 21d2204 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r2, #0x4
	blt     branch_21d21fa
	mov     r0, #0x1
	bx      lr
@ 0x21d2210

.thumb
Function_21d2210: @ 21d2210 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
.thumb
branch_21d2218: @ 21d2218 :thumb
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_21d222c
	bl      Function_201ced0
	ldr     r0, [r0, #0xc]
	cmp     r0, r6
	bne     branch_21d222c
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x21d222c

.thumb
branch_21d222c: @ 21d222c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_21d2218
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21d2238

.thumb
Function_21d2238: @ 21d2238 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	ldr     r0, [r0, #0x8]
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0x10]
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	mov     r2, #0x0
	add     r0, r1, r0
	str     r2, [r0, #0x8]
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x21d225e


.align 2, 0


.thumb
Function_21d2260: @ 21d2260 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r1, #0x1
	lsl     r1, r1, #26
	ldr     r0, [r1, #0x0]
	ldr     r2, [pc, #0xec] @ 0x21d2360, (=0xffffe0ff)
	and     r0, r2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0xe8] @ 0x21d2364, (=0x4001000)
	ldr     r3, [r0, #0x0]
	and     r2, r3
	str     r2, [r0, #0x0]
	ldr     r2, [r1, #0x0]
	ldr     r3, [pc, #0xe4] @ 0x21d2368, (=0xffcfffef)
	mov     r5, r2
	ldr     r2, [pc, #0xe4] @ 0x21d236c, (=0x100010)
	and     r5, r3
	orr     r2, r5
	str     r2, [r1, #0x0]
	ldr     r1, [r0, #0x0]
	mov     r2, r1
	and     r2, r3
	mov     r1, #0x10
	orr     r1, r2
	str     r1, [r0, #0x0]

	mov     r0, #Pmsi_Narc
	mov     r1, #0x23
	bl      LoadFromNARC_8
	mov     r5, r0
	mov     r0, r4
	bl      Function_21d24ec
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d2370
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	bl      Function_21d2ea4
	mov     r1, #0x1e
	ldr     r2, [r4, #0x0]
	lsl     r1, r1, #4
	str     r0, [r2, r1]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, r1]
	mov     r1, r5
	bl      Function_21d2f50
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	bl      Function_21d3864
	mov     r1, #0x79
	ldr     r2, [r4, #0x0]
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, r1]
	mov     r1, r5
	bl      Function_21d3898
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	bl      Function_21d3a54
	mov     r1, #0x7a
	ldr     r2, [r4, #0x0]
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, r1]
	mov     r1, r5
	bl      Function_21d3a98
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	bl      Function_21d40e8
	mov     r1, #0x7b
	ldr     r2, [r4, #0x0]
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, r1]
	bl      Function_21d41a8
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	bl      Function_21d4728
	mov     r1, #0x1f
	ldr     r2, [r4, #0x0]
	lsl     r1, r1, #4
	str     r0, [r2, r1]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, r1]
	mov     r1, r5
	bl      Function_21d4774
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	blx     GX_DispOn
	mov     r0, r5
	bl      Call_FS_CloseFile
	mov     r0, r4
	bl      Function_21d2238
	pop     {r3-r5,pc}
@ 0x21d235e

.align 2
.word 0xffffe0ff @ 0x21d2360
.word 0x4001000 @ 0x21d2364
.word 0xffcfffef @ 0x21d2368
.word 0x100010 @ 0x21d236c



.thumb
Function_21d2370: @ 21d2370 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r4, [r0, #0x0]
	mov     r0, #0x66
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r5, r1
	blx     Function_20a81d0
	mov     r0, #0x6b
	lsl     r0, r0, #2
	add     r0, r4, r0
	blx     Function_20a81d0
	mov     r0, #0x15
	lsl     r0, r0, #4
	add     r0, r4, r0
	blx     Function_20a818c
	mov     r0, #0x5d
	lsl     r0, r0, #2
	add     r0, r4, r0
	blx     Function_20a818c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x23
	str     r0, [sp, #0xc]
	mov     r0, #0x15
	lsl     r0, r0, #4
	add     r0, r4, r0
	str     r0, [sp, #0x10]
	mov     r0, r5
	mov     r1, #0x9
	bl      Function_200718c
	mov     r0, #0x23
	str     r0, [sp, #0x0]
	mov     r0, #0x66
	lsl     r0, r0, #2
	add     r0, r4, r0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0xa
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_200716c
	mov     r1, #0x7
	mov     r0, #0x23
	lsl     r3, r1, #6
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x1
	add     r3, r4, r3
	bl      Function_2007204
	mov     r3, #0x1d
	lsl     r3, r3, #4
	str     r0, [r4, r3]
	mov     r0, #0x23
	sub     r3, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x1
	add     r3, r4, r3
	bl      Function_2007220
	mov     r1, #0x76
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r2, #0x0
	.hword  0x1f08 @ sub r0, r1, #0x4
	str     r2, [r4, r0]
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d2414

.thumb
Function_21d2414: @ 21d2414 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r1
	ldr     r0, [r6, #0x14]
	ldr     r7, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_21d242a
	cmp     r0, #0x1
	beq     branch_21d244c
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d242a

.thumb
branch_21d242a: @ 21d242a :thumb
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x23
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [r6, #0x14]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x14]
	pop     {r4-r7,pc}
@ 0x21d244c

.thumb
branch_21d244c: @ 21d244c :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d24e6
	mov     r0, #0x1e
	ldr     r1, [r6, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	bl      Function_21d2ef0
	mov     r0, #0x79
	ldr     r1, [r6, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	bl      Function_21d3880
	mov     r0, #0x7a
	ldr     r1, [r6, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	bl      Function_21d3a80
	mov     r0, #0x7b
	ldr     r1, [r6, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	bl      Function_21d4164
	mov     r0, #0x1f
	ldr     r1, [r6, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	bl      Function_21d4764
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_21d2494: @ 21d2494 :thumb
	mov     r0, #0x1d
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d24a2
	bl      free
.thumb
branch_21d24a2: @ 21d24a2 :thumb
	mov     r0, #0x76
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d24b0
	bl      free
.thumb
branch_21d24b0: @ 21d24b0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_21d2494
	ldr     r0, [r7, #0x20]
	mov     r1, #0x0
	bl      Function_2019044
	ldr     r0, [r7, #0x20]
	mov     r1, #0x1
	bl      Function_2019044
	ldr     r0, [r7, #0x20]
	mov     r1, #0x2
	bl      Function_2019044
	ldr     r0, [r7, #0x20]
	mov     r1, #0x3
	bl      Function_2019044
	ldr     r0, [r7, #0x20]
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r6
	bl      Function_21d2238
.thumb
branch_21d24e6: @ 21d24e6 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d24ea


.align 2, 0


.thumb
Function_21d24ec: @ 21d24ec :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x60] @ 0x21d2550, (=0x4000304)
	ldr     r4, [r0, #0x0]
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	orr     r0, r1
	strh    r0, [r2, #0x0]
	mov     r0, #0x1
	mov     r1, #0x0
	mov     r2, r0
	blx     GX_SetGraphicsMode
	ldr     r0, [pc, #0x4c] @ 0x21d2554, (=0x21d5238)
	bl      GX_SetBanks
	ldr     r0, [pc, #0x4c] @ 0x21d2558, (=0x21d519c)
	bl      SetGraphicsModes
	mov     r1, #0x0
	ldr     r0, [r4, #0x20]
	ldr     r2, [pc, #0x44] @ 0x21d255c, (=0x21d51e4)
	mov     r3, r1
	bl      Function_20183c4
	ldr     r0, [r4, #0x20]
	ldr     r2, [pc, #0x40] @ 0x21d2560, (=0x21d51ac)
	mov     r1, #0x1
	mov     r3, #0x0
	bl      Function_20183c4
	ldr     r0, [r4, #0x20]
	ldr     r2, [pc, #0x38] @ 0x21d2564, (=0x21d521c)
	mov     r1, #0x2
	mov     r3, #0x0
	bl      Function_20183c4
	ldr     r0, [r4, #0x20]
	ldr     r2, [pc, #0x30] @ 0x21d2568, (=0x21d51c8)
	mov     r1, #0x3
	mov     r3, #0x0
	bl      Function_20183c4
	ldr     r0, [r4, #0x20]
	ldr     r2, [pc, #0x28] @ 0x21d256c, (=0x21d5200)
	mov     r1, #0x4
	mov     r3, #0x0
	bl      Function_20183c4
	pop     {r4,pc}
@ 0x21d254e


.align 2


.word 0x4000304 @ 0x21d2550
.word 0x21d5238 @ 0x21d2554
.word 0x21d519c @ 0x21d2558
.word 0x21d51e4 @ 0x21d255c
.word 0x21d51ac @ 0x21d2560
.word 0x21d521c @ 0x21d2564
.word 0x21d51c8 @ 0x21d2568
.word 0x21d5200 @ 0x21d256c
.thumb
Function_21d2570: @ 21d2570 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r1
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_21d2582
	cmp     r0, #0x1
	beq     branch_21d25a2
	b       branch_21d25b4
@ 0x21d2582

.thumb
branch_21d2582: @ 21d2582 :thumb
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x23
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [r4, #0x14]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
	pop     {r3,r4,pc}
@ 0x21d25a2

.thumb
branch_21d25a2: @ 21d25a2 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d25ba
	ldr     r0, [r4, #0x14]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
	pop     {r3,r4,pc}
@ 0x21d25b4

.thumb
branch_21d25b4: @ 21d25b4 :thumb
	mov     r0, r4
	bl      Function_21d2238
.thumb
branch_21d25ba: @ 21d25ba :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d25be


.align 2, 0


.thumb
Function_21d25c0: @ 21d25c0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, #0x1e
	ldr     r4, [r5, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d3228
	ldr     r0, [r5, #0x4]
	bl      Function_21d1fcc
	mov     r1, r0
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d3700
	mov     r0, r5
	bl      Function_21d2238
	pop     {r3-r5,pc}
@ 0x21d25ea


.align 2, 0


.thumb
Function_21d25ec: @ 21d25ec :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, #0x1e
	ldr     r4, [r5, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d369c
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d36b0
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d39d4
	ldr     r0, [r4, #0x18]
	bl      Function_21d1fd4
	mov     r1, r0
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d39ec
	mov     r0, r5
	bl      Function_21d2238
	pop     {r3-r5,pc}
@ 0x21d262e


.align 2, 0


.thumb
Function_21d2630: @ 21d2630 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, #0x79
	ldr     r4, [r5, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d39d4
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d36d0
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d369c
	mov     r0, r5
	bl      Function_21d2238
	pop     {r3-r5,pc}
@ 0x21d2660

.thumb
Function_21d2660: @ 21d2660 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r0, [r5, #0x14]
	ldr     r4, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d2672
	cmp     r0, #0x1
	beq     branch_21d2698
	pop     {r3-r5,pc}
@ 0x21d2672

.thumb
branch_21d2672: @ 21d2672 :thumb
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d3684
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d36b0
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3ef8
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d2698

.thumb
branch_21d2698: @ 21d2698 :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3f10
	cmp     r0, #0x0
	beq     branch_21d26d4
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3a2c
	ldr     r0, [r4, #0x18]
	bl      Function_21d1fdc
	mov     r1, r0
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3e74
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d3e48
	mov     r0, r5
	bl      Function_21d2238
.thumb
branch_21d26d4: @ 21d26d4 :thumb
	pop     {r3-r5,pc}
@ 0x21d26d6


.align 2, 0


.thumb
Function_21d26d8: @ 21d26d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r0, [r5, #0x14]
	ldr     r4, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d26ee
	cmp     r0, #0x1
	beq     branch_21d2700
	cmp     r0, #0x2
	beq     branch_21d2712
	pop     {r3-r5,pc}
@ 0x21d26ee

.thumb
branch_21d26ee: @ 21d26ee :thumb
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d4ba4
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d2700

.thumb
branch_21d2700: @ 21d2700 :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d40a8
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d2712

.thumb
branch_21d2712: @ 21d2712 :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d40dc
	cmp     r0, #0x0
	beq     branch_21d273e
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d4c2c
	cmp     r0, #0x0
	beq     branch_21d273e
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d4084
	mov     r0, r5
	bl      Function_21d2238
.thumb
branch_21d273e: @ 21d273e :thumb
	pop     {r3-r5,pc}
@ 0x21d2740

.thumb
Function_21d2740: @ 21d2740 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r0, [r5, #0x14]
	ldr     r4, [r5, #0x0]
	cmp     r0, #0x3
	bhi     branch_21d27e2
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d2758

Jumppoints_21d2758:
.hword branch_21d2760 - Jumppoints_21d2758 - 2
.hword branch_21d2772 - Jumppoints_21d2758 - 2
.hword branch_21d2790 - Jumppoints_21d2758 - 2
.hword branch_21d27b0 - Jumppoints_21d2758 - 2
.thumb
branch_21d2760: @ 21d2760 :thumb
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d4ba4
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d2772

.thumb
branch_21d2772: @ 21d2772 :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d3e48
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d40a8
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d2790

.thumb
branch_21d2790: @ 21d2790 :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d40dc
	cmp     r0, #0x0
	beq     branch_21d27e2
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d4084
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d27b0

.thumb
branch_21d27b0: @ 21d27b0 :thumb
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d4c2c
	cmp     r0, #0x0
	beq     branch_21d27e2
	ldr     r0, [r4, #0x18]
	bl      Function_21d1fdc
	mov     r1, r0
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3e74
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d3e48
	mov     r0, r5
	bl      Function_21d2238
.thumb
branch_21d27e2: @ 21d27e2 :thumb
	pop     {r3-r5,pc}
@ 0x21d27e4

.thumb
Function_21d27e4: @ 21d27e4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r0, [r5, #0x14]
	ldr     r4, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d27f6
	cmp     r0, #0x1
	beq     branch_21d281e
	pop     {r3-r5,pc}
@ 0x21d27f6

.thumb
branch_21d27f6: @ 21d27f6 :thumb
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3a40
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d3e48
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3f60
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d281e

.thumb
branch_21d281e: @ 21d281e :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3f84
	cmp     r0, #0x0
	beq     branch_21d2846
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d36d0
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d3690
	mov     r0, r5
	bl      Function_21d2238
.thumb
branch_21d2846: @ 21d2846 :thumb
	pop     {r3-r5,pc}
@ 0x21d2848

.thumb
Function_21d2848: @ 21d2848 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r0, [r5, #0x14]
	ldr     r4, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d285e
	cmp     r0, #0x1
	beq     branch_21d2886
	cmp     r0, #0x2
	beq     branch_21d28a6
	pop     {r3-r5,pc}
@ 0x21d285e

.thumb
branch_21d285e: @ 21d285e :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d4294
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d3e48
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d4004
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d2886

.thumb
branch_21d2886: @ 21d2886 :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d4020
	cmp     r0, #0x0
	beq     branch_21d28e4
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d42e4
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d28a6

.thumb
branch_21d28a6: @ 21d28a6 :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d4390
	cmp     r0, #0x0
	beq     branch_21d28e4
	ldr     r0, [r4, #0x18]
	bl      Function_21d2034
	mov     r1, r0
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d4480
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d4440
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d4dbc
	mov     r0, r5
	bl      Function_21d2238
.thumb
branch_21d28e4: @ 21d28e4 :thumb
	pop     {r3-r5,pc}
@ 0x21d28e6


.align 2, 0


.thumb
Function_21d28e8: @ 21d28e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r0, [r5, #0x14]
	ldr     r4, [r5, #0x0]
	cmp     r0, #0x4
	bhi     branch_21d29b8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d2900

Jumppoints_21d2900:
.hword branch_21d290a - Jumppoints_21d2900 - 2
.hword branch_21d291c - Jumppoints_21d2900 - 2
.hword branch_21d2946 - Jumppoints_21d2900 - 2
.hword branch_21d2966 - Jumppoints_21d2900 - 2
.hword branch_21d2978 - Jumppoints_21d2900 - 2
.thumb
branch_21d290a: @ 21d290a :thumb
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d4ba4
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d291c

.thumb
branch_21d291c: @ 21d291c :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d4440
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d4dbc
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d43b4
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d2946

.thumb
branch_21d2946: @ 21d2946 :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d43d8
	cmp     r0, #0x0
	beq     branch_21d29b8
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d4084
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d2966

.thumb
branch_21d2966: @ 21d2966 :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d403c
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d2978

.thumb
branch_21d2978: @ 21d2978 :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d4078
	cmp     r0, #0x0
	beq     branch_21d29b8
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d4c2c
	cmp     r0, #0x0
	beq     branch_21d29b8
	ldr     r0, [r4, #0x18]
	bl      Function_21d1fdc
	mov     r1, r0
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3e74
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d3e48
	mov     r0, r5
	bl      Function_21d2238
.thumb
branch_21d29b8: @ 21d29b8 :thumb
	pop     {r3-r5,pc}
@ 0x21d29ba


.align 2, 0


.thumb
Function_21d29bc: @ 21d29bc :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r0, [r5, #0x14]
	ldr     r4, [r5, #0x0]
	cmp     r0, #0x3
	bhi     branch_21d2a98
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d29d4

Jumppoints_21d29d4:
.hword branch_21d29dc - Jumppoints_21d29d4 - 2
.hword branch_21d2a10 - Jumppoints_21d29d4 - 2
.hword branch_21d2a3a - Jumppoints_21d29d4 - 2
.hword branch_21d2a5a - Jumppoints_21d29d4 - 2
.thumb
branch_21d29dc: @ 21d29dc :thumb
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3a40
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d4440
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d4dbc
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d43b4
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d2a10

.thumb
branch_21d2a10: @ 21d2a10 :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d43d8
	cmp     r0, #0x0
	beq     branch_21d2a98
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3fd0
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d403c
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d2a3a

.thumb
branch_21d2a3a: @ 21d2a3a :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d4078
	cmp     r0, #0x0
	beq     branch_21d2a98
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3fe0
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d2a5a

.thumb
branch_21d2a5a: @ 21d2a5a :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3ff8
	cmp     r0, #0x0
	beq     branch_21d2a98
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d3228
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d369c
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d36d0
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d3690
	mov     r0, r5
	bl      Function_21d2238
.thumb
branch_21d2a98: @ 21d2a98 :thumb
	pop     {r3-r5,pc}
@ 0x21d2a9a


.align 2, 0


.thumb
Function_21d2a9c: @ 21d2a9c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r0, [r5, #0x14]
	ldr     r4, [r5, #0x0]
	cmp     r0, #0x3
	bhi     branch_21d2b70
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d2ab4

Jumppoints_21d2ab4:
.hword branch_21d2abc - Jumppoints_21d2ab4 - 2
.hword branch_21d2af0 - Jumppoints_21d2ab4 - 2
.hword branch_21d2b1a - Jumppoints_21d2ab4 - 2
.hword branch_21d2b3a - Jumppoints_21d2ab4 - 2
.thumb
branch_21d2abc: @ 21d2abc :thumb
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3a40
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d4440
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d4dbc
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d43b4
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d2af0

.thumb
branch_21d2af0: @ 21d2af0 :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d43d8
	cmp     r0, #0x0
	beq     branch_21d2b70
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3fd0
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d403c
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d2b1a

.thumb
branch_21d2b1a: @ 21d2b1a :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d4078
	cmp     r0, #0x0
	beq     branch_21d2b70
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3fe0
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d2b3a

.thumb
branch_21d2b3a: @ 21d2b3a :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3ff8
	cmp     r0, #0x0
	beq     branch_21d2b70
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d3228
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d369c
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d39d4
	mov     r0, r5
	bl      Function_21d2238
.thumb
branch_21d2b70: @ 21d2b70 :thumb
	pop     {r3-r5,pc}
@ 0x21d2b72


.align 2, 0


.thumb
Function_21d2b74: @ 21d2b74 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r4, [r5, #0x0]
	ldr     r0, [r4, #0x18]
	bl      Function_21d1fcc
	mov     r1, r0
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d3700
	mov     r0, r5
	bl      Function_21d2238
	pop     {r3-r5,pc}
@ 0x21d2b94

.thumb
Function_21d2b94: @ 21d2b94 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r4, [r5, #0x0]
	ldr     r0, [r4, #0x18]
	bl      Function_21d1fd4
	mov     r1, r0
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d39ec
	mov     r0, r5
	bl      Function_21d2238
	pop     {r3-r5,pc}
@ 0x21d2bb4

.thumb
Function_21d2bb4: @ 21d2bb4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r4, [r5, #0x0]
	ldr     r0, [r4, #0x18]
	bl      Function_21d1fdc
	mov     r1, r0
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d3e74
	mov     r0, r5
	bl      Function_21d2238
	pop     {r3-r5,pc}
@ 0x21d2bd4

.thumb
Function_21d2bd4: @ 21d2bd4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r4, [r5, #0x0]
	ldr     r0, [r4, #0x18]
	bl      Function_21d2034
	mov     r1, r0
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d4480
	mov     r0, r5
	bl      Function_21d2238
	pop     {r3-r5,pc}
@ 0x21d2bf4

.thumb
Function_21d2bf4: @ 21d2bf4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r0, [r5, #0x14]
	ldr     r4, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d2c06
	cmp     r0, #0x1
	beq     branch_21d2c20
	pop     {r3-r5,pc}
@ 0x21d2c06

.thumb
branch_21d2c06: @ 21d2c06 :thumb
	ldr     r0, [r4, #0x18]
	bl      Function_21d2040
	mov     r1, r0
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d44bc
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x21d2c20

.thumb
branch_21d2c20: @ 21d2c20 :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d4578
	cmp     r0, #0x0
	beq     branch_21d2c40
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d4dbc
	mov     r0, r5
	bl      Function_21d2238
.thumb
branch_21d2c40: @ 21d2c40 :thumb
	pop     {r3-r5,pc}
@ 0x21d2c42


.align 2, 0


.thumb
Function_21d2c44: @ 21d2c44 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, #0x1e
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_21d3578
	mov     r0, r4
	bl      Function_21d2238
	pop     {r4,pc}
@ 0x21d2c5e


.align 2, 0


.thumb
Function_21d2c60: @ 21d2c60 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, #0x1e
	ldr     r4, [r5, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      Function_21d3578
	ldr     r0, [r5, #0x4]
	bl      Function_21d208c
	mov     r1, r0
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d3790
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d39e0
	cmp     r0, #0x0
	beq     branch_21d2c9e
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d39bc
	b       branch_21d2ca8
@ 0x21d2c9e

.thumb
branch_21d2c9e: @ 21d2c9e :thumb
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d3684
.thumb
branch_21d2ca8: @ 21d2ca8 :thumb
	mov     r0, r5
	bl      Function_21d2238
	pop     {r3-r5,pc}
@ 0x21d2cb0

.thumb
Function_21d2cb0: @ 21d2cb0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, #0x1e
	ldr     r4, [r5, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x3
	bl      Function_21d3578
	ldr     r0, [r5, #0x4]
	bl      Function_21d208c
	mov     r1, r0
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d3790
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d39e0
	cmp     r0, #0x0
	beq     branch_21d2cee
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d39bc
	b       branch_21d2cf8
@ 0x21d2cee

.thumb
branch_21d2cee: @ 21d2cee :thumb
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d3684
.thumb
branch_21d2cf8: @ 21d2cf8 :thumb
	mov     r0, r5
	bl      Function_21d2238
	pop     {r3-r5,pc}
@ 0x21d2d00

.thumb
Function_21d2d00: @ 21d2d00 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, #0x1e
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      Function_21d3578
	mov     r0, r4
	bl      Function_21d2238
	pop     {r4,pc}
@ 0x21d2d1a


.align 2, 0


.thumb
Function_21d2d1c: @ 21d2d1c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r0, [r5, #0x4]
	ldr     r4, [r5, #0x0]
	bl      Function_21d208c
	mov     r1, r0
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d381c
	mov     r0, r5
	bl      Function_21d2238
	pop     {r3-r5,pc}
@ 0x21d2d3c

.thumb
Function_21d2d3c: @ 21d2d3c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, #0x1e
	ldr     r4, [r5, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d3578
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d384c
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d39e0
	cmp     r0, #0x0
	beq     branch_21d2d72
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d39c8
	b       branch_21d2d7c
@ 0x21d2d72

.thumb
branch_21d2d72: @ 21d2d72 :thumb
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d3690
.thumb
branch_21d2d7c: @ 21d2d7c :thumb
	mov     r0, r5
	bl      Function_21d2238
	pop     {r3-r5,pc}
@ 0x21d2d84

.thumb
Function_21d2d84: @ 21d2d84 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, #0x1f
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_21d4df4
	mov     r0, r4
	bl      Function_21d2238
	pop     {r4,pc}
@ 0x21d2da0

.thumb
Function_21d2da0: @ 21d2da0 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, #0x1f
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	mov     r2, r1
	bl      Function_21d4df4
	mov     r0, r4
	bl      Function_21d2238
	pop     {r4,pc}
@ 0x21d2dbc

.thumb
Function_21d2dbc: @ 21d2dbc :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, #0x1f
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_21d4df4
	mov     r0, r4
	bl      Function_21d2238
	pop     {r4,pc}
@ 0x21d2dd8

.thumb
Function_21d2dd8: @ 21d2dd8 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, #0x1f
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_21d4df4
	mov     r0, r4
	bl      Function_21d2238
	pop     {r4,pc}
@ 0x21d2df4

.thumb
Function_21d2df4: @ 21d2df4 :thumb
	mov     r1, #0x1e
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x21d2e00, (=0x21d3575)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x21d2dfe


.align 2


.word 0x21d3575 @ 0x21d2e00
.thumb
Function_21d2e04: @ 21d2e04 :thumb
	ldr     r0, [r0, #0x20]
	bx      lr
@ 0x21d2e08

.thumb
Function_21d2e08: @ 21d2e08 :thumb
	ldr     r0, [r0, #0x24]
	bx      lr
@ 0x21d2e0c

.thumb
Function_21d2e0c: @ 21d2e0c :thumb
	push    {r3-r6}
	mov     r4, #0x15
	lsl     r4, r4, #4
	mov     r5, #0x24
	add     r6, r0, r4
	mul     r5, r2
	add     r5, r6, r5
	str     r5, [r1, #0x0]
	mov     r5, r4
	add     r5, #0x48
	add     r6, r0, r5
	mov     r5, #0x14
	mul     r5, r2
	lsl     r2, r2, #2
	add     r5, r6, r5
	add     r2, r0, r2
	mov     r0, r4
	str     r5, [r1, #0x8]
	add     r0, #0x70
	ldr     r0, [r2, r0]
	add     r4, #0x78
	str     r0, [r1, #0xc]
	ldr     r0, [r2, r4]
	str     r0, [r1, #0x10]
	mov     r0, r1
	add     r0, #0x20
	strb    r3, [r0, #0x0]
	mov     r0, #0x0
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x14]
	str     r0, [r1, #0x18]
	str     r0, [r1, #0x1c]
	pop     {r3-r6}
	bx      lr
@ 0x21d2e50

.thumb
Function_21d2e50: @ 21d2e50 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	ldr     r0, [r0, #0x24]
	str     r0, [sp, #0x0]
	lsl     r0, r2, #12
	str     r0, [sp, #0x8]
	lsl     r0, r3, #12
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x30]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x34]
	str     r0, [sp, #0x18]
	mov     r0, #0x23
	str     r0, [sp, #0x1c]
	blx     OS_DisableInterrupts
	mov     r4, r0
	add     r0, sp, #0x0
	bl      Function_2021b90
	mov     r5, r0
	mov     r0, r4
	blx     OS_RestoreInterrupts
	cmp     r5, #0x0
	beq     branch_21d2e9c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r1, #0x1
	mov     r0, r5
	lsl     r1, r1, #12
	bl      Function_2021ce4
.thumb
branch_21d2e9c: @ 21d2e9c :thumb
	mov     r0, r5
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x21d2ea2


.align 2, 0


.thumb
Function_21d2ea4: @ 21d2ea4 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r1, #0x1b
	mov     r5, r0
	mov     r0, #0x23
	lsl     r1, r1, #4
	mov     r7, r2
	bl      malloc
	mov     r4, r0
	str     r5, [r4, #0x0]
	str     r6, [r4, #0x4]
	str     r7, [r4, #0x8]
	mov     r0, #0x0
	str     r0, [r4, #0x3c]
	str     r0, [r4, #0x40]
	str     r0, [r4, #0x44]
	mov     r0, #0x80
	mov     r1, #0x23
	bl      Function_2023790
	str     r0, [r4, #0x4c]

	ldr     r2, [pc, #0x18] @ 0x21d2eec, (=0x1b5) PlMsg_Narc_437
	mov     r0, #0x0
	mov     r1, #PlMsg_Narc
	mov     r3, #0x23
	bl      LoadFromNARC_9
	str     r0, [r4, #0x48]
	mov     r0, #0x23
	bl      Function_20149f0
	str     r0, [r4, #0x50]
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x21d2eea

.align 2
.word 0x1b5 @ 0x21d2eec



.thumb
Function_21d2ef0: @ 21d2ef0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x50]
	cmp     r0, #0x0
	beq     branch_21d2efe
	bl      Function_2014a20
.thumb
branch_21d2efe: @ 21d2efe :thumb
	ldr     r0, [r4, #0x3c]
	cmp     r0, #0x0
	beq     branch_21d2f08
	bl      Function_2021bd4
.thumb
branch_21d2f08: @ 21d2f08 :thumb
	ldr     r0, [r4, #0x40]
	cmp     r0, #0x0
	beq     branch_21d2f12
	bl      Function_2021bd4
.thumb
branch_21d2f12: @ 21d2f12 :thumb
	ldr     r0, [r4, #0x44]
	cmp     r0, #0x0
	beq     branch_21d2f1c
	bl      Function_2021bd4
.thumb
branch_21d2f1c: @ 21d2f1c :thumb
	ldr     r0, [r4, #0x48]
	cmp     r0, #0x0
	beq     branch_21d2f26
	bl      Function_200b190
.thumb
branch_21d2f26: @ 21d2f26 :thumb
	ldr     r0, [r4, #0x4c]
	cmp     r0, #0x0
	beq     branch_21d2f30
	bl      Function_20237bc_FreeMsg
.thumb
branch_21d2f30: @ 21d2f30 :thumb
	mov     r0, r4
	add     r0, #0xc
	bl      Function_201a8fc
	mov     r0, r4
	add     r0, #0x1c
	bl      Function_201a8fc
	mov     r0, r4
	add     r0, #0x2c
	bl      Function_201a8fc
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x21d2f50

.thumb
Function_21d2f50: @ 21d2f50 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	bl      Function_21d2e04
	mov     r6, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d30a4
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x23
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r2, r6
	mov     r3, r1
	bl      Function_200710c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r0, #0x23
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r2, r6
	bl      Function_20070e8
	lsr     r4, r0, #5
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	lsl     r0, r4, #16
	mov     r1, r5
	str     r2, [sp, #0xc]
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	mov     r0, r6
	add     r1, #0xc
	mov     r3, #0x3
	bl      Function_201a7e8
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r3, #0x2
	mov     r1, r5
	str     r3, [sp, #0x8]
	mov     r0, #0xb
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #0x6c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	mov     r0, r6
	add     r1, #0x1c
	mov     r2, #0x0
	bl      Function_201a7e8
	mov     r0, #0xf
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xb
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #0xa2
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r1, r5
	str     r0, [sp, #0x10]
	mov     r0, r6
	add     r1, #0x2c
	mov     r2, #0x0
	mov     r3, #0x17
	bl      Function_201a7e8
	mov     r0, r4
	add     r0, #0xc2
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x23
	str     r0, [sp, #0xc]
	mov     r0, #0x26
	mov     r2, r6
	mov     r3, r1
	bl      LoadFromNARC_RGCN
	mov     r0, r4
	add     r0, #0xc2
	str     r0, [r5, #0x60]
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x23
	mov     r3, #0x7
	str     r0, [sp, #0x4]
	mov     r0, #PlWinframe_Narc
	mov     r1, #0x18
	mov     r2, #0x0
	lsl     r3, r3, #6
	bl      Call_LoadFromNARC_RLCN
	ldr     r0, [r5, #0x4]
	bl      Function_21d2080
	lsl     r0, r0, #24
	mov     r2, r4
	lsr     r0, r0, #24
	add     r2, #0xcb
	str     r0, [sp, #0x0]
	mov     r0, #0x23
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r1, #0x0
	lsr     r2, r2, #16
	mov     r3, #0xf
	bl      Function_200dd0c
	mov     r0, r5
	add     r4, #0xcb
	add     r0, #0x1c
	mov     r1, r4
	mov     r2, #0xf
	bl      Function_200e010
	mov     r0, r5
	add     r0, #0xc
	bl      Function_201a9f4
	mov     r0, r5
	add     r0, #0x1c
	bl      Function_201a9f4
	mov     r0, r5
	bl      Function_21d312c
	mov     r0, r5
	bl      Function_21d3228
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d3578
	mov     r0, r5
	bl      Function_21d3184
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_2019448
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21d30a4

.thumb
Function_21d30a4: @ 21d30a4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x7
	lsl     r0, r0, #6
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x23
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2007130
	mov     r0, r5
	mov     r1, #0x6
	add     r2, sp, #0x8
	mov     r3, #0x23
	bl      Function_20071ec
	mov     r5, r0
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	mov     r2, #0x5
	ldr     r0, [r0, #0xc]
	add     r1, #0x70
	lsl     r2, r2, #6
	blx     MIi_CpuCopy16
	add     r4, #0x70
	mov     r1, #0x5
	mov     r0, r4
	lsl     r1, r1, #6
	blx     DC_FlushRange
	mov     r0, r5
	bl      free
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d30f6


.align 2, 0


.thumb
Function_21d30f8: @ 21d30f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21d1f84
	cmp     r0, #0x2
	bne     branch_21d311e
	ldr     r0, [r4, #0x4]
	bl      Function_21d1f9c
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r4, #0x70
	lsl     r0, r0, #5
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r2, #0x20
	blx     GX_LoadBGPltt
	pop     {r4,pc}
@ 0x21d311e

.thumb
branch_21d311e: @ 21d311e :thumb
	add     r4, #0x70
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x20
	blx     GX_LoadBGPltt
	pop     {r4,pc}
@ 0x21d312c

.thumb
Function_21d312c: @ 21d312c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21d1f84
	cmp     r0, #0x0
	beq     branch_21d3144
	cmp     r0, #0x1
	beq     branch_21d315a
	cmp     r0, #0x2
	beq     branch_21d317e
	pop     {r4,pc}
@ 0x21d3144

.thumb
branch_21d3144: @ 21d3144 :thumb
	mov     r0, r4
	mov     r1, #0x68
	add     r0, #0x54
	strh    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x10
	add     r0, #0x56
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x5c]
	pop     {r4,pc}
@ 0x21d315a

.thumb
branch_21d315a: @ 21d315a :thumb
	mov     r0, r4
	mov     r1, #0x30
	add     r0, #0x54
	strh    r1, [r0, #0x0]
	mov     r0, r4
	mov     r2, #0x10
	add     r0, #0x56
	strh    r2, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0xa0
	add     r0, #0x58
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x5a
	strh    r2, [r0, #0x0]
	mov     r0, #0x2
	str     r0, [r4, #0x5c]
	pop     {r4,pc}
@ 0x21d317e

.thumb
branch_21d317e: @ 21d317e :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x5c]
	pop     {r4,pc}
@ 0x21d3184

.thumb
Function_21d3184: @ 21d3184 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x30
	mov     r4, r0
	ldr     r0, [r4, #0x5c]
	cmp     r0, #0x0
	beq     branch_21d319c
	mov     r0, r4
	add     r0, #0x54
	add     r1, sp, #0x8
	bl      Function_21d34e0
	b       branch_21d31a6
@ 0x21d319c

.thumb
branch_21d319c: @ 21d319c :thumb
	mov     r1, #0x80
	add     r0, sp, #0x8
	strh    r1, [r0, #0x0]
	mov     r1, #0x18
	strh    r1, [r0, #0x2]
.thumb
branch_21d31a6: @ 21d31a6 :thumb
	mov     r2, #0x0
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0xc
	mov     r3, r2
	bl      Function_21d2e0c
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	add     r5, sp, #0x8
	mov     r3, #0x2
	ldsh    r2, [r5, r2]
	ldsh    r3, [r5, r3]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0xc
	bl      Function_21d2e50
	str     r0, [r4, #0x3c]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d375c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0xc
	mov     r2, #0x6
	mov     r3, #0x18
	bl      Function_21d2e50
	mov     r1, #0xd
	str     r0, [r4, #0x40]
	bl      Function_2021d6c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0xc
	mov     r2, #0xfa
	mov     r3, #0x18
	bl      Function_21d2e50
	str     r0, [r4, #0x44]
	mov     r1, #0xc
	bl      Function_2021d6c
	ldr     r0, [r4, #0x4]
	bl      Function_21d1f84
	cmp     r0, #0x2
	beq     branch_21d3222
	ldr     r0, [r4, #0x44]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r4, #0x40]
	mov     r1, #0x0
	bl      Function_2021cac
.thumb
branch_21d3222: @ 21d3222 :thumb
	add     sp, #0x30
	pop     {r3-r5,pc}
@ 0x21d3226


.align 2, 0


.thumb
Function_21d3228: @ 21d3228 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d30f8
	mov     r0, r4
	add     r0, #0xc
	mov     r1, #0xd
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r4, #0x4]
	bl      Function_21d1f84
	cmp     r0, #0x0
	beq     branch_21d324e
	cmp     r0, #0x1
	beq     branch_21d3274
	cmp     r0, #0x2
	beq     branch_21d32be
	b       branch_21d32c6
@ 0x21d324e

.thumb
branch_21d324e: @ 21d324e :thumb
	mov     r0, r4
	mov     r1, r4
	add     r0, #0xc
	add     r1, #0x54
	bl      Function_21d34f4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_21d1fa8
	mov     r1, r4
	mov     r2, r4
	mov     r3, r0
	mov     r0, r4
	add     r1, #0xc
	add     r2, #0x54
	bl      Function_21d351c
	b       branch_21d32c6
@ 0x21d3274

.thumb
branch_21d3274: @ 21d3274 :thumb
	mov     r0, r4
	mov     r1, r4
	add     r0, #0xc
	add     r1, #0x54
	bl      Function_21d34f4
	mov     r0, r4
	mov     r1, r4
	add     r0, #0xc
	add     r1, #0x58
	bl      Function_21d34f4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_21d1fa8
	mov     r1, r4
	mov     r2, r4
	mov     r3, r0
	mov     r0, r4
	add     r1, #0xc
	add     r2, #0x54
	bl      Function_21d351c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_21d1fa8
	mov     r1, r4
	mov     r2, r4
	mov     r3, r0
	mov     r0, r4
	add     r1, #0xc
	add     r2, #0x58
	bl      Function_21d351c
	b       branch_21d32c6
@ 0x21d32be

.thumb
branch_21d32be: @ 21d32be :thumb
	mov     r0, r4
	bl      Function_21d32d0
	str     r0, [r4, #0x5c]
.thumb
branch_21d32c6: @ 21d32c6 :thumb
	add     r4, #0xc
	mov     r0, r4
	bl      Function_201accc
	pop     {r4,pc}
@ 0x21d32d0

.thumb
Function_21d32d0: @ 21d32d0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	str     r0, [sp, #0x10]
	ldr     r0, [r0, #0x4]
	mov     r1, #0x23
	bl      Function_21d1fc0
	mov     r4, #0x0
	str     r0, [sp, #0x1c]
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x10]
	add     r0, #0x64
	str     r4, [sp, #0x18]
	mov     r5, r4
	bl      Function_21d33c8
	ldr     r7, [sp, #0x10]
	mov     r0, r7
	str     r0, [sp, #0x24]
	add     r0, #0xc
	str     r0, [sp, #0x24]
	mov     r0, r7
	mov     r6, r7
	str     r0, [sp, #0x20]
	add     r0, #0x64
	add     r6, #0x54
	str     r0, [sp, #0x20]
.thumb
branch_21d330a: @ 21d330a :thumb
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x1c]
	bl      Function_21d3400
	cmp     r0, #0x3
	bhi     branch_21d33a2
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d3322

Jumppoints_21d3322:
.hword branch_21d332a - Jumppoints_21d3322 - 2
.hword branch_21d3352 - Jumppoints_21d3322 - 2
.hword branch_21d3398 - Jumppoints_21d3322 - 2
.hword branch_21d339e - Jumppoints_21d3322 - 2
.thumb
branch_21d332a: @ 21d332a :thumb
	str     r4, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x8c] @ 0x21d33c0, (=0x3040d)
	ldr     r2, [sp, #0x1c]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x1
	mov     r3, r5
	bl      Function_201d78c
	ldr     r1, [sp, #0x1c]
	mov     r0, #0x1
	mov     r2, #0x0
	bl      Function_2002d7c
	add     r5, r5, r0
	b       branch_21d33a2
@ 0x21d3352

.thumb
branch_21d3352: @ 21d3352 :thumb
	mov     r1, r5
	mov     r0, r7
	add     r1, #0x32
	add     r0, #0x54
	strh    r1, [r0, #0x0]
	mov     r1, r4
	mov     r0, r7
	add     r1, #0x8
	add     r0, #0x56
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x24]
	mov     r1, r6
	bl      Function_21d34f4
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x18]
	ldr     r0, [r0, #0x4]
	bl      Function_21d1fa8
	mov     r3, r0
	ldr     r0, [pc, #0x48] @ 0x21d33c4, (=0xffff)
	cmp     r3, r0
	beq     branch_21d338a
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x24]
	mov     r2, r6
	bl      Function_21d351c
.thumb
branch_21d338a: @ 21d338a :thumb
	ldr     r0, [sp, #0x18]
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	str     r0, [sp, #0x18]
	add     r5, #0x64
	b       branch_21d33a2
@ 0x21d3398

.thumb
branch_21d3398: @ 21d3398 :thumb
	add     r4, #0x10
	mov     r5, #0x0
	b       branch_21d33a2
@ 0x21d339e

.thumb
branch_21d339e: @ 21d339e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x14]
.thumb
branch_21d33a2: @ 21d33a2 :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	bne     branch_21d330a
	ldr     r0, [sp, #0x10]
	add     r0, #0x64
	str     r0, [sp, #0x10]
	bl      Function_21d33f4
	ldr     r0, [sp, #0x1c]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x18]
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x21d33be


.align 2


.word 0x3040d @ 0x21d33c0
.word 0xffff @ 0x21d33c4
.thumb
Function_21d33c8: @ 21d33c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r1, #0x4]
	mov     r1, #0x23
	bl      Function_21d1fc0
	str     r0, [r4, #0x0]
	bl      Function_2023e2c
	str     r0, [r4, #0x4]
	ldrh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x10] @ 0x21d33f0, (=0xfffe)
	cmp     r1, r0
	bne     branch_21d33ea
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x21d33ea

.thumb
branch_21d33ea: @ 21d33ea :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x21d33f0

.word 0xfffe @ 0x21d33f0
.thumb
Function_21d33f4: @ 21d33f4 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d33fc, (=Function_20237bc_FreeMsg+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d33fa

.align 2
.word Function_20237bc_FreeMsg+1 @ 0x21d33fc



.thumb
Function_21d3400: @ 21d3400 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	str     r1, [sp, #0x0]
	mov     r12, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x3
	bhi     branch_21d3490
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d341c

Jumppoints_21d341c:
.hword branch_21d3424 - Jumppoints_21d341c - 2
.hword branch_21d347a - Jumppoints_21d341c - 2
.hword branch_21d3486 - Jumppoints_21d341c - 2
.hword branch_21d3490 - Jumppoints_21d341c - 2
.thumb
branch_21d3424: @ 21d3424 :thumb
	cmp     r0, #0x0
	bne     branch_21d3460
	ldr     r6, [pc, #0x9c] @ 0x21d34c8, (=0xfffe)
	mov     r3, #0xe
	mov     r0, #0x1
	mov     r1, #0x3
	mov     r2, #0x2
	add     r7, r6, #0x1
	lsl     r3, r3, #12
.thumb
branch_21d3436: @ 21d3436 :thumb
	ldr     r5, [r4, #0x4]
	ldrh    r5, [r5, #0x0]
	cmp     r5, r3
	beq     branch_21d3448
	cmp     r5, r6
	beq     branch_21d3450
	cmp     r5, r7
	beq     branch_21d344c
	b       branch_21d3454
@ 0x21d3448

.thumb
branch_21d3448: @ 21d3448 :thumb
	str     r2, [r4, #0x8]
	b       branch_21d345a
@ 0x21d344c

.thumb
branch_21d344c: @ 21d344c :thumb
	str     r1, [r4, #0x8]
	b       branch_21d345a
@ 0x21d3450

.thumb
branch_21d3450: @ 21d3450 :thumb
	str     r0, [r4, #0x8]
	b       branch_21d345a
@ 0x21d3454

.thumb
branch_21d3454: @ 21d3454 :thumb
	ldr     r5, [r4, #0x4]
	.hword  0x1cad @ add r5, r5, #0x2
	str     r5, [r4, #0x4]
.thumb
branch_21d345a: @ 21d345a :thumb
	ldr     r5, [r4, #0x8]
	cmp     r5, #0x0
	beq     branch_21d3436
.thumb
branch_21d3460: @ 21d3460 :thumb
	ldr     r3, [r4, #0x4]
	mov     r2, r12
	sub     r3, r3, r2
	lsr     r2, r3, #31
	add     r2, r3, r2
	asr     r2, r2, #1
	ldr     r0, [sp, #0x0]
	mov     r1, r12
	.hword  0x1c52 @ add r2, r2, #0x1
	bl      Function_2023d8c
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d347a

.thumb
branch_21d347a: @ 21d347a :thumb
	mov     r0, r12
	bl      Function_201d0c8
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	b       branch_21d3494
@ 0x21d3486

.thumb
branch_21d3486: @ 21d3486 :thumb
	mov     r0, r12
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [r4, #0x4]
	mov     r0, #0x2
	b       branch_21d3494
@ 0x21d3490

.thumb
branch_21d3490: @ 21d3490 :thumb
	mov     r0, #0x3
	pop     {r3-r7,pc}
@ 0x21d3494

.thumb
branch_21d3494: @ 21d3494 :thumb
	ldr     r1, [r4, #0x4]
	ldrh    r2, [r1, #0x0]
	mov     r1, #0xe
	lsl     r1, r1, #12
	cmp     r2, r1
	beq     branch_21d34ae
	ldr     r1, [pc, #0x24] @ 0x21d34c8, (=0xfffe)
	cmp     r2, r1
	beq     branch_21d34ba
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r2, r1
	beq     branch_21d34b4
	b       branch_21d34c0
@ 0x21d34ae

.thumb
branch_21d34ae: @ 21d34ae :thumb
	mov     r1, #0x2
	str     r1, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x21d34b4

.thumb
branch_21d34b4: @ 21d34b4 :thumb
	mov     r1, #0x3
	str     r1, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x21d34ba

.thumb
branch_21d34ba: @ 21d34ba :thumb
	mov     r1, #0x1
	str     r1, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x21d34c0

.thumb
branch_21d34c0: @ 21d34c0 :thumb
	mov     r1, #0x0
	str     r1, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x21d34c6


.align 2


.word 0xfffe @ 0x21d34c8
.thumb
Function_21d34cc: @ 21d34cc :thumb
	mov     r2, #0x0
	ldsh    r2, [r0, r2]
	sub     r2, #0x30
	strh    r2, [r1, #0x0]
	mov     r2, #0x2
	ldsh    r0, [r0, r2]
	sub     r0, #0x8
	strh    r0, [r1, #0x2]
	bx      lr
@ 0x21d34de


.align 2, 0


.thumb
Function_21d34e0: @ 21d34e0 :thumb
	mov     r2, #0x0
	ldsh    r2, [r0, r2]
	add     r2, #0x18
	strh    r2, [r1, #0x0]
	mov     r2, #0x2
	ldsh    r0, [r0, r2]
	add     r0, #0x8
	strh    r0, [r1, #0x2]
	bx      lr
@ 0x21d34f2


.align 2, 0


.thumb
Function_21d34f4: @ 21d34f4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, r1
	add     r1, sp, #0x8
	bl      Function_21d34cc
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	add     r3, sp, #0x8
	ldrh    r2, [r3, #0x0]
	ldrh    r3, [r3, #0x2]
	mov     r0, r4
	mov     r1, #0xe
	bl      Function_201ae78
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d351c

.thumb
Function_21d351c: @ 21d351c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [pc, #0x48] @ 0x21d356c, (=0xffff)
	mov     r6, r3
	mov     r4, r1
	cmp     r6, r0
	beq     branch_21d3566
	mov     r0, r2
	add     r1, sp, #0x10
	bl      Function_21d34cc
	ldr     r1, [r5, #0x4c]
	mov     r0, r6
	bl      Function_2014db8
	ldr     r1, [r5, #0x4c]
	mov     r0, #0x1
	mov     r2, #0x0
	bl      Function_2002d7c
	add     r3, sp, #0x10
	mov     r0, #0x2
	ldsh    r0, [r3, r0]
	mov     r6, #0x0
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d3570, (=0x5060e)
	str     r0, [sp, #0x8]
	str     r6, [sp, #0xc]
	ldsh    r3, [r3, r6]
	ldr     r2, [r5, #0x4c]
	mov     r0, r4
	bl      Function_201d78c
.thumb
branch_21d3566: @ 21d3566 :thumb
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21d356a


.align 2


.word 0xffff @ 0x21d356c
.word 0x5060e @ 0x21d3570
.thumb
Function_21d3574: @ 21d3574 :thumb
	ldr     r0, [r0, #0x5c]
	bx      lr
@ 0x21d3578

.thumb
Function_21d3578: @ 21d3578 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r5, r1
	add     r0, #0x1c
	mov     r1, #0x9
	bl      Function_201ada4_ClearTextBox
	cmp     r5, #0x3
	bhi     branch_21d3674
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d3598

Jumppoints_21d3598:
.hword branch_21d35a0 - Jumppoints_21d3598 - 2
.hword branch_21d362a - Jumppoints_21d3598 - 2
.hword branch_21d3604 - Jumppoints_21d3598 - 2
.hword branch_21d3650 - Jumppoints_21d3598 - 2
.thumb
branch_21d35a0: @ 21d35a0 :thumb
	mov     r0, #0x2
	mov     r1, #0x3c
	mov     r2, #0x0
	bl      Function_200b368
	mov     r5, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	mov     r1, #0x0
	bl      Function_2023790
	mov     r1, #0x0
	mov     r6, r0
	mov     r0, r5
	mov     r2, r1
	bl      Function_200b7b4
	ldr     r0, [r4, #0x4]
	bl      Function_21d1f88
	mov     r1, r0
	ldr     r0, [r4, #0x48]
	ldr     r2, [r4, #0x4c]
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r2, [r4, #0x4c]
	mov     r0, r5
	mov     r1, r6
	bl      Function_200c388
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x98] @ 0x21d3680, (=0x10209)
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0x1c
	mov     r2, r6
	str     r3, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	mov     r0, r5
	bl      Function_200b3f0
	b       branch_21d3674
@ 0x21d3604

.thumb
branch_21d3604: @ 21d3604 :thumb
	ldr     r0, [r4, #0x48]
	ldr     r2, [r4, #0x4c]
	mov     r1, #0x6
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x68] @ 0x21d3680, (=0x10209)
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x4c]
	add     r0, #0x1c
	bl      Function_201d78c
	b       branch_21d3674
@ 0x21d362a

.thumb
branch_21d362a: @ 21d362a :thumb
	ldr     r0, [r4, #0x48]
	ldr     r2, [r4, #0x4c]
	mov     r1, #0x7
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x40] @ 0x21d3680, (=0x10209)
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x4c]
	add     r0, #0x1c
	bl      Function_201d78c
	b       branch_21d3674
@ 0x21d3650

.thumb
branch_21d3650: @ 21d3650 :thumb
	ldr     r0, [r4, #0x48]
	ldr     r2, [r4, #0x4c]
	mov     r1, #0x8
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d3680, (=0x10209)
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x4c]
	add     r0, #0x1c
	bl      Function_201d78c
.thumb
branch_21d3674: @ 21d3674 :thumb
	add     r4, #0x1c
	mov     r0, r4
	bl      Function_201accc
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d3680

.word 0x10209 @ 0x21d3680
.thumb
Function_21d3684: @ 21d3684 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d368c, (=0x21d375d)
	mov     r1, #0x0
	bx      r3
@ 0x21d368a


.align 2


.word Function_21d375c+1 @ =0x21d375d, 0x21d368c
.thumb
Function_21d3690: @ 21d3690 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d3698, (=0x21d375d)
	mov     r1, #0x1
	bx      r3
@ 0x21d3696


.align 2


.word Function_21d375c+1 @ =0x21d375d, 0x21d3698
.thumb
Function_21d369c: @ 21d369c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x3c]
	bl      Function_2021cac
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d375c
	pop     {r4,pc}
@ 0x21d36b0

.thumb
Function_21d36b0: @ 21d36b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21d1f84
	cmp     r0, #0x2
	bne     branch_21d36ce
	ldr     r0, [r4, #0x40]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r4, #0x44]
	mov     r1, #0x0
	bl      Function_2021cac
.thumb
branch_21d36ce: @ 21d36ce :thumb
	pop     {r4,pc}
@ 0x21d36d0

.thumb
Function_21d36d0: @ 21d36d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21d1f84
	cmp     r0, #0x2
	bne     branch_21d36fe
	ldr     r0, [r4, #0x40]
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r0, [r4, #0x44]
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r0, [r4, #0x40]
	mov     r1, #0xd
	bl      Function_2021d6c
	ldr     r0, [r4, #0x44]
	mov     r1, #0xc
	bl      Function_2021d6c
.thumb
branch_21d36fe: @ 21d36fe :thumb
	pop     {r4,pc}
@ 0x21d3700

.thumb
Function_21d3700: @ 21d3700 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [r4, #0x5c]
	cmp     r0, #0x0
	beq     branch_21d3730
	mov     r2, r4
	lsl     r0, r1, #2
	add     r2, #0x54
	add     r0, r2, r0
	add     r1, sp, #0x0
	bl      Function_21d34e0
	add     r1, sp, #0x0
	mov     r2, #0x0
	ldsh    r0, [r1, r2]
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	ldsh    r0, [r1, r0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	b       branch_21d3748
@ 0x21d3730

.thumb
branch_21d3730: @ 21d3730 :thumb
	mov     r0, #0x2
	lsl     r0, r0, #18
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	lsl     r0, r0, #14
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x3c]
	add     r1, sp, #0x4
	bl      Function_2021c50
.thumb
branch_21d3748: @ 21d3748 :thumb
	ldr     r0, [r4, #0x3c]
	add     r1, sp, #0x4
	bl      Function_2021c50
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d375c
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d375c

.thumb
Function_21d375c: @ 21d375c :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x5c]
	cmp     r2, #0x0
	beq     branch_21d377a
	cmp     r1, #0x0
	ldr     r0, [r0, #0x3c]
	beq     branch_21d3772
	mov     r1, #0x0
	bl      Function_2021d6c
	pop     {r3,pc}
@ 0x21d3772

.thumb
branch_21d3772: @ 21d3772 :thumb
	mov     r1, #0x1
	bl      Function_2021d6c
	pop     {r3,pc}
@ 0x21d377a

.thumb
branch_21d377a: @ 21d377a :thumb
	cmp     r1, #0x0
	ldr     r0, [r0, #0x3c]
	beq     branch_21d3788
	mov     r1, #0xe
	bl      Function_2021d6c
	pop     {r3,pc}
@ 0x21d3788

.thumb
branch_21d3788: @ 21d3788 :thumb
	mov     r1, #0xf
	bl      Function_2021d6c
	pop     {r3,pc}
@ 0x21d3790

.thumb
Function_21d3790: @ 21d3790 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r1
	add     r0, #0x2c
	mov     r1, #0x9
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r5, #0x48]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0x9
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x64] @ 0x21d3818, (=0x10209)
	mov     r3, #0xe
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	ldr     r2, [r5, #0x4c]
	add     r0, #0x2c
	bl      Function_201d78c
	ldr     r0, [r5, #0x48]
	ldr     r2, [r5, #0x4c]
	mov     r1, #0xa
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x40] @ 0x21d3818, (=0x10209)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	ldr     r2, [r5, #0x4c]
	add     r0, #0x2c
	mov     r3, #0xe
	bl      Function_201d78c
	ldr     r2, [r5, #0x60]
	mov     r0, r5
	lsl     r2, r2, #16
	add     r0, #0x2c
	mov     r1, #0x0
	lsr     r2, r2, #16
	mov     r3, #0xe
	bl      Function_200dc48
	mov     r1, r5
	ldr     r0, [r5, #0x50]
	add     r1, #0x2c
	mov     r2, #0x0
	lsl     r3, r4, #4
	bl      Function_2014a58
	add     r5, #0x2c
	mov     r0, r5
	bl      Function_201a954
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d3816


.align 2


.word 0x10209 @ 0x21d3818
.thumb
Function_21d381c: @ 21d381c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0xe
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x0
	mov     r4, r1
	add     r0, #0x2c
	mov     r1, #0x9
	mov     r3, r2
	bl      Function_201ae78
	ldr     r0, [r5, #0x50]
	add     r5, #0x2c
	mov     r1, r5
	mov     r2, #0x0
	lsl     r3, r4, #4
	bl      Function_2014a58
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d384c

.thumb
Function_21d384c: @ 21d384c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x2c
	mov     r1, #0x0
	bl      Function_200dc9c
	add     r4, #0x2c
	mov     r0, r4
	bl      Function_201acf4
	pop     {r4,pc}
@ 0x21d3862


.align 2, 0


.thumb
Function_21d3864: @ 21d3864 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x23
	mov     r1, #0x10
	mov     r6, r2
	bl      malloc
	str     r5, [r0, #0x0]
	str     r4, [r0, #0x4]
	str     r6, [r0, #0x8]
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	pop     {r4-r6,pc}
@ 0x21d3880

.thumb
Function_21d3880: @ 21d3880 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d388e
	bl      Function_2021bd4
.thumb
branch_21d388e: @ 21d388e :thumb
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x21d3896


.align 2, 0


.thumb
Function_21d3898: @ 21d3898 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, r1
	bl      Function_21d2e04
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x23
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0x4
	mov     r2, r4
	mov     r3, #0x3
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x23
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0x5
	mov     r2, r4
	mov     r3, #0x3
	bl      Function_20070e8
	ldr     r1, [pc, #0x24] @ 0x21d3904, (=0x21d52d4)
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_21d390c
	ldr     r1, [pc, #0x20] @ 0x21d3908, (=0x21d52dc)
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_21d390c
	mov     r0, r5
	bl      Function_21d3980
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019448
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d3902


.align 2


.word 0x21d52d4 @ 0x21d3904
.word 0x21d52dc @ 0x21d3908
.thumb
Function_21d390c: @ 21d390c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	mov     r5, r1
	mov     r4, r2
	add     r1, sp, #0x10
	mov     r2, r5
	bl      Function_201a8d4
	add     r0, sp, #0x10
	bl      Function_201a9f4
	add     r0, sp, #0x10
	mov     r1, #0xe
	bl      Function_201ada4_ClearTextBox
	ldr     r1, [pc, #0x4c] @ 0x21d3978, (=0x1b6)
	mov     r0, #0x1a
	mov     r2, r4
	mov     r3, #0x23
	bl      Function_200b010_LoadFromNARCCallMsgDecrypt
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	bl      Function_2002d7c
	ldrb    r1, [r5, #0x3]
	mov     r2, r4
	lsl     r1, r1, #3
	sub     r0, r1, r0
	mov     r1, #0x0
	lsr     r3, r0, #1
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x21d397c, (=0x1020e)
	str     r0, [sp, #0x8]
	add     r0, sp, #0x10
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	add     r0, sp, #0x10
	bl      Function_201accc
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     r0, sp, #0x10
	bl      Function_201a8fc
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x21d3976


.align 2


.word 0x1b6 @ 0x21d3978
.word 0x1020e @ 0x21d397c
.thumb
Function_21d3980: @ 21d3980 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x2c
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x8
	mov     r2, #0x0
	mov     r3, #0x3
	bl      Function_21d2e0c
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x8
	mov     r2, #0x40
	mov     r3, #0x38
	bl      Function_21d2e50
	str     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      Function_2021d6c
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      Function_2021cac
	add     sp, #0x2c
	pop     {r3,r4,pc}
@ 0x21d39ba


.align 2, 0


.thumb
Function_21d39bc: @ 21d39bc :thumb
	ldr     r3, [pc, #0x4] @ 0x21d39c4, (=Function_2021d6c+1)
	ldr     r0, [r0, #0xc]
	mov     r1, #0x3
	bx      r3
@ 0x21d39c4

.word Function_2021d6c+1 @ 0x21d39c4



.thumb
Function_21d39c8: @ 21d39c8 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d39d0, (=Function_2021d6c+1)
	ldr     r0, [r0, #0xc]
	mov     r1, #0x2
	bx      r3
@ 0x21d39d0

.word Function_2021d6c+1 @ 0x21d39d0



.thumb
Function_21d39d4: @ 21d39d4 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d39dc, (=Function_2021cac+1)
	ldr     r0, [r0, #0xc]
	bx      r3
@ 0x21d39da

.align 2
.word Function_2021cac+1 @ 0x21d39dc



.thumb
Function_21d39e0: @ 21d39e0 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d39e8, (=Function_2021d34+1)
	ldr     r0, [r0, #0xc]
	bx      r3
@ 0x21d39e6

.align 2
.word Function_2021d34+1 @ 0x21d39e8



.thumb
Function_21d39ec: @ 21d39ec :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	cmp     r1, #0x0
	beq     branch_21d39fe
	cmp     r1, #0x1
	beq     branch_21d3a0c
.thumb
branch_21d39fe: @ 21d39fe :thumb
	mov     r0, #0x1
	lsl     r0, r0, #18
	str     r0, [sp, #0x0]
	mov     r0, #0xe
	lsl     r0, r0, #14
	str     r0, [sp, #0x4]
	b       branch_21d3a18
@ 0x21d3a0c

.thumb
branch_21d3a0c: @ 21d3a0c :thumb
	mov     r0, #0x3
	lsl     r0, r0, #18
	str     r0, [sp, #0x0]
	mov     r0, #0xe
	lsl     r0, r0, #14
	str     r0, [sp, #0x4]
.thumb
branch_21d3a18: @ 21d3a18 :thumb
	ldr     r0, [r4, #0xc]
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      Function_2021d6c
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d3a2c

.thumb
Function_21d3a2c: @ 21d3a2c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	bl      Function_21d2e04
	mov     r1, #0x3
	mov     r2, r1
	mov     r3, #0x40
	bl      Function_2019184
	pop     {r3,pc}
@ 0x21d3a40

.thumb
Function_21d3a40: @ 21d3a40 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	bl      Function_21d2e04
	mov     r1, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2019184
	pop     {r3,pc}
@ 0x21d3a54

.thumb
Function_21d3a54: @ 21d3a54 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x23
	mov     r1, #0x60
	mov     r7, r2
	bl      malloc
	mov     r4, r0
	str     r5, [r4, #0x0]
	str     r6, [r4, #0x4]
	str     r7, [r4, #0x8]
	mov     r0, r5
	bl      Function_21d2e04
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	str     r0, [r4, #0x18]
	str     r0, [r4, #0x5c]
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x21d3a80

.thumb
Function_21d3a80: @ 21d3a80 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x5c]
	cmp     r0, #0x0
	beq     branch_21d3a8e
	bl      Function_2021bd4
.thumb
branch_21d3a8e: @ 21d3a8e :thumb
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x21d3a96


.align 2, 0


.thumb
Function_21d3a98: @ 21d3a98 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, r1
	bl      Function_21d2e04
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x23
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0x2
	mov     r2, r4
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x23
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0x3
	mov     r2, r4
	bl      Function_20070e8
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	lsr     r2, r2, #5
	bl      Function_21d3b74
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d3c78
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d3d44
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x1
	.hword  0x1f13 @ sub r3, r2, #0x4
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, #0x2
	bl      Function_2019184
	mov     r0, r5
	bl      Function_21d3e0c
	mov     r1, #0x2
	mov     r2, r1
	ldr     r0, [pc, #0x4c] @ 0x21d3b68, (=REG_BLDCNT)
	sub     r2, #0xc
	blx     G2x_SetBlendBrightness_
	ldr     r0, [pc, #0x48] @ 0x21d3b6c, (=WIN_IN)
	mov     r2, #0x3f
	ldrh    r3, [r0, #0x0]
	mov     r1, #0x1f
	bic     r3, r2
	orr     r1, r3
	mov     r3, #0x20
	orr     r1, r3
	strh    r1, [r0, #0x0]
	ldrh    r5, [r0, #0x2]
	mov     r1, #0x1d
	bic     r5, r2
	orr     r1, r5
	orr     r1, r3
	strh    r1, [r0, #0x2]
	mov     r1, r0
	mov     r2, #0xff
	sub     r1, #0x8
	strh    r2, [r1, #0x0]
	mov     r1, #0xa0
	.hword  0x1f00 @ sub r0, r0, #0x4
	strh    r1, [r0, #0x0]
	lsl     r2, r3, #21
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x21d3b70, (=0xffff1fff)
	and     r1, r0
	lsl     r0, r3, #8
	orr     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019448
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d3b68

.word REG_BLDCNT @ 0x21d3b68
.word WIN_IN @ 0x21d3b6c
.word 0xffff1fff @ 0x21d3b70
.thumb
Function_21d3b74: @ 21d3b74 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r6, r2
	mov     r2, #PlMsg_Narc_436/4
	str     r0, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r0, #0x1
	mov     r1, #PlMsg_Narc
	lsl     r2, r2, #2
	mov     r3, #0x23
	bl      LoadFromNARC_9
	str     r0, [sp, #0x20]
	mov     r0, #0x9
	mov     r7, #0x1
	str     r0, [sp, #0x24]
	mov     r4, #0x0
branch_21d3b96: @ 21d3b96 :thumb
	cmp     r4, #0x0
	beq     branch_21d3bae
	mov     r0, r4
	mov     r1, #0x3
	blx     _s32_div_f
	cmp     r1, #0x0
	bne     branch_21d3bae
	ldr     r0, [sp, #0x24]
	mov     r7, #0x1
	.hword  0x1cc0 @ add r0, r0, #0x3
	str     r0, [sp, #0x24]
.thumb
branch_21d3bae: @ 21d3bae :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, r4
	ldr     r0, [r0, #0x8]
	bl      Function_2099ca0
	cmp     r0, #0x0
	beq     branch_21d3bcc
	ldr     r0, [sp, #0x20]
	mov     r1, r4
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r5, r0
	ldr     r0, [pc, #0xa4] @ 0x21d3c6c, (=0x1020f)
	str     r0, [sp, #0x1c]
	b       branch_21d3bda
@ 0x21d3bcc

.thumb
branch_21d3bcc: @ 21d3bcc :thumb
	ldr     r0, [sp, #0x20]
	mov     r1, #0xc
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r5, r0
	ldr     r0, [pc, #0x98] @ 0x21d3c70, (=0x3040f)
	str     r0, [sp, #0x1c]
.thumb
branch_21d3bda: @ 21d3bda :thumb
	ldr     r0, [pc, #0x98] @ 0x21d3c74, (=0x3ee)
	cmp     r6, r0
	bcc     branch_21d3be4
	bl      ErrorHandling
.thumb
branch_21d3be4: @ 21d3be4 :thumb
	ldr     r0, [sp, #0x24]
	lsl     r3, r7, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xb
	str     r0, [sp, #0xc]
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	add     r1, sp, #0x28
	mov     r2, #0x1
	lsr     r3, r3, #24
	bl      Function_201a7e8
	add     r0, sp, #0x28
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0x48
	sub     r0, r1, r0
	lsr     r3, r0, #1
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	add     r0, sp, #0x28
	mov     r2, r5
	bl      Function_201d78c
	add     r0, sp, #0x28
	bl      Function_201a9f4
	add     r0, sp, #0x28
	bl      Function_201accc
	mov     r0, r5
	bl      Function_20237bc_FreeMsg
	add     r0, sp, #0x28
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x12
	add     r7, #0xa
	cmp     r4, #0xc
	blt     branch_21d3b96
	ldr     r0, [sp, #0x20]
	bl      Function_200b190
	mov     r0, r6
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x21d3c6c

.word 0x1020f @ 0x21d3c6c
.word 0x3040f @ 0x21d3c70
.word 0x3ee @ 0x21d3c74
.thumb
Function_21d3c78: @ 21d3c78 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r4, r1
	mov     r1, #0xce
	mov     r6, r0
	lsl     r1, r1, #2
	mov     r0, r2
	str     r2, [sp, #0x14]
	cmp     r0, r1
	bcc     branch_21d3c90
	bl      ErrorHandling
.thumb
branch_21d3c90: @ 21d3c90 :thumb
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, #0x19
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xb
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	add     r1, sp, #0x20
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x22
	bl      Function_201a7e8
	mov     r0, #0x4
	mov     r1, #0x23
	bl      Function_2023790
	mov     r4, r0
	add     r0, sp, #0x20
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	bl      Function_21d5044
	mov     r7, r0
	ldr     r5, [pc, #0x68] @ 0x21d3d38, (=0x0)
	beq     branch_21d3d16
.thumb
branch_21d3cd0: @ 21d3cd0 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d5048
	mov     r0, r5
	add     r1, sp, #0x1c
	add     r2, sp, #0x18
	bl      Function_21d506c
	ldr     r0, [r6, #0x8]
	mov     r1, r5
	bl      Function_2099cdc
	cmp     r0, #0x0
	beq     branch_21d3cf2
	ldr     r1, [pc, #0x4c] @ 0x21d3d3c, (=0x1020f)
	b       branch_21d3cf4
@ 0x21d3cf2

.thumb
branch_21d3cf2: @ 21d3cf2 :thumb
	ldr     r1, [pc, #0x4c] @ 0x21d3d40, (=0x3040f)
.thumb
branch_21d3cf4: @ 21d3cf4 :thumb
	ldr     r0, [sp, #0x18]
	mov     r2, r4
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r3, [sp, #0x1c]
	add     r0, sp, #0x20
	mov     r1, #0x0
	.hword  0x1cdb @ add r3, r3, #0x3
	bl      Function_201d78c
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	bcc     branch_21d3cd0
.thumb
branch_21d3d16: @ 21d3d16 :thumb
	add     r0, sp, #0x20
	bl      Function_201accc
	add     r0, sp, #0x20
	bl      Function_201a9f4
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     r0, sp, #0x20
	bl      Function_201a8fc
	ldr     r0, [sp, #0x14]
	add     r0, #0xc8
	str     r0, [sp, #0x14]
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x21d3d38

.word 0x0 @ 0x21d3d38
.word 0x1020f @ 0x21d3d3c
.word 0x3040f @ 0x21d3d40
.thumb
Function_21d3d44: @ 21d3d44 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r5, r2
	mov     r2, #PlMsg_Narc_436/4
	str     r1, [sp, #0x14]
	mov     r0, #0x1
	mov     r1, #PlMsg_Narc
	lsl     r2, r2, #2
	mov     r3, #0x23
	bl      LoadFromNARC_9
	mov     r1, #0xd
	str     r0, [sp, #0x20]
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x1c]
	mov     r0, #0x0
	ldr     r1, [sp, #0x1c]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0x40
	sub     r0, r1, r0
	lsr     r0, r0, #1
	ldr     r4, [pc, #0x8c] @ 0x21d3e04, (=0x21d52e4)
	str     r0, [sp, #0x18]
	mov     r7, #0x0
	add     r6, sp, #0x24
.thumb
branch_21d3d7c: @ 21d3d7c :thumb
	mov     r0, #0x3f
	lsl     r0, r0, #4
	cmp     r5, r0
	bcc     branch_21d3d88
	bl      ErrorHandling
.thumb
branch_21d3d88: @ 21d3d88 :thumb
	ldrh    r0, [r4, #0x2]
	mov     r1, r6
	mov     r2, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xb
	str     r0, [sp, #0xc]
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldrh    r3, [r4, #0x0]
	ldr     r0, [sp, #0x14]
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      Function_201a7e8
	mov     r0, r6
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x44] @ 0x21d3e08, (=0x1020f)
	ldr     r2, [sp, #0x1c]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r3, [sp, #0x18]
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_201a9f4
	mov     r0, r6
	bl      Function_201accc
	mov     r0, r6
	bl      Function_201a8fc
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0x10
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x2
	bcc     branch_21d3d7c
	ldr     r0, [sp, #0x1c]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x20]
	bl      Function_200b190
	mov     r0, r5
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x21d3e04

.word 0x21d52e4 @ 0x21d3e04
.word 0x1020f @ 0x21d3e08
.thumb
Function_21d3e0c: @ 21d3e0c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x2c
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x8
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_21d2e0c
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x8
	mov     r2, #0x30
	mov     r3, #0x36
	bl      Function_21d2e50
	str     r0, [r4, #0x5c]
	mov     r1, #0x4
	bl      Function_2021d6c
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x0
	bl      Function_2021cac
	add     sp, #0x2c
	pop     {r3,r4,pc}
@ 0x21d3e46


.align 2, 0


.thumb
Function_21d3e48: @ 21d3e48 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x5c]
	mov     r4, r1
	bl      Function_2021cac
	cmp     r4, #0x0
	beq     branch_21d3e72
	ldr     r0, [r5, #0x4]
	bl      Function_21d1f94
	cmp     r0, #0x0
	ldr     r0, [r5, #0x5c]
	bne     branch_21d3e6c
	mov     r1, #0x4
	bl      Function_2021d6c
	pop     {r3-r5,pc}
@ 0x21d3e6c

.thumb
branch_21d3e6c: @ 21d3e6c :thumb
	mov     r1, #0x6
	bl      Function_2021d6c
.thumb
branch_21d3e72: @ 21d3e72 :thumb
	pop     {r3-r5,pc}
@ 0x21d3e74

.thumb
Function_21d3e74: @ 21d3e74 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	mov     r5, r1
	bl      Function_21d1f94
	mov     r1, #0x0
	str     r1, [sp, #0x10]
	cmp     r5, #0xfe
	bne     branch_21d3e96
	mov     r0, #0x84
	str     r0, [sp, #0x8]
	mov     r0, #0x96
	str     r0, [sp, #0xc]
	mov     r5, #0x10
	b       branch_21d3ed6
@ 0x21d3e96

.thumb
branch_21d3e96: @ 21d3e96 :thumb
	cmp     r0, #0x0
	bne     branch_21d3ebe
	mov     r0, r5
	mov     r1, #0x3
	blx     _u32_div_f
	mov     r0, #0x50
	mul     r0, r1
	add     r0, #0x30
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, #0x3
	blx     _u32_div_f
	mov     r1, #0x18
	mul     r1, r0
	add     r1, #0x36
	str     r1, [sp, #0xc]
	mov     r5, #0x4
	b       branch_21d3ed6
@ 0x21d3ebe

.thumb
branch_21d3ebe: @ 21d3ebe :thumb
	mov     r0, r5
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_21d506c
	ldr     r0, [sp, #0x4]
	mov     r5, #0x6
	add     r0, #0x1a
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	add     r0, #0x3e
	str     r0, [sp, #0xc]
.thumb
branch_21d3ed6: @ 21d3ed6 :thumb
	ldr     r0, [sp, #0x8]
	add     r1, sp, #0x8
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x5c]
	bl      Function_2021c50
	ldr     r0, [r4, #0x5c]
	mov     r1, r5
	bl      Function_2021d6c
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d3ef6


.align 2, 0


.thumb
Function_21d3ef8: @ 21d3ef8 :thumb
	push    {r3,lr}
	mov     r3, #0x0
	str     r3, [r0, #0x14]
	mov     r1, #0x10
	str     r1, [sp, #0x0]
	mov     r1, #0x2
	mov     r2, r1
	add     r0, #0x1c
	sub     r2, #0xc
	bl      Function_21d4fb0
	pop     {r3,pc}
@ 0x21d3f10

.thumb
Function_21d3f10: @ 21d3f10 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_21d3f22
	cmp     r0, #0x1
	beq     branch_21d3f4c
	b       branch_21d3f58
@ 0x21d3f22

.thumb
branch_21d3f22: @ 21d3f22 :thumb
	mov     r0, r4
	add     r0, #0x1c
	bl      Function_21d4ff0
	cmp     r0, #0x0
	beq     branch_21d3f58
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1
	ldr     r1, [r4, #0xc]
	add     r0, #0x3c
	mov     r3, r2
	bl      Function_21d4e38
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
	b       branch_21d3f58
@ 0x21d3f4c

.thumb
branch_21d3f4c: @ 21d3f4c :thumb
	add     r4, #0x3c
	mov     r0, r4
	bl      Function_21d4e8c
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d3f58

.thumb
branch_21d3f58: @ 21d3f58 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d3f5e


.align 2, 0


.thumb
Function_21d3f60: @ 21d3f60 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [r1, #0x14]
	sub     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, r1
	mov     r2, #0x1
	ldr     r1, [r1, #0xc]
	add     r0, #0x3c
	mov     r3, r2
	bl      Function_21d4e38
	add     sp, #0x8
	pop     {r3,pc}
@ 0x21d3f84

.thumb
Function_21d3f84: @ 21d3f84 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_21d3f96
	cmp     r0, #0x1
	beq     branch_21d3fbe
	b       branch_21d3fca
@ 0x21d3f96

.thumb
branch_21d3f96: @ 21d3f96 :thumb
	mov     r0, r4
	add     r0, #0x3c
	bl      Function_21d4e8c
	cmp     r0, #0x0
	beq     branch_21d3fca
	mov     r0, #0x10
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r3, r2
	add     r0, #0x1c
	mov     r1, #0x2
	sub     r3, #0xa
	bl      Function_21d4fb0
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
	b       branch_21d3fca
@ 0x21d3fbe

.thumb
branch_21d3fbe: @ 21d3fbe :thumb
	add     r4, #0x1c
	mov     r0, r4
	bl      Function_21d4ff0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d3fca

.thumb
branch_21d3fca: @ 21d3fca :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d3fd0

.thumb
Function_21d3fd0: @ 21d3fd0 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, #0x2
	bl      Function_2019184
	pop     {r3,pc}
@ 0x21d3fe0

.thumb
Function_21d3fe0: @ 21d3fe0 :thumb
	push    {r3,lr}
	mov     r2, #0x0
	mov     r1, #0x10
	mov     r3, r2
	str     r1, [sp, #0x0]
	add     r0, #0x1c
	mov     r1, #0x2
	sub     r3, #0xa
	bl      Function_21d4fb0
	pop     {r3,pc}
@ 0x21d3ff6


.align 2, 0


.thumb
Function_21d3ff8: @ 21d3ff8 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d4000, (=0x21d4ff1)
	add     r0, #0x1c
	bx      r3
@ 0x21d3ffe


.align 2


.word 0x21d4ff1 @ 0x21d4000
.thumb
Function_21d4004: @ 21d4004 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r1, #0xc
	str     r1, [sp, #0x4]
	add     r0, #0x1c
	mov     r1, #0x2
	mov     r2, #0x3f
	mov     r3, #0x7c
	bl      Function_21d4f1c
	add     sp, #0x8
	pop     {r3,pc}
@ 0x21d4020

.thumb
Function_21d4020: @ 21d4020 :thumb
	push    {r3,lr}
	add     r0, #0x1c
	bl      Function_21d4f4c
	cmp     r0, #0x0
	beq     branch_21d4038
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d4038

.thumb
branch_21d4038: @ 21d4038 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d403c

.thumb
Function_21d403c: @ 21d403c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x21d4074, (=REG_BLDCNT)
	mov     r1, #0x2
	mov     r2, #0x3f
	mov     r3, #0x0
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_2019120
	mov     r0, #0x7c
	str     r0, [sp, #0x0]
	mov     r0, #0xc
	add     r4, #0x1c
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x3f
	mov     r3, #0x0
	bl      Function_21d4f1c
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d4074

.word REG_BLDCNT @ 0x21d4074
.thumb
Function_21d4078: @ 21d4078 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d4080, (=0x21d4f4d)
	add     r0, #0x1c
	bx      r3
@ 0x21d407e


.align 2


.word Function_21d4f4c+1 @ =0x21d4f4d, 0x21d4080
.thumb
Function_21d4084: @ 21d4084 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21d1f94
	cmp     r0, #0x0
	bne     branch_21d4098
	mov     r3, #0x3
	mvn     r3, r3
	b       branch_21d409a
@ 0x21d4098

.thumb
branch_21d4098: @ 21d4098 :thumb
	mov     r3, #0xfc
.thumb
branch_21d409a: @ 21d409a :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_2019184
	pop     {r4,pc}
@ 0x21d40a6


.align 2, 0


.thumb
Function_21d40a8: @ 21d40a8 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_21d1f94
	cmp     r0, #0x0
	bne     branch_21d40be
	mov     r0, #0xff
	mvn     r0, r0
	b       branch_21d40c2
@ 0x21d40be

.thumb
branch_21d40be: @ 21d40be :thumb
	mov     r0, #0x1
	lsl     r0, r0, #8
.thumb
branch_21d40c2: @ 21d40c2 :thumb
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r4
	ldr     r1, [r4, #0xc]
	add     r0, #0x3c
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_21d4e38
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d40da


.align 2, 0


.thumb
Function_21d40dc: @ 21d40dc :thumb
	ldr     r3, [pc, #0x4] @ 0x21d40e4, (=0x21d4e8d)
	add     r0, #0x3c
	bx      r3
@ 0x21d40e2


.align 2


.word 0x21d4e8d @ 0x21d40e4
.thumb
Function_21d40e8: @ 21d40e8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x23
	mov     r1, #0x94
	mov     r7, r2
	bl      malloc
	mov     r4, r0
	str     r5, [r4, #0x0]
	str     r6, [r4, #0x4]
	str     r7, [r4, #0x8]
	mov     r0, r5
	bl      Function_21d2e04
	str     r0, [r4, #0xc]
	mov     r0, #0x20
	mov     r1, #0x23
	bl      Function_2023790
	str     r0, [r4, #0x3c]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	mov     r0, #0x20
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	mov     r1, r4
	ldr     r0, [r4, #0xc]
	add     r1, #0x10
	mov     r2, #0x2
	mov     r3, #0x4
	bl      Function_201a7e8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r1, #0xc
	str     r1, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	mov     r1, r4
	ldr     r0, [r4, #0xc]
	add     r1, #0x20
	mov     r2, #0x2
	bl      Function_201a7e8
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	str     r0, [r4, #0x34]
	str     r0, [r4, #0x38]
	mov     r0, r4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d4162


.align 2, 0


.thumb
Function_21d4164: @ 21d4164 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	beq     branch_21d4172
	bl      Function_2021bd4
.thumb
branch_21d4172: @ 21d4172 :thumb
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x0
	beq     branch_21d417c
	bl      Function_2021bd4
.thumb
branch_21d417c: @ 21d417c :thumb
	ldr     r0, [r4, #0x38]
	cmp     r0, #0x0
	beq     branch_21d4186
	bl      Function_2021bd4
.thumb
branch_21d4186: @ 21d4186 :thumb
	ldr     r0, [r4, #0x3c]
	cmp     r0, #0x0
	beq     branch_21d4190
	bl      Function_20237bc_FreeMsg
.thumb
branch_21d4190: @ 21d4190 :thumb
	mov     r0, r4
	add     r0, #0x20
	bl      Function_201a8fc
	mov     r0, r4
	add     r0, #0x10
	bl      Function_201a8fc
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x21d41a8

.thumb
Function_21d41a8: @ 21d41a8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      Function_21d2e04
	mov     r4, r0
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x23
	bl      Function_2019690
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2019cb8
	mov     r0, r5
	add     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r5
	add     r0, #0x10
	bl      Function_201a9f4
	mov     r0, r5
	add     r0, #0x10
	bl      Function_201accc
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019448
	mov     r0, r5
	bl      Function_21d4210
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_2019120
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d420e


.align 2, 0


.thumb
Function_21d4210: @ 21d4210 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x2c
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x8
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_21d2e0c
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x8
	mov     r2, #0x48
	mov     r3, #0x38
	bl      Function_21d2e50
	str     r0, [r4, #0x30]
	mov     r1, #0x8
	bl      Function_2021d6c
	ldr     r0, [r4, #0x30]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x8
	mov     r2, #0xf0
	mov     r3, #0x40
	bl      Function_21d2e50
	str     r0, [r4, #0x34]
	mov     r1, #0xb
	bl      Function_2021d6c
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x8
	mov     r2, #0xf0
	mov     r3, #0x90
	bl      Function_21d2e50
	str     r0, [r4, #0x38]
	mov     r1, #0xa
	bl      Function_2021d6c
	ldr     r0, [r4, #0x38]
	mov     r1, #0x0
	bl      Function_2021cac
	add     sp, #0x2c
	pop     {r3,r4,pc}
@ 0x21d4292


.align 2, 0


.thumb
Function_21d4294: @ 21d4294 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	add     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r6
	bl      Function_21d4638
	ldr     r0, [r6, #0x4]
	bl      Function_21d1fe4
	mov     r7, r0
	cmp     r7, #0xa
	bls     branch_21d42b4
	mov     r7, #0xa
.thumb
branch_21d42b4: @ 21d42b4 :thumb
	mov     r0, r6
	add     r0, #0x8c
	mov     r5, #0x0
	ldr     r4, [r0, #0x0]
	cmp     r7, #0x0
	bls     branch_21d42d8
.thumb
branch_21d42c0: @ 21d42c0 :thumb
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_21d4658
	mov     r0, #0x1
	tst     r0, r5
	beq     branch_21d42d2
	add     r4, #0x18
.thumb
branch_21d42d2: @ 21d42d2 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	bcc     branch_21d42c0
.thumb
branch_21d42d8: @ 21d42d8 :thumb
	add     r6, #0x10
	mov     r0, r6
	bl      Function_201accc
	pop     {r3-r7,pc}
@ 0x21d42e2


.align 2, 0


.thumb
Function_21d42e4: @ 21d42e4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x8c] @ 0x21d437c, (=REG_BLDCNT)
	mov     r1, #0x4
	mov     r2, #0x3f
	mov     r3, #0x0
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_2019120
	ldr     r1, [pc, #0x7c] @ 0x21d4380, (=WIN_IN)
	ldr     r0, [pc, #0x7c] @ 0x21d4384, (=0xffffc0ff)
	ldrh    r2, [r1, #0x0]
	mov     r5, #0xff
	and     r2, r0
	mov     r0, #0x1f
	lsl     r0, r0, #8
	orr     r2, r0
	lsr     r0, r1, #13
	orr     r0, r2
	strh    r0, [r1, #0x0]
	mov     r0, r4
	ldrb    r2, [r1, #0x2]
	add     r0, #0x84
	strb    r2, [r0, #0x0]
	mov     r0, r1
	sub     r0, #0x48
	mov     r2, #0xe
	ldr     r3, [r0, #0x0]
	lsl     r2, r2, #12
	and     r2, r3
	lsr     r3, r2, #13
	mov     r2, r4
	add     r2, #0x88
	str     r3, [r2, #0x0]
	ldrh    r3, [r1, #0x2]
	mov     r2, #0x3f
	bic     r3, r2
	mov     r2, #0x1b
	orr     r3, r2
	mov     r2, #0x20
	orr     r3, r2
	strh    r3, [r1, #0x2]
	.hword  0x1f8b @ sub r3, r1, #0x6
	strh    r5, [r3, #0x0]
	ldr     r3, [pc, #0x3c] @ 0x21d4388, (=0x2eb0)
	.hword  0x1e89 @ sub r1, r1, #0x2
	strh    r3, [r1, #0x0]
	ldr     r3, [r0, #0x0]
	ldr     r1, [pc, #0x38] @ 0x21d438c, (=0xffff1fff)
	and     r3, r1
	lsl     r1, r2, #9
	orr     r1, r3
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	add     r0, #0x80
	str     r3, [r0, #0x0]
	mov     r0, #0x7c
	str     r0, [sp, #0x0]
	mov     r0, #0xc
	add     r4, #0x40
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x3f
	bl      Function_21d4f1c
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d437a


.align 2


.word REG_BLDCNT @ 0x21d437c
.word WIN_IN @ 0x21d4380
.word 0xffffc0ff @ 0x21d4384
.word 0x2eb0 @ 0x21d4388
.word 0xffff1fff @ 0x21d438c
.thumb
Function_21d4390: @ 21d4390 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_21d43ae
	add     r0, #0x40
	bl      Function_21d4f4c
	cmp     r0, #0x0
	beq     branch_21d43aa
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d43aa

.thumb
branch_21d43aa: @ 21d43aa :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d43ae

.thumb
branch_21d43ae: @ 21d43ae :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d43b2


.align 2, 0


.thumb
Function_21d43b4: @ 21d43b4 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r1, r0
	mov     r2, #0x0
	add     r1, #0x80
	str     r2, [r1, #0x0]
	str     r2, [sp, #0x0]
	mov     r1, #0xc
	str     r1, [sp, #0x4]
	add     r0, #0x40
	mov     r1, #0x4
	mov     r2, #0x3f
	mov     r3, #0x7c
	bl      Function_21d4f1c
	add     sp, #0x8
	pop     {r3,pc}
@ 0x21d43d6


.align 2, 0


.thumb
Function_21d43d8: @ 21d43d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d4430
	mov     r0, r4
	add     r0, #0x40
	bl      Function_21d4f4c
	cmp     r0, #0x0
	beq     branch_21d4434
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_2019120
	ldr     r0, [pc, #0x3c] @ 0x21d4438, (=WIN_OUT)
	ldrh    r2, [r0, #0x0]
	mov     r0, #0x3f
	bic     r2, r0
	mov     r0, r4
	add     r0, #0x84
	ldrb    r0, [r0, #0x0]
	lsl     r1, r0, #27
	lsr     r1, r1, #27
	lsl     r0, r0, #26
	orr     r1, r2
	lsr     r0, r0, #31
	beq     branch_21d4416
	mov     r0, #0x20
	orr     r1, r0
.thumb
branch_21d4416: @ 21d4416 :thumb
	ldr     r2, [pc, #0x20] @ 0x21d4438, (=WIN_OUT)
	ldr     r0, [pc, #0x20] @ 0x21d443c, (=0xffff1fff)
	strh    r1, [r2, #0x0]
	sub     r2, #0x4a
	ldr     r1, [r2, #0x0]
	add     r4, #0x88
	and     r1, r0
	ldr     r0, [r4, #0x0]
	lsl     r0, r0, #13
	orr     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d4430

.thumb
branch_21d4430: @ 21d4430 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d4434

.thumb
branch_21d4434: @ 21d4434 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4438

.word WIN_OUT @ 0x21d4438
.word 0xffff1fff @ 0x21d443c
.thumb
Function_21d4440: @ 21d4440 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x30]
	mov     r4, r1
	bl      Function_2021cac
	cmp     r4, #0x0
	beq     branch_21d446e
	ldr     r0, [r5, #0x4]
	bl      Function_21d204c
	mov     r1, r0
	ldr     r0, [r5, #0x34]
	bl      Function_2021cac
	ldr     r0, [r5, #0x4]
	bl      Function_21d2060
	mov     r1, r0
	ldr     r0, [r5, #0x38]
	bl      Function_2021cac
	pop     {r3-r5,pc}
@ 0x21d446e

.thumb
branch_21d446e: @ 21d446e :thumb
	ldr     r0, [r5, #0x34]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r5, #0x38]
	mov     r1, #0x0
	bl      Function_2021cac
	pop     {r3-r5,pc}
@ 0x21d4480

.thumb
Function_21d4480: @ 21d4480 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r2, r1
	mov     r0, #0x1
	and     r2, r0
	mov     r0, #0x70
	mul     r0, r2
	add     r0, #0x48
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	lsr     r1, r1, #1
	mov     r0, #0x18
	mul     r0, r1
	add     r0, #0x38
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x30]
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldr     r0, [r4, #0x30]
	mov     r1, #0x8
	bl      Function_2021d6c
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d44ba


.align 2, 0


.thumb
Function_21d44bc: @ 21d44bc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r7, r0
	mov     r4, r1
	bl      Function_21d45ac
	mov     r0, r7
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	lsl     r6, r4, #1
	str     r0, [sp, #0x10]
	add     r0, r0, r6
	str     r0, [sp, #0x14]
	mov     r0, #0x18
	mul     r0, r4
	str     r0, [sp, #0x8]
	mov     r0, r7
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x8]
	add     r1, r0, r1
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x18]
	cmp     r4, #0x0
	bge     branch_21d4500
	ldr     r0, [sp, #0x14]
	mov     r5, r1
	str     r0, [sp, #0x10]
	lsl     r0, r4, #2
	neg     r0, r0
	neg     r6, r6
	str     r0, [sp, #0xc]
	b       branch_21d4520
@ 0x21d4500

.thumb
branch_21d4500: @ 21d4500 :thumb
	add     r0, #0x78
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	ldr     r0, [sp, #0x10]
	add     r0, #0xa
	str     r0, [sp, #0x10]
	ldr     r0, [r7, #0x4]
	bl      Function_21d1fe4
	ldr     r1, [sp, #0x10]
	add     r1, r6, r1
	cmp     r1, r0
	bls     branch_21d451c
	.hword  0x1e76 @ sub r6, r6, #0x1
.thumb
branch_21d451c: @ 21d451c :thumb
	lsl     r0, r4, #2
	str     r0, [sp, #0xc]
.thumb
branch_21d4520: @ 21d4520 :thumb
	mov     r4, #0x0
	cmp     r6, #0x0
	ble     branch_21d4544
.thumb
branch_21d4526: @ 21d4526 :thumb
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	add     r1, r1, r4
	mov     r2, r5
	bl      Function_21d4658
	mov     r0, #0x1
	tst     r0, r4
	beq     branch_21d453e
	add     r5, #0x18
	lsl     r0, r5, #24
	lsr     r5, r0, #24
.thumb
branch_21d453e: @ 21d453e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	blt     branch_21d4526
.thumb
branch_21d4544: @ 21d4544 :thumb
	mov     r1, r7
	ldr     r0, [sp, #0x18]
	add     r1, #0x8c
	str     r0, [r1, #0x0]
	mov     r1, r7
	ldr     r0, [sp, #0x14]
	add     r1, #0x90
	str     r0, [r1, #0x0]
	mov     r0, r7
	add     r0, #0x10
	bl      Function_201accc
	ldr     r0, [sp, #0x8]
	mov     r2, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	mov     r3, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r7
	ldr     r1, [r7, #0xc]
	add     r0, #0x60
	bl      Function_21d4e38
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d4576


.align 2, 0


.thumb
Function_21d4578: @ 21d4578 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x60
	bl      Function_21d4e8c
	cmp     r0, #0x0
	beq     branch_21d45a6
	ldr     r0, [r4, #0x4]
	bl      Function_21d204c
	mov     r1, r0
	ldr     r0, [r4, #0x34]
	bl      Function_2021cac
	ldr     r0, [r4, #0x4]
	bl      Function_21d2060
	mov     r1, r0
	ldr     r0, [r4, #0x38]
	bl      Function_2021cac
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d45a6

.thumb
branch_21d45a6: @ 21d45a6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d45aa


.align 2, 0


.thumb
Function_21d45ac: @ 21d45ac :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	cmp     r1, #0x0
	ble     branch_21d45cc
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	add     r0, #0x78
	lsl     r0, r0, #24
	lsr     r3, r0, #24
	mov     r0, #0x18
	mul     r0, r1
	add     r0, r3, r0
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	b       branch_21d45da
@ 0x21d45cc

.thumb
branch_21d45cc: @ 21d45cc :thumb
	add     r0, #0x8c
	ldr     r4, [r0, #0x0]
	mov     r0, #0x18
	mul     r0, r1
	add     r0, r4, r0
	lsl     r0, r0, #24
	lsr     r3, r0, #24
.thumb
branch_21d45da: @ 21d45da :thumb
	cmp     r3, r4
	bge     branch_21d45fe
	mov     r0, #0xd0
	str     r0, [sp, #0x0]
	sub     r0, r4, r3
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r1, #0x0
	lsl     r3, r3, #16
	add     r5, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r1
	lsr     r3, r3, #16
	bl      Function_201ae78
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d45fe

.thumb
branch_21d45fe: @ 21d45fe :thumb
	mov     r0, #0xd0
	str     r0, [sp, #0x0]
	add     r0, #0x30
	sub     r0, r0, r3
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	lsl     r3, r3, #16
	add     r0, #0x10
	mov     r2, r1
	lsr     r3, r3, #16
	bl      Function_201ae78
	mov     r1, #0x0
	mov     r0, #0xd0
	str     r0, [sp, #0x0]
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	add     r5, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      Function_201ae78
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d4638

.thumb
Function_21d4638: @ 21d4638 :thumb
	push    {r3,lr}
	mov     r1, r0
	mov     r2, #0x30
	add     r1, #0x8c
	str     r2, [r1, #0x0]
	mov     r1, r0
	mov     r3, #0x0
	add     r1, #0x90
	str     r3, [r1, #0x0]
	ldr     r0, [r0, #0xc]
	mov     r1, #0x2
	mov     r2, #0x3
	bl      Function_2019184
	pop     {r3,pc}
@ 0x21d4656


.align 2, 0


.thumb
Function_21d4658: @ 21d4658 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r4, r2
	ldr     r0, [r5, #0x4]
	ldr     r2, [r5, #0x3c]
	mov     r7, r1
	bl      Function_21d2008
	cmp     r4, #0xf0
	bhi     branch_21d4694
	str     r4, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xac] @ 0x21d4724, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	mov     r3, #0x1
	mov     r4, r7
	and     r4, r3
	mov     r3, #0x70
	ldr     r2, [r5, #0x3c]
	add     r0, #0x10
	mul     r3, r4
	bl      Function_201d78c
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d4694

.thumb
branch_21d4694: @ 21d4694 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #8
	sub     r6, r0, r4
	mov     r0, r5
	add     r0, #0x20
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x74] @ 0x21d4724, (=0x10200)
	mov     r3, r1
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	ldr     r2, [r5, #0x3c]
	add     r0, #0x20
	bl      Function_201d78c
	mov     r2, #0x0
	mov     r0, #0x1
	mov     r1, r7
	and     r1, r0
	mov     r7, r1
	mov     r0, #0x70
	mul     r7, r0
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	mov     r1, #0x10
	str     r1, [sp, #0x4]
	lsl     r1, r7, #16
	lsr     r1, r1, #16
	str     r1, [sp, #0x8]
	lsl     r1, r4, #16
	lsr     r1, r1, #16
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x14]
	mov     r0, r5
	ldr     r1, [r5, #0x2c]
	add     r0, #0x10
	mov     r3, r2
	bl      Function_201addc
	mov     r1, #0x60
	lsl     r2, r7, #16
	lsl     r3, r6, #16
	str     r1, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	lsr     r2, r2, #16
	str     r2, [sp, #0x8]
	mov     r2, #0x0
	sub     r0, r0, r6
	str     r2, [sp, #0xc]
	lsl     r0, r0, #16
	str     r1, [sp, #0x10]
	lsr     r0, r0, #16
	str     r0, [sp, #0x14]
	mov     r0, r5
	ldr     r1, [r5, #0x2c]
	add     r0, #0x10
	lsr     r3, r3, #16
	bl      Function_201addc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d4722


.align 2


.word 0x10200 @ 0x21d4724
.thumb
Function_21d4728: @ 21d4728 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r1, #0x5
	mov     r5, r0
	mov     r0, #0x23
	lsl     r1, r1, #8
	mov     r7, r2
	bl      malloc
	mov     r4, r0
	str     r5, [r4, #0x0]
	str     r6, [r4, #0x4]
	str     r7, [r4, #0x8]
	mov     r0, r5
	bl      Function_21d2e04
	str     r0, [r4, #0xc]
	mov     r0, r5
	bl      Function_21d2e08
	str     r0, [r4, #0x10]
	mov     r1, #0x0
	str     r1, [r4, #0x14]
	ldr     r0, [pc, #0x8] @ 0x21d4760, (=0x4fc)
	str     r1, [r4, #0x18]
	str     r1, [r4, r0]
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x21d4760

.word 0x4fc @ 0x21d4760
.thumb
Function_21d4764: @ 21d4764 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d4ad4
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x21d4774

.thumb
Function_21d4774: @ 21d4774 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r0, #0x40
	mov     r4, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x23
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x15
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2007130
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x23
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0xc]
	mov     r0, r4
	mov     r1, #0xb
	mov     r3, #0x4
	bl      Function_200710c
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d4874
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d48c4
	ldr     r0, [r5, #0x4]
	bl      Function_21d1f94
	cmp     r0, #0x0
	bne     branch_21d4810
	mov     r2, #0xb
	ldr     r0, [pc, #0xa4] @ 0x21d486c, (=0x1fa)
	str     r2, [sp, #0x0]
	mov     r1, #0x7
	str     r1, [sp, #0x4]
	add     r0, r5, r0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r2, #0x3
	ldr     r0, [r5, #0xc]
	mov     r1, #0x4
	mov     r3, r2
	bl      Function_20198e8
	mov     r2, #0xb
	mov     r0, #0xa5
	lsl     r0, r0, #2
	str     r2, [sp, #0x0]
	mov     r1, #0x7
	str     r1, [sp, #0x4]
	add     r0, r5, r0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x4
	mov     r2, #0x3
	mov     r3, #0xe
	bl      Function_20198e8
	b       branch_21d4858
@ 0x21d4810

.thumb
branch_21d4810: @ 21d4810 :thumb
	mov     r2, #0xb
	mov     r0, r5
	str     r2, [sp, #0x0]
	mov     r1, #0x7
	str     r1, [sp, #0x4]
	add     r0, #0x2c
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r2, #0x3
	ldr     r0, [r5, #0xc]
	mov     r1, #0x4
	mov     r3, r2
	bl      Function_20198e8
	mov     r2, #0xb
	ldr     r0, [pc, #0x38] @ 0x21d4870, (=0x462)
	str     r2, [sp, #0x0]
	mov     r1, #0x7
	str     r1, [sp, #0x4]
	add     r0, r5, r0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	ldr     r0, [r5, #0xc]
	mov     r1, #0x4
	mov     r2, #0x3
	mov     r3, #0xe
	bl      Function_20198e8
.thumb
branch_21d4858: @ 21d4858 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d4a24
	ldr     r0, [r5, #0xc]
	mov     r1, #0x4
	bl      Function_2019448
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x21d486c

.word 0x1fa @ 0x21d486c
.word 0x462 @ 0x21d4870
.thumb
Function_21d4874: @ 21d4874 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r4, [pc, #0x44] @ 0x21d48c0, (=0x21d52f4)
	str     r1, [sp, #0x4]
	mov     r6, #0x0
	add     r5, #0x2c
.thumb
branch_21d4882: @ 21d4882 :thumb
	mov     r0, #0x23
	str     r0, [sp, #0x0]
	ldrh    r1, [r4, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r2, #0x1
	add     r3, sp, #0x8
	bl      Function_20071d0
	mov     r7, r0
	beq     branch_21d48b0
	ldr     r0, [sp, #0x8]
	mov     r1, r5
	add     r0, #0xc
	mov     r2, #0x9a
	blx     MIi_CpuCopy16
	mov     r0, r5
	mov     r1, #0x9a
	blx     DC_FlushRange
	mov     r0, r7
	bl      free
.thumb
branch_21d48b0: @ 21d48b0 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	add     r5, #0x9a
	cmp     r6, #0x8
	bcc     branch_21d4882
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d48be


.align 2


.word 0x21d52f4 @ 0x21d48c0
.thumb
Function_21d48c4: @ 21d48c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r7, r1
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_2002bb8
	ldr     r1, [pc, #0xac] @ 0x21d4984, (=0x1b5)
	mov     r0, #0x1a
	mov     r2, #0xb
	mov     r3, #0x23
	bl      Function_200b010_LoadFromNARCCallMsgDecrypt
	mov     r6, r0
	ldr     r1, [pc, #0xa0] @ 0x21d4984, (=0x1b5)
	mov     r0, #0x1a
	mov     r2, #0xc
	mov     r3, #0x23
	bl      Function_200b010_LoadFromNARCCallMsgDecrypt
	mov     r4, r0
	mov     r0, #0x23
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, #0x14
	mov     r2, #0x1
	add     r3, sp, #0x4
	bl      Function_20071b4
	mov     r7, r0
	beq     branch_21d496c
	add     r0, sp, #0x8
	bl      Function_201a7a0
	ldr     r0, [r5, #0xc]
	add     r1, sp, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xb
	strb    r0, [r1, #0xb]
	mov     r0, #0x39
	strb    r0, [r1, #0xc]
	ldrh    r2, [r1, #0xe]
	ldr     r0, [pc, #0x6c] @ 0x21d4988, (=0xffff7fff)
	mov     r3, #0x0
	and     r0, r2
	strh    r0, [r1, #0xe]
	ldr     r0, [sp, #0x4]
	mov     r2, r6
	ldr     r0, [r0, #0x14]
	str     r0, [sp, #0x14]
	ldr     r1, [r5, #0xc]
	add     r0, sp, #0x8
	bl      Function_21d498c
	ldr     r0, [sp, #0x4]
	mov     r2, r4
	ldr     r1, [r0, #0x14]
	mov     r0, #0x9a
	lsl     r0, r0, #6
	add     r0, r1, r0
	str     r0, [sp, #0x14]
	ldr     r1, [r5, #0xc]
	add     r0, sp, #0x8
	mov     r3, #0x0
	bl      Function_21d498c
	ldr     r1, [sp, #0x4]
	ldr     r0, [r1, #0x14]
	ldr     r1, [r1, #0x10]
	blx     DC_FlushRange
	ldr     r3, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r2, [r3, #0x14]
	ldr     r0, [r5, #0xc]
	ldr     r3, [r3, #0x10]
	mov     r1, #0x4
	bl      Function_201958c
	mov     r0, r7
	bl      free
.thumb
branch_21d496c: @ 21d496c :thumb
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x2
	bl      Function_2002c60
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d4982


.align 2


.word 0x1b5 @ 0x21d4984
.word 0xffff7fff @ 0x21d4988
.thumb
Function_21d498c: @ 21d498c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	str     r0, [sp, #0x10]
	mov     r0, r2
	str     r2, [sp, #0x14]
	mov     r7, r3
	bl      Function_2023c5c
	str     r0, [sp, #0x1c]
	mov     r0, #0x20
	mov     r1, #0x23
	bl      Function_2023790
	mov     r6, r0
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x2
	sub     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #1
	add     r7, r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	bls     branch_21d4a10
.thumb
branch_21d49be: @ 21d49be :thumb
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x20]
	mov     r0, r6
	bl      Function_2023c9c
	mov     r0, #0x2
	mov     r1, r6
	mov     r2, #0x0
	mov     r3, #0x58
	bl      Function_2002eec
	ldr     r5, [pc, #0x44] @ 0x21d4a1c, (=0x21d52ec)
	str     r0, [sp, #0x18]
	mov     r4, #0x0
.thumb
branch_21d49da: @ 21d49da :thumb
	mov     r0, #0x0
	ldsh    r0, [r5, r0]
	ldr     r3, [sp, #0x18]
	mov     r1, #0x2
	add     r0, r7, r0
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x34] @ 0x21d4a20, (=0x10203)
	mov     r2, r6
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	bl      Function_201d78c
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x4
	bcc     branch_21d49da
	ldr     r0, [sp, #0x20]
	add     r7, #0x10
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x1c]
	str     r1, [sp, #0x20]
	cmp     r1, r0
	bcc     branch_21d49be
.thumb
branch_21d4a10: @ 21d4a10 :thumb
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x21d4a1a


.align 2


.word 0x21d52ec @ 0x21d4a1c
.word 0x10203 @ 0x21d4a20
.thumb
Function_21d4a24: @ 21d4a24 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x4c
	mov     r5, r0
	add     r0, sp, #0x38
	mov     r4, r1
	blx     Function_20a81d0
	add     r0, sp, #0x14
	blx     Function_20a818c
	mov     r0, #0x23
	str     r0, [sp, #0x0]
	add     r0, sp, #0x38
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x19
	mov     r2, #0x2
	mov     r3, #0x0
	bl      Function_200716c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x23
	str     r0, [sp, #0xc]
	add     r0, sp, #0x14
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x18
	mov     r2, #0x1
	bl      Function_200718c
	mov     r0, r5
	add     r0, #0x1c
	mov     r1, r4
	mov     r2, #0x16
	mov     r3, #0x17
	bl      Function_21d4af8
	mov     r0, #0xc0
	str     r0, [sp, #0x0]
	mov     r0, #0x38
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r3, r5
	str     r0, [sp, #0xc]
	mov     r0, r5
	add     r1, sp, #0x14
	add     r2, sp, #0x38
	add     r3, #0x1c
	bl      Function_21d4b40
	str     r0, [r5, #0x14]
	mov     r1, #0x0
	bl      Function_2021d6c
	ldr     r0, [r5, #0x14]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, #0xc0
	str     r0, [sp, #0x0]
	mov     r0, #0x88
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r3, r5
	str     r0, [sp, #0xc]
	mov     r0, r5
	add     r1, sp, #0x14
	add     r2, sp, #0x38
	add     r3, #0x1c
	bl      Function_21d4b40
	str     r0, [r5, #0x18]
	mov     r1, #0x2
	bl      Function_2021d6c
	ldr     r0, [r5, #0x18]
	mov     r1, #0x0
	bl      Function_2021cac
	add     sp, #0x4c
	pop     {r4,r5,pc}
@ 0x21d4ad2


.align 2, 0


.thumb
Function_21d4ad4: @ 21d4ad4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_21d4ae2
	bl      Function_2021bd4
.thumb
branch_21d4ae2: @ 21d4ae2 :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_21d4aec
	bl      Function_2021bd4
.thumb
branch_21d4aec: @ 21d4aec :thumb
	add     r4, #0x1c
	mov     r0, r4
	bl      Function_21d4b2c
	pop     {r4,pc}
@ 0x21d4af6


.align 2, 0


.thumb
Function_21d4af8: @ 21d4af8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x23
	mov     r6, r3
	str     r0, [sp, #0x0]
	mov     r1, r2
	mov     r0, r4
	mov     r2, #0x1
	add     r3, r5, #0x4
	bl      Function_2007204
	str     r0, [r5, #0x0]
	mov     r0, #0x23
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x1
	add     r3, #0xc
	bl      Function_2007220
	str     r0, [r5, #0x8]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d4b2c

.thumb
Function_21d4b2c: @ 21d4b2c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      free
	ldr     r0, [r4, #0x8]
	bl      free
	pop     {r4,pc}
@ 0x21d4b3e


.align 2, 0


.thumb
Function_21d4b40: @ 21d4b40 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x44
	str     r2, [sp, #0x28]
	str     r1, [sp, #0x20]
	ldr     r1, [r3, #0x4]
	ldr     r2, [sp, #0x58]
	str     r1, [sp, #0x2c]
	ldr     r1, [r3, #0xc]
	str     r1, [sp, #0x30]
	add     r1, sp, #0x40
	strb    r2, [r1, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x24]
	str     r1, [sp, #0x34]
	str     r1, [sp, #0x38]
	str     r1, [sp, #0x3c]
	ldr     r0, [r0, #0x10]
	str     r0, [sp, #0x0]
	add     r0, sp, #0x20
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x50]
	str     r1, [sp, #0x10]
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x54]
	add     r0, #0xc0
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x5c]
	str     r0, [sp, #0x14]
	mov     r0, #0x2
	str     r0, [sp, #0x18]
	mov     r0, #0x23
	str     r0, [sp, #0x1c]
	add     r0, sp, #0x0
	bl      Function_2021b90
	mov     r4, r0
	beq     branch_21d4b9e
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #12
	bl      Function_2021ce4
.thumb
branch_21d4b9e: @ 21d4b9e :thumb
	mov     r0, r4
	add     sp, #0x44
	pop     {r3,r4,pc}
@ 0x21d4ba4

.thumb
Function_21d4ba4: @ 21d4ba4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x23
	mov     r1, #0x18
	bl      malloc
	mov     r4, r0
	beq     branch_21d4c00
	ldr     r0, [r5, #0x4]
	bl      Function_21d1f94
	str     r5, [r4, #0x0]
	mov     r1, #0x0
	str     r1, [r4, #0x4]
	strh    r1, [r4, #0x8]
	mov     r1, #0xe
	mul     r1, r0
	ldr     r0, [pc, #0x40] @ 0x21d4c08, (=0x21d5304)
	mov     r2, #0x1
	ldrh    r0, [r0, r1]
	strh    r0, [r4, #0xa]
	ldr     r0, [pc, #0x3c] @ 0x21d4c0c, (=0x21d5306)
	ldrh    r0, [r0, r1]
	strh    r0, [r4, #0xc]
	ldr     r0, [pc, #0x38] @ 0x21d4c10, (=0x21d5308)
	ldrh    r0, [r0, r1]
	strh    r0, [r4, #0xe]
	ldr     r0, [pc, #0x38] @ 0x21d4c14, (=0x21d530a)
	ldrh    r0, [r0, r1]
	strh    r0, [r4, #0x10]
	ldr     r0, [pc, #0x34] @ 0x21d4c18, (=0x21d530c)
	ldrh    r0, [r0, r1]
	strh    r0, [r4, #0x12]
	ldr     r0, [pc, #0x34] @ 0x21d4c1c, (=0x21d530e)
	ldrh    r0, [r0, r1]
	strh    r0, [r4, #0x14]
	ldr     r0, [pc, #0x30] @ 0x21d4c20, (=0x21d5310)
	ldrh    r0, [r0, r1]
	mov     r1, r4
	strh    r0, [r4, #0x16]
	ldr     r0, [pc, #0x2c] @ 0x21d4c24, (=0x21d4c41)
	bl      AddTaskToTaskList1
	ldr     r1, [pc, #0x2c] @ 0x21d4c28, (=0x4fc)
	str     r0, [r5, r1]
	pop     {r3-r5,pc}
@ 0x21d4c00

.thumb
branch_21d4c00: @ 21d4c00 :thumb
	ldr     r0, [pc, #0x24] @ 0x21d4c28, (=0x4fc)
	mov     r1, #0x0
	str     r1, [r5, r0]
	pop     {r3-r5,pc}
@ 0x21d4c08

.word 0x21d5304 @ 0x21d4c08
.word 0x21d5306 @ 0x21d4c0c
.word 0x21d5308 @ 0x21d4c10
.word 0x21d530a @ 0x21d4c14
.word 0x21d530c @ 0x21d4c18
.word 0x21d530e @ 0x21d4c1c
.word 0x21d5310 @ 0x21d4c20
.word 0x21d4c41 @ 0x21d4c24
.word 0x4fc @ 0x21d4c28
.thumb
Function_21d4c2c: @ 21d4c2c :thumb
	ldr     r1, [pc, #0xc] @ 0x21d4c3c, (=0x4fc)
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_21d4c38
	mov     r0, #0x1
	bx      lr
@ 0x21d4c38

.thumb
branch_21d4c38: @ 21d4c38 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d4c3c

.word 0x4fc @ 0x21d4c3c
.thumb
Function_21d4c40: @ 21d4c40 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x3
	bls     branch_21d4c50
	b       branch_21d4db4
@ 0x21d4c50

.thumb
branch_21d4c50: @ 21d4c50 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d4c5c

Jumppoints_21d4c5c:
.hword branch_21d4c64 - Jumppoints_21d4c5c - 2
.hword branch_21d4cea - Jumppoints_21d4c5c - 2
.hword branch_21d4d4a - Jumppoints_21d4c5c - 2
.hword branch_21d4da0 - Jumppoints_21d4c5c - 2
.thumb
branch_21d4c64: @ 21d4c64 :thumb
	ldr     r3, [r4, #0x0]
	mov     r2, #0xb
	str     r2, [sp, #0x0]
	mov     r1, #0x7
	str     r1, [sp, #0x4]
	ldrh    r6, [r4, #0xa]
	mov     r0, r3
	mov     r5, #0x9a
	add     r0, #0x2c
	mul     r5, r6
	add     r0, r0, r5
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	ldr     r0, [r3, #0xc]
	ldrh    r2, [r4, #0xe]
	ldrh    r3, [r4, #0x10]
	mov     r1, #0x4
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_20198e8
	ldr     r3, [r4, #0x0]
	mov     r2, #0xb
	mov     r0, r3
	str     r2, [sp, #0x0]
	mov     r1, #0x7
	str     r1, [sp, #0x4]
	ldrh    r6, [r4, #0x12]
	mov     r5, #0x9a
	add     r0, #0x2c
	mul     r5, r6
	add     r0, r0, r5
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	ldr     r0, [r3, #0xc]
	ldrh    r2, [r4, #0x14]
	ldrh    r3, [r4, #0x16]
	mov     r1, #0x4
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_20198e8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	ldr     r0, [r0, #0xc]
	bl      Function_2019448
	ldrh    r0, [r4, #0xa]
	add     sp, #0x1c
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0xa]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r6,pc}
@ 0x21d4cea

.thumb
branch_21d4cea: @ 21d4cea :thumb
	ldrh    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x8]
	ldrh    r0, [r4, #0x8]
	cmp     r0, #0x2
	bcc     branch_21d4db4
	ldr     r3, [r4, #0x0]
	mov     r2, #0xb
	str     r2, [sp, #0x0]
	mov     r1, #0x7
	str     r1, [sp, #0x4]
	ldrh    r6, [r4, #0xa]
	mov     r0, r3
	mov     r5, #0x9a
	add     r0, #0x2c
	mul     r5, r6
	add     r0, r0, r5
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	ldr     r0, [r3, #0xc]
	ldrh    r2, [r4, #0xe]
	ldrh    r3, [r4, #0x10]
	mov     r1, #0x4
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_20198e8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	ldr     r0, [r0, #0xc]
	bl      Function_2019448
	mov     r0, #0x0
	strh    r0, [r4, #0x8]
	ldrh    r0, [r4, #0xa]
	add     sp, #0x1c
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0xa]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r6,pc}
@ 0x21d4d4a

.thumb
branch_21d4d4a: @ 21d4d4a :thumb
	ldrh    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x8]
	ldrh    r0, [r4, #0x8]
	cmp     r0, #0x4
	bcc     branch_21d4db4
	ldr     r3, [r4, #0x0]
	mov     r2, #0xb
	str     r2, [sp, #0x0]
	mov     r1, #0x7
	str     r1, [sp, #0x4]
	ldrh    r6, [r4, #0xa]
	mov     r0, r3
	mov     r5, #0x9a
	add     r0, #0x2c
	mul     r5, r6
	add     r0, r0, r5
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	ldr     r0, [r3, #0xc]
	ldrh    r2, [r4, #0xe]
	ldrh    r3, [r4, #0x10]
	mov     r1, #0x4
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_20198e8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	ldr     r0, [r0, #0xc]
	bl      Function_2019448
	ldr     r0, [r4, #0x4]
	add     sp, #0x1c
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r6,pc}
@ 0x21d4da0

.thumb
branch_21d4da0: @ 21d4da0 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x14] @ 0x21d4db8, (=0x4fc)
	mov     r2, #0x0
	str     r2, [r1, r0]
	mov     r0, r4
	bl      free
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21d4db4: @ 21d4db4 :thumb
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x21d4db8

.word 0x4fc @ 0x21d4db8
.thumb
Function_21d4dbc: @ 21d4dbc :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_21d4de2
	ldr     r0, [r4, #0x4]
	bl      Function_21d204c
	mov     r1, r0
	ldr     r0, [r4, #0x14]
	bl      Function_2021cac
	ldr     r0, [r4, #0x4]
	bl      Function_21d2060
	mov     r1, r0
	ldr     r0, [r4, #0x18]
	bl      Function_2021cac
	pop     {r4,pc}
@ 0x21d4de2

.thumb
branch_21d4de2: @ 21d4de2 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r4, #0x18]
	mov     r1, #0x0
	bl      Function_2021cac
	pop     {r4,pc}
@ 0x21d4df4

.thumb
Function_21d4df4: @ 21d4df4 :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	beq     branch_21d4e00
	cmp     r1, #0x1
	beq     branch_21d4e1c
	pop     {r3,pc}
@ 0x21d4e00

.thumb
branch_21d4e00: @ 21d4e00 :thumb
	cmp     r2, #0x0
	beq     branch_21d4e12
	cmp     r2, #0x1
	bne     branch_21d4e36
	ldr     r0, [r0, #0x14]
	mov     r1, #0x1
	bl      Function_2021d6c
	pop     {r3,pc}
@ 0x21d4e12

.thumb
branch_21d4e12: @ 21d4e12 :thumb
	ldr     r0, [r0, #0x14]
	mov     r1, #0x0
	bl      Function_2021d6c
	pop     {r3,pc}
@ 0x21d4e1c

.thumb
branch_21d4e1c: @ 21d4e1c :thumb
	cmp     r2, #0x0
	beq     branch_21d4e2e
	cmp     r2, #0x1
	bne     branch_21d4e36
	ldr     r0, [r0, #0x18]
	mov     r1, #0x3
	bl      Function_2021d6c
	pop     {r3,pc}
@ 0x21d4e2e

.thumb
branch_21d4e2e: @ 21d4e2e :thumb
	ldr     r0, [r0, #0x18]
	mov     r1, #0x2
	bl      Function_2021d6c
.thumb
branch_21d4e36: @ 21d4e36 :thumb
	pop     {r3,pc}
@ 0x21d4e38

.thumb
Function_21d4e38: @ 21d4e38 :thumb
	push    {r4,lr}
	mov     r4, r0
	str     r1, [r4, #0x0]
	str     r2, [r4, #0x4]
	cmp     r3, #0x0
	bne     branch_21d4e52
	mov     r0, r1
	mov     r1, r2
	bl      Function_20192ec
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	b       branch_21d4e5e
@ 0x21d4e52

.thumb
branch_21d4e52: @ 21d4e52 :thumb
	mov     r0, r1
	mov     r1, r2
	bl      Function_20192f8
	str     r0, [r4, #0xc]
	mov     r0, #0x3
.thumb
branch_21d4e5e: @ 21d4e5e :thumb
	str     r0, [r4, #0x8]
	ldr     r0, [sp, #0x8]
	ldr     r1, [r4, #0xc]
	add     r2, r1, r0
	ldr     r1, [pc, #0x20] @ 0x21d4e88, (=0x1ff)
	lsl     r0, r0, #12
	and     r1, r2
	str     r1, [r4, #0x10]
	ldr     r1, [r4, #0xc]
	lsl     r1, r1, #12
	str     r1, [r4, #0xc]
	ldr     r1, [sp, #0xc]
	blx     _s32_div_f
	str     r0, [r4, #0x14]
	ldr     r0, [sp, #0xc]
	strh    r0, [r4, #0x18]
	mov     r0, #0x0
	strh    r0, [r4, #0x1a]
	pop     {r4,pc}
@ 0x21d4e86


.align 2


.word 0x1ff @ 0x21d4e88
.thumb
Function_21d4e8c: @ 21d4e8c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0x1a]
	cmp     r0, #0x0
	beq     branch_21d4ea0
	cmp     r0, #0x1
	beq     branch_21d4eb4
	cmp     r0, #0x2
	beq     branch_21d4eca
	b       branch_21d4ece
@ 0x21d4ea0

.thumb
branch_21d4ea0: @ 21d4ea0 :thumb
	ldr     r0, [pc, #0x30] @ 0x21d4ed4, (=0x21d4ed9)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_21d2170
	str     r0, [r4, #0x1c]
	ldrh    r0, [r4, #0x1a]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x1a]
	b       branch_21d4ece
@ 0x21d4eb4

.thumb
branch_21d4eb4: @ 21d4eb4 :thumb
	ldrh    r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_21d4ece
	ldr     r0, [r4, #0x1c]
	bl      Call_RemoveTaskFromTaskList
	ldrh    r0, [r4, #0x1a]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x1a]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d4eca

.thumb
branch_21d4eca: @ 21d4eca :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d4ece

.thumb
branch_21d4ece: @ 21d4ece :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4ed2


.align 2


.word 0x21d4ed9 @ 0x21d4ed4
.thumb
Function_21d4ed8: @ 21d4ed8 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_21d4f06
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x14]
	add     r3, r1, r0
	str     r3, [r4, #0xc]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	lsl     r1, r1, #24
	lsl     r2, r2, #24
	ldr     r0, [r4, #0x0]
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	asr     r3, r3, #12
	bl      Function_2019184
	ldrh    r0, [r4, #0x18]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x18]
	pop     {r4,pc}
@ 0x21d4f06

.thumb
branch_21d4f06: @ 21d4f06 :thumb
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	lsl     r1, r1, #24
	lsl     r2, r2, #24
	ldr     r0, [r4, #0x0]
	ldr     r3, [r4, #0x10]
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_2019184
	pop     {r4,pc}
@ 0x21d4f1c

.thumb
Function_21d4f1c: @ 21d4f1c :thumb
	push    {r4,lr}
	mov     r4, r0
	str     r1, [r4, #0x0]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	str     r2, [r4, #0x4]
	str     r1, [r4, #0x14]
	str     r3, [r4, #0x8]
	sub     r0, r0, r3
	blx     _s32_div_f
	str     r0, [r4, #0x10]
	ldr     r0, [sp, #0x8]
	mov     r2, #0x0
	str     r0, [r4, #0xc]
	ldr     r0, [pc, #0xc] @ 0x21d4f48, (=0x21d4f75)
	mov     r1, r4
	str     r2, [r4, #0x18]
	bl      Function_21d2170
	str     r0, [r4, #0x1c]
	pop     {r4,pc}
@ 0x21d4f48

.word 0x21d4f75 @ 0x21d4f48
.thumb
Function_21d4f4c: @ 21d4f4c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_21d4f6c
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_21d4f70
	ldr     r0, [r4, #0x1c]
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d4f6c

.thumb
branch_21d4f6c: @ 21d4f6c :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d4f70

.thumb
branch_21d4f70: @ 21d4f70 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4f74

.thumb
Function_21d4f74: @ 21d4f74 :thumb
	push    {r3,lr}
	mov     r2, r1
	ldr     r0, [r2, #0x14]
	cmp     r0, #0x0
	beq     branch_21d4f90
	ldr     r1, [r2, #0x8]
	ldr     r0, [r2, #0x10]
	add     r0, r1, r0
	str     r0, [r2, #0x8]
	asr     r3, r0, #3
	ldr     r0, [r2, #0x14]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r2, #0x14]
	b       branch_21d4f94
@ 0x21d4f90

.thumb
branch_21d4f90: @ 21d4f90 :thumb
	ldr     r0, [r2, #0xc]
	asr     r3, r0, #3
.thumb
branch_21d4f94: @ 21d4f94 :thumb
	cmp     r3, #0x10
	ble     branch_21d4f9a
	mov     r3, #0x10
.thumb
branch_21d4f9a: @ 21d4f9a :thumb
	mov     r0, #0x10
	sub     r0, r0, r3
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x8] @ 0x21d4fac, (=REG_BLDCNT)
	ldmia   r2!, {r1,r2}
	blx     G2x_SetBlendAlpha_
	pop     {r3,pc}
@ 0x21d4faa


.align 2


.word REG_BLDCNT @ 0x21d4fac
.thumb
Function_21d4fb0: @ 21d4fb0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x30] @ 0x21d4fe8, (=REG_BLDCNT)
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	blx     G2x_SetBlendBrightness_
	ldr     r1, [sp, #0x18]
	str     r4, [r5, #0x0]
	str     r1, [r5, #0x14]
	lsl     r0, r6, #12
	str     r0, [r5, #0x8]
	lsl     r2, r7, #12
	str     r2, [r5, #0xc]
	ldr     r0, [r5, #0x8]
	sub     r0, r2, r0
	blx     _s32_div_f
	str     r0, [r5, #0x10]
	mov     r2, #0x0
	ldr     r0, [pc, #0x10] @ 0x21d4fec, (=0x21d5019)
	mov     r1, r5
	str     r2, [r5, #0x18]
	bl      Function_21d2170
	str     r0, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x21d4fe8

.word REG_BLDCNT @ 0x21d4fe8
.word Function_21d5018+1 @ =0x21d5019, 0x21d4fec
.thumb
Function_21d4ff0: @ 21d4ff0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_21d5010
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_21d5014
	ldr     r0, [r4, #0x1c]
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d5010

.thumb
branch_21d5010: @ 21d5010 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d5014

.thumb
branch_21d5014: @ 21d5014 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d5018

.thumb
Function_21d5018: @ 21d5018 :thumb
	ldr     r0, [r1, #0x14]
	cmp     r0, #0x0
	beq     branch_21d5030
	ldr     r2, [r1, #0x8]
	ldr     r0, [r1, #0x10]
	add     r0, r2, r0
	str     r0, [r1, #0x8]
	asr     r2, r0, #12
	ldr     r0, [r1, #0x14]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r1, #0x14]
	b       branch_21d5034
@ 0x21d5030

.thumb
branch_21d5030: @ 21d5030 :thumb
	ldr     r0, [r1, #0xc]
	asr     r2, r0, #12
.thumb
branch_21d5034: @ 21d5034 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d503c, (=G2x_SetBlendBrightness_)
	ldr     r0, [pc, #0x8] @ 0x21d5040, (=REG_BLDCNT)
	ldr     r1, [r1, #0x0]
	bx      r3
@ 0x21d503c

.word G2x_SetBlendBrightness_ @ 0x21d503c
.word REG_BLDCNT @ 0x21d5040
.thumb
Function_21d5044: @ 21d5044 :thumb
	mov     r0, #0x1b
	bx      lr
@ 0x21d5048

.thumb
Function_21d5048: @ 21d5048 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	cmp     r4, #0x1b
	bcc     branch_21d5056
	bl      ErrorHandling
.thumb
branch_21d5056: @ 21d5056 :thumb
	mov     r1, #0xa
	ldr     r2, [pc, #0xc] @ 0x21d5068, (=0x21d5320)
	mul     r1, r4
	add     r1, r2, r1
	mov     r0, r5
	mov     r2, #0x2
	bl      Function_2023d8c
	pop     {r3-r5,pc}
@ 0x21d5068

.word 0x21d5320 @ 0x21d5068
.thumb
Function_21d506c: @ 21d506c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	cmp     r5, #0x1b
	bcc     branch_21d507c
	bl      ErrorHandling
.thumb
branch_21d507c: @ 21d507c :thumb
	mov     r0, #0xa
	mov     r1, r5
	mul     r1, r0
	ldr     r0, [pc, #0xc] @ 0x21d5090, (=0x21d5322)
	ldrb    r0, [r0, r1]
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x8] @ 0x21d5094, (=0x21d5323)
	ldrb    r0, [r0, r1]
	str     r0, [r6, #0x0]
	pop     {r4-r6,pc}
@ 0x21d5090

.word 0x21d5322 @ 0x21d5090
.word 0x21d5323 @ 0x21d5094
.thumb
Function_21d5098: @ 21d5098 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r4, #0x1b
	bcc     branch_21d50a4
	bl      ErrorHandling
.thumb
branch_21d50a4: @ 21d50a4 :thumb
	mov     r0, #0xa
	mov     r1, r4
	mul     r1, r0
	ldr     r0, [pc, #0x4] @ 0x21d50b0, (=0x21d5324)
	ldrb    r0, [r0, r1]
	pop     {r4,pc}
@ 0x21d50b0

.word 0x21d5324 @ 0x21d50b0
.thumb
Function_21d50b4: @ 21d50b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r4, #0x1b
	bcc     branch_21d50c0
	bl      ErrorHandling
.thumb
branch_21d50c0: @ 21d50c0 :thumb
	mov     r0, #0xa
	mov     r1, r4
	mul     r1, r0
	ldr     r0, [pc, #0x4] @ 0x21d50cc, (=0x21d5325)
	ldrb    r0, [r0, r1]
	pop     {r4,pc}
@ 0x21d50cc

.word 0x21d5325 @ 0x21d50cc
.thumb
Function_21d50d0: @ 21d50d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r4, #0x1b
	bcc     branch_21d50dc
	bl      ErrorHandling
.thumb
branch_21d50dc: @ 21d50dc :thumb
	mov     r0, #0xa
	mov     r1, r4
	mul     r1, r0
	ldr     r0, [pc, #0x4] @ 0x21d50e8, (=0x21d5326)
	ldrb    r0, [r0, r1]
	pop     {r4,pc}
@ 0x21d50e8

.word 0x21d5326 @ 0x21d50e8
.thumb
Function_21d50ec: @ 21d50ec :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r4, #0x1b
	bcc     branch_21d50f8
	bl      ErrorHandling
.thumb
branch_21d50f8: @ 21d50f8 :thumb
	mov     r0, #0xa
	mov     r1, r4
	mul     r1, r0
	ldr     r0, [pc, #0x4] @ 0x21d5104, (=0x21d5327)
	ldrb    r0, [r0, r1]
	pop     {r4,pc}
@ 0x21d5104

.word 0x21d5327 @ 0x21d5104
.thumb
Function_21d5108: @ 21d5108 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r4, #0x1b
	bcc     branch_21d5114
	bl      ErrorHandling
.thumb
branch_21d5114: @ 21d5114 :thumb
	mov     r0, #0xa
	mov     r1, r4
	mul     r1, r0
	ldr     r0, [pc, #0x4] @ 0x21d5120, (=0x21d5328)
	ldrb    r0, [r0, r1]
	pop     {r4,pc}
@ 0x21d5120

.word 0x21d5328 @ 0x21d5120
.thumb
Function_21d5124: @ 21d5124 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r4, #0x1b
	bcc     branch_21d5130
	bl      ErrorHandling
.thumb
branch_21d5130: @ 21d5130 :thumb
	mov     r0, #0xa
	mov     r1, r4
	mul     r1, r0
	ldr     r0, [pc, #0x4] @ 0x21d513c, (=0x21d5329)
	ldrb    r0, [r0, r1]
	pop     {r4,pc}
@ 0x21d513c

.word 0x21d5329 @ 0x21d513c



Unknown_21d5140: @ 0x21d5140
.incbin "./baserom/overlay/overlay_0020.bin", 0x43c0, 0x21d5440 - 0x21d5140


@end 0x21d5440




