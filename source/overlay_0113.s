
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram113, "ax"


.thumb
Function_225c700: @ 225c700 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r1, #0x1
	lsl     r1, r1, #26
	ldr     r0, [r1, #0x0]
	ldr     r2, [pc, #0x2a0] @ 0x225c9c4, (=0xffffe0ff)
	and     r0, r2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x2a0] @ 0x225c9c8, (=0x4001000)
	ldr     r3, [r0, #0x0]
	and     r2, r3
	str     r2, [r0, #0x0]
	ldr     r3, [r1, #0x0]
	ldr     r2, [pc, #0x298] @ 0x225c9cc, (=0xffff1fff)
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
	mov     r2, #0x5
	mov     r0, #0x3
	mov     r1, #0x76
	lsl     r2, r2, #16
	bl      Function_2017fc8
	ldr     r1, [pc, #0x27c] @ 0x225c9d0, (=0x19e4)
	mov     r0, r4
	mov     r2, #0x76
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	ldr     r2, [pc, #0x270] @ 0x225c9d0, (=0x19e4)
	mov     r1, #0x0
	mov     r5, r0
	blx     MI_CpuFill8
	mov     r0, r4
	bl      LoadPtrToOverWorldDataIn18
	str     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x222e0c4
	str     r0, [r5, #0x4]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x222e0c8
	ldr     r1, [pc, #0x254] @ 0x225c9d4, (=0x19e0)
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_225dd14
	ldr     r0, [r5, #0x0]
	ldr     r2, [pc, #0x24c] @ 0x225c9d8, (=0x8d8)
	ldrb    r0, [r0, #0x4]
	ldr     r1, [r5, #0x4]
	add     r2, r5, r2
	bl      Function_225dd4c
	mov     r1, #0x2
	ldr     r0, [pc, #0x240] @ 0x225c9dc, (=0x19d4)
	lsl     r1, r1, #12
	str     r1, [r5, r0]
	ldr     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	mov     r0, #0x76
	bl      Function_225dc6c
	str     r0, [r5, #0x14]
	mov     r0, #0x76
	bl      MallocFill120
	str     r0, [r5, #0xc]
	mov     r1, #0x1
	bl      Function_2003858
	mov     r2, #0x2
	ldr     r0, [r5, #0xc]
	mov     r1, #0x0
	lsl     r2, r2, #8
	mov     r3, #0x76
	bl      Function_2002f70
	mov     r1, #0x1
	ldr     r0, [r5, #0xc]
	lsl     r2, r1, #9
	mov     r3, #0x76
	bl      Function_2002f70
	mov     r2, #0x7
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	lsl     r2, r2, #6
	mov     r3, #0x76
	bl      Function_2002f70
	mov     r2, #0x2
	ldr     r0, [r5, #0xc]
	mov     r1, #0x3
	lsl     r2, r2, #8
	mov     r3, #0x76
	bl      Function_2002f70
	ldr     r0, [r5, #0xc]
	mov     r1, #0x1
	bl      Function_2003858
	mov     r0, #0x76
	bl      Function_2018340
	str     r0, [r5, #0x8]
	mov     r0, #0x40
	mov     r1, #0x76
	bl      Function_201dbec
	mov     r0, #0x4
	mov     r1, #0x8
	bl      Function_2017dd4
	ldr     r0, [r5, #0x8]
	bl      Function_225cf58
	bl      Function_201e3d8
	mov     r0, #0x4
	bl      Function_201e450
	mov     r0, #0x2
	mov     r1, #0x76
	bl      Function_2002bb8
	mov     r0, #0x76
	bl      Function_200b358
	str     r0, [r5, #0x2c]
	ldr     r2, [pc, #0x1ac] @ 0x225c9e0, (=0x28a)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x76
	bl      LoadFromNARC_9
	str     r0, [r5, #0x30]
	mov     r0, #0x4
	mov     r1, #0x76
	bl      Function_2012744
	str     r0, [r5, #0x10]

	mov     r0, #FootprintBoard_Narc
	mov     r1, #0x76
	bl      LoadFromNARC_8
	mov     r1, #0x16
	lsl     r1, r1, #4
	str     r0, [r5, r1]

	mov     r0, #Pokefoot_Narc
	mov     r1, #0x76
	bl      LoadFromNARC_8
	mov     r1, #0x59
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1f09 @ sub r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r0, r5
	bl      Function_225d160
	mov     r1, #0x16
	lsl     r1, r1, #4
	ldr     r1, [r5, r1]
	mov     r0, r5
	bl      Function_225daa8
	mov     r0, r5
	bl      Function_225d9fc
	mov     r0, r5
	bl      Function_225dbcc
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, #0x76
	bl      Function_2023790
	mov     r1, r5
	add     r1, #0xc4
	str     r0, [r1, #0x0]
	mov     r0, #0x76
	bl      Function_200c6e4
	ldr     r1, [pc, #0x144] @ 0x225c9e4, (=0x2260954)
	ldr     r2, [pc, #0x148] @ 0x225c9e8, (=0x22608e8)
	mov     r3, #0x20
	str     r0, [r5, #0x1c]
	bl      Function_200c73c
	ldr     r1, [pc, #0x140] @ 0x225c9ec, (=0x200010)
	mov     r0, #0x1
	bl      Function_200966c
	mov     r0, #0x1
	bl      Function_2009704
	ldr     r0, [r5, #0x1c]
	bl      Function_200c704
	str     r0, [r5, #0x20]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	mov     r2, #0x80
	bl      Function_200c7c0
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	ldr     r2, [pc, #0x120] @ 0x225c9f0, (=0x22608fc)
	bl      Function_200cb30
	ldr     r0, [r5, #0x1c]
	bl      Function_200c738
	mov     r2, #0x11
	mov     r1, #0x0
	lsl     r2, r2, #16
	bl      Function_200964c
	bl      Function_2039734
	ldr     r1, [pc, #0xec] @ 0x225c9d4, (=0x19e0)
	mov     r0, #0x65
	lsl     r0, r0, #2
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	bl      Function_225e368
	mov     r1, #0x16
	lsl     r1, r1, #4
	ldr     r1, [r5, r1]
	mov     r0, r5
	bl      Function_225d304
	mov     r1, #0x16
	lsl     r1, r1, #4
	ldr     r1, [r5, r1]
	mov     r0, r5
	bl      Function_225d630
	mov     r0, r5
	bl      Function_225d484
	mov     r0, r5
	bl      Function_225d6f8
	mov     r0, r5
	bl      Function_225d7cc
	mov     r0, #0x76
	bl      Function_2015920
	str     r0, [r5, #0x24]
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x76
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_225c94a
	mov     r1, #0x1
	bl      0x222e31c
.thumb
branch_225c94a: @ 225c94a :thumb
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
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff74
	ldr     r0, [pc, #0x78] @ 0x225c9f4, (=RAM_21bf6dc)
	mov     r1, #0x1
	strb    r1, [r0, #0x5]
	bl      Function_201ffe8
	bl      Function_201ffd0
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x1
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002ae4
	mov     r0, #0x0
	bl      Function_2002b20
	ldr     r0, [pc, #0x4c] @ 0x225c9f8, (=0x225cef1)
	ldr     r2, [pc, #0x4c] @ 0x225c9fc, (=0xea60)
	mov     r1, r5
	bl      AddTaskToTaskList1
	str     r0, [r5, #0x18]
	ldr     r0, [pc, #0x48] @ 0x225ca00, (=0x225cf19)
	mov     r1, r5
	bl      SetMainLoopFunctionCall
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x225c9c4

.word 0xffffe0ff @ 0x225c9c4
.word 0x4001000 @ 0x225c9c8
.word 0xffff1fff @ 0x225c9cc
.word 0x19e4 @ 0x225c9d0
.word 0x19e0 @ 0x225c9d4
.word 0x8d8 @ 0x225c9d8
.word 0x19d4 @ 0x225c9dc
.word 0x28a @ 0x225c9e0
.word 0x2260954 @ 0x225c9e4
.word 0x22608e8 @ 0x225c9e8
.word 0x200010 @ 0x225c9ec
.word 0x22608fc @ 0x225c9f0
.word RAM_21bf6dc @ 0x225c9f4
.word 0x225cef1 @ 0x225c9f8
.word 0xea60 @ 0x225c9fc
.word 0x225cf19 @ 0x225ca00
.thumb
Function_225ca04: @ 225ca04 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r1
	bl      LoadOverlayData1c
	mov     r4, r0
	ldr     r3, [r4, #0x0]
	mov     r1, r4
	ldr     r2, [pc, #0x340] @ 0x225cd58, (=0x9bc)
	mov     r0, #0x65
	add     r1, #0xcc
	lsl     r0, r0, #2
	ldrb    r3, [r3, #0x4]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r4, r2]
	add     r0, r4, r0
	bl      Function_225e3f0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0xa
	bls     branch_225ca30
	b       branch_225cd3c
@ 0x225ca30

.thumb
branch_225ca30: @ 225ca30 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225ca3c

Jumppoints_225ca3c:
.hword branch_225ca52 - Jumppoints_225ca3c - 2
.hword branch_225ca70 - Jumppoints_225ca3c - 2
.hword branch_225ca88 - Jumppoints_225ca3c - 2
.hword branch_225cb56 - Jumppoints_225ca3c - 2
.hword branch_225cbac - Jumppoints_225ca3c - 2
.hword branch_225cbec - Jumppoints_225ca3c - 2
.hword branch_225cc76 - Jumppoints_225ca3c - 2
.hword branch_225cccc - Jumppoints_225ca3c - 2
.hword branch_225cce2 - Jumppoints_225ca3c - 2
.hword branch_225cd00 - Jumppoints_225ca3c - 2
.hword branch_225cd2c - Jumppoints_225ca3c - 2
.thumb
branch_225ca52: @ 225ca52 :thumb
	mov     r0, #0x5a
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_22607d8
	mov     r0, r4
	add     r1, sp, #0x20
	bl      Function_225dd24
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225cd46
@ 0x225ca70

.thumb
branch_225ca70: @ 225ca70 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	beq     branch_225ca7a
	b       branch_225cd46
@ 0x225ca7a

.thumb
branch_225ca7a: @ 225ca7a :thumb
	ldr     r0, [pc, #0x2dc] @ 0x225cd58, (=0x9bc)
	mov     r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225cd46
@ 0x225ca88

.thumb
branch_225ca88: @ 225ca88 :thumb
	ldr     r0, [pc, #0x2d0] @ 0x225cd5c, (=0x21bf6bc)
	ldrh    r1, [r0, #0x20]
	cmp     r1, #0x0
	beq     branch_225caf4
	ldrh    r0, [r0, #0x1e]
	cmp     r0, #0xa0
	bcs     branch_225caf4
	ldr     r1, [pc, #0x2c8] @ 0x225cd60, (=0x555)
	mov     r0, r4
	bl      Function_225e318
	cmp     r0, #0x1
	bne     branch_225caf4
	mov     r2, #0x92
	lsl     r2, r2, #4
	ldrb    r1, [r4, r2]
	ldr     r7, [pc, #0x2b0] @ 0x225cd5c, (=0x21bf6bc)
	mov     r3, #0xc
	mov     r6, r1
	mul     r6, r3
	mov     r1, r2
	ldrh    r0, [r7, #0x1c]
	add     r6, r4, r6
	sub     r1, #0x3f
	strb    r0, [r6, r1]
	ldrb    r1, [r4, r2]
	ldrh    r0, [r7, #0x1e]
	mov     r6, r1
	mul     r6, r3
	mov     r1, r2
	add     r6, r4, r6
	sub     r1, #0x3e
	strb    r0, [r6, r1]
	mov     r1, r2
	ldrb    r2, [r4, r2]
	sub     r1, #0x48
	add     r1, r4, r1
	mul     r3, r2
	mov     r2, #0x5b
	lsl     r2, r2, #2
	ldr     r2, [r4, r2]
	mov     r0, r4
	add     r1, r1, r3
	bl      Function_225ddc0
	ldr     r0, [pc, #0x280] @ 0x225cd64, (=0x8d8)
	add     r2, r4, r0
	add     r0, #0x48
	ldrb    r1, [r4, r0]
	mov     r0, #0xc
	mul     r0, r1
	add     r0, r2, r0
	bl      Function_2260818
.thumb
branch_225caf4: @ 225caf4 :thumb
	ldr     r1, [pc, #0x26c] @ 0x225cd64, (=0x8d8)
	add     r0, r4, r1
	add     r1, #0x48
	ldrb    r1, [r4, r1]
	bl      Function_2260748
	mov     r1, r0
	cmp     r1, #0x6
	bge     branch_225cb14
	mov     r0, #0x92
	lsl     r0, r0, #4
	strb    r1, [r4, r0]
	mov     r0, r4
	bl      Function_225e068
	b       branch_225cd46
@ 0x225cb14

.thumb
branch_225cb14: @ 225cb14 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x2
	bne     branch_225cc06
	cmp     r1, #0xfe
	bne     branch_225cc06
	ldr     r0, [pc, #0x248] @ 0x225cd68, (=0x5e5)
	bl      Function_2005748
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0xc]
	mov     r2, #0x9
	mov     r3, #0x1
	bl      Function_20039b0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x22c] @ 0x225cd6c, (=0x921)
	ldr     r0, [r4, #0xc]
	ldrb    r2, [r4, r2]
	mov     r1, #0x2
	mov     r3, #0x10
	lsl     r2, r2, #20
	lsr     r2, r2, #16
	bl      Function_20039b0
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_225cd46
@ 0x225cb56

.thumb
branch_225cb56: @ 225cb56 :thumb
	mov     r0, r4
	add     r0, #0xb4
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	add     r0, #0xb4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xe
	bl      Function_200e060
	mov     r2, r4
	add     r2, #0xc4
	ldr     r0, [r4, #0x30]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x2
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r4, #0x4]
	bl      LoadPlayerDataAdress
	bl      Function_2027ac0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r2, r4
	mov     r0, r4
	str     r3, [sp, #0x8]
	add     r2, #0xc4
	ldr     r2, [r2, #0x0]
	add     r0, #0xb4
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	mov     r1, r4
	add     r1, #0xc8
	strb    r0, [r1, #0x0]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225cd46
@ 0x225cbac

.thumb
branch_225cbac: @ 225cbac :thumb
	mov     r0, r4
	add     r0, #0xc8
	ldrb    r0, [r0, #0x0]
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_225cc06
	ldr     r0, [r4, #0x8]
	mov     r1, #0x19
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	mov     r0, #0x1f
	str     r0, [sp, #0x14]
	mov     r0, #0xb
	str     r0, [sp, #0x18]
	add     r0, sp, #0xc
	strb    r1, [r0, #0x10]
	mov     r1, #0x6
	strb    r1, [r0, #0x11]
	ldr     r0, [r4, #0x24]
	add     r1, sp, #0xc
	bl      Function_2015958
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x28
	strb    r1, [r0, #0x0]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225cd46
@ 0x225cbec

.thumb
branch_225cbec: @ 225cbec :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	mov     r2, #0xb0
	mov     r3, #0x40
	bl      GetPaletteAdresses
	ldr     r0, [r4, #0x24]
	bl      Function_20159fc
	cmp     r0, #0x1
	beq     branch_225cc08
	cmp     r0, #0x2
	beq     branch_225cc32
.thumb
branch_225cc06: @ 225cc06 :thumb
	b       branch_225cd46
@ 0x225cc08

.thumb
branch_225cc08: @ 225cc08 :thumb
	ldr     r0, [r4, #0x24]
	bl      Function_2015a54
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x28
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xb4
	bl      Function_200e084
	mov     r0, #0x5a
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x130] @ 0x225cd58, (=0x9bc)
	mov     r1, #0x3
	str     r1, [r4, r0]
	mov     r0, #0x9
	str     r0, [r5, #0x0]
	b       branch_225cd46
@ 0x225cc32

.thumb
branch_225cc32: @ 225cc32 :thumb
	ldr     r0, [r4, #0x24]
	bl      Function_2015a54
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x28
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xb4
	bl      Function_200e084
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0xc]
	mov     r2, #0x9
	mov     r3, #0x1
	bl      Function_20039b0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x10c] @ 0x225cd6c, (=0x921)
	ldr     r0, [r4, #0xc]
	ldrb    r2, [r4, r2]
	mov     r1, #0x2
	mov     r3, #0x10
	lsl     r2, r2, #20
	lsr     r2, r2, #16
	bl      Function_20039b0
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_225cd46
@ 0x225cc76

.thumb
branch_225cc76: @ 225cc76 :thumb
	mov     r0, r4
	add     r0, #0xb4
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	add     r0, #0xb4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xe
	bl      Function_200e060
	mov     r2, r4
	add     r2, #0xc4
	ldr     r0, [r4, #0x30]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x3
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r4, #0x4]
	bl      LoadPlayerDataAdress
	bl      Function_2027ac0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r2, r4
	mov     r0, r4
	str     r3, [sp, #0x8]
	add     r2, #0xc4
	ldr     r2, [r2, #0x0]
	add     r0, #0xb4
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	mov     r1, r4
	add     r1, #0xc8
	strb    r0, [r1, #0x0]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225cd46
@ 0x225cccc

.thumb
branch_225cccc: @ 225cccc :thumb
	mov     r0, r4
	add     r0, #0xc8
	ldrb    r0, [r0, #0x0]
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_225cd46
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225cd46
@ 0x225cce2

.thumb
branch_225cce2: @ 225cce2 :thumb
	mov     r0, r4
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x29
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x29
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x5a
	bls     branch_225cd46
	mov     r0, #0x9
	str     r0, [r5, #0x0]
	b       branch_225cd46
@ 0x225cd00

.thumb
branch_225cd00: @ 225cd00 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	bne     branch_225cd0c
	bl      Function_200f2c0
.thumb
branch_225cd0c: @ 225cd0c :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x76
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225cd46
@ 0x225cd2c

.thumb
branch_225cd2c: @ 225cd2c :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_225cd46
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_225cd46
@ 0x225cd3c

.thumb
branch_225cd3c: @ 225cd3c :thumb
	bl      0x2232dc8
	add     sp, #0x2c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x225cd46

.thumb
branch_225cd46: @ 225cd46 :thumb
	mov     r0, r4
	bl      Function_225e118
	mov     r0, r4
	bl      Function_225e294
	ldr     r0, [pc, #0x4] @ 0x225cd58, (=0x9bc)
	b       branch_225cd70
@ 0x225cd56


.align 2


.word 0x9bc @ 0x225cd58
.word 0x21bf6bc @ 0x225cd5c
.word 0x555 @ 0x225cd60
.word 0x8d8 @ 0x225cd64
.word 0x5e5 @ 0x225cd68
.word 0x921 @ 0x225cd6c
.thumb
branch_225cd70: @ 225cd70 :thumb
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_225cde8
	mov     r0, #0x19
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	cmp     r1, #0x1e
	ble     branch_225cd90
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_225de98
.thumb
branch_225cd90: @ 225cd90 :thumb
	bl      0x2231760
	cmp     r0, #0x1
	beq     branch_225cda4
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x222e12c
	cmp     r0, #0x1
	bne     branch_225cde8
.thumb
branch_225cda4: @ 225cda4 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x4
	beq     branch_225cde8
	mov     r0, r4
	add     r0, #0x28
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_225cdba
	ldr     r0, [r4, #0x24]
	bl      Function_2015a54
.thumb
branch_225cdba: @ 225cdba :thumb
	mov     r0, #0x5a
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x30] @ 0x225cdf4, (=0x9bc)
	mov     r1, #0x3
	str     r1, [r4, r0]
	bl      0x2231760
	cmp     r0, #0x1
	bne     branch_225cdd6
	mov     r0, #0x9
	str     r0, [r5, #0x0]
	b       branch_225cde8
@ 0x225cdd6

.thumb
branch_225cdd6: @ 225cdd6 :thumb
	ldr     r0, [pc, #0x20] @ 0x225cdf8, (=0x5f1)
	bl      Function_2005748
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x222e2a4
	mov     r0, #0x6
	str     r0, [r5, #0x0]
.thumb
branch_225cde8: @ 225cde8 :thumb
	mov     r0, r4
	bl      Function_225e364
	mov     r0, #0x0
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x225cdf4

.word 0x9bc @ 0x225cdf4
.word 0x5f1 @ 0x225cdf8
.thumb
Function_225cdfc: @ 225cdfc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	bl      Function_225d5d8
	mov     r0, r4
	bl      Function_225d7a4
	ldr     r0, [r4, #0x24]
	bl      Function_2015938
	mov     r0, #0x65
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225e378
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x2
	bl      Function_2002c60
	ldr     r0, [r4, #0x10]
	bl      Function_20127bc
	ldr     r0, [r4, #0x30]
	bl      Function_200b190
	ldr     r0, [r4, #0x2c]
	bl      Function_200b3f0
	mov     r0, r4
	bl      Function_225dc4c
	ldr     r0, [r4, #0x8]
	bl      Function_225d12c
	ldr     r0, [r4, #0x8]
	bl      free
	ldr     r0, [r4, #0x1c]
	ldr     r1, [r4, #0x20]
	bl      Function_200d0b0
	ldr     r0, [r4, #0x1c]
	bl      Function_200c8d4
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      Function_2002fa0
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_2002fa0
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      Function_2002fa0
	ldr     r0, [r4, #0xc]
	mov     r1, #0x3
	bl      Function_2002fa0
	ldr     r0, [r4, #0xc]
	bl      Call_free1
	mov     r0, r4
	bl      Function_225dafc
	mov     r0, r4
	bl      Function_225da9c
	ldr     r0, [r4, #0x14]
	bl      Function_225dd0c
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Call_FS_CloseFile
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Call_FS_CloseFile
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201dc3c
	bl      Function_201e530
	mov     r0, #0x0
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002ae4
	mov     r0, #0x0
	bl      Function_2002b20
	bl      Function_2039794
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x76
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225cef0

.thumb
Function_225cef0: @ 225cef0 :thumb
	push    {r4,lr}
	mov     r0, #0x65
	mov     r4, r1
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225e4e8
	mov     r0, r4
	bl      Function_225db08
	ldr     r0, [r4, #0x20]
	bl      Function_200c7ec
	bl      Function_200c808
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20241bc
	pop     {r4,pc}
@ 0x225cf18

.thumb
Function_225cf18: @ 225cf18 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x30] @ 0x225cf4c, (=0x9bc)
	mov     r4, r0
	mov     r0, #0x65
	lsl     r0, r0, #2
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	bl      Function_225e65c
	bl      Function_201dcac
	bl      Function_200c800
	ldr     r0, [r4, #0xc]
	bl      Function_2003694
	ldr     r0, [r4, #0x8]
	bl      Function_201c2b8
	ldr     r3, [pc, #0x10] @ 0x225cf50, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x225cf54, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x225cf4c

.word 0x9bc @ 0x225cf4c
.word 0x27e0000 @ 0x225cf50
.word 0x3ff8 @ 0x225cf54
.thumb
Function_225cf58: @ 225cf58 :thumb
	push    {r3-r5,lr}
	add     sp, #-0xe0
	mov     r4, r0
	bl      Function_201ff00
	bl      Function_201ff68
	ldr     r5, [pc, #0x1b0] @ 0x225d118, (=0x2260974)
	add     r3, sp, #0x10
	mov     r2, #0x5
.thumb
branch_225cf6c: @ 225cf6c :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_225cf6c
	add     r0, sp, #0x10
	bl      GX_SetBanks
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
	ldr     r5, [pc, #0x168] @ 0x225d11c, (=0x22608d8)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      SetGraphicsModes
	ldr     r5, [pc, #0x158] @ 0x225d120, (=0x2260b14)
	add     r3, sp, #0x8c
	mov     r2, #0xa
.thumb
branch_225cfcc: @ 225cfcc :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_225cfcc
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	mov     r0, r4
	add     r2, sp, #0x8c
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
	add     r2, sp, #0xa8
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
	add     r2, sp, #0xc4
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
	ldr     r1, [pc, #0xc4] @ 0x225d124, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	mov     r0, #0x2
	orr     r0, r2
	strh    r0, [r1, #0x0]
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r5, [pc, #0xb4] @ 0x225d128, (=0x2260b68)
	add     r3, sp, #0x38
	mov     r2, #0xa
.thumb
branch_225d078: @ 225d078 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_225d078
	ldr     r0, [r5, #0x0]
	mov     r1, #0x5
	str     r0, [r3, #0x0]
	mov     r0, r4
	add     r2, sp, #0x38
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2019ebc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x5
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x6
	add     r2, sp, #0x54
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2019ebc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x6
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x7
	add     r2, sp, #0x70
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_2019ebc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x7
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, #0x5
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x76
	bl      Function_2019690
	add     sp, #0xe0
	pop     {r3-r5,pc}
@ 0x225d118

.word 0x2260974 @ 0x225d118
.word 0x22608d8 @ 0x225d11c
.word 0x2260b14 @ 0x225d120
.word 0x4000008 @ 0x225d124
.word 0x2260b68 @ 0x225d128
.thumb
Function_225d12c: @ 225d12c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x6
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019044
	pop     {r4,pc}
@ 0x225d160

.thumb
Function_225d160: @ 225d160 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r5, r1
	mov     r1, #0x0
	mov     r0, #0x7
	str     r1, [sp, #0x0]
	lsl     r0, r0, #6
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [r4, #0xc]
	mov     r1, #0xbb
	mov     r2, #0x13
	mov     r3, #0x76
	bl      Function_2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x76
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x12
	mov     r3, #0x2
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x76
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x11
	mov     r3, #0x2
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x76
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x14
	mov     r3, #0x3
	bl      Function_200710c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0xc]
	mov     r1, #0xbb
	mov     r2, #0x17
	mov     r3, #0x76
	bl      Function_2003050
	ldr     r0, [r4, #0x0]
	ldrb    r0, [r0, #0x4]
	cmp     r0, #0x0
	bne     branch_225d1fa
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	ldr     r0, [r4, #0xc]
	mov     r2, #0x10
	mov     r3, r1
	bl      Function_2003120
.thumb
branch_225d1fa: @ 225d1fa :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x76
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x16
	mov     r3, #0x6
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x76
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x15
	mov     r3, #0x6
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x76
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x18
	mov     r3, #0x7
	bl      Function_200710c
	ldr     r0, [r4, #0x8]
	mov     r1, #0x6
	bl      Function_2019fe4
	mov     r1, #0x27
	lsl     r1, r1, #6
	mov     r2, #0x2
	add     r1, r4, r1
	lsl     r2, r2, #10
	mov     r5, r0
	blx     MIi_CpuCopy16
	mov     r2, #0x2
	mov     r0, #0x0
	mov     r1, r5
	lsl     r2, r2, #10
	blx     MIi_CpuClear16
	ldr     r0, [r4, #0x4]
	bl      LoadPlayerDataAdress
	bl      Function_2027b50
	mov     r5, r0
	bl      Function_200dd08
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x26
	mov     r3, #0x76
	bl      Function_2003050
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x76
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	ldr     r0, [r4, #0x8]
	mov     r2, r1
	mov     r3, #0xe
	bl      Function_200dd0c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xd0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0xc]
	mov     r1, #0xe
	mov     r2, #0x6
	mov     r3, #0x76
	bl      Function_2003050
	ldr     r0, [r4, #0x0]
	ldrb    r0, [r0, #0x4]
	cmp     r0, #0x0
	bne     branch_225d2de
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xd0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0xc]
	mov     r1, #0xe
	mov     r2, #0x6
	mov     r3, #0x76
	bl      Function_2003050
	b       branch_225d2f6
@ 0x225d2de

.thumb
branch_225d2de: @ 225d2de :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xd0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0xc]
	mov     r1, #0xbb
	mov     r2, #0x19
	mov     r3, #0x76
	bl      Function_2003050
.thumb
branch_225d2f6: @ 225d2f6 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x6
	bl      Function_201c3c0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x225d302


.align 2, 0


.thumb
Function_225d304: @ 225d304 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r1
	str     r6, [sp, #0x0]
	mov     r1, #0x3
	mov     r5, r0
	str     r1, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x148] @ 0x225d468, (=0x2711)
	mov     r1, #0x2
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0xc]
	ldr     r2, [r5, #0x1c]
	ldr     r3, [r5, #0x20]
	bl      Function_200cdc4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x134] @ 0x225d46c, (=0x2717)
	mov     r2, r6
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	mov     r3, #0x4
	bl      Function_200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x124] @ 0x225d470, (=0x2712)
	mov     r2, r6
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	mov     r3, #0x5
	bl      Function_200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x110] @ 0x225d470, (=0x2712)
	mov     r2, r6
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	mov     r3, #0x6
	bl      Function_200ce54
	mov     r4, #0x0
	mov     r7, r4
.thumb
branch_225d370: @ 225d370 :thumb
	str     r7, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xf0] @ 0x225d468, (=0x2711)
	mov     r2, r6
	add     r0, r4, r0
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	mov     r3, #0x10
	bl      Function_200cc3c
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x6
	blt     branch_225d370
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xd4] @ 0x225d468, (=0x2711)
	mov     r2, r6
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	mov     r3, #0xf
	bl      Function_200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xc0] @ 0x225d468, (=0x2711)
	mov     r2, r6
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	mov     r3, #0xe
	bl      Function_200ce54
	str     r6, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0xa8] @ 0x225d470, (=0x2712)
	mov     r1, #0x2
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0xc]
	ldr     r2, [r5, #0x1c]
	ldr     r3, [r5, #0x20]
	bl      Function_200cdc4
	ldr     r1, [r5, #0x0]
	ldrb    r1, [r1, #0x4]
	cmp     r1, #0x0
	bne     branch_225d3e2
	mov     r3, #0x0
	b       branch_225d3e4
@ 0x225d3e2

.thumb
branch_225d3e2: @ 225d3e2 :thumb
	ldr     r3, [pc, #0x90] @ 0x225d474, (=0x7fff)
.thumb
branch_225d3e4: @ 225d3e4 :thumb
	lsl     r1, r0, #4
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	add     r1, #0x10
	str     r0, [sp, #0x0]
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r1, #0x2
	ldr     r0, [r5, #0xc]
	mov     r2, r1
	bl      Function_20038b0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x70] @ 0x225d478, (=0x2718)
	mov     r2, r6
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	mov     r3, #0x2
	bl      Function_200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x60] @ 0x225d47c, (=0x2713)
	mov     r2, r6
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	mov     r3, #0x1
	bl      Function_200ce24
	mov     r3, #0x0
	ldr     r0, [pc, #0x4c] @ 0x225d47c, (=0x2713)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	mov     r2, r6
	bl      Function_200ce54
	mov     r0, #0xbb
	str     r0, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x2c] @ 0x225d47c, (=0x2713)
	mov     r1, #0x2
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0xc]
	ldr     r2, [r5, #0x1c]
	ldr     r3, [r5, #0x20]
	bl      Function_200cd7c
	ldr     r1, [pc, #0x20] @ 0x225d480, (=0x921)
	strb    r0, [r5, r1]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x225d466


.align 2


.word 0x2711 @ 0x225d468
.word 0x2717 @ 0x225d46c
.word 0x2712 @ 0x225d470
.word 0x7fff @ 0x225d474
.word 0x2718 @ 0x225d478
.word 0x2713 @ 0x225d47c
.word 0x921 @ 0x225d480
.thumb
Function_225d484: @ 225d484 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x4c
	ldr     r4, [pc, #0x128] @ 0x225d5b4, (=0x2260a04)
	mov     r7, r0
	add     r3, sp, #0x18
	mov     r2, #0x6
.thumb
branch_225d490: @ 225d490 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_225d490
	ldr     r0, [r4, #0x0]
	mov     r6, #0x0
	str     r0, [r3, #0x0]
	mov     r4, #0x10
	mov     r5, r7
.thumb
branch_225d4a2: @ 225d4a2 :thumb
	add     r0, sp, #0x18
	strh    r4, [r0, #0x0]
	mov     r1, #0xb0
	strh    r1, [r0, #0x2]
	ldr     r0, [r7, #0x1c]
	ldr     r1, [r7, #0x20]
	add     r2, sp, #0x18
	bl      Function_200ce6c
	ldr     r1, [pc, #0x100] @ 0x225d5b8, (=0x924)
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      Function_200d364
	ldr     r0, [pc, #0xf4] @ 0x225d5b8, (=0x924)
	ldr     r0, [r5, r0]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x20
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x6
	blt     branch_225d4a2
	ldr     r4, [pc, #0xe4] @ 0x225d5bc, (=0x2260a38)
	add     r3, sp, #0x18
	mov     r2, #0x6
.thumb
branch_225d4dc: @ 225d4dc :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_225d4dc
	ldr     r0, [r4, #0x0]
	mov     r6, #0x0
	str     r0, [r3, #0x0]
	mov     r4, #0x10
	mov     r5, r7
.thumb
branch_225d4ee: @ 225d4ee :thumb
	add     r0, sp, #0x18
	strh    r4, [r0, #0x0]
	mov     r1, #0xb0
	strh    r1, [r0, #0x2]
	ldr     r0, [r7, #0x1c]
	ldr     r1, [r7, #0x20]
	add     r2, sp, #0x18
	bl      Function_200ce6c
	ldr     r1, [pc, #0xbc] @ 0x225d5c0, (=0x93c)
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      Function_200d364
	ldr     r0, [pc, #0xb0] @ 0x225d5c0, (=0x93c)
	ldr     r0, [r5, r0]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x20
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x6
	blt     branch_225d4ee
	ldr     r4, [pc, #0xa0] @ 0x225d5c4, (=0x2260a6c)
	add     r3, sp, #0x18
	mov     r2, #0x6
.thumb
branch_225d528: @ 225d528 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_225d528
	ldr     r0, [r4, #0x0]
	mov     r5, #0x0
	str     r0, [r3, #0x0]
	mov     r6, #0x10
	mov     r4, r7
.thumb
branch_225d53a: @ 225d53a :thumb
	add     r0, sp, #0x18
	strh    r6, [r0, #0x0]
	mov     r1, #0xb0
	strh    r1, [r0, #0x2]
	ldr     r0, [pc, #0x84] @ 0x225d5c8, (=0x2711)
	add     r2, sp, #0x18
	add     r0, r5, r0
	str     r0, [sp, #0x2c]
	ldr     r0, [r7, #0x1c]
	ldr     r1, [r7, #0x20]
	bl      Function_200ce6c
	ldr     r1, [pc, #0x78] @ 0x225d5cc, (=0x954)
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r6, #0x20
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x6
	blt     branch_225d53a
	ldr     r0, [r7, #0x30]
	mov     r1, #0x1
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	ldr     r0, [pc, #0x58] @ 0x225d5d0, (=0x10203)
	mov     r1, #0x67
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x54] @ 0x225d5d4, (=0x2713)
	lsl     r1, r1, #6
	str     r0, [sp, #0x8]
	mov     r0, #0xe0
	str     r0, [sp, #0xc]
	mov     r0, #0xb0
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	mov     r0, r7
	add     r1, r7, r1
	mov     r2, r4
	mov     r3, #0x2
	bl      Function_225e15c
	mov     r0, #0x67
	lsl     r0, r0, #6
	ldr     r0, [r7, r0]
	mov     r1, #0x1
	bl      Function_20129d0
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x225d5b2


.align 2


.word 0x2260a04 @ 0x225d5b4
.word 0x924 @ 0x225d5b8
.word 0x2260a38 @ 0x225d5bc
.word 0x93c @ 0x225d5c0
.word 0x2260a6c @ 0x225d5c4
.word 0x2711 @ 0x225d5c8
.word 0x954 @ 0x225d5cc
.word 0x10203 @ 0x225d5d0
.word 0x2713 @ 0x225d5d4
.thumb
Function_225d5d8: @ 225d5d8 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r6, [pc, #0x44] @ 0x225d624, (=0x924)
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_225d5e2: @ 225d5e2 :thumb
	ldr     r0, [r5, r6]
	bl      Function_200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_225d5e2
	ldr     r6, [pc, #0x34] @ 0x225d628, (=0x93c)
	mov     r5, #0x0
	mov     r4, r7
.thumb
branch_225d5f6: @ 225d5f6 :thumb
	ldr     r0, [r4, r6]
	bl      Function_200d0f4
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x6
	blt     branch_225d5f6
	ldr     r6, [pc, #0x24] @ 0x225d62c, (=0x954)
	mov     r5, #0x0
	mov     r4, r7
.thumb
branch_225d60a: @ 225d60a :thumb
	ldr     r0, [r4, r6]
	bl      Function_200d0f4
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x6
	blt     branch_225d60a
	mov     r0, #0x67
	lsl     r0, r0, #6
	add     r0, r7, r0
	bl      Function_225e250
	pop     {r3-r7,pc}
@ 0x225d624

.word 0x924 @ 0x225d624
.word 0x93c @ 0x225d628
.word 0x954 @ 0x225d62c
.thumb
Function_225d630: @ 225d630 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r1
	mov     r5, r0
	str     r6, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x9c] @ 0x225d6e8, (=0x2714)
	mov     r1, #0x3
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0xc]
	ldr     r2, [r5, #0x1c]
	ldr     r3, [r5, #0x20]
	bl      Function_200cdc4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x88] @ 0x225d6ec, (=0x2719)
	mov     r2, r6
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	mov     r3, #0x9
	bl      Function_200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x70] @ 0x225d6e8, (=0x2714)
	mov     r2, r6
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	mov     r3, #0x8
	bl      Function_200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x5c] @ 0x225d6e8, (=0x2714)
	mov     r2, r6
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	mov     r3, #0x7
	bl      Function_200ce54
	mov     r4, #0x0
	mov     r7, r4
.thumb
branch_225d69e: @ 225d69e :thumb
	str     r7, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x48] @ 0x225d6f0, (=0x271a)
	mov     r2, r6
	add     r0, r4, r0
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	mov     r3, #0xd
	bl      Function_200cc3c
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x8
	blt     branch_225d69e
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x225d6f4, (=0x2715)
	mov     r2, r6
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	mov     r3, #0xc
	bl      Function_200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x225d6f4, (=0x2715)
	mov     r2, r6
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	mov     r3, #0xb
	bl      Function_200ce54
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x225d6e8

.word 0x2714 @ 0x225d6e8
.word 0x2719 @ 0x225d6ec
.word 0x271a @ 0x225d6f0
.word 0x2715 @ 0x225d6f4
.thumb
Function_225d6f8: @ 225d6f8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r5, r0
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	ldr     r2, [pc, #0x8c] @ 0x225d790, (=0x226099c)
	bl      Function_200ce6c
	ldr     r1, [pc, #0x88] @ 0x225d794, (=0x96c)
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	ldr     r0, [pc, #0x7c] @ 0x225d794, (=0x96c)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_200d3f4
	ldr     r4, [pc, #0x78] @ 0x225d798, (=0x22609d0)
	add     r3, sp, #0x0
	mov     r2, #0x6
.thumb
branch_225d724: @ 225d724 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_225d724
	ldr     r0, [r4, #0x0]
	mov     r7, #0x97
	str     r0, [r3, #0x0]
	mov     r4, #0x0
	ldr     r6, [pc, #0x64] @ 0x225d79c, (=0x2260934)
	lsl     r7, r7, #4
	b       branch_225d786
@ 0x225d73a

.thumb
branch_225d73a: @ 225d73a :thumb
	ldr     r0, [pc, #0x64] @ 0x225d7a0, (=0x271a)
	add     r2, sp, #0x0
	add     r0, r4, r0
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	bl      Function_200ce6c
	mov     r3, r0
	lsl     r2, r4, #2
	mov     r0, #0x97
	add     r1, r5, r2
	lsl     r0, r0, #4
	str     r3, [r1, r0]
	ldr     r0, [r1, r0]
	ldsh    r1, [r6, r2]
	add     r3, r6, r2
	mov     r2, #0x2
	ldsh    r2, [r3, r2]
	mov     r3, #0x11
	lsl     r3, r3, #16
	bl      Function_200d500
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0x97
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, r7]
	mov     r1, #0x0
	bl      Function_200d3f4
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_225d786: @ 225d786 :thumb
	cmp     r4, #0x8
	blt     branch_225d73a
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x225d78e


.align 2


.word 0x226099c @ 0x225d790
.word 0x96c @ 0x225d794
.word 0x22609d0 @ 0x225d798
.word 0x2260934 @ 0x225d79c
.word 0x271a @ 0x225d7a0
.thumb
Function_225d7a4: @ 225d7a4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x1c] @ 0x225d7c8, (=0x96c)
	ldr     r0, [r5, r0]
	bl      Function_200d0f4
	mov     r6, #0x97
	mov     r4, #0x0
	lsl     r6, r6, #4
.thumb
branch_225d7b6: @ 225d7b6 :thumb
	ldr     r0, [r5, r6]
	bl      Function_200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_225d7b6
	pop     {r4-r6,pc}
@ 0x225d7c6


.align 2


.word 0x96c @ 0x225d7c8
.thumb
Function_225d7cc: @ 225d7cc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	ldr     r0, [r6, #0xc]
	mov     r1, #0x2
	bl      Function_2003164
	str     r0, [sp, #0x28]
	ldr     r0, [r6, #0xc]
	mov     r1, #0x2
	bl      Function_200316c
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x2c]
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x28]
	str     r6, [sp, #0x20]
	str     r6, [sp, #0x1c]
	str     r0, [sp, #0x14]
.thumb
branch_225d7f8: @ 225d7f8 :thumb
	ldr     r2, [pc, #0x11c] @ 0x225d918, (=0x8da)
	ldr     r0, [sp, #0x20]
	ldrh    r0, [r0, r2]
	cmp     r0, #0x0
	beq     branch_225d808
	ldr     r3, [pc, #0x118] @ 0x225d91c, (=0x1ed)
	cmp     r0, r3
	bls     branch_225d862
.thumb
branch_225d808: @ 225d808 :thumb
	ldr     r1, [pc, #0x114] @ 0x225d920, (=0x924)
	ldr     r0, [sp, #0x1c]
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r1, [pc, #0x10c] @ 0x225d924, (=0x93c)
	ldr     r0, [sp, #0x1c]
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r1, [pc, #0x104] @ 0x225d928, (=0x954)
	ldr     r0, [sp, #0x1c]
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [sp, #0x18]
	ldr     r5, [pc, #0xfc] @ 0x225d92c, (=Unknown_22608ac)
	lsl     r0, r0, #24
	mov     r4, #0x0
	lsr     r7, r0, #24
branch_225d836: @ 225d836 :thumb
	mov     r0, r4
	add     r0, #0x14
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldrh    r2, [r5, #0x0]
	ldr     r0, [r6, #0x8]
	mov     r1, #0x2
	mov     r3, r7
	bl      Function_2019cb8
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x4
	blt     branch_225d836
	b       branch_225d8d8
@ 0x225d862

.thumb
branch_225d862: @ 225d862 :thumb
	mov     r1, r3
	sub     r1, #0x89
	ldr     r1, [r6, r1]
	add     r4, r2, #0x6
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0xbc] @ 0x225d930, (=0x19e0)
	add     r2, #0x7a
	ldr     r1, [r6, r1]
	sub     r3, #0x8d
	str     r1, [sp, #0x8]
	ldr     r1, [sp, #0x20]
	ldr     r3, [r6, r3]
	ldrb    r1, [r1, r4]
	ldr     r4, [sp, #0x1c]
	ldr     r2, [r4, r2]
	bl      Function_225d938
	ldr     r1, [pc, #0xa8] @ 0x225d934, (=0x8d8)
	ldr     r0, [sp, #0x20]
	mov     r3, #0xc
	ldrh    r2, [r0, r1]
	ldr     r0, [sp, #0x14]
	strh    r2, [r0, #0x22]
	ldr     r0, [sp, #0x20]
	ldrh    r1, [r0, r1]
	ldr     r0, [sp, #0x10]
	strh    r1, [r0, #0x22]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	add     r0, #0x11
	lsl     r1, r0, #1
	ldr     r0, [sp, #0x28]
	add     r0, r0, r1
	ldr     r1, [sp, #0x2c]
	add     r1, #0x21
	lsl     r2, r1, #1
	ldr     r1, [sp, #0x28]
	add     r1, r1, r2
	mov     r2, #0x1
	bl      Function_200393c
	ldr     r0, [sp, #0x14]
	add     r0, #0x42
	ldrh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x10]
	add     r0, #0x42
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x0
	bne     branch_225d8d8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	mov     r1, #0x92
	ldr     r0, [sp, #0x2c]
	lsl     r1, r1, #4
	strb    r0, [r6, r1]
.thumb
branch_225d8d8: @ 225d8d8 :thumb
	ldr     r0, [sp, #0x20]
	add     r0, #0xc
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x2c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x2c]
	cmp     r0, #0x6
	bge     branch_225d902
	b       branch_225d7f8
@ 0x225d902

.thumb
branch_225d902: @ 225d902 :thumb
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_225e0d4
	ldr     r0, [r6, #0x8]
	mov     r1, #0x2
	bl      Function_201c3c0
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x225d916

.align 2
.word 0x8da @ 0x225d918
.word 0x1ed @ 0x225d91c
.word 0x924 @ 0x225d920
.word 0x93c @ 0x225d924
.word 0x954 @ 0x225d928
.word Unknown_22608ac @ 0x225d92c
.word 0x19e0 @ 0x225d930
.word 0x8d8 @ 0x225d934



.thumb
Function_225d938: @ 225d938 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r6, r2
	mov     r5, r3
	cmp     r4, #0x0
	beq     branch_225d94c
	ldr     r2, [pc, #0xb0] @ 0x225d9f8, (=0x1ed)
	cmp     r4, r2
	ble     branch_225d952
.thumb
branch_225d94c: @ 225d94c :thumb
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x225d952

.thumb
branch_225d952: @ 225d952 :thumb
	ldr     r2, [sp, #0x30]
	bl      Function_2260788
	cmp     r0, #0x1
	bne     branch_225d98c
	ldr     r0, [sp, #0x28]
	mov     r2, #0x1
	add     r1, r4, #0x3
	mov     r3, #0x76
	str     r2, [sp, #0x0]
	bl      Function_200723c
	add     r1, sp, #0xc
	str     r0, [sp, #0x8]
	blx     Function_20a7118
	ldr     r0, [sp, #0xc]
	mov     r1, #0x1
	ldr     r0, [r0, #0x14]
	lsl     r1, r1, #8
	blx     DC_FlushRange
	ldr     r0, [sp, #0xc]
	ldr     r4, [r0, #0x14]
	mov     r0, r4
	str     r0, [sp, #0x4]
	add     r0, #0x80
	str     r0, [sp, #0x4]
	b       branch_225d9b6
@ 0x225d98c

.thumb
branch_225d98c: @ 225d98c :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	mov     r3, #0x76
	bl      Function_200723c
	add     r1, sp, #0xc
	str     r0, [sp, #0x8]
	blx     Function_20a7118
	ldr     r0, [sp, #0xc]
	mov     r1, #0x80
	ldr     r0, [r0, #0x14]
	blx     DC_FlushRange
	ldr     r0, [sp, #0xc]
	ldr     r4, [r0, #0x14]
	str     r4, [sp, #0x4]
	add     r4, #0x40
.thumb
branch_225d9b6: @ 225d9b6 :thumb
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x1
	bne     branch_225d9c2
	mov     r5, #0x19
	lsl     r5, r5, #22
	b       branch_225d9c6
@ 0x225d9c2

.thumb
branch_225d9c2: @ 225d9c2 :thumb
	mov     r5, #0x66
	lsl     r5, r5, #20
.thumb
branch_225d9c6: @ 225d9c6 :thumb
	ldr     r0, [r6, #0x0]
	bl      Function_2021f98
	mov     r6, r0
	ldr     r0, [sp, #0x2c]
	mov     r2, #0x40
	lsl     r7, r0, #2
	ldr     r1, [r6, r7]
	ldr     r0, [sp, #0x4]
	add     r1, r5, r1
	blx     MIi_CpuCopy16
	ldr     r1, [r6, r7]
	add     r5, #0x40
	mov     r0, r4
	add     r1, r5, r1
	mov     r2, #0x40
	blx     MIi_CpuCopy16
	ldr     r0, [sp, #0x8]
	bl      free
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225d9f8

.word 0x1ed @ 0x225d9f8
.thumb
Function_225d9fc: @ 225d9fc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	ldr     r3, [pc, #0x88] @ 0x225da8c, (=0x22608bc)
	mov     r5, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x14
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x76
	bl      Function_20203ac
	mov     r1, r5
	add     r1, #0xcc
	str     r0, [r1, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1f
	str     r0, [sp, #0x8]
	ldr     r2, [pc, #0x64] @ 0x225da90, (=0x22608b4)
	ldr     r3, [pc, #0x64] @ 0x225da94, (=0xfa4)
	add     r0, sp, #0x14
	lsl     r1, r1, #14
	bl      Function_20206d0
	mov     r2, r5
	add     r2, #0xcc
	mov     r0, #0x1
	mov     r1, #0xe1
	ldr     r2, [r2, #0x0]
	lsl     r0, r0, #12
	lsl     r1, r1, #14
	bl      Function_20206bc
	mov     r0, r5
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	bl      Function_20203d4
	mov     r0, r5
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	bl      Function_2020a88
	mov     r4, r0
	mov     r0, r5
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	bl      Function_2020a90
	mov     r1, r0
	add     r0, sp, #0xc
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0x28] @ 0x225da98, (=0x1555)
	mov     r0, r4
	add     r3, sp, #0x10
	bl      Function_201e34c
	mov     r0, r5
	ldr     r1, [sp, #0x10]
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0xc]
	add     r5, #0xd4
	str     r0, [r5, #0x0]
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x225da8a


.align 2


.word 0x22608bc @ 0x225da8c
.word 0x22608b4 @ 0x225da90
.word 0xfa4 @ 0x225da94
.word 0x1555 @ 0x225da98
.thumb
Function_225da9c: @ 225da9c :thumb
	ldr     r3, [pc, #0x4] @ 0x225daa4, (=Call_free5+1)
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x225daa4

.word Call_free5+1 @ 0x225daa4
.thumb
Function_225daa8: @ 225daa8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldrb    r0, [r0, #0x4]
	cmp     r0, #0x0
	bne     branch_225dab8
	mov     r2, #0x1c
	b       branch_225daba
@ 0x225dab8

.thumb
branch_225dab8: @ 225dab8 :thumb
	mov     r2, #0x1b
.thumb
branch_225daba: @ 225daba :thumb
	mov     r0, r4
	add     r0, #0xd8
	mov     r3, #0x76
	bl      Function_20170d8
	mov     r0, r4
	mov     r1, r4
	add     r0, #0xe8
	add     r1, #0xd8
	bl      Function_2017258
	mov     r1, #0x0
	mov     r0, r4
	add     r0, #0xe8
	mov     r2, r1
	mov     r3, r1
	bl      Function_2017350
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r4
	add     r0, #0xe8
	mov     r2, r1
	mov     r3, r1
	bl      Function_201736c
	add     r4, #0xe8
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2017348
	pop     {r4,pc}
@ 0x225dafa


.align 2, 0


.thumb
Function_225dafc: @ 225dafc :thumb
	ldr     r3, [pc, #0x4] @ 0x225db04, (=Function_2017110+1)
	add     r0, #0xd8
	bx      r3
@ 0x225db02


.align 2


.word Function_2017110+1 @ 0x225db04
.thumb
Function_225db08: @ 225db08 :thumb
	push    {r4,lr}
	add     sp, #-0x40
	mov     r4, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x34]
	str     r0, [sp, #0x38]
	str     r0, [sp, #0x3c]
	mov     r0, #0x0
	str     r0, [sp, #0x28]
	str     r0, [sp, #0x2c]
	str     r0, [sp, #0x30]
	add     r0, sp, #0x4
	blx     MTX_Identity33_
	bl      Call_G3X_Reset
	mov     r0, r4
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	bl      Function_20203d4
	mov     r1, r4
	add     r1, #0xcc
	ldr     r1, [r1, #0x0]
	mov     r0, #0x0
	bl      Function_2020854
	bl      Function_20203ec
	mov     r0, #0x0
	ldr     r2, [pc, #0x70] @ 0x225dbb8, (=0xfffff000)
	mov     r1, r0
	mov     r3, r0
	blx     Function_20af51c
	ldr     r1, [pc, #0x68] @ 0x225dbbc, (=0x739c)
	mov     r0, #0x0
	blx     Function_20af558
	ldr     r0, [pc, #0x64] @ 0x225dbc0, (=0x7fff)
	mov     r2, #0x0
	mov     r1, r0
	blx     Function_20af56c
	ldr     r0, [pc, #0x5c] @ 0x225dbc0, (=0x7fff)
	mov     r2, #0x0
	mov     r1, r0
	blx     Function_20af590
	add     r0, sp, #0x28
	blx     Function_20af4bc
	ldr     r1, [pc, #0x50] @ 0x225dbc4, (=0x21c5b48)
	add     r0, sp, #0x4
	blx     MI_Copy36B
	ldr     r1, [pc, #0x4c] @ 0x225dbc8, (=0x21c5b0c)
	mov     r0, #0xa4
	ldr     r2, [r1, #0x7c]
	bic     r2, r0
	add     r0, sp, #0x34
	str     r2, [r1, #0x7c]
	blx     Function_20af4ec
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     Function_20b275c
	mov     r0, r4
	add     r0, #0xe8
	bl      Function_2017294
	mov     r0, #0x65
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_225e4a0
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x0
	str     r2, [sp, #0x0]
	blx     Function_20b275c
	add     sp, #0x40
	pop     {r4,pc}
@ 0x225dbb6


.align 2


.word 0xfffff000 @ 0x225dbb8
.word 0x739c @ 0x225dbbc
.word 0x7fff @ 0x225dbc0
.word 0x21c5b48 @ 0x225dbc4
.word 0x21c5b0c @ 0x225dbc8
.thumb
Function_225dbcc: @ 225dbcc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r2, #0x1
	mov     r6, r0
	str     r2, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x93
	str     r0, [sp, #0x10]
	mov     r1, r6
	ldr     r0, [r6, #0x8]
	add     r1, #0xb4
	mov     r3, #0x2
	bl      Function_201a7e8
	mov     r0, r6
	add     r0, #0xb4
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r4, r6
	mov     r5, #0x0
	ldr     r7, [pc, #0x44] @ 0x225dc48, (=0x22608c8)
	add     r4, #0x34
	b       branch_225dc40
@ 0x225dc06

.thumb
branch_225dc06: @ 225dc06 :thumb
	lsl     r3, r5, #1
	add     r0, r7, r3
	ldrb    r0, [r0, #0x1]
	lsl     r1, r5, #4
	mov     r2, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	lsl     r0, r0, #8
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldrb    r3, [r7, r3]
	ldr     r0, [r6, #0x8]
	add     r1, r4, r1
	bl      Function_201a7e8
	lsl     r0, r5, #4
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_225dc40: @ 225dc40 :thumb
	cmp     r5, #0x8
	blt     branch_225dc06
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225dc48

.word 0x22608c8 @ 0x225dc48
.thumb
Function_225dc4c: @ 225dc4c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0xb4
	bl      Function_201a8fc
	mov     r4, #0x0
	add     r5, #0x34
.thumb
branch_225dc5a: @ 225dc5a :thumb
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x8
	blt     branch_225dc5a
	pop     {r3-r5,pc}
@ 0x225dc6a


.align 2, 0


.thumb
Function_225dc6c: @ 225dc6c :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, #0x2
	ldr     r1, [pc, #0x10] @ 0x225dc84, (=0x225dc89)
	str     r2, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	mov     r3, r1
	bl      Function_2024220
	add     sp, #0x8
	pop     {r3,pc}
@ 0x225dc84

.word 0x225dc89 @ 0x225dc84
.thumb
Function_225dc88: @ 225dc88 :thumb
	push    {r3,lr}
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r0, [pc, #0x60] @ 0x225dcf4, (=0x4000008)
	mov     r1, #0x3
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strh    r1, [r0, #0x0]
	add     r0, #0x58
	ldrh    r2, [r0, #0x0]
	ldr     r1, [pc, #0x50] @ 0x225dcf8, (=0xffffcffd)
	and     r2, r1
	strh    r2, [r0, #0x0]
	add     r2, r1, #0x2
	ldrh    r3, [r0, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	and     r3, r2
	mov     r2, #0x10
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r2, [pc, #0x40] @ 0x225dcfc, (=0xcffb)
	and     r3, r2
	strh    r3, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	sub     r2, #0x1c
	and     r3, r1
	mov     r1, #0x8
	orr     r1, r3
	strh    r1, [r0, #0x0]
	ldrh    r1, [r0, #0x0]
	and     r1, r2
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	blx     G3X_SetFog
	mov     r0, #0x0
	ldr     r2, [pc, #0x1c] @ 0x225dd00, (=0x7fff)
	mov     r1, r0
	mov     r3, #0x3f
	str     r0, [sp, #0x0]
	blx     G3X_SetClearColor
	ldr     r1, [pc, #0x14] @ 0x225dd04, (=0xbfff0000)
	ldr     r0, [pc, #0x18] @ 0x225dd08, (=0x4000580)
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x225dcf4

.word 0x4000008 @ 0x225dcf4
.word 0xffffcffd @ 0x225dcf8
.word 0xcffb @ 0x225dcfc
.word 0x7fff @ 0x225dd00
.word 0xbfff0000 @ 0x225dd04
.word 0x4000580 @ 0x225dd08
.thumb
Function_225dd0c: @ 225dd0c :thumb
	ldr     r3, [pc, #0x0] @ 0x225dd10, (=Function_20242c4+1)
	bx      r3
@ 0x225dd10

.word Function_20242c4+1 @ 0x225dd10
.thumb
Function_225dd14: @ 225dd14 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x22328f0
	mov     r1, #0x5b
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x225dd24

.thumb
Function_225dd24: @ 225dd24 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0xc
	blx     MI_CpuFill8
	mov     r0, #0x96
	strh    r0, [r4, #0x2]
	mov     r0, #0x1f
	strh    r0, [r4, #0x0]
	add     r0, #0xe2
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	strb    r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x225dd44

.thumb
Function_225dd44: @ 225dd44 :thumb
	mov     r1, #0x5a
	lsl     r1, r1, #2
	add     r0, r0, r1
	bx      lr
@ 0x225dd4c

.thumb
Function_225dd4c: @ 225dd4c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r2
	str     r0, [sp, #0x0]
	mov     r4, r1
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x48
	blx     MI_CpuFill8
	mov     r0, r4
	bl      LoadPokePartyAdress
	str     r0, [sp, #0x4]
	bl      GetNrOfPkmnInParty
	mov     r7, r0
	mov     r6, #0x0
	cmp     r7, #0x0
	ble     branch_225ddbc
.thumb
branch_225dd74: @ 225dd74 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xae
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	mov     r1, #0x0
	strh    r0, [r5, #0x2]
	mov     r0, r4
	mov     r2, r1
	bl      GetPkmnData
	str     r0, [r5, #0x4]
	mov     r0, r4
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData
	strb    r0, [r5, #0x8]
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	bl      Function_226072c
	strh    r0, [r5, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0xc
	cmp     r6, r7
	blt     branch_225dd74
.thumb
branch_225ddbc: @ 225ddbc :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225ddc0

.thumb
Function_225ddc0: @ 225ddc0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r3, #0x59
	mov     r4, r0
	lsl     r3, r3, #2
	mov     r5, r1
	ldr     r1, [r4, r3]
	mov     r6, r2
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0xb4] @ 0x225de88, (=0x19e0)
	mov     r2, r5
	ldr     r1, [r4, r1]
	str     r1, [sp, #0x4]
	mov     r1, r3
	.hword  0x1f1b @ sub r3, r3, #0x4
	add     r1, #0x30
	ldr     r3, [r4, r3]
	add     r1, r4, r1
	bl      Function_225e398
	str     r0, [sp, #0xc]
	cmp     r0, #0x1
	bne     branch_225de80
	mov     r0, r6
	bl      0x2232b8c
	mov     r6, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_225de7a
	ldr     r3, [pc, #0x8c] @ 0x225de8c, (=0x99c)
	lsl     r1, r6, #1
	add     r0, r4, r3
	mov     r12, r0
	mov     r2, r12
	ldrh    r0, [r5, #0x2]
	ldrh    r2, [r2, r1]
	cmp     r0, r2
	bne     branch_225de1c
	add     r2, r4, r1
	add     r3, #0x10
	ldrh    r7, [r5, #0x0]
	ldrh    r2, [r2, r3]
	cmp     r7, r2
	beq     branch_225de7a
.thumb
branch_225de1c: @ 225de1c :thumb
	mov     r2, r12
	strh    r0, [r2, r1]
	ldrh    r2, [r5, #0x0]
	ldr     r0, [pc, #0x6c] @ 0x225de90, (=0x9ac)
	add     r1, r4, r1
	strh    r2, [r1, r0]
	sub     r0, #0x3c
	mov     r3, #0x59
	add     r7, r4, r0
	lsl     r0, r6, #2
	str     r0, [sp, #0x10]
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	ldr     r2, [sp, #0x10]
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x48] @ 0x225de88, (=0x19e0)
	.hword  0x1f1b @ sub r3, r3, #0x4
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x8]
	ldrh    r0, [r5, #0x2]
	ldrb    r1, [r5, #0x8]
	ldr     r2, [r7, r2]
	ldr     r3, [r4, r3]
	bl      Function_225d938
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1
	ldr     r0, [r7, r0]
	bl      Function_200d3f4
	mov     r0, r6
	add     r0, #0x21
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	add     r6, #0x22
	str     r0, [sp, #0x0]
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	ldrh    r3, [r5, #0x0]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	mov     r2, #0x2
	bl      Function_20038b0
.thumb
branch_225de7a: @ 225de7a :thumb
	ldr     r0, [pc, #0x18] @ 0x225de94, (=0x5eb)
	bl      Function_2005748
.thumb
branch_225de80: @ 225de80 :thumb
	ldr     r0, [sp, #0xc]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225de86


.align 2


.word 0x19e0 @ 0x225de88
.word 0x99c @ 0x225de8c
.word 0x9ac @ 0x225de90
.word 0x5eb @ 0x225de94
.thumb
Function_225de98: @ 225de98 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	str     r0, [sp, #0x14]
	add     r0, sp, #0x24
	bl      0x2232b4c
	mov     r7, #0x0
	b       branch_225dfd8
@ 0x225deae

.thumb
branch_225deae: @ 225deae :thumb
	lsl     r3, r7, #2
	mov     r0, #0x17
	add     r1, r6, r3
	lsl     r0, r0, #4
	ldr     r2, [r1, r0]
	ldr     r0, [sp, #0x28]
	ldr     r1, [r0, r3]
	cmp     r2, r1
	bne     branch_225dec2
	b       branch_225dfc8
@ 0x225dec2

.thumb
branch_225dec2: @ 225dec2 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_225df32
	str     r1, [sp, #0x0]
	ldr     r3, [r6, #0x0]
	mov     r2, r6
	ldr     r0, [r6, #0x30]
	ldr     r1, [r6, #0x2c]
	ldr     r3, [r3, #0x0]
	add     r2, #0x34
	bl      Function_2260620
	ldr     r0, [r6, #0x8]
	mov     r1, #0x6
	bl      Function_2019fe4
	str     r0, [sp, #0x10]
	lsl     r0, r7, #3
	ldr     r1, [pc, #0x140] @ 0x225e02c, (=0x2260ad4)
	str     r0, [sp, #0x1c]
	add     r4, r1, r0
	mov     r0, #0x27
	lsl     r0, r0, #6
	add     r0, r6, r0
	ldrh    r5, [r4, #0x2]
	str     r0, [sp, #0x20]
	b       branch_225df18
@ 0x225defa

.thumb
branch_225defa: @ 225defa :thumb
	ldrh    r0, [r4, #0x4]
	ldr     r1, [pc, #0x12c] @ 0x225e02c, (=0x2260ad4)
	lsl     r3, r5, #5
	lsl     r2, r0, #1
	ldr     r0, [sp, #0x1c]
	ldrh    r0, [r1, r0]
	ldr     r1, [sp, #0x10]
	add     r0, r3, r0
	lsl     r3, r0, #1
	ldr     r0, [sp, #0x20]
	add     r1, r1, r3
	add     r0, r0, r3
	blx     MIi_CpuCopy16
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_225df18: @ 225df18 :thumb
	ldrh    r1, [r4, #0x2]
	ldrh    r0, [r4, #0x6]
	add     r0, r1, r0
	cmp     r5, r0
	blt     branch_225defa
	ldr     r0, [r6, #0x8]
	mov     r1, #0x6
	bl      Function_201c3c0
	ldr     r0, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	b       branch_225df98
@ 0x225df32

.thumb
branch_225df32: @ 225df32 :thumb
	mov     r0, r6
	add     r0, #0x34
	mov     r1, r7
	bl      Function_2260714
	lsl     r0, r7, #1
	ldr     r2, [pc, #0xf0] @ 0x225e030, (=0x99c)
	add     r3, r6, r0
	mov     r1, #0x0
	mov     r0, r2
	strh    r1, [r3, r2]
	add     r0, #0x10
	strh    r1, [r3, r0]
	lsl     r0, r7, #2
	add     r0, r6, r0
	sub     r2, #0x2c
	ldr     r0, [r0, r2]
	bl      Function_200d3f4
	ldr     r3, [pc, #0xd0] @ 0x225e02c, (=0x2260ad4)
	lsl     r4, r7, #3
	add     r0, r3, r4
	ldrh    r1, [r0, #0x2]
	mov     r2, #0x0
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x0]
	ldrh    r1, [r0, #0x4]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x4]
	ldrh    r0, [r0, #0x6]
	mov     r1, #0x6
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldrh    r3, [r3, r4]
	ldr     r0, [r6, #0x8]
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [r6, #0x8]
	mov     r1, #0x6
	bl      Function_201c3c0
	ldr     r0, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_225df98: @ 225df98 :thumb
	mov     r0, #0x5b
	lsl     r0, r0, #2
	ldr     r1, [r6, r0]
	ldr     r0, [sp, #0x28]
	lsl     r2, r7, #2
	ldr     r0, [r0, r2]
	cmp     r1, r0
	bne     branch_225dfc8
	ldr     r3, [pc, #0x88] @ 0x225e034, (=0x2260914)
	ldr     r0, [pc, #0x8c] @ 0x225e038, (=0x96c)
	ldsh    r1, [r3, r2]
	add     r3, r3, r2
	mov     r2, #0x2
	ldsh    r2, [r3, r2]
	mov     r3, #0x11
	ldr     r0, [r6, r0]
	lsl     r3, r3, #16
	bl      Function_200d500
	ldr     r0, [pc, #0x78] @ 0x225e038, (=0x96c)
	mov     r1, #0x1
	ldr     r0, [r6, r0]
	bl      Function_200d3f4
.thumb
branch_225dfc8: @ 225dfc8 :thumb
	ldr     r1, [sp, #0x28]
	lsl     r0, r7, #2
	ldr     r2, [r1, r0]
	add     r1, r6, r0
	mov     r0, #0x17
	lsl     r0, r0, #4
	str     r2, [r1, r0]
	.hword  0x1c7f @ add r7, r7, #0x1
.thumb
branch_225dfd8: @ 225dfd8 :thumb
	cmp     r7, #0x8
	bge     branch_225dfde
	b       branch_225deae
@ 0x225dfde

.thumb
branch_225dfde: @ 225dfde :thumb
	mov     r0, #0x0
	mov     r1, #0x17
	mov     r7, r0
	lsl     r1, r1, #4
	.hword  0x1e42 @ sub r2, r0, #0x1
	b       branch_225dff8
@ 0x225dfea

.thumb
branch_225dfea: @ 225dfea :thumb
	lsl     r3, r7, #2
	add     r3, r6, r3
	ldr     r3, [r3, r1]
	cmp     r3, r2
	beq     branch_225dff6
	.hword  0x1c40 @ add r0, r0, #0x1
.thumb
branch_225dff6: @ 225dff6 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
.thumb
branch_225dff8: @ 225dff8 :thumb
	cmp     r7, #0x8
	blt     branch_225dfea
	ldr     r1, [pc, #0x3c] @ 0x225e03c, (=0x8d3)
	strb    r0, [r6, r1]
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	ble     branch_225e012
	ldr     r0, [pc, #0x38] @ 0x225e040, (=0x5e4)
	bl      Function_2005748
	add     sp, #0x2c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x225e012

.thumb
branch_225e012: @ 225e012 :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	ble     branch_225e024
	ldr     r0, [pc, #0x24] @ 0x225e040, (=0x5e4)
	bl      Function_2005748
	add     sp, #0x2c
	mov     r0, #0x2
	pop     {r4-r7,pc}
@ 0x225e024

.thumb
branch_225e024: @ 225e024 :thumb
	mov     r0, #0x0
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x225e02a


.align 2


.word 0x2260ad4 @ 0x225e02c
.word 0x99c @ 0x225e030
.word 0x2260914 @ 0x225e034
.word 0x96c @ 0x225e038
.word 0x8d3 @ 0x225e03c
.word 0x5e4 @ 0x225e040
.thumb
Function_225e044: @ 225e044 :thumb
	push    {r3,lr}
	mov     r3, r0
	str     r1, [sp, #0x0]
	mov     r2, r3
	ldr     r0, [r3, #0x30]
	ldr     r1, [r3, #0x2c]
	ldr     r3, [r3, #0x0]
	add     r2, #0x34
	ldr     r3, [r3, #0x0]
	bl      Function_2260620
	pop     {r3,pc}
@ 0x225e05c

.thumb
Function_225e05c: @ 225e05c :thumb
	ldr     r3, [pc, #0x4] @ 0x225e064, (=0x2260715)
	add     r0, #0x34
	bx      r3
@ 0x225e062


.align 2


.word Function_2260714+1 @ =0x2260715, 0x225e064
.thumb
Function_225e068: @ 225e068 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x34
	ldr     r4, [pc, #0x5c] @ 0x225e0cc, (=0x2260aa0)
	mov     r5, r0
	mov     r6, r1
	add     r3, sp, #0x0
	mov     r2, #0x6
.thumb
branch_225e076: @ 225e076 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_225e076
	ldr     r0, [r4, #0x0]
	mov     r4, #0x0
	str     r0, [r3, #0x0]
	mov     r0, #0x99
	mov     r2, r5
	lsl     r0, r0, #4
.thumb
branch_225e08a: @ 225e08a :thumb
	ldr     r1, [r2, r0]
	cmp     r1, #0x0
	bne     branch_225e0b2
	lsl     r1, r6, #5
	add     r1, #0x10
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	mov     r1, #0xb0
	strh    r1, [r0, #0x2]
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x20]
	add     r2, sp, #0x0
	bl      Function_200ce6c
	lsl     r1, r4, #2
	add     r2, r5, r1
	mov     r1, #0x99
	lsl     r1, r1, #4
	str     r0, [r2, r1]
	b       branch_225e0ba
@ 0x225e0b2

.thumb
branch_225e0b2: @ 225e0b2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r4, #0x3
	blt     branch_225e08a
.thumb
branch_225e0ba: @ 225e0ba :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_225e0d4
	ldr     r0, [pc, #0xc] @ 0x225e0d0, (=0x5e5)
	bl      Function_2005748
	add     sp, #0x34
	pop     {r3-r6,pc}
@ 0x225e0cc

.word 0x2260aa0 @ 0x225e0cc
.word 0x5e5 @ 0x225e0d0
.thumb
Function_225e0d4: @ 225e0d4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r4, r1
	mov     r1, #0x2
	bl      Function_2003164
	mov     r6, r0
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	bl      Function_200316c
	mov     r5, r0
	mov     r0, r6
	mov     r1, r5
	add     r0, #0x22
	add     r1, #0x22
	mov     r2, #0xc
	blx     MIi_CpuCopy16
	add     r4, #0x11
	mov     r0, #0x0
	lsl     r1, r4, #1
	str     r0, [sp, #0x0]
	add     r0, r6, r1
	add     r1, r5, r1
	mov     r2, #0x1
	mov     r3, #0x6
	bl      Function_200393c
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x225e116


.align 2, 0


.thumb
Function_225e118: @ 225e118 :thumb
	push    {r3-r7,lr}
	mov     r4, #0x0
	mov     r7, #0x99
	mov     r5, r0
	mov     r6, r4
	lsl     r7, r7, #4
.thumb
branch_225e124: @ 225e124 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_225e150
	bl      Function_200d3b8
	cmp     r0, #0x0
	bne     branch_225e144
	mov     r0, #0x99
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_200d0f4
	mov     r0, #0x99
	lsl     r0, r0, #4
	str     r6, [r5, r0]
	b       branch_225e150
@ 0x225e144

.thumb
branch_225e144: @ 225e144 :thumb
	mov     r0, #0x99
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
.thumb
branch_225e150: @ 225e150 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_225e124
	pop     {r3-r7,pc}
@ 0x225e15a


.align 2, 0


.thumb
Function_225e15c: @ 225e15c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x78
	mov     r5, r1
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	str     r2, [sp, #0x18]
	str     r3, [sp, #0x1c]
	ldr     r4, [sp, #0x9c]
	cmp     r0, #0x0
	beq     branch_225e174
	bl      ErrorHandling
.thumb
branch_225e174: @ 225e174 :thumb
	ldr     r0, [r6, #0x8]
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x18]
	add     r2, sp, #0x28
	add     r3, sp, #0x24
	ldr     r7, [r6, #0x20]
	bl      Function_225e264
	add     r0, sp, #0x38
	bl      Function_201a7a0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x24]
	ldr     r0, [sp, #0x20]
	lsl     r2, r2, #24
	add     r1, sp, #0x38
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
	add     r0, sp, #0x38
	str     r3, [sp, #0x14]
	bl      Function_201d7e0
	add     r0, sp, #0x38
	mov     r1, #0x1
	mov     r2, #0x76
	bl      Function_2012898
	mov     r1, #0x1
	mov     r2, r1
	add     r3, sp, #0x2c
	bl      Function_201ed94
	ldr     r0, [sp, #0xa4]
	cmp     r0, #0x1
	bne     branch_225e1e2
	ldr     r1, [sp, #0x28]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	sub     r4, r4, r0
.thumb
branch_225e1e2: @ 225e1e2 :thumb
	ldr     r0, [r6, #0x10]
	str     r0, [sp, #0x48]
	add     r0, sp, #0x38
	str     r0, [sp, #0x4c]
	mov     r0, r7
	bl      Function_200d9b0
	str     r0, [sp, #0x50]
	ldr     r1, [sp, #0x98]
	mov     r0, r7
	bl      Function_200d04c
	mov     r1, #0x0
	str     r0, [sp, #0x54]
	ldr     r0, [sp, #0x30]
	str     r1, [sp, #0x58]
	str     r0, [sp, #0x5c]
	ldr     r0, [sp, #0xa0]
	str     r4, [sp, #0x60]
	sub     r0, #0x8
	str     r0, [sp, #0x64]
	mov     r0, #0x33
	str     r0, [sp, #0x6c]
	mov     r0, #0x1
	str     r0, [sp, #0x70]
	mov     r0, #0x76
	str     r0, [sp, #0x74]
	add     r0, sp, #0x48
	str     r1, [sp, #0x68]
	bl      Function_20127e8
	ldr     r1, [sp, #0x94]
	mov     r6, r0
	bl      Function_2012ac0
	ldr     r2, [sp, #0xa0]
	mov     r0, r6
	mov     r1, r4
	sub     r2, #0x8
	bl      Function_20128c4
	add     r0, sp, #0x38
	bl      Function_201a8fc
	str     r6, [r5, #0x0]
	add     r3, sp, #0x2c
	ldmia   r3!, {r0,r1}
	add     r2, r5, #0x4
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x28]
	strh    r0, [r5, #0x10]
	add     sp, #0x78
	pop     {r3-r7,pc}
@ 0x225e250

.thumb
Function_225e250: @ 225e250 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2012870
	add     r0, r4, #0x4
	bl      Function_201ee28
	pop     {r4,pc}
@ 0x225e262


.align 2, 0


.thumb
Function_225e264: @ 225e264 :thumb
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
	beq     branch_225e28c
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_225e28c: @ 225e28c :thumb
	str     r4, [r6, #0x0]
	str     r5, [r7, #0x0]
	pop     {r3-r7,pc}
@ 0x225e292


.align 2, 0


.thumb
Function_225e294: @ 225e294 :thumb
	push    {r3-r7,lr}
	ldr     r1, [pc, #0x74] @ 0x225e30c, (=0x19d4)
	mov     r5, r0
	add     r0, r1, #0x4
	ldr     r2, [r5, r1]
	ldr     r0, [r5, r0]
	cmp     r2, r0
	bne     branch_225e2be
	add     r2, #0x88
	str     r2, [r5, r1]
	mov     r0, #0x2
	ldr     r2, [r5, r1]
	lsl     r0, r0, #12
	cmp     r2, r0
	ble     branch_225e2b4
	str     r0, [r5, r1]
.thumb
branch_225e2b4: @ 225e2b4 :thumb
	ldr     r0, [pc, #0x54] @ 0x225e30c, (=0x19d4)
	ldr     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	b       branch_225e2da
@ 0x225e2be

.thumb
branch_225e2be: @ 225e2be :thumb
	add     r0, r1, #0x4
	ldr     r2, [r5, r0]
	mov     r0, r1
	add     r0, #0x8
	ldr     r0, [r5, r0]
	sub     r2, r2, r0
	add     r0, r1, #0x4
	str     r2, [r5, r0]
	ldr     r2, [r5, r1]
	ldr     r0, [r5, r0]
	cmp     r0, r2
	bge     branch_225e2da
	add     r0, r1, #0x4
	str     r2, [r5, r0]
.thumb
branch_225e2da: @ 225e2da :thumb
	ldr     r0, [pc, #0x34] @ 0x225e310, (=0x19d8)
	mov     r6, #0x0
	ldr     r0, [r5, r0]
	mov     r4, #0x10
	asr     r1, r0, #8
	mov     r0, #0x20
	sub     r0, r0, r1
	add     r0, #0xb0
	lsl     r0, r0, #16
	asr     r7, r0, #16
.thumb
branch_225e2ee: @ 225e2ee :thumb
	ldr     r0, [pc, #0x24] @ 0x225e314, (=0x924)
	lsl     r1, r4, #16
	mov     r3, #0x11
	ldr     r0, [r5, r0]
	asr     r1, r1, #16
	mov     r2, r7
	lsl     r3, r3, #16
	bl      Function_200d500
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x20
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x6
	blt     branch_225e2ee
	pop     {r3-r7,pc}
@ 0x225e30c

.word 0x19d4 @ 0x225e30c
.word 0x19d8 @ 0x225e310
.word 0x924 @ 0x225e314
.thumb
Function_225e318: @ 225e318 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x40] @ 0x225e360, (=0x19d4)
	mov     r4, r1
	ldr     r1, [r5, r0]
	cmp     r1, r4
	bge     branch_225e32a
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225e32a

.thumb
branch_225e32a: @ 225e32a :thumb
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r5, r0]
	cmp     r0, r1
	bge     branch_225e33e
	bl      ErrorHandling
	ldr     r0, [pc, #0x28] @ 0x225e360, (=0x19d4)
	ldr     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
.thumb
branch_225e33e: @ 225e33e :thumb
	ldr     r1, [pc, #0x20] @ 0x225e360, (=0x19d4)
	ldr     r0, [r5, r1]
	sub     r0, r0, r4
	str     r0, [r5, r1]
	add     r0, r1, #0x4
	ldr     r2, [r5, r0]
	ldr     r0, [r5, r1]
	add     r1, #0x8
	sub     r2, r2, r0
	asr     r0, r2, #1
	lsr     r0, r0, #30
	add     r0, r2, r0
	asr     r0, r0, #2
	str     r0, [r5, r1]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225e35e


.align 2


.word 0x19d4 @ 0x225e360
.thumb
Function_225e364: @ 225e364 :thumb
	bx      lr
@ 0x225e366


.align 2, 0


.thumb
Function_225e368: @ 225e368 :thumb
	ldr     r3, [pc, #0x4] @ 0x225e370, (=MI_CpuFill8)
	mov     r1, #0x0
	ldr     r2, [pc, #0x4] @ 0x225e374, (=0x744)
	bx      r3
@ 0x225e370

.word MI_CpuFill8 @ 0x225e370
.word 0x744 @ 0x225e374
.thumb
Function_225e378: @ 225e378 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_225e37e: @ 225e37e :thumb
	mov     r0, r5
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_225e38c
	bl      Function_225eb0c
.thumb
branch_225e38c: @ 225e38c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x80
	blt     branch_225e37e
	pop     {r3-r5,pc}
@ 0x225e396


.align 2, 0


.thumb
Function_225e398: @ 225e398 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	ldr     r4, [pc, #0x4c] @ 0x225e3ec, (=0x73c)
	ldrb    r4, [r1, r4]
	cmp     r4, #0x0
	beq     branch_225e3aa
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225e3aa

.thumb
branch_225e3aa: @ 225e3aa :thumb
	mov     r4, #0x0
	mov     r5, r1
.thumb
branch_225e3ae: @ 225e3ae :thumb
	mov     r6, r5
	add     r6, #0xb4
	ldr     r6, [r6, #0x0]
	cmp     r6, #0x0
	bne     branch_225e3de
	ldr     r6, [sp, #0x18]
	mov     r5, r1
	str     r6, [sp, #0x0]
	ldr     r6, [sp, #0x1c]
	add     r5, #0xb4
	lsl     r4, r4, #2
	str     r6, [sp, #0x4]
	bl      Function_225e6b8
	str     r0, [r5, r4]
	ldr     r0, [r5, r4]
	cmp     r0, #0x0
	beq     branch_225e3d8
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225e3d8

.thumb
branch_225e3d8: @ 225e3d8 :thumb
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225e3de

.thumb
branch_225e3de: @ 225e3de :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x80
	blt     branch_225e3ae
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x225e3ec

.word 0x73c @ 0x225e3ec
.thumb
Function_225e3f0: @ 225e3f0 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	ldr     r1, [pc, #0x94] @ 0x225e48c, (=0x73d)
	mov     r7, r0
	ldrb    r1, [r7, r1]
	cmp     r1, #0x0
	beq     branch_225e406
	mov     r1, r7
	add     r1, #0xb0
	bl      Function_225fd80
.thumb
branch_225e406: @ 225e406 :thumb
	ldr     r0, [pc, #0x88] @ 0x225e490, (=0x73c)
	ldrb    r3, [r7, r0]
	cmp     r3, #0x0
	beq     branch_225e426
	mov     r2, r4
	lsl     r4, r3, #2
	ldr     r3, [pc, #0x80] @ 0x225e494, (=0x2260c0c)
	mov     r0, r7
	ldr     r3, [r3, r4]
	mov     r1, r7
	blx     r3
	cmp     r0, #0x1
	bne     branch_225e426
	ldr     r0, [pc, #0x6c] @ 0x225e490, (=0x73c)
	mov     r1, #0x0
	strb    r1, [r7, r0]
.thumb
branch_225e426: @ 225e426 :thumb
	mov     r4, #0x0
	mov     r6, r7
.thumb
branch_225e42a: @ 225e42a :thumb
	mov     r0, r6
	add     r0, #0xb4
	ldr     r5, [r0, #0x0]
	cmp     r5, #0x0
	beq     branch_225e482
	mov     r0, #0x9
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	lsl     r1, r0, #16
	lsr     r1, r1, #24
	bne     branch_225e45c
	lsl     r0, r0, #8
	lsr     r1, r0, #24
	beq     branch_225e45c
	mov     r0, #0x9
	lsl     r0, r0, #6
	ldr     r2, [r5, r0]
	ldr     r0, [pc, #0x48] @ 0x225e498, (=0xffff00ff)
	lsl     r1, r1, #24
	and     r0, r2
	lsr     r1, r1, #16
	orr     r1, r0
	mov     r0, #0x9
	lsl     r0, r0, #6
	str     r1, [r5, r0]
.thumb
branch_225e45c: @ 225e45c :thumb
	mov     r2, #0x9
	lsl     r2, r2, #6
	ldr     r2, [r5, r2]
	mov     r3, #0xc
	lsl     r2, r2, #16
	lsr     r2, r2, #24
	mul     r3, r2
	ldr     r2, [pc, #0x30] @ 0x225e49c, (=0x2260cac)
	mov     r0, r7
	ldr     r2, [r2, r3]
	mov     r1, r5
	blx     r2
	cmp     r0, #0x1
	bne     branch_225e482
	mov     r0, r7
	mov     r1, r5
	mov     r2, r4
	bl      Function_225eb20
.thumb
branch_225e482: @ 225e482 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0x80
	blt     branch_225e42a
	pop     {r3-r7,pc}
@ 0x225e48c

.word 0x73d @ 0x225e48c
.word 0x73c @ 0x225e490
.word 0x2260c0c @ 0x225e494
.word 0xffff00ff @ 0x225e498
.word 0x2260cac @ 0x225e49c
.thumb
Function_225e4a0: @ 225e4a0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r7, [pc, #0x3c] @ 0x225e4e4, (=0x2260cac)
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_225e4aa: @ 225e4aa :thumb
	mov     r0, r5
	add     r0, #0xb4
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_225e4d8
	mov     r0, #0x9
	lsl     r0, r0, #6
	ldr     r0, [r1, r0]
	lsl     r0, r0, #16
	lsr     r2, r0, #24
	mov     r0, #0xc
	mul     r0, r2
	add     r0, r7, r0
	ldr     r2, [r0, #0x4]
	cmp     r2, #0x0
	beq     branch_225e4d0
	mov     r0, r6
	blx     r2
	b       branch_225e4d8
@ 0x225e4d0

.thumb
branch_225e4d0: @ 225e4d0 :thumb
	add     r1, #0x1c
	mov     r0, r1
	bl      Function_2017294
.thumb
branch_225e4d8: @ 225e4d8 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x80
	blt     branch_225e4aa
	pop     {r3-r7,pc}
@ 0x225e4e2


.align 2


.word 0x2260cac @ 0x225e4e4
.thumb
Function_225e4e8: @ 225e4e8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	mov     r0, #0x0
	mov     r6, #0x9
	str     r0, [sp, #0x10]
	str     r0, [sp, #0xc]
	mov     r1, r0
	mov     r2, r7
	mov     r3, r7
	lsl     r6, r6, #6
.thumb
branch_225e4fe: @ 225e4fe :thumb
	mov     r0, r2
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_225e536
	ldr     r4, [r0, r6]
	lsl     r4, r4, #16
	lsr     r4, r4, #24
	beq     branch_225e520
	mov     r4, #0xad
	lsl     r4, r4, #2
	str     r0, [r3, r4]
	ldr     r0, [sp, #0x10]
	.hword  0x1d1b @ add r3, r3, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	b       branch_225e536
@ 0x225e520

.thumb
branch_225e520: @ 225e520 :thumb
	ldr     r4, [sp, #0xc]
	mov     r5, #0x7f
	sub     r4, r5, r4
	lsl     r4, r4, #2
	add     r5, r7, r4
	mov     r4, #0xad
	lsl     r4, r4, #2
	str     r0, [r5, r4]
	ldr     r0, [sp, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
.thumb
branch_225e536: @ 225e536 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x80
	blt     branch_225e4fe
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	ble     branch_225e5f2
.thumb
branch_225e548: @ 225e548 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x7f
	sub     r0, r1, r0
	lsl     r0, r0, #2
	add     r1, r7, r0
	mov     r0, #0xad
	lsl     r0, r0, #2
	ldr     r4, [r1, r0]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	ble     branch_225e5e6
	mov     r5, r7
.thumb
branch_225e564: @ 225e564 :thumb
	mov     r0, #0xad
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r3, #0x9
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x0]
	lsl     r3, r3, #6
	mov     r6, r1
	ldr     r3, [r6, r3]
	mov     r6, #0xc
	lsl     r3, r3, #16
	lsr     r3, r3, #24
	mul     r6, r3
	ldr     r3, [pc, #0xd0] @ 0x225e650, (=0x2260cac)
	mov     r0, r7
	add     r3, r3, r6
	ldr     r3, [r3, #0x8]
	mov     r2, r4
	blx     r3
	cmp     r0, #0x1
	bne     branch_225e5d8
	mov     r1, #0x9
	ldr     r2, [sp, #0x0]
	lsl     r1, r1, #6
	ldr     r1, [r2, r1]
	mov     r0, r4
	lsl     r1, r1, #16
	lsr     r1, r1, #24
	bl      Function_225eebc
	cmp     r0, #0x1
	bne     branch_225e5d8
	mov     r0, #0x9
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	lsr     r0, r0, #24
	cmp     r0, #0xff
	bne     branch_225e5d8
	mov     r1, #0x9
	lsl     r1, r1, #6
	ldr     r2, [r4, r1]
	ldr     r0, [pc, #0x9c] @ 0x225e654, (=0xffffff)
	and     r0, r2
	ldr     r2, [sp, #0x0]
	ldr     r2, [r2, r1]
	lsr     r2, r2, #24
	lsl     r2, r2, #24
	orr     r0, r2
	str     r0, [r4, r1]
	ldr     r2, [sp, #0x0]
	mov     r0, r7
	ldr     r2, [r2, r1]
	lsr     r1, r2, #24
	lsl     r2, r2, #16
	lsr     r2, r2, #24
	bl      Function_225ee0c
	b       branch_225e5e6
@ 0x225e5d8

.thumb
branch_225e5d8: @ 225e5d8 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x10]
	str     r1, [sp, #0x8]
	cmp     r1, r0
	blt     branch_225e564
.thumb
branch_225e5e6: @ 225e5e6 :thumb
	ldr     r0, [sp, #0x4]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0xc]
	str     r1, [sp, #0x4]
	cmp     r1, r0
	blt     branch_225e548
.thumb
branch_225e5f2: @ 225e5f2 :thumb
	ldr     r0, [pc, #0x64] @ 0x225e658, (=0x73d)
	ldrb    r1, [r7, r0]
	cmp     r1, #0x0
	beq     branch_225e64c
	.hword  0x1c40 @ add r0, r0, #0x1
	ldrb    r0, [r7, r0]
	cmp     r0, #0x1
	bne     branch_225e64c
	mov     r5, #0x0
	mov     r6, r7
.thumb
branch_225e606: @ 225e606 :thumb
	mov     r0, r6
	add     r0, #0xb4
	ldr     r4, [r0, #0x0]
	cmp     r4, #0x0
	beq     branch_225e63e
	ldr     r0, [pc, #0x44] @ 0x225e658, (=0x73d)
	ldrb    r1, [r7, r0]
	mov     r0, #0x9
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	lsl     r2, r0, #16
	lsr     r2, r2, #24
	cmp     r2, r1
	beq     branch_225e63e
	lsl     r0, r0, #8
	lsr     r0, r0, #24
	cmp     r0, r1
	beq     branch_225e63e
	mov     r0, r4
	bl      Function_225eebc
	cmp     r0, #0x0
	bne     branch_225e63e
	mov     r0, r7
	mov     r1, r4
	mov     r2, r5
	bl      Function_225eb20
.thumb
branch_225e63e: @ 225e63e :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r5, #0x80
	blt     branch_225e606
	mov     r0, r7
	bl      Function_225ee98
.thumb
branch_225e64c: @ 225e64c :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225e650

.word 0x2260cac @ 0x225e650
.word 0xffffff @ 0x225e654
.word 0x73d @ 0x225e658
.thumb
Function_225e65c: @ 225e65c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x50] @ 0x225e6b4, (=0x4b4)
	mov     r4, #0x0
	str     r1, [sp, #0x0]
	add     r5, r6, r0
	mov     r7, r4
.thumb
branch_225e66a: @ 225e66a :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_225e688
	ldr     r1, [r0, #0x4]
	blx     DC_FlushRange
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	blx     Function_20ae900
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	blx     Function_20aea20
	str     r7, [r5, #0x0]
.thumb
branch_225e688: @ 225e688 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x20
	blt     branch_225e66a
	mov     r1, #0x1d
	lsl     r1, r1, #6
	ldrb    r0, [r6, r1]
	cmp     r0, #0x0
	beq     branch_225e6b2
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x3
	beq     branch_225e6b2
	.hword  0x1c89 @ add r1, r1, #0x2
	ldsh    r1, [r6, r1]
	mov     r0, #0x0
	bl      SetBrightness
	mov     r0, #0x1d
	mov     r1, #0x0
	lsl     r0, r0, #6
	strb    r1, [r6, r0]
.thumb
branch_225e6b2: @ 225e6b2 :thumb
	pop     {r3-r7,pc}
@ 0x225e6b4

.word 0x4b4 @ 0x225e6b4
.thumb
Function_225e6b8: @ 225e6b8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r1, [sp, #0x8]
	mov     r1, #0x91
	mov     r7, r0
	mov     r0, #0x76
	lsl     r1, r1, #2
	mov     r5, r2
	str     r3, [sp, #0xc]
	bl      malloc
	mov     r2, #0x91
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r2, #0x9
	lsl     r2, r2, #6
	ldr     r1, [r4, r2]
	ldr     r0, [pc, #0x8c] @ 0x225e770, (=0xffffff)
	mov     r6, r5
	and     r1, r0
	lsl     r0, r0, #24
	orr     r0, r1
	str     r0, [r4, r2]
	ldmia   r6!, {r0,r1}
	mov     r3, r4
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	sub     r2, #0x53
	str     r0, [r3, #0x0]
	ldrh    r0, [r4, #0x2]
	cmp     r0, r2
	bls     branch_225e706
	bl      ErrorHandling
	mov     r0, #0x84
	strh    r0, [r4, #0x2]
.thumb
branch_225e706: @ 225e706 :thumb
	ldr     r0, [sp, #0x34]
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, r4
	ldr     r0, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x30]
	add     r1, #0xc
	bl      Function_225e774
	cmp     r0, #0x0
	bne     branch_225e724
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x225e724

.thumb
branch_225e724: @ 225e724 :thumb
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x1c
	add     r1, #0xc
	bl      Function_2017258
	add     r0, sp, #0x10
	str     r0, [sp, #0x0]
	ldrb    r1, [r5, #0x9]
	ldrb    r2, [r5, #0xa]
	mov     r0, r7
	add     r3, sp, #0x14
	bl      Function_225eb64
	mov     r0, r4
	mov     r3, #0x1
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	add     r0, #0x1c
	lsl     r3, r3, #16
	bl      Function_2017350
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r4
	add     r0, #0x1c
	mov     r2, r1
	mov     r3, r1
	bl      Function_201736c
	mov     r0, r4
	add     r0, #0x1c
	mov     r1, #0x0
	bl      Function_2017348
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x225e770

.word 0xffffff @ 0x225e770
.thumb
Function_225e774: @ 225e774 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r2
	mov     r7, r0
	mov     r5, r1
	mov     r6, r3
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x1d
	mov     r3, #0x76
	str     r2, [sp, #0x0]
	bl      Function_200723c
	str     r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_225e798
	bl      ErrorHandling
.thumb
branch_225e798: @ 225e798 :thumb
	ldr     r0, [r5, #0x0]
	blx     Function_20b3c0c_GetAdrOfDataPart
	str     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_225e7c4
	mov     r1, r0
	add     r1, #0x8
	beq     branch_225e7b8
	ldrb    r2, [r0, #0x9]
	cmp     r2, #0x0
	bls     branch_225e7b8
	ldrh    r2, [r0, #0xe]
	add     r1, r1, r2
	.hword  0x1d09 @ add r1, r1, #0x4
	b       branch_225e7ba
@ 0x225e7b8

.thumb
branch_225e7b8: @ 225e7b8 :thumb
	mov     r1, #0x0
.thumb
branch_225e7ba: @ 225e7ba :thumb
	cmp     r1, #0x0
	beq     branch_225e7c4
	ldr     r1, [r1, #0x0]
	add     r0, r0, r1
	b       branch_225e7c6
@ 0x225e7c4

.thumb
branch_225e7c4: @ 225e7c4 :thumb
	mov     r0, #0x0
.thumb
branch_225e7c6: @ 225e7c6 :thumb
	str     r0, [r5, #0x8]
	ldr     r0, [r5, #0x0]
	blx     Function_20b3c1c_GetTexOffsets
	str     r0, [r5, #0xc]
	cmp     r0, #0x0
	beq     branch_225e846
	ldr     r1, [sp, #0x24]
	ldr     r3, [sp, #0x20]
	str     r1, [sp, #0x0]
	mov     r1, r4
	mov     r2, r6
	bl      Function_225e920
	ldr     r0, [r5, #0xc]
	bl      Function_225e8b0
	mov     r4, r0
	beq     branch_225e7f8
	ldr     r1, [r5, #0xc]
	mov     r0, r7
	bl      Function_225e854
	cmp     r0, #0x0
	bne     branch_225e83e
.thumb
branch_225e7f8: @ 225e7f8 :thumb
	cmp     r4, #0x1
	bne     branch_225e822
	ldr     r0, [r5, #0xc]
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	blx     Function_20ae9b8
	ldr     r1, [pc, #0x44] @ 0x225e84c, (=0x2100df0)
	ldr     r0, [sp, #0x8]
	ldr     r1, [r1, #0x0]
	blx     r1
	ldr     r1, [pc, #0x3c] @ 0x225e84c, (=0x2100df0)
	ldr     r0, [sp, #0x4]
	ldr     r1, [r1, #0x0]
	blx     r1
	ldr     r0, [r5, #0xc]
	blx     Function_20aea70
	ldr     r1, [pc, #0x30] @ 0x225e850, (=0x2100df8)
	ldr     r1, [r1, #0x0]
	blx     r1
.thumb
branch_225e822: @ 225e822 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_225e82c
	bl      free
.thumb
branch_225e82c: @ 225e82c :thumb
	mov     r1, #0x10
	mov     r0, #0x0
.thumb
branch_225e830: @ 225e830 :thumb
	strb    r0, [r5, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_225e830
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x225e83e

.thumb
branch_225e83e: @ 225e83e :thumb
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0xc]
	bl      Function_201cbb0
.thumb
branch_225e846: @ 225e846 :thumb
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225e84c

.word 0x2100df0 @ 0x225e84c
.word 0x2100df8 @ 0x225e850
.thumb
Function_225e854: @ 225e854 :thumb
	push    {r4,r5}
	ldr     r2, [pc, #0x28] @ 0x225e880, (=0x4b4)
	mov     r4, #0x0
	mov     r5, r0
.thumb
branch_225e85c: @ 225e85c :thumb
	ldr     r3, [r5, r2]
	cmp     r3, #0x0
	bne     branch_225e870
	lsl     r2, r4, #2
	add     r2, r0, r2
	ldr     r0, [pc, #0x18] @ 0x225e880, (=0x4b4)
	str     r1, [r2, r0]
	mov     r0, #0x1
	pop     {r4,r5}
	bx      lr
@ 0x225e870

.thumb
branch_225e870: @ 225e870 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x20
	blt     branch_225e85c
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x225e87e


.align 2


.word 0x4b4 @ 0x225e880
.thumb
Function_225e884: @ 225e884 :thumb
	push    {r4,r5}
	ldr     r2, [pc, #0x24] @ 0x225e8ac, (=0x4b4)
	mov     r4, #0x0
	mov     r5, r0
.thumb
branch_225e88c: @ 225e88c :thumb
	ldr     r3, [r5, r2]
	cmp     r3, r1
	bne     branch_225e8a0
	lsl     r1, r4, #2
	add     r1, r0, r1
	ldr     r0, [pc, #0x14] @ 0x225e8ac, (=0x4b4)
	mov     r2, #0x0
	str     r2, [r1, r0]
	pop     {r4,r5}
	bx      lr
@ 0x225e8a0

.thumb
branch_225e8a0: @ 225e8a0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x20
	blt     branch_225e88c
	pop     {r4,r5}
	bx      lr
@ 0x225e8ac

.word 0x4b4 @ 0x225e8ac
.thumb
Function_225e8b0: @ 225e8b0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r1, #0x0
	str     r1, [r5, #0x8]
	blx     Function_20ae8c4
	mov     r4, r0
	mov     r0, r5
	blx     Function_20aea04
	ldr     r3, [pc, #0x4c] @ 0x225e914, (=0x2100dec)
	mov     r1, #0x0
	mov     r6, r0
	ldr     r3, [r3, #0x0]
	mov     r0, r4
	mov     r2, r1
	blx     r3
	mov     r4, r0
	bne     branch_225e8da
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225e8da

.thumb
branch_225e8da: @ 225e8da :thumb
	ldr     r3, [pc, #0x3c] @ 0x225e918, (=0x2100df4)
	mov     r1, #0x2
	ldrh    r2, [r5, #0x20]
	lsl     r1, r1, #14
	ldr     r3, [r3, #0x0]
	and     r1, r2
	mov     r0, r6
	mov     r2, #0x0
	blx     r3
	mov     r6, r0
	bne     branch_225e8fc
	ldr     r1, [pc, #0x28] @ 0x225e91c, (=0x2100df0)
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	blx     r1
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225e8fc

.thumb
branch_225e8fc: @ 225e8fc :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	blx     Function_20ae8ec
	mov     r0, r5
	mov     r1, r6
	blx     Function_20aea18
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225e912


.align 2


.word 0x2100dec @ 0x225e914
.word 0x2100df4 @ 0x225e918
.word 0x2100df0 @ 0x225e91c
.thumb
Function_225e920: @ 225e920 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r4, r1
	mov     r1, r3
	str     r0, [sp, #0x4]
	mov     r5, r2
	ldrh    r0, [r3, #0x2]
	ldrb    r1, [r1, #0x8]
	ldr     r2, [sp, #0x38]
	str     r3, [sp, #0x8]
	bl      Function_2260788
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0x14]
	add     r0, r0, r1
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1
	bne     branch_225e964
	mov     r2, #0x1
	ldr     r1, [sp, #0x8]
	str     r2, [sp, #0x0]
	ldrh    r1, [r1, #0x2]
	mov     r0, r5
	mov     r3, #0x76
	.hword  0x1cc9 @ add r1, r1, #0x3
	bl      Function_200723c
	add     r1, sp, #0x20
	str     r0, [sp, #0x18]
	blx     Function_20a7118
	b       branch_225e97c
@ 0x225e964

.thumb
branch_225e964: @ 225e964 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x10
	mov     r2, #0x0
	mov     r3, #0x76
	bl      Function_200723c
	add     r1, sp, #0x20
	str     r0, [sp, #0x18]
	blx     Function_20a7118
.thumb
branch_225e97c: @ 225e97c :thumb
	ldr     r1, [sp, #0x1c]
	mov     r0, #0x0
	mov     r2, #0x40
	blx     MIi_CpuClear16
	ldr     r0, [sp, #0x20]
	ldr     r2, [sp, #0x1c]
	ldr     r1, [r0, #0x14]
	mov     r0, #0x0
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
.thumb
branch_225e992: @ 225e992 :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x3
	bhi     branch_225e9fc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225e9a4

Jumppoints_225e9a4:
.hword branch_225e9ac - Jumppoints_225e9a4 - 2
.hword branch_225e9be - Jumppoints_225e9a4 - 2
.hword branch_225e9d4 - Jumppoints_225e9a4 - 2
.hword branch_225e9e8 - Jumppoints_225e9a4 - 2
.thumb
branch_225e9ac: @ 225e9ac :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1
	bne     branch_225e9b8
	ldr     r1, [sp, #0xc]
	add     r1, #0x80
	b       branch_225e9ba
@ 0x225e9b8

.thumb
branch_225e9b8: @ 225e9b8 :thumb
	ldr     r1, [sp, #0xc]
.thumb
branch_225e9ba: @ 225e9ba :thumb
	ldr     r2, [sp, #0x1c]
	b       branch_225e9fc
@ 0x225e9be

.thumb
branch_225e9be: @ 225e9be :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1
	bne     branch_225e9ca
	ldr     r1, [sp, #0xc]
	add     r1, #0xa0
	b       branch_225e9ce
@ 0x225e9ca

.thumb
branch_225e9ca: @ 225e9ca :thumb
	ldr     r1, [sp, #0xc]
	add     r1, #0x20
.thumb
branch_225e9ce: @ 225e9ce :thumb
	ldr     r0, [sp, #0x1c]
	add     r2, r0, #0x2
	b       branch_225e9fc
@ 0x225e9d4

.thumb
branch_225e9d4: @ 225e9d4 :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1
	bne     branch_225e9de
	ldr     r1, [sp, #0xc]
	b       branch_225e9e2
@ 0x225e9de

.thumb
branch_225e9de: @ 225e9de :thumb
	ldr     r1, [sp, #0xc]
	add     r1, #0x40
.thumb
branch_225e9e2: @ 225e9e2 :thumb
	ldr     r2, [sp, #0x1c]
	add     r2, #0x20
	b       branch_225e9fc
@ 0x225e9e8

.thumb
branch_225e9e8: @ 225e9e8 :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1
	bne     branch_225e9f4
	ldr     r1, [sp, #0xc]
	add     r1, #0x20
	b       branch_225e9f8
@ 0x225e9f4

.thumb
branch_225e9f4: @ 225e9f4 :thumb
	ldr     r1, [sp, #0xc]
	add     r1, #0x60
.thumb
branch_225e9f8: @ 225e9f8 :thumb
	ldr     r2, [sp, #0x1c]
	add     r2, #0x22
.thumb
branch_225e9fc: @ 225e9fc :thumb
	mov     r5, #0x0
	mov     r12, r5
.thumb
branch_225ea00: @ 225ea00 :thumb
	mov     r0, #0x0
	mov     r7, r0
.thumb
branch_225ea04: @ 225ea04 :thumb
	ldrb    r4, [r1, r5]
	mov     r3, #0xf
	tst     r3, r4
	beq     branch_225ea16
	mov     r3, #0x1
	ldrh    r4, [r2, #0x0]
	lsl     r3, r0
	orr     r3, r4
	strh    r3, [r2, #0x0]
.thumb
branch_225ea16: @ 225ea16 :thumb
	ldrb    r4, [r1, r5]
	mov     r3, #0xf0
	tst     r3, r4
	beq     branch_225ea2a
	ldrh    r6, [r2, #0x0]
	add     r4, r0, #0x2
	mov     r3, #0x1
	lsl     r3, r4
	orr     r3, r6
	strh    r3, [r2, #0x0]
.thumb
branch_225ea2a: @ 225ea2a :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r7, #0x4
	blt     branch_225ea04
	mov     r0, r12
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	mov     r12, r0
	cmp     r0, #0x8
	blt     branch_225ea00
	ldr     r0, [sp, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x4
	blt     branch_225e992
	ldr     r0, [sp, #0x8]
	ldrh    r2, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0x38]
	add     r0, r0, r1
	strh    r2, [r0, #0x2]
	ldr     r0, [sp, #0x18]
	bl      free
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x225ea60

.thumb
Function_225ea60: @ 225ea60 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	ldr     r0, [r0, #0x14]
	mov     r4, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x76
	mov     r1, #0x40
	bl      malloc
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r2, #0x40
	add     r0, r1, r0
	ldr     r1, [sp, #0x4]
	blx     MIi_CpuCopy16
	ldr     r2, [sp, #0x0]
	ldr     r1, [sp, #0x8]
	mov     r0, #0x0
	add     r1, r2, r1
	mov     r2, #0x40
	blx     MIi_CpuClear16
	cmp     r4, #0x3
	beq     branch_225ea9c
	cmp     r4, #0x4
	beq     branch_225eacc
	b       branch_225eb02
@ 0x225ea9c

.thumb
branch_225ea9c: @ 225ea9c :thumb
	ldr     r3, [sp, #0x4]
	mov     r2, #0x1e
	mov     r7, #0x0
	mov     r5, #0x3
.thumb
branch_225eaa4: @ 225eaa4 :thumb
	ldr     r4, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r1, #0x0
	add     r4, r4, r0
.thumb
branch_225eaac: @ 225eaac :thumb
	ldr     r6, [r3, #0x0]
	ldr     r0, [r4, #0x0]
	lsr     r6, r1
	and     r6, r5
	lsl     r6, r2
	orr     r0, r6
	.hword  0x1c89 @ add r1, r1, #0x2
	stmia   r4!, {r0}
	cmp     r1, #0x20
	blt     branch_225eaac
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1e92 @ sub r2, r2, #0x2
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r7, #0x10
	blt     branch_225eaa4
	b       branch_225eb02
@ 0x225eacc

.thumb
branch_225eacc: @ 225eacc :thumb
	ldr     r2, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r3, #0x0
	add     r0, r2, r0
	add     r0, #0x3c
	ldr     r1, [sp, #0x4]
	mov     r7, r3
	mov     r12, r0
	mov     r6, #0x3
.thumb
branch_225eade: @ 225eade :thumb
	mov     r4, #0x0
	mov     r2, r12
.thumb
branch_225eae2: @ 225eae2 :thumb
	ldr     r5, [r1, #0x0]
	ldr     r0, [r2, #0x0]
	lsr     r5, r4
	and     r5, r6
	lsl     r5, r3
	orr     r0, r5
	str     r0, [r2, #0x0]
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1f12 @ sub r2, r2, #0x4
	cmp     r4, #0x20
	blt     branch_225eae2
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r7, #0x10
	blt     branch_225eade
.thumb
branch_225eb02: @ 225eb02 :thumb
	ldr     r0, [sp, #0x4]
	bl      free
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225eb0c

.thumb
Function_225eb0c: @ 225eb0c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xc
	bl      Function_2017110
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x225eb1e


.align 2, 0


.thumb
Function_225eb20: @ 225eb20 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x9
	mov     r4, r1
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r6, r2
	lsl     r1, r0, #28
	lsr     r1, r1, #28
	beq     branch_225eb3c
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	cmp     r0, #0x1
	bne     branch_225eb44
.thumb
branch_225eb3c: @ 225eb3c :thumb
	ldr     r1, [r4, #0x18]
	mov     r0, r5
	bl      Function_225e884
.thumb
branch_225eb44: @ 225eb44 :thumb
	mov     r1, #0x9
	lsl     r1, r1, #6
	ldr     r1, [r4, r1]
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_225ee78
	mov     r0, r4
	bl      Function_225eb0c
	lsl     r0, r6, #2
	add     r0, r5, r0
	mov     r1, #0x0
	add     r0, #0xb4
	str     r1, [r0, #0x0]
	pop     {r4-r6,pc}
@ 0x225eb64

.thumb
Function_225eb64: @ 225eb64 :thumb
	push    {r4-r7}
	mov     r0, r2
	asr     r2, r1, #3
	lsr     r2, r2, #28
	add     r2, r1, r2
	mov     r5, r3
	asr     r3, r2, #4
	ldr     r4, [sp, #0x10]
	cmp     r3, #0x11
	bcc     branch_225eb7a
	mov     r3, #0x10
.thumb
branch_225eb7a: @ 225eb7a :thumb
	ldr     r2, [pc, #0x78] @ 0x225ebf4, (=0x2260c68)
	lsl     r6, r3, #2
	ldr     r7, [r2, r6]
	cmp     r3, #0x10
	str     r7, [r5, #0x0]
	bcs     branch_225ebb0
	ldr     r2, [r5, #0x0]
	lsl     r6, r1, #28
	mov     r12, r2
	lsr     r2, r1, #31
	sub     r6, r6, r2
	mov     r1, #0x1c
	ror     r6, r1
	add     r1, r2, r6
	add     r2, r3, #0x1
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x58] @ 0x225ebf4, (=0x2260c68)
	ldr     r2, [r2, r3]
	sub     r3, r2, r7
	asr     r2, r3, #3
	lsr     r2, r2, #28
	add     r2, r3, r2
	asr     r2, r2, #4
	mul     r2, r1
	mov     r1, r12
	add     r1, r1, r2
	str     r1, [r5, #0x0]
.thumb
branch_225ebb0: @ 225ebb0 :thumb
	asr     r1, r0, #3
	lsr     r1, r1, #28
	add     r1, r0, r1
	asr     r6, r1, #4
	cmp     r6, #0xb
	bcc     branch_225ebbe
	mov     r6, #0xa
.thumb
branch_225ebbe: @ 225ebbe :thumb
	ldr     r5, [pc, #0x38] @ 0x225ebf8, (=0x2260be0)
	lsl     r1, r6, #2
	ldr     r3, [r5, r1]
	cmp     r6, #0xa
	str     r3, [r4, #0x0]
	bcs     branch_225ebee
	lsr     r1, r0, #31
	lsl     r7, r0, #28
	sub     r7, r7, r1
	mov     r0, #0x1c
	ror     r7, r0
	add     r0, r1, r7
	add     r1, r6, #0x1
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	ldr     r2, [r4, #0x0]
	sub     r3, r1, r3
	asr     r1, r3, #3
	lsr     r1, r1, #28
	add     r1, r3, r1
	asr     r1, r1, #4
	mul     r1, r0
	add     r0, r2, r1
	str     r0, [r4, #0x0]
.thumb
branch_225ebee: @ 225ebee :thumb
	pop     {r4-r7}
	bx      lr
@ 0x225ebf2


.align 2


.word 0x2260c68 @ 0x225ebf4
.word 0x2260be0 @ 0x225ebf8
.thumb
Function_225ebfc: @ 225ebfc :thumb
	push    {r3-r6}
	ldr     r2, [pc, #0x58] @ 0x225ec58, (=0x534)
	mov     r1, #0x1
	ldr     r5, [r0, r2]
	mov     r3, r1
.thumb
branch_225ec06: @ 225ec06 :thumb
	mov     r4, r3
	lsl     r4, r1
	mov     r2, r5
	tst     r2, r4
	bne     branch_225ec1e
	ldr     r2, [pc, #0x44] @ 0x225ec58, (=0x534)
	ldr     r3, [r0, r2]
	orr     r3, r4
	str     r3, [r0, r2]
	mov     r0, r1
	pop     {r3-r6}
	bx      lr
@ 0x225ec1e

.thumb
branch_225ec1e: @ 225ec1e :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, #0x20
	blt     branch_225ec06
	mov     r5, #0x0
	cmp     r1, #0x3f
	bge     branch_225ec50
	ldr     r2, [pc, #0x30] @ 0x225ec5c, (=0x538)
	mov     r3, #0x1
	ldr     r6, [r0, r2]
.thumb
branch_225ec30: @ 225ec30 :thumb
	mov     r4, r3
	lsl     r4, r5
	mov     r2, r6
	tst     r2, r4
	bne     branch_225ec48
	ldr     r2, [pc, #0x20] @ 0x225ec5c, (=0x538)
	ldr     r3, [r0, r2]
	orr     r3, r4
	str     r3, [r0, r2]
	mov     r0, r1
	pop     {r3-r6}
	bx      lr
@ 0x225ec48

.thumb
branch_225ec48: @ 225ec48 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r1, #0x3f
	blt     branch_225ec30
.thumb
branch_225ec50: @ 225ec50 :thumb
	mov     r0, #0xff
	pop     {r3-r6}
	bx      lr
@ 0x225ec56


.align 2


.word 0x534 @ 0x225ec58
.word 0x538 @ 0x225ec5c
.thumb
Function_225ec60: @ 225ec60 :thumb
	push    {r4,r5}
	cmp     r1, #0xff
	beq     branch_225ec94
	cmp     r1, #0x20
	bge     branch_225ec80
	mov     r3, #0x1
	ldr     r2, [pc, #0x28] @ 0x225ec98, (=0x534)
	mov     r4, r3
	lsl     r4, r1
	.hword  0x1e99 @ sub r1, r3, #0x2
	ldr     r5, [r0, r2]
	eor     r1, r4
	and     r1, r5
	str     r1, [r0, r2]
	pop     {r4,r5}
	bx      lr
@ 0x225ec80

.thumb
branch_225ec80: @ 225ec80 :thumb
	mov     r3, #0x1
	ldr     r2, [pc, #0x18] @ 0x225ec9c, (=0x538)
	sub     r1, #0x20
	mov     r4, r3
	lsl     r4, r1
	.hword  0x1e99 @ sub r1, r3, #0x2
	ldr     r5, [r0, r2]
	eor     r1, r4
	and     r1, r5
	str     r1, [r0, r2]
.thumb
branch_225ec94: @ 225ec94 :thumb
	pop     {r4,r5}
	bx      lr
@ 0x225ec98

.word 0x534 @ 0x225ec98
.word 0x538 @ 0x225ec9c
.thumb
Function_225eca0: @ 225eca0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldrh    r0, [r1, #0x2]
	ldrb    r1, [r1, #0x8]
	mov     r5, r2
	mov     r6, r3
	bl      Function_22607b8
	mov     r7, r0
	cmp     r7, #0x3
	bcc     branch_225ecbc
	bl      ErrorHandling
.thumb
branch_225ecbc: @ 225ecbc :thumb
	mov     r0, r4
	add     r1, sp, #0x14
	add     r2, sp, #0x10
	add     r3, sp, #0xc
	bl      Function_2017358
	ldr     r1, [pc, #0xc8] @ 0x225ed94, (=0x2260c38)
	lsl     r0, r7, #4
	ldr     r2, [sp, #0x14]
	ldr     r1, [r1, r0]
	add     r1, r2, r1
	str     r1, [r5, #0x0]
	ldr     r1, [pc, #0xc0] @ 0x225ed98, (=0x2260c3c)
	ldr     r2, [sp, #0x14]
	ldr     r1, [r1, r0]
	add     r1, r2, r1
	str     r1, [r5, #0x4]
	ldr     r1, [pc, #0xbc] @ 0x225ed9c, (=0x2260c40)
	ldr     r2, [sp, #0x10]
	ldr     r1, [r1, r0]
	add     r1, r2, r1
	str     r1, [r5, #0x8]
	ldr     r1, [pc, #0xb4] @ 0x225eda0, (=0x2260c44)
	ldr     r2, [sp, #0x10]
	ldr     r0, [r1, r0]
	add     r0, r2, r0
	str     r0, [r5, #0xc]
	cmp     r6, #0x1
	bne     branch_225ed8e
	mov     r0, r4
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2017374
	ldr     r1, [r5, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r2, #0x64
	sub     r4, r1, r0
	ldr     r0, [sp, #0x8]
	mov     r3, #0x0
	asr     r1, r0, #31
	asr     r6, r4, #31
	blx     _ll_mul
	mov     r2, #0x1
	lsl     r2, r2, #12
	mov     r3, #0x0
	blx     _ll_sdiv
	mov     r2, r4
	mov     r3, r6
	blx     _ll_mul
	mov     r2, #0x64
	mov     r3, #0x0
	blx     _ll_sdiv
	sub     r0, r0, r4
	sbc     r1, r6
	mov     r2, #0x2
	mov     r3, #0x0
	blx     _ll_sdiv
	ldr     r1, [r5, #0x4]
	mov     r2, #0x64
	add     r1, r1, r0
	str     r1, [r5, #0x4]
	ldr     r1, [r5, #0x0]
	mov     r3, #0x0
	sub     r0, r1, r0
	str     r0, [r5, #0x0]
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0xc]
	sub     r4, r1, r0
	ldr     r0, [sp, #0x4]
	asr     r6, r4, #31
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r2, #0x1
	lsl     r2, r2, #12
	mov     r3, #0x0
	blx     _ll_sdiv
	mov     r2, r4
	mov     r3, r6
	blx     _ll_mul
	mov     r2, #0x64
	mov     r3, #0x0
	blx     _ll_sdiv
	sub     r0, r0, r4
	sbc     r1, r6
	mov     r2, #0x2
	mov     r3, #0x0
	blx     _ll_sdiv
	ldr     r1, [r5, #0x8]
	add     r1, r1, r0
	str     r1, [r5, #0x8]
	ldr     r1, [r5, #0xc]
	sub     r0, r1, r0
	str     r0, [r5, #0xc]
.thumb
branch_225ed8e: @ 225ed8e :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x225ed92


.align 2


.word 0x2260c38 @ 0x225ed94
.word 0x2260c3c @ 0x225ed98
.word 0x2260c40 @ 0x225ed9c
.word 0x2260c44 @ 0x225eda0
.thumb
Function_225eda4: @ 225eda4 :thumb
	ldr     r3, [r0, #0x0]
	ldr     r2, [r1, #0x4]
	cmp     r3, r2
	bgt     branch_225edc8
	ldr     r3, [r1, #0x0]
	ldr     r2, [r0, #0x4]
	cmp     r3, r2
	bgt     branch_225edc8
	ldr     r3, [r0, #0x8]
	ldr     r2, [r1, #0xc]
	cmp     r3, r2
	blt     branch_225edc8
	ldr     r1, [r1, #0x8]
	ldr     r0, [r0, #0xc]
	cmp     r1, r0
	blt     branch_225edc8
	mov     r0, #0x1
	bx      lr
@ 0x225edc8

.thumb
branch_225edc8: @ 225edc8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x225edcc

.thumb
Function_225edcc: @ 225edcc :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x34] @ 0x225ee04, (=0x53c)
	add     r2, r0, r2
	mov     r0, #0x0
.thumb
branch_225edd4: @ 225edd4 :thumb
	ldrb    r3, [r2, #0x1]
	cmp     r3, #0x0
	bne     branch_225edf6
	mov     r4, #0x9
	lsl     r4, r4, #6
	ldr     r5, [r1, r4]
	ldr     r3, [pc, #0x24] @ 0x225ee08, (=0xffffff)
	lsl     r0, r0, #24
	and     r3, r5
	orr     r0, r3
	str     r0, [r1, r4]
	mov     r0, #0x0
	strb    r0, [r2, #0x0]
	ldrb    r0, [r2, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r2, #0x1]
	pop     {r3-r5,pc}
@ 0x225edf6

.thumb
branch_225edf6: @ 225edf6 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r0, #0x80
	blt     branch_225edd4
	bl      ErrorHandling
	pop     {r3-r5,pc}
@ 0x225ee04

.word 0x53c @ 0x225ee04
.word 0xffffff @ 0x225ee08
.thumb
Function_225ee0c: @ 225ee0c :thumb
	push    {r3-r5,lr}
	mov     r3, r0
	mov     r0, r2
	cmp     r1, #0xff
	bne     branch_225ee1a
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225ee1a

.thumb
branch_225ee1a: @ 225ee1a :thumb
	ldr     r2, [pc, #0x50] @ 0x225ee6c, (=0x53c)
	lsl     r4, r1, #2
	add     r5, r3, r2
	ldrb    r1, [r5, r4]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r5, r4]
	add     r1, r2, #0x1
	add     r5, r3, r1
	ldrb    r1, [r5, r4]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r5, r4]
	ldr     r1, [pc, #0x3c] @ 0x225ee70, (=0x73c)
	ldrb    r5, [r3, r1]
	cmp     r5, #0x0
	bne     branch_225ee66
	add     r5, r1, #0x1
	ldrb    r5, [r3, r5]
	cmp     r5, #0x0
	bne     branch_225ee66
	add     r4, r3, r4
	ldrb    r2, [r4, r2]
	add     r4, r1, #0x3
	ldrb    r4, [r3, r4]
	lsl     r5, r4, #1
	ldr     r4, [pc, #0x28] @ 0x225ee74, (=0x2260bcc)
	ldsh    r4, [r4, r5]
	cmp     r2, r4
	blt     branch_225ee66
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r0, [r3, r1]
	add     r3, #0xb0
	mov     r0, r3
	mov     r1, #0x0
	mov     r2, #0x4
	blx     MI_CpuFill8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225ee66

.thumb
branch_225ee66: @ 225ee66 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225ee6a


.align 2


.word 0x53c @ 0x225ee6c
.word 0x73c @ 0x225ee70
.word 0x2260bcc @ 0x225ee74
.thumb
Function_225ee78: @ 225ee78 :thumb
	push    {r3-r5,lr}
	cmp     r1, #0xff
	beq     branch_225ee92
	ldr     r2, [pc, #0x14] @ 0x225ee94, (=0x53d)
	lsl     r4, r1, #2
	add     r5, r0, r2
	ldrb    r0, [r5, r4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	bpl     branch_225ee90
	bl      ErrorHandling
	mov     r0, #0x0
.thumb
branch_225ee90: @ 225ee90 :thumb
	strb    r0, [r5, r4]
.thumb
branch_225ee92: @ 225ee92 :thumb
	pop     {r3-r5,pc}
@ 0x225ee94

.word 0x53d @ 0x225ee94
.thumb
Function_225ee98: @ 225ee98 :thumb
	push    {r4,lr}
	mov     r1, #0x0
	mov     r2, #0xb0
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r1, [pc, #0x10] @ 0x225eeb8, (=0x73d)
	ldrb    r2, [r4, r1]
	.hword  0x1e48 @ sub r0, r1, #0x1
	strb    r2, [r4, r0]
	mov     r2, #0x0
	strb    r2, [r4, r1]
	add     r0, r1, #0x1
	strb    r2, [r4, r0]
	pop     {r4,pc}
@ 0x225eeb6


.align 2


.word 0x73d @ 0x225eeb8
.thumb
Function_225eebc: @ 225eebc :thumb
	push    {r4,lr}
	mov     r2, #0x9
	lsl     r2, r2, #6
	ldr     r3, [r0, r2]
	lsl     r4, r3, #16
	lsr     r4, r4, #24
	bne     branch_225eed6
	lsl     r4, r3, #8
	lsr     r4, r4, #24
	bne     branch_225eed6
	lsl     r4, r3, #28
	lsr     r4, r4, #28
	bne     branch_225eeda
.thumb
branch_225eed6: @ 225eed6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225eeda

.thumb
branch_225eeda: @ 225eeda :thumb
	ldr     r4, [pc, #0x18] @ 0x225eef4, (=0xff00ffff)
	lsl     r1, r1, #24
	and     r3, r4
	lsr     r1, r1, #8
	orr     r1, r3
	str     r1, [r0, r2]
	add     r0, #0x94
	mov     r1, #0x0
	sub     r2, #0x94
	blx     MI_CpuFill8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225eef4

.word 0xff00ffff @ 0x225eef4
.thumb
Function_225eef8: @ 225eef8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x4]
	bl      PkmnData_DivBy25
	ldr     r1, [pc, #0x4] @ 0x225ef08, (=0x2260d30)
	ldrb    r0, [r1, r0]
	pop     {r3,pc}
@ 0x225ef06


.align 2


.word 0x2260d30 @ 0x225ef08
.thumb
Function_225ef0c: @ 225ef0c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r4, r5
	add     r2, r0, #0x1
	mov     r0, r5
	add     r0, #0x94
	str     r2, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	cmp     r0, #0x2
	bne     branch_225ef54
	mov     r0, r5
	add     r0, #0x1c
	add     r2, r4, #0x4
	mov     r3, #0x0
	bl      Function_225eca0
	mov     r0, r5
	add     r0, #0x1c
	mov     r1, #0x1
	bl      Function_2017348
	mov     r1, #0x9
	lsl     r1, r1, #6
	ldr     r2, [r5, r1]
	mov     r0, #0xf
	bic     r2, r0
	mov     r0, #0x1
	orr     r0, r2
	str     r0, [r5, r1]
.thumb
branch_225ef54: @ 225ef54 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x28
	ble     branch_225ef70
	mov     r0, r6
	mov     r1, r5
	bl      Function_225edcc
	mov     r0, r5
	bl      Function_225eef8
	mov     r1, r0
	mov     r0, r5
	bl      Function_225eebc
.thumb
branch_225ef70: @ 225ef70 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225ef74

.thumb
Function_225ef74: @ 225ef74 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x225ef78

.thumb
Function_225ef78: @ 225ef78 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r5
	add     r4, #0x94
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x0
	beq     branch_225ef8c
	cmp     r1, #0x1
	beq     branch_225efa4
	b       branch_225efde
@ 0x225ef8c

.thumb
branch_225ef8c: @ 225ef8c :thumb
	mov     r1, #0x1f
	lsl     r1, r1, #8
	str     r1, [r4, #0x0]
	bl      Function_225ebfc
	strb    r0, [r4, #0x9]
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [r4, #0x4]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
.thumb
branch_225efa4: @ 225efa4 :thumb
	ldr     r0, [r4, #0x4]
	mov     r3, #0x1
	add     r0, #0xc0
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	lsl     r3, r3, #8
	mov     r1, r0
	sub     r1, #0xc0
	cmp     r1, r3
	bge     branch_225efca
	mov     r0, r5
	add     r0, #0x1c
	mov     r1, #0x0
	bl      Function_2017348
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_225efe8
@ 0x225efca

.thumb
branch_225efca: @ 225efca :thumb
	sub     r0, #0xc0
	str     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	mov     r0, r5
	add     r0, #0x1c
	mov     r2, r1
	lsl     r3, r3, #4
	bl      Function_201736c
	b       branch_225efe8
@ 0x225efde

.thumb
branch_225efde: @ 225efde :thumb
	ldrb    r1, [r4, #0x9]
	bl      Function_225ec60
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225efe8

.thumb
branch_225efe8: @ 225efe8 :thumb
	mov     r0, r5
	add     r4, #0xc
	add     r0, #0x1c
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x1
	bl      Function_225eca0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225effc

.thumb
Function_225effc: @ 225effc :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r0, r4
	add     r0, #0x94
	ldrb    r3, [r0, #0x9]
	cmp     r3, #0xff
	beq     branch_225f036
	ldr     r0, [r0, #0x0]
	asr     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r1, r0
	mov     r2, r0
	blx     Function_20af5b4
	mov     r2, #0x3f
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	lsl     r2, r2, #24
	blx     Function_20b2d8c
	mov     r2, #0x1f
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	lsl     r2, r2, #16
	blx     Function_20b2d8c
.thumb
branch_225f036: @ 225f036 :thumb
	add     r4, #0x1c
	mov     r0, r4
	bl      Function_2017294
	add     sp, #0x8
	pop     {r4,pc}
@ 0x225f042


.align 2, 0


.thumb
Function_225f044: @ 225f044 :thumb
	push    {r3,lr}
	add     r1, #0xa0
	add     r2, #0x98
	mov     r0, r1
	mov     r1, r2
	bl      Function_225eda4
	cmp     r0, #0x1
	bne     branch_225f05a
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x225f05a

.thumb
branch_225f05a: @ 225f05a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225f05e


.align 2, 0


.thumb
Function_225f060: @ 225f060 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	ldr     r0, [pc, #0x128] @ 0x225f190, (=0x16a)
	add     r4, #0x94
	ldrb    r0, [r4, r0]
	str     r1, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_225f078
	cmp     r0, #0x1
	beq     branch_225f0b2
	b       branch_225f154
@ 0x225f078

.thumb
branch_225f078: @ 225f078 :thumb
	mov     r0, r1
	add     r0, #0x1c
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      Function_2017358
	ldr     r7, [sp, #0x0]
	mov     r6, #0x0
	mov     r5, r4
	add     r7, #0xc
.thumb
branch_225f08e: @ 225f08e :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2017258
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	bl      Function_2017350
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x78
	cmp     r6, #0x3
	blt     branch_225f08e
	ldr     r0, [pc, #0xe4] @ 0x225f190, (=0x16a)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
.thumb
branch_225f0b2: @ 225f0b2 :thumb
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0xc
	add     r0, #0x1c
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      Function_2017358
	mov     r2, #0x2
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0xc]
	lsl     r2, r2, #12
	ldr     r3, [sp, #0x8]
	sub     r1, r1, r2
	sub     r2, r3, r2
	ldr     r3, [sp, #0x4]
	add     r0, #0x1c
	bl      Function_2017350
	mov     r0, r4
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      Function_2017358
	mov     r2, #0x2
	ldr     r1, [sp, #0xc]
	lsl     r2, r2, #12
	ldr     r3, [sp, #0x8]
	add     r1, r1, r2
	sub     r2, r3, r2
	ldr     r3, [sp, #0x4]
	mov     r0, r4
	bl      Function_2017350
	mov     r0, r4
	add     r0, #0x78
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      Function_2017358
	mov     r2, #0x2
	mov     r0, r4
	ldr     r1, [sp, #0xc]
	lsl     r2, r2, #12
	ldr     r3, [sp, #0x8]
	sub     r1, r1, r2
	add     r2, r3, r2
	ldr     r3, [sp, #0x4]
	add     r0, #0x78
	bl      Function_2017350
	mov     r0, r4
	add     r0, #0xf0
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      Function_2017358
	mov     r2, #0x2
	mov     r0, r4
	ldr     r1, [sp, #0xc]
	lsl     r2, r2, #12
	ldr     r3, [sp, #0x8]
	add     r1, r1, r2
	add     r2, r3, r2
	ldr     r3, [sp, #0x4]
	add     r0, #0xf0
	bl      Function_2017350
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldrh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	ldrh    r0, [r4, r0]
	cmp     r0, #0x1e
	bls     branch_225f154
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x225f154

.thumb
branch_225f154: @ 225f154 :thumb
	ldr     r0, [sp, #0x0]
	mov     r2, #0x5b
	lsl     r2, r2, #2
	ldr     r1, [sp, #0x0]
	add     r0, #0x1c
	add     r2, r4, r2
	mov     r3, #0x0
	bl      Function_225eca0
	mov     r0, #0x5b
	mov     r5, #0x0
	lsl     r0, r0, #2
	add     r6, r4, r0
	mov     r7, r5
.thumb
branch_225f170: @ 225f170 :thumb
	add     r2, r5, #0x1
	lsl     r2, r2, #4
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	add     r2, r6, r2
	mov     r3, r7
	bl      Function_225eca0
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x78
	cmp     r5, #0x3
	blt     branch_225f170
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225f18e


.align 2


.word 0x16a @ 0x225f190
.thumb
Function_225f194: @ 225f194 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r6
	mov     r4, #0x0
	add     r5, #0x94
.thumb
branch_225f19e: @ 225f19e :thumb
	mov     r0, r5
	bl      Function_2017294
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x78
	cmp     r4, #0x3
	blt     branch_225f19e
	add     r6, #0x1c
	mov     r0, r6
	bl      Function_2017294
	pop     {r4-r6,pc}
@ 0x225f1b6


.align 2, 0


.thumb
Function_225f1b8: @ 225f1b8 :thumb
	push    {r4-r6,lr}
	mov     r0, #0x2
	mov     r6, r2
	lsl     r0, r0, #8
	add     r6, #0x94
	mov     r4, #0x0
	add     r5, r1, r0
.thumb
branch_225f1c6: @ 225f1c6 :thumb
	mov     r0, r5
	add     r1, r6, #0x4
	bl      Function_225eda4
	cmp     r0, #0x1
	bne     branch_225f1d6
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225f1d6

.thumb
branch_225f1d6: @ 225f1d6 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x4
	blt     branch_225f1c6
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225f1e2


.align 2, 0


.thumb
Function_225f1e4: @ 225f1e4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	add     r0, #0x94
	mov     r4, r5
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	cmp     r0, #0x3
	bls     branch_225f1fc
	b       branch_225f32a
@ 0x225f1fc

.thumb
branch_225f1fc: @ 225f1fc :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225f208

Jumppoints_225f208:
.hword branch_225f210 - Jumppoints_225f208 - 2
.hword branch_225f26e - Jumppoints_225f208 - 2
.hword branch_225f2a8 - Jumppoints_225f208 - 2
.hword branch_225f2bc - Jumppoints_225f208 - 2
.thumb
branch_225f210: @ 225f210 :thumb
	mov     r0, r5
	add     r0, #0x1c
	mov     r1, #0x2
	bl      Function_2017394
	ldr     r1, [pc, #0x124] @ 0x225f340, (=0xaaa)
	sub     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	mov     r0, #0xe
	lsl     r0, r0, #12
	cmp     r6, r0
	bhi     branch_225f260
	mov     r1, #0x9
	lsl     r1, r1, #6
	ldr     r1, [r5, r1]
	ldr     r0, [r5, #0x18]
	lsl     r1, r1, #16
	lsr     r1, r1, #24
	bl      Function_225ea60
	ldr     r1, [r5, #0x18]
	mov     r0, r7
	bl      Function_225e854
	mov     r1, #0x9
	lsl     r1, r1, #6
	ldr     r2, [r5, r1]
	mov     r0, #0xf0
	bic     r2, r0
	mov     r0, #0x10
	orr     r2, r0
	lsl     r0, r0, #10
	add     r0, r6, r0
	lsl     r0, r0, #16
	str     r2, [r5, r1]
	lsr     r6, r0, #16
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_225f260: @ 225f260 :thumb
	mov     r0, r5
	add     r0, #0x1c
	mov     r1, r6
	mov     r2, #0x2
	bl      Function_2017388
	b       branch_225f32a
@ 0x225f26e

.thumb
branch_225f26e: @ 225f26e :thumb
	mov     r1, #0x9
	lsl     r1, r1, #6
	ldr     r2, [r5, r1]
	mov     r0, #0xf0
	bic     r2, r0
	mov     r0, r5
	str     r2, [r5, r1]
	add     r0, #0x1c
	mov     r1, #0x2
	bl      Function_2017394
	ldr     r1, [pc, #0xb8] @ 0x225f340, (=0xaaa)
	sub     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r0, #0x3
	lsl     r0, r0, #14
	cmp     r1, r0
	bcc     branch_225f29c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_225f29c: @ 225f29c :thumb
	mov     r0, r5
	add     r0, #0x1c
	mov     r2, #0x2
	bl      Function_2017388
	b       branch_225f32a
@ 0x225f2a8

.thumb
branch_225f2a8: @ 225f2a8 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x4
	blt     branch_225f32a
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_225f2bc: @ 225f2bc :thumb
	mov     r0, r5
	add     r0, #0x1c
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2017358
	ldr     r1, [sp, #0x8]
	ldr     r0, [pc, #0x74] @ 0x225f344, (=0xfffb0000)
	cmp     r1, r0
	blt     branch_225f2ea
	mov     r0, #0x5
	lsl     r0, r0, #16
	cmp     r1, r0
	bgt     branch_225f2ea
	mov     r2, #0x3
	ldr     r3, [sp, #0x4]
	lsl     r2, r2, #16
	cmp     r3, r2
	bgt     branch_225f2ea
	ldr     r0, [pc, #0x60] @ 0x225f348, (=0xfffd0000)
	cmp     r3, r0
	bge     branch_225f2f0
.thumb
branch_225f2ea: @ 225f2ea :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x225f2f0

.thumb
branch_225f2f0: @ 225f2f0 :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x5
	bge     branch_225f30a
	lsr     r6, r2, #4
	lsr     r2, r2, #4
	mov     r0, r5
	sub     r2, r3, r2
	ldr     r3, [sp, #0x0]
	add     r0, #0x1c
	add     r1, r1, r6
	bl      Function_2017350
	b       branch_225f31c
@ 0x225f30a

.thumb
branch_225f30a: @ 225f30a :thumb
	lsr     r6, r2, #4
	lsr     r2, r2, #4
	mov     r0, r5
	add     r2, r3, r2
	ldr     r3, [sp, #0x0]
	add     r0, #0x1c
	add     r1, r1, r6
	bl      Function_2017350
.thumb
branch_225f31c: @ 225f31c :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0xa
	blt     branch_225f32a
	mov     r0, #0x0
	str     r0, [r4, #0x8]
.thumb
branch_225f32a: @ 225f32a :thumb
	mov     r0, r5
	add     r4, #0xc
	add     r0, #0x1c
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_225eca0
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225f340

.word 0xaaa @ 0x225f340
.word 0xfffb0000 @ 0x225f344
.word 0xfffd0000 @ 0x225f348
.thumb
Function_225f34c: @ 225f34c :thumb
	push    {r3,lr}
	add     r1, #0xa0
	add     r2, #0x98
	mov     r0, r1
	mov     r1, r2
	bl      Function_225eda4
	cmp     r0, #0x1
	bne     branch_225f362
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x225f362

.thumb
branch_225f362: @ 225f362 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225f366


.align 2, 0


.thumb
Function_225f368: @ 225f368 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	add     r0, #0x94
	mov     r4, r5
	ldr     r0, [r0, #0x0]
	add     r4, #0x94
	cmp     r0, #0x3
	bls     branch_225f380
	b       branch_225f4da
@ 0x225f380

.thumb
branch_225f380: @ 225f380 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225f38c

Jumppoints_225f38c:
.hword branch_225f394 - Jumppoints_225f38c - 2
.hword branch_225f3f4 - Jumppoints_225f38c - 2
.hword branch_225f42e - Jumppoints_225f38c - 2
.hword branch_225f454 - Jumppoints_225f38c - 2
.thumb
branch_225f394: @ 225f394 :thumb
	mov     r0, r5
	add     r0, #0x1c
	mov     r1, #0x2
	bl      Function_2017394
	ldr     r1, [pc, #0x150] @ 0x225f4f0, (=0xaaa)
	add     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	mov     r0, #0x2
	lsl     r0, r0, #12
	cmp     r6, r0
	bcc     branch_225f3e6
	mov     r1, #0x9
	lsl     r1, r1, #6
	ldr     r1, [r5, r1]
	ldr     r0, [r5, #0x18]
	lsl     r1, r1, #16
	lsr     r1, r1, #24
	bl      Function_225ea60
	mov     r0, #0x1
	lsl     r0, r0, #14
	sub     r0, r6, r0
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	ldr     r1, [r5, #0x18]
	mov     r0, r7
	bl      Function_225e854
	mov     r1, #0x9
	lsl     r1, r1, #6
	ldr     r2, [r5, r1]
	mov     r0, #0xf0
	bic     r2, r0
	mov     r0, #0x10
	orr     r0, r2
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_225f3e6: @ 225f3e6 :thumb
	mov     r0, r5
	add     r0, #0x1c
	mov     r1, r6
	mov     r2, #0x2
	bl      Function_2017388
	b       branch_225f4da
@ 0x225f3f4

.thumb
branch_225f3f4: @ 225f3f4 :thumb
	mov     r1, #0x9
	lsl     r1, r1, #6
	ldr     r2, [r5, r1]
	mov     r0, #0xf0
	bic     r2, r0
	mov     r0, r5
	str     r2, [r5, r1]
	add     r0, #0x1c
	mov     r1, #0x2
	bl      Function_2017394
	ldr     r1, [pc, #0xe4] @ 0x225f4f0, (=0xaaa)
	add     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r0, #0x1
	lsl     r0, r0, #14
	cmp     r1, r0
	bcs     branch_225f422
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_225f422: @ 225f422 :thumb
	mov     r0, r5
	add     r0, #0x1c
	mov     r2, #0x2
	bl      Function_2017388
	b       branch_225f4da
@ 0x225f42e

.thumb
branch_225f42e: @ 225f42e :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x4
	blt     branch_225f4da
	mov     r0, r5
	add     r0, #0x1c
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2017358
	ldr     r0, [sp, #0x4]
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_225f454: @ 225f454 :thumb
	mov     r0, r5
	add     r0, #0x1c
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2017358
	ldr     r1, [sp, #0x8]
	ldr     r0, [pc, #0x8c] @ 0x225f4f4, (=0xfffb0000)
	cmp     r1, r0
	blt     branch_225f482
	mov     r0, #0x5
	lsl     r0, r0, #16
	cmp     r1, r0
	bgt     branch_225f482
	mov     r0, #0x3
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #16
	cmp     r1, r0
	bgt     branch_225f482
	ldr     r0, [pc, #0x78] @ 0x225f4f8, (=0xfffd0000)
	cmp     r1, r0
	bge     branch_225f488
.thumb
branch_225f482: @ 225f482 :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x225f488

.thumb
branch_225f488: @ 225f488 :thumb
	mov     r0, #0x2
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #14
	add     r1, r1, r0
	mov     r0, #0x5a
	lsl     r0, r0, #14
	str     r1, [r4, #0x4]
	cmp     r1, r0
	blt     branch_225f4a0
	ldr     r1, [r4, #0x4]
	sub     r0, r1, r0
	str     r0, [r4, #0x4]
.thumb
branch_225f4a0: @ 225f4a0 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_201d2b8
	mov     r2, r0
	mov     r1, #0x1
	mov     r0, r5
	ldr     r3, [sp, #0x8]
	lsl     r1, r1, #12
	sub     r1, r3, r1
	asr     r3, r2, #31
	lsr     r6, r2, #17
	lsl     r3, r3, #15
	orr     r3, r6
	mov     r6, #0x1
	lsl     r6, r6, #12
	lsl     r2, r2, #15
	lsr     r6, r6, #1
	add     r0, #0x1c
	add     r6, r2, r6
	ldr     r2, [pc, #0x34] @ 0x225f4fc, (=0x0)
	ldr     r7, [r4, #0xc]
	adc     r3, r2
	lsl     r2, r3, #20
	lsr     r3, r6, #12
	orr     r3, r2
	add     r2, r7, r3
	ldr     r3, [sp, #0x0]
	bl      Function_2017350
.thumb
branch_225f4da: @ 225f4da :thumb
	mov     r0, r5
	add     r4, #0x10
	add     r0, #0x1c
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_225eca0
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225f4f0

.word 0xaaa @ 0x225f4f0
.word 0xfffb0000 @ 0x225f4f4
.word 0xfffd0000 @ 0x225f4f8
.word 0x0 @ 0x225f4fc
.thumb
Function_225f500: @ 225f500 :thumb
	push    {r3,lr}
	add     r1, #0xa4
	add     r2, #0x98
	mov     r0, r1
	mov     r1, r2
	bl      Function_225eda4
	cmp     r0, #0x1
	bne     branch_225f516
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x225f516

.thumb
branch_225f516: @ 225f516 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225f51a


.align 2, 0


.thumb
Function_225f51c: @ 225f51c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x144] @ 0x225f66c, (=0x16d)
	add     r4, #0x94
	ldrb    r2, [r4, r1]
	cmp     r2, #0x0
	beq     branch_225f534
	cmp     r2, #0x1
	beq     branch_225f580
	b       branch_225f646
@ 0x225f534

.thumb
branch_225f534: @ 225f534 :thumb
	bl      Function_225ebfc
	mov     r1, #0x5b
	lsl     r1, r1, #2
	strb    r0, [r4, r1]
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0xc
	add     r0, #0x1c
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      Function_2017358
	ldr     r7, [sp, #0x0]
	mov     r6, #0x0
	mov     r5, r4
	add     r7, #0xc
.thumb
branch_225f554: @ 225f554 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2017258
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	bl      Function_2017350
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2017348
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x78
	cmp     r6, #0x3
	blt     branch_225f554
	ldr     r0, [pc, #0xf0] @ 0x225f66c, (=0x16d)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
.thumb
branch_225f580: @ 225f580 :thumb
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0xc
	add     r0, #0x1c
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      Function_2017358
	ldr     r1, [sp, #0xc]
	ldr     r0, [pc, #0xdc] @ 0x225f670, (=0xfffb0000)
	cmp     r1, r0
	blt     branch_225f5b6
	mov     r2, #0x5
	lsl     r2, r2, #16
	cmp     r1, r2
	bgt     branch_225f5b6
	mov     r0, #0x3
	ldr     r3, [sp, #0x8]
	lsl     r0, r0, #16
	cmp     r3, r0
	bgt     branch_225f5b6
	ldr     r0, [pc, #0xc8] @ 0x225f674, (=0xfffd0000)
	cmp     r3, r0
	blt     branch_225f5b6
	ldr     r0, [pc, #0xc8] @ 0x225f678, (=0x16b)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_225f5e0
.thumb
branch_225f5b6: @ 225f5b6 :thumb
	mov     r6, #0x0
	mov     r5, r4
	mov     r7, r6
.thumb
branch_225f5bc: @ 225f5bc :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2017348
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x78
	cmp     r6, #0x3
	blt     branch_225f5bc
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r0, #0x1c
	bl      Function_2017348
	ldr     r0, [pc, #0x94] @ 0x225f66c, (=0x16d)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	b       branch_225f654
@ 0x225f5e0

.thumb
branch_225f5e0: @ 225f5e0 :thumb
	ldr     r0, [sp, #0x0]
	lsr     r2, r2, #5
	add     r2, r3, r2
	ldr     r3, [sp, #0x4]
	add     r0, #0x1c
	bl      Function_2017350
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldrh    r0, [r4, r0]
	mov     r1, #0x3
	blx     _s32_div_f
	cmp     r1, #0x0
	bne     branch_225f63a
	ldr     r0, [pc, #0x7c] @ 0x225f67c, (=0x16a)
	mov     r2, #0xa
	ldrb    r1, [r4, r0]
	ldr     r3, [sp, #0x8]
	mov     r0, #0x78
	mul     r0, r1
	lsl     r2, r2, #10
	add     r2, r3, r2
	ldr     r1, [sp, #0xc]
	ldr     r3, [sp, #0x4]
	add     r0, r4, r0
	bl      Function_2017350
	ldr     r0, [pc, #0x60] @ 0x225f67c, (=0x16a)
	ldrb    r1, [r4, r0]
	mov     r0, #0x78
	mul     r0, r1
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_2017348
	ldr     r0, [pc, #0x50] @ 0x225f67c, (=0x16a)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	ldrb    r1, [r4, r0]
	cmp     r1, #0x3
	bcc     branch_225f63a
	mov     r1, #0x0
	strb    r1, [r4, r0]
.thumb
branch_225f63a: @ 225f63a :thumb
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldrh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	b       branch_225f654
@ 0x225f646

.thumb
branch_225f646: @ 225f646 :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
	ldrb    r1, [r4, r1]
	bl      Function_225ec60
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x225f654

.thumb
branch_225f654: @ 225f654 :thumb
	ldr     r0, [sp, #0x0]
	mov     r2, #0x17
	lsl     r2, r2, #4
	ldr     r1, [sp, #0x0]
	add     r0, #0x1c
	add     r2, r4, r2
	mov     r3, #0x0
	bl      Function_225eca0
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225f66c

.word 0x16d @ 0x225f66c
.word 0xfffb0000 @ 0x225f670
.word 0xfffd0000 @ 0x225f674
.word 0x16b @ 0x225f678
.word 0x16a @ 0x225f67c
.thumb
Function_225f680: @ 225f680 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r1
	mov     r7, r6
	mov     r0, #0x5b
	add     r7, #0x94
	lsl     r0, r0, #2
	ldrb    r3, [r7, r0]
	cmp     r3, #0xff
	beq     branch_225f6bc
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r1, r0
	mov     r2, r0
	blx     Function_20af5b4
	mov     r2, #0x3f
	ldr     r0, [r6, #0x14]
	mov     r1, #0x0
	lsl     r2, r2, #24
	blx     Function_20b2d8c
	mov     r2, #0x1f
	ldr     r0, [r6, #0x14]
	mov     r1, #0x0
	lsl     r2, r2, #16
	blx     Function_20b2d8c
.thumb
branch_225f6bc: @ 225f6bc :thumb
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_225f6c0: @ 225f6c0 :thumb
	mov     r0, r5
	bl      Function_2017294
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x78
	cmp     r4, #0x3
	blt     branch_225f6c0
	mov     r0, #0x5b
	lsl     r0, r0, #2
	ldrb    r3, [r7, r0]
	cmp     r3, #0xff
	beq     branch_225f700
	mov     r0, #0x1f
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r1, r0
	mov     r2, r0
	blx     Function_20af5b4
	mov     r2, #0x3f
	ldr     r0, [r6, #0x14]
	mov     r1, #0x0
	lsl     r2, r2, #24
	blx     Function_20b2d8c
	mov     r2, #0x1f
	ldr     r0, [r6, #0x14]
	mov     r1, #0x0
	lsl     r2, r2, #16
	blx     Function_20b2d8c
.thumb
branch_225f700: @ 225f700 :thumb
	add     r6, #0x1c
	mov     r0, r6
	bl      Function_2017294
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225f70c

.thumb
Function_225f70c: @ 225f70c :thumb
	push    {r3,lr}
	mov     r0, #0x81
	lsl     r0, r0, #2
	add     r2, #0x98
	add     r0, r1, r0
	mov     r1, r2
	bl      Function_225eda4
	cmp     r0, #0x1
	bne     branch_225f724
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x225f724

.thumb
branch_225f724: @ 225f724 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225f728

.thumb
Function_225f728: @ 225f728 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r4, r5
	add     r4, #0x94
	cmp     r0, #0x0
	beq     branch_225f742
	cmp     r0, #0x1
	beq     branch_225f75a
	b       branch_225f7dc
@ 0x225f742

.thumb
branch_225f742: @ 225f742 :thumb
	mov     r0, r5
	add     r0, #0x1c
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2017358
	ldr     r0, [sp, #0x8]
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_225f75a: @ 225f75a :thumb
	mov     r0, r5
	add     r0, #0x1c
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2017358
	ldr     r1, [sp, #0x8]
	ldr     r0, [pc, #0x88] @ 0x225f7f4, (=0xfffb0000)
	cmp     r1, r0
	blt     branch_225f788
	mov     r0, #0x5
	lsl     r0, r0, #16
	cmp     r1, r0
	bgt     branch_225f788
	mov     r0, #0x3
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #16
	cmp     r1, r0
	bgt     branch_225f788
	ldr     r0, [pc, #0x74] @ 0x225f7f8, (=0xfffd0000)
	cmp     r1, r0
	bge     branch_225f78e
.thumb
branch_225f788: @ 225f788 :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x225f78e

.thumb
branch_225f78e: @ 225f78e :thumb
	mov     r0, #0x2
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #14
	add     r1, r1, r0
	mov     r0, #0x5a
	lsl     r0, r0, #14
	str     r1, [r4, #0x4]
	cmp     r1, r0
	blt     branch_225f7a6
	ldr     r1, [r4, #0x4]
	sub     r0, r1, r0
	str     r0, [r4, #0x4]
.thumb
branch_225f7a6: @ 225f7a6 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_201d2b8
	mov     r2, r0
	asr     r6, r2, #31
	mov     r7, #0x2
	mov     r0, r5
	lsr     r3, r2, #17
	lsl     r6, r6, #15
	orr     r6, r3
	lsl     r3, r2, #15
	mov     r2, #0x0
	lsl     r7, r7, #10
	add     r0, #0x1c
	add     r3, r3, r7
	adc     r6, r2
	ldr     r1, [r4, #0x8]
	lsl     r2, r6, #20
	lsr     r3, r3, #12
	orr     r3, r2
	add     r1, r1, r3
	ldr     r3, [sp, #0x4]
	lsl     r2, r7, #1
	sub     r2, r3, r2
	ldr     r3, [sp, #0x0]
	bl      Function_2017350
.thumb
branch_225f7dc: @ 225f7dc :thumb
	mov     r0, r5
	add     r4, #0xc
	add     r0, #0x1c
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_225eca0
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225f7f2


.align 2


.word 0xfffb0000 @ 0x225f7f4
.word 0xfffd0000 @ 0x225f7f8
.thumb
Function_225f7fc: @ 225f7fc :thumb
	push    {r3,lr}
	add     r1, #0xa0
	add     r2, #0x98
	mov     r0, r1
	mov     r1, r2
	bl      Function_225eda4
	cmp     r0, #0x1
	bne     branch_225f812
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x225f812

.thumb
branch_225f812: @ 225f812 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225f816


.align 2, 0


.thumb
Function_225f818: @ 225f818 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r5
	add     r4, #0x94
	ldrb    r0, [r4, #0x6]
	cmp     r0, #0x0
	beq     branch_225f82c
	cmp     r0, #0x1
	beq     branch_225f838
	b       branch_225f860
@ 0x225f82c

.thumb
branch_225f82c: @ 225f82c :thumb
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [r4, #0x0]
	ldrb    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x6]
.thumb
branch_225f838: @ 225f838 :thumb
	ldrh    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x8
	bls     branch_225f848
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225f848

.thumb
branch_225f848: @ 225f848 :thumb
	mov     r0, #0x3
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #8
	add     r1, r1, r0
	mov     r0, r5
	mov     r3, #0x1
	add     r0, #0x1c
	mov     r2, r1
	lsl     r3, r3, #12
	str     r1, [r4, #0x0]
	bl      Function_201736c
.thumb
branch_225f860: @ 225f860 :thumb
	mov     r0, r5
	add     r4, #0x8
	add     r0, #0x1c
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x1
	bl      Function_225eca0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225f874

.thumb
Function_225f874: @ 225f874 :thumb
	push    {r3,lr}
	add     r1, #0x9c
	add     r2, #0x98
	mov     r0, r1
	mov     r1, r2
	bl      Function_225eda4
	cmp     r0, #0x1
	bne     branch_225f88a
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x225f88a

.thumb
branch_225f88a: @ 225f88a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225f88e


.align 2, 0


.thumb
Function_225f890: @ 225f890 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	add     r4, #0x94
	str     r1, [sp, #0x0]
	mov     r1, r4
	add     r1, #0xf7
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_225f8aa
	cmp     r1, #0x1
	beq     branch_225f906
	b       branch_225f9e0
@ 0x225f8aa

.thumb
branch_225f8aa: @ 225f8aa :thumb
	bl      Function_225ebfc
	mov     r1, r4
	add     r1, #0xf6
	strb    r0, [r1, #0x0]
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0xc
	add     r0, #0x1c
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      Function_2017358
	ldr     r7, [sp, #0x0]
	mov     r6, #0x0
	mov     r5, r4
	add     r7, #0xc
.thumb
branch_225f8ca: @ 225f8ca :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2017258
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	bl      Function_2017350
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2017348
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x78
	cmp     r6, #0x2
	blt     branch_225f8ca
	mov     r1, #0x1f
	mov     r0, r4
	lsl     r1, r1, #8
	add     r0, #0xf4
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xf7
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xf7
	strb    r1, [r0, #0x0]
.thumb
branch_225f906: @ 225f906 :thumb
	mov     r0, r4
	add     r0, #0xf4
	ldrh    r0, [r0, #0x0]
	mov     r2, #0x1
	lsl     r2, r2, #8
	sub     r0, #0xa0
	cmp     r0, r2
	bge     branch_225f946
	mov     r6, #0x0
	mov     r5, r4
	mov     r7, r6
.thumb
branch_225f91c: @ 225f91c :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2017348
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x78
	cmp     r6, #0x2
	blt     branch_225f91c
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r0, #0x1c
	bl      Function_2017348
	mov     r0, r4
	add     r0, #0xf7
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xf7
	strb    r1, [r0, #0x0]
	b       branch_225f9ee
@ 0x225f946

.thumb
branch_225f946: @ 225f946 :thumb
	mov     r0, r4
	add     r0, #0xf4
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xf4
	sub     r1, #0xa0
	strh    r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0xf0
	ldr     r3, [r1, #0x0]
	lsl     r1, r2, #9
	add     r2, r3, r1
	mov     r1, r4
	add     r1, #0xf0
	str     r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xf0
	ldr     r2, [r1, #0x0]
	mov     r1, #0x5a
	mov     r0, r4
	lsl     r1, r1, #14
	add     r0, #0xf0
	cmp     r2, r1
	blt     branch_225f97c
	ldr     r2, [r0, #0x0]
	sub     r1, r2, r1
	str     r1, [r0, #0x0]
.thumb
branch_225f97c: @ 225f97c :thumb
	mov     r0, r4
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	bl      Function_201d2b8
	asr     r2, r0, #31
	lsl     r3, r2, #16
	lsr     r1, r0, #16
	lsl     r2, r0, #16
	mov     r0, #0x2
	orr     r3, r1
	mov     r1, #0x0
	lsl     r0, r0, #10
	add     r2, r2, r0
	adc     r3, r1
	lsl     r0, r3, #20
	lsr     r7, r2, #12
	orr     r7, r0
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0xc
	add     r0, #0x1c
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      Function_2017358
	mov     r6, #0x0
	mov     r5, r4
.thumb
branch_225f9b2: @ 225f9b2 :thumb
	mov     r0, #0x1
	tst     r0, r6
	beq     branch_225f9c8
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	add     r1, r1, r7
	bl      Function_2017350
	b       branch_225f9d6
@ 0x225f9c8

.thumb
branch_225f9c8: @ 225f9c8 :thumb
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	sub     r1, r1, r7
	bl      Function_2017350
.thumb
branch_225f9d6: @ 225f9d6 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x78
	cmp     r6, #0x2
	blt     branch_225f9b2
	b       branch_225f9ee
@ 0x225f9e0

.thumb
branch_225f9e0: @ 225f9e0 :thumb
	add     r4, #0xf6
	ldrb    r1, [r4, #0x0]
	bl      Function_225ec60
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x225f9ee

.thumb
branch_225f9ee: @ 225f9ee :thumb
	ldr     r0, [sp, #0x0]
	mov     r2, r4
	ldr     r1, [sp, #0x0]
	add     r0, #0x1c
	add     r2, #0xf8
	mov     r3, #0x0
	bl      Function_225eca0
	mov     r5, #0x0
	mov     r6, r4
	add     r6, #0xf8
	mov     r7, r5
.thumb
branch_225fa06: @ 225fa06 :thumb
	add     r2, r5, #0x1
	lsl     r2, r2, #4
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	add     r2, r6, r2
	mov     r3, r7
	bl      Function_225eca0
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x78
	cmp     r5, #0x2
	blt     branch_225fa06
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225fa24

.thumb
Function_225fa24: @ 225fa24 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r1
	mov     r5, r6
	add     r5, #0x94
	mov     r0, r5
	add     r0, #0xf6
	ldrb    r3, [r0, #0x0]
	cmp     r3, #0xff
	beq     branch_225fa66
	mov     r0, r5
	add     r0, #0xf4
	ldrh    r0, [r0, #0x0]
	asr     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r1, r0
	mov     r2, r0
	blx     Function_20af5b4
	mov     r2, #0x3f
	ldr     r0, [r6, #0x14]
	mov     r1, #0x0
	lsl     r2, r2, #24
	blx     Function_20b2d8c
	mov     r2, #0x1f
	ldr     r0, [r6, #0x14]
	mov     r1, #0x0
	lsl     r2, r2, #16
	blx     Function_20b2d8c
.thumb
branch_225fa66: @ 225fa66 :thumb
	mov     r4, #0x0
.thumb
branch_225fa68: @ 225fa68 :thumb
	mov     r0, r5
	bl      Function_2017294
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x78
	cmp     r4, #0x2
	blt     branch_225fa68
	add     r6, #0x1c
	mov     r0, r6
	bl      Function_2017294
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x225fa82


.align 2, 0


.thumb
Function_225fa84: @ 225fa84 :thumb
	push    {r4-r6,lr}
	mov     r0, #0x63
	mov     r6, r2
	lsl     r0, r0, #2
	add     r6, #0x94
	mov     r4, #0x0
	add     r5, r1, r0
.thumb
branch_225fa92: @ 225fa92 :thumb
	mov     r0, r5
	add     r1, r6, #0x4
	bl      Function_225eda4
	cmp     r0, #0x1
	bne     branch_225faa2
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225faa2

.thumb
branch_225faa2: @ 225faa2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x3
	blt     branch_225fa92
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225faae


.align 2, 0


.thumb
Function_225fab0: @ 225fab0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	add     r4, #0x94
	str     r1, [sp, #0x0]
	mov     r1, r4
	add     r1, #0xf7
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_225faca
	cmp     r1, #0x1
	beq     branch_225fb26
	b       branch_225fc00
@ 0x225faca

.thumb
branch_225faca: @ 225faca :thumb
	bl      Function_225ebfc
	mov     r1, r4
	add     r1, #0xf6
	strb    r0, [r1, #0x0]
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0xc
	add     r0, #0x1c
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      Function_2017358
	ldr     r7, [sp, #0x0]
	mov     r6, #0x0
	mov     r5, r4
	add     r7, #0xc
.thumb
branch_225faea: @ 225faea :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2017258
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	bl      Function_2017350
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2017348
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x78
	cmp     r6, #0x2
	blt     branch_225faea
	mov     r1, #0x1f
	mov     r0, r4
	lsl     r1, r1, #8
	add     r0, #0xf4
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xf7
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xf7
	strb    r1, [r0, #0x0]
.thumb
branch_225fb26: @ 225fb26 :thumb
	mov     r0, r4
	add     r0, #0xf4
	ldrh    r0, [r0, #0x0]
	mov     r2, #0x1
	lsl     r2, r2, #8
	sub     r0, #0xa0
	cmp     r0, r2
	bge     branch_225fb66
	mov     r6, #0x0
	mov     r5, r4
	mov     r7, r6
.thumb
branch_225fb3c: @ 225fb3c :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2017348
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x78
	cmp     r6, #0x2
	blt     branch_225fb3c
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r0, #0x1c
	bl      Function_2017348
	mov     r0, r4
	add     r0, #0xf7
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xf7
	strb    r1, [r0, #0x0]
	b       branch_225fc0e
@ 0x225fb66

.thumb
branch_225fb66: @ 225fb66 :thumb
	mov     r0, r4
	add     r0, #0xf4
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xf4
	sub     r1, #0xa0
	strh    r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0xf0
	ldr     r3, [r1, #0x0]
	lsl     r1, r2, #9
	add     r2, r3, r1
	mov     r1, r4
	add     r1, #0xf0
	str     r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xf0
	ldr     r2, [r1, #0x0]
	mov     r1, #0x5a
	mov     r0, r4
	lsl     r1, r1, #14
	add     r0, #0xf0
	cmp     r2, r1
	blt     branch_225fb9c
	ldr     r2, [r0, #0x0]
	sub     r1, r2, r1
	str     r1, [r0, #0x0]
.thumb
branch_225fb9c: @ 225fb9c :thumb
	mov     r0, r4
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	bl      Function_201d2b8
	asr     r2, r0, #31
	lsl     r3, r2, #16
	lsr     r1, r0, #16
	lsl     r2, r0, #16
	mov     r0, #0x2
	orr     r3, r1
	mov     r1, #0x0
	lsl     r0, r0, #10
	add     r2, r2, r0
	adc     r3, r1
	lsl     r0, r3, #20
	lsr     r7, r2, #12
	orr     r7, r0
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0xc
	add     r0, #0x1c
	add     r2, sp, #0x8
	add     r3, sp, #0x4
	bl      Function_2017358
	mov     r6, #0x0
	mov     r5, r4
.thumb
branch_225fbd2: @ 225fbd2 :thumb
	mov     r0, #0x1
	tst     r0, r6
	beq     branch_225fbe8
	ldr     r2, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	add     r2, r2, r7
	bl      Function_2017350
	b       branch_225fbf6
@ 0x225fbe8

.thumb
branch_225fbe8: @ 225fbe8 :thumb
	ldr     r2, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	sub     r2, r2, r7
	bl      Function_2017350
.thumb
branch_225fbf6: @ 225fbf6 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x78
	cmp     r6, #0x2
	blt     branch_225fbd2
	b       branch_225fc0e
@ 0x225fc00

.thumb
branch_225fc00: @ 225fc00 :thumb
	add     r4, #0xf6
	ldrb    r1, [r4, #0x0]
	bl      Function_225ec60
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x225fc0e

.thumb
branch_225fc0e: @ 225fc0e :thumb
	ldr     r0, [sp, #0x0]
	mov     r2, r4
	ldr     r1, [sp, #0x0]
	add     r0, #0x1c
	add     r2, #0xf8
	mov     r3, #0x0
	bl      Function_225eca0
	mov     r5, #0x0
	mov     r6, r4
	add     r6, #0xf8
	mov     r7, r5
.thumb
branch_225fc26: @ 225fc26 :thumb
	add     r2, r5, #0x1
	lsl     r2, r2, #4
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	add     r2, r6, r2
	mov     r3, r7
	bl      Function_225eca0
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x78
	cmp     r5, #0x2
	blt     branch_225fc26
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225fc44

.thumb
Function_225fc44: @ 225fc44 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r1
	mov     r5, r6
	add     r5, #0x94
	mov     r0, r5
	add     r0, #0xf6
	ldrb    r3, [r0, #0x0]
	cmp     r3, #0xff
	beq     branch_225fc86
	mov     r0, r5
	add     r0, #0xf4
	ldrh    r0, [r0, #0x0]
	asr     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r1, r0
	mov     r2, r0
	blx     Function_20af5b4
	mov     r2, #0x3f
	ldr     r0, [r6, #0x14]
	mov     r1, #0x0
	lsl     r2, r2, #24
	blx     Function_20b2d8c
	mov     r2, #0x1f
	ldr     r0, [r6, #0x14]
	mov     r1, #0x0
	lsl     r2, r2, #16
	blx     Function_20b2d8c
.thumb
branch_225fc86: @ 225fc86 :thumb
	mov     r4, #0x0
.thumb
branch_225fc88: @ 225fc88 :thumb
	mov     r0, r5
	bl      Function_2017294
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x78
	cmp     r4, #0x2
	blt     branch_225fc88
	add     r6, #0x1c
	mov     r0, r6
	bl      Function_2017294
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x225fca2


.align 2, 0


.thumb
Function_225fca4: @ 225fca4 :thumb
	push    {r4-r6,lr}
	mov     r0, #0x63
	mov     r6, r2
	lsl     r0, r0, #2
	add     r6, #0x94
	mov     r4, #0x0
	add     r5, r1, r0
.thumb
branch_225fcb2: @ 225fcb2 :thumb
	mov     r0, r5
	add     r1, r6, #0x4
	bl      Function_225eda4
	cmp     r0, #0x1
	bne     branch_225fcc2
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225fcc2

.thumb
branch_225fcc2: @ 225fcc2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x3
	blt     branch_225fcb2
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225fcce


.align 2, 0


.thumb
Function_225fcd0: @ 225fcd0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r6, r1
	mov     r4, r6
	add     r4, #0x94
	ldrb    r0, [r4, #0x6]
	cmp     r0, #0x0
	beq     branch_225fce6
	cmp     r0, #0x1
	beq     branch_225fcf2
	b       branch_225fd4e
@ 0x225fce6

.thumb
branch_225fce6: @ 225fce6 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [r4, #0x0]
	ldrb    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x6]
.thumb
branch_225fcf2: @ 225fcf2 :thumb
	ldrh    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x1e
	bls     branch_225fd04
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x225fd04

.thumb
branch_225fd04: @ 225fd04 :thumb
	mov     r0, #0x6
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #6
	add     r2, r1, r0
	mov     r1, #0x1
	mov     r0, r6
	lsl     r1, r1, #12
	str     r2, [r4, #0x0]
	add     r0, #0x1c
	mov     r3, r1
	bl      Function_201736c
	mov     r0, #0x1
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	lsl     r1, r0, #12
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	neg     r5, r0
	mov     r0, r6
	add     r0, #0x1c
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2017358
	ldr     r2, [sp, #0x4]
	mov     r0, r6
	ldr     r1, [sp, #0x8]
	ldr     r3, [sp, #0x0]
	add     r0, #0x1c
	add     r2, r2, r5
	bl      Function_2017350
.thumb
branch_225fd4e: @ 225fd4e :thumb
	mov     r0, r6
	add     r4, #0x8
	add     r0, #0x1c
	mov     r1, r6
	mov     r2, r4
	mov     r3, #0x1
	bl      Function_225eca0
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x225fd64

.thumb
Function_225fd64: @ 225fd64 :thumb
	push    {r3,lr}
	add     r1, #0x9c
	add     r2, #0x98
	mov     r0, r1
	mov     r1, r2
	bl      Function_225eda4
	cmp     r0, #0x1
	bne     branch_225fd7a
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x225fd7a

.thumb
branch_225fd7a: @ 225fd7a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x225fd7e


.align 2, 0


.thumb
Function_225fd80: @ 225fd80 :thumb
	push    {r4,r5}
	mov     r4, r0
	cmp     r2, #0x3
	bne     branch_225fd8e
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x225fd8e

.thumb
branch_225fd8e: @ 225fd8e :thumb
	cmp     r3, #0x0
	bne     branch_225fd98
	mov     r0, #0x0
	mvn     r0, r0
	b       branch_225fd9a
@ 0x225fd98

.thumb
branch_225fd98: @ 225fd98 :thumb
	mov     r0, #0x1
.thumb
branch_225fd9a: @ 225fd9a :thumb
	ldrb    r2, [r1, #0x0]
	cmp     r2, #0x0
	beq     branch_225fda6
	cmp     r2, #0x1
	beq     branch_225fdd8
	b       branch_225fe1a
@ 0x225fda6

.thumb
branch_225fda6: @ 225fda6 :thumb
	mov     r3, #0x2
	ldsh    r5, [r1, r3]
	lsl     r2, r3, #8
	add     r2, r5, r2
	strh    r2, [r1, #0x2]
	ldsh    r5, [r1, r3]
	lsl     r2, r3, #10
	cmp     r5, r2
	blt     branch_225fdc0
	strh    r2, [r1, #0x2]
	ldrb    r2, [r1, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r2, [r1, #0x0]
.thumb
branch_225fdc0: @ 225fdc0 :thumb
	mov     r2, #0x1d
	mov     r3, #0x1
	lsl     r2, r2, #6
	strb    r3, [r4, r2]
	mov     r3, #0x2
	ldsh    r1, [r1, r3]
	asr     r1, r1, #8
	mov     r3, r1
	mul     r3, r0
	add     r0, r2, #0x2
	strh    r3, [r4, r0]
	b       branch_225fe24
@ 0x225fdd8

.thumb
branch_225fdd8: @ 225fdd8 :thumb
	mov     r3, #0x2
	ldsh    r5, [r1, r3]
	lsl     r2, r3, #8
	sub     r2, r5, r2
	strh    r2, [r1, #0x2]
	ldsh    r2, [r1, r3]
	cmp     r2, #0x0
	bgt     branch_225fe02
	mov     r3, #0x0
	strh    r3, [r1, #0x2]
	ldrb    r2, [r1, #0x1]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r2, [r1, #0x1]
	ldrb    r2, [r1, #0x1]
	cmp     r2, #0x2
	bcs     branch_225fdfc
	strb    r3, [r1, #0x0]
	b       branch_225fe02
@ 0x225fdfc

.thumb
branch_225fdfc: @ 225fdfc :thumb
	ldrb    r2, [r1, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r2, [r1, #0x0]
.thumb
branch_225fe02: @ 225fe02 :thumb
	mov     r2, #0x1d
	mov     r3, #0x1
	lsl     r2, r2, #6
	strb    r3, [r4, r2]
	mov     r3, #0x2
	ldsh    r1, [r1, r3]
	asr     r1, r1, #8
	mov     r3, r1
	mul     r3, r0
	add     r0, r2, #0x2
	strh    r3, [r4, r0]
	b       branch_225fe24
@ 0x225fe1a

.thumb
branch_225fe1a: @ 225fe1a :thumb
	ldr     r1, [pc, #0x10] @ 0x225fe2c, (=0x73e)
	mov     r0, #0x1
	strb    r0, [r4, r1]
	pop     {r4,r5}
	bx      lr
@ 0x225fe24

.thumb
branch_225fe24: @ 225fe24 :thumb
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x225fe2a


.align 2


.word 0x73e @ 0x225fe2c
.thumb
Function_225fe30: @ 225fe30 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r0, [r4, #0x6]
	mov     r5, r2
	cmp     r0, #0x3
	bhi     branch_225fece
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225fe48

Jumppoints_225fe48:
.hword branch_225fe50 - Jumppoints_225fe48 - 2
.hword branch_225fe64 - Jumppoints_225fe48 - 2
.hword branch_225fe86 - Jumppoints_225fe48 - 2
.hword branch_225fea0 - Jumppoints_225fe48 - 2
.thumb
branch_225fe50: @ 225fe50 :thumb
	mov     r0, r5
	bl      Function_2020a90
	str     r0, [r4, #0x0]
	ldrb    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x6]
	ldr     r0, [pc, #0x74] @ 0x225fed4, (=0x5be)
	bl      Function_2005748
.thumb
branch_225fe64: @ 225fe64 :thumb
	ldr     r0, [pc, #0x70] @ 0x225fed8, (=0xffffe556)
	mov     r1, r5
	bl      Function_2020a78
	mov     r0, #0x4
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x4]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x1e
	blt     branch_225fece
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
	ldrb    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x6]
	b       branch_225fece
@ 0x225fe86

.thumb
branch_225fe86: @ 225fe86 :thumb
	mov     r0, #0x4
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x4]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x4
	ble     branch_225fece
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
	ldrb    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x6]
	b       branch_225fece
@ 0x225fea0

.thumb
branch_225fea0: @ 225fea0 :thumb
	ldr     r0, [pc, #0x38] @ 0x225fedc, (=0x8555)
	mov     r1, r5
	bl      Function_2020a78
	mov     r0, #0x4
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x4]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x6
	bge     branch_225fec2
	mov     r0, r5
	bl      Function_2020a90
	ldr     r1, [r4, #0x0]
	cmp     r0, r1
	blt     branch_225fece
.thumb
branch_225fec2: @ 225fec2 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_2020a50
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225fece

.thumb
branch_225fece: @ 225fece :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225fed2


.align 2


.word 0x5be @ 0x225fed4
.word 0xffffe556 @ 0x225fed8
.word 0x8555 @ 0x225fedc
.thumb
Function_225fee0: @ 225fee0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	add     r5, #0x8
	ldrb    r0, [r5, #0xc]
	mov     r4, r2
	cmp     r0, #0x0
	beq     branch_225fef4
	cmp     r0, #0x1
	beq     branch_225ff00
	b       branch_225ff7e
@ 0x225fef4

.thumb
branch_225fef4: @ 225fef4 :thumb
	ldr     r0, [pc, #0x90] @ 0x225ff88, (=0x5be)
	bl      Function_2005748
	ldrb    r0, [r5, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0xc]
.thumb
branch_225ff00: @ 225ff00 :thumb
	ldrb    r0, [r5, #0xd]
	mov     r1, #0x2
	lsl     r1, r1, #12
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0xd]
	ldrb    r0, [r5, #0xd]
	lsl     r0, r0, #10
	cmp     r0, r1
	bge     branch_225ff18
	lsr     r1, r1, #1
	sub     r1, r1, r0
	b       branch_225ff1e
@ 0x225ff18

.thumb
branch_225ff18: @ 225ff18 :thumb
	mov     r1, #0x3
	lsl     r1, r1, #12
	sub     r1, r0, r1
.thumb
branch_225ff1e: @ 225ff1e :thumb
	mov     r2, #0x1
	lsl     r2, r2, #12
	str     r1, [r5, #0x4]
	cmp     r0, r2
	bge     branch_225ff2c
	str     r0, [r5, #0x0]
	b       branch_225ff50
@ 0x225ff2c

.thumb
branch_225ff2c: @ 225ff2c :thumb
	lsl     r1, r2, #1
	cmp     r0, r1
	bge     branch_225ff38
	sub     r0, r1, r0
	str     r0, [r5, #0x0]
	b       branch_225ff50
@ 0x225ff38

.thumb
branch_225ff38: @ 225ff38 :thumb
	mov     r1, #0x3
	lsl     r1, r1, #12
	cmp     r0, r1
	bge     branch_225ff4a
	lsl     r1, r2, #1
	sub     r0, r0, r1
	neg     r0, r0
	str     r0, [r5, #0x0]
	b       branch_225ff50
@ 0x225ff4a

.thumb
branch_225ff4a: @ 225ff4a :thumb
	lsl     r1, r2, #2
	sub     r0, r0, r1
	str     r0, [r5, #0x0]
.thumb
branch_225ff50: @ 225ff50 :thumb
	ldrb    r0, [r5, #0xd]
	cmp     r0, #0x10
	bcc     branch_225ff74
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [r5, #0x4]
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	strb    r0, [r5, #0xd]
	ldrb    r0, [r5, #0xe]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0xe]
	ldrb    r0, [r5, #0xe]
	cmp     r0, #0x2
	bcc     branch_225ff74
	ldrb    r0, [r5, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0xc]
.thumb
branch_225ff74: @ 225ff74 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2020680
	b       branch_225ff82
@ 0x225ff7e

.thumb
branch_225ff7e: @ 225ff7e :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225ff82

.thumb
branch_225ff82: @ 225ff82 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225ff86


.align 2


.word 0x5be @ 0x225ff88
.thumb
Function_225ff8c: @ 225ff8c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	add     r0, sp, #0x8
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	strh    r1, [r0, #0x2]
	strh    r1, [r0, #0x4]
	add     r4, #0x18
	strh    r1, [r0, #0x6]
	ldrb    r1, [r4, #0xe]
	mov     r5, r2
	cmp     r1, #0x3
	bhi     branch_226005a
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x225ffb4

Jumppoints_225ffb4:
.hword branch_225ffbc - Jumppoints_225ffb4 - 2
.hword branch_225ffe6 - Jumppoints_225ffb4 - 2
.hword branch_2260016 - Jumppoints_225ffb4 - 2
.hword branch_226002c - Jumppoints_225ffb4 - 2
.thumb
branch_225ffbc: @ 225ffbc :thumb
	add     r0, sp, #0x0
	mov     r1, r5
	bl      Function_2020a94
	add     r0, sp, #0x0
	ldrh    r1, [r0, #0x0]
	strh    r1, [r4, #0x0]
	ldrh    r1, [r0, #0x2]
	strh    r1, [r4, #0x2]
	ldrh    r1, [r0, #0x4]
	strh    r1, [r4, #0x4]
	ldrh    r0, [r0, #0x6]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r4, #0x2]
	str     r0, [r4, #0x8]
	ldrb    r0, [r4, #0xe]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xe]
	ldr     r0, [pc, #0x7c] @ 0x2260060, (=0x5be)
	bl      Function_2005748
.thumb
branch_225ffe6: @ 225ffe6 :thumb
	add     r1, sp, #0x0
	ldrh    r2, [r1, #0xa]
	mov     r0, #0x1
	lsl     r0, r0, #12
	sub     r2, r2, r0
	strh    r2, [r1, #0xa]
	ldr     r1, [r4, #0x8]
	sub     r0, r1, r0
	str     r0, [r4, #0x8]
	add     r0, sp, #0x8
	mov     r1, r5
	bl      Function_2020a24
	mov     r0, #0x2
	ldrh    r1, [r4, #0x2]
	lsl     r0, r0, #12
	ldr     r2, [r4, #0x8]
	sub     r0, r1, r0
	cmp     r2, r0
	bgt     branch_226005a
	ldrb    r0, [r4, #0xe]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xe]
	b       branch_226005a
@ 0x2260016

.thumb
branch_2260016: @ 2260016 :thumb
	mov     r0, #0xc
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0xc]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x10
	blt     branch_226005a
	ldrb    r0, [r4, #0xe]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xe]
	b       branch_226005a
@ 0x226002c

.thumb
branch_226002c: @ 226002c :thumb
	add     r2, sp, #0x0
	ldrh    r3, [r2, #0xa]
	mov     r1, #0x2
	lsl     r1, r1, #8
	add     r3, r3, r1
	strh    r3, [r2, #0xa]
	ldr     r2, [r4, #0x8]
	add     r1, r2, r1
	str     r1, [r4, #0x8]
	mov     r1, r5
	bl      Function_2020a24
	ldrh    r0, [r4, #0x2]
	ldr     r1, [r4, #0x8]
	cmp     r1, r0
	blt     branch_226005a
	mov     r0, r4
	mov     r1, r5
	bl      Function_20209d4
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x226005a

.thumb
branch_226005a: @ 226005a :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2260060

.word 0x5be @ 0x2260060
.thumb
Function_2260064: @ 2260064 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	add     r0, sp, #0x8
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	strh    r1, [r0, #0x2]
	strh    r1, [r0, #0x4]
	add     r4, #0x28
	strh    r1, [r0, #0x6]
	ldrb    r1, [r4, #0xe]
	mov     r5, r2
	cmp     r1, #0x3
	bhi     branch_2260132
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x226008c

Jumppoints_226008c:
.hword branch_2260094 - Jumppoints_226008c - 2
.hword branch_22600be - Jumppoints_226008c - 2
.hword branch_22600ee - Jumppoints_226008c - 2
.hword branch_2260104 - Jumppoints_226008c - 2
.thumb
branch_2260094: @ 2260094 :thumb
	add     r0, sp, #0x0
	mov     r1, r5
	bl      Function_2020a94
	add     r0, sp, #0x0
	ldrh    r1, [r0, #0x0]
	strh    r1, [r4, #0x0]
	ldrh    r1, [r0, #0x2]
	strh    r1, [r4, #0x2]
	ldrh    r1, [r0, #0x4]
	strh    r1, [r4, #0x4]
	ldrh    r0, [r0, #0x6]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r4, #0x2]
	str     r0, [r4, #0x8]
	ldrb    r0, [r4, #0xe]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xe]
	ldr     r0, [pc, #0x7c] @ 0x2260138, (=0x5be)
	bl      Function_2005748
.thumb
branch_22600be: @ 22600be :thumb
	add     r1, sp, #0x0
	ldrh    r2, [r1, #0xa]
	mov     r0, #0x1
	lsl     r0, r0, #12
	add     r2, r2, r0
	strh    r2, [r1, #0xa]
	ldr     r1, [r4, #0x8]
	add     r0, r1, r0
	str     r0, [r4, #0x8]
	add     r0, sp, #0x8
	mov     r1, r5
	bl      Function_2020a24
	mov     r0, #0x2
	ldrh    r1, [r4, #0x2]
	lsl     r0, r0, #12
	ldr     r2, [r4, #0x8]
	add     r0, r1, r0
	cmp     r2, r0
	blt     branch_2260132
	ldrb    r0, [r4, #0xe]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xe]
	b       branch_2260132
@ 0x22600ee

.thumb
branch_22600ee: @ 22600ee :thumb
	mov     r0, #0xc
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0xc]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x10
	blt     branch_2260132
	ldrb    r0, [r4, #0xe]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xe]
	b       branch_2260132
@ 0x2260104

.thumb
branch_2260104: @ 2260104 :thumb
	add     r2, sp, #0x0
	ldrh    r3, [r2, #0xa]
	mov     r1, #0x2
	lsl     r1, r1, #8
	sub     r3, r3, r1
	strh    r3, [r2, #0xa]
	ldr     r2, [r4, #0x8]
	sub     r1, r2, r1
	str     r1, [r4, #0x8]
	mov     r1, r5
	bl      Function_2020a24
	ldrh    r0, [r4, #0x2]
	ldr     r1, [r4, #0x8]
	cmp     r1, r0
	bgt     branch_2260132
	mov     r0, r4
	mov     r1, r5
	bl      Function_20209d4
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2260132

.thumb
branch_2260132: @ 2260132 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2260138

.word 0x5be @ 0x2260138
.thumb
Function_226013c: @ 226013c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	add     r0, sp, #0x8
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	strh    r1, [r0, #0x2]
	strh    r1, [r0, #0x4]
	add     r4, #0x38
	strh    r1, [r0, #0x6]
	ldrb    r1, [r4, #0xe]
	mov     r5, r2
	cmp     r1, #0x3
	bhi     branch_2260208
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2260164

Jumppoints_2260164:
.hword branch_226016c - Jumppoints_2260164 - 2
.hword branch_2260196 - Jumppoints_2260164 - 2
.hword branch_22601c4 - Jumppoints_2260164 - 2
.hword branch_22601da - Jumppoints_2260164 - 2
.thumb
branch_226016c: @ 226016c :thumb
	add     r0, sp, #0x0
	mov     r1, r5
	bl      Function_2020a94
	add     r0, sp, #0x0
	ldrh    r1, [r0, #0x0]
	strh    r1, [r4, #0x0]
	ldrh    r1, [r0, #0x2]
	strh    r1, [r4, #0x2]
	ldrh    r1, [r0, #0x4]
	strh    r1, [r4, #0x4]
	ldrh    r0, [r0, #0x6]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r4, #0x0]
	str     r0, [r4, #0x8]
	ldr     r0, [pc, #0x84] @ 0x2260210, (=0x5be)
	bl      Function_2005748
	ldrb    r0, [r4, #0xe]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xe]
.thumb
branch_2260196: @ 2260196 :thumb
	add     r1, sp, #0x0
	ldrh    r2, [r1, #0x8]
	ldr     r0, [pc, #0x78] @ 0x2260214, (=0xaaa)
	add     r2, r2, r0
	strh    r2, [r1, #0x8]
	ldr     r1, [r4, #0x8]
	add     r0, r1, r0
	str     r0, [r4, #0x8]
	add     r0, sp, #0x8
	mov     r1, r5
	bl      Function_2020a24
	mov     r0, #0x2
	ldrh    r1, [r4, #0x0]
	lsl     r0, r0, #12
	ldr     r2, [r4, #0x8]
	add     r0, r1, r0
	cmp     r2, r0
	blt     branch_2260208
	ldrb    r0, [r4, #0xe]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xe]
	b       branch_2260208
@ 0x22601c4

.thumb
branch_22601c4: @ 22601c4 :thumb
	mov     r0, #0xc
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0xc]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x10
	blt     branch_2260208
	ldrb    r0, [r4, #0xe]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xe]
	b       branch_2260208
@ 0x22601da

.thumb
branch_22601da: @ 22601da :thumb
	add     r2, sp, #0x0
	ldrh    r3, [r2, #0x8]
	mov     r1, #0x2
	lsl     r1, r1, #8
	sub     r3, r3, r1
	strh    r3, [r2, #0x8]
	ldr     r2, [r4, #0x8]
	sub     r1, r2, r1
	str     r1, [r4, #0x8]
	mov     r1, r5
	bl      Function_2020a24
	ldrh    r0, [r4, #0x0]
	ldr     r1, [r4, #0x8]
	cmp     r1, r0
	bgt     branch_2260208
	mov     r0, r4
	mov     r1, r5
	bl      Function_20209d4
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2260208

.thumb
branch_2260208: @ 2260208 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x226020e


.align 2


.word 0x5be @ 0x2260210
.word 0xaaa @ 0x2260214
.thumb
Function_2260218: @ 2260218 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r1
	add     r1, sp, #0x8
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	strh    r0, [r1, #0x2]
	strh    r0, [r1, #0x4]
	add     r4, #0x48
	strh    r0, [r1, #0x6]
	ldrb    r0, [r4, #0xd]
	mov     r5, r2
	cmp     r0, #0x0
	beq     branch_226023a
	cmp     r0, #0x1
	beq     branch_2260260
	b       branch_22602d2
@ 0x226023a

.thumb
branch_226023a: @ 226023a :thumb
	add     r0, sp, #0x0
	mov     r1, r5
	bl      Function_2020a94
	add     r0, sp, #0x0
	ldrh    r1, [r0, #0x0]
	strh    r1, [r4, #0x0]
	ldrh    r1, [r0, #0x2]
	strh    r1, [r4, #0x2]
	ldrh    r1, [r0, #0x4]
	strh    r1, [r4, #0x4]
	ldrh    r0, [r0, #0x6]
	strh    r0, [r4, #0x6]
	ldrb    r0, [r4, #0xd]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xd]
	ldr     r0, [pc, #0x84] @ 0x22602e0, (=0x5be)
	bl      Function_2005748
.thumb
branch_2260260: @ 2260260 :thumb
	mov     r1, #0x6
	ldr     r2, [r4, #0x8]
	lsl     r1, r1, #14
	add     r2, r2, r1
	mov     r1, #0x5a
	mov     r0, r4
	lsl     r1, r1, #14
	add     r0, #0x8
	str     r2, [r4, #0x8]
	cmp     r2, r1
	blt     branch_2260292
	ldr     r2, [r0, #0x0]
	sub     r1, r2, r1
	str     r1, [r0, #0x0]
	ldrb    r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xc]
	ldrb    r0, [r4, #0xc]
	cmp     r0, #0x2
	bcc     branch_2260292
	ldrb    r0, [r4, #0xd]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xd]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
.thumb
branch_2260292: @ 2260292 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_201d2b8
	ldrh    r2, [r4, #0x0]
	add     r1, sp, #0x0
	lsl     r6, r0, #12
	strh    r2, [r1, #0x8]
	ldrh    r2, [r4, #0x2]
	add     r3, sp, #0x8
	strh    r2, [r1, #0xa]
	ldrh    r2, [r4, #0x4]
	strh    r2, [r1, #0xc]
	ldrh    r2, [r4, #0x6]
	lsr     r4, r0, #20
	strh    r2, [r1, #0xe]
	asr     r2, r0, #31
	lsl     r2, r2, #12
	mov     r0, #0x2
	orr     r2, r4
	mov     r4, #0x0
	lsl     r0, r0, #10
	add     r6, r6, r0
	adc     r2, r4
	lsl     r0, r2, #20
	lsr     r2, r6, #12
	orr     r2, r0
	strh    r2, [r1, #0xa]
	mov     r0, r3
	mov     r1, r5
	bl      Function_20209b0
	b       branch_22602d8
@ 0x22602d2

.thumb
branch_22602d2: @ 22602d2 :thumb
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22602d8

.thumb
branch_22602d8: @ 22602d8 :thumb
	mov     r0, r4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x22602de


.align 2


.word 0x5be @ 0x22602e0
.thumb
Function_22602e4: @ 22602e4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	add     r4, #0x58
	ldrb    r0, [r4, #0x6]
	mov     r5, r2
	cmp     r0, #0x3
	bhi     branch_2260384
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22602fe

Jumppoints_22602fe:
.hword branch_2260306 - Jumppoints_22602fe - 2
.hword branch_226031a - Jumppoints_22602fe - 2
.hword branch_226033c - Jumppoints_22602fe - 2
.hword branch_2260356 - Jumppoints_22602fe - 2
.thumb
branch_2260306: @ 2260306 :thumb
	mov     r0, r5
	bl      Function_2020a90
	str     r0, [r4, #0x0]
	ldrb    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x6]
	ldr     r0, [pc, #0x70] @ 0x2260388, (=0x5be)
	bl      Function_2005748
.thumb
branch_226031a: @ 226031a :thumb
	ldr     r0, [pc, #0x70] @ 0x226038c, (=0x1aaa)
	mov     r1, r5
	bl      Function_2020a78
	mov     r0, #0x4
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x4]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x1e
	blt     branch_2260384
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
	ldrb    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x6]
	b       branch_2260384
@ 0x226033c

.thumb
branch_226033c: @ 226033c :thumb
	mov     r0, #0x4
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x4]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x4
	ble     branch_2260384
	mov     r0, #0x0
	strh    r0, [r4, #0x4]
	ldrb    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x6]
	b       branch_2260384
@ 0x2260356

.thumb
branch_2260356: @ 2260356 :thumb
	ldr     r0, [pc, #0x38] @ 0x2260390, (=0xffff7aab)
	mov     r1, r5
	bl      Function_2020a78
	mov     r0, #0x4
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x4]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x6
	bge     branch_2260378
	mov     r0, r5
	bl      Function_2020a90
	ldr     r1, [r4, #0x0]
	cmp     r0, r1
	bgt     branch_2260384
.thumb
branch_2260378: @ 2260378 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_2020a50
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2260384

.thumb
branch_2260384: @ 2260384 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2260388

.word 0x5be @ 0x2260388
.word 0x1aaa @ 0x226038c
.word 0xffff7aab @ 0x2260390
.thumb
Function_2260394: @ 2260394 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x24
	mov     r4, r1
	add     r1, sp, #0x18
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	add     r4, #0x60
	str     r0, [r1, #0x8]
	ldrb    r0, [r4, #0x1d]
	mov     r5, r2
	cmp     r0, #0x0
	beq     branch_22603b4
	cmp     r0, #0x1
	beq     branch_22603ea
	b       branch_226045a
@ 0x22603b4

.thumb
branch_22603b4: @ 22603b4 :thumb
	add     r0, sp, #0xc
	mov     r1, r5
	bl      Function_2020abc
	add     r3, sp, #0xc
	mov     r2, r4
	ldmia   r3!, {r0,r1}
	add     r2, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, r5
	str     r0, [r2, #0x0]
	add     r0, sp, #0x0
	bl      Function_2020aac
	add     r3, sp, #0x0
	ldmia   r3!, {r0,r1}
	mov     r2, r4
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldrb    r0, [r4, #0x1d]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1d]
	ldr     r0, [pc, #0x80] @ 0x2260468, (=0x5be)
	bl      Function_2005748
.thumb
branch_22603ea: @ 22603ea :thumb
	mov     r1, #0x2
	ldr     r2, [r4, #0x18]
	lsl     r1, r1, #16
	add     r2, r2, r1
	mov     r1, #0x5a
	mov     r0, r4
	lsl     r1, r1, #14
	add     r0, #0x18
	str     r2, [r4, #0x18]
	cmp     r2, r1
	blt     branch_226041c
	ldr     r2, [r0, #0x0]
	sub     r1, r2, r1
	str     r1, [r0, #0x0]
	ldrb    r0, [r4, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1c]
	ldrb    r0, [r4, #0x1c]
	cmp     r0, #0x4
	bcc     branch_226041c
	ldrb    r0, [r4, #0x1d]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1d]
	mov     r0, #0x0
	str     r0, [r4, #0x18]
.thumb
branch_226041c: @ 226041c :thumb
	ldr     r0, [r4, #0x18]
	bl      Function_201d2b8
	asr     r1, r0, #31
	lsr     r2, r0, #16
	lsl     r1, r1, #16
	lsl     r3, r0, #16
	mov     r0, #0x2
	orr     r1, r2
	mov     r2, #0x0
	lsl     r0, r0, #10
	add     r3, r3, r0
	adc     r1, r2
	lsl     r0, r1, #20
	lsr     r1, r3, #12
	orr     r1, r0
	str     r1, [sp, #0x18]
	mov     r0, r4
	mov     r1, r5
	bl      Function_2020acc
	add     r4, #0xc
	mov     r0, r4
	mov     r1, r5
	bl      Function_2020adc
	add     r0, sp, #0x18
	mov     r1, r5
	bl      Function_2020990
	b       branch_2260460
@ 0x226045a

.thumb
branch_226045a: @ 226045a :thumb
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x2260460

.thumb
branch_2260460: @ 2260460 :thumb
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x2260466


.align 2


.word 0x5be @ 0x2260468
.thumb
Function_226046c: @ 226046c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x24
	mov     r4, r1
	add     r1, sp, #0x18
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	add     r4, #0x80
	str     r0, [r1, #0x8]
	ldrb    r0, [r4, #0x1d]
	mov     r5, r2
	cmp     r0, #0x0
	beq     branch_226048c
	cmp     r0, #0x1
	beq     branch_22604c2
	b       branch_2260532
@ 0x226048c

.thumb
branch_226048c: @ 226048c :thumb
	add     r0, sp, #0xc
	mov     r1, r5
	bl      Function_2020abc
	add     r3, sp, #0xc
	mov     r2, r4
	ldmia   r3!, {r0,r1}
	add     r2, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, r5
	str     r0, [r2, #0x0]
	add     r0, sp, #0x0
	bl      Function_2020aac
	add     r3, sp, #0x0
	ldmia   r3!, {r0,r1}
	mov     r2, r4
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldrb    r0, [r4, #0x1d]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1d]
	ldr     r0, [pc, #0x80] @ 0x2260540, (=0x5be)
	bl      Function_2005748
.thumb
branch_22604c2: @ 22604c2 :thumb
	mov     r1, #0x2
	ldr     r2, [r4, #0x18]
	lsl     r1, r1, #16
	add     r2, r2, r1
	mov     r1, #0x5a
	mov     r0, r4
	lsl     r1, r1, #14
	add     r0, #0x18
	str     r2, [r4, #0x18]
	cmp     r2, r1
	blt     branch_22604f4
	ldr     r2, [r0, #0x0]
	sub     r1, r2, r1
	str     r1, [r0, #0x0]
	ldrb    r0, [r4, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1c]
	ldrb    r0, [r4, #0x1c]
	cmp     r0, #0x4
	bcc     branch_22604f4
	ldrb    r0, [r4, #0x1d]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1d]
	mov     r0, #0x0
	str     r0, [r4, #0x18]
.thumb
branch_22604f4: @ 22604f4 :thumb
	ldr     r0, [r4, #0x18]
	bl      Function_201d2b8
	asr     r1, r0, #31
	lsr     r2, r0, #17
	lsl     r1, r1, #15
	lsl     r3, r0, #15
	mov     r0, #0x2
	orr     r1, r2
	mov     r2, #0x0
	lsl     r0, r0, #10
	add     r3, r3, r0
	adc     r1, r2
	lsl     r0, r1, #20
	lsr     r1, r3, #12
	orr     r1, r0
	str     r1, [sp, #0x1c]
	mov     r0, r4
	mov     r1, r5
	bl      Function_2020acc
	add     r4, #0xc
	mov     r0, r4
	mov     r1, r5
	bl      Function_2020adc
	add     r0, sp, #0x18
	mov     r1, r5
	bl      Function_2020990
	b       branch_2260538
@ 0x2260532

.thumb
branch_2260532: @ 2260532 :thumb
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x2260538

.thumb
branch_2260538: @ 2260538 :thumb
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x226053e


.align 2


.word 0x5be @ 0x2260540
.thumb
Function_2260544: @ 2260544 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r1
	add     r0, sp, #0x8
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	strh    r1, [r0, #0x2]
	strh    r1, [r0, #0x4]
	add     r4, #0xa0
	strh    r1, [r0, #0x6]
	ldrb    r1, [r4, #0xe]
	mov     r5, r2
	cmp     r1, #0x3
	bhi     branch_2260610
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x226056c

Jumppoints_226056c:
.hword branch_2260574 - Jumppoints_226056c - 2
.hword branch_226059e - Jumppoints_226056c - 2
.hword branch_22605cc - Jumppoints_226056c - 2
.hword branch_22605e2 - Jumppoints_226056c - 2
.thumb
branch_2260574: @ 2260574 :thumb
	add     r0, sp, #0x0
	mov     r1, r5
	bl      Function_2020a94
	add     r0, sp, #0x0
	ldrh    r1, [r0, #0x0]
	strh    r1, [r4, #0x0]
	ldrh    r1, [r0, #0x2]
	strh    r1, [r4, #0x2]
	ldrh    r1, [r0, #0x4]
	strh    r1, [r4, #0x4]
	ldrh    r0, [r0, #0x6]
	strh    r0, [r4, #0x6]
	ldrh    r0, [r4, #0x0]
	str     r0, [r4, #0x8]
	ldrb    r0, [r4, #0xe]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xe]
	ldr     r0, [pc, #0x7c] @ 0x2260618, (=0x5be)
	bl      Function_2005748
.thumb
branch_226059e: @ 226059e :thumb
	add     r1, sp, #0x0
	ldrh    r2, [r1, #0x8]
	ldr     r0, [pc, #0x78] @ 0x226061c, (=0xaaa)
	sub     r2, r2, r0
	strh    r2, [r1, #0x8]
	ldr     r1, [r4, #0x8]
	sub     r0, r1, r0
	str     r0, [r4, #0x8]
	add     r0, sp, #0x8
	mov     r1, r5
	bl      Function_2020a24
	mov     r0, #0x2
	ldrh    r1, [r4, #0x0]
	lsl     r0, r0, #12
	ldr     r2, [r4, #0x8]
	sub     r0, r1, r0
	cmp     r2, r0
	bgt     branch_2260610
	ldrb    r0, [r4, #0xe]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xe]
	b       branch_2260610
@ 0x22605cc

.thumb
branch_22605cc: @ 22605cc :thumb
	mov     r0, #0xc
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0xc]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x10
	blt     branch_2260610
	ldrb    r0, [r4, #0xe]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xe]
	b       branch_2260610
@ 0x22605e2

.thumb
branch_22605e2: @ 22605e2 :thumb
	add     r2, sp, #0x0
	ldrh    r3, [r2, #0x8]
	mov     r1, #0x2
	lsl     r1, r1, #8
	add     r3, r3, r1
	strh    r3, [r2, #0x8]
	ldr     r2, [r4, #0x8]
	add     r1, r2, r1
	str     r1, [r4, #0x8]
	mov     r1, r5
	bl      Function_2020a24
	ldrh    r0, [r4, #0x0]
	ldr     r1, [r4, #0x8]
	cmp     r1, r0
	blt     branch_2260610
	mov     r0, r4
	mov     r1, r5
	bl      Function_20209d4
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2260610

.thumb
branch_2260610: @ 2260610 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2260616


.align 2


.word 0x5be @ 0x2260618
.word 0xaaa @ 0x226061c
.thumb
Function_2260620: @ 2260620 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x40]
	str     r1, [sp, #0x14]
	mov     r4, r2
	str     r3, [sp, #0x18]
	bl      0x2232b8c
	mov     r5, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	beq     branch_2260706
	ldr     r0, [sp, #0x40]
	bl      0x2232b78
	mov     r1, #0x0
	mvn     r1, r1
	str     r0, [sp, #0x24]
	cmp     r0, r1
	beq     branch_2260706
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x24]
	bl      0x222e374
	mov     r7, r0
	beq     branch_2260706
	cmp     r5, #0x8
	bcc     branch_2260664
	bl      ErrorHandling
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2260664

.thumb
branch_2260664: @ 2260664 :thumb
	mov     r0, #0x76
	bl      AllocTrainerData
	mov     r6, r0
	mov     r0, r7
	mov     r1, r6
	mov     r2, #0x76
	bl      0x222e640
	mov     r0, r6
	mov     r1, #0x76
	bl      Function_2025f04
	str     r0, [sp, #0x1c]
	mov     r0, r6
	bl      GetGender
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x1c]
	mov     r1, #0x0
	bl      Function_200b48c
	ldr     r0, [sp, #0x10]
	mov     r1, #0x0
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x20]
	mov     r0, #0x40
	mov     r1, #0x76
	bl      Function_2023790
	mov     r7, r0
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x20]
	mov     r1, r7
	bl      Function_200c388
	lsl     r5, r5, #4
	add     r0, r4, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x24]
	bl      0x222e924
	cmp     r0, #0x1
	bne     branch_22606d2
	ldr     r0, [pc, #0x3c] @ 0x226070c, (=0x70800)
	b       branch_22606d4
@ 0x22606d2

.thumb
branch_22606d2: @ 22606d2 :thumb
	ldr     r0, [pc, #0x3c] @ 0x2260710, (=0x10200)
.thumb
branch_22606d4: @ 22606d4 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r0, r4, r5
	mov     r2, r7
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	add     r0, r4, r5
	bl      Function_201a954
	ldr     r0, [sp, #0x1c]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x20]
	bl      Function_20237bc_FreeMsg
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	bl      free
.thumb
branch_2260706: @ 2260706 :thumb
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x226070a


.align 2


.word 0x70800 @ 0x226070c
.word 0x10200 @ 0x2260710
.thumb
Function_2260714: @ 2260714 :thumb
	push    {r3,lr}
	cmp     r1, #0x8
	bcc     branch_2260720
	bl      ErrorHandling
	pop     {r3,pc}
@ 0x2260720

.thumb
branch_2260720: @ 2260720 :thumb
	lsl     r1, r1, #4
	add     r0, r0, r1
	bl      Function_201acf4
	pop     {r3,pc}
@ 0x226072a


.align 2, 0


.thumb
Function_226072c: @ 226072c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0x9
	blx     _u32_div_f
	lsl     r2, r1, #2
	ldr     r0, [pc, #0x8] @ 0x2260744, (=0x2260d6c)
	lsl     r1, r4, #1
	add     r0, r0, r2
	ldrh    r0, [r1, r0]
	pop     {r4,pc}
@ 0x2260744

.word 0x2260d6c @ 0x2260744
.thumb
Function_2260748: @ 2260748 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x34] @ 0x2260784, (=0x2260d4c)
	mov     r6, r1
	mov     r4, #0xff
	bl      Function_2022664
	cmp     r0, #0x6
	bge     branch_2260776
	cmp     r6, r0
	beq     branch_2260780
	mov     r1, #0xc
	mul     r1, r0
	add     r1, r5, r1
	ldrh    r2, [r1, #0x2]
	cmp     r2, #0x0
	beq     branch_2260780
	mov     r1, r4
	add     r1, #0xee
	cmp     r2, r1
	bhi     branch_2260780
	mov     r4, r0
	b       branch_2260780
@ 0x2260776

.thumb
branch_2260776: @ 2260776 :thumb
	bne     branch_226077c
	mov     r4, #0xfe
	b       branch_2260780
@ 0x226077c

.thumb
branch_226077c: @ 226077c :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x2260780

.thumb
branch_2260780: @ 2260780 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x2260784

.word 0x2260d4c @ 0x2260784
.thumb
Function_2260788: @ 2260788 :thumb
	ldr     r3, [pc, #0x20] @ 0x22607ac, (=0x1e7)
	cmp     r0, r3
	bne     branch_2260796
	cmp     r1, #0x0
	ble     branch_2260796
	mov     r0, #0x0
	bx      lr
@ 0x2260796

.thumb
branch_2260796: @ 2260796 :thumb
	ldr     r1, [pc, #0x18] @ 0x22607b0, (=0x1ed)
	cmp     r0, r1
	bne     branch_22607a4
	cmp     r2, #0x0
	bne     branch_22607a4
	mov     r0, #0x0
	bx      lr
@ 0x22607a4

.thumb
branch_22607a4: @ 22607a4 :thumb
	lsl     r1, r0, #2
	ldr     r0, [pc, #0xc] @ 0x22607b4, (=0x2260d90)
	ldrb    r0, [r0, r1]
	bx      lr
@ 0x22607ac

.word 0x1e7 @ 0x22607ac
.word 0x1ed @ 0x22607b0
.word 0x2260d90 @ 0x22607b4
.thumb
Function_22607b8: @ 22607b8 :thumb
	ldr     r2, [pc, #0x14] @ 0x22607d0, (=0x1e7)
	cmp     r0, r2
	bne     branch_22607c6
	cmp     r1, #0x0
	ble     branch_22607c6
	mov     r0, #0x2
	bx      lr
@ 0x22607c6

.thumb
branch_22607c6: @ 22607c6 :thumb
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x8] @ 0x22607d4, (=0x2260d91)
	ldrb    r0, [r0, r1]
	bx      lr
@ 0x22607ce


.align 2


.word 0x1e7 @ 0x22607d0
.word 0x2260d91 @ 0x22607d4
.thumb
Function_22607d8: @ 22607d8 :thumb
	ldr     r3, [pc, #0x8] @ 0x22607e4, (=0x2232d61)
	mov     r2, r0
	ldr     r0, [pc, #0x8] @ 0x22607e8, (=0x2261548)
	mov     r1, #0x3
	bx      r3
@ 0x22607e2


.align 2


.word 0x2232d61 @ 0x22607e4
.word 0x2261548 @ 0x22607e8
.thumb
Function_22607ec: @ 22607ec :thumb
	push    {r3,lr}
	ldr     r2, [r1, #0x4]
	cmp     r2, r0
	bne     branch_22607f8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22607f8

.thumb
branch_22607f8: @ 22607f8 :thumb
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_2260802
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2260802

.thumb
branch_2260802: @ 2260802 :thumb
	bl      0x2232b8c
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2260812
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2260812

.thumb
branch_2260812: @ 2260812 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2260816


.align 2, 0


.thumb
Function_2260818: @ 2260818 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x2231760
	cmp     r0, #0x1
	bne     branch_2260828
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2260828

.thumb
branch_2260828: @ 2260828 :thumb
	mov     r0, #0x2
	mov     r1, r4
	mov     r2, #0xc
	bl      0x2232ebc
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2260836


.align 2, 0


.thumb
Function_2260838: @ 2260838 :thumb
	push    {r3-r5,lr}
	mov     r4, r3
	mov     r5, r0
	mov     r0, r4
	bl      Function_225dd44
	mov     r1, r0
	mov     r0, r5
	bl      Function_22607ec
	cmp     r0, #0x0
	beq     branch_2260858
	mov     r0, r4
	mov     r1, r5
	bl      Function_225e044
.thumb
branch_2260858: @ 2260858 :thumb
	pop     {r3-r5,pc}
@ 0x226085a


.align 2, 0


.thumb
Function_226085c: @ 226085c :thumb
	push    {r3-r5,lr}
	mov     r4, r3
	mov     r5, r0
	mov     r0, r4
	bl      Function_225dd44
	mov     r1, r0
	mov     r0, r5
	bl      Function_22607ec
	cmp     r0, #0x0
	beq     branch_2260882
	mov     r0, r5
	bl      0x2232b8c
	mov     r1, r0
	mov     r0, r4
	bl      Function_225e05c
.thumb
branch_2260882: @ 2260882 :thumb
	pop     {r3-r5,pc}
@ 0x2260884

.thumb
Function_2260884: @ 2260884 :thumb
	push    {r4-r6,lr}
	mov     r6, r3
	mov     r5, r0
	mov     r0, r6
	mov     r4, r1
	bl      Function_225dd44
	mov     r1, r0
	mov     r0, r5
	bl      Function_22607ec
	cmp     r0, #0x0
	beq     branch_22608a8
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_225ddc0
branch_22608a8: @ 22608a8 :thumb
	pop     {r4-r6,pc}



.align 2, 0
Unknown_22608ac: @ 0x22608ac
.incbin "./baserom/overlay/overlay_0113.bin", 0x41ac, 0x2260c10 - 0x22608ac


.word Function_225fe30+1 @ =0x225fe31, 0x2260c10
.word Function_225fee0+1 @ =0x225fee1, 0x2260c14
.word Function_225ff8c+1 @ =0x225ff8d, 0x2260c18
.word Function_2260064+1 @ =0x2260065, 0x2260c1c
.word Function_226013c+1 @ =0x226013d, 0x2260c20
.word Function_2260218+1 @ =0x2260219, 0x2260c24
.word Function_22602e4+1 @ =0x22602e5, 0x2260c28
.word Function_2260394+1 @ =0x2260395, 0x2260c2c
.word Function_226046c+1 @ =0x226046d, 0x2260c30
.word Function_2260544+1 @ =0x2260545, 0x2260c34

.incbin "./baserom/overlay/overlay_0113.bin", 0x4538, 0x2260cac - 0x2260c38


.word Function_225ef0c+1 @ =0x225ef0d, 0x2260cac
.word 0x0 @ 0x2260cb0
.word Function_225ef74+1 @ =0x225ef75, 0x2260cb4
.word Function_225ef78+1 @ =0x225ef79, 0x2260cb8
.word Function_225effc+1 @ =0x225effd, 0x2260cbc
.word Function_225f044+1 @ =0x225f045, 0x2260cc0
.word Function_225f060+1 @ =0x225f061, 0x2260cc4
.word Function_225f194+1 @ =0x225f195, 0x2260cc8
.word Function_225f1b8+1 @ =0x225f1b9, 0x2260ccc
.word Function_225f1e4+1 @ =0x225f1e5, 0x2260cd0
.word 0x0 @ 0x2260cd4
.word Function_225f34c+1 @ =0x225f34d, 0x2260cd8
.word Function_225f368+1 @ =0x225f369, 0x2260cdc
.word 0x0 @ 0x2260ce0
.word Function_225f500+1 @ =0x225f501, 0x2260ce4
.word Function_225f51c+1 @ =0x225f51d, 0x2260ce8
.word Function_225f680+1 @ =0x225f681, 0x2260cec
.word Function_225f70c+1 @ =0x225f70d, 0x2260cf0
.word Function_225f728+1 @ =0x225f729, 0x2260cf4
.word 0x0 @ 0x2260cf8
.word Function_225f7fc+1 @ =0x225f7fd, 0x2260cfc
.word Function_225f818+1 @ =0x225f819, 0x2260d00
.word 0x0 @ 0x2260d04
.word Function_225f874+1 @ =0x225f875, 0x2260d08
.word Function_225f890+1 @ =0x225f891, 0x2260d0c
.word Function_225fa24+1 @ =0x225fa25, 0x2260d10
.word Function_225fa84+1 @ =0x225fa85, 0x2260d14
.word Function_225fab0+1 @ =0x225fab1, 0x2260d18
.word Function_225fc44+1 @ =0x225fc45, 0x2260d1c
.word Function_225fca4+1 @ =0x225fca5, 0x2260d20
.word Function_225fcd0+1 @ =0x225fcd1, 0x2260d24
.word 0x0 @ 0x2260d28
.word Function_225fd64+1 @ =0x225fd65, 0x2260d2c
@ 0x2260d30


.incbin "./baserom/overlay/overlay_0113.bin", 0x4630, 0x2261580 - 0x2260d30


@end 0x2261580



