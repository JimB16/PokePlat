
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram93, "ax"


.thumb
.globl Function_93_21d0d80
Function_93_21d0d80: @ 21d0d80 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r2, #0x2
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x48
	lsl     r2, r2, #16
	bl      Function_2017fc8
	mov     r0, r5
	mov     r1, #0xa0
	mov     r2, #0x48
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r1, #0x0
	mov     r2, #0xa0
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, r5
	bl      LoadPtrToOverWorldDataIn18
	mov     r5, r0
	mov     r0, r4
	ldrb    r1, [r5, #0x0]
	add     r0, #0x9c
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x9d
	strb    r1, [r0, #0x0]
	mov     r0, #0x48
	bl      Function_20203ac
	str     r0, [r4, #0x0]
	bl      Function_21d0fa8
	mov     r0, r4
	bl      Function_21d102c
	add     r0, sp, #0xc
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x8]
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r1, [r4, #0x0]
	ldr     r2, [pc, #0x80] @ 0x21d0e64, (=0x21d14bc)
	str     r1, [sp, #0x8]
	ldr     r1, [pc, #0x80] @ 0x21d0e68, (=0x29aec1)
	ldr     r3, [pc, #0x84] @ 0x21d0e6c, (=0x5c1)
	bl      Function_20206d0
	ldr     r0, [r4, #0x0]
	bl      Function_20203d4
	mov     r4, #0x0
	mov     r7, #0x2
	mov     r6, #0x4
.thumb
branch_21d0df8: @ 21d0df8 :thumb
	ldr     r2, [r5, #0x4]
	mov     r0, #0x6
	mov     r1, r4
	mul     r1, r0
	add     r3, r2, r1
	ldsh    r1, [r2, r1]
	ldsh    r2, [r3, r7]
	ldsh    r3, [r3, r6]
	mov     r0, r4
	blx     Function_20af51c
	ldr     r2, [r5, #0x4]
	lsl     r1, r4, #1
	add     r1, r2, r1
	ldrh    r1, [r1, #0x18]
	mov     r0, r4
	blx     Function_20af558
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x4
	bcc     branch_21d0df8
	ldr     r2, [r5, #0x4]
	ldrh    r0, [r2, #0x20]
	ldrh    r1, [r2, #0x22]
	ldr     r2, [r2, #0x28]
	blx     Function_20af56c
	ldr     r2, [r5, #0x4]
	ldrh    r0, [r2, #0x24]
	ldrh    r1, [r2, #0x26]
	ldr     r2, [r2, #0x2c]
	blx     Function_20af590
	ldr     r3, [r5, #0x4]
	ldr     r0, [r3, #0x40]
	str     r0, [sp, #0x0]
	ldr     r0, [r3, #0x44]
	str     r0, [sp, #0x4]
	ldr     r0, [r3, #0x30]
	ldr     r1, [r3, #0x34]
	ldr     r2, [r3, #0x38]
	ldr     r3, [r3, #0x3c]
	blx     Function_20af5b4
	mov     r0, #0x0
	mov     r1, #0x48
	bl      Function_208c120
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d0e62

.align 2
.word 0x21d14bc @ 0x21d0e64
.word 0x29aec1 @ 0x21d0e68
.word 0x5c1 @ 0x21d0e6c



.thumb
.globl Function_93_21d0e70
Function_93_21d0e70: @ 21d0e70 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x3c
	ldr     r6, [pc, #0xd4] @ 0x21d0f4c, (=0x21d14cc)
	mov     r2, r0
	mov     r5, r1
	add     r4, sp, #0x18
	mov     r3, #0x4
branch_21d0e7e: @ 21d0e7e :thumb
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	.hword  0x1e5b @ sub r3, r3, #0x1
	bne     branch_21d0e7e
	ldr     r0, [r6, #0x0]
	add     r3, sp, #0xc
	str     r0, [r4, #0x0]
	ldr     r4, [pc, #0xc0] @ 0x21d0f50, (=Unkown_21d149c)
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x0
	str     r0, [r3, #0x0]
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, r2
	bl      LoadOverlayData1c
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d0eb4
	cmp     r0, #0x1
	beq     branch_21d0ec2
	b       branch_21d0f02
@ 0x21d0eb4

.thumb
branch_21d0eb4: @ 21d0eb4 :thumb
	ldr     r0, [pc, #0x9c] @ 0x21d0f54, (=0x6dc)
	bl      Function_2005748
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d0f02
@ 0x21d0ec2

.thumb
branch_21d0ec2: @ 21d0ec2 :thumb
	mov     r0, r4
	add     r0, #0x9d
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d0ef4
	mov     r0, r4
	add     r0, #0x80
	ldr     r2, [r0, #0x0]
	mov     r0, #0x1
	ldr     r1, [r2, #0x0]
	lsl     r0, r0, #12
	add     r1, r1, r0
	ldr     r0, [r2, #0x8]
	ldrh    r0, [r0, #0x4]
	lsl     r0, r0, #12
	cmp     r1, r0
	bne     branch_21d0f02
	mov     r1, r4
	mov     r0, #0x1
	add     r1, #0x9d
	strb    r0, [r1, #0x0]
	mov     r1, #0x48
	bl      Function_208c120
	b       branch_21d0f02
@ 0x21d0ef4

.thumb
branch_21d0ef4: @ 21d0ef4 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d0f02
	add     sp, #0x3c
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x21d0f02

.thumb
branch_21d0f02: @ 21d0f02 :thumb
	mov     r3, #0x1
	mov     r2, #0x0
	lsl     r3, r3, #12
.thumb
branch_21d0f08: @ 21d0f08 :thumb
	lsl     r0, r2, #2
	add     r0, r4, r0
	add     r0, #0x80
	ldr     r1, [r0, #0x0]
	ldr     r5, [r1, #0x8]
	ldr     r0, [r1, #0x0]
	ldrh    r5, [r5, #0x4]
	add     r0, r0, r3
	lsl     r5, r5, #12
	cmp     r0, r5
	bge     branch_21d0f20
	str     r0, [r1, #0x0]
.thumb
branch_21d0f20: @ 21d0f20 :thumb
	add     r0, r2, #0x1
	lsl     r0, r0, #24
	lsr     r2, r0, #24
	cmp     r2, #0x4
	bcc     branch_21d0f08
	bl      Call_G3X_Reset
	bl      Function_20203ec
	add     r0, r4, #0x4
	add     r1, sp, #0x0
	add     r2, sp, #0x18
	add     r3, sp, #0xc
	bl      Function_201ca74
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_20241bc
	mov     r0, #0x0
	add     sp, #0x3c
	pop     {r3-r6,pc}
@ 0x21d0f4c

.word 0x21d14cc @ 0x21d0f4c
.word Unkown_21d149c @ 0x21d0f50
.word 0x6dc @ 0x21d0f54



.thumb
.globl Function_93_21d0f58
Function_93_21d0f58: @ 21d0f58 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	bl      LoadOverlayData1c
	mov     r6, r0
	mov     r7, r6
	mov     r4, #0x0
	add     r7, #0x70
branch_21d0f68: @ 21d0f68 :thumb
	lsl     r0, r4, #2
	add     r5, r6, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	mov     r0, r7
	blx     Function_20b2cd8
	ldr     r0, [r5, #0x60]
	bl      free
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x4
	bcc     branch_21d0f68
	ldr     r0, [r6, #0x5c]
	bl      free
	ldr     r0, [r6, #0x0]
	bl      Call_free5
	ldr     r0, [sp, #0x0]
	bl      FreeSomeDataAndStore0InOverlayData1c
	bl      Function_201cba0
	mov     r0, #0x48
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d0fa8

.thumb
Function_21d0fa8: @ 21d0fa8 :thumb
	push    {r3,lr}
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x30] @ 0x21d0ff8, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x30] @ 0x21d0ffc, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	bl      Function_21d100c
	mov     r0, #0x48
	bl      Function_201caf4
	ldr     r2, [pc, #0x20] @ 0x21d1000, (=0x4000060)
	ldr     r0, [pc, #0x24] @ 0x21d1004, (=0xffffcfff)
	ldrh    r1, [r2, #0x0]
	and     r1, r0
	mov     r0, #0x20
	orr     r0, r1
	strh    r0, [r2, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x21d1008, (=0x21d14a8)
	blx     SetEdgeTable
	bl      Function_201ffe8
	pop     {r3,pc}
@ 0x21d0ff6


.align 2


.word 0xffffe0ff @ 0x21d0ff8
.word 0x4001000 @ 0x21d0ffc
.word 0x4000060 @ 0x21d1000
.word 0xffffcfff @ 0x21d1004
.word 0x21d14a8 @ 0x21d1008
.thumb
Function_21d100c: @ 21d100c :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d1028, (=0x21d14f0)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d1016: @ 21d1016 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1016
	add     r0, sp, #0x0
	bl      GX_SetBanks
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d1028

.word 0x21d14f0 @ 0x21d1028



.thumb
Function_21d102c: @ 21d102c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0

	mov     r0, #ShipDemo_Narc
	mov     r1, #0x48
	bl      LoadFromNARC_8
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x70
	mov     r1, #0x48
	mov     r2, #0x4
	bl      Function_20182cc
	mov     r1, r5
	add     r1, #0x9c
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xa
	ldr     r0, [sp, #0x0]
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0xc0] @ 0x21d1118, (=0x21d15a0)
	mov     r2, #0x48
	ldrh    r1, [r1, r3]
	bl      Function_2006cb8_LoadFileInMemory
	mov     r1, r5
	mov     r2, r5
	str     r0, [r5, #0x5c]
	add     r0, r5, #0x4
	add     r1, #0x58
	add     r2, #0x5c
	bl      Function_201ca3c
	ldr     r0, [r5, #0x5c]
	blx     Function_20b3c1c_GetTexOffsets
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x58]
	mov     r1, #0x0
	mov     r2, #0x40
	blx     Function_20b2ce4
	ldr     r0, [r5, #0x58]
	mov     r1, #0x0
	mov     r2, #0x80
	blx     Function_20b2ce4
	mov     r2, #0x2
	ldr     r0, [r5, #0x58]
	mov     r1, #0x0
	lsl     r2, r2, #8
	blx     Function_20b2ce4
	mov     r2, #0x1
	ldr     r0, [r5, #0x58]
	mov     r1, #0x0
	lsl     r2, r2, #10
	blx     Function_20b2ce4
	mov     r0, r5
	str     r0, [sp, #0x8]
	add     r0, #0x70
	mov     r6, #0x0
	str     r0, [sp, #0x8]
.thumb
branch_21d10ae: @ 21d10ae :thumb
	mov     r1, r5
	add     r1, #0x9c
	ldrb    r3, [r1, #0x0]
	lsl     r0, r6, #2
	add     r4, r5, r0
	mov     r2, r3
	mov     r1, #0xa
	mul     r2, r1
	ldr     r3, [pc, #0x58] @ 0x21d1118, (=0x21d15a0)
	lsl     r1, r6, #1
	add     r2, r3, r2
	add     r1, r1, r2
	ldrh    r1, [r1, #0x2]
	ldr     r0, [sp, #0x0]
	mov     r2, #0x48
	bl      Function_2006cb8_LoadFileInMemory
	str     r0, [r4, #0x60]
	mov     r1, #0x0
	blx     Function_20b3c5c
	mov     r7, r0
	ldr     r0, [sp, #0x8]
	ldr     r2, [r5, #0x58]
	mov     r1, r7
	blx     Function_20b2cb4
	mov     r1, r4
	add     r1, #0x80
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r2, [r5, #0x58]
	ldr     r3, [sp, #0x4]
	mov     r1, r7
	blx     Function_20ae4f0
	add     r4, #0x80
	ldr     r1, [r4, #0x0]
	add     r0, r5, #0x4
	blx     Function_20ae77c
	add     r0, r6, #0x1
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	cmp     r6, #0x4
	bcc     branch_21d10ae
	ldr     r0, [sp, #0x0]
	bl      Call_FS_CloseFile
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d1118

.word 0x21d15a0 @ 0x21d1118



.thumb
.globl Function_93_21d111c
Function_93_21d111c: @ 21d111c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r2, #0x2
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x48
	lsl     r2, r2, #16
	bl      Function_2017fc8
	mov     r0, r5
	mov     r1, #0x98
	mov     r2, #0x48
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r1, #0x0
	mov     r2, #0x98
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, r5
	bl      LoadPtrToOverWorldDataIn18
	mov     r5, r0
	mov     r0, r4
	ldrb    r1, [r5, #0x0]
	add     r0, #0x94
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x95
	strb    r1, [r0, #0x0]
	mov     r0, #0x48
	bl      Function_20203ac
	str     r0, [r4, #0x0]
	bl      Function_21d133c
	mov     r0, r4
	bl      Function_21d13c0
	add     r0, sp, #0xc
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x8]
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r1, [r4, #0x0]
	ldr     r2, [pc, #0x80] @ 0x21d1200, (=0x21d1538)
	str     r1, [sp, #0x8]
	ldr     r1, [pc, #0x80] @ 0x21d1204, (=0x29aec1)
	ldr     r3, [pc, #0x84] @ 0x21d1208, (=0x5c1)
	bl      Function_20206d0
	ldr     r0, [r4, #0x0]
	bl      Function_20203d4
	mov     r4, #0x0
	mov     r7, #0x2
	mov     r6, #0x4
.thumb
branch_21d1194: @ 21d1194 :thumb
	ldr     r2, [r5, #0x4]
	mov     r0, #0x6
	mov     r1, r4
	mul     r1, r0
	add     r3, r2, r1
	ldsh    r1, [r2, r1]
	ldsh    r2, [r3, r7]
	ldsh    r3, [r3, r6]
	mov     r0, r4
	blx     Function_20af51c
	ldr     r2, [r5, #0x4]
	lsl     r1, r4, #1
	add     r1, r2, r1
	ldrh    r1, [r1, #0x18]
	mov     r0, r4
	blx     Function_20af558
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x4
	bcc     branch_21d1194
	ldr     r2, [r5, #0x4]
	ldrh    r0, [r2, #0x20]
	ldrh    r1, [r2, #0x22]
	ldr     r2, [r2, #0x28]
	blx     Function_20af56c
	ldr     r2, [r5, #0x4]
	ldrh    r0, [r2, #0x24]
	ldrh    r1, [r2, #0x26]
	ldr     r2, [r2, #0x2c]
	blx     Function_20af590
	ldr     r3, [r5, #0x4]
	ldr     r0, [r3, #0x40]
	str     r0, [sp, #0x0]
	ldr     r0, [r3, #0x44]
	str     r0, [sp, #0x4]
	ldr     r0, [r3, #0x30]
	ldr     r1, [r3, #0x34]
	ldr     r2, [r3, #0x38]
	ldr     r3, [r3, #0x3c]
	blx     Function_20af5b4
	mov     r0, #0x0
	mov     r1, #0x48
	bl      Function_208c120
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d11fe

.align 2
.word 0x21d1538 @ 0x21d1200
.word 0x29aec1 @ 0x21d1204
.word 0x5c1 @ 0x21d1208



.thumb
.globl Function_93_21d120c
Function_93_21d120c: @ 21d120c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x3c
	ldr     r6, [pc, #0xd0] @ 0x21d12e4, (=0x21d1548)
	mov     r2, r0
	mov     r5, r1
	add     r4, sp, #0x18
	mov     r3, #0x4
branch_21d121a: @ 21d121a :thumb
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	.hword  0x1e5b @ sub r3, r3, #0x1
	bne     branch_21d121a
	ldr     r0, [r6, #0x0]
	add     r3, sp, #0xc
	str     r0, [r4, #0x0]
	ldr     r4, [pc, #0xbc] @ 0x21d12e8, (=0x21d1518)
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x0
	str     r0, [r3, #0x0]
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, r2
	bl      LoadOverlayData1c
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1250
	cmp     r0, #0x1
	beq     branch_21d125e
	b       branch_21d129a
@ 0x21d1250

.thumb
branch_21d1250: @ 21d1250 :thumb
	ldr     r0, [pc, #0x98] @ 0x21d12ec, (=0x6dc)
	bl      Function_2005748
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d129a
@ 0x21d125e

.thumb
branch_21d125e: @ 21d125e :thumb
	mov     r0, r4
	add     r0, #0x95
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d128c
	ldr     r2, [r4, #0x7c]
	mov     r0, #0x1
	ldr     r1, [r2, #0x0]
	lsl     r0, r0, #12
	add     r1, r1, r0
	ldr     r0, [r2, #0x8]
	ldrh    r0, [r0, #0x4]
	lsl     r0, r0, #12
	cmp     r1, r0
	bne     branch_21d129a
	mov     r1, r4
	mov     r0, #0x1
	add     r1, #0x95
	strb    r0, [r1, #0x0]
	mov     r1, #0x48
	bl      Function_208c120
	b       branch_21d129a
@ 0x21d128c

.thumb
branch_21d128c: @ 21d128c :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d129a
	add     sp, #0x3c
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x21d129a

.thumb
branch_21d129a: @ 21d129a :thumb
	mov     r3, #0x1
	mov     r2, #0x0
	lsl     r3, r3, #12
.thumb
branch_21d12a0: @ 21d12a0 :thumb
	lsl     r0, r2, #2
	add     r0, r4, r0
	ldr     r1, [r0, #0x7c]
	ldr     r5, [r1, #0x8]
	ldr     r0, [r1, #0x0]
	ldrh    r5, [r5, #0x4]
	add     r0, r0, r3
	lsl     r5, r5, #12
	cmp     r0, r5
	bge     branch_21d12b6
	str     r0, [r1, #0x0]
.thumb
branch_21d12b6: @ 21d12b6 :thumb
	add     r0, r2, #0x1
	lsl     r0, r0, #24
	lsr     r2, r0, #24
	cmp     r2, #0x3
	bcc     branch_21d12a0
	bl      Call_G3X_Reset
	bl      Function_20203ec
	add     r0, r4, #0x4
	add     r1, sp, #0x0
	add     r2, sp, #0x18
	add     r3, sp, #0xc
	bl      Function_201ca74
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_20241bc
	mov     r0, #0x0
	add     sp, #0x3c
	pop     {r3-r6,pc}
@ 0x21d12e2

.align 2
.word 0x21d1548 @ 0x21d12e4
.word 0x21d1518 @ 0x21d12e8
.word 0x6dc @ 0x21d12ec



.thumb
.globl Function_93_21d12f0
Function_93_21d12f0: @ 21d12f0 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	bl      LoadOverlayData1c
	mov     r6, r0
	mov     r7, r6
	mov     r4, #0x0
	add     r7, #0x6c
branch_21d1300: @ 21d1300 :thumb
	lsl     r0, r4, #2
	add     r5, r6, r0
	ldr     r1, [r5, #0x7c]
	mov     r0, r7
	blx     Function_20b2cd8
	ldr     r0, [r5, #0x60]
	bl      free
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x3
	bcc     branch_21d1300
	ldr     r0, [r6, #0x5c]
	bl      free
	ldr     r0, [r6, #0x0]
	bl      Call_free5
	ldr     r0, [sp, #0x0]
	bl      FreeSomeDataAndStore0InOverlayData1c
	bl      Function_201cba0
	mov     r0, #0x48
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d133c

.thumb
Function_21d133c: @ 21d133c :thumb
	push    {r3,lr}
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x30] @ 0x21d138c, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x30] @ 0x21d1390, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	bl      Function_21d13a0
	mov     r0, #0x48
	bl      Function_201caf4
	ldr     r2, [pc, #0x20] @ 0x21d1394, (=0x4000060)
	ldr     r0, [pc, #0x24] @ 0x21d1398, (=0xffffcfff)
	ldrh    r1, [r2, #0x0]
	and     r1, r0
	mov     r0, #0x20
	orr     r0, r1
	strh    r0, [r2, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x21d139c, (=0x21d1524)
	blx     SetEdgeTable
	bl      Function_201ffe8
	pop     {r3,pc}
@ 0x21d138a


.align 2


.word 0xffffe0ff @ 0x21d138c
.word 0x4001000 @ 0x21d1390
.word 0x4000060 @ 0x21d1394
.word 0xffffcfff @ 0x21d1398
.word 0x21d1524 @ 0x21d139c
.thumb
Function_21d13a0: @ 21d13a0 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d13bc, (=0x21d156c)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d13aa: @ 21d13aa :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d13aa
	add     r0, sp, #0x0
	bl      GX_SetBanks
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d13bc

.word 0x21d156c @ 0x21d13bc



.thumb
Function_21d13c0: @ 21d13c0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0

	mov     r0, #ShipDemoPl_Narc
	mov     r1, #0x48
	bl      LoadFromNARC_8
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x6c
	mov     r1, #0x48
	mov     r2, #0x4
	bl      Function_20182cc
	mov     r1, r5
	add     r1, #0x94
	ldrb    r1, [r1, #0x0]
	ldr     r0, [sp, #0x0]
	lsl     r2, r1, #3
	ldr     r1, [pc, #0xb0] @ 0x21d1498, (=0x21d15c8)
	ldrh    r1, [r1, r2]
	mov     r2, #0x48
	bl      Function_2006cb8_LoadFileInMemory
	mov     r1, r5
	mov     r2, r5
	str     r0, [r5, #0x5c]
	add     r0, r5, #0x4
	add     r1, #0x58
	add     r2, #0x5c
	bl      Function_201ca3c
	ldr     r0, [r5, #0x5c]
	blx     Function_20b3c1c_GetTexOffsets
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x58]
	mov     r1, #0x0
	mov     r2, #0x40
	blx     Function_20b2ce4
	ldr     r0, [r5, #0x58]
	mov     r1, #0x0
	mov     r2, #0x80
	blx     Function_20b2ce4
	mov     r2, #0x2
	ldr     r0, [r5, #0x58]
	mov     r1, #0x0
	lsl     r2, r2, #8
	blx     Function_20b2ce4
	mov     r2, #0x1
	ldr     r0, [r5, #0x58]
	mov     r1, #0x0
	lsl     r2, r2, #10
	blx     Function_20b2ce4
	mov     r0, r5
	str     r0, [sp, #0x8]
	add     r0, #0x6c
	mov     r4, #0x0
	str     r0, [sp, #0x8]
.thumb
branch_21d143e: @ 21d143e :thumb
	mov     r1, r5
	add     r1, #0x94
	ldrb    r1, [r1, #0x0]
	lsl     r0, r4, #2
	add     r6, r5, r0
	lsl     r3, r1, #3
	ldr     r1, [pc, #0x4c] @ 0x21d1498, (=0x21d15c8)
	lsl     r2, r4, #1
	add     r1, r1, r3
	add     r1, r2, r1
	ldrh    r1, [r1, #0x2]
	ldr     r0, [sp, #0x0]
	mov     r2, #0x48
	bl      Function_2006cb8_LoadFileInMemory
	str     r0, [r6, #0x60]
	mov     r1, #0x0
	blx     Function_20b3c5c
	mov     r7, r0
	ldr     r0, [sp, #0x8]
	ldr     r2, [r5, #0x58]
	mov     r1, r7
	blx     Function_20b2cb4
	str     r0, [r6, #0x7c]
	ldr     r2, [r5, #0x58]
	ldr     r3, [sp, #0x4]
	mov     r1, r7
	blx     Function_20ae4f0
	ldr     r1, [r6, #0x7c]
	add     r0, r5, #0x4
	blx     Function_20ae77c
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x3
	bcc     branch_21d143e
	ldr     r0, [sp, #0x0]
	bl      Call_FS_CloseFile
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d1498

.word 0x21d15c8 @ 0x21d1498



Unkown_21d149c: @ 0x21d149c
.incbin "./baserom/overlay/overlay_0093.bin", 0x71c, 0x21d1600 - 0x21d149c


@end 0x21d1600




