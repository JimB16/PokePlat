
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram74, "ax"


.thumb
.globl Function_74_21d0d80
Function_74_21d0d80: @ 21d0d80 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadPtrToOverWorldDataIn18
	mov     r2, #0x1
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x26
	lsl     r2, r2, #16
	bl      Function_2017fc8
	mov     r1, #0xaf
	mov     r0, r4
	lsl     r1, r1, #2
	mov     r2, #0x26
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r2, #0xaf
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, r5
	bl      Function_2027aa4
	ldrh    r1, [r4, #0x18]
	mov     r2, #0xf
	lsl     r0, r0, #16
	bic     r1, r2
	lsr     r2, r0, #16
	mov     r0, #0xf
	and     r0, r2
	orr     r0, r1
	strh    r0, [r4, #0x18]
	mov     r0, r5
	bl      Function_2027af8
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsl     r0, r0, #31
	ldrh    r1, [r4, #0x18]
	mov     r2, #0x40
	lsr     r0, r0, #25
	bic     r1, r2
	orr     r0, r1
	strh    r0, [r4, #0x18]
	mov     r0, r5
	bl      Function_2027b14
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsl     r0, r0, #31
	ldrh    r1, [r4, #0x18]
	mov     r2, #0x80
	lsr     r0, r0, #24
	bic     r1, r2
	orr     r0, r1
	strh    r0, [r4, #0x18]
	mov     r0, r5
	bl      Function_2027adc
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsl     r0, r0, #30
	ldrh    r1, [r4, #0x18]
	mov     r2, #0x30
	lsr     r0, r0, #26
	bic     r1, r2
	orr     r0, r1
	strh    r0, [r4, #0x18]
	mov     r0, r5
	bl      Function_2027b30
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsl     r0, r0, #30
	ldrh    r2, [r4, #0x18]
	ldr     r1, [pc, #0x30] @ 0x21d0e50, (=0xfffffcff)
	lsr     r0, r0, #22
	and     r1, r2
	orr     r0, r1
	strh    r0, [r4, #0x18]
	mov     r0, r5
	bl      Function_2027b50
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsl     r0, r0, #27
	ldrh    r2, [r4, #0x18]
	ldr     r1, [pc, #0x1c] @ 0x21d0e54, (=0xffff83ff)
	lsr     r0, r0, #17
	and     r1, r2
	orr     r0, r1
	strh    r0, [r4, #0x18]
	mov     r0, #0x26
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r5, [r4, #0x1c]
	bl      Function_2002ac8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0e4e

.align 2
.word 0xfffffcff @ 0x21d0e50
.word 0xffff83ff @ 0x21d0e54



.thumb
.globl Function_74_21d0e58
Function_74_21d0e58: @ 21d0e58 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	lsl     r0, r0, #30
	lsr     r0, r0, #30
	cmp     r0, #0x1
	bne     branch_21d0ede
	ldrh    r0, [r4, #0x18]
	mov     r1, #0xf
	mov     r2, #0xf
	bic     r0, r1
	mov     r1, r4
	add     r1, #0x5e
	ldrh    r1, [r1, #0x0]
	and     r1, r2
	orr     r0, r1
	strh    r0, [r4, #0x18]
	ldrh    r0, [r4, #0x18]
	mov     r1, #0x40
	add     r2, #0xf7
	bic     r0, r1
	ldrh    r1, [r4, r2]
	lsl     r1, r1, #31
	lsr     r1, r1, #25
	orr     r0, r1
	strh    r0, [r4, #0x18]
	ldrh    r1, [r4, #0x18]
	mov     r0, #0x80
	bic     r1, r0
	ldr     r0, [pc, #0xb8] @ 0x21d0f54, (=0x15a)
	ldrh    r2, [r4, r0]
	lsl     r2, r2, #31
	lsr     r2, r2, #24
	orr     r1, r2
	strh    r1, [r4, #0x18]
	ldrh    r1, [r4, #0x18]
	mov     r2, #0x30
	bic     r1, r2
	mov     r2, r4
	add     r2, #0xb2
	ldrh    r2, [r2, #0x0]
	lsl     r2, r2, #30
	lsr     r2, r2, #26
	orr     r1, r2
	strh    r1, [r4, #0x18]
	ldrh    r2, [r4, #0x18]
	ldr     r1, [pc, #0x9c] @ 0x21d0f58, (=0xfffffcff)
	and     r1, r2
	mov     r2, r0
	add     r2, #0x54
	ldrh    r2, [r4, r2]
	add     r0, #0xa8
	lsl     r2, r2, #30
	lsr     r2, r2, #22
	orr     r1, r2
	strh    r1, [r4, #0x18]
	ldrh    r0, [r4, r0]
	ldrh    r2, [r4, #0x18]
	ldr     r1, [pc, #0x88] @ 0x21d0f5c, (=0xffff83ff)
	lsl     r0, r0, #27
	and     r1, r2
	lsr     r0, r0, #17
	orr     r0, r1
	strh    r0, [r4, #0x18]
.thumb
branch_21d0ede: @ 21d0ede :thumb
	ldrh    r1, [r4, #0x18]
	ldr     r0, [r4, #0x1c]
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	bl      Function_2027aac
	ldrh    r1, [r4, #0x18]
	ldr     r0, [r4, #0x1c]
	lsl     r1, r1, #25
	lsr     r1, r1, #31
	bl      Function_2027b00
	ldrh    r1, [r4, #0x18]
	ldr     r0, [r4, #0x1c]
	lsl     r1, r1, #24
	lsr     r1, r1, #31
	bl      Function_2027b1c
	ldrh    r1, [r4, #0x18]
	ldr     r0, [r4, #0x1c]
	lsl     r1, r1, #26
	lsr     r1, r1, #30
	bl      Function_2027ae4
	ldrh    r1, [r4, #0x18]
	ldr     r0, [r4, #0x1c]
	lsl     r1, r1, #22
	lsr     r1, r1, #30
	bl      Function_2027b38
	ldrh    r1, [r4, #0x18]
	ldr     r0, [r4, #0x1c]
	lsl     r1, r1, #17
	lsr     r1, r1, #27
	bl      Function_2027b58
	ldrh    r0, [r4, #0x18]
	lsl     r0, r0, #26
	lsr     r0, r0, #30
	bl      Function_2004fb8
	ldrh    r1, [r4, #0x18]
	mov     r0, #0x0
	lsl     r1, r1, #22
	lsr     r1, r1, #30
	bl      Function_2027a68
	mov     r0, #0x1
	bl      Function_2002ac8
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	ldr     r0, [r4, #0x0]
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0f52

.align 2
.word 0x15a @ 0x21d0f54
.word 0xfffffcff @ 0x21d0f58
.word 0xffff83ff @ 0x21d0f5c



.thumb
.globl Function_74_21d0f60
Function_74_21d0f60: @ 21d0f60 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	bl      LoadOverlayData1c
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x8
	bhi     branch_21d0fbc
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d0f7c

Jumppoints_21d0f7c:
.hword branch_21d0f8e - Jumppoints_21d0f7c - 2
.hword branch_21d0fb4 - Jumppoints_21d0f7c - 2
.hword branch_21d0fc4 - Jumppoints_21d0f7c - 2
.hword branch_21d1014 - Jumppoints_21d0f7c - 2
.hword branch_21d1026 - Jumppoints_21d0f7c - 2
.hword branch_21d1044 - Jumppoints_21d0f7c - 2
.hword branch_21d1082 - Jumppoints_21d0f7c - 2
.hword branch_21d10bc - Jumppoints_21d0f7c - 2
.hword branch_21d10ca - Jumppoints_21d0f7c - 2
.thumb
branch_21d0f8e: @ 21d0f8e :thumb
	bl      Function_21d1178
	cmp     r0, #0x0
	bne     branch_21d0f9c
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d0f9c

.thumb
branch_21d0f9c: @ 21d0f9c :thumb
	mov     r0, #0x6
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r3, #0x0
	bl      Function_200f174
	b       branch_21d10de
@ 0x21d0fb4

.thumb
branch_21d0fb4: @ 21d0fb4 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d0fbe
.thumb
branch_21d0fbc: @ 21d0fbc :thumb
	b       branch_21d10de
@ 0x21d0fbe

.thumb
branch_21d0fbe: @ 21d0fbe :thumb
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d0fc4

.thumb
branch_21d0fc4: @ 21d0fc4 :thumb
	ldr     r0, [pc, #0x124] @ 0x21d10ec, (=RAM_21bf67c)
	mov     r1, #0x1
	ldr     r0, [r0, #0x48]
	tst     r1, r0
	beq     branch_21d0fd8
	ldr     r1, [r4, #0x10]
	lsl     r1, r1, #27
	lsr     r1, r1, #29
	cmp     r1, #0x6
	beq     branch_21d0fde
.thumb
branch_21d0fd8: @ 21d0fd8 :thumb
	mov     r1, #0x2
	tst     r0, r1
	beq     branch_21d1008
.thumb
branch_21d0fde: @ 21d0fde :thumb
	mov     r0, r4
	bl      Function_21d1b44
	cmp     r0, #0x1
	bne     branch_21d0fec
	mov     r0, #0x3
	b       branch_21d1000
@ 0x21d0fec

.thumb
branch_21d0fec: @ 21d0fec :thumb
	ldr     r0, [pc, #0x100] @ 0x21d10f0, (=0x5dc)
	bl      Function_2005748
	ldr     r1, [r4, #0x10]
	mov     r0, #0x3
	bic     r1, r0
	mov     r0, #0x2
	orr     r0, r1
	str     r0, [r4, #0x10]
	mov     r0, #0x6
.thumb
branch_21d1000: @ 21d1000 :thumb
	add     sp, #0xc
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d1008

.thumb
branch_21d1008: @ 21d1008 :thumb
	mov     r0, r4
	bl      Function_21d1a24
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d1014

.thumb
branch_21d1014: @ 21d1014 :thumb
	mov     r0, #0x1
	bl      Function_2002ac8
	mov     r0, r4
	mov     r1, #0x31
	mov     r2, #0x0
	bl      Function_21d1968
	b       branch_21d10de
@ 0x21d1026

.thumb
branch_21d1026: @ 21d1026 :thumb
	bl      Function_21d1a08
	cmp     r0, #0x0
	beq     branch_21d103e
	mov     r0, #0x0
	bl      Function_2002ac8
	mov     r0, r4
	bl      Function_21d1ba8
	mov     r0, #0x5
	str     r0, [r4, #0x4]
.thumb
branch_21d103e: @ 21d103e :thumb
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d1044

.thumb
branch_21d1044: @ 21d1044 :thumb
	bl      Function_21d1bd0
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_21d107c
	cmp     r0, #0x0
	bne     branch_21d106c
	ldr     r0, [pc, #0x98] @ 0x21d10f0, (=0x5dc)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [pc, #0x94] @ 0x21d10f4, (=0x61b)
	bl      Function_2005748
	ldr     r1, [r4, #0x10]
	mov     r0, #0x3
	bic     r1, r0
	mov     r0, #0x1
	b       branch_21d1074
@ 0x21d106c

.thumb
branch_21d106c: @ 21d106c :thumb
	ldr     r1, [r4, #0x10]
	mov     r0, #0x3
	bic     r1, r0
	mov     r0, #0x2
.thumb
branch_21d1074: @ 21d1074 :thumb
	orr     r0, r1
	str     r0, [r4, #0x10]
	mov     r0, #0x6
	str     r0, [r4, #0x4]
.thumb
branch_21d107c: @ 21d107c :thumb
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d1082

.thumb
branch_21d1082: @ 21d1082 :thumb
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_21d10a2
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Call_RemoveTextInterpreterTaskFromTaskList
.thumb
branch_21d10a2: @ 21d10a2 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r3, r1
	bl      Function_200f174
	b       branch_21d10de
@ 0x21d10bc

.thumb
branch_21d10bc: @ 21d10bc :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	bne     branch_21d10de
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d10ca

.thumb
branch_21d10ca: @ 21d10ca :thumb
	bl      Function_21d122c
	cmp     r0, #0x0
	beq     branch_21d10d8
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x21d10d8

.thumb
branch_21d10d8: @ 21d10d8 :thumb
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d10de

.thumb
branch_21d10de: @ 21d10de :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d10ea


.align 2


.word RAM_21bf67c @ 0x21d10ec
.word 0x5dc @ 0x21d10f0
.word 0x61b @ 0x21d10f4
.thumb
Function_21d10f8: @ 21d10f8 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d1114, (=0x21d1c5c)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d1102: @ 21d1102 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1102
	add     r0, sp, #0x0
	bl      GX_SetBanks
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d1114

.word 0x21d1c5c @ 0x21d1114
.thumb
Function_21d1118: @ 21d1118 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	lsl     r0, r0, #10
	lsr     r0, r0, #31
	beq     branch_21d1148
	ldr     r2, [pc, #0x40] @ 0x21d1168, (=0x202)
	mov     r1, #0x1
	ldrh    r0, [r4, r2]
	add     r2, #0x39
	mov     r3, #0xf
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x14]
	bl      Function_200dd0c
	ldr     r1, [r4, #0x10]
	ldr     r0, [pc, #0x28] @ 0x21d116c, (=0xffdfffff)
	and     r0, r1
	str     r0, [r4, #0x10]
.thumb
branch_21d1148: @ 21d1148 :thumb
	bl      Function_200c800
	blx     Function_20a635c
	ldr     r0, [r4, #0x14]
	bl      Function_201c2b8
	ldr     r3, [pc, #0x18] @ 0x21d1170, (=0x27e0000)
	ldr     r1, [pc, #0x18] @ 0x21d1174, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d1166


.align 2


.word 0x202 @ 0x21d1168
.word 0xffdfffff @ 0x21d116c
.word 0x27e0000 @ 0x21d1170
.word 0x3ff8 @ 0x21d1174
.thumb
Function_21d1178: @ 21d1178 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x8]
	cmp     r1, #0x0
	beq     branch_21d118c
	cmp     r1, #0x1
	beq     branch_21d11cc
	cmp     r1, #0x2
	beq     branch_21d11e6
	b       branch_21d1214
@ 0x21d118c

.thumb
branch_21d118c: @ 21d118c :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x78] @ 0x21d1220, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x74] @ 0x21d1224, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	bl      Function_21d10f8
	mov     r0, #0x0
	bl      Function_200f32c
	mov     r0, #0x1
	bl      Function_200f32c
	mov     r0, r4
	bl      Function_21d12d4
	b       branch_21d1214
@ 0x21d11cc

.thumb
branch_21d11cc: @ 21d11cc :thumb
	bl      Function_21d1390
	ldr     r3, [r4, #0x0]
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, #0xdc
	bl      LoadFromNARC_9
	str     r0, [r4, #0x20]
	mov     r0, r4
	bl      Function_21d1720
	b       branch_21d1214
@ 0x21d11e6

.thumb
branch_21d11e6: @ 21d11e6 :thumb
	bl      Function_21d14f4
	mov     r0, r4
	bl      Function_21d1668
	ldr     r1, [r4, #0x0]
	mov     r0, #0x20
	bl      Function_201dbec
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	bl      Function_20397e4
	ldr     r0, [pc, #0x20] @ 0x21d1228, (=0x21d1119)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1214

.thumb
branch_21d1214: @ 21d1214 :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d121e


.align 2


.word 0xffffe0ff @ 0x21d1220
.word 0x4001000 @ 0x21d1224
.word 0x21d1119 @ 0x21d1228
.thumb
Function_21d122c: @ 21d122c :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_21d123c
	cmp     r0, #0x1
	beq     branch_21d128a
	b       branch_21d12bc
@ 0x21d123c

.thumb
branch_21d123c: @ 21d123c :thumb
	bl      Function_201dc3c
	ldr     r0, [sp, #0x0]
	bl      Function_21d1624
	ldr     r6, [sp, #0x0]
	mov     r7, #0x0
.thumb
branch_21d124a: @ 21d124a :thumb
	mov     r0, r6
	add     r0, #0x5c
	ldrh    r0, [r0, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_21d126c
	mov     r5, r6
.thumb
branch_21d1258: @ 21d1258 :thumb
	ldr     r0, [r5, #0x60]
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	add     r0, #0x5c
	ldrh    r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_21d1258
.thumb
branch_21d126c: @ 21d126c :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x54
	cmp     r7, #0x7
	blt     branch_21d124a
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x20]
	bl      Function_200b190
	ldr     r0, [sp, #0x0]
	bl      Function_21d14e8
	ldr     r0, [sp, #0x0]
	bl      Function_21d135c
	b       branch_21d12bc
@ 0x21d128a

.thumb
branch_21d128a: @ 21d128a :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x24] @ 0x21d12cc, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x24] @ 0x21d12d0, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d12bc

.thumb
branch_21d12bc: @ 21d12bc :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x8]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	str     r1, [r0, #0x8]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d12ca


.align 2


.word 0xffffe0ff @ 0x21d12cc
.word 0x4001000 @ 0x21d12d0
.thumb
Function_21d12d4: @ 21d12d4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x9c
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	bl      Function_2018340
	add     r3, sp, #0x0
	ldr     r4, [pc, #0x6c] @ 0x21d1350, (=0x21d1c1c)
	str     r0, [r6, #0x14]
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      SetGraphicsModes
	ldr     r4, [pc, #0x5c] @ 0x21d1354, (=0x21d1c84)
	add     r3, sp, #0x10
	mov     r2, #0x11
.thumb
branch_21d12fc: @ 21d12fc :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d12fc
	ldr     r0, [r4, #0x0]
	ldr     r5, [pc, #0x50] @ 0x21d1358, (=0x21d1c2c)
	str     r0, [r3, #0x0]
	mov     r7, #0x0
	add     r4, sp, #0x10
.thumb
branch_21d130e: @ 21d130e :thumb
	ldr     r1, [r5, #0x0]
	ldr     r0, [r6, #0x14]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_20183c4
	ldr     r1, [r5, #0x0]
	ldr     r0, [r6, #0x14]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_2019ebc
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x1c
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x5
	blt     branch_21d130e
	mov     r0, #0x0
	ldr     r3, [r6, #0x0]
	mov     r1, #0x20
	mov     r2, r0
	bl      Function_2019690
	ldr     r3, [r6, #0x0]
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	bl      Function_2019690
	add     sp, #0x9c
	pop     {r4-r7,pc}
@ 0x21d1350

.word 0x21d1c1c @ 0x21d1350
.word 0x21d1c84 @ 0x21d1354
.word 0x21d1c2c @ 0x21d1358
.thumb
Function_21d135c: @ 21d135c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	mov     r1, #0x4
	bl      Function_2019044
	ldr     r0, [r4, #0x14]
	mov     r1, #0x3
	bl      Function_2019044
	ldr     r0, [r4, #0x14]
	mov     r1, #0x2
	bl      Function_2019044
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_2019044
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      Function_2019044
	ldr     r0, [r4, #0x14]
	bl      free
	pop     {r4,pc}
@ 0x21d1390


.thumb
Function_21d1390: @ 21d1390 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x24
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #ConfigGra_Narc
	bl      LoadFromNARC_8
	mov     r1, #0x1
	mov     r4, r0
	bl      Function_2006d84_GetFilesize
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      malloc2
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, r6
	bl      LoadFileFromNARCFileHandler
	mov     r0, r6
	add     r1, sp, #0x20
	blx     Function_20a7118
	ldr     r3, [sp, #0x20]
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r2, [r3, #0x14]
	ldr     r0, [r5, #0x14]
	ldr     r3, [r3, #0x10]
	bl      Function_201958c
	ldr     r3, [sp, #0x20]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r2, [r3, #0x14]
	ldr     r0, [r5, #0x14]
	ldr     r3, [r3, #0x10]
	mov     r1, #0x4
	bl      Function_201958c
	mov     r0, r6
	bl      free
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2006d84_GetFilesize
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      malloc2
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, r6
	bl      LoadFileFromNARCFileHandler
	mov     r0, r6
	add     r1, sp, #0x1c
	blx     Function_20a71b0
	ldr     r1, [sp, #0x1c]
	mov     r0, #0x0
	ldr     r1, [r1, #0xc]
	mov     r2, #0x20
	mov     r3, r0
	bl      Function_201972c
	ldr     r1, [sp, #0x1c]
	mov     r0, #0x4
	ldr     r1, [r1, #0xc]
	mov     r2, #0x20
	mov     r3, #0x0
	bl      Function_201972c
	mov     r0, r6
	bl      free
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2006d84_GetFilesize
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      malloc
	str     r0, [r5, #0x24]
	ldr     r2, [r5, #0x24]
	mov     r0, r4
	mov     r1, #0x2
	bl      LoadFileFromNARCFileHandler
	mov     r1, r5
	ldr     r0, [r5, #0x24]
	add     r1, #0x28
	blx     Function_20a7248
	mov     r0, r4
	bl      Call_FS_CloseFile
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_2019cb8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_2019cb8
	ldr     r0, [r5, #0x28]
	mov     r1, #0x20
	str     r1, [sp, #0x0]
	mov     r1, #0x2
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	ldrh    r2, [r0, #0x0]
	mov     r3, r1
	lsl     r2, r2, #21
	lsr     r2, r2, #24
	str     r2, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r2, r1
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x14]
	bl      Function_2019964
	mov     r2, #0x3
	mov     r3, r2
	ldr     r0, [r5, #0x14]
	mov     r1, #0x0
	sub     r3, #0x1b
	bl      Function_2019184
	ldr     r0, [r5, #0x14]
	mov     r1, #0x2
	bl      Function_201c3c0
	ldr     r0, [r5, #0x14]
	mov     r1, #0x0
	bl      Function_201c3c0
	ldr     r0, [r5, #0x14]
	mov     r1, #0x4
	bl      Function_201c3c0
	add     sp, #0x24
	pop     {r3-r6,pc}
@ 0x21d14e6


.align 2, 0
.thumb
Function_21d14e8: @ 21d14e8 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d14f0, (=free+1)
	ldr     r0, [r0, #0x24]
	bx      r3
@ 0x21d14ee

.align 2
.word free+1 @ 0x21d14f0



.thumb
Function_21d14f4: @ 21d14f4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xc
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0xa
	str     r0, [sp, #0x10]
	mov     r1, r4
	mov     r2, #0x1
	ldr     r0, [r4, #0x14]
	add     r1, #0x2c
	mov     r3, r2
	bl      Function_201a7e8
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x1e
	str     r0, [sp, #0x4]
	mov     r0, #0xe
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x22
	str     r0, [sp, #0x10]
	mov     r1, r4
	mov     r2, #0x1
	ldr     r0, [r4, #0x14]
	add     r1, #0x3c
	mov     r3, r2
	bl      Function_201a7e8
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xc8] @ 0x21d1618, (=0x1c6)
	mov     r1, r4
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x14]
	add     r1, #0x4c
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_201a7e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0xb4] @ 0x21d161c, (=0x232)
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	mov     r3, #0xe
	bl      Function_200daa4
	ldrh    r0, [r4, #0x18]
	ldr     r2, [pc, #0xa8] @ 0x21d1620, (=0x23b)
	mov     r1, #0x1
	lsl     r0, r0, #17
	lsr     r0, r0, #27
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r3, #0xf
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x14]
	bl      Function_200dd0c
	mov     r1, #0x1a
	ldr     r2, [r4, #0x0]
	mov     r0, #0x0
	lsl     r1, r1, #4
	bl      LoadFromNARC_PlFont1
	mov     r1, #0x1a
	ldr     r2, [r4, #0x0]
	mov     r0, #0x4
	lsl     r1, r1, #4
	bl      LoadFromNARC_PlFont1
	mov     r1, #0x6
	ldr     r2, [r4, #0x0]
	mov     r0, #0x0
	lsl     r1, r1, #6
	bl      LoadFromNARC_PlFont2
	mov     r1, #0x6
	ldr     r2, [r4, #0x0]
	mov     r0, #0x4
	lsl     r1, r1, #6
	bl      LoadFromNARC_PlFont2
	mov     r0, r4
	add     r0, #0x2c
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	add     r0, #0x3c
	mov     r1, #0xff
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	add     r0, #0x4c
	mov     r1, #0xff
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	add     r0, #0x4c
	bl      Function_201aa3c
	mov     r0, r4
	add     r0, #0x3c
	bl      Function_201aa3c
	mov     r0, r4
	add     r0, #0x2c
	bl      Function_201aa3c
	mov     r0, r4
	ldr     r2, [pc, #0x20] @ 0x21d161c, (=0x232)
	add     r0, #0x3c
	mov     r1, #0x1
	mov     r3, #0xe
	bl      Function_200dc48
	add     r4, #0x4c
	ldr     r2, [pc, #0x18] @ 0x21d1620, (=0x23b)
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, #0xf
	bl      Function_200e060
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x21d1616


.align 2


.word 0x1c6 @ 0x21d1618
.word 0x232 @ 0x21d161c
.word 0x23b @ 0x21d1620
.thumb
Function_21d1624: @ 21d1624 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x3c
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, r5
	add     r0, #0x4c
	mov     r1, #0x0
	bl      Function_200e084
	mov     r6, #0x0
	add     r5, #0x2c
	mov     r7, r6
.thumb
branch_21d1640: @ 21d1640 :thumb
	lsl     r4, r6, #4
	add     r0, r5, r4
	bl      Function_201acf4
	add     r0, r5, r4
	mov     r1, r7
	bl      Function_201ada4_ClearTextBox
	add     r0, r5, r4
	bl      Function_201aa3c
	add     r0, r5, r4
	bl      Function_201a8fc
	add     r0, r6, #0x1
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	cmp     r6, #0x3
	bcc     branch_21d1640
	pop     {r3-r7,pc}
@ 0x21d1668

.thumb
Function_21d1668: @ 21d1668 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r0
	mov     r0, #0x1
	ldr     r1, [r6, #0x0]
	lsl     r0, r0, #8
	bl      Function_2023790
	mov     r5, r0
	ldr     r0, [r6, #0x20]
	mov     r1, #0x0
	mov     r2, r5
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r3, #0x2
	str     r3, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x88] @ 0x21d1714, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r6
	add     r0, #0x2c
	mov     r2, r5
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r7, r6
	mov     r4, #0x0
	add     r7, #0x3c
branch_21d16a2: @ 21d16a2 :thumb
	mov     r0, r5
	bl      Function_20237e8
	ldr     r1, [pc, #0x6c] @ 0x21d1718, (=Unknown_21d1bf4)
	ldr     r0, [r6, #0x20]
	ldrb    r1, [r1, r4]
	mov     r2, r5
	bl      Function_200b1b8_CallMsgDecrypt
	lsl     r0, r4, #4
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x5c] @ 0x21d171c, (=0x1020f)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r7
	mov     r2, r5
	mov     r3, #0x4
	bl      Function_201d78c
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x7
	bcc     branch_21d16a2
	mov     r4, #0x0
.thumb
branch_21d16dc: @ 21d16dc :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_21d17cc
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x7
	bcc     branch_21d16dc
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_21d1be4
	mov     r0, r6
	add     r0, #0x2c
	bl      Function_201a954
	add     r6, #0x3c
	mov     r0, r6
	bl      Function_201a954
	mov     r0, r5
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d1712

.align 2
.word 0x10200 @ 0x21d1714
.word Unknown_21d1bf4 @ 0x21d1718
.word 0x1020f @ 0x21d171c



.thumb
Function_21d1720: @ 21d1720 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x4]
branch_21d172a: @ 21d172a :thumb
	ldr     r0, [sp, #0x4]
	ldr     r2, [sp, #0x4]
	lsl     r7, r0, #2
	ldr     r0, [pc, #0x8c] @ 0x21d17c0, (=0x21d1c40)
	mov     r1, #0x54
	mul     r1, r2
	add     r1, r5, r1
	str     r1, [sp, #0x0]
	ldr     r0, [r0, r7]
	add     r1, #0x5c
	mov     r4, #0x0
	strh    r0, [r1, #0x0]
	cmp     r0, #0x0
	ble     branch_21d176a
	ldr     r1, [pc, #0x7c] @ 0x21d17c4, (=0x21d1bfc)
	ldr     r0, [sp, #0x4]
	ldrb    r6, [r1, r0]
.thumb
branch_21d174c: @ 21d174c :thumb
	ldr     r0, [r5, #0x20]
	add     r1, r6, r4
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [sp, #0x0]
	lsl     r2, r4, #2
	add     r1, r1, r2
	str     r0, [r1, #0x60]
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldr     r0, [pc, #0x5c] @ 0x21d17c0, (=0x21d1c40)
	ldr     r0, [r0, r7]
	cmp     r4, r0
	blt     branch_21d174c
.thumb
branch_21d176a: @ 21d176a :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	cmp     r0, #0x7
	bcc     branch_21d172a
	ldrh    r0, [r5, #0x18]
	lsl     r0, r0, #28
	lsr     r1, r0, #28
	mov     r0, r5
	add     r0, #0x5e
	strh    r1, [r0, #0x0]
	ldrh    r0, [r5, #0x18]
	ldr     r1, [pc, #0x40] @ 0x21d17c8, (=0x106)
	lsl     r0, r0, #25
	lsr     r0, r0, #31
	strh    r0, [r5, r1]
	ldrh    r0, [r5, #0x18]
	lsl     r0, r0, #24
	lsr     r2, r0, #31
	mov     r0, r1
	add     r0, #0x54
	strh    r2, [r5, r0]
	ldrh    r0, [r5, #0x18]
	lsl     r0, r0, #26
	lsr     r2, r0, #30
	mov     r0, r5
	add     r0, #0xb2
	strh    r2, [r0, #0x0]
	ldrh    r0, [r5, #0x18]
	lsl     r0, r0, #22
	lsr     r2, r0, #30
	mov     r0, r1
	add     r0, #0xa8
	strh    r2, [r5, r0]
	ldrh    r0, [r5, #0x18]
	add     r1, #0xfc
	lsl     r0, r0, #17
	lsr     r0, r0, #27
	strh    r0, [r5, r1]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d17c0

.word 0x21d1c40 @ 0x21d17c0
.word 0x21d1bfc @ 0x21d17c4
.word 0x106 @ 0x21d17c8
.thumb
Function_21d17cc: @ 21d17cc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r7, r1
	str     r0, [sp, #0x10]
	lsl     r0, r7, #4
	str     r0, [sp, #0x14]
	mov     r0, #0x6
	lsl     r0, r0, #6
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x178] @ 0x21d195c, (=0x21d1c04)
	ldr     r3, [sp, #0x14]
	ldsb    r2, [r2, r7]
	ldr     r0, [sp, #0x10]
	lsl     r3, r3, #16
	add     r2, #0x64
	lsl     r2, r2, #16
	add     r0, #0x3c
	mov     r1, #0xff
	lsr     r2, r2, #16
	lsr     r3, r3, #16
	bl      Function_201ae78
	cmp     r7, #0x5
	bne     branch_21d184a
	mov     r0, #0x54
	mov     r2, r7
	mul     r2, r0
	ldr     r0, [sp, #0x14]
	ldr     r3, [sp, #0x10]
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x14c] @ 0x21d1960, (=0x3040f)
	add     r3, r3, r2
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	mov     r2, r3
	ldr     r0, [sp, #0x10]
	str     r1, [sp, #0xc]
	add     r2, #0x5e
	ldrh    r2, [r2, #0x0]
	add     r0, #0x3c
	lsl     r2, r2, #2
	add     r2, r3, r2
	ldr     r2, [r2, #0x60]
	mov     r3, #0x94
	bl      Function_201d78c
	ldr     r0, [sp, #0x10]
	add     r0, #0x3c
	bl      Function_201a954
	ldr     r0, [sp, #0x10]
	ldr     r1, [r0, #0x10]
	mov     r0, #0x2
	lsl     r0, r0, #20
	orr     r1, r0
	ldr     r0, [sp, #0x10]
	add     sp, #0x24
	str     r1, [r0, #0x10]
	pop     {r4-r7,pc}
@ 0x21d184a

.thumb
branch_21d184a: @ 21d184a :thumb
	cmp     r7, #0x1
	bne     branch_21d1862
	mov     r0, #0x54
	mov     r1, r7
	mul     r1, r0
	ldr     r0, [sp, #0x10]
	add     r0, r0, r1
	add     r0, #0x5e
	ldrh    r0, [r0, #0x0]
	bl      Function_2004fb8
	b       branch_21d18a0
@ 0x21d1862

.thumb
branch_21d1862: @ 21d1862 :thumb
	cmp     r7, #0x4
	bne     branch_21d187c
	mov     r1, #0x54
	mov     r2, r7
	mul     r2, r1
	ldr     r1, [sp, #0x10]
	mov     r0, #0x0
	add     r1, r1, r2
	add     r1, #0x5e
	ldrh    r1, [r1, #0x0]
	bl      Function_2027a68
	b       branch_21d18a0
@ 0x21d187c

.thumb
branch_21d187c: @ 21d187c :thumb
	cmp     r7, #0x0
	bne     branch_21d18a0
	mov     r1, #0x54
	mov     r2, r7
	mul     r2, r1
	ldr     r1, [sp, #0x10]
	ldr     r0, [sp, #0x10]
	add     r1, r1, r2
	add     r1, #0x5e
	ldrh    r1, [r1, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      Function_2027aac
	ldr     r0, [sp, #0x10]
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_21d1be4
.thumb
branch_21d18a0: @ 21d18a0 :thumb
	mov     r0, #0x54
	mov     r1, r7
	mul     r1, r0
	ldr     r0, [sp, #0x10]
	mov     r4, #0x0
	add     r5, r0, r1
	mov     r0, r5
	str     r4, [sp, #0x1c]
	add     r0, #0x5c
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	bls     branch_21d194e
	bls     branch_21d194e
	ldr     r0, [pc, #0xa0] @ 0x21d195c, (=0x21d1c04)
	add     r0, r0, r7
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	str     r0, [sp, #0x20]
	add     r0, #0x3c
	str     r0, [sp, #0x20]
.thumb
branch_21d18c8: @ 21d18c8 :thumb
	mov     r0, r5
	add     r0, #0x5e
	ldrh    r0, [r0, #0x0]
	cmp     r4, r0
	bne     branch_21d18d6
	ldr     r0, [pc, #0x8c] @ 0x21d1960, (=0x3040f)
	b       branch_21d18d8
@ 0x21d18d6

.thumb
branch_21d18d6: @ 21d18d6 :thumb
	ldr     r0, [pc, #0x8c] @ 0x21d1964, (=0x1020f)
.thumb
branch_21d18d8: @ 21d18d8 :thumb
	cmp     r7, #0x4
	bne     branch_21d1914
	lsl     r1, r4, #2
	add     r6, r5, r1
	ldr     r1, [sp, #0x14]
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r3, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	ldr     r2, [r6, #0x60]
	mov     r1, #0x0
	add     r3, #0x64
	bl      Function_201d78c
	mov     r0, #0x0
	ldr     r1, [r6, #0x60]
	mov     r2, r0
	bl      Function_2002d7c
	ldr     r1, [sp, #0x1c]
	add     r0, #0xc
	add     r0, r1, r0
	lsl     r0, r0, #24
	asr     r0, r0, #24
	str     r0, [sp, #0x1c]
	b       branch_21d193e
@ 0x21d1914

.thumb
branch_21d1914: @ 21d1914 :thumb
	ldr     r1, [sp, #0x14]
	lsl     r2, r4, #2
	str     r1, [sp, #0x0]
	mov     r1, #0xff
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x0
	str     r0, [sp, #0xc]
	add     r2, r5, r2
	ldr     r6, [sp, #0x18]
	mov     r3, r1
	ldsb    r3, [r6, r3]
	mov     r6, #0x30
	mul     r6, r4
	add     r6, #0x64
	ldr     r0, [sp, #0x20]
	ldr     r2, [r2, #0x60]
	add     r3, r3, r6
	bl      Function_201d78c
.thumb
branch_21d193e: @ 21d193e :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	mov     r0, r5
	add     r0, #0x5c
	ldrh    r0, [r0, #0x0]
	cmp     r4, r0
	bcc     branch_21d18c8
.thumb
branch_21d194e: @ 21d194e :thumb
	ldr     r0, [sp, #0x10]
	add     r0, #0x3c
	str     r0, [sp, #0x10]
	bl      Function_201a954
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x21d195c

.word 0x21d1c04 @ 0x21d195c
.word 0x3040f @ 0x21d1960
.word 0x1020f @ 0x21d1964
.thumb
Function_21d1968: @ 21d1968 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	str     r1, [sp, #0x10]
	mov     r4, r2
	bl      Function_21d1a08
	cmp     r0, #0x0
	bne     branch_21d1988
	mov     r0, #0xab
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Call_RemoveTextInterpreterTaskFromTaskList
.thumb
branch_21d1988: @ 21d1988 :thumb
	ldr     r0, [r5, #0x1c]
	bl      Function_2027ac0
	mov     r7, r0
	mov     r0, r5
	add     r0, #0x4c
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x1
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #8
	bl      Function_2023790
	mov     r6, r0
	ldr     r0, [r5, #0x20]
	ldr     r1, [sp, #0x10]
	mov     r2, r6
	bl      Function_200b1b8_CallMsgDecrypt
	cmp     r4, #0x0
	bne     branch_21d19d6
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x48] @ 0x21d1a04, (=0x1020f)
	str     r7, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	str     r1, [sp, #0xc]
	add     r0, #0x4c
	mov     r1, #0x1
	mov     r2, r6
	mov     r3, #0x4
	bl      Function_201d78c
	mov     r1, #0xab
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	b       branch_21d19fa
@ 0x21d19d6

.thumb
branch_21d19d6: @ 21d19d6 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x21d1a04, (=0x1020f)
	mov     r2, r6
	str     r0, [sp, #0x8]
	mov     r0, r5
	str     r1, [sp, #0xc]
	add     r0, #0x4c
	mov     r1, #0x1
	mov     r3, #0x4
	bl      Function_201d78c
	add     r5, #0x4c
	mov     r0, r5
	bl      Function_201a9a4
.thumb
branch_21d19fa: @ 21d19fa :thumb
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d1a04

.word 0x1020f @ 0x21d1a04
.thumb
Function_21d1a08: @ 21d1a08 :thumb
	push    {r3,lr}
	mov     r1, #0xab
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_21d1a20
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d1a20

.thumb
branch_21d1a20: @ 21d1a20 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d1a24

.thumb
Function_21d1a24: @ 21d1a24 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	mov     r1, r5
	lsl     r0, r0, #27
	lsr     r2, r0, #29
	mov     r0, #0x54
	add     r1, #0x5c
	mul     r0, r2
	add     r4, r1, r0
	cmp     r2, #0x6
	beq     branch_21d1a94
	ldr     r0, [pc, #0xfc] @ 0x21d1b3c, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x10
	tst     r0, r1
	beq     branch_21d1a6a
	ldrh    r0, [r4, #0x2]
	ldrh    r1, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _s32_div_f
	strh    r1, [r4, #0x2]
	ldr     r1, [r5, #0x10]
	mov     r0, r5
	lsl     r1, r1, #27
	lsr     r1, r1, #29
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_21d17cc
	ldr     r0, [pc, #0xdc] @ 0x21d1b40, (=0x5dc)
	bl      Function_2005748
	b       branch_21d1a94
@ 0x21d1a6a

.thumb
branch_21d1a6a: @ 21d1a6a :thumb
	mov     r0, #0x20
	tst     r0, r1
	beq     branch_21d1a94
	ldrh    r1, [r4, #0x0]
	ldrh    r0, [r4, #0x2]
	add     r0, r0, r1
	.hword  0x1e40 @ sub r0, r0, #0x1
	blx     _s32_div_f
	strh    r1, [r4, #0x2]
	ldr     r1, [r5, #0x10]
	mov     r0, r5
	lsl     r1, r1, #27
	lsr     r1, r1, #29
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_21d17cc
	ldr     r0, [pc, #0xb0] @ 0x21d1b40, (=0x5dc)
	bl      Function_2005748
.thumb
branch_21d1a94: @ 21d1a94 :thumb
	ldr     r0, [pc, #0xa4] @ 0x21d1b3c, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x40
	tst     r0, r1
	beq     branch_21d1aea
	ldr     r0, [r5, #0x10]
	mov     r1, #0x7
	lsl     r0, r0, #27
	lsr     r0, r0, #29
	.hword  0x1d80 @ add r0, r0, #0x6
	blx     _u32_div_f
	ldr     r2, [r5, #0x10]
	mov     r0, #0x1c
	bic     r2, r0
	lsl     r0, r1, #29
	mov     r3, r2
	lsr     r0, r0, #27
	orr     r3, r0
	str     r3, [r5, #0x10]
	lsl     r3, r3, #27
	lsr     r3, r3, #29
	lsl     r3, r3, #4
	add     r3, #0x18
	ldr     r0, [r5, #0x14]
	mov     r1, #0x0
	mov     r2, #0x3
	neg     r3, r3
	bl      Function_201c63c
	ldr     r1, [r5, #0x10]
	mov     r0, r5
	lsl     r1, r1, #27
	lsr     r1, r1, #29
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	mov     r2, #0x1
	bl      Function_21d1be4
	ldr     r0, [pc, #0x5c] @ 0x21d1b40, (=0x5dc)
	bl      Function_2005748
	pop     {r3-r5,pc}
@ 0x21d1aea

.thumb
branch_21d1aea: @ 21d1aea :thumb
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_21d1b3a
	ldr     r0, [r5, #0x10]
	mov     r1, #0x7
	lsl     r0, r0, #27
	lsr     r0, r0, #29
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _u32_div_f
	ldr     r2, [r5, #0x10]
	mov     r0, #0x1c
	bic     r2, r0
	lsl     r0, r1, #29
	mov     r3, r2
	lsr     r0, r0, #27
	orr     r3, r0
	str     r3, [r5, #0x10]
	lsl     r3, r3, #27
	lsr     r3, r3, #29
	lsl     r3, r3, #4
	add     r3, #0x18
	ldr     r0, [r5, #0x14]
	mov     r1, #0x0
	mov     r2, #0x3
	neg     r3, r3
	bl      Function_201c63c
	ldr     r1, [r5, #0x10]
	mov     r0, r5
	lsl     r1, r1, #27
	lsr     r1, r1, #29
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	mov     r2, #0x1
	bl      Function_21d1be4
	ldr     r0, [pc, #0x8] @ 0x21d1b40, (=0x5dc)
	bl      Function_2005748
.thumb
branch_21d1b3a: @ 21d1b3a :thumb
	pop     {r3-r5,pc}
@ 0x21d1b3c

.word RAM_21bf67c @ 0x21d1b3c
.word 0x5dc @ 0x21d1b40
.thumb
Function_21d1b44: @ 21d1b44 :thumb
	push    {r3,r4}
	ldrh    r1, [r0, #0x18]
	lsl     r2, r1, #28
	lsr     r3, r2, #28
	mov     r2, r0
	add     r2, #0x5e
	ldrh    r2, [r2, #0x0]
	cmp     r3, r2
	bne     branch_21d1b98
	ldr     r3, [pc, #0x4c] @ 0x21d1ba4, (=0x106)
	lsl     r2, r1, #25
	lsr     r4, r2, #31
	ldrh    r2, [r0, r3]
	cmp     r4, r2
	bne     branch_21d1b98
	lsl     r2, r1, #24
	lsr     r4, r2, #31
	mov     r2, r3
	add     r2, #0x54
	ldrh    r2, [r0, r2]
	cmp     r4, r2
	bne     branch_21d1b98
	lsl     r2, r1, #26
	lsr     r4, r2, #30
	mov     r2, r0
	add     r2, #0xb2
	ldrh    r2, [r2, #0x0]
	cmp     r4, r2
	bne     branch_21d1b98
	lsl     r2, r1, #22
	lsr     r4, r2, #30
	mov     r2, r3
	add     r2, #0xa8
	ldrh    r2, [r0, r2]
	cmp     r4, r2
	bne     branch_21d1b98
	add     r3, #0xfc
	ldrh    r0, [r0, r3]
	lsl     r1, r1, #17
	lsr     r1, r1, #27
	cmp     r1, r0
	beq     branch_21d1b9e
.thumb
branch_21d1b98: @ 21d1b98 :thumb
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x21d1b9e

.thumb
branch_21d1b9e: @ 21d1b9e :thumb
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x21d1ba4

.word 0x106 @ 0x21d1ba4
.thumb
Function_21d1ba8: @ 21d1ba8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x14] @ 0x21d1bc8, (=0x21d1c14)
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x14]
	ldr     r2, [pc, #0x14] @ 0x21d1bcc, (=0x232)
	mov     r3, #0xe
	bl      Function_2002100
	mov     r1, #0xaa
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d1bc8

.word 0x21d1c14 @ 0x21d1bc8
.word 0x232 @ 0x21d1bcc
.thumb
Function_21d1bd0: @ 21d1bd0 :thumb
	mov     r1, r0
	mov     r0, #0xaa
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	ldr     r3, [pc, #0x4] @ 0x21d1be0, (=Function_2002114+1)
	ldr     r1, [r1, #0x0]
	bx      r3
@ 0x21d1bde

.align 2
.word Function_2002114+1 @ 0x21d1be0



.thumb
Function_21d1be4: @ 21d1be4 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d1bec, (=0x21d1c0c)
	ldrb    r1, [r3, r1]
	ldr     r3, [pc, #0x4] @ 0x21d1bf0, (=0x21d1969)
	bx      r3
@ 0x21d1bec

.word 0x21d1c0c @ 0x21d1bec
.word 0x21d1969 @ 0x21d1bf0



Unknown_21d1bf4: @ 0x21d1bf4
.incbin "./baserom/overlay/overlay_0074.bin", 0xe74, 0x21d1d20 - 0x21d1bf4


@end 0x21d1d20




