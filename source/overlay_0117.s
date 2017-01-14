
@ at 0x3FFE00-0x4000 = 0x3FBE00

.arch armv5te

.section .iwram117, "ax"


.thumb
Function_2260440: @ 2260440 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadPtrToOverWorldDataIn18
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x6e
	lsl     r2, r0, #17
	bl      Function_2017fc8
	mov     r0, r4
	mov     r1, #0x40
	mov     r2, #0x6e
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x40
	blx     MI_CpuFill8
	mov     r0, r4
	mov     r1, r5
	bl      Function_22605d8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2260474

.thumb
Function_2260474: @ 2260474 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, r1
	bl      LoadOverlayData1c
	mov     r5, r0
	mov     r0, r6
	bl      LoadPtrToOverWorldDataIn18
	mov     r6, r0
	mov     r0, r5
	bl      Function_2260630
	cmp     r0, #0x1
	bne     branch_2260496
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2260496

.thumb
branch_2260496: @ 2260496 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x8
	bls     branch_226049e
	b       branch_22605b0
@ 0x226049e

.thumb
branch_226049e: @ 226049e :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22604aa

Jumppoints_22604aa:
.hword branch_22604bc - Jumppoints_22604aa - 2
.hword branch_22604d8 - Jumppoints_22604aa - 2
.hword branch_22604f4 - Jumppoints_22604aa - 2
.hword branch_2260510 - Jumppoints_22604aa - 2
.hword branch_226052c - Jumppoints_22604aa - 2
.hword branch_2260554 - Jumppoints_22604aa - 2
.hword branch_226057a - Jumppoints_22604aa - 2
.hword branch_2260590 - Jumppoints_22604aa - 2
.hword branch_22605b0 - Jumppoints_22604aa - 2
.thumb
branch_22604bc: @ 22604bc :thumb
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x31
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0xf0] @ 0x22605b8, (=0x2266908)
	mov     r1, r5
	mov     r2, #0x6e
	bl      AllocAndInitOverlayData
	str     r0, [r5, #0x28]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22605b4
@ 0x22604d8

.thumb
branch_22604d8: @ 22604d8 :thumb
	ldr     r0, [r5, #0x28]
	bl      CallOverlayDataJumpTable
	cmp     r0, #0x1
	bne     branch_22605b4
	ldr     r0, [r5, #0x28]
	bl      Call_free2
	mov     r0, #0x0
	str     r0, [r5, #0x28]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22605b4
@ 0x22604f4

.thumb
branch_22604f4: @ 22604f4 :thumb
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0x31
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0xbc] @ 0x22605bc, (=0x22668f8)
	mov     r1, r5
	mov     r2, #0x6e
	bl      AllocAndInitOverlayData
	str     r0, [r5, #0x28]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22605b4
@ 0x2260510

.thumb
branch_2260510: @ 2260510 :thumb
	ldr     r0, [r5, #0x28]
	bl      CallOverlayDataJumpTable
	cmp     r0, #0x1
	bne     branch_22605b4
	ldr     r0, [r5, #0x28]
	bl      Call_free2
	mov     r0, #0x0
	str     r0, [r5, #0x28]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22605b4
@ 0x226052c

.thumb
branch_226052c: @ 226052c :thumb
	add     r6, #0x38
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_2260538
	bl      0x21d1f18
.thumb
branch_2260538: @ 2260538 :thumb
	mov     r0, r5
	mov     r1, #0x2
	add     r0, #0x31
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x74] @ 0x22605b8, (=0x2266908)
	mov     r1, r5
	mov     r2, #0x6e
	bl      AllocAndInitOverlayData
	str     r0, [r5, #0x28]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22605b4
@ 0x2260554

.thumb
branch_2260554: @ 2260554 :thumb
	ldr     r0, [r5, #0x28]
	bl      CallOverlayDataJumpTable
	cmp     r0, #0x1
	bne     branch_22605b4
	ldr     r0, [r5, #0x28]
	bl      Call_free2
	mov     r1, #0x0
	str     r1, [r5, #0x28]
	ldr     r0, [r5, #0x38]
	cmp     r0, #0x1
	bne     branch_2260572
	str     r1, [r4, #0x0]
	b       branch_22605b4
@ 0x2260572

.thumb
branch_2260572: @ 2260572 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22605b4
@ 0x226057a

.thumb
branch_226057a: @ 226057a :thumb
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_20388f4
	mov     r0, #0xde
	bl      Function_20364f0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22605b4
@ 0x2260590

.thumb
branch_2260590: @ 2260590 :thumb
	mov     r0, #0xde
	bl      Function_2036540
	cmp     r0, #0x1
	beq     branch_22605a8
	bl      Function_2035e18
	mov     r5, r0
	bl      Function_2032e64
	cmp     r5, r0
	bge     branch_22605b4
.thumb
branch_22605a8: @ 22605a8 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_22605b4
@ 0x22605b0

.thumb
branch_22605b0: @ 22605b0 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22605b4

.thumb
branch_22605b4: @ 22605b4 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22605b8

.word 0x2266908 @ 0x22605b8
.word 0x22668f8 @ 0x22605bc
.thumb
Function_22605c0: @ 22605c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      LoadOverlayData1c
	mov     r0, r4
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x6e
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22605d8

.thumb
Function_22605d8: @ 22605d8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	bl      Function_203608c
	mov     r5, #0x0
	mov     r4, r5
.thumb
branch_22605e6: @ 22605e6 :thumb
	mov     r0, r4
	bl      Function_2032ee8
	cmp     r0, #0x0
	beq     branch_22605fa
	add     r0, r6, r5
	add     r0, #0x2c
	strb    r4, [r0, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	b       branch_2260602
@ 0x22605fa

.thumb
branch_22605fa: @ 22605fa :thumb
	add     r1, r6, r4
	add     r1, #0x2c
	mov     r0, #0xff
	strb    r0, [r1, #0x0]
.thumb
branch_2260602: @ 2260602 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_22605e6
	mov     r0, r6
	add     r0, #0x30
	strb    r5, [r0, #0x0]
	mov     r0, r7
	add     r0, #0x38
	ldrb    r1, [r0, #0x0]
	mov     r0, r6
	add     r0, #0x3c
	strb    r1, [r0, #0x0]
	str     r7, [sp, #0x0]
	mov     r1, r7
	add     r1, #0x39
	ldr     r2, [r7, #0x34]
	add     r7, #0x38
	ldrb    r1, [r1, #0x0]
	ldrb    r3, [r7, #0x0]
	mov     r0, r6
	bl      0x225c700
	pop     {r3-r7,pc}
@ 0x2260630

.thumb
Function_2260630: @ 2260630 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x3d
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_226064e
	bl      0x225ca54
	cmp     r0, #0x1
	bne     branch_226064e
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x3d
	strb    r1, [r0, #0x0]
.thumb
branch_226064e: @ 226064e :thumb
	mov     r0, r4
	add     r0, #0x3d
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2260662
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	bne     branch_2260662
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2260662

.thumb
branch_2260662: @ 2260662 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2260666


.align 2, 0


.thumb
Function_2260668: @ 2260668 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r1, [r0, #0x0]
	ldr     r2, [pc, #0x2cc] @ 0x2260954, (=0xffffe0ff)
	and     r1, r2
	str     r1, [r0, #0x0]
	ldr     r1, [pc, #0x2cc] @ 0x2260958, (=0x4001000)
	ldr     r3, [r1, #0x0]
	and     r2, r3
	str     r2, [r1, #0x0]
	ldr     r3, [r0, #0x0]
	ldr     r2, [pc, #0x2c4] @ 0x226095c, (=0xffff1fff)
	and     r3, r2
	str     r3, [r0, #0x0]
	ldr     r3, [r1, #0x0]
	add     r0, #0x50
	and     r2, r3
	str     r2, [r1, #0x0]
	mov     r3, #0x10
	mov     r1, #0x1
	mov     r2, #0x3f
	str     r3, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2ac] @ 0x2260960, (=0x4001050)
	mov     r1, #0x8
	mov     r2, #0x1f
	mov     r3, #0xd
	blx     G2x_SetBlendAlpha_
	ldr     r1, [pc, #0x2a4] @ 0x2260964, (=0x3850)
	mov     r0, r4
	mov     r2, #0x6e
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	ldr     r2, [pc, #0x298] @ 0x2260964, (=0x3850)
	mov     r5, r0
	mov     r1, #0x0
	blx     MI_CpuFill8
	mov     r0, r5
	add     r0, #0xa8
	mov     r1, #0x6e
	mov     r2, #0x20
	bl      Function_20182cc
	mov     r0, #0x6e
	bl      Function_2260e14
	mov     r1, r5
	add     r1, #0x98
	str     r0, [r1, #0x0]
	mov     r0, r4
	bl      LoadPtrToOverWorldDataIn18
	str     r0, [r5, #0x0]
	mov     r0, r5
	bl      Function_22665fc
	mov     r0, #0x6e
	bl      MallocFill120
	mov     r1, r5
	add     r1, #0x8c
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_2003858
	mov     r0, r5
	add     r0, #0x8c
	mov     r2, #0x2
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	lsl     r2, r2, #8
	mov     r3, #0x6e
	bl      Function_2002f70
	mov     r0, r5
	add     r0, #0x8c
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	lsl     r2, r1, #9
	mov     r3, #0x6e
	bl      Function_2002f70
	mov     r0, r5
	add     r0, #0x8c
	mov     r2, #0x7
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	lsl     r2, r2, #6
	mov     r3, #0x6e
	bl      Function_2002f70
	mov     r0, r5
	add     r0, #0x8c
	mov     r2, #0x2
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	lsl     r2, r2, #8
	mov     r3, #0x6e
	bl      Function_2002f70
	mov     r0, #0x6e
	bl      Function_2018340
	str     r0, [r5, #0x2c]
	mov     r0, #0x40
	mov     r1, #0x6e
	bl      Function_201dbec
	mov     r0, #0x4
	mov     r1, #0x8
	bl      Function_2017dd4
	ldr     r0, [r5, #0x2c]
	bl      Function_22610d8
	bl      Function_201e3d8
	mov     r0, #0x4
	bl      Function_201e450
	mov     r0, r5
	bl      Function_2260ec0
	mov     r0, #0x6e
	bl      Function_200c6e4
	ldr     r1, [pc, #0x1dc] @ 0x2260968, (=0x22669a8)
	ldr     r2, [pc, #0x1dc] @ 0x226096c, (=0x226697c)
	mov     r3, #0x20
	str     r0, [r5, #0x24]
	bl      Function_200c73c
	ldr     r1, [pc, #0x1d8] @ 0x2260970, (=0x100010)
	mov     r0, #0x1
	bl      Function_200966c
	mov     r0, #0x1
	bl      Function_2009704
	ldr     r0, [r5, #0x24]
	bl      Function_200c704
	str     r0, [r5, #0x28]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r2, #0xe0
	bl      Function_200c7c0
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	ldr     r2, [pc, #0x1b8] @ 0x2260974, (=0x2266990)
	bl      Function_200cb30
	ldr     r0, [r5, #0x24]
	bl      Function_200c738
	mov     r2, #0x16
	mov     r1, #0x0
	lsl     r2, r2, #16
	bl      Function_200964c
	mov     r0, r5
	bl      Function_2261574
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, #0x9
	mov     r3, #0x6e
	bl      Function_200b144
	mov     r1, r5
	add     r1, #0x80
	str     r0, [r1, #0x0]
	mov     r0, #0x6e
	bl      Function_200b358
	mov     r1, r5
	add     r1, #0x84
	str     r0, [r1, #0x0]
	mov     r0, #0x5
	lsl     r0, r0, #6
	mov     r1, #0x6e
	bl      Function_2023790
	mov     r1, r5
	add     r1, #0x88
	str     r0, [r1, #0x0]
	mov     r0, #0x13
	mov     r1, #0x6e
	bl      Function_2012744
	mov     r1, r5
	add     r1, #0x90
	str     r0, [r1, #0x0]
	ldr     r1, [pc, #0x164] @ 0x2260978, (=0x1468)
	mov     r0, r5
	add     r1, r5, r1
	bl      Function_2265210
	mov     r0, #0xad
	mov     r1, #0x6e
	bl      LoadFromNARC_8
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2261a2c
	mov     r0, r5
	mov     r1, r4
	bl      Function_2261ac8
	mov     r0, r5
	bl      Function_2261280
	mov     r0, r5
	mov     r1, r4
	bl      Function_226168c
	mov     r0, r5
	mov     r1, r4
	bl      Function_2261940
	mov     r0, r5
	mov     r1, r4
	bl      Function_2261c2c
	mov     r0, r4
	bl      Call_FS_CloseFile
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0xe
	mov     r2, #0x6
	mov     r3, #0x6e
	bl      Function_2003050
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x50
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0xe
	mov     r2, #0x6
	mov     r3, #0x6e
	bl      Function_2003050
	mov     r0, r5
	bl      Function_22613ec
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_22614ac
	mov     r0, r5
	bl      Function_2261368
	bl      Function_2039734
	mov     r0, r5
	bl      Function_22626b0
	mov     r1, r5
	add     r1, #0xd4
	str     r0, [r1, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x6e
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x1b
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [pc, #0xac] @ 0x226097c, (=0x2260f7d)
	ldr     r2, [pc, #0xac] @ 0x2260980, (=0xea60)
	mov     r1, r5
	bl      AddTaskToTaskList1
	mov     r1, r5
	add     r1, #0x94
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x2260984, (=0x21bf6dc)
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
	bl      Function_2002ae4
	mov     r0, #0x0
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002b20
	ldr     r0, [r5, #0x28]
	bl      Function_200d9b0
	mov     r1, #0x6e
	bl      0x225cad4
	str     r0, [r5, #0x1c]
	bl      0x225cb74
	mov     r2, r0
	mov     r0, r5
	add     r0, #0x8c
	lsl     r2, r2, #20
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	lsr     r2, r2, #16
	mov     r3, #0x60
	bl      GetPaletteAdresses
	ldr     r0, [pc, #0x50] @ 0x2260988, (=0x2260da1)
	mov     r1, r5
	bl      SetMainLoopFunctionCall
	ldr     r0, [r5, #0x0]
	add     r0, #0x3c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_226094c
	mov     r0, #0x6e
	bl      0x21d1e74
.thumb
branch_226094c: @ 226094c :thumb
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2260952


.align 2


.word 0xffffe0ff @ 0x2260954
.word 0x4001000 @ 0x2260958
.word 0xffff1fff @ 0x226095c
.word 0x4001050 @ 0x2260960
.word 0x3850 @ 0x2260964
.word 0x22669a8 @ 0x2260968
.word 0x226697c @ 0x226096c
.word 0x100010 @ 0x2260970
.word 0x2266990 @ 0x2260974
.word 0x1468 @ 0x2260978
.word 0x2260f7d @ 0x226097c
.word 0xea60 @ 0x2260980
.word 0x21bf6dc @ 0x2260984
.word 0x2260da1 @ 0x2260988
.thumb
Function_226098c: @ 226098c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r1
	bl      LoadOverlayData1c
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	mov     r2, r1
	add     r2, #0x3d
	ldrb    r2, [r2, #0x0]
	cmp     r2, #0x1
	bne     branch_22609f6
	mov     r0, r1
	add     r0, #0x3e
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22609b2
	cmp     r0, #0x1
	b       branch_22609e0
@ 0x22609b2

.thumb
branch_22609b2: @ 22609b2 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_22609be
	bl      Function_200f2c0
.thumb
branch_22609be: @ 22609be :thumb
	mov     r0, #0x0
	bl      SetBrightnessOfBothScreens
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x214] @ 0x2260be0, (=0xffff1fff)
	and     r0, r1
	str     r0, [r2, #0x0]
	ldr     r1, [r4, #0x0]
	mov     r0, r1
	add     r0, #0x3e
	ldrb    r0, [r0, #0x0]
	add     r1, #0x3e
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r1, #0x0]
	b       branch_22609f0
@ 0x22609e0

.thumb
branch_22609e0: @ 22609e0 :thumb
	mov     r0, r1
	bl      0x225ca98
	cmp     r0, #0x1
	bne     branch_22609f0
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x22609f0

.thumb
branch_22609f0: @ 22609f0 :thumb
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x22609f6

.thumb
branch_22609f6: @ 22609f6 :thumb
	ldr     r2, [r5, #0x0]
	cmp     r2, #0x6
	bhi     branch_2260a60
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x2260a08

Jumppoints_2260a08:
.hword branch_2260a16 - Jumppoints_2260a08 - 2
.hword branch_2260a26 - Jumppoints_2260a08 - 2
.hword branch_2260a34 - Jumppoints_2260a08 - 2
.hword branch_2260a46 - Jumppoints_2260a08 - 2
.hword branch_2260a56 - Jumppoints_2260a08 - 2
.hword branch_2260a6e - Jumppoints_2260a08 - 2
.hword branch_2260bba - Jumppoints_2260a08 - 2
.thumb
branch_2260a16: @ 2260a16 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_2260a60
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2260bc8
@ 0x2260a26

.thumb
branch_2260a26: @ 2260a26 :thumb
	mov     r0, #0xd3
	bl      Function_20364f0
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2260bc8
@ 0x2260a34

.thumb
branch_2260a34: @ 2260a34 :thumb
	mov     r0, #0xd3
	bl      Function_2036540
	cmp     r0, #0x1
	bne     branch_2260a60
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2260bc8
@ 0x2260a46

.thumb
branch_2260a46: @ 2260a46 :thumb
	bl      Function_22666a4
	cmp     r0, #0x1
	bne     branch_2260a60
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2260bc8
@ 0x2260a56

.thumb
branch_2260a56: @ 2260a56 :thumb
	add     r1, #0x30
	ldrb    r1, [r1, #0x0]
	ldr     r2, [r4, #0x8]
	cmp     r2, r1
	bcs     branch_2260a62
.thumb
branch_2260a60: @ 2260a60 :thumb
	b       branch_2260bc8
@ 0x2260a62

.thumb
branch_2260a62: @ 2260a62 :thumb
	bl      Function_226200c
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2260bc8
@ 0x2260a6e

.thumb
branch_2260a6e: @ 2260a6e :thumb
	mov     r1, #0xbf
	lsl     r1, r1, #6
	ldr     r1, [r4, r1]
	cmp     r1, #0x1
	bne     branch_2260a9a
	bl      Function_2266150
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x6e
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
.thumb
branch_2260a9a: @ 2260a9a :thumb
	mov     r0, r4
	bl      Function_2262664
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x7
	bhi     branch_2260b78
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2260ab2

Jumppoints_2260ab2:
.hword branch_2260b78 - Jumppoints_2260ab2 - 2
.hword branch_2260ac2 - Jumppoints_2260ab2 - 2
.hword branch_2260b0e - Jumppoints_2260ab2 - 2
.hword branch_2260b28 - Jumppoints_2260ab2 - 2
.hword branch_2260b34 - Jumppoints_2260ab2 - 2
.hword branch_2260b78 - Jumppoints_2260ab2 - 2
.hword branch_2260b5e - Jumppoints_2260ab2 - 2
.hword branch_2260b6a - Jumppoints_2260ab2 - 2
.thumb
branch_2260ac2: @ 2260ac2 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r2, [r0, #0x0]
	ldr     r1, [pc, #0x114] @ 0x2260be0, (=0xffff1fff)
	mov     r3, r0
	and     r2, r1
	lsr     r1, r0, #12
	orr     r1, r2
	str     r1, [r0, #0x0]
	mov     r1, r0
	ldr     r2, [pc, #0x10c] @ 0x2260be4, (=0x44c)
	add     r1, #0x42
	strh    r2, [r1, #0x0]
	mov     r1, r0
	ldr     r2, [pc, #0x108] @ 0x2260be8, (=0xa8b8)
	add     r1, #0x46
	strh    r2, [r1, #0x0]
	add     r3, #0x48
	ldrh    r2, [r3, #0x0]
	ldr     r1, [pc, #0x100] @ 0x2260bec, (=0xffffc0ff)
	and     r2, r1
	lsr     r1, r0, #14
	orr     r1, r2
	strh    r1, [r3, #0x0]
	add     r0, #0x4a
	ldrh    r2, [r0, #0x0]
	mov     r1, #0x3f
	bic     r2, r1
	mov     r1, #0x1f
	orr     r2, r1
	mov     r1, #0x20
	orr     r1, r2
	strh    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_2266210
	mov     r0, #0x2
	str     r0, [r4, #0x20]
.thumb
branch_2260b0e: @ 2260b0e :thumb
	ldr     r1, [pc, #0xe0] @ 0x2260bf0, (=0x174c)
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2266274
	cmp     r0, #0x1
	bne     branch_2260b78
	ldr     r0, [pc, #0xd4] @ 0x2260bf4, (=0x1768)
	mov     r1, #0x1
	str     r1, [r4, r0]
	mov     r0, #0x0
	str     r0, [r4, #0x20]
	b       branch_2260b78
@ 0x2260b28

.thumb
branch_2260b28: @ 2260b28 :thumb
	ldr     r0, [r4, #0x1c]
	bl      0x225cb8c
	mov     r0, #0x4
	str     r0, [r4, #0x20]
	b       branch_2260b78
@ 0x2260b34

.thumb
branch_2260b34: @ 2260b34 :thumb
	ldr     r0, [r4, #0x1c]
	bl      0x225cbe0
	cmp     r0, #0x1
	bne     branch_2260b78
	ldr     r0, [pc, #0xb8] @ 0x2260bf8, (=0x2fb8)
	mov     r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [pc, #0xb4] @ 0x2260bfc, (=0x1559)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r0, #0x5
	str     r0, [r4, #0x20]
	mov     r0, r4
	bl      Function_22613b8
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22614ac
	b       branch_2260b78
@ 0x2260b5e

.thumb
branch_2260b5e: @ 2260b5e :thumb
	ldr     r0, [r4, #0x1c]
	bl      0x225cbb0
	mov     r0, #0x7
	str     r0, [r4, #0x20]
	b       branch_2260b78
@ 0x2260b6a

.thumb
branch_2260b6a: @ 2260b6a :thumb
	ldr     r0, [r4, #0x1c]
	bl      0x225cbe0
	cmp     r0, #0x1
	bne     branch_2260b78
	mov     r0, #0x8
	str     r0, [r4, #0x20]
.thumb
branch_2260b78: @ 2260b78 :thumb
	mov     r0, r4
	bl      Function_22623b0
	mov     r0, r4
	bl      Function_2262270
	ldr     r0, [pc, #0x78] @ 0x2260c00, (=0x2fbc)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	beq     branch_2260bc8
	mov     r0, r4
	bl      Function_2262200
	cmp     r0, #0x1
	bne     branch_2260b9c
	ldr     r0, [pc, #0x6c] @ 0x2260c04, (=0x2fc4)
	mov     r1, #0xd
	str     r1, [r4, r0]
.thumb
branch_2260b9c: @ 2260b9c :thumb
	ldr     r1, [pc, #0x58] @ 0x2260bf8, (=0x2fb8)
	ldr     r0, [r4, r1]
	cmp     r0, #0x1
	bne     branch_2260bc8
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r2, [r4, r0]
	ldr     r0, [pc, #0x5c] @ 0x2260c08, (=0x516)
	cmp     r2, r0
	bhi     branch_2260bc8
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r4, r0]
	add     r2, r0, #0x1
	.hword  0x1f08 @ sub r0, r1, #0x4
	str     r2, [r4, r0]
	b       branch_2260bc8
@ 0x2260bba

.thumb
branch_2260bba: @ 2260bba :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_2260bc8
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x2260bc8

.thumb
branch_2260bc8: @ 2260bc8 :thumb
	mov     r0, r4
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bl      Function_22626ac
	ldr     r0, [pc, #0x38] @ 0x2260c0c, (=0x384c)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2260be0

.word 0xffff1fff @ 0x2260be0
.word 0x44c @ 0x2260be4
.word 0xa8b8 @ 0x2260be8
.word 0xffffc0ff @ 0x2260bec
.word 0x174c @ 0x2260bf0
.word 0x1768 @ 0x2260bf4
.word 0x2fb8 @ 0x2260bf8
.word 0x1559 @ 0x2260bfc
.word 0x2fbc @ 0x2260c00
.word 0x2fc4 @ 0x2260c04
.word 0x516 @ 0x2260c08
.word 0x384c @ 0x2260c0c
.thumb
Function_2260c10: @ 2260c10 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	ldr     r0, [pc, #0x178] @ 0x2260d94, (=0x2fd0)
	ldr     r1, [r4, r0]
	ldr     r0, [r4, #0x0]
	str     r1, [r0, #0x24]
	ldr     r0, [r4, #0x1c]
	bl      0x225cb38
	mov     r0, r4
	bl      Function_22641e4
	mov     r0, r4
	bl      Function_2264508
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, r4
	bl      Function_22615e0
	mov     r0, r4
	bl      Function_22618e8
	mov     r0, r4
	bl      Function_22619f8
	mov     r0, r4
	bl      Function_2261ac4
	mov     r0, r4
	bl      Function_2261c28
	mov     r0, r4
	bl      Function_2261dd0
	mov     r1, r4
	add     r1, #0xd4
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	bl      Function_2262760
	mov     r5, r4
	mov     r6, #0x0
	add     r5, #0x30
.thumb
branch_2260c72: @ 2260c72 :thumb
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x10
	cmp     r6, #0x5
	blt     branch_2260c72
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x1
	bl      Function_2019044
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x2
	bl      Function_2019044
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x3
	bl      Function_2019044
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x4
	bl      Function_2019044
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x5
	bl      Function_2019044
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x6
	bl      Function_2019044
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x7
	bl      Function_2019044
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	bl      Function_20127bc
	ldr     r0, [r4, #0x24]
	ldr     r1, [r4, #0x28]
	bl      Function_200d0b0
	ldr     r0, [r4, #0x24]
	bl      Function_200c8d4
	bl      Function_201dc3c
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2002fa0
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_2002fa0
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	bl      Function_2002fa0
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	bl      Function_2002fa0
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	bl      Call_free1
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	bl      Function_20237bc
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	bl      Function_200b3f0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_200b190
	ldr     r0, [r4, #0x2c]
	bl      free
	mov     r0, r4
	bl      Function_2260f64
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bl      Call_RemoveTaskFromTaskList
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x2260d98, (=0xffff1fff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x3c] @ 0x2260d9c, (=0x4001000)
	add     r4, #0x98
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	ldr     r0, [r4, #0x0]
	bl      Function_2260eb8
	bl      Function_201e530
	mov     r0, r7
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x0
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002ae4
	mov     r0, #0x0
	bl      Function_2002b20
	bl      Function_2039794
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2260d92


.align 2


.word 0x2fd0 @ 0x2260d94
.word 0xffff1fff @ 0x2260d98
.word 0x4001000 @ 0x2260d9c
.thumb
Function_2260da0: @ 2260da0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0xd4
	ldr     r1, [r1, #0x0]
	bl      Function_2262950
	bl      Function_201dcac
	bl      Function_200c800
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	bl      Function_2003694
	ldr     r0, [pc, #0x40] @ 0x2260e04, (=0x1454)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x1
	bne     branch_2260dd8
	mov     r0, #0x7
	mov     r1, #0x1
	bl      Function_2019120
	ldr     r0, [pc, #0x30] @ 0x2260e04, (=0x1454)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	b       branch_2260dee
@ 0x2260dd8

.thumb
branch_2260dd8: @ 2260dd8 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	ldrb    r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_2260dee
	mov     r0, #0x7
	mov     r1, #0x0
	bl      Function_2019120
	ldr     r0, [pc, #0x1c] @ 0x2260e08, (=0x1455)
	mov     r1, #0x0
	strb    r1, [r4, r0]
.thumb
branch_2260dee: @ 2260dee :thumb
	ldr     r0, [r4, #0x2c]
	bl      Function_201c2b8
	ldr     r3, [pc, #0x14] @ 0x2260e0c, (=0x27e0000)
	ldr     r1, [pc, #0x18] @ 0x2260e10, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x2260e02


.align 2


.word 0x1454 @ 0x2260e04
.word 0x1455 @ 0x2260e08
.word 0x27e0000 @ 0x2260e0c
.word 0x3ff8 @ 0x2260e10
.thumb
Function_2260e14: @ 2260e14 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x10] @ 0x2260e30, (=0x2260e35)
	mov     r2, #0x1
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	mov     r3, r1
	bl      Function_2024220
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2260e2e


.align 2


.word 0x2260e35 @ 0x2260e30
.thumb
Function_2260e34: @ 2260e34 :thumb
	push    {r3,lr}
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r0, [pc, #0x60] @ 0x2260ea0, (=0x4000008)
	mov     r1, #0x3
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strh    r1, [r0, #0x0]
	add     r0, #0x58
	ldrh    r2, [r0, #0x0]
	ldr     r1, [pc, #0x50] @ 0x2260ea4, (=0xffffcffd)
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
	ldr     r2, [pc, #0x40] @ 0x2260ea8, (=0xcffb)
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
	ldr     r2, [pc, #0x1c] @ 0x2260eac, (=0x7fff)
	mov     r1, r0
	mov     r3, #0x3f
	str     r0, [sp, #0x0]
	blx     G3X_SetClearColor
	ldr     r1, [pc, #0x14] @ 0x2260eb0, (=0xbfff0000)
	ldr     r0, [pc, #0x18] @ 0x2260eb4, (=0x4000580)
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x2260ea0

.word 0x4000008 @ 0x2260ea0
.word 0xffffcffd @ 0x2260ea4
.word 0xcffb @ 0x2260ea8
.word 0x7fff @ 0x2260eac
.word 0xbfff0000 @ 0x2260eb0
.word 0x4000580 @ 0x2260eb4
.thumb
Function_2260eb8: @ 2260eb8 :thumb
	ldr     r3, [pc, #0x0] @ 0x2260ebc, (=0x20242c5)
	bx      r3
@ 0x2260ebc

.word 0x20242c5 @ 0x2260ebc
.thumb
Function_2260ec0: @ 2260ec0 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x90] @ 0x2260f58, (=0x2266938)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x6e
	bl      Function_20203ac
	mov     r1, r4
	add     r1, #0x9c
	str     r0, [r1, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x7b
	str     r0, [sp, #0x8]
	ldr     r2, [pc, #0x68] @ 0x2260f5c, (=0x2266918)
	ldr     r3, [pc, #0x6c] @ 0x2260f60, (=0xfa4)
	add     r0, sp, #0xc
	lsl     r1, r1, #12
	bl      Function_20206d0
	mov     r2, r4
	add     r2, #0x9c
	mov     r0, #0x1
	mov     r1, #0xe1
	ldr     r2, [r2, #0x0]
	lsl     r0, r0, #12
	lsl     r1, r1, #14
	bl      Function_20206bc
	mov     r0, r4
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bl      Function_20203d4
	mov     r0, #0x6e
	bl      Function_20203ac
	mov     r1, r4
	add     r1, #0xa0
	str     r0, [r1, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x5
	str     r0, [sp, #0x8]
	ldr     r2, [pc, #0x24] @ 0x2260f5c, (=0x2266918)
	ldr     r3, [pc, #0x24] @ 0x2260f60, (=0xfa4)
	add     r0, sp, #0xc
	lsl     r1, r1, #16
	bl      Function_20206d0
	add     r4, #0xa0
	mov     r0, #0x1
	mov     r1, #0xe1
	ldr     r2, [r4, #0x0]
	lsl     r0, r0, #12
	lsl     r1, r1, #14
	bl      Function_20206bc
	add     sp, #0x18
	pop     {r4,pc}
@ 0x2260f56


.align 2


.word 0x2266938 @ 0x2260f58
.word 0x2266918 @ 0x2260f5c
.word 0xfa4 @ 0x2260f60
.thumb
Function_2260f64: @ 2260f64 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bl      Call_free5
	add     r4, #0xa0
	ldr     r0, [r4, #0x0]
	bl      Call_free5
	pop     {r4,pc}
@ 0x2260f7a


.align 2, 0


.thumb
Function_2260f7c: @ 2260f7c :thumb
	push    {r4,lr}
	add     sp, #-0x40
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
	mov     r4, r1
	blx     MTX_Identity33_
	ldr     r1, [pc, #0x114] @ 0x22610b0, (=0x15a8)
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2265f34
	ldr     r1, [pc, #0x10c] @ 0x22610b4, (=0x1468)
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2265254
	ldr     r1, [pc, #0x108] @ 0x22610b8, (=0x1560)
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2265c1c
	mov     r0, r4
	bl      Function_2263ef8
	ldr     r2, [pc, #0xfc] @ 0x22610bc, (=0x1428)
	ldr     r1, [r4, #0x2c]
	mov     r0, r4
	add     r2, r4, r2
	bl      Function_2263d80
	mov     r0, r4
	bl      Function_2264560
	mov     r0, r4
	bl      Function_2261f3c
	mov     r0, r4
	bl      Function_2264930
	bl      Call_G3X_Reset
	mov     r0, r4
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bl      Function_20203d4
	mov     r1, r4
	add     r1, #0x9c
	ldr     r1, [r1, #0x0]
	mov     r0, #0x1
	bl      Function_2020854
	bl      Function_20203ec
	mov     r0, #0x0
	ldr     r2, [pc, #0xc0] @ 0x22610c0, (=0xfffff000)
	mov     r1, r0
	mov     r3, r0
	blx     Function_20af51c
	ldr     r1, [pc, #0xbc] @ 0x22610c4, (=0x739c)
	mov     r0, #0x0
	blx     Function_20af558
	ldr     r0, [pc, #0xb8] @ 0x22610c8, (=0x7fff)
	mov     r2, #0x0
	mov     r1, r0
	blx     Function_20af56c
	ldr     r0, [pc, #0xac] @ 0x22610c8, (=0x7fff)
	mov     r2, #0x0
	mov     r1, r0
	blx     Function_20af590
	add     r0, sp, #0x28
	blx     Function_20af4bc
	ldr     r1, [pc, #0xa0] @ 0x22610cc, (=0x21c5b48)
	add     r0, sp, #0x4
	blx     MI_Copy36B
	ldr     r1, [pc, #0x9c] @ 0x22610d0, (=0x21c5b0c)
	mov     r0, #0xa4
	ldr     r2, [r1, #0x7c]
	bic     r2, r0
	add     r0, sp, #0x34
	str     r2, [r1, #0x7c]
	blx     Function_20af4ec
	blx     Function_20af480
	mov     r1, r4
	add     r1, #0xd4
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	bl      Function_2262798
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     Function_20b275c
	ldr     r0, [pc, #0x78] @ 0x22610d4, (=0x13b0)
	add     r0, r4, r0
	bl      Function_2017294
	mov     r0, r4
	add     r0, #0xe8
	bl      Function_2017294
	mov     r0, r4
	bl      Function_2261fa4
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x0
	str     r2, [sp, #0x0]
	blx     Function_20b275c
	bl      Call_G3X_Reset
	bl      Function_201469c
	cmp     r0, #0x0
	ble     branch_226108c
	bl      Call_G3X_Reset
.thumb
branch_226108c: @ 226108c :thumb
	bl      Function_20146c0
	ldr     r0, [r4, #0x28]
	bl      Function_200c7ec
	bl      Function_200c808
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20241bc
	ldr     r1, [r4, #0x2c]
	mov     r0, #0x6e
	bl      Function_2038a1c
	add     sp, #0x40
	pop     {r4,pc}
@ 0x22610ae


.align 2


.word 0x15a8 @ 0x22610b0
.word 0x1468 @ 0x22610b4
.word 0x1560 @ 0x22610b8
.word 0x1428 @ 0x22610bc
.word 0xfffff000 @ 0x22610c0
.word 0x739c @ 0x22610c4
.word 0x7fff @ 0x22610c8
.word 0x21c5b48 @ 0x22610cc
.word 0x21c5b0c @ 0x22610d0
.word 0x13b0 @ 0x22610d4
.thumb
Function_22610d8: @ 22610d8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x8c
	mov     r5, r0
	bl      Function_201ff00
	ldr     r4, [pc, #0x188] @ 0x226126c, (=0x22669c8)
	add     r3, sp, #0x10
	mov     r2, #0x5
.thumb
branch_22610e8: @ 22610e8 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_22610e8
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
	ldr     r4, [pc, #0x140] @ 0x2261270, (=0x2266944)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      Function_2018368
	ldr     r4, [pc, #0x130] @ 0x2261274, (=0x2266a40)
	add     r3, sp, #0x38
	mov     r2, #0xa
.thumb
branch_2261148: @ 2261148 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2261148
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	mov     r0, r5
	add     r2, sp, #0x38
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2019ebc
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, r5
	mov     r1, #0x2
	add     r2, sp, #0x54
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2019ebc
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, r5
	mov     r1, #0x3
	add     r2, sp, #0x70
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2019ebc
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2019184
	mov     r1, #0x3
	mov     r0, r5
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2019184
	ldr     r1, [pc, #0x9c] @ 0x2261278, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	mov     r0, #0x2
	orr     r0, r2
	strh    r0, [r1, #0x0]
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r4, #0x0
	ldr     r6, [pc, #0x88] @ 0x226127c, (=0x2266a94)
	mov     r7, r4
.thumb
branch_22611f4: @ 22611f4 :thumb
	cmp     r4, #0x3
	bge     branch_226120a
	add     r1, r4, #0x4
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, r6
	mov     r3, r7
	bl      Function_20183c4
	b       branch_226121a
@ 0x226120a

.thumb
branch_226120a: @ 226120a :thumb
	add     r1, r4, #0x4
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	mov     r2, r6
	mov     r3, #0x1
	bl      Function_20183c4
.thumb
branch_226121a: @ 226121a :thumb
	add     r0, r4, #0x4
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6e
	bl      Function_2019690
	add     r1, r4, #0x4
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_2019ebc
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
	bcc     branch_22611f4
	mov     r0, #0x7
	mov     r1, #0x0
	bl      Function_2019120
	add     sp, #0x8c
	pop     {r4-r7,pc}
@ 0x226126a


.align 2


.word 0x22669c8 @ 0x226126c
.word 0x2266944 @ 0x2261270
.word 0x2266a40 @ 0x2261274
.word 0x4000008 @ 0x2261278
.word 0x2266a94 @ 0x226127c
.thumb
Function_2261280: @ 2261280 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x14
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	mov     r0, #0x3
	lsl     r0, r0, #8
	str     r0, [sp, #0x10]
	mov     r1, r4
	ldr     r0, [r4, #0x2c]
	add     r1, #0x30
	mov     r2, #0x1
	mov     r3, #0xb
	bl      Function_201a7e8
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r0, [sp, #0xc]
	mov     r0, #0xc5
	lsl     r0, r0, #2
	str     r0, [sp, #0x10]
	mov     r1, r4
	ldr     r0, [r4, #0x2c]
	add     r1, #0x40
	mov     r2, #0x4
	mov     r3, #0x12
	bl      Function_201a7e8
	mov     r0, #0xe
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r0, [sp, #0xc]
	mov     r0, #0xca
	lsl     r0, r0, #2
	str     r0, [sp, #0x10]
	mov     r1, r4
	ldr     r0, [r4, #0x2c]
	add     r1, #0x50
	mov     r2, #0x4
	mov     r3, #0x15
	bl      Function_201a7e8
	mov     r0, #0xe
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r0, [sp, #0xc]
	mov     r0, #0xcf
	lsl     r0, r0, #2
	str     r0, [sp, #0x10]
	mov     r1, r4
	ldr     r0, [r4, #0x2c]
	add     r1, #0x60
	mov     r2, #0x4
	mov     r3, #0x1
	bl      Function_201a7e8
	mov     r0, r4
	add     r0, #0x40
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, r4
	add     r0, #0x50
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, r4
	add     r0, #0x60
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r2, #0x4
	mov     r1, r4
	str     r2, [sp, #0x8]
	mov     r0, #0x5
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x1c] @ 0x2261364, (=0x359)
	add     r1, #0x70
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x2c]
	mov     r3, #0x2
	bl      Function_201a7e8
	add     r4, #0x70
	mov     r0, r4
	mov     r1, #0xf
	bl      Function_201ada4
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2261362


.align 2


.word 0x359 @ 0x2261364
.thumb
Function_2261368: @ 2261368 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r2, #0x35
	mov     r5, r0
	add     r0, #0x70
	mov     r1, #0x1
	lsl     r2, r2, #4
	mov     r3, #0x6
	bl      Function_200dc48
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	bl      Function_200b1ec
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x24] @ 0x22613b4, (=0x1020f)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x70
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc
	add     r5, #0x70
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22613b4

.word 0x1020f @ 0x22613b4
.thumb
Function_22613b8: @ 22613b8 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x12
	str     r0, [sp, #0x0]
	mov     r0, #0x1e
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x2c]
	ldr     r2, [pc, #0x14] @ 0x22613e8, (=0x3ff)
	mov     r1, #0x4
	mov     r3, #0x1
	bl      Function_2019cb8
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x4
	bl      Function_201c3c0
	add     sp, #0x10
	pop     {r4,pc}
@ 0x22613e6


.align 2


.word 0x3ff @ 0x22613e8
.thumb
Function_22613ec: @ 22613ec :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	bl      Function_203608c
	str     r0, [sp, #0x10]
	mov     r0, r5
	str     r0, [sp, #0x18]
	add     r0, #0x30
	mov     r4, #0x0
	str     r0, [sp, #0x18]
	b       branch_2261490
@ 0x2261404

.thumb
branch_2261404: @ 2261404 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r2, [sp, #0x10]
	add     r1, r0, r4
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	cmp     r2, r1
	beq     branch_226148e
	bl      0x225c7cc
	mov     r1, #0x6e
	bl      Function_2025f04
	ldr     r1, [r5, #0x0]
	mov     r6, r0
	add     r1, r1, r4
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_22622c4
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x0]
	add     r1, r0, r4
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	bl      0x225c7a4
	cmp     r0, #0x1
	bne     branch_2261442
	ldr     r7, [pc, #0x60] @ 0x22614a0, (=0x7080f)
	b       branch_2261444
@ 0x2261442

.thumb
branch_2261442: @ 2261442 :thumb
	ldr     r7, [pc, #0x60] @ 0x22614a4, (=0x1020f)
.thumb
branch_2261444: @ 2261444 :thumb
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	bl      Function_2002d7c
	lsr     r1, r0, #31
	add     r1, r0, r1
	asr     r2, r1, #1
	mov     r1, #0x28
	sub     r3, r1, r2
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_2261460
	.hword  0x1e5b @ sub r3, r3, #0x1
.thumb
branch_2261460: @ 2261460 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r7, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x0]
	mov     r2, r6
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x30] @ 0x22614a8, (=0x2266968)
	add     r1, r0, r1
	ldr     r0, [sp, #0x14]
	ldrb    r0, [r0, r1]
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x18]
	add     r0, r0, r1
	mov     r1, #0x0
	bl      Function_201d78c
	mov     r0, r6
	bl      free
.thumb
branch_226148e: @ 226148e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_2261490: @ 2261490 :thumb
	ldr     r0, [r5, #0x0]
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	cmp     r4, r0
	blt     branch_2261404
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x226149e


.align 2


.word 0x7080f @ 0x22614a0
.word 0x1020f @ 0x22614a4
.word 0x2266968 @ 0x22614a8
.thumb
Function_22614ac: @ 22614ac :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	cmp     r1, #0x1
	bne     branch_2261504
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, #0xc
	str     r0, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x2c]
	ldr     r2, [pc, #0xa4] @ 0x2261570, (=0x3ff)
	mov     r3, #0x0
	bl      Function_2019cb8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xc
	str     r0, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	mov     r3, #0x11
	str     r3, [sp, #0xc]
	ldr     r0, [r4, #0x2c]
	ldr     r2, [pc, #0x8c] @ 0x2261570, (=0x3ff)
	bl      Function_2019cb8
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, #0xc
	str     r0, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x2c]
	ldr     r2, [pc, #0x74] @ 0x2261570, (=0x3ff)
	mov     r3, #0x14
	bl      Function_2019cb8
	b       branch_2261562
@ 0x2261504

.thumb
branch_2261504: @ 2261504 :thumb
	ldr     r0, [r4, #0x0]
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	beq     branch_2261514
	cmp     r0, #0x3
	beq     branch_226154a
	b       branch_2261562
@ 0x2261514

.thumb
branch_2261514: @ 2261514 :thumb
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, #0xc
	str     r0, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x2c]
	ldr     r2, [pc, #0x48] @ 0x2261570, (=0x3ff)
	mov     r3, #0x0
	bl      Function_2019cb8
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, #0xc
	str     r0, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x2c]
	ldr     r2, [pc, #0x2c] @ 0x2261570, (=0x3ff)
	mov     r3, #0x14
	bl      Function_2019cb8
	b       branch_2261562
@ 0x226154a

.thumb
branch_226154a: @ 226154a :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xc
	str     r0, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	mov     r3, #0x11
	str     r3, [sp, #0xc]
	ldr     r0, [r4, #0x2c]
	ldr     r2, [pc, #0x10] @ 0x2261570, (=0x3ff)
	bl      Function_2019cb8
.thumb
branch_2261562: @ 2261562 :thumb
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x4
	bl      Function_201c3c0
	add     sp, #0x10
	pop     {r4,pc}
@ 0x226156e


.align 2


.word 0x3ff @ 0x2261570
.thumb
Function_2261574: @ 2261574 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      Function_2014000
	mov     r1, #0x12
	mov     r0, #0x6e
	lsl     r1, r1, #10
	bl      malloc
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x6e
	str     r0, [sp, #0x4]
	mov     r3, #0x12
	ldr     r0, [pc, #0x40] @ 0x22615d8, (=0x2261645)
	ldr     r1, [pc, #0x44] @ 0x22615dc, (=0x2261669)
	lsl     r3, r3, #10
	bl      Function_2014014
	mov     r1, r4
	add     r1, #0xa4
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	bl      Function_2014784
	mov     r2, r0
	mov     r0, #0x1
	mov     r1, #0xe1
	lsl     r0, r0, #12
	lsl     r1, r1, #14
	bl      Function_20206bc
	mov     r0, #0xbe
	mov     r1, #0x0
	mov     r2, #0x6e
	bl      Call2_LoadFromNARC_2
	add     r4, #0xa4
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	mov     r2, #0xa
	mov     r3, #0x1
	bl      Function_20144cc
	add     sp, #0x8
	pop     {r4,pc}
@ 0x22615d8

.word 0x2261645 @ 0x22615d8
.word 0x2261669 @ 0x22615dc
.thumb
Function_22615e0: @ 22615e0 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	bl      Function_2014730
	add     r4, #0xa4
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_201411c
	mov     r0, r5
	bl      free
	pop     {r3-r5,pc}
@ 0x22615fe


.align 2, 0


.thumb
Function_2261600: @ 2261600 :thumb
	push    {r3,lr}
	mov     r3, r0
	cmp     r1, #0x0
	beq     branch_2261612
	cmp     r1, #0x1
	beq     branch_2261620
	cmp     r1, #0x2
	beq     branch_226162e
	b       branch_226163c
@ 0x2261612

.thumb
branch_2261612: @ 2261612 :thumb
	add     r0, #0xa4
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	mov     r2, r1
	bl      Function_20146f4
	pop     {r3,pc}
@ 0x2261620

.thumb
branch_2261620: @ 2261620 :thumb
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_20146f4
	pop     {r3,pc}
@ 0x226162e

.thumb
branch_226162e: @ 226162e :thumb
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_20146f4
	pop     {r3,pc}
@ 0x226163c

.thumb
branch_226163c: @ 226163c :thumb
	bl      ErrorHandling
	pop     {r3,pc}
@ 0x2261642


.align 2, 0


.thumb
Function_2261644: @ 2261644 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x1c] @ 0x2261664, (=0x2100dec)
	mov     r2, #0x0
	ldr     r3, [r3, #0x0]
	blx     r3
	mov     r4, r0
	bne     branch_2261656
	bl      ErrorHandling
.thumb
branch_2261656: @ 2261656 :thumb
	mov     r0, r4
	bl      Function_20145b4
	lsl     r0, r4, #16
	lsr     r0, r0, #13
	pop     {r4,pc}
@ 0x2261662


.align 2


.word 0x2100dec @ 0x2261664
.thumb
Function_2261668: @ 2261668 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x1c] @ 0x2261688, (=0x2100df4)
	mov     r2, #0x1
	ldr     r3, [r3, #0x0]
	blx     r3
	mov     r4, r0
	bne     branch_226167a
	bl      ErrorHandling
.thumb
branch_226167a: @ 226167a :thumb
	mov     r0, r4
	bl      Function_20145f4
	lsl     r0, r4, #16
	lsr     r0, r0, #13
	pop     {r4,pc}
@ 0x2261686


.align 2


.word 0x2100df4 @ 0x2261688
.thumb
Function_226168c: @ 226168c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r5, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x220] @ 0x22618c4, (=0x2713)
	str     r1, [sp, #0x2c]
	str     r0, [sp, #0x14]
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	ldr     r2, [r5, #0x24]
	ldr     r3, [r5, #0x28]
	mov     r1, #0x2
	bl      Function_200cdc4
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	bl      Function_200b1ec
	mov     r6, r0
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0x1e
	sub     r0, r1, r0
	lsr     r0, r0, #1
	add     r4, r0, #0x6
	mov     r2, r5
	ldr     r3, [pc, #0x1ec] @ 0x22618c8, (=0x169c)
	str     r6, [sp, #0x0]
	mov     r0, #0x0
	ldr     r1, [pc, #0x1e8] @ 0x22618cc, (=0xe0f00)
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r1, [pc, #0x1dc] @ 0x22618c4, (=0x2713)
	str     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	mov     r1, r4
	add     r1, #0x24
	str     r1, [sp, #0x14]
	mov     r1, #0xa8
	str     r1, [sp, #0x18]
	str     r0, [sp, #0x1c]
	mov     r0, #0x1
	str     r0, [sp, #0x20]
	mov     r0, #0xc
	str     r0, [sp, #0x24]
	mov     r0, #0x2
	str     r0, [sp, #0x28]
	add     r2, #0x90
	ldr     r0, [r5, #0x2c]
	ldr     r1, [r5, #0x28]
	ldr     r2, [r2, #0x0]
	add     r3, r5, r3
	bl      Function_2265db8
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_200b1ec
	str     r0, [sp, #0x30]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_200b1ec
	str     r0, [sp, #0x38]
	mov     r0, #0x0
	str     r0, [sp, #0x34]
	ldr     r0, [pc, #0x194] @ 0x22618d0, (=0x15ac)
	add     r7, r5, r0
	add     r0, #0x14
	add     r6, r5, r0
.thumb
branch_2261740: @ 2261740 :thumb
	ldr     r0, [sp, #0x30]
	mov     r2, r5
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x180] @ 0x22618cc, (=0xe0f00)
	add     r2, #0x90
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x16c] @ 0x22618c4, (=0x2713)
	mov     r3, r7
	str     r0, [sp, #0x10]
	str     r4, [sp, #0x14]
	mov     r0, #0xa8
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	mov     r0, #0x3
	str     r0, [sp, #0x20]
	mov     r0, #0xc
	str     r0, [sp, #0x24]
	mov     r0, #0xa
	str     r0, [sp, #0x28]
	ldr     r0, [r5, #0x2c]
	ldr     r1, [r5, #0x28]
	ldr     r2, [r2, #0x0]
	bl      Function_2265db8
	ldr     r0, [sp, #0x38]
	mov     r2, r5
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x144] @ 0x22618cc, (=0xe0f00)
	add     r2, #0x90
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x134] @ 0x22618c4, (=0x2713)
	mov     r3, r6
	str     r0, [sp, #0x10]
	str     r4, [sp, #0x14]
	mov     r0, #0xa8
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	mov     r0, #0x3
	str     r0, [sp, #0x20]
	mov     r0, #0xc
	str     r0, [sp, #0x24]
	mov     r0, #0xa
	str     r0, [sp, #0x28]
	ldr     r0, [r5, #0x2c]
	ldr     r1, [r5, #0x28]
	ldr     r2, [r2, #0x0]
	bl      Function_2265db8
	ldr     r0, [sp, #0x34]
	.hword  0x1da4 @ add r4, r4, #0x6
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r7, #0x28
	add     r6, #0x28
	str     r0, [sp, #0x34]
	cmp     r0, #0x6
	blt     branch_2261740
	ldr     r0, [sp, #0x30]
	bl      Function_20237bc
	ldr     r0, [sp, #0x38]
	bl      Function_20237bc
	ldr     r0, [pc, #0x100] @ 0x22618d4, (=0x15a8)
	add     r0, r5, r0
	bl      Function_2265ec8
	mov     r0, r5
	bl      Function_2266150
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0xe4] @ 0x22618d8, (=0x2714)
	str     r0, [sp, #0x14]
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	ldr     r2, [r5, #0x24]
	ldr     r3, [r5, #0x28]
	bl      Function_200cdc4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xcc] @ 0x22618dc, (=0x2712)
	ldr     r2, [sp, #0x2c]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r3, #0x18
	bl      Function_200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xb8] @ 0x22618dc, (=0x2712)
	ldr     r2, [sp, #0x2c]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r3, #0x1a
	bl      Function_200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x22618dc, (=0x2712)
	ldr     r2, [sp, #0x2c]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r3, #0x19
	bl      Function_200ce54
	mov     r0, r5
	bl      Function_2266130
	ldr     r1, [pc, #0x88] @ 0x22618d4, (=0x15a8)
	str     r0, [r5, r1]
	mov     r0, #0xab
	str     r0, [sp, #0x0]
	mov     r0, #0x14
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x78] @ 0x22618dc, (=0x2712)
	mov     r1, #0x2
	str     r0, [sp, #0x14]
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	ldr     r2, [r5, #0x24]
	ldr     r3, [r5, #0x28]
	bl      Function_200cd7c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x60] @ 0x22618e0, (=0x2711)
	mov     r2, #0xab
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r3, #0x15
	bl      Function_200cbdc
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x4c] @ 0x22618e0, (=0x2711)
	mov     r2, #0xab
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r3, #0x16
	bl      Function_200ce0c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x22618e0, (=0x2711)
	mov     r2, #0xab
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r3, #0x17
	bl      Function_200ce3c
	mov     r0, r5
	bl      Function_2266244
	ldr     r1, [pc, #0x28] @ 0x22618e4, (=0x174c)
	str     r0, [r5, r1]
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x22618c2


.align 2


.word 0x2713 @ 0x22618c4
.word 0x169c @ 0x22618c8
.word 0xe0f00 @ 0x22618cc
.word 0x15ac @ 0x22618d0
.word 0x15a8 @ 0x22618d4
.word 0x2714 @ 0x22618d8
.word 0x2712 @ 0x22618dc
.word 0x2711 @ 0x22618e0
.word 0x174c @ 0x22618e4
.thumb
Function_22618e8: @ 22618e8 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [pc, #0x40] @ 0x2261930, (=0x15ac)
	mov     r6, #0x0
	add     r4, r7, r0
	add     r0, #0x14
	add     r5, r7, r0
.thumb
branch_22618f6: @ 22618f6 :thumb
	mov     r0, r4
	bl      Function_2265eb0
	mov     r0, r5
	bl      Function_2265eb0
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x28
	add     r5, #0x28
	cmp     r6, #0x6
	blt     branch_22618f6
	ldr     r0, [pc, #0x24] @ 0x2261934, (=0x169c)
	add     r0, r7, r0
	bl      Function_2265eb0
	mov     r0, r7
	bl      Function_2266210
	ldr     r1, [pc, #0x1c] @ 0x2261938, (=0x15a8)
	mov     r0, r7
	ldr     r1, [r7, r1]
	bl      Function_2266238
	ldr     r1, [pc, #0x14] @ 0x226193c, (=0x174c)
	mov     r0, r7
	ldr     r1, [r7, r1]
	bl      Function_2266268
	pop     {r3-r7,pc}
@ 0x2261930

.word 0x15ac @ 0x2261930
.word 0x169c @ 0x2261934
.word 0x15a8 @ 0x2261938
.word 0x174c @ 0x226193c
.thumb
Function_2261940: @ 2261940 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r1
	mov     r5, r0
	str     r4, [sp, #0x0]
	mov     r0, #0x17
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x88] @ 0x22619e4, (=0x2716)
	mov     r1, #0x3
	str     r0, [sp, #0x14]
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	ldr     r2, [r5, #0x24]
	ldr     r3, [r5, #0x28]
	bl      Function_200cdc4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x70] @ 0x22619e8, (=0x2714)
	mov     r2, r4
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r3, #0x14
	bl      Function_200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x5c] @ 0x22619e8, (=0x2714)
	mov     r2, r4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r3, #0x16
	bl      Function_200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x48] @ 0x22619e8, (=0x2714)
	mov     r2, r4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r3, #0x15
	bl      Function_200ce54
	mov     r0, r5
	bl      Function_22648e0
	ldr     r1, [pc, #0x34] @ 0x22619ec, (=0x1458)
	mov     r0, r5
	add     r1, r5, r1
	bl      Function_2264fb0
	ldr     r1, [pc, #0x30] @ 0x22619f0, (=0x1468)
	mov     r0, r5
	add     r1, r5, r1
	bl      Function_2265064
	ldr     r1, [pc, #0x28] @ 0x22619f4, (=0x1560)
	mov     r0, r5
	add     r1, r5, r1
	bl      Function_2265abc
	mov     r0, r5
	bl      Function_2264bf8
	mov     r0, r5
	bl      Function_2264d1c
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x22619e2


.align 2


.word 0x2716 @ 0x22619e4
.word 0x2714 @ 0x22619e8
.word 0x1458 @ 0x22619ec
.word 0x1468 @ 0x22619f0
.word 0x1560 @ 0x22619f4
.thumb
Function_22619f8: @ 22619f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2264914
	ldr     r1, [pc, #0x1c] @ 0x2261a20, (=0x1458)
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_226504c
	ldr     r1, [pc, #0x18] @ 0x2261a24, (=0x1468)
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_22651e0
	ldr     r1, [pc, #0x10] @ 0x2261a28, (=0x1560)
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2265b3c
	pop     {r4,pc}
@ 0x2261a20

.word 0x1458 @ 0x2261a20
.word 0x1468 @ 0x2261a24
.word 0x1560 @ 0x2261a28
.thumb
Function_2261a2c: @ 2261a2c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x8c
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	mov     r1, #0xad
	mov     r2, #0x4
	mov     r3, #0x6e
	bl      Function_2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6e
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x2c]
	mov     r0, r4
	mov     r1, #0x2
	mov     r3, #0x3
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6e
	str     r0, [sp, #0xc]
	mov     r1, #0x3
	ldr     r2, [r5, #0x2c]
	mov     r0, r4
	mov     r3, r1
	bl      Function_200710c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x6e
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x2c]
	mov     r0, r4
	mov     r3, #0x2
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6e
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x2c]
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, #0x2
	bl      Function_200710c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	add     r5, #0x8c
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r2, #0x2
	mov     r3, r1
	bl      Function_20038b0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2261ac2


.align 2, 0


.thumb
Function_2261ac4: @ 2261ac4 :thumb
	bx      lr
@ 0x2261ac6


.align 2, 0


.thumb
Function_2261ac8: @ 2261ac8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0xa0
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x8c
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	mov     r1, #0xad
	mov     r2, #0x5
	mov     r3, #0x6e
	bl      Function_2003050
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	lsl     r0, r0, #6
	str     r0, [sp, #0x4]
	mov     r0, #0x60
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0xad
	mov     r2, #0x6
	mov     r3, #0x6e
	bl      Function_2002fec
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6e
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x2c]
	mov     r0, r4
	mov     r1, #0xd
	mov     r3, #0x6
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6e
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x2c]
	mov     r0, r4
	mov     r1, #0xe
	mov     r3, #0x6
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6e
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x2c]
	mov     r0, r4
	mov     r1, #0x12
	mov     r3, #0x5
	bl      Function_20070e8
	ldr     r0, [r5, #0x0]
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	beq     branch_2261b64
	cmp     r0, #0x3
	beq     branch_2261b7e
	b       branch_2261b98
@ 0x2261b64

.thumb
branch_2261b64: @ 2261b64 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6e
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x2c]
	mov     r0, r4
	mov     r1, #0xf
	mov     r3, #0x5
	bl      Function_200710c
	b       branch_2261bb0
@ 0x2261b7e

.thumb
branch_2261b7e: @ 2261b7e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6e
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x2c]
	mov     r0, r4
	mov     r1, #0x10
	mov     r3, #0x5
	bl      Function_200710c
	b       branch_2261bb0
@ 0x2261b98

.thumb
branch_2261b98: @ 2261b98 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6e
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x2c]
	mov     r0, r4
	mov     r1, #0x11
	mov     r3, #0x5
	bl      Function_200710c
.thumb
branch_2261bb0: @ 2261bb0 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6e
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x2c]
	mov     r0, r4
	mov     r1, #0x12
	mov     r3, #0x4
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6e
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x2c]
	mov     r0, r4
	mov     r1, #0x13
	mov     r3, #0x4
	bl      Function_200710c
	mov     r0, r5
	bl      Function_2264af0
	mov     r0, r5
	bl      Function_2264ab0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6e
	str     r0, [sp, #0x4]
	mov     r2, #0x35
	ldr     r0, [r5, #0x2c]
	mov     r1, #0x4
	lsl     r2, r2, #4
	mov     r3, #0x6
	bl      Function_200daa4
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	mov     r2, #0x60
	mov     r3, #0x20
	bl      GetPaletteAdresses
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	add     r5, #0x8c
	ldr     r0, [r5, #0x0]
	mov     r2, #0x2
	bl      Function_20038b0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2261c28

.thumb
Function_2261c28: @ 2261c28 :thumb
	bx      lr
@ 0x2261c2a


.align 2, 0


.thumb
Function_2261c2c: @ 2261c2c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	str     r0, [sp, #0x8]
	str     r0, [sp, #0x10]
	add     r0, #0xd8
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r7, #0x0
	bl      Function_203608c
	mov     r1, r0
	ldr     r0, [sp, #0x8]
	bl      Function_226235c
	mov     r4, r0
	mov     r1, #0x14
	mul     r4, r1
	ldr     r2, [pc, #0x164] @ 0x2261db4, (=0x22669f0)
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	ldr     r2, [r2, r4]
	mov     r3, #0x6e
	bl      Function_20170d8
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x10]
	add     r0, #0x10
	bl      Function_2017258
	ldr     r0, [sp, #0x10]
	mov     r1, r7
	ldr     r2, [pc, #0x14c] @ 0x2261db8, (=0xfffe7000)
	add     r0, #0x10
	mov     r3, r1
	bl      Function_2017350
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1
	lsl     r1, r1, #12
	add     r0, #0x10
	mov     r2, r1
	mov     r3, r1
	bl      Function_201736c
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1
	add     r0, #0x10
	bl      Function_2017348
	ldr     r2, [pc, #0x12c] @ 0x2261dbc, (=0x22669f4)
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	ldr     r2, [r2, r4]
	add     r0, #0x88
	mov     r3, #0x6e
	bl      Function_20170d8
	ldr     r2, [pc, #0x120] @ 0x2261dc0, (=0x22669f8)
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	ldr     r2, [r2, r4]
	add     r0, #0x98
	mov     r3, #0x6e
	bl      Function_20170d8
	ldr     r2, [pc, #0x114] @ 0x2261dc4, (=0x22669fc)
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	ldr     r2, [r2, r4]
	add     r0, #0xa8
	mov     r3, #0x6e
	bl      Function_20170d8
	ldr     r2, [pc, #0x108] @ 0x2261dc8, (=0x2266a00)
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0xc]
	ldr     r2, [r2, r4]
	add     r0, #0xb8
	mov     r3, #0x6e
	bl      Function_20170d8
	mov     r0, r7
	str     r0, [sp, #0x1c]
	mov     r1, #0x51
	ldr     r0, [sp, #0x10]
	lsl     r1, r1, #2
	add     r0, r0, r1
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x8]
	str     r0, [sp, #0x24]
	add     r0, #0xa8
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x10]
	str     r0, [sp, #0x20]
	add     r0, #0x88
	str     r0, [sp, #0x20]
.thumb
branch_2261cec: @ 2261cec :thumb
	mov     r0, #0x0
	ldr     r4, [sp, #0x20]
	ldr     r5, [sp, #0x14]
	ldr     r6, [sp, #0x10]
	str     r0, [sp, #0x18]
.thumb
branch_2261cf6: @ 2261cf6 :thumb
	cmp     r7, #0x0
	bne     branch_2261d18
	mov     r0, #0x6e
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x24]
	ldr     r3, [sp, #0x18]
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0xc]
	mov     r0, r5
	mov     r1, r4
	add     r3, #0x23
	bl      Function_2017164
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r7, [r6, r0]
	b       branch_2261d24
@ 0x2261d18

.thumb
branch_2261d18: @ 2261d18 :thumb
	ldr     r3, [sp, #0x24]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_2017190
.thumb
branch_2261d24: @ 2261d24 :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2017240
	ldr     r0, [sp, #0x18]
	add     r4, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r5, #0x90
	add     r6, #0x90
	str     r0, [sp, #0x18]
	cmp     r0, #0x4
	blt     branch_2261cf6
	mov     r0, #0x9
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #6
	add     r0, r1, r0
	str     r0, [sp, #0x14]
	mov     r0, #0x9
	ldr     r1, [sp, #0x10]
	lsl     r0, r0, #6
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x1c]
	cmp     r0, #0x8
	blt     branch_2261cec
	ldr     r1, [sp, #0x8]
	ldr     r0, [pc, #0x6c] @ 0x2261dcc, (=0x13a0)
	mov     r2, #0x1e
	add     r0, r1, r0
	ldr     r1, [sp, #0xc]
	mov     r3, #0x6e
	bl      Function_20170d8
	ldr     r1, [sp, #0x8]
	ldr     r0, [pc, #0x5c] @ 0x2261dcc, (=0x13a0)
	mov     r2, r1
	add     r0, r1, r0
	ldr     r1, [pc, #0x58] @ 0x2261dcc, (=0x13a0)
	add     r0, #0x10
	add     r1, r2, r1
	bl      Function_2017258
	ldr     r1, [sp, #0x8]
	ldr     r0, [pc, #0x4c] @ 0x2261dcc, (=0x13a0)
	ldr     r2, [pc, #0x34] @ 0x2261db8, (=0xfffe7000)
	add     r0, r1, r0
	mov     r1, #0x0
	add     r0, #0x10
	mov     r3, r1
	bl      Function_2017350
	ldr     r1, [sp, #0x8]
	ldr     r0, [pc, #0x38] @ 0x2261dcc, (=0x13a0)
	add     r0, r1, r0
	mov     r1, #0x1
	lsl     r1, r1, #12
	add     r0, #0x10
	mov     r2, r1
	mov     r3, r1
	bl      Function_201736c
	ldr     r1, [sp, #0x8]
	ldr     r0, [pc, #0x24] @ 0x2261dcc, (=0x13a0)
	add     r0, r1, r0
	add     r0, #0x10
	mov     r1, #0x1
	bl      Function_2017348
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2261db4

.word 0x22669f0 @ 0x2261db4
.word 0xfffe7000 @ 0x2261db8
.word 0x22669f4 @ 0x2261dbc
.word 0x22669f8 @ 0x2261dc0
.word 0x22669fc @ 0x2261dc4
.word 0x2266a00 @ 0x2261dc8
.word 0x13a0 @ 0x2261dcc
.thumb
Function_2261dd0: @ 2261dd0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	add     r6, #0xd8
	str     r0, [sp, #0x0]
	mov     r0, r6
	bl      Function_2017110
	mov     r5, r6
	mov     r4, #0x0
	add     r5, #0x88
.thumb
branch_2261de6: @ 2261de6 :thumb
	mov     r0, r5
	bl      Function_2017110
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x4
	blt     branch_2261de6
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x51
	lsl     r0, r0, #2
	add     r7, r6, r0
	ldr     r6, [sp, #0x0]
	add     r6, #0xa8
.thumb
branch_2261e02: @ 2261e02 :thumb
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_2261e06: @ 2261e06 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_20171a0
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x90
	cmp     r4, #0x4
	blt     branch_2261e06
	mov     r0, #0x9
	lsl     r0, r0, #6
	add     r7, r7, r0
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x8
	blt     branch_2261e02
	ldr     r1, [pc, #0xc] @ 0x2261e34, (=0x13a0)
	ldr     r0, [sp, #0x0]
	add     r0, r0, r1
	bl      Function_2017110
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2261e34

.word 0x13a0 @ 0x2261e34
.thumb
Function_2261e38: @ 2261e38 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x4b
	lsl     r0, r0, #4
	add     r5, #0xd8
	cmp     r1, r0
	ble     branch_2261e4c
	mov     r2, #0x3
	b       branch_2261e5e
@ 0x2261e4c

.thumb
branch_2261e4c: @ 2261e4c :thumb
	cmp     r1, #0x2
	ble     branch_2261e54
	mov     r2, #0x2
	b       branch_2261e5e
@ 0x2261e54

.thumb
branch_2261e54: @ 2261e54 :thumb
	cmp     r1, #0x1
	ble     branch_2261e5c
	mov     r2, #0x1
	b       branch_2261e5e
@ 0x2261e5c

.thumb
branch_2261e5c: @ 2261e5c :thumb
	mov     r2, #0x0
.thumb
branch_2261e5e: @ 2261e5e :thumb
	mov     r0, r5
	str     r0, [sp, #0x4]
	add     r0, #0x88
	mov     r1, #0x90
	str     r0, [sp, #0x4]
	lsl     r0, r2, #4
	mul     r1, r2
	mov     r3, #0x9
	mov     r12, r0
	mov     r0, #0x0
	add     r1, r5, r1
	lsl     r3, r3, #6
.thumb
branch_2261e76: @ 2261e76 :thumb
	mov     r4, r1
	add     r4, #0xc8
	ldr     r4, [r4, #0x0]
	cmp     r4, #0x0
	bne     branch_2261ef2
	mov     r4, r2
	mov     r1, #0x90
	mul     r4, r1
	lsl     r1, r0, #3
	add     r0, r0, r1
	lsl     r7, r0, #6
	mov     r0, r5
	add     r0, #0xcc
	add     r6, r0, r7
	ldr     r1, [sp, #0x4]
	mov     r2, r12
	add     r0, r6, r4
	add     r1, r1, r2
	bl      Function_2017258
	mov     r1, #0x0
	ldr     r2, [pc, #0x5c] @ 0x2261f00, (=0xfffe7000)
	add     r0, r6, r4
	mov     r3, r1
	bl      Function_2017350
	mov     r1, #0x1
	lsl     r1, r1, #12
	add     r0, r6, r4
	mov     r2, r1
	mov     r3, r1
	bl      Function_201736c
	add     r0, r6, r4
	mov     r1, #0x1
	bl      Function_2017348
	mov     r0, #0x51
	lsl     r0, r0, #2
	add     r0, r5, r0
	add     r0, r0, r7
	str     r0, [sp, #0x0]
	add     r0, r0, r4
	mov     r1, #0x0
	bl      Function_2017240
	ldr     r1, [sp, #0x0]
	add     r0, r6, r4
	add     r1, r1, r4
	bl      Function_201727c
	add     r0, r5, r7
	add     r0, r0, r4
	mov     r1, #0x1
	add     r0, #0xc8
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x2261f04, (=0x579)
	bl      Function_2005748
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2261ef2

.thumb
branch_2261ef2: @ 2261ef2 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r1, r1, r3
	cmp     r0, #0x8
	blt     branch_2261e76
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2261f00

.word 0xfffe7000 @ 0x2261f00
.word 0x579 @ 0x2261f04
.thumb
Function_2261f08: @ 2261f08 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	lsl     r0, r1, #3
	add     r0, r1, r0
	add     r4, #0xd8
	lsl     r6, r0, #6
	mov     r0, r4
	add     r0, #0xcc
	mov     r3, #0x90
	mov     r5, r2
	mul     r5, r3
	add     r3, #0xb4
	add     r1, r4, r3
	add     r0, r0, r6
	add     r1, r1, r6
	add     r0, r0, r5
	add     r1, r1, r5
	bl      Function_2017288
	add     r0, r4, r6
	add     r0, r0, r5
	mov     r1, #0x0
	add     r0, #0xc8
	str     r1, [r0, #0x0]
	pop     {r4-r6,pc}
@ 0x2261f3a


.align 2, 0


.thumb
Function_2261f3c: @ 2261f3c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r1, #0x51
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x8]
	add     r0, #0xd8
	lsl     r1, r1, #2
	str     r0, [sp, #0x8]
	add     r0, r0, r1
	mov     r7, #0x0
	str     r0, [sp, #0x4]
.thumb
branch_2261f52: @ 2261f52 :thumb
	ldr     r4, [sp, #0x8]
	ldr     r5, [sp, #0x4]
	mov     r6, #0x0
.thumb
branch_2261f58: @ 2261f58 :thumb
	mov     r0, r4
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2261f7a
	mov     r1, #0x1
	mov     r0, r5
	lsl     r1, r1, #12
	bl      Function_2017204
	cmp     r0, #0x1
	bne     branch_2261f7a
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	mov     r2, r6
	bl      Function_2261f08
.thumb
branch_2261f7a: @ 2261f7a :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x90
	add     r5, #0x90
	cmp     r6, #0x4
	blt     branch_2261f58
	mov     r0, #0x9
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #6
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #6
	add     r0, r1, r0
	.hword  0x1c7f @ add r7, r7, #0x1
	str     r0, [sp, #0x4]
	cmp     r7, #0x8
	blt     branch_2261f52
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2261fa2


.align 2, 0


.thumb
Function_2261fa4: @ 2261fa4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	add     r0, #0xd8
	str     r0, [sp, #0x0]
	ldr     r7, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	add     r7, #0xcc
.thumb
branch_2261fb6: @ 2261fb6 :thumb
	ldr     r4, [sp, #0x0]
	mov     r6, #0x0
	mov     r5, r7
.thumb
branch_2261fbc: @ 2261fbc :thumb
	mov     r0, r4
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2261fcc
	mov     r0, r5
	bl      Function_2017294
.thumb
branch_2261fcc: @ 2261fcc :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x90
	add     r5, #0x90
	cmp     r6, #0x4
	blt     branch_2261fbc
	mov     r0, #0x9
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #6
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	lsl     r0, r0, #6
	add     r7, r7, r0
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x8
	blt     branch_2261fb6
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2261ff4

.thumb
Function_2261ff4: @ 2261ff4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_203608c
	ldr     r1, [r4, #0x4]
	cmp     r1, r0
	bne     branch_2262006
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2262006

.thumb
branch_2262006: @ 2262006 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x226200a


.align 2, 0


.thumb
Function_226200c: @ 226200c :thumb
	push    {r4-r7}
	ldr     r5, [r0, #0x0]
	ldr     r3, [r0, #0xc]
	mov     r4, r5
	add     r4, #0x30
	ldrb    r6, [r4, #0x0]
	mov     r1, r5
	add     r1, #0x2c
	mov     r2, #0x1
	ldrb    r1, [r1, #0x0]
	cmp     r6, #0x1
	ble     branch_226203c
	add     r4, r0, #0x4
.thumb
branch_2262026: @ 2262026 :thumb
	ldr     r7, [r4, #0xc]
	cmp     r3, r7
	bcs     branch_2262034
	add     r1, r5, r2
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	mov     r3, r7
.thumb
branch_2262034: @ 2262034 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r2, r6
	blt     branch_2262026
.thumb
branch_226203c: @ 226203c :thumb
	str     r1, [r0, #0x4]
	mov     r0, r1
	pop     {r4-r7}
	bx      lr
@ 0x2262044

.thumb
Function_2262044: @ 2262044 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r5, r2
	bl      Function_22620e0
	cmp     r0, #0x1
	beq     branch_2262096
	ldr     r0, [pc, #0x40] @ 0x2262098, (=0x2f04)
	mov     r1, #0x3c
	add     r6, r4, r0
	ldr     r0, [sp, #0x0]
	lsl     r7, r0, #2
	ldr     r0, [r6, r7]
	blx     _s32_div_f
	mov     r0, r1
	ldr     r1, [pc, #0x34] @ 0x226209c, (=0x1c1c)
	mov     r3, #0x4b
	ldr     r2, [sp, #0x0]
	lsl     r3, r3, #4
	add     r1, r4, r1
	mul     r3, r2
	add     r2, r1, r3
	mov     r1, #0x14
	mul     r1, r0
	ldr     r0, [r6, r7]
	add     r4, r2, r1
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, r7]
	ldr     r0, [r2, r1]
	cmp     r0, #0x0
	beq     branch_226208a
	bl      ErrorHandling
.thumb
branch_226208a: @ 226208a :thumb
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r4, #0x0]
.thumb
branch_2262096: @ 2262096 :thumb
	pop     {r3-r7,pc}
@ 0x2262098

.word 0x2f04 @ 0x2262098
.word 0x1c1c @ 0x226209c
.thumb
Function_22620a0: @ 22620a0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	ldr     r0, [pc, #0x30] @ 0x22620d8, (=0x2f14)
	lsl     r4, r7, #2
	add     r5, r6, r0
	ldr     r0, [r5, r4]
	mov     r1, #0x3c
	blx     _s32_div_f
	ldr     r0, [pc, #0x24] @ 0x22620dc, (=0x1c1c)
	add     r2, r6, r0
	mov     r0, #0x4b
	lsl     r0, r0, #4
	mul     r0, r7
	add     r0, r2, r0
	mov     r2, #0x14
	mul     r2, r1
	ldr     r1, [r0, r2]
	cmp     r1, #0x0
	beq     branch_22620d4
	ldr     r1, [r5, r4]
	add     r0, r0, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r4]
	pop     {r3-r7,pc}
@ 0x22620d4

.thumb
branch_22620d4: @ 22620d4 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22620d8

.word 0x2f14 @ 0x22620d8
.word 0x1c1c @ 0x22620dc
.thumb
Function_22620e0: @ 22620e0 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x7
	bhi     branch_2262128
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22620f8

Jumppoints_22620f8:
.hword branch_2262128 - Jumppoints_22620f8 - 2
.hword branch_2262128 - Jumppoints_22620f8 - 2
.hword branch_2262108 - Jumppoints_22620f8 - 2
.hword branch_2262108 - Jumppoints_22620f8 - 2
.hword branch_2262108 - Jumppoints_22620f8 - 2
.hword branch_2262108 - Jumppoints_22620f8 - 2
.hword branch_2262108 - Jumppoints_22620f8 - 2
.hword branch_2262108 - Jumppoints_22620f8 - 2
.thumb
branch_2262108: @ 2262108 :thumb
	ldr     r0, [pc, #0x20] @ 0x226212c, (=0x2ef0)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2262114
	bl      ErrorHandling
.thumb
branch_2262114: @ 2262114 :thumb
	ldr     r0, [pc, #0x14] @ 0x226212c, (=0x2ef0)
	add     r2, r5, r0
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2262128

.thumb
branch_2262128: @ 2262128 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x226212c

.word 0x2ef0 @ 0x226212c
.thumb
Function_2262130: @ 2262130 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_226217c
	cmp     r0, #0x1
	beq     branch_2262170
	ldr     r0, [pc, #0x34] @ 0x2262174, (=0x2f24)
	mov     r1, #0x3c
	ldr     r0, [r5, r0]
	blx     _s32_div_f
	ldr     r0, [pc, #0x2c] @ 0x2262178, (=0x176c)
	add     r2, r5, r0
	mov     r0, #0x14
	mul     r0, r1
	ldr     r1, [pc, #0x20] @ 0x2262174, (=0x2f24)
	add     r6, r2, r0
	ldr     r3, [r5, r1]
	.hword  0x1c5b @ add r3, r3, #0x1
	str     r3, [r5, r1]
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	beq     branch_2262164
	bl      ErrorHandling
.thumb
branch_2262164: @ 2262164 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r6!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r6!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r6, #0x0]
.thumb
branch_2262170: @ 2262170 :thumb
	pop     {r4-r6,pc}
@ 0x2262172


.align 2


.word 0x2f24 @ 0x2262174
.word 0x176c @ 0x2262178
.thumb
Function_226217c: @ 226217c :thumb
	push    {r4,lr}
	mov     r2, r1
	ldr     r1, [r2, #0x0]
	cmp     r1, #0x7
	bhi     branch_22621cc
	add     r3, r1, r1
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
@ 0x2262192

Jumppoints_2262192:
.hword branch_22621cc - Jumppoints_2262192 - 2
.hword branch_22621cc - Jumppoints_2262192 - 2
.hword branch_22621a2 - Jumppoints_2262192 - 2
.hword branch_22621a2 - Jumppoints_2262192 - 2
.hword branch_22621a2 - Jumppoints_2262192 - 2
.hword branch_22621a2 - Jumppoints_2262192 - 2
.hword branch_22621a2 - Jumppoints_2262192 - 2
.hword branch_22621a2 - Jumppoints_2262192 - 2
.thumb
branch_22621a2: @ 22621a2 :thumb
	ldr     r3, [pc, #0x2c] @ 0x22621d0, (=0x2edc)
	ldr     r4, [r0, r3]
	cmp     r4, #0x0
	bne     branch_22621bc
	add     r3, r0, r3
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22621bc

.thumb
branch_22621bc: @ 22621bc :thumb
	cmp     r1, r4
	bne     branch_22621c4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22621c4

.thumb
branch_22621c4: @ 22621c4 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22621cc

.thumb
branch_22621cc: @ 22621cc :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22621d0

.word 0x2edc @ 0x22621d0
.thumb
Function_22621d4: @ 22621d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x1c] @ 0x22621f8, (=0x2f28)
	mov     r1, #0x3c
	ldr     r0, [r4, r0]
	blx     _s32_div_f
	ldr     r0, [pc, #0x18] @ 0x22621fc, (=0x176c)
	mov     r2, r1
	add     r3, r4, r0
	mov     r0, #0x14
	mul     r2, r0
	ldr     r1, [r3, r2]
	add     r0, r3, r2
	cmp     r1, #0x0
	bne     branch_22621f6
	mov     r0, #0x0
.thumb
branch_22621f6: @ 22621f6 :thumb
	pop     {r4,pc}
@ 0x22621f8

.word 0x2f28 @ 0x22621f8
.word 0x176c @ 0x22621fc
.thumb
Function_2262200: @ 2262200 :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x60] @ 0x2262264, (=0x2fc4)
	mov     r5, r0
	ldr     r1, [r5, r2]
	cmp     r1, #0x0
	ble     branch_2262214
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [r5, r2]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2262214

.thumb
branch_2262214: @ 2262214 :thumb
	mov     r1, r2
	sub     r1, #0xe8
	ldr     r1, [r5, r1]
	cmp     r1, #0x0
	beq     branch_2262238
	sub     r2, #0xe8
	add     r1, r5, r2
	bl      Function_2266624
	cmp     r0, #0x1
	bne     branch_2262234
	ldr     r0, [pc, #0x3c] @ 0x2262268, (=0x2edc)
	mov     r1, #0x0
	str     r1, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2262234

.thumb
branch_2262234: @ 2262234 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2262238

.thumb
branch_2262238: @ 2262238 :thumb
	bl      Function_22621d4
	mov     r4, r0
	bne     branch_2262244
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2262244

.thumb
branch_2262244: @ 2262244 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2266624
	cmp     r0, #0x1
	bne     branch_2262260
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x14] @ 0x226226c, (=0x2f28)
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2262260

.thumb
branch_2262260: @ 2262260 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2262264

.word 0x2fc4 @ 0x2262264
.word 0x2edc @ 0x2262268
.word 0x2f28 @ 0x226226c
.thumb
Function_2262270: @ 2262270 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x40] @ 0x22622b4, (=0x2ef0)
	mov     r5, r0
	add     r1, r5, r1
	bl      Function_22666c0
	cmp     r0, #0x1
	beq     branch_22622b2
	ldr     r0, [r5, #0x0]
	mov     r4, #0x0
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_22622b2
.thumb
branch_226228c: @ 226228c :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	add     r1, r1, r4
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	bl      Function_22620a0
	mov     r1, r0
	beq     branch_22622a6
	mov     r0, r5
	bl      Function_22666c0
	b       branch_226228c
@ 0x22622a6

.thumb
branch_22622a6: @ 22622a6 :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	cmp     r4, r0
	blt     branch_226228c
.thumb
branch_22622b2: @ 22622b2 :thumb
	pop     {r3-r5,pc}
@ 0x22622b4

.word 0x2ef0 @ 0x22622b4
.thumb
Function_22622b8: @ 22622b8 :thumb
	ldr     r1, [pc, #0x4] @ 0x22622c0, (=0x2fc8)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x22622be


.align 2


.word 0x2fc8 @ 0x22622c0
.thumb
Function_22622c4: @ 22622c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r7, r1
	bl      Function_203608c
	mov     r6, #0xff
	mov     r4, r6
	mov     r1, #0x0
	b       branch_22622f6
@ 0x22622d8

.thumb
branch_22622d8: @ 22622d8 :thumb
	ldr     r2, [r5, #0x0]
	add     r2, r2, r1
	add     r2, #0x2c
	ldrb    r2, [r2, #0x0]
	cmp     r0, r2
	bne     branch_22622e6
	mov     r4, r1
.thumb
branch_22622e6: @ 22622e6 :thumb
	ldr     r2, [r5, #0x0]
	add     r2, r2, r1
	add     r2, #0x2c
	ldrb    r2, [r2, #0x0]
	cmp     r7, r2
	bne     branch_22622f4
	mov     r6, r1
.thumb
branch_22622f4: @ 22622f4 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
.thumb
branch_22622f6: @ 22622f6 :thumb
	ldr     r2, [r5, #0x0]
	add     r2, #0x30
	ldrb    r2, [r2, #0x0]
	cmp     r1, r2
	blt     branch_22622d8
	mov     r0, #0x0
	cmp     r6, #0xff
	beq     branch_226230c
	cmp     r4, #0xff
	beq     branch_226230c
	mov     r0, #0x1
.thumb
branch_226230c: @ 226230c :thumb
	cmp     r0, #0x0
	bne     branch_2262314
	bl      ErrorHandling
.thumb
branch_2262314: @ 2262314 :thumb
	mov     r1, #0x0
	ldr     r0, [pc, #0x40] @ 0x2262358, (=0x2266954)
	b       branch_2262340
@ 0x226231a

.thumb
branch_226231a: @ 226231a :thumb
	ldr     r2, [r5, #0x0]
	add     r2, #0x30
	ldrb    r2, [r2, #0x0]
	lsl     r2, r2, #2
	add     r2, r0, r2
	ldrb    r2, [r1, r2]
	cmp     r4, r2
	bne     branch_226232c
	str     r1, [sp, #0x0]
.thumb
branch_226232c: @ 226232c :thumb
	ldr     r2, [r5, #0x0]
	add     r2, #0x30
	ldrb    r2, [r2, #0x0]
	lsl     r2, r2, #2
	add     r2, r0, r2
	ldrb    r2, [r1, r2]
	cmp     r6, r2
	bne     branch_226233e
	str     r1, [sp, #0x4]
.thumb
branch_226233e: @ 226233e :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
.thumb
branch_2262340: @ 2262340 :thumb
	ldr     r2, [r5, #0x0]
	add     r2, #0x30
	ldrb    r2, [r2, #0x0]
	cmp     r1, r2
	blt     branch_226231a
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	sub     r0, r1, r0
	bpl     branch_2262354
	add     r0, r0, r2
.thumb
branch_2262354: @ 2262354 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2262358

.word 0x2266954 @ 0x2262358
.thumb
Function_226235c: @ 226235c :thumb
	push    {r4,lr}
	ldr     r3, [r0, #0x0]
	mov     r2, #0x0
	mov     r0, r3
	add     r0, #0x30
	ldrb    r4, [r0, #0x0]
	cmp     r4, #0x0
	ble     branch_2262382
.thumb
branch_226236c: @ 226236c :thumb
	mov     r0, r3
	add     r0, #0x2c
	ldrb    r0, [r0, #0x0]
	cmp     r1, r0
	bne     branch_226237a
	mov     r0, r2
	pop     {r4,pc}
@ 0x226237a

.thumb
branch_226237a: @ 226237a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, r4
	blt     branch_226236c
.thumb
branch_2262382: @ 2262382 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x226238a


.align 2, 0


.thumb
Function_226238c: @ 226238c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x18] @ 0x22623ac, (=0x2fd4)
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r6, r2
	cmp     r0, #0x0
	beq     branch_22623a0
	bl      ErrorHandling
.thumb
branch_22623a0: @ 22623a0 :thumb
	ldr     r0, [pc, #0x8] @ 0x22623ac, (=0x2fd4)
	str     r4, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r6, [r5, r0]
	pop     {r4-r6,pc}
@ 0x22623aa


.align 2


.word 0x2fd4 @ 0x22623ac
.thumb
Function_22623b0: @ 22623b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x80] @ 0x2262438, (=0x2fd4)
	mov     r1, #0x0
	ldr     r2, [r4, r0]
	cmp     r2, #0x6
	bhi     branch_2262408
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x22623ca

Jumppoints_22623ca:
.hword branch_2262408 - Jumppoints_22623ca - 2
.hword branch_22623d8 - Jumppoints_22623ca - 2
.hword branch_22623dc - Jumppoints_22623ca - 2
.hword branch_22623e0 - Jumppoints_22623ca - 2
.hword branch_22623e4 - Jumppoints_22623ca - 2
.hword branch_22623f0 - Jumppoints_22623ca - 2
.hword branch_22623fc - Jumppoints_22623ca - 2
.thumb
branch_22623d8: @ 22623d8 :thumb
	mov     r1, #0x1
	b       branch_226240c
@ 0x22623dc

.thumb
branch_22623dc: @ 22623dc :thumb
	mov     r1, #0x1
	b       branch_226240c
@ 0x22623e0

.thumb
branch_22623e0: @ 22623e0 :thumb
	mov     r1, #0x1
	b       branch_226240c
@ 0x22623e4

.thumb
branch_22623e4: @ 22623e4 :thumb
	sub     r0, #0x8
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_226240c
	mov     r1, #0x1
	b       branch_226240c
@ 0x22623f0

.thumb
branch_22623f0: @ 22623f0 :thumb
	ldr     r0, [pc, #0x48] @ 0x226243c, (=0x339c)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_226240c
	mov     r1, #0x1
	b       branch_226240c
@ 0x22623fc

.thumb
branch_22623fc: @ 22623fc :thumb
	ldr     r0, [pc, #0x40] @ 0x2262440, (=0x1768)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_226240c
	mov     r1, #0x1
	b       branch_226240c
@ 0x2262408

.thumb
branch_2262408: @ 2262408 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x226240c

.thumb
branch_226240c: @ 226240c :thumb
	cmp     r1, #0x1
	bne     branch_2262434
	ldr     r0, [pc, #0x30] @ 0x2262444, (=0x2fd8)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_20364f0
	mov     r0, r4
	bl      Function_2261ff4
	cmp     r0, #0x1
	bne     branch_226242a
	mov     r1, #0x7
	b       branch_226242c
@ 0x226242a

.thumb
branch_226242a: @ 226242a :thumb
	mov     r1, #0x0
.thumb
branch_226242c: @ 226242c :thumb
	ldr     r0, [pc, #0x8] @ 0x2262438, (=0x2fd4)
	str     r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2262434

.thumb
branch_2262434: @ 2262434 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2262438

.word 0x2fd4 @ 0x2262438
.word 0x339c @ 0x226243c
.word 0x1768 @ 0x2262440
.word 0x2fd8 @ 0x2262444
.thumb
Function_2262448: @ 2262448 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x30] @ 0x2262480, (=0x2fd4)
	ldr     r2, [r4, r0]
	cmp     r2, #0x7
	beq     branch_2262458
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2262458

.thumb
branch_2262458: @ 2262458 :thumb
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r4, r0]
	cmp     r0, r1
	beq     branch_2262464
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2262464

.thumb
branch_2262464: @ 2262464 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_2036540
	cmp     r0, #0x1
	bne     branch_226247a
	ldr     r0, [pc, #0xc] @ 0x2262480, (=0x2fd4)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x226247a

.thumb
branch_226247a: @ 226247a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x226247e


.align 2


.word 0x2fd4 @ 0x2262480
.thumb
Function_2262484: @ 2262484 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0xc]
	cmp     r1, #0x5
	bhi     branch_2262516
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x226249a

Jumppoints_226249a:
.hword branch_22624a6 - Jumppoints_226249a - 2
.hword branch_22624b6 - Jumppoints_226249a - 2
.hword branch_22624ce - Jumppoints_226249a - 2
.hword branch_22624dc - Jumppoints_226249a - 2
.hword branch_22624f4 - Jumppoints_226249a - 2
.hword branch_2262502 - Jumppoints_226249a - 2
.thumb
branch_22624a6: @ 22624a6 :thumb
	ldrb    r2, [r4, #0x18]
	mov     r1, #0x1
	bl      Function_226687c
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_2262516
@ 0x22624b6

.thumb
branch_22624b6: @ 22624b6 :thumb
	ldrb    r1, [r4, #0x18]
	bl      Function_2262448
	cmp     r0, #0x1
	bne     branch_2262516
	ldrb    r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x18]
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_2262516
@ 0x22624ce

.thumb
branch_22624ce: @ 22624ce :thumb
	ldrb    r1, [r4, #0x18]
	bl      Function_22668b8
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_2262516
@ 0x22624dc

.thumb
branch_22624dc: @ 22624dc :thumb
	ldrb    r1, [r4, #0x18]
	bl      Function_2262448
	cmp     r0, #0x1
	bne     branch_2262516
	ldrb    r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x18]
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_2262516
@ 0x22624f4

.thumb
branch_22624f4: @ 22624f4 :thumb
	ldrb    r1, [r4, #0x18]
	bl      Function_22667f4
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_2262516
@ 0x2262502

.thumb
branch_2262502: @ 2262502 :thumb
	ldrb    r1, [r4, #0x18]
	bl      Function_2262448
	cmp     r0, #0x1
	bne     branch_2262516
	ldrb    r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x18]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2262516

.thumb
branch_2262516: @ 2262516 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x226251a


.align 2, 0


.thumb
Function_226251c: @ 226251c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r1, [pc, #0xc4] @ 0x22625e8, (=0x2fb4)
	ldr     r0, [pc, #0xc4] @ 0x22625ec, (=0x516)
	ldr     r2, [r5, r1]
	cmp     r2, r0
	bls     branch_226254c
	mov     r0, r1
	add     r0, #0x20
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_226254c
	mov     r0, r1
	sub     r0, #0xd8
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_226254c
	sub     r1, #0xc4
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	bne     branch_226254c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x226254c

.thumb
branch_226254c: @ 226254c :thumb
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x3
	bhi     branch_22625e4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x226255e

Jumppoints_226255e:
.hword branch_2262566 - Jumppoints_226255e - 2
.hword branch_2262584 - Jumppoints_226255e - 2
.hword branch_226259e - Jumppoints_226255e - 2
.hword branch_22625ce - Jumppoints_226255e - 2
.thumb
branch_2262566: @ 2262566 :thumb
	ldr     r0, [pc, #0x88] @ 0x22625f0, (=0x2fc8)
	ldr     r0, [r5, r0]
	bl      Function_2263cf4
	ldr     r1, [pc, #0x80] @ 0x22625f0, (=0x2fc8)
	mov     r2, r0
	ldrb    r3, [r4, #0x18]
	ldr     r1, [r5, r1]
	mov     r0, r5
	bl      Function_2266784
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_22625e4
@ 0x2262584

.thumb
branch_2262584: @ 2262584 :thumb
	ldrb    r1, [r4, #0x18]
	mov     r0, r5
	bl      Function_2262448
	cmp     r0, #0x1
	bne     branch_22625e4
	ldrb    r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x18]
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_22625e4
@ 0x226259e

.thumb
branch_226259e: @ 226259e :thumb
	ldr     r0, [pc, #0x54] @ 0x22625f4, (=0x1434)
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	beq     branch_22625e4
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r5, r0]
	cmp     r0, r1
	blt     branch_22625e4
	ldr     r0, [pc, #0x40] @ 0x22625f0, (=0x2fc8)
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_22622b8
	mov     r1, r0
	ldrb    r2, [r4, #0x18]
	mov     r0, r5
	bl      Function_2266730
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_22625e4
@ 0x22625ce

.thumb
branch_22625ce: @ 22625ce :thumb
	ldrb    r1, [r4, #0x18]
	mov     r0, r5
	bl      Function_2262448
	cmp     r0, #0x1
	bne     branch_22625e4
	ldrb    r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x18]
	mov     r0, #0x0
	str     r0, [r4, #0xc]
.thumb
branch_22625e4: @ 22625e4 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22625e8

.word 0x2fb4 @ 0x22625e8
.word 0x516 @ 0x22625ec
.word 0x2fc8 @ 0x22625f0
.word 0x1434 @ 0x22625f4
.thumb
Function_22625f8: @ 22625f8 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0xc]
	cmp     r1, #0x3
	bhi     branch_226265e
	add     r2, r1, r1
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x226260e

Jumppoints_226260e:
.hword branch_2262616 - Jumppoints_226260e - 2
.hword branch_2262624 - Jumppoints_226260e - 2
.hword branch_226263c - Jumppoints_226260e - 2
.hword branch_2262648 - Jumppoints_226260e - 2
.thumb
branch_2262616: @ 2262616 :thumb
	ldrb    r1, [r4, #0x18]
	bl      Function_2266834
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_226265e
@ 0x2262624

.thumb
branch_2262624: @ 2262624 :thumb
	ldrb    r1, [r4, #0x18]
	bl      Function_2262448
	cmp     r0, #0x1
	bne     branch_226265e
	ldrb    r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x18]
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_226265e
@ 0x226263c

.thumb
branch_226263c: @ 226263c :thumb
	ldr     r0, [r0, #0x20]
	cmp     r0, #0x8
	bne     branch_226265e
	add     r0, r1, #0x1
	str     r0, [r4, #0xc]
	b       branch_226265e
@ 0x2262648

.thumb
branch_2262648: @ 2262648 :thumb
	ldr     r1, [r4, #0x14]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x14]
	cmp     r1, #0x5a
	blt     branch_226265e
	bl      Function_2266648
	cmp     r0, #0x1
	bne     branch_226265e
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x226265e

.thumb
branch_226265e: @ 226265e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2262662


.align 2, 0


.thumb
Function_2262664: @ 2262664 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2261ff4
	cmp     r0, #0x0
	bne     branch_2262674
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2262674

.thumb
branch_2262674: @ 2262674 :thumb
	mov     r0, r5
	add     r0, #0xb8
	ldr     r2, [r0, #0x0]
	mov     r4, r5
	add     r4, #0xb8
	cmp     r2, #0x3
	bcc     branch_2262686
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2262686

.thumb
branch_2262686: @ 2262686 :thumb
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x1c] @ 0x22626a8, (=0x2266920)
	mov     r0, r5
	ldr     r2, [r2, r3]
	mov     r1, r4
	blx     r2
	cmp     r0, #0x1
	bne     branch_22626a4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	str     r0, [r4, #0x14]
	str     r0, [r4, #0x10]
.thumb
branch_22626a4: @ 22626a4 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22626a8

.word 0x2266920 @ 0x22626a8
.thumb
Function_22626ac: @ 22626ac :thumb
	bx      lr
@ 0x22626ae


.align 2, 0


.thumb
Function_22626b0: @ 22626b0 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x9e
	mov     r5, r0
	mov     r0, #0x6e
	lsl     r1, r1, #2
	bl      malloc
	mov     r2, #0x9e
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [r5, #0x0]
	ldr     r1, [r0, #0x34]
	mov     r0, #0x27
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_2262b98
	mov     r0, r4
	blx     Function_2262e0c
	mov     r0, r4
	blx     Function_2262e5c
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x34]
	cmp     r0, #0x1
	beq     branch_2262706
	cmp     r0, #0x2
	bne     branch_226271a
	mov     r1, #0x1
	mov     r0, #0x26
	lsl     r1, r1, #18
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r1, #0x1a
	lsl     r1, r1, #14
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	b       branch_2262728
@ 0x2262706

.thumb
branch_2262706: @ 2262706 :thumb
	mov     r1, #0x9
	mov     r0, #0x26
	lsl     r1, r1, #16
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r1, #0x7
	lsl     r1, r1, #16
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	b       branch_2262728
@ 0x226271a

.thumb
branch_226271a: @ 226271a :thumb
	mov     r1, #0x6
	mov     r0, #0x26
	lsl     r1, r1, #16
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
.thumb
branch_2262728: @ 2262728 :thumb
	mov     r0, #0x87
	mov     r1, #0x80
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r1, #0x28
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	mov     r0, r5
	blx     Function_22638d8
	mov     r0, r5
	blx     Function_2263a00
	mov     r1, #0x8d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [r4, r1]
	mov     r0, r4
	blx     Function_2263a6c
	mov     r1, #0x2
	mov     r0, #0x92
	lsl     r1, r1, #12
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x226275e


.align 2, 0


.thumb
Function_2262760: @ 2262760 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x8d
	mov     r4, r1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	blx     Function_2263ae4
	mov     r0, r5
	blx     Function_22639bc
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, #0x93
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0x25
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, r4
	bl      free
	pop     {r3-r5,pc}
@ 0x2262798

.thumb
Function_2262798: @ 2262798 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r1, #0x91
	mov     r5, r0
	mov     r0, #0x0
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r5, #0x20]
	cmp     r0, #0x2
	bne     branch_22627d8
	ldr     r0, [pc, #0x188] @ 0x2262938, (=0x1758)
	mov     r2, r1
	ldr     r3, [r5, r0]
	sub     r2, #0x38
	str     r3, [r4, r2]
	add     r2, r0, #0x4
	ldr     r3, [r5, r2]
	mov     r2, r1
	sub     r2, #0x34
	str     r3, [r4, r2]
	mov     r2, r0
	add     r2, #0x8
	ldr     r3, [r5, r2]
	mov     r2, r1
	sub     r2, #0x30
	str     r3, [r4, r2]
	add     r0, #0xc
	ldr     r0, [r5, r0]
	sub     r1, #0x2c
	str     r0, [r4, r1]
	b       branch_2262820
@ 0x22627d8

.thumb
branch_22627d8: @ 22627d8 :thumb
	ldr     r0, [pc, #0x160] @ 0x226293c, (=0x2fb8)
	ldr     r2, [r5, r0]
	cmp     r2, #0x0
	beq     branch_22627e8
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_2262800
.thumb
branch_22627e8: @ 22627e8 :thumb
	mov     r1, #0x83
	lsl     r1, r1, #2
	mov     r2, #0x0
	str     r2, [r4, r1]
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	mov     r0, r1
	add     r0, #0x8
	str     r2, [r4, r0]
	add     r1, #0xc
	str     r2, [r4, r1]
	b       branch_2262820
@ 0x2262800

.thumb
branch_2262800: @ 2262800 :thumb
	ldr     r2, [pc, #0x13c] @ 0x2262940, (=0x21bf6bc)
	mov     r0, r1
	ldrh    r3, [r2, #0x1c]
	sub     r0, #0x38
	str     r3, [r4, r0]
	mov     r0, r1
	ldrh    r3, [r2, #0x1e]
	sub     r0, #0x34
	str     r3, [r4, r0]
	mov     r0, r1
	ldrh    r3, [r2, #0x22]
	sub     r0, #0x30
	sub     r1, #0x2c
	str     r3, [r4, r0]
	ldrh    r0, [r2, #0x20]
	str     r0, [r4, r1]
.thumb
branch_2262820: @ 2262820 :thumb
	mov     r0, r4
	blx     Function_2263270
	mov     r0, #0x85
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2262846
	mov     r0, r4
	bl      Function_2262a38
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	bne     branch_2262846
	bne     branch_2262846
	mov     r0, #0x9d
	mov     r1, #0x0
	lsl     r0, r0, #2
	strb    r1, [r4, r0]
.thumb
branch_2262846: @ 2262846 :thumb
	mov     r0, r4
	blx     Function_226334c
	mov     r0, r4
	bl      Function_2262a70
	mov     r1, #0x8d
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	blx     Function_2263a6c
	mov     r0, #0x9a
	lsl     r0, r0, #2
	ldsh    r1, [r4, r0]
	cmp     r1, #0x0
	ble     branch_226287c
	add     r1, #0x8
	strh    r1, [r4, r0]
	ldsh    r1, [r4, r0]
	cmp     r1, #0x1e
	ble     branch_2262876
	mov     r1, #0x1e
	strh    r1, [r4, r0]
.thumb
branch_2262876: @ 2262876 :thumb
	mov     r0, r4
	bl      Function_2262cfc
.thumb
branch_226287c: @ 226287c :thumb
	ldr     r0, [pc, #0xc4] @ 0x2262944, (=0x2fbc)
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	bne     branch_2262934
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_2262934
	mov     r2, #0x91
	lsl     r2, r2, #2
	ldr     r1, [r4, r2]
	cmp     r1, #0x0
	ble     branch_2262934
	mov     r0, r2
	add     r0, #0x18
	ldr     r0, [r4, r0]
	add     r2, #0xdc
	mov     r7, #0x0
	cmp     r0, r2
	bge     branch_22628c4
	mov     r0, r4
	bl      Function_2262cb8
	cmp     r0, #0x1
	bne     branch_22628d4
	mov     r0, #0x9a
	mov     r1, #0x8
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r1, r7
	add     r0, #0xd
	strb    r1, [r4, r0]
	ldr     r0, [pc, #0x88] @ 0x2262948, (=0x576)
	bl      Function_2005748
	b       branch_22628d4
@ 0x22628c4

.thumb
branch_22628c4: @ 22628c4 :thumb
	mov     r0, r4
	bl      Function_2262ce8
	mov     r0, #0x9a
	mov     r1, r7
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r7, #0x1
.thumb
branch_22628d4: @ 22628d4 :thumb
	mov     r1, #0x91
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	bl      Function_226296c
	mov     r6, r0
	cmp     r7, #0x1
	bne     branch_22628f2
	mov     r0, #0x19
	mul     r0, r6
	mov     r1, #0x64
	blx     _s32_div_f
	add     r6, r6, r0
.thumb
branch_22628f2: @ 22628f2 :thumb
	ldr     r1, [pc, #0x58] @ 0x226294c, (=0x2fc8)
	mov     r0, r5
	ldr     r1, [r5, r1]
	mov     r2, r6
	add     r3, sp, #0x0
	bl      Function_2264e14
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2264e3c
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2263dc4
	mov     r1, #0x91
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	bl      Function_2262998
	mov     r2, #0x91
	lsl     r2, r2, #2
	ldr     r2, [r4, r2]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r7
	bl      Function_22629e0
	mov     r0, #0x91
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_2262934: @ 2262934 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2262938

.word 0x1758 @ 0x2262938
.word 0x2fb8 @ 0x226293c
.word 0x21bf6bc @ 0x2262940
.word 0x2fbc @ 0x2262944
.word 0x576 @ 0x2262948
.word 0x2fc8 @ 0x226294c
.thumb
Function_2262950: @ 2262950 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x14] @ 0x2262968, (=0x276)
	ldrb    r2, [r1, r0]
	cmp     r2, #0x1
	bne     branch_2262964
	mov     r2, #0x0
	strb    r2, [r1, r0]
	mov     r0, r1
	bl      Function_2262c3c
.thumb
branch_2262964: @ 2262964 :thumb
	pop     {r3,pc}
@ 0x2262966


.align 2


.word 0x276 @ 0x2262968
.thumb
Function_226296c: @ 226296c :thumb
	cmp     r1, #0x62
	blt     branch_2262976
	mov     r2, #0x4b
	lsl     r2, r2, #4
	b       branch_226297a
@ 0x2262976

.thumb
branch_2262976: @ 2262976 :thumb
	mov     r2, #0xa
	mul     r2, r1
.thumb
branch_226297a: @ 226297a :thumb
	mov     r1, #0x27
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	ldr     r3, [pc, #0xc] @ 0x2262990, (=_s32_div_f)
	lsl     r1, r0, #2
	ldr     r0, [pc, #0xc] @ 0x2262994, (=0x2266fd8)
	ldr     r0, [r0, r1]
	mov     r1, #0x64
	mul     r0, r2
	bx      r3
@ 0x226298e


.align 2


.word _s32_div_f @ 0x2262990
.word 0x2266fd8 @ 0x2262994
.thumb
Function_2262998: @ 2262998 :thumb
	mov     r2, #0x91
	lsl     r2, r2, #2
	ldr     r1, [r0, r2]
	cmp     r1, #0x62
	blt     branch_22629b2
	add     r1, r2, #0x4
	ldr     r3, [r0, r1]
	mov     r1, #0x1
	lsl     r1, r1, #12
	add     r3, r3, r1
	add     r1, r2, #0x4
	str     r3, [r0, r1]
	b       branch_22629cc
@ 0x22629b2

.thumb
branch_22629b2: @ 22629b2 :thumb
	blt     branch_22629c4
	add     r1, r2, #0x4
	ldr     r3, [r0, r1]
	mov     r1, #0x1
	lsl     r1, r1, #12
	add     r3, r3, r1
	add     r1, r2, #0x4
	str     r3, [r0, r1]
	b       branch_22629cc
@ 0x22629c4

.thumb
branch_22629c4: @ 22629c4 :thumb
	mov     r3, #0x2
	lsl     r3, r3, #12
	add     r1, r2, #0x4
	str     r3, [r0, r1]
.thumb
branch_22629cc: @ 22629cc :thumb
	mov     r1, #0x92
	lsl     r1, r1, #2
	mov     r2, #0x11
	ldr     r3, [r0, r1]
	lsl     r2, r2, #12
	cmp     r3, r2
	ble     branch_22629dc
	str     r2, [r0, r1]
.thumb
branch_22629dc: @ 22629dc :thumb
	bx      lr
@ 0x22629de


.align 2, 0


.thumb
Function_22629e0: @ 22629e0 :thumb
	push    {r3,lr}
	cmp     r3, #0x1
	bne     branch_22629fe
	mov     r2, #0x91
	lsl     r2, r2, #2
	ldr     r2, [r1, r2]
	cmp     r2, #0x62
	blt     branch_22629fe
	mov     r1, #0x0
	bl      Function_2261600
	ldr     r0, [pc, #0x38] @ 0x2262a30, (=0x57a)
	bl      Function_2005748
	pop     {r3,pc}
@ 0x22629fe

.thumb
branch_22629fe: @ 22629fe :thumb
	mov     r2, #0x91
	lsl     r2, r2, #2
	ldr     r2, [r1, r2]
	cmp     r2, #0x62
	bge     branch_2262a2e
	ldr     r2, [r1, #0x20]
	ldr     r1, [r1, #0x10]
	cmp     r1, r2
	bge     branch_2262a1e
	mov     r1, #0x2
	bl      Function_2261600
	ldr     r0, [pc, #0x1c] @ 0x2262a34, (=0x578)
	bl      Function_2005748
	pop     {r3,pc}
@ 0x2262a1e

.thumb
branch_2262a1e: @ 2262a1e :thumb
	cmp     r1, r2
	ble     branch_2262a2e
	mov     r1, #0x1
	bl      Function_2261600
	ldr     r0, [pc, #0x8] @ 0x2262a34, (=0x578)
	bl      Function_2005748
.thumb
branch_2262a2e: @ 2262a2e :thumb
	pop     {r3,pc}
@ 0x2262a30

.word 0x57a @ 0x2262a30
.word 0x578 @ 0x2262a34
.thumb
Function_2262a38: @ 2262a38 :thumb
	push    {r4,lr}
	mov     r1, #0x8e
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	cmp     r2, #0x0
	beq     branch_2262a6c
	mov     r2, #0x0
	str     r2, [r4, r1]
	.hword  0x1e52 @ sub r2, r2, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r2, [r4, r1]
	blx     Function_22638ac
	mov     r1, #0x9
	lsl     r1, r1, #6
	ldr     r2, [r4, r1]
	sub     r2, r2, r0
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x19
	bge     branch_2262a6c
	mov     r2, #0x0
	add     r0, r1, #0x4
	str     r2, [r4, r0]
.thumb
branch_2262a6c: @ 2262a6c :thumb
	pop     {r4,pc}
@ 0x2262a6e


.align 2, 0


.thumb
Function_2262a70: @ 2262a70 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x38
	mov     r5, r0
	ldr     r0, [pc, #0x108] @ 0x2262b80, (=0x2d8b6127)
	add     r1, sp, #0x1c
	str     r0, [sp, #0x1c]
	mov     r0, #0x32
	mov     r2, #0x1
	blx     Function_20b275c
	ldr     r0, [pc, #0xfc] @ 0x2262b84, (=0x7fff)
	add     r1, sp, #0x18
	str     r0, [sp, #0x18]
	mov     r0, #0x33
	mov     r2, #0x1
	blx     Function_20b275c
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     Function_20b275c
	mov     r0, #0x0
	str     r0, [sp, #0x2c]
	mov     r0, #0x13
	lsl     r0, r0, #12
	str     r0, [sp, #0x30]
	ldr     r0, [pc, #0xe0] @ 0x2262b88, (=0xffffb000)
	add     r1, sp, #0x2c
	str     r0, [sp, #0x34]
	mov     r0, #0x1c
	mov     r2, #0x3
	blx     Function_20b275c
	mov     r0, #0x99
	lsl     r0, r0, #2
	ldr     r4, [r5, r0]
	.hword  0x1d80 @ add r0, r0, #0x6
	ldsh    r0, [r5, r0]
	mov     r1, #0x64
	mul     r0, r4
	blx     _s32_div_f
	mov     r1, #0x26
	lsl     r1, r1, #4
	add     r6, r4, r0
	mov     r0, r1
	ldr     r4, [r5, r1]
	add     r0, #0x8
	add     r1, #0xc
	ldsh    r2, [r5, r0]
	ldsh    r0, [r5, r1]
	mov     r1, #0x64
	add     r0, r2, r0
	mul     r0, r4
	blx     _s32_div_f
	add     r0, r4, r0
	str     r0, [sp, #0x20]
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x28]
	mov     r0, #0x1b
	add     r1, sp, #0x20
	mov     r2, #0x3
	str     r6, [sp, #0x24]
	blx     Function_20b275c
	mov     r0, #0x3
	str     r0, [sp, #0x14]
	mov     r0, #0x10
	add     r1, sp, #0x14
	mov     r2, #0x1
	blx     Function_20b275c
	mov     r1, #0x0
	mov     r0, #0x15
	mov     r2, r1
	blx     Function_20b275c
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	mov     r0, #0x10
	add     r1, sp, #0x10
	mov     r2, #0x1
	blx     Function_20b275c
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_2262d4c
	blx     Function_2262d98
	ldr     r1, [r5, #0x4]
	mov     r2, #0x1
	ldr     r0, [r1, #0x2c]
	lsl     r4, r0, #16
	ldr     r0, [r1, #0x8]
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	ldr     r0, [pc, #0x50] @ 0x2262b8c, (=0x1fffffff)
	and     r1, r0
	ldr     r0, [pc, #0x50] @ 0x2262b90, (=0x72400000)
	orr     r0, r1
	str     r0, [sp, #0xc]
	mov     r0, #0x2a
	add     r1, sp, #0xc
	blx     Function_20b275c
	lsr     r0, r4, #17
	str     r0, [sp, #0x8]
	mov     r0, #0x2b
	add     r1, sp, #0x8
	mov     r2, #0x1
	blx     Function_20b275c
	ldr     r0, [pc, #0x38] @ 0x2262b94, (=0x1f00c1)
	add     r1, sp, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x29
	mov     r2, #0x1
	blx     Function_20b275c
	mov     r0, r5
	blx     Function_2262eac
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x0
	str     r2, [sp, #0x0]
	blx     Function_20b275c
	blx     Function_20b2628
	add     sp, #0x38
	pop     {r4-r6,pc}
@ 0x2262b80

.word 0x2d8b6127 @ 0x2262b80
.word 0x7fff @ 0x2262b84
.word 0xffffb000 @ 0x2262b88
.word 0x1fffffff @ 0x2262b8c
.word 0x72400000 @ 0x2262b90
.word 0x1f00c1 @ 0x2262b94
.thumb
Function_2262b98: @ 2262b98 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0xad
	mov     r1, #0x1d
	mov     r2, #0x6e
	bl      LoadFromNARC_2
	str     r0, [r5, #0x0]
	blx     Function_20b3c1c
	str     r0, [r5, #0x4]
	bl      Function_201cbcc
	ldr     r6, [r5, #0x4]
	ldrh    r0, [r6, #0x30]
	ldr     r7, [r6, #0x38]
	lsl     r4, r0, #3
	ldr     r0, [r6, #0x2c]
	lsl     r0, r0, #16
	lsr     r0, r0, #13
	str     r0, [sp, #0x0]
	mov     r0, #0x93
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2262bd0
	bl      ErrorHandling
.thumb
branch_2262bd0: @ 2262bd0 :thumb
	mov     r0, #0x6e
	mov     r1, r4
	bl      malloc
	mov     r1, #0x93
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x6e
	mov     r1, r4
	bl      malloc
	mov     r1, #0x25
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	.hword  0x1f09 @ sub r1, r1, #0x4
	ldr     r1, [r5, r1]
	add     r0, r6, r7
	mov     r2, r4
	blx     MI_CpuCopy8
	mov     r1, #0x25
	lsl     r1, r1, #4
	ldr     r1, [r5, r1]
	add     r0, r6, r7
	mov     r2, r4
	blx     MI_CpuCopy8
	mov     r0, #0x25
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r4
	blx     DC_FlushRange
	mov     r1, #0x96
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1f08 @ sub r0, r1, #0x4
	str     r4, [r5, r0]
	ldr     r0, [r5, #0x4]
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x0
	bne     branch_2262c2a
	bl      ErrorHandling
.thumb
branch_2262c2a: @ 2262c2a :thumb
	ldr     r2, [r5, #0x4]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r2, #0x14]
	add     r1, r2, r1
	sub     r1, r1, r0
	bl      Function_20182f0
	pop     {r3-r7,pc}
@ 0x2262c3a


.align 2, 0


.thumb
Function_2262c3c: @ 2262c3c :thumb
	push    {r4,lr}
	mov     r4, r0
	blx     GX_BeginLoadTexPltt
	mov     r2, #0x25
	lsl     r2, r2, #4
	mov     r1, r2
	ldr     r0, [r4, r2]
	add     r1, #0x8
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r1, [r4, r1]
	ldr     r2, [r4, r2]
	blx     GX_LoadTexPltt
	blx     GX_EndLoadTexPltt
	pop     {r4,pc}
@ 0x2262c5e


.align 2, 0
.thumb
Function_2262c60: @ 2262c60 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	lsl     r0, r1, #1
	add     r0, r1, r0
	mov     r1, #0x32
	lsl     r0, r0, #10
	lsl     r1, r1, #4
	blx     _s32_div_f
	add     r0, #0x80
	asr     r3, r0, #8
	cmp     r3, #0x10
	ble     branch_2262c7e
	mov     r3, #0x10
.thumb
branch_2262c7e: @ 2262c7e :thumb
	mov     r2, #0x93
	mov     r0, #0x1f
	lsl     r2, r2, #2
	str     r0, [sp, #0x0]
	add     r1, r2, #0x4
	ldr     r0, [r4, r2]
	add     r2, #0x8
	ldr     r2, [r4, r2]
	lsl     r3, r3, #24
	lsl     r2, r2, #15
	ldr     r1, [r4, r1]
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_200393c
	mov     r1, #0x25
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	blx     DC_FlushRange
	ldr     r0, [pc, #0x8] @ 0x2262cb4, (=0x276)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2262cb4

.word 0x276 @ 0x2262cb4
.thumb
Function_2262cb8: @ 2262cb8 :thumb
	push    {r4,lr}
	mov     r2, #0x97
	lsl     r2, r2, #2
	ldr     r3, [r0, r2]
	mov     r4, #0x0
	add     r1, r3, r1
	str     r1, [r0, r2]
	mov     r1, r2
	ldr     r3, [r0, r2]
	add     r1, #0xc4
	cmp     r3, r1
	blt     branch_2262cd8
	mov     r1, r2
	add     r1, #0xc4
	str     r1, [r0, r2]
	mov     r4, #0x1
.thumb
branch_2262cd8: @ 2262cd8 :thumb
	mov     r1, #0x97
	lsl     r1, r1, #2
	ldr     r1, [r0, r1]
	bl      Function_2262c60
	mov     r0, r4
	pop     {r4,pc}
@ 0x2262ce6


.align 2, 0


.thumb
Function_2262ce8: @ 2262ce8 :thumb
	mov     r1, #0x97
	ldr     r3, [pc, #0xc] @ 0x2262cf8, (=0x2262c61)
	mov     r2, #0x0
	lsl     r1, r1, #2
	str     r2, [r0, r1]
	ldr     r1, [r0, r1]
	bx      r3
@ 0x2262cf6


.align 2


.word 0x2262c61 @ 0x2262cf8
.thumb
Function_2262cfc: @ 2262cfc :thumb
	push    {r4,lr}
	mov     r2, #0x9a
	mov     r4, r0
	lsl     r2, r2, #2
	ldsh    r1, [r4, r2]
	cmp     r1, #0x0
	beq     branch_2262d44
	mov     r1, r2
	add     r1, #0xd
	ldrb    r1, [r4, r1]
	add     r3, r1, #0x1
	mov     r1, r2
	add     r1, #0xd
	strb    r3, [r4, r1]
	mov     r1, r2
	add     r1, #0xd
	ldrb    r1, [r4, r1]
	cmp     r1, #0x4
	bne     branch_2262d32
	sub     r2, #0xc
	ldr     r2, [r4, r2]
	lsr     r1, r2, #31
	add     r1, r2, r1
	asr     r1, r1, #1
	bl      Function_2262c60
	pop     {r4,pc}
@ 0x2262d32

.thumb
branch_2262d32: @ 2262d32 :thumb
	cmp     r1, #0x8
	bne     branch_2262d44
	sub     r2, #0xc
	ldr     r1, [r4, r2]
	bl      Function_2262c60
	ldr     r0, [pc, #0x8] @ 0x2262d48, (=0x275)
	mov     r1, #0x0
	strb    r1, [r4, r0]
.thumb
branch_2262d44: @ 2262d44 :thumb
	pop     {r4,pc}
@ 0x2262d46


.align 2


.word 0x275 @ 0x2262d48
.thumb
Function_2262d4c: @ 2262d4c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	cmp     r0, #0x0
	beq     branch_2262d5a
	mov     r0, #0x1
	b       branch_2262d5c
@ 0x2262d5a

.thumb
branch_2262d5a: @ 2262d5a :thumb
	mov     r0, #0x0
.thumb
branch_2262d5c: @ 2262d5c :thumb
	lsl     r1, r0, #15
	ldr     r0, [pc, #0x30] @ 0x2262d90, (=0x21085ef7)
	mov     r2, #0x1
	orr     r0, r1
	str     r0, [sp, #0x4]
	mov     r0, #0x30
	add     r1, sp, #0x4
	blx     Function_20b275c
	cmp     r4, #0x0
	beq     branch_2262d76
	mov     r0, #0x1
	b       branch_2262d78
@ 0x2262d76

.thumb
branch_2262d76: @ 2262d76 :thumb
	mov     r0, #0x0
.thumb
branch_2262d78: @ 2262d78 :thumb
	lsl     r1, r0, #15
	ldr     r0, [pc, #0x18] @ 0x2262d94, (=0x7fff)
	mov     r2, #0x1
	orr     r0, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x31
	add     r1, sp, #0x0
	blx     Function_20b275c
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2262d8e


.align 2


.word 0x21085ef7 @ 0x2262d90
.word 0x7fff @ 0x2262d94
.arm
Function_2262d98: @ 2262d98 :arm
	stmfd   sp!, {r4-r6,lr}
	sub     sp, sp, #0x80
	add     r3, sp, #0x0
	mov     r6, #0x0
.arm
branch_2262da8: @ 2262da8 :arm
	mov     r0, r6, lsl #1
	add     r5, r0, #0x1
	smull   r1, r0, r5, r5
	umull   r12, r2, r5, r1
	mla     r2, r5, r0, r2
	mov     r4, r5, asr #31
	umull   lr, r0, r5, r12
	mla     r2, r4, r1, r2
	mla     r0, r5, r2, r0
	mla     r0, r4, r12, r0
	mov     r1, lr, lsr #24
	orr     r1, r1, r0, lsl #8
	add     r0, r6, #0x1
	strb    r1, [r3, r6]
	and     r6, r0, #0xff
	cmp     r6, #0x7f
	bcc     branch_2262da8
	mov     r12, #0xff
	add     r1, sp, #0x0
	mov     r0, #0x34
	mov     r2, #0x20
	strb    r12, [r3, #0x7f]
	bl      Function_20b275c
	add     sp, sp, #0x80
	ldmfd   sp!, {r4-r6,pc}
@ 0x2262e0c

.arm
Function_2262e0c: @ 2262e0c :arm
	stmfd   sp!, {r4,lr}
	mov     lr, #0x0
	mov     r4, lr
	mov     r12, lr
	mov     r1, #2, 14 @ #0x80000
.arm
branch_2262e20: @ 2262e20 :arm
	add     r3, r0, lr, lsl #5
	str     r12, [r3, #0xc]
	str     r4, [r3, #0x10]
	str     r12, [r3, #0x14]
	sub     r2, r4, #1, 16 @ #0x10000
	str     r2, [r3, #0x18]
	str     r1, [r3, #0x1c]
	str     r4, [r3, #0x20]
	str     r1, [r3, #0x24]
	add     lr, lr, #0x1
	str     r2, [r3, #0x28]
	cmp     lr, #0x8
	sub     r4, r4, #1, 16 @ #0x10000
	blt     branch_2262e20
	ldmfd   sp!, {r4,pc}
@ 0x2262e5c

.arm
Function_2262e5c: @ 2262e5c :arm
	stmfd   sp!, {r4,lr}
	mov     lr, #0x0
	mov     r4, lr
	mov     r12, lr
	mov     r1, #2, 14 @ #0x80000
.arm
branch_2262e70: @ 2262e70 :arm
	add     r3, r0, lr, lsl #5
	str     r12, [r3, #0x10c]
	str     r4, [r3, #0x110]
	str     r12, [r3, #0x114]
	add     r2, r4, #1, 16 @ #0x10000
	str     r2, [r3, #0x118]
	str     r1, [r3, #0x11c]
	str     r4, [r3, #0x120]
	str     r1, [r3, #0x124]
	add     lr, lr, #0x1
	mov     r4, r2
	str     r2, [r3, #0x128]
	cmp     lr, #0x8
	blt     branch_2262e70
	ldmfd   sp!, {r4,pc}
@ 0x2262eac

.arm
Function_2262eac: @ 2262eac :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x48
	mov     r9, #0x0
	ldr     r6, [pc, #0x2a4] @ [0x2263164] (=0x1ff00000)
	mov     r10, r0
	mov     r4, r9
	add     r8, sp, #0x2
	add     r7, sp, #0x0
	mov     r11, r9
	mov     r5, r9
.arm
branch_2262ed4: @ 2262ed4 :arm
	mov     r0, #0x1
	str     r0, [sp, #0x44]
	mov     r0, #0x40
	add     r1, sp, #0x44
	mov     r2, #0x1
	bl      Function_20b275c
	add     r1, r10, r9, lsl #5
	ldr     r0, [r1, #0xc]
	ldr     r1, [r1, #0x10]
	mov     r2, r8
	mov     r3, r7
	bl      Function_2263168
	add     r1, r10, r9, lsl #5
	ldr     r0, [r1, #0x10c]
	ldr     r1, [r1, #0x110]
	mov     r0, r0, lsl #8
	mov     r1, r1, lsl #8
	mov     r1, r1, asr #16
	mov     r1, r1, lsl #16
	mov     r0, r0, asr #16
	mov     r1, r1, lsr #16
	mov     r0, r0, lsl #16
	mov     r1, r1, lsl #16
	orr     r0, r1, r0, lsr #16
	str     r0, [sp, #0x40]
	mov     r0, #0x22
	add     r1, sp, #0x40
	mov     r2, #0x1
	bl      Function_20b275c
	mov     r0, #0x21
	add     r1, sp, #0x3c
	mov     r2, #0x1
	str     r6, [sp, #0x3c]
	bl      Function_20b275c
	ldrh    r3, [sp, #0x2]
	ldrh    r2, [sp]
	mov     r0, #0x23
	add     r1, sp, #0x34
	orr     r2, r3, r2, lsl #16
	str     r2, [sp, #0x34]
	mov     r2, #0x2
	str     r5, [sp, #0x38]
	bl      Function_20b275c
	add     r1, r10, r9, lsl #5
	ldr     r0, [r1, #0x14]
	ldr     r1, [r1, #0x18]
	mov     r2, r8
	mov     r3, r7
	bl      Function_2263168
	add     r1, r10, r9, lsl #5
	ldr     r0, [r1, #0x114]
	ldr     r1, [r1, #0x118]
	mov     r0, r0, lsl #8
	mov     r1, r1, lsl #8
	mov     r1, r1, asr #16
	mov     r1, r1, lsl #16
	mov     r0, r0, asr #16
	mov     r1, r1, lsr #16
	mov     r0, r0, lsl #16
	mov     r1, r1, lsl #16
	orr     r0, r1, r0, lsr #16
	str     r0, [sp, #0x30]
	mov     r0, #0x22
	add     r1, sp, #0x30
	mov     r2, #0x1
	bl      Function_20b275c
	mov     r0, #0x21
	add     r1, sp, #0x2c
	mov     r2, #0x1
	str     r6, [sp, #0x2c]
	bl      Function_20b275c
	ldrh    r3, [sp, #0x2]
	ldrh    r2, [sp]
	mov     r0, #0x23
	add     r1, sp, #0x24
	orr     r2, r3, r2, lsl #16
	str     r2, [sp, #0x24]
	mov     r2, #0x2
	str     r4, [sp, #0x28]
	bl      Function_20b275c
	add     r1, r10, r9, lsl #5
	ldr     r0, [r1, #0x24]
	ldr     r1, [r1, #0x28]
	mov     r2, r8
	mov     r3, r7
	bl      Function_2263168
	add     r1, r10, r9, lsl #5
	ldr     r0, [r1, #0x124]
	ldr     r1, [r1, #0x128]
	mov     r0, r0, lsl #8
	mov     r1, r1, lsl #8
	mov     r1, r1, asr #16
	mov     r1, r1, lsl #16
	mov     r0, r0, asr #16
	mov     r1, r1, lsr #16
	mov     r0, r0, lsl #16
	mov     r1, r1, lsl #16
	orr     r0, r1, r0, lsr #16
	str     r0, [sp, #0x20]
	mov     r0, #0x22
	add     r1, sp, #0x20
	mov     r2, #0x1
	bl      Function_20b275c
	mov     r0, #0x21
	add     r1, sp, #0x1c
	mov     r2, #0x1
	str     r6, [sp, #0x1c]
	bl      Function_20b275c
	ldrh    r3, [sp, #0x2]
	ldrh    r2, [sp]
	mov     r0, #0x23
	add     r1, sp, #0x14
	orr     r2, r3, r2, lsl #16
	str     r2, [sp, #0x14]
	mov     r2, #0x2
	str     r11, [sp, #0x18]
	bl      Function_20b275c
	add     r1, r10, r9, lsl #5
	ldr     r0, [r1, #0x1c]
	ldr     r1, [r1, #0x20]
	mov     r2, r8
	mov     r3, r7
	bl      Function_2263168
	add     r1, r10, r9, lsl #5
	ldr     r0, [r1, #0x11c]
	ldr     r1, [r1, #0x120]
	mov     r0, r0, lsl #8
	mov     r1, r1, lsl #8
	mov     r1, r1, asr #16
	mov     r1, r1, lsl #16
	mov     r0, r0, asr #16
	mov     r1, r1, lsr #16
	mov     r0, r0, lsl #16
	mov     r1, r1, lsl #16
	orr     r0, r1, r0, lsr #16
	str     r0, [sp, #0x10]
	mov     r0, #0x22
	add     r1, sp, #0x10
	mov     r2, #0x1
	bl      Function_20b275c
	mov     r0, #0x21
	add     r1, sp, #0xc
	mov     r2, #0x1
	str     r6, [sp, #0xc]
	bl      Function_20b275c
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldrh    r3, [sp, #0x2]
	ldrh    r2, [sp]
	mov     r0, #0x23
	add     r1, sp, #0x4
	orr     r2, r3, r2, lsl #16
	str     r2, [sp, #0x4]
	mov     r2, #0x2
	bl      Function_20b275c
	mov     r1, #0x0
	mov     r0, #0x41
	mov     r2, r1
	bl      Function_20b275c
	add     r9, r9, #0x1
	cmp     r9, #0x8
	blt     branch_2262ed4
	add     sp, sp, #0x48
	ldmfd   sp!, {r3-r11,pc}
@ 0x2263164

.word 0x1ff00000 @ 0x2263164
.arm
Function_2263168: @ 2263168 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r4, r0, asr #31
	mov     r5, r1
	mov     r1, r4, lsl #12
	mov     r7, r2
	mov     r6, r3
	orr     r1, r1, r0, lsr #20
	mov     r0, r0, lsl #12
	mov     r2, #2, 14 @ #0x80000
	mov     r3, #0x0
	bl      _ll_sdiv
	mov     r1, r5, asr #31
	mov     r1, r1, lsl #12
	mov     r4, r0
	orr     r1, r1, r5, lsr #20
	mov     r0, r5, lsl #12
	mov     r2, #2, 14 @ #0x80000
	mov     r3, #0x0
	bl      _ll_sdiv
	mov     r5, r0
	ldr     r0, [pc, #0xac] @ [0x226326c] (=0x7fff)
	cmp     r4, r0
	ble     branch_22631c8
	blx     ErrorHandling
.arm
branch_22631c8: @ 22631c8 :arm
	mov     r0, #2, 18 @ #0x8000
	rsb     r0, r0, #0x0
	cmp     r4, r0
	bge     branch_22631dc
	blx     ErrorHandling
.arm
branch_22631dc: @ 22631dc :arm
	ldr     r0, [pc, #0x88] @ [0x226326c] (=0x7fff)
	cmp     r5, r0
	ble     branch_22631ec
	blx     ErrorHandling
.arm
branch_22631ec: @ 22631ec :arm
	mov     r0, #2, 18 @ #0x8000
	rsb     r0, r0, #0x0
	cmp     r5, r0
	bge     branch_2263200
	blx     ErrorHandling
.arm
branch_2263200: @ 2263200 :arm
	ldr     r0, [pc, #0x64] @ [0x226326c] (=0x7fff)
	sub     r1, r4, #2, 22 @ #0x800
	cmp     r1, r0
	ble     branch_2263214
	blx     ErrorHandling
.arm
branch_2263214: @ 2263214 :arm
	mov     r0, #2, 18 @ #0x8000
	sub     r1, r4, #2, 22 @ #0x800
	rsb     r0, r0, #0x0
	cmp     r1, r0
	bge     branch_226322c
	blx     ErrorHandling
.arm
branch_226322c: @ 226322c :arm
	ldr     r0, [pc, #0x38] @ [0x226326c] (=0x7fff)
	add     r1, r5, #2, 22 @ #0x800
	cmp     r1, r0
	ble     branch_2263240
	blx     ErrorHandling
.arm
branch_2263240: @ 2263240 :arm
	mov     r0, #2, 18 @ #0x8000
	add     r1, r5, #2, 22 @ #0x800
	rsb     r0, r0, #0x0
	cmp     r1, r0
	bge     branch_2263258
	blx     ErrorHandling
.arm
branch_2263258: @ 2263258 :arm
	sub     r0, r4, #2, 22 @ #0x800
	strh    r0, [r7]
	add     r0, r5, #2, 22 @ #0x800
	strh    r0, [r6]
	ldmfd   sp!, {r3-r7,pc}
@ 0x226326c

.word 0x7fff @ 0x226326c
.arm
Function_2263270: @ 2263270 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x238]
	cmp     r1, #0x1
	ldrne   r1, [r4, #0x218]
	cmpne   r1, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r2, [r4, #0x270]
	ldr     r3, [pc, #0xa0] @ [0x226333c] (=0x2266b07)
	ldr     r1, [pc, #0xa0] @ [0x2263340] (=0x2266b05)
	ldrb    lr, [r3, r2, lsl #0x2]
	ldr     r5, [r4, #0x230]
	ldrb    r3, [r1, r2, lsl #0x2]
	ldr     r12, [r4, #0x20c]
	add     r1, lr, r5, asr #12
	cmp     r12, r3
	blt     branch_22632e4
	ldr     r3, [pc, #0x84] @ [0x2263344] (=0x2266b06)
	ldrb    r3, [r3, r2, lsl #0x2]
	cmp     r12, r3
	bgt     branch_22632e4
	ldr     r12, [r4, #0x210]
	cmp     r12, r1
	blt     branch_22632e4
	ldr     r3, [pc, #0x6c] @ [0x2263348] (=0x2266b08)
	ldrb    r2, [r3, r2, lsl #0x2]
	cmp     r12, r2
	ble     branch_22632ec
.arm
branch_22632e4: @ 22632e4 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x22632ec

.arm
branch_22632ec: @ 22632ec :arm
	mov     r2, #0x1
	str     r2, [r4, #0x238]
	ldr     r2, [r4, #0x20c]
	str     r2, [r4, #0x224]
	ldr     r2, [r4, #0x210]
	str     r2, [r4, #0x228]
	ldr     r2, [r4, #0x210]
	sub     r1, r2, r1
	str     r1, [r4, #0x22c]
	ldr     r2, [r4, #0x20]
	ldr     r1, [r4, #0x10]
	sub     r1, r1, r2
	add     r1, r1, r1, lsr #31
	add     r1, r2, r1, asr #1
	rsb     r1, r1, #0x0
	str     r1, [r4, #0x230]
	bl      Function_22638ac
	str     r0, [r4, #0x240]
	mov     r0, #0x1
	ldmfd   sp!, {r3-r5,pc}
@ 0x226333c

.word 0x2266b07 @ 0x226333c
.word 0x2266b05 @ 0x2263340
.word 0x2266b06 @ 0x2263344
.word 0x2266b08 @ 0x2263348
.arm
Function_226334c: @ 226334c :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x238]
	mov     r4, #0x0
	cmp     r0, #0x1
	bne     branch_22633e8
	ldr     r2, [r5, #0x23c]
	ldr     r1, [r5, #0x210]
	cmp     r1, r2
	movlt   r0, r4
	strltb  r4, [r5, #0x274]
	ldmltfd sp!, {r3-r5,pc}
	streqb  r4, [r5, #0x274]
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r5,pc}
	sub     r0, r4, #0x1
	cmp     r2, r0
	beq     branch_22633bc
	cmp     r1, r2
	ble     branch_22633bc
	ldr     r0, [pc, #0x9c] @ [0x2263440] (=0x577)
	blx     Function_20057d4
	cmp     r0, #0x0
	bne     branch_22633bc
	ldr     r0, [pc, #0x8c] @ [0x2263440] (=0x577)
	blx     Function_2005748
	mov     r0, #0x1
	strb    r0, [r5, #0x274]
.arm
branch_22633bc: @ 22633bc :arm
	ldr     r1, [r5, #0x270]
	ldr     r0, [pc, #0x7c] @ [0x2263444] (=0x2266b07)
	ldr     r12, [r5, #0x210]
	ldr     r3, [r5, #0x22c]
	ldr     r2, [r5, #0x230]
	ldrb    r0, [r0, r1, lsl #0x2]
	sub     r1, r12, r3
	str     r12, [r5, #0x23c]
	add     r0, r2, r0, lsl #12
	rsb     r2, r0, r1, lsl #12
	b       branch_22633f4
@ 0x22633e8

.arm
branch_22633e8: @ 22633e8 :arm
	ldr     r0, [r5, #0x248]
	mov     r4, #0x1
	rsb     r2, r0, #0x0
.arm
branch_22633f4: @ 22633f4 :arm
	mov     r0, r5
	mov     r1, r4
	bl      Function_2263448
	cmp     r0, #0x0
	beq     branch_226341c
	cmp     r0, #0x1
	cmpne   r0, #0x2
	bne     branch_226341c
	mov     r0, r5
	blx     Function_2262a38
.arm
branch_226341c: @ 226341c :arm
	ldr     r2, [r5, #0x20]
	ldr     r1, [r5, #0x10]
	mov     r0, #0x1
	sub     r1, r1, r2
	add     r1, r1, r1, lsr #31
	add     r1, r2, r1, asr #1
	rsb     r1, r1, #0x0
	str     r1, [r5, #0x230]
	ldmfd   sp!, {r3-r5,pc}
@ 0x2263440

.word 0x577 @ 0x2263440
.word 0x2266b07 @ 0x2263444
.arm
Function_2263448: @ 2263448 :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0x14
	mov     r4, r0
	ldr     r5, [r4, #0x10]
	ldr     r3, [r4, #0x20]
	rsb     r6, r5, #0x0
	rsb     r7, r3, #0x0
	sub     r3, r6, r7
	add     r3, r3, r3, lsr #31
	mov     r5, r2
	mov     r2, #0x0
	mov     r9, r1
	add     r8, r7, r3, asr #1
	str     r2, [sp, #0x8]
	bl      Function_22637ac
	cmp     r0, #0x0
	beq     branch_22634a0
	cmp     r0, #0x1
	beq     branch_22634b4
	cmp     r0, #0x2
	beq     branch_22634e0
	b       branch_2263508
@ 0x22634a0

.arm
branch_22634a0: @ 22634a0 :arm
	add     r1, r6, r5
	add     r0, r7, r5
	str     r1, [sp, #0x10]
	str     r0, [sp, #0xc]
	b       branch_2263508
@ 0x22634b4

.arm
branch_22634b4: @ 22634b4 :arm
	add     r0, sp, #0x10
	str     r0, [sp]
	add     r10, sp, #0xc
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	mov     r3, r7
	str     r10, [sp, #0x4]
	bl      Function_22637e4
	str     r0, [sp, #0x8]
	b       branch_2263508
@ 0x22634e0

.arm
branch_22634e0: @ 22634e0 :arm
	add     r0, sp, #0xc
	str     r0, [sp]
	add     r10, sp, #0x10
	mov     r0, r4
	mov     r1, r5
	mov     r2, r7
	mov     r3, r6
	str     r10, [sp, #0x4]
	bl      Function_22637e4
	str     r0, [sp, #0x8]
.arm
branch_2263508: @ 2263508 :arm
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	sub     r0, r2, r1
	add     r0, r0, r0, lsr #31
	add     r5, r1, r0, asr #1
	cmp     r8, r5
	cmpeq   r6, r2
	cmpeq   r7, r1
	addeq   sp, sp, #0x14
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r11,pc}
	cmp     r5, #0x0
	movlt   r5, #0x0
	cmp     r2, #0x0
	movlt   r0, #0x0
	strlt   r0, [sp, #0x10]
	cmp     r1, #0x0
	movlt   r0, #0x0
	strlt   r0, [sp, #0xc]
	cmp     r5, #25, 18 @ #0x64000
	movgt   r0, #0x1
	strgt   r0, [sp, #0x8]
	ldr     r0, [sp, #0x10]
	movgt   r5, #25, 18 @ #0x64000
	cmp     r0, #25, 18 @ #0x64000
	ble     branch_2263580
	mov     r0, #25, 18 @ #0x64000
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
.arm
branch_2263580: @ 2263580 :arm
	ldr     r0, [sp, #0xc]
	cmp     r0, #25, 18 @ #0x64000
	ble     branch_226359c
	mov     r0, #25, 18 @ #0x64000
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
.arm
branch_226359c: @ 226359c :arm
	mov     r0, r4
	mov     r1, r9
	bl      Function_22637ac
	cmp     r0, #0x0
	beq     branch_22635c0
	cmp     r0, #0x1
	beq     branch_2263600
	cmp     r0, #0x2
	beq     branch_22635e0
.arm
branch_22635c0: @ 22635c0 :arm
	ldr     r0, [sp, #0xc]
	mov     r1, #1, 14 @ #0x40000
	sub     r0, r0, r5
	bl      FX_Atan2Idx
	add     r1, r0, #2, 18 @ #0x8000
	mov     r1, r1, lsl #16
	mov     r11, r1, lsr #16
	b       branch_2263624
@ 0x22635e0

.arm
branch_22635e0: @ 22635e0 :arm
	ldr     r0, [sp, #0xc]
	mov     r1, #1, 14 @ #0x40000
	sub     r0, r0, r5
	bl      FX_Atan2Idx
	add     r1, r0, #2, 18 @ #0x8000
	mov     r1, r1, lsl #16
	mov     r11, r1, lsr #16
	b       branch_2263624
@ 0x2263600

.arm
branch_2263600: @ 2263600 :arm
	ldr     r0, [sp, #0x10]
	mov     r1, #1, 14 @ #0x40000
	sub     r0, r0, r5
	rsb     r1, r1, #0x0
	bl      FX_Atan2Idx
	mov     r11, r0
	add     r0, r11, #2, 18 @ #0x8000
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
.arm
branch_2263624: @ 2263624 :arm
	mov     r1, r11, asr #4
	mov     r7, r1, lsl #1
	add     r2, r7, #0x1
	ldr     r1, [pc, #0x16c] @ [0x22637a4] (=0x20f983c)
	mov     r2, r2, lsl #1
	ldrsh   r3, [r1, r2]
	mov     r2, r0, asr #4
	mov     r6, r2, lsl #1
	mov     r2, r3, lsl #6
	add     r2, r2, #1, 14 @ #0x40000
	str     r2, [r4, #0xc]
	mov     r2, r7, lsl #1
	ldrsh   r7, [r1, r2]
	add     r2, r6, #0x1
	mov     r2, r2, lsl #1
	add     r7, r5, r7, lsl #6
	rsb     r7, r7, #0x0
	str     r7, [r4, #0x10]
	ldrsh   r7, [r1, r2]
	ldr     r2, [pc, #0x130] @ [0x22637a8] (=0x92492493)
	rsb     r3, r5, #7, 16 @ #0x70000
	mov     r7, r7, lsl #6
	add     r7, r7, #1, 14 @ #0x40000
	mov     r6, r6, lsl #1
	str     r7, [r4, #0x1c]
	ldrsh   r6, [r1, r6]
	smull   r1, lr, r2, r3
	add     r1, r5, r6, lsl #6
	rsb     r6, r1, #0x0
	add     lr, r3, lr
	mov     r1, r3, lsr #31
	str     r6, [r4, #0x20]
	cmp     r0, #2, 18 @ #0x8000
	add     lr, r1, lr, asr #2
	smullls r1, r6, r2, r0
	addls   r6, r0, r6
	movls   r1, r0, lsr #31
	bls     branch_22636d0
	rsb     r1, r0, #1, 16 @ #0x10000
	rsb     r3, r1, #0x0
	smull   r1, r6, r2, r3
	add     r6, r3, r6
	mov     r1, r3, lsr #31
.arm
branch_22636d0: @ 22636d0 :arm
	add     r6, r1, r6, asr #2
	ldr     r3, [pc, #0xc8] @ [0x22637a4] (=0x20f983c)
	mov     r7, r6
	mov     r8, lr
	mov     r12, #0x1
.arm
branch_22636e4: @ 22636e4 :arm
	sub     r1, r11, r7
	mov     r1, r1, asr #4
	mov     r1, r1, lsl #1
	add     r2, r3, r1, lsl #1
	ldrsh   r9, [r2, #0x2]
	sub     r2, r0, r7
	mov     r1, r1, lsl #1
	mov     r9, r9, lsl #6
	add     r10, r9, #1, 14 @ #0x40000
	mov     r2, r2, asr #4
	mov     r9, r2, lsl #1
	add     r2, r4, r12, lsl #5
	str     r10, [r2, #0xc]
	ldrsh   r1, [r3, r1]
	mov     r10, r9, lsl #1
	add     r9, r3, r9, lsl #1
	add     r1, r5, r1, lsl #6
	add     r1, r8, r1
	rsb     r1, r1, #0x0
	str     r1, [r2, #0x10]
	ldrsh   r1, [r9, #0x2]
	add     r7, r7, r6
	add     r12, r12, #0x1
	mov     r1, r1, lsl #6
	add     r1, r1, #1, 14 @ #0x40000
	str     r1, [r2, #0x1c]
	ldrsh   r1, [r3, r10]
	cmp     r12, #0x7
	add     r1, r5, r1, lsl #6
	add     r1, r8, r1
	rsb     r1, r1, #0x0
	str     r1, [r2, #0x20]
	ldr     r1, [r2, #0xc]
	add     r8, r8, lr
	str     r1, [r2, #-0xc]
	ldr     r1, [r2, #0x10]
	str     r1, [r2, #-0x8]
	ldr     r1, [r2, #0x1c]
	str     r1, [r2, #0x4]
	ldr     r1, [r2, #0x20]
	str     r1, [r2, #0x8]
	blt     branch_22636e4
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x1
	moveq   r0, #0x2
	movne   r0, #0x0
	add     sp, sp, #0x14
	ldmfd   sp!, {r4-r11,pc}
@ 0x22637a4

.word 0x20f983c @ 0x22637a4
.word 0x92492493 @ 0x22637a8
.arm
Function_22637ac: @ 22637ac :arm
	cmp     r1, #0x1
	moveq   r0, #0x0
	bxeq    lr
	ldr     r2, [r0, #0x21c]
	ldr     r1, [r0, #0x224]
	sub     r0, r2, #0x10
	cmp     r1, r0
	movlt   r0, #0x1
	bxlt    lr
	add     r0, r2, #0x10
	cmp     r1, r0
	movgt   r0, #0x2
	movle   r0, #0x0
	bx      lr
@ 0x22637e4

.arm
Function_22637e4: @ 22637e4 :arm
	stmfd   sp!, {r4,lr}
	ldr     lr, [sp, #0x8]
	add     r4, r2, r1
	mov     r0, #0x0
	cmp     r4, #25, 18 @ #0x64000
	subgt   r0, r4, #25, 18 @ #0x64000
	subgt   r1, r1, r0
	movgt   r0, #0x1
	ldr     r12, [sp, #0xc]
	str     r2, [lr]
	str     r3, [r12]
	add     r4, r2, r1
	str     r4, [lr]
	cmp     r3, r2
	strgt   r3, [r12]
	ldmgtfd sp!, {r4,pc}
	mov     r2, #0x19
	mul     r2, r1, r2
	ldr     lr, [pc, #0x14] @ [0x2263848] (=0x51eb851f)
	mov     r1, r2, lsr #31
	smull   r2, r4, lr, r2
	add     r4, r1, r4, asr #5
	sub     r1, r3, r4
	str     r1, [r12]
	ldmfd   sp!, {r4,pc}
@ 0x2263848

.word 0x51eb851f @ 0x2263848
.arm
Function_226384c: @ 226384c :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r5, [r0, #0x20]
	ldr     r1, [r0, #0x10]
	ldr     r4, [r0, #0x1c]
	sub     r1, r1, r5
	add     r1, r1, r1, lsr #31
	ldr     lr, [r0, #0xc]
	ldr     r12, [r0, #0xe4]
	ldr     r3, [r0, #0xd4]
	ldr     r2, [r0, #0xd8]
	add     r0, r5, r1, asr #1
	sub     r0, r2, r0
	sub     r2, r4, lr
	sub     r1, r12, r3
	add     r1, r2, r1
	rsb     r0, r0, #0x0
	smull   r2, r0, r1, r0
	adds    r1, r2, #2, 22 @ #0x800
	adc     r0, r0, #0x0
	mov     r1, r1, lsr #12
	orr     r1, r1, r0, lsl #20
	add     r0, r1, r1, lsr #31
	mov     r0, r0, asr #1
	ldmfd   sp!, {r3-r5,pc}
@ 0x22638ac

.arm
Function_22638ac: @ 22638ac :arm
	stmfd   sp!, {r3,lr}
	bl      Function_226384c
	mov     r2, #0x64
	umull   r3, r1, r0, r2
	mov     r0, r0, asr #31
	mla     r1, r0, r2, r1
	mov     r0, r3
	mov     r3, #0x0
	mov     r2, #50, 12 @ #0x3200000
	bl      _ll_sdiv
	ldmfd   sp!, {r3,pc}
@ 0x22638d8


.arm
Function_22638d8: @ 22638d8 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x18
	mov     r5, r0
	mov     r0, #0xad
	mov     r1, #0x6e
	blx     LoadFromNARC_8 @ TODO 0x2006c24
	mov     r4, r0
	str     r4, [sp]
	mov     r0, #0x3a
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r1, #0x1
	str     r1, [sp, #0xc]
	ldr     r0, [pc, #0x9c] @ [0x22639b4] (=0x2715)
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x8c]
	ldr     r2, [r5, #0x24]
	ldr     r3, [r5, #0x28]
	mov     r1, #0x2
	blx     Function_200cdc4
	mov     r0, #0x0
	str     r0, [sp]
	mov     r1, #0x1
	ldr     r0, [pc, #0x74] @ [0x22639b8] (=0x2713)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r2, r4
	mov     r3, #0x37
	blx     Function_200cc3c
	mov     r0, #0x0
	str     r0, [sp]
	ldr     r0, [pc, #0x4c] @ [0x22639b8] (=0x2713)
	mov     r2, r4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r3, #0x39
	blx     Function_200ce24
	mov     r0, #0x0
	str     r0, [sp]
	ldr     r0, [pc, #0x28] @ [0x22639b8] (=0x2713)
	mov     r2, r4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	mov     r3, #0x38
	blx     Function_200ce54
	mov     r0, r4
	blx     Call_FS_CloseFile @ TODO 0x2006ca8
	add     sp, sp, #0x18
	ldmfd   sp!, {r3-r5,pc}
@ 0x22639b4

.word 0x2715 @ 0x22639b4
.word 0x2713 @ 0x22639b8



.arm
Function_22639bc: @ 22639bc :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	ldr     r1, [pc, #0x28] @ [0x22639f8] (=0x2713)
	blx     Function_200d070
	ldr     r0, [r4, #0x28]
	ldr     r1, [pc, #0x1c] @ [0x22639f8] (=0x2713)
	blx     Function_200d090
	ldr     r0, [r4, #0x28]
	ldr     r1, [pc, #0x10] @ [0x22639f8] (=0x2713)
	blx     Function_200d0a0
	ldr     r0, [r4, #0x28]
	ldr     r1, [pc, #0x8] @ [0x22639fc] (=0x2715)
	blx     Function_200d080
	ldmfd   sp!, {r4,pc}
@ 0x22639f8

.word 0x2713 @ 0x22639f8
.word 0x2715 @ 0x22639fc
.arm
Function_2263a00: @ 2263a00 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x34
	ldr     lr, [pc, #0x58] @ [0x2263a68] (=0x2266b38)
	mov     r5, r0
	ldmia   lr!, {r0-r3}
	add     r12, sp, #0x0
	mov     r4, r12
	stmia   r12!, {r0-r3}
	ldmia   lr!, {r0-r3}
	stmia   r12!, {r0-r3}
	ldmia   lr!, {r0-r3}
	stmia   r12!, {r0-r3}
	ldr     r0, [lr]
	mov     r2, r4
	str     r0, [r12]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	blx     Function_200ce6c
	mov     r4, r0
	mov     r1, #0x0
	blx     Function_200d3f4
	ldr     r0, [r4]
	blx     Function_200d324
	mov     r0, r4
	add     sp, sp, #0x34
	ldmfd   sp!, {r4,r5,pc}
@ 0x2263a68

.word 0x2266b38 @ 0x2263a68
.arm
Function_2263a6c: @ 2263a6c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	ldr     r2, [r6, #0x238]
	mov     r5, r1
	cmp     r2, #0x0
	moveq   r4, #0x0
	beq     branch_2263a94
	mov     r1, #0x0
	bl      Function_22637ac
	add     r4, r0, #0x1
.arm
branch_2263a94: @ 2263a94 :arm
	ldr     r1, [r6, #0x270]
	ldr     r0, [pc, #0x40] @ [0x2263ae0] (=0x2266b07)
	ldr     r3, [r6, #0x21c]
	ldrb    r0, [r0, r1, lsl #0x2]
	ldr     r2, [r6, #0x230]
	mov     r1, r3, lsl #16
	add     r0, r0, r2, asr #12
	mov     r2, r0, lsl #16
	mov     r0, r5
	mov     r1, r1, asr #16
	mov     r2, r2, asr #16
	mov     r3, #22, 16 @ #0x160000
	blx     Function_200d500
	mov     r0, r5
	mov     r1, r4
	blx     Function_200d364
	ldr     r0, [r5]
	blx     Function_200d324
	ldmfd   sp!, {r4-r6,pc}
@ 0x2263ae0

.word 0x2266b07 @ 0x2263ae0
.arm
Function_2263ae4: @ 2263ae4 :arm
	ldr     r12, [pc, #0x0] @ [0x2263aec] (=0x200d0f5)
	bx      r12
@ 0x2263aec

.word 0x200d0f5 @ 0x2263aec
.thumb
Function_2263af0: @ 2263af0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r0
	str     r1, [sp, #0x10]
	mov     r0, #0xad
	mov     r1, #0x6e
	mov     r5, r2
	mov     r4, r3
	bl      LoadFromNARC_8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r1, #0x6e
	str     r1, [sp, #0xc]
	ldr     r1, [pc, #0x68] @ 0x2263b7c, (=0x2266bec)
	lsl     r6, r5, #3
	ldrh    r1, [r1, r6]
	mov     r2, r7
	mov     r3, #0x7
	str     r0, [sp, #0x14]
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x58] @ 0x2263b80, (=0x2266bee)
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6e
	str     r0, [sp, #0xc]
	ldrh    r1, [r1, r6]
	ldr     r0, [sp, #0x14]
	mov     r2, r7
	mov     r3, #0x7
	bl      Function_200710c
	ldr     r0, [sp, #0x14]
	bl      Call_FS_CloseFile
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x30
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x10]
	mov     r1, #0xc
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [pc, #0x30] @ 0x2263b84, (=0x2266ed4)
	lsl     r1, r5, #2
	add     r0, r0, r2
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	str     r0, [r4, #0xc]
	str     r5, [r4, #0x4]
	mov     r0, r4
	str     r1, [r4, #0x0]
	add     r0, #0x2c
	strb    r1, [r0, #0x0]
	ldr     r2, [sp, #0x10]
	mov     r0, r7
	mov     r1, r4
	bl      Function_2263ba4
	ldr     r0, [pc, #0x14] @ 0x2263b88, (=0x5eb)
	bl      Function_2005748
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2263b7c

.word 0x2266bec @ 0x2263b7c
.word 0x2266bee @ 0x2263b80
.word 0x2266ed4 @ 0x2263b84
.word 0x5eb @ 0x2263b88
.thumb
Function_2263b8c: @ 2263b8c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r1, #0x7
	bl      Function_2019ebc
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	add     r4, #0x2d
	strb    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2263ba2


.align 2, 0


.thumb
Function_2263ba4: @ 2263ba4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_2263c86
	add     r0, sp, #0xc
	str     r0, [sp, #0x0]
	mov     r0, r2
	ldr     r1, [r5, #0x4]
	ldr     r2, [r5, #0x8]
	add     r3, sp, #0x10
	bl      Function_2263c8c
	mov     r0, #0x1
	ldr     r1, [sp, #0x10]
	lsl     r0, r0, #12
	cmp     r1, r0
	bne     branch_2263bd0
	mov     r7, #0x0
	b       branch_2263bf0
@ 0x2263bd0

.thumb
branch_2263bd0: @ 2263bd0 :thumb
	bge     branch_2263be2
	lsl     r1, r1, #7
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	mov     r0, #0x80
	sub     r7, r0, r1
	b       branch_2263bf0
@ 0x2263be2

.thumb
branch_2263be2: @ 2263be2 :thumb
	sub     r0, r1, r0
	lsl     r1, r0, #7
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	neg     r7, r0
.thumb
branch_2263bf0: @ 2263bf0 :thumb
	mov     r0, #0x1
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #12
	cmp     r1, r0
	bne     branch_2263bfe
	mov     r6, #0x0
	b       branch_2263c1e
@ 0x2263bfe

.thumb
branch_2263bfe: @ 2263bfe :thumb
	bge     branch_2263c10
	lsl     r1, r1, #7
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	mov     r0, #0x80
	sub     r6, r0, r1
	b       branch_2263c1e
@ 0x2263c10

.thumb
branch_2263c10: @ 2263c10 :thumb
	sub     r0, r1, r0
	lsl     r1, r0, #7
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	neg     r6, r0
.thumb
branch_2263c1e: @ 2263c1e :thumb
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x0
	bne     branch_2263c28
	mov     r4, #0x0
	b       branch_2263c44
@ 0x2263c28

.thumb
branch_2263c28: @ 2263c28 :thumb
	bl      PRNG
	mov     r1, #0x7
	and     r0, r1
	add     r4, r0, #0x1
	ldr     r1, [r5, #0x28]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2263c3c
	neg     r4, r4
.thumb
branch_2263c3c: @ 2263c3c :thumb
	ldr     r1, [r5, #0x28]
	mov     r0, #0x1
	eor     r0, r1
	str     r0, [r5, #0x28]
.thumb
branch_2263c44: @ 2263c44 :thumb
	ldr     r0, [sp, #0x10]
	blx     FX_Inv
	mov     r5, r0
	ldr     r0, [sp, #0xc]
	blx     FX_Inv
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x7
	mov     r2, #0x3
	mov     r3, r5
	bl      Function_201c6a8
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	mov     r1, #0x7
	mov     r2, #0x6
	bl      Function_201c6a8
	ldr     r0, [sp, #0x4]
	mov     r1, #0x7
	mov     r2, #0x0
	sub     r3, r4, r7
	bl      Function_201c63c
	mov     r3, #0x27
	ldr     r0, [sp, #0x4]
	mov     r1, #0x7
	mov     r2, #0x3
	sub     r3, r3, r6
	bl      Function_201c63c
.thumb
branch_2263c86: @ 2263c86 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2263c8a


.align 2, 0


.thumb
Function_2263c8c: @ 2263c8c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r3
	ldr     r0, [pc, #0x54] @ 0x2263ce8, (=0x2266bf0)
	lsl     r3, r1, #3
	ldr     r0, [r0, r3]
	mov     r6, r5
	mul     r0, r2
	mov     r2, #0xc
	mul     r6, r2
	ldr     r3, [pc, #0x48] @ 0x2263cec, (=0x2266ed4)
	lsl     r2, r1, #2
	add     r1, r3, r6
	ldr     r1, [r2, r1]
	blx     _s32_div_f
	mov     r1, #0x3
	lsl     r1, r1, #8
	add     r2, r0, r1
	ldr     r1, [sp, #0x10]
	str     r2, [r4, #0x0]
	str     r2, [r1, #0x0]
	mov     r1, #0x1
	lsl     r1, r1, #12
	cmp     r2, r1
	ble     branch_2263ce6
	mov     r1, #0xd
	lsl     r1, r1, #8
	sub     r0, r0, r1
	ldr     r2, [pc, #0x28] @ 0x2263cf0, (=0x119a)
	asr     r1, r0, #31
	mov     r3, #0x0
	blx     _ll_mul
	mov     r3, #0x2
	mov     r5, #0x0
	lsl     r3, r3, #10
	add     r3, r0, r3
	adc     r1, r5
	lsl     r0, r1, #20
	lsr     r1, r3, #12
	ldr     r2, [r4, #0x0]
	orr     r1, r0
	add     r0, r2, r1
	str     r0, [r4, #0x0]
.thumb
branch_2263ce6: @ 2263ce6 :thumb
	pop     {r4-r6,pc}
@ 0x2263ce8

.word 0x2266bf0 @ 0x2263ce8
.word 0x2266ed4 @ 0x2263cec
.word 0x119a @ 0x2263cf0
.thumb
Function_2263cf4: @ 2263cf4 :thumb
	cmp     r0, #0xa
	blt     branch_2263cfc
	mov     r0, #0x2
	bx      lr
@ 0x2263cfc

.thumb
branch_2263cfc: @ 2263cfc :thumb
	cmp     r0, #0x5
	blt     branch_2263d04
	mov     r0, #0x1
	bx      lr
@ 0x2263d04

.thumb
branch_2263d04: @ 2263d04 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2263d08

.thumb
Function_2263d08: @ 2263d08 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x10]
	mov     r6, r2
	add     r0, r0, r6
	mov     r7, r3
	str     r0, [r4, #0x10]
	mov     r1, #0x6
	blx     _s32_div_f
	str     r0, [r4, #0x14]
	mov     r0, r5
	mov     r1, r7
	bl      Function_22622c4
	mov     r1, r4
	add     r1, #0x18
	lsl     r0, r0, #2
	ldr     r2, [r1, r0]
	add     r2, r2, r6
	str     r2, [r1, r0]
	bl      Function_203608c
	cmp     r7, r0
	bne     branch_2263d4e
	ldr     r1, [pc, #0x14] @ 0x2263d54, (=0x3848)
	ldr     r0, [r5, r1]
	add     r0, r0, r6
	str     r0, [r5, r1]
	ldr     r0, [pc, #0x10] @ 0x2263d58, (=0x15a8)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	bl      Function_2265f98
.thumb
branch_2263d4e: @ 2263d4e :thumb
	ldr     r0, [r4, #0x10]
	pop     {r3-r7,pc}
@ 0x2263d52


.align 2


.word 0x3848 @ 0x2263d54
.word 0x15a8 @ 0x2263d58
.thumb
Function_2263d5c: @ 2263d5c :thumb
	ldr     r1, [r0, #0x10]
	cmp     r1, #0x0
	bne     branch_2263d66
	mov     r0, #0x0
	bx      lr
@ 0x2263d66

.thumb
branch_2263d66: @ 2263d66 :thumb
	ldr     r2, [r0, #0x14]
	cmp     r1, r2
	bge     branch_2263d6e
	mov     r2, r1
.thumb
branch_2263d6e: @ 2263d6e :thumb
	ldr     r1, [r0, #0x10]
	sub     r1, r1, r2
	str     r1, [r0, #0x10]
	ldr     r1, [r0, #0x8]
	add     r1, r1, r2
	str     r1, [r0, #0x8]
	mov     r0, #0x1
	bx      lr
@ 0x2263d7e


.align 2, 0


.thumb
Function_2263d80: @ 2263d80 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x20] @ 0x2263da8, (=0x2fcc)
	mov     r6, r1
	ldr     r0, [r5, r0]
	mov     r4, r2
	cmp     r0, #0x0
	beq     branch_2263da4
	mov     r0, r4
	bl      Function_2263d5c
	ldr     r2, [r5, #0x0]
	mov     r0, r6
	add     r2, #0x30
	ldrb    r2, [r2, #0x0]
	mov     r1, r4
	bl      Function_2263ba4
.thumb
branch_2263da4: @ 2263da4 :thumb
	pop     {r4-r6,pc}
@ 0x2263da6


.align 2


.word 0x2fcc @ 0x2263da8
.thumb
Function_2263dac: @ 2263dac :thumb
	ldr     r1, [pc, #0xc] @ 0x2263dbc, (=0x1428)
	ldr     r3, [pc, #0x10] @ 0x2263dc0, (=_s32_div_f)
	add     r2, r0, r1
	ldr     r1, [r2, #0x8]
	mov     r0, #0x64
	mul     r0, r1
	ldr     r1, [r2, #0xc]
	bx      r3
@ 0x2263dbc

.word 0x1428 @ 0x2263dbc
.word _s32_div_f @ 0x2263dc0
.thumb
Function_2263dc4: @ 2263dc4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r0, [pc, #0x48] @ 0x2263e14, (=0x2fdc)
	mov     r4, r1
	mov     r3, #0x0
	mov     r2, r5
.thumb
branch_2263dd2: @ 2263dd2 :thumb
	ldr     r1, [r2, r0]
	cmp     r1, #0x0
	bne     branch_2263e00
	ldr     r2, [pc, #0x38] @ 0x2263e14, (=0x2fdc)
	mov     r6, #0x18
	add     r2, r5, r2
	mul     r6, r3
	mov     r0, r5
	mov     r1, r4
	add     r2, r2, r6
	bl      Function_2263e1c
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x28] @ 0x2263e18, (=0x1560)
	ldrb    r2, [r4, #0x1]
	ldrb    r3, [r4, #0x0]
	mov     r0, r5
	add     r1, r5, r1
	bl      Function_2265b58
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x2263e00

.thumb
branch_2263e00: @ 2263e00 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r2, #0x18
	cmp     r3, #0x28
	blt     branch_2263dd2
	bl      ErrorHandling
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2263e12


.align 2


.word 0x2fdc @ 0x2263e14
.word 0x1560 @ 0x2263e18
.thumb
Function_2263e1c: @ 2263e1c :thumb
	push    {r3-r7,lr}
	mov     r4, r2
	mov     r7, r0
	ldr     r0, [r4, #0x0]
	mov     r5, r1
	cmp     r0, #0x0
	beq     branch_2263e2e
	bl      ErrorHandling
.thumb
branch_2263e2e: @ 2263e2e :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x18
	blx     MI_CpuFill8
	ldrb    r1, [r5, #0x0]
	mov     r0, r7
	bl      Function_22622c4
	ldr     r1, [r7, #0x0]
	ldr     r3, [pc, #0xb0] @ 0x2263ef4, (=0x2266f10)
	add     r1, #0x30
	ldrb    r2, [r1, #0x0]
	mov     r1, #0x28
	mul     r1, r2
	mov     r2, #0xa
	mul     r2, r0
	ldrb    r0, [r5, #0x0]
	add     r1, r3, r1
	add     r6, r1, r2
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	mov     r1, r6
	strh    r0, [r4, #0x6]
	ldr     r0, [r5, #0x8]
	str     r0, [r4, #0x8]
	str     r6, [r4, #0x14]
	ldrb    r0, [r5, #0x1]
	strb    r0, [r4, #0xe]
	mov     r0, r7
	bl      Function_226417c
	str     r0, [r4, #0x10]
	bl      Function_203608c
	ldrb    r1, [r5, #0x0]
	cmp     r1, r0
	bne     branch_2263e8e
	ldr     r1, [r5, #0x4]
	mov     r0, r7
	bl      Function_2261e38
	mov     r0, #0x19
	strh    r0, [r4, #0xc]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      Function_200d3f4
.thumb
branch_2263e8e: @ 2263e8e :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	add     r1, sp, #0x0
	mov     r3, #0x16
	ldr     r0, [r4, #0x10]
	add     r1, #0x2
	add     r2, sp, #0x0
	lsl     r3, r3, #16
	mov     r5, #0x0
	bl      Function_200d5a0
	ldrb    r0, [r6, #0x7]
	cmp     r0, #0x3
	bhi     branch_2263ee8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2263eb6

Jumppoints_2263eb6:
.hword branch_2263ebe - Jumppoints_2263eb6 - 2
.hword branch_2263eca - Jumppoints_2263eb6 - 2
.hword branch_2263ed4 - Jumppoints_2263eb6 - 2
.hword branch_2263ede - Jumppoints_2263eb6 - 2
.thumb
branch_2263ebe: @ 2263ebe :thumb
	add     r1, sp, #0x0
	mov     r0, r5
	ldsh    r1, [r1, r0]
	mov     r0, #0x1c
	sub     r5, r0, r1
	b       branch_2263ee8
@ 0x2263eca

.thumb
branch_2263eca: @ 2263eca :thumb
	add     r1, sp, #0x0
	mov     r0, #0x2
	ldsh    r5, [r1, r0]
	sub     r5, #0xcc
	b       branch_2263ee8
@ 0x2263ed4

.thumb
branch_2263ed4: @ 2263ed4 :thumb
	add     r1, sp, #0x0
	mov     r0, r5
	ldsh    r5, [r1, r0]
	sub     r5, #0xa4
	b       branch_2263ee8
@ 0x2263ede

.thumb
branch_2263ede: @ 2263ede :thumb
	add     r1, sp, #0x0
	mov     r0, #0x2
	ldsh    r1, [r1, r0]
	mov     r0, #0x34
	sub     r5, r0, r1
.thumb
branch_2263ee8: @ 2263ee8 :thumb
	mov     r1, #0x5
	lsl     r0, r5, #12
	lsl     r1, r1, #12
	blx     _s32_div_f
	pop     {r3-r7,pc}
@ 0x2263ef4

.word 0x2266f10 @ 0x2263ef4
.thumb
Function_2263ef8: @ 2263ef8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x70] @ 0x2263f70, (=0x2fdc)
	mov     r6, #0x0
	add     r4, r5, r0
	mov     r7, r6
.thumb
branch_2263f04: @ 2263f04 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_2263f64
	mov     r0, #0xc
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_2263f2c
	mov     r0, #0xc
	ldsh    r0, [r4, r0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0xc]
	mov     r0, #0xc
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2263f64
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_200d3f4
	b       branch_2263f64
@ 0x2263f2c

.thumb
branch_2263f2c: @ 2263f2c :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2263f80
	cmp     r0, #0x1
	bne     branch_2263f64
	ldr     r0, [pc, #0x38] @ 0x2263f74, (=0x2fcc)
	ldr     r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_2263f5c
	ldr     r0, [pc, #0x34] @ 0x2263f78, (=0x2fbc)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2263f5c
	ldrb    r0, [r4, #0xe]
	ldr     r1, [pc, #0x30] @ 0x2263f7c, (=0x1428)
	mov     r3, #0x4
	str     r0, [sp, #0x0]
	ldsh    r3, [r4, r3]
	ldr     r2, [r4, #0x8]
	mov     r0, r5
	add     r1, r5, r1
	bl      Function_2263d08
.thumb
branch_2263f5c: @ 2263f5c :thumb
	ldr     r0, [r4, #0x10]
	bl      Function_200d0f4
	str     r7, [r4, #0x0]
.thumb
branch_2263f64: @ 2263f64 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x18
	cmp     r6, #0x28
	blt     branch_2263f04
	pop     {r3-r7,pc}
@ 0x2263f6e


.align 2


.word 0x2fdc @ 0x2263f70
.word 0x2fcc @ 0x2263f74
.word 0x2fbc @ 0x2263f78
.word 0x1428 @ 0x2263f7c
.thumb
Function_2263f80: @ 2263f80 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	str     r0, [sp, #0x0]
	add     r1, sp, #0x4
	mov     r3, #0x16
	ldr     r0, [r4, #0x10]
	add     r1, #0x2
	add     r2, sp, #0x4
	lsl     r3, r3, #16
	mov     r7, #0x0
	bl      Function_200d5a0
	ldr     r0, [r4, #0x14]
	ldrb    r0, [r0, #0x7]
	cmp     r0, #0x3
	bhi     branch_2264088
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2263fae

Jumppoints_2263fae:
.hword branch_2263fb6 - Jumppoints_2263fae - 2
.hword branch_2263fec - Jumppoints_2263fae - 2
.hword branch_2264020 - Jumppoints_2263fae - 2
.hword branch_2264052 - Jumppoints_2263fae - 2
.thumb
branch_2263fb6: @ 2263fb6 :thumb
	add     r0, sp, #0x4
	mov     r1, r7
	ldsh    r2, [r0, r1]
	mov     r0, #0x1c
	sub     r6, r0, r2
	mov     r2, #0x5
	ldr     r0, [r4, #0x10]
	lsl     r2, r2, #12
	bl      Function_200d5e8
	add     r1, sp, #0x8
	mov     r3, #0x16
	ldr     r0, [r4, #0x10]
	add     r1, #0x2
	add     r2, sp, #0x8
	lsl     r3, r3, #16
	bl      Function_200d5a0
	add     r1, sp, #0x4
	mov     r0, #0x4
	ldsh    r1, [r1, r0]
	mov     r0, #0x1c
	sub     r5, r0, r1
	cmp     r1, #0x4a
	ble     branch_2264088
	mov     r7, #0x1
	b       branch_2264088
@ 0x2263fec

.thumb
branch_2263fec: @ 2263fec :thumb
	add     r1, sp, #0x4
	mov     r0, #0x2
	ldsh    r6, [r1, r0]
	ldr     r0, [r4, #0x10]
	ldr     r1, [pc, #0x178] @ 0x2264170, (=0xffffb000)
	mov     r2, r7
	sub     r6, #0xcc
	bl      Function_200d5e8
	add     r1, sp, #0x8
	mov     r3, #0x16
	ldr     r0, [r4, #0x10]
	add     r1, #0x2
	add     r2, sp, #0x8
	lsl     r3, r3, #16
	bl      Function_200d5a0
	add     r1, sp, #0x4
	mov     r0, #0x6
	ldsh    r0, [r1, r0]
	mov     r5, r0
	sub     r5, #0xcc
	cmp     r0, #0x98
	bge     branch_2264088
	mov     r7, #0x1
	b       branch_2264088
@ 0x2264020

.thumb
branch_2264020: @ 2264020 :thumb
	add     r0, sp, #0x4
	mov     r1, r7
	ldsh    r6, [r0, r1]
	ldr     r0, [r4, #0x10]
	ldr     r2, [pc, #0x144] @ 0x2264170, (=0xffffb000)
	sub     r6, #0xa4
	bl      Function_200d5e8
	add     r1, sp, #0x8
	mov     r3, #0x16
	ldr     r0, [r4, #0x10]
	add     r1, #0x2
	add     r2, sp, #0x8
	lsl     r3, r3, #16
	bl      Function_200d5a0
	add     r1, sp, #0x4
	mov     r0, #0x4
	ldsh    r0, [r1, r0]
	mov     r5, r0
	sub     r5, #0xa4
	cmp     r0, #0x72
	bge     branch_2264088
	mov     r7, #0x1
	b       branch_2264088
@ 0x2264052

.thumb
branch_2264052: @ 2264052 :thumb
	add     r1, sp, #0x4
	mov     r0, #0x2
	ldsh    r1, [r1, r0]
	mov     r0, #0x34
	mov     r2, r7
	sub     r6, r0, r1
	mov     r1, #0x5
	ldr     r0, [r4, #0x10]
	lsl     r1, r1, #12
	bl      Function_200d5e8
	add     r1, sp, #0x8
	mov     r3, #0x16
	ldr     r0, [r4, #0x10]
	add     r1, #0x2
	add     r2, sp, #0x8
	lsl     r3, r3, #16
	bl      Function_200d5a0
	add     r1, sp, #0x4
	mov     r0, #0x6
	ldsh    r1, [r1, r0]
	mov     r0, #0x34
	sub     r5, r0, r1
	cmp     r1, #0x68
	ble     branch_2264088
	mov     r7, #0x1
.thumb
branch_2264088: @ 2264088 :thumb
	cmp     r5, #0x0
	blt     branch_22640b8
	cmp     r5, #0xe
	bge     branch_22640f0
	lsl     r0, r5, #12
	mov     r1, #0xe
	blx     _s32_div_f
	mov     r1, #0x1
	lsl     r1, r1, #10
	cmp     r0, r1
	bge     branch_22640a2
	mov     r0, r1
.thumb
branch_22640a2: @ 22640a2 :thumb
	blx     _fflt
	ldr     r1, [pc, #0xcc] @ 0x2264174, (=0x45800000)
	blx     _fdiv
	mov     r1, r0
	ldr     r0, [r4, #0x10]
	mov     r2, r1
	bl      Function_200d6e8
	b       branch_22640f0
@ 0x22640b8

.thumb
branch_22640b8: @ 22640b8 :thumb
	mov     r0, #0xd
	mvn     r0, r0
	cmp     r5, r0
	ble     branch_22640f0
	ldrb    r0, [r4, #0xe]
	neg     r1, r5
	lsl     r2, r0, #2
	ldr     r0, [pc, #0xb0] @ 0x2264178, (=0x2266ba4)
	ldr     r0, [r0, r2]
	mul     r0, r1
	mov     r1, #0xe
	blx     _s32_div_f
	mov     r1, #0x1
	lsl     r1, r1, #10
	cmp     r0, r1
	bge     branch_22640dc
	mov     r0, r1
.thumb
branch_22640dc: @ 22640dc :thumb
	blx     _fflt
	ldr     r1, [pc, #0x90] @ 0x2264174, (=0x45800000)
	blx     _fdiv
	mov     r1, r0
	ldr     r0, [r4, #0x10]
	mov     r2, r1
	bl      Function_200d6e8
.thumb
branch_22640f0: @ 22640f0 :thumb
	bl      Function_203608c
	mov     r1, #0x4
	ldsh    r1, [r4, r1]
	cmp     r1, r0
	bne     branch_2264160
	cmp     r6, #0x0
	blt     branch_2264160
	cmp     r5, #0x0
	bgt     branch_2264160
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0xc
	bl      Function_22653f4
	strb    r0, [r4, #0xe]
	ldrb    r0, [r4, #0xe]
	cmp     r0, #0x1
	beq     branch_226411e
	cmp     r0, #0x2
	beq     branch_2264126
	cmp     r0, #0x3
	beq     branch_2264132
	b       branch_226413a
@ 0x226411e

.thumb
branch_226411e: @ 226411e :thumb
	ldr     r0, [r4, #0x8]
	lsl     r0, r0, #1
	str     r0, [r4, #0x8]
	b       branch_226413a
@ 0x2264126

.thumb
branch_2264126: @ 2264126 :thumb
	ldr     r1, [r4, #0x8]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	str     r0, [r4, #0x8]
	b       branch_226413a
@ 0x2264132

.thumb
branch_2264132: @ 2264132 :thumb
	ldr     r1, [r4, #0x8]
	lsl     r0, r1, #1
	add     r0, r1, r0
	str     r0, [r4, #0x8]
.thumb
branch_226413a: @ 226413a :thumb
	ldrb    r1, [r4, #0xe]
	ldr     r0, [sp, #0x0]
	bl      Function_2264eb8
	ldrb    r0, [r4, #0xe]
	cmp     r0, #0x0
	beq     branch_2264150
	ldr     r0, [sp, #0xc]
	mov     r1, #0x3
	bl      Function_2265428
.thumb
branch_2264150: @ 2264150 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_2264e84
	mov     r1, r0
	beq     branch_2264160
	ldr     r0, [sp, #0x0]
	bl      Function_22666e8
.thumb
branch_2264160: @ 2264160 :thumb
	cmp     r7, #0x1
	bne     branch_226416a
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x226416a

.thumb
branch_226416a: @ 226416a :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2264170

.word 0xffffb000 @ 0x2264170
.word 0x45800000 @ 0x2264174
.word 0x2266ba4 @ 0x2264178
.thumb
Function_226417c: @ 226417c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x34
	ldr     r6, [pc, #0x5c] @ 0x22641e0, (=0x2266ccc)
	mov     r2, r0
	mov     r5, r1
	add     r4, sp, #0x0
	mov     r3, #0x6
.thumb
branch_226418a: @ 226418a :thumb
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	.hword  0x1e5b @ sub r3, r3, #0x1
	bne     branch_226418a
	ldr     r0, [r6, #0x0]
	add     r1, sp, #0x0
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	ldsh    r0, [r5, r0]
	strh    r0, [r1, #0x0]
	mov     r0, #0x2
	ldsh    r0, [r5, r0]
	strh    r0, [r1, #0x2]
	ldrb    r0, [r5, #0x6]
	str     r0, [sp, #0xc]
	ldr     r0, [r2, #0x24]
	ldr     r1, [r2, #0x28]
	add     r2, sp, #0x0
	bl      Function_200ce6c
	mov     r1, #0x0
	mov     r2, #0x2
	mov     r3, #0x16
	ldsh    r1, [r5, r1]
	ldsh    r2, [r5, r2]
	lsl     r3, r3, #16
	mov     r4, r0
	bl      Function_200d500
	ldrh    r1, [r5, #0x4]
	mov     r0, r4
	bl      Function_200d364
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_200d6a4
	ldr     r0, [r4, #0x0]
	bl      Function_200d324
	mov     r0, r4
	add     sp, #0x34
	pop     {r3-r6,pc}
@ 0x22641e0

.word 0x2266ccc @ 0x22641e0
.thumb
Function_22641e4: @ 22641e4 :thumb
	push    {r3-r7,lr}
	mov     r4, #0x0
	ldr     r7, [pc, #0x20] @ 0x226420c, (=0x2fdc)
	mov     r5, r0
	mov     r6, r4
.thumb
branch_22641ee: @ 22641ee :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x1
	bne     branch_2264200
	ldr     r0, [pc, #0x18] @ 0x2264210, (=0x2fec)
	ldr     r0, [r5, r0]
	bl      Function_200d0f4
	ldr     r0, [pc, #0xc] @ 0x226420c, (=0x2fdc)
	str     r6, [r5, r0]
.thumb
branch_2264200: @ 2264200 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x18
	cmp     r4, #0x28
	blt     branch_22641ee
	pop     {r3-r7,pc}
@ 0x226420a


.align 2


.word 0x2fdc @ 0x226420c
.word 0x2fec @ 0x2264210
.thumb
Function_2264214: @ 2264214 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x68
	ldr     r5, [pc, #0x2dc] @ 0x22644f8, (=0x2266d00)
	str     r2, [sp, #0x4]
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r4, #0x0
	add     r3, sp, #0x34
	mov     r2, #0x6
.thumb
branch_2264226: @ 2264226 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2264226
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x8]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x10]
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	b       branch_226434c
@ 0x2264244

.thumb
branch_2264244: @ 2264244 :thumb
	ldr     r2, [r7, #0x0]
	ldr     r1, [sp, #0xc]
	mov     r0, r7
	add     r1, r2, r1
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	bl      Function_22622c4
	mov     r5, r0
	ldr     r0, [sp, #0x4]
	lsl     r1, r5, #2
	add     r0, r0, r1
	ldr     r1, [r0, #0x18]
	mov     r0, #0x24
	mul     r0, r1
	ldr     r2, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	add     r1, r2, r1
	blx     _s32_div_f
	ldr     r1, [sp, #0xc]
	lsl     r5, r5, #1
	lsl     r2, r1, #2
	add     r1, sp, #0x24
	str     r0, [r1, r2]
	ldr     r0, [r7, #0x0]
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	lsl     r3, r0, #3
	ldr     r0, [pc, #0x27c] @ 0x22644fc, (=0x2266c7c)
	add     r0, r0, r3
	ldrh    r0, [r5, r0]
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x1c]
	ldr     r0, [r1, r2]
	str     r0, [sp, #0x20]
	b       branch_226433e
@ 0x2264296

.thumb
branch_2264296: @ 2264296 :thumb
	mov     r0, #0x18
	mov     r1, r4
	mul     r1, r0
	ldr     r0, [sp, #0x1c]
	add     r2, sp, #0x34
	add     r5, r0, r1
	ldr     r0, [r7, #0x24]
	ldr     r1, [r7, #0x28]
	bl      Function_200ce6c
	mov     r6, r0
	beq     branch_2264346
	mov     r3, #0x16
	mov     r1, #0x80
	mov     r2, #0x60
	lsl     r3, r3, #16
	bl      Function_200d500
	ldr     r1, [sp, #0x10]
	mov     r0, r6
	bl      Function_200d364
	ldr     r0, [r6, #0x0]
	bl      Function_200d324
	bl      PRNG
	lsr     r1, r0, #31
	lsl     r2, r0, #19
	sub     r2, r2, r1
	mov     r0, #0x13
	ror     r2, r0
	mov     r0, #0x2
	add     r1, r1, r2
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r5, #0x4]
	bl      PRNG
	lsr     r1, r0, #31
	lsl     r2, r0, #18
	sub     r2, r2, r1
	mov     r0, #0x12
	ror     r2, r0
	mov     r0, #0x2
	add     r1, r1, r2
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r5, #0x8]
	bl      PRNG
	mov     r1, #0x5a
	lsl     r1, r1, #2
	blx     _s32_div_f
	lsl     r0, r1, #12
	str     r0, [r5, #0xc]
	bl      PRNG
	mov     r1, #0x5
	lsl     r1, r1, #14
	blx     _s32_div_f
	mov     r0, #0xa
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r5, #0x10]
	bl      PRNG
	mov     r1, #0xf
	blx     _s32_div_f
	add     r1, #0x14
	strh    r1, [r5, #0x14]
	mov     r1, r4
	mov     r0, #0x18
	mul     r1, r0
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, r0, r1
	str     r6, [r0, #0x4]
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
.thumb
branch_226433e: @ 226433e :thumb
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x20]
	cmp     r1, r0
	blt     branch_2264296
.thumb
branch_2264346: @ 2264346 :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
.thumb
branch_226434c: @ 226434c :thumb
	ldr     r0, [r7, #0x0]
	add     r0, #0x30
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0xc]
	cmp     r0, r1
	bge     branch_226435a
	b       branch_2264244
@ 0x226435a

.thumb
branch_226435a: @ 226435a :thumb
	mov     r0, #0xe
	str     r0, [sp, #0x3c]
	mov     r0, #0x0
	mov     r1, #0xd9
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x40]
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	add     r6, r0, r1
	b       branch_2264422
@ 0x226436e

.thumb
branch_226436e: @ 226436e :thumb
	ldr     r1, [sp, #0xc]
	mov     r0, #0x18
	mul     r0, r1
	add     r4, r6, r0
	ldr     r0, [r7, #0x24]
	ldr     r1, [r7, #0x28]
	add     r2, sp, #0x34
	bl      Function_200ce6c
	mov     r5, r0
	beq     branch_2264428
	mov     r3, #0x16
	mov     r1, #0x80
	mov     r2, #0x60
	lsl     r3, r3, #16
	bl      Function_200d500
	bl      PRNG
	mov     r1, #0x3
	blx     _s32_div_f
	mov     r0, r5
	add     r1, #0x1c
	bl      Function_200d364
	ldr     r0, [r5, #0x0]
	bl      Function_200d324
	bl      PRNG
	lsr     r1, r0, #31
	lsl     r2, r0, #19
	sub     r2, r2, r1
	mov     r0, #0x13
	ror     r2, r0
	mov     r0, #0x2
	add     r1, r1, r2
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r4, #0x4]
	bl      PRNG
	lsr     r1, r0, #31
	lsl     r2, r0, #18
	sub     r2, r2, r1
	mov     r0, #0x12
	ror     r2, r0
	mov     r0, #0x2
	add     r1, r1, r2
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r4, #0x8]
	bl      PRNG
	mov     r1, #0x5a
	lsl     r1, r1, #2
	blx     _s32_div_f
	lsl     r0, r1, #12
	str     r0, [r4, #0xc]
	bl      PRNG
	mov     r1, #0x5
	lsl     r1, r1, #14
	blx     _s32_div_f
	mov     r0, #0x1
	lsl     r0, r0, #16
	add     r0, r1, r0
	str     r0, [r4, #0x10]
	bl      PRNG
	mov     r1, #0xf
	blx     _s32_div_f
	add     r1, #0x14
	strh    r1, [r4, #0x14]
	ldr     r1, [sp, #0xc]
	mov     r0, #0x18
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [sp, #0x0]
	add     r1, r0, r2
	mov     r0, #0xd9
	lsl     r0, r0, #2
	str     r5, [r1, r0]
	ldr     r0, [sp, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
.thumb
branch_2264422: @ 2264422 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x8
	blt     branch_226436e
.thumb
branch_2264428: @ 2264428 :thumb
	mov     r0, #0xd
	str     r0, [sp, #0x3c]
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x4]
	lsl     r1, r0, #1
	ldr     r0, [pc, #0xcc] @ 0x2264500, (=0x2266b6c)
	ldrh    r0, [r0, r1]
	ldr     r1, [pc, #0xcc] @ 0x2264504, (=0x424)
	str     r0, [sp, #0x40]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x0]
	add     r6, r0, r1
	b       branch_22644ec
@ 0x2264444

.thumb
branch_2264444: @ 2264444 :thumb
	ldr     r1, [sp, #0xc]
	mov     r0, #0x18
	mul     r0, r1
	add     r4, r6, r0
	ldr     r0, [r7, #0x24]
	ldr     r1, [r7, #0x28]
	add     r2, sp, #0x34
	bl      Function_200ce6c
	mov     r5, r0
	beq     branch_22644f2
	mov     r3, #0x16
	mov     r1, #0x80
	mov     r2, #0x60
	lsl     r3, r3, #16
	bl      Function_200d500
	mov     r0, r5
	mov     r1, #0xb
	bl      Function_200d364
	ldr     r0, [r5, #0x0]
	bl      Function_200d324
	bl      PRNG
	lsr     r1, r0, #31
	lsl     r2, r0, #19
	sub     r2, r2, r1
	mov     r0, #0x13
	ror     r2, r0
	mov     r0, #0x2
	add     r1, r1, r2
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r4, #0x4]
	bl      PRNG
	lsr     r1, r0, #31
	lsl     r2, r0, #18
	sub     r2, r2, r1
	mov     r0, #0x12
	ror     r2, r0
	mov     r0, #0x2
	add     r1, r1, r2
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r4, #0x8]
	bl      PRNG
	mov     r1, #0x5a
	lsl     r1, r1, #2
	blx     _s32_div_f
	lsl     r0, r1, #12
	str     r0, [r4, #0xc]
	bl      PRNG
	mov     r1, #0x5
	lsl     r1, r1, #14
	blx     _s32_div_f
	mov     r0, #0x1
	lsl     r0, r0, #16
	add     r0, r1, r0
	str     r0, [r4, #0x10]
	bl      PRNG
	mov     r1, #0xf
	blx     _s32_div_f
	add     r1, #0x14
	strh    r1, [r4, #0x14]
	ldr     r1, [sp, #0xc]
	mov     r0, #0x18
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [sp, #0x0]
	add     r1, r0, r2
	ldr     r0, [pc, #0x20] @ 0x2264504, (=0x424)
	str     r5, [r1, r0]
	ldr     r0, [sp, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
.thumb
branch_22644ec: @ 22644ec :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x3
	blt     branch_2264444
.thumb
branch_22644f2: @ 22644f2 :thumb
	add     sp, #0x68
	pop     {r3-r7,pc}
@ 0x22644f6


.align 2


.word 0x2266d00 @ 0x22644f8
.word 0x2266c7c @ 0x22644fc
.word 0x2266b6c @ 0x2264500
.word 0x424 @ 0x2264504
.thumb
Function_2264508: @ 2264508 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x4c] @ 0x226455c, (=0x33a0)
	mov     r4, #0x0
	add     r5, r6, r0
.thumb
branch_2264512: @ 2264512 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_226451c
	bl      Function_200d0f4
.thumb
branch_226451c: @ 226451c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x18
	cmp     r4, #0x24
	blt     branch_2264512
	mov     r0, #0x37
	lsl     r0, r0, #8
	mov     r5, #0x0
	add     r4, r6, r0
.thumb
branch_226452c: @ 226452c :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2264536
	bl      Function_200d0f4
.thumb
branch_2264536: @ 2264536 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x18
	cmp     r5, #0x8
	blt     branch_226452c
	mov     r0, #0xdf
	lsl     r0, r0, #6
	mov     r4, #0x0
	add     r5, r6, r0
.thumb
branch_2264546: @ 2264546 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_2264550
	bl      Function_200d0f4
.thumb
branch_2264550: @ 2264550 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x18
	cmp     r4, #0x3
	blt     branch_2264546
	pop     {r4-r6,pc}
@ 0x226455a


.align 2


.word 0x33a0 @ 0x226455c
.thumb
Function_2264560: @ 2264560 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	ldr     r1, [pc, #0x294] @ 0x22647fc, (=0x339c)
	mov     r4, #0x0
	add     r0, r0, r1
	str     r0, [sp, #0x18]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2264578
	add     sp, #0x34
	mov     r0, r4
	pop     {r4-r7,pc}
@ 0x2264578

.thumb
branch_2264578: @ 2264578 :thumb
	ldr     r0, [sp, #0x18]
	str     r4, [sp, #0x14]
	add     r5, r0, #0x4
.thumb
branch_226457e: @ 226457e :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_226463a
	mov     r1, #0x14
	ldsh    r1, [r5, r1]
	cmp     r1, #0x0
	bne     branch_2264596
	bl      Function_200d0f4
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	b       branch_226463a
@ 0x2264596

.thumb
branch_2264596: @ 2264596 :thumb
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x10]
	add     r0, r1, r0
	str     r0, [r5, #0xc]
	ldr     r1, [r5, #0x4]
	ldr     r0, [r5, #0x8]
	add     r1, r1, r0
	mov     r0, #0xa
	lsl     r0, r0, #16
	str     r1, [r5, #0x4]
	cmp     r1, r0
	blt     branch_22645b0
	str     r0, [r5, #0x4]
.thumb
branch_22645b0: @ 22645b0 :thumb
	ldr     r0, [r5, #0xc]
	ldr     r6, [r5, #0x4]
	bl      Function_201d2b8
	mov     r7, r0
	ldr     r0, [r5, #0x4]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0xc]
	bl      Function_201d2c4
	str     r0, [sp, #0x1c]
	asr     r1, r7, #31
	mov     r0, r7
	asr     r3, r6, #31
	mov     r2, r6
	blx     _ll_mul
	str     r0, [sp, #0x28]
	ldr     r2, [sp, #0x10]
	ldr     r0, [sp, #0x1c]
	mov     r6, r1
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, r1
	mov     r3, #0x2
	mov     r7, r0
	ldr     r1, [sp, #0x28]
	lsl     r3, r3, #10
	add     r3, r1, r3
	ldr     r1, [pc, #0x210] @ 0x2264800, (=0x0)
	ldr     r0, [r5, #0x0]
	adc     r6, r1
	lsl     r1, r6, #20
	lsr     r3, r3, #12
	orr     r3, r1
	asr     r1, r3, #11
	lsr     r1, r1, #20
	add     r1, r3, r1
	asr     r1, r1, #12
	add     r1, #0x80
	mov     r3, #0x2
	lsl     r1, r1, #16
	ldr     r6, [pc, #0x1f4] @ 0x2264800, (=0x0)
	lsl     r3, r3, #10
	asr     r1, r1, #16
	add     r3, r7, r3
	adc     r2, r6
	lsl     r2, r2, #20
	lsr     r3, r3, #12
	orr     r3, r2
	neg     r3, r3
	asr     r2, r3, #11
	lsr     r2, r2, #20
	add     r2, r3, r2
	asr     r2, r2, #12
	add     r2, #0x60
	lsl     r2, r2, #16
	mov     r3, #0x16
	asr     r2, r2, #16
	lsl     r3, r3, #16
	bl      Function_200d500
	mov     r0, #0x14
	ldsh    r0, [r5, r0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r5, #0x14]
.thumb
branch_226463a: @ 226463a :thumb
	ldr     r0, [sp, #0x14]
	add     r5, #0x18
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, #0x24
	blt     branch_226457e
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0xd9
	ldr     r0, [sp, #0x18]
	lsl     r1, r1, #2
	add     r5, r0, r1
.thumb
branch_2264652: @ 2264652 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_226470e
	mov     r1, #0x14
	ldsh    r1, [r5, r1]
	cmp     r1, #0x0
	bne     branch_226466a
	bl      Function_200d0f4
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	b       branch_226470e
@ 0x226466a

.thumb
branch_226466a: @ 226466a :thumb
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x10]
	add     r0, r1, r0
	str     r0, [r5, #0xc]
	ldr     r1, [r5, #0x4]
	ldr     r0, [r5, #0x8]
	add     r1, r1, r0
	mov     r0, #0xa
	lsl     r0, r0, #16
	str     r1, [r5, #0x4]
	cmp     r1, r0
	blt     branch_2264684
	str     r0, [r5, #0x4]
.thumb
branch_2264684: @ 2264684 :thumb
	ldr     r0, [r5, #0xc]
	ldr     r6, [r5, #0x4]
	bl      Function_201d2b8
	mov     r7, r0
	ldr     r0, [r5, #0x4]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0xc]
	bl      Function_201d2c4
	str     r0, [sp, #0x20]
	asr     r1, r7, #31
	mov     r0, r7
	asr     r3, r6, #31
	mov     r2, r6
	blx     _ll_mul
	str     r0, [sp, #0x2c]
	ldr     r2, [sp, #0xc]
	ldr     r0, [sp, #0x20]
	mov     r6, r1
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, r1
	mov     r3, #0x2
	mov     r7, r0
	ldr     r1, [sp, #0x2c]
	lsl     r3, r3, #10
	add     r3, r1, r3
	ldr     r1, [pc, #0x13c] @ 0x2264800, (=0x0)
	ldr     r0, [r5, #0x0]
	adc     r6, r1
	lsl     r1, r6, #20
	lsr     r3, r3, #12
	orr     r3, r1
	asr     r1, r3, #11
	lsr     r1, r1, #20
	add     r1, r3, r1
	asr     r1, r1, #12
	add     r1, #0x80
	mov     r3, #0x2
	lsl     r1, r1, #16
	ldr     r6, [pc, #0x120] @ 0x2264800, (=0x0)
	lsl     r3, r3, #10
	asr     r1, r1, #16
	add     r3, r7, r3
	adc     r2, r6
	lsl     r2, r2, #20
	lsr     r3, r3, #12
	orr     r3, r2
	neg     r3, r3
	asr     r2, r3, #11
	lsr     r2, r2, #20
	add     r2, r3, r2
	asr     r2, r2, #12
	add     r2, #0x60
	lsl     r2, r2, #16
	mov     r3, #0x16
	asr     r2, r2, #16
	lsl     r3, r3, #16
	bl      Function_200d500
	mov     r0, #0x14
	ldsh    r0, [r5, r0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r5, #0x14]
.thumb
branch_226470e: @ 226470e :thumb
	ldr     r0, [sp, #0x0]
	add     r5, #0x18
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
	cmp     r0, #0x8
	blt     branch_2264652
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0xe4] @ 0x2264804, (=0x424)
	ldr     r0, [sp, #0x18]
	add     r5, r0, r1
.thumb
branch_2264724: @ 2264724 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_22647e0
	mov     r1, #0x14
	ldsh    r1, [r5, r1]
	cmp     r1, #0x0
	bne     branch_226473c
	bl      Function_200d0f4
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	b       branch_22647e0
@ 0x226473c

.thumb
branch_226473c: @ 226473c :thumb
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x10]
	add     r0, r1, r0
	str     r0, [r5, #0xc]
	ldr     r1, [r5, #0x4]
	ldr     r0, [r5, #0x8]
	add     r1, r1, r0
	mov     r0, #0xa
	lsl     r0, r0, #16
	str     r1, [r5, #0x4]
	cmp     r1, r0
	blt     branch_2264756
	str     r0, [r5, #0x4]
.thumb
branch_2264756: @ 2264756 :thumb
	ldr     r0, [r5, #0xc]
	ldr     r6, [r5, #0x4]
	bl      Function_201d2b8
	mov     r7, r0
	ldr     r0, [r5, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0xc]
	bl      Function_201d2c4
	str     r0, [sp, #0x24]
	asr     r1, r7, #31
	mov     r0, r7
	asr     r3, r6, #31
	mov     r2, r6
	blx     _ll_mul
	str     r0, [sp, #0x30]
	ldr     r2, [sp, #0x8]
	ldr     r0, [sp, #0x24]
	mov     r6, r1
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, r1
	mov     r3, #0x2
	mov     r7, r0
	ldr     r1, [sp, #0x30]
	lsl     r3, r3, #10
	add     r3, r1, r3
	ldr     r1, [pc, #0x68] @ 0x2264800, (=0x0)
	ldr     r0, [r5, #0x0]
	adc     r6, r1
	lsl     r1, r6, #20
	lsr     r3, r3, #12
	orr     r3, r1
	asr     r1, r3, #11
	lsr     r1, r1, #20
	add     r1, r3, r1
	asr     r1, r1, #12
	add     r1, #0x80
	mov     r3, #0x2
	lsl     r1, r1, #16
	ldr     r6, [pc, #0x50] @ 0x2264800, (=0x0)
	lsl     r3, r3, #10
	asr     r1, r1, #16
	add     r3, r7, r3
	adc     r2, r6
	lsl     r2, r2, #20
	lsr     r3, r3, #12
	orr     r3, r2
	neg     r3, r3
	asr     r2, r3, #11
	lsr     r2, r2, #20
	add     r2, r3, r2
	asr     r2, r2, #12
	add     r2, #0x60
	lsl     r2, r2, #16
	mov     r3, #0x16
	asr     r2, r2, #16
	lsl     r3, r3, #16
	bl      Function_200d500
	mov     r0, #0x14
	ldsh    r0, [r5, r0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r5, #0x14]
.thumb
branch_22647e0: @ 22647e0 :thumb
	ldr     r0, [sp, #0x4]
	add     r5, #0x18
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x3
	blt     branch_2264724
	cmp     r4, #0x0
	bne     branch_22647f6
	ldr     r0, [sp, #0x18]
	mov     r1, #0x0
	str     r1, [r0, #0x0]
.thumb
branch_22647f6: @ 22647f6 :thumb
	mov     r0, #0x1
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x22647fc

.word 0x339c @ 0x22647fc
.word 0x0 @ 0x2264800
.word 0x424 @ 0x2264804
.thumb
Function_2264808: @ 2264808 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x60] @ 0x2264870, (=0x339c)
	add     r4, r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_226481a
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x226481a

.thumb
branch_226481a: @ 226481a :thumb
	mov     r2, #0x47
	mov     r0, r4
	mov     r1, #0x0
	lsl     r2, r2, #4
	blx     MI_CpuFill8
	ldr     r1, [pc, #0x48] @ 0x2264870, (=0x339c)
	ldr     r2, [pc, #0x48] @ 0x2264874, (=0x1428)
	mov     r0, r5
	add     r1, r5, r1
	add     r2, r5, r2
	bl      Function_2264214
	ldr     r1, [pc, #0x3c] @ 0x2264874, (=0x1428)
	ldr     r0, [r5, #0x2c]
	add     r1, r5, r1
	bl      Function_2263b8c
	mov     r0, r5
	bl      Function_2264a84
	mov     r2, #0x0
	ldr     r0, [pc, #0x30] @ 0x2264878, (=0x2fcc)
	mov     r1, r2
	str     r2, [r5, r0]
	ldr     r0, [pc, #0x2c] @ 0x226487c, (=0x1430)
	str     r2, [r5, r0]
	add     r0, #0x8
	str     r2, [r5, r0]
	mov     r0, #0x51
	lsl     r0, r0, #6
.thumb
branch_2264858: @ 2264858 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r1, [r5, r0]
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r2, #0x4
	blt     branch_2264858
	ldr     r0, [pc, #0x1c] @ 0x2264880, (=0x57c)
	bl      Function_2005748
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x226486e


.align 2


.word 0x339c @ 0x2264870
.word 0x1428 @ 0x2264874
.word 0x2fcc @ 0x2264878
.word 0x1430 @ 0x226487c
.word 0x57c @ 0x2264880
.thumb
Function_2264884: @ 2264884 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	ldr     r6, [pc, #0x50] @ 0x22648dc, (=0x2266d34)
	mov     r4, r2
	mov     r3, r0
	mov     r7, r1
	add     r5, sp, #0x0
	mov     r2, #0x6
.thumb
branch_2264894: @ 2264894 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2264894
	ldr     r0, [r6, #0x0]
	add     r2, sp, #0x0
	str     r0, [r5, #0x0]
	ldr     r0, [r3, #0x24]
	ldr     r1, [r3, #0x28]
	bl      Function_200ce6c
	mov     r3, #0x16
	lsl     r2, r4, #4
	mov     r1, #0x48
	sub     r1, r1, r2
	lsl     r1, r1, #16
	mov     r5, r0
	asr     r1, r1, #16
	mov     r2, #0x20
	lsl     r3, r3, #16
	bl      Function_200d500
	mov     r0, r5
	mov     r1, r7
	bl      Function_200d364
	ldr     r0, [r5, #0x0]
	bl      Function_200d324
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_200d390
	mov     r0, r5
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x22648dc

.word 0x2266d34 @ 0x22648dc
.thumb
Function_22648e0: @ 22648e0 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [pc, #0x28] @ 0x2264910, (=0x380c)
	mov     r4, #0x0
	add     r5, r7, r0
	mov     r6, r4
.thumb
branch_22648ec: @ 22648ec :thumb
	mov     r0, r7
	mov     r1, r5
	mov     r2, r4
	mov     r3, r4
	bl      Function_2264958
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	bl      Function_200d34c
	mov     r0, #0x1
	lsl     r0, r0, #14
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	add     r6, r6, r0
	cmp     r4, #0x5
	blt     branch_22648ec
	pop     {r3-r7,pc}
@ 0x2264910

.word 0x380c @ 0x2264910
.thumb
Function_2264914: @ 2264914 :thumb
	push    {r4-r6,lr}
	ldr     r6, [pc, #0x14] @ 0x226492c, (=0x380c)
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_226491c: @ 226491c :thumb
	ldr     r0, [r5, r6]
	bl      Function_200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0x5
	blt     branch_226491c
	pop     {r4-r6,pc}
@ 0x226492c

.word 0x380c @ 0x226492c
.thumb
Function_2264930: @ 2264930 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x1c] @ 0x2264954, (=0x380c)
	mov     r4, #0x0
	add     r5, r6, r0
.thumb
branch_226493a: @ 226493a :thumb
	mov     r0, r5
	bl      Function_226498c
	mov     r0, r6
	mov     r1, r5
	bl      Function_22649d8
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0x5
	blt     branch_226493a
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2264954

.word 0x380c @ 0x2264954
.thumb
Function_2264958: @ 2264958 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	mov     r4, r2
	mov     r6, r3
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0xc
	blx     MI_CpuFill8
	mov     r0, r6
	bl      Function_2264a70
	strb    r0, [r5, #0x4]
	mov     r0, #0x1
	strb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	mov     r0, r7
	mov     r2, r4
	bl      Function_2264884
	str     r0, [r5, #0x0]
	strb    r4, [r5, #0x6]
	strh    r6, [r5, #0x8]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x226498c

.thumb
Function_226498c: @ 226498c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x6]
	mov     r3, #0x16
	add     r2, sp, #0x0
	lsl     r1, r0, #4
	mov     r0, #0x48
	sub     r0, r0, r1
	lsl     r0, r0, #16
	asr     r4, r0, #16
	add     r1, sp, #0x0
	ldr     r0, [r5, #0x0]
	add     r1, #0x2
	lsl     r3, r3, #16
	bl      Function_200d5a0
	add     r1, sp, #0x0
	mov     r0, #0x2
	ldsh    r2, [r1, r0]
	cmp     r4, r2
	ble     branch_22649d6
	.hword  0x1c92 @ add r2, r2, #0x2
	strh    r2, [r1, #0x2]
	ldsh    r0, [r1, r0]
	cmp     r0, r4
	ble     branch_22649c2
	strh    r4, [r1, #0x2]
.thumb
branch_22649c2: @ 22649c2 :thumb
	add     r3, sp, #0x0
	mov     r1, #0x2
	mov     r2, #0x0
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	mov     r3, #0x16
	ldr     r0, [r5, #0x0]
	lsl     r3, r3, #16
	bl      Function_200d500
.thumb
branch_22649d6: @ 22649d6 :thumb
	pop     {r3-r5,pc}
@ 0x22649d8

.thumb
Function_22649d8: @ 22649d8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x6]
	mov     r5, r0
	cmp     r1, #0x0
	bne     branch_2264a66
	ldrb    r1, [r4, #0x5]
	cmp     r1, #0x1
	beq     branch_2264a44
	cmp     r1, #0x3
	bne     branch_2264a66
	ldr     r0, [r4, #0x0]
	bl      Function_200d3b8
	cmp     r0, #0x0
	bne     branch_2264a66
	mov     r0, #0x8
	ldsh    r1, [r4, r0]
	.hword  0x1d49 @ add r1, r1, #0x5
	strh    r1, [r4, #0x8]
	ldsh    r0, [r4, r0]
	bl      Function_2264a70
	strb    r0, [r4, #0x4]
	mov     r0, #0x1
	strb    r0, [r4, #0x5]
	ldrb    r1, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	bl      Function_200d364
	mov     r1, #0x7
	mov     r3, #0x16
	ldr     r0, [r4, #0x0]
	mvn     r1, r1
	mov     r2, #0x20
	lsl     r3, r3, #16
	bl      Function_200d500
	ldr     r0, [pc, #0x40] @ 0x2264a68, (=0x380c)
	mov     r2, #0x0
	add     r3, r5, r0
	mov     r1, #0x4
.thumb
branch_2264a2c: @ 2264a2c :thumb
	ldrb    r0, [r3, #0x6]
	cmp     r0, #0x0
	bne     branch_2264a36
	strb    r1, [r3, #0x6]
	b       branch_2264a3a
@ 0x2264a36

.thumb
branch_2264a36: @ 2264a36 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r3, #0x6]
.thumb
branch_2264a3a: @ 2264a3a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0xc
	cmp     r2, #0x5
	blt     branch_2264a2c
	pop     {r3-r5,pc}
@ 0x2264a44

.thumb
branch_2264a44: @ 2264a44 :thumb
	bl      Function_2263dac
	ldrb    r1, [r4, #0x5]
	cmp     r1, #0x1
	bne     branch_2264a66
	cmp     r0, #0x4b
	ble     branch_2264a66
	mov     r0, #0x2
	strb    r0, [r4, #0x5]
	ldrb    r1, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	.hword  0x1cc9 @ add r1, r1, #0x3
	bl      Function_200d364
	ldr     r0, [pc, #0x8] @ 0x2264a6c, (=0x57e)
	bl      Function_2005748
.thumb
branch_2264a66: @ 2264a66 :thumb
	pop     {r3-r5,pc}
@ 0x2264a68

.word 0x380c @ 0x2264a68
.word 0x57e @ 0x2264a6c
.thumb
Function_2264a70: @ 2264a70 :thumb
	cmp     r0, #0xa
	blt     branch_2264a78
	mov     r0, #0x2
	bx      lr
@ 0x2264a78

.thumb
branch_2264a78: @ 2264a78 :thumb
	cmp     r0, #0x5
	blt     branch_2264a80
	mov     r0, #0x1
	bx      lr
@ 0x2264a80

.thumb
branch_2264a80: @ 2264a80 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2264a84

.thumb
Function_2264a84: @ 2264a84 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x24] @ 0x2264aac, (=0x380c)
	mov     r2, #0x0
	add     r1, r0, r1
.thumb
branch_2264a8c: @ 2264a8c :thumb
	ldrb    r0, [r1, #0x6]
	cmp     r0, #0x0
	bne     branch_2264aa0
	mov     r0, #0x3
	strb    r0, [r1, #0x5]
	ldr     r0, [r1, #0x0]
	mov     r1, #0x6
	bl      Function_200d364
	pop     {r3,pc}
@ 0x2264aa0

.thumb
branch_2264aa0: @ 2264aa0 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r1, #0xc
	cmp     r2, #0x5
	blt     branch_2264a8c
	pop     {r3,pc}
@ 0x2264aaa


.align 2


.word 0x380c @ 0x2264aac
.thumb
Function_2264ab0: @ 2264ab0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x3
	bne     branch_2264aec
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r1, #0x4
	str     r1, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x2c]
	mov     r2, #0x0
	mov     r3, #0xd
	bl      Function_2019e2c
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r1, #0x4
	str     r1, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x2c]
	mov     r2, #0x14
	mov     r3, #0xd
	bl      Function_2019e2c
.thumb
branch_2264aec: @ 2264aec :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2264af0

.thumb
Function_2264af0: @ 2264af0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [r6, #0x0]
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_2264b50
	ldr     r0, [pc, #0xe8] @ 0x2264bf0, (=0x2266b72)
	str     r0, [sp, #0x4]
	add     r0, sp, #0x10
	str     r0, [sp, #0x0]
.thumb
branch_2264b0c: @ 2264b0c :thumb
	ldr     r0, [sp, #0x4]
	ldr     r5, [sp, #0x0]
	ldrh    r7, [r0, #0x0]
	mov     r4, #0x0
.thumb
branch_2264b14: @ 2264b14 :thumb
	mov     r0, r6
	add     r0, #0x8c
	add     r3, r7, r4
	mov     r1, #0x1
	lsl     r3, r3, #16
	ldr     r0, [r0, #0x0]
	mov     r2, r1
	lsr     r3, r3, #16
	bl      Function_2003910
	strh    r0, [r5, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x3
	blt     branch_2264b14
	ldr     r0, [sp, #0x4]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	.hword  0x1d80 @ add r0, r0, #0x6
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	ldr     r0, [r6, #0x0]
	add     r0, #0x30
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0xc]
	cmp     r0, r1
	blt     branch_2264b0c
.thumb
branch_2264b50: @ 2264b50 :thumb
	bl      Function_203608c
	ldr     r3, [r6, #0x0]
	mov     r2, #0x0
	mov     r1, r3
	add     r1, #0x30
	ldrb    r4, [r1, #0x0]
	cmp     r4, #0x0
	ble     branch_2264b74
.thumb
branch_2264b62: @ 2264b62 :thumb
	mov     r1, r3
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	cmp     r0, r1
	beq     branch_2264b74
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, r4
	blt     branch_2264b62
.thumb
branch_2264b74: @ 2264b74 :thumb
	mov     r0, r6
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_2003164
	str     r0, [sp, #0x8]
	mov     r0, r6
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_200316c
	ldr     r1, [r6, #0x0]
	mov     r7, r0
	mov     r0, r1
	add     r0, #0x30
	ldrb    r5, [r0, #0x0]
	mov     r4, #0x0
	cmp     r5, #0x0
	ble     branch_2264bea
.thumb
branch_2264b9e: @ 2264b9e :thumb
	add     r1, r1, r4
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	mov     r0, r6
	bl      Function_22622c4
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x44] @ 0x2264bf4, (=0x2266ca4)
	lsl     r2, r5, #3
	add     r0, r0, r2
	ldrh    r2, [r1, r0]
	mov     r1, #0x6
	mov     r3, r4
	mul     r3, r1
	add     r1, sp, #0x10
	add     r1, r1, r3
	lsl     r3, r2, #1
	ldr     r2, [sp, #0x8]
	mov     r0, #0x0
	add     r2, r2, r3
	add     r3, r7, r3
.thumb
branch_2264bc8: @ 2264bc8 :thumb
	ldrh    r5, [r1, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r5, [r2, #0x0]
	ldrh    r5, [r1, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	.hword  0x1c92 @ add r2, r2, #0x2
	strh    r5, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r0, #0x3
	blt     branch_2264bc8
	ldr     r1, [r6, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	mov     r0, r1
	add     r0, #0x30
	ldrb    r5, [r0, #0x0]
	cmp     r4, r5
	blt     branch_2264b9e
.thumb
branch_2264bea: @ 2264bea :thumb
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2264bee


.align 2


.word 0x2266b72 @ 0x2264bf0
.word 0x2266ca4 @ 0x2264bf4
.thumb
Function_2264bf8: @ 2264bf8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x9c
	mov     r7, r0
	ldr     r0, [r7, #0x28]
	ldr     r1, [pc, #0x10c] @ 0x2264d10, (=0x2716)
	mov     r2, #0x2
	bl      Function_200d05c
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	ldr     r0, [r7, #0x0]
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_2264c6e
	ldr     r0, [pc, #0xf8] @ 0x2264d14, (=0x2266b8a)
	str     r0, [sp, #0x8]
	add     r0, sp, #0x1c
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	lsl     r0, r0, #4
	str     r0, [sp, #0x0]
.thumb
branch_2264c26: @ 2264c26 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r5, [sp, #0x4]
	ldrh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	mov     r6, #0x0
	add     r4, r1, r0
.thumb
branch_2264c32: @ 2264c32 :thumb
	mov     r0, r7
	add     r0, #0x8c
	lsl     r3, r4, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	mov     r2, #0x1
	lsr     r3, r3, #16
	bl      Function_2003910
	strh    r0, [r5, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r6, #0x10
	blt     branch_2264c32
	ldr     r0, [sp, #0x8]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	add     r0, #0x20
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	ldr     r0, [r7, #0x0]
	add     r0, #0x30
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x18]
	cmp     r0, r1
	blt     branch_2264c26
.thumb
branch_2264c6e: @ 2264c6e :thumb
	bl      Function_203608c
	ldr     r3, [r7, #0x0]
	mov     r2, #0x0
	mov     r1, r3
	add     r1, #0x30
	ldrb    r4, [r1, #0x0]
	cmp     r4, #0x0
	ble     branch_2264c92
.thumb
branch_2264c80: @ 2264c80 :thumb
	mov     r1, r3
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	cmp     r0, r1
	beq     branch_2264c92
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, r4
	blt     branch_2264c80
.thumb
branch_2264c92: @ 2264c92 :thumb
	mov     r0, r7
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	bl      Function_2003164
	str     r0, [sp, #0x14]
	mov     r0, r7
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	bl      Function_200316c
	ldr     r1, [r7, #0x0]
	str     r0, [sp, #0x10]
	mov     r0, r1
	add     r0, #0x30
	ldrb    r5, [r0, #0x0]
	mov     r4, #0x0
	cmp     r5, #0x0
	ble     branch_2264d0c
	ldr     r0, [sp, #0xc]
	lsl     r6, r0, #4
.thumb
branch_2264cc0: @ 2264cc0 :thumb
	add     r1, r1, r4
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	mov     r0, r7
	bl      Function_22622c4
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x48] @ 0x2264d18, (=0x2266c04)
	lsl     r2, r5, #3
	add     r0, r0, r2
	ldrh    r0, [r1, r0]
	lsl     r3, r4, #5
	add     r1, sp, #0x1c
	add     r2, r6, r0
	add     r1, r1, r3
	lsl     r5, r2, #1
	ldr     r2, [sp, #0x14]
	ldr     r3, [sp, #0x10]
	mov     r0, #0x0
	add     r2, r2, r5
	add     r3, r3, r5
.thumb
branch_2264cea: @ 2264cea :thumb
	ldrh    r5, [r1, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r5, [r2, #0x0]
	ldrh    r5, [r1, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	.hword  0x1c92 @ add r2, r2, #0x2
	strh    r5, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r0, #0x10
	blt     branch_2264cea
	ldr     r1, [r7, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	mov     r0, r1
	add     r0, #0x30
	ldrb    r5, [r0, #0x0]
	cmp     r4, r5
	blt     branch_2264cc0
.thumb
branch_2264d0c: @ 2264d0c :thumb
	add     sp, #0x9c
	pop     {r4-r7,pc}
@ 0x2264d10

.word 0x2716 @ 0x2264d10
.word 0x2266b8a @ 0x2264d14
.word 0x2266c04 @ 0x2264d18
.thumb
Function_2264d1c: @ 2264d1c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r0, [r5, #0x28]
	ldr     r1, [pc, #0xe0] @ 0x2264e08, (=0x2716)
	mov     r2, #0x2
	bl      Function_200d05c
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_2264d76
	ldr     r0, [sp, #0x4]
	ldr     r7, [pc, #0xcc] @ 0x2264e0c, (=0x2266b82)
	lsl     r0, r0, #4
	add     r4, sp, #0x14
	str     r0, [sp, #0x0]
.thumb
branch_2264d46: @ 2264d46 :thumb
	ldrh    r6, [r7, #0x0]
	ldr     r3, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x8c
	add     r3, r6, r3
	lsl     r3, r3, #16
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	mov     r2, #0x1
	lsr     r3, r3, #16
	bl      Function_2003910
	strh    r0, [r4, #0x0]
	ldr     r0, [sp, #0x10]
	.hword  0x1cbf @ add r7, r7, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	.hword  0x1ca4 @ add r4, r4, #0x2
	add     r0, #0x30
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x10]
	cmp     r0, r1
	blt     branch_2264d46
.thumb
branch_2264d76: @ 2264d76 :thumb
	bl      Function_203608c
	ldr     r3, [r5, #0x0]
	mov     r2, #0x0
	mov     r1, r3
	add     r1, #0x30
	ldrb    r4, [r1, #0x0]
	cmp     r4, #0x0
	ble     branch_2264d9a
.thumb
branch_2264d88: @ 2264d88 :thumb
	mov     r1, r3
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	cmp     r0, r1
	beq     branch_2264d9a
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, r4
	blt     branch_2264d88
.thumb
branch_2264d9a: @ 2264d9a :thumb
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	bl      Function_2003164
	str     r0, [sp, #0xc]
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	bl      Function_200316c
	ldr     r1, [r5, #0x0]
	str     r0, [sp, #0x8]
	mov     r0, r1
	add     r0, #0x30
	ldrb    r6, [r0, #0x0]
	mov     r4, #0x0
	cmp     r6, #0x0
	ble     branch_2264e02
	ldr     r0, [sp, #0x4]
	lsl     r7, r0, #4
.thumb
branch_2264dc8: @ 2264dc8 :thumb
	add     r1, r1, r4
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	mov     r0, r5
	bl      Function_22622c4
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x38] @ 0x2264e10, (=0x2266c54)
	lsl     r2, r6, #3
	add     r0, r0, r2
	ldrh    r0, [r1, r0]
	lsl     r1, r4, #1
	add     r2, sp, #0x14
	ldrh    r3, [r2, r1]
	add     r0, r7, r0
	ldr     r2, [sp, #0xc]
	lsl     r0, r0, #1
	strh    r3, [r2, r0]
	add     r2, sp, #0x14
	ldrh    r2, [r2, r1]
	ldr     r1, [sp, #0x8]
	.hword  0x1c64 @ add r4, r4, #0x1
	strh    r2, [r1, r0]
	ldr     r1, [r5, #0x0]
	mov     r0, r1
	add     r0, #0x30
	ldrb    r6, [r0, #0x0]
	cmp     r4, r6
	blt     branch_2264dc8
.thumb
branch_2264e02: @ 2264e02 :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2264e06


.align 2


.word 0x2716 @ 0x2264e08
.word 0x2266b82 @ 0x2264e0c
.word 0x2266c54 @ 0x2264e10
.thumb
Function_2264e14: @ 2264e14 :thumb
	push    {r4-r6,lr}
	mov     r4, r3
	mov     r5, r1
	mov     r6, r2
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x10
	blx     MI_CpuFill8
	bl      Function_203608c
	strb    r0, [r4, #0x0]
	strh    r5, [r4, #0x2]
	str     r6, [r4, #0x4]
	str     r6, [r4, #0x8]
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0xc]
	pop     {r4-r6,pc}
@ 0x2264e3a


.align 2, 0


.thumb
Function_2264e3c: @ 2264e3c :thumb
	push    {r4,r5}
	ldr     r2, [pc, #0x40] @ 0x2264e80, (=0x2fb0)
	mov     r4, r0
	.hword  0x1f10 @ sub r0, r2, #0x4
	mov     r3, r1
	ldr     r1, [r4, r2]
	ldr     r0, [r4, r0]
	sub     r0, r1, r0
	cmp     r0, #0x8
	blt     branch_2264e56
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x2264e56

.thumb
branch_2264e56: @ 2264e56 :thumb
	lsr     r5, r1, #31
	lsl     r1, r1, #29
	sub     r1, r1, r5
	mov     r0, #0x1d
	ror     r1, r0
	add     r0, r5, r1
	lsl     r0, r0, #4
	add     r1, r4, r0
	mov     r0, r2
	sub     r0, #0x84
	add     r5, r1, r0
	ldmia   r3!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldr     r0, [r4, r2]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, r2]
	mov     r0, #0x1
	pop     {r4,r5}
	bx      lr
@ 0x2264e80

.word 0x2fb0 @ 0x2264e80
.thumb
Function_2264e84: @ 2264e84 :thumb
	push    {r3,r4}
	ldr     r1, [pc, #0x2c] @ 0x2264eb4, (=0x2fac)
	add     r2, r1, #0x4
	ldr     r4, [r0, r1]
	ldr     r2, [r0, r2]
	cmp     r4, r2
	blt     branch_2264e98
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x2264e98

.thumb
branch_2264e98: @ 2264e98 :thumb
	add     r2, r4, #0x1
	str     r2, [r0, r1]
	sub     r1, #0x80
	add     r3, r0, r1
	lsr     r2, r4, #31
	lsl     r1, r4, #29
	sub     r1, r1, r2
	mov     r0, #0x1d
	ror     r1, r0
	add     r0, r2, r1
	lsl     r0, r0, #4
	add     r0, r3, r0
	pop     {r3,r4}
	bx      lr
@ 0x2264eb4

.word 0x2fac @ 0x2264eb4
.thumb
Function_2264eb8: @ 2264eb8 :thumb
	push    {r3-r7,lr}
	mov     r2, r0
	ldr     r0, [pc, #0xe4] @ 0x2264fa4, (=0x2fb0)
	mov     r7, r1
	ldr     r5, [r2, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r2, r0]
	mov     r4, #0x0
	cmp     r0, r5
	beq     branch_2264ed0
	cmp     r7, #0x0
	bne     branch_2264ed4
.thumb
branch_2264ed0: @ 2264ed0 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2264ed4

.thumb
branch_2264ed4: @ 2264ed4 :thumb
	lsr     r3, r0, #31
	lsl     r1, r0, #29
	sub     r1, r1, r3
	mov     r0, #0x1d
	ror     r1, r0
	add     r1, r3, r1
	lsr     r3, r5, #31
	lsl     r5, r5, #29
	sub     r5, r5, r3
	ror     r5, r0
	add     r0, r3, r5
	cmp     r1, r0
	bge     branch_2264f12
	cmp     r1, r0
	bge     branch_2264f5a
	lsl     r3, r1, #4
	add     r6, r2, r3
	ldr     r3, [pc, #0xb0] @ 0x2264fa8, (=0x2f38)
.thumb
branch_2264ef8: @ 2264ef8 :thumb
	ldrb    r5, [r6, r3]
	cmp     r5, #0x0
	bne     branch_2264f08
	ldr     r0, [pc, #0xac] @ 0x2264fac, (=0x2f2c)
	add     r2, r2, r0
	lsl     r0, r1, #4
	add     r4, r2, r0
	b       branch_2264f5a
@ 0x2264f08

.thumb
branch_2264f08: @ 2264f08 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r6, #0x10
	cmp     r1, r0
	blt     branch_2264ef8
	b       branch_2264f5a
@ 0x2264f12

.thumb
branch_2264f12: @ 2264f12 :thumb
	cmp     r1, #0x8
	bge     branch_2264f34
	lsl     r3, r1, #4
	add     r6, r2, r3
	ldr     r3, [pc, #0x8c] @ 0x2264fa8, (=0x2f38)
.thumb
branch_2264f1c: @ 2264f1c :thumb
	ldrb    r5, [r6, r3]
	cmp     r5, #0x0
	bne     branch_2264f2c
	ldr     r3, [pc, #0x88] @ 0x2264fac, (=0x2f2c)
	lsl     r1, r1, #4
	add     r3, r2, r3
	add     r4, r3, r1
	b       branch_2264f34
@ 0x2264f2c

.thumb
branch_2264f2c: @ 2264f2c :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r6, #0x10
	cmp     r1, #0x8
	blt     branch_2264f1c
.thumb
branch_2264f34: @ 2264f34 :thumb
	cmp     r4, #0x0
	bne     branch_2264f5a
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2264f5a
	ldr     r1, [pc, #0x68] @ 0x2264fa8, (=0x2f38)
	mov     r5, r2
.thumb
branch_2264f42: @ 2264f42 :thumb
	ldrb    r3, [r5, r1]
	cmp     r3, #0x0
	bne     branch_2264f52
	ldr     r0, [pc, #0x60] @ 0x2264fac, (=0x2f2c)
	add     r1, r2, r0
	lsl     r0, r6, #4
	add     r4, r1, r0
	b       branch_2264f5a
@ 0x2264f52

.thumb
branch_2264f52: @ 2264f52 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x10
	cmp     r6, r0
	blt     branch_2264f42
.thumb
branch_2264f5a: @ 2264f5a :thumb
	cmp     r4, #0x0
	bne     branch_2264f66
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2264f66

.thumb
branch_2264f66: @ 2264f66 :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2264f70
	bl      ErrorHandling
.thumb
branch_2264f70: @ 2264f70 :thumb
	mov     r0, #0x1
	strb    r7, [r4, #0x1]
	strb    r0, [r4, #0xc]
	cmp     r7, #0x1
	beq     branch_2264f84
	cmp     r7, #0x2
	beq     branch_2264f8c
	cmp     r7, #0x3
	beq     branch_2264f98
	b       branch_2264fa0
@ 0x2264f84

.thumb
branch_2264f84: @ 2264f84 :thumb
	ldr     r0, [r4, #0x4]
	lsl     r0, r0, #1
	str     r0, [r4, #0x8]
	b       branch_2264fa0
@ 0x2264f8c

.thumb
branch_2264f8c: @ 2264f8c :thumb
	ldr     r1, [r4, #0x4]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	str     r0, [r4, #0x8]
	b       branch_2264fa0
@ 0x2264f98

.thumb
branch_2264f98: @ 2264f98 :thumb
	ldr     r1, [r4, #0x4]
	lsl     r0, r1, #1
	add     r0, r1, r0
	str     r0, [r4, #0x8]
.thumb
branch_2264fa0: @ 2264fa0 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2264fa4

.word 0x2fb0 @ 0x2264fa4
.word 0x2f38 @ 0x2264fa8
.word 0x2f2c @ 0x2264fac
.thumb
Function_2264fb0: @ 2264fb0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	ldr     r4, [pc, #0x8c] @ 0x2265044, (=0x2266d68)
	mov     r7, r0
	str     r1, [sp, #0x0]
	add     r3, sp, #0x4
	mov     r2, #0x6
.thumb
branch_2264fbe: @ 2264fbe :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2264fbe
	ldr     r0, [r4, #0x0]
	ldr     r4, [sp, #0x0]
	ldr     r5, [pc, #0x7c] @ 0x2265048, (=0x2266bb4)
	str     r0, [r3, #0x0]
	mov     r6, #0x0
.thumb
branch_2264fd0: @ 2264fd0 :thumb
	ldr     r0, [r7, #0x24]
	ldr     r1, [r7, #0x28]
	add     r2, sp, #0x4
	bl      Function_200ce6c
	mov     r3, #0x16
	str     r0, [r4, #0x0]
	mov     r1, #0x0
	mov     r2, #0x2
	ldsh    r1, [r5, r1]
	ldsh    r2, [r5, r2]
	lsl     r3, r3, #16
	bl      Function_200d500
	lsr     r1, r6, #31
	add     r1, r6, r1
	asr     r1, r1, #1
	ldr     r0, [r4, #0x0]
	add     r1, #0x1f
	bl      Function_200d364
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x4
	blt     branch_2264fd0
	ldr     r0, [r7, #0x0]
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	beq     branch_226501e
	cmp     r0, #0x3
	beq     branch_2265036
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x226501e

.thumb
branch_226501e: @ 226501e :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x8]
	bl      Function_200d3f4
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0xc]
	bl      Function_200d3f4
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x2265036

.thumb
branch_2265036: @ 2265036 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x4]
	bl      Function_200d3f4
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x2265044

.word 0x2266d68 @ 0x2265044
.word 0x2266bb4 @ 0x2265048
.thumb
Function_226504c: @ 226504c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, #0x0
.thumb
branch_2265052: @ 2265052 :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2265052
	pop     {r3-r5,pc}
@ 0x2265062


.align 2, 0


.thumb
Function_2265064: @ 2265064 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	ldr     r4, [pc, #0x160] @ 0x22651cc, (=0x2266d9c)
	mov     r5, r0
	str     r1, [sp, #0x0]
	add     r3, sp, #0xc
	mov     r2, #0x6
.thumb
branch_2265072: @ 2265072 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2265072
	ldr     r0, [r4, #0x0]
	ldr     r4, [sp, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x0
	ldr     r7, [pc, #0x14c] @ 0x22651d0, (=0x2266b7a)
	str     r0, [sp, #0x8]
.thumb
branch_2265086: @ 2265086 :thumb
	ldr     r0, [sp, #0x0]
	add     r0, #0xe4
	ldr     r1, [r0, #0x0]
	ldr     r0, [r4, #0xc]
	add     r0, r1, r0
	bl      Function_201d2b8
	asr     r1, r0, #31
	mov     r2, #0x4c
	mov     r3, #0x0
	blx     _ll_mul
	mov     r2, #0x2
	lsl     r2, r2, #10
	add     r2, r0, r2
	ldr     r0, [pc, #0x12c] @ 0x22651d4, (=0x0)
	adc     r1, r0
	lsl     r0, r1, #20
	lsr     r6, r2, #12
	orr     r6, r0
	ldr     r0, [sp, #0x0]
	add     r6, #0x80
	add     r0, #0xe4
	ldr     r1, [r0, #0x0]
	ldr     r0, [r4, #0xc]
	add     r0, r1, r0
	bl      Function_201d2c4
	asr     r1, r0, #31
	mov     r2, #0x44
	mov     r3, #0x0
	blx     _ll_mul
	mov     r2, #0x2
	lsl     r2, r2, #10
	add     r0, r0, r2
	ldr     r2, [pc, #0x104] @ 0x22651d4, (=0x0)
	adc     r1, r2
	lsr     r2, r0, #12
	lsl     r1, r1, #20
	orr     r2, r1
	mov     r0, #0x62
	sub     r0, r0, r2
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	add     r2, sp, #0xc
	bl      Function_200ce6c
	ldr     r2, [sp, #0x4]
	lsl     r1, r6, #16
	sub     r2, #0x18
	lsl     r2, r2, #16
	mov     r3, #0x16
	str     r0, [r4, #0x0]
	asr     r1, r1, #16
	asr     r2, r2, #16
	lsl     r3, r3, #16
	bl      Function_200d500
	ldrh    r1, [r7, #0x2]
	ldr     r0, [r4, #0x0]
	bl      Function_200d364
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	ldr     r2, [pc, #0xbc] @ 0x22651d8, (=0x2266dd0)
	bl      Function_200ce6c
	mov     r1, #0x0
	mov     r3, #0x16
	mov     r2, r1
	lsl     r3, r3, #16
	str     r0, [r4, #0x4]
	bl      Function_200d500
	ldr     r0, [r4, #0x4]
	mov     r1, #0x21
	bl      Function_200d364
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	ldr     r2, [pc, #0x90] @ 0x22651dc, (=0x2266e04)
	bl      Function_200ce6c
	ldr     r2, [sp, #0x4]
	lsl     r1, r6, #16
	lsl     r2, r2, #16
	mov     r3, #0x16
	str     r0, [r4, #0x8]
	asr     r1, r1, #16
	asr     r2, r2, #16
	lsl     r3, r3, #16
	bl      Function_200d500
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_200d6a4
	mov     r1, #0xfe
	lsl     r1, r1, #22
	ldr     r0, [r4, #0x8]
	mov     r2, r1
	bl      Function_200d6e8
	ldr     r1, [sp, #0x8]
	ldr     r0, [r4, #0x8]
	add     r1, #0x22
	bl      Function_200d364
	ldr     r0, [r4, #0x8]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_200d3f4
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x30
	bl      Function_2266344
	ldr     r0, [sp, #0x8]
	add     r4, #0x4c
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1cbf @ add r7, r7, #0x2
	str     r0, [sp, #0x8]
	cmp     r0, #0x3
	bge     branch_22651b4
	b       branch_2265086
@ 0x22651b4

.thumb
branch_22651b4: @ 22651b4 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_200d3f4
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x8]
	bl      Function_200d3f4
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x22651cc

.word 0x2266d9c @ 0x22651cc
.word 0x2266b7a @ 0x22651d0
.word 0x0 @ 0x22651d4
.word 0x2266dd0 @ 0x22651d8
.word 0x2266e04 @ 0x22651dc
.thumb
Function_22651e0: @ 22651e0 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, #0x0
.thumb
branch_22651e8: @ 22651e8 :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_200d0f4
	ldr     r0, [r5, #0x4]
	bl      Function_200d0f4
	ldr     r0, [r5, #0x8]
	bl      Function_200d0f4
	mov     r1, r5
	mov     r0, r6
	add     r1, #0x30
	bl      Function_2266384
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x4c
	cmp     r4, #0x3
	blt     branch_22651e8
	pop     {r4-r6,pc}
@ 0x226520e


.align 2, 0


.thumb
Function_2265210: @ 2265210 :thumb
	push    {r4,lr}
	mov     r4, r1
	add     r1, #0xf4
	ldrb    r1, [r1, #0x0]
	mov     r0, #0x1e
	lsl     r0, r0, #12
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x30] @ 0x2265250, (=0x2266bc4)
	ldrb    r1, [r1, r2]
	blx     _s32_div_f
	mov     r1, r4
	add     r1, #0xe8
	str     r0, [r1, #0x0]
	mov     r1, #0x0
	mov     r2, r1
	mov     r3, r4
.thumb
branch_2265232: @ 2265232 :thumb
	lsl     r0, r2, #12
	str     r0, [r3, #0xc]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r3, #0x14]
	add     r2, #0x5a
	add     r3, #0x4c
	cmp     r1, #0x3
	blt     branch_2265232
	mov     r0, #0x2
	strb    r0, [r4, #0x10]
	mov     r0, #0x1
	add     r4, #0xf1
	strb    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x226524e


.align 2


.word 0x2266bc4 @ 0x2265250
.thumb
Function_2265254: @ 2265254 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r0
	mov     r0, r4
	add     r0, #0xf1
	ldrb    r0, [r0, #0x0]
	mov     r5, #0x0
	cmp     r0, #0x1
	bne     branch_2265268
	b       branch_22653e8
@ 0x2265268

.thumb
branch_2265268: @ 2265268 :thumb
	mov     r0, r4
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xec
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xf2
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_22652f4
	mov     r0, r4
	add     r0, #0xe4
	ldr     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	add     r1, r1, r0
	mov     r0, r4
	add     r0, #0xe4
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xf3
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xf3
	strb    r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0xf4
	ldrb    r1, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xf3
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x13c] @ 0x22653ec, (=0x2266bc4)
	ldrb    r0, [r0, #0x0]
	ldrb    r1, [r1, r2]
	cmp     r0, r1
	bcc     branch_2265356
	mov     r0, r4
	add     r0, #0xf3
	strb    r5, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xf0
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xf0
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xf0
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x1e
	lsl     r0, r0, #12
	mov     r2, r1
	mul     r2, r0
	mov     r0, r4
	add     r0, #0xe4
	str     r2, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xf4
	ldrb    r0, [r0, #0x0]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x104] @ 0x22653f0, (=0x2266bc5)
	ldrb    r1, [r0, r1]
	mov     r0, r4
	add     r0, #0xf2
	strb    r1, [r0, #0x0]
	b       branch_2265356
@ 0x22652f4

.thumb
branch_22652f4: @ 22652f4 :thumb
	mov     r0, r4
	add     r0, #0xf2
	ldrb    r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xf2
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xf2
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2265356
	mov     r0, r4
	add     r0, #0xf0
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0xc
	bcc     branch_2265356
	mov     r0, r4
	add     r0, #0xf0
	strb    r5, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xf4
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xf4
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xf4
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x5
	bcc     branch_226533c
	mov     r0, r4
	mov     r1, #0x4
	add     r0, #0xf4
	strb    r1, [r0, #0x0]
.thumb
branch_226533c: @ 226533c :thumb
	mov     r1, r4
	add     r1, #0xf4
	ldrb    r1, [r1, #0x0]
	mov     r0, #0x1e
	lsl     r0, r0, #12
	lsl     r2, r1, #2
	ldr     r1, [pc, #0xa0] @ 0x22653ec, (=0x2266bc4)
	ldrb    r1, [r1, r2]
	blx     _s32_div_f
	mov     r1, r4
	add     r1, #0xe8
	str     r0, [r1, #0x0]
.thumb
branch_2265356: @ 2265356 :thumb
	mov     r0, r4
	add     r0, #0xf4
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2265392
	ldr     r1, [pc, #0x88] @ 0x22653ec, (=0x2266bc4)
	mov     r0, #0x0
	mov     r7, #0xc
.thumb
branch_2265366: @ 2265366 :thumb
	ldrb    r3, [r1, #0x0]
	ldrb    r2, [r1, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r2, r3, r2
	mov     r3, r2
	mul     r3, r7
	add     r5, r5, r3
	cmp     r0, #0x2
	blt     branch_2265366
	mov     r0, r4
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	sub     r5, #0xf
	cmp     r5, r0
	bne     branch_22653c6
	mov     r0, r4
	add     r0, #0x4c
	mov     r1, #0x1
	bl      Function_2265428
	b       branch_22653c6
@ 0x2265392

.thumb
branch_2265392: @ 2265392 :thumb
	cmp     r0, #0x2
	bne     branch_22653c6
	ldr     r0, [pc, #0x54] @ 0x22653ec, (=0x2266bc4)
	mov     r1, #0x0
	mov     r7, #0xc
.thumb
branch_226539c: @ 226539c :thumb
	ldrb    r3, [r0, #0x0]
	ldrb    r2, [r0, #0x1]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	add     r2, r3, r2
	mov     r3, r2
	mul     r3, r7
	add     r5, r5, r3
	cmp     r1, #0x3
	blt     branch_226539c
	mov     r0, r4
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	sub     r5, #0xf
	cmp     r5, r0
	bne     branch_22653c6
	mov     r0, r4
	add     r0, #0x98
	mov     r1, #0x1
	bl      Function_2265428
.thumb
branch_22653c6: @ 22653c6 :thumb
	mov     r7, #0x0
	mov     r5, r4
.thumb
branch_22653ca: @ 22653ca :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_2265438
	mov     r2, r5
	mov     r0, r6
	mov     r1, r5
	add     r2, #0x30
	bl      Function_2266440
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0x4c
	cmp     r7, #0x3
	blt     branch_22653ca
.thumb
branch_22653e8: @ 22653e8 :thumb
	pop     {r3-r7,pc}
@ 0x22653ea


.align 2


.word 0x2266bc4 @ 0x22653ec
.word 0x2266bc5 @ 0x22653f0
.thumb
Function_22653f4: @ 22653f4 :thumb
	push    {r3,r4}
	ldr     r2, [pc, #0x2c] @ 0x2265424, (=0x1468)
	mov     r3, #0x0
	add     r2, r0, r2
	mov     r4, r2
.thumb
branch_22653fe: @ 22653fe :thumb
	ldrb    r0, [r4, #0x15]
	cmp     r0, #0x1
	bne     branch_2265412
	mov     r0, #0x4c
	mul     r0, r3
	add     r0, r2, r0
	str     r0, [r1, #0x0]
	ldrb    r0, [r0, #0x14]
	pop     {r3,r4}
	bx      lr
@ 0x2265412

.thumb
branch_2265412: @ 2265412 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r4, #0x4c
	cmp     r3, #0x3
	blt     branch_22653fe
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x2265422


.align 2


.word 0x1468 @ 0x2265424
.thumb
Function_2265428: @ 2265428 :thumb
	strb    r1, [r0, #0x10]
	mov     r1, #0x0
	strb    r1, [r0, #0x11]
	strb    r1, [r0, #0x12]
	str     r1, [r0, #0x18]
	strb    r1, [r0, #0x15]
	bx      lr
@ 0x2265436


.align 2, 0


.thumb
Function_2265438: @ 2265438 :thumb
	push    {r4,lr}
	ldrb    r3, [r2, #0x10]
	lsl     r4, r3, #2
	ldr     r3, [pc, #0x8] @ 0x2265448, (=0x2266b94)
	ldr     r3, [r3, r4]
	blx     r3
	pop     {r4,pc}
@ 0x2265446


.align 2


.word 0x2266b94 @ 0x2265448
.thumb
Function_226544c: @ 226544c :thumb
	mov     r0, #0x0
	strb    r0, [r2, #0x15]
	mov     r0, #0x1
	bx      lr
@ 0x2265454

.thumb
Function_2265454: @ 2265454 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r2
	mov     r0, #0x1c
	ldsh    r0, [r5, r0]
	add     r1, sp, #0x0
	strh    r0, [r1, #0x2]
	mov     r0, #0x1e
	ldsh    r0, [r5, r0]
	strh    r0, [r1, #0x0]
	ldrb    r0, [r5, #0x11]
	cmp     r0, #0x0
	beq     branch_2265474
	cmp     r0, #0x1
	beq     branch_22654a8
	b       branch_2265632
@ 0x2265474

.thumb
branch_2265474: @ 2265474 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_200d3f4
	ldr     r0, [r5, #0x8]
	mov     r1, #0x1
	bl      Function_200d3f4
	add     r1, sp, #0x0
	mov     r3, #0x16
	ldr     r0, [r5, #0x0]
	add     r1, #0x2
	add     r2, sp, #0x0
	lsl     r3, r3, #16
	bl      Function_200d5a0
	add     r1, sp, #0x0
	mov     r0, #0x2
	ldsh    r0, [r1, r0]
	strh    r0, [r5, #0x1c]
	mov     r0, #0x0
	ldsh    r0, [r1, r0]
	strh    r0, [r5, #0x1e]
	ldrb    r0, [r5, #0x11]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x11]
.thumb
branch_22654a8: @ 22654a8 :thumb
	mov     r1, #0x5a
	ldr     r2, [r5, #0xc]
	lsl     r1, r1, #12
	cmp     r2, r1
	bgt     branch_22654ba
	bge     branch_22654ec
	cmp     r2, #0x0
	beq     branch_22654cc
	b       branch_2265554
@ 0x22654ba

.thumb
branch_22654ba: @ 22654ba :thumb
	lsl     r0, r1, #1
	cmp     r2, r0
	bgt     branch_22654c4
	beq     branch_2265514
	b       branch_2265554
@ 0x22654c4

.thumb
branch_22654c4: @ 22654c4 :thumb
	ldr     r0, [pc, #0x174] @ 0x226563c, (=0x10e000)
	cmp     r2, r0
	beq     branch_2265534
	b       branch_2265554
@ 0x22654cc

.thumb
branch_22654cc: @ 22654cc :thumb
	mov     r0, #0x1e
	ldsh    r0, [r5, r0]
	ldrb    r1, [r5, #0x12]
	add     r0, #0x20
	lsl     r0, r0, #16
	asr     r0, r0, #16
	mul     r0, r1
	mov     r1, #0xf
	blx     _s32_div_f
	lsl     r0, r0, #16
	asr     r1, r0, #16
	sub     r1, #0x20
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	b       branch_2265558
@ 0x22654ec

.thumb
branch_22654ec: @ 22654ec :thumb
	mov     r0, #0x1c
	ldsh    r2, [r5, r0]
	mov     r0, #0x12
	lsl     r0, r0, #4
	sub     r0, r2, r0
	lsl     r0, r0, #16
	ldrb    r1, [r5, #0x12]
	asr     r0, r0, #16
	mul     r0, r1
	mov     r1, #0xf
	blx     _s32_div_f
	lsl     r0, r0, #16
	asr     r1, r0, #16
	mov     r0, #0x12
	lsl     r0, r0, #4
	add     r1, r1, r0
	add     r0, sp, #0x0
	strh    r1, [r0, #0x2]
	b       branch_2265558
@ 0x2265514

.thumb
branch_2265514: @ 2265514 :thumb
	mov     r0, #0x1e
	ldsh    r0, [r5, r0]
	ldrb    r1, [r5, #0x12]
	sub     r0, #0xe4
	lsl     r0, r0, #16
	asr     r0, r0, #16
	mul     r0, r1
	mov     r1, #0xf
	blx     _s32_div_f
	lsl     r0, r0, #16
	asr     r1, r0, #16
	add     r1, #0xe4
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	b       branch_2265558
@ 0x2265534

.thumb
branch_2265534: @ 2265534 :thumb
	mov     r0, #0x1c
	ldsh    r0, [r5, r0]
	ldrb    r1, [r5, #0x12]
	add     r0, #0x20
	lsl     r0, r0, #16
	asr     r0, r0, #16
	mul     r0, r1
	mov     r1, #0xf
	blx     _s32_div_f
	lsl     r0, r0, #16
	asr     r1, r0, #16
	sub     r1, #0x20
	add     r0, sp, #0x0
	strh    r1, [r0, #0x2]
	b       branch_2265558
@ 0x2265554

.thumb
branch_2265554: @ 2265554 :thumb
	bl      ErrorHandling
.thumb
branch_2265558: @ 2265558 :thumb
	ldrb    r1, [r5, #0x12]
	cmp     r1, #0xf
	bcc     branch_22655a0
	mov     r1, #0x1c
	mov     r2, #0x1e
	mov     r3, #0x16
	ldsh    r1, [r5, r1]
	ldsh    r2, [r5, r2]
	ldr     r0, [r5, #0x0]
	lsl     r3, r3, #16
	bl      Function_200d500
	mov     r2, #0x1e
	ldsh    r2, [r5, r2]
	mov     r1, #0x1c
	mov     r3, #0x16
	add     r2, #0x18
	lsl     r2, r2, #16
	ldsh    r1, [r5, r1]
	ldr     r0, [r5, #0x8]
	asr     r2, r2, #16
	lsl     r3, r3, #16
	bl      Function_200d500
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_2265428
	mov     r1, r5
	add     r5, #0x30
	mov     r0, r4
	mov     r2, r5
	bl      Function_226639c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22655a0

.thumb
branch_22655a0: @ 22655a0 :thumb
	mov     r0, #0xb4
	mul     r0, r1
	lsl     r0, r0, #12
	mov     r1, #0xf
	blx     _s32_div_f
	bl      Function_201d2b8
	mov     r2, #0x6
	asr     r1, r0, #31
	lsl     r2, r2, #14
	mov     r3, #0x0
	blx     _ll_mul
	mov     r3, #0x2
	mov     r2, #0x0
	lsl     r3, r3, #10
	add     r3, r0, r3
	adc     r1, r2
	lsl     r0, r1, #20
	lsr     r1, r3, #12
	orr     r1, r0
	neg     r1, r1
	asr     r0, r1, #11
	add     r3, sp, #0x0
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r4, r0, #12
	ldsh    r2, [r3, r2]
	mov     r1, #0x2
	ldsh    r1, [r3, r1]
	add     r2, r2, r4
	lsl     r2, r2, #16
	mov     r3, #0x16
	ldr     r0, [r5, #0x0]
	asr     r2, r2, #16
	lsl     r3, r3, #16
	bl      Function_200d500
	add     r3, sp, #0x0
	mov     r2, #0x0
	ldsh    r2, [r3, r2]
	mov     r1, #0x2
	ldsh    r1, [r3, r1]
	add     r2, #0x18
	lsl     r2, r2, #16
	mov     r3, #0x16
	ldr     r0, [r5, #0x8]
	asr     r2, r2, #16
	lsl     r3, r3, #16
	bl      Function_200d500
	neg     r0, r4
	mov     r1, #0x3
	blx     _s32_div_f
	lsl     r0, r0, #12
	mov     r1, #0x18
	blx     _s32_div_f
	mov     r1, #0x1
	lsl     r1, r1, #12
	sub     r0, r1, r0
	blx     _fflt
	ldr     r1, [pc, #0x1c] @ 0x2265640, (=0x45800000)
	blx     _fdiv
	mov     r1, r0
	ldr     r0, [r5, #0x8]
	mov     r2, r1
	bl      Function_200d6e8
.thumb
branch_2265632: @ 2265632 :thumb
	ldrb    r0, [r5, #0x12]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x12]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x226563c

.word 0x10e000 @ 0x226563c
.word 0x45800000 @ 0x2265640
.thumb
Function_2265644: @ 2265644 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0xf3
	ldrb    r0, [r0, #0x0]
	mov     r4, r2
	cmp     r0, #0x0
	beq     branch_2265674
	add     r1, #0xf4
	ldrb    r1, [r1, #0x0]
	mov     r0, #0xb
	lsl     r0, r0, #14
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x158] @ 0x22657bc, (=0x2266bc4)
	ldrb    r1, [r1, r2]
	blx     _s32_div_f
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_200d34c
	b       branch_226567c
@ 0x2265674

.thumb
branch_2265674: @ 2265674 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_200d3cc
.thumb
branch_226567c: @ 226567c :thumb
	mov     r0, r5
	add     r0, #0xf3
	ldrb    r1, [r0, #0x0]
	mov     r0, #0xb4
	mul     r0, r1
	mov     r1, r5
	add     r1, #0xf4
	ldrb    r1, [r1, #0x0]
	lsl     r0, r0, #12
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x128] @ 0x22657bc, (=0x2266bc4)
	ldrb    r1, [r1, r2]
	blx     _s32_div_f
	bl      Function_201d2b8
	mov     r2, #0x3
	asr     r1, r0, #31
	lsl     r2, r2, #14
	mov     r3, #0x0
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	neg     r1, r1
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r7, r0, #12
	mov     r0, r5
	add     r0, #0xe4
	ldr     r1, [r0, #0x0]
	ldr     r0, [r4, #0xc]
	add     r0, r1, r0
	bl      Function_201d2b8
	asr     r1, r0, #31
	mov     r2, #0x4c
	mov     r3, #0x0
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r6, r2, #12
	orr     r6, r0
	mov     r0, r5
	add     r0, #0xe4
	ldr     r1, [r0, #0x0]
	ldr     r0, [r4, #0xc]
	add     r6, #0x80
	add     r0, r1, r0
	bl      Function_201d2c4
	asr     r1, r0, #31
	mov     r2, #0x44
	mov     r3, #0x0
	blx     _ll_mul
	mov     r2, r0
	mov     r0, #0x2
	mov     r3, #0x0
	lsl     r0, r0, #10
	add     r0, r2, r0
	adc     r1, r3
	lsr     r2, r0, #12
	lsl     r1, r1, #20
	orr     r2, r1
	mov     r0, #0x62
	sub     r0, r0, r2
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x4]
	lsl     r1, r6, #16
	sub     r2, #0x18
	add     r2, r2, r7
	lsl     r2, r2, #16
	mov     r3, #0x16
	ldr     r0, [r4, #0x0]
	asr     r1, r1, #16
	asr     r2, r2, #16
	lsl     r3, r3, #16
	bl      Function_200d500
	ldr     r2, [sp, #0x4]
	lsl     r1, r6, #16
	lsl     r2, r2, #16
	mov     r3, #0x16
	ldr     r0, [r4, #0x8]
	asr     r1, r1, #16
	asr     r2, r2, #16
	lsl     r3, r3, #16
	bl      Function_200d500
	neg     r0, r7
	mov     r1, #0x3
	blx     _s32_div_f
	lsl     r0, r0, #12
	mov     r1, #0xc
	blx     _s32_div_f
	mov     r1, #0x1
	lsl     r1, r1, #12
	sub     r0, r1, r0
	blx     _fflt
	ldr     r1, [pc, #0x5c] @ 0x22657c0, (=0x45800000)
	blx     _fdiv
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	mov     r2, r1
	bl      Function_200d6e8
	mov     r1, r5
	add     r1, #0xf4
	ldrb    r1, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xf3
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x3c] @ 0x22657bc, (=0x2266bc4)
	ldrb    r0, [r0, #0x0]
	ldrb    r1, [r1, r2]
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_2265796
	mov     r2, r4
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	add     r2, #0x30
	bl      Function_226639c
.thumb
branch_2265796: @ 2265796 :thumb
	add     r5, #0xe4
	ldr     r1, [r5, #0x0]
	ldr     r0, [r4, #0xc]
	add     r0, r1, r0
	mov     r1, #0x5a
	asr     r0, r0, #12
	lsl     r1, r1, #2
	blx     _s32_div_f
	cmp     r1, #0xb4
	bne     branch_22657b0
	mov     r0, #0x1
	b       branch_22657b2
@ 0x22657b0

.thumb
branch_22657b0: @ 22657b0 :thumb
	mov     r0, #0x0
.thumb
branch_22657b2: @ 22657b2 :thumb
	strb    r0, [r4, #0x15]
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22657ba


.align 2


.word 0x2266bc4 @ 0x22657bc
.word 0x45800000 @ 0x22657c0
.thumb
Function_22657c4: @ 22657c4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r2
	ldrb    r0, [r4, #0x11]
	mov     r5, r1
	cmp     r0, #0x3
	bls     branch_22657d4
	b       branch_2265aa2
@ 0x22657d4

.thumb
branch_22657d4: @ 22657d4 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22657e0

Jumppoints_22657e0:
.hword branch_22657e8 - Jumppoints_22657e0 - 2
.hword branch_226585a - Jumppoints_22657e0 - 2
.hword branch_22658ae - Jumppoints_22657e0 - 2
.hword branch_22659ca - Jumppoints_22657e0 - 2
.thumb
branch_22657e8: @ 22657e8 :thumb
	ldr     r0, [pc, #0x2bc] @ 0x2265aa8, (=0x57b)
	bl      Function_2005748
	add     r1, sp, #0x8
	mov     r3, #0x16
	ldr     r0, [r4, #0x0]
	add     r1, #0x2
	add     r2, sp, #0x8
	lsl     r3, r3, #16
	bl      Function_200d5a0
	add     r3, sp, #0x4
	mov     r2, #0x4
	ldsh    r2, [r3, r2]
	mov     r1, #0x6
	ldsh    r1, [r3, r1]
	sub     r2, #0x20
	lsl     r2, r2, #16
	mov     r3, #0x16
	ldr     r0, [r4, #0x4]
	asr     r2, r2, #16
	lsl     r3, r3, #16
	bl      Function_200d500
	ldr     r0, [r4, #0x4]
	mov     r1, #0x21
	bl      Function_200d364
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_200d3f4
	ldrb    r1, [r4, #0x14]
	ldr     r0, [r4, #0x0]
	lsl     r2, r1, #1
	ldr     r1, [pc, #0x27c] @ 0x2265aac, (=0x2266b7a)
	ldrh    r1, [r1, r2]
	.hword  0x1c89 @ add r1, r1, #0x2
	bl      Function_200d364
	mov     r0, r5
	add     r0, #0xf4
	ldrb    r0, [r0, #0x0]
	ldr     r1, [pc, #0x270] @ 0x2265ab0, (=0x2266bc6)
	add     r5, #0xf4
	lsl     r0, r0, #2
	ldrb    r0, [r1, r0]
	strb    r0, [r4, #0x12]
	ldrb    r0, [r5, #0x0]
	lsl     r0, r0, #2
	ldrb    r0, [r1, r0]
	lsr     r0, r0, #1
	strb    r0, [r4, #0x13]
	ldrb    r0, [r4, #0x11]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x11]
	b       branch_2265aa2
@ 0x226585a

.thumb
branch_226585a: @ 226585a :thumb
	ldrb    r1, [r4, #0x12]
	ldrb    r0, [r4, #0x13]
	cmp     r1, r0
	bne     branch_2265884
	ldrb    r1, [r4, #0x14]
	ldr     r0, [r4, #0x0]
	lsl     r2, r1, #1
	ldr     r1, [pc, #0x240] @ 0x2265aac, (=0x2266b7a)
	ldrh    r1, [r1, r2]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      Function_200d364
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_200d3f4
	mov     r1, #0x1
	ldr     r0, [r4, #0x4]
	lsl     r1, r1, #14
	bl      Function_200d34c
.thumb
branch_2265884: @ 2265884 :thumb
	ldrb    r0, [r4, #0x12]
	cmp     r0, #0x0
	bne     branch_22658a8
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldrb    r1, [r4, #0x14]
	ldr     r0, [r4, #0x0]
	lsl     r2, r1, #1
	ldr     r1, [pc, #0x210] @ 0x2265aac, (=0x2266b7a)
	ldrh    r1, [r1, r2]
	bl      Function_200d364
	ldrb    r0, [r4, #0x11]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x11]
	b       branch_2265aa2
@ 0x22658a8

.thumb
branch_22658a8: @ 22658a8 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x12]
	b       branch_2265aa2
@ 0x22658ae

.thumb
branch_22658ae: @ 22658ae :thumb
	mov     r0, r5
	add     r0, #0xf2
	ldrb    r0, [r0, #0x0]
	mov     r2, #0x0
	cmp     r0, #0x0
	bne     branch_22658e0
	mov     r0, r5
	add     r0, #0xf4
	ldrb    r0, [r0, #0x0]
	mov     r3, r5
	add     r3, #0xf3
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x1ec] @ 0x2265ab4, (=0x2266bc4)
	ldrb    r3, [r3, #0x0]
	ldrb    r0, [r0, r1]
	add     r5, #0xf0
	sub     r3, r0, r3
	add     r3, r2, r3
	ldr     r2, [pc, #0x1e4] @ 0x2265ab8, (=0x2266bc5)
	ldrb    r1, [r2, r1]
	add     r1, r3, r1
	add     r6, r1, r0
	ldrb    r0, [r5, #0x0]
	add     r5, r0, #0x2
	b       branch_226590c
@ 0x22658e0

.thumb
branch_22658e0: @ 22658e0 :thumb
	add     r1, r2, r0
	mov     r0, r5
	add     r0, #0xf0
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0xc
	bcc     branch_22658fe
	add     r5, #0xf4
	ldrb    r0, [r5, #0x0]
	mov     r5, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r2, r0, #2
	ldr     r0, [pc, #0x1bc] @ 0x2265ab4, (=0x2266bc4)
	ldrb    r0, [r0, r2]
	add     r6, r1, r0
	b       branch_226590c
@ 0x22658fe

.thumb
branch_22658fe: @ 22658fe :thumb
	add     r5, #0xf4
	ldrb    r2, [r5, #0x0]
	add     r5, r0, #0x1
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x1ac] @ 0x2265ab4, (=0x2266bc4)
	ldrb    r2, [r2, r3]
	add     r6, r1, r2
.thumb
branch_226590c: @ 226590c :thumb
	mov     r1, #0x1e
	ldr     r0, [r4, #0xc]
	lsl     r1, r1, #12
	blx     _s32_div_f
	add     r0, r5, r0
	mov     r1, #0xc
	blx     _s32_div_f
	mov     r5, r1
	mov     r0, #0x1e
	lsl     r0, r0, #12
	mov     r7, r5
	mul     r7, r0
	mov     r0, r7
	bl      Function_201d2b8
	mov     r5, r0
	mov     r0, r7
	bl      Function_201d2c4
	str     r0, [sp, #0x0]
	add     r1, sp, #0x4
	mov     r3, #0x16
	ldr     r0, [r4, #0x0]
	add     r1, #0x2
	add     r2, sp, #0x4
	lsl     r3, r3, #16
	bl      Function_200d5a0
	add     r1, sp, #0x4
	mov     r3, #0x0
	ldsh    r0, [r1, r3]
	mov     r2, #0x4c
	add     r0, #0x18
	strh    r0, [r1, #0x0]
	mov     r0, #0x2
	ldsh    r7, [r1, r0]
	asr     r1, r5, #31
	mov     r0, r5
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	add     r1, #0x80
	lsl     r0, r1, #16
	asr     r0, r0, #16
	sub     r0, r0, r7
	lsl     r0, r0, #12
	mov     r1, r6
	blx     _s32_div_f
	str     r0, [r4, #0x20]
	add     r0, sp, #0x4
	mov     r3, #0x0
	ldsh    r5, [r0, r3]
	ldr     r0, [sp, #0x0]
	mov     r2, #0x44
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r2, r0
	mov     r0, #0x2
	mov     r3, #0x0
	lsl     r0, r0, #10
	add     r0, r2, r0
	adc     r1, r3
	lsr     r2, r0, #12
	lsl     r1, r1, #20
	orr     r2, r1
	mov     r0, #0x62
	sub     r0, r0, r2
	lsl     r0, r0, #16
	asr     r0, r0, #16
	sub     r0, r0, r5
	lsl     r0, r0, #12
	mov     r1, r6
	blx     _s32_div_f
	str     r0, [r4, #0x24]
	lsl     r0, r7, #12
	str     r0, [r4, #0x28]
	lsl     r0, r5, #12
	str     r0, [r4, #0x2c]
	strb    r6, [r4, #0x12]
	str     r6, [r4, #0x18]
	ldrb    r0, [r4, #0x11]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x11]
.thumb
branch_22659ca: @ 22659ca :thumb
	ldr     r1, [r4, #0x28]
	ldr     r0, [r4, #0x20]
	add     r0, r1, r0
	str     r0, [r4, #0x28]
	ldr     r1, [r4, #0x2c]
	ldr     r0, [r4, #0x24]
	add     r0, r1, r0
	str     r0, [r4, #0x2c]
	ldrb    r1, [r4, #0x12]
	mov     r0, #0xb4
	mul     r0, r1
	ldr     r1, [r4, #0x18]
	lsl     r0, r0, #12
	blx     _s32_div_f
	bl      Function_201d2b8
	mov     r2, #0x3
	asr     r1, r0, #31
	lsl     r2, r2, #14
	mov     r3, #0x0
	blx     _ll_mul
	mov     r5, r0
	ldr     r2, [r4, #0x28]
	mov     r6, r1
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	ldr     r2, [r4, #0x2c]
	lsl     r1, r1, #4
	asr     r3, r2, #11
	lsr     r3, r3, #20
	add     r3, r2, r3
	mov     r2, #0x2
	asr     r3, r3, #12
	mov     r7, #0x0
	lsl     r2, r2, #10
	asr     r1, r1, #16
	sub     r3, #0x18
	add     r2, r5, r2
	adc     r6, r7
	lsl     r5, r6, #20
	lsr     r2, r2, #12
	orr     r2, r5
	neg     r5, r2
	asr     r2, r5, #11
	lsr     r2, r2, #20
	add     r2, r5, r2
	asr     r2, r2, #12
	add     r2, r3, r2
	lsl     r2, r2, #16
	mov     r3, #0x16
	ldr     r0, [r4, #0x0]
	asr     r2, r2, #16
	lsl     r3, r3, #16
	bl      Function_200d500
	mov     r0, #0xb
	ldr     r1, [r4, #0x18]
	lsl     r0, r0, #14
	blx     _s32_div_f
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_200d34c
	ldr     r2, [r4, #0x28]
	ldr     r3, [r4, #0x2c]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r2, r3, #11
	lsr     r2, r2, #20
	add     r2, r3, r2
	lsl     r1, r1, #4
	lsl     r2, r2, #4
	mov     r3, #0x16
	ldr     r0, [r4, #0x8]
	asr     r1, r1, #16
	asr     r2, r2, #16
	lsl     r3, r3, #16
	bl      Function_200d500
	ldrb    r0, [r4, #0x12]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x12]
	ldrb    r0, [r4, #0x12]
	cmp     r0, #0x0
	bne     branch_2265aa2
	ldrb    r1, [r4, #0x14]
	ldr     r0, [r4, #0x0]
	lsl     r2, r1, #1
	ldr     r1, [pc, #0x24] @ 0x2265aac, (=0x2266b7a)
	ldrh    r1, [r1, r2]
	bl      Function_200d364
	ldr     r0, [r4, #0x0]
	mov     r1, r7
	bl      Function_200d3cc
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2265428
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2265aa2

.thumb
branch_2265aa2: @ 2265aa2 :thumb
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2265aa8

.word 0x57b @ 0x2265aa8
.word 0x2266b7a @ 0x2265aac
.word 0x2266bc6 @ 0x2265ab0
.word 0x2266bc4 @ 0x2265ab4
.word 0x2266bc5 @ 0x2265ab8
.thumb
Function_2265abc: @ 2265abc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	ldr     r6, [pc, #0x70] @ 0x2265b34, (=0x2266d9c)
	mov     r5, r0
	mov     r4, r1
	add     r3, sp, #0x0
	mov     r2, #0x6
.thumb
branch_2265aca: @ 2265aca :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2265aca
	ldr     r0, [r6, #0x0]
	mov     r7, #0x16
	str     r0, [r3, #0x0]
	mov     r6, #0x0
	lsl     r7, r7, #16
.thumb
branch_2265adc: @ 2265adc :thumb
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	add     r2, sp, #0x0
	bl      Function_200ce6c
	mov     r1, #0x0
	str     r0, [r4, #0x0]
	mov     r2, r1
	mov     r3, r7
	bl      Function_200d500
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x28]
	ldr     r2, [pc, #0x38] @ 0x2265b38, (=0x2266dd0)
	bl      Function_200ce6c
	mov     r1, #0x0
	str     r0, [r4, #0x4]
	mov     r2, r1
	mov     r3, r7
	bl      Function_200d500
	ldr     r0, [r4, #0x4]
	mov     r1, #0x21
	bl      Function_200d364
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_200d3f4
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x18
	cmp     r6, #0x3
	blt     branch_2265adc
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2265b34

.word 0x2266d9c @ 0x2265b34
.word 0x2266dd0 @ 0x2265b38
.thumb
Function_2265b3c: @ 2265b3c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, #0x0
.thumb
branch_2265b42: @ 2265b42 :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_200d0f4
	ldr     r0, [r5, #0x4]
	bl      Function_200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x18
	cmp     r4, #0x3
	blt     branch_2265b42
	pop     {r3-r5,pc}
@ 0x2265b58

.thumb
Function_2265b58: @ 2265b58 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r5, r2
	str     r3, [sp, #0x0]
	ldr     r4, [pc, #0xa0] @ 0x2265c04, (=0x0)
	beq     branch_2265c02
	bl      Function_203608c
	ldr     r1, [sp, #0x0]
	cmp     r1, r0
	beq     branch_2265c02
	mov     r0, r4
	mov     r2, r7
.thumb
branch_2265b74: @ 2265b74 :thumb
	ldrb    r1, [r2, #0x15]
	cmp     r1, #0x0
	bne     branch_2265b82
	mov     r1, #0x18
	mul     r1, r0
	add     r4, r7, r1
	b       branch_2265b8a
@ 0x2265b82

.thumb
branch_2265b82: @ 2265b82 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r2, #0x18
	cmp     r0, #0x3
	blt     branch_2265b74
.thumb
branch_2265b8a: @ 2265b8a :thumb
	cmp     r4, #0x0
	beq     branch_2265c02
	ldr     r1, [sp, #0x0]
	mov     r0, r6
	bl      Function_22622c4
	ldr     r1, [r6, #0x0]
	ldr     r2, [pc, #0x6c] @ 0x2265c08, (=0x2266c2c)
	add     r1, #0x30
	ldrb    r1, [r1, #0x0]
	mov     r7, r0
	ldr     r0, [r4, #0x0]
	lsl     r3, r1, #3
	lsl     r1, r7, #1
	add     r2, r2, r3
	ldrh    r1, [r1, r2]
	bl      Function_200d41c
	ldr     r1, [pc, #0x5c] @ 0x2265c0c, (=0x2266b7a)
	lsl     r2, r5, #1
	ldrh    r1, [r1, r2]
	ldr     r0, [r4, #0x0]
	bl      Function_200d364
	ldr     r0, [r6, #0x0]
	mov     r3, #0x16
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	lsl     r3, r3, #16
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x48] @ 0x2265c10, (=0x2266bd8)
	add     r0, r0, r1
	ldrb    r0, [r7, r0]
	ldr     r1, [pc, #0x44] @ 0x2265c14, (=0x2266bb4)
	lsl     r2, r0, #2
	ldr     r0, [pc, #0x44] @ 0x2265c18, (=0x2266bb6)
	ldsh    r1, [r1, r2]
	ldsh    r0, [r0, r2]
	mov     r2, #0x10
	sub     r0, #0x18
	strh    r0, [r4, #0x10]
	ldsh    r2, [r4, r2]
	ldr     r0, [r4, #0x0]
	sub     r2, #0x60
	lsl     r2, r2, #16
	asr     r2, r2, #16
	bl      Function_200d500
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	ldr     r0, [sp, #0x18]
	strb    r5, [r4, #0x12]
	sub     r0, #0xc
	strh    r0, [r4, #0x16]
	mov     r0, #0x0
	strb    r0, [r4, #0x13]
	mov     r0, #0x1
	strb    r0, [r4, #0x15]
.thumb
branch_2265c02: @ 2265c02 :thumb
	pop     {r3-r7,pc}
@ 0x2265c04

.word 0x0 @ 0x2265c04
.word 0x2266c2c @ 0x2265c08
.word 0x2266b7a @ 0x2265c0c
.word 0x2266bd8 @ 0x2265c10
.word 0x2266bb4 @ 0x2265c14
.word 0x2266bb6 @ 0x2265c18
.thumb
Function_2265c1c: @ 2265c1c :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2265c24: @ 2265c24 :thumb
	ldrb    r0, [r5, #0x15]
	cmp     r0, #0x1
	bne     branch_2265c32
	mov     r0, r6
	mov     r1, r5
	bl      Function_2265c3c
.thumb
branch_2265c32: @ 2265c32 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x18
	cmp     r4, #0x3
	blt     branch_2265c24
	pop     {r4-r6,pc}
@ 0x2265c3c

.thumb
Function_2265c3c: @ 2265c3c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldrb    r0, [r4, #0x13]
	cmp     r0, #0x4
	bls     branch_2265c4a
	b       branch_2265d88
@ 0x2265c4a

.thumb
branch_2265c4a: @ 2265c4a :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2265c56

Jumppoints_2265c56:
.hword branch_2265c60 - Jumppoints_2265c56 - 2
.hword branch_2265c88 - Jumppoints_2265c56 - 2
.hword branch_2265cc4 - Jumppoints_2265c56 - 2
.hword branch_2265d20 - Jumppoints_2265c56 - 2
.hword branch_2265d5a - Jumppoints_2265c56 - 2
.thumb
branch_2265c60: @ 2265c60 :thumb
	add     r1, sp, #0x0
	mov     r3, #0x16
	ldr     r0, [r4, #0x0]
	add     r1, #0x2
	add     r2, sp, #0x0
	lsl     r3, r3, #16
	bl      Function_200d5a0
	add     r1, sp, #0x0
	mov     r0, #0x2
	ldsh    r0, [r1, r0]
	lsl     r0, r0, #12
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	ldsh    r0, [r1, r0]
	lsl     r0, r0, #12
	str     r0, [r4, #0xc]
	ldrb    r0, [r4, #0x13]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x13]
.thumb
branch_2265c88: @ 2265c88 :thumb
	mov     r0, #0x16
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_2265c96
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x16]
	b       branch_2265d88
@ 0x2265c96

.thumb
branch_2265c96: @ 2265c96 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_200d3f4
	mov     r0, #0x2
	ldr     r1, [r4, #0xc]
	lsl     r0, r0, #14
	add     r2, r1, r0
	str     r2, [r4, #0xc]
	mov     r0, #0x10
	ldsh    r1, [r4, r0]
	asr     r0, r2, #11
	lsr     r0, r0, #20
	add     r0, r2, r0
	asr     r0, r0, #12
	cmp     r0, r1
	blt     branch_2265d88
	lsl     r0, r1, #12
	str     r0, [r4, #0xc]
	ldrb    r0, [r4, #0x13]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x13]
	b       branch_2265d88
@ 0x2265cc4

.thumb
branch_2265cc4: @ 2265cc4 :thumb
	add     r1, sp, #0x0
	mov     r3, #0x16
	ldr     r0, [r4, #0x0]
	add     r1, #0x2
	add     r2, sp, #0x0
	lsl     r3, r3, #16
	bl      Function_200d5a0
	add     r3, sp, #0x0
	mov     r2, #0x0
	ldsh    r2, [r3, r2]
	mov     r1, #0x2
	ldsh    r1, [r3, r1]
	sub     r2, #0x20
	lsl     r2, r2, #16
	mov     r3, #0x16
	ldr     r0, [r4, #0x4]
	asr     r2, r2, #16
	lsl     r3, r3, #16
	bl      Function_200d500
	ldr     r0, [r4, #0x4]
	mov     r1, #0x21
	bl      Function_200d364
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_200d3f4
	ldr     r0, [pc, #0xb0] @ 0x2265db0, (=0x57b)
	bl      Function_2005748
	ldrb    r1, [r4, #0x12]
	ldr     r0, [r4, #0x0]
	lsl     r2, r1, #1
	ldr     r1, [pc, #0xa8] @ 0x2265db4, (=0x2266b7a)
	ldrh    r1, [r1, r2]
	.hword  0x1c89 @ add r1, r1, #0x2
	bl      Function_200d364
	mov     r0, #0x8
	strb    r0, [r4, #0x14]
	ldrb    r0, [r4, #0x13]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x13]
	b       branch_2265d88
@ 0x2265d20

.thumb
branch_2265d20: @ 2265d20 :thumb
	ldrb    r0, [r4, #0x14]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x14]
	ldrb    r0, [r4, #0x14]
	cmp     r0, #0x3
	bne     branch_2265d36
	mov     r1, #0x1
	ldr     r0, [r4, #0x4]
	lsl     r1, r1, #14
	bl      Function_200d34c
.thumb
branch_2265d36: @ 2265d36 :thumb
	ldrb    r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_2265d88
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldrb    r1, [r4, #0x12]
	ldr     r0, [r4, #0x0]
	lsl     r2, r1, #1
	ldr     r1, [pc, #0x68] @ 0x2265db4, (=0x2266b7a)
	ldrh    r1, [r1, r2]
	bl      Function_200d364
	ldrb    r0, [r4, #0x13]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x13]
	b       branch_2265d88
@ 0x2265d5a

.thumb
branch_2265d5a: @ 2265d5a :thumb
	mov     r0, #0x2
	ldr     r1, [r4, #0xc]
	lsl     r0, r0, #14
	sub     r1, r1, r0
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	str     r1, [r4, #0xc]
	asr     r1, r0, #12
	mov     r0, #0x10
	ldsh    r0, [r4, r0]
	sub     r0, #0x60
	cmp     r1, r0
	bgt     branch_2265d88
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_200d3f4
	mov     r0, #0x0
	strb    r0, [r4, #0x13]
	add     sp, #0x4
	strb    r0, [r4, #0x15]
	pop     {r3,r4,pc}
@ 0x2265d88

.thumb
branch_2265d88: @ 2265d88 :thumb
	ldr     r2, [r4, #0x8]
	ldr     r3, [r4, #0xc]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r2, r3, #11
	lsr     r2, r2, #20
	add     r2, r3, r2
	lsl     r1, r1, #4
	lsl     r2, r2, #4
	mov     r3, #0x16
	ldr     r0, [r4, #0x0]
	asr     r1, r1, #16
	asr     r2, r2, #16
	lsl     r3, r3, #16
	bl      Function_200d500
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2265db0

.word 0x57b @ 0x2265db0
.word 0x2266b7a @ 0x2265db4
.thumb
Function_2265db8: @ 2265db8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x70
	str     r0, [sp, #0x18]
	str     r1, [sp, #0x1c]
	str     r2, [sp, #0x20]
	ldr     r0, [sp, #0x8c]
	ldr     r1, [sp, #0x88]
	mov     r2, #0x0
	mov     r5, r3
	ldr     r4, [sp, #0x9c]
	bl      Function_2002eb4
	mov     r7, r0
	asr     r1, r7, #2
	lsr     r1, r1, #29
	add     r1, r7, r1
	asr     r6, r1, #3
	mov     r1, #0x8
	blx     Function_20bd140
	cmp     r0, #0x0
	beq     branch_2265de6
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_2265de6: @ 2265de6 :thumb
	add     r0, sp, #0x30
	bl      Function_201a7a0
	mov     r0, #0x0
	ldr     r3, [sp, #0xb0]
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	lsl     r2, r6, #24
	lsl     r3, r3, #24
	ldr     r0, [sp, #0x18]
	add     r1, sp, #0x30
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_201a870
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x90]
	ldr     r1, [sp, #0x8c]
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	str     r3, [sp, #0x10]
	ldr     r2, [sp, #0x88]
	add     r0, sp, #0x30
	str     r3, [sp, #0x14]
	bl      Function_201d7e0
	add     r0, sp, #0x30
	mov     r1, #0x1
	mov     r2, #0x6e
	bl      Function_2012898
	mov     r1, #0x1
	mov     r2, r1
	add     r3, sp, #0x24
	bl      Function_201ed94
	ldr     r0, [sp, #0xa4]
	cmp     r0, #0x1
	bne     branch_2265e42
	lsr     r0, r7, #31
	add     r0, r7, r0
	asr     r0, r0, #1
	sub     r4, r4, r0
.thumb
branch_2265e42: @ 2265e42 :thumb
	ldr     r0, [sp, #0x20]
	str     r0, [sp, #0x40]
	add     r0, sp, #0x30
	str     r0, [sp, #0x44]
	ldr     r0, [sp, #0x1c]
	bl      Function_200d9b0
	str     r0, [sp, #0x48]
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x98]
	bl      Function_200d04c
	str     r0, [sp, #0x4c]
	mov     r0, #0x0
	str     r0, [sp, #0x50]
	ldr     r0, [sp, #0x28]
	str     r4, [sp, #0x58]
	str     r0, [sp, #0x54]
	ldr     r0, [sp, #0xa0]
	str     r0, [sp, #0x5c]
	ldr     r0, [sp, #0xa8]
	str     r0, [sp, #0x60]
	ldr     r0, [sp, #0xac]
	str     r0, [sp, #0x64]
	mov     r0, #0x1
	str     r0, [sp, #0x68]
	mov     r0, #0x6e
	str     r0, [sp, #0x6c]
	add     r0, sp, #0x40
	bl      Function_20127e8
	ldr     r1, [sp, #0x94]
	mov     r6, r0
	cmp     r1, #0x0
	beq     branch_2265e8c
	bl      Function_2012a90
.thumb
branch_2265e8c: @ 2265e8c :thumb
	ldr     r2, [sp, #0xa0]
	mov     r0, r6
	mov     r1, r4
	bl      Function_20128c4
	add     r0, sp, #0x30
	bl      Function_201a8fc
	str     r6, [r5, #0x0]
	add     r3, sp, #0x24
	ldmia   r3!, {r0,r1}
	add     r2, r5, #0x4
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	strh    r7, [r5, #0x10]
	add     sp, #0x70
	pop     {r3-r7,pc}
@ 0x2265eb0

.thumb
Function_2265eb0: @ 2265eb0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2012870
	add     r0, r4, #0x4
	bl      Function_201ee28
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2265ec6


.align 2, 0


.thumb
Function_2265ec8: @ 2265ec8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	mov     r7, #0x0
	mov     r5, r0
.thumb
branch_2265ed2: @ 2265ed2 :thumb
	ldr     r0, [sp, #0x0]
	add     r1, r0, r7
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldrb    r1, [r1, r0]
	cmp     r1, #0x40
	bge     branch_2265eea
	mov     r0, #0x40
	sub     r6, r0, r1
	mov     r4, r6
	sub     r4, #0x50
	b       branch_2265f04
@ 0x2265eea

.thumb
branch_2265eea: @ 2265eea :thumb
	cmp     r1, #0x80
	bge     branch_2265efa
	mov     r0, #0xa0
	sub     r4, r0, r1
	sub     r4, #0x10
	mov     r6, r4
	sub     r6, #0x50
	b       branch_2265f04
@ 0x2265efa

.thumb
branch_2265efa: @ 2265efa :thumb
	sub     r1, #0xa0
	mov     r0, #0x40
	sub     r6, r0, r1
	mov     r4, r6
	sub     r4, #0x50
.thumb
branch_2265f04: @ 2265f04 :thumb
	ldr     r0, [r5, #0x4]
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	bl      Function_20129a4
	mov     r2, #0xa8
	ldr     r0, [r5, #0x4]
	ldr     r1, [sp, #0x8]
	sub     r2, r2, r6
	bl      Function_20128c4
	mov     r2, #0xa8
	ldr     r0, [r5, #0x18]
	ldr     r1, [sp, #0x8]
	sub     r2, r2, r4
	bl      Function_20128c4
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0x28
	cmp     r7, #0x6
	blt     branch_2265ed2
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2265f32


.align 2, 0


.thumb
Function_2265f34: @ 2265f34 :thumb
	push    {r3-r5,lr}
	ldr     r0, [pc, #0x5c] @ 0x2265f94, (=0x19e)
	mov     r4, r1
	ldsb    r1, [r4, r0]
	cmp     r1, #0x0
	ble     branch_2265f46
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x2265f46

.thumb
branch_2265f46: @ 2265f46 :thumb
	.hword  0x1c80 @ add r0, r0, #0x2
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2265f54
	cmp     r0, #0x1
	beq     branch_2265f70
	pop     {r3-r5,pc}
@ 0x2265f54

.thumb
branch_2265f54: @ 2265f54 :thumb
	mov     r0, r4
	bl      Function_2266008
	cmp     r0, #0x1
	bne     branch_2265f66
	mov     r0, r4
	bl      Function_2265fd4
	pop     {r3-r5,pc}
@ 0x2265f66

.thumb
branch_2265f66: @ 2265f66 :thumb
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
.thumb
branch_2265f70: @ 2265f70 :thumb
	mov     r0, r4
	bl      Function_2266030
	mov     r5, r0
	mov     r0, r4
	bl      Function_2265ec8
	cmp     r5, #0x1
	bne     branch_2265f92
	ldr     r0, [pc, #0x10] @ 0x2265f94, (=0x19e)
	mov     r1, #0xf
	strb    r1, [r4, r0]
	add     r1, r0, #0x2
	ldrb    r1, [r4, r1]
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, r0]
.thumb
branch_2265f92: @ 2265f92 :thumb
	pop     {r3-r5,pc}
@ 0x2265f94

.word 0x19e @ 0x2265f94
.thumb
Function_2265f98: @ 2265f98 :thumb
	push    {r3-r7,lr}
	ldr     r5, [pc, #0x34] @ 0x2265fd0, (=0x186a0)
	mov     r7, r0
	mov     r6, r1
	mov     r4, #0x0
.thumb
branch_2265fa2: @ 2265fa2 :thumb
	mov     r0, r6
	mov     r1, r5
	blx     _s32_div_f
	mov     r3, r0
	mov     r0, #0x63
	lsl     r2, r3, #4
	add     r1, r7, r4
	lsl     r0, r0, #2
	strb    r2, [r1, r0]
	mov     r0, r3
	mul     r0, r5
	sub     r6, r6, r0
	mov     r0, r5
	mov     r1, #0xa
	blx     _s32_div_f
	.hword  0x1c64 @ add r4, r4, #0x1
	mov     r5, r0
	cmp     r4, #0x6
	blt     branch_2265fa2
	pop     {r3-r7,pc}
@ 0x2265fce


.align 2


.word 0x186a0 @ 0x2265fd0
.thumb
Function_2265fd4: @ 2265fd4 :thumb
	push    {r4-r7}
	mov     r1, #0x66
	mov     r5, #0x0
	lsl     r1, r1, #2
	mov     r3, r5
	.hword  0x1f8a @ sub r2, r1, #0x6
.thumb
branch_2265fe0: @ 2265fe0 :thumb
	mov     r6, #0x63
	add     r4, r0, r5
	lsl     r6, r6, #2
	ldrb    r7, [r4, r6]
	.hword  0x1fb6 @ sub r6, r6, #0x6
	strb    r7, [r4, r6]
	mov     r6, #0x5
	sub     r6, r6, r5
	lsl     r6, r6, #1
	strb    r6, [r4, r1]
	.hword  0x1c6d @ add r5, r5, #0x1
	strb    r3, [r4, r2]
	cmp     r5, #0x6
	blt     branch_2265fe0
	ldr     r1, [pc, #0x4] @ 0x2266004, (=0x19f)
	strb    r3, [r0, r1]
	pop     {r4-r7}
	bx      lr
@ 0x2266004

.word 0x19f @ 0x2266004
.thumb
Function_2266008: @ 2266008 :thumb
	push    {r4,r5}
	mov     r1, #0x6
	lsl     r1, r1, #6
	mov     r5, #0x0
	add     r2, r1, #0x6
.thumb
branch_2266012: @ 2266012 :thumb
	add     r3, r0, r5
	ldrb    r4, [r3, r1]
	ldrb    r3, [r3, r2]
	cmp     r4, r3
	beq     branch_2266022
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x2266022

.thumb
branch_2266022: @ 2266022 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x6
	blt     branch_2266012
	mov     r0, #0x1
	pop     {r4,r5}
	bx      lr
@ 0x226602e


.align 2, 0


.thumb
Function_2266030: @ 2266030 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [pc, #0xec] @ 0x2266124, (=0x19f)
	mov     r7, #0x5
	ldrb    r0, [r6, r0]
	cmp     r0, #0x6
	bls     branch_2266042
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2266042

.thumb
branch_2266042: @ 2266042 :thumb
	mov     r4, #0x0
	str     r4, [sp, #0x0]
.thumb
branch_2266046: @ 2266046 :thumb
	ldr     r0, [sp, #0x0]
	add     r5, r6, r7
	mov     r12, r0
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldsb    r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_226606a
	mov     r0, #0x66
	lsl     r0, r0, #2
	ldsb    r0, [r5, r0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, #0x66
	lsl     r0, r0, #2
	strb    r1, [r5, r0]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	b       branch_2266116
@ 0x226606a

.thumb
branch_226606a: @ 226606a :thumb
	ldr     r0, [pc, #0xbc] @ 0x2266128, (=0x192)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x1
	bls     branch_2266086
	mov     r0, #0x6
	ldr     r1, [pc, #0xb4] @ 0x226612c, (=0x186)
	lsl     r0, r0, #6
	ldrb    r0, [r5, r0]
	ldrb    r1, [r5, r1]
	cmp     r0, r1
	bne     branch_2266086
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	b       branch_2266116
@ 0x2266086

.thumb
branch_2266086: @ 2266086 :thumb
	mov     r0, #0x0
	mov     r1, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r1, r1, #6
	lsl     r0, r0, #6
	ldrb    r2, [r5, r1]
	ldrb    r0, [r5, r0]
	add     r2, #0x17
	strb    r2, [r5, r1]
	.hword  0x1d89 @ add r1, r1, #0x6
	ldrb    r3, [r5, r1]
	mov     r1, r3
	add     r1, #0xa0
	cmp     r0, r3
	bgt     branch_22660b0
	mov     r2, #0x6
	lsl     r2, r2, #6
	ldrb    r2, [r5, r2]
	cmp     r2, r3
	bcs     branch_22660be
.thumb
branch_22660b0: @ 22660b0 :thumb
	cmp     r0, r1
	bgt     branch_2266104
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldrb    r0, [r5, r0]
	cmp     r0, r1
	blt     branch_2266104
.thumb
branch_22660be: @ 22660be :thumb
	ldr     r0, [pc, #0x68] @ 0x2266128, (=0x192)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x1
	bcs     branch_22660d2
	ldr     r0, [pc, #0x60] @ 0x2266128, (=0x192)
	ldrb    r0, [r5, r0]
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x58] @ 0x2266128, (=0x192)
	strb    r1, [r5, r0]
	b       branch_2266104
@ 0x22660d2

.thumb
branch_22660d2: @ 22660d2 :thumb
	cmp     r7, #0x5
	beq     branch_22660dc
	mov     r0, r12
	cmp     r0, #0x1
	bne     branch_2266104
.thumb
branch_22660dc: @ 22660dc :thumb
	ldr     r0, [pc, #0x48] @ 0x2266128, (=0x192)
	ldrb    r0, [r5, r0]
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x44] @ 0x2266128, (=0x192)
	strb    r1, [r5, r0]
	sub     r0, #0xc
	ldrb    r1, [r5, r0]
	mov     r0, #0x6
	lsl     r0, r0, #6
	strb    r1, [r5, r0]
	add     r0, #0x1f
	ldrb    r0, [r6, r0]
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x2c] @ 0x2266124, (=0x19f)
	strb    r1, [r6, r0]
	ldrb    r0, [r6, r0]
	cmp     r0, #0x6
	bcc     branch_2266104
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2266104

.thumb
branch_2266104: @ 2266104 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldrb    r0, [r5, r0]
	mov     r1, #0xa0
	blx     _s32_div_f
	mov     r0, #0x6
	lsl     r0, r0, #6
	strb    r1, [r5, r0]
.thumb
branch_2266116: @ 2266116 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1e7f @ sub r7, r7, #0x1
	cmp     r4, #0x6
	blt     branch_2266046
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2266122


.align 2


.word 0x19f @ 0x2266124
.word 0x192 @ 0x2266128
.word 0x186 @ 0x226612c
.thumb
Function_2266130: @ 2266130 :thumb
	push    {r4,lr}
	mov     r1, r0
	ldr     r0, [r1, #0x24]
	ldr     r1, [r1, #0x28]
	ldr     r2, [pc, #0x10] @ 0x226614c, (=0x2266e6c)
	bl      Function_200ce6c
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_200d324
	mov     r0, r4
	pop     {r4,pc}
@ 0x226614a


.align 2


.word 0x2266e6c @ 0x226614c
.thumb
Function_2266150: @ 2266150 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	mov     r7, r0
	ldr     r0, [pc, #0xa4] @ 0x22661fc, (=0x3848)
	mov     r6, r7
	ldr     r0, [r7, r0]
	mov     r4, r7
	str     r0, [sp, #0x2c]
	mov     r0, #0x5
	str     r0, [sp, #0x30]
	ldr     r0, [pc, #0x98] @ 0x2266200, (=0x16b0)
	add     r6, #0x64
	add     r5, r7, r0
	add     r4, #0xc8
	add     r5, #0x64
.thumb
branch_226616e: @ 226616e :thumb
	ldr     r0, [pc, #0x90] @ 0x2266200, (=0x16b0)
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_226617a
	bl      ErrorHandling
.thumb
branch_226617a: @ 226617a :thumb
	ldr     r0, [sp, #0x2c]
	mov     r1, #0xa
	blx     _u32_div_f
	mov     r0, r7
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_200b1ec
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0xa
	blx     _u32_div_f
	str     r0, [sp, #0x2c]
	ldr     r0, [pc, #0x68] @ 0x2266204, (=0x15ac)
	add     r1, sp, #0x3c
	ldr     r0, [r4, r0]
	add     r2, sp, #0x38
	bl      Function_20129a4
	ldr     r0, [sp, #0x34]
	mov     r2, r7
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x54] @ 0x2266208, (=0xe0f00)
	add     r2, #0x90
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x50] @ 0x226620c, (=0x2713)
	mov     r3, r5
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x3c]
	str     r0, [sp, #0x14]
	mov     r0, #0xa8
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	mov     r0, #0x1
	str     r0, [sp, #0x20]
	mov     r0, #0xc
	str     r0, [sp, #0x24]
	mov     r0, #0x2
	str     r0, [sp, #0x28]
	ldr     r0, [r7, #0x2c]
	ldr     r1, [r7, #0x28]
	ldr     r2, [r2, #0x0]
	bl      Function_2265db8
	ldr     r0, [sp, #0x34]
	bl      Function_20237bc
	ldr     r0, [sp, #0x30]
	sub     r6, #0x14
	sub     r4, #0x28
	sub     r5, #0x14
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0x30]
	bpl     branch_226616e
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x22661fa


.align 2


.word 0x3848 @ 0x22661fc
.word 0x16b0 @ 0x2266200
.word 0x15ac @ 0x2266204
.word 0xe0f00 @ 0x2266208
.word 0x2713 @ 0x226620c
.thumb
Function_2266210: @ 2266210 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x1c] @ 0x2266234, (=0x16b0)
	mov     r6, #0x0
	add     r4, r5, r0
	mov     r7, r0
.thumb
branch_226621c: @ 226621c :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_2266228
	mov     r0, r4
	bl      Function_2265eb0
.thumb
branch_2266228: @ 2266228 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x14
	add     r4, #0x14
	cmp     r6, #0x6
	blt     branch_226621c
	pop     {r3-r7,pc}
@ 0x2266234

.word 0x16b0 @ 0x2266234
.thumb
Function_2266238: @ 2266238 :thumb
	ldr     r3, [pc, #0x4] @ 0x2266240, (=0x200d0f5)
	mov     r0, r1
	bx      r3
@ 0x226623e


.align 2


.word 0x200d0f5 @ 0x2266240
.thumb
Function_2266244: @ 2266244 :thumb
	push    {r4,lr}
	mov     r1, r0
	ldr     r0, [r1, #0x24]
	ldr     r1, [r1, #0x28]
	ldr     r2, [pc, #0x14] @ 0x2266264, (=0x2266ea0)
	bl      Function_200ce6c
	mov     r4, r0
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x0]
	bl      Function_200d324
	mov     r0, r4
	pop     {r4,pc}
@ 0x2266264

.word 0x2266ea0 @ 0x2266264
.thumb
Function_2266268: @ 2266268 :thumb
	ldr     r3, [pc, #0x4] @ 0x2266270, (=0x200d0f5)
	mov     r0, r1
	bx      r3
@ 0x226626e


.align 2


.word 0x200d0f5 @ 0x2266270
.thumb
Function_2266274: @ 2266274 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, #0x4
	ldsh    r1, [r4, r0]
	cmp     r1, #0xa
	bhi     branch_226633e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x226628c

Jumppoints_226628c:
.hword branch_22662a2 - Jumppoints_226628c - 2
.hword branch_22662c2 - Jumppoints_226628c - 2
.hword branch_22662ea - Jumppoints_226628c - 2
.hword branch_226630c - Jumppoints_226628c - 2
.hword branch_226631e - Jumppoints_226628c - 2
.hword branch_22662a2 - Jumppoints_226628c - 2
.hword branch_22662c2 - Jumppoints_226628c - 2
.hword branch_22662ea - Jumppoints_226628c - 2
.hword branch_226630c - Jumppoints_226628c - 2
.hword branch_226631e - Jumppoints_226628c - 2
.hword branch_226633a - Jumppoints_226628c - 2
.thumb
branch_22662a2: @ 22662a2 :thumb
	mov     r3, #0x16
	ldr     r0, [r4, #0x0]
	mov     r1, #0x80
	mov     r2, #0x10
	lsl     r3, r3, #16
	bl      Function_200d500
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_200d3f4
	mov     r0, #0x4
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
	b       branch_226633e
@ 0x22662c2

.thumb
branch_22662c2: @ 22662c2 :thumb
	mov     r1, #0x6
	ldsh    r2, [r4, r1]
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r2, [r4, #0x6]
	ldsh    r1, [r4, r1]
	cmp     r1, #0xf
	ble     branch_226633e
	mov     r1, #0x0
	strh    r1, [r4, #0x6]
	mov     r1, #0x1
	str     r1, [r4, #0x14]
	str     r1, [r4, #0x18]
	mov     r1, #0x80
	str     r1, [r4, #0xc]
	mov     r1, #0x20
	str     r1, [r4, #0x10]
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
	b       branch_226633e
@ 0x22662ea

.thumb
branch_22662ea: @ 22662ea :thumb
	mov     r1, #0x0
	str     r1, [r4, #0x18]
	ldr     r0, [r4, #0x10]
	mov     r2, #0x6
	.hword  0x1d80 @ add r0, r0, #0x6
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x0]
	bl      Function_200d5dc
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x60
	ble     branch_226633e
	mov     r0, #0x4
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
	b       branch_226633e
@ 0x226630c

.thumb
branch_226630c: @ 226630c :thumb
	mov     r1, #0x0
	str     r1, [r4, #0x14]
	ldr     r0, [r4, #0x0]
	bl      Function_200d3f4
	mov     r0, #0x4
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
.thumb
branch_226631e: @ 226631e :thumb
	mov     r0, #0x6
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x6]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x1e
	ble     branch_226633e
	mov     r0, #0x0
	strh    r0, [r4, #0x6]
	mov     r0, #0x4
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x4]
	b       branch_226633e
@ 0x226633a

.thumb
branch_226633a: @ 226633a :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x226633e

.thumb
branch_226633e: @ 226633e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2266342


.align 2, 0


.thumb
Function_2266344: @ 2266344 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	mov     r6, #0x0
.thumb
branch_226634c: @ 226634c :thumb
	ldr     r0, [r7, #0x24]
	ldr     r1, [r7, #0x28]
	ldr     r2, [pc, #0x2c] @ 0x2266380, (=0x2266e38)
	bl      Function_200ce6c
	mov     r4, r0
	mov     r1, #0x1b
	bl      Function_200d364
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_200d810
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r4, #0x0]
	bl      Function_200d324
	.hword  0x1c76 @ add r6, r6, #0x1
	stmia   r5!, {r4}
	cmp     r6, #0x2
	blt     branch_226634c
	pop     {r3-r7,pc}
@ 0x226637e


.align 2


.word 0x2266e38 @ 0x2266380
.thumb
Function_2266384: @ 2266384 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, #0x0
.thumb
branch_226638a: @ 226638a :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_226638a
	pop     {r3-r5,pc}
@ 0x226639a


.align 2, 0


.thumb
Function_226639c: @ 226639c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	ldr     r0, [r1, #0x0]
	add     r1, sp, #0x4
	mov     r3, #0x16
	str     r2, [sp, #0x0]
	add     r1, #0x2
	add     r2, sp, #0x4
	lsl     r3, r3, #16
	bl      Function_200d5a0
	ldr     r5, [sp, #0x0]
	mov     r4, #0x0
	add     r6, sp, #0x4
	mov     r7, #0x1
.thumb
branch_22663ba: @ 22663ba :thumb
	mov     r2, #0x0
	ldsh    r2, [r6, r2]
	mov     r1, #0x2
	mov     r3, #0x16
	add     r2, #0x1c
	lsl     r2, r2, #16
	ldsh    r1, [r6, r1]
	ldr     r0, [r5, #0x0]
	asr     r2, r2, #16
	lsl     r3, r3, #16
	bl      Function_200d500
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1b
	bl      Function_200d364
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_200d810
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_200d3f4
	bl      PRNG
	lsr     r1, r0, #31
	lsl     r2, r0, #20
	sub     r2, r2, r1
	mov     r0, #0x14
	ror     r2, r0
	mov     r0, #0x1
	add     r1, r1, r2
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r5, #0x8]
	bl      PRNG
	lsr     r1, r0, #31
	lsl     r2, r0, #22
	sub     r2, r2, r1
	mov     r0, #0x16
	ror     r2, r0
	mov     r0, #0x1
	add     r1, r1, r2
	lsl     r0, r0, #10
	add     r0, r1, r0
	str     r0, [r5, #0x10]
	mov     r0, r4
	tst     r0, r7
	beq     branch_226642a
	mov     r0, #0x0
	ldr     r1, [r5, #0x8]
	mvn     r0, r0
	mul     r0, r1
	str     r0, [r5, #0x8]
.thumb
branch_226642a: @ 226642a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_22663ba
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x19]
	mov     r1, #0x1
	strb    r1, [r0, #0x18]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2266440

.thumb
Function_2266440: @ 2266440 :thumb
	push    {r3-r7,lr}
	mov     r6, r2
	ldrb    r0, [r6, #0x18]
	cmp     r0, #0x0
	beq     branch_2266494
	cmp     r0, #0x1
	bne     branch_2266494
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2266452: @ 2266452 :thumb
	ldr     r2, [r5, #0x10]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x8]
	neg     r2, r2
	bl      Function_200d5e8
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_2266452
	ldrb    r0, [r6, #0x19]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r6, #0x19]
	ldrb    r0, [r6, #0x19]
	cmp     r0, #0x8
	bls     branch_2266494
	mov     r5, #0x0
	mov     r4, r6
	mov     r7, r5
.thumb
branch_2266480: @ 2266480 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r7
	bl      Function_200d3f4
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x2
	blt     branch_2266480
	mov     r0, #0x0
	strb    r0, [r6, #0x18]
.thumb
branch_2266494: @ 2266494 :thumb
	pop     {r3-r7,pc}
@ 0x2266496


.align 2, 0


.thumb
Function_2266498: @ 2266498 :thumb
	push    {r3-r5,lr}
	mov     r1, #0xc
	mov     r2, #0x6e
	mov     r5, r0
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r1, #0x0
	mov     r2, #0xc
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r0, r5
	bl      LoadPtrToOverWorldDataIn18
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22664ba


.align 2, 0


.thumb
Function_22664bc: @ 22664bc :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      LoadOverlayData1c
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r0
	add     r1, #0x3d
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x1
	bne     branch_2266542
	mov     r1, r0
	add     r1, #0x3e
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_22664e4
	cmp     r1, #0x1
	beq     branch_2266506
	cmp     r1, #0x2
	b       branch_226651e
@ 0x22664e4

.thumb
branch_22664e4: @ 22664e4 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_22664f0
	bl      Function_200f2c0
.thumb
branch_22664f0: @ 22664f0 :thumb
	mov     r0, #0x0
	bl      SetBrightnessOfBothScreens
	ldr     r1, [r4, #0x0]
	mov     r0, r1
	add     r0, #0x3e
	ldrb    r0, [r0, #0x0]
	add     r1, #0x3e
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r1, #0x0]
	b       branch_226653e
@ 0x2266506

.thumb
branch_2266506: @ 2266506 :thumb
	bl      0x225ca98
	cmp     r0, #0x1
	bne     branch_226653e
	ldr     r1, [r4, #0x0]
	mov     r0, r1
	add     r0, #0x3e
	ldrb    r0, [r0, #0x0]
	add     r1, #0x3e
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r1, #0x0]
	b       branch_226653e
@ 0x226651e

.thumb
branch_226651e: @ 226651e :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_226652c
	bl      0x225c838
	mov     r0, #0x0
	str     r0, [r4, #0x4]
.thumb
branch_226652c: @ 226652c :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_226653a
	bl      0x225c904
	mov     r0, #0x0
	str     r0, [r4, #0x8]
.thumb
branch_226653a: @ 226653a :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x226653e

.thumb
branch_226653e: @ 226653e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2266542

.thumb
branch_2266542: @ 2266542 :thumb
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x5
	bhi     branch_22665e0
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2266554

Jumppoints_2266554:
.hword branch_2266560 - Jumppoints_2266554 - 2
.hword branch_2266574 - Jumppoints_2266554 - 2
.hword branch_2266584 - Jumppoints_2266554 - 2
.hword branch_22665a8 - Jumppoints_2266554 - 2
.hword branch_22665bc - Jumppoints_2266554 - 2
.hword branch_22665e0 - Jumppoints_2266554 - 2
.thumb
branch_2266560: @ 2266560 :thumb
	add     r0, #0x31
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_226656e
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22665e4
@ 0x226656e

.thumb
branch_226656e: @ 226656e :thumb
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_22665e4
@ 0x2266574

.thumb
branch_2266574: @ 2266574 :thumb
	mov     r1, #0x6e
	bl      0x225c82c
	str     r0, [r4, #0x4]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22665e4
@ 0x2266584

.thumb
branch_2266584: @ 2266584 :thumb
	ldr     r0, [r4, #0x4]
	bl      0x225c8bc
	cmp     r0, #0x1
	bne     branch_22665e4
	ldr     r0, [r4, #0x4]
	bl      0x225c8cc
	ldr     r1, [r4, #0x0]
	str     r0, [r1, #0x34]
	ldr     r0, [r4, #0x4]
	bl      0x225c838
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	b       branch_22665e4
@ 0x22665a8

.thumb
branch_22665a8: @ 22665a8 :thumb
	mov     r1, r0
	add     r1, #0x10
	mov     r2, #0x6e
	bl      0x225c8f8
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22665e4
@ 0x22665bc

.thumb
branch_22665bc: @ 22665bc :thumb
	ldr     r0, [r4, #0x8]
	bl      0x225c9a0
	cmp     r0, #0x1
	bne     branch_22665e4
	ldr     r0, [r4, #0x8]
	bl      0x225c9a4
	ldr     r1, [r4, #0x0]
	str     r0, [r1, #0x38]
	ldr     r0, [r4, #0x8]
	bl      0x225c904
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	b       branch_22665e4
@ 0x22665e0

.thumb
branch_22665e0: @ 22665e0 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22665e4

.thumb
branch_22665e4: @ 22665e4 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22665e8

.thumb
Function_22665e8: @ 22665e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      LoadOverlayData1c
	mov     r0, r4
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22665fa


.align 2, 0


.thumb
Function_22665fc: @ 22665fc :thumb
	ldr     r3, [pc, #0x8] @ 0x2266608, (=0x2032799)
	mov     r2, r0
	ldr     r0, [pc, #0x8] @ 0x226660c, (=0x2266fe4)
	mov     r1, #0x4
	bx      r3
@ 0x2266606


.align 2


.word 0x2032799 @ 0x2266608
.word 0x2266fe4 @ 0x226660c
.thumb
Function_2266610: @ 2266610 :thumb
	mov     r0, #0x14
	bx      lr
@ 0x2266614

.thumb
Function_2266614: @ 2266614 :thumb
	mov     r0, #0x4
	bx      lr
@ 0x2266618

.thumb
Function_2266618: @ 2266618 :thumb
	mov     r1, r0
	mov     r0, r3
	ldr     r3, [pc, #0x0] @ 0x2266620, (=0x2262045)
	bx      r3
@ 0x2266620

.word 0x2262045 @ 0x2266620
.thumb
Function_2266624: @ 2266624 :thumb
	push    {r3,lr}
	mov     r0, #0x18
	mov     r2, #0x14
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_2266636
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2266636

.thumb
branch_2266636: @ 2266636 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x226663a


.align 2, 0


.thumb
Function_226663c: @ 226663c :thumb
	mov     r0, #0xbf
	mov     r1, #0x1
	lsl     r0, r0, #6
	str     r1, [r3, r0]
	bx      lr
@ 0x2266646


.align 2, 0


.thumb
Function_2266648: @ 2266648 :thumb
	push    {r3,lr}
	mov     r1, #0x0
	mov     r0, #0x19
	mov     r2, r1
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_226665c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x226665c

.thumb
branch_226665c: @ 226665c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2266660

.thumb
Function_2266660: @ 2266660 :thumb
	push    {r4-r6,lr}
	mov     r4, r3
	ldr     r3, [r4, #0x0]
	ldr     r1, [r2, #0x0]
	mov     r5, r3
	add     r5, #0x30
	ldrb    r5, [r5, #0x0]
	mov     r2, #0x0
	cmp     r5, #0x0
	ble     branch_226668e
.thumb
branch_2266674: @ 2266674 :thumb
	mov     r6, r3
	add     r6, #0x2c
	ldrb    r6, [r6, #0x0]
	cmp     r0, r6
	bne     branch_2266686
	lsl     r0, r2, #2
	add     r0, r4, r0
	str     r1, [r0, #0xc]
	b       branch_226668e
@ 0x2266686

.thumb
branch_2266686: @ 2266686 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, r5
	blt     branch_2266674
.thumb
branch_226668e: @ 226668e :thumb
	ldr     r0, [r4, #0x0]
	add     r0, #0x30
	ldrb    r0, [r0, #0x0]
	cmp     r2, r0
	blt     branch_226669c
	bl      ErrorHandling
.thumb
branch_226669c: @ 226669c :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	pop     {r4-r6,pc}
@ 0x22666a4

.thumb
Function_22666a4: @ 22666a4 :thumb
	push    {r3,lr}
	mov     r0, #0x64
	str     r0, [sp, #0x0]
	mov     r0, #0x17
	add     r1, sp, #0x0
	mov     r2, #0x4
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_22666bc
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22666bc

.thumb
branch_22666bc: @ 22666bc :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22666c0

.thumb
Function_22666c0: @ 22666c0 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r2, [r4, #0x0]
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x18] @ 0x22666e4, (=0x2267014)
	ldr     r2, [r2, r3]
	cmp     r2, #0x0
	beq     branch_22666e0
	blx     r2
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x14
	blx     MI_CpuFill8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22666e0

.thumb
branch_22666e0: @ 22666e0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22666e4

.word 0x2267014 @ 0x22666e4
.thumb
Function_22666e8: @ 22666e8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r4, r1
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x14
	blx     MI_CpuFill8
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	add     r2, sp, #0x4
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2262130
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2266714

.thumb
Function_2266714: @ 2266714 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	bl      Function_203608c
	ldrb    r1, [r4, #0x4]
	cmp     r1, r0
	beq     branch_226672c
	mov     r0, r5
	add     r1, r4, #0x4
	bl      Function_2263dc4
.thumb
branch_226672c: @ 226672c :thumb
	pop     {r3-r5,pc}
@ 0x226672e


.align 2, 0


.thumb
Function_2266730: @ 2266730 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x14
	blx     MI_CpuFill8
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	add     r0, sp, #0x0
	strh    r5, [r0, #0x4]
	mov     r1, #0x5
	strb    r1, [r0, #0x6]
	strb    r4, [r0, #0x7]
	mov     r0, r6
	add     r1, sp, #0x0
	bl      Function_2262130
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x226675e


.align 2, 0


.thumb
Function_2266760: @ 2266760 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [pc, #0x18] @ 0x2266780, (=0x2fd0)
	mov     r5, r0
	ldr     r2, [r5, r1]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r5, r1]
	bl      Function_2264808
	ldrb    r1, [r4, #0x6]
	ldrb    r2, [r4, #0x7]
	mov     r0, r5
	bl      Function_226238c
	pop     {r3-r5,pc}
@ 0x226677e


.align 2


.word 0x2fd0 @ 0x2266780
.thumb
Function_2266784: @ 2266784 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	mov     r5, r1
	mov     r4, r2
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x14
	mov     r6, r3
	blx     MI_CpuFill8
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	add     r0, sp, #0x0
	strh    r5, [r0, #0x4]
	strb    r4, [r0, #0x6]
	mov     r1, #0x4
	strb    r1, [r0, #0x7]
	strb    r6, [r0, #0x8]
	mov     r0, r7
	add     r1, sp, #0x0
	bl      Function_2262130
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22667b6


.align 2, 0


.thumb
Function_22667b8: @ 22667b8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrh    r1, [r4, #0x4]
	mov     r5, r0
	ldr     r0, [pc, #0x24] @ 0x22667e8, (=0x2fc8)
	ldr     r3, [pc, #0x28] @ 0x22667ec, (=0x1428)
	str     r1, [r5, r0]
	ldr     r1, [r5, #0x0]
	ldrb    r2, [r4, #0x6]
	add     r1, #0x30
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r5, #0x2c]
	add     r3, r5, r3
	bl      Function_2263af0
	ldr     r0, [pc, #0x18] @ 0x22667f0, (=0x2fcc)
	mov     r1, #0x1
	str     r1, [r5, r0]
	ldrb    r1, [r4, #0x7]
	ldrb    r2, [r4, #0x8]
	mov     r0, r5
	bl      Function_226238c
	pop     {r3-r5,pc}
@ 0x22667e8

.word 0x2fc8 @ 0x22667e8
.word 0x1428 @ 0x22667ec
.word 0x2fcc @ 0x22667f0
.thumb
Function_22667f4: @ 22667f4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r4, r1
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x14
	blx     MI_CpuFill8
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r1, #0x2
	add     r0, sp, #0x0
	strb    r1, [r0, #0x4]
	strb    r4, [r0, #0x5]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2262130
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x226681e


.align 2, 0


.thumb
Function_2266820: @ 2266820 :thumb
	mov     r2, r1
	mov     r1, #0x3
	str     r1, [r0, #0x20]
	ldrb    r1, [r2, #0x4]
	ldr     r3, [pc, #0x4] @ 0x2266830, (=0x226238d)
	ldrb    r2, [r2, #0x5]
	bx      r3
@ 0x226682e


.align 2


.word Function_226238c+1 @ =0x226238d, 0x2266830
.thumb
Function_2266834: @ 2266834 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r4, r1
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x14
	blx     MI_CpuFill8
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r1, #0x3
	add     r0, sp, #0x0
	strb    r1, [r0, #0x4]
	strb    r4, [r0, #0x5]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2262130
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x226685e


.align 2, 0


.thumb
Function_2266860: @ 2266860 :thumb
	mov     r3, r1
	ldr     r1, [pc, #0x10] @ 0x2266874, (=0x2fbc)
	mov     r2, #0x1
	str     r2, [r0, r1]
	mov     r1, #0x6
	str     r1, [r0, #0x20]
	ldrb    r1, [r3, #0x4]
	ldrb    r2, [r3, #0x5]
	ldr     r3, [pc, #0x4] @ 0x2266878, (=0x226238d)
	bx      r3
@ 0x2266874

.word 0x2fbc @ 0x2266874
.word Function_226238c+1 @ =0x226238d, 0x2266878
.thumb
Function_226687c: @ 226687c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x14
	blx     MI_CpuFill8
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	add     r0, sp, #0x0
	strb    r5, [r0, #0x4]
	strb    r4, [r0, #0x5]
	mov     r0, r6
	add     r1, sp, #0x0
	bl      Function_2262130
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x22668a6


.align 2, 0


.thumb
Function_22668a8: @ 22668a8 :thumb
	ldr     r3, [pc, #0x8] @ 0x22668b4, (=0x226238d)
	mov     r2, r1
	ldrb    r1, [r2, #0x4]
	ldrb    r2, [r2, #0x5]
	bx      r3
@ 0x22668b2


.align 2


.word Function_226238c+1 @ =0x226238d, 0x22668b4
.thumb
Function_22668b8: @ 22668b8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r4, r1
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x14
	blx     MI_CpuFill8
	mov     r0, #0x7
	str     r0, [sp, #0x0]
	mov     r1, #0x6
	add     r0, sp, #0x0
	strb    r1, [r0, #0x4]
	strb    r4, [r0, #0x5]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2262130
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x22668e2


.align 2, 0


.thumb
Function_22668e4: @ 22668e4 :thumb
	mov     r2, r1
	mov     r1, #0x1
	str     r1, [r0, #0x20]
	ldrb    r1, [r2, #0x4]
	ldr     r3, [pc, #0x4] @ 0x22668f4, (=0x226238d)
	ldrb    r2, [r2, #0x5]
	bx      r3
@ 0x22668f2


.align 2


.word Function_226238c+1 @ =0x226238d, 0x22668f4
.word Function_2260668+1 @ =0x2260669, 0x22668f8
.word Function_226098c+1 @ =0x226098d, 0x22668fc
.word Function_2260c10+1 @ =0x2260c11, 0x2266900
.word 0xffffffff @ 0x2266904
.word Function_2266498+1 @ =0x2266499, 0x2266908
.word Function_22664bc+1 @ =0x22664bd, 0x226690c
.word Function_22665e8+1 @ =0x22665e9, 0x2266910
.word 0xffffffff @ 0x2266914
.word 0x0 @ 0x2266918
.word 0x0 @ 0x226691c
.word Function_2262484+1 @ =0x2262485, 0x2266920
.word Function_226251c+1 @ =0x226251d, 0x2266924
.word Function_22625f8+1 @ =0x22625f9, 0x2266928

.incbin "./baserom/overlay/overlay_0117.bin", 0x64ec, 0x2266b94 - 0x226692c


.word Function_226544c+1 @ =0x226544d, 0x2266b94
.word Function_2265454+1 @ =0x2265455, 0x2266b98
.word Function_2265644+1 @ =0x2265645, 0x2266b9c
.word Function_22657c4+1 @ =0x22657c5, 0x2266ba0

.incbin "./baserom/overlay/overlay_0117.bin", 0x6764, 0x2266fe8 - 0x2266ba4


.word 0x203294d @ 0x2266fe8
.word 0x0 @ 0x2266fec
.word Function_2266660+1 @ =0x2266661, 0x2266ff0
.word Function_2266614+1 @ =0x2266615, 0x2266ff4
.word 0x0 @ 0x2266ff8
.word Function_2266618+1 @ =0x2266619, 0x2266ffc
.word Function_2266610+1 @ =0x2266611, 0x2267000
.word 0x0 @ 0x2267004
.word Function_226663c+1 @ =0x226663d, 0x2267008
.word 0x203294d @ 0x226700c
.word 0x0 @ 0x2267010
.word 0x0 @ 0x2267014
.word Function_2266714+1 @ =0x2266715, 0x2267018
.word Function_2266760+1 @ =0x2266761, 0x226701c
.word Function_22667b8+1 @ =0x22667b9, 0x2267020
.word Function_2266820+1 @ =0x2266821, 0x2267024
.word Function_2266860+1 @ =0x2266861, 0x2267028
.word Function_22668a8+1 @ =0x22668a9, 0x226702c
.word Function_22668e4+1 @ =0x22668e5, 0x2267030
@ 0x2267034


.incbin "./baserom/overlay/overlay_0117.bin", 0x6bf4, 0x2267040 - 0x2267034


@end 0x2267040



