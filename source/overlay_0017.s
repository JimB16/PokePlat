
.include "source/macros_asm.s"


.section .iwram17, "ax"






.thumb
Function_223b140: @ 223b140 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_2017798
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r1, #0x1
	lsl     r1, r1, #26
	ldr     r0, [r1, #0x0]
	ldr     r2, [pc, #0x2a0] @ 0x223b404, (=#0xffffe0ff)
	and     r0, r2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x2a0] @ 0x223b408, (=#0x4001000)
	ldr     r3, [r0, #0x0]
	and     r2, r3
	str     r2, [r0, #0x0]
	ldr     r3, [r1, #0x0]
	ldr     r2, [pc, #0x298] @ 0x223b40c, (=#0xffff1fff)
	and     r3, r2
	str     r3, [r1, #0x0]
	ldr     r3, [r0, #0x0]
	add     r1, #0x50
	and     r2, r3
	str     r2, [r0, #0x0]
	mov     r2, #0x0
	strh    r2, [r1, #0x0]
	add     r0, #0x50
	strh    r2, [r0, #0x0]
	mov     r2, #0x7
	mov     r0, #0x3
	mov     r1, #0x15
	lsl     r2, r2, #16
	bl      Function_2017fc8
	ldr     r1, [pc, #0x27c] @ 0x223b410, (=#0x1658)
	mov     r0, r5
	mov     r2, #0x15
	bl      Function_200681c
	ldr     r2, [pc, #0x270] @ 0x223b410, (=#0x1658)
	mov     r1, #0x0
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r0, #0x15
	bl      Function_223f140
	str     r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_2006840
	mov     r1, #0x5b
	str     r0, [r4, #0x0]
	lsl     r1, r1, #2
	str     r4, [r0, r1]
	ldr     r2, [r4, #0x0]
	mov     r3, #0x2
	add     r0, r1, #0x4
	strb    r3, [r2, r0]
	ldr     r0, [r4, #0x0]
	str     r0, [r4, #0xc]
	mov     r0, r4
	bl      Function_223b8c4
	mov     r0, #0x15
	bl      Function_2002f38
	str     r0, [r4, #0x5c]
	mov     r1, #0x1
	bl      Function_2003858
	mov     r2, #0x2
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x0
	lsl     r2, r2, #8
	mov     r3, #0x15
	bl      Function_2002f70
	mov     r1, #0x1
	ldr     r0, [r4, #0x5c]
	lsl     r2, r1, #9
	mov     r3, #0x15
	bl      Function_2002f70
	mov     r2, #0x7
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x2
	lsl     r2, r2, #6
	mov     r3, #0x15
	bl      Function_2002f70
	mov     r2, #0x2
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x3
	lsl     r2, r2, #8
	mov     r3, #0x15
	bl      Function_2002f70
	mov     r0, #0x15
	bl      Function_2018340
	str     r0, [r4, #0x30]
	mov     r0, #0x40
	mov     r1, #0x15
	bl      Function_201dbec
	mov     r0, #0x4
	mov     r1, #0x8
	bl      Function_2017dd4
	mov     r2, #0x23
	mov     r1, r4
	lsl     r2, r2, #4
	ldr     r0, [r4, #0x0]
	add     r1, #0xc
	add     r2, r4, r2
	bl      Function_223f88c
	ldr     r1, [pc, #0x1d8] @ 0x223b414, (=#0x81c)
	str     r0, [r4, r1]
	ldr     r0, [r4, #0x30]
	bl      Function_223b728
	bl      Function_201e3d8
	mov     r0, #0x4
	bl      Function_201e450
	mov     r0, #0x2
	mov     r1, #0x15
	bl      Function_2002bb8
	mov     r0, #0x15
	bl      Function_200c6e4
	ldr     r1, [pc, #0x1b8] @ 0x223b418, (=#0x2252dc8)
	ldr     r2, [pc, #0x1bc] @ 0x223b41c, (=#0x2252d9c)
	mov     r3, #0x20
	str     r0, [r4, #0x24]
	bl      Function_200c73c
	ldr     r1, [pc, #0x1b4] @ 0x223b420, (=#0x100010)
	mov     r0, #0x1
	bl      Function_200966c
	mov     r0, #0x1
	bl      Function_2009704
	ldr     r0, [r4, #0x24]
	bl      Function_200c704
	str     r0, [r4, #0x28]
	ldr     r0, [r4, #0x24]
	ldr     r1, [r4, #0x28]
	mov     r2, #0x80
	bl      Function_200c7c0
	ldr     r0, [r4, #0x24]
	ldr     r1, [r4, #0x28]
	ldr     r2, [pc, #0x194] @ 0x223b424, (=#0x2252db0)
	bl      Function_200cb30
	ldr     r0, [r4, #0x24]
	bl      Function_200c738
	mov     r2, #0x11
	mov     r1, #0x0
	lsl     r2, r2, #16
	bl      Function_200964c
	mov     r0, #0x15
	bl      Function_200762c
	str     r0, [r4, #0x10]
	bl      Function_223b884
	mov     r0, #0x15
	bl      0x221fcdc
	mov     r1, #0x1
	str     r0, [r4, #0x2c]
	bl      0x221fdc0
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, #0xcc
	mov     r3, #0x15
	bl      Function_200b144
	str     r0, [r4, #0x44]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, #0xcd
	mov     r3, #0x15
	bl      Function_200b144
	str     r0, [r4, #0x48]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, #0xd2
	mov     r3, #0x15
	bl      Function_200b144
	str     r0, [r4, #0x4c]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, #0xd3
	mov     r3, #0x15
	bl      Function_200b144
	str     r0, [r4, #0x50]
	mov     r0, #0x8
	mov     r1, #0x15
	bl      Function_2012744
	str     r0, [r4, #0x60]
	mov     r0, #0x15
	bl      Function_200b358
	str     r0, [r4, #0x54]
	mov     r0, #0x1e
	lsl     r0, r0, #4
	mov     r1, #0x15
	bl      Function_2023790
	str     r0, [r4, #0x58]
	mov     r0, #0x2d
	mov     r1, #0x15
	bl      Function_2006c24
	mov     r5, r0
	mov     r0, #0x2e
	mov     r1, #0x15
	bl      Function_2006c24
	mov     r6, r0
	mov     r0, r4
	mov     r1, r5
	bl      Function_223bba8
	mov     r0, r4
	mov     r1, r5
	bl      Function_223bce0
	mov     r0, r4
	bl      Function_223b858
	mov     r0, r4
	bl      Function_2241428
	mov     r0, r4
	mov     r1, r6
	bl      Function_223b8f8
	mov     r0, r4
	mov     r1, r6
	bl      Function_223ba10
	mov     r0, r5
	bl      Function_2006ca8
	mov     r0, r6
	bl      Function_2006ca8
	ldr     r7, [pc, #0xc8] @ 0x223b428, (=#0x123)
	mov     r6, #0x0
	add     r5, sp, #0xc
.thumb
branch_223b364: @ 223b364 :thumb
	ldr     r1, [r4, #0x0]
	mov     r2, #0x0
	ldrb    r0, [r1, r7]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, r6
	add     r1, #0x36
	bl      GetPkmnData
	strh    r0, [r5, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r6, #0x4
	blt     branch_223b364
	ldr     r0, [pc, #0x90] @ 0x223b414, (=#0x81c)
	add     r1, sp, #0xc
	ldr     r0, [r4, r0]
	bl      Function_2240a80
	ldr     r0, [pc, #0x88] @ 0x223b414, (=#0x81c)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	mov     r2, #0x1
	mov     r3, r1
	bl      Function_223f9c4
	mov     r0, r4
	add     r0, #0xc
	bl      Function_22415e4
	bl      Function_2039734
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r1, #0x15
	str     r1, [sp, #0x8]
	mov     r1, #0x1f
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_200f174
	ldr     r0, [pc, #0x70] @ 0x223b42c, (=#0x223b6f1)
	ldr     r2, [pc, #0x70] @ 0x223b430, (=#0xea60)
	mov     r1, r4
	bl      Function_200d9e8
	str     r0, [r4, #0x4]
	ldr     r0, [pc, #0x6c] @ 0x223b434, (=#0x824)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_201ffd0
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	ldr     r1, [pc, #0x54] @ 0x223b438, (=#0x46f)
	mov     r0, #0x6
	mov     r2, #0x1
	bl      Function_2004550
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x4c] @ 0x223b43c, (=#0x171)
	ldrb    r0, [r1, r0]
	bl      Function_20959f4
	ldr     r0, [pc, #0x48] @ 0x223b440, (=#0x223b6bd)
	mov     r1, r4
	bl      Function_2017798
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223b402


.align 2


.word 0xffffe0ff @ 0x223b404
.word 0x4001000 @ 0x223b408
.word 0xffff1fff @ 0x223b40c
.word 0x1658 @ 0x223b410
.word 0x81c @ 0x223b414
.word 0x2252dc8 @ 0x223b418
.word 0x2252d9c @ 0x223b41c
.word 0x100010 @ 0x223b420
.word 0x2252db0 @ 0x223b424
.word 0x123 @ 0x223b428
.word 0x223b6f1 @ 0x223b42c
.word 0xea60 @ 0x223b430
.word 0x824 @ 0x223b434
.word 0x46f @ 0x223b438
.word 0x171 @ 0x223b43c
.word 0x223b6bd @ 0x223b440

.incbin "./baserom/overlay/overlay_0017.bin", 0x304, 0x223b728 - 0x223b444


.thumb
Function_223b728: @ 223b728 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x8c
	mov     r4, r0
	bl      Function_201ff00
	ldr     r5, [pc, #0x114] @ 0x223b848, (=#0x2252de8)
	add     r3, sp, #0x10
	mov     r2, #0x5
.thumb
branch_223b738: @ 223b738 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223b738
	add     r0, sp, #0x10
	bl      Function_201fe94
	mov     r1, #0x6
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #24
	lsl     r2, r2, #18
	blx     MIi_CpuClear32
	mov     r1, #0x62
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #20
	lsl     r2, r2, #16
	blx     MIi_CpuClear32
	mov     r1, #0x19
	mov     r2, #0x1
	mov     r0, #0x0
	lsl     r1, r1, #22
	lsl     r2, r2, #18
	blx     MIi_CpuClear32
	mov     r1, #0x66
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #20
	lsl     r2, r2, #16
	blx     MIi_CpuClear32
	ldr     r5, [pc, #0xcc] @ 0x223b84c, (=#0x2252d8c)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      Function_2018368
	ldr     r5, [pc, #0xbc] @ 0x223b850, (=#0x2252e50)
	add     r3, sp, #0x38
	mov     r2, #0xa
.thumb
branch_223b798: @ 223b798 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223b798
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	mov     r0, r4
	add     r2, sp, #0x38
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019ebc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x2
	add     r2, sp, #0x54
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019ebc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x3
	add     r2, sp, #0x70
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019ebc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2019184
	mov     r1, #0x3
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2019184
	ldr     r1, [pc, #0x28] @ 0x223b854, (=#0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	mov     r0, #0x2
	orr     r0, r2
	strh    r0, [r1, #0x0]
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, r4
	bl      Function_223f80c
	add     sp, #0x8c
	pop     {r4,r5,pc}
@ 0x223b848

.word 0x2252de8 @ 0x223b848
.word 0x2252d8c @ 0x223b84c
.word 0x2252e50 @ 0x223b850
.word 0x4000008 @ 0x223b854
.thumb
Function_223b858: @ 223b858 :thumb
	push    {lr}
	add     sp, #-0x14
	mov     r1, r0
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x14
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x3
	lsl     r0, r0, #8
	str     r0, [sp, #0x10]
	ldr     r0, [r1, #0x30]
	add     r1, #0x34
	mov     r2, #0x1
	mov     r3, #0xb
	bl      Function_201a7e8
	add     sp, #0x14
	pop     {pc}
@ 0x223b884

.thumb
Function_223b884: @ 223b884 :thumb
	push    {r3-r5,lr}
	ldr     r3, [pc, #0x34] @ 0x223b8bc, (=#0x2100dec)
	mov     r0, #0x2
	mov     r1, #0x0
	ldr     r3, [r3, #0x0]
	lsl     r0, r0, #14
	mov     r2, r1
	blx     r3
	ldr     r3, [pc, #0x28] @ 0x223b8c0, (=#0x2100df4)
	mov     r1, #0x0
	mov     r4, r0
	ldr     r3, [r3, #0x0]
	mov     r0, #0x80
	mov     r2, r1
	blx     r3
	mov     r5, r0
	cmp     r4, #0x0
	bne     branch_223b8ac
	bl      Function_2022974
.thumb
branch_223b8ac: @ 223b8ac :thumb
	cmp     r5, #0x0
	bne     branch_223b8b4
	bl      Function_2022974
.thumb
branch_223b8b4: @ 223b8b4 :thumb
	bl      Function_2014000
	pop     {r3-r5,pc}
@ 0x223b8ba


.align 2


.word 0x2100dec @ 0x223b8bc
.word 0x2100df4 @ 0x223b8c0
.thumb
Function_223b8c4: @ 223b8c4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_223b8d2
	bl      Function_2022974
.thumb
branch_223b8d2: @ 223b8d2 :thumb
	ldr     r1, [pc, #0x20] @ 0x223b8f4, (=#0x172)
	mov     r0, #0x0
	mov     r2, r1
	add     r2, #0xbf
.thumb
branch_223b8da: @ 223b8da :thumb
	ldr     r3, [r4, #0x0]
	add     r3, r3, r0
	ldrb    r5, [r3, r1]
	add     r3, r4, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r5, [r3, r2]
	cmp     r0, #0x4
	blt     branch_223b8da
	mov     r0, r4
	bl      Function_2243c28
	pop     {r3-r5,pc}
@ 0x223b8f2


.align 2


.word 0x172 @ 0x223b8f4
.thumb
Function_223b8f8: @ 223b8f8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r1
	mov     r5, r0
	str     r4, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x84] @ 0x223b998, (=#0x80e9)
	mov     r1, #0x2
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x5c]
	ldr     r2, [r5, #0x24]
	ldr     r3, [r5, #0x28]
	bl      Function_200cdc4
	str     r4, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x68] @ 0x223b99c, (=#0x80ed)
	mov     r1, #0x2
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x5c]
	ldr     r2, [r5, #0x24]
	ldr     r3, [r5, #0x28]
	bl      Function_200cdc4
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r2, r4
	bl      Function_2243040
	mov     r0, r5
	bl      Function_2242fa4
	mov     r0, r5
	ldr     r1, [r5, #0x0]
	add     r0, #0xc
	mov     r2, r4
	bl      Function_2241928
	mov     r0, r5
	ldr     r2, [r5, #0x0]
	ldr     r1, [pc, #0x3c] @ 0x223b9a0, (=#0x11e)
	add     r0, #0xc
	ldrb    r1, [r2, r1]
	mov     r2, r4
	bl      Function_2241d94
	ldr     r0, [r5, #0x5c]
	ldr     r1, [r5, #0x24]
	ldr     r2, [r5, #0x28]
	mov     r3, r4
	bl      Function_22419ac
	mov     r0, r5
	add     r0, #0xc
	bl      Function_2241a24
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r2, r4
	bl      Function_2241e58
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r2, r4
	bl      Function_2242154
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x223b998

.word 0x80e9 @ 0x223b998
.word 0x80ed @ 0x223b99c
.word 0x11e @ 0x223b9a0

.incbin "./baserom/overlay/overlay_0017.bin", 0x864, 0x223ba10 - 0x223b9a4


.thumb
Function_223ba10: @ 223ba10 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r1
	mov     r5, r0
	str     r4, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r1, #0x3
	str     r1, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x90] @ 0x223babc, (=#0x80ef)
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x5c]
	ldr     r2, [r5, #0x24]
	ldr     r3, [r5, #0x28]
	bl      Function_200cdc4
	str     r4, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x74] @ 0x223bac0, (=#0x80f0)
	mov     r1, #0x3
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x5c]
	ldr     r2, [r5, #0x24]
	ldr     r3, [r5, #0x28]
	bl      Function_200cdc4
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r2, r4
	bl      Function_224131c
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r2, r4
	bl      Function_2241270
	ldr     r2, [pc, #0x54] @ 0x223bac4, (=#0x80f4)
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r3, r2
	bl      Function_224f0f0
	ldr     r7, [pc, #0x4c] @ 0x223bac8, (=#0x80f6)
	ldr     r6, [pc, #0x4c] @ 0x223bacc, (=#0x123)
	mov     r4, #0x0
.thumb
branch_223ba80: @ 223ba80 :thumb
	ldr     r1, [r5, #0x0]
	mov     r2, #0x0
	ldrb    r0, [r1, r6]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, r4
	add     r1, #0x36
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_223baa0
	mov     r1, #0xb
	bl      Function_20790c4
	mov     r3, r0
	b       branch_223baa2
@ 0x223baa0

.thumb
branch_223baa0: @ 223baa0 :thumb
	mov     r3, #0x0
.thumb
branch_223baa2: @ 223baa2 :thumb
	add     r0, r4, r7
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r2, #0x2
	bl      Function_224f0bc
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_223ba80
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223baba


.align 2


.word 0x80ef @ 0x223babc
.word 0x80f0 @ 0x223bac0
.word 0x80f4 @ 0x223bac4
.word 0x80f6 @ 0x223bac8
.word 0x123 @ 0x223bacc

.incbin "./baserom/overlay/overlay_0017.bin", 0x990, 0x223bb14 - 0x223bad0


.thumb
Function_223bb14: @ 223bb14 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r2
	cmp     r1, #0x0
	bne     branch_223bb7e
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	lsl     r0, r0, #14
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x15
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x30]
	mov     r0, #0x2d
	mov     r1, #0x3
	mov     r3, #0x2
	bl      Function_2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x15
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x30]
	mov     r0, #0x2d
	mov     r1, #0x5
	mov     r3, #0x2
	bl      Function_2006e60
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_2019060
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, r5
	bl      Function_2241428
	cmp     r4, #0x1
	bne     branch_223bba2
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x223bb7e

.thumb
branch_223bb7e: @ 223bb7e :thumb
	mov     r0, #0x2
	lsl     r1, r0, #13
	mov     r2, #0x0
	mov     r3, #0x15
	bl      Function_2019690
	ldr     r0, [r5, #0x30]
	mov     r1, #0x2
	bl      Function_2019ebc
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_2019060
.thumb
branch_223bba2: @ 223bba2 :thumb
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x223bba6


.align 2, 0


.thumb
Function_223bba8: @ 223bba8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r4, r1
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r0, #0x15
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x30]
	mov     r0, r4
	mov     r3, #0x3
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x15
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x30]
	mov     r0, r4
	mov     r1, #0x2
	mov     r3, #0x3
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x15
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x30]
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x15
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x30]
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_200710c
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_223bb14
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x5c]
	mov     r1, #0x2d
	mov     r2, #0x1e
	mov     r3, #0x15
	bl      Function_2003050
	mov     r0, #0x15
	mov     r1, #0x20
	bl      Function_2018144
	mov     r7, r0
	mov     r0, #0x15
	mov     r1, #0x20
	bl      Function_2018144
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x5c]
	mov     r1, #0x0
	bl      Function_2003164
	mov     r4, r0
	ldr     r0, [r5, #0x5c]
	mov     r1, #0x0
	bl      Function_200316c
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x78] @ 0x223bcd4, (=#0x22536b4)
	mov     r1, r7
	ldrb    r0, [r0, #0x0]
	mov     r2, #0x20
	lsl     r6, r0, #5
	add     r0, r4, r6
	blx     MIi_CpuCopy16
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x6c] @ 0x223bcd8, (=#0x123)
	mov     r2, #0x20
	ldrb    r1, [r1, r0]
	ldr     r0, [pc, #0x60] @ 0x223bcd4, (=#0x22536b4)
	ldrb    r0, [r0, r1]
	ldr     r1, [sp, #0x10]
	lsl     r0, r0, #5
	add     r0, r4, r0
	blx     MIi_CpuCopy16
	ldr     r2, [r5, #0x0]
	ldr     r1, [pc, #0x54] @ 0x223bcd8, (=#0x123)
	mov     r0, r7
	ldrb    r2, [r2, r1]
	ldr     r1, [pc, #0x4c] @ 0x223bcd4, (=#0x22536b4)
	ldrb    r1, [r1, r2]
	mov     r2, #0x20
	lsl     r1, r1, #5
	add     r1, r4, r1
	blx     MIi_CpuCopy16
	ldr     r0, [sp, #0x10]
	add     r1, r4, r6
	mov     r2, #0x20
	blx     MIi_CpuCopy16
	ldr     r2, [r5, #0x0]
	ldr     r1, [pc, #0x34] @ 0x223bcd8, (=#0x123)
	mov     r0, r7
	ldrb    r2, [r2, r1]
	ldr     r1, [pc, #0x2c] @ 0x223bcd4, (=#0x22536b4)
	ldrb    r1, [r1, r2]
	lsl     r2, r1, #5
	ldr     r1, [sp, #0x14]
	add     r1, r1, r2
	mov     r2, #0x20
	blx     MIi_CpuCopy16
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	add     r1, r1, r6
	mov     r2, #0x20
	blx     MIi_CpuCopy16
	mov     r0, r7
	bl      Function_20181c4
	ldr     r0, [sp, #0x10]
	bl      Function_20181c4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223bcd2


.align 2


.word 0x22536b4 @ 0x223bcd4
.word 0x123 @ 0x223bcd8

.incbin "./baserom/overlay/overlay_0017.bin", 0xb9c, 0x223bce0 - 0x223bcdc


.thumb
Function_223bce0: @ 223bce0 :thumb
	bx      lr
@ 0x223bce2


.incbin "./baserom/overlay/overlay_0017.bin", 0xba2, 0x223d60c - 0x223bce2


.thumb
Function_223d60c: @ 223d60c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_223d638
	ldr     r0, [r5, #0x50]
	bl      Function_200384c
	cmp     r0, #0x0
	bne     branch_223d63c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x16
	bl      Function_223f334
	ldr     r0, [r5, #0x0]
	bl      Function_223f374
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223d63c
@ 0x223d638

.thumb
branch_223d638: @ 223d638 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223d63c

.thumb
branch_223d63c: @ 223d63c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223d640

.thumb
Function_223d640: @ 223d640 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	ldrh    r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_223d68c
	ldr     r0, [r4, #0x0]
	bl      Function_209590c
	cmp     r0, #0x1
	bne     branch_223d65a
	mov     r1, #0x2
	b       branch_223d65c
@ 0x223d65a

.thumb
branch_223d65a: @ 223d65a :thumb
	mov     r1, #0x1
.thumb
branch_223d65c: @ 223d65c :thumb
	mov     r0, r4
	add     r0, #0xe9
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xea
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xeb
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x223d6b0, (=#0x4fc)
	mov     r1, r4
	add     r0, r4, r0
	add     r4, #0xe2
	mov     r2, #0xd
	mov     r3, r4
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223d6aa
	ldrh    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x0]
	b       branch_223d6aa
@ 0x223d68c

.thumb
branch_223d68c: @ 223d68c :thumb
	ldr     r0, [pc, #0x20] @ 0x223d6b0, (=#0x4fc)
	ldr     r3, [r4, #0x0]
	add     r0, r4, r0
	ldr     r4, [pc, #0x20] @ 0x223d6b4, (=#0x127)
	.hword  0x1f22 @ sub r2, r4, #0x4
	ldrb    r1, [r3, r4]
	sub     r4, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r4]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223d6aa
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223d6aa

.thumb
branch_223d6aa: @ 223d6aa :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223d6ae


.align 2


.word 0x4fc @ 0x223d6b0
.word 0x127 @ 0x223d6b4
.thumb
Function_223d6b8: @ 223d6b8 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r3, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_223d6f0
	mov     r0, r3
	add     r0, #0xd8
	ldrb    r0, [r0, #0x0]
	mov     r2, #0x0
	add     r0, r3, r0
	add     r0, #0xd4
	ldrb    r1, [r0, #0x0]
	mov     r0, r3
	add     r0, #0xe2
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x38] @ 0x223d714, (=#0x4fc)
	mov     r1, r3
	add     r0, r3, r0
	add     r3, #0xe2
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223d70e
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223d70e
@ 0x223d6f0

.thumb
branch_223d6f0: @ 223d6f0 :thumb
	ldr     r0, [pc, #0x20] @ 0x223d714, (=#0x4fc)
	ldr     r4, [r3, #0x0]
	add     r0, r3, r0
	ldr     r3, [pc, #0x20] @ 0x223d718, (=#0x127)
	.hword  0x1f1a @ sub r2, r3, #0x4
	ldrb    r1, [r4, r3]
	sub     r3, #0xb
	ldrb    r2, [r4, r2]
	ldrb    r3, [r4, r3]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223d70e
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223d70e

.thumb
branch_223d70e: @ 223d70e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223d712


.align 2


.word 0x4fc @ 0x223d714
.word 0x127 @ 0x223d718
.thumb
Function_223d71c: @ 223d71c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r3, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_223d762
	mov     r1, r3
	mov     r0, #0x0
	add     r1, #0xec
	strb    r0, [r1, #0x0]
	mov     r2, r0
	mov     r1, r3
	sub     r2, #0x10
	add     r1, #0xed
	strb    r2, [r1, #0x0]
	mov     r1, r3
	mov     r2, #0x10
	add     r1, #0xee
	strb    r2, [r1, #0x0]
	mov     r1, r3
	add     r1, #0xf0
	strh    r0, [r1, #0x0]
	ldr     r0, [pc, #0x38] @ 0x223d784, (=#0x4fc)
	mov     r1, r3
	add     r0, r3, r0
	mov     r2, #0xe
	add     r3, #0xe2
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223d780
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223d780
@ 0x223d762

.thumb
branch_223d762: @ 223d762 :thumb
	ldr     r0, [pc, #0x20] @ 0x223d784, (=#0x4fc)
	ldr     r4, [r3, #0x0]
	add     r0, r3, r0
	ldr     r3, [pc, #0x1c] @ 0x223d788, (=#0x127)
	.hword  0x1f1a @ sub r2, r3, #0x4
	ldrb    r1, [r4, r3]
	sub     r3, #0xb
	ldrb    r2, [r4, r2]
	ldrb    r3, [r4, r3]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223d780
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223d780

.thumb
branch_223d780: @ 223d780 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223d784

.word 0x4fc @ 0x223d784
.word 0x127 @ 0x223d788
.thumb
Function_223d78c: @ 223d78c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r2, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	ldr     r0, [pc, #0x3c] @ 0x223d7d4, (=#0x4fc)
	bne     branch_223d7b2
	add     r0, r2, r0
	mov     r1, r2
	mov     r2, #0xf
	mov     r3, #0x0
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223d7ce
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223d7ce
@ 0x223d7b2

.thumb
branch_223d7b2: @ 223d7b2 :thumb
	ldr     r3, [r2, #0x0]
	ldr     r4, [pc, #0x20] @ 0x223d7d8, (=#0x127)
	add     r0, r2, r0
	.hword  0x1f22 @ sub r2, r4, #0x4
	ldrb    r1, [r3, r4]
	sub     r4, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r4]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223d7ce
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223d7ce

.thumb
branch_223d7ce: @ 223d7ce :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223d7d2


.align 2


.word 0x4fc @ 0x223d7d4
.word 0x127 @ 0x223d7d8
.thumb
Function_223d7dc: @ 223d7dc :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r3, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	ldr     r0, [pc, #0x3c] @ 0x223d824, (=#0x4fc)
	bne     branch_223d802
	add     r0, r3, r0
	mov     r1, r3
	mov     r2, #0x2
	add     r3, #0xe2
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223d81e
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223d81e
@ 0x223d802

.thumb
branch_223d802: @ 223d802 :thumb
	ldr     r4, [r3, #0x0]
	add     r0, r3, r0
	ldr     r3, [pc, #0x20] @ 0x223d828, (=#0x127)
	.hword  0x1f1a @ sub r2, r3, #0x4
	ldrb    r1, [r4, r3]
	sub     r3, #0xb
	ldrb    r2, [r4, r2]
	ldrb    r3, [r4, r3]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223d81e
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223d81e

.thumb
branch_223d81e: @ 223d81e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223d822


.align 2


.word 0x4fc @ 0x223d824
.word 0x127 @ 0x223d828
.thumb
Function_223d82c: @ 223d82c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r3, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223d83e
	cmp     r0, #0x1
	beq     branch_223d898
	b       branch_223d8b2
@ 0x223d83e

.thumb
branch_223d83e: @ 223d83e :thumb
	mov     r0, r3
	add     r0, #0xd8
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_223d852
	cmp     r0, #0x1
	beq     branch_223d85c
	cmp     r0, #0x2
	beq     branch_223d866
	b       branch_223d870
@ 0x223d852

.thumb
branch_223d852: @ 223d852 :thumb
	mov     r0, r3
	mov     r1, #0x3
	add     r0, #0xe9
	strb    r1, [r0, #0x0]
	b       branch_223d878
@ 0x223d85c

.thumb
branch_223d85c: @ 223d85c :thumb
	mov     r0, r3
	mov     r1, #0x4
	add     r0, #0xe9
	strb    r1, [r0, #0x0]
	b       branch_223d878
@ 0x223d866

.thumb
branch_223d866: @ 223d866 :thumb
	mov     r0, r3
	mov     r1, #0x5
	add     r0, #0xe9
	strb    r1, [r0, #0x0]
	b       branch_223d878
@ 0x223d870

.thumb
branch_223d870: @ 223d870 :thumb
	mov     r0, r3
	mov     r1, #0x6
	add     r0, #0xe9
	strb    r1, [r0, #0x0]
.thumb
branch_223d878: @ 223d878 :thumb
	mov     r0, r3
	mov     r1, #0x0
	add     r0, #0xea
	strb    r1, [r0, #0x0]
	mov     r0, r3
	add     r0, #0xeb
	strb    r1, [r0, #0x0]
	mov     r0, r3
	add     r0, #0xe2
	ldrb    r1, [r0, #0x0]
	mov     r0, r3
	add     r0, #0xe5
	strb    r1, [r0, #0x0]
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
.thumb
branch_223d898: @ 223d898 :thumb
	ldr     r0, [pc, #0x38] @ 0x223d8d4, (=#0x4fc)
	mov     r1, r3
	add     r0, r3, r0
	mov     r2, #0xd
	add     r3, #0xe2
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223d8d0
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223d8d0
@ 0x223d8b2

.thumb
branch_223d8b2: @ 223d8b2 :thumb
	ldr     r0, [pc, #0x20] @ 0x223d8d4, (=#0x4fc)
	ldr     r4, [r3, #0x0]
	add     r0, r3, r0
	ldr     r3, [pc, #0x1c] @ 0x223d8d8, (=#0x127)
	.hword  0x1f1a @ sub r2, r3, #0x4
	ldrb    r1, [r4, r3]
	sub     r3, #0xb
	ldrb    r2, [r4, r2]
	ldrb    r3, [r4, r3]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223d8d0
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223d8d0

.thumb
branch_223d8d0: @ 223d8d0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223d8d4

.word 0x4fc @ 0x223d8d4
.word 0x127 @ 0x223d8d8
.thumb
Function_223d8dc: @ 223d8dc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223d8f2
	cmp     r0, #0x1
	beq     branch_223d91c
	cmp     r0, #0x2
	beq     branch_223d938
	b       branch_223d95a
@ 0x223d8f2

.thumb
branch_223d8f2: @ 223d8f2 :thumb
	mov     r1, r5
	add     r1, #0xe2
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r5, #0x0]
	bl      Function_2095928
	mov     r1, r5
	add     r1, #0xe3
	strb    r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xe2
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r5, #0x0]
	bl      Function_209598c
	mov     r1, r5
	add     r1, #0xe4
	strb    r0, [r1, #0x0]
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
.thumb
branch_223d91c: @ 223d91c :thumb
	ldr     r0, [pc, #0x44] @ 0x223d964, (=#0x4fc)
	mov     r1, r5
	add     r0, r5, r0
	add     r5, #0xe2
	mov     r2, #0x6
	mov     r3, r5
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223d95e
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223d95e
@ 0x223d938

.thumb
branch_223d938: @ 223d938 :thumb
	ldr     r0, [pc, #0x28] @ 0x223d964, (=#0x4fc)
	ldr     r3, [r5, #0x0]
	add     r0, r5, r0
	ldr     r5, [pc, #0x28] @ 0x223d968, (=#0x127)
	.hword  0x1f2a @ sub r2, r5, #0x4
	ldrb    r1, [r3, r5]
	sub     r5, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r5]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223d95e
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223d95e
@ 0x223d95a

.thumb
branch_223d95a: @ 223d95a :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223d95e

.thumb
branch_223d95e: @ 223d95e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223d962


.align 2


.word 0x4fc @ 0x223d964
.word 0x127 @ 0x223d968
.thumb
Function_223d96c: @ 223d96c :thumb
	ldrh    r2, [r1, #0x0]
	cmp     r2, #0x0
	bne     branch_223d986
	mov     r2, r0
	add     r2, #0xd8
	ldrb    r2, [r2, #0x0]
	add     r0, #0xd8
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r2, [r0, #0x0]
	ldrh    r0, [r1, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r1, #0x0]
	b       branch_223d998
@ 0x223d986

.thumb
branch_223d986: @ 223d986 :thumb
	add     r0, #0xd8
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x4
	bcc     branch_223d992
	mov     r0, #0x1
	bx      lr
@ 0x223d992

.thumb
branch_223d992: @ 223d992 :thumb
	mov     r0, #0x2
	strh    r0, [r1, #0x2]
	bx      lr
@ 0x223d998

.thumb
branch_223d998: @ 223d998 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223d99c

.thumb
Function_223d99c: @ 223d99c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r3, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x3
	bhi     branch_223da44
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r0, r5, #0
	lsl     r2, r1, #1
	lsl     r4, r6, #1
	mov     r0, r3
	ldr     r1, [pc, #0xa8] @ 0x223da68, (=#0x6e5)
	add     r0, #0xf2
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x223da6c, (=#0x4fc)
	mov     r1, r3
	add     r0, r3, r0
	mov     r2, #0x10
	add     r3, #0xe2
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223da62
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223da62
@ 0x223d9de


.incbin "./baserom/overlay/overlay_0017.bin", 0x289e, 0x223da44 - 0x223d9de


.thumb
branch_223da44: @ 223da44 :thumb
	ldr     r0, [pc, #0x24] @ 0x223da6c, (=#0x4fc)
	ldr     r4, [r3, #0x0]
	add     r0, r3, r0
	ldr     r3, [pc, #0x24] @ 0x223da70, (=#0x127)
	.hword  0x1f1a @ sub r2, r3, #0x4
	ldrb    r1, [r4, r3]
	sub     r3, #0xb
	ldrb    r2, [r4, r2]
	ldrb    r3, [r4, r3]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223da62
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223da62

.thumb
branch_223da62: @ 223da62 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223da66


.align 2


.word 0x6e5 @ 0x223da68
.word 0x4fc @ 0x223da6c
.word 0x127 @ 0x223da70

.incbin "./baserom/overlay/overlay_0017.bin", 0x2934, 0x223da78 - 0x223da74


.thumb
Function_223da78: @ 223da78 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r2, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	ldr     r0, [pc, #0x44] @ 0x223dac8, (=#0x4fc)
	bne     branch_223da9e
	add     r0, r2, r0
	mov     r1, r2
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223dac4
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223dac4
@ 0x223da9e

.thumb
branch_223da9e: @ 223da9e :thumb
	ldr     r4, [pc, #0x2c] @ 0x223dacc, (=#0x127)
	ldr     r3, [r2, #0x0]
	mov     r1, r4
	add     r1, #0x50
	add     r0, r2, r0
	ldrb    r2, [r3, r4]
	ldrb    r1, [r3, r1]
	sub     r1, r2, r1
	.hword  0x1f22 @ sub r2, r4, #0x4
	sub     r4, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r4]
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223dac4
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223dac4

.thumb
branch_223dac4: @ 223dac4 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223dac8

.word 0x4fc @ 0x223dac8
.word 0x127 @ 0x223dacc

.incbin "./baserom/overlay/overlay_0017.bin", 0x2990, 0x223e3cc - 0x223dad0


.thumb
Function_223e3cc: @ 223e3cc :thumb
	push    {r4-r7}
	ldr     r5, [r0, #0x0]
	ldr     r3, [pc, #0x6c] @ 0x223e440, (=#0x171)
	ldrb    r4, [r5, r3]
	cmp     r4, #0x1
	bne     branch_223e3e8
	.hword  0x1d9b @ add r3, r3, #0x6
	ldrb    r3, [r5, r3]
	cmp     r3, #0x0
	beq     branch_223e3e8
	ldr     r3, [pc, #0x60] @ 0x223e444, (=#0x1c0e)
	mov     r4, #0x1
	strb    r4, [r0, r3]
	b       branch_223e3ee
@ 0x223e3e8

.thumb
branch_223e3e8: @ 223e3e8 :thumb
	ldr     r3, [pc, #0x58] @ 0x223e444, (=#0x1c0e)
	mov     r4, #0x0
	strb    r4, [r0, r3]
.thumb
branch_223e3ee: @ 223e3ee :thumb
	ldr     r3, [pc, #0x54] @ 0x223e444, (=#0x1c0e)
	ldrb    r3, [r0, r3]
	cmp     r3, #0x1
	bne     branch_223e402
	mov     r0, #0x1
	str     r0, [r1, #0x0]
	mov     r1, #0x0
	str     r1, [r2, #0x0]
	pop     {r4-r7}
	bx      lr
@ 0x223e402

.thumb
branch_223e402: @ 223e402 :thumb
	mov     r3, #0x12
	ldr     r6, [r0, #0x0]
	lsl     r3, r3, #4
	ldrb    r4, [r6, r3]
	mov     r3, #0x28
	mov     r7, r3
	mov     r5, r4
	add     r7, #0xf7
	ldrb    r6, [r6, r7]
	ldr     r4, [pc, #0x30] @ 0x223e448, (=#0x225312c)
	mul     r5, r3
	lsl     r6, r6, #3
	add     r4, r4, r5
	ldr     r4, [r6, r4]
	str     r4, [r1, #0x0]
	ldr     r1, [r0, #0x0]
	mov     r0, r3
	add     r0, #0xf8
	ldrb    r0, [r1, r0]
	ldr     r4, [pc, #0x20] @ 0x223e44c, (=#0x2253130)
	mov     r5, r0
	mul     r5, r3
	add     r3, #0xf7
	ldrb    r0, [r1, r3]
	lsl     r1, r0, #3
	add     r0, r4, r5
	ldr     r0, [r1, r0]
	str     r0, [r2, #0x0]
	mov     r0, #0x0
	pop     {r4-r7}
	bx      lr
@ 0x223e440

.word 0x171 @ 0x223e440
.word 0x1c0e @ 0x223e444
.word 0x225312c @ 0x223e448
.word 0x2253130 @ 0x223e44c

.incbin "./baserom/overlay/overlay_0017.bin", 0x3310, 0x223e838 - 0x223e450


.thumb
Function_223e838: @ 223e838 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_223e87a
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x54] @ 0x223e89c, (=#0x177)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_223e85a
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x78
	bge     branch_223e85a
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_223e898
@ 0x223e85a

.thumb
branch_223e85a: @ 223e85a :thumb
	ldr     r0, [pc, #0x44] @ 0x223e8a0, (=#0x1174)
	ldr     r3, [pc, #0x44] @ 0x223e8a4, (=#0xaec)
	add     r0, r5, r0
	mov     r1, r5
	mov     r2, #0xa
	add     r3, r5, r3
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223e898
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223e898
@ 0x223e87a

.thumb
branch_223e87a: @ 223e87a :thumb
	ldr     r4, [pc, #0x2c] @ 0x223e8a8, (=#0x127)
	ldr     r3, [r5, #0x0]
	.hword  0x1f22 @ sub r2, r4, #0x4
	ldrb    r1, [r3, r4]
	ldr     r0, [pc, #0x1c] @ 0x223e8a0, (=#0x1174)
	sub     r4, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r4]
	add     r0, r5, r0
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223e898
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223e898

.thumb
branch_223e898: @ 223e898 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223e89c

.word 0x177 @ 0x223e89c
.word 0x1174 @ 0x223e8a0
.word 0xaec @ 0x223e8a4
.word 0x127 @ 0x223e8a8
.thumb
Function_223e8ac: @ 223e8ac :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223e8be
	cmp     r0, #0x1
	beq     branch_223e912
	b       branch_223e934
@ 0x223e8be

.thumb
branch_223e8be: @ 223e8be :thumb
	ldr     r0, [pc, #0x7c] @ 0x223e93c, (=#0xb53)
	mov     r2, #0x0
	strb    r2, [r5, r0]
	add     r1, r0, #0x1
	strb    r2, [r5, r1]
	ldr     r2, [r5, #0x0]
	ldr     r1, [pc, #0x74] @ 0x223e940, (=#0x123)
	.hword  0x1fc0 @ sub r0, r0, #0x7
	ldrb    r2, [r2, r1]
	strb    r2, [r5, r0]
	ldr     r2, [r5, #0x0]
	.hword  0x1ec8 @ sub r0, r1, #0x3
	ldrb    r0, [r2, r0]
	bl      Function_224c57c
	mov     r1, #0xb5
	lsl     r1, r1, #4
	strb    r0, [r5, r1]
	ldr     r0, [r5, #0x0]
	bl      Function_209590c
	cmp     r0, #0x1
	bne     branch_223e8f0
	mov     r1, #0x2
	b       branch_223e8f2
@ 0x223e8f0

.thumb
branch_223e8f0: @ 223e8f0 :thumb
	mov     r1, #0x1
.thumb
branch_223e8f2: @ 223e8f2 :thumb
	ldr     r0, [pc, #0x50] @ 0x223e944, (=#0xb52)
	ldr     r3, [pc, #0x50] @ 0x223e948, (=#0xb1c)
	strb    r1, [r5, r0]
	ldr     r0, [pc, #0x50] @ 0x223e94c, (=#0x1174)
	mov     r1, r5
	add     r0, r5, r0
	mov     r2, #0x9
	add     r3, r5, r3
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223e938
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223e938
@ 0x223e912

.thumb
branch_223e912: @ 223e912 :thumb
	ldr     r0, [pc, #0x38] @ 0x223e94c, (=#0x1174)
	ldr     r3, [r5, #0x0]
	add     r0, r5, r0
	ldr     r5, [pc, #0x34] @ 0x223e950, (=#0x127)
	.hword  0x1f2a @ sub r2, r5, #0x4
	ldrb    r1, [r3, r5]
	sub     r5, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r5]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223e938
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223e938
@ 0x223e934

.thumb
branch_223e934: @ 223e934 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223e938

.thumb
branch_223e938: @ 223e938 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223e93c

.word 0xb53 @ 0x223e93c
.word 0x123 @ 0x223e940
.word 0xb52 @ 0x223e944
.word 0xb1c @ 0x223e948
.word 0x1174 @ 0x223e94c
.word 0x127 @ 0x223e950
.thumb
Function_223e954: @ 223e954 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r2, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	ldr     r0, [pc, #0x3c] @ 0x223e99c, (=#0x1174)
	bne     branch_223e97a
	add     r0, r2, r0
	mov     r1, r2
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223e996
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223e996
@ 0x223e97a

.thumb
branch_223e97a: @ 223e97a :thumb
	ldr     r3, [r2, #0x0]
	ldr     r4, [pc, #0x20] @ 0x223e9a0, (=#0x127)
	add     r0, r2, r0
	.hword  0x1f22 @ sub r2, r4, #0x4
	ldrb    r1, [r3, r4]
	sub     r4, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r4]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223e996
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223e996

.thumb
branch_223e996: @ 223e996 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223e99a


.align 2


.word 0x1174 @ 0x223e99c
.word 0x127 @ 0x223e9a0
.thumb
Function_223e9a4: @ 223e9a4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r1
	ldrh    r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x4
	bls     branch_223e9b4
	b       branch_223eb66
@ 0x223e9b4

.thumb
branch_223e9b4: @ 223e9b4 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r1, #0
	lsl     r0, r5, #4
	lsl     r4, r0, #5
	lsl     r6, r4, #5
	lsl     r2, r0, #6
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_223e3cc
	ldr     r0, [sp, #0x4]
	ldr     r3, [pc, #0x19c] @ 0x223eb74, (=#0x2253084)
	mov     r2, r0
	mov     r1, #0xc
	mul     r2, r1
	ldr     r0, [pc, #0x198] @ 0x223eb78, (=#0xacc)
	add     r2, r3, r2
	str     r2, [r4, r0]
	ldr     r2, [sp, #0x4]
	ldr     r0, [pc, #0x194] @ 0x223eb7c, (=#0x112a880)
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0x194] @ 0x223eb80, (=#0x2253086)
	ldrh    r1, [r1, r3]
	blx     Division
	ldr     r1, [pc, #0x190] @ 0x223eb84, (=#0xb04)
	str     r0, [r4, r1]
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	bl      Function_223f0bc
	ldr     r1, [pc, #0x184] @ 0x223eb84, (=#0xb04)
	mov     r3, #0x0
	ldr     r1, [r4, r1]
	ldr     r2, [pc, #0x180] @ 0x223eb88, (=#0x1388)
	mul     r0, r1
	mov     r12, r3
	mov     r1, r12
	add     r0, r0, r2
	adc     r1, r3
	lsl     r2, r2, #1
	blx     Function_20e1ed4
	ldr     r1, [pc, #0x174] @ 0x223eb8c, (=#0xb08)
	str     r0, [r4, r1]
	ldr     r2, [sp, #0x4]
	mov     r0, #0xc
	mov     r3, r2
	ldr     r2, [pc, #0x15c] @ 0x223eb80, (=#0x2253086)
	mul     r3, r0
	ldrh    r3, [r2, r3]
	mov     r2, r1
	add     r2, #0x10
	strh    r3, [r4, r2]
	.hword  0x1f0a @ sub r2, r1, #0x4
	ldr     r6, [sp, #0x4]
	ldr     r3, [r4, r2]
	mov     r2, r6
	ldr     r6, [pc, #0x158] @ 0x223eb90, (=#0x225308a)
	mul     r2, r0
	ldrb    r2, [r6, r2]
	mov     r6, r3
	mul     r6, r2
	add     r2, r1, #0x4
	str     r6, [r4, r2]
	ldr     r3, [sp, #0x4]
	.hword  0x1f0a @ sub r2, r1, #0x4
	mov     r6, r3
	mul     r6, r0
	ldr     r0, [pc, #0x148] @ 0x223eb94, (=#0x225308b)
	ldr     r2, [r4, r2]
	ldrb    r0, [r0, r6]
	mov     r3, r2
	mul     r3, r0
	mov     r0, r1
	add     r0, #0x8
	str     r3, [r4, r0]
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r4, r0]
	mov     r1, #0x30
	blx     Function_20e2178
	ldr     r1, [pc, #0x130] @ 0x223eb98, (=#0xb14)
	mov     r2, #0xc
	str     r0, [r4, r1]
	ldr     r0, [sp, #0x4]
	mov     r3, r0
	ldr     r0, [pc, #0x12c] @ 0x223eb9c, (=#0x2253089)
	mul     r3, r2
	ldrb    r3, [r0, r3]
	add     r0, r1, #0x6
	strb    r3, [r4, r0]
	ldr     r0, [sp, #0x4]
	mul     r2, r0
	ldr     r0, [pc, #0xf4] @ 0x223eb74, (=#0x2253084)
	ldrh    r2, [r0, r2]
	mov     r0, r1
	sub     r0, #0x14
	str     r2, [r4, r0]
	ldr     r2, [sp, #0x0]
	add     r0, r1, #0x7
	strb    r2, [r4, r0]
	mov     r0, r1
	sub     r0, #0x48
	ldr     r0, [r4, r0]
	mov     r2, r1
	ldrh    r3, [r0, #0x0]
	add     r2, #0x2c
	strh    r3, [r4, r2]
	mov     r2, r1
	ldrh    r3, [r0, #0x2]
	add     r2, #0x2e
	strh    r3, [r4, r2]
	mov     r2, r1
	ldrh    r3, [r0, #0x4]
	add     r2, #0x30
	strh    r3, [r4, r2]
	mov     r2, r1
	ldrh    r3, [r0, #0x6]
	add     r2, #0x32
	strh    r3, [r4, r2]
	mov     r2, r1
	ldrh    r3, [r0, #0x8]
	add     r2, #0x34
	strh    r3, [r4, r2]
	ldrh    r2, [r0, #0xa]
	mov     r0, r1
	add     r0, #0x36
	strh    r2, [r4, r0]
	mov     r0, r1
	sub     r0, #0x10
	ldr     r2, [r4, r0]
	mov     r0, r1
	add     r0, #0x10
	str     r2, [r4, r0]
	mov     r0, r1
	sub     r0, #0xc
	ldr     r2, [r4, r0]
	mov     r0, r1
	add     r0, #0x14
	str     r2, [r4, r0]
	add     r0, r1, #0x4
	ldrh    r0, [r4, r0]
	add     r1, #0x18
	strh    r0, [r4, r1]
	ldrh    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x0]
	b       branch_223eb6c
@ 0x223eaea


.incbin "./baserom/overlay/overlay_0017.bin", 0x39aa, 0x223eb66 - 0x223eaea


.thumb
branch_223eb66: @ 223eb66 :thumb
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x223eb6c

.thumb
branch_223eb6c: @ 223eb6c :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x223eb72


.align 2


.word 0x2253084 @ 0x223eb74
.word 0xacc @ 0x223eb78
.word 0x112a880 @ 0x223eb7c
.word 0x2253086 @ 0x223eb80
.word 0xb04 @ 0x223eb84
.word 0x1388 @ 0x223eb88
.word 0xb08 @ 0x223eb8c
.word 0x225308a @ 0x223eb90
.word 0x225308b @ 0x223eb94
.word 0xb14 @ 0x223eb98
.word 0x2253089 @ 0x223eb9c

.incbin "./baserom/overlay/overlay_0017.bin", 0x3a60, 0x223ebb0 - 0x223eba0


.thumb
Function_223ebb0: @ 223ebb0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrh    r0, [r1, #0x0]
	str     r1, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_223ec0e
	mov     r1, #0xaf
	lsl     r1, r1, #4
	ldrb    r0, [r5, r1]
	mov     r4, #0x0
	add     r2, r5, r0
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldrb    r0, [r2, r0]
	add     r1, #0x2c
	strb    r0, [r5, r1]
	ldr     r0, [pc, #0x48] @ 0x223ec18, (=#0xaf1)
	mov     r1, r0
	add     r1, #0x2d
.thumb
branch_223ebd4: @ 223ebd4 :thumb
	add     r3, r5, r4
	ldrb    r2, [r3, r0]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	strb    r2, [r3, r1]
	blt     branch_223ebd4
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x38] @ 0x223ec1c, (=#0x127)
	ldrb    r6, [r1, r0]
	cmp     r6, #0x4
	bge     branch_223ec02
	lsl     r0, r6, #2
	mov     r7, #0xb3
	add     r4, r5, r0
	lsl     r7, r7, #4
.thumb
branch_223ebf2: @ 223ebf2 :thumb
	ldr     r0, [r5, #0x0]
	bl      Call_PRNG
	str     r0, [r4, r7]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_223ebf2
.thumb
branch_223ec02: @ 223ec02 :thumb
	ldr     r0, [sp, #0x0]
	ldrh    r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	strh    r1, [r0, #0x0]
	b       branch_223ec12
@ 0x223ec0e

.thumb
branch_223ec0e: @ 223ec0e :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223ec12

.thumb
branch_223ec12: @ 223ec12 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223ec16


.align 2


.word 0xaf1 @ 0x223ec18
.word 0x127 @ 0x223ec1c
.thumb
Function_223ec20: @ 223ec20 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	ldr     r0, [pc, #0x3c] @ 0x223ec68, (=#0x1174)
	bne     branch_223ec48
	ldr     r3, [pc, #0x3c] @ 0x223ec6c, (=#0xb1c)
	add     r0, r5, r0
	mov     r1, r5
	mov     r2, #0x7
	add     r3, r5, r3
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223ec64
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223ec64
@ 0x223ec48

.thumb
branch_223ec48: @ 223ec48 :thumb
	ldr     r4, [pc, #0x24] @ 0x223ec70, (=#0x127)
	ldr     r3, [r5, #0x0]
	.hword  0x1f22 @ sub r2, r4, #0x4
	ldrb    r1, [r3, r4]
	sub     r4, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r4]
	add     r0, r5, r0
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223ec64
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223ec64

.thumb
branch_223ec64: @ 223ec64 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223ec68

.word 0x1174 @ 0x223ec68
.word 0xb1c @ 0x223ec6c
.word 0x127 @ 0x223ec70
.thumb
Function_223ec74: @ 223ec74 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	ldr     r0, [pc, #0x3c] @ 0x223ecbc, (=#0x1174)
	bne     branch_223ec9c
	ldr     r3, [pc, #0x3c] @ 0x223ecc0, (=#0xb1c)
	add     r0, r5, r0
	mov     r1, r5
	mov     r2, #0x5
	add     r3, r5, r3
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223ecb8
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223ecb8
@ 0x223ec9c

.thumb
branch_223ec9c: @ 223ec9c :thumb
	ldr     r4, [pc, #0x24] @ 0x223ecc4, (=#0x127)
	ldr     r3, [r5, #0x0]
	.hword  0x1f22 @ sub r2, r4, #0x4
	ldrb    r1, [r3, r4]
	sub     r4, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r4]
	add     r0, r5, r0
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223ecb8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223ecb8

.thumb
branch_223ecb8: @ 223ecb8 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223ecbc

.word 0x1174 @ 0x223ecbc
.word 0xb1c @ 0x223ecc0
.word 0x127 @ 0x223ecc4
.thumb
Function_223ecc8: @ 223ecc8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	ldr     r0, [pc, #0x3c] @ 0x223ed10, (=#0x1174)
	bne     branch_223ecf0
	ldr     r3, [pc, #0x3c] @ 0x223ed14, (=#0xb1c)
	add     r0, r5, r0
	mov     r1, r5
	mov     r2, #0x8
	add     r3, r5, r3
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223ed0c
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223ed0c
@ 0x223ecf0

.thumb
branch_223ecf0: @ 223ecf0 :thumb
	ldr     r4, [pc, #0x24] @ 0x223ed18, (=#0x127)
	ldr     r3, [r5, #0x0]
	.hword  0x1f22 @ sub r2, r4, #0x4
	ldrb    r1, [r3, r4]
	sub     r4, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r4]
	add     r0, r5, r0
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223ed0c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223ed0c

.thumb
branch_223ed0c: @ 223ed0c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223ed10

.word 0x1174 @ 0x223ed10
.word 0xb1c @ 0x223ed14
.word 0x127 @ 0x223ed18
.thumb
Function_223ed1c: @ 223ed1c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_223ed72
	mov     r1, #0xaf
	lsl     r1, r1, #4
	ldrb    r0, [r5, r1]
	cmp     r0, #0x3
	bcc     branch_223ed36
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223ed36

.thumb
branch_223ed36: @ 223ed36 :thumb
	add     r0, r1, #0x2
	ldrb    r0, [r5, r0]
	add     r1, #0x5c
	strb    r0, [r5, r1]
	mov     r0, #0x12
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #4
	ldrb    r0, [r1, r0]
	bl      Function_224c57c
	mov     r3, #0xb5
	lsl     r3, r3, #4
	strb    r0, [r5, r3]
	add     r0, r3, #0x2
	mov     r1, #0x0
	strb    r1, [r5, r0]
	ldr     r0, [pc, #0x3c] @ 0x223ed94, (=#0x1174)
	sub     r3, #0x34
	add     r0, r5, r0
	mov     r1, r5
	mov     r2, #0x6
	add     r3, r5, r3
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223ed90
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223ed90
@ 0x223ed72

.thumb
branch_223ed72: @ 223ed72 :thumb
	ldr     r4, [pc, #0x24] @ 0x223ed98, (=#0x127)
	ldr     r3, [r5, #0x0]
	.hword  0x1f22 @ sub r2, r4, #0x4
	ldrb    r1, [r3, r4]
	ldr     r0, [pc, #0x18] @ 0x223ed94, (=#0x1174)
	sub     r4, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r4]
	add     r0, r5, r0
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223ed90
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223ed90

.thumb
branch_223ed90: @ 223ed90 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223ed94

.word 0x1174 @ 0x223ed94
.word 0x127 @ 0x223ed98
.thumb
Function_223ed9c: @ 223ed9c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r3, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223edb2
	cmp     r0, #0x1
	beq     branch_223eddc
	cmp     r0, #0x2
	beq     branch_223edf8
	b       branch_223ee1a
@ 0x223edb2

.thumb
branch_223edb2: @ 223edb2 :thumb
	ldr     r0, [pc, #0x8c] @ 0x223ee40, (=#0xaf1)
	ldr     r1, [pc, #0x88] @ 0x223ee40, (=#0xaf1)
	ldrb    r7, [r3, r0]
	mov     r6, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
.thumb
branch_223edbc: @ 223edbc :thumb
	add     r5, r3, r6
	ldrb    r2, [r5, r0]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, #0x3
	strb    r2, [r5, r1]
	blt     branch_223edbc
	ldr     r0, [pc, #0x78] @ 0x223ee44, (=#0xaf4)
	strb    r7, [r3, r0]
	.hword  0x1f01 @ sub r1, r0, #0x4
	ldrb    r1, [r3, r1]
	.hword  0x1f00 @ sub r0, r0, #0x4
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r3, r0]
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
.thumb
branch_223eddc: @ 223eddc :thumb
	ldr     r0, [pc, #0x68] @ 0x223ee48, (=#0x1174)
	ldr     r5, [pc, #0x6c] @ 0x223ee4c, (=#0xaec)
	add     r0, r3, r0
	mov     r1, r3
	mov     r2, #0xa
	add     r3, r3, r5
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223ee3c
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223ee3c
@ 0x223edf8

.thumb
branch_223edf8: @ 223edf8 :thumb
	ldr     r0, [pc, #0x4c] @ 0x223ee48, (=#0x1174)
	ldr     r5, [r3, #0x0]
	add     r0, r3, r0
	ldr     r3, [pc, #0x50] @ 0x223ee50, (=#0x127)
	.hword  0x1f1a @ sub r2, r3, #0x4
	ldrb    r1, [r5, r3]
	sub     r3, #0xb
	ldrb    r2, [r5, r2]
	ldrb    r3, [r5, r3]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223ee3c
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223ee3c
@ 0x223ee1a

.thumb
branch_223ee1a: @ 223ee1a :thumb
	mov     r1, #0xaf
	lsl     r1, r1, #4
	ldrb    r0, [r3, r1]
	cmp     r0, #0x4
	bcs     branch_223ee38
	mov     r0, r1
	add     r0, #0x2d
	ldrb    r0, [r3, r0]
	add     r1, #0x2d
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r3, r1]
	mov     r0, #0x4
	strh    r0, [r4, #0x2]
	mov     r0, #0x2
	pop     {r3-r7,pc}
@ 0x223ee38

.thumb
branch_223ee38: @ 223ee38 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223ee3c

.thumb
branch_223ee3c: @ 223ee3c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223ee40

.word 0xaf1 @ 0x223ee40
.word 0xaf4 @ 0x223ee44
.word 0x1174 @ 0x223ee48
.word 0xaec @ 0x223ee4c
.word 0x127 @ 0x223ee50
.thumb
Function_223ee54: @ 223ee54 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223ee66
	cmp     r0, #0x1
	beq     branch_223ee82
	b       branch_223eea4
@ 0x223ee66

.thumb
branch_223ee66: @ 223ee66 :thumb
	ldr     r0, [pc, #0x44] @ 0x223eeac, (=#0x1174)
	ldr     r3, [pc, #0x44] @ 0x223eeb0, (=#0xb1c)
	add     r0, r5, r0
	mov     r1, r5
	mov     r2, #0xc
	add     r3, r5, r3
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223eea8
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223eea8
@ 0x223ee82

.thumb
branch_223ee82: @ 223ee82 :thumb
	ldr     r0, [pc, #0x28] @ 0x223eeac, (=#0x1174)
	ldr     r3, [r5, #0x0]
	add     r0, r5, r0
	ldr     r5, [pc, #0x28] @ 0x223eeb4, (=#0x127)
	.hword  0x1f2a @ sub r2, r5, #0x4
	ldrb    r1, [r3, r5]
	sub     r5, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r5]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223eea8
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223eea8
@ 0x223eea4

.thumb
branch_223eea4: @ 223eea4 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223eea8

.thumb
branch_223eea8: @ 223eea8 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223eeac

.word 0x1174 @ 0x223eeac
.word 0xb1c @ 0x223eeb0
.word 0x127 @ 0x223eeb4
.thumb
Function_223eeb8: @ 223eeb8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	str     r0, [sp, #0x0]
	ldrh    r0, [r1, #0x0]
	str     r1, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_223eed2
	cmp     r0, #0x1
	beq     branch_223efc8
	cmp     r0, #0x2
	bne     branch_223eed0
	b       branch_223efec
@ 0x223eed0

.thumb
branch_223eed0: @ 223eed0 :thumb
	b       branch_223f014
@ 0x223eed2

.thumb
branch_223eed2: @ 223eed2 :thumb
	mov     r1, #0x0
	mov     r6, #0x4b
	ldr     r2, [sp, #0x0]
	ldr     r5, [pc, #0x144] @ 0x223f020, (=#0xaf6)
	mov     r3, r1
	lsl     r6, r6, #2
.thumb
branch_223eede: @ 223eede :thumb
	ldr     r4, [sp, #0x0]
	ldsh    r0, [r2, r5]
	ldr     r4, [r4, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r4, r4, r3
	strh    r0, [r4, r6]
	.hword  0x1c92 @ add r2, r2, #0x2
	add     r3, #0xc
	cmp     r1, #0x4
	blt     branch_223eede
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	add     r2, sp, #0x1c
	bl      Function_2251930
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	add     r2, sp, #0x14
	bl      Function_2251930
	mov     r6, #0x0
	add     r2, sp, #0x14
	add     r3, sp, #0x1c
	add     r4, sp, #0xc
	add     r5, sp, #0x8
	mov     r7, r6
.thumb
branch_223ef16: @ 223ef16 :thumb
	mov     r0, #0x0
	ldsh    r1, [r3, r0]
	ldsh    r0, [r2, r7]
	strb    r6, [r5, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r0, r1, r0
	strh    r0, [r4, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1c9b @ add r3, r3, #0x2
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r6, #0x4
	blt     branch_223ef16
	mov     r6, #0x0
	.hword  0x1eb7 @ sub r7, r6, #0x2
.thumb
branch_223ef34: @ 223ef34 :thumb
	mov     r3, #0x3
	cmp     r6, #0x3
	bge     branch_223ef66
	add     r4, sp, #0x10
	add     r5, sp, #0x8
	add     r4, #0x2
	add     r5, #0x3
.thumb
branch_223ef42: @ 223ef42 :thumb
	mov     r0, #0x0
	ldsh    r0, [r4, r0]
	ldsh    r1, [r4, r7]
	cmp     r1, r0
	bge     branch_223ef5c
	strh    r1, [r4, #0x0]
	.hword  0x1ea1 @ sub r1, r4, #0x2
	strh    r0, [r1, #0x0]
	.hword  0x1e68 @ sub r0, r5, #0x1
	ldrb    r2, [r5, #0x0]
	ldrb    r1, [r0, #0x0]
	strb    r1, [r5, #0x0]
	strb    r2, [r0, #0x0]
.thumb
branch_223ef5c: @ 223ef5c :thumb
	.hword  0x1e5b @ sub r3, r3, #0x1
	.hword  0x1ea4 @ sub r4, r4, #0x2
	.hword  0x1e6d @ sub r5, r5, #0x1
	cmp     r3, r6
	bgt     branch_223ef42
.thumb
branch_223ef66: @ 223ef66 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, #0x3
	blt     branch_223ef34
	ldr     r1, [pc, #0xb4] @ 0x223f024, (=#0x172)
	mov     r4, #0x0
	add     r3, sp, #0x8
.thumb
branch_223ef72: @ 223ef72 :thumb
	ldr     r0, [sp, #0x0]
	ldrb    r2, [r3, #0x0]
	ldr     r0, [r0, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r0, r0, r4
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r2, [r0, r1]
	cmp     r4, #0x4
	blt     branch_223ef72
	ldr     r2, [pc, #0xa0] @ 0x223f028, (=#0xb53)
	ldr     r1, [sp, #0x0]
	mov     r0, #0x0
	strb    r0, [r1, r2]
	add     r3, r2, #0x1
	strb    r0, [r1, r3]
	ldr     r1, [r1, #0x0]
	ldr     r4, [pc, #0x90] @ 0x223f024, (=#0x172)
	.hword  0x1fd3 @ sub r3, r2, #0x7
	ldrb    r5, [r1, r4]
	ldr     r1, [sp, #0x0]
	sub     r4, #0x51
	strb    r5, [r1, r3]
	ldr     r1, [r1, #0x0]
	ldrb    r1, [r1, r4]
	cmp     r1, #0x0
	beq     branch_223efae
	cmp     r1, #0x1
	beq     branch_223efae
	cmp     r1, #0x2
	bne     branch_223efb8
.thumb
branch_223efae: @ 223efae :thumb
	ldr     r1, [pc, #0x7c] @ 0x223f02c, (=#0xb52)
	ldr     r0, [sp, #0x0]
	mov     r2, #0x6
	strb    r2, [r0, r1]
	b       branch_223efbe
@ 0x223efb8

.thumb
branch_223efb8: @ 223efb8 :thumb
	ldr     r1, [sp, #0x0]
	.hword  0x1e52 @ sub r2, r2, #0x1
	strb    r0, [r1, r2]
.thumb
branch_223efbe: @ 223efbe :thumb
	ldr     r0, [sp, #0x4]
	ldrh    r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	strh    r1, [r0, #0x0]
.thumb
branch_223efc8: @ 223efc8 :thumb
	ldr     r1, [pc, #0x64] @ 0x223f030, (=#0x1174)
	ldr     r0, [sp, #0x0]
	ldr     r4, [pc, #0x64] @ 0x223f034, (=#0xb1c)
	add     r0, r0, r1
	ldr     r1, [sp, #0x0]
	mov     r2, #0x9
	mov     r3, r1
	add     r3, r3, r4
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223f01a
	ldr     r0, [sp, #0x4]
	ldrh    r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	strh    r1, [r0, #0x0]
	b       branch_223f01a
@ 0x223efec

.thumb
branch_223efec: @ 223efec :thumb
	ldr     r0, [sp, #0x0]
	ldr     r4, [pc, #0x48] @ 0x223f038, (=#0x127)
	ldr     r3, [r0, #0x0]
	ldr     r1, [pc, #0x3c] @ 0x223f030, (=#0x1174)
	.hword  0x1f22 @ sub r2, r4, #0x4
	add     r0, r0, r1
	ldrb    r1, [r3, r4]
	sub     r4, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r4]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223f01a
	ldr     r0, [sp, #0x4]
	ldrh    r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	strh    r1, [r0, #0x0]
	b       branch_223f01a
@ 0x223f014

.thumb
branch_223f014: @ 223f014 :thumb
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x223f01a

.thumb
branch_223f01a: @ 223f01a :thumb
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x223f020

.word 0xaf6 @ 0x223f020
.word 0x172 @ 0x223f024
.word 0xb53 @ 0x223f028
.word 0xb52 @ 0x223f02c
.word 0x1174 @ 0x223f030
.word 0xb1c @ 0x223f034
.word 0x127 @ 0x223f038
.thumb
Function_223f03c: @ 223f03c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r2, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223f04e
	cmp     r0, #0x1
	beq     branch_223f052
	b       branch_223f082
@ 0x223f04e

.thumb
branch_223f04e: @ 223f04e :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
.thumb
branch_223f052: @ 223f052 :thumb
	ldr     r3, [pc, #0x5c] @ 0x223f0b0, (=#0x172)
	mov     r0, #0x0
	add     r1, sp, #0x0
.thumb
branch_223f058: @ 223f058 :thumb
	ldr     r5, [r2, #0x0]
	add     r5, r5, r0
	ldrb    r5, [r5, r3]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r5, [r1, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, #0x4
	blt     branch_223f058
	ldr     r0, [pc, #0x48] @ 0x223f0b4, (=#0x1174)
	mov     r1, r2
	add     r0, r2, r0
	mov     r2, #0x4
	add     r3, sp, #0x0
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_223f0aa
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_223f0aa
@ 0x223f082

.thumb
branch_223f082: @ 223f082 :thumb
	ldr     r4, [pc, #0x34] @ 0x223f0b8, (=#0x127)
	ldr     r0, [pc, #0x2c] @ 0x223f0b4, (=#0x1174)
	mov     r1, r4
	ldr     r3, [r2, #0x0]
	add     r1, #0x50
	add     r0, r2, r0
	ldrb    r2, [r3, r4]
	ldrb    r1, [r3, r1]
	sub     r1, r2, r1
	.hword  0x1f22 @ sub r2, r4, #0x4
	sub     r4, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r4]
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_223f0aa
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x223f0aa

.thumb
branch_223f0aa: @ 223f0aa :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223f0ae


.align 2


.word 0x172 @ 0x223f0b0
.word 0x1174 @ 0x223f0b4
.word 0x127 @ 0x223f0b8
.thumb
Function_223f0bc: @ 223f0bc :thumb
	push    {r3,lr}
	cmp     r1, #0x4
	bhi     branch_223f104
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r4, r5, #0
	lsl     r2, r3, #0
	lsl     r2, r2, #0
	lsl     r0, r1, #0
	lsl     r2, r4, #0
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x30] @ 0x223f10c, (=#0x2252fc7)
	ldrb    r0, [r0, r1]
	lsl     r0, r0, #3
	pop     {r3,pc}
@ 0x223f0e2


.incbin "./baserom/overlay/overlay_0017.bin", 0x3fa2, 0x223f104 - 0x223f0e2


.thumb
branch_223f104: @ 223f104 :thumb
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223f10c

.word 0x2252fc7 @ 0x223f10c

.incbin "./baserom/overlay/overlay_0017.bin", 0x3fd0, 0x223f140 - 0x223f110


.thumb
Function_223f140: @ 223f140 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, #0x2
	ldr     r1, [pc, #0x10] @ 0x223f158, (=#0x223f15d)
	str     r2, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	mov     r3, r1
	bl      Function_2024220
	add     sp, #0x8
	pop     {r3,pc}
@ 0x223f158

.word 0x223f15d @ 0x223f158

.incbin "./baserom/overlay/overlay_0017.bin", 0x401c, 0x223f1e8 - 0x223f15c


.thumb
Function_223f1e8: @ 223f1e8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x74
	str     r0, [sp, #0x18]
	str     r1, [sp, #0x1c]
	str     r2, [sp, #0x20]
	ldr     r0, [sp, #0x90]
	ldr     r1, [sp, #0x8c]
	mov     r2, #0x0
	str     r3, [sp, #0x24]
	ldr     r5, [sp, #0x88]
	ldr     r4, [sp, #0xa0]
	bl      Function_2002d7c
	mov     r7, r0
	asr     r1, r7, #2
	lsr     r1, r1, #29
	add     r1, r7, r1
	asr     r6, r1, #3
	mov     r1, #0x8
	blx     Function_20bd140
	cmp     r0, #0x0
	beq     branch_223f218
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_223f218: @ 223f218 :thumb
	add     r0, sp, #0x34
	bl      Function_201a7a0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	lsl     r2, r6, #24
	ldr     r0, [sp, #0x1c]
	add     r1, sp, #0x34
	lsr     r2, r2, #24
	mov     r3, #0x2
	bl      Function_201a870
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x94]
	ldr     r1, [sp, #0x90]
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	str     r3, [sp, #0x10]
	ldr     r2, [sp, #0x8c]
	add     r0, sp, #0x34
	str     r3, [sp, #0x14]
	bl      Function_201d7e0
	ldr     r2, [sp, #0x18]
	add     r0, sp, #0x34
	mov     r1, #0x1
	bl      Function_2012898
	mov     r1, #0x1
	mov     r2, r1
	add     r3, sp, #0x28
	bl      Function_201ed94
	ldr     r0, [sp, #0xa8]
	cmp     r0, #0x1
	bne     branch_223f270
	lsr     r0, r7, #31
	add     r0, r7, r0
	asr     r0, r0, #1
	sub     r4, r4, r0
.thumb
branch_223f270: @ 223f270 :thumb
	ldr     r0, [sp, #0x24]
	str     r0, [sp, #0x44]
	add     r0, sp, #0x34
	str     r0, [sp, #0x48]
	ldr     r0, [sp, #0x20]
	bl      Function_200d9b0
	str     r0, [sp, #0x4c]
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x9c]
	bl      Function_200d04c
	str     r0, [sp, #0x50]
	mov     r0, #0x0
	str     r0, [sp, #0x54]
	ldr     r0, [sp, #0x2c]
	str     r4, [sp, #0x5c]
	str     r0, [sp, #0x58]
	ldr     r0, [sp, #0xa4]
	sub     r0, #0x8
	str     r0, [sp, #0x60]
	ldr     r0, [sp, #0xac]
	str     r0, [sp, #0x64]
	ldr     r0, [sp, #0xb0]
	str     r0, [sp, #0x68]
	mov     r0, #0x1
	str     r0, [sp, #0x6c]
	ldr     r0, [sp, #0x18]
	str     r0, [sp, #0x70]
	add     r0, sp, #0x44
	bl      Function_20127e8
	ldr     r1, [sp, #0x98]
	mov     r6, r0
	cmp     r1, #0x0
	beq     branch_223f2bc
	bl      Function_2012a90
.thumb
branch_223f2bc: @ 223f2bc :thumb
	ldr     r2, [sp, #0xa4]
	mov     r0, r6
	mov     r1, r4
	sub     r2, #0x8
	bl      Function_20128c4
	add     r0, sp, #0x34
	bl      Function_201a8fc
	str     r6, [r5, #0x0]
	add     r3, sp, #0x28
	ldmia   r3!, {r0,r1}
	add     r2, r5, #0x4
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	strh    r7, [r5, #0x10]
	add     sp, #0x74
	pop     {r4-r7,pc}
@ 0x223f2e2


.incbin "./baserom/overlay/overlay_0017.bin", 0x41a2, 0x223f2f8 - 0x223f2e2


.thumb
Function_223f2f8: @ 223f2f8 :thumb
	cmp     r3, #0x1
	bne     branch_223f302
	ldrh    r3, [r0, #0x10]
	lsr     r3, r3, #1
	sub     r1, r1, r3
.thumb
branch_223f302: @ 223f302 :thumb
	ldr     r3, [pc, #0x8] @ 0x223f30c, (=#0x20128c5)
	ldr     r0, [r0, #0x0]
	sub     r2, #0x8
	bx      r3
@ 0x223f30a


.align 2


.word 0x20128c5 @ 0x223f30c
.thumb
Function_223f310: @ 223f310 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r3, r1
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, #0xcf
	bl      Function_200b144
	mov     r5, r0
	mov     r1, r4
	bl      Function_200b1ec
	mov     r4, r0
	mov     r0, r5
	bl      Function_200b190
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223f334

.thumb
Function_223f334: @ 223f334 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, r1
	ldr     r1, [pc, #0x30] @ 0x223f36c, (=#0x122)
	ldrb    r1, [r5, r1]
	bl      Function_2252a9c
	mov     r7, r0
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_223f348: @ 223f348 :thumb
	mov     r0, r5
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	mov     r1, r7
	bl      Function_2252a70
	ldr     r1, [pc, #0x18] @ 0x223f370, (=#0x12a)
	.hword  0x1c76 @ add r6, r6, #0x1
	strh    r0, [r4, r1]
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r4, #0xc
	cmp     r6, #0x4
	blt     branch_223f348
	mov     r0, r7
	bl      Function_20181c4
	pop     {r3-r7,pc}
@ 0x223f36a


.align 2


.word 0x122 @ 0x223f36c
.word 0x12a @ 0x223f370
.thumb
Function_223f374: @ 223f374 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x0]
	ldr     r4, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	mov     r0, r4
	str     r0, [sp, #0x4]
.thumb
branch_223f384: @ 223f384 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r6, #0x64
	mov     r5, r0
	mov     r0, r6
	ldr     r1, [sp, #0x0]
	add     r0, #0xbb
	ldrb    r0, [r1, r0]
	cmp     r0, #0x4
	bls     branch_223f3a0
	b       branch_223f512
@ 0x223f3a0

.thumb
branch_223f3a0: @ 223f3a0 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r1, #1
	lsl     r4, r2, #2
	lsl     r2, r3, #3
	lsl     r0, r4, #4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x13
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x17
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x14
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0
	mov     r0, r6
	add     r0, #0xa0
	cmp     r5, r0
	beq     branch_223f3f4
	mov     r0, r6
	add     r0, #0xa1
	cmp     r5, r0
	beq     branch_223f3f8
	mov     r0, r6
	add     r0, #0xa4
	cmp     r5, r0
	beq     branch_223f3f8
	b       branch_223f51a
@ 0x223f3f4

.thumb
branch_223f3f4: @ 223f3f4 :thumb
	mov     r6, #0x6e
	b       branch_223f51a
@ 0x223f3f8

.thumb
branch_223f3f8: @ 223f3f8 :thumb
	mov     r6, #0x69
	b       branch_223f51a
@ 0x223f3fc


.incbin "./baserom/overlay/overlay_0017.bin", 0x42bc, 0x223f512 - 0x223f3fc


.thumb
branch_223f512: @ 223f512 :thumb
	bl      Function_2022974
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223f51a

.thumb
branch_223f51a: @ 223f51a :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x18
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [sp, #0x8]
	add     r1, r1, r7
	add     r1, r0, r1
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r1, r0, #1
	ldr     r0, [sp, #0xc]
	add     r1, r0, r1
	mov     r0, r1
	mul     r0, r6
	mov     r1, #0x64
	blx     Division
	mov     r1, #0x4a
	ldr     r2, [sp, #0x4]
	lsl     r1, r1, #2
	strh    r0, [r2, r1]
	mov     r0, r2
	add     r0, #0xc
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x4
	bge     branch_223f55a
	b       branch_223f384
@ 0x223f55a

.thumb
branch_223f55a: @ 223f55a :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223f55e


.incbin "./baserom/overlay/overlay_0017.bin", 0x441e, 0x223f7e4 - 0x223f55e


.thumb
Function_223f7e4: @ 223f7e4 :thumb
	push    {r4,lr}
	mov     r1, #0x32
	mov     r0, #0x15
	lsl     r1, r1, #4
	bl      Function_2018144
	mov     r2, #0x32
	mov     r1, #0x0
	lsl     r2, r2, #4
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r1, #0x0
	mov     r0, #0x2e
	mvn     r1, r1
	lsl     r0, r0, #4
	strb    r1, [r4, r0]
	mov     r0, r4
	pop     {r4,pc}
@ 0x223f80a


.align 2, 0


.thumb
Function_223f80c: @ 223f80c :thumb
	push    {r3-r7,lr}
	mov     r4, #0x0
	ldr     r6, [pc, #0x4c] @ 0x223f860, (=#0x2253448)
	mov     r5, r0
	mov     r7, r4
.thumb
branch_223f816: @ 223f816 :thumb
	add     r1, r4, #0x4
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, r6
	mov     r3, r7
	bl      Function_20183c4
	add     r1, r4, #0x4
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x0
	bl      Function_2019ee0
	add     r1, r4, #0x4
	lsl     r1, r1, #24
	mov     r2, #0x0
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r3, r2
	bl      Function_2019184
	add     r1, r4, #0x4
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x1c
	cmp     r4, #0x4
	bcc     branch_223f816
	pop     {r3-r7,pc}
@ 0x223f85e


.align 2


.word 0x2253448 @ 0x223f860

.incbin "./baserom/overlay/overlay_0017.bin", 0x4724, 0x223f88c - 0x223f864


.thumb
Function_223f88c: @ 223f88c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	bl      Function_223f7e4
	mov     r4, r0
	str     r5, [r4, #0x0]
	str     r6, [r4, #0x4]
	str     r7, [r4, #0x8]
	mov     r0, #0xc
	mov     r1, #0x15
	bl      Function_2012744
	str     r0, [r4, #0x3c]
	mov     r0, #0x2d
	mov     r1, #0x15
	bl      Function_2006c24
	mov     r7, #0x2
	str     r0, [sp, #0xc]
	mov     r5, #0x0
	lsl     r7, r7, #10
	b       branch_223f8fa
@ 0x223f8be

.thumb
branch_223f8be: @ 223f8be :thumb
	mov     r0, #0x15
	mov     r1, r7
	bl      Function_2018144
	lsl     r1, r5, #2
	add     r1, r4, r1
	str     r0, [r1, #0x20]
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x84] @ 0x223f958, (=#0x2253250)
	lsl     r2, r5, #1
	ldrh    r1, [r1, r2]
	ldr     r0, [sp, #0xc]
	mov     r2, #0x1
	add     r3, sp, #0x10
	bl      Function_20071d0
	mov     r6, r0
	lsl     r0, r5, #2
	add     r0, r4, r0
	ldr     r1, [r0, #0x20]
	ldr     r0, [sp, #0x10]
	mov     r2, r7
	add     r0, #0xc
	blx     MI_CpuCopy32
	mov     r0, r6
	bl      Function_20181c4
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_223f8fa: @ 223f8fa :thumb
	cmp     r5, #0x5
	blt     branch_223f8be
	ldr     r0, [r4, #0x4]
	mov     r7, #0x2
	ldr     r6, [r0, #0x50]
	mov     r5, #0x0
	lsl     r7, r7, #8
	b       branch_223f948
@ 0x223f90a

.thumb
branch_223f90a: @ 223f90a :thumb
	mov     r0, #0x15
	mov     r1, r7
	bl      Function_2018144
	lsl     r1, r5, #2
	add     r1, r4, r1
	str     r0, [r1, #0x34]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r2, [pc, #0x38] @ 0x223f95c, (=#0x2253238)
	lsl     r3, r5, #1
	ldrh    r2, [r2, r3]
	mov     r0, r6
	mov     r1, #0x2d
	mov     r3, #0x15
	bl      Function_2003050
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_2003164
	lsl     r1, r5, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x34]
	mov     r2, r7
	blx     MIi_CpuCopy16
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_223f948: @ 223f948 :thumb
	cmp     r5, #0x2
	blt     branch_223f90a
	ldr     r0, [sp, #0xc]
	bl      Function_2006ca8
	mov     r0, r4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223f958

.word 0x2253250 @ 0x223f958
.word 0x2253238 @ 0x223f95c

.incbin "./baserom/overlay/overlay_0017.bin", 0x4820, 0x223f9c4 - 0x223f960


.thumb
Function_223f9c4: @ 223f9c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r0
	str     r3, [r7, #0xc]
	ldr     r0, [r7, #0x4]
	str     r2, [sp, #0x8]
	ldr     r0, [r0, #0x24]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0xc]
	mov     r0, #0x2e
	lsl     r0, r0, #4
	ldsb    r2, [r7, r0]
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r2, r0
	bne     branch_223f9ee
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	b       branch_223f9f8
@ 0x223f9ee

.thumb
branch_223f9ee: @ 223f9ee :thumb
	mov     r0, #0x30
	ldr     r1, [pc, #0xf4] @ 0x223fae8, (=#0x2253558)
	mul     r0, r2
	add     r0, r1, r0
	str     r0, [sp, #0x10]
.thumb
branch_223f9f8: @ 223f9f8 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x30
	ldr     r2, [pc, #0xe8] @ 0x223fae8, (=#0x2253558)
	mul     r1, r0
	add     r0, r2, r1
	str     r0, [sp, #0x14]
	mov     r4, #0x0
	mov     r5, r0
.thumb
branch_223fa08: @ 223fa08 :thumb
	ldrh    r1, [r5, #0xc]
	add     r0, r4, #0x4
	lsl     r0, r0, #24
	lsl     r1, r1, #24
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	bl      Function_2019060
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x4
	blt     branch_223fa08
	mov     r0, #0x2
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x14]
	ldr     r0, [r7, #0x4]
	ldrh    r1, [r1, #0x2]
	ldr     r0, [r0, #0x50]
	mov     r2, #0x1
	lsl     r1, r1, #2
	add     r1, r7, r1
	ldr     r1, [r1, #0x34]
	mov     r3, #0x0
	bl      Function_2002fbc
	ldr     r6, [sp, #0x14]
	ldr     r4, [sp, #0x10]
	mov     r5, #0x0
.thumb
branch_223fa42: @ 223fa42 :thumb
	ldrh    r2, [r6, #0x4]
	ldr     r0, [pc, #0xa4] @ 0x223faec, (=#0xffff)
	cmp     r2, r0
	beq     branch_223fa78
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x1
	beq     branch_223fa56
	ldrh    r0, [r4, #0x4]
	cmp     r2, r0
	beq     branch_223fa78
.thumb
branch_223fa56: @ 223fa56 :thumb
	lsl     r2, r2, #2
	add     r1, r5, #0x4
	add     r2, r7, r2
	lsl     r1, r1, #24
	mov     r3, #0x2
	ldr     r0, [sp, #0xc]
	ldr     r2, [r2, #0x20]
	lsr     r1, r1, #24
	lsl     r3, r3, #10
	bl      Function_2019574
	add     r1, r5, #0x4
	lsl     r1, r1, #24
	ldr     r0, [sp, #0xc]
	lsr     r1, r1, #24
	bl      Function_201c3c0
.thumb
branch_223fa78: @ 223fa78 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r5, #0x4
	blt     branch_223fa42
	mov     r1, #0x2e
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #4
	strb    r0, [r7, r1]
	mov     r0, r7
	bl      Function_22404b0
	ldr     r0, [sp, #0x14]
	ldr     r3, [r0, #0x28]
	cmp     r3, #0x0
	beq     branch_223faa0
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	mov     r0, r7
	blx     r3
.thumb
branch_223faa0: @ 223faa0 :thumb
	ldr     r0, [sp, #0x14]
	ldrh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x44] @ 0x223faec, (=#0xffff)
	cmp     r1, r0
	beq     branch_223fada
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x1
	beq     branch_223fab8
	ldr     r0, [sp, #0x10]
	ldrh    r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_223fada
.thumb
branch_223fab8: @ 223fab8 :thumb
	mov     r3, #0xb7
	mov     r0, #0x15
	lsl     r3, r3, #2
	str     r0, [sp, #0x0]
	mov     r0, #0x2d
	mov     r2, #0x1
	add     r3, r7, r3
	bl      Function_2006f50
	mov     r1, #0xb6
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	ldr     r0, [pc, #0x1c] @ 0x223faf0, (=#0x22411e5)
	mov     r1, r7
	mov     r2, #0xa
	bl      Function_200da3c
.thumb
branch_223fada: @ 223fada :thumb
	ldr     r0, [pc, #0x18] @ 0x223faf4, (=#0x2241221)
	mov     r1, r7
	mov     r2, #0xa
	bl      Function_200da3c
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223fae8

.word 0x2253558 @ 0x223fae8
.word 0xffff @ 0x223faec
.word 0x22411e5 @ 0x223faf0
.word 0x2241221 @ 0x223faf4

.incbin "./baserom/overlay/overlay_0017.bin", 0x49b8, 0x223fcac - 0x223faf8


.thumb
Function_223fcac: @ 223fcac :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r6, r0
	mov     r0, #0x69
	lsl     r0, r0, #2
	add     r5, r6, r0
	ldr     r0, [pc, #0x25c] @ 0x223ff18, (=#0x2e1)
	mov     r1, #0xff
	strb    r1, [r6, r0]
	mov     r0, r5
	str     r0, [sp, #0x24]
	add     r0, #0x50
	str     r0, [sp, #0x24]
	mov     r0, r5
	mov     r7, r6
	str     r0, [sp, #0x28]
	add     r0, #0xa0
	mov     r4, #0x0
	add     r7, #0x40
	str     r0, [sp, #0x28]
	b       branch_223fdf8
@ 0x223fcd6

.thumb
branch_223fcd6: @ 223fcd6 :thumb
	ldr     r0, [r6, #0x4]
	ldr     r1, [pc, #0x240] @ 0x223ff1c, (=#0x123)
	ldr     r0, [r0, #0x0]
	mov     r2, #0x0
	ldrb    r1, [r0, r1]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, r4
	add     r1, #0x36
	bl      GetPkmnData
	lsl     r1, r4, #1
	add     r2, sp, #0x3c
	strh    r0, [r2, r1]
	mov     r0, r2
	ldrh    r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_223fd04
	mov     r0, #0x4b
	add     r2, r5, r4
	lsl     r0, r0, #2
	ldrb    r2, [r2, r0]
	b       branch_223fd06
@ 0x223fd04

.thumb
branch_223fd04: @ 223fd04 :thumb
	mov     r2, #0x0
.thumb
branch_223fd06: @ 223fd06 :thumb
	add     r0, sp, #0x34
	strh    r2, [r0, r1]
	ldr     r0, [pc, #0x214] @ 0x223ff20, (=#0x10708)
	ldr     r1, [pc, #0x214] @ 0x223ff24, (=#0x2253278)
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x210] @ 0x223ff28, (=#0x80f0)
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	lsl     r0, r4, #2
	ldrh    r1, [r1, r0]
	mov     r3, #0x2
	str     r1, [sp, #0xc]
	ldr     r1, [pc, #0x200] @ 0x223ff24, (=#0x2253278)
	add     r0, r1, r0
	ldrh    r0, [r0, #0x2]
	mov     r1, r4
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r0, #0x14
	mul     r1, r0
	add     r0, r5, r1
	str     r0, [sp, #0x18]
	mov     r0, r6
	add     r1, r7, r1
	bl      Function_2240138
	ldr     r0, [pc, #0x1e8] @ 0x223ff2c, (=#0x10200)
	ldr     r1, [pc, #0x1ec] @ 0x223ff30, (=#0x2253314)
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1dc] @ 0x223ff28, (=#0x80f0)
	add     r2, r4, #0x4
	str     r0, [sp, #0x8]
	lsl     r0, r4, #3
	ldrh    r1, [r1, r0]
	str     r1, [sp, #0xc]
	ldr     r1, [pc, #0x1d8] @ 0x223ff30, (=#0x2253314)
	add     r0, r1, r0
	ldrh    r0, [r0, #0x2]
	mov     r1, r4
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r0, #0x14
	mul     r1, r0
	ldr     r0, [sp, #0x24]
	add     r0, r0, r1
	mov     r1, #0x14
	mul     r1, r2
	mov     r2, #0x0
	str     r0, [sp, #0x18]
	mov     r0, r6
	add     r1, r7, r1
	mov     r3, r2
	bl      Function_2240138
	ldr     r0, [pc, #0x1ac] @ 0x223ff2c, (=#0x10200)
	mov     r2, r4
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x19c] @ 0x223ff28, (=#0x80f0)
	lsl     r1, r4, #3
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x1a0] @ 0x223ff30, (=#0x2253314)
	add     r2, #0x8
	add     r1, r0, r1
	ldrh    r0, [r1, #0x4]
	str     r0, [sp, #0xc]
	ldrh    r0, [r1, #0x6]
	mov     r1, r4
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r0, #0x14
	mul     r1, r0
	ldr     r0, [sp, #0x28]
	add     r0, r0, r1
	mov     r1, #0x14
	mul     r1, r2
	mov     r2, #0x0
	str     r0, [sp, #0x18]
	mov     r0, r6
	add     r1, r7, r1
	mov     r3, r2
	bl      Function_2240138
	lsl     r1, r4, #1
	add     r0, sp, #0x3c
	ldrh    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_223fdf6
	mov     r0, #0x14
	mul     r0, r4
	add     r0, r6, r0
	ldr     r0, [r0, #0x40]
	mov     r1, #0x0
	bl      Function_20129d0
	add     r1, r4, #0x4
	mov     r0, #0x14
	mul     r0, r1
	add     r0, r6, r0
	ldr     r0, [r0, #0x40]
	mov     r1, #0x0
	bl      Function_20129d0
	mov     r1, r4
	add     r1, #0x8
	mov     r0, #0x14
	mul     r0, r1
	add     r0, r6, r0
	ldr     r0, [r0, #0x40]
	mov     r1, #0x0
	bl      Function_20129d0
.thumb
branch_223fdf6: @ 223fdf6 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_223fdf8: @ 223fdf8 :thumb
	cmp     r4, #0x4
	bge     branch_223fdfe
	b       branch_223fcd6
@ 0x223fdfe

.thumb
branch_223fdfe: @ 223fdfe :thumb
	mov     r4, #0x0
	add     r7, sp, #0x3c
	b       branch_223fe2c
@ 0x223fe04

.thumb
branch_223fe04: @ 223fe04 :thumb
	lsl     r0, r4, #1
	ldrh    r0, [r7, r0]
	cmp     r0, #0x0
	beq     branch_223fe1e
	mov     r0, #0x13
	add     r1, r5, r4
	lsl     r0, r0, #4
	ldrb    r1, [r1, r0]
	mov     r0, r6
	mov     r2, r4
	bl      Function_2240424
	b       branch_223fe2a
@ 0x223fe1e

.thumb
branch_223fe1e: @ 223fe1e :thumb
	mov     r1, #0x0
	mov     r0, r6
	mvn     r1, r1
	mov     r2, r4
	bl      Function_2240424
.thumb
branch_223fe2a: @ 223fe2a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_223fe2c: @ 223fe2c :thumb
	cmp     r4, #0x4
	blt     branch_223fe04
	mov     r4, #0x0
	mov     r7, #0x20
	add     r5, sp, #0x3c
	b       branch_223fe7e
@ 0x223fe38

.thumb
branch_223fe38: @ 223fe38 :thumb
	lsl     r0, r4, #1
	ldrh    r2, [r5, r0]
	cmp     r2, #0x0
	beq     branch_223fe7c
	ldr     r1, [r6, #0x4]
	ldr     r0, [r6, #0x8]
	ldr     r3, [r1, #0x0]
	ldr     r1, [pc, #0xd4] @ 0x223ff1c, (=#0x123)
	ldrb    r1, [r3, r1]
	bl      Function_2243a98
	cmp     r0, #0x0
	bne     branch_223fe7c
	str     r7, [sp, #0x0]
	ldr     r0, [r6, #0x4]
	mov     r1, #0x1
	add     r3, r4, #0x4
	lsl     r3, r3, #20
	ldr     r2, [r6, #0x38]
	lsl     r1, r1, #8
	add     r1, r2, r1
	ldr     r0, [r0, #0x50]
	mov     r2, #0x1
	lsr     r3, r3, #16
	bl      Function_2002fbc
	ldr     r0, [pc, #0xa8] @ 0x223ff18, (=#0x2e1)
	ldrb    r0, [r6, r0]
	cmp     r0, #0xff
	beq     branch_223fe78
	bl      Function_2022974
.thumb
branch_223fe78: @ 223fe78 :thumb
	ldr     r0, [pc, #0x9c] @ 0x223ff18, (=#0x2e1)
	strb    r4, [r6, r0]
.thumb
branch_223fe7c: @ 223fe7c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_223fe7e: @ 223fe7e :thumb
	cmp     r4, #0x4
	blt     branch_223fe38
	mov     r0, r6
	add     r1, sp, #0x3c
	bl      Function_22402e8
	mov     r4, #0x0
	b       branch_223ff0e
@ 0x223fe8e

.thumb
branch_223fe8e: @ 223fe8e :thumb
	lsl     r1, r4, #1
	add     r0, sp, #0x3c
	ldrh    r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_223ff0c
	add     r0, sp, #0x34
	ldrh    r0, [r0, r1]
	bl      Function_2095734
	str     r0, [sp, #0x20]
	cmp     r0, #0x0
	bge     branch_223fea8
	neg     r0, r0
.thumb
branch_223fea8: @ 223fea8 :thumb
	mov     r1, #0xa
	blx     Division
	str     r0, [sp, #0x1c]
	cmp     r0, #0x6
	ble     branch_223feb8
	bl      Function_2022974
.thumb
branch_223feb8: @ 223feb8 :thumb
	mov     r0, #0x18
	mul     r0, r4
	add     r7, r6, r0
	lsl     r0, r4, #3
	ldr     r1, [pc, #0x70] @ 0x223ff34, (=#0x2253334)
	str     r0, [sp, #0x2c]
	add     r0, r1, r0
	mov     r5, #0x0
	str     r0, [sp, #0x30]
	b       branch_223ff06
@ 0x223fecc

.thumb
branch_223fecc: @ 223fecc :thumb
	lsl     r0, r5, #2
	add     r1, r7, r0
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_223fede
	bl      Function_2022974
.thumb
branch_223fede: @ 223fede :thumb
	ldr     r0, [sp, #0x20]
	ldr     r3, [pc, #0x50] @ 0x223ff34, (=#0x2253334)
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x2c]
	ldr     r1, [r6, #0x4]
	ldr     r3, [r3, r2]
	lsl     r2, r5, #3
	add     r2, r3, r2
	ldr     r3, [sp, #0x30]
	ldr     r0, [r1, #0x18]
	ldr     r1, [r1, #0x1c]
	ldr     r3, [r3, #0x4]
	bl      Function_224136c
	lsl     r1, r5, #2
	add     r2, r7, r1
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_223ff06: @ 223ff06 :thumb
	ldr     r0, [sp, #0x1c]
	cmp     r5, r0
	blt     branch_223fecc
.thumb
branch_223ff0c: @ 223ff0c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_223ff0e: @ 223ff0e :thumb
	cmp     r4, #0x4
	blt     branch_223fe8e
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x223ff16


.align 2


.word 0x2e1 @ 0x223ff18
.word 0x123 @ 0x223ff1c
.word 0x10708 @ 0x223ff20
.word 0x2253278 @ 0x223ff24
.word 0x80f0 @ 0x223ff28
.word 0x10200 @ 0x223ff2c
.word 0x2253314 @ 0x223ff30
.word 0x2253334 @ 0x223ff34
.thumb
Function_223ff38: @ 223ff38 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r0, #0x69
	lsl     r0, r0, #2
	add     r6, r5, r0
	mov     r7, r5
	mov     r4, #0x0
	add     r6, #0xf0
	add     r7, #0x40
	b       branch_223ff86
@ 0x223ff4e

.thumb
branch_223ff4e: @ 223ff4e :thumb
	ldr     r0, [pc, #0x94] @ 0x223ffe4, (=#0x1090a)
	ldr     r1, [pc, #0x94] @ 0x223ffe8, (=#0x225325c)
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x90] @ 0x223ffec, (=#0x80f0)
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	lsl     r0, r4, #2
	ldrh    r1, [r1, r0]
	mov     r3, #0x2
	str     r1, [sp, #0xc]
	ldr     r1, [pc, #0x80] @ 0x223ffe8, (=#0x225325c)
	add     r0, r1, r0
	ldrh    r0, [r0, #0x2]
	mov     r1, r4
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	mov     r0, #0x14
	mul     r1, r0
	add     r0, r6, r1
	str     r0, [sp, #0x18]
	mov     r0, r5
	add     r1, r7, r1
	bl      Function_2240138
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_223ff86: @ 223ff86 :thumb
	cmp     r4, #0x3
	blt     branch_223ff4e
	ldr     r0, [r5, #0x4]
	mov     r1, #0x35
	ldr     r0, [r0, #0x38]
	bl      Function_200b1ec
	mov     r6, r0
	ldr     r0, [pc, #0x4c] @ 0x223ffe4, (=#0x1090a)
	ldr     r1, [pc, #0x50] @ 0x223ffec, (=#0x80f0)
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r1, #0x80
	str     r1, [sp, #0xc]
	mov     r1, #0xa4
	str     r1, [sp, #0x10]
	mov     r1, #0x1
	str     r1, [sp, #0x14]
	mov     r2, r5
	mov     r1, #0x14
	str     r0, [sp, #0x18]
	add     r2, #0x40
	mul     r1, r4
	add     r1, r2, r1
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x2
	bl      Function_2240138
	mov     r0, r6
	bl      Function_20237bc
	ldr     r2, [r5, #0x4]
	ldr     r0, [r2, #0x18]
	ldr     r1, [r2, #0x1c]
	ldr     r3, [r2, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x223fff0, (=#0x11e)
	ldrb    r2, [r3, r2]
	bl      Function_22412c0
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223ffe4

.word 0x1090a @ 0x223ffe4
.word 0x225325c @ 0x223ffe8
.word 0x80f0 @ 0x223ffec
.word 0x11e @ 0x223fff0
.thumb
Function_223fff4: @ 223fff4 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r0
	add     r0, r5, #0x1
	str     r2, [sp, #0x0]
	cmp     r0, #0x4
	bhi     branch_2240018
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r1, #0
	lsl     r6, r1, #0
	lsl     r6, r1, #0
	lsl     r6, r1, #0
.thumb
branch_2240018: @ 2240018 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r7,pc}
@ 0x224001e


.incbin "./baserom/overlay/overlay_0017.bin", 0x4ede, 0x2240094 - 0x224001e


.thumb
Function_2240094: @ 2240094 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r0
	add     r0, r5, #0x1
	cmp     r0, #0x4
	bhi     branch_22400b6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r4, r1, #0
	lsl     r0, r2, #0
	lsl     r4, r2, #0
	lsl     r0, r3, #0
.thumb
branch_22400b6: @ 22400b6 :thumb
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x22400ba


.incbin "./baserom/overlay/overlay_0017.bin", 0x4f7a, 0x2240138 - 0x22400ba


.thumb
Function_2240138: @ 2240138 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x7c
	mov     r5, r1
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	str     r2, [sp, #0x18]
	str     r3, [sp, #0x1c]
	ldr     r6, [sp, #0x9c]
	ldr     r4, [sp, #0xa8]
	cmp     r0, #0x0
	beq     branch_2240152
	bl      Function_2022974
.thumb
branch_2240152: @ 2240152 :thumb
	ldr     r1, [r7, #0x4]
	cmp     r4, #0x0
	ldr     r0, [r1, #0x24]
	str     r0, [sp, #0x24]
	ldr     r0, [r1, #0x1c]
	str     r0, [sp, #0x20]
	bne     branch_224016e
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	add     r2, sp, #0x2c
	add     r3, sp, #0x28
	bl      Function_2240c60
	b       branch_2240176
@ 0x224016e

.thumb
branch_224016e: @ 224016e :thumb
	ldrh    r0, [r4, #0x12]
	str     r0, [sp, #0x2c]
	ldrh    r0, [r4, #0x10]
	str     r0, [sp, #0x28]
.thumb
branch_2240176: @ 2240176 :thumb
	cmp     r4, #0x0
	bne     branch_22401b4
	add     r0, sp, #0x3c
	bl      Function_201a7a0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x28]
	ldr     r0, [sp, #0x24]
	lsl     r2, r2, #24
	add     r1, sp, #0x3c
	lsr     r2, r2, #24
	mov     r3, #0x2
	bl      Function_201a870
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x90]
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	str     r3, [sp, #0x10]
	ldr     r2, [sp, #0x18]
	add     r0, sp, #0x3c
	str     r3, [sp, #0x14]
	bl      Function_201d7e0
	b       branch_22401c0
@ 0x22401b4

.thumb
branch_22401b4: @ 22401b4 :thumb
	mov     r3, r4
	add     r2, sp, #0x3c
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
.thumb
branch_22401c0: @ 22401c0 :thumb
	add     r0, sp, #0x3c
	mov     r1, #0x2
	mov     r2, #0x15
	bl      Function_2012898
	mov     r1, #0x1
	mov     r2, #0x2
	add     r3, sp, #0x30
	bl      Function_201ed94
	ldr     r0, [sp, #0xa4]
	cmp     r0, #0x1
	bne     branch_22401e4
	ldr     r1, [sp, #0x2c]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	sub     r6, r6, r0
.thumb
branch_22401e4: @ 22401e4 :thumb
	ldr     r0, [r7, #0x3c]
	str     r0, [sp, #0x4c]
	add     r0, sp, #0x3c
	str     r0, [sp, #0x50]
	ldr     r0, [sp, #0x20]
	bl      Function_200d9b0
	str     r0, [sp, #0x54]
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x98]
	bl      Function_200d04c
	str     r0, [sp, #0x58]
	mov     r0, #0x0
	ldr     r1, [sp, #0x34]
	str     r0, [sp, #0x5c]
	str     r0, [sp, #0x6c]
	mov     r0, #0x64
	str     r1, [sp, #0x60]
	mov     r1, #0x42
	str     r0, [sp, #0x70]
	mov     r0, #0x2
	str     r0, [sp, #0x74]
	mov     r0, #0x15
	str     r0, [sp, #0x78]
	ldr     r2, [sp, #0xa0]
	lsl     r1, r1, #2
	add     r1, r2, r1
	add     r0, sp, #0x4c
	str     r6, [sp, #0x64]
	str     r1, [sp, #0x68]
	bl      Function_20127e8
	ldr     r1, [sp, #0x94]
	mov     r7, r0
	bl      Function_2012ac0
	mov     r2, #0x42
	ldr     r3, [sp, #0xa0]
	lsl     r2, r2, #2
	mov     r0, r7
	mov     r1, r6
	add     r2, r3, r2
	bl      Function_20128c4
	cmp     r4, #0x0
	bne     branch_2240248
	add     r0, sp, #0x3c
	bl      Function_201a8fc
.thumb
branch_2240248: @ 2240248 :thumb
	str     r7, [r5, #0x0]
	add     r3, sp, #0x30
	ldmia   r3!, {r0,r1}
	add     r2, r5, #0x4
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x2c]
	strh    r0, [r5, #0x10]
	add     sp, #0x7c
	pop     {r4-r7,pc}
@ 0x224025e


.align 2, 0


.thumb
Function_2240260: @ 2240260 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, #0x0
	mov     r4, r5
	add     r4, #0x44
	mov     r7, r6
.thumb
branch_224026c: @ 224026c :thumb
	ldr     r0, [r5, #0x40]
	cmp     r0, #0x0
	beq     branch_224027e
	bl      Function_2012870
	mov     r0, r4
	bl      Function_201ee28
	str     r7, [r5, #0x40]
.thumb
branch_224027e: @ 224027e :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x14
	add     r4, #0x14
	cmp     r6, #0xc
	blt     branch_224026c
	pop     {r3-r7,pc}
@ 0x224028a


.align 2, 0


.thumb
Function_224028c: @ 224028c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22402a6
	bl      Function_2241314
	mov     r0, #0x5
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r4, r0]
.thumb
branch_22402a6: @ 22402a6 :thumb
	pop     {r4,pc}
@ 0x22402a8

.thumb
Function_22402a8: @ 22402a8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r7, #0x51
	str     r0, [sp, #0x4]
	mov     r6, r0
	lsl     r7, r7, #2
.thumb
branch_22402b8: @ 22402b8 :thumb
	ldr     r5, [sp, #0x0]
	mov     r4, #0x0
.thumb
branch_22402bc: @ 22402bc :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_22402cc
	bl      Function_22413ac
	mov     r0, #0x51
	lsl     r0, r0, #2
	str     r6, [r5, r0]
.thumb
branch_22402cc: @ 22402cc :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_22402bc
	ldr     r0, [sp, #0x0]
	add     r0, #0x18
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x4
	blt     branch_22402b8
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22402e8

.thumb
Function_22402e8: @ 22402e8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r5, r0
	mov     r7, r1
	ldr     r1, [r5, #0x4]
	ldr     r4, [pc, #0x88] @ 0x224037c, (=#0x2253354)
	ldr     r0, [r1, #0x18]
	add     r3, sp, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [r1, #0x1c]
	mov     r2, #0x6
	str     r0, [sp, #0x0]
.thumb
branch_2240300: @ 2240300 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2240300
	ldr     r0, [r4, #0x0]
	mov     r4, #0x0
	str     r0, [r3, #0x0]
	add     r6, sp, #0x8
	b       branch_2240374
@ 0x2240312

.thumb
branch_2240312: @ 2240312 :thumb
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2240324
	bl      Function_2022974
.thumb
branch_2240324: @ 2240324 :thumb
	lsl     r0, r4, #1
	ldrh    r0, [r7, r0]
	cmp     r0, #0x0
	beq     branch_2240372
	mov     r0, #0xb5
	add     r1, r5, r4
	lsl     r0, r0, #2
	ldrb    r2, [r1, r0]
	ldr     r0, [pc, #0x48] @ 0x2240380, (=#0x80f6)
	ldr     r1, [pc, #0x4c] @ 0x2240384, (=#0x2253298)
	add     r0, r4, r0
	str     r0, [sp, #0x1c]
	lsl     r0, r4, #2
	ldrh    r1, [r1, r0]
	add     r3, sp, #0x8
	strh    r1, [r6, #0x0]
	ldr     r1, [pc, #0x3c] @ 0x2240384, (=#0x2253298)
	add     r0, r1, r0
	ldrh    r0, [r0, #0x2]
	ldr     r1, [sp, #0x0]
	strh    r0, [r6, #0x2]
	ldr     r0, [sp, #0x4]
	bl      Function_224f154
	lsl     r1, r4, #2
	mov     r2, #0x13
	mov     r3, #0x11
	add     r1, r5, r1
	lsl     r2, r2, #4
	str     r0, [r1, r2]
	mov     r0, r2
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	mov     r2, #0x2
	ldsh    r1, [r6, r1]
	ldsh    r2, [r6, r2]
	lsl     r3, r3, #16
	bl      Function_200d500
.thumb
branch_2240372: @ 2240372 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_2240374: @ 2240374 :thumb
	cmp     r4, #0x4
	blt     branch_2240312
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x224037c

.word 0x2253354 @ 0x224037c
.word 0x80f6 @ 0x2240380
.word 0x2253298 @ 0x2240384
.thumb
Function_2240388: @ 2240388 :thumb
	push    {r3-r7,lr}
	mov     r4, #0x0
	mov     r7, #0x13
	mov     r5, r0
	mov     r6, r4
	lsl     r7, r7, #4
.thumb
branch_2240394: @ 2240394 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_22403a4
	bl      Function_224f184
	mov     r0, #0x13
	lsl     r0, r0, #4
	str     r6, [r5, r0]
.thumb
branch_22403a4: @ 22403a4 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2240394
	pop     {r3-r7,pc}
@ 0x22403ae


.align 2, 0


.thumb
Function_22403b0: @ 22403b0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r6, r1
	ldr     r0, [r0, #0x24]
	mov     r7, r3
	mov     r1, #0x4
	mov     r4, r2
	str     r0, [sp, #0x4]
	bl      Function_2019fe4
	mov     r12, r0
	lsl     r0, r7, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x20]
	ldr     r7, [r4, #0x0]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x20]
	lsl     r0, r0, #1
	ldsh    r1, [r6, r0]
	ldr     r0, [r4, #0x4]
	cmp     r7, r0
	bgt     branch_2240416
	lsl     r6, r7, #5
.thumb
branch_22403e2: @ 22403e2 :thumb
	lsl     r2, r6, #1
	mov     r0, r12
	add     r5, r0, r2
	ldr     r0, [sp, #0x0]
	ldr     r3, [r4, #0xc]
	add     r2, r0, r2
	ldr     r0, [r4, #0x8]
	cmp     r0, r3
	bgt     branch_224040c
	lsl     r3, r0, #1
	add     r2, r2, r3
	add     r3, r5, r3
.thumb
branch_22403fa: @ 22403fa :thumb
	ldrh    r5, [r2, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	add     r5, r1, r5
	strh    r5, [r3, #0x0]
	ldr     r5, [r4, #0xc]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r0, r5
	ble     branch_22403fa
.thumb
branch_224040c: @ 224040c :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x20
	cmp     r7, r0
	ble     branch_22403e2
.thumb
branch_2240416: @ 2240416 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x4
	bl      Function_201c3c0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2240422


.align 2, 0


.thumb
Function_2240424: @ 2240424 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	ldr     r6, [pc, #0x70] @ 0x224049c, (=#0x22532bc)
	mov     r5, r2
	mov     r4, r0
	mov     r3, r1
	add     r2, sp, #0x4
	ldmia   r6!, {r0,r1}
	mov     r7, r2
	stmia   r2!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r3, r0
	beq     branch_2240464
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	lsl     r1, r3, #2
	ldr     r0, [r4, #0x4]
	add     r3, r5, #0x4
	lsl     r3, r3, #20
	ldr     r0, [r0, #0x50]
	ldr     r1, [r7, r1]
	mov     r2, #0x1
	lsr     r3, r3, #16
	bl      Function_2002fbc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2240464

.thumb
branch_2240464: @ 2240464 :thumb
	ldr     r2, [pc, #0x38] @ 0x22404a0, (=#0x2253248)
	lsl     r1, r5, #1
	mov     r0, #0x0
	add     r1, r2, r1
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0x34] @ 0x22404a4, (=#0x2253408)
	lsl     r2, r5, #4
	add     r2, r3, r2
	mov     r0, r4
	mov     r3, #0x2
	bl      Function_22403b0
	mov     r2, #0x20
	str     r2, [sp, #0x0]
	ldr     r0, [r4, #0x4]
	add     r3, r5, #0x4
	lsl     r3, r3, #20
	ldr     r1, [r4, #0x38]
	add     r2, #0xe0
	add     r1, r1, r2
	ldr     r0, [r0, #0x50]
	mov     r2, #0x1
	lsr     r3, r3, #16
	bl      Function_2002fbc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x224049a


.align 2


.word 0x22532bc @ 0x224049c
.word 0x2253248 @ 0x22404a0
.word 0x2253408 @ 0x22404a4

.incbin "./baserom/overlay/overlay_0017.bin", 0x5368, 0x22404b0 - 0x22404a8


.thumb
Function_22404b0: @ 22404b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224028c
	mov     r0, r4
	bl      Function_22402a8
	mov     r0, r4
	bl      Function_2240388
	mov     r0, r4
	bl      Function_2240260
	pop     {r4,pc}
@ 0x22404cc


.incbin "./baserom/overlay/overlay_0017.bin", 0x538c, 0x2240a80 - 0x22404cc


.thumb
Function_2240a80: @ 2240a80 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r5, r0
	mov     r0, #0x69
	lsl     r0, r0, #2
	add     r6, r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	mov     r0, r6
	str     r0, [sp, #0x18]
	add     r0, #0x50
	str     r0, [sp, #0x18]
	mov     r0, r6
	str     r0, [sp, #0x14]
	add     r0, #0xa0
	mov     r7, r1
	str     r6, [sp, #0x1c]
	str     r0, [sp, #0x14]
.thumb
branch_2240aa4: @ 2240aa4 :thumb
	ldrh    r0, [r7, #0x0]
	cmp     r0, #0x0
	beq     branch_2240aca
	ldr     r1, [sp, #0x20]
	add     r4, r6, r1
	mov     r1, #0xa
	bl      Function_20790c4
	mov     r1, #0x4b
	lsl     r1, r1, #2
	strb    r0, [r4, r1]
	ldrh    r0, [r7, #0x0]
	mov     r1, #0xb
	bl      Function_20790c4
	mov     r1, #0x13
	lsl     r1, r1, #4
	strb    r0, [r4, r1]
	b       branch_2240ada
@ 0x2240aca

.thumb
branch_2240aca: @ 2240aca :thumb
	ldr     r0, [sp, #0x20]
	mov     r1, #0x0
	add     r4, r6, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	strb    r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	strb    r1, [r4, r0]
.thumb
branch_2240ada: @ 2240ada :thumb
	ldrh    r0, [r7, #0x0]
	mov     r1, #0x15
	bl      Function_200b2ec
	str     r0, [sp, #0x24]
	ldr     r0, [pc, #0xfc] @ 0x2240be4, (=#0x10708)
	ldr     r1, [sp, #0x24]
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x1c]
	mov     r0, r5
	mov     r2, #0x2
	bl      Function_2240bf4
	ldr     r0, [sp, #0x24]
	bl      Function_20237bc
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldrb    r0, [r4, r0]
	add     r1, sp, #0x34
	add     r2, sp, #0x30
	bl      Function_2095750
	ldr     r0, [r5, #0x4]
	ldr     r1, [sp, #0x34]
	ldr     r0, [r0, #0x40]
	bl      Function_200b1ec
	str     r0, [sp, #0x28]
	ldr     r0, [r5, #0x4]
	ldr     r1, [sp, #0x30]
	ldr     r0, [r0, #0x40]
	bl      Function_200b1ec
	mov     r4, r0
	ldr     r0, [pc, #0xc4] @ 0x2240be8, (=#0x10200)
	ldr     r1, [sp, #0x28]
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x18]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_2240bf4
	ldr     r0, [pc, #0xb4] @ 0x2240be8, (=#0x10200)
	ldr     r3, [sp, #0x14]
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_2240bf4
	ldr     r0, [sp, #0x28]
	bl      Function_20237bc
	mov     r0, r4
	bl      Function_20237bc
	ldr     r0, [sp, #0x1c]
	.hword  0x1cbf @ add r7, r7, #0x2
	add     r0, #0x14
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	add     r0, #0x14
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	add     r0, #0x14
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x20]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x20]
	cmp     r0, #0x4
	blt     branch_2240aa4
	mov     r7, #0x0
	mov     r4, r7
	add     r6, #0xf0
.thumb
branch_2240b70: @ 2240b70 :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, #0x15
	ldr     r0, [r0, #0x0]
	add     r0, r0, r4
	add     r0, #0xd0
	ldrh    r0, [r0, #0x0]
	bl      Function_223f310
	str     r0, [sp, #0x2c]
	ldr     r0, [pc, #0x68] @ 0x2240bec, (=#0x1090a)
	ldr     r1, [sp, #0x2c]
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x2
	mov     r3, r6
	bl      Function_2240bf4
	ldr     r0, [sp, #0x2c]
	bl      Function_20237bc
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x8
	add     r6, #0x14
	cmp     r7, #0x3
	blt     branch_2240b70
	ldr     r3, [pc, #0x4c] @ 0x2240bf0, (=#0x80f1)
	ldr     r2, [r5, #0x4]
	add     r0, r3, #0x7
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r2, #0x18]
	ldr     r1, [r2, #0x1c]
	ldr     r2, [r2, #0x50]
	add     r3, #0xc
	bl      Function_2252ab0
	ldr     r3, [pc, #0x34] @ 0x2240bf0, (=#0x80f1)
	ldr     r1, [r5, #0x4]
	add     r0, r3, #0x7
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [r1, #0x18]
	ldr     r1, [r1, #0x1c]
	mov     r2, #0x15
	add     r3, #0xc
	bl      Function_2252b48
	mov     r1, #0xc5
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x2240be4

.word 0x10708 @ 0x2240be4
.word 0x10200 @ 0x2240be8
.word 0x1090a @ 0x2240bec
.word 0x80f1 @ 0x2240bf0
.thumb
Function_2240bf4: @ 2240bf4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r7, r2
	mov     r6, r1
	mov     r5, r0
	mov     r4, r3
	mov     r0, r6
	mov     r1, r7
	add     r2, sp, #0x1c
	add     r3, sp, #0x18
	bl      Function_2240c60
	ldr     r0, [sp, #0x1c]
	strh    r0, [r4, #0x12]
	ldr     r0, [sp, #0x18]
	strh    r0, [r4, #0x10]
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_2240c20
	mov     r0, r4
	bl      Function_201a8fc
.thumb
branch_2240c20: @ 2240c20 :thumb
	mov     r0, r4
	bl      Function_201a7a0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	ldr     r2, [sp, #0x18]
	ldr     r0, [r0, #0x24]
	lsl     r2, r2, #24
	mov     r1, r4
	lsr     r2, r2, #24
	mov     r3, #0x2
	bl      Function_201a870
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x38]
	mov     r1, r7
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r0, r4
	mov     r2, r6
	str     r3, [sp, #0x14]
	bl      Function_201d7e0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2240c5e


.align 2, 0


.thumb
Function_2240c60: @ 2240c60 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r6, r2
	mov     r0, r1
	mov     r1, r4
	mov     r2, #0x0
	mov     r7, r3
	bl      Function_2002d7c
	mov     r4, r0
	asr     r1, r4, #2
	lsr     r1, r1, #29
	add     r1, r4, r1
	asr     r5, r1, #3
	mov     r1, #0x8
	blx     Function_20bd140
	cmp     r0, #0x0
	beq     branch_2240c88
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2240c88: @ 2240c88 :thumb
	str     r4, [r6, #0x0]
	str     r5, [r7, #0x0]
	pop     {r3-r7,pc}
@ 0x2240c8e


.incbin "./baserom/overlay/overlay_0017.bin", 0x5b4e, 0x2240d04 - 0x2240c8e


.thumb
Function_2240d04: @ 2240d04 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r1, [sp, #0x8]
	mov     r1, #0x31
	mov     r5, r0
	lsl     r1, r1, #4
	add     r0, r5, r1
	str     r0, [sp, #0xc]
	mov     r0, r1
	sub     r1, #0x30
	add     r0, #0x8
	add     r6, r5, r0
	ldsb    r1, [r5, r1]
	mov     r0, #0x30
	ldr     r2, [pc, #0x138] @ 0x2240e5c, (=#0x2253558)
	mul     r0, r1
	add     r7, r2, r0
	mov     r4, #0x0
	b       branch_2240d48
@ 0x2240d2a

.thumb
branch_2240d2a: @ 2240d2a :thumb
	ldr     r0, [r5, #0x4]
	ldr     r1, [pc, #0x130] @ 0x2240e60, (=#0x123)
	ldr     r0, [r0, #0x0]
	mov     r2, #0x0
	ldrb    r1, [r0, r1]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, r4
	add     r1, #0x36
	bl      GetPkmnData
	lsl     r2, r4, #1
	add     r1, sp, #0x10
	strh    r0, [r1, r2]
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_2240d48: @ 2240d48 :thumb
	cmp     r4, #0x4
	blt     branch_2240d2a
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x1
	bne     branch_2240dc6
	ldr     r0, [sp, #0xc]
	mov     r1, #0x0
	ldsb    r0, [r0, r1]
	mov     r4, #0x1
	strb    r0, [r6, #0x2]
	ldr     r0, [sp, #0xc]
	ldsb    r0, [r0, r4]
	strb    r0, [r6, #0x1]
	ldsb    r0, [r6, r4]
	lsl     r3, r0, #1
	mov     r0, #0x2
	ldsb    r2, [r6, r0]
	ldr     r0, [pc, #0xf8] @ 0x2240e64, (=#0x225323c)
	add     r0, r0, r3
	ldrb    r3, [r2, r0]
	add     r0, sp, #0x10
	lsl     r2, r3, #1
	ldrh    r0, [r0, r2]
	cmp     r0, #0x0
	bne     branch_2240d92
	ldr     r0, [sp, #0xc]
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x1]
	strb    r1, [r6, #0x2]
	strb    r1, [r6, #0x1]
	ldsb    r0, [r6, r4]
	lsl     r2, r0, #1
	mov     r0, #0x2
	ldsb    r1, [r6, r0]
	ldr     r0, [pc, #0xd4] @ 0x2240e64, (=#0x225323c)
	add     r0, r0, r2
	ldrb    r3, [r1, r0]
.thumb
branch_2240d92: @ 2240d92 :thumb
	ldr     r0, [r7, #0x14]
	lsl     r3, r3, #2
	add     r0, r0, r3
	ldrb    r0, [r0, #0x1]
	sub     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x11
	lsl     r0, r0, #16
	str     r0, [sp, #0x4]
	ldr     r4, [r7, #0x14]
	mov     r0, #0xc5
	add     r2, r4, r3
	ldrb    r1, [r2, #0x2]
	ldrb    r2, [r2, #0x3]
	ldrb    r3, [r4, r3]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, #0x8
	sub     r2, #0x8
	add     r3, #0x8
	bl      Function_2252c78
	mov     r0, #0x0
	add     sp, #0x1c
	mvn     r0, r0
	pop     {r4-r7,pc}
@ 0x2240dc6

.thumb
branch_2240dc6: @ 2240dc6 :thumb
	ldr     r0, [pc, #0x9c] @ 0x2240e64, (=#0x225323c)
	add     r1, sp, #0x18
	mov     r2, #0x4
	blx     MI_CpuCopy8
	mov     r1, #0x2
	mov     r0, r6
	mov     r2, r1
	add     r3, sp, #0x18
	bl      Function_2241004
	cmp     r0, #0x20
	bhi     branch_2240df6
	bcs     branch_2240e02
	cmp     r0, #0x2
	bhi     branch_2240df0
	cmp     r0, #0x1
	bcc     branch_2240e54
	beq     branch_2240e40
	cmp     r0, #0x2
	b       branch_2240e54
@ 0x2240df0

.thumb
branch_2240df0: @ 2240df0 :thumb
	cmp     r0, #0x10
	beq     branch_2240e02
	b       branch_2240e54
@ 0x2240df6

.thumb
branch_2240df6: @ 2240df6 :thumb
	cmp     r0, #0x40
	bhi     branch_2240dfe
	beq     branch_2240e02
	b       branch_2240e54
@ 0x2240dfe

.thumb
branch_2240dfe: @ 2240dfe :thumb
	cmp     r0, #0x80
	bne     branch_2240e54
.thumb
branch_2240e02: @ 2240e02 :thumb
	mov     r0, #0x1
	ldsb    r0, [r6, r0]
	ldr     r2, [pc, #0x5c] @ 0x2240e64, (=#0x225323c)
	lsl     r3, r0, #1
	mov     r0, #0x2
	ldsb    r1, [r6, r0]
	add     r0, r2, r3
	ldrb    r1, [r1, r0]
	ldr     r0, [r7, #0x14]
	lsl     r3, r1, #2
	add     r0, r0, r3
	ldrb    r0, [r0, #0x1]
	sub     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x11
	lsl     r0, r0, #16
	str     r0, [sp, #0x4]
	ldr     r4, [r7, #0x14]
	mov     r0, #0xc5
	add     r2, r4, r3
	ldrb    r1, [r2, #0x2]
	ldrb    r2, [r2, #0x3]
	ldrb    r3, [r4, r3]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, #0x8
	sub     r2, #0x8
	add     r3, #0x8
	bl      Function_2252c78
	b       branch_2240e54
@ 0x2240e40

.thumb
branch_2240e40: @ 2240e40 :thumb
	mov     r0, #0x1
	ldsb    r0, [r6, r0]
	ldr     r2, [pc, #0x1c] @ 0x2240e64, (=#0x225323c)
	add     sp, #0x1c
	lsl     r3, r0, #1
	mov     r0, #0x2
	ldsb    r1, [r6, r0]
	add     r0, r2, r3
	ldrb    r0, [r1, r0]
	pop     {r4-r7,pc}
@ 0x2240e54

.thumb
branch_2240e54: @ 2240e54 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2240e5c

.word 0x2253558 @ 0x2240e5c
.word 0x123 @ 0x2240e60
.word 0x225323c @ 0x2240e64
.thumb
Function_2240e68: @ 2240e68 :thumb
	push    {r4-r7}
	mov     r2, #0x31
	lsl     r2, r2, #4
	mov     r4, #0x0
	add     r2, r0, r2
	ldr     r7, [pc, #0x2c] @ 0x2240ea0, (=#0x225323c)
	mov     r0, r4
	b       branch_2240e96
@ 0x2240e78

.thumb
branch_2240e78: @ 2240e78 :thumb
	lsl     r5, r4, #1
	mov     r3, r0
	add     r6, r7, r5
	b       branch_2240e90
@ 0x2240e80

.thumb
branch_2240e80: @ 2240e80 :thumb
	ldrb    r5, [r3, r6]
	cmp     r1, r5
	bne     branch_2240e8e
	strb    r3, [r2, #0x0]
	strb    r4, [r2, #0x1]
	pop     {r4-r7}
	bx      lr
@ 0x2240e8e

.thumb
branch_2240e8e: @ 2240e8e :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
.thumb
branch_2240e90: @ 2240e90 :thumb
	cmp     r3, #0x2
	blt     branch_2240e80
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_2240e96: @ 2240e96 :thumb
	cmp     r4, #0x2
	blt     branch_2240e78
	pop     {r4-r7}
	bx      lr
@ 0x2240e9e


.align 2


.word 0x225323c @ 0x2240ea0
.thumb
Function_2240ea4: @ 2240ea4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, #0x31
	lsl     r7, r7, #4
	mov     r3, r7
	mov     r6, r0
	sub     r3, #0x30
	mov     r0, r7
	ldsb    r5, [r6, r3]
	add     r0, #0x8
	add     r4, r6, r0
	mov     r3, #0x30
	mov     r2, r1
	ldr     r0, [pc, #0xfc] @ 0x2240fbc, (=#0x2253558)
	mul     r3, r5
	add     r1, r6, r7
	add     r5, r0, r3
	cmp     r2, #0x1
	bne     branch_2240f18
	mov     r0, #0x2
	ldsb    r2, [r1, r0]
	strb    r2, [r4, #0x2]
	mov     r2, #0x3
	ldsb    r1, [r1, r2]
	strb    r1, [r4, #0x1]
	mov     r1, #0x1
	ldsb    r2, [r4, r1]
	ldsb    r3, [r4, r0]
	lsl     r1, r2, #1
	add     r2, r2, r1
	ldr     r1, [pc, #0xdc] @ 0x2240fc0, (=#0x2253240)
	add     r0, r1, r2
	ldrb    r1, [r3, r0]
	ldr     r0, [r5, #0x14]
	lsl     r3, r1, #2
	add     r0, r0, r3
	ldrb    r0, [r0, #0x1]
	sub     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x11
	lsl     r0, r0, #16
	str     r0, [sp, #0x4]
	ldr     r4, [r5, #0x14]
	add     r0, r7, #0x4
	add     r2, r4, r3
	ldrb    r1, [r2, #0x2]
	ldrb    r2, [r2, #0x3]
	ldrb    r3, [r4, r3]
	ldr     r0, [r6, r0]
	add     r1, #0x8
	sub     r2, #0x8
	add     r3, #0x8
	bl      Function_2252c78
	mov     r0, #0x0
	add     sp, #0x10
	mvn     r0, r0
	pop     {r3-r7,pc}
@ 0x2240f18

.thumb
branch_2240f18: @ 2240f18 :thumb
	ldr     r0, [pc, #0xa4] @ 0x2240fc0, (=#0x2253240)
	add     r1, sp, #0x8
	mov     r2, #0x6
	blx     MI_CpuCopy8
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0x2
	add     r3, sp, #0x8
	bl      Function_2241004
	cmp     r0, #0x20
	bhi     branch_2240f4a
	bcs     branch_2240f56
	cmp     r0, #0x2
	bhi     branch_2240f44
	cmp     r0, #0x1
	bcc     branch_2240fb2
	beq     branch_2240f96
	cmp     r0, #0x2
	beq     branch_2240fac
	b       branch_2240fb2
@ 0x2240f44

.thumb
branch_2240f44: @ 2240f44 :thumb
	cmp     r0, #0x10
	beq     branch_2240f56
	b       branch_2240fb2
@ 0x2240f4a

.thumb
branch_2240f4a: @ 2240f4a :thumb
	cmp     r0, #0x40
	bhi     branch_2240f52
	beq     branch_2240f56
	b       branch_2240fb2
@ 0x2240f52

.thumb
branch_2240f52: @ 2240f52 :thumb
	cmp     r0, #0x80
	bne     branch_2240fb2
.thumb
branch_2240f56: @ 2240f56 :thumb
	mov     r0, #0x1
	ldsb    r1, [r4, r0]
	ldr     r2, [pc, #0x64] @ 0x2240fc0, (=#0x2253240)
	lsl     r0, r1, #1
	add     r3, r1, r0
	mov     r0, #0x2
	ldsb    r1, [r4, r0]
	add     r0, r2, r3
	ldrb    r1, [r1, r0]
	ldr     r0, [r5, #0x14]
	lsl     r3, r1, #2
	add     r0, r0, r3
	ldrb    r0, [r0, #0x1]
	sub     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x11
	lsl     r0, r0, #16
	str     r0, [sp, #0x4]
	ldr     r4, [r5, #0x14]
	mov     r0, #0xc5
	add     r2, r4, r3
	ldrb    r1, [r2, #0x2]
	ldrb    r2, [r2, #0x3]
	ldrb    r3, [r4, r3]
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	add     r1, #0x8
	sub     r2, #0x8
	add     r3, #0x8
	bl      Function_2252c78
	b       branch_2240fb2
@ 0x2240f96

.thumb
branch_2240f96: @ 2240f96 :thumb
	mov     r0, #0x1
	ldsb    r1, [r4, r0]
	ldr     r2, [pc, #0x24] @ 0x2240fc0, (=#0x2253240)
	add     sp, #0x10
	lsl     r0, r1, #1
	add     r3, r1, r0
	mov     r0, #0x2
	ldsb    r1, [r4, r0]
	add     r0, r2, r3
	ldrb    r0, [r1, r0]
	pop     {r3-r7,pc}
@ 0x2240fac

.thumb
branch_2240fac: @ 2240fac :thumb
	add     sp, #0x10
	mov     r0, #0x3
	pop     {r3-r7,pc}
@ 0x2240fb2

.thumb
branch_2240fb2: @ 2240fb2 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2240fba


.align 2


.word 0x2253558 @ 0x2240fbc
.word 0x2253240 @ 0x2240fc0
.thumb
Function_2240fc4: @ 2240fc4 :thumb
	push    {r4-r7}
	cmp     r1, #0x3
	beq     branch_2240ffc
	mov     r2, #0x31
	lsl     r2, r2, #4
	add     r3, r0, r2
	mov     r5, #0x0
	ldr     r0, [pc, #0x2c] @ 0x2241000, (=#0x2253240)
	mov     r2, r5
	b       branch_2240ff8
@ 0x2240fd8

.thumb
branch_2240fd8: @ 2240fd8 :thumb
	lsl     r6, r5, #1
	add     r6, r5, r6
	mov     r4, r2
	add     r7, r0, r6
	b       branch_2240ff2
@ 0x2240fe2

.thumb
branch_2240fe2: @ 2240fe2 :thumb
	ldrb    r6, [r4, r7]
	cmp     r1, r6
	bne     branch_2240ff0
	strb    r4, [r3, #0x2]
	strb    r5, [r3, #0x3]
	pop     {r4-r7}
	bx      lr
@ 0x2240ff0

.thumb
branch_2240ff0: @ 2240ff0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_2240ff2: @ 2240ff2 :thumb
	cmp     r4, #0x3
	blt     branch_2240fe2
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2240ff8: @ 2240ff8 :thumb
	cmp     r5, #0x2
	blt     branch_2240fd8
.thumb
branch_2240ffc: @ 2240ffc :thumb
	pop     {r4-r7}
	bx      lr
@ 0x2241000

.word 0x2253240 @ 0x2241000
.thumb
Function_2241004: @ 2241004 :thumb
	push    {r3-r7,lr}
	mov     r7, #0x2
	mov     r4, r1
	ldsb    r1, [r0, r7]
	mov     r5, #0x1
	mov     r6, r2
	str     r1, [sp, #0x0]
	ldsb    r1, [r0, r5]
	mov     r2, r3
	mov     r3, #0x40
	mov     r12, r1
	ldr     r1, [pc, #0x1c0] @ 0x22411dc, (=#0x21bf67c)
	ldr     r1, [r1, #0x48]
	tst     r3, r1
	beq     branch_2241072
	mov     r1, r12
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r0, #0x1]
	ldsb    r1, [r0, r5]
	cmp     r1, #0x0
	bge     branch_2241032
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
.thumb
branch_2241032: @ 2241032 :thumb
	cmp     r2, #0x0
	beq     branch_224106e
	mov     r3, #0x1
	mov     r1, #0x2
	ldsb    r3, [r0, r3]
	ldsb    r1, [r0, r1]
	mul     r3, r4
	add     r1, r1, r3
	ldrb    r1, [r2, r1]
	cmp     r1, #0xff
	bne     branch_224106e
	add     r1, r0, #0x1
	mov     r7, #0x0
	mov     r6, #0x1
.thumb
branch_224104e: @ 224104e :thumb
	ldsb    r3, [r1, r7]
	.hword  0x1e5b @ sub r3, r3, #0x1
	strb    r3, [r1, #0x0]
	ldsb    r3, [r0, r6]
	cmp     r3, #0x0
	bge     branch_2241060
	mov     r1, r12
	strb    r1, [r0, #0x1]
	b       branch_224106e
@ 0x2241060

.thumb
branch_2241060: @ 2241060 :thumb
	mov     r5, #0x2
	ldsb    r5, [r0, r5]
	mul     r3, r4
	add     r5, r2, r5
	ldrb    r3, [r3, r5]
	cmp     r3, #0xff
	beq     branch_224104e
.thumb
branch_224106e: @ 224106e :thumb
	mov     r5, #0x40
	b       branch_2241186
@ 0x2241072

.thumb
branch_2241072: @ 2241072 :thumb
	mov     r3, #0x80
	tst     r3, r1
	beq     branch_22410c8
	mov     r1, r12
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x1]
	ldsb    r1, [r0, r5]
	cmp     r1, r6
	blt     branch_2241088
	.hword  0x1e71 @ sub r1, r6, #0x1
	strb    r1, [r0, #0x1]
.thumb
branch_2241088: @ 2241088 :thumb
	cmp     r2, #0x0
	beq     branch_22410c4
	mov     r3, #0x1
	mov     r1, #0x2
	ldsb    r3, [r0, r3]
	ldsb    r1, [r0, r1]
	mul     r3, r4
	add     r1, r1, r3
	ldrb    r1, [r2, r1]
	cmp     r1, #0xff
	bne     branch_22410c4
	add     r1, r0, #0x1
	mov     r7, #0x1
.thumb
branch_22410a2: @ 22410a2 :thumb
	mov     r3, #0x0
	ldsb    r3, [r1, r3]
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r3, [r1, #0x0]
	ldsb    r3, [r0, r7]
	cmp     r3, r6
	blt     branch_22410b6
	mov     r1, r12
	strb    r1, [r0, #0x1]
	b       branch_22410c4
@ 0x22410b6

.thumb
branch_22410b6: @ 22410b6 :thumb
	mov     r5, #0x2
	ldsb    r5, [r0, r5]
	mul     r3, r4
	add     r5, r2, r5
	ldrb    r3, [r3, r5]
	cmp     r3, #0xff
	beq     branch_22410a2
.thumb
branch_22410c4: @ 22410c4 :thumb
	mov     r5, #0x80
	b       branch_2241186
@ 0x22410c8

.thumb
branch_22410c8: @ 22410c8 :thumb
	mov     r3, #0x20
	tst     r3, r1
	beq     branch_224111e
	ldr     r1, [sp, #0x0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r0, #0x2]
	ldsb    r1, [r0, r7]
	cmp     r1, #0x0
	bge     branch_22410de
	mov     r1, #0x0
	strb    r1, [r0, #0x2]
.thumb
branch_22410de: @ 22410de :thumb
	cmp     r2, #0x0
	beq     branch_224111a
	mov     r3, #0x1
	mov     r1, #0x2
	ldsb    r3, [r0, r3]
	ldsb    r1, [r0, r1]
	mul     r3, r4
	add     r1, r1, r3
	ldrb    r1, [r2, r1]
	cmp     r1, #0xff
	bne     branch_224111a
	add     r5, r0, #0x2
	mov     r7, #0x0
	mov     r6, #0x2
.thumb
branch_22410fa: @ 22410fa :thumb
	ldsb    r1, [r5, r7]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r5, #0x0]
	ldsb    r3, [r0, r6]
	cmp     r3, #0x0
	bge     branch_224110c
	ldr     r1, [sp, #0x0]
	strb    r1, [r0, #0x2]
	b       branch_224111a
@ 0x224110c

.thumb
branch_224110c: @ 224110c :thumb
	mov     r1, #0x1
	ldsb    r1, [r0, r1]
	add     r3, r2, r3
	mul     r1, r4
	ldrb    r1, [r1, r3]
	cmp     r1, #0xff
	beq     branch_22410fa
.thumb
branch_224111a: @ 224111a :thumb
	mov     r5, #0x20
	b       branch_2241186
@ 0x224111e

.thumb
branch_224111e: @ 224111e :thumb
	mov     r3, #0x10
	tst     r3, r1
	beq     branch_2241174
	ldr     r1, [sp, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x2]
	ldsb    r1, [r0, r7]
	cmp     r1, r4
	blt     branch_2241134
	.hword  0x1e61 @ sub r1, r4, #0x1
	strb    r1, [r0, #0x2]
.thumb
branch_2241134: @ 2241134 :thumb
	cmp     r2, #0x0
	beq     branch_2241170
	mov     r3, #0x1
	mov     r1, #0x2
	ldsb    r3, [r0, r3]
	ldsb    r1, [r0, r1]
	mul     r3, r4
	add     r1, r1, r3
	ldrb    r1, [r2, r1]
	cmp     r1, #0xff
	bne     branch_2241170
	add     r5, r0, #0x2
	mov     r7, #0x0
	mov     r6, #0x2
.thumb
branch_2241150: @ 2241150 :thumb
	ldsb    r1, [r5, r7]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r5, #0x0]
	ldsb    r3, [r0, r6]
	cmp     r3, r4
	blt     branch_2241162
	ldr     r1, [sp, #0x0]
	strb    r1, [r0, #0x2]
	b       branch_2241170
@ 0x2241162

.thumb
branch_2241162: @ 2241162 :thumb
	mov     r1, #0x1
	ldsb    r1, [r0, r1]
	add     r3, r2, r3
	mul     r1, r4
	ldrb    r1, [r1, r3]
	cmp     r1, #0xff
	beq     branch_2241150
.thumb
branch_2241170: @ 2241170 :thumb
	mov     r5, #0x10
	b       branch_2241186
@ 0x2241174

.thumb
branch_2241174: @ 2241174 :thumb
	mov     r3, r1
	tst     r3, r5
	bne     branch_2241186
	tst     r1, r7
	beq     branch_2241182
	mov     r5, r7
	b       branch_2241186
@ 0x2241182

.thumb
branch_2241182: @ 2241182 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2241186

.thumb
branch_2241186: @ 2241186 :thumb
	cmp     r2, #0x0
	beq     branch_22411b0
	mov     r1, r12
	mov     r3, r4
	mul     r3, r1
	ldr     r1, [sp, #0x0]
	add     r1, r1, r3
	mov     r3, #0x2
	ldsb    r6, [r0, r3]
	mov     r3, #0x1
	ldsb    r3, [r0, r3]
	ldrb    r1, [r2, r1]
	mul     r3, r4
	add     r3, r6, r3
	ldrb    r2, [r2, r3]
	cmp     r1, r2
	bne     branch_22411b0
	ldr     r1, [sp, #0x0]
	strb    r1, [r0, #0x2]
	mov     r1, r12
	strb    r1, [r0, #0x1]
.thumb
branch_22411b0: @ 22411b0 :thumb
	mov     r1, #0x2
	ldsb    r2, [r0, r1]
	ldr     r1, [sp, #0x0]
	cmp     r2, r1
	bne     branch_22411c4
	mov     r1, #0x1
	ldsb    r1, [r0, r1]
	mov     r0, r12
	cmp     r1, r0
	beq     branch_22411cc
.thumb
branch_22411c4: @ 22411c4 :thumb
	ldr     r0, [pc, #0x18] @ 0x22411e0, (=#0x5dc)
	bl      Function_2005748
	b       branch_22411d6
@ 0x22411cc

.thumb
branch_22411cc: @ 22411cc :thumb
	mov     r0, #0xf0
	tst     r0, r5
	beq     branch_22411d6
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22411d6

.thumb
branch_22411d6: @ 22411d6 :thumb
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x22411da


.align 2


.word 0x21bf67c @ 0x22411dc
.word 0x5dc @ 0x22411e0

.incbin "./baserom/overlay/overlay_0017.bin", 0x60a4, 0x2241270 - 0x22411e4


.thumb
Function_2241270: @ 2241270 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r3, #0x2
	str     r3, [sp, #0x4]
	ldr     r3, [pc, #0x38] @ 0x22412b8, (=#0x80fb)
	mov     r5, r0
	str     r3, [sp, #0x8]
	mov     r3, #0x2a
	mov     r4, r1
	mov     r6, r2
	bl      Function_200cc3c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x22412bc, (=#0x80f6)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x2b
	bl      Function_200ce24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x22412bc, (=#0x80f6)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x2c
	bl      Function_200ce54
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x22412b8

.word 0x80fb @ 0x22412b8
.word 0x80f6 @ 0x22412bc
.thumb
Function_22412c0: @ 22412c0 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	ldr     r2, [pc, #0x24] @ 0x22412ec, (=#0x225364c)
	bl      Function_200ce6c
	mov     r1, #0x58
	mul     r1, r5
	add     r1, #0x28
	lsl     r1, r1, #16
	mov     r3, #0x11
	mov     r4, r0
	asr     r1, r1, #16
	mov     r2, #0x60
	lsl     r3, r3, #16
	bl      Function_200d500
	ldr     r0, [r4, #0x0]
	bl      Function_200d324
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22412ea


.align 2


.word 0x225364c @ 0x22412ec

.incbin "./baserom/overlay/overlay_0017.bin", 0x61b0, 0x2241314 - 0x22412f0


.thumb
Function_2241314: @ 2241314 :thumb
	ldr     r3, [pc, #0x0] @ 0x2241318, (=#0x200d0f5)
	bx      r3
@ 0x2241318

.word 0x200d0f5 @ 0x2241318
.thumb
Function_224131c: @ 224131c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r3, #0x2
	str     r3, [sp, #0x4]
	ldr     r3, [pc, #0x38] @ 0x2241364, (=#0x80fa)
	mov     r5, r0
	str     r3, [sp, #0x8]
	mov     r3, #0x2d
	mov     r4, r1
	mov     r6, r2
	bl      Function_200cc3c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x2241368, (=#0x80f5)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x2e
	bl      Function_200ce24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x2241368, (=#0x80f5)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x2f
	bl      Function_200ce54
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2241364

.word 0x80fa @ 0x2241364
.word 0x80f5 @ 0x2241368
.thumb
Function_224136c: @ 224136c :thumb
	push    {r4-r6,lr}
	mov     r5, r2
	ldr     r2, [sp, #0x10]
	mov     r6, r3
	cmp     r2, #0x0
	blt     branch_2241380
	ldr     r2, [pc, #0x28] @ 0x22413a4, (=#0x2253618)
	bl      Function_200ce6c
	b       branch_2241386
@ 0x2241380

.thumb
branch_2241380: @ 2241380 :thumb
	ldr     r2, [pc, #0x24] @ 0x22413a8, (=#0x2253680)
	bl      Function_200ce6c
.thumb
branch_2241386: @ 2241386 :thumb
	mov     r4, r0
	lsl     r1, r5, #16
	lsl     r2, r6, #16
	mov     r3, #0x11
	mov     r0, r4
	asr     r1, r1, #16
	asr     r2, r2, #16
	lsl     r3, r3, #16
	bl      Function_200d500
	ldr     r0, [r4, #0x0]
	bl      Function_200d324
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x22413a4

.word 0x2253618 @ 0x22413a4
.word 0x2253680 @ 0x22413a8
.thumb
Function_22413ac: @ 22413ac :thumb
	ldr     r3, [pc, #0x0] @ 0x22413b0, (=#0x200d0f5)
	bx      r3
@ 0x22413b0

.word 0x200d0f5 @ 0x22413b0

.incbin "./baserom/overlay/overlay_0017.bin", 0x6274, 0x22413e4 - 0x22413b4


.thumb
Function_22413e4: @ 22413e4 :thumb
	push    {r3-r7,lr}
	ldr     r0, [r0, #0x30]
	mov     r5, r1
	mov     r1, #0x2
	mov     r4, r2
	bl      Function_2019fe4
	mov     r1, #0xc0
	mul     r1, r5
	lsl     r1, r1, #1
	mov     r2, #0x0
	ldr     r6, [pc, #0x28] @ 0x2241424, (=#0xfff)
	add     r0, r0, r1
	mov     r3, r2
	lsl     r4, r4, #12
.thumb
branch_2241402: @ 2241402 :thumb
	lsl     r5, r3, #1
	mov     r1, #0x0
	add     r5, r0, r5
.thumb
branch_2241408: @ 2241408 :thumb
	ldrh    r7, [r5, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	and     r7, r6
	orr     r7, r4
	strh    r7, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r1, #0xa
	blt     branch_2241408
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x20
	cmp     r2, #0x6
	blt     branch_2241402
	pop     {r3-r7,pc}
@ 0x2241422


.align 2


.word 0xfff @ 0x2241424
.thumb
Function_2241428: @ 2241428 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, #0x0
	ldr     r6, [pc, #0x24] @ 0x2241454, (=#0x22536b4)
	ldr     r7, [pc, #0x24] @ 0x2241458, (=#0x231)
	b       branch_2241444
@ 0x2241434

.thumb
branch_2241434: @ 2241434 :thumb
	add     r2, r5, r4
	ldrb    r2, [r2, r7]
	mov     r0, r5
	mov     r1, r4
	ldrb    r2, [r6, r2]
	bl      Function_22413e4
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_2241444: @ 2241444 :thumb
	cmp     r4, #0x4
	blt     branch_2241434
	ldr     r0, [r5, #0x30]
	mov     r1, #0x2
	bl      Function_201c3c0
	pop     {r3-r7,pc}
@ 0x2241452


.align 2


.word 0x22536b4 @ 0x2241454
.word 0x231 @ 0x2241458

.incbin "./baserom/overlay/overlay_0017.bin", 0x631c, 0x22415e4 - 0x224145c


.thumb
Function_22415e4: @ 22415e4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	mov     r7, r0
	mov     r0, r6
	str     r0, [sp, #0x14]
	add     r0, #0x58
	ldr     r4, [sp, #0x1c]
	str     r6, [sp, #0x18]
	str     r0, [sp, #0x14]
	mov     r5, r6
.thumb
branch_22415fe: @ 22415fe :thumb
	ldr     r0, [sp, #0x18]
	ldr     r0, [r0, #0x58]
	cmp     r0, #0x0
	beq     branch_224160a
	bl      Function_2022974
.thumb
branch_224160a: @ 224160a :thumb
	mov     r1, #0x32
	mov     r0, #0x15
	lsl     r1, r1, #6
	bl      Function_2018144
	ldr     r1, [sp, #0x18]
	mov     r3, #0x0
	str     r0, [r1, #0x58]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x0]
	mov     r0, #0x15
	str     r0, [sp, #0x4]
	mov     r0, #0xd8
	sub     r0, r0, r7
	str     r0, [sp, #0x8]
	mov     r0, #0x70
	sub     r0, r0, r7
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xac] @ 0x22416e0, (=#0xfffffe00)
	str     r0, [sp, #0x10]
	ldr     r2, [r6, #0x0]
	ldr     r0, [r6, #0x4]
	ldr     r2, [r2, r4]
	bl      Function_2095484
	str     r0, [r5, #0x8]
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_2007dec
	ldr     r0, [r5, #0x8]
	mov     r1, #0x25
	mov     r2, #0x1
	bl      Function_2007dec
	ldr     r0, [r6, #0x0]
	mov     r1, #0x5
	ldr     r0, [r0, r4]
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x20]
	ldr     r0, [r6, #0x0]
	mov     r1, #0x70
	ldr     r0, [r0, r4]
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r0
	ldr     r0, [sp, #0x20]
	bl      0x22384f0
	cmp     r0, #0x1
	bne     branch_2241682
	ldr     r0, [r5, #0x8]
	mov     r1, #0x23
	mov     r2, #0x1
	bl      Function_2007dec
.thumb
branch_2241682: @ 2241682 :thumb
	ldr     r0, [sp, #0x18]
	add     r7, #0x20
	add     r0, #0x10
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r0, #0x10
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x1c]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x1c]
	cmp     r0, #0x4
	blt     branch_22415fe
	mov     r0, r6
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22416ac
	bl      Function_2022974
.thumb
branch_22416ac: @ 22416ac :thumb
	mov     r1, #0x32
	mov     r0, #0x15
	lsl     r1, r1, #6
	bl      Function_2018144
	mov     r1, r6
	add     r1, #0x98
	str     r0, [r1, #0x0]
	mov     r0, r6
	mov     r2, #0x32
	ldr     r1, [r6, #0x60]
	add     r0, #0xa0
	str     r1, [r0, #0x0]
	mov     r0, r6
	ldr     r1, [r6, #0x5c]
	add     r0, #0x9c
	str     r1, [r0, #0x0]
	add     r6, #0x98
	ldr     r1, [r6, #0x0]
	mov     r0, #0x0
	lsl     r2, r2, #6
	blx     MIi_CpuClear32
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x22416de


.align 2


.word 0xfffffe00 @ 0x22416e0

.incbin "./baserom/overlay/overlay_0017.bin", 0x65a4, 0x2241720 - 0x22416e4


.thumb
Function_2241720: @ 2241720 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x5c
	ldr     r5, [sp, #0x70]
	mov     r6, r1
	str     r0, [sp, #0x18]
	str     r2, [sp, #0x1c]
	ldr     r4, [sp, #0x74]
	cmp     r5, #0x0
	beq     branch_2241738
	cmp     r5, #0x1
	beq     branch_2241746
	b       branch_2241754
@ 0x2241738

.thumb
branch_2241738: @ 2241738 :thumb
	mov     r0, #0x20
	str     r0, [sp, #0x24]
	mov     r0, #0x1e
	mov     r3, #0x1f
	mov     r7, #0x1
	str     r0, [sp, #0x20]
	b       branch_2241760
@ 0x2241746

.thumb
branch_2241746: @ 2241746 :thumb
	mov     r0, #0x26
	str     r0, [sp, #0x24]
	mov     r0, #0x24
	mov     r3, #0x25
	mov     r7, #0x3
	str     r0, [sp, #0x20]
	b       branch_2241760
@ 0x2241754

.thumb
branch_2241754: @ 2241754 :thumb
	mov     r0, #0x23
	str     r0, [sp, #0x24]
	mov     r0, #0x21
	mov     r3, #0x22
	mov     r7, #0x2
	str     r0, [sp, #0x20]
.thumb
branch_2241760: @ 2241760 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xa0] @ 0x2241808, (=#0x80e9)
	ldr     r1, [sp, #0x1c]
	add     r0, r5, r0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	bl      Function_200cc3c
	str     r4, [sp, #0x0]
	str     r7, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x84] @ 0x224180c, (=#0x80ea)
	ldr     r3, [sp, #0x1c]
	add     r0, r5, r0
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	mov     r1, #0x2
	mov     r2, r6
	bl      Function_200cdc4
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x6c] @ 0x2241808, (=#0x80e9)
	ldr     r1, [sp, #0x1c]
	add     r0, r5, r0
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0x24]
	mov     r0, r6
	mov     r2, r4
	bl      Function_200ce24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x54] @ 0x2241808, (=#0x80e9)
	ldr     r1, [sp, #0x1c]
	add     r0, r5, r0
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	mov     r0, r6
	mov     r2, r4
	bl      Function_200ce54
	ldr     r4, [pc, #0x4c] @ 0x2241810, (=#0x22538bc)
	add     r3, sp, #0x28
	mov     r2, #0x6
.thumb
branch_22417c8: @ 22417c8 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_22417c8
	ldr     r0, [r4, #0x0]
	add     r2, sp, #0x28
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0x30] @ 0x2241808, (=#0x80e9)
	add     r1, r5, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r0, r5, r0
	str     r0, [sp, #0x40]
	str     r1, [sp, #0x3c]
	str     r1, [sp, #0x44]
	str     r1, [sp, #0x48]
	lsl     r1, r5, #5
	add     r1, #0x60
	add     r0, sp, #0x28
	strh    r1, [r0, #0x0]
	mov     r1, #0x28
	strh    r1, [r0, #0x2]
	ldr     r1, [sp, #0x1c]
	mov     r0, r6
	bl      Function_200ce6c
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_200d324
	mov     r0, r4
	add     sp, #0x5c
	pop     {r4-r7,pc}
@ 0x2241808

.word 0x80e9 @ 0x2241808
.word 0x80ea @ 0x224180c
.word 0x22538bc @ 0x2241810

.incbin "./baserom/overlay/overlay_0017.bin", 0x66d4, 0x2241854 - 0x2241814


.thumb
Function_2241854: @ 2241854 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x40] @ 0x22418a0, (=#0x80ec)
	mov     r6, r3
	mov     r4, r2
	mov     r5, r1
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, #0x27
	bl      Function_200cc3c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x24] @ 0x22418a0, (=#0x80ec)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x28
	bl      Function_200ce24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x10] @ 0x22418a0, (=#0x80ec)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x29
	bl      Function_200ce54
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x22418a0

.word 0x80ec @ 0x22418a0
.thumb
Function_22418a4: @ 22418a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	ldr     r4, [pc, #0x4c] @ 0x22418f8, (=#0x22536f0)
	mov     r6, r2
	mov     r3, r0
	mov     r7, r1
	ldmia   r4!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x0]
	ldr     r5, [pc, #0x40] @ 0x22418fc, (=#0x2253820)
	str     r0, [r2, #0x0]
	add     r4, sp, #0xc
	mov     r2, #0x6
.thumb
branch_22418c0: @ 22418c0 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_22418c0
	ldr     r0, [r5, #0x0]
	lsl     r1, r6, #5
	str     r0, [r4, #0x0]
	add     r1, #0x60
	add     r0, sp, #0x0
	strh    r1, [r0, #0xc]
	mov     r1, #0x20
	strh    r1, [r0, #0xe]
	lsl     r1, r6, #2
	add     r0, sp, #0x0
	ldr     r0, [r0, r1]
	mov     r1, r7
	str     r0, [sp, #0x18]
	mov     r0, r3
	add     r2, sp, #0xc
	bl      Function_200ce6c
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_200d324
	mov     r0, r4
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x22418f8

.word 0x22536f0 @ 0x22418f8
.word 0x2253820 @ 0x22418fc

.incbin "./baserom/overlay/overlay_0017.bin", 0x67c0, 0x2241928 - 0x2241900


.thumb
Function_2241928: @ 2241928 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	str     r2, [sp, #0x8]
	mov     r6, r1
	ldr     r0, [r7, #0x50]
	ldr     r1, [r7, #0x18]
	ldr     r2, [r7, #0x1c]
	ldr     r3, [sp, #0x8]
	bl      Function_2241854
	mov     r4, #0x0
	mov     r5, r7
	add     r6, #0xd0
.thumb
branch_2241944: @ 2241944 :thumb
	ldr     r0, [r7, #0x18]
	ldr     r1, [r7, #0x1c]
	mov     r2, r4
	bl      Function_22418a4
	mov     r1, r5
	add     r1, #0xb4
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x8]
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0x50]
	ldr     r1, [r7, #0x18]
	ldr     r2, [r7, #0x1c]
	mov     r3, r6
	bl      Function_2241720
	mov     r1, r5
	add     r1, #0xa8
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r0, [r1, #0x0]
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r6, #0x8
	cmp     r4, #0x3
	blt     branch_2241944
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224197a


.incbin "./baserom/overlay/overlay_0017.bin", 0x683a, 0x22419ac - 0x224197a


.thumb
Function_22419ac: @ 22419ac :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x40] @ 0x22419f8, (=#0x80f5)
	mov     r6, r3
	mov     r4, r2
	mov     r5, r1
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, #0xe
	bl      Function_200cc3c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x22419fc, (=#0x80f3)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0xd
	bl      Function_200ce24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x22419fc, (=#0x80f3)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0xc
	bl      Function_200ce54
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x22419f8

.word 0x80f5 @ 0x22419f8
.word 0x80f3 @ 0x22419fc

.incbin "./baserom/overlay/overlay_0017.bin", 0x68c0, 0x2241a24 - 0x2241a00


.thumb
Function_2241a24: @ 2241a24 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x34
	ldr     r4, [pc, #0x34] @ 0x2241a60, (=#0x22537b8)
	mov     r5, r0
	add     r3, sp, #0x0
	mov     r2, #0x6
.thumb
branch_2241a30: @ 2241a30 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2241a30
	ldr     r0, [r4, #0x0]
	add     r2, sp, #0x0
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x1c]
	bl      Function_200ce6c
	mov     r4, r0
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x0]
	bl      Function_200d324
	mov     r0, #0x5f
	lsl     r0, r0, #2
	str     r4, [r5, r0]
	add     sp, #0x34
	pop     {r4,r5,pc}
@ 0x2241a5e


.align 2


.word 0x22537b8 @ 0x2241a60

.incbin "./baserom/overlay/overlay_0017.bin", 0x6924, 0x2241d94 - 0x2241a64


.thumb
Function_2241d94: @ 2241d94 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	mov     r6, r1
	mov     r4, r2
	cmp     r0, #0x0
	beq     branch_2241daa
	bl      Function_2022974
.thumb
branch_2241daa: @ 2241daa :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x68] @ 0x2241e1c, (=#0x80ed)
	mov     r2, r4
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x1c]
	mov     r3, #0x14
	bl      Function_200cc3c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x54] @ 0x2241e1c, (=#0x80ed)
	mov     r2, r4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x1c]
	mov     r3, #0x13
	bl      Function_200ce24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x40] @ 0x2241e1c, (=#0x80ed)
	mov     r2, r4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x1c]
	mov     r3, #0x12
	bl      Function_200ce54
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x1c]
	ldr     r2, [pc, #0x30] @ 0x2241e20, (=#0x2253854)
	bl      Function_200ce6c
	mov     r1, r5
	add     r1, #0xc0
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	lsl     r1, r6, #5
	add     r5, #0xc0
	add     r1, #0x60
	lsl     r1, r1, #16
	ldr     r0, [r5, #0x0]
	asr     r1, r1, #16
	mov     r2, #0x38
	bl      Function_200d4c4
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2241e1a


.align 2


.word 0x80ed @ 0x2241e1c
.word 0x2253854 @ 0x2241e20

.incbin "./baserom/overlay/overlay_0017.bin", 0x6ce4, 0x2241e58 - 0x2241e24


.thumb
Function_2241e58: @ 2241e58 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	ldr     r3, [pc, #0x3c] @ 0x2241ea0, (=#0x80ee)
	mov     r5, r0
	str     r3, [sp, #0x8]
	mov     r3, #0x11
	mov     r4, r1
	mov     r6, r2
	bl      Function_200cc3c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x2241ea0, (=#0x80ee)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x10
	bl      Function_200ce24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x2241ea0, (=#0x80ee)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0xf
	bl      Function_200ce54
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2241e9e


.align 2


.word 0x80ee @ 0x2241ea0

.incbin "./baserom/overlay/overlay_0017.bin", 0x6d64, 0x2241ec4 - 0x2241ea4


.thumb
Function_2241ec4: @ 2241ec4 :thumb
	push    {r4-r6,lr}
	mov     r2, #0x18
	mov     r4, #0x0
	mul     r2, r1
	add     r5, r0, r2
	mov     r6, r4
.thumb
branch_2241ed0: @ 2241ed0 :thumb
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2241ee4
	bl      Function_200d0f4
	mov     r0, r5
	add     r0, #0xc4
	str     r6, [r0, #0x0]
.thumb
branch_2241ee4: @ 2241ee4 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_2241ed0
	pop     {r4-r6,pc}
@ 0x2241eee


.align 2, 0


.thumb
Function_2241ef0: @ 2241ef0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_2241ef6: @ 2241ef6 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2241ec4
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_2241ef6
	pop     {r3-r5,pc}
@ 0x2241f06


.incbin "./baserom/overlay/overlay_0017.bin", 0x6dc6, 0x2242154 - 0x2241f06


.thumb
Function_2242154: @ 2242154 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	ldr     r3, [pc, #0x78] @ 0x22421d8, (=#0x80f0)
	mov     r5, r0
	str     r3, [sp, #0x8]
	mov     r3, #0x1a
	mov     r4, r1
	mov     r6, r2
	bl      Function_200cc3c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x64] @ 0x22421d8, (=#0x80f0)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x19
	bl      Function_200ce24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x50] @ 0x22421d8, (=#0x80f0)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x18
	bl      Function_200ce54
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x3c] @ 0x22421dc, (=#0x80ef)
	mov     r1, r4
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x1d
	bl      Function_200cc3c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x22421dc, (=#0x80ef)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x1c
	bl      Function_200ce24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x22421dc, (=#0x80ef)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x1b
	bl      Function_200ce54
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x22421d8

.word 0x80f0 @ 0x22421d8
.word 0x80ef @ 0x22421dc

.incbin "./baserom/overlay/overlay_0017.bin", 0x70a0, 0x22426e8 - 0x22421e0


.thumb
Function_22426e8: @ 22426e8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	mov     r0, #0x0
	strb    r0, [r7, #0x0]
	mov     r0, #0x15
	mov     r1, #0x10
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x10
	blx     MI_CpuFill8
	str     r5, [r4, #0x0]
	mov     r2, #0xfa
	strb    r6, [r4, #0xd]
	ldr     r0, [pc, #0xc] @ 0x224271c, (=#0x2242721)
	mov     r1, r4
	lsl     r2, r2, #2
	str     r7, [r4, #0x4]
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x224271a


.align 2


.word 0x2242721 @ 0x224271c

.incbin "./baserom/overlay/overlay_0017.bin", 0x75e0, 0x2242da8 - 0x2242720


.thumb
Function_2242da8: @ 2242da8 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x34
	mov     r1, #0xff
	bl      Function_201ada4
	add     r4, #0x34
	mov     r0, r4
	bl      Function_201a954
	pop     {r4,pc}
@ 0x2242dbe


.incbin "./baserom/overlay/overlay_0017.bin", 0x7c7e, 0x2242ee4 - 0x2242dbe


.thumb
Function_2242ee4: @ 2242ee4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0xc
	mov     r1, #0x15
	bl      Function_2023790
	str     r0, [sp, #0x30]
	lsl     r0, r4, #2
	ldr     r1, [r5, #0xc]
	str     r0, [sp, #0x2c]
	ldr     r0, [r1, r0]
	ldr     r2, [sp, #0x30]
	mov     r1, #0x77
	bl      GetPkmnData
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x88] @ 0x2242f94, (=#0x123)
	ldrb    r0, [r1, r0]
	cmp     r4, r0
	bne     branch_2242f14
	ldr     r6, [pc, #0x84] @ 0x2242f98, (=#0x10200)
	b       branch_2242f16
@ 0x2242f14

.thumb
branch_2242f14: @ 2242f14 :thumb
	ldr     r6, [pc, #0x84] @ 0x2242f9c, (=#0x50600)
.thumb
branch_2242f16: @ 2242f16 :thumb
	mov     r0, #0x14
	mov     r7, r4
	mul     r7, r0
	mov     r0, #0x77
	lsl     r0, r0, #2
	add     r0, r5, r0
	add     r0, r0, r7
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x30]
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r6, [sp, #0xc]
	ldr     r0, [pc, #0x6c] @ 0x2242fa0, (=#0x80ed)
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x14]
	str     r1, [sp, #0x18]
	str     r1, [sp, #0x1c]
	str     r1, [sp, #0x20]
	str     r1, [sp, #0x24]
	mov     r0, #0xf
	str     r0, [sp, #0x28]
	ldr     r1, [r5, #0x30]
	ldr     r2, [r5, #0x28]
	ldr     r3, [r5, #0x60]
	mov     r0, #0x15
	bl      Function_223f1e8
	mov     r0, #0x63
	lsl     r0, r0, #2
	add     r0, r5, r0
	add     r0, r0, r7
	str     r0, [sp, #0x0]
	ldr     r1, [r5, #0x0]
	ldr     r0, [sp, #0x2c]
	add     r0, r1, r0
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r6, [sp, #0xc]
	ldr     r0, [pc, #0x34] @ 0x2242fa0, (=#0x80ed)
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x14]
	str     r1, [sp, #0x18]
	str     r1, [sp, #0x1c]
	str     r1, [sp, #0x20]
	str     r1, [sp, #0x24]
	mov     r0, #0xf
	str     r0, [sp, #0x28]
	ldr     r1, [r5, #0x30]
	ldr     r2, [r5, #0x28]
	ldr     r3, [r5, #0x60]
	mov     r0, #0x15
	bl      Function_223f1e8
	ldr     r0, [sp, #0x30]
	bl      Function_20237bc
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2242f92


.align 2


.word 0x123 @ 0x2242f94
.word 0x10200 @ 0x2242f98
.word 0x50600 @ 0x2242f9c
.word 0x80ed @ 0x2242fa0
.thumb
Function_2242fa4: @ 2242fa4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_2242faa: @ 2242faa :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2242ee4
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_2242faa
	mov     r0, r5
	bl      Function_2242fe8
	pop     {r3-r5,pc}
@ 0x2242fc0


.incbin "./baserom/overlay/overlay_0017.bin", 0x7e80, 0x2242fe8 - 0x2242fc0


.thumb
Function_2242fe8: @ 2242fe8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r1, #0x77
	lsl     r1, r1, #2
	str     r0, [sp, #0x0]
	add     r0, r0, r1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	sub     r1, #0x50
	add     r0, r0, r1
	mov     r4, #0x0
	mov     r6, #0xc
	mov     r5, #0x1c
	str     r0, [sp, #0x8]
.thumb
branch_2243004: @ 2243004 :thumb
	ldr     r0, [sp, #0x0]
	mov     r2, r6
	add     r1, r0, r4
	ldr     r0, [pc, #0x30] @ 0x224303c, (=#0x231)
	mov     r3, #0x0
	ldrb    r1, [r1, r0]
	mov     r0, #0x14
	mov     r7, r1
	mul     r7, r0
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	add     r0, r0, r7
	bl      Function_223f2f8
	ldr     r0, [sp, #0x8]
	mov     r1, #0x1
	add     r0, r0, r7
	mov     r2, r5
	mov     r3, #0x0
	bl      Function_223f2f8
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x30
	add     r5, #0x30
	cmp     r4, #0x4
	blt     branch_2243004
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224303c

.word 0x231 @ 0x224303c
.thumb
Function_2243040: @ 2243040 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	ldr     r3, [pc, #0x3c] @ 0x2243088, (=#0x80f1)
	mov     r5, r0
	str     r3, [sp, #0x8]
	mov     r3, #0x17
	mov     r4, r1
	mov     r6, r2
	bl      Function_200cc3c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x2243088, (=#0x80f1)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x16
	bl      Function_200ce24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x2243088, (=#0x80f1)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r6
	mov     r3, #0x15
	bl      Function_200ce54
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2243086


.align 2


.word 0x80f1 @ 0x2243088

.incbin "./baserom/overlay/overlay_0017.bin", 0x7f4c, 0x22430f8 - 0x224308c


.thumb
Function_22430f8: @ 22430f8 :thumb
	push    {r3-r7,lr}
	mov     r4, #0x0
	mov     r7, #0x16
	mov     r5, r0
	mov     r6, r4
	lsl     r7, r7, #4
.thumb
branch_2243104: @ 2243104 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_2243114
	bl      Function_200d0f4
	mov     r0, #0x16
	lsl     r0, r0, #4
	str     r6, [r5, r0]
.thumb
branch_2243114: @ 2243114 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2243104
	pop     {r3-r7,pc}
@ 0x224311e


.incbin "./baserom/overlay/overlay_0017.bin", 0x7fde, 0x2243a98 - 0x224311e


.thumb
Function_2243a98: @ 2243a98 :thumb
	cmp     r2, #0x0
	bne     branch_2243aa0
	mov     r0, #0x0
	bx      lr
@ 0x2243aa0

.thumb
branch_2243aa0: @ 2243aa0 :thumb
	lsl     r3, r1, #1
	add     r3, r0, r3
	ldrh    r3, [r3, #0x26]
	cmp     r2, r3
	bne     branch_2243abe
	lsl     r1, r1, #2
	add     r0, r0, r1
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r2, r0
	beq     branch_2243abe
	mov     r0, #0x0
	bx      lr
@ 0x2243abe

.thumb
branch_2243abe: @ 2243abe :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2243ac2


.incbin "./baserom/overlay/overlay_0017.bin", 0x8982, 0x2243af0 - 0x2243ac2


.thumb
Function_2243af0: @ 2243af0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0xb
	bl      Function_20790c4
	lsl     r1, r4, #2
	add     r2, r4, r1
	ldr     r1, [pc, #0x4] @ 0x2243b08, (=#0x22539c8)
	add     r1, r1, r2
	ldsb    r0, [r0, r1]
	pop     {r4,pc}
@ 0x2243b08

.word 0x22539c8 @ 0x2243b08

.incbin "./baserom/overlay/overlay_0017.bin", 0x89cc, 0x2243c28 - 0x2243b0c


.thumb
Function_2243c28: @ 2243c28 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r1, [pc, #0x30] @ 0x2243c60, (=#0x22539e4)
	add     r3, sp, #0x0
	str     r1, [sp, #0x0]
	mov     r1, #0x16
	strh    r1, [r3, #0x4]
	ldr     r1, [r0, #0x0]
	ldr     r2, [pc, #0x28] @ 0x2243c64, (=#0x123)
	ldrb    r1, [r1, r2]
	strb    r1, [r3, #0x6]
	.hword  0x1fd1 @ sub r1, r2, #0x7
	ldr     r4, [r0, #0x0]
	add     r2, #0x4e
	ldrb    r1, [r4, r1]
	strb    r1, [r3, #0x8]
	ldr     r1, [r0, #0x0]
	ldrb    r1, [r1, r2]
	strb    r1, [r3, #0x7]
	mov     r1, #0xc3
	lsl     r1, r1, #4
	add     r0, r0, r1
	add     r1, sp, #0x0
	bl      Function_224f18c
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2243c5e


.align 2


.word 0x22539e4 @ 0x2243c60
.word 0x123 @ 0x2243c64
.thumb
Function_2243c68: @ 2243c68 :thumb
	push    {r3,lr}
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	mov     r3, #0x0
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2243c80

.thumb
Function_2243c80: @ 2243c80 :thumb
	push    {r3,lr}
	mov     r0, #0xc3
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, r2
	mov     r2, #0x0
	mov     r3, r2
	bl      Function_224f26c
	pop     {r3,pc}
@ 0x2243c94

.thumb
Function_2243c94: @ 2243c94 :thumb
	bx      lr
@ 0x2243c96


.align 2, 0


.thumb
Function_2243c98: @ 2243c98 :thumb
	push    {r3,lr}
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	mov     r3, #0x0
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2243cb0

.thumb
Function_2243cb0: @ 2243cb0 :thumb
	push    {r3-r5,lr}
	ldr     r0, [pc, #0x24] @ 0x2243cd8, (=#0x1650)
	mov     r5, r1
	mov     r1, #0x1
	strb    r1, [r5, r0]
	ldr     r0, [r5, #0x0]
	mov     r4, r2
	bl      Function_2094edc
	cmp     r0, #0x0
	bne     branch_2243cd6
	mov     r0, #0xc3
	lsl     r0, r0, #4
	mov     r2, #0x0
	add     r0, r5, r0
	mov     r1, r4
	mov     r3, r2
	bl      Function_224f26c
.thumb
branch_2243cd6: @ 2243cd6 :thumb
	pop     {r3-r5,pc}
@ 0x2243cd8

.word 0x1650 @ 0x2243cd8
.thumb
Function_2243cdc: @ 2243cdc :thumb
	push    {r3,lr}
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	mov     r3, #0x0
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2243cf4

.thumb
Function_2243cf4: @ 2243cf4 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r0, #0x15
	mov     r1, #0x10
	mov     r5, r2
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x10
	blx     MI_CpuFill8
	str     r6, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x18] @ 0x2243d2c, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [pc, #0xc] @ 0x2243d30, (=#0x2243d35)
	bl      Function_200d9e8
	pop     {r4-r6,pc}
@ 0x2243d2a


.align 2


.word 0x7530 @ 0x2243d2c
.word 0x2243d35 @ 0x2243d30

.incbin "./baserom/overlay/overlay_0017.bin", 0x8bf4, 0x2243db4 - 0x2243d34


.thumb
Function_2243db4: @ 2243db4 :thumb
	push    {r3,lr}
	mov     r0, #0xf4
	str     r0, [sp, #0x0]
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2243dcc

.thumb
Function_2243dcc: @ 2243dcc :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r0, #0x15
	mov     r1, #0x1c
	mov     r5, r2
	mov     r6, r3
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x1c
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x38] @ 0x2243e24, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	mov     r0, r6
	add     r0, #0xe4
	ldrb    r0, [r0, #0x0]
	strb    r0, [r4, #0x18]
	mov     r0, r6
	add     r0, #0xd8
	ldrh    r0, [r0, #0x0]
	strh    r0, [r4, #0x12]
	mov     r0, r6
	add     r0, #0xda
	ldrh    r0, [r0, #0x0]
	add     r6, #0xdc
	strh    r0, [r4, #0x14]
	ldrh    r0, [r6, #0x0]
	strh    r0, [r4, #0x16]
	ldr     r0, [pc, #0xc] @ 0x2243e28, (=#0x2243e2d)
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2243e22


.align 2


.word 0x7530 @ 0x2243e24
.word 0x2243e2d @ 0x2243e28

.incbin "./baserom/overlay/overlay_0017.bin", 0x8cec, 0x2243ef8 - 0x2243e2c


.thumb
Function_2243ef8: @ 2243ef8 :thumb
	push    {r3,lr}
	mov     r0, #0xf4
	str     r0, [sp, #0x0]
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2243f10

.thumb
Function_2243f10: @ 2243f10 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r0, #0x15
	mov     r1, #0x1c
	mov     r5, r2
	mov     r7, r3
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x1c
	blx     MI_CpuFill8
	str     r6, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	mov     r2, r4
	mov     r1, #0x0
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	add     r2, #0x16
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldrb    r0, [r7, #0x0]
	strb    r0, [r4, #0x15]
	mov     r0, r6
	bl      Function_22426e8
	ldr     r0, [pc, #0x10] @ 0x2243f60, (=#0x2243f69)
	ldr     r2, [pc, #0x14] @ 0x2243f64, (=#0x7530)
	mov     r1, r4
	bl      Function_200d9e8
	mov     r0, r6
	bl      Function_2242da8
	pop     {r3-r7,pc}
@ 0x2243f5e


.align 2


.word 0x2243f69 @ 0x2243f60
.word 0x7530 @ 0x2243f64

.incbin "./baserom/overlay/overlay_0017.bin", 0x8e28, 0x22440c8 - 0x2243f68


.thumb
Function_22440c8: @ 22440c8 :thumb
	push    {r3,lr}
	mov     r0, #0xf4
	str     r0, [sp, #0x0]
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x22440e0

.thumb
Function_22440e0: @ 22440e0 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r0, #0x15
	mov     r1, #0x1c
	mov     r5, r2
	mov     r7, r3
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x1c
	blx     MI_CpuFill8
	str     r6, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldrb    r0, [r7, #0x0]
	strb    r0, [r4, #0x15]
	ldr     r1, [r6, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_20765ac
	mov     r0, #0x36
	lsl     r0, r0, #10
	str     r0, [r4, #0xc]
	mov     r0, #0x7
	lsl     r0, r0, #12
	str     r0, [r4, #0x10]
	ldr     r0, [pc, #0x8] @ 0x2244134, (=#0x224413d)
	ldr     r2, [pc, #0xc] @ 0x2244138, (=#0x7530)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2244134

.word 0x224413d @ 0x2244134
.word 0x7530 @ 0x2244138

.incbin "./baserom/overlay/overlay_0017.bin", 0x8ffc, 0x2244228 - 0x224413c


.thumb
Function_2244228: @ 2244228 :thumb
	push    {r3,lr}
	mov     r0, #0xf4
	str     r0, [sp, #0x0]
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2244240

.thumb
Function_2244240: @ 2244240 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r0, #0x15
	mov     r1, #0x1c
	mov     r6, r2
	mov     r5, r3
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x1c
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r6, #0x0]
	ldr     r2, [pc, #0x44] @ 0x22442a4, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r6, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r6, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r6, #0x6]
	strh    r0, [r4, #0xa]
	ldrb    r0, [r5, #0x0]
	strb    r0, [r4, #0xd]
	ldrb    r0, [r5, #0x2]
	strb    r0, [r4, #0xe]
	mov     r0, r5
	add     r0, #0xe4
	ldrb    r0, [r0, #0x0]
	strb    r0, [r4, #0x1a]
	mov     r0, r5
	add     r0, #0xd8
	ldrh    r0, [r0, #0x0]
	strh    r0, [r4, #0x14]
	mov     r0, r5
	add     r0, #0xda
	ldrh    r0, [r0, #0x0]
	strh    r0, [r4, #0x16]
	mov     r0, r5
	add     r0, #0xdc
	ldrh    r0, [r0, #0x0]
	strh    r0, [r4, #0x18]
	ldrb    r0, [r5, #0x3]
	strb    r0, [r4, #0x10]
	ldr     r0, [pc, #0x8] @ 0x22442a8, (=#0x22442ad)
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x22442a4

.word 0x7530 @ 0x22442a4
.word 0x22442ad @ 0x22442a8

.incbin "./baserom/overlay/overlay_0017.bin", 0x916c, 0x22443e0 - 0x22442ac


.thumb
Function_22443e0: @ 22443e0 :thumb
	push    {r3,lr}
	mov     r0, #0xf4
	str     r0, [sp, #0x0]
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x22443f8

.thumb
Function_22443f8: @ 22443f8 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r1, #0x49
	mov     r0, #0x15
	lsl     r1, r1, #2
	mov     r6, r2
	mov     r5, r3
	bl      Function_2018144
	mov     r2, #0x49
	mov     r4, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r6, #0x0]
	mov     r3, r4
	add     r3, #0x14
	strh    r0, [r4, #0x4]
	ldrh    r0, [r6, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r6, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r6, #0x6]
	strh    r0, [r4, #0xa]
	ldrb    r0, [r5, #0x0]
	strb    r0, [r4, #0xd]
	ldrb    r1, [r5, #0x0]
	mov     r0, #0x2c
	mov     r2, r1
	mul     r2, r0
	add     r1, r5, r2
	ldrh    r1, [r1, #0x10]
	strh    r1, [r4, #0xe]
	mov     r1, r5
	add     r1, #0xe4
	ldrb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xe2
	strb    r2, [r4, r1]
	mov     r1, r5
	add     r1, #0xd8
	ldrh    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xdc
	strh    r2, [r4, r1]
	mov     r1, r5
	add     r1, #0xda
	ldrh    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xde
	strh    r2, [r4, r1]
	mov     r1, r5
	add     r1, #0xdc
	ldrh    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xe0
	strh    r2, [r4, r1]
	mov     r1, r5
	add     r1, #0xe5
	ldrb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xea
	strb    r2, [r4, r1]
	mov     r1, r5
	add     r1, #0xde
	ldrh    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xe4
	strh    r2, [r4, r1]
	mov     r1, r5
	add     r1, #0xe0
	ldrh    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xe6
	strh    r2, [r4, r1]
	mov     r1, r5
	add     r1, #0xe2
	ldrh    r1, [r1, #0x0]
	add     r0, #0xe8
	mov     r2, #0x1e
	strh    r1, [r4, r0]
.thumb
branch_224449e: @ 224449e :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224449e
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0x8] @ 0x22444b8, (=#0x22444bd)
	mov     r2, #0x5
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x22444b6


.align 2


.word 0x22444bd @ 0x22444b8

.incbin "./baserom/overlay/overlay_0017.bin", 0x937c, 0x2244958 - 0x22444bc


.thumb
Function_2244958: @ 2244958 :thumb
	push    {r3,lr}
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	mov     r3, #0x0
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2244970

.thumb
Function_2244970: @ 2244970 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r0, #0x15
	mov     r1, #0x14
	mov     r5, r2
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x14
	blx     MI_CpuFill8
	str     r6, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	mov     r2, #0x64
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r1, [r6, #0xc]
	ldr     r0, [pc, #0x10] @ 0x22449b0, (=#0x123)
	ldrb    r0, [r1, r0]
	mov     r1, r4
	strb    r0, [r4, #0xd]
	ldr     r0, [pc, #0xc] @ 0x22449b4, (=#0x22449b9)
	bl      Function_200d9e8
	pop     {r4-r6,pc}
@ 0x22449ae


.align 2


.word 0x123 @ 0x22449b0
.word 0x22449b9 @ 0x22449b4

.incbin "./baserom/overlay/overlay_0017.bin", 0x9878, 0x2244bb0 - 0x22449b8


.thumb
Function_2244bb0: @ 2244bb0 :thumb
	push    {r4,r5}
	ldr     r0, [sp, #0x8]
	lsl     r2, r0, #2
	ldr     r5, [r3, r2]
	lsl     r2, r0, #1
	ldrh    r4, [r5, #0x0]
	add     r3, r1, r2
	ldr     r2, [pc, #0x10] @ 0x2244bd0, (=#0x236)
	add     r0, r1, r0
	strh    r4, [r3, r2]
	ldrh    r3, [r5, #0x2]
	add     r2, #0x8
	strb    r3, [r0, r2]
	pop     {r4,r5}
	bx      lr
@ 0x2244bce


.align 2


.word 0x236 @ 0x2244bd0
.thumb
Function_2244bd4: @ 2244bd4 :thumb
	push    {r3,lr}
	mov     r0, #0xf4
	str     r0, [sp, #0x0]
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2244bec

.thumb
Function_2244bec: @ 2244bec :thumb
	bx      lr
@ 0x2244bee


.align 2, 0


.thumb
Function_2244bf0: @ 2244bf0 :thumb
	push    {r3,lr}
	mov     r0, #0xf4
	str     r0, [sp, #0x0]
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2244c08

.thumb
Function_2244c08: @ 2244c08 :thumb
	push    {r3-r7,lr}
	mov     r0, #0x15
	mov     r7, r1
	mov     r1, r0
	add     r1, #0xff
	mov     r6, r2
	mov     r5, r3
	bl      Function_2018144
	mov     r2, #0x45
	mov     r4, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r6, #0x0]
	mov     r3, r4
	add     r3, #0x14
	strh    r0, [r4, #0x4]
	ldrh    r0, [r6, #0x2]
	mov     r2, #0x1e
	strh    r0, [r4, #0x6]
	ldrh    r0, [r6, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r6, #0x6]
	strh    r0, [r4, #0xa]
	ldrb    r0, [r5, #0x0]
	strb    r0, [r4, #0xd]
	ldrb    r0, [r5, #0x1]
	strb    r0, [r4, #0xe]
.thumb
branch_2244c46: @ 2244c46 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2244c46
	ldr     r0, [r5, #0x0]
	ldr     r2, [pc, #0xc] @ 0x2244c60, (=#0x7530)
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0xc] @ 0x2244c64, (=#0x2244c69)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2244c5e


.align 2


.word 0x7530 @ 0x2244c60
.word 0x2244c69 @ 0x2244c64

.incbin "./baserom/overlay/overlay_0017.bin", 0x9b28, 0x2244d20 - 0x2244c68


.thumb
Function_2244d20: @ 2244d20 :thumb
	push    {r3,lr}
	mov     r0, #0xf4
	str     r0, [sp, #0x0]
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2244d38

.thumb
Function_2244d38: @ 2244d38 :thumb
	push    {r3-r7,lr}
	mov     r0, #0x15
	mov     r7, r1
	mov     r1, r0
	add     r1, #0xff
	mov     r6, r2
	mov     r5, r3
	bl      Function_2018144
	mov     r2, #0x45
	mov     r4, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r6, #0x0]
	mov     r3, r4
	add     r3, #0x14
	strh    r0, [r4, #0x4]
	ldrh    r0, [r6, #0x2]
	mov     r2, #0x1e
	strh    r0, [r4, #0x6]
	ldrh    r0, [r6, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r6, #0x6]
	strh    r0, [r4, #0xa]
	ldrb    r0, [r5, #0x0]
	strb    r0, [r4, #0xd]
	ldrb    r0, [r5, #0x1]
	strb    r0, [r4, #0xe]
.thumb
branch_2244d76: @ 2244d76 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2244d76
	ldr     r0, [r5, #0x0]
	ldr     r2, [pc, #0xc] @ 0x2244d90, (=#0x7530)
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0xc] @ 0x2244d94, (=#0x2244d99)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2244d8e


.align 2


.word 0x7530 @ 0x2244d90
.word 0x2244d99 @ 0x2244d94

.incbin "./baserom/overlay/overlay_0017.bin", 0x9c58, 0x2244fbc - 0x2244d98


.thumb
Function_2244fbc: @ 2244fbc :thumb
	push    {r3,lr}
	mov     r0, #0xf4
	str     r0, [sp, #0x0]
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2244fd4

.thumb
Function_2244fd4: @ 2244fd4 :thumb
	push    {r3-r7,lr}
	mov     r0, #0x15
	mov     r7, r1
	mov     r1, r0
	add     r1, #0xff
	mov     r6, r2
	mov     r5, r3
	bl      Function_2018144
	mov     r2, #0x45
	mov     r4, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r6, #0x0]
	mov     r3, r4
	add     r3, #0x14
	strh    r0, [r4, #0x4]
	ldrh    r0, [r6, #0x2]
	mov     r2, #0x1e
	strh    r0, [r4, #0x6]
	ldrh    r0, [r6, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r6, #0x6]
	strh    r0, [r4, #0xa]
	ldrb    r0, [r5, #0x0]
	strb    r0, [r4, #0xd]
	ldrb    r0, [r5, #0x1]
	strb    r0, [r4, #0xe]
.thumb
branch_2245012: @ 2245012 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2245012
	ldr     r0, [r5, #0x0]
	ldr     r2, [pc, #0xc] @ 0x224502c, (=#0x7530)
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0xc] @ 0x2245030, (=#0x2245035)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x224502a


.align 2


.word 0x7530 @ 0x224502c
.word 0x2245035 @ 0x2245030

.incbin "./baserom/overlay/overlay_0017.bin", 0x9ef4, 0x2245124 - 0x2245034


.thumb
Function_2245124: @ 2245124 :thumb
	push    {r3,lr}
	mov     r0, #0xf4
	str     r0, [sp, #0x0]
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224513c

.thumb
Function_224513c: @ 224513c :thumb
	push    {r3-r7,lr}
	mov     r0, #0x15
	mov     r7, r1
	mov     r1, r0
	add     r1, #0xff
	mov     r6, r2
	mov     r5, r3
	bl      Function_2018144
	mov     r2, #0x45
	mov     r4, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r6, #0x0]
	mov     r3, r4
	add     r3, #0x14
	strh    r0, [r4, #0x4]
	ldrh    r0, [r6, #0x2]
	mov     r2, #0x1e
	strh    r0, [r4, #0x6]
	ldrh    r0, [r6, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r6, #0x6]
	strh    r0, [r4, #0xa]
	ldrb    r0, [r5, #0x0]
	strb    r0, [r4, #0xd]
	ldrb    r0, [r5, #0x1]
	strb    r0, [r4, #0xe]
.thumb
branch_224517a: @ 224517a :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224517a
	ldr     r0, [r5, #0x0]
	ldr     r2, [pc, #0xc] @ 0x2245194, (=#0x7530)
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0xc] @ 0x2245198, (=#0x224519d)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2245192


.align 2


.word 0x7530 @ 0x2245194
.word 0x224519d @ 0x2245198

.incbin "./baserom/overlay/overlay_0017.bin", 0xa05c, 0x2245510 - 0x224519c


.thumb
Function_2245510: @ 2245510 :thumb
	push    {r3,lr}
	mov     r0, #0xf4
	str     r0, [sp, #0x0]
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2245528

.thumb
Function_2245528: @ 2245528 :thumb
	push    {r3-r7,lr}
	mov     r0, #0x15
	mov     r7, r1
	mov     r1, r0
	add     r1, #0xff
	mov     r6, r2
	mov     r5, r3
	bl      Function_2018144
	mov     r2, #0x45
	mov     r4, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r6, #0x0]
	mov     r3, r4
	add     r3, #0x14
	strh    r0, [r4, #0x4]
	ldrh    r0, [r6, #0x2]
	mov     r2, #0x1e
	strh    r0, [r4, #0x6]
	ldrh    r0, [r6, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r6, #0x6]
	strh    r0, [r4, #0xa]
	ldrb    r0, [r5, #0x0]
	strb    r0, [r4, #0xd]
	ldrb    r0, [r5, #0x1]
	strb    r0, [r4, #0xe]
.thumb
branch_2245566: @ 2245566 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2245566
	ldr     r0, [r5, #0x0]
	ldr     r2, [pc, #0xc] @ 0x2245580, (=#0x7530)
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0xc] @ 0x2245584, (=#0x2245589)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x224557e


.align 2


.word 0x7530 @ 0x2245580
.word 0x2245589 @ 0x2245584

.incbin "./baserom/overlay/overlay_0017.bin", 0xa448, 0x2245678 - 0x2245588


.thumb
Function_2245678: @ 2245678 :thumb
	push    {r3,lr}
	mov     r0, #0xf4
	str     r0, [sp, #0x0]
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2245690

.thumb
Function_2245690: @ 2245690 :thumb
	push    {r3-r7,lr}
	mov     r0, #0x15
	mov     r7, r1
	mov     r1, r0
	add     r1, #0xf7
	mov     r5, r2
	mov     r6, r3
	bl      Function_2018144
	mov     r2, #0x43
	mov     r4, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	mov     r3, r4
	add     r3, #0x10
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	mov     r2, #0x1e
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
.thumb
branch_22456c6: @ 22456c6 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_22456c6
	ldr     r0, [r6, #0x0]
	ldr     r2, [pc, #0xc] @ 0x22456e0, (=#0x7530)
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0xc] @ 0x22456e4, (=#0x22456e9)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x22456de


.align 2


.word 0x7530 @ 0x22456e0
.word 0x22456e9 @ 0x22456e4

.incbin "./baserom/overlay/overlay_0017.bin", 0xa5a8, 0x224595c - 0x22456e8


.thumb
Function_224595c: @ 224595c :thumb
	push    {r3,lr}
	mov     r0, #0xf4
	str     r0, [sp, #0x0]
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2245974

.thumb
Function_2245974: @ 2245974 :thumb
	push    {r3-r7,lr}
	mov     r0, #0x15
	mov     r7, r1
	mov     r1, r0
	add     r1, #0xff
	mov     r6, r2
	mov     r5, r3
	bl      Function_2018144
	mov     r2, #0x45
	mov     r4, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r6, #0x0]
	mov     r3, r4
	add     r3, #0x14
	strh    r0, [r4, #0x4]
	ldrh    r0, [r6, #0x2]
	mov     r2, #0x1e
	strh    r0, [r4, #0x6]
	ldrh    r0, [r6, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r6, #0x6]
	strh    r0, [r4, #0xa]
	ldrb    r0, [r5, #0x0]
	strb    r0, [r4, #0xd]
	ldrb    r0, [r5, #0x1]
	strb    r0, [r4, #0xe]
.thumb
branch_22459b2: @ 22459b2 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_22459b2
	ldr     r0, [r5, #0x0]
	ldr     r2, [pc, #0xc] @ 0x22459cc, (=#0x7530)
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0xc] @ 0x22459d0, (=#0x22459d5)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x22459ca


.align 2


.word 0x7530 @ 0x22459cc
.word 0x22459d5 @ 0x22459d0

.incbin "./baserom/overlay/overlay_0017.bin", 0xa894, 0x2245b48 - 0x22459d4


.thumb
Function_2245b48: @ 2245b48 :thumb
	push    {r3,lr}
	mov     r0, #0xf4
	str     r0, [sp, #0x0]
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2245b60

.thumb
Function_2245b60: @ 2245b60 :thumb
	push    {r3-r7,lr}
	mov     r0, #0x15
	mov     r7, r1
	mov     r1, r0
	add     r1, #0xff
	mov     r5, r2
	mov     r6, r3
	bl      Function_2018144
	mov     r2, #0x45
	mov     r4, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	mov     r3, r4
	add     r3, #0x14
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	mov     r2, #0x1e
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r1, [r7, #0xc]
	ldr     r0, [pc, #0x20] @ 0x2245bbc, (=#0x123)
	ldrb    r0, [r1, r0]
	strb    r0, [r4, #0xd]
	ldrb    r0, [r6, #0x1]
	strb    r0, [r4, #0xe]
.thumb
branch_2245ba2: @ 2245ba2 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2245ba2
	ldr     r0, [r6, #0x0]
	ldr     r2, [pc, #0x10] @ 0x2245bc0, (=#0x7530)
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0x10] @ 0x2245bc4, (=#0x2245bc9)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2245bba


.align 2


.word 0x123 @ 0x2245bbc
.word 0x7530 @ 0x2245bc0
.word 0x2245bc9 @ 0x2245bc4

.incbin "./baserom/overlay/overlay_0017.bin", 0xaa88, 0x2245c4c - 0x2245bc8


.thumb
Function_2245c4c: @ 2245c4c :thumb
	push    {r3,lr}
	mov     r1, #0xf4
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2245c5e


.align 2, 0


.thumb
Function_2245c60: @ 2245c60 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x15
	mov     r1, #0x28
	mov     r5, r2
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x28
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x2245c9c, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [pc, #0xc] @ 0x2245ca0, (=#0x2245ca5)
	str     r6, [r4, #0xc]
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2245c9a


.align 2


.word 0x7530 @ 0x2245c9c
.word 0x2245ca5 @ 0x2245ca0

.incbin "./baserom/overlay/overlay_0017.bin", 0xab64, 0x2245da4 - 0x2245ca4


.thumb
Function_2245da4: @ 2245da4 :thumb
	push    {r3,lr}
	mov     r0, #0xf8
	str     r0, [sp, #0x0]
	mov     r0, #0xc3
	lsl     r0, r0, #4
	lsl     r2, r2, #16
	add     r0, r1, r0
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2245dbc

.thumb
Function_2245dbc: @ 2245dbc :thumb
	push    {r4-r6,lr}
	mov     r0, #0x23
	mov     r5, r1
	lsl     r0, r0, #4
	mov     r4, r2
	add     r6, r5, r0
	mov     r2, #0x1f
.thumb
branch_2245dca: @ 2245dca :thumb
	ldmia   r3!, {r0,r1}
	stmia   r6!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2245dca
	mov     r0, r5
	add     r0, #0xc
	bl      Function_2241ef0
	mov     r0, r5
	add     r0, #0xc
	bl      Function_22430f8
	mov     r0, r5
	bl      Function_2242fe8
	mov     r0, r5
	bl      Function_2241428
	mov     r0, #0xc3
	lsl     r0, r0, #4
	mov     r2, #0x0
	add     r0, r5, r0
	mov     r1, r4
	mov     r3, r2
	bl      Function_224f26c
	pop     {r4-r6,pc}
@ 0x2245e00

.thumb
Function_2245e00: @ 2245e00 :thumb
	push    {r3,lr}
	mov     r1, #0xf4
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2245e12


.align 2, 0


.thumb
Function_2245e14: @ 2245e14 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x15
	mov     r1, #0x20
	mov     r6, r2
	mov     r5, r3
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x20
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x0]
	ldr     r2, [pc, #0x50] @ 0x2245e84, (=#0x7530)
	str     r0, [r4, #0x0]
	ldrh    r0, [r6, #0x0]
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r6, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r6, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r6, #0x6]
	strh    r0, [r4, #0xa]
	str     r7, [r4, #0xc]
	ldrb    r0, [r5, #0x0]
	strb    r0, [r4, #0x11]
	mov     r0, r5
	add     r0, #0xd8
	ldrh    r0, [r0, #0x0]
	strh    r0, [r4, #0x14]
	mov     r0, r5
	add     r0, #0xda
	ldrh    r0, [r0, #0x0]
	strh    r0, [r4, #0x16]
	mov     r0, r5
	add     r0, #0xdc
	ldrh    r0, [r0, #0x0]
	strh    r0, [r4, #0x18]
	mov     r0, r5
	add     r0, #0xe4
	ldrb    r0, [r0, #0x0]
	strb    r0, [r4, #0x1a]
	mov     r0, r5
	add     r0, #0xe7
	ldrb    r0, [r0, #0x0]
	add     r5, #0xe6
	strb    r0, [r4, #0x1c]
	ldrb    r0, [r5, #0x0]
	strb    r0, [r4, #0x1b]
	ldr     r0, [pc, #0x8] @ 0x2245e88, (=#0x2245e8d)
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2245e84

.word 0x7530 @ 0x2245e84
.word 0x2245e8d @ 0x2245e88

.incbin "./baserom/overlay/overlay_0017.bin", 0xad4c, 0x2245f14 - 0x2245e8c


.thumb
Function_2245f14: @ 2245f14 :thumb
	strb    r1, [r0, #0x12]
	ldr     r1, [pc, #0x28] @ 0x2245f40, (=#0x7530)
	strb    r2, [r0, #0x13]
	cmp     r3, r1
	beq     branch_2245f20
	strb    r3, [r0, #0xc]
.thumb
branch_2245f20: @ 2245f20 :thumb
	ldr     r2, [sp, #0x0]
	ldr     r1, [pc, #0x1c] @ 0x2245f40, (=#0x7530)
	cmp     r2, r1
	beq     branch_2245f2a
	strb    r2, [r0, #0xd]
.thumb
branch_2245f2a: @ 2245f2a :thumb
	ldr     r2, [sp, #0x4]
	ldr     r1, [pc, #0x10] @ 0x2245f40, (=#0x7530)
	cmp     r2, r1
	beq     branch_2245f34
	strh    r2, [r0, #0xe]
.thumb
branch_2245f34: @ 2245f34 :thumb
	ldr     r2, [sp, #0x8]
	ldr     r1, [pc, #0x8] @ 0x2245f40, (=#0x7530)
	cmp     r2, r1
	beq     branch_2245f3e
	strb    r2, [r0, #0x10]
.thumb
branch_2245f3e: @ 2245f3e :thumb
	bx      lr
@ 0x2245f40

.word 0x7530 @ 0x2245f40

.incbin "./baserom/overlay/overlay_0017.bin", 0xae04, 0x2246578 - 0x2245f44


.thumb
Function_2246578: @ 2246578 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r0, #0x4
	str     r3, [sp, #0xc]
	mov     r12, r0
	mov     r7, r1
	mov     r0, #0x0
	add     r2, sp, #0x10
	mov     r3, #0xff
.thumb
branch_224658a: @ 224658a :thumb
	ldr     r4, [r1, #0x28]
	lsl     r5, r4, #26
	lsr     r5, r5, #30
	bne     branch_2246596
	strb    r3, [r2, #0x0]
	b       branch_22465aa
@ 0x2246596

.thumb
branch_2246596: @ 2246596 :thumb
	cmp     r5, #0x1
	bne     branch_22465a2
	lsl     r4, r4, #24
	lsr     r4, r4, #30
	bne     branch_22465a2
	mov     r12, r0
.thumb
branch_22465a2: @ 22465a2 :thumb
	ldr     r4, [r1, #0x28]
	lsl     r4, r4, #24
	lsr     r4, r4, #30
	strb    r4, [r2, #0x0]
.thumb
branch_22465aa: @ 22465aa :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r1, #0x2c
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r0, #0x4
	blt     branch_224658a
	ldr     r0, [sp, #0xc]
	mov     r1, #0xff
	add     r6, sp, #0x10
	strb    r1, [r6, r0]
	mov     r4, #0x0
.thumb
branch_22465be: @ 22465be :thumb
	mov     r1, #0x0
	mov     r2, r6
	mov     r3, r7
.thumb
branch_22465c4: @ 22465c4 :thumb
	ldrb    r0, [r2, #0x0]
	cmp     r0, #0xff
	beq     branch_22465e0
	cmp     r4, r0
	bne     branch_22465e0
	ldr     r5, [r3, #0x28]
	lsl     r5, r5, #24
	lsr     r5, r5, #30
	cmp     r0, r5
	bne     branch_22465e0
	ldrb    r0, [r6, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r6, r1]
	b       branch_22465ea
@ 0x22465e0

.thumb
branch_22465e0: @ 22465e0 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x2c
	cmp     r1, #0x4
	blt     branch_22465c4
.thumb
branch_22465ea: @ 22465ea :thumb
	cmp     r1, #0x4
	beq     branch_22465f4
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_22465be
.thumb
branch_22465f4: @ 22465f4 :thumb
	mov     r3, #0x0
	add     r1, sp, #0x10
	mov     r2, r7
	mov     r4, #0xc0
.thumb
branch_22465fc: @ 22465fc :thumb
	ldrb    r5, [r1, #0x0]
	cmp     r5, #0xff
	beq     branch_224660e
	ldr     r0, [r2, #0x28]
	lsl     r5, r5, #30
	bic     r0, r4
	lsr     r5, r5, #24
	orr     r0, r5
	str     r0, [r2, #0x28]
.thumb
branch_224660e: @ 224660e :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x2c
	cmp     r3, #0x4
	blt     branch_22465fc
	ldr     r0, [sp, #0xc]
	mov     r1, #0x2c
	mul     r1, r0
	add     r0, r7, r1
	ldr     r2, [r0, #0x28]
	mov     r1, #0x30
	bic     r2, r1
	mov     r1, #0x10
	orr     r2, r1
	mov     r1, #0xc0
	bic     r2, r1
	mov     r1, r12
	str     r2, [r0, #0x28]
	cmp     r1, #0x4
	beq     branch_224664c
	mov     r1, r12
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x28] @ 0x2246664, (=#0x7530)
	ldr     r3, [sp, #0xc]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldrb    r1, [r0, #0x2]
	mov     r2, #0x1
	bl      Function_2245f14
	b       branch_224665e
@ 0x224664c

.thumb
branch_224664c: @ 224664c :thumb
	ldr     r1, [pc, #0x14] @ 0x2246664, (=#0x7530)
	ldr     r3, [sp, #0xc]
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldrb    r1, [r0, #0x2]
	mov     r2, #0x0
	bl      Function_2245f14
.thumb
branch_224665e: @ 224665e :thumb
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2246664

.word 0x7530 @ 0x2246664
.thumb
Function_2246668: @ 2246668 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r0, #0x4
	str     r3, [sp, #0xc]
	mov     r12, r0
	mov     r7, r1
	mov     r0, #0x0
	add     r2, sp, #0x10
	mov     r3, #0xff
.thumb
branch_224667a: @ 224667a :thumb
	ldr     r4, [r1, #0x28]
	lsl     r5, r4, #26
	lsr     r5, r5, #30
	bne     branch_2246686
	strb    r3, [r2, #0x0]
	b       branch_224669c
@ 0x2246686

.thumb
branch_2246686: @ 2246686 :thumb
	cmp     r5, #0x2
	bne     branch_2246694
	lsl     r4, r4, #24
	lsr     r4, r4, #30
	cmp     r4, #0x3
	bne     branch_2246694
	mov     r12, r0
.thumb
branch_2246694: @ 2246694 :thumb
	ldr     r4, [r1, #0x28]
	lsl     r4, r4, #24
	lsr     r4, r4, #30
	strb    r4, [r2, #0x0]
.thumb
branch_224669c: @ 224669c :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	asr     r0, r0, #24
	add     r1, #0x2c
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r0, #0x4
	blt     branch_224667a
	ldr     r0, [sp, #0xc]
	mov     r1, #0xff
	add     r6, sp, #0x10
	strb    r1, [r6, r0]
	mov     r4, #0x3
.thumb
branch_22466b4: @ 22466b4 :thumb
	mov     r1, #0x0
	mov     r2, r6
	mov     r3, r7
.thumb
branch_22466ba: @ 22466ba :thumb
	ldrb    r0, [r2, #0x0]
	cmp     r0, #0xff
	beq     branch_22466d6
	cmp     r4, r0
	bne     branch_22466d6
	ldr     r5, [r3, #0x28]
	lsl     r5, r5, #24
	lsr     r5, r5, #30
	cmp     r0, r5
	bne     branch_22466d6
	ldrb    r0, [r6, r1]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r6, r1]
	b       branch_22466e4
@ 0x22466d6

.thumb
branch_22466d6: @ 22466d6 :thumb
	add     r0, r1, #0x1
	lsl     r0, r0, #24
	asr     r1, r0, #24
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x2c
	cmp     r1, #0x4
	blt     branch_22466ba
.thumb
branch_22466e4: @ 22466e4 :thumb
	cmp     r1, #0x4
	beq     branch_22466f6
	.hword  0x1e60 @ sub r0, r4, #0x1
	lsl     r0, r0, #24
	asr     r4, r0, #24
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bgt     branch_22466b4
.thumb
branch_22466f6: @ 22466f6 :thumb
	mov     r3, #0x0
	add     r1, sp, #0x10
	mov     r2, r7
	mov     r4, #0xc0
.thumb
branch_22466fe: @ 22466fe :thumb
	ldrb    r5, [r1, #0x0]
	cmp     r5, #0xff
	beq     branch_2246710
	ldr     r0, [r2, #0x28]
	lsl     r5, r5, #30
	bic     r0, r4
	lsr     r5, r5, #24
	orr     r0, r5
	str     r0, [r2, #0x28]
.thumb
branch_2246710: @ 2246710 :thumb
	add     r0, r3, #0x1
	lsl     r0, r0, #24
	asr     r3, r0, #24
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x2c
	cmp     r3, #0x4
	blt     branch_22466fe
	ldr     r0, [sp, #0xc]
	mov     r1, #0x2c
	mul     r1, r0
	add     r0, r7, r1
	ldr     r2, [r0, #0x28]
	mov     r1, #0x30
	bic     r2, r1
	mov     r1, #0x20
	orr     r2, r1
	mov     r1, #0xc0
	bic     r2, r1
	mov     r1, #0xc0
	orr     r1, r2
	str     r1, [r0, #0x28]
	mov     r1, r12
	cmp     r1, #0x4
	bne     branch_2246754
	ldr     r1, [pc, #0x2c] @ 0x2246770, (=#0x7530)
	ldr     r3, [sp, #0xc]
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldrb    r1, [r0, #0x2]
	mov     r2, #0x0
	bl      Function_2245f14
	b       branch_2246768
@ 0x2246754

.thumb
branch_2246754: @ 2246754 :thumb
	mov     r1, r12
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x14] @ 0x2246770, (=#0x7530)
	ldr     r3, [sp, #0xc]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldrb    r1, [r0, #0x2]
	mov     r2, #0x1
	bl      Function_2245f14
.thumb
branch_2246768: @ 2246768 :thumb
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224676e


.align 2


.word 0x7530 @ 0x2246770
.thumb
Function_2246774: @ 2246774 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r2, r4
	mov     r0, #0x2c
	mov     r7, r3
	mul     r3, r0
	add     r2, #0x9
	add     r1, #0x1e
	ldrb    r6, [r2, r3]
	mov     r5, #0x14
	ldsh    r0, [r1, r3]
	mul     r5, r6
	add     r0, r0, r5
	strh    r0, [r1, r3]
	ldrb    r0, [r2, r3]
	cmp     r0, #0x0
	beq     branch_22467a2
	cmp     r0, #0x1
	beq     branch_22467a6
	cmp     r0, #0x2
	beq     branch_22467aa
	b       branch_22467ae
@ 0x22467a2

.thumb
branch_22467a2: @ 22467a2 :thumb
	mov     r2, #0x0
	b       branch_22467b0
@ 0x22467a6

.thumb
branch_22467a6: @ 22467a6 :thumb
	mov     r2, #0x1
	b       branch_22467b0
@ 0x22467aa

.thumb
branch_22467aa: @ 22467aa :thumb
	mov     r2, #0x2
	b       branch_22467b0
@ 0x22467ae

.thumb
branch_22467ae: @ 22467ae :thumb
	mov     r2, #0x3
.thumb
branch_22467b0: @ 22467b0 :thumb
	ldr     r0, [pc, #0x14] @ 0x22467c8, (=#0x7530)
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r0, r4, r3
	ldrb    r1, [r0, #0x2]
	mov     r3, r7
	bl      Function_2245f14
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22467c8

.word 0x7530 @ 0x22467c8
.thumb
Function_22467cc: @ 22467cc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r3, [sp, #0xc]
	ldr     r3, [r0, #0x0]
	ldr     r0, [sp, #0xc]
	mov     r6, #0x2c
	mov     r4, r0
	mov     r0, r6
	mul     r4, r6
	mov     r5, r1
	add     r7, r5, r4
	add     r0, #0xf3
	add     r6, #0xf2
	ldrb    r0, [r3, r0]
	ldrh    r1, [r5, r4]
	ldrb    r2, [r7, #0x3]
	ldrb    r3, [r3, r6]
	bl      Function_2243af0
	cmp     r0, #0x0
	ble     branch_2246824
	ldr     r0, [r7, #0x28]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	bne     branch_2246824
	mov     r1, r5
	add     r1, #0x1e
	ldsh    r0, [r1, r4]
	ldr     r2, [pc, #0x24] @ 0x224682c, (=#0x7530)
	ldr     r3, [sp, #0xc]
	add     r0, #0x14
	strh    r0, [r1, r4]
	str     r2, [sp, #0x0]
	ldrh    r1, [r5, r4]
	mov     r0, r7
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	ldrb    r1, [r0, #0x2]
	mov     r2, #0x0
	bl      Function_2245f14
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2246824

.thumb
branch_2246824: @ 2246824 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224682a


.align 2


.word 0x7530 @ 0x224682c
.thumb
Function_2246830: @ 2246830 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2246834

.thumb
Function_2246834: @ 2246834 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r0, #0x2c
	mov     r4, r3
	mul     r4, r0
	add     r0, r1, r4
	ldrb    r2, [r0, #0x9]
	cmp     r2, #0x0
	bne     branch_2246860
	add     r1, #0x1e
	ldsh    r2, [r1, r4]
	add     r2, #0x1e
	strh    r2, [r1, r4]
	ldr     r1, [pc, #0x28] @ 0x2246878, (=#0x7530)
	mov     r2, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldrb    r1, [r0, #0x2]
	bl      Function_2245f14
	b       branch_2246870
@ 0x2246860

.thumb
branch_2246860: @ 2246860 :thumb
	ldr     r1, [pc, #0x14] @ 0x2246878, (=#0x7530)
	mov     r2, #0x1
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldrb    r1, [r0, #0x2]
	bl      Function_2245f14
.thumb
branch_2246870: @ 2246870 :thumb
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2246876


.align 2


.word 0x7530 @ 0x2246878
.thumb
Function_224687c: @ 224687c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	lsl     r4, r3, #1
	mov     r2, r1
	add     r4, r0, r4
	ldr     r0, [pc, #0x40] @ 0x22468c8, (=#0x256)
	mov     r1, #0x2c
	mov     r7, r3
	mul     r7, r1
	ldrh    r1, [r2, r7]
	ldrh    r0, [r4, r0]
	cmp     r1, r0
	beq     branch_22468c2
	mov     r6, r2
	add     r6, #0xb0
	lsl     r5, r3, #2
	lsl     r1, r1, #16
	ldr     r4, [r6, r5]
	ldr     r0, [pc, #0x28] @ 0x22468cc, (=#0xffff0000)
	lsr     r1, r1, #16
	and     r0, r4
	orr     r0, r1
	str     r0, [r6, r5]
	ldr     r0, [pc, #0x24] @ 0x22468d0, (=#0x7530)
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r0, r2, r7
	ldrb    r1, [r0, #0x2]
	mov     r2, #0x0
	bl      Function_2245f14
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x22468c2

.thumb
branch_22468c2: @ 22468c2 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22468c8

.word 0x256 @ 0x22468c8
.word 0xffff0000 @ 0x22468cc
.word 0x7530 @ 0x22468d0
.thumb
Function_22468d4: @ 22468d4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r0, #0x2c
	mov     r4, r3
	mov     r5, r1
	mul     r4, r0
	add     r0, r5, r4
	ldrb    r0, [r0, #0x3]
	mov     r2, r5
	add     r2, #0x1e
	add     r1, r5, r0
	mov     r0, #0xc0
	ldsb    r0, [r1, r0]
	ldsh    r1, [r2, r4]
	add     r1, r1, r0
	strh    r1, [r2, r4]
	mov     r1, #0xa
	blx     Division
	ldr     r3, [pc, #0x18] @ 0x2246914, (=#0x7530)
	mov     r2, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r0, r5, r4
	ldrb    r1, [r0, #0x2]
	bl      Function_2245f14
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2246912


.align 2


.word 0x7530 @ 0x2246914
.thumb
Function_2246918: @ 2246918 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r0, #0x2c
	mov     r4, r3
	mul     r4, r0
	add     r0, r1, r4
	ldrb    r2, [r0, #0x9]
	cmp     r2, #0x3
	bne     branch_2246944
	add     r1, #0x1e
	ldsh    r2, [r1, r4]
	add     r2, #0x96
	strh    r2, [r1, r4]
	ldr     r1, [pc, #0x28] @ 0x224695c, (=#0x7530)
	mov     r2, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldrb    r1, [r0, #0x2]
	bl      Function_2245f14
	b       branch_2246954
@ 0x2246944

.thumb
branch_2246944: @ 2246944 :thumb
	ldr     r1, [pc, #0x14] @ 0x224695c, (=#0x7530)
	mov     r2, #0x1
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldrb    r1, [r0, #0x2]
	bl      Function_2245f14
.thumb
branch_2246954: @ 2246954 :thumb
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x224695a


.align 2


.word 0x7530 @ 0x224695c
.thumb
Function_2246960: @ 2246960 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r0, #0x2c
	mov     r7, r3
	mov     r4, r1
	mul     r7, r0
	add     r1, r4, r7
	ldr     r0, [r1, #0x28]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_224697e
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x224697e

.thumb
branch_224697e: @ 224697e :thumb
	mov     r3, #0x0
	mov     r0, #0xc3
.thumb
branch_2246982: @ 2246982 :thumb
	add     r2, r4, r3
	ldsb    r2, [r2, r0]
	cmp     r2, #0x0
	bne     branch_2246990
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r3, #0x3
	blt     branch_2246982
.thumb
branch_2246990: @ 2246990 :thumb
	cmp     r3, #0x3
	bne     branch_224699a
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x224699a

.thumb
branch_224699a: @ 224699a :thumb
	ldr     r2, [r1, #0x28]
	mov     r0, #0x8
	orr     r0, r2
	mov     r3, #0xc3
	str     r0, [r1, #0x28]
	mov     r2, #0x0
	mov     r5, r3
.thumb
branch_22469a8: @ 22469a8 :thumb
	add     r0, r4, r2
	ldsb    r6, [r0, r5]
	cmp     r6, #0x0
	ble     branch_22469b8
	ldsb    r6, [r0, r3]
	add     r0, #0xc3
	sub     r6, #0xa
	strb    r6, [r0, #0x0]
.thumb
branch_22469b8: @ 22469b8 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r2, #0x3
	blt     branch_22469a8
	ldr     r3, [pc, #0x18] @ 0x22469d8, (=#0x7530)
	mov     r0, r1
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	add     r1, r4, r7
	ldrb    r1, [r1, #0x2]
	mov     r2, #0x0
	bl      Function_2245f14
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22469d8

.word 0x7530 @ 0x22469d8
.thumb
Function_22469dc: @ 22469dc :thumb
	mov     r0, #0x2c
	mul     r0, r3
	add     r2, r1, r0
	ldr     r1, [r2, #0x28]
	ldr     r0, [pc, #0x10] @ 0x22469f8, (=#0xfff00fff)
	and     r1, r0
	ldrb    r0, [r2, #0x2]
	lsl     r0, r0, #24
	lsr     r0, r0, #12
	orr     r0, r1
	str     r0, [r2, #0x28]
	mov     r0, #0x1
	bx      lr
@ 0x22469f6


.align 2


.word 0xfff00fff @ 0x22469f8
.thumb
Function_22469fc: @ 22469fc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r2, r1
	ldr     r1, [sp, #0x20]
	mov     r4, r0
	mov     r12, r3
	cmp     r1, #0x4
	bge     branch_2246a28
	ldr     r7, [pc, #0x38] @ 0x2246a48, (=#0x231)
	mov     r6, #0x2c
	mov     r3, #0x2
.thumb
branch_2246a12: @ 2246a12 :thumb
	add     r0, r4, r1
	ldrb    r0, [r0, r7]
	.hword  0x1c49 @ add r1, r1, #0x1
	mov     r5, r0
	mul     r5, r6
	add     r0, r2, r5
	ldr     r5, [r0, #0x28]
	orr     r5, r3
	str     r5, [r0, #0x28]
	cmp     r1, #0x4
	blt     branch_2246a12
.thumb
branch_2246a28: @ 2246a28 :thumb
	ldr     r3, [pc, #0x20] @ 0x2246a4c, (=#0x7530)
	mov     r1, #0x2c
	mov     r0, r12
	str     r3, [sp, #0x0]
	mul     r1, r0
	str     r3, [sp, #0x4]
	add     r0, r2, r1
	str     r3, [sp, #0x8]
	ldrb    r1, [r0, #0x2]
	mov     r2, #0x0
	bl      Function_2245f14
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2246a46


.align 2


.word 0x231 @ 0x2246a48
.word 0x7530 @ 0x2246a4c
.thumb
Function_2246a50: @ 2246a50 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r1, [sp, #0x20]
	cmp     r1, #0x0
	bne     branch_2246a62
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x2246a62

.thumb
branch_2246a62: @ 2246a62 :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
	add     r1, r0, r1
	ldr     r0, [pc, #0x40] @ 0x2246aa8, (=#0x231)
	ldrb    r4, [r1, r0]
	mov     r0, #0x2c
	mov     r1, r4
	mul     r1, r0
	add     r2, r5, r1
	mov     r1, #0x8
	ldsb    r2, [r2, r1]
	cmp     r2, #0x0
	bne     branch_2246a80
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x2246a80

.thumb
branch_2246a80: @ 2246a80 :thumb
	mov     r1, r3
	mul     r1, r0
	mov     r0, r5
	add     r0, #0x1e
	ldsh    r6, [r0, r1]
	add     r2, r6, r2
	strh    r2, [r0, r1]
	ldr     r0, [pc, #0x1c] @ 0x2246aac, (=#0x7530)
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r0, r5, r1
	ldrb    r1, [r0, #0x2]
	mov     r2, #0x0
	bl      Function_2245f14
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2246aa6


.align 2


.word 0x231 @ 0x2246aa8
.word 0x7530 @ 0x2246aac
.thumb
Function_2246ab0: @ 2246ab0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	str     r1, [sp, #0xc]
	str     r3, [sp, #0x10]
	mov     r3, #0x0
	add     r0, sp, #0x18
	add     r1, sp, #0x14
.thumb
branch_2246ac0: @ 2246ac0 :thumb
	lsl     r2, r3, #24
	lsr     r2, r2, #24
	strb    r2, [r0, #0x0]
	strb    r2, [r1, #0x0]
	add     r2, r3, #0x1
	lsl     r2, r2, #24
	asr     r3, r2, #24
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r3, #0x4
	blt     branch_2246ac0
	mov     r4, #0x0
	add     r7, sp, #0x18
	add     r6, sp, #0x14
.thumb
branch_2246adc: @ 2246adc :thumb
	ldr     r0, [r5, #0x0]
	bl      Call_PRNG
	mov     r1, #0x4
	sub     r1, r1, r4
	blx     Division
	lsl     r0, r1, #24
	lsr     r2, r0, #24
	mov     r1, #0x0
	mov     r3, r6
.thumb
branch_2246af2: @ 2246af2 :thumb
	ldrb    r0, [r3, #0x0]
	cmp     r0, #0xff
	beq     branch_2246b0a
	cmp     r2, #0x0
	bne     branch_2246b04
	mov     r0, #0xff
	strb    r4, [r7, r1]
	strb    r0, [r6, r1]
	b       branch_2246b16
@ 0x2246b04

.thumb
branch_2246b04: @ 2246b04 :thumb
	.hword  0x1e50 @ sub r0, r2, #0x1
	lsl     r0, r0, #24
	lsr     r2, r0, #24
.thumb
branch_2246b0a: @ 2246b0a :thumb
	add     r0, r1, #0x1
	lsl     r0, r0, #24
	asr     r1, r0, #24
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r1, #0x4
	blt     branch_2246af2
.thumb
branch_2246b16: @ 2246b16 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	asr     r4, r0, #24
	cmp     r4, #0x4
	blt     branch_2246adc
	ldr     r1, [sp, #0xc]
	mov     r3, #0x0
	add     r2, sp, #0x18
	mov     r4, #0x30
	mov     r7, #0x30
	mov     r5, #0xc0
.thumb
branch_2246b2c: @ 2246b2c :thumb
	ldr     r0, [r1, #0x28]
	bic     r0, r4
	orr     r0, r7
	str     r0, [r1, #0x28]
	ldrb    r6, [r2, #0x0]
	bic     r0, r5
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r6, r6, #30
	lsr     r6, r6, #24
	orr     r0, r6
	str     r0, [r1, #0x28]
	add     r0, r3, #0x1
	lsl     r0, r0, #24
	asr     r3, r0, #24
	add     r1, #0x2c
	cmp     r3, #0x4
	blt     branch_2246b2c
	ldr     r3, [pc, #0x20] @ 0x2246b70, (=#0x7530)
	ldr     r0, [sp, #0x10]
	mov     r1, #0x2c
	mul     r1, r0
	str     r3, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	add     r0, r0, r1
	ldrb    r1, [r0, #0x2]
	mov     r2, #0x0
	bl      Function_2245f14
	mov     r0, #0x1
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2246b6e


.align 2


.word 0x7530 @ 0x2246b70
.thumb
Function_2246b74: @ 2246b74 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	ldr     r0, [sp, #0x18]
	mov     r5, r1
	cmp     r0, #0x3
	bne     branch_2246bb6
	mov     r4, r3
	mov     r0, #0x2c
	mov     r3, r5
	mov     r2, r5
	mul     r4, r0
	add     r3, #0x18
	add     r2, #0x1e
	ldsh    r1, [r2, r4]
	ldsh    r0, [r3, r4]
	add     r0, r1, r0
	strh    r0, [r2, r4]
	ldsh    r0, [r3, r4]
	mov     r1, #0xa
	blx     Division
	ldr     r3, [pc, #0x1c] @ 0x2246bbc, (=#0x7530)
	mov     r2, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r0, r5, r4
	ldrb    r1, [r0, #0x2]
	bl      Function_2245f14
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x2246bb6

.thumb
branch_2246bb6: @ 2246bb6 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2246bbc

.word 0x7530 @ 0x2246bbc
.thumb
Function_2246bc0: @ 2246bc0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r0, #0x2c
	mov     r4, r3
	mov     r5, r1
	mul     r4, r0
	add     r0, r5, r4
	ldrb    r0, [r0, #0x3]
	add     r1, r5, r0
	mov     r0, #0xc0
	ldsb    r0, [r1, r0]
	mov     r1, #0xa
	blx     Division
	ldr     r1, [pc, #0x28] @ 0x2246c08, (=#0x2253af0)
	mov     r2, r5
	add     r2, #0x1e
	ldrb    r0, [r1, r0]
	ldsh    r1, [r2, r4]
	add     r1, r1, r0
	strh    r1, [r2, r4]
	mov     r1, #0xa
	blx     Division
	ldr     r3, [pc, #0x18] @ 0x2246c0c, (=#0x7530)
	mov     r2, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r0, r5, r4
	ldrb    r1, [r0, #0x2]
	bl      Function_2245f14
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2246c08

.word 0x2253af0 @ 0x2246c08
.word 0x7530 @ 0x2246c0c
.thumb
Function_2246c10: @ 2246c10 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	bne     branch_2246c42
	mov     r4, r3
	mov     r0, #0x2c
	mov     r2, r1
	mul     r4, r0
	add     r2, #0x1e
	ldsh    r0, [r2, r4]
	ldr     r3, [pc, #0x20] @ 0x2246c48, (=#0x7530)
	add     r0, #0x14
	strh    r0, [r2, r4]
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	add     r0, r1, r4
	ldrb    r1, [r0, #0x2]
	mov     r2, #0x0
	bl      Function_2245f14
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x2246c42

.thumb
branch_2246c42: @ 2246c42 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2246c48

.word 0x7530 @ 0x2246c48
.thumb
Function_2246c4c: @ 2246c4c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x3
	bne     branch_2246c7e
	mov     r4, r3
	mov     r0, #0x2c
	mov     r2, r1
	mul     r4, r0
	add     r2, #0x1e
	ldsh    r0, [r2, r4]
	ldr     r3, [pc, #0x20] @ 0x2246c84, (=#0x7530)
	add     r0, #0x14
	strh    r0, [r2, r4]
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	add     r0, r1, r4
	ldrb    r1, [r0, #0x2]
	mov     r2, #0x0
	bl      Function_2245f14
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x2246c7e

.thumb
branch_2246c7e: @ 2246c7e :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2246c84

.word 0x7530 @ 0x2246c84
.thumb
Function_2246c88: @ 2246c88 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r2, r1
	ldr     r1, [sp, #0x20]
	mov     r4, r0
	mov     r12, r3
	cmp     r1, #0x4
	bge     branch_2246cb4
	ldr     r7, [pc, #0x38] @ 0x2246cd4, (=#0x231)
	mov     r6, #0x2c
	mov     r3, #0x4
.thumb
branch_2246c9e: @ 2246c9e :thumb
	add     r0, r4, r1
	ldrb    r0, [r0, r7]
	.hword  0x1c49 @ add r1, r1, #0x1
	mov     r5, r0
	mul     r5, r6
	add     r0, r2, r5
	ldr     r5, [r0, #0x28]
	orr     r5, r3
	str     r5, [r0, #0x28]
	cmp     r1, #0x4
	blt     branch_2246c9e
.thumb
branch_2246cb4: @ 2246cb4 :thumb
	ldr     r3, [pc, #0x20] @ 0x2246cd8, (=#0x7530)
	mov     r1, #0x2c
	mov     r0, r12
	str     r3, [sp, #0x0]
	mul     r1, r0
	str     r3, [sp, #0x4]
	add     r0, r2, r1
	str     r3, [sp, #0x8]
	ldrb    r1, [r0, #0x2]
	mov     r2, #0x0
	bl      Function_2245f14
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2246cd2


.align 2


.word 0x231 @ 0x2246cd4
.word 0x7530 @ 0x2246cd8
.thumb
Function_2246cdc: @ 2246cdc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	ldr     r0, [sp, #0x38]
	mov     r4, r1
	str     r3, [sp, #0xc]
	cmp     r0, #0x0
	bne     branch_2246cf2
	add     sp, #0x24
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2246cf2

.thumb
branch_2246cf2: @ 2246cf2 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	add     r1, r5, r0
	ldr     r0, [pc, #0xa0] @ 0x2246d98, (=#0x231)
	mov     r3, #0x2c
	ldrb    r0, [r1, r0]
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x18]
	mov     r0, r1
	mul     r0, r3
	add     r7, r4, r0
	str     r0, [sp, #0x20]
	ldr     r0, [r7, #0x28]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	bne     branch_2246d24
	ldr     r0, [sp, #0x18]
	mov     r1, r0
	mul     r1, r3
	add     r0, r4, r1
	str     r0, [sp, #0x14]
	ldr     r0, [r0, #0x28]
	str     r1, [sp, #0x10]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	beq     branch_2246d2a
.thumb
branch_2246d24: @ 2246d24 :thumb
	add     sp, #0x24
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2246d2a

.thumb
branch_2246d2a: @ 2246d2a :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	mov     r12, r0
	add     r1, #0xf3
	ldrb    r0, [r0, r1]
	add     r3, #0xf2
	mov     r6, r12
	ldrh    r1, [r7, #0x0]
	ldrb    r2, [r7, #0x3]
	ldrb    r3, [r6, r3]
	bl      Function_2243af0
	ldr     r2, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	add     r2, r4, r2
	ldr     r5, [r5, #0x0]
	ldr     r3, [pc, #0x50] @ 0x2246d9c, (=#0x11f)
	str     r0, [sp, #0x1c]
	ldrb    r0, [r5, r3]
	.hword  0x1e5b @ sub r3, r3, #0x1
	ldrh    r1, [r1, #0x0]
	ldrb    r2, [r2, #0x3]
	ldrb    r3, [r5, r3]
	bl      Function_2243af0
	cmp     r0, #0x0
	ble     branch_2246d92
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	ble     branch_2246d92
	mov     r2, r4
	ldr     r0, [sp, #0x20]
	add     r2, #0x1e
	ldsh    r1, [r2, r0]
	ldr     r3, [sp, #0xc]
	add     r1, #0x1e
	strh    r1, [r2, r0]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x20]
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x24] @ 0x2246da0, (=#0x7530)
	add     r1, r4, r1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldrb    r1, [r1, #0x2]
	mov     r0, r7
	mov     r2, #0x0
	bl      Function_2245f14
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2246d92

.thumb
branch_2246d92: @ 2246d92 :thumb
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2246d98

.word 0x231 @ 0x2246d98
.word 0x11f @ 0x2246d9c
.word 0x7530 @ 0x2246da0
.thumb
Function_2246da4: @ 2246da4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r0, r1
	mov     r1, #0x2c
	mul     r1, r3
	add     r4, r0, r1
	mov     r1, #0x1e
	ldsh    r2, [r4, r1]
	ldr     r1, [sp, #0x18]
	ldr     r5, [pc, #0x48] @ 0x2246e00, (=#0x2253aec)
	ldrb    r5, [r5, r1]
	add     r2, r2, r5
	strh    r2, [r4, #0x1e]
	cmp     r1, #0x3
	bhi     branch_2246de2
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r6, r0, #0
	lsl     r2, r1, #0
	lsl     r6, r1, #0
	lsl     r2, r2, #0
	mov     r2, #0x0
	b       branch_2246de4
@ 0x2246dda


.incbin "./baserom/overlay/overlay_0017.bin", 0xbc9a, 0x2246de2 - 0x2246dda


.thumb
branch_2246de2: @ 2246de2 :thumb
	mov     r2, #0x3
.thumb
branch_2246de4: @ 2246de4 :thumb
	ldr     r1, [pc, #0x1c] @ 0x2246e04, (=#0x7530)
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r1, #0x2c
	mul     r1, r3
	add     r0, r0, r1
	ldrb    r1, [r0, #0x2]
	bl      Function_2245f14
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2246dfe


.align 2


.word 0x2253aec @ 0x2246e00
.word 0x7530 @ 0x2246e04
.thumb
Function_2246e08: @ 2246e08 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r2, [sp, #0x18]
	cmp     r2, #0x0
	bne     branch_2246e18
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x2246e18

.thumb
branch_2246e18: @ 2246e18 :thumb
	.hword  0x1e52 @ sub r2, r2, #0x1
	add     r2, r0, r2
	ldr     r0, [pc, #0x40] @ 0x2246e60, (=#0x231)
	ldrb    r2, [r2, r0]
	mov     r0, #0x2c
	mul     r0, r2
	add     r2, r1, r0
	mov     r0, #0x8
	ldsb    r0, [r2, r0]
	cmp     r0, #0x32
	bge     branch_2246e32
	cmp     r0, #0x50
	blt     branch_2246e5a
.thumb
branch_2246e32: @ 2246e32 :thumb
	mov     r2, r1
	mov     r0, #0x2c
	mov     r4, r3
	mul     r4, r0
	add     r2, #0x1e
	ldsh    r0, [r2, r4]
	add     r0, #0x1e
	strh    r0, [r2, r4]
	ldr     r0, [pc, #0x20] @ 0x2246e64, (=#0x7530)
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r0, r1, r4
	ldrb    r1, [r0, #0x2]
	bl      Function_2245f14
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x2246e5a

.thumb
branch_2246e5a: @ 2246e5a :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2246e60

.word 0x231 @ 0x2246e60
.word 0x7530 @ 0x2246e64
.thumb
Function_2246e68: @ 2246e68 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r0, #0x2c
	mul     r0, r3
	str     r1, [sp, #0xc]
	mov     r2, #0x0
	mov     r4, r1
	mov     r12, r0
	add     r5, r1, r0
	mov     r7, #0x1a
	mov     r6, #0x1c
.thumb
branch_2246e7e: @ 2246e7e :thumb
	cmp     r2, r3
	beq     branch_2246e8a
	ldsh    r1, [r4, r7]
	ldsh    r0, [r5, r6]
	cmp     r1, r0
	blt     branch_2246e92
.thumb
branch_2246e8a: @ 2246e8a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r4, #0x2c
	cmp     r2, #0x4
	blt     branch_2246e7e
.thumb
branch_2246e92: @ 2246e92 :thumb
	cmp     r2, #0x4
	beq     branch_2246e9c
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2246e9c

.thumb
branch_2246e9c: @ 2246e9c :thumb
	ldr     r2, [sp, #0xc]
	mov     r0, r12
	add     r2, #0x1e
	ldsh    r1, [r2, r0]
	mov     r0, r12
	add     r1, #0x1e
	strh    r1, [r2, r0]
	ldr     r0, [pc, #0x1c] @ 0x2246ec8, (=#0x7530)
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r12
	add     r0, r1, r0
	ldrb    r1, [r0, #0x2]
	mov     r2, #0x0
	bl      Function_2245f14
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2246ec6


.align 2


.word 0x7530 @ 0x2246ec8

.incbin "./baserom/overlay/overlay_0017.bin", 0xbd8c, 0x22472f8 - 0x2246ecc


.thumb
Function_22472f8: @ 22472f8 :thumb
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x4
	bne     branch_2247302
	mov     r0, #0x1
	bx      lr
@ 0x2247302

.thumb
branch_2247302: @ 2247302 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2247306


.align 2, 0


.thumb
Function_2247308: @ 2247308 :thumb
	lsl     r1, r1, #2
	add     r0, r0, r1
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #8
	lsr     r0, r0, #24
	beq     branch_224731a
	mov     r0, #0x1
	bx      lr
@ 0x224731a

.thumb
branch_224731a: @ 224731a :thumb
	mov     r0, #0x0
	bx      lr
@ 0x224731e


.align 2, 0


.thumb
Function_2247320: @ 2247320 :thumb
	mov     r1, #0x0
.thumb
branch_2247322: @ 2247322 :thumb
	ldrb    r0, [r2, #0xa]
	cmp     r0, #0x5
	bne     branch_224732c
	mov     r0, #0x1
	bx      lr
@ 0x224732c

.thumb
branch_224732c: @ 224732c :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x4
	blt     branch_2247322
	mov     r0, #0x0
	bx      lr
@ 0x2247338

.thumb
Function_2247338: @ 2247338 :thumb
	mov     r1, #0x0
.thumb
branch_224733a: @ 224733a :thumb
	ldrb    r0, [r2, #0xa]
	cmp     r0, #0x9
	bne     branch_2247344
	mov     r0, #0x1
	bx      lr
@ 0x2247344

.thumb
branch_2247344: @ 2247344 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x4
	blt     branch_224733a
	mov     r0, #0x0
	bx      lr
@ 0x2247350

.thumb
Function_2247350: @ 2247350 :thumb
	mov     r1, #0x0
.thumb
branch_2247352: @ 2247352 :thumb
	ldrb    r0, [r2, #0xa]
	cmp     r0, #0xc
	bne     branch_224735c
	mov     r0, #0x1
	bx      lr
@ 0x224735c

.thumb
branch_224735c: @ 224735c :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x4
	blt     branch_2247352
	mov     r0, #0x0
	bx      lr
@ 0x2247368

.thumb
Function_2247368: @ 2247368 :thumb
	mov     r1, #0x0
.thumb
branch_224736a: @ 224736a :thumb
	ldrb    r0, [r2, #0xa]
	cmp     r0, #0xf
	bne     branch_2247374
	mov     r0, #0x1
	bx      lr
@ 0x2247374

.thumb
branch_2247374: @ 2247374 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x4
	blt     branch_224736a
	mov     r0, #0x0
	bx      lr
@ 0x2247380

.thumb
Function_2247380: @ 2247380 :thumb
	mov     r1, #0x0
.thumb
branch_2247382: @ 2247382 :thumb
	ldrb    r0, [r2, #0xa]
	cmp     r0, #0x11
	bne     branch_224738c
	mov     r0, #0x1
	bx      lr
@ 0x224738c

.thumb
branch_224738c: @ 224738c :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x4
	blt     branch_2247382
	mov     r0, #0x0
	bx      lr
@ 0x2247398

.thumb
Function_2247398: @ 2247398 :thumb
	mov     r1, #0x0
.thumb
branch_224739a: @ 224739a :thumb
	ldrb    r0, [r2, #0xa]
	cmp     r0, #0x12
	bne     branch_22473a4
	mov     r0, #0x1
	bx      lr
@ 0x22473a4

.thumb
branch_22473a4: @ 22473a4 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x4
	blt     branch_224739a
	mov     r0, #0x0
	bx      lr
@ 0x22473b0

.thumb
Function_22473b0: @ 22473b0 :thumb
	mov     r1, #0x0
.thumb
branch_22473b2: @ 22473b2 :thumb
	ldrb    r0, [r2, #0xa]
	cmp     r0, #0x13
	bne     branch_22473bc
	mov     r0, #0x1
	bx      lr
@ 0x22473bc

.thumb
branch_22473bc: @ 22473bc :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x4
	blt     branch_22473b2
	mov     r0, #0x0
	bx      lr
@ 0x22473c8

.thumb
Function_22473c8: @ 22473c8 :thumb
	mov     r1, #0x0
.thumb
branch_22473ca: @ 22473ca :thumb
	ldrb    r0, [r2, #0xa]
	cmp     r0, #0x14
	bne     branch_22473d4
	mov     r0, #0x1
	bx      lr
@ 0x22473d4

.thumb
branch_22473d4: @ 22473d4 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x4
	blt     branch_22473ca
	mov     r0, #0x0
	bx      lr
@ 0x22473e0

.thumb
Function_22473e0: @ 22473e0 :thumb
	mov     r1, #0x0
.thumb
branch_22473e2: @ 22473e2 :thumb
	ldrb    r0, [r2, #0xa]
	cmp     r0, #0x15
	bne     branch_22473ec
	mov     r0, #0x1
	bx      lr
@ 0x22473ec

.thumb
branch_22473ec: @ 22473ec :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x4
	blt     branch_22473e2
	mov     r0, #0x0
	bx      lr
@ 0x22473f8

.thumb
Function_22473f8: @ 22473f8 :thumb
	push    {r3,r4}
	lsl     r1, r1, #1
	add     r2, r0, r1
	mov     r1, #0x12
	ldsh    r3, [r2, r1]
	mov     r4, #0x0
.thumb
branch_2247404: @ 2247404 :thumb
	ldsh    r2, [r0, r1]
	cmp     r3, r2
	bgt     branch_2247412
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r4, #0x4
	blt     branch_2247404
.thumb
branch_2247412: @ 2247412 :thumb
	cmp     r4, #0x4
	bne     branch_224741c
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x224741c

.thumb
branch_224741c: @ 224741c :thumb
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x2247422


.align 2, 0


.thumb
Function_2247424: @ 2247424 :thumb
	push    {r3,r4}
	ldrb    r2, [r0, #0x0]
	cmp     r2, #0x4
	bne     branch_224744e
	lsl     r1, r1, #1
	add     r2, r0, r1
	mov     r1, #0x12
	ldsh    r3, [r2, r1]
	mov     r4, #0x0
.thumb
branch_2247436: @ 2247436 :thumb
	ldsh    r2, [r0, r1]
	cmp     r3, r2
	bgt     branch_2247444
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r4, #0x4
	blt     branch_2247436
.thumb
branch_2247444: @ 2247444 :thumb
	cmp     r4, #0x4
	bne     branch_224744e
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x224744e

.thumb
branch_224744e: @ 224744e :thumb
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x2247454

.thumb
Function_2247454: @ 2247454 :thumb
	ldr     r3, [sp, #0x0]
	mov     r1, #0x0
.thumb
branch_2247458: @ 2247458 :thumb
	ldrb    r0, [r2, #0xa]
	cmp     r0, #0x4
	bne     branch_2247468
	ldrb    r0, [r2, #0xb]
	cmp     r3, r0
	bne     branch_2247468
	mov     r0, #0x1
	bx      lr
@ 0x2247468

.thumb
branch_2247468: @ 2247468 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x4
	blt     branch_2247458
	mov     r0, #0x0
	bx      lr
@ 0x2247474

.thumb
Function_2247474: @ 2247474 :thumb
	ldr     r3, [sp, #0x0]
	mov     r1, #0x0
.thumb
branch_2247478: @ 2247478 :thumb
	ldrb    r0, [r2, #0xb]
	cmp     r3, r0
	bne     branch_2247482
	mov     r0, #0x1
	bx      lr
@ 0x2247482

.thumb
branch_2247482: @ 2247482 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x4
	blt     branch_2247478
	mov     r0, #0x0
	bx      lr
@ 0x224748e


.align 2, 0


.thumb
Function_2247490: @ 2247490 :thumb
	push    {r3-r6}
	ldr     r5, [sp, #0x10]
	mov     r4, #0x0
.thumb
branch_2247496: @ 2247496 :thumb
	ldrb    r1, [r2, #0xb]
	cmp     r5, r1
	beq     branch_22474a4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r2, #0xc
	cmp     r4, #0x4
	blt     branch_2247496
.thumb
branch_22474a4: @ 22474a4 :thumb
	cmp     r4, #0x4
	bne     branch_22474ae
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x22474ae

.thumb
branch_22474ae: @ 22474ae :thumb
	mov     r5, #0x0
	mov     r6, r5
	mov     r2, #0x1
	mov     r1, #0x22
.thumb
branch_22474b6: @ 22474b6 :thumb
	add     r4, r0, r6
	ldsb    r4, [r4, r1]
	cmp     r4, #0x28
	bne     branch_22474c2
	strb    r2, [r3, r6]
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_22474c2: @ 22474c2 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, #0x3
	blt     branch_22474b6
	cmp     r5, #0x0
	ble     branch_22474d2
	mov     r0, #0x1
	pop     {r3-r6}
	bx      lr
@ 0x22474d2

.thumb
branch_22474d2: @ 22474d2 :thumb
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x22474d8

.thumb
Function_22474d8: @ 22474d8 :thumb
	push    {r3-r6}
	ldr     r5, [sp, #0x10]
	mov     r4, #0x0
.thumb
branch_22474de: @ 22474de :thumb
	ldrb    r1, [r2, #0xb]
	cmp     r5, r1
	beq     branch_22474ec
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r2, #0xc
	cmp     r4, #0x4
	blt     branch_22474de
.thumb
branch_22474ec: @ 22474ec :thumb
	cmp     r4, #0x4
	bne     branch_22474f6
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x22474f6

.thumb
branch_22474f6: @ 22474f6 :thumb
	mov     r5, #0x0
	mov     r6, r5
	mov     r2, #0x1
	mov     r1, #0x22
.thumb
branch_22474fe: @ 22474fe :thumb
	add     r4, r0, r6
	ldsb    r4, [r4, r1]
	cmp     r4, #0x1e
	bne     branch_224750a
	.hword  0x1c6d @ add r5, r5, #0x1
	strb    r2, [r3, r6]
.thumb
branch_224750a: @ 224750a :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, #0x3
	blt     branch_22474fe
	cmp     r5, #0x0
	ble     branch_224751a
	mov     r0, #0x1
	pop     {r3-r6}
	bx      lr
@ 0x224751a

.thumb
branch_224751a: @ 224751a :thumb
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x2247520

.thumb
Function_2247520: @ 2247520 :thumb
	mov     r1, #0x0
.thumb
branch_2247522: @ 2247522 :thumb
	ldrb    r0, [r2, #0xa]
	cmp     r0, #0x8
	bne     branch_224752c
	mov     r0, #0x1
	bx      lr
@ 0x224752c

.thumb
branch_224752c: @ 224752c :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x4
	blt     branch_2247522
	mov     r0, #0x0
	bx      lr
@ 0x2247538

.thumb
Function_2247538: @ 2247538 :thumb
	mov     r1, #0x0
.thumb
branch_224753a: @ 224753a :thumb
	ldrb    r0, [r2, #0xa]
	cmp     r0, #0xd
	bne     branch_2247544
	mov     r0, #0x1
	bx      lr
@ 0x2247544

.thumb
branch_2247544: @ 2247544 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x4
	blt     branch_224753a
	mov     r0, #0x0
	bx      lr
@ 0x2247550

.thumb
Function_2247550: @ 2247550 :thumb
	push    {r3-r6}
	mov     r6, #0x0
	mov     r5, r6
	mov     r2, #0x1
	mov     r1, #0x22
.thumb
branch_224755a: @ 224755a :thumb
	add     r4, r0, r5
	ldsb    r4, [r4, r1]
	cmp     r4, #0x28
	bne     branch_2247566
	.hword  0x1c76 @ add r6, r6, #0x1
	strb    r2, [r3, r5]
.thumb
branch_2247566: @ 2247566 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x3
	blt     branch_224755a
	cmp     r6, #0x0
	ble     branch_2247576
	mov     r0, #0x1
	pop     {r3-r6}
	bx      lr
@ 0x2247576

.thumb
branch_2247576: @ 2247576 :thumb
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x224757c

.thumb
Function_224757c: @ 224757c :thumb
	push    {r3-r6}
	mov     r6, #0x0
	mov     r5, r6
	mov     r2, #0x1
	mov     r1, #0x22
.thumb
branch_2247586: @ 2247586 :thumb
	add     r4, r0, r5
	ldsb    r4, [r4, r1]
	cmp     r4, #0x1e
	bne     branch_2247592
	.hword  0x1c76 @ add r6, r6, #0x1
	strb    r2, [r3, r5]
.thumb
branch_2247592: @ 2247592 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x3
	blt     branch_2247586
	cmp     r6, #0x0
	ble     branch_22475a2
	mov     r0, #0x1
	pop     {r3-r6}
	bx      lr
@ 0x22475a2

.thumb
branch_22475a2: @ 22475a2 :thumb
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x22475a8

.thumb
Function_22475a8: @ 22475a8 :thumb
	push    {r3-r6}
	mov     r6, #0x0
	mov     r5, r6
	mov     r2, #0x1
	mov     r1, #0x22
.thumb
branch_22475b2: @ 22475b2 :thumb
	add     r4, r0, r5
	ldsb    r4, [r4, r1]
	cmp     r4, #0xa
	bgt     branch_22475be
	.hword  0x1c76 @ add r6, r6, #0x1
	strb    r2, [r3, r5]
.thumb
branch_22475be: @ 22475be :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x3
	blt     branch_22475b2
	cmp     r6, #0x0
	ble     branch_22475ce
	mov     r0, #0x1
	pop     {r3-r6}
	bx      lr
@ 0x22475ce

.thumb
branch_22475ce: @ 22475ce :thumb
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x22475d4

.thumb
Function_22475d4: @ 22475d4 :thumb
	push    {r3,r4}
	mov     r4, #0x0
	mov     r1, #0x22
.thumb
branch_22475da: @ 22475da :thumb
	add     r2, r0, r4
	ldsb    r2, [r2, r1]
	cmp     r2, #0x14
	bge     branch_22475e8
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x22475e8

.thumb
branch_22475e8: @ 22475e8 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_22475da
	mov     r1, #0x0
	mov     r0, #0x1
.thumb
branch_22475f2: @ 22475f2 :thumb
	strb    r0, [r3, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, #0x3
	blt     branch_22475f2
	pop     {r3,r4}
	bx      lr
@ 0x22475fe


.align 2, 0


.thumb
Function_2247600: @ 2247600 :thumb
	push    {r3,r4}
	mov     r4, #0x0
	mov     r1, #0x22
.thumb
branch_2247606: @ 2247606 :thumb
	add     r2, r0, r4
	ldsb    r2, [r2, r1]
	cmp     r2, #0x14
	ble     branch_2247614
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x2247614

.thumb
branch_2247614: @ 2247614 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_2247606
	mov     r1, #0x0
	mov     r0, #0x1
.thumb
branch_224761e: @ 224761e :thumb
	strb    r0, [r3, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, #0x3
	blt     branch_224761e
	pop     {r3,r4}
	bx      lr
@ 0x224762a


.align 2, 0


.thumb
Function_224762c: @ 224762c :thumb
	push    {r3-r6}
	mov     r6, #0x0
	mov     r5, r6
	mov     r2, #0x1
	mov     r1, #0x22
.thumb
branch_2247636: @ 2247636 :thumb
	add     r4, r0, r5
	ldsb    r4, [r4, r1]
	cmp     r4, #0x14
	bgt     branch_2247642
	strb    r2, [r3, r5]
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_2247642: @ 2247642 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x3
	blt     branch_2247636
	cmp     r6, #0x1
	bne     branch_2247652
	mov     r0, #0x1
	pop     {r3-r6}
	bx      lr
@ 0x2247652

.thumb
branch_2247652: @ 2247652 :thumb
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x2247658

.thumb
Function_2247658: @ 2247658 :thumb
	push    {r3-r6}
	mov     r6, #0x0
	mov     r5, r6
	mov     r2, #0x1
	mov     r1, #0x22
.thumb
branch_2247662: @ 2247662 :thumb
	add     r4, r0, r5
	ldsb    r4, [r4, r1]
	cmp     r4, #0x28
	bne     branch_224766e
	strb    r2, [r3, r5]
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_224766e: @ 224766e :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x3
	blt     branch_2247662
	cmp     r6, #0x2
	bne     branch_224767e
	mov     r0, #0x1
	pop     {r3-r6}
	bx      lr
@ 0x224767e

.thumb
branch_224767e: @ 224767e :thumb
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x2247684

.thumb
Function_2247684: @ 2247684 :thumb
	push    {r3-r6}
	mov     r6, #0x0
	mov     r5, r6
	mov     r2, #0x1
	mov     r1, #0x22
.thumb
branch_224768e: @ 224768e :thumb
	add     r4, r0, r5
	ldsb    r4, [r4, r1]
	cmp     r4, #0x0
	bne     branch_224769a
	strb    r2, [r3, r5]
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_224769a: @ 224769a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x3
	blt     branch_224768e
	cmp     r6, #0x1
	bne     branch_22476aa
	mov     r0, #0x1
	pop     {r3-r6}
	bx      lr
@ 0x22476aa

.thumb
branch_22476aa: @ 22476aa :thumb
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x22476b0

.thumb
Function_22476b0: @ 22476b0 :thumb
	push    {r3-r6}
	ldr     r5, [sp, #0x10]
	mov     r4, #0x0
.thumb
branch_22476b6: @ 22476b6 :thumb
	ldrb    r1, [r2, #0xb]
	cmp     r5, r1
	beq     branch_22476c4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r2, #0xc
	cmp     r4, #0x4
	blt     branch_22476b6
.thumb
branch_22476c4: @ 22476c4 :thumb
	cmp     r4, #0x4
	bne     branch_22476ce
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x22476ce

.thumb
branch_22476ce: @ 22476ce :thumb
	mov     r5, #0x0
	mov     r6, r5
	mov     r2, #0x1
	mov     r1, #0x22
.thumb
branch_22476d6: @ 22476d6 :thumb
	add     r4, r0, r6
	ldsb    r4, [r4, r1]
	cmp     r4, #0x28
	bne     branch_22476e2
	strb    r2, [r3, r6]
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_22476e2: @ 22476e2 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, #0x3
	blt     branch_22476d6
	cmp     r5, #0x0
	ble     branch_22476f2
	mov     r0, #0x1
	pop     {r3-r6}
	bx      lr
@ 0x22476f2

.thumb
branch_22476f2: @ 22476f2 :thumb
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x22476f8


.incbin "./baserom/overlay/overlay_0017.bin", 0xc5b8, 0x2247a88 - 0x22476f8


.thumb
Function_2247a88: @ 2247a88 :thumb
	push    {r3,lr}
	lsl     r2, r2, #16
	mov     r3, #0x0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2247a9a


.align 2, 0


.thumb
Function_2247a9c: @ 2247a9c :thumb
	push    {r3,lr}
	mov     r1, r2
	mov     r2, #0x0
	mov     r3, r2
	bl      Function_224f26c
	pop     {r3,pc}
@ 0x2247aaa


.align 2, 0


.thumb
Function_2247aac: @ 2247aac :thumb
	bx      lr
@ 0x2247aae


.align 2, 0


.thumb
Function_2247ab0: @ 2247ab0 :thumb
	push    {r3,lr}
	lsl     r2, r2, #16
	mov     r3, #0x0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2247ac2


.align 2, 0


.thumb
Function_2247ac4: @ 2247ac4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	ldr     r0, [pc, #0x1c] @ 0x2247ae8, (=#0xf1c)
	mov     r2, #0x1
	strb    r2, [r1, r0]
	ldr     r0, [r1, #0x0]
	bl      Function_2094edc
	cmp     r0, #0x0
	bne     branch_2247ae6
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, r4
	mov     r3, r2
	bl      Function_224f26c
.thumb
branch_2247ae6: @ 2247ae6 :thumb
	pop     {r3-r5,pc}
@ 0x2247ae8

.word 0xf1c @ 0x2247ae8
.thumb
Function_2247aec: @ 2247aec :thumb
	push    {r3,lr}
	mov     r1, #0x12
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2247afe


.align 2, 0


.thumb
Function_2247b00: @ 2247b00 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	str     r0, [sp, #0x10]
	mov     r6, r1
	mov     r0, #0x16
	mov     r1, #0x1c
	mov     r5, r2
	mov     r7, r3
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x1c
	blx     MI_CpuFill8
	str     r6, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	mov     r5, #0x0
	strh    r0, [r4, #0xa]
	ldr     r0, [sp, #0x10]
	str     r0, [r4, #0xc]
	ldrb    r0, [r7, #0x0]
	strb    r0, [r4, #0x11]
	b       branch_2247b60
@ 0x2247b3c

.thumb
branch_2247b3c: @ 2247b3c :thumb
	ldr     r1, [r4, #0x0]
	lsl     r0, r5, #4
	add     r1, r1, r0
	mov     r0, #0xf2
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2247b5e
	bl      0x225b020
	ldr     r1, [r4, #0x0]
	lsl     r0, r5, #4
	add     r2, r1, r0
	mov     r0, #0xf2
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r2, r0]
.thumb
branch_2247b5e: @ 2247b5e :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2247b60: @ 2247b60 :thumb
	cmp     r5, #0x4
	blt     branch_2247b3c
	ldrb    r0, [r7, #0x0]
	ldr     r1, [r6, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x2
	bl      Function_20765b8
	add     r0, sp, #0x14
	mov     r1, #0x0
	mov     r2, #0x10
	blx     MI_CpuFill8
	mov     r0, #0x16
	str     r0, [sp, #0x20]
	mov     r1, #0x80
	mov     r0, #0x68
	str     r1, [sp, #0x18]
	str     r0, [sp, #0x1c]
	ldrb    r2, [r7, #0x0]
	lsl     r2, r2, #4
	add     r3, r6, r2
	ldr     r2, [pc, #0xb4] @ 0x2247c44, (=#0xf24)
	str     r1, [r3, r2]
	ldrb    r1, [r7, #0x0]
	lsl     r1, r1, #4
	add     r3, r6, r1
	add     r1, r2, #0x4
	str     r0, [r3, r1]
	ldrb    r1, [r7, #0x0]
	ldr     r2, [r6, #0x0]
	add     r0, sp, #0x14
	lsl     r1, r1, #2
	add     r1, r2, r1
	add     r1, #0xf8
	ldr     r1, [r1, #0x0]
	bl      0x225afd4
	ldrb    r1, [r7, #0x0]
	lsl     r1, r1, #4
	add     r2, r6, r1
	mov     r1, #0xf2
	lsl     r1, r1, #4
	str     r0, [r2, r1]
	ldrb    r0, [r7, #0x0]
	lsl     r0, r0, #4
	add     r0, r6, r0
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bl      0x225b074
	ldr     r0, [pc, #0x7c] @ 0x2247c48, (=#0x4000048)
	mov     r2, #0x3f
	ldrh    r1, [r0, #0x0]
	mov     r3, #0x1f
	bic     r1, r2
	mov     r5, r1
	orr     r5, r3
	mov     r1, #0x20
	orr     r1, r5
	strh    r1, [r0, #0x0]
	ldrh    r1, [r0, #0x2]
	bic     r1, r2
	orr     r1, r3
	strh    r1, [r0, #0x2]
	mov     r1, #0x1
	mov     r2, r1
	add     r0, #0x8
	sub     r2, #0x11
	blx     G2x_SetBlendBrightness_
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x54] @ 0x2247c4c, (=#0xffff1fff)
	mov     r3, #0xff
	and     r1, r0
	lsr     r0, r2, #13
	orr     r0, r1
	mov     r1, #0xf6
	str     r0, [r2, #0x0]
	lsl     r1, r1, #4
	mov     r0, #0x0
	strb    r0, [r6, r1]
	add     r2, r1, #0x1
	strb    r0, [r6, r2]
	add     r2, r1, #0x2
	strb    r3, [r6, r2]
	ldr     r2, [pc, #0x3c] @ 0x2247c50, (=#0x2254468)
	.hword  0x1cc9 @ add r1, r1, #0x3
	ldsb    r2, [r2, r0]
	mov     r3, #0x2
	.hword  0x1d12 @ add r2, r2, #0x4
	lsl     r2, r2, #3
	strb    r2, [r6, r1]
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x16
	str     r0, [sp, #0xc]
	ldr     r2, [r6, #0x30]
	mov     r0, #0x2d
	mov     r1, #0x15
	bl      Function_2006e60
	ldr     r0, [pc, #0x1c] @ 0x2247c54, (=#0x2247c5d)
	ldr     r2, [pc, #0x1c] @ 0x2247c58, (=#0x7530)
	mov     r1, r4
	bl      Function_200d9e8
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2247c44

.word 0xf24 @ 0x2247c44
.word 0x4000048 @ 0x2247c48
.word 0xffff1fff @ 0x2247c4c
.word 0x2254468 @ 0x2247c50
.word 0x2247c5d @ 0x2247c54
.word 0x7530 @ 0x2247c58

.incbin "./baserom/overlay/overlay_0017.bin", 0xcb1c, 0x2247d68 - 0x2247c5c


.thumb
Function_2247d68: @ 2247d68 :thumb
	push    {r3,lr}
	mov     r1, #0x12
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2247d7a


.align 2, 0


.thumb
Function_2247d7c: @ 2247d7c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x16
	mov     r1, #0x1c
	mov     r5, r2
	str     r3, [sp, #0x0]
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x1c
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x20] @ 0x2247dc0, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [sp, #0x0]
	str     r6, [r4, #0xc]
	ldrb    r0, [r0, #0x0]
	strb    r0, [r4, #0x11]
	ldr     r0, [pc, #0xc] @ 0x2247dc4, (=#0x2247dc9)
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2247dbe


.align 2


.word 0x7530 @ 0x2247dc0
.word 0x2247dc9 @ 0x2247dc4

.incbin "./baserom/overlay/overlay_0017.bin", 0xcc88, 0x2247e78 - 0x2247dc8


.thumb
Function_2247e78: @ 2247e78 :thumb
	push    {r3,lr}
	mov     r1, #0x12
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2247e8a


.align 2, 0


.thumb
Function_2247e8c: @ 2247e8c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x16
	mov     r1, #0x1c
	mov     r5, r2
	str     r3, [sp, #0x0]
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x1c
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x24] @ 0x2247ed4, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [sp, #0x0]
	str     r6, [r4, #0xc]
	ldrb    r0, [r0, #0x1]
	strb    r0, [r4, #0x12]
	mov     r0, #0x0
	strb    r0, [r4, #0x1a]
	ldr     r0, [pc, #0xc] @ 0x2247ed8, (=#0x2247f8d)
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2247ed2


.align 2


.word 0x7530 @ 0x2247ed4
.word 0x2247f8d @ 0x2247ed8
.thumb
Function_2247edc: @ 2247edc :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x16
	mov     r1, #0x1c
	mov     r5, r2
	str     r3, [sp, #0x0]
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x1c
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x24] @ 0x2247f24, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [sp, #0x0]
	str     r6, [r4, #0xc]
	ldrb    r0, [r0, #0x2]
	strb    r0, [r4, #0x12]
	mov     r0, #0x1
	strb    r0, [r4, #0x1a]
	ldr     r0, [pc, #0xc] @ 0x2247f28, (=#0x2247f8d)
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2247f22


.align 2


.word 0x7530 @ 0x2247f24
.word 0x2247f8d @ 0x2247f28
.thumb
Function_2247f2c: @ 2247f2c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x16
	mov     r1, #0x1c
	mov     r5, r2
	mov     r6, r3
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x1c
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x0]
	ldr     r2, [pc, #0x38] @ 0x2247f84, (=#0x7530)
	str     r0, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	str     r7, [r4, #0xc]
	ldrb    r1, [r6, #0x1]
	ldrb    r0, [r6, #0x2]
	add     r0, r1, r0
	strb    r0, [r4, #0x12]
	ldrb    r0, [r6, #0x1]
	mov     r1, r4
	strb    r0, [r4, #0x14]
	ldrb    r0, [r6, #0x2]
	strb    r0, [r4, #0x15]
	mov     r0, #0x0
	strb    r0, [r4, #0x1a]
	mov     r0, #0x1
	strb    r0, [r4, #0x1b]
	ldr     r0, [pc, #0xc] @ 0x2247f88, (=#0x2247f8d)
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2247f82


.align 2


.word 0x7530 @ 0x2247f84
.word 0x2247f8d @ 0x2247f88

.incbin "./baserom/overlay/overlay_0017.bin", 0xce4c, 0x2248138 - 0x2247f8c


.thumb
Function_2248138: @ 2248138 :thumb
	push    {r3,lr}
	mov     r1, #0x12
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224814a


.align 2, 0


.thumb
Function_224814c: @ 224814c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x16
	mov     r1, #0x1c
	mov     r5, r2
	str     r3, [sp, #0x0]
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x1c
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x20] @ 0x2248190, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [sp, #0x0]
	str     r6, [r4, #0xc]
	ldrb    r0, [r0, #0x0]
	strb    r0, [r4, #0x11]
	ldr     r0, [pc, #0xc] @ 0x2248194, (=#0x2248199)
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x224818e


.align 2


.word 0x7530 @ 0x2248190
.word 0x2248199 @ 0x2248194

.incbin "./baserom/overlay/overlay_0017.bin", 0xd058, 0x2248258 - 0x2248198


.thumb
Function_2248258: @ 2248258 :thumb
	push    {r3,lr}
	lsl     r2, r2, #16
	mov     r3, #0x0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224826a


.align 2, 0


.thumb
Function_224826c: @ 224826c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x16
	mov     r1, #0x18
	mov     r5, r2
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x18
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x22482a8, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [pc, #0xc] @ 0x22482ac, (=#0x22482b1)
	str     r6, [r4, #0xc]
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x22482a6


.align 2


.word 0x7530 @ 0x22482a8
.word 0x22482b1 @ 0x22482ac

.incbin "./baserom/overlay/overlay_0017.bin", 0xd170, 0x224840c - 0x22482b0


.thumb
Function_224840c: @ 224840c :thumb
	push    {r3,lr}
	lsl     r2, r2, #16
	mov     r3, #0x0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224841e


.align 2, 0


.thumb
Function_2248420: @ 2248420 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x16
	mov     r1, #0x18
	mov     r5, r2
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x18
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x224845c, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [pc, #0xc] @ 0x2248460, (=#0x2248465)
	str     r6, [r4, #0xc]
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x224845a


.align 2


.word 0x7530 @ 0x224845c
.word 0x2248465 @ 0x2248460

.incbin "./baserom/overlay/overlay_0017.bin", 0xd324, 0x22485e8 - 0x2248464


.thumb
Function_22485e8: @ 22485e8 :thumb
	push    {r3,lr}
	mov     r1, #0x12
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x22485fa


.align 2, 0


.thumb
Function_22485fc: @ 22485fc :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x16
	mov     r1, #0x1c
	mov     r5, r2
	str     r3, [sp, #0x0]
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x1c
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x20] @ 0x2248640, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [sp, #0x0]
	str     r6, [r4, #0xc]
	ldrb    r0, [r0, #0x0]
	strb    r0, [r4, #0x11]
	ldr     r0, [pc, #0xc] @ 0x2248644, (=#0x2248649)
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x224863e


.align 2


.word 0x7530 @ 0x2248640
.word 0x2248649 @ 0x2248644

.incbin "./baserom/overlay/overlay_0017.bin", 0xd508, 0x22486e4 - 0x2248648


.thumb
Function_22486e4: @ 22486e4 :thumb
	push    {r3,lr}
	mov     r1, #0x12
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x22486f6


.align 2, 0


.thumb
Function_22486f8: @ 22486f8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x16
	mov     r1, #0x1c
	mov     r5, r2
	str     r3, [sp, #0x0]
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x1c
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x20] @ 0x224873c, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [sp, #0x0]
	str     r6, [r4, #0xc]
	ldrb    r0, [r0, #0x0]
	strb    r0, [r4, #0x11]
	ldr     r0, [pc, #0xc] @ 0x2248740, (=#0x2248745)
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x224873a


.align 2


.word 0x7530 @ 0x224873c
.word 0x2248745 @ 0x2248740

.incbin "./baserom/overlay/overlay_0017.bin", 0xd604, 0x22487e8 - 0x2248744


.thumb
Function_22487e8: @ 22487e8 :thumb
	push    {r3,lr}
	mov     r1, #0x12
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x22487fa


.align 2, 0


.thumb
Function_22487fc: @ 22487fc :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	mov     r6, r1
	mov     r0, #0x16
	mov     r1, #0x58
	mov     r5, r2
	mov     r7, r3
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x58
	blx     MI_CpuFill8
	str     r6, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x38] @ 0x2248858, (=#0x7530)
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [sp, #0x0]
	str     r0, [r4, #0xc]
	ldrb    r0, [r7, #0x0]
	strb    r0, [r4, #0x11]
	str     r6, [r4, #0x2c]
	str     r6, [r4, #0x38]
	mov     r0, r4
	ldrb    r1, [r7, #0x0]
	add     r0, #0x46
	strb    r1, [r0, #0x0]
	str     r6, [r4, #0x48]
	ldrb    r0, [r7, #0x0]
	ldr     r1, [r6, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, r4
	str     r0, [r4, #0x24]
	ldr     r0, [pc, #0xc] @ 0x224885c, (=#0x2248861)
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2248856


.align 2


.word 0x7530 @ 0x2248858
.word 0x2248861 @ 0x224885c

.incbin "./baserom/overlay/overlay_0017.bin", 0xd720, 0x2248d28 - 0x2248860


.thumb
Function_2248d28: @ 2248d28 :thumb
	push    {r3,lr}
	mov     r1, #0x12
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2248d3a


.align 2, 0


.thumb
Function_2248d3c: @ 2248d3c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x16
	mov     r1, #0x1c
	mov     r6, r2
	mov     r5, r3
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x1c
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x0]
	ldr     r2, [pc, #0x40] @ 0x2248d9c, (=#0x7530)
	str     r0, [r4, #0x0]
	ldrh    r0, [r6, #0x0]
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r6, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r6, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r6, #0x6]
	strh    r0, [r4, #0xa]
	str     r7, [r4, #0xc]
	ldrb    r0, [r5, #0x0]
	strb    r0, [r4, #0x11]
	ldrb    r0, [r5, #0x3]
	strb    r0, [r4, #0x13]
	ldrb    r0, [r5, #0x4]
	strb    r0, [r4, #0x14]
	ldrb    r0, [r5, #0x5]
	strb    r0, [r4, #0x15]
	ldrb    r0, [r5, #0x6]
	strb    r0, [r4, #0x16]
	ldrb    r0, [r5, #0x7]
	strb    r0, [r4, #0x17]
	ldrb    r0, [r5, #0x9]
	strb    r0, [r4, #0x19]
	ldrb    r0, [r5, #0x8]
	strb    r0, [r4, #0x18]
	ldr     r0, [pc, #0xc] @ 0x2248da0, (=#0x2248da5)
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2248d9a


.align 2


.word 0x7530 @ 0x2248d9c
.word 0x2248da5 @ 0x2248da0

.incbin "./baserom/overlay/overlay_0017.bin", 0xdc64, 0x2248e58 - 0x2248da4


.thumb
Function_2248e58: @ 2248e58 :thumb
	push    {r3,lr}
	mov     r1, #0x12
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2248e6a


.align 2, 0


.thumb
Function_2248e6c: @ 2248e6c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x16
	mov     r1, #0x18
	mov     r5, r2
	mov     r6, r3
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x18
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x0]
	ldr     r2, [pc, #0x30] @ 0x2248ebc, (=#0x7530)
	str     r0, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	str     r7, [r4, #0xc]
	mov     r0, #0xa
	ldsb    r0, [r6, r0]
	strb    r0, [r4, #0x11]
	mov     r0, #0xb
	ldsb    r0, [r6, r0]
	strb    r0, [r4, #0x12]
	mov     r0, #0xc
	ldsb    r0, [r6, r0]
	strb    r0, [r4, #0x13]
	ldr     r0, [pc, #0x8] @ 0x2248ec0, (=#0x2248ec5)
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2248ebc

.word 0x7530 @ 0x2248ebc
.word 0x2248ec5 @ 0x2248ec0

.incbin "./baserom/overlay/overlay_0017.bin", 0xdd84, 0x2248fbc - 0x2248ec4


.thumb
Function_2248fbc: @ 2248fbc :thumb
	push    {r3,lr}
	lsl     r2, r2, #16
	mov     r3, #0x0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2248fce


.align 2, 0


.thumb
Function_2248fd0: @ 2248fd0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x16
	mov     r1, #0x1c
	mov     r5, r2
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x1c
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x224900c, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [pc, #0xc] @ 0x2249010, (=#0x2249015)
	str     r6, [r4, #0xc]
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x224900a


.align 2


.word 0x7530 @ 0x224900c
.word 0x2249015 @ 0x2249010

.incbin "./baserom/overlay/overlay_0017.bin", 0xded4, 0x224924c - 0x2249014


.thumb
Function_224924c: @ 224924c :thumb
	push    {r3,lr}
	mov     r1, #0x12
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224925e


.align 2, 0


.thumb
Function_2249260: @ 2249260 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x16
	mov     r1, #0x14
	mov     r5, r2
	str     r3, [sp, #0x0]
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x14
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [sp, #0x0]
	str     r6, [r4, #0xc]
	ldrh    r0, [r0, #0x10]
	bl      Function_2005748
	ldr     r0, [pc, #0x8] @ 0x22492a4, (=#0x22492ad)
	ldr     r2, [pc, #0xc] @ 0x22492a8, (=#0x7530)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x22492a4

.word 0x22492ad @ 0x22492a4
.word 0x7530 @ 0x22492a8

.incbin "./baserom/overlay/overlay_0017.bin", 0xe16c, 0x22498e8 - 0x22492ac


.thumb
Function_22498e8: @ 22498e8 :thumb
	ldr     r3, [pc, #0x4] @ 0x22498f0, (=#0x2249cfd)
	mov     r1, #0x1
	bx      r3
@ 0x22498ee


.align 2


.word 0x2249cfd @ 0x22498f0

.incbin "./baserom/overlay/overlay_0017.bin", 0xe7b4, 0x2249a0c - 0x22498f4


.thumb
Function_2249a0c: @ 2249a0c :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r4, r0
	add     r0, r6, #0x1
	cmp     r0, #0x4
	bhi     branch_2249a2e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r4, r1, #0
	lsl     r0, r2, #0
	lsl     r4, r2, #0
	lsl     r0, r3, #0
.thumb
branch_2249a2e: @ 2249a2e :thumb
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x2249a32


.incbin "./baserom/overlay/overlay_0017.bin", 0xe8f2, 0x224c57c - 0x2249a32


.thumb
Function_224c57c: @ 224c57c :thumb
	push    {r3,r4}
	ldr     r2, [pc, #0x1c] @ 0x224c59c, (=#0x22546c0)
	add     r1, sp, #0x0
	ldrb    r3, [r2, #0x0]
	add     r4, sp, #0x0
	strb    r3, [r1, #0x0]
	ldrb    r3, [r2, #0x1]
	strb    r3, [r1, #0x1]
	ldrb    r3, [r2, #0x2]
	ldrb    r2, [r2, #0x3]
	strb    r3, [r1, #0x2]
	strb    r2, [r1, #0x3]
	ldrb    r0, [r4, r0]
	pop     {r3,r4}
	bx      lr
@ 0x224c59a


.align 2


.word 0x22546c0 @ 0x224c59c

.incbin "./baserom/overlay/overlay_0017.bin", 0x11460, 0x224cff8 - 0x224c5a0


.thumb
Function_224cff8: @ 224cff8 :thumb
	push    {r3,lr}
	lsl     r2, r2, #16
	mov     r3, #0x0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224d00a


.align 2, 0


.thumb
Function_224d00c: @ 224d00c :thumb
	push    {r3,lr}
	mov     r1, r2
	mov     r2, #0x0
	mov     r3, r2
	bl      Function_224f26c
	pop     {r3,pc}
@ 0x224d01a


.align 2, 0


.thumb
Function_224d01c: @ 224d01c :thumb
	bx      lr
@ 0x224d01e


.align 2, 0


.thumb
Function_224d020: @ 224d020 :thumb
	push    {r3,lr}
	lsl     r2, r2, #16
	mov     r3, #0x0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224d032


.align 2, 0


.thumb
Function_224d034: @ 224d034 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x17
	mov     r1, #0x18
	mov     r5, r2
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x18
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x224d070, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [pc, #0xc] @ 0x224d074, (=#0x224d079)
	str     r6, [r4, #0xc]
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x224d06e


.align 2


.word 0x7530 @ 0x224d070
.word 0x224d079 @ 0x224d074

.incbin "./baserom/overlay/overlay_0017.bin", 0x11f38, 0x224d1d4 - 0x224d078


.thumb
Function_224d1d4: @ 224d1d4 :thumb
	push    {r3,lr}
	lsl     r2, r2, #16
	mov     r3, #0x0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224d1e6


.align 2, 0


.thumb
Function_224d1e8: @ 224d1e8 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r0, #0x17
	mov     r1, #0x18
	mov     r5, r2
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x18
	blx     MI_CpuFill8
	str     r6, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x28] @ 0x224d230, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [pc, #0x18] @ 0x224d234, (=#0x224d241)
	str     r7, [r4, #0xc]
	bl      Function_200d9e8
	ldr     r0, [pc, #0x14] @ 0x224d238, (=#0x1150)
	mov     r1, #0x0
	strb    r1, [r6, r0]
	ldr     r0, [pc, #0x14] @ 0x224d23c, (=#0x46f)
	bl      Function_200549c
	pop     {r3-r7,pc}
@ 0x224d22e


.align 2


.word 0x7530 @ 0x224d230
.word 0x224d241 @ 0x224d234
.word 0x1150 @ 0x224d238
.word 0x46f @ 0x224d23c

.incbin "./baserom/overlay/overlay_0017.bin", 0x12100, 0x224d3c4 - 0x224d240


.thumb
Function_224d3c4: @ 224d3c4 :thumb
	push    {r3,lr}
	lsl     r2, r2, #16
	mov     r3, #0x0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224d3d6


.align 2, 0


.thumb
Function_224d3d8: @ 224d3d8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x17
	mov     r1, #0x14
	mov     r5, r2
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x14
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x224d414, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [pc, #0xc] @ 0x224d418, (=#0x224d41d)
	str     r6, [r4, #0xc]
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x224d412


.align 2


.word 0x7530 @ 0x224d414
.word 0x224d41d @ 0x224d418

.incbin "./baserom/overlay/overlay_0017.bin", 0x122dc, 0x224d4ec - 0x224d41c


.thumb
Function_224d4ec: @ 224d4ec :thumb
	push    {r3,lr}
	mov     r1, #0x4
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224d4fe


.align 2, 0


.thumb
Function_224d500: @ 224d500 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r5, r1
	mov     r7, r2
	mov     r2, r3
	ldr     r0, [pc, #0x30] @ 0x224d53c, (=#0x1c0c)
	mov     r1, #0x1
	strb    r1, [r5, r0]
	ldr     r3, [pc, #0x2c] @ 0x224d540, (=#0x172)
	mov     r1, #0x0
.thumb
branch_224d514: @ 224d514 :thumb
	ldr     r6, [r5, #0x0]
	ldrb    r0, [r2, r1]
	add     r6, r6, r1
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r0, [r6, r3]
	cmp     r1, #0x4
	blt     branch_224d514
	ldr     r0, [r5, #0x0]
	bl      Function_2094edc
	cmp     r0, #0x0
	bne     branch_224d538
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, r7
	mov     r3, r2
	bl      Function_224f26c
.thumb
branch_224d538: @ 224d538 :thumb
	pop     {r3-r7,pc}
@ 0x224d53a


.align 2


.word 0x1c0c @ 0x224d53c
.word 0x172 @ 0x224d540
.thumb
Function_224d544: @ 224d544 :thumb
	push    {r3,lr}
	mov     r1, #0x3c
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224d556


.align 2, 0


.thumb
Function_224d558: @ 224d558 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r1
	mov     r1, #0x57
	mov     r7, r0
	mov     r0, #0x17
	lsl     r1, r1, #2
	mov     r5, r2
	str     r3, [sp, #0x4]
	bl      Function_2018144
	mov     r2, #0x57
	mov     r4, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
	str     r6, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	mov     r3, r4
	add     r3, #0x18
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	mov     r2, #0x7
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	ldr     r5, [sp, #0x4]
	strh    r0, [r4, #0xa]
	str     r7, [r4, #0xc]
.thumb
branch_224d596: @ 224d596 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224d596
	ldr     r0, [r5, #0x0]
	ldr     r2, [pc, #0xb0] @ 0x224d654, (=#0x7530)
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0xb0] @ 0x224d658, (=#0x224d711)
	mov     r1, r4
	str     r6, [r4, #0x54]
	bl      Function_200d9e8
	mov     r7, #0x0
	mov     r5, r4
.thumb
branch_224d5b2: @ 224d5b2 :thumb
	ldr     r1, [r6, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x224d65c, (=#0x127)
	ldrb    r0, [r1, r0]
	cmp     r7, r0
	bge     branch_224d5c6
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_224d668
	b       branch_224d5ce
@ 0x224d5c6

.thumb
branch_224d5c6: @ 224d5c6 :thumb
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_224d668
.thumb
branch_224d5ce: @ 224d5ce :thumb
	mov     r1, #0x53
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x4
	blt     branch_224d5b2
	ldr     r1, [r4, #0x0]
	ldr     r2, [pc, #0x80] @ 0x224d660, (=#0x123)
	ldr     r3, [r1, #0x0]
	mov     r0, #0x0
	ldrb    r3, [r3, r2]
.thumb
branch_224d5e6: @ 224d5e6 :thumb
	add     r2, r4, r0
	ldrb    r2, [r2, #0x1a]
	cmp     r3, r2
	bne     branch_224d5f4
	ldr     r2, [pc, #0x74] @ 0x224d664, (=#0xae8)
	strb    r0, [r1, r2]
	b       branch_224d5fa
@ 0x224d5f4

.thumb
branch_224d5f4: @ 224d5f4 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x4
	blt     branch_224d5e6
.thumb
branch_224d5fa: @ 224d5fa :thumb
	mov     r0, r6
	bl      Function_224df54
	ldr     r1, [r6, #0x0]
	ldr     r0, [pc, #0x58] @ 0x224d65c, (=#0x127)
	ldrb    r5, [r1, r0]
	cmp     r5, #0x4
	bge     branch_224d650
	ldr     r0, [sp, #0x4]
	lsl     r1, r5, #2
	add     r7, r0, r1
	mov     r1, r4
	mov     r0, #0x3c
	add     r1, #0x5c
	mul     r0, r5
	add     r0, r1, r0
	str     r0, [sp, #0x8]
.thumb
branch_224d61c: @ 224d61c :thumb
	mov     r2, #0x0
.thumb
branch_224d61e: @ 224d61e :thumb
	add     r0, r4, r2
	ldrb    r0, [r0, #0x1a]
	cmp     r5, r0
	beq     branch_224d62c
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r2, #0x4
	blt     branch_224d61e
.thumb
branch_224d62c: @ 224d62c :thumb
	ldr     r0, [r6, #0x0]
	add     r1, r0, r5
	mov     r0, #0x43
	lsl     r0, r0, #2
	ldrb    r0, [r1, r0]
	mov     r1, r5
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	ldr     r3, [r7, #0x14]
	bl      Function_224e930
	ldr     r0, [sp, #0x8]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r0, #0x3c
	.hword  0x1d3f @ add r7, r7, #0x4
	str     r0, [sp, #0x8]
	cmp     r5, #0x4
	blt     branch_224d61c
.thumb
branch_224d650: @ 224d650 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224d654

.word 0x7530 @ 0x224d654
.word 0x224d711 @ 0x224d658
.word 0x127 @ 0x224d65c
.word 0x123 @ 0x224d660
.word 0xae8 @ 0x224d664
.thumb
Function_224d668: @ 224d668 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x17
	mov     r1, #0x14
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x14
	mov     r4, r0
	blx     MI_CpuFill8
	str     r5, [r4, #0x4]
	ldr     r0, [pc, #0x10] @ 0x224d694, (=#0x224d6cd)
	ldr     r2, [pc, #0x10] @ 0x224d698, (=#0x7594)
	mov     r1, r4
	strb    r6, [r4, #0x12]
	bl      Function_200d9e8
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x224d694

.word 0x224d6cd @ 0x224d694
.word 0x7594 @ 0x224d698

.incbin "./baserom/overlay/overlay_0017.bin", 0x1255c, 0x224df54 - 0x224d69c


.thumb
Function_224df54: @ 224df54 :thumb
	push    {r4,r5}
	ldr     r1, [pc, #0x24] @ 0x224df7c, (=#0xad9)
	mov     r5, #0x0
	mov     r3, r5
	add     r2, r1, #0x4
.thumb
branch_224df5e: @ 224df5e :thumb
	add     r4, r0, r5
	strb    r3, [r4, r1]
	.hword  0x1c6d @ add r5, r5, #0x1
	strb    r3, [r4, r2]
	cmp     r5, #0x4
	blt     branch_224df5e
	ldr     r1, [pc, #0x14] @ 0x224df80, (=#0xae1)
	strb    r3, [r0, r1]
	add     r2, r1, #0x1
	strb    r3, [r0, r2]
	.hword  0x1c89 @ add r1, r1, #0x2
	strb    r3, [r0, r1]
	pop     {r4,r5}
	bx      lr
@ 0x224df7a


.align 2


.word 0xad9 @ 0x224df7c
.word 0xae1 @ 0x224df80
.thumb
Function_224df84: @ 224df84 :thumb
	bx      lr
@ 0x224df86


.align 2, 0


.thumb
Function_224df88: @ 224df88 :thumb
	push    {r3,lr}
	mov     r1, #0x3c
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224df9a


.align 2, 0


.thumb
Function_224df9c: @ 224df9c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0x17
	str     r1, [sp, #0x0]
	mov     r1, r0
	add     r1, #0xed
	mov     r5, r2
	mov     r6, r3
	bl      Function_2018144
	mov     r2, #0x41
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x0]
	mov     r3, r4
	str     r0, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	add     r3, #0xc8
	mov     r2, #0x7
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	str     r7, [r4, #0xc]
.thumb
branch_224dfd8: @ 224dfd8 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224dfd8
	ldr     r0, [r6, #0x0]
	ldr     r2, [pc, #0xc] @ 0x224dff0, (=#0x7530)
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0xc] @ 0x224dff4, (=#0x224dff9)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x224dff0

.word 0x7530 @ 0x224dff0
.word 0x224dff9 @ 0x224dff4

.incbin "./baserom/overlay/overlay_0017.bin", 0x12eb8, 0x224e43c - 0x224dff8


.thumb
Function_224e43c: @ 224e43c :thumb
	push    {r3,lr}
	mov     r1, #0x3c
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224e44e


.align 2, 0


.thumb
Function_224e450: @ 224e450 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x17
	mov     r1, #0x50
	mov     r5, r2
	mov     r6, r3
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x50
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x0]
	mov     r3, r4
	str     r0, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	add     r3, #0x10
	mov     r2, #0x7
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	str     r7, [r4, #0xc]
.thumb
branch_224e488: @ 224e488 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224e488
	ldr     r0, [r6, #0x0]
	ldr     r2, [pc, #0xc] @ 0x224e4a0, (=#0x7530)
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0xc] @ 0x224e4a4, (=#0x224e4a9)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x224e4a0

.word 0x7530 @ 0x224e4a0
.word 0x224e4a9 @ 0x224e4a4

.incbin "./baserom/overlay/overlay_0017.bin", 0x13368, 0x224e518 - 0x224e4a8


.thumb
Function_224e518: @ 224e518 :thumb
	push    {r3,lr}
	mov     r1, #0x3c
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224e52a


.align 2, 0


.thumb
Function_224e52c: @ 224e52c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x17
	mov     r1, #0x50
	mov     r5, r2
	mov     r6, r3
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x50
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x0]
	mov     r3, r4
	str     r0, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	add     r3, #0x10
	mov     r2, #0x7
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	str     r7, [r4, #0xc]
.thumb
branch_224e564: @ 224e564 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224e564
	ldr     r0, [r6, #0x0]
	ldr     r2, [pc, #0xc] @ 0x224e57c, (=#0x7530)
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0xc] @ 0x224e580, (=#0x224e585)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x224e57c

.word 0x7530 @ 0x224e57c
.word 0x224e585 @ 0x224e580

.incbin "./baserom/overlay/overlay_0017.bin", 0x13444, 0x224e648 - 0x224e584


.thumb
Function_224e648: @ 224e648 :thumb
	push    {r3,lr}
	mov     r1, #0x3c
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224e65a


.align 2, 0


.thumb
Function_224e65c: @ 224e65c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x17
	mov     r1, #0x20
	mov     r6, r2
	mov     r5, r3
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x20
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x0]
	ldr     r2, [pc, #0x44] @ 0x224e6c0, (=#0x7530)
	str     r0, [r4, #0x0]
	ldrh    r0, [r6, #0x0]
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r6, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r6, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r6, #0x6]
	strh    r0, [r4, #0xa]
	str     r7, [r4, #0xc]
	ldrb    r0, [r5, #0x0]
	strb    r0, [r4, #0x11]
	ldrh    r0, [r5, #0x30]
	strh    r0, [r4, #0x14]
	ldrh    r0, [r5, #0x32]
	strh    r0, [r4, #0x16]
	ldrh    r0, [r5, #0x34]
	strh    r0, [r4, #0x18]
	mov     r0, r5
	add     r0, #0x36
	ldrb    r0, [r0, #0x0]
	strb    r0, [r4, #0x1a]
	mov     r0, r5
	add     r0, #0x38
	ldrb    r0, [r0, #0x0]
	add     r5, #0x37
	strb    r0, [r4, #0x1c]
	ldrb    r0, [r5, #0x0]
	strb    r0, [r4, #0x1b]
	ldr     r0, [pc, #0x8] @ 0x224e6c4, (=#0x224e6c9)
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x224e6c0

.word 0x7530 @ 0x224e6c0
.word 0x224e6c9 @ 0x224e6c4

.incbin "./baserom/overlay/overlay_0017.bin", 0x13588, 0x224e77c - 0x224e6c8


.thumb
Function_224e77c: @ 224e77c :thumb
	push    {r3,lr}
	mov     r1, #0x30
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224e78e


.align 2, 0


.thumb
Function_224e790: @ 224e790 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x224e7b0, (=#0xaec)
	mov     r5, #0x6
	add     r6, r1, r0
.thumb
branch_224e79a: @ 224e79a :thumb
	ldmia   r3!, {r0,r1}
	stmia   r6!, {r0,r1}
	.hword  0x1e6d @ sub r5, r5, #0x1
	bne     branch_224e79a
	mov     r1, r2
	mov     r2, #0x0
	mov     r0, r4
	mov     r3, r2
	bl      Function_224f26c
	pop     {r4-r6,pc}
@ 0x224e7b0

.word 0xaec @ 0x224e7b0
.thumb
Function_224e7b4: @ 224e7b4 :thumb
	push    {r3,lr}
	mov     r1, #0x3c
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224e7c6


.align 2, 0


.thumb
Function_224e7c8: @ 224e7c8 :thumb
	push    {r3-r7,lr}
	mov     r4, r3
	mov     r6, r0
	mov     r5, r1
	mov     r7, r2
	bl      Function_200569c
	ldrh    r0, [r4, #0x24]
	bl      Function_200549c
	ldr     r0, [pc, #0x1c] @ 0x224e7fc, (=#0x1150)
	mov     r1, #0x1
	strb    r1, [r5, r0]
	add     r1, r0, #0x4
	add     r0, #0xc
	add     r1, r5, r1
	ldmia   r1!, {r2,r3}
	add     r0, r5, r0
	stmia   r0!, {r2,r3}
	mov     r2, #0x0
	mov     r0, r6
	mov     r1, r7
	mov     r3, r2
	bl      Function_224f26c
	pop     {r3-r7,pc}
@ 0x224e7fc

.word 0x1150 @ 0x224e7fc
.thumb
Function_224e800: @ 224e800 :thumb
	push    {r3,lr}
	mov     r1, #0x3c
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x224e812


.align 2, 0


.thumb
Function_224e814: @ 224e814 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x17
	mov     r1, #0x54
	mov     r5, r2
	mov     r6, r3
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x54
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x0]
	mov     r3, r4
	str     r0, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	add     r3, #0x10
	mov     r2, #0x7
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	str     r7, [r4, #0xc]
.thumb
branch_224e84c: @ 224e84c :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224e84c
	ldr     r0, [r6, #0x0]
	ldr     r2, [pc, #0xc] @ 0x224e864, (=#0x7530)
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0xc] @ 0x224e868, (=#0x224e86d)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x224e864

.word 0x7530 @ 0x224e864
.word 0x224e86d @ 0x224e868

.incbin "./baserom/overlay/overlay_0017.bin", 0x1372c, 0x224e930 - 0x224e86c


.thumb
Function_224e930: @ 224e930 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r2
	mov     r5, r0
	mov     r1, #0x0
	mov     r2, #0x3c
	mov     r7, r3
	blx     MI_CpuFill8
	mov     r0, r5
	add     r0, #0x37
	strb    r4, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x38
	strb    r6, [r0, #0x0]
	str     r7, [r5, #0x30]
	ldr     r0, [sp, #0x18]
	add     r5, #0x39
	strb    r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x224e958


.incbin "./baserom/overlay/overlay_0017.bin", 0x13818, 0x224f080 - 0x224e958


.thumb
Function_224f080: @ 224f080 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r4, #0x5
	bcc     branch_224f08c
	bl      Function_2022974
.thumb
branch_224f08c: @ 224f08c :thumb
	ldr     r0, [pc, #0x4] @ 0x224f094, (=#0x2254a90)
	lsl     r1, r4, #2
	ldr     r0, [r0, r1]
	pop     {r4,pc}
@ 0x224f094

.word 0x2254a90 @ 0x224f094
.thumb
Function_224f098: @ 224f098 :thumb
	mov     r0, #0x31
	bx      lr
@ 0x224f09c

.thumb
Function_224f09c: @ 224f09c :thumb
	mov     r0, #0x32
	bx      lr
@ 0x224f0a0

.thumb
Function_224f0a0: @ 224f0a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r4, #0x5
	bcc     branch_224f0ac
	bl      Function_2022974
.thumb
branch_224f0ac: @ 224f0ac :thumb
	ldr     r0, [pc, #0x4] @ 0x224f0b4, (=#0x2254a88)
	ldrb    r0, [r0, r4]
	pop     {r4,pc}
@ 0x224f0b2


.align 2


.word 0x2254a88 @ 0x224f0b4
.thumb
Function_224f0b8: @ 224f0b8 :thumb
	mov     r0, #0x2e
	bx      lr
@ 0x224f0bc

.thumb
Function_224f0bc: @ 224f0bc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r3
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	bl      Function_224f0b8
	str     r0, [sp, #0xc]
	mov     r0, r7
	bl      Function_224f080
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x28]
	str     r4, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	mov     r0, r5
	mov     r1, r6
	bl      Function_200cbdc
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224f0ee


.align 2, 0


.thumb
Function_224f0f0: @ 224f0f0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_224f0b8
	str     r0, [sp, #0x8]
	bl      Function_224f098
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r1, r4
	str     r6, [sp, #0x4]
	bl      Function_200ce0c
	bl      Function_224f0b8
	mov     r6, r0
	bl      Function_224f09c
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	str     r7, [sp, #0x4]
	bl      Function_200ce3c
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224f138


.incbin "./baserom/overlay/overlay_0017.bin", 0x13ff8, 0x224f154 - 0x224f138


.thumb
Function_224f154: @ 224f154 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r6, r3
	mov     r4, r0
	mov     r7, r1
	add     r5, sp, #0x0
	mov     r3, #0x6
.thumb
branch_224f162: @ 224f162 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	.hword  0x1e5b @ sub r3, r3, #0x1
	bne     branch_224f162
	ldr     r0, [r6, #0x0]
	str     r0, [r5, #0x0]
	mov     r0, r2
	bl      Function_224f0a0
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, r7
	add     r2, sp, #0x0
	bl      Function_200ce6c
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x224f184

.thumb
Function_224f184: @ 224f184 :thumb
	ldr     r3, [pc, #0x0] @ 0x224f188, (=#0x200d0f5)
	bx      r3
@ 0x224f188

.word 0x200d0f5 @ 0x224f188
.thumb
Function_224f18c: @ 224f18c :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x20] @ 0x224f1b0, (=#0xa18)
	mov     r4, r1
	mov     r1, #0x0
	mov     r5, r0
	blx     MI_CpuFill8
	ldr     r0, [r4, #0x0]
	str     r0, [r5, #0x0]
	ldrh    r0, [r4, #0x4]
	strh    r0, [r5, #0x4]
	ldrb    r0, [r4, #0x6]
	strb    r0, [r5, #0x6]
	ldrb    r0, [r4, #0x7]
	strb    r0, [r5, #0x7]
	ldrb    r0, [r4, #0x8]
	strb    r0, [r5, #0x8]
	pop     {r3-r5,pc}
@ 0x224f1b0

.word 0xa18 @ 0x224f1b0
.thumb
Function_224f1b4: @ 224f1b4 :thumb
	push    {r3-r5,lr}
	ldr     r5, [r0, #0xc]
	mov     r4, #0x0
	mov     r2, #0x1
.thumb
branch_224f1bc: @ 224f1bc :thumb
	mov     r3, r2
	lsl     r3, r4
	mov     r1, r5
	tst     r1, r3
	bne     branch_224f1d0
	ldr     r1, [r0, #0xc]
	orr     r1, r3
	str     r1, [r0, #0xc]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x224f1d0

.thumb
branch_224f1d0: @ 224f1d0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x20
	blt     branch_224f1bc
	bl      Function_2022974
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224f1de


.incbin "./baserom/overlay/overlay_0017.bin", 0x1409e, 0x224f1f8 - 0x224f1de


.thumb
Function_224f1f8: @ 224f1f8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	ldr     r4, [sp, #0x28]
	mov     r5, r0
	mov     r0, #0x2
	str     r4, [sp, #0x4]
	add     r4, #0x8
	lsl     r0, r0, #8
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	cmp     r4, r0
	bls     branch_224f216
	bl      Function_2022974
.thumb
branch_224f216: @ 224f216 :thumb
	mov     r0, r5
	mov     r2, #0x2
	add     r0, #0x10
	mov     r1, #0x0
	lsl     r2, r2, #8
	blx     MI_CpuFill8
	add     r0, sp, #0x8
	strb    r6, [r0, #0x4]
	strh    r7, [r0, #0x2]
	mov     r0, r5
	bl      Function_224f1b4
	add     r1, sp, #0x8
	strb    r0, [r1, #0x5]
	mov     r0, #0x0
	strb    r0, [r1, #0x6]
	strh    r4, [r1, #0x0]
	mov     r1, r5
	add     r0, sp, #0x8
	add     r1, #0x10
	mov     r2, #0x8
	blx     MI_CpuCopy32
	mov     r1, r5
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	add     r1, #0x18
	blx     MI_CpuCopy8
	ldr     r0, [pc, #0x14] @ 0x224f268, (=#0xa15)
	mov     r1, #0x0
	strb    r1, [r5, r0]
	mov     r1, #0x1
	.hword  0x1f40 @ sub r0, r0, #0x5
	strb    r1, [r5, r0]
	add     r0, sp, #0x8
	ldrb    r0, [r0, #0x5]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x224f266


.align 2


.word 0xa15 @ 0x224f268
.thumb
Function_224f26c: @ 224f26c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r7, r3
	mov     r0, #0x2
	add     r7, #0x8
	lsl     r0, r0, #8
	mov     r4, r1
	mov     r6, r2
	str     r3, [sp, #0x0]
	cmp     r7, r0
	bls     branch_224f288
	bl      Function_2022974
.thumb
branch_224f288: @ 224f288 :thumb
	mov     r0, r5
	mov     r2, #0x2
	add     r0, #0x10
	mov     r1, #0x0
	lsl     r2, r2, #8
	blx     MI_CpuFill8
	ldrh    r2, [r4, #0x0]
	add     r1, sp, #0x4
	add     r0, sp, #0x4
	strh    r2, [r1, #0x0]
	ldrh    r2, [r4, #0x2]
	strh    r2, [r1, #0x2]
	ldrh    r2, [r4, #0x4]
	strh    r2, [r1, #0x4]
	ldrh    r2, [r4, #0x6]
	strh    r2, [r1, #0x6]
	mov     r2, #0xfe
	strb    r2, [r1, #0x4]
	mov     r2, #0x1
	strb    r2, [r1, #0x6]
	strh    r7, [r1, #0x0]
	mov     r1, r5
	add     r1, #0x10
	mov     r2, #0x8
	blx     MI_CpuCopy32
	cmp     r6, #0x0
	beq     branch_224f2ce
	mov     r1, r5
	ldr     r2, [sp, #0x0]
	mov     r0, r6
	add     r1, #0x18
	blx     MI_CpuCopy8
.thumb
branch_224f2ce: @ 224f2ce :thumb
	mov     r0, #0xa1
	mov     r1, #0x1
	lsl     r0, r0, #4
	strb    r1, [r5, r0]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224f2da


.incbin "./baserom/overlay/overlay_0017.bin", 0x1419a, 0x224f2f8 - 0x224f2da


.thumb
Function_224f2f8: @ 224f2f8 :thumb
	mov     r1, #0xa1
	lsl     r1, r1, #4
	ldrb    r0, [r0, r1]
	cmp     r0, #0x1
	bne     branch_224f306
	mov     r0, #0x0
	bx      lr
@ 0x224f306

.thumb
branch_224f306: @ 224f306 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x224f30a


.align 2, 0


.thumb
Function_224f30c: @ 224f30c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	mov     r7, r3
	bl      Function_224f2f8
	cmp     r0, #0x0
	bne     branch_224f322
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224f322

.thumb
branch_224f322: @ 224f322 :thumb
	ldrh    r0, [r5, #0x4]
	cmp     r4, r0
	blt     branch_224f32c
	bl      Function_2022974
.thumb
branch_224f32c: @ 224f32c :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r6, #0xc
	ldr     r5, [r5, #0x0]
	mul     r6, r4
	mov     r2, r4
	ldr     r4, [r5, r6]
	mov     r3, r7
	blx     r4
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224f342


.incbin "./baserom/overlay/overlay_0017.bin", 0x14202, 0x224f4b8 - 0x224f342


.thumb
Function_224f4b8: @ 224f4b8 :thumb
	cmp     r2, r3
	beq     branch_224f4c0
	mov     r0, #0x1
	bx      lr
@ 0x224f4c0

.thumb
branch_224f4c0: @ 224f4c0 :thumb
	ldr     r2, [pc, #0xc] @ 0x224f4d0, (=#0xa15)
	ldrb    r0, [r0, r2]
	cmp     r0, r1
	blt     branch_224f4cc
	mov     r0, #0x1
	bx      lr
@ 0x224f4cc

.thumb
branch_224f4cc: @ 224f4cc :thumb
	mov     r0, #0x0
	bx      lr
@ 0x224f4d0

.word 0xa15 @ 0x224f4d0

.incbin "./baserom/overlay/overlay_0017.bin", 0x14394, 0x224fecc - 0x224f4d4


.thumb
Function_224fecc: @ 224fecc :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	ldrh    r1, [r7, #0x0]
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_224fee2
	cmp     r1, #0x1
	beq     branch_224ff70
	cmp     r1, #0x2
	beq     branch_224ffa8
	b       branch_224ffca
@ 0x224fee2

.thumb
branch_224fee2: @ 224fee2 :thumb
	bl      Function_2251a1c
	mov     r0, #0x13
	ldr     r2, [r4, #0x0]
	mov     r5, #0x0
	lsl     r0, r0, #4
.thumb
branch_224feee: @ 224feee :thumb
	ldrb    r1, [r2, r0]
	cmp     r1, #0x0
	beq     branch_224fefc
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r2, #0xc
	cmp     r5, #0x4
	blt     branch_224feee
.thumb
branch_224fefc: @ 224fefc :thumb
	cmp     r5, #0x4
	bne     branch_224ff04
	bl      Function_2022974
.thumb
branch_224ff04: @ 224ff04 :thumb
	ldr     r0, [pc, #0xcc] @ 0x224ffd4, (=#0x438)
	ldr     r1, [pc, #0xd0] @ 0x224ffd8, (=#0x439)
	strb    r5, [r4, r0]
	mov     r5, #0x0
	sub     r0, #0x67
.thumb
branch_224ff0e: @ 224ff0e :thumb
	add     r3, r4, r5
	ldrb    r2, [r3, r0]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	strb    r2, [r3, r1]
	blt     branch_224ff0e
	mov     r3, #0x0
	mov     r1, r3
	mov     r2, r4
.thumb
branch_224ff20: @ 224ff20 :thumb
	ldr     r0, [r4, #0x0]
	mov     r5, #0x4a
	add     r0, r0, r1
	lsl     r5, r5, #2
	ldrh    r6, [r0, r5]
	mov     r5, #0xe7
	lsl     r5, r5, #2
	strh    r6, [r2, r5]
	ldr     r5, [pc, #0xa8] @ 0x224ffdc, (=#0x12a)
	.hword  0x1c5b @ add r3, r3, #0x1
	ldrh    r6, [r0, r5]
	ldr     r5, [pc, #0xa8] @ 0x224ffe0, (=#0x39e)
	add     r1, #0xc
	strh    r6, [r2, r5]
	mov     r5, #0x4b
	lsl     r5, r5, #2
	ldrh    r6, [r0, r5]
	mov     r5, #0x3a
	lsl     r5, r5, #4
	strh    r6, [r2, r5]
	ldr     r5, [pc, #0x98] @ 0x224ffe4, (=#0x12e)
	ldrh    r6, [r0, r5]
	ldr     r5, [pc, #0x98] @ 0x224ffe8, (=#0x3a2)
	strh    r6, [r2, r5]
	mov     r5, #0x13
	lsl     r5, r5, #4
	ldrh    r6, [r0, r5]
	mov     r5, #0xe9
	lsl     r5, r5, #2
	strh    r6, [r2, r5]
	ldr     r5, [pc, #0x8c] @ 0x224ffec, (=#0x132)
	ldrh    r5, [r0, r5]
	ldr     r0, [pc, #0x8c] @ 0x224fff0, (=#0x3a6)
	strh    r5, [r2, r0]
	add     r2, #0xc
	cmp     r3, #0x4
	blt     branch_224ff20
	ldrh    r0, [r7, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r7, #0x0]
.thumb
branch_224ff70: @ 224ff70 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x80] @ 0x224fff4, (=#0x177)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_224ff86
	ldr     r0, [r7, #0x4]
	cmp     r0, #0x78
	bge     branch_224ff86
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r7, #0x4]
	b       branch_224ffce
@ 0x224ff86

.thumb
branch_224ff86: @ 224ff86 :thumb
	ldr     r0, [pc, #0x70] @ 0x224fff8, (=#0x85c)
	mov     r3, #0xe7
	lsl     r3, r3, #2
	add     r0, r4, r0
	mov     r1, r4
	mov     r2, #0x1
	add     r3, r4, r3
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_224ffce
	mov     r0, #0x0
	str     r0, [r7, #0x4]
	ldrh    r0, [r7, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r7, #0x0]
	b       branch_224ffce
@ 0x224ffa8

.thumb
branch_224ffa8: @ 224ffa8 :thumb
	ldr     r0, [pc, #0x4c] @ 0x224fff8, (=#0x85c)
	ldr     r3, [r4, #0x0]
	add     r0, r4, r0
	ldr     r4, [pc, #0x4c] @ 0x224fffc, (=#0x127)
	.hword  0x1f22 @ sub r2, r4, #0x4
	ldrb    r1, [r3, r4]
	sub     r4, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r4]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_224ffce
	ldrh    r0, [r7, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r7, #0x0]
	b       branch_224ffce
@ 0x224ffca

.thumb
branch_224ffca: @ 224ffca :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224ffce

.thumb
branch_224ffce: @ 224ffce :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224ffd2


.align 2


.word 0x438 @ 0x224ffd4
.word 0x439 @ 0x224ffd8
.word 0x12a @ 0x224ffdc
.word 0x39e @ 0x224ffe0
.word 0x12e @ 0x224ffe4
.word 0x3a2 @ 0x224ffe8
.word 0x132 @ 0x224ffec
.word 0x3a6 @ 0x224fff0
.word 0x177 @ 0x224fff4
.word 0x85c @ 0x224fff8
.word 0x127 @ 0x224fffc
.thumb
Function_2250000: @ 2250000 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2250012
	cmp     r0, #0x1
	beq     branch_225004c
	b       branch_225006e
@ 0x2250012

.thumb
branch_2250012: @ 2250012 :thumb
	ldr     r3, [pc, #0x64] @ 0x2250078, (=#0x445)
	mov     r1, #0x0
	strb    r1, [r5, r3]
	add     r0, r3, #0x2
	strb    r1, [r5, r0]
	add     r0, r3, #0x1
	strb    r1, [r5, r0]
	mov     r0, r3
	sub     r0, #0x79
	ldrb    r1, [r5, r0]
	.hword  0x1fd8 @ sub r0, r3, #0x7
	mov     r2, #0x5
	strb    r1, [r5, r0]
	.hword  0x1e58 @ sub r0, r3, #0x1
	mov     r1, #0x1
	strb    r1, [r5, r0]
	ldr     r0, [pc, #0x48] @ 0x225007c, (=#0x85c)
	sub     r3, #0xf
	add     r0, r5, r0
	mov     r1, r5
	add     r3, r5, r3
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_2250072
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_2250072
@ 0x225004c

.thumb
branch_225004c: @ 225004c :thumb
	ldr     r0, [pc, #0x2c] @ 0x225007c, (=#0x85c)
	ldr     r3, [r5, #0x0]
	add     r0, r5, r0
	ldr     r5, [pc, #0x2c] @ 0x2250080, (=#0x127)
	.hword  0x1f2a @ sub r2, r5, #0x4
	ldrb    r1, [r3, r5]
	sub     r5, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r5]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_2250072
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_2250072
@ 0x225006e

.thumb
branch_225006e: @ 225006e :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2250072

.thumb
branch_2250072: @ 2250072 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2250076


.align 2


.word 0x445 @ 0x2250078
.word 0x85c @ 0x225007c
.word 0x127 @ 0x2250080
.thumb
Function_2250084: @ 2250084 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2250096
	cmp     r0, #0x1
	beq     branch_22500b4
	b       branch_22500d6
@ 0x2250096

.thumb
branch_2250096: @ 2250096 :thumb
	ldr     r0, [pc, #0x48] @ 0x22500e0, (=#0x85c)
	mov     r3, #0xe7
	lsl     r3, r3, #2
	add     r0, r5, r0
	mov     r1, r5
	mov     r2, #0x6
	add     r3, r5, r3
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_22500da
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_22500da
@ 0x22500b4

.thumb
branch_22500b4: @ 22500b4 :thumb
	ldr     r0, [pc, #0x28] @ 0x22500e0, (=#0x85c)
	ldr     r3, [r5, #0x0]
	add     r0, r5, r0
	ldr     r5, [pc, #0x28] @ 0x22500e4, (=#0x127)
	.hword  0x1f2a @ sub r2, r5, #0x4
	ldrb    r1, [r3, r5]
	sub     r5, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r5]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_22500da
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_22500da
@ 0x22500d6

.thumb
branch_22500d6: @ 22500d6 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22500da

.thumb
branch_22500da: @ 22500da :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22500de


.align 2


.word 0x85c @ 0x22500e0
.word 0x127 @ 0x22500e4
.thumb
Function_22500e8: @ 22500e8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_22500fe
	cmp     r0, #0x1
	beq     branch_2250130
	cmp     r0, #0x2
	beq     branch_2250152
	b       branch_2250164
@ 0x22500fe

.thumb
branch_22500fe: @ 22500fe :thumb
	ldr     r3, [pc, #0x6c] @ 0x225016c, (=#0x445)
	mov     r0, #0x0
	strb    r0, [r5, r3]
	mov     r1, #0x1
	add     r0, r3, #0x2
	strb    r1, [r5, r0]
	add     r0, r3, #0x1
	strb    r1, [r5, r0]
	.hword  0x1e58 @ sub r0, r3, #0x1
	mov     r1, #0x6
	strb    r1, [r5, r0]
	ldr     r0, [pc, #0x58] @ 0x2250170, (=#0x85c)
	sub     r3, #0xf
	add     r0, r5, r0
	mov     r1, r5
	mov     r2, #0x5
	add     r3, r5, r3
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_2250168
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_2250168
@ 0x2250130

.thumb
branch_2250130: @ 2250130 :thumb
	ldr     r0, [pc, #0x3c] @ 0x2250170, (=#0x85c)
	ldr     r3, [r5, #0x0]
	add     r0, r5, r0
	ldr     r5, [pc, #0x3c] @ 0x2250174, (=#0x127)
	.hword  0x1f2a @ sub r2, r5, #0x4
	ldrb    r1, [r3, r5]
	sub     r5, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r5]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_2250168
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_2250168
@ 0x2250152

.thumb
branch_2250152: @ 2250152 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x3c
	ble     branch_2250168
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_2250168
@ 0x2250164

.thumb
branch_2250164: @ 2250164 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2250168

.thumb
branch_2250168: @ 2250168 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225016c

.word 0x445 @ 0x225016c
.word 0x85c @ 0x2250170
.word 0x127 @ 0x2250174
.thumb
Function_2250178: @ 2250178 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r3, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x4
	bhi     branch_2250268
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r3, #1
	lsl     r0, r0, #2
	lsl     r2, r4, #2
	lsl     r4, r0, #3
	ldr     r1, [r3, #0x0]
	ldr     r0, [pc, #0xd0] @ 0x2250270, (=#0x121)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x4
	bhi     branch_22501ba
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r1, #0
	lsl     r4, r1, #0
	lsl     r4, r1, #0
	lsl     r4, r1, #0
	lsl     r4, r1, #0
.thumb
branch_22501ba: @ 22501ba :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22501be


.incbin "./baserom/overlay/overlay_0017.bin", 0x1507e, 0x2250268 - 0x22501be


.thumb
branch_2250268: @ 2250268 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225026c


.incbin "./baserom/overlay/overlay_0017.bin", 0x1512c, 0x2250270 - 0x225026c


.word 0x121 @ 0x2250270

.incbin "./baserom/overlay/overlay_0017.bin", 0x15134, 0x2250284 - 0x2250274


.thumb
Function_2250284: @ 2250284 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	ldrh    r0, [r5, #0x0]
	cmp     r0, #0x4
	bhi     branch_2250390
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r2, r7, #1
	lsl     r4, r3, #2
	lsl     r6, r7, #2
	lsl     r0, r4, #3
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0xec] @ 0x2250398, (=#0x121)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x6
	bhi     branch_22502ca
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r1, #0
	lsl     r0, r2, #0
	lsl     r0, r2, #0
	lsl     r4, r1, #0
	lsl     r4, r1, #0
	lsl     r0, r2, #0
	lsl     r0, r2, #0
.thumb
branch_22502ca: @ 22502ca :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22502ce


.incbin "./baserom/overlay/overlay_0017.bin", 0x1518e, 0x2250390 - 0x22502ce


.thumb
branch_2250390: @ 2250390 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2250394


.incbin "./baserom/overlay/overlay_0017.bin", 0x15254, 0x2250398 - 0x2250394


.word 0x121 @ 0x2250398

.incbin "./baserom/overlay/overlay_0017.bin", 0x1525c, 0x22503b0 - 0x225039c


.thumb
Function_22503b0: @ 22503b0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	ldrh    r0, [r5, #0x0]
	cmp     r0, #0x4
	bls     branch_22503be
	b       branch_22504c2
@ 0x22503be

.thumb
branch_22503be: @ 22503be :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r7, #1
	lsl     r0, r4, #2
	lsl     r2, r0, #3
	lsl     r4, r4, #3
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0xf4] @ 0x22504cc, (=#0x121)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x8
	bhi     branch_22503fc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r4, r2, #0
	lsl     r0, r2, #0
	lsl     r4, r2, #0
	lsl     r0, r2, #0
	lsl     r0, r2, #0
	lsl     r0, r2, #0
	lsl     r0, r2, #0
	lsl     r4, r2, #0
	lsl     r4, r2, #0
.thumb
branch_22503fc: @ 22503fc :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2250400


.incbin "./baserom/overlay/overlay_0017.bin", 0x152c0, 0x22504c2 - 0x2250400


.thumb
branch_22504c2: @ 22504c2 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22504c6


.incbin "./baserom/overlay/overlay_0017.bin", 0x15386, 0x22504cc - 0x22504c6


.word 0x121 @ 0x22504cc

.incbin "./baserom/overlay/overlay_0017.bin", 0x15390, 0x22504e4 - 0x22504d0


.thumb
Function_22504e4: @ 22504e4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_22504f6
	cmp     r0, #0x1
	beq     branch_2250512
	b       branch_2250534
@ 0x22504f6

.thumb
branch_22504f6: @ 22504f6 :thumb
	ldr     r0, [pc, #0x44] @ 0x225053c, (=#0x85c)
	ldr     r3, [pc, #0x44] @ 0x2250540, (=#0x436)
	add     r0, r5, r0
	mov     r1, r5
	mov     r2, #0x7
	add     r3, r5, r3
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_2250538
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_2250538
@ 0x2250512

.thumb
branch_2250512: @ 2250512 :thumb
	ldr     r0, [pc, #0x28] @ 0x225053c, (=#0x85c)
	ldr     r3, [r5, #0x0]
	add     r0, r5, r0
	ldr     r5, [pc, #0x28] @ 0x2250544, (=#0x127)
	.hword  0x1f2a @ sub r2, r5, #0x4
	ldrb    r1, [r3, r5]
	sub     r5, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r5]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_2250538
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_2250538
@ 0x2250534

.thumb
branch_2250534: @ 2250534 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2250538

.thumb
branch_2250538: @ 2250538 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225053c

.word 0x85c @ 0x225053c
.word 0x436 @ 0x2250540
.word 0x127 @ 0x2250544
.thumb
Function_2250548: @ 2250548 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	ldrh    r0, [r5, #0x0]
	cmp     r0, #0x3
	bhi     branch_2250610
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r6, r1, #1
	lsl     r0, r6, #1
	lsl     r4, r1, #2
	ldr     r1, [pc, #0xac] @ 0x2250618, (=#0x445)
	mov     r0, #0x0
	strb    r0, [r4, r1]
	mov     r2, #0x1
	add     r0, r1, #0x2
	strb    r2, [r4, r0]
	add     r0, r1, #0x1
	strb    r2, [r4, r0]
	mov     r0, r1
	sub     r0, #0xd
	ldrb    r2, [r4, r0]
	.hword  0x1fc8 @ sub r0, r1, #0x7
	sub     r1, #0xd
	strb    r2, [r4, r0]
	ldrb    r0, [r4, r1]
	bl      Function_20958fc
	ldr     r3, [pc, #0x90] @ 0x225061c, (=#0x442)
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, r3]
	add     r0, r3, #0x2
	mov     r2, #0x5
	strb    r2, [r4, r0]
	ldr     r0, [pc, #0x88] @ 0x2250620, (=#0x85c)
	sub     r3, #0xc
	add     r0, r4, r0
	mov     r1, r4
	add     r3, r4, r3
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_2250614
	ldrh    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x0]
	b       branch_2250614
@ 0x22505b0


.incbin "./baserom/overlay/overlay_0017.bin", 0x15470, 0x2250610 - 0x22505b0


.thumb
branch_2250610: @ 2250610 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2250614

.thumb
branch_2250614: @ 2250614 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2250618

.word 0x445 @ 0x2250618
.word 0x442 @ 0x225061c
.word 0x85c @ 0x2250620

.incbin "./baserom/overlay/overlay_0017.bin", 0x154e4, 0x225062c - 0x2250624


.thumb
Function_225062c: @ 225062c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r3, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_225063e
	cmp     r0, #0x1
	beq     branch_2250676
	b       branch_2250698
@ 0x225063e

.thumb
branch_225063e: @ 225063e :thumb
	ldr     r5, [pc, #0x60] @ 0x22506a0, (=#0x445)
	mov     r0, #0x0
	strb    r0, [r3, r5]
	add     r1, r5, #0x2
	strb    r0, [r3, r1]
	add     r1, r5, #0x1
	strb    r0, [r3, r1]
	mov     r1, r5
	sub     r1, #0x79
	ldrb    r2, [r3, r1]
	.hword  0x1fe9 @ sub r1, r5, #0x7
	strb    r2, [r3, r1]
	.hword  0x1e69 @ sub r1, r5, #0x1
	strb    r0, [r3, r1]
	ldr     r0, [pc, #0x48] @ 0x22506a4, (=#0x85c)
	sub     r5, #0xf
	add     r0, r3, r0
	mov     r1, r3
	mov     r2, #0x5
	add     r3, r3, r5
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_225069c
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_225069c
@ 0x2250676

.thumb
branch_2250676: @ 2250676 :thumb
	ldr     r0, [pc, #0x2c] @ 0x22506a4, (=#0x85c)
	ldr     r5, [r3, #0x0]
	add     r0, r3, r0
	ldr     r3, [pc, #0x28] @ 0x22506a8, (=#0x127)
	.hword  0x1f1a @ sub r2, r3, #0x4
	ldrb    r1, [r5, r3]
	sub     r3, #0xb
	ldrb    r2, [r5, r2]
	ldrb    r3, [r5, r3]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_225069c
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_225069c
@ 0x2250698

.thumb
branch_2250698: @ 2250698 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225069c

.thumb
branch_225069c: @ 225069c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22506a0

.word 0x445 @ 0x22506a0
.word 0x85c @ 0x22506a4
.word 0x127 @ 0x22506a8
.thumb
Function_22506ac: @ 22506ac :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r2, r0
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_22506c2
	cmp     r0, #0x1
	beq     branch_22506dc
	cmp     r0, #0x2
	beq     branch_22506fe
	b       branch_2250718
@ 0x22506c2

.thumb
branch_22506c2: @ 22506c2 :thumb
	ldr     r0, [pc, #0x78] @ 0x225073c, (=#0x85c)
	mov     r1, r2
	add     r0, r2, r0
	mov     r2, #0xa
	mov     r3, #0x0
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_2250736
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_2250736
@ 0x22506dc

.thumb
branch_22506dc: @ 22506dc :thumb
	ldr     r0, [pc, #0x5c] @ 0x225073c, (=#0x85c)
	ldr     r3, [r2, #0x0]
	ldr     r5, [pc, #0x5c] @ 0x2250740, (=#0x127)
	add     r0, r2, r0
	.hword  0x1f2a @ sub r2, r5, #0x4
	ldrb    r1, [r3, r5]
	sub     r5, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r5]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_2250736
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_2250736
@ 0x22506fe

.thumb
branch_22506fe: @ 22506fe :thumb
	ldr     r0, [pc, #0x3c] @ 0x225073c, (=#0x85c)
	mov     r1, r2
	add     r0, r2, r0
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_224f30c
	cmp     r0, #0x1
	bne     branch_2250736
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_2250736
@ 0x2250718

.thumb
branch_2250718: @ 2250718 :thumb
	ldr     r0, [pc, #0x20] @ 0x225073c, (=#0x85c)
	ldr     r3, [r2, #0x0]
	ldr     r4, [pc, #0x20] @ 0x2250740, (=#0x127)
	add     r0, r2, r0
	.hword  0x1f22 @ sub r2, r4, #0x4
	ldrb    r1, [r3, r4]
	sub     r4, #0xb
	ldrb    r2, [r3, r2]
	ldrb    r3, [r3, r4]
	bl      Function_224f4b8
	cmp     r0, #0x1
	bne     branch_2250736
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x2250736

.thumb
branch_2250736: @ 2250736 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225073a


.align 2


.word 0x85c @ 0x225073c
.word 0x127 @ 0x2250740

.incbin "./baserom/overlay/overlay_0017.bin", 0x15604, 0x2251860 - 0x2250744


.thumb
Function_2251860: @ 2251860 :thumb
	ldr     r2, [pc, #0x98] @ 0x22518fc, (=#0x121)
	ldrb    r0, [r0, r2]
	cmp     r0, #0x8
	bhi     branch_22518f6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r2, #0
	lsl     r0, r5, #0
	lsl     r6, r7, #0
	lsl     r4, r3, #1
	lsl     r4, r3, #1
	lsl     r0, r5, #1
	lsl     r0, r5, #1
	lsl     r4, r6, #1
	lsl     r4, r6, #1
	cmp     r1, #0x0
	beq     branch_2251890
	cmp     r1, #0x2
	beq     branch_2251894
	b       branch_225189a
@ 0x2251890

.thumb
branch_2251890: @ 2251890 :thumb
	ldr     r0, [pc, #0x6c] @ 0x2251900, (=#0x1770)
	bx      lr
@ 0x2251894

.thumb
branch_2251894: @ 2251894 :thumb
	mov     r0, #0xfa
	lsl     r0, r0, #4
	bx      lr
@ 0x225189a

.thumb
branch_225189a: @ 225189a :thumb
	mov     r0, #0x0
	bx      lr
@ 0x225189e


.incbin "./baserom/overlay/overlay_0017.bin", 0x1675e, 0x22518f6 - 0x225189e


.thumb
branch_22518f6: @ 22518f6 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22518fa


.align 2


.word 0x121 @ 0x22518fc
.word 0x1770 @ 0x2251900

.incbin "./baserom/overlay/overlay_0017.bin", 0x167c4, 0x2251914 - 0x2251904


.thumb
Function_2251914: @ 2251914 :thumb
	push    {r3,lr}
	bl      Function_2251860
	mov     r1, #0xc0
	mov     r2, r0
	mul     r2, r1
	ldr     r1, [pc, #0x8] @ 0x225192c, (=#0x1388)
	add     r0, r2, r1
	lsl     r1, r1, #1
	blx     Division
	pop     {r3,pc}
@ 0x225192c

.word 0x1388 @ 0x225192c
.thumb
Function_2251930: @ 2251930 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	ldr     r7, [sp, #0x0]
	mov     r5, r1
	mov     r6, r2
	str     r0, [sp, #0x8]
	add     r4, sp, #0x24
.thumb
branch_2251942: @ 2251942 :thumb
	cmp     r5, #0x0
	beq     branch_2251950
	cmp     r5, #0x1
	beq     branch_225196a
	cmp     r5, #0x2
	beq     branch_2251974
	b       branch_225197c
@ 0x2251950

.thumb
branch_2251950: @ 2251950 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x8]
	bl      Function_2095928
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x8]
	bl      Function_209598c
	ldr     r1, [sp, #0x10]
	add     r0, r1, r0
	str     r0, [r4, #0x0]
	b       branch_2251984
@ 0x225196a

.thumb
branch_225196a: @ 225196a :thumb
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldsh    r0, [r7, r0]
	str     r0, [r4, #0x0]
	b       branch_2251984
@ 0x2251974

.thumb
branch_2251974: @ 2251974 :thumb
	ldr     r0, [pc, #0xa0] @ 0x2251a18, (=#0x12e)
	ldsh    r0, [r7, r0]
	str     r0, [r4, #0x0]
	b       branch_2251984
@ 0x225197c

.thumb
branch_225197c: @ 225197c :thumb
	bl      Function_2022974
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2251984

.thumb
branch_2251984: @ 2251984 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r7, #0xc
	str     r0, [sp, #0x8]
	cmp     r0, #0x4
	blt     branch_2251942
	mov     r4, #0x0
	mov     r3, #0x1
	add     r2, sp, #0x28
	add     r7, sp, #0x24
.thumb
branch_225199a: @ 225199a :thumb
	lsl     r0, r4, #2
	ldr     r1, [r7, r0]
	ldr     r0, [r2, #0x0]
	cmp     r1, r0
	bge     branch_22519a6
	mov     r4, r3
.thumb
branch_22519a6: @ 22519a6 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r3, #0x4
	blt     branch_225199a
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      Function_2251860
	lsl     r2, r4, #2
	add     r1, sp, #0x24
	ldr     r1, [r1, r2]
	blx     Division
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	add     r7, sp, #0x24
	add     r4, sp, #0x14
.thumb
branch_22519ca: @ 22519ca :thumb
	ldr     r0, [r7, #0x0]
	ldr     r1, [sp, #0xc]
	mul     r0, r1
	str     r0, [r4, #0x0]
	add     r0, #0x32
	mov     r1, #0x64
	blx     Division
	stmia   r4!, {r0}
	ldr     r0, [sp, #0x4]
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x4
	blt     branch_22519ca
	mov     r2, #0x0
	add     r1, sp, #0x14
.thumb
branch_22519ec: @ 22519ec :thumb
	cmp     r5, #0x0
	beq     branch_22519fa
	cmp     r5, #0x1
	beq     branch_2251a00
	cmp     r5, #0x2
	beq     branch_2251a06
	b       branch_2251a0a
@ 0x22519fa

.thumb
branch_22519fa: @ 22519fa :thumb
	ldr     r0, [r1, #0x0]
	strh    r0, [r6, #0x0]
	b       branch_2251a0a
@ 0x2251a00

.thumb
branch_2251a00: @ 2251a00 :thumb
	ldr     r0, [r1, #0x0]
	strh    r0, [r6, #0x0]
	b       branch_2251a0a
@ 0x2251a06

.thumb
branch_2251a06: @ 2251a06 :thumb
	ldr     r0, [r1, #0x0]
	strh    r0, [r6, #0x0]
.thumb
branch_2251a0a: @ 2251a0a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r2, #0x4
	blt     branch_22519ec
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2251a18

.word 0x12e @ 0x2251a18
.thumb
Function_2251a1c: @ 2251a1c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	str     r0, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0x314] @ 0x2251d3c, (=#0x121)
	ldrb    r1, [r0, r1]
	cmp     r1, #0x8
	bhi     branch_2251adc
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r0, r2, #0
	lsl     r6, r5, #0
	lsl     r4, r1, #1
	lsl     r2, r7, #1
	lsl     r2, r7, #1
	lsl     r0, r1, #2
	lsl     r0, r1, #2
	lsl     r6, r2, #2
	lsl     r6, r2, #2
	ldr     r3, [pc, #0x2f4] @ 0x2251d40, (=#0x3d6)
	ldr     r2, [sp, #0x0]
	mov     r1, #0x0
	add     r2, r2, r3
	bl      Function_2251930
	ldr     r0, [sp, #0x0]
	ldr     r3, [pc, #0x2e8] @ 0x2251d44, (=#0x3e6)
	ldr     r2, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	add     r2, r2, r3
	bl      Function_2251930
	b       branch_2251adc
@ 0x2251a68


.incbin "./baserom/overlay/overlay_0017.bin", 0x16928, 0x2251adc - 0x2251a68


.thumb
branch_2251adc: @ 2251adc :thumb
	ldr     r7, [pc, #0x260] @ 0x2251d40, (=#0x3d6)
	ldr     r6, [sp, #0x0]
	mov     r0, r7
	mov     r1, r7
	mov     r5, #0x0
	add     r0, #0x8
	add     r1, #0x18
.thumb
branch_2251aea: @ 2251aea :thumb
	ldr     r2, [pc, #0x258] @ 0x2251d44, (=#0x3e6)
	ldsh    r3, [r6, r7]
	ldsh    r4, [r6, r2]
	ldsh    r2, [r6, r0]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r2, r3, r2
	add     r2, r4, r2
	strh    r2, [r6, r1]
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r5, #0x4
	blt     branch_2251aea
	ldr     r1, [sp, #0x0]
	ldr     r4, [pc, #0x23c] @ 0x2251d40, (=#0x3d6)
	mov     r0, #0x0
	mov     r2, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	mov     r5, r4
.thumb
branch_2251b0c: @ 2251b0c :thumb
	ldr     r3, [sp, #0x0]
	lsl     r6, r0, #1
	add     r3, r3, r6
	ldsh    r6, [r3, r4]
	ldsh    r3, [r1, r5]
	cmp     r6, r3
	bge     branch_2251b1c
	mov     r0, r2
.thumb
branch_2251b1c: @ 2251b1c :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r2, #0x4
	blt     branch_2251b0c
	lsl     r1, r0, #1
	ldr     r0, [sp, #0x0]
	ldr     r4, [sp, #0x0]
	add     r1, r0, r1
	ldr     r0, [pc, #0x210] @ 0x2251d40, (=#0x3d6)
	mov     r5, #0x0
	mov     r7, r0
	ldsh    r6, [r1, r0]
	add     r7, #0x20
.thumb
branch_2251b36: @ 2251b36 :thumb
	ldr     r0, [pc, #0x208] @ 0x2251d40, (=#0x3d6)
	ldsh    r1, [r4, r0]
	mov     r0, #0x64
	mul     r0, r1
	mov     r1, r6
	blx     Division
	strh    r0, [r4, r7]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r5, #0x4
	blt     branch_2251b36
	ldr     r0, [sp, #0x0]
	ldr     r4, [pc, #0x1f4] @ 0x2251d48, (=#0x3de)
	mov     r2, #0x0
	mov     r1, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	mov     r5, r4
.thumb
branch_2251b5a: @ 2251b5a :thumb
	ldr     r3, [sp, #0x0]
	lsl     r6, r2, #1
	add     r3, r3, r6
	ldsh    r6, [r3, r4]
	ldsh    r3, [r0, r5]
	cmp     r6, r3
	bge     branch_2251b6a
	mov     r2, r1
.thumb
branch_2251b6a: @ 2251b6a :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r1, #0x4
	blt     branch_2251b5a
	ldr     r0, [sp, #0x0]
	lsl     r1, r2, #1
	add     r1, r0, r1
	ldr     r0, [pc, #0x1cc] @ 0x2251d48, (=#0x3de)
	ldr     r4, [sp, #0x0]
	mov     r7, r0
	ldsh    r6, [r1, r0]
	mov     r5, #0x0
	add     r7, #0x20
.thumb
branch_2251b84: @ 2251b84 :thumb
	ldr     r0, [pc, #0x1c0] @ 0x2251d48, (=#0x3de)
	ldsh    r1, [r4, r0]
	mov     r0, #0x64
	mul     r0, r1
	mov     r1, r6
	blx     Division
	strh    r0, [r4, r7]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r5, #0x4
	blt     branch_2251b84
	ldr     r0, [sp, #0x0]
	ldr     r4, [pc, #0x1a4] @ 0x2251d44, (=#0x3e6)
	mov     r2, #0x0
	mov     r1, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	mov     r5, r4
.thumb
branch_2251ba8: @ 2251ba8 :thumb
	ldr     r3, [sp, #0x0]
	lsl     r6, r2, #1
	add     r3, r3, r6
	ldsh    r6, [r3, r4]
	ldsh    r3, [r0, r5]
	cmp     r6, r3
	bge     branch_2251bb8
	mov     r2, r1
.thumb
branch_2251bb8: @ 2251bb8 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r1, #0x4
	blt     branch_2251ba8
	ldr     r0, [sp, #0x0]
	lsl     r1, r2, #1
	add     r1, r0, r1
	ldr     r0, [pc, #0x17c] @ 0x2251d44, (=#0x3e6)
	ldr     r4, [sp, #0x0]
	mov     r7, r0
	ldsh    r6, [r1, r0]
	mov     r5, #0x0
	add     r7, #0x20
.thumb
branch_2251bd2: @ 2251bd2 :thumb
	ldr     r0, [pc, #0x170] @ 0x2251d44, (=#0x3e6)
	ldsh    r1, [r4, r0]
	mov     r0, #0x64
	mul     r0, r1
	mov     r1, r6
	blx     Division
	strh    r0, [r4, r7]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r5, #0x4
	blt     branch_2251bd2
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_2251914
	ldr     r4, [sp, #0x0]
	ldr     r7, [pc, #0x154] @ 0x2251d4c, (=#0x41e)
	mov     r6, r0
	mov     r5, #0x0
.thumb
branch_2251bfc: @ 2251bfc :thumb
	ldr     r0, [pc, #0x150] @ 0x2251d50, (=#0x3f6)
	mov     r1, #0x64
	ldsh    r0, [r4, r0]
	mul     r0, r6
	blx     Division
	strh    r0, [r4, r7]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r5, #0x4
	blt     branch_2251bfc
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2251914
	ldr     r4, [sp, #0x0]
	ldr     r7, [pc, #0x134] @ 0x2251d54, (=#0x426)
	mov     r6, r0
	mov     r5, #0x0
.thumb
branch_2251c24: @ 2251c24 :thumb
	ldr     r0, [pc, #0x130] @ 0x2251d58, (=#0x3fe)
	mov     r1, #0x64
	ldsh    r0, [r4, r0]
	mul     r0, r6
	blx     Division
	strh    r0, [r4, r7]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r5, #0x4
	blt     branch_2251c24
	ldr     r0, [sp, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x0]
	bl      Function_2251914
	ldr     r4, [sp, #0x0]
	ldr     r7, [pc, #0x114] @ 0x2251d5c, (=#0x42e)
	mov     r6, r0
	mov     r5, #0x0
.thumb
branch_2251c4c: @ 2251c4c :thumb
	ldr     r0, [pc, #0x110] @ 0x2251d60, (=#0x406)
	mov     r1, #0x64
	ldsh    r0, [r4, r0]
	mul     r0, r6
	blx     Division
	strh    r0, [r4, r7]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r5, #0x4
	blt     branch_2251c4c
	ldr     r7, [pc, #0xe8] @ 0x2251d4c, (=#0x41e)
	ldr     r5, [sp, #0x0]
	mov     r0, r7
	mov     r1, r7
	mov     r6, #0x0
	add     r0, #0x8
	sub     r1, #0x8
.thumb
branch_2251c70: @ 2251c70 :thumb
	ldr     r2, [pc, #0xe8] @ 0x2251d5c, (=#0x42e)
	ldsh    r3, [r5, r7]
	ldsh    r4, [r5, r2]
	ldsh    r2, [r5, r0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r2, r3, r2
	add     r2, r4, r2
	strh    r2, [r5, r1]
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r6, #0x4
	blt     branch_2251c70
	ldr     r0, [sp, #0x0]
	mov     r7, #0x0
	add     r6, sp, #0x18
	str     r0, [sp, #0x4]
	add     r4, sp, #0x8
	add     r5, sp, #0x28
.thumb
branch_2251c92: @ 2251c92 :thumb
	stmia   r6!, {r7}
	ldr     r1, [sp, #0x4]
	ldr     r0, [pc, #0xcc] @ 0x2251d64, (=#0x416)
	ldsh    r0, [r1, r0]
	stmia   r4!, {r0}
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Call_PRNG
	stmia   r5!, {r0}
	ldr     r0, [sp, #0x4]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x4]
	cmp     r7, #0x4
	blt     branch_2251c92
	mov     r0, #0x0
	mov     r12, r0
.thumb
branch_2251cb6: @ 2251cb6 :thumb
	mov     r0, r12
	mov     r7, #0x3
	cmp     r0, #0x3
	bge     branch_2251d04
	add     r2, sp, #0x14
	add     r3, sp, #0x34
	add     r4, sp, #0x24
.thumb
branch_2251cc4: @ 2251cc4 :thumb
	.hword  0x1f10 @ sub r0, r2, #0x4
	ldr     r5, [r2, #0x0]
	ldr     r6, [r0, #0x0]
	cmp     r6, r5
	blt     branch_2251cdc
	cmp     r6, r5
	bne     branch_2251cf6
	.hword  0x1f18 @ sub r0, r3, #0x4
	ldr     r1, [r0, #0x0]
	ldr     r0, [r3, #0x0]
	cmp     r1, r0
	bge     branch_2251cf6
.thumb
branch_2251cdc: @ 2251cdc :thumb
	str     r6, [r2, #0x0]
	.hword  0x1f10 @ sub r0, r2, #0x4
	str     r5, [r0, #0x0]
	.hword  0x1f20 @ sub r0, r4, #0x4
	ldr     r5, [r4, #0x0]
	ldr     r1, [r0, #0x0]
	str     r1, [r4, #0x0]
	str     r5, [r0, #0x0]
	.hword  0x1f18 @ sub r0, r3, #0x4
	ldr     r5, [r3, #0x0]
	ldr     r1, [r0, #0x0]
	str     r1, [r3, #0x0]
	str     r5, [r0, #0x0]
.thumb
branch_2251cf6: @ 2251cf6 :thumb
	.hword  0x1e7f @ sub r7, r7, #0x1
	mov     r0, r12
	.hword  0x1f12 @ sub r2, r2, #0x4
	.hword  0x1f1b @ sub r3, r3, #0x4
	.hword  0x1f24 @ sub r4, r4, #0x4
	cmp     r7, r0
	bgt     branch_2251cc4
.thumb
branch_2251d04: @ 2251d04 :thumb
	mov     r0, r12
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r12, r0
	cmp     r0, #0x3
	blt     branch_2251cb6
	mov     r1, #0x13
	ldr     r7, [pc, #0x54] @ 0x2251d68, (=#0x3d1)
	mov     r6, #0x0
	add     r5, sp, #0x18
	mov     r0, #0xc
	lsl     r1, r1, #4
.thumb
branch_2251d1a: @ 2251d1a :thumb
	ldr     r3, [sp, #0x0]
	ldr     r2, [r5, #0x0]
	add     r3, r3, r6
	strb    r2, [r3, r7]
	ldr     r2, [sp, #0x0]
	ldr     r4, [r2, #0x0]
	ldr     r2, [r5, #0x0]
	.hword  0x1d2d @ add r5, r5, #0x4
	mov     r3, r2
	mul     r3, r0
	add     r2, r4, r3
	strb    r6, [r2, r1]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, #0x4
	blt     branch_2251d1a
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x2251d3c

.word 0x121 @ 0x2251d3c
.word 0x3d6 @ 0x2251d40
.word 0x3e6 @ 0x2251d44
.word 0x3de @ 0x2251d48
.word 0x41e @ 0x2251d4c
.word 0x3f6 @ 0x2251d50
.word 0x426 @ 0x2251d54
.word 0x3fe @ 0x2251d58
.word 0x42e @ 0x2251d5c
.word 0x406 @ 0x2251d60
.word 0x416 @ 0x2251d64
.word 0x3d1 @ 0x2251d68

.incbin "./baserom/overlay/overlay_0017.bin", 0x16c2c, 0x2251dac - 0x2251d6c


.thumb
Function_2251dac: @ 2251dac :thumb
	push    {r3,lr}
	lsl     r2, r2, #16
	mov     r3, #0x0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2251dbe


.align 2, 0


.thumb
Function_2251dc0: @ 2251dc0 :thumb
	push    {r3,lr}
	mov     r1, r2
	mov     r2, #0x0
	mov     r3, r2
	bl      Function_224f26c
	pop     {r3,pc}
@ 0x2251dce


.align 2, 0


.thumb
Function_2251dd0: @ 2251dd0 :thumb
	bx      lr
@ 0x2251dd2


.align 2, 0


.thumb
Function_2251dd4: @ 2251dd4 :thumb
	push    {r3,lr}
	mov     r1, #0x9a
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2251de6


.align 2, 0


.thumb
Function_2251de8: @ 2251de8 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r1, #0xe7
	lsl     r1, r1, #2
	str     r0, [sp, #0x0]
	mov     r12, r2
	mov     r0, r3
	add     r4, r6, r1
	mov     r2, #0x4d
.thumb
branch_2251dfa: @ 2251dfa :thumb
	ldrh    r1, [r0, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r1, [r4, #0x0]
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2251dfa
	mov     r1, #0x0
	ldr     r7, [pc, #0x44] @ 0x2251e50, (=#0x132)
	mov     r2, r1
.thumb
branch_2251e0c: @ 2251e0c :thumb
	ldr     r0, [r6, #0x0]
	mov     r4, #0x4a
	add     r0, r0, r2
	ldrh    r5, [r3, #0x0]
	lsl     r4, r4, #2
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r5, [r0, r4]
	ldrh    r5, [r3, #0x2]
	.hword  0x1ca4 @ add r4, r4, #0x2
	add     r2, #0xc
	strh    r5, [r0, r4]
	mov     r4, #0x4b
	ldrh    r5, [r3, #0x4]
	lsl     r4, r4, #2
	strh    r5, [r0, r4]
	ldrh    r5, [r3, #0x6]
	.hword  0x1ca4 @ add r4, r4, #0x2
	strh    r5, [r0, r4]
	mov     r4, #0x13
	ldrh    r5, [r3, #0x8]
	lsl     r4, r4, #4
	strh    r5, [r0, r4]
	ldrh    r4, [r3, #0xa]
	add     r3, #0xc
	cmp     r1, #0x4
	strh    r4, [r0, r7]
	blt     branch_2251e0c
	mov     r2, #0x0
	ldr     r0, [sp, #0x0]
	mov     r1, r12
	mov     r3, r2
	bl      Function_224f26c
	pop     {r3-r7,pc}
@ 0x2251e50

.word 0x132 @ 0x2251e50
.thumb
Function_2251e54: @ 2251e54 :thumb
	push    {r3,lr}
	lsl     r2, r2, #16
	mov     r3, #0x0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2251e66


.align 2, 0


.thumb
Function_2251e68: @ 2251e68 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x18
	mov     r7, r1
	mov     r1, r0
	mov     r5, r2
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x18
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x2251ea4, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [pc, #0xc] @ 0x2251ea8, (=#0x2251ead)
	str     r6, [r4, #0xc]
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2251ea2


.align 2


.word 0x7530 @ 0x2251ea4
.word 0x2251ead @ 0x2251ea8

.incbin "./baserom/overlay/overlay_0017.bin", 0x16d6c, 0x2252008 - 0x2251eac


.thumb
Function_2252008: @ 2252008 :thumb
	push    {r3,lr}
	lsl     r2, r2, #16
	mov     r3, #0x0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x225201a


.align 2, 0


.thumb
Function_225201c: @ 225201c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x18
	mov     r7, r1
	mov     r1, r0
	mov     r5, r2
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x18
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x2252058, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [pc, #0xc] @ 0x225205c, (=#0x2252061)
	str     r6, [r4, #0xc]
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2252056


.align 2


.word 0x7530 @ 0x2252058
.word 0x2252061 @ 0x225205c

.incbin "./baserom/overlay/overlay_0017.bin", 0x16f20, 0x22521e4 - 0x2252060


.thumb
Function_22521e4: @ 22521e4 :thumb
	push    {r3,lr}
	lsl     r2, r2, #16
	mov     r3, #0x0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x22521f6


.align 2, 0


.thumb
Function_22521f8: @ 22521f8 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x10] @ 0x225220c, (=#0x127c)
	mov     r4, #0x1
	strb    r4, [r1, r3]
	mov     r1, r2
	mov     r2, #0x0
	mov     r3, r2
	bl      Function_224f26c
	pop     {r4,pc}
@ 0x225220c

.word 0x127c @ 0x225220c
.thumb
Function_2252210: @ 2252210 :thumb
	push    {r3,lr}
	mov     r1, #0x12
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2252222


.align 2, 0


.thumb
Function_2252224: @ 2252224 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x18
	mov     r1, #0x20
	mov     r6, r2
	mov     r5, r3
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x20
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x0]
	ldr     r2, [pc, #0x40] @ 0x2252284, (=#0x7530)
	str     r0, [r4, #0x0]
	ldrh    r0, [r6, #0x0]
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r6, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r6, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r6, #0x6]
	strh    r0, [r4, #0xa]
	str     r7, [r4, #0xc]
	ldrb    r0, [r5, #0x0]
	strb    r0, [r4, #0x11]
	ldrh    r0, [r5, #0x8]
	strh    r0, [r4, #0x14]
	ldrh    r0, [r5, #0xa]
	strh    r0, [r4, #0x16]
	ldrh    r0, [r5, #0xc]
	strh    r0, [r4, #0x18]
	ldrb    r0, [r5, #0xe]
	strb    r0, [r4, #0x1a]
	ldrb    r0, [r5, #0x11]
	strb    r0, [r4, #0x1d]
	ldrb    r0, [r5, #0x10]
	strb    r0, [r4, #0x1c]
	ldrb    r0, [r5, #0xf]
	strb    r0, [r4, #0x1b]
	ldr     r0, [pc, #0xc] @ 0x2252288, (=#0x225228d)
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2252282


.align 2


.word 0x7530 @ 0x2252284
.word 0x225228d @ 0x2252288

.incbin "./baserom/overlay/overlay_0017.bin", 0x1714c, 0x2252344 - 0x225228c


.thumb
Function_2252344: @ 2252344 :thumb
	push    {r3,lr}
	mov     r1, #0x9a
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2252356


.align 2, 0


.thumb
Function_2252358: @ 2252358 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0xe7
	mov     r6, r1
	lsl     r0, r0, #2
	mov     r5, r2
	add     r2, r6, r0
	mov     r1, #0x4d
.thumb
branch_2252368: @ 2252368 :thumb
	ldrh    r0, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r0, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_2252368
	mov     r0, #0x18
	mov     r1, #0x14
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x14
	blx     MI_CpuFill8
	str     r6, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	mov     r2, #0xfa
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	lsl     r2, r2, #2
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [pc, #0x8] @ 0x22523a8, (=#0x22523ad)
	str     r7, [r4, #0xc]
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x22523a8

.word 0x22523ad @ 0x22523a8

.incbin "./baserom/overlay/overlay_0017.bin", 0x1726c, 0x2252514 - 0x22523ac


.thumb
Function_2252514: @ 2252514 :thumb
	push    {r3,lr}
	mov     r1, #0x12
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2252526


.align 2, 0


.thumb
Function_2252528: @ 2252528 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0x18
	str     r1, [sp, #0x0]
	mov     r1, r0
	mov     r6, r2
	mov     r5, r3
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x18
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r0, [r4, #0x0]
	ldrh    r0, [r6, #0x0]
	strh    r0, [r4, #0x4]
	ldrh    r0, [r6, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r6, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r6, #0x6]
	strh    r0, [r4, #0xa]
	str     r7, [r4, #0xc]
.thumb
branch_225255c: @ 225255c :thumb
	add     r0, r5, r2
	ldrb    r1, [r0, #0x3]
	add     r0, r4, r2
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r1, [r0, #0x11]
	cmp     r2, #0x4
	blt     branch_225255c
	ldr     r0, [pc, #0xc] @ 0x2252578, (=#0x2252581)
	ldr     r2, [pc, #0xc] @ 0x225257c, (=#0x7530)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2252576


.align 2


.word 0x2252581 @ 0x2252578
.word 0x7530 @ 0x225257c

.incbin "./baserom/overlay/overlay_0017.bin", 0x17440, 0x225260c - 0x2252580


.thumb
Function_225260c: @ 225260c :thumb
	push    {r3,lr}
	mov     r1, #0x12
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x225261e


.align 2, 0


.thumb
Function_2252620: @ 2252620 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x18
	mov     r7, r1
	mov     r1, r0
	mov     r5, r2
	str     r3, [sp, #0x0]
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x18
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x20] @ 0x2252664, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [sp, #0x0]
	str     r6, [r4, #0xc]
	ldrb    r0, [r0, #0x2]
	strb    r0, [r4, #0x11]
	ldr     r0, [pc, #0xc] @ 0x2252668, (=#0x225266d)
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2252662


.align 2


.word 0x7530 @ 0x2252664
.word 0x225266d @ 0x2252668

.incbin "./baserom/overlay/overlay_0017.bin", 0x1752c, 0x2252798 - 0x225266c


.thumb
Function_2252798: @ 2252798 :thumb
	push    {r3,lr}
	mov     r1, #0x12
	lsl     r2, r2, #16
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	lsr     r2, r2, #16
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x22527aa


.align 2, 0


.thumb
Function_22527ac: @ 22527ac :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	mov     r5, r1
	mov     r0, #0x18
	mov     r1, #0x24
	mov     r6, r2
	mov     r7, r3
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x24
	blx     MI_CpuFill8
	str     r5, [r4, #0x0]
	ldrh    r0, [r6, #0x0]
	strh    r0, [r4, #0x4]
	ldrh    r0, [r6, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r6, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r6, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [sp, #0x0]
	str     r0, [r4, #0xc]
	ldrb    r0, [r7, #0x7]
	strb    r0, [r4, #0x11]
	ldrb    r0, [r7, #0x7]
	cmp     r0, #0x0
	beq     branch_22527f2
	cmp     r0, #0x1
	beq     branch_2252808
	cmp     r0, #0x2
	beq     branch_225281e
	b       branch_2252834
@ 0x22527f2

.thumb
branch_22527f2: @ 22527f2 :thumb
	ldr     r0, [pc, #0x50] @ 0x2252844, (=#0x41e)
	mov     r2, #0x0
	mov     r3, r4
.thumb
branch_22527f8: @ 22527f8 :thumb
	ldsh    r1, [r5, r0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	strh    r1, [r3, #0x14]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x4
	blt     branch_22527f8
	b       branch_2252838
@ 0x2252808

.thumb
branch_2252808: @ 2252808 :thumb
	ldr     r0, [pc, #0x3c] @ 0x2252848, (=#0x426)
	mov     r3, #0x0
	mov     r2, r4
.thumb
branch_225280e: @ 225280e :thumb
	ldsh    r1, [r5, r0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	strh    r1, [r2, #0x14]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r3, #0x4
	blt     branch_225280e
	b       branch_2252838
@ 0x225281e

.thumb
branch_225281e: @ 225281e :thumb
	ldr     r0, [pc, #0x2c] @ 0x225284c, (=#0x42e)
	mov     r3, #0x0
	mov     r2, r4
.thumb
branch_2252824: @ 2252824 :thumb
	ldsh    r1, [r5, r0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	strh    r1, [r2, #0x14]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r3, #0x4
	blt     branch_2252824
	b       branch_2252838
@ 0x2252834

.thumb
branch_2252834: @ 2252834 :thumb
	bl      Function_2022974
.thumb
branch_2252838: @ 2252838 :thumb
	ldr     r0, [pc, #0x14] @ 0x2252850, (=#0x2252859)
	ldr     r2, [pc, #0x18] @ 0x2252854, (=#0x7530)
	mov     r1, r4
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x2252844

.word 0x41e @ 0x2252844
.word 0x426 @ 0x2252848
.word 0x42e @ 0x225284c
.word 0x2252859 @ 0x2252850
.word 0x7530 @ 0x2252854

.incbin "./baserom/overlay/overlay_0017.bin", 0x17718, 0x2252970 - 0x2252858


.thumb
Function_2252970: @ 2252970 :thumb
	push    {r3,lr}
	lsl     r2, r2, #16
	mov     r3, #0x0
	mov     r1, #0xff
	lsr     r2, r2, #16
	str     r3, [sp, #0x0]
	bl      Function_224f1f8
	pop     {r3,pc}
@ 0x2252982


.align 2, 0


.thumb
Function_2252984: @ 2252984 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0x18
	mov     r1, #0x14
	mov     r5, r2
	bl      Function_2018144
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x14
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	ldrh    r0, [r5, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x22529c0, (=#0x7530)
	mov     r1, r4
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
	ldr     r0, [pc, #0xc] @ 0x22529c4, (=#0x22529c9)
	str     r6, [r4, #0xc]
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x22529be


.align 2


.word 0x7530 @ 0x22529c0
.word 0x22529c9 @ 0x22529c4

.incbin "./baserom/overlay/overlay_0017.bin", 0x17888, 0x2252a70 - 0x22529c8


.thumb
Function_2252a70: @ 2252a70 :thumb
	push    {r3-r7,lr}
	mov     r6, #0x0
	mov     r5, r0
	mov     r7, r1
	mov     r4, r6
.thumb
branch_2252a7a: @ 2252a7a :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_202a488
	cmp     r0, #0x1
	bne     branch_2252a92
	mov     r0, r5
	mov     r1, r4
	bl      Function_202a580
	ldrb    r0, [r7, r0]
	add     r6, r6, r0
.thumb
branch_2252a92: @ 2252a92 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x14
	blt     branch_2252a7a
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x2252a9c

.thumb
Function_2252a9c: @ 2252a9c :thumb
	push    {r3,lr}
	mov     r3, r0
	mov     r2, #0x0
	mov     r0, #0x5a
	.hword  0x1cc9 @ add r1, r1, #0x3
	str     r2, [sp, #0x0]
	bl      Function_2006fe8
	pop     {r3,pc}
@ 0x2252aae


.align 2, 0


.thumb
Function_2252ab0: @ 2252ab0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r0, #0x1b
	str     r0, [sp, #0x0]
	mov     r0, #0x50
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x28]
	mov     r4, r1
	mov     r6, r3
	str     r0, [sp, #0x14]
	mov     r0, r2
	mov     r1, #0x3
	mov     r2, r5
	mov     r3, r4
	bl      Function_200cd7c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1b
	mov     r3, #0xfa
	str     r6, [sp, #0x8]
	bl      Function_200cbdc
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x1b
	mov     r3, #0xfb
	bl      Function_200ce0c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x30]
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x1b
	mov     r3, #0xfc
	bl      Function_200ce3c
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x2252b20


.incbin "./baserom/overlay/overlay_0017.bin", 0x179e0, 0x2252b48 - 0x2252b20


.thumb
Function_2252b48: @ 2252b48 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r5, r3
	mov     r12, r2
	ldr     r3, [pc, #0x6c] @ 0x2252bc0, (=#0x2254d9c)
	mov     r6, r0
	mov     r7, r1
	add     r2, sp, #0x4
	mov     r4, #0x6
.thumb
branch_2252b5a: @ 2252b5a :thumb
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	.hword  0x1e64 @ sub r4, r4, #0x1
	bne     branch_2252b5a
	ldr     r0, [r3, #0x0]
	mov     r1, #0x18
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x50]
	str     r5, [sp, #0x18]
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x54]
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x58]
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x5c]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x60]
	str     r0, [sp, #0x30]
	mov     r0, r12
	bl      Function_2018144
	mov     r1, #0x0
	mov     r2, #0x18
	str     r0, [sp, #0x0]
	blx     MI_CpuFill8
	ldr     r5, [sp, #0x0]
	mov     r4, #0x0
.thumb
branch_2252b92: @ 2252b92 :thumb
	mov     r0, r6
	mov     r1, r7
	add     r2, sp, #0x4
	bl      Function_200ce6c
	mov     r1, #0x0
	stmia   r5!, {r0}
	bl      Function_200d3f4
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_2252b92
	ldr     r0, [pc, #0x18] @ 0x2252bc4, (=#0x2252cb9)
	ldr     r1, [sp, #0x0]
	ldr     r2, [pc, #0x18] @ 0x2252bc8, (=#0x9c40)
	bl      Function_200d9e8
	ldr     r1, [sp, #0x0]
	str     r0, [r1, #0x14]
	mov     r0, r1
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x2252bbe


.align 2


.word 0x2254d9c @ 0x2252bc0
.word 0x2252cb9 @ 0x2252bc4
.word 0x9c40 @ 0x2252bc8

.incbin "./baserom/overlay/overlay_0017.bin", 0x17a8c, 0x2252bf0 - 0x2252bcc


.thumb
Function_2252bf0: @ 2252bf0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	ldr     r4, [sp, #0x24]
	mov     r6, r3
	ldr     r0, [r5, #0x0]
	asr     r1, r1, #16
	asr     r2, r2, #16
	mov     r3, r4
	bl      Function_200d500
	ldr     r2, [sp, #0x10]
	lsl     r1, r6, #16
	lsl     r2, r2, #16
	ldr     r0, [r5, #0x4]
	asr     r1, r1, #16
	asr     r2, r2, #16
	mov     r3, r4
	bl      Function_200d500
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x18]
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	ldr     r0, [r5, #0x8]
	asr     r1, r1, #16
	asr     r2, r2, #16
	mov     r3, r4
	bl      Function_200d500
	ldr     r1, [sp, #0x1c]
	ldr     r2, [sp, #0x20]
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	ldr     r0, [r5, #0xc]
	asr     r1, r1, #16
	asr     r2, r2, #16
	mov     r3, r4
	bl      Function_200d500
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	bl      Function_200d364
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      Function_200d364
	ldr     r0, [r5, #0x8]
	mov     r1, #0x2
	bl      Function_200d364
	ldr     r0, [r5, #0xc]
	mov     r1, #0x3
	bl      Function_200d364
	mov     r4, #0x0
	mov     r6, #0x1
.thumb
branch_2252c66: @ 2252c66 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	bl      Function_200d3f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2252c66
	pop     {r4-r6,pc}
@ 0x2252c78

.thumb
Function_2252c78: @ 2252c78 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r2
	str     r3, [sp, #0x0]
	ldr     r2, [sp, #0x20]
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	str     r4, [sp, #0xc]
	str     r2, [sp, #0x10]
	ldr     r2, [sp, #0x24]
	str     r2, [sp, #0x14]
	mov     r2, r3
	mov     r3, r4
	bl      Function_2252bf0
	add     sp, #0x18
	pop     {r4,pc}
@ 0x2252c9a


.incbin "./baserom/overlay/overlay_0017.bin", 0x17b5a, 0x2252f44 - 0x2252c9a


.word Function_223d60c+1 @ =0x223d60d, 0x2252f44
.word Function_223d640+1 @ =0x223d641, 0x2252f48
.word Function_223d6b8+1 @ =0x223d6b9, 0x2252f4c
.word Function_223d71c+1 @ =0x223d71d, 0x2252f50
.word Function_223d82c+1 @ =0x223d82d, 0x2252f54
.word Function_223d7dc+1 @ =0x223d7dd, 0x2252f58
.word Function_223d78c+1 @ =0x223d78d, 0x2252f5c
.word Function_223d8dc+1 @ =0x223d8dd, 0x2252f60
.word Function_223d96c+1 @ =0x223d96d, 0x2252f64
.word Function_223d99c+1 @ =0x223d99d, 0x2252f68
.word Function_223da78+1 @ =0x223da79, 0x2252f6c

.incbin "./baserom/overlay/overlay_0017.bin", 0x17e30, 0x2253050 - 0x2252f70


.word Function_223e838+1 @ =0x223e839, 0x2253050
.word Function_223e8ac+1 @ =0x223e8ad, 0x2253054
.word Function_223e954+1 @ =0x223e955, 0x2253058
.word Function_223e9a4+1 @ =0x223e9a5, 0x225305c
.word Function_223ebb0+1 @ =0x223ebb1, 0x2253060
.word Function_223ec20+1 @ =0x223ec21, 0x2253064
.word Function_223ec74+1 @ =0x223ec75, 0x2253068
.word Function_223ecc8+1 @ =0x223ecc9, 0x225306c
.word Function_223ed1c+1 @ =0x223ed1d, 0x2253070
.word Function_223ed9c+1 @ =0x223ed9d, 0x2253074
.word Function_223ee54+1 @ =0x223ee55, 0x2253078
.word Function_223eeb8+1 @ =0x223eeb9, 0x225307c
.word Function_223f03c+1 @ =0x223f03d, 0x2253080

.incbin "./baserom/overlay/overlay_0017.bin", 0x17f44, 0x22535d8 - 0x2253084


.word Function_2240d04+1 @ =0x2240d05, 0x22535d8
.word Function_2240e68+1 @ =0x2240e69, 0x22535dc
.word Function_223fcac+1 @ =0x223fcad, 0x22535e0
.word Function_223fff4+1 @ =0x223fff5, 0x22535e4

.incbin "./baserom/overlay/overlay_0017.bin", 0x184a8, 0x2253608 - 0x22535e8


.word Function_2240ea4+1 @ =0x2240ea5, 0x2253608
.word Function_2240fc4+1 @ =0x2240fc5, 0x225360c
.word Function_223ff38+1 @ =0x223ff39, 0x2253610
.word Function_2240094+1 @ =0x2240095, 0x2253614

.incbin "./baserom/overlay/overlay_0017.bin", 0x184d8, 0x22539e4 - 0x2253618


.word Function_2243c68+1 @ =0x2243c69, 0x22539e4
.word Function_2243c80+1 @ =0x2243c81, 0x22539e8
.word Function_2243c94+1 @ =0x2243c95, 0x22539ec
.word Function_2243c98+1 @ =0x2243c99, 0x22539f0
.word Function_2243cb0+1 @ =0x2243cb1, 0x22539f4
.word 0x0 @ 0x22539f8
.word Function_2243cdc+1 @ =0x2243cdd, 0x22539fc
.word Function_2243cf4+1 @ =0x2243cf5, 0x2253a00
.word 0x0 @ 0x2253a04
.word Function_2243db4+1 @ =0x2243db5, 0x2253a08
.word Function_2243dcc+1 @ =0x2243dcd, 0x2253a0c
.word 0x0 @ 0x2253a10
.word Function_2243ef8+1 @ =0x2243ef9, 0x2253a14
.word Function_2243f10+1 @ =0x2243f11, 0x2253a18
.word 0x0 @ 0x2253a1c
.word Function_22440c8+1 @ =0x22440c9, 0x2253a20
.word Function_22440e0+1 @ =0x22440e1, 0x2253a24
.word 0x0 @ 0x2253a28
.word Function_2244228+1 @ =0x2244229, 0x2253a2c
.word Function_2244240+1 @ =0x2244241, 0x2253a30
.word 0x0 @ 0x2253a34
.word Function_22443e0+1 @ =0x22443e1, 0x2253a38
.word Function_22443f8+1 @ =0x22443f9, 0x2253a3c
.word 0x0 @ 0x2253a40
.word Function_2244958+1 @ =0x2244959, 0x2253a44
.word Function_2244970+1 @ =0x2244971, 0x2253a48
.word Function_2244bb0+1 @ =0x2244bb1, 0x2253a4c
.word Function_2244bd4+1 @ =0x2244bd5, 0x2253a50
.word Function_2244bec+1 @ =0x2244bed, 0x2253a54
.word 0x0 @ 0x2253a58
.word Function_2244bf0+1 @ =0x2244bf1, 0x2253a5c
.word Function_2244c08+1 @ =0x2244c09, 0x2253a60
.word 0x0 @ 0x2253a64
.word Function_2244d20+1 @ =0x2244d21, 0x2253a68
.word Function_2244d38+1 @ =0x2244d39, 0x2253a6c
.word 0x0 @ 0x2253a70
.word Function_2244fbc+1 @ =0x2244fbd, 0x2253a74
.word Function_2244fd4+1 @ =0x2244fd5, 0x2253a78
.word 0x0 @ 0x2253a7c
.word Function_2245124+1 @ =0x2245125, 0x2253a80
.word Function_224513c+1 @ =0x224513d, 0x2253a84
.word 0x0 @ 0x2253a88
.word Function_2245510+1 @ =0x2245511, 0x2253a8c
.word Function_2245528+1 @ =0x2245529, 0x2253a90
.word 0x0 @ 0x2253a94
.word Function_2245510+1 @ =0x2245511, 0x2253a98
.word Function_2245528+1 @ =0x2245529, 0x2253a9c
.word 0x0 @ 0x2253aa0
.word Function_2245678+1 @ =0x2245679, 0x2253aa4
.word Function_2245690+1 @ =0x2245691, 0x2253aa8
.word 0x0 @ 0x2253aac
.word Function_224595c+1 @ =0x224595d, 0x2253ab0
.word Function_2245974+1 @ =0x2245975, 0x2253ab4
.word 0x0 @ 0x2253ab8
.word Function_2245b48+1 @ =0x2245b49, 0x2253abc
.word Function_2245b60+1 @ =0x2245b61, 0x2253ac0
.word 0x0 @ 0x2253ac4
.word Function_2245da4+1 @ =0x2245da5, 0x2253ac8
.word Function_2245dbc+1 @ =0x2245dbd, 0x2253acc
.word 0x0 @ 0x2253ad0
.word Function_2245e00+1 @ =0x2245e01, 0x2253ad4
.word Function_2245e14+1 @ =0x2245e15, 0x2253ad8
.word 0x0 @ 0x2253adc
.word Function_2245c4c+1 @ =0x2245c4d, 0x2253ae0
.word Function_2245c60+1 @ =0x2245c61, 0x2253ae4
.word 0x0 @ 0x2253ae8

.incbin "./baserom/overlay/overlay_0017.bin", 0x189ac, 0x2253af8 - 0x2253aec


.word Function_2246830+1 @ =0x2246831, 0x2253af8
.word 0xff03 @ 0x2253afc
.word Function_2246578+1 @ =0x2246579, 0x2253b00
.word 0xff03 @ 0x2253b04
.word Function_2246668+1 @ =0x2246669, 0x2253b08
.word 0xff03 @ 0x2253b0c
.word Function_2246774+1 @ =0x2246775, 0x2253b10
.word 0xff05 @ 0x2253b14
.word Function_22467cc+1 @ =0x22467cd, 0x2253b18
.word 0xff03 @ 0x2253b1c
.word Function_2246830+1 @ =0x2246831, 0x2253b20
.word 0xff03 @ 0x2253b24
.word Function_2246834+1 @ =0x2246835, 0x2253b28
.word 0x5 @ 0x2253b2c
.word Function_224687c+1 @ =0x224687d, 0x2253b30
.word 0xff03 @ 0x2253b34
.word Function_22468d4+1 @ =0x22468d5, 0x2253b38
.word 0xff03 @ 0x2253b3c
.word Function_2246918+1 @ =0x2246919, 0x2253b40
.word 0x5 @ 0x2253b44
.word Function_2246960+1 @ =0x2246961, 0x2253b48
.word 0xff03 @ 0x2253b4c
.word Function_22469dc+1 @ =0x22469dd, 0x2253b50
.word 0xff03 @ 0x2253b54
.word Function_2246a50+1 @ =0x2246a51, 0x2253b58
.word 0xff03 @ 0x2253b5c
.word Function_22469fc+1 @ =0x22469fd, 0x2253b60
.word 0xff03 @ 0x2253b64
.word Function_2246ab0+1 @ =0x2246ab1, 0x2253b68
.word 0xff03 @ 0x2253b6c
.word Function_2246b74+1 @ =0x2246b75, 0x2253b70
.word 0xff03 @ 0x2253b74
.word Function_2246bc0+1 @ =0x2246bc1, 0x2253b78
.word 0xff03 @ 0x2253b7c
.word Function_2246c10+1 @ =0x2246c11, 0x2253b80
.word 0xff03 @ 0x2253b84
.word Function_2246c4c+1 @ =0x2246c4d, 0x2253b88
.word 0xff03 @ 0x2253b8c
.word Function_2246c88+1 @ =0x2246c89, 0x2253b90
.word 0xff03 @ 0x2253b94
.word Function_2246cdc+1 @ =0x2246cdd, 0x2253b98
.word 0xff03 @ 0x2253b9c
.word Function_2246da4+1 @ =0x2246da5, 0x2253ba0
.word 0xff03 @ 0x2253ba4
.word Function_2246e08+1 @ =0x2246e09, 0x2253ba8
.word 0xff03 @ 0x2253bac
.word Function_2246e68+1 @ =0x2246e69, 0x2253bb0
.word 0xff06 @ 0x2253bb4

.incbin "./baserom/overlay/overlay_0017.bin", 0x18a78, 0x2253bc0 - 0x2253bb8


.word Function_22472f8+1 @ =0x22472f9, 0x2253bc0
.word Function_2247308+1 @ =0x2247309, 0x2253bc4
.word Function_2247320+1 @ =0x2247321, 0x2253bc8
.word Function_2247338+1 @ =0x2247339, 0x2253bcc
.word Function_2247350+1 @ =0x2247351, 0x2253bd0
.word Function_2247368+1 @ =0x2247369, 0x2253bd4
.word Function_2247380+1 @ =0x2247381, 0x2253bd8
.word Function_2247398+1 @ =0x2247399, 0x2253bdc
.word Function_22473b0+1 @ =0x22473b1, 0x2253be0
.word Function_22473c8+1 @ =0x22473c9, 0x2253be4
.word Function_22473e0+1 @ =0x22473e1, 0x2253be8
.word Function_22473f8+1 @ =0x22473f9, 0x2253bec
.word Function_2247424+1 @ =0x2247425, 0x2253bf0
.word Function_2247454+1 @ =0x2247455, 0x2253bf4
.word Function_2247474+1 @ =0x2247475, 0x2253bf8
.word Function_2247490+1 @ =0x2247491, 0x2253bfc
.word Function_22474d8+1 @ =0x22474d9, 0x2253c00
.word Function_2247520+1 @ =0x2247521, 0x2253c04
.word Function_2247538+1 @ =0x2247539, 0x2253c08
.word Function_2247550+1 @ =0x2247551, 0x2253c0c
.word Function_224757c+1 @ =0x224757d, 0x2253c10
.word Function_22475a8+1 @ =0x22475a9, 0x2253c14
.word Function_22475d4+1 @ =0x22475d5, 0x2253c18
.word Function_2247600+1 @ =0x2247601, 0x2253c1c
.word Function_224762c+1 @ =0x224762d, 0x2253c20
.word Function_2247658+1 @ =0x2247659, 0x2253c24
.word Function_2247684+1 @ =0x2247685, 0x2253c28
.word Function_22476b0+1 @ =0x22476b1, 0x2253c2c

.incbin "./baserom/overlay/overlay_0017.bin", 0x18af0, 0x2254488 - 0x2253c30


.word Function_2247a88+1 @ =0x2247a89, 0x2254488
.word Function_2247a9c+1 @ =0x2247a9d, 0x225448c
.word Function_2247aac+1 @ =0x2247aad, 0x2254490
.word Function_2247ab0+1 @ =0x2247ab1, 0x2254494
.word Function_2247ac4+1 @ =0x2247ac5, 0x2254498
.word 0x0 @ 0x225449c
.word Function_2247aec+1 @ =0x2247aed, 0x22544a0
.word Function_2247b00+1 @ =0x2247b01, 0x22544a4
.word 0x0 @ 0x22544a8
.word Function_2247d68+1 @ =0x2247d69, 0x22544ac
.word Function_2247d7c+1 @ =0x2247d7d, 0x22544b0
.word 0x0 @ 0x22544b4
.word Function_2247e78+1 @ =0x2247e79, 0x22544b8
.word Function_2247e8c+1 @ =0x2247e8d, 0x22544bc
.word 0x0 @ 0x22544c0
.word Function_2247e78+1 @ =0x2247e79, 0x22544c4
.word Function_2247edc+1 @ =0x2247edd, 0x22544c8
.word 0x0 @ 0x22544cc
.word Function_2247e78+1 @ =0x2247e79, 0x22544d0
.word Function_2247f2c+1 @ =0x2247f2d, 0x22544d4
.word 0x0 @ 0x22544d8
.word Function_2248138+1 @ =0x2248139, 0x22544dc
.word Function_224814c+1 @ =0x224814d, 0x22544e0
.word 0x0 @ 0x22544e4
.word Function_2248258+1 @ =0x2248259, 0x22544e8
.word Function_224826c+1 @ =0x224826d, 0x22544ec
.word 0x0 @ 0x22544f0
.word Function_224840c+1 @ =0x224840d, 0x22544f4
.word Function_2248420+1 @ =0x2248421, 0x22544f8
.word 0x0 @ 0x22544fc
.word Function_22485e8+1 @ =0x22485e9, 0x2254500
.word Function_22485fc+1 @ =0x22485fd, 0x2254504
.word 0x0 @ 0x2254508
.word Function_22486e4+1 @ =0x22486e5, 0x225450c
.word Function_22486f8+1 @ =0x22486f9, 0x2254510
.word 0x0 @ 0x2254514
.word Function_22487e8+1 @ =0x22487e9, 0x2254518
.word Function_22487fc+1 @ =0x22487fd, 0x225451c
.word 0x0 @ 0x2254520
.word Function_2248d28+1 @ =0x2248d29, 0x2254524
.word Function_2248d3c+1 @ =0x2248d3d, 0x2254528
.word 0x0 @ 0x225452c
.word Function_2248e58+1 @ =0x2248e59, 0x2254530
.word Function_2248e6c+1 @ =0x2248e6d, 0x2254534
.word 0x0 @ 0x2254538
.word Function_2248fbc+1 @ =0x2248fbd, 0x225453c
.word Function_2248fd0+1 @ =0x2248fd1, 0x2254540
.word 0x0 @ 0x2254544
.word Function_224924c+1 @ =0x224924d, 0x2254548
.word Function_2249260+1 @ =0x2249261, 0x225454c

.incbin "./baserom/overlay/overlay_0017.bin", 0x19410, 0x22545b8 - 0x2254550


.word Function_22498e8+1 @ =0x22498e9, 0x22545b8
.word Function_2249a0c+1 @ =0x2249a0d, 0x22545bc

.incbin "./baserom/overlay/overlay_0017.bin", 0x19480, 0x22549e4 - 0x22545c0


.word Function_224cff8+1 @ =0x224cff9, 0x22549e4
.word Function_224d00c+1 @ =0x224d00d, 0x22549e8
.word Function_224d01c+1 @ =0x224d01d, 0x22549ec
.word Function_224d020+1 @ =0x224d021, 0x22549f0
.word Function_224d034+1 @ =0x224d035, 0x22549f4
.word 0x0 @ 0x22549f8
.word Function_224d1d4+1 @ =0x224d1d5, 0x22549fc
.word Function_224d1e8+1 @ =0x224d1e9, 0x2254a00
.word 0x0 @ 0x2254a04
.word Function_224d3c4+1 @ =0x224d3c5, 0x2254a08
.word Function_224d3d8+1 @ =0x224d3d9, 0x2254a0c
.word 0x0 @ 0x2254a10
.word Function_224d4ec+1 @ =0x224d4ed, 0x2254a14
.word Function_224d500+1 @ =0x224d501, 0x2254a18
.word 0x0 @ 0x2254a1c
.word Function_224d544+1 @ =0x224d545, 0x2254a20
.word Function_224d558+1 @ =0x224d559, 0x2254a24
.word Function_224df84+1 @ =0x224df85, 0x2254a28
.word Function_224df88+1 @ =0x224df89, 0x2254a2c
.word Function_224df9c+1 @ =0x224df9d, 0x2254a30
.word 0x0 @ 0x2254a34
.word Function_224e43c+1 @ =0x224e43d, 0x2254a38
.word Function_224e450+1 @ =0x224e451, 0x2254a3c
.word 0x0 @ 0x2254a40
.word Function_224e518+1 @ =0x224e519, 0x2254a44
.word Function_224e52c+1 @ =0x224e52d, 0x2254a48
.word 0x0 @ 0x2254a4c
.word Function_224e648+1 @ =0x224e649, 0x2254a50
.word Function_224e65c+1 @ =0x224e65d, 0x2254a54
.word 0x0 @ 0x2254a58
.word Function_224e77c+1 @ =0x224e77d, 0x2254a5c
.word Function_224e790+1 @ =0x224e791, 0x2254a60
.word 0x0 @ 0x2254a64
.word Function_224e7b4+1 @ =0x224e7b5, 0x2254a68
.word Function_224e7c8+1 @ =0x224e7c9, 0x2254a6c
.word 0x0 @ 0x2254a70
.word Function_224e800+1 @ =0x224e801, 0x2254a74
.word Function_224e814+1 @ =0x224e815, 0x2254a78

.incbin "./baserom/overlay/overlay_0017.bin", 0x1993c, 0x2254b54 - 0x2254a7c


.word Function_224fecc+1 @ =0x224fecd, 0x2254b54
.word Function_2250000+1 @ =0x2250001, 0x2254b58
.word Function_2250084+1 @ =0x2250085, 0x2254b5c
.word Function_22500e8+1 @ =0x22500e9, 0x2254b60
.word Function_2250178+1 @ =0x2250179, 0x2254b64
.word Function_2250284+1 @ =0x2250285, 0x2254b68
.word Function_22503b0+1 @ =0x22503b1, 0x2254b6c
.word Function_22504e4+1 @ =0x22504e5, 0x2254b70
.word Function_2250548+1 @ =0x2250549, 0x2254b74
.word Function_225062c+1 @ =0x225062d, 0x2254b78
.word Function_22506ac+1 @ =0x22506ad, 0x2254b7c

.incbin "./baserom/overlay/overlay_0017.bin", 0x19a40, 0x2254d18 - 0x2254b80


.word Function_2251dac+1 @ =0x2251dad, 0x2254d18
.word Function_2251dc0+1 @ =0x2251dc1, 0x2254d1c
.word Function_2251dd0+1 @ =0x2251dd1, 0x2254d20
.word Function_2251dd4+1 @ =0x2251dd5, 0x2254d24
.word Function_2251de8+1 @ =0x2251de9, 0x2254d28
.word 0x0 @ 0x2254d2c
.word Function_2251e54+1 @ =0x2251e55, 0x2254d30
.word Function_2251e68+1 @ =0x2251e69, 0x2254d34
.word 0x0 @ 0x2254d38
.word Function_2252008+1 @ =0x2252009, 0x2254d3c
.word Function_225201c+1 @ =0x225201d, 0x2254d40
.word 0x0 @ 0x2254d44
.word Function_22521e4+1 @ =0x22521e5, 0x2254d48
.word Function_22521f8+1 @ =0x22521f9, 0x2254d4c
.word 0x0 @ 0x2254d50
.word Function_2252210+1 @ =0x2252211, 0x2254d54
.word Function_2252224+1 @ =0x2252225, 0x2254d58
.word 0x0 @ 0x2254d5c
.word Function_2252344+1 @ =0x2252345, 0x2254d60
.word Function_2252358+1 @ =0x2252359, 0x2254d64
.word 0x0 @ 0x2254d68
.word Function_2252514+1 @ =0x2252515, 0x2254d6c
.word Function_2252528+1 @ =0x2252529, 0x2254d70
.word 0x0 @ 0x2254d74
.word Function_225260c+1 @ =0x225260d, 0x2254d78
.word Function_2252620+1 @ =0x2252621, 0x2254d7c
.word 0x0 @ 0x2254d80
.word Function_2252798+1 @ =0x2252799, 0x2254d84
.word Function_22527ac+1 @ =0x22527ad, 0x2254d88
.word 0x0 @ 0x2254d8c
.word Function_2252970+1 @ =0x2252971, 0x2254d90
.word Function_2252984+1 @ =0x2252985, 0x2254d94
@ 0x2254d98


.incbin "./baserom/overlay/overlay_0017.bin", 0x19c58, 0x2254de0 - 0x2254d98


@end 0x2254ddf

