
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram90, "ax"


.thumb
.globl Function_90_21d0d80
Function_90_21d0d80: @ 21d0d80 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadPtrToOverWorldDataIn18
	mov     r2, #0x1
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x4a
	lsl     r2, r2, #16
	bl      Function_2017fc8
	mov     r1, #0xad
	mov     r0, r4
	lsl     r1, r1, #2
	mov     r2, #0x4a
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r2, #0xad
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     Call_FillMemWithValue
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strb    r0, [r4, #0xa]
	ldr     r0, [r5, #0x0]
	bl      LoadPlayerDataAdress
	str     r0, [r4, #0x18]
	ldr     r0, [r5, #0x0]
	bl      LoadVariableAreaAdress_17
	str     r0, [r4, #0x1c]
	ldr     r0, [r5, #0x0]
	bl      Function_202d750
	str     r0, [r4, #0x20]
	ldr     r0, [r5, #0x0]
	bl      Function_202d764
	str     r0, [r4, #0x24]
	mov     r0, #0x4a
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      Function_2017dd4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0de6


.align 2, 0
.thumb
.globl Function_90_21d0de8
Function_90_21d0de8: @ 21d0de8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	ldr     r0, [r4, #0x0]
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0e02


.align 2, 0
.thumb
.globl Function_90_21d0e04
Function_90_21d0e04: @ 21d0e04 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	bl      LoadOverlayData1c
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x4
	bhi     branch_21d0eb4
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d0e22

Jumppoints_21d0e22:
.hword branch_21d0e2c - Jumppoints_21d0e22 - 2
.hword branch_21d0e52 - Jumppoints_21d0e22 - 2
.hword branch_21d0e62 - Jumppoints_21d0e22 - 2
.hword branch_21d0e96 - Jumppoints_21d0e22 - 2
.hword branch_21d0ea6 - Jumppoints_21d0e22 - 2
.thumb
branch_21d0e2c: @ 21d0e2c :thumb
	bl      Function_21d0ecc
	cmp     r0, #0x0
	beq     branch_21d0eb4
	mov     r0, #0x6
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r3, #0x0
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0eb4
@ 0x21d0e52

.thumb
branch_21d0e52: @ 21d0e52 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d0eb4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0eb4
@ 0x21d0e62

.thumb
branch_21d0e62: @ 21d0e62 :thumb
	ldrh    r1, [r5, #0x8]
	cmp     r1, #0x0
	bne     branch_21d0e6e
	bl      Function_21d105c
	b       branch_21d0e72
@ 0x21d0e6e

.thumb
branch_21d0e6e: @ 21d0e6e :thumb
	bl      Function_21d1080
.thumb
branch_21d0e72: @ 21d0e72 :thumb
	cmp     r0, #0x0
	beq     branch_21d0eb4
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r3, r1
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0eb4
@ 0x21d0e96

.thumb
branch_21d0e96: @ 21d0e96 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d0eb4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0eb4
@ 0x21d0ea6

.thumb
branch_21d0ea6: @ 21d0ea6 :thumb
	bl      Function_21d0f98
	cmp     r0, #0x0
	beq     branch_21d0eb4
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x21d0eb4

.thumb
branch_21d0eb4: @ 21d0eb4 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x1
	blt     branch_21d0ec4
	cmp     r0, #0x3
	bgt     branch_21d0ec4
	mov     r0, r5
	bl      Function_21d1b90
.thumb
branch_21d0ec4: @ 21d0ec4 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d0eca


.align 2, 0


.thumb
Function_21d0ecc: @ 21d0ecc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x4
	bhi     branch_21d0f80
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d0ee2

Jumppoints_21d0ee2:
.hword branch_21d0eec - Jumppoints_21d0ee2 - 2
.hword branch_21d0f2c - Jumppoints_21d0ee2 - 2
.hword branch_21d0f38 - Jumppoints_21d0ee2 - 2
.hword branch_21d0f5e - Jumppoints_21d0ee2 - 2
.hword branch_21d0f70 - Jumppoints_21d0ee2 - 2
.thumb
branch_21d0eec: @ 21d0eec :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x84] @ 0x21d0f8c, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x80] @ 0x21d0f90, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	bl      Function_21d1014
	mov     r0, #0x0
	bl      Function_200f32c
	mov     r0, #0x1
	bl      Function_200f32c
	mov     r0, r4
	bl      Function_21d11ec
	b       branch_21d0f80
@ 0x21d0f2c

.thumb
branch_21d0f2c: @ 21d0f2c :thumb
	bl      Function_21d12b0
	mov     r0, r4
	bl      Function_21d13d8
	b       branch_21d0f80
@ 0x21d0f38

.thumb
branch_21d0f38: @ 21d0f38 :thumb
	bl      Function_21d1340
	ldrh    r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_21d0f50
	mov     r0, r4
	bl      Function_21d15d0
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_21d0f80
@ 0x21d0f50

.thumb
branch_21d0f50: @ 21d0f50 :thumb
	mov     r0, r4
	bl      Function_21d1750
	mov     r0, r4
	bl      Function_21d18bc
	b       branch_21d0f80
@ 0x21d0f5e

.thumb
branch_21d0f5e: @ 21d0f5e :thumb
	bl      Function_21d1abc
	mov     r0, r4
	bl      Function_21d1bac
	mov     r0, r4
	bl      Function_21d1984
	b       branch_21d0f80
@ 0x21d0f70

.thumb
branch_21d0f70: @ 21d0f70 :thumb
	ldr     r0, [pc, #0x20] @ 0x21d0f94, (=0x21d1035)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d0f80

.thumb
branch_21d0f80: @ 21d0f80 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d0f8a


.align 2


.word 0xffffe0ff @ 0x21d0f8c
.word 0x4001000 @ 0x21d0f90
.word 0x21d1035 @ 0x21d0f94
.thumb
Function_21d0f98: @ 21d0f98 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	beq     branch_21d0fa8
	cmp     r1, #0x1
	beq     branch_21d0fd2
	b       branch_21d1002
@ 0x21d0fa8

.thumb
branch_21d0fa8: @ 21d0fa8 :thumb
	ldrh    r1, [r4, #0x8]
	cmp     r1, #0x0
	beq     branch_21d0fbe
	bl      Function_21d1c28
	mov     r0, r4
	bl      Function_21d1b6c
	mov     r0, r4
	bl      Function_21d17dc
.thumb
branch_21d0fbe: @ 21d0fbe :thumb
	mov     r0, r4
	bl      Function_21d13a8
	mov     r0, r4
	bl      Function_21d146c
	mov     r0, r4
	bl      Function_21d1280
	b       branch_21d1002
@ 0x21d0fd2

.thumb
branch_21d0fd2: @ 21d0fd2 :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x21d100c, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x21d1010, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1002

.thumb
branch_21d1002: @ 21d1002 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d100c

.word 0xffffe0ff @ 0x21d100c
.word 0x4001000 @ 0x21d1010
.thumb
Function_21d1014: @ 21d1014 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d1030, (=0x21d1dd4)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d101e: @ 21d101e :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d101e
	add     r0, sp, #0x0
	bl      GX_SetBanks
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d1030

.word 0x21d1dd4 @ 0x21d1030
.thumb
Function_21d1034: @ 21d1034 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d1ba4
	blx     Function_20a635c
	ldr     r0, [r4, #0x10]
	bl      Function_201c2b8
	ldr     r3, [pc, #0xc] @ 0x21d1054, (=0x27e0000)
	ldr     r1, [pc, #0xc] @ 0x21d1058, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x21d1054

.word 0x27e0000 @ 0x21d1054
.word 0x3ff8 @ 0x21d1058
.thumb
Function_21d105c: @ 21d105c :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x18] @ 0x21d1078, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d1072
	ldr     r0, [pc, #0x10] @ 0x21d107c, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d1072

.thumb
branch_21d1072: @ 21d1072 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d1076


.align 2


.word 0x21bf67c @ 0x21d1078
.word 0x5dc @ 0x21d107c
.thumb
Function_21d1080: @ 21d1080 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	ldr     r1, [pc, #0x15c] @ 0x21d11e4, (=0x21bf67c)
	mov     r5, r0
	ldr     r3, [r1, #0x48]
	mov     r0, #0x2
	mov     r4, #0x0
	tst     r0, r3
	beq     branch_21d109e
	ldr     r0, [pc, #0x154] @ 0x21d11e8, (=0x5dc)
	bl      Function_2005748
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d109e

.thumb
branch_21d109e: @ 21d109e :thumb
	mov     r2, #0x1
	mov     r0, r3
	tst     r0, r2
	beq     branch_21d10ce
	ldr     r0, [pc, #0x140] @ 0x21d11e8, (=0x5dc)
	bl      Function_2005748
	ldrb    r0, [r5, #0xb]
	cmp     r0, #0xa
	bcc     branch_21d10b8
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d10b8

.thumb
branch_21d10b8: @ 21d10b8 :thumb
	ldrb    r0, [r5, #0xd]
	mov     r4, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r2, r0, #31
	lsl     r1, r0, #31
	sub     r1, r1, r2
	mov     r0, #0x1f
	ror     r1, r0
	add     r0, r2, r1
	strb    r0, [r5, #0xd]
	b       branch_21d1180
@ 0x21d10ce

.thumb
branch_21d10ce: @ 21d10ce :thumb
	ldr     r0, [r1, #0x4c]
	mov     r1, #0x40
	tst     r1, r0
	beq     branch_21d1102
	ldrb    r0, [r5, #0xb]
	cmp     r0, #0x0
	beq     branch_21d10f6
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, #0xb]
	ldrb    r0, [r5, #0xf]
	cmp     r0, #0x0
	bne     branch_21d10f0
	ldrb    r0, [r5, #0xe]
	mov     r4, r2
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, #0xe]
	b       branch_21d10f6
@ 0x21d10f0

.thumb
branch_21d10f0: @ 21d10f0 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, #0xf]
	mov     r4, r2
.thumb
branch_21d10f6: @ 21d10f6 :thumb
	cmp     r4, #0x0
	beq     branch_21d1176
	ldr     r0, [pc, #0xec] @ 0x21d11e8, (=0x5dc)
	bl      Function_2005748
	b       branch_21d1176
@ 0x21d1102

.thumb
branch_21d1102: @ 21d1102 :thumb
	mov     r1, #0x80
	tst     r1, r0
	beq     branch_21d1134
	ldrb    r0, [r5, #0xb]
	cmp     r0, #0xa
	bcs     branch_21d1128
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0xb]
	ldrb    r0, [r5, #0xf]
	cmp     r0, #0x1
	bls     branch_21d1122
	ldrb    r0, [r5, #0xe]
	mov     r4, r2
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0xe]
	b       branch_21d1128
@ 0x21d1122

.thumb
branch_21d1122: @ 21d1122 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0xf]
	mov     r4, r2
.thumb
branch_21d1128: @ 21d1128 :thumb
	cmp     r4, #0x0
	beq     branch_21d1176
	ldr     r0, [pc, #0xb8] @ 0x21d11e8, (=0x5dc)
	bl      Function_2005748
	b       branch_21d1176
@ 0x21d1134

.thumb
branch_21d1134: @ 21d1134 :thumb
	mov     r1, #0x20
	tst     r1, r0
	beq     branch_21d1156
	ldrb    r0, [r5, #0xc]
	mov     r1, #0x3
	.hword  0x1c80 @ add r0, r0, #0x2
	blx     _s32_div_f
	strb    r1, [r5, #0xc]
	ldrb    r0, [r5, #0xb]
	mov     r4, #0x1
	cmp     r0, #0xa
	beq     branch_21d1176
	ldr     r0, [pc, #0x98] @ 0x21d11e8, (=0x5dc)
	bl      Function_2005748
	b       branch_21d1176
@ 0x21d1156

.thumb
branch_21d1156: @ 21d1156 :thumb
	mov     r1, #0x10
	tst     r0, r1
	beq     branch_21d1176
	ldrb    r0, [r5, #0xc]
	mov     r1, #0x3
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _s32_div_f
	strb    r1, [r5, #0xc]
	ldrb    r0, [r5, #0xb]
	mov     r4, #0x1
	cmp     r0, #0xa
	beq     branch_21d1176
	ldr     r0, [pc, #0x74] @ 0x21d11e8, (=0x5dc)
	bl      Function_2005748
.thumb
branch_21d1176: @ 21d1176 :thumb
	ldrb    r0, [r5, #0xb]
	cmp     r0, #0xa
	bne     branch_21d1180
	mov     r0, #0x2
	strb    r0, [r5, #0xc]
.thumb
branch_21d1180: @ 21d1180 :thumb
	cmp     r4, #0x0
	bne     branch_21d118a
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d118a

.thumb
branch_21d118a: @ 21d118a :thumb
	ldrb    r1, [r5, #0xb]
	ldrb    r2, [r5, #0xc]
	ldrb    r3, [r5, #0xf]
	mov     r0, r5
	bl      Function_21d1c90
	ldrb    r0, [r5, #0xb]
	mov     r1, r5
	add     r1, #0x7c
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0xc]
	str     r0, [sp, #0x4]
	mov     r0, r5
	ldrb    r3, [r5, #0xe]
	ldr     r2, [r5, #0x34]
	add     r0, #0xbc
	bl      Function_21d17f8
	ldrb    r0, [r5, #0xb]
	cmp     r0, #0xa
	beq     branch_21d11d6
	ldrb    r0, [r5, #0xd]
	cmp     r0, #0x0
	beq     branch_21d11c0
	cmp     r0, #0x1
	beq     branch_21d11c8
	b       branch_21d11d0
@ 0x21d11c0

.thumb
branch_21d11c0: @ 21d11c0 :thumb
	mov     r0, r5
	bl      Function_21d1984
	b       branch_21d11dc
@ 0x21d11c8

.thumb
branch_21d11c8: @ 21d11c8 :thumb
	mov     r0, r5
	bl      Function_21d1a48
	b       branch_21d11dc
@ 0x21d11d0

.thumb
branch_21d11d0: @ 21d11d0 :thumb
	bl      ErrorHandling
	b       branch_21d11dc
@ 0x21d11d6

.thumb
branch_21d11d6: @ 21d11d6 :thumb
	mov     r0, r5
	bl      Function_21d1a9c
.thumb
branch_21d11dc: @ 21d11dc :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d11e2

.align 2
.word 0x21bf67c @ 0x21d11e4
.word 0x5dc @ 0x21d11e8



.thumb
Function_21d11ec: @ 21d11ec :thumb
	push    {r4-r7,lr}
	add     sp, #-0x64
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      Function_2018340
	add     r3, sp, #0x0
	ldr     r4, [pc, #0x7c] @ 0x21d1278, (=Unknown_21d1d5c)
	str     r0, [r5, #0x10]
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      SetGraphicsModes
	ldr     r4, [pc, #0x6c] @ 0x21d127c, (=0x21d1e2c)
	add     r3, sp, #0x10
	mov     r2, #0xa
.thumb
branch_21d1214: @ 21d1214 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1214
	ldr     r0, [r4, #0x0]
	mov     r4, #0x0
	str     r0, [r3, #0x0]
	ldrh    r0, [r5, #0x8]
	mov     r7, r4
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r0, #0x0
	ble     branch_21d1254
	add     r6, sp, #0x10
.thumb
branch_21d122e: @ 21d122e :thumb
	lsl     r1, r4, #24
	ldr     r0, [r5, #0x10]
	lsr     r1, r1, #24
	mov     r2, r6
	mov     r3, #0x0
	bl      Function_20183c4
	lsl     r1, r4, #24
	ldr     r0, [r5, #0x10]
	lsr     r1, r1, #24
	bl      Function_2019ebc
	ldrh    r0, [r5, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	add     r6, #0x1c
	cmp     r7, r0
	blt     branch_21d122e
.thumb
branch_21d1254: @ 21d1254 :thumb
	mov     r0, #0x0
	ldr     r3, [r5, #0x0]
	mov     r1, #0x20
	mov     r2, r0
	bl      Function_2019690
	ldrh    r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_21d1272
	ldr     r3, [r5, #0x0]
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	bl      Function_2019690
.thumb
branch_21d1272: @ 21d1272 :thumb
	add     sp, #0x64
	pop     {r4-r7,pc}
@ 0x21d1276

.align 2
.word Unknown_21d1d5c @ 0x21d1278
.word 0x21d1e2c @ 0x21d127c



.thumb
Function_21d1280: @ 21d1280 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldrh    r0, [r6, #0x8]
	mov     r5, #0x0
	mov     r4, r5
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r0, #0x0
	ble     branch_21d12a6
.thumb
branch_21d1290: @ 21d1290 :thumb
	lsl     r1, r5, #24
	ldr     r0, [r6, #0x10]
	lsr     r1, r1, #24
	.hword  0x1c6d @ add r5, r5, #0x1
	bl      Function_2019044
	ldrh    r0, [r6, #0x8]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r4, r0
	blt     branch_21d1290
.thumb
branch_21d12a6: @ 21d12a6 :thumb
	ldr     r0, [r6, #0x10]
	bl      free
	pop     {r4-r6,pc}
@ 0x21d12ae


.align 2, 0
.thumb
Function_21d12b0: @ 21d12b0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0

	ldr     r1, [r5, #0x0]
	mov     r0, #Btower_Narc
	bl      LoadFromNARC_8
	mov     r4, r0
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x10]
	ldr     r1, [r5, #0x0]
	mov     r2, r4
	mov     r3, #0x7b
	bl      Function_208c210
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x40
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x10]
	ldr     r1, [r5, #0x0]
	mov     r2, r4
	mov     r3, #0x7b
	bl      Function_208c210
	ldrh    r0, [r5, #0x8]
	cmp     r0, #0x1
	bne     branch_21d1306
	mov     r0, #0x7
	b       branch_21d1312
@ 0x21d1306

.thumb
branch_21d1306: @ 21d1306 :thumb
	ldrb    r0, [r5, #0xa]
	cmp     r0, #0x2
	bne     branch_21d1310
	mov     r0, #0x8
	b       branch_21d1312
@ 0x21d1310

.thumb
branch_21d1310: @ 21d1310 :thumb
	mov     r0, #0x6
.thumb
branch_21d1312: @ 21d1312 :thumb
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x10]
	ldr     r1, [r5, #0x0]
	mov     r2, r4
	mov     r3, #0x7b
	bl      Function_208c210
	mov     r0, r4
	bl      Call_FS_CloseFile
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	bl      Function_201c3c0
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d133e


.align 2, 0


.thumb
Function_21d1340: @ 21d1340 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldrh    r0, [r6, #0x8]
	cmp     r0, #0x0
	bne     branch_21d1370
	mov     r5, r6
	ldr     r4, [pc, #0x50] @ 0x21d13a0, (=0x21d1dfc)
	mov     r7, #0x0
	add     r5, #0x6c
.thumb
branch_21d1352: @ 21d1352 :thumb
	ldr     r0, [r6, #0x10]
	mov     r1, r5
	mov     r2, r4
	bl      Function_201a8d4
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x8
	add     r5, #0x10
	cmp     r7, #0x5
	blt     branch_21d1352
	b       branch_21d1394
@ 0x21d1370

.thumb
branch_21d1370: @ 21d1370 :thumb
	mov     r5, r6
	ldr     r4, [pc, #0x30] @ 0x21d13a4, (=0x21d1d80)
	mov     r7, #0x0
	add     r5, #0x6c
.thumb
branch_21d1378: @ 21d1378 :thumb
	ldr     r0, [r6, #0x10]
	mov     r1, r5
	mov     r2, r4
	bl      Function_201a8d4
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x8
	add     r5, #0x10
	cmp     r7, #0x3
	blt     branch_21d1378
.thumb
branch_21d1394: @ 21d1394 :thumb
	ldr     r2, [r6, #0x0]
	mov     r0, #0x0
	mov     r1, #0x40
	bl      LoadFromNARC_PlFont1
	pop     {r3-r7,pc}
@ 0x21d13a0

.word 0x21d1dfc @ 0x21d13a0
.word 0x21d1d80 @ 0x21d13a4
.thumb
Function_21d13a8: @ 21d13a8 :thumb
	push    {r4-r6,lr}
	ldrh    r1, [r0, #0x8]
	cmp     r1, #0x0
	bne     branch_21d13b4
	mov     r6, #0x5
	b       branch_21d13b6
@ 0x21d13b4

.thumb
branch_21d13b4: @ 21d13b4 :thumb
	mov     r6, #0x3
.thumb
branch_21d13b6: @ 21d13b6 :thumb
	mov     r4, #0x0
	cmp     r6, #0x0
	ble     branch_21d13d4
	mov     r5, r0
	add     r5, #0x6c
.thumb
branch_21d13c0: @ 21d13c0 :thumb
	mov     r0, r5
	bl      Function_201acf4
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, r6
	blt     branch_21d13c0
.thumb
branch_21d13d4: @ 21d13d4 :thumb
	pop     {r4-r6,pc}
@ 0x21d13d6


.align 2, 0


.thumb
Function_21d13d8: @ 21d13d8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r3, [r5, #0x0]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, #0x16
	bl      LoadFromNARC_9
	str     r0, [r5, #0x28]
	ldr     r2, [r5, #0x0]
	mov     r0, #0x2
	mov     r1, #0x4c
	bl      Function_200b368
	str     r0, [r5, #0x2c]
	ldr     r1, [r5, #0x0]
	mov     r0, #0x4c
	bl      Function_2023790
	str     r0, [r5, #0x30]
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_21d1404: @ 21d1404 :thumb
	mov     r1, r6
	ldr     r0, [r5, #0x28]
	add     r1, #0x9
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [r4, #0x4c]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x6
	blt     branch_21d1404
	ldr     r0, [r5, #0x28]
	mov     r1, #0xf
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [r5, #0x38]
	ldr     r0, [r5, #0x28]
	mov     r1, #0x11
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [r5, #0x3c]
	ldr     r0, [r5, #0x28]
	mov     r1, #0x12
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [r5, #0x34]
	ldr     r0, [r5, #0x28]
	mov     r1, #0x13
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [r5, #0x40]
	ldr     r0, [r5, #0x28]
	mov     r1, #0x14
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [r5, #0x44]
	ldr     r0, [r5, #0x28]
	mov     r1, #0x15
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [r5, #0x48]
	ldr     r0, [r5, #0x28]
	mov     r1, #0x16
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [r5, #0x64]
	ldr     r0, [r5, #0x28]
	mov     r1, #0x17
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [r5, #0x68]
	pop     {r4-r6,pc}
@ 0x21d146a


.align 2, 0


.thumb
Function_21d146c: @ 21d146c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x68]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r6, #0x64]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r6, #0x48]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r6, #0x44]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r6, #0x40]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r6, #0x34]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r6, #0x3c]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r6, #0x38]
	bl      Function_20237bc_FreeMsg
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_21d14a4: @ 21d14a4 :thumb
	ldr     r0, [r5, #0x4c]
	bl      Function_20237bc_FreeMsg
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_21d14a4
	ldr     r0, [r6, #0x30]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r6, #0x2c]
	bl      Function_200b3f0
	ldr     r0, [r6, #0x28]
	bl      Function_200b190
	pop     {r4-r6,pc}
@ 0x21d14c6


.align 2, 0


.thumb
Function_21d14c8: @ 21d14c8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r7, r3
	mov     r4, r1
	mov     r6, r2
	ldr     r0, [r5, #0x1c]
	mov     r1, r7
	mov     r2, #0xff
	bl      Function_2030698
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x1c]
	add     r1, r7, #0x1
	mov     r2, #0xff
	bl      Function_2030698
	add     r6, #0x8
	mov     r7, r0
	lsl     r1, r6, #16
	ldr     r0, [r5, #0x20]
	lsr     r1, r1, #16
	mov     r2, #0x0
	bl      Function_202d414
	lsl     r2, r0, #16
	add     r0, sp, #0x18
	ldrb    r6, [r0, #0x10]
	lsr     r2, r2, #14
	mov     r0, #0xff
	str     r6, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0xc1
	lsl     r0, r0, #10
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	add     r2, r5, r2
	ldr     r2, [r2, #0x4c]
	mov     r0, r4
	mov     r3, #0x4
	bl      Function_201d78c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x2c]
	mov     r1, #0x0
	mov     r2, r7
	mov     r3, #0x4
	bl      Function_200b60c
	ldr     r0, [r5, #0x2c]
	ldr     r1, [r5, #0x30]
	ldr     r2, [r5, #0x5c]
	bl      Function_200c388
	mov     r0, #0x0
	ldr     r1, [r5, #0x30]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0xa4
	sub     r3, r1, r0
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x7c] @ 0x21d15cc, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x30]
	mov     r0, r4
	bl      Function_201d78c
	add     r0, sp, #0x18
	ldrb    r0, [r0, #0x10]
	mov     r1, #0x0
	mov     r3, #0x4
	add     r0, #0x18
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0xc1
	lsl     r0, r0, #10
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x54]
	mov     r0, r4
	bl      Function_201d78c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x2c]
	ldr     r2, [sp, #0x10]
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_200b60c
	ldr     r0, [r5, #0x2c]
	ldr     r1, [r5, #0x30]
	ldr     r2, [r5, #0x5c]
	bl      Function_200c388
	mov     r0, #0x0
	ldr     r1, [r5, #0x30]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0xa4
	sub     r3, r1, r0
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d15cc, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x30]
	mov     r0, r4
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_201a954
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d15cc

.word 0x10200 @ 0x21d15cc
.thumb
Function_21d15d0: @ 21d15d0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldrb    r1, [r4, #0xa]
	ldr     r0, [r4, #0x28]
	ldr     r2, [r4, #0x30]
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, #0x0
	ldr     r1, [r4, #0x30]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0xc0
	sub     r3, r1, r0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	lsr     r5, r3, #31
	add     r5, r3, r5
	ldr     r0, [pc, #0x14c] @ 0x21d1748, (=0xf0200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x30]
	add     r0, #0x6c
	asr     r3, r5, #1
	bl      Function_201d78c
	ldrb    r1, [r4, #0xa]
	ldr     r0, [r4, #0x28]
	ldr     r2, [r4, #0x30]
	.hword  0x1cc9 @ add r1, r1, #0x3
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xc1
	str     r1, [sp, #0x4]
	lsl     r0, r0, #10
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x30]
	add     r0, #0x7c
	mov     r3, r1
	bl      Function_201d78c
	ldrb    r1, [r4, #0xa]
	ldr     r0, [r4, #0x28]
	ldr     r2, [r4, #0x30]
	.hword  0x1d89 @ add r1, r1, #0x6
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, #0xc1
	str     r1, [sp, #0x4]
	lsl     r0, r0, #10
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x30]
	add     r0, #0x8c
	mov     r3, r1
	bl      Function_201d78c
	ldrb    r0, [r4, #0xa]
	cmp     r0, #0x0
	beq     branch_21d166c
	cmp     r0, #0x1
	beq     branch_21d1692
	cmp     r0, #0x2
	beq     branch_21d16b8
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d166c

.thumb
branch_21d166c: @ 21d166c :thumb
	mov     r2, #0x0
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x9c
	mov     r3, r2
	str     r2, [sp, #0x0]
	bl      Function_21d14c8
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r4, #0xac
	mov     r1, r4
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_21d14c8
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d1692

.thumb
branch_21d1692: @ 21d1692 :thumb
	mov     r0, #0x0
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r1, #0x9c
	mov     r2, #0x2
	mov     r3, #0x4
	bl      Function_21d14c8
	mov     r0, r4
	add     r4, #0xac
	mov     r2, #0x3
	mov     r1, r4
	mov     r3, #0x6
	str     r2, [sp, #0x0]
	bl      Function_21d14c8
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d16b8

.thumb
branch_21d16b8: @ 21d16b8 :thumb
	ldr     r0, [r4, #0x28]
	ldr     r2, [r4, #0x30]
	mov     r1, #0xc
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, #0xc1
	str     r1, [sp, #0x4]
	lsl     r0, r0, #10
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x30]
	add     r0, #0x9c
	mov     r3, #0x4
	bl      Function_201d78c
	ldr     r0, [r4, #0x20]
	mov     r1, #0x0
	bl      Function_202d2c0
	mov     r1, #0x0
	mov     r2, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x2c]
	mov     r3, #0x2
	bl      Function_200b60c
	ldr     r0, [r4, #0x2c]
	ldr     r1, [r4, #0x30]
	ldr     r2, [r4, #0x60]
	bl      Function_200c388
	mov     r0, #0x0
	ldr     r1, [r4, #0x30]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0x40
	sub     r1, r1, r0
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r3, r0, #1
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x2c] @ 0x21d174c, (=0x50600)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x30]
	add     r3, #0x40
	add     r0, #0x9c
	bl      Function_201d78c
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r4, #0xac
	mov     r1, r4
	mov     r2, #0x4
	mov     r3, #0x8
	bl      Function_21d14c8
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d1746


.align 2


.word 0xf0200 @ 0x21d1748
.word 0x50600 @ 0x21d174c
.thumb
Function_21d1750: @ 21d1750 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	ldr     r0, [r7, #0x24]
	ldr     r1, [r7, #0x0]
	bl      Function_202d71c
	str     r0, [sp, #0x0]
	ldr     r5, [sp, #0x0]
	mov     r0, #0x0
	mov     r4, r7
	str     r0, [sp, #0x4]
	add     r4, #0xbc
	mov     r6, r5
.thumb
branch_21d176c: @ 21d176c :thumb
	mov     r0, r5
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	mov     r1, r4
	add     r1, #0x8
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	strb    r0, [r4, #0x4]
	ldrb    r0, [r5, #0x12]
	mov     r2, #0x8
	strb    r0, [r4, #0x5]
	ldrb    r0, [r5, #0x13]
	strb    r0, [r4, #0x6]
	mov     r0, r5
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	strb    r0, [r4, #0x7]
	mov     r0, r5
	add     r0, #0x18
	blx     MI_CpuCopy8
	ldr     r1, [r7, #0x0]
	mov     r0, #0x8
	bl      Function_2023790
	str     r0, [r4, #0x0]
	ldrb    r0, [r4, #0x7]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x0]
	beq     branch_21d17ba
	ldrb    r1, [r4, #0x4]
	lsl     r1, r1, #2
	add     r1, r7, r1
	ldr     r1, [r1, #0x64]
	bl      Function_2023810
	b       branch_21d17c0
@ 0x21d17ba

.thumb
branch_21d17ba: @ 21d17ba :thumb
	mov     r1, r6
	bl      Function_2023d28
.thumb
branch_21d17c0: @ 21d17c0 :thumb
	ldr     r0, [sp, #0x4]
	add     r4, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r5, #0x22
	add     r6, #0x22
	str     r0, [sp, #0x4]
	cmp     r0, #0x1e
	blt     branch_21d176c
	ldr     r0, [sp, #0x0]
	bl      free
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d17da


.align 2, 0


.thumb
Function_21d17dc: @ 21d17dc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_21d17e2: @ 21d17e2 :thumb
	mov     r0, r5
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	bl      Function_20237bc_FreeMsg
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x1e
	blt     branch_21d17e2
	pop     {r3-r5,pc}
@ 0x21d17f6


.align 2, 0


.thumb
Function_21d17f8: @ 21d17f8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	str     r0, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r0, r1
	mov     r1, #0x0
	mov     r5, r2
	mov     r4, r3
	bl      Function_201ada4_ClearTextBox
	cmp     r4, #0x8
	bcc     branch_21d1840
	mov     r0, #0x2
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0x28
	sub     r0, r1, r0
	lsr     r3, r0, #1
	mov     r0, #0x34
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x80] @ 0x21d18b0, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x14]
	mov     r2, r5
	add     r3, #0xa0
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	b       branch_21d1844
@ 0x21d1840

.thumb
branch_21d1840: @ 21d1840 :thumb
	mov     r0, #0x3
	str     r0, [sp, #0x18]
.thumb
branch_21d1844: @ 21d1844 :thumb
	lsl     r0, r4, #1
	add     r0, r4, r0
	str     r0, [sp, #0x1c]
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	ble     branch_21d18a4
	ldr     r7, [sp, #0x20]
	mov     r6, #0x4
.thumb
branch_21d1858: @ 21d1858 :thumb
	mov     r4, #0x0
	mov     r5, r4
.thumb
branch_21d185c: @ 21d185c :thumb
	ldr     r0, [sp, #0x1c]
	add     r1, r4, r7
	add     r0, r0, r1
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x10]
	add     r2, r0, r1
	ldrb    r0, [r2, #0x4]
	cmp     r0, #0x0
	beq     branch_21d1872
	ldr     r1, [pc, #0x44] @ 0x21d18b4, (=0xb0c00)
	b       branch_21d1874
@ 0x21d1872

.thumb
branch_21d1872: @ 21d1872 :thumb
	ldr     r1, [pc, #0x44] @ 0x21d18b8, (=0x90a00)
.thumb
branch_21d1874: @ 21d1874 :thumb
	str     r6, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x0
	mov     r3, r5
	bl      Function_201d78c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x48
	cmp     r4, #0x3
	blt     branch_21d185c
	ldr     r0, [sp, #0x20]
	.hword  0x1cff @ add r7, r7, #0x3
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x18]
	add     r6, #0x18
	str     r1, [sp, #0x20]
	cmp     r1, r0
	blt     branch_21d1858
.thumb
branch_21d18a4: @ 21d18a4 :thumb
	ldr     r0, [sp, #0x14]
	bl      Function_201a954
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x21d18ae


.align 2


.word 0x10200 @ 0x21d18b0
.word 0xb0c00 @ 0x21d18b4
.word 0x90a00 @ 0x21d18b8
.thumb
Function_21d18bc: @ 21d18bc :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r0, [r4, #0x24]
	add     r1, sp, #0x10
	bl      Function_202d708
	ldr     r0, [r4, #0x30]
	bl      Function_20237e8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	add     r2, sp, #0x10
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r4, #0x2c]
	mov     r3, #0x2
	bl      Function_200b60c
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	add     r2, sp, #0x10
	ldrb    r2, [r2, #0x1]
	ldr     r0, [r4, #0x2c]
	mov     r3, #0x3
	bl      Function_200b60c
	ldr     r0, [r4, #0x2c]
	ldr     r1, [r4, #0x30]
	ldr     r2, [r4, #0x38]
	bl      Function_200c388
	mov     r0, #0x0
	ldr     r1, [r4, #0x30]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0xc0
	sub     r3, r1, r0
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x64] @ 0x21d1980, (=0xf0200)
	lsr     r5, r3, #31
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	mov     r0, r4
	add     r5, r3, r5
	ldr     r2, [r4, #0x30]
	add     r0, #0x6c
	asr     r3, r5, #1
	bl      Function_201d78c
	ldrb    r1, [r4, #0xa]
	ldr     r0, [r4, #0x28]
	ldr     r2, [r4, #0x30]
	add     r1, #0x10
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, #0x0
	ldr     r1, [r4, #0x30]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0xc0
	sub     r3, r1, r0
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	lsr     r5, r3, #31
	add     r5, r3, r5
	ldr     r0, [pc, #0x28] @ 0x21d1980, (=0xf0200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x30]
	add     r0, #0x6c
	asr     r3, r5, #1
	bl      Function_201d78c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r0, r4
	mov     r1, r4
	ldr     r2, [r4, #0x34]
	add     r0, #0xbc
	add     r1, #0x7c
	bl      Function_21d17f8
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d1980

.word 0xf0200 @ 0x21d1980
.thumb
Function_21d1984: @ 21d1984 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldrb    r2, [r4, #0xb]
	ldrb    r3, [r4, #0xc]
	add     r0, #0xbc
	lsl     r1, r2, #1
	add     r1, r2, r1
	add     r1, r3, r1
	lsl     r1, r1, #4
	add     r5, r0, r1
	mov     r0, r4
	add     r0, #0x8c
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldrb    r2, [r5, #0x5]
	cmp     r2, #0x0
	bne     branch_21d19c6
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x90] @ 0x21d1a44, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x48]
	add     r0, #0x8c
	mov     r3, r1
	bl      Function_201d78c
	b       branch_21d1a30
@ 0x21d19c6

.thumb
branch_21d19c6: @ 21d19c6 :thumb
	ldrb    r0, [r5, #0x6]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x2c]
	bne     branch_21d19fa
	mov     r1, #0x0
	bl      Function_200bdd0
	ldr     r0, [r4, #0x2c]
	ldr     r1, [r4, #0x30]
	ldr     r2, [r4, #0x44]
	bl      Function_200c388
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x5c] @ 0x21d1a44, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x30]
	add     r0, #0x8c
	mov     r3, r1
	bl      Function_201d78c
	b       branch_21d1a30
@ 0x21d19fa

.thumb
branch_21d19fa: @ 21d19fa :thumb
	mov     r1, #0x0
	bl      Function_200bdd0
	ldrb    r2, [r5, #0x5]
	ldrb    r3, [r5, #0x6]
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x1
	bl      Function_200be08
	ldr     r0, [r4, #0x2c]
	ldr     r1, [r4, #0x30]
	ldr     r2, [r4, #0x40]
	bl      Function_200c388
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x24] @ 0x21d1a44, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x30]
	add     r0, #0x8c
	mov     r3, r1
	bl      Function_201d78c
.thumb
branch_21d1a30: @ 21d1a30 :thumb
	mov     r0, r4
	add     r0, #0x8c
	bl      Function_201a954
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d1c44
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d1a44

.word 0x10200 @ 0x21d1a44
.thumb
Function_21d1a48: @ 21d1a48 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldrb    r2, [r4, #0xb]
	ldrb    r3, [r4, #0xc]
	add     r0, #0xbc
	lsl     r1, r2, #1
	add     r1, r2, r1
	add     r1, r3, r1
	lsl     r1, r1, #4
	add     r0, r0, r1
	ldr     r1, [r4, #0x0]
	add     r0, #0x8
	bl      Function_2014b34
	mov     r5, r0
	mov     r0, r4
	add     r0, #0x8c
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x1c] @ 0x21d1a98, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r4, #0x8c
	mov     r0, r4
	mov     r2, r5
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r5
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d1a96


.align 2


.word 0x10200 @ 0x21d1a98
.thumb
Function_21d1a9c: @ 21d1a9c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x8c
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	add     r0, #0x8c
	bl      Function_201acf4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d1c44
	pop     {r4,pc}
@ 0x21d1aba


.align 2, 0


.thumb
Function_21d1abc: @ 21d1abc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x50
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	mov     r0, #0x20
	bl      Function_201dbec
	ldr     r0, [r4, #0x0]
	bl      Function_200c6e4
	mov     r1, #0xa7
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	bl      Function_200c704
	mov     r7, #0x2a
	lsl     r7, r7, #4
	add     r2, sp, #0x30
	ldr     r3, [pc, #0x7c] @ 0x21d1b60, (=0x21d1db4)
	str     r0, [r4, r7]
	ldmia   r3!, {r0,r1}
	mov     r6, r2
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	ldr     r5, [pc, #0x6c] @ 0x21d1b64, (=0x21d1d6c)
	stmia   r2!, {r0,r1}
	add     r3, sp, #0x1c
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	str     r0, [r3, #0x0]
	.hword  0x1f38 @ sub r0, r7, #0x4
	ldr     r0, [r4, r0]
	mov     r3, #0x20
	bl      Function_200c73c
	.hword  0x1f39 @ sub r1, r7, #0x4
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	mov     r2, #0x4
	bl      Function_200c7c0
	ldr     r0, [r4, #0x0]
	bl      Function_200a93c
	ldr     r0, [r4, #0x0]
	bl      Function_200a944
	ldr     r5, [pc, #0x34] @ 0x21d1b68, (=0x21d1d98)
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	.hword  0x1f39 @ sub r1, r7, #0x4
	str     r0, [r3, #0x0]
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      Function_200c8f0
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	add     sp, #0x50
	pop     {r3-r7,pc}
@ 0x21d1b5e


.align 2


.word 0x21d1db4 @ 0x21d1b60
.word 0x21d1d6c @ 0x21d1b64
.word 0x21d1d98 @ 0x21d1b68
.thumb
Function_21d1b6c: @ 21d1b6c :thumb
	push    {r4,lr}
	mov     r1, #0xa7
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      Function_200c8b0
	mov     r0, #0xa7
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200c8d4
	bl      Function_201dc3c
	pop     {r4,pc}
@ 0x21d1b8e


.align 2, 0


.thumb
Function_21d1b90: @ 21d1b90 :thumb
	push    {r3,lr}
	mov     r1, #0x2a
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_21d1ba0
	bl      Function_200c7ec
.thumb
branch_21d1ba0: @ 21d1ba0 :thumb
	pop     {r3,pc}
@ 0x21d1ba2


.align 2, 0


.thumb
Function_21d1ba4: @ 21d1ba4 :thumb
	ldr     r3, [pc, #0x0] @ 0x21d1ba8, (=Function_200c800+1)
	bx      r3
@ 0x21d1ba8

.word Function_200c800+1 @ 0x21d1ba8
.thumb
Function_21d1bac: @ 21d1bac :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r6, [pc, #0x70] @ 0x21d1c24, (=0x21d1e80)
	mov     r7, #0x0
	mov     r4, r5
.thumb
branch_21d1bb6: @ 21d1bb6 :thumb
	mov     r0, #0xa7
	mov     r1, #0x2a
	lsl     r0, r0, #2
	lsl     r1, r1, #4
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      Function_200ca08
	mov     r1, #0xa9
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x28
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x4
	blt     branch_21d1bb6
	mov     r0, r1
	add     r0, #0x8
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, #0xa9
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x2b
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	bl      Function_2021e80
	pop     {r3-r7,pc}
@ 0x21d1c22


.align 2


.word 0x21d1e80 @ 0x21d1c24
.thumb
Function_21d1c28: @ 21d1c28 :thumb
	push    {r4-r6,lr}
	mov     r6, #0xa9
	mov     r5, r0
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_21d1c32: @ 21d1c32 :thumb
	ldr     r0, [r5, r6]
	bl      Function_200c7e4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_21d1c32
	pop     {r4-r6,pc}
@ 0x21d1c42


.align 2, 0


.thumb
Function_21d1c44: @ 21d1c44 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	cmp     r1, #0x0
	bne     branch_21d1c5c
	mov     r0, #0xa9
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021e90
	mov     r4, #0x0
	b       branch_21d1c6a
@ 0x21d1c5c

.thumb
branch_21d1c5c: @ 21d1c5c :thumb
	mov     r0, #0xa9
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2021e90
	mov     r4, #0x1
.thumb
branch_21d1c6a: @ 21d1c6a :thumb
	mov     r0, #0xa9
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_2021cc8
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_2021cc8
	mov     r0, #0x2b
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_2021cc8
	pop     {r3-r5,pc}
@ 0x21d1c90

.thumb
Function_21d1c90: @ 21d1c90 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0xe]
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r0, #0x8
	bne     branch_21d1ce4
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021cac
	cmp     r4, #0xa
	bne     branch_21d1cca
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021e50
	mov     r0, #0xa9
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	b       branch_21d1cfc
@ 0x21d1cca

.thumb
branch_21d1cca: @ 21d1cca :thumb
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2021e50
	mov     r0, #0xa9
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021cac
	b       branch_21d1cfc
@ 0x21d1ce4

.thumb
branch_21d1ce4: @ 21d1ce4 :thumb
	mov     r0, #0xa9
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021cac
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2021cac
.thumb
branch_21d1cfc: @ 21d1cfc :thumb
	ldrb    r0, [r5, #0xe]
	cmp     r0, #0x0
	beq     branch_21d1d08
	cmp     r0, #0x8
	beq     branch_21d1d16
	b       branch_21d1d24
@ 0x21d1d08

.thumb
branch_21d1d08: @ 21d1d08 :thumb
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	b       branch_21d1d3c
@ 0x21d1d16

.thumb
branch_21d1d16: @ 21d1d16 :thumb
	mov     r0, #0x2b
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	b       branch_21d1d3c
@ 0x21d1d24

.thumb
branch_21d1d24: @ 21d1d24 :thumb
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021cac
	mov     r0, #0x2b
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021cac
.thumb
branch_21d1d3c: @ 21d1d3c :thumb
	mov     r1, #0x48
	mov     r2, #0x18
	mov     r0, #0xa9
	mul     r1, r6
	mul     r2, r7
	lsl     r0, r0, #2
	add     r1, #0x36
	add     r2, #0x44
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	ldr     r0, [r5, r0]
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_200d494
	pop     {r3-r7,pc}



Unknown_21d1d5c: @ 0x21d1d5c
.incbin "./baserom/overlay/overlay_0090.bin", 0xfdc, 0x21d1fc0 - 0x21d1d5c


@end 0x21d1fc0




