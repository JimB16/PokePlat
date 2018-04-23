
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram59, "ax"


.thumb
.globl Function_59_21d0d80
Function_59_21d0d80: @ 21d0d80 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r7, r0
	cmp     r1, #0x0
	beq     branch_21d0d96
	cmp     r1, #0x1
	bne     branch_21d0d94
	b       branch_21d0ed0

branch_21d0d94: @ 21d0d94 :thumb
	b       branch_21d0ede

branch_21d0d96: @ 21d0d96 :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x130] @ 0x21d0ee4, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x130] @ 0x21d0ee8, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r2, #0x41
	mov     r0, #0x3
	mov     r1, #0x33
	lsl     r2, r2, #12
	bl      Function_2017fc8

	mov     r0, #Record_Narc
	mov     r1, #0x33
	bl      LoadFromNARC_8
	mov     r6, r0
	ldr     r1, [pc, #0x114] @ 0x21d0eec, (=0x4ab4)
	mov     r0, r7
	mov     r2, #0x33
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	ldr     r2, [pc, #0x10c] @ 0x21d0eec, (=0x4ab4)
	mov     r1, #0x0
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, #0x33
	bl      Function_2018340
	str     r0, [r4, #0x0]
	mov     r0, r7
	bl      LoadPtrToOverWorldDataIn18
	str     r0, [r4, #0x8]
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0xf4] @ 0x21d0ef0, (=0x4a38)
	str     r1, [r4, r0]
	mov     r0, #0x33
	bl      Function_200b358
	str     r0, [r4, #0x24]
	ldr     r2, [pc, #0xec] @ 0x21d0ef4, (=0x215)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x33
	bl      LoadFromNARC_9
	str     r0, [r4, #0x28]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      Function_2017dd4
	bl      Function_21d1128
	ldr     r0, [r4, #0x0]
	bl      Function_21d1148
	mov     r0, #0x0
	bl      Function_200f338
	mov     r0, #0x1
	bl      Function_200f338
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x33
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x11
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	mov     r0, r4
	mov     r1, r6
	bl      Function_21d1388
	ldr     r0, [pc, #0xa4] @ 0x21d0ef8, (=0x21d1101)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	mov     r0, r4
	mov     r1, r6
	bl      Function_21d1250
	bl      Function_21d1474
	mov     r0, r4
	mov     r1, r6
	bl      Function_21d14a4
	mov     r0, r4
	bl      Function_21d1598
	mov     r0, r4
	mov     r1, r7
	bl      Function_21d16a0
	mov     r1, #0x0
	mov     r0, #0x34
	mov     r2, r1
	bl      Function_2004550
	mov     r0, r4
	bl      Function_20961e8
	bl      Function_2037878
	mov     r0, #0x3
	bl      Function_2037b58
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d0ea4
	mov     r0, #0x2
	bl      Function_205bea8
branch_21d0ea4: @ 21d0ea4 :thumb
	bl      Function_2039734
	ldr     r0, [pc, #0x44] @ 0x21d0ef0, (=0x4a38)
	mov     r1, #0xed
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	bl      Function_21d30e0
	ldr     r0, [pc, #0x44] @ 0x21d0efc, (=0x21d109d)
	mov     r1, r4
	mov     r2, #0x5
	bl      AddTaskToTaskList2
	str     r0, [r4, #0x20]
	mov     r0, r6
	bl      Call_FS_CloseFile
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d0ede

branch_21d0ed0: @ 21d0ed0 :thumb
	bl      LoadOverlayData1c
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}

branch_21d0ede: @ 21d0ede :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d0ee4

.word 0xffffe0ff @ 0x21d0ee4
.word 0x4001000 @ 0x21d0ee8
.word 0x4ab4 @ 0x21d0eec
.word 0x4a38 @ 0x21d0ef0
.word 0x215 @ 0x21d0ef4
.word 0x21d1101 @ 0x21d0ef8
.word 0x21d109d @ 0x21d0efc



.thumb
.globl Function_59_21d0f00
Function_59_21d0f00: @ 21d0f00 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      LoadOverlayData1c
	mov     r4, r0
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d0f26
	ldr     r0, [pc, #0xd0] @ 0x21d0fe4, (=0x4a50)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d0f26
	bl      Function_20318ec
	ldr     r1, [pc, #0xc4] @ 0x21d0fe4, (=0x4a50)
	ldr     r2, [r4, r1]
	and     r0, r2
	str     r0, [r4, r1]
.thumb
branch_21d0f26: @ 21d0f26 :thumb
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x3
	bhi     branch_21d0fda
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d0f38

Jumppoints_21d0f38:
.hword branch_21d0f40 - Jumppoints_21d0f38 - 2
.hword branch_21d0f68 - Jumppoints_21d0f38 - 2
.hword branch_21d0fb6 - Jumppoints_21d0f38 - 2
.hword branch_21d0fce - Jumppoints_21d0f38 - 2
.thumb
branch_21d0f40: @ 21d0f40 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d0fda
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_21d0fda
	bl      Function_21d2528
	cmp     r0, #0x2
	ble     branch_21d0fda
	mov     r1, #0x0
	mov     r0, #0x72
	mov     r2, r1
	bl      Function_20359dc
	b       branch_21d0fda
@ 0x21d0f68

.thumb
branch_21d0f68: @ 21d0f68 :thumb
	mov     r0, #0xd1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	lsl     r2, r0, #2
	ldr     r0, [pc, #0x74] @ 0x21d0fe8, (=0x21d3480)
	ldr     r2, [r0, r2]
	cmp     r2, #0x0
	beq     branch_21d0f7e
	mov     r0, r4
	blx     r2
	str     r0, [r5, #0x0]
.thumb
branch_21d0f7e: @ 21d0f7e :thumb
	ldr     r0, [pc, #0x6c] @ 0x21d0fec, (=0x4a40)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d0f96
	mov     r0, #0xa6
	lsl     r0, r0, #2
	ldr     r2, [pc, #0x64] @ 0x21d0ff0, (=0x10300)
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r3, r4
	bl      Function_21d2418
.thumb
branch_21d0f96: @ 21d0f96 :thumb
	mov     r0, r4
	bl      Function_21d26e8
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d0fda
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d292c
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x1
	bne     branch_21d0fda
	str     r0, [r5, #0x0]
	b       branch_21d0fda
@ 0x21d0fb6

.thumb
branch_21d0fb6: @ 21d0fb6 :thumb
	mov     r0, #0xd1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	lsl     r2, r0, #2
	ldr     r0, [pc, #0x28] @ 0x21d0fe8, (=0x21d3480)
	ldr     r2, [r0, r2]
	cmp     r2, #0x0
	beq     branch_21d0fda
	mov     r0, r4
	blx     r2
	str     r0, [r5, #0x0]
	b       branch_21d0fda
@ 0x21d0fce

.thumb
branch_21d0fce: @ 21d0fce :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d0fda
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0fda

.thumb
branch_21d0fda: @ 21d0fda :thumb
	ldr     r0, [r4, #0x50]
	bl      Function_20219f8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d0fe4

.word 0x4a50 @ 0x21d0fe4
.word 0x21d3480 @ 0x21d0fe8
.word 0x4a40 @ 0x21d0fec
.word 0x10300 @ 0x21d0ff0



.thumb
.globl Function_59_21d0ff4
Function_59_21d0ff4: @ 21d0ff4 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	bl      LoadOverlayData1c
	mov     r6, r0
	ldr     r0, [r6, #0x20]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0x6b
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_200a4e4
	mov     r0, #0x1b
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	bl      Function_200a6dc
	mov     r7, #0x5f
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_21d1020: @ 21d1020 :thumb
	ldr     r0, [r5, r7]
	bl      Function_2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_21d1020
	ldr     r0, [r6, #0x50]
	bl      Function_2021964
	bl      Function_200a878
	bl      Function_201e958
	bl      Function_201f8b4
	mov     r0, r6
	bl      Function_21d17c8
	ldr     r0, [r6, #0x0]
	bl      Function_21d1354
	mov     r0, #0x2
	bl      Function_2037b58
	bl      Function_2036ac4
	ldr     r0, [r6, #0x8]
	ldr     r0, [r0, #0x4]
	bl      Function_205c2c8
	ldr     r0, [r6, #0x28]
	bl      Function_200b190
	ldr     r0, [r6, #0x24]
	bl      Function_200b3f0
	mov     r0, r6
	bl      Function_21d131c
	ldr     r0, [sp, #0x0]
	bl      FreeSomeDataAndStore0InOverlayData1c
	ldr     r2, [pc, #0x20] @ 0x21d1098, (=0x4000304)
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	orr     r0, r1
	strh    r0, [r2, #0x0]
	mov     r0, #0x0
	bl      Function_205bea8
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x33
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d1098

.word 0x4000304 @ 0x21d1098
.thumb
Function_21d109c: @ 21d109c :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0xc]
	add     r1, #0xc
	cmp     r0, #0x0
	beq     branch_21d10f6
	ldr     r0, [r1, #0x4]
	ldr     r3, [r1, #0x8]
	lsl     r2, r0, #1
	ldr     r0, [pc, #0x48] @ 0x21d10f8, (=0x21d329a)
	ldrb    r0, [r0, r2]
	cmp     r3, r0
	ble     branch_21d10e6
	mov     r0, #0x0
	str     r0, [r1, #0x8]
	ldr     r2, [r1, #0x4]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r1, #0x4]
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x38] @ 0x21d10fc, (=0x21d329b)
	ldrb    r2, [r2, r3]
	cmp     r2, #0xff
	bne     branch_21d10cc
	str     r0, [r1, #0x4]
.thumb
branch_21d10cc: @ 21d10cc :thumb
	ldr     r0, [r1, #0x10]
	ldr     r1, [r1, #0x4]
	ldr     r0, [r0, #0xc]
	lsl     r2, r1, #1
	ldr     r1, [pc, #0x24] @ 0x21d10fc, (=0x21d329b)
	ldrb    r1, [r1, r2]
	mov     r2, #0x20
	lsl     r1, r1, #5
	add     r0, r0, r1
	mov     r1, #0x0
	blx     GX_LoadOBJPltt
	b       branch_21d10ec
@ 0x21d10e6

.thumb
branch_21d10e6: @ 21d10e6 :thumb
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
.thumb
branch_21d10ec: @ 21d10ec :thumb
	mov     r0, #0xe9
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_21d23b0
.thumb
branch_21d10f6: @ 21d10f6 :thumb
	pop     {r4,pc}
@ 0x21d10f8

.word 0x21d329a @ 0x21d10f8
.word 0x21d329b @ 0x21d10fc
.thumb
Function_21d1100: @ 21d1100 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_201dcac
	bl      Function_200a858
	mov     r0, r4
	bl      Function_201c2b8
	ldr     r3, [pc, #0xc] @ 0x21d1120, (=0x27e0000)
	ldr     r1, [pc, #0xc] @ 0x21d1124, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x21d1120

.word 0x27e0000 @ 0x21d1120
.word 0x3ff8 @ 0x21d1124
.thumb
Function_21d1128: @ 21d1128 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d1144, (=0x21d3368)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d1132: @ 21d1132 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1132
	add     r0, sp, #0x0
	bl      GX_SetBanks
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d1144

.word 0x21d3368 @ 0x21d1144
.thumb
Function_21d1148: @ 21d1148 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x9c
	ldr     r5, [pc, #0xe8] @ 0x21d1238, (=0x21d32a4)
	add     r3, sp, #0x8c
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      SetGraphicsModes
	ldr     r5, [pc, #0xd8] @ 0x21d123c, (=0x21d3330)
	add     r3, sp, #0x70
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
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r5, [pc, #0xb4] @ 0x21d1240, (=0x21d334c)
	add     r3, sp, #0x54
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
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2019ebc
	ldr     r5, [pc, #0x90] @ 0x21d1244, (=0x21d32dc)
	add     r3, sp, #0x38
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
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	ldr     r5, [pc, #0x74] @ 0x21d1248, (=0x21d32f8)
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
	mov     r0, r4
	mov     r3, r1
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019ebc
	ldr     r5, [pc, #0x50] @ 0x21d124c, (=0x21d3314)
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x33
	bl      Function_2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x33
	bl      Function_2019690
	add     sp, #0x9c
	pop     {r4,r5,pc}
@ 0x21d1236


.align 2


.word 0x21d32a4 @ 0x21d1238
.word 0x21d3330 @ 0x21d123c
.word 0x21d334c @ 0x21d1240
.word 0x21d32dc @ 0x21d1244
.word 0x21d32f8 @ 0x21d1248
.word 0x21d3314 @ 0x21d124c
.thumb
Function_21d1250: @ 21d1250 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r7, #0x0
	mov     r6, r0
	mov     r4, r0
	mov     r5, r0
.thumb
branch_21d1260: @ 21d1260 :thumb
	mov     r0, #0x8
	mov     r1, #0x33
	bl      Function_2023790
	str     r0, [r6, #0x2c]
	mov     r0, #0xd9
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x98] @ 0x21d1310, (=0x4a64)
	.hword  0x1c7f @ add r7, r7, #0x1
	str     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	ldr     r0, [pc, #0x90] @ 0x21d1314, (=0x4a6c)
	add     r4, #0x8
	str     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	mov     r0, #0xe3
	lsl     r0, r0, #2
	str     r1, [r6, r0]
	.hword  0x1d36 @ add r6, r6, #0x4
	add     r5, #0x10
	cmp     r7, #0x5
	blt     branch_21d1260
	mov     r0, #0xb4
	mov     r1, #0x33
	bl      Function_2023790
	ldr     r1, [sp, #0x0]
	str     r0, [r1, #0x44]
	mov     r0, #0x28
	mov     r1, #0x33
	bl      Function_2023790
	ldr     r1, [sp, #0x0]
	mov     r2, #0x0
	str     r0, [r1, #0x48]
	mov     r1, #0xd1
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	str     r2, [r0, r1]
	ldr     r2, [sp, #0x0]
	ldr     r0, [r0, #0x28]
	ldr     r2, [r2, #0x48]
	mov     r1, #0x11
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      Function_21d27fc
	mov     r0, #0x33
	bl      Function_205ca4c
	mov     r2, #0xea
	ldr     r1, [sp, #0x0]
	lsl     r2, r2, #2
	str     r0, [r1, r2]
	ldr     r2, [sp, #0x0]
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	str     r1, [r0, #0x14]
	str     r1, [r0, #0x10]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	add     r2, #0x1c
	mov     r3, #0x33
	bl      Function_20071ec
	ldr     r1, [sp, #0x0]
	mov     r2, #0x32
	str     r0, [r1, #0x18]
	ldr     r1, [pc, #0x1c] @ 0x21d1318, (=0x4a44)
	ldr     r0, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [r0, r1]
	lsl     r2, r2, #4
	str     r3, [r0, r2]
	mov     r2, #0x2
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r2, [r0, r1]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d1310

.word 0x4a64 @ 0x21d1310
.word 0x4a6c @ 0x21d1314
.word 0x4a44 @ 0x21d1318
.thumb
Function_21d131c: @ 21d131c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      Function_21d28a4
	ldr     r0, [r6, #0x18]
	bl      free
	mov     r0, #0xea
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      free
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_21d1338: @ 21d1338 :thumb
	ldr     r0, [r5, #0x2c]
	bl      Function_20237bc_FreeMsg
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x5
	blt     branch_21d1338
	ldr     r0, [r6, #0x48]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r6, #0x44]
	bl      Function_20237bc_FreeMsg
	pop     {r4-r6,pc}
@ 0x21d1354

.thumb
Function_21d1354: @ 21d1354 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x6
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019044
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x21d1386


.align 2, 0


.thumb
Function_21d1388: @ 21d1388 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x2
	ldr     r4, [r5, #0x0]
	lsl     r0, r0, #8
	mov     r6, r1
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x33
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r1
	mov     r3, r1
	bl      Function_2007130

	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x33
	str     r0, [sp, #0x4]
	mov     r0, #0xc @ Poketch_Narc
	mov     r1, r0
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Call_LoadFromNARC_RLCN
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x33
	bl      LoadFromNARC_PlFont2
	mov     r1, #0x1a
	mov     r0, #0x4
	lsl     r1, r1, #4
	mov     r2, #0x33
	bl      LoadFromNARC_PlFont2
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x33
	str     r0, [sp, #0xc]
	mov     r0, #0xc
	mov     r1, #0xa
	mov     r2, r4
	mov     r3, #0x6
	bl      LoadFromNARC_RGCN
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x33
	str     r0, [sp, #0xc]
	mov     r0, #0xc
	mov     r1, #0xb
	mov     r2, r4
	mov     r3, #0x6
	bl      LoadFromNARC_RCSN
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x33
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0x2
	mov     r2, r4
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x33
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0x3
	mov     r2, r4
	bl      Function_200710c
	ldr     r0, [r5, #0x8]
	ldr     r0, [r0, #0x8]
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x33
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x33
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200daa4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d1474

.thumb
Function_21d1474: @ 21d1474 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x24] @ 0x21d14a0, (=0x21d32b4)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      Function_201e86c
	mov     r0, #0x14
	mov     r1, #0x33
	bl      Function_201f834
	bl      Function_201e994
	bl      Function_201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d14a0

.word 0x21d32b4 @ 0x21d14a0
.thumb
Function_21d14a4: @ 21d14a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	str     r1, [sp, #0x14]
	blx     Function_20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7e
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x33
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      Function_200a784
	mov     r1, r6
	mov     r0, #0x1e
	add     r1, #0x54
	mov     r2, #0x33
	bl      Function_20095c4
	str     r0, [r6, #0x50]
	mov     r0, r6
	mov     r2, #0x1
	add     r0, #0x54
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      Function_200964c
	mov     r7, #0x5f
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_21d14ec: @ 21d14ec :thumb
	mov     r0, #0x3
	mov     r1, r4
	mov     r2, #0x33
	bl      Function_2009714
	str     r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_21d14ec
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	mov     r0, #0x33
	str     r0, [sp, #0x8]
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	ldr     r1, [sp, #0x14]
	mov     r2, #0xc
	bl      Function_2009a4c
	mov     r1, #0x6b
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r0, #0xf
	str     r0, [sp, #0x8]
	mov     r0, #0x33
	sub     r1, #0x2c
	str     r0, [sp, #0xc]
	ldr     r0, [r6, r1]
	ldr     r1, [sp, #0x14]
	mov     r3, #0x0
	bl      Function_2009b04
	mov     r1, #0x1b
	lsl     r1, r1, #4
	str     r0, [r6, r1]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x33
	sub     r1, #0x2c
	str     r0, [sp, #0x8]
	ldr     r0, [r6, r1]
	ldr     r1, [sp, #0x14]
	mov     r2, #0xd
	mov     r3, #0x1
	bl      Function_2009bc4
	mov     r1, #0x6d
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x33
	sub     r1, #0x2c
	str     r0, [sp, #0x8]
	ldr     r0, [r6, r1]
	ldr     r1, [sp, #0x14]
	mov     r2, #0xe
	mov     r3, #0x1
	bl      Function_2009bc4
	mov     r1, #0x6e
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	sub     r1, #0xc
	ldr     r0, [r6, r1]
	bl      Function_200a328
	mov     r0, #0x1b
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	bl      Function_200a5c8
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d1596


.align 2, 0


.thumb
Function_21d1598: @ 21d1598 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x5c
	mov     r1, #0x2
	mov     r5, r0
	str     r1, [sp, #0x0]
	.hword  0x1ec8 @ sub r0, r1, #0x3
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r3, #0x5f
	str     r0, [sp, #0xc]
	mov     r2, #0x1
	lsl     r3, r3, #2
	str     r2, [sp, #0x10]
	ldr     r2, [r5, r3]
	str     r2, [sp, #0x14]
	add     r2, r3, #0x4
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x18]
	mov     r2, r3
	add     r2, #0x8
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x1c]
	mov     r2, r3
	add     r2, #0xc
	ldr     r2, [r5, r2]
	add     r3, #0x88
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, r5, r3
	mov     r2, r1
	mov     r3, r1
	bl      Function_20093b4
	ldr     r0, [r5, #0x50]
	mov     r1, #0x0
	str     r0, [sp, #0x2c]
	mov     r0, #0x81
	lsl     r0, r0, #2
	add     r0, r5, r0
	str     r0, [sp, #0x30]
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [sp, #0x3c]
	str     r0, [sp, #0x40]
	str     r0, [sp, #0x44]
	str     r0, [sp, #0x48]
	add     r0, sp, #0x2c
	strh    r1, [r0, #0x20]
	mov     r0, #0x1
	str     r0, [sp, #0x50]
	str     r0, [sp, #0x54]
	mov     r0, #0x33
	str     r0, [sp, #0x58]
	lsl     r0, r0, #14
	str     r0, [sp, #0x34]
	mov     r0, #0x15
	lsl     r0, r0, #14
	str     r0, [sp, #0x38]
	add     r0, sp, #0x2c
	bl      Function_2021aa0
	mov     r1, #0x8a
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x8a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021cac
	mov     r7, #0x8b
	ldr     r4, [pc, #0x68] @ 0x21d169c, (=0x21d32c4)
	mov     r6, #0x0
	lsl     r7, r7, #2
.thumb
branch_21d1638: @ 21d1638 :thumb
	ldrh    r0, [r4, #0x4]
	lsl     r0, r0, #12
	str     r0, [sp, #0x34]
	ldrh    r0, [r4, #0x6]
	lsl     r0, r0, #12
	str     r0, [sp, #0x38]
	add     r0, sp, #0x2c
	bl      Function_2021aa0
	mov     r1, #0x8b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x8b
	lsl     r0, r0, #2
	.hword  0x1e71 @ sub r1, r6, #0x1
	lsl     r1, r1, #1
	ldr     r0, [r5, r0]
	add     r1, #0x1b
	bl      Function_2021d6c
	ldr     r0, [r5, r7]
	mov     r1, #0x0
	bl      Function_2021cac
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x5
	blt     branch_21d1638
	mov     r0, #0x6
	lsl     r0, r0, #14
	str     r0, [sp, #0x34]
	mov     r0, #0x1a
	lsl     r0, r0, #16
	str     r0, [sp, #0x38]
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	add     sp, #0x5c
	pop     {r4-r7,pc}
@ 0x21d169c

.word 0x21d32c4 @ 0x21d169c
.thumb
Function_21d16a0: @ 21d16a0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xc4] @ 0x21d177c, (=0x1c3)
	mov     r1, #0xbe
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r0, [r4, #0x0]
	add     r1, r4, r1
	mov     r2, #0x5
	mov     r3, #0x1a
	bl      Function_201a7e8
	mov     r0, #0xbe
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	mov     r1, #0xba
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r0, [r4, #0x0]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_201a7e8
	mov     r0, #0xba
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0x94
	mov     r1, #0xc2
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r0, [r4, #0x0]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x3
	bl      Function_201a7e8
	mov     r0, #0xc2
	lsl     r0, r0, #2
	ldr     r1, [r4, #0x48]
	add     r0, r4, r0
	mov     r2, #0x0
	bl      Function_21d1784
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0xc8
	mov     r1, #0xa6
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r0, [r4, #0x0]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_201a7e8
	mov     r0, #0xa6
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0xa6
	lsl     r0, r0, #2
	ldr     r2, [pc, #0x10] @ 0x21d1780, (=0x10300)
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r3, r4
	bl      Function_21d2418
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x21d177c

.word 0x1c3 @ 0x21d177c
.word 0x10300 @ 0x21d1780
.thumb
Function_21d1784: @ 21d1784 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r2
	mov     r0, #0x1
	mov     r2, #0x0
	mov     r7, r1
	bl      Function_2002d7c
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	mov     r0, #0x41
	mov     r3, #0xd0
	str     r4, [sp, #0x4]
	sub     r4, r3, r6
	lsl     r0, r0, #10
	lsr     r3, r4, #31
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	add     r3, r4, r3
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r2, r7
	asr     r3, r3, #1
	bl      Function_201d78c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d17c6


.align 2, 0


.thumb
Function_21d17c8: @ 21d17c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xa6
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
	mov     r0, #0xc2
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
	mov     r0, #0xbe
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
	mov     r0, #0xba
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
	pop     {r4,pc}
@ 0x21d17f6


.align 2, 0


.thumb
Function_21d17f8: @ 21d17f8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_20388f4
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d1822
	bl      Function_2035e18
	cmp     r0, #0x2
	blt     branch_21d182c
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_21d2628
	b       branch_21d182c
@ 0x21d1822

.thumb
branch_21d1822: @ 21d1822 :thumb
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_21d2628
.thumb
branch_21d182c: @ 21d182c :thumb
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_21d19b0
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1838

.thumb
Function_21d1838: @ 21d1838 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21d1864
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d185a
	bl      Function_21d23fc
	cmp     r0, #0x1
	beq     branch_21d1860
	mov     r0, r5
	bl      Function_21d2524
	b       branch_21d1860
@ 0x21d185a

.thumb
branch_21d185a: @ 21d185a :thumb
	mov     r0, r5
	bl      Function_21d2524
.thumb
branch_21d1860: @ 21d1860 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1864

.thumb
Function_21d1864: @ 21d1864 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [pc, #0x114] @ 0x21d1980, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_21d18ca
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d197a
	bl      Function_21d2528
	ldr     r1, [pc, #0x100] @ 0x21d1984, (=0x4a48)
	ldr     r2, [r4, r1]
	cmp     r2, r0
	bne     branch_21d18c0
	add     r1, #0x8
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_21d18c0
	mov     r1, #0x1
	add     r0, sp, #0x0
	strb    r1, [r0, #0x2]
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_21d2628
	mov     r0, r4
	mov     r1, #0x16
	bl      Function_21d19b0
	add     r1, sp, #0x0
	mov     r0, #0x75
	add     r1, #0x2
	mov     r2, #0x1
	bl      Function_20359dc
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d28d8
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d18c0

.thumb
branch_21d18c0: @ 21d18c0 :thumb
	ldr     r0, [pc, #0xc4] @ 0x21d1988, (=0x5f2)
	bl      Function_2005748
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d18ca

.thumb
branch_21d18ca: @ 21d18ca :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_21d194e
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_21d1900
	ldr     r0, [pc, #0xb0] @ 0x21d198c, (=0x4a3c)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d18f6
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x0
	bl      Function_21d2628
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_21d19b0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d18f6

.thumb
branch_21d18f6: @ 21d18f6 :thumb
	ldr     r0, [pc, #0x90] @ 0x21d1988, (=0x5f2)
	bl      Function_2005748
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d1900

.thumb
branch_21d1900: @ 21d1900 :thumb
	bl      Function_2035e18
	ldr     r1, [pc, #0x7c] @ 0x21d1984, (=0x4a48)
	ldr     r2, [r4, r1]
	cmp     r2, r0
	bne     branch_21d1944
	add     r1, #0x8
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_21d1944
	mov     r1, #0x1
	add     r0, sp, #0x0
	strb    r1, [r0, #0x1]
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x0
	bl      Function_21d2628
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_21d19b0
	add     r1, sp, #0x0
	mov     r0, #0x75
	add     r1, #0x1
	mov     r2, #0x1
	bl      Function_20359dc
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d28d8
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d1944

.thumb
branch_21d1944: @ 21d1944 :thumb
	ldr     r0, [pc, #0x40] @ 0x21d1988, (=0x5f2)
	bl      Function_2005748
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d194e

.thumb
branch_21d194e: @ 21d194e :thumb
	ldr     r0, [pc, #0x40] @ 0x21d1990, (=0x4a4c)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d197a
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d197a
	bl      Function_2035e18
	ldr     r1, [pc, #0x20] @ 0x21d1984, (=0x4a48)
	ldr     r1, [r4, r1]
	cmp     r1, r0
	bne     branch_21d197a
	mov     r1, #0x0
	add     r0, sp, #0x0
	strb    r1, [r0, #0x0]
	mov     r0, #0x75
	add     r1, sp, #0x0
	mov     r2, #0x1
	bl      Function_20359dc
.thumb
branch_21d197a: @ 21d197a :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d197e


.align 2


.word RAM_21bf67c @ 0x21d1980
.word 0x4a48 @ 0x21d1984
.word 0x5f2 @ 0x21d1988
.word 0x4a3c @ 0x21d198c
.word 0x4a4c @ 0x21d1990
.thumb
Function_21d1994: @ 21d1994 :thumb
	bx      lr
@ 0x21d1996


.align 2, 0


.thumb
Function_21d1998: @ 21d1998 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x2
	bl      Function_21d19b0
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d19ae


.align 2, 0


.thumb
Function_21d19b0: @ 21d19b0 :thumb
	mov     r2, #0xd1
	mov     r3, #0x1e
	lsl     r2, r2, #2
	str     r3, [r0, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r1, [r0, r2]
	bx      lr
@ 0x21d19be


.align 2, 0


.thumb
Function_21d19c0: @ 21d19c0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4c]
	mov     r4, r1
	bl      Function_21d26b8
	cmp     r0, #0x0
	beq     branch_21d19da
	mov     r0, #0xd2
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r1, [r5, r0]
.thumb
branch_21d19da: @ 21d19da :thumb
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d19e4

.thumb
Function_21d19e4: @ 21d19e4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d1a00
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x75
	add     r1, sp, #0x0
	mov     r2, #0x1
	bl      Function_20359dc
.thumb
branch_21d1a00: @ 21d1a00 :thumb
	mov     r0, #0xd1
	mov     r1, #0x3
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1a12


.align 2, 0


.thumb
Function_21d1a14: @ 21d1a14 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x33
	mov     r4, r1
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x1c] @ 0x21d1a40, (=Unknown_21d3288)
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_2002100
	mov     r1, #0x32
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x5
	add     r1, #0x24
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1a40

.word Unknown_21d3288 @ 0x21d1a40



.thumb
Function_21d1a44: @ 21d1a44 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r6, r1
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_21d1a78
	ldr     r0, [pc, #0x108] @ 0x21d1b60, (=0x4a3c)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d1a9c
	ldr     r0, [pc, #0x104] @ 0x21d1b64, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0xc3
	tst     r0, r1
	beq     branch_21d1a6c
	ldr     r0, [pc, #0x100] @ 0x21d1b68, (=0x5f2)
	bl      Function_2005748
.thumb
branch_21d1a6c: @ 21d1a6c :thumb
	mov     r0, r5
	bl      Function_21d1994
	add     sp, #0x8
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x21d1a78

.thumb
branch_21d1a78: @ 21d1a78 :thumb
	ldr     r0, [pc, #0xf0] @ 0x21d1b6c, (=0x4a50)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d1a9c
	ldr     r0, [pc, #0xe0] @ 0x21d1b64, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0xc3
	tst     r0, r1
	beq     branch_21d1a90
	ldr     r0, [pc, #0xdc] @ 0x21d1b68, (=0x5f2)
	bl      Function_2005748
.thumb
branch_21d1a90: @ 21d1a90 :thumb
	mov     r0, r5
	bl      Function_21d1994
	add     sp, #0x8
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x21d1a9c

.thumb
branch_21d1a9c: @ 21d1a9c :thumb
	bl      Function_21d2528
	mov     r4, r0
	bl      Function_2035e18
	cmp     r4, r0
	beq     branch_21d1ab6
	mov     r0, r5
	bl      Function_21d1994
	add     sp, #0x8
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x21d1ab6

.thumb
branch_21d1ab6: @ 21d1ab6 :thumb
	mov     r0, #0x32
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x33
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_21d1b52
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_21d1af8
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d1aee
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x75
	add     r1, sp, #0x4
	mov     r2, #0x1
	bl      Function_20359dc
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d28d8
.thumb
branch_21d1aee: @ 21d1aee :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d19b0
	b       branch_21d1b4a
@ 0x21d1af8

.thumb
branch_21d1af8: @ 21d1af8 :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d1b14
	mov     r0, r5
	mov     r1, #0xb
	bl      Function_21d19b0
	mov     r0, r5
	mov     r1, #0xe
	mov     r2, #0x0
	bl      Function_21d2628
	b       branch_21d1b4a
@ 0x21d1b14

.thumb
branch_21d1b14: @ 21d1b14 :thumb
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x4
	blx     MI_CpuFill8
	mov     r1, #0x0
	add     r0, sp, #0x0
	strb    r1, [r0, #0x2]
	bl      Function_203608c
	add     r1, sp, #0x0
	strb    r0, [r1, #0x0]
	ldr     r0, [pc, #0x40] @ 0x21d1b70, (=0x4a54)
	mov     r1, #0x1
	strb    r1, [r5, r0]
	mov     r1, #0x0
	add     r0, #0xa
	strh    r1, [r5, r0]
	mov     r0, #0xd1
	mov     r1, #0x6
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0x70
	add     r1, sp, #0x0
	mov     r2, #0x4
	bl      Function_20359dc
.thumb
branch_21d1b4a: @ 21d1b4a :thumb
	mov     r0, #0x32
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
.thumb
branch_21d1b52: @ 21d1b52 :thumb
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r6
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x21d1b5e


.align 2


.word 0x4a3c @ 0x21d1b60
.word RAM_21bf67c @ 0x21d1b64
.word 0x5f2 @ 0x21d1b68
.word 0x4a50 @ 0x21d1b6c
.word 0x4a54 @ 0x21d1b70
.thumb
Function_21d1b74: @ 21d1b74 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [pc, #0xc] @ 0x21d1b88, (=0x4a5e)
	mov     r2, #0x0
	strh    r2, [r0, r1]
	bl      Function_21d1994
	mov     r0, r4
	pop     {r4,pc}
@ 0x21d1b86


.align 2


.word 0x4a5e @ 0x21d1b88
.thumb
Function_21d1b8c: @ 21d1b8c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2035e18
	ldr     r1, [pc, #0x74] @ 0x21d1c0c, (=0x4a5c)
	ldrh    r1, [r5, r1]
	cmp     r1, r0
	bne     branch_21d1baa
	bl      Function_21d2528
	ldr     r1, [pc, #0x68] @ 0x21d1c0c, (=0x4a5c)
	ldrh    r2, [r5, r1]
	cmp     r2, r0
	beq     branch_21d1bc2
.thumb
branch_21d1baa: @ 21d1baa :thumb
	ldr     r0, [pc, #0x64] @ 0x21d1c10, (=0x4a5e)
	mov     r1, #0x0
	strh    r1, [r5, r0]
	mov     r0, #0xd1
	mov     r1, #0x8
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1bc2

.thumb
branch_21d1bc2: @ 21d1bc2 :thumb
	add     r0, r1, #0x2
	ldsh    r0, [r5, r0]
	add     r2, r0, #0x1
	add     r0, r1, #0x2
	strh    r2, [r5, r0]
	ldsh    r0, [r5, r0]
	cmp     r0, #0x1e
	ble     branch_21d1c02
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x4
	blx     MI_CpuFill8
	mov     r1, #0x1
	add     r0, sp, #0x0
	strb    r1, [r0, #0x2]
	bl      Function_203608c
	add     r1, sp, #0x0
	strb    r0, [r1, #0x0]
	mov     r0, #0x70
	add     r1, sp, #0x0
	mov     r2, #0x4
	bl      Function_20359dc
	ldr     r0, [pc, #0x18] @ 0x21d1c10, (=0x4a5e)
	mov     r1, #0x0
	strh    r1, [r5, r0]
	mov     r0, #0xd1
	mov     r1, #0x9
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_21d1c02: @ 21d1c02 :thumb
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1c0c

.word 0x4a5c @ 0x21d1c0c
.word 0x4a5e @ 0x21d1c10
.thumb
Function_21d1c14: @ 21d1c14 :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x18] @ 0x21d1c30, (=0x4a54)
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x0
	strb    r1, [r5, r2]
	bl      Function_21d19b0
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1c2e


.align 2


.word 0x4a54 @ 0x21d1c30



.thumb
Function_21d1c34: @ 21d1c34 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x33
	mov     r4, r1
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x1c] @ 0x21d1c60, (=Unknown_21d3288)
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_2002100
	mov     r1, #0x32
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x17
	add     r1, #0x24
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1c60

.word Unknown_21d3288 @ 0x21d1c60



.thumb
Function_21d1c64: @ 21d1c64 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21d2528
	ldr     r1, [pc, #0x94] @ 0x21d1d04, (=0x4a48)
	ldr     r2, [r5, r1]
	cmp     r2, r0
	bne     branch_21d1c7e
	add     r1, #0x8
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	beq     branch_21d1c98
.thumb
branch_21d1c7e: @ 21d1c7e :thumb
	ldr     r0, [pc, #0x88] @ 0x21d1d08, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0xc3
	tst     r0, r1
	beq     branch_21d1c8e
	ldr     r0, [pc, #0x80] @ 0x21d1d0c, (=0x5f2)
	bl      Function_2005748
.thumb
branch_21d1c8e: @ 21d1c8e :thumb
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1c98

.thumb
branch_21d1c98: @ 21d1c98 :thumb
	mov     r0, #0x32
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x33
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_21d1cf8
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_21d1cd2
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x75
	add     r1, sp, #0x0
	mov     r2, #0x1
	bl      Function_20359dc
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d28d8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d19b0
	b       branch_21d1cf0
@ 0x21d1cd2

.thumb
branch_21d1cd2: @ 21d1cd2 :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d1cec
	mov     r0, #0xd1
	mov     r1, #0x18
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	bl      Function_21d2528
	ldr     r1, [pc, #0x28] @ 0x21d1d10, (=0x4a56)
	strb    r0, [r5, r1]
	b       branch_21d1cf0
@ 0x21d1cec

.thumb
branch_21d1cec: @ 21d1cec :thumb
	bl      ErrorHandling
.thumb
branch_21d1cf0: @ 21d1cf0 :thumb
	mov     r0, #0x32
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
.thumb
branch_21d1cf8: @ 21d1cf8 :thumb
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1d02


.align 2


.word 0x4a48 @ 0x21d1d04
.word RAM_21bf67c @ 0x21d1d08
.word 0x5f2 @ 0x21d1d0c
.word 0x4a56 @ 0x21d1d10
.thumb
Function_21d1d14: @ 21d1d14 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x20] @ 0x21d1d3c, (=0x4a57)
	mov     r4, r1
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_21d1d36
	mov     r1, #0x0
	mov     r0, #0x73
	mov     r2, r1
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_21d1d36
	ldr     r0, [pc, #0x8] @ 0x21d1d3c, (=0x4a57)
	mov     r1, #0x1
	strb    r1, [r5, r0]
.thumb
branch_21d1d36: @ 21d1d36 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1d3a


.align 2


.word 0x4a57 @ 0x21d1d3c
.thumb
Function_21d1d40: @ 21d1d40 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	ldr     r2, [r4, #0x48]
	mov     r1, #0x12
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, #0xc2
	lsl     r0, r0, #2
	ldr     r1, [r4, #0x48]
	add     r0, r4, r0
	mov     r2, #0x0
	bl      Function_21d1784
	mov     r0, #0x8a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x25
	bl      Function_2021d6c
	mov     r0, #0x1
	str     r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x21d1d6e


.align 2, 0


.thumb
Function_21d1d70: @ 21d1d70 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d1d82
	bl      Function_2035e18
.thumb
branch_21d1d82: @ 21d1d82 :thumb
	bl      Function_2035e18
	ldr     r1, [pc, #0x14] @ 0x21d1d9c, (=0x4a34)
	ldr     r1, [r5, r1]
	cmp     r1, r0
	bne     branch_21d1d96
	mov     r0, #0xd1
	mov     r1, #0x1a
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_21d1d96: @ 21d1d96 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1d9a


.align 2


.word 0x4a34 @ 0x21d1d9c
.thumb
Function_21d1da0: @ 21d1da0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x18] @ 0x21d1dc0, (=0x4a38)
	mov     r4, r1
	ldr     r1, [pc, #0x18] @ 0x21d1dc4, (=0xf74)
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	bl      Function_21d313c
	mov     r0, #0xd1
	mov     r1, #0x1b
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1dbe


.align 2


.word 0x4a38 @ 0x21d1dc0
.word 0xf74 @ 0x21d1dc4
.thumb
Function_21d1dc8: @ 21d1dc8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r0, [pc, #0x38] @ 0x21d1e08, (=RAM_21bf6dc)
	mov     r1, #0x1
	strb    r1, [r0, #0x8]
	mov     r0, #0x33
	bl      Function_202c1b4
	mov     r1, r0
	ldr     r0, [r5, #0x8]
	mov     r2, #0x4
	ldr     r0, [r0, #0x10]
	bl      Function_202b758
	ldr     r0, [r5, #0x8]
	mov     r1, #0x14
	ldr     r0, [r0, #0xc]
	bl      Function_202cfec
	mov     r0, #0x3a
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      Function_2038ed4
	mov     r0, #0xd1
	mov     r1, #0x1c
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1e06


.align 2


.word RAM_21bf6dc @ 0x21d1e08
.thumb
Function_21d1e0c: @ 21d1e0c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d1e1e
	bl      Function_2035e18
.thumb
branch_21d1e1e: @ 21d1e1e :thumb
	ldr     r0, [r5, #0x8]
	mov     r2, #0x3a
	lsl     r2, r2, #4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	add     r2, r5, r2
	bl      Function_2038edc
	cmp     r0, #0x0
	beq     branch_21d1e6a
	ldr     r0, [pc, #0x3c] @ 0x21d1e70, (=0x658)
	mov     r1, #0x8
	bl      Function_20057a4
	mov     r0, r5
	mov     r1, #0xd
	mov     r2, #0x0
	bl      Function_21d2628
	mov     r0, r5
	mov     r1, #0x1d
	bl      Function_21d19b0
	mov     r0, #0x8a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2021d6c
	mov     r1, #0x0
	mov     r0, #0x35
	str     r1, [r5, #0xc]
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	ldr     r0, [pc, #0x10] @ 0x21d1e74, (=RAM_21bf6dc)
	strb    r1, [r0, #0x8]
	ldr     r0, [pc, #0x10] @ 0x21d1e78, (=0x4a40)
	strb    r1, [r5, r0]
.thumb
branch_21d1e6a: @ 21d1e6a :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1e6e


.align 2


.word 0x658 @ 0x21d1e70
.word RAM_21bf6dc @ 0x21d1e74
.word 0x4a40 @ 0x21d1e78
.thumb
Function_21d1e7c: @ 21d1e7c :thumb
	push    {r3,r4}
	mov     r2, #0x35
	lsl     r2, r2, #4
	ldr     r4, [r0, r2]
	add     r3, r4, #0x1
	str     r3, [r0, r2]
	cmp     r4, #0x3c
	ble     branch_21d1e92
	mov     r3, #0xf
	sub     r2, #0xc
	str     r3, [r0, r2]
.thumb
branch_21d1e92: @ 21d1e92 :thumb
	mov     r0, r1
	pop     {r3,r4}
	bx      lr
@ 0x21d1e98

.thumb
Function_21d1e98: @ 21d1e98 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_21d2628
	mov     r0, r5
	mov     r1, #0xa
	bl      Function_21d19b0
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1eb8

.thumb
Function_21d1eb8: @ 21d1eb8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x35
	lsl     r0, r0, #4
	mov     r4, r1
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	ldr     r0, [r5, r0]
	cmp     r0, #0x3c
	ble     branch_21d1ee8
	mov     r1, #0x10
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x33
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	mov     r4, #0x3
.thumb
branch_21d1ee8: @ 21d1ee8 :thumb
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d1ef4

.thumb
Function_21d1ef4: @ 21d1ef4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x33
	mov     r4, r1
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x1c] @ 0x21d1f20, (=Unknown_21d3288)
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_2002100
	mov     r1, #0x32
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0xc
	add     r1, #0x24
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1f20

.word Unknown_21d3288 @ 0x21d1f20



.thumb
Function_21d1f24: @ 21d1f24 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21d2528
	ldr     r1, [pc, #0x94] @ 0x21d1fc4, (=0x4a48)
	ldr     r2, [r5, r1]
	cmp     r2, r0
	bne     branch_21d1f3e
	add     r1, #0x8
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	beq     branch_21d1f58
.thumb
branch_21d1f3e: @ 21d1f3e :thumb
	ldr     r0, [pc, #0x88] @ 0x21d1fc8, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0xc3
	tst     r0, r1
	beq     branch_21d1f4e
	ldr     r0, [pc, #0x80] @ 0x21d1fcc, (=0x5f2)
	bl      Function_2005748
.thumb
branch_21d1f4e: @ 21d1f4e :thumb
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1f58

.thumb
branch_21d1f58: @ 21d1f58 :thumb
	mov     r0, #0x32
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x33
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_21d1fba
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_21d1f90
	mov     r1, #0x0
	mov     r0, #0xd1
	str     r1, [sp, #0x0]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0x75
	add     r1, sp, #0x0
	mov     r2, #0x1
	bl      Function_20359dc
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d28d8
	b       branch_21d1fb2
@ 0x21d1f90

.thumb
branch_21d1f90: @ 21d1f90 :thumb
	mov     r0, #0xd1
	mov     r1, #0xd
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x0
	mov     r0, #0x71
	mov     r2, r1
	bl      Function_20359dc
	mov     r0, #0x0
	bl      Function_2032ee8
	mov     r2, r0
	ldr     r0, [r5, #0x24]
	mov     r1, #0x0
	bl      Function_200b498
.thumb
branch_21d1fb2: @ 21d1fb2 :thumb
	mov     r0, #0x32
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
.thumb
branch_21d1fba: @ 21d1fba :thumb
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d1fc4

.word 0x4a48 @ 0x21d1fc4
.word RAM_21bf67c @ 0x21d1fc8
.word 0x5f2 @ 0x21d1fcc
.thumb
Function_21d1fd0: @ 21d1fd0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d1fea
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_21d2628
	b       branch_21d2004
@ 0x21d1fea

.thumb
branch_21d1fea: @ 21d1fea :thumb
	mov     r0, #0x0
	bl      Function_2032ee8
	mov     r2, r0
	ldr     r0, [r5, #0x24]
	mov     r1, #0x0
	bl      Function_200b498
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_21d2628
.thumb
branch_21d2004: @ 21d2004 :thumb
	mov     r0, r5
	mov     r1, #0xe
	bl      Function_21d19b0
	mov     r0, #0x35
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d201e


.align 2, 0


.thumb
Function_21d2020: @ 21d2020 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r1, #0x35
	lsl     r1, r1, #4
	ldr     r2, [r0, r1]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r0, r1]
	ldr     r2, [r0, r1]
	cmp     r2, #0x2d
	ble     branch_21d203a
	mov     r2, #0xf
	sub     r1, #0xc
	str     r2, [r0, r1]
.thumb
branch_21d203a: @ 21d203a :thumb
	bl      Function_21d1994
	mov     r0, r4
	pop     {r4,pc}
@ 0x21d2042


.align 2, 0


.thumb
Function_21d2044: @ 21d2044 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0xc9
	mov     r4, r1
	bl      Function_20364f0
	mov     r0, #0xd1
	mov     r1, #0x10
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d2062


.align 2, 0


.thumb
Function_21d2064: @ 21d2064 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0xc9
	mov     r5, r1
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_21d2096
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20388f4
	mov     r1, #0x10
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x33
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	mov     r5, #0x3
.thumb
branch_21d2096: @ 21d2096 :thumb
	mov     r0, r4
	bl      Function_21d1994
	mov     r0, r5
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d20a2


.align 2, 0


.thumb
Function_21d20a4: @ 21d20a4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4c]
	mov     r4, r1
	bl      Function_21d26b8
	cmp     r0, #0x0
	beq     branch_21d20be
	mov     r0, r5
	mov     r1, #0x9
	mov     r2, #0x0
	bl      Function_21d2628
.thumb
branch_21d20be: @ 21d20be :thumb
	mov     r0, #0xd1
	mov     r1, #0x12
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d20d0

.thumb
Function_21d20d0: @ 21d20d0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4c]
	mov     r4, r1
	bl      Function_21d26b8
	cmp     r0, #0x0
	beq     branch_21d20e8
	mov     r0, #0xd1
	mov     r1, #0xa
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_21d20e8: @ 21d20e8 :thumb
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d20f2


.align 2, 0


.thumb
Function_21d20f4: @ 21d20f4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4c]
	mov     r4, r1
	cmp     r0, #0xff
	beq     branch_21d2112
	bl      Function_21d26b8
	cmp     r0, #0x0
	bne     branch_21d2112
	ldr     r0, [r5, #0x4c]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Call_RemoveTextInterpreterTaskFromTaskList
.thumb
branch_21d2112: @ 21d2112 :thumb
	mov     r0, r5
	mov     r1, #0xf
	mov     r2, #0x1
	bl      Function_21d2628
	mov     r0, #0xd1
	mov     r1, #0x14
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d2134
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d28d8
.thumb
branch_21d2134: @ 21d2134 :thumb
	bl      Function_2035e18
	ldr     r1, [pc, #0x14] @ 0x21d2150, (=0x4a58)
	str     r0, [r5, r1]
	mov     r0, #0x4b
	lsl     r0, r0, #2
	add     r1, #0x8
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d214e


.align 2


.word 0x4a58 @ 0x21d2150
.thumb
Function_21d2154: @ 21d2154 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x30] @ 0x21d218c, (=0x4a58)
	mov     r4, r1
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d2172
	bl      Function_2035e18
	ldr     r1, [pc, #0x24] @ 0x21d218c, (=0x4a58)
	ldr     r2, [r5, r1]
	cmp     r2, r0
	beq     branch_21d2172
	mov     r0, #0x0
	str     r0, [r5, r1]
.thumb
branch_21d2172: @ 21d2172 :thumb
	mov     r0, #0xd1
	mov     r1, #0x15
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x0
	add     r0, #0xc
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d218a


.align 2


.word 0x4a58 @ 0x21d218c
.thumb
Function_21d2190: @ 21d2190 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x64] @ 0x21d21fc, (=0x4a58)
	mov     r4, r1
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d21ae
	bl      Function_2035e18
	ldr     r1, [pc, #0x58] @ 0x21d21fc, (=0x4a58)
	ldr     r2, [r5, r1]
	cmp     r2, r0
	beq     branch_21d21ae
	mov     r0, #0x0
	str     r0, [r5, r1]
.thumb
branch_21d21ae: @ 21d21ae :thumb
	ldr     r0, [pc, #0x50] @ 0x21d2200, (=0x4a60)
	ldr     r1, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r5, r0]
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	bge     branch_21d21c2
	mov     r1, #0x0
	sub     r0, #0x8
	str     r1, [r5, r0]
.thumb
branch_21d21c2: @ 21d21c2 :thumb
	mov     r1, #0x35
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	cmp     r0, #0x3c
	ble     branch_21d21f0
	ldr     r0, [pc, #0x28] @ 0x21d21fc, (=0x4a58)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_21d21f0
	mov     r0, #0x0
	sub     r1, #0xc
	str     r0, [r5, r1]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d21f0
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d28d8
.thumb
branch_21d21f0: @ 21d21f0 :thumb
	mov     r0, r5
	bl      Function_21d1994
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d21fa


.align 2


.word 0x4a58 @ 0x21d21fc
.word 0x4a60 @ 0x21d2200
.thumb
Function_21d2204: @ 21d2204 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0xd
	bgt     branch_21d2226
	bge     branch_21d223a
	cmp     r4, #0x8
	bgt     branch_21d22de
	cmp     r4, #0x2
	blt     branch_21d22de
	beq     branch_21d2234
	cmp     r4, #0x7
	beq     branch_21d22d8
	cmp     r4, #0x8
	beq     branch_21d22d8
	pop     {r4-r6,pc}
@ 0x21d2226

.thumb
branch_21d2226: @ 21d2226 :thumb
	cmp     r4, #0x13
	bgt     branch_21d222e
	beq     branch_21d228c
	pop     {r4-r6,pc}
@ 0x21d222e

.thumb
branch_21d222e: @ 21d222e :thumb
	cmp     r4, #0x19
	beq     branch_21d2254
	pop     {r4-r6,pc}
@ 0x21d2234

.thumb
branch_21d2234: @ 21d2234 :thumb
	bl      Function_21d26d8
	b       branch_21d22d8
@ 0x21d223a

.thumb
branch_21d223a: @ 21d223a :thumb
	mov     r0, #0x32
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d22d8
	mov     r1, #0x33
	bl      Function_2002154
	mov     r0, #0x32
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	b       branch_21d22d8
@ 0x21d2254

.thumb
branch_21d2254: @ 21d2254 :thumb
	ldr     r0, [r5, #0x4c]
	bl      Function_21d26b8
	cmp     r0, #0x0
	bne     branch_21d2268
	ldr     r0, [r5, #0x4c]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Call_RemoveTextInterpreterTaskFromTaskList
.thumb
branch_21d2268: @ 21d2268 :thumb
	mov     r0, r5
	mov     r1, #0xc
	mov     r2, #0x0
	bl      Function_21d2628
	mov     r0, #0x32
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d22d8
	mov     r1, #0x33
	bl      Function_2002154
	mov     r0, #0x32
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	b       branch_21d22d8
@ 0x21d228c

.thumb
branch_21d228c: @ 21d228c :thumb
	ldr     r0, [pc, #0x50] @ 0x21d22e0, (=0x4a54)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x1
	beq     branch_21d22de
	mov     r0, r6
	bl      Function_2032ee8
	mov     r2, r0
	ldr     r0, [r5, #0x24]
	mov     r1, #0x0
	bl      Function_200b498
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_21d22de
	mov     r0, #0x32
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d22c4
	mov     r1, #0x33
	bl      Function_2002154
	mov     r0, #0x32
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
.thumb
branch_21d22c4: @ 21d22c4 :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d22d8
	ldr     r1, [pc, #0x14] @ 0x21d22e4, (=0x4a50)
	ldr     r0, [pc, #0x18] @ 0x21d22e8, (=0xffff)
	ldr     r2, [r5, r1]
	eor     r0, r6
	and     r0, r2
	str     r0, [r5, r1]
.thumb
branch_21d22d8: @ 21d22d8 :thumb
	mov     r0, #0xd1
	lsl     r0, r0, #2
	str     r4, [r5, r0]
.thumb
branch_21d22de: @ 21d22de :thumb
	pop     {r4-r6,pc}
@ 0x21d22e0

.word 0x4a54 @ 0x21d22e0
.word 0x4a50 @ 0x21d22e4
.word 0xffff @ 0x21d22e8
.thumb
Function_21d22ec: @ 21d22ec :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r0, #0xd1
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r4, r1
	mov     r6, r2
	cmp     r0, #0x3
	bne     branch_21d238c
	cmp     r4, #0x1
	beq     branch_21d230a
	cmp     r4, #0x13
	beq     branch_21d234e
	b       branch_21d2384
@ 0x21d230a

.thumb
branch_21d230a: @ 21d230a :thumb
	mov     r0, r6
	bl      Function_2032ee8
	mov     r2, r0
	ldr     r0, [r5, #0x24]
	mov     r1, #0x0
	bl      Function_200b498
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d28d8
	mov     r0, #0xd1
	lsl     r0, r0, #2
	str     r4, [r5, r0]
	bl      Function_2035e18
	ldr     r1, [pc, #0x74] @ 0x21d23a4, (=0x4a48)
	str     r0, [r5, r1]
	mov     r0, #0x0
	add     r1, #0x8
	str     r0, [r5, r1]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d239e
	mov     r2, #0x1
	mov     r0, #0x75
	add     r1, sp, #0x0
	str     r2, [sp, #0x0]
	bl      Function_20359dc
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d234e

.thumb
branch_21d234e: @ 21d234e :thumb
	mov     r0, r6
	bl      Function_2032ee8
	mov     r2, r0
	ldr     r0, [r5, #0x24]
	mov     r1, #0x0
	bl      Function_200b498
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_21d239e
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d237a
	ldr     r1, [pc, #0x38] @ 0x21d23a8, (=0x4a50)
	ldr     r0, [pc, #0x38] @ 0x21d23ac, (=0xffff)
	ldr     r2, [r5, r1]
	eor     r0, r6
	and     r0, r2
	str     r0, [r5, r1]
.thumb
branch_21d237a: @ 21d237a :thumb
	mov     r0, #0xd1
	lsl     r0, r0, #2
	add     sp, #0x4
	str     r4, [r5, r0]
	pop     {r3-r6,pc}
@ 0x21d2384

.thumb
branch_21d2384: @ 21d2384 :thumb
	bl      ErrorHandling
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d238c

.thumb
branch_21d238c: @ 21d238c :thumb
	cmp     r4, #0x1
	bne     branch_21d239e
	ldr     r0, [pc, #0x14] @ 0x21d23a8, (=0x4a50)
	mov     r1, #0x0
	str     r1, [r5, r0]
	bl      Function_2035e18
	ldr     r1, [pc, #0x8] @ 0x21d23a4, (=0x4a48)
	str     r0, [r5, r1]
.thumb
branch_21d239e: @ 21d239e :thumb
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d23a2


.align 2


.word 0x4a48 @ 0x21d23a4
.word 0x4a50 @ 0x21d23a8
.word 0xffff @ 0x21d23ac
.thumb
Function_21d23b0: @ 21d23b0 :thumb
	push    {r3,lr}
	ldrh    r1, [r0, #0x0]
	add     r1, #0xa
	strh    r1, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	mov     r1, #0x5a
	lsl     r1, r1, #2
	cmp     r2, r1
	bls     branch_21d23c6
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
.thumb
branch_21d23c6: @ 21d23c6 :thumb
	ldrh    r0, [r0, #0x0]
	bl      Function_201d250
	mov     r1, #0xa
	mov     r2, r0
	mul     r2, r1
	asr     r0, r2, #11
	lsr     r0, r0, #20
	add     r0, r2, r0
	asr     r0, r0, #12
	add     r0, #0xf
	lsl     r2, r0, #5
	mov     r0, #0x1d
	orr     r2, r0
	add     r0, sp, #0x0
	strh    r2, [r0, #0x0]
	add     r0, sp, #0x0
	mov     r2, #0x2
	blx     GX_LoadOBJPltt
	add     r0, sp, #0x0
	mov     r1, #0x2a
	mov     r2, #0x2
	blx     GX_LoadOBJPltt
	pop     {r3,pc}
@ 0x21d23fa


.align 2, 0


.thumb
Function_21d23fc: @ 21d23fc :thumb
	push    {r3-r5,lr}
	mov     r5, #0x0
	mov     r4, r5
.thumb
branch_21d2402: @ 21d2402 :thumb
	mov     r0, r4
	bl      Function_2032ee8
	cmp     r0, #0x0
	beq     branch_21d240e
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d240e: @ 21d240e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_21d2402
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x21d2418

.thumb
Function_21d2418: @ 21d2418 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	str     r3, [sp, #0x14]
	mov     r6, r0
	str     r2, [sp, #0x10]
	bl      Function_203608c
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x14]
	bl      Function_21d254c
	cmp     r0, #0x0
	bne     branch_21d2438
	add     sp, #0x28
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d2438

.thumb
branch_21d2438: @ 21d2438 :thumb
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r7, [sp, #0x14]
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	mov     r4, r7
	mov     r5, #0x1
branch_21d244a: @ 21d244a :thumb
	mov     r0, #0xd9
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	cmp     r0, #0x0
	beq     branch_21d2504
	bl      GetSecretTrainerID
	str     r0, [sp, #0x24]
	mov     r0, #0xd9
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	ldr     r1, [r4, #0x2c]
	bl      Function_2025ef4
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x24]
	ldr     r0, [r0, #0x24]
	mov     r1, #0x0
	mov     r3, #0x5
	bl      Function_200b60c
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x14]
	ldr     r0, [r0, #0x24]
	ldr     r1, [r1, #0x28]
	mov     r2, #0x1
	mov     r3, #0x33
	bl      Function_200b29c
	str     r0, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	ldr     r0, [sp, #0x20]
	cmp     r1, r0
	str     r5, [sp, #0x0]
	bne     branch_21d24cc
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x80] @ 0x21d2520, (=0x20300)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x2c]
	mov     r0, r6
	mov     r3, #0x5
	bl      Function_201d78c
	str     r5, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x68] @ 0x21d2520, (=0x20300)
	ldr     r2, [sp, #0x18]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0x0
	mov     r3, #0x46
	bl      Function_201d78c
	b       branch_21d24fe
@ 0x21d24cc

.thumb
branch_21d24cc: @ 21d24cc :thumb
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x2c]
	mov     r0, r6
	mov     r3, #0x5
	bl      Function_201d78c
	str     r5, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0x18]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0x0
	mov     r3, #0x46
	bl      Function_201d78c
.thumb
branch_21d24fe: @ 21d24fe :thumb
	ldr     r0, [sp, #0x18]
	bl      Function_20237bc_FreeMsg
.thumb
branch_21d2504: @ 21d2504 :thumb
	ldr     r0, [sp, #0x20]
	add     r7, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x12
	str     r0, [sp, #0x20]
	cmp     r0, #0x5
	blt     branch_21d244a
	mov     r0, r6
	bl      Function_201a954
	mov     r0, #0x1
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x21d2520

.word 0x20300 @ 0x21d2520



.thumb
Function_21d2524: @ 21d2524 :thumb
	bx      lr
@ 0x21d2526


.align 2, 0
.thumb
Function_21d2528: @ 21d2528 :thumb
	push    {r3-r5,lr}
	mov     r5, #0x0
	mov     r4, r5
.thumb
branch_21d252e: @ 21d252e :thumb
	mov     r0, r4
	bl      Function_2032ee8
	cmp     r0, #0x0
	beq     branch_21d253a
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d253a: @ 21d253a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_21d252e
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x21d2544

.thumb
Function_21d2544: @ 21d2544 :thumb
	ldr     r3, [pc, #0x0] @ 0x21d2548, (=0x21d2529)
	bx      r3
@ 0x21d2548

.word 0x21d2529 @ 0x21d2548
.thumb
Function_21d254c: @ 21d254c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r4, #0x0
	str     r4, [sp, #0x0]
	mov     r6, r7
	mov     r5, r7
.thumb
branch_21d2558: @ 21d2558 :thumb
	mov     r0, #0xd9
	lsl     r0, r0, #2
	ldr     r1, [r6, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r6, r0]
	mov     r0, r4
	bl      Function_2032ee8
	mov     r1, #0xd9
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	ldr     r0, [pc, #0xac] @ 0x21d261c, (=0x4a64)
	ldr     r2, [pc, #0xac] @ 0x21d2620, (=0x4a6c)
	ldr     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r5, r0]
	str     r1, [r5, r2]
	add     r1, r2, #0x4
	str     r0, [r5, r1]
	mov     r0, #0xd9
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_21d2596
	bl      GetTrainerID
	ldr     r1, [pc, #0x8c] @ 0x21d261c, (=0x4a64)
	str     r0, [r5, r1]
	mov     r1, #0x1
	ldr     r0, [pc, #0x90] @ 0x21d2624, (=0x4a68)
	b       branch_21d25a0
@ 0x21d2596

.thumb
branch_21d2596: @ 21d2596 :thumb
	mov     r0, r2
	mov     r1, #0x0
	sub     r0, #0x8
	str     r1, [r5, r0]
	.hword  0x1f10 @ sub r0, r2, #0x4
.thumb
branch_21d25a0: @ 21d25a0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r1, [r5, r0]
	add     r6, #0x8
	add     r5, #0x10
	cmp     r4, #0x5
	blt     branch_21d2558
	mov     r4, #0x0
	mov     r2, r7
	mov     r3, r7
.thumb
branch_21d25b2: @ 21d25b2 :thumb
	mov     r0, #0xd9
	mov     r1, #0xda
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r0, [r7, r0]
	ldr     r1, [r7, r1]
	cmp     r1, r0
	beq     branch_21d25dc
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_21d25d4
	mov     r0, #0xe3
	mov     r1, #0x3
	lsl     r0, r0, #2
	str     r1, [r2, r0]
	b       branch_21d260c
@ 0x21d25d4

.thumb
branch_21d25d4: @ 21d25d4 :thumb
	mov     r0, #0xe3
	lsl     r0, r0, #2
	str     r1, [r2, r0]
	b       branch_21d260c
@ 0x21d25dc

.thumb
branch_21d25dc: @ 21d25dc :thumb
	ldr     r0, [pc, #0x3c] @ 0x21d261c, (=0x4a64)
	ldr     r5, [pc, #0x40] @ 0x21d2620, (=0x4a6c)
	ldr     r1, [r3, r0]
	ldr     r6, [r3, r5]
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	ldr     r0, [r3, r0]
	ldr     r5, [r3, r5]
	eor     r1, r6
	eor     r5, r0
	orr     r1, r5
	beq     branch_21d260c
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_21d2606
	mov     r0, #0xe3
	mov     r1, #0x3
	lsl     r0, r0, #2
	str     r1, [r2, r0]
	b       branch_21d260c
@ 0x21d2606

.thumb
branch_21d2606: @ 21d2606 :thumb
	mov     r0, #0xe3
	lsl     r0, r0, #2
	str     r1, [r2, r0]
.thumb
branch_21d260c: @ 21d260c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r7, #0x8
	.hword  0x1d12 @ add r2, r2, #0x4
	add     r3, #0x10
	cmp     r4, #0x5
	blt     branch_21d25b2
	ldr     r0, [sp, #0x0]
	pop     {r3-r7,pc}
@ 0x21d261c

.word 0x4a64 @ 0x21d261c
.word 0x4a6c @ 0x21d2620
.word 0x4a68 @ 0x21d2624
.thumb
Function_21d2628: @ 21d2628 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r7, r1
	mov     r0, #0xb4
	mov     r1, #0x33
	mov     r6, r2
	bl      Function_2023790
	mov     r4, r0
	ldr     r0, [r5, #0x28]
	mov     r1, r7
	mov     r2, r4
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r5, #0x24]
	ldr     r1, [r5, #0x44]
	mov     r2, r4
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, #0xba
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0xba
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200e060
	cmp     r6, #0x0
	bne     branch_21d2698
	mov     r0, r5
	bl      Function_21d28d4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0xba
	lsl     r0, r0, #2
	ldr     r2, [r5, #0x44]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	add     sp, #0xc
	str     r0, [r5, #0x4c]
	pop     {r4-r7,pc}
@ 0x21d2698

.thumb
branch_21d2698: @ 21d2698 :thumb
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0xba
	lsl     r0, r0, #2
	ldr     r2, [r5, #0x44]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	mov     r0, #0xff
	str     r0, [r5, #0x4c]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d26b6


.align 2, 0


.thumb
Function_21d26b8: @ 21d26b8 :thumb
	push    {r3,lr}
	cmp     r0, #0xff
	bne     branch_21d26c2
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d26c2

.thumb
branch_21d26c2: @ 21d26c2 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_21d26d2
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d26d2

.thumb
branch_21d26d2: @ 21d26d2 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d26d6


.align 2, 0
.thumb
Function_21d26d8: @ 21d26d8 :thumb
	mov     r1, #0xba
	lsl     r1, r1, #2
	add     r0, r0, r1
	ldr     r3, [pc, #0x4] @ 0x21d26e4, (=Function_200e084+1)
	mov     r1, #0x0
	bx      r3
@ 0x21d26e4

.word Function_200e084+1 @ 0x21d26e4



.thumb
Function_21d26e8: @ 21d26e8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0xcb
	lsl     r0, r0, #2
	add     r0, r5, r0
	str     r0, [sp, #0x14]
	mov     r0, #0xcf
	lsl     r0, r0, #2
	mov     r4, #0x0
	add     r0, r5, r0
	str     r4, [sp, #0x8]
	mov     r6, r5
	mov     r7, #0x1c
	str     r0, [sp, #0x18]
.thumb
branch_21d270a: @ 21d270a :thumb
	mov     r0, #0xe3
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x3
	bhi     branch_21d27d6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d2720

Jumppoints_21d2720:
.hword branch_21d27d6 - Jumppoints_21d2720 - 2
.hword branch_21d2728 - Jumppoints_21d2720 - 2
.hword branch_21d27d6 - Jumppoints_21d2720 - 2
.hword branch_21d279e - Jumppoints_21d2720 - 2
.thumb
branch_21d2728: @ 21d2728 :thumb
	mov     r0, #0xd9
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	bne     branch_21d2736
	bl      ErrorHandling
.thumb
branch_21d2736: @ 21d2736 :thumb
	mov     r0, #0xd9
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      GetGender
	str     r0, [sp, #0xc]
	mov     r0, #0xd9
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_2025f8c
	str     r0, [sp, #0x10]
	bl      Function_203608c
	cmp     r4, r0
	bne     branch_21d2768
	mov     r0, #0x8b
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #2
	lsl     r1, r1, #1
	ldr     r0, [r5, r0]
	add     r1, #0x26
	bl      Function_2021d6c
	b       branch_21d2784
@ 0x21d2768

.thumb
branch_21d2768: @ 21d2768 :thumb
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x18]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	ldr     r3, [sp, #0x10]
	mov     r2, r4
	bl      Function_21d2860
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x4]
	bl      Function_2021d6c
.thumb
branch_21d2784: @ 21d2784 :thumb
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021cac
	mov     r0, #0xe3
	mov     r1, #0x2
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_21d27d6
@ 0x21d279e

.thumb
branch_21d279e: @ 21d279e :thumb
	bl      Function_203608c
	cmp     r4, r0
	bne     branch_21d27c2
	mov     r0, #0xd9
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      GetGender
	mov     r1, r0
	mov     r0, #0x8b
	lsl     r0, r0, #2
	lsl     r1, r1, #1
	ldr     r0, [r5, r0]
	add     r1, #0x27
	bl      Function_2021d6c
	b       branch_21d27ce
@ 0x21d27c2

.thumb
branch_21d27c2: @ 21d27c2 :thumb
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r7
	bl      Function_2021d6c
.thumb
branch_21d27ce: @ 21d27ce :thumb
	mov     r0, #0xe3
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_21d27d6: @ 21d27d6 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r6, #0x8
	.hword  0x1cbf @ add r7, r7, #0x2
	str     r0, [sp, #0x4]
	cmp     r4, #0x5
	blt     branch_21d270a
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_21d27f4
	ldr     r0, [pc, #0x8] @ 0x21d27f8, (=0x64f)
	bl      Function_2005748
.thumb
branch_21d27f4: @ 21d27f4 :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d27f8

.word 0x64f @ 0x21d27f8
.thumb
Function_21d27fc: @ 21d27fc :thumb
	push    {r3-r5,lr}
	mov     r2, #0xcf
	mov     r5, r0
	lsl     r2, r2, #2
	mov     r4, r1
	mov     r0, #0x68
	mov     r1, #0x8
	add     r2, r5, r2
	mov     r3, #0x33
	bl      Function_2006f88
	mov     r2, #0xcd
	lsl     r2, r2, #2
	str     r0, [r5, r2]
	add     r2, #0xc
	mov     r0, r4
	mov     r1, #0x7
	add     r2, r5, r2
	mov     r3, #0x33
	bl      Function_20071ec
	mov     r3, #0xce
	lsl     r3, r3, #2
	str     r0, [r5, r3]
	mov     r0, #0x33
	sub     r3, #0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x68
	mov     r1, #0x20
	mov     r2, #0x1
	add     r3, r5, r3
	bl      Function_2006f50
	mov     r1, #0xc9
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r3, #0x33
	str     r3, [sp, #0x0]
	lsl     r3, r3, #4
	mov     r0, r4
	mov     r1, #0x9
	mov     r2, #0x1
	add     r3, r5, r3
	bl      Function_20071b4
	mov     r1, #0xca
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	pop     {r3-r5,pc}
@ 0x21d285e


.align 2, 0


.thumb
Function_21d2860: @ 21d2860 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	ldr     r0, [sp, #0x18]
	mov     r1, r3
	mov     r5, r2
	bl      Function_205ca0c
	mov     r4, r0
	ldr     r0, [r6, #0x4]
	mov     r2, #0x6
	ldr     r6, [r0, #0xc]
	ldr     r0, [r7, #0x4]
	lsl     r2, r2, #8
	ldr     r1, [r0, #0x14]
	mov     r0, r4
	mul     r0, r2
	add     r0, r1, r0
	ldr     r1, [pc, #0x18] @ 0x21d28a0, (=0x21d3290)
	lsl     r3, r5, #1
	ldrh    r1, [r1, r3]
	blx     GX_LoadOBJ
	lsl     r0, r4, #5
	add     r1, r5, #0x7
	add     r0, r6, r0
	lsl     r1, r1, #5
	mov     r2, #0x20
	blx     GX_LoadOBJPltt
	pop     {r3-r7,pc}
@ 0x21d289e


.align 2


.word 0x21d3290 @ 0x21d28a0
.thumb
Function_21d28a4: @ 21d28a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xcd
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0xce
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0xc9
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0xca
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	pop     {r4,pc}
@ 0x21d28d2


.align 2, 0


.thumb
Function_21d28d4: @ 21d28d4 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x21d28d8

.thumb
Function_21d28d8: @ 21d28d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_21d2924
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_21d28f6
	mov     r0, #0x1
	bl      Function_2037b58
	b       branch_21d2906
@ 0x21d28f6

.thumb
branch_21d28f6: @ 21d28f6 :thumb
	bl      Function_2035e18
	add     r0, r4, r0
	cmp     r0, #0x5
	ble     branch_21d2902
	mov     r0, #0x5
.thumb
branch_21d2902: @ 21d2902 :thumb
	bl      Function_2037b58
.thumb
branch_21d2906: @ 21d2906 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	ldr     r0, [pc, #0x18] @ 0x21d2928, (=0x4a55)
	bne     branch_21d2916
	mov     r1, #0x2
	strb    r1, [r5, r0]
	pop     {r3-r5,pc}
@ 0x21d2916

.thumb
branch_21d2916: @ 21d2916 :thumb
	cmp     r4, #0x0
	bne     branch_21d2920
	mov     r1, #0x1
	strb    r1, [r5, r0]
	pop     {r3-r5,pc}
@ 0x21d2920

.thumb
branch_21d2920: @ 21d2920 :thumb
	mov     r1, #0x0
	strb    r1, [r5, r0]
.thumb
branch_21d2924: @ 21d2924 :thumb
	pop     {r3-r5,pc}
@ 0x21d2926


.align 2


.word 0x4a55 @ 0x21d2928
.thumb
Function_21d292c: @ 21d292c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r6, r1
	bl      Function_21d2528
	mov     r5, r0
	ldr     r0, [pc, #0xe4] @ 0x21d2a20, (=0x4a48)
	ldr     r1, [r4, r0]
	cmp     r5, r1
	ble     branch_21d2956
	mov     r2, #0x1
	add     r0, sp, #0x0
	strb    r2, [r0, #0x0]
	mov     r0, #0x75
	add     r1, sp, #0x0
	bl      Function_20359dc
	mov     r1, #0x1
	ldr     r0, [pc, #0xd0] @ 0x21d2a24, (=0x4a4c)
	b       branch_21d295a
@ 0x21d2956

.thumb
branch_21d2956: @ 21d2956 :thumb
	mov     r1, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
.thumb
branch_21d295a: @ 21d295a :thumb
	str     r1, [r4, r0]
	ldr     r0, [pc, #0xc8] @ 0x21d2a28, (=0x4a44)
	ldr     r0, [r4, r0]
	cmp     r5, r0
	bne     branch_21d296a
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x21d296a

.thumb
branch_21d296a: @ 21d296a :thumb
	cmp     r5, #0x5
	bhi     branch_21d2a10
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d297a

Jumppoints_21d297a:
.hword branch_21d2a10 - Jumppoints_21d297a - 2
.hword branch_21d2986 - Jumppoints_21d297a - 2
.hword branch_21d29ca - Jumppoints_21d297a - 2
.hword branch_21d29ca - Jumppoints_21d297a - 2
.hword branch_21d29ca - Jumppoints_21d297a - 2
.hword branch_21d2a02 - Jumppoints_21d297a - 2
.thumb
branch_21d2986: @ 21d2986 :thumb
	bl      Function_2035e18
	cmp     r0, #0x1
	bgt     branch_21d2996
	bl      Function_20318ec
	cmp     r0, #0x1
	bls     branch_21d299c
.thumb
branch_21d2996: @ 21d2996 :thumb
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x21d299c

.thumb
branch_21d299c: @ 21d299c :thumb
	mov     r0, #0xd1
	mov     r1, #0x11
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r4
	sub     r1, #0x12
	bl      Function_21d28d8
	mov     r0, #0x32
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d29c4
	mov     r1, #0x33
	bl      Function_2002154
	mov     r0, #0x32
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
.thumb
branch_21d29c4: @ 21d29c4 :thumb
	add     sp, #0x4
	mov     r0, #0x2
	pop     {r3-r6,pc}
@ 0x21d29ca

.thumb
branch_21d29ca: @ 21d29ca :thumb
	mov     r0, #0x2
	bl      Function_205bea8
	ldr     r0, [pc, #0x54] @ 0x21d2a28, (=0x4a44)
	ldr     r1, [r4, r0]
	cmp     r5, r1
	bge     branch_21d2a10
	add     r0, #0x11
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d29e6
	cmp     r0, #0x1
	beq     branch_21d29f0
	b       branch_21d29f8
@ 0x21d29e6

.thumb
branch_21d29e6: @ 21d29e6 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_21d28d8
	b       branch_21d29f8
@ 0x21d29f0

.thumb
branch_21d29f0: @ 21d29f0 :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d28d8
.thumb
branch_21d29f8: @ 21d29f8 :thumb
	bl      Function_2035e18
	ldr     r1, [pc, #0x20] @ 0x21d2a20, (=0x4a48)
	str     r0, [r4, r1]
	b       branch_21d2a10
@ 0x21d2a02

.thumb
branch_21d2a02: @ 21d2a02 :thumb
	mov     r0, #0x9
	bl      Function_205bea8
	mov     r0, r4
	mov     r1, r6
	bl      Function_21d28d8
.thumb
branch_21d2a10: @ 21d2a10 :thumb
	bl      Function_21d2528
	ldr     r1, [pc, #0x10] @ 0x21d2a28, (=0x4a44)
	str     r0, [r4, r1]
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d2a1e


.align 2


.word 0x4a48 @ 0x21d2a20
.word 0x4a4c @ 0x21d2a24
.word 0x4a44 @ 0x21d2a28
.thumb
Function_21d2a2c: @ 21d2a2c :thumb
	mov     r0, #0x2c
	bx      lr
@ 0x21d2a30

.thumb
Function_21d2a30: @ 21d2a30 :thumb
	add     r0, #0x2c
	bx      lr
@ 0x21d2a34

.thumb
Function_21d2a34: @ 21d2a34 :thumb
	push    {r4-r7}
	mov     r7, r0
	mov     r6, r7
	mov     r12, r1
	mov     r5, #0x5
	add     r6, #0xdc
.thumb
branch_21d2a40: @ 21d2a40 :thumb
	mov     r4, r6
	sub     r4, #0x2c
	mov     r3, r6
	mov     r2, #0x5
.thumb
branch_21d2a48: @ 21d2a48 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d2a48
	ldr     r0, [r4, #0x0]
	.hword  0x1e6d @ sub r5, r5, #0x1
	sub     r6, #0x2c
	str     r0, [r3, #0x0]
	cmp     r5, #0x2
	bgt     branch_21d2a40
	add     r7, #0x58
	mov     r3, #0x5
.thumb
branch_21d2a60: @ 21d2a60 :thumb
	mov     r2, r12
	ldmia   r2!, {r0,r1}
	mov     r12, r2
	stmia   r7!, {r0,r1}
	.hword  0x1e5b @ sub r3, r3, #0x1
	bne     branch_21d2a60
	mov     r0, r12
	ldr     r0, [r0, #0x0]
	str     r0, [r7, #0x0]
	pop     {r4-r7}
	bx      lr
@ 0x21d2a76


.align 2, 0


.thumb
Function_21d2a78: @ 21d2a78 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r0
	cmp     r5, #0x2
	blt     branch_21d2a86
	cmp     r5, #0x5
	ble     branch_21d2a8a
.thumb
branch_21d2a86: @ 21d2a86 :thumb
	bl      ErrorHandling
.thumb
branch_21d2a8a: @ 21d2a8a :thumb
	add     r2, r5, #0x1
	cmp     r2, #0x5
	bgt     branch_21d2ab2
	mov     r0, #0x2c
	mul     r0, r2
	add     r3, r4, r0
.thumb
branch_21d2a96: @ 21d2a96 :thumb
	mov     r6, r3
	mov     r7, r3
	sub     r6, #0x2c
	mov     r5, #0x5
.thumb
branch_21d2a9e: @ 21d2a9e :thumb
	ldmia   r7!, {r0,r1}
	stmia   r6!, {r0,r1}
	.hword  0x1e6d @ sub r5, r5, #0x1
	bne     branch_21d2a9e
	ldr     r0, [r7, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x2c
	str     r0, [r6, #0x0]
	cmp     r2, #0x5
	ble     branch_21d2a96
.thumb
branch_21d2ab2: @ 21d2ab2 :thumb
	ldr     r0, [pc, #0xc] @ 0x21d2ac0, (=0xffff)
	mov     r1, r4
	add     r4, #0xdc
	add     r1, #0xdc
	strh    r0, [r4, #0x0]
	strh    r0, [r1, #0x10]
	pop     {r3-r7,pc}
@ 0x21d2ac0

.word 0xffff @ 0x21d2ac0
.thumb
Function_21d2ac4: @ 21d2ac4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x0]
	mov     r5, r2
	str     r1, [sp, #0x4]
	str     r3, [sp, #0x8]
	cmp     r0, #0x0
	ble     branch_21d2b3e
	mov     r7, #0x2c
.thumb
branch_21d2adc: @ 21d2adc :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	ldr     r6, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	cmp     r1, r0
	beq     branch_21d2b2c
	cmp     r6, #0x0
	beq     branch_21d2b2c
	mov     r0, r6
	bl      Function_202b510
	cmp     r0, #0x1
	beq     branch_21d2b2c
	mov     r0, r6
	mov     r1, r5
	bl      Function_202b530
	cmp     r0, #0x0
	bne     branch_21d2b2c
	mov     r4, #0x0
.thumb
branch_21d2b04: @ 21d2b04 :thumb
	add     r1, r4, #0x2
	mov     r2, r1
	mul     r2, r7
	mov     r0, r6
	add     r1, r5, r2
	bl      Function_202b530
	cmp     r0, #0x0
	beq     branch_21d2b1e
	mov     r0, r5
	add     r1, r4, #0x2
	bl      Function_21d2a78
.thumb
branch_21d2b1e: @ 21d2b1e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_21d2b04
	mov     r0, r5
	mov     r1, r6
	bl      Function_21d2a34
.thumb
branch_21d2b2c: @ 21d2b2c :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	str     r1, [sp, #0xc]
	cmp     r1, r0
	blt     branch_21d2adc
.thumb
branch_21d2b3e: @ 21d2b3e :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d2b42


.align 2, 0


.thumb
Function_21d2b44: @ 21d2b44 :thumb
	mov     r0, #0x12
	lsl     r0, r0, #4
	bx      lr
@ 0x21d2b4a


.align 2, 0


.thumb
Function_21d2b4c: @ 21d2b4c :thumb
	mov     r0, #0x12
	lsl     r0, r0, #4
	bx      lr
@ 0x21d2b52


.align 2, 0


.thumb
Function_21d2b54: @ 21d2b54 :thumb
	mov     r0, #0x12
	lsl     r0, r0, #4
	bx      lr
@ 0x21d2b5a


.align 2, 0


.thumb
Function_21d2b5c: @ 21d2b5c :thumb
	push    {r4,r5}
	ldr     r4, [pc, #0x2c] @ 0x21d2b8c, (=0x21d33e4)
	lsl     r5, r0, #2
	ldr     r0, [r4, r5]
	mov     r2, #0x0
	ldrb    r3, [r0, #0x0]
	cmp     r3, #0xff
	beq     branch_21d2b84
	mov     r4, r0
.thumb
branch_21d2b6e: @ 21d2b6e :thumb
	ldrb    r3, [r0, #0x0]
	cmp     r1, r3
	bne     branch_21d2b7a
	mov     r0, #0x1
	pop     {r4,r5}
	bx      lr
@ 0x21d2b7a

.thumb
branch_21d2b7a: @ 21d2b7a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	ldrb    r3, [r4, r2]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r3, #0xff
	bne     branch_21d2b6e
.thumb
branch_21d2b84: @ 21d2b84 :thumb
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x21d2b8a


.align 2


.word 0x21d33e4 @ 0x21d2b8c
.thumb
Function_21d2b90: @ 21d2b90 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	ldr     r1, [sp, #0x20]
	mov     r7, r2
	str     r1, [sp, #0x20]
	ldr     r1, [sp, #0x24]
	str     r3, [sp, #0x0]
	str     r1, [sp, #0x24]
	bl      LoadTrainerDataAdress
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_21d2c22
.thumb
branch_21d2bb2: @ 21d2bb2 :thumb
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, #0x48
	blx     MIi_CpuClearFast
	mov     r0, r4
	bl      GetTrainerID
	str     r0, [r5, #0x0]
	mov     r0, r4
	bl      GetGender
	strb    r0, [r5, #0x4]
	mov     r0, #0xc
	strb    r0, [r5, #0x5]
	mov     r0, #0x2
	strb    r0, [r5, #0x6]
	mov     r0, r4
	bl      Function_2025ef0_Dummy
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x8
	mov     r2, #0x8
	bl      Function_20021d0
	mov     r3, r5
	mov     r6, r7
	add     r3, #0x18
	mov     r2, #0x6
.thumb
branch_21d2bee: @ 21d2bee :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d2bee
	mov     r0, #0x0
	strb    r0, [r5, #0x19]
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x1
	bne     branch_21d2c10
	ldrb    r1, [r5, #0x18]
	ldr     r0, [sp, #0x24]
	bl      Function_21d2b5c
	cmp     r0, #0x0
	bne     branch_21d2c10
	mov     r0, #0x0
	strb    r0, [r5, #0x18]
.thumb
branch_21d2c10: @ 21d2c10 :thumb
	ldr     r0, [sp, #0x4]
	add     r7, #0x30
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	add     r5, #0x48
	cmp     r1, r0
	blt     branch_21d2bb2
.thumb
branch_21d2c22: @ 21d2c22 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d2c26


.align 2, 0


.thumb
Function_21d2c28: @ 21d2c28 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r2
	mov     r5, r0
	mov     r0, r1
	mov     r1, r4
	bl      malloc2
	mov     r7, r0
	mov     r0, r5
	bl      Function_202440c
	mov     r6, r0
	mov     r0, r5
	bl      Function_21d2b44
	cmp     r4, r0
	beq     branch_21d2c50
	bl      ErrorHandling
.thumb
branch_21d2c50: @ 21d2c50 :thumb
	mov     r0, #0x1
	mov     r2, #0x63
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	lsl     r2, r2, #2
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r7
	add     r2, r6, r2
	mov     r3, #0x4
	bl      Function_21d2b90
	mov     r0, r7
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d2c6e


.align 2, 0


.thumb
Function_21d2c70: @ 21d2c70 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r2
	mov     r5, r0
	mov     r0, r1
	mov     r1, r4
	bl      malloc2
	mov     r7, r0
	mov     r0, r5
	bl      Function_202440c
	mov     r6, r0
	mov     r0, r5
	bl      Function_21d2b4c
	cmp     r4, r0
	beq     branch_21d2c98
	bl      ErrorHandling
.thumb
branch_21d2c98: @ 21d2c98 :thumb
	mov     r0, #0x1
	add     r6, #0xc
	str     r0, [sp, #0x0]
	mov     r3, #0x4
	mov     r0, r5
	mov     r1, r7
	mov     r2, r6
	str     r3, [sp, #0x4]
	bl      Function_21d2b90
	mov     r0, r7
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d2cb2


.align 2, 0


.thumb
Function_21d2cb4: @ 21d2cb4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r2
	mov     r5, r0
	mov     r0, r1
	mov     r1, r4
	bl      malloc2
	mov     r7, r0
	mov     r0, r5
	bl      Function_202440c
	mov     r6, r0
	mov     r0, r5
	bl      Function_21d2b54
	cmp     r4, r0
	beq     branch_21d2cdc
	bl      ErrorHandling
.thumb
branch_21d2cdc: @ 21d2cdc :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	add     r6, #0xcc
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r7
	mov     r2, r6
	mov     r3, #0x4
	bl      Function_21d2b90
	mov     r0, r7
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d2cf8

.thumb
Function_21d2cf8: @ 21d2cf8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r2
	mov     r5, r0
	mov     r0, r1
	mov     r1, r4
	bl      malloc2
	mov     r7, r0
	mov     r0, r5
	bl      Function_202440c
	mov     r6, r0
	mov     r0, r5
	bl      Function_21d2b44
	cmp     r4, r0
	beq     branch_21d2d20
	bl      ErrorHandling
.thumb
branch_21d2d20: @ 21d2d20 :thumb
	mov     r0, #0x0
	mov     r2, #0x63
	str     r0, [sp, #0x0]
	lsl     r2, r2, #2
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r7
	add     r2, r6, r2
	mov     r3, #0x4
	bl      Function_21d2b90
	mov     r0, r7
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d2d3c

.thumb
Function_21d2d3c: @ 21d2d3c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r2
	mov     r5, r0
	mov     r0, r1
	mov     r1, r4
	bl      malloc2
	mov     r7, r0
	mov     r0, r5
	bl      Function_202440c
	mov     r6, r0
	mov     r0, r5
	bl      Function_21d2b4c
	cmp     r4, r0
	beq     branch_21d2d64
	bl      ErrorHandling
.thumb
branch_21d2d64: @ 21d2d64 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	add     r6, #0xc
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r7
	mov     r2, r6
	mov     r3, #0x4
	bl      Function_21d2b90
	mov     r0, r7
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d2d80

.thumb
Function_21d2d80: @ 21d2d80 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r2
	mov     r5, r0
	mov     r0, r1
	mov     r1, r4
	bl      malloc2
	mov     r7, r0
	mov     r0, r5
	bl      Function_202440c
	mov     r6, r0
	mov     r0, r5
	bl      Function_21d2b54
	cmp     r4, r0
	beq     branch_21d2da8
	bl      ErrorHandling
.thumb
branch_21d2da8: @ 21d2da8 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	add     r6, #0xcc
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r7
	mov     r2, r6
	mov     r3, #0x4
	bl      Function_21d2b90
	mov     r0, r7
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d2dc4

.thumb
Function_21d2dc4: @ 21d2dc4 :thumb
	push    {r4-r6,lr}
	mov     r6, r2
	mov     r4, r1
	ldrb    r1, [r6, #0x18]
	mov     r5, r0
	cmp     r1, #0x0
	bne     branch_21d2dd6
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x21d2dd6

.thumb
branch_21d2dd6: @ 21d2dd6 :thumb
	mov     r0, r3
	bl      Function_21d2b5c
	cmp     r0, #0x0
	bne     branch_21d2de6
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4-r6,pc}
@ 0x21d2de6

.thumb
branch_21d2de6: @ 21d2de6 :thumb
	mov     r1, #0x0
	cmp     r4, #0x0
	ble     branch_21d2e10
	mov     r2, r5
.thumb
branch_21d2dee: @ 21d2dee :thumb
	ldrb    r0, [r2, #0x18]
	cmp     r0, #0x0
	bne     branch_21d2e08
	mov     r0, #0x48
	mul     r0, r1
	add     r3, r5, r0
	mov     r2, #0x9
.thumb
branch_21d2dfc: @ 21d2dfc :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d2dfc
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21d2e08

.thumb
branch_21d2e08: @ 21d2e08 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x48
	cmp     r1, r4
	blt     branch_21d2dee
.thumb
branch_21d2e10: @ 21d2e10 :thumb
	mov     r2, #0x0
	cmp     r4, #0x0
	ble     branch_21d2e3a
	mov     r1, r5
.thumb
branch_21d2e18: @ 21d2e18 :thumb
	ldrb    r0, [r1, #0x19]
	cmp     r0, #0x3
	bcc     branch_21d2e32
	mov     r0, #0x48
	mul     r0, r2
	add     r3, r5, r0
	mov     r2, #0x9
.thumb
branch_21d2e26: @ 21d2e26 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d2e26
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21d2e32

.thumb
branch_21d2e32: @ 21d2e32 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r1, #0x48
	cmp     r2, r4
	blt     branch_21d2e18
.thumb
branch_21d2e3a: @ 21d2e3a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x21d2e3e


.align 2, 0


.thumb
Function_21d2e40: @ 21d2e40 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r2
	bl      Function_2032ee8
	cmp     r0, #0x0
	bne     branch_21d2e52
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d2e52

.thumb
branch_21d2e52: @ 21d2e52 :thumb
	bl      Function_2025fcc
	cmp     r0, #0x0
	beq     branch_21d2e5c
	mov     r4, r5
.thumb
branch_21d2e5c: @ 21d2e5c :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d2e60

.thumb
Function_21d2e60: @ 21d2e60 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x44]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x44]
	ldr     r0, [sp, #0x48]
	mov     r7, r2
	str     r0, [sp, #0x48]
	add     r0, sp, #0x1c
	mov     r1, #0x0
	mov     r2, #0x10
	str     r3, [sp, #0x8]
	ldr     r5, [sp, #0x40]
	blx     MI_CpuFill8
	mov     r4, #0x0
	mov     r6, r4
	cmp     r7, #0x0
	ble     branch_21d2f04
	str     r5, [sp, #0x14]
.thumb
branch_21d2e8a: @ 21d2e8a :thumb
	ldr     r0, [sp, #0x14]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d2ef8
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	str     r0, [sp, #0x10]
	b       branch_21d2ef2
@ 0x21d2e9a

.thumb
branch_21d2e9a: @ 21d2e9a :thumb
	add     r0, r4, #0x1
	mov     r1, r7
	blx     _s32_div_f
	mov     r4, r1
.thumb
branch_21d2ea4: @ 21d2ea4 :thumb
	lsl     r0, r4, #2
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d2e9a
	cmp     r4, r6
	beq     branch_21d2e9a
	add     r0, sp, #0x1c
	ldrb    r0, [r0, r4]
	cmp     r0, #0x4
	beq     branch_21d2e9a
	add     r1, r0, #0x1
	add     r0, sp, #0x1c
	strb    r1, [r0, r4]
	ldr     r0, [sp, #0x8]
	cmp     r4, r0
	beq     branch_21d2ee6
	ldr     r2, [sp, #0x44]
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d2e40
	mov     r3, r0
	beq     branch_21d2ee6
	ldr     r2, [sp, #0xc]
	ldr     r0, [sp, #0x0]
	ldr     r3, [r3, r2]
	ldr     r2, [sp, #0x10]
	ldr     r1, [sp, #0x4]
	add     r2, r3, r2
	ldr     r3, [sp, #0x48]
	bl      Function_21d2dc4
.thumb
branch_21d2ee6: @ 21d2ee6 :thumb
	ldr     r0, [sp, #0x10]
	add     r0, #0x48
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
.thumb
branch_21d2ef2: @ 21d2ef2 :thumb
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x4
	blt     branch_21d2ea4
.thumb
branch_21d2ef8: @ 21d2ef8 :thumb
	ldr     r0, [sp, #0x14]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x14]
	cmp     r6, r7
	blt     branch_21d2e8a
.thumb
branch_21d2f04: @ 21d2f04 :thumb
	mov     r0, #0x1b
	bl      Function_2025c84
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x21d2f0e


.align 2, 0


.thumb
Function_21d2f10: @ 21d2f10 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r1, [sp, #0x18]
	str     r3, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r4, r2
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r1, #0x93
	lsl     r1, r1, #2
	add     r0, r0, r1
	mov     r1, #0x10
	mov     r2, r5
	mov     r3, r4
	bl      Function_21d2e60
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d2f36


.align 2, 0


.thumb
Function_21d2f38: @ 21d2f38 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r1, [sp, #0x18]
	str     r3, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r4, r2
	mov     r1, #0x2
	str     r1, [sp, #0x8]
	ldr     r1, [pc, #0x10] @ 0x21d2f5c, (=0x6cc)
	mov     r2, r5
	add     r0, r0, r1
	mov     r1, #0x8
	mov     r3, r4
	bl      Function_21d2e60
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d2f5c

.word 0x6cc @ 0x21d2f5c
.thumb
Function_21d2f60: @ 21d2f60 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r1, [sp, #0x18]
	str     r3, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r4, r2
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	ldr     r1, [pc, #0x10] @ 0x21d2f84, (=0x90c)
	mov     r2, r5
	add     r0, r0, r1
	mov     r1, #0x8
	mov     r3, r4
	bl      Function_21d2e60
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d2f84

.word 0x90c @ 0x21d2f84
.thumb
Function_21d2f88: @ 21d2f88 :thumb
	push    {r3,lr}
	bl      LoadVariableAreaAdress_11
	bl      Function_21d2a2c
	pop     {r3,pc}
@ 0x21d2f94

.thumb
Function_21d2f94: @ 21d2f94 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r2
	bl      LoadVariableAreaAdress_11
	mov     r6, r0
	mov     r0, r4
	mov     r1, r5
	bl      malloc2
	mov     r4, r0
	mov     r0, r6
	bl      Function_21d2a30
	mov     r1, r4
	mov     r2, r5
	blx     MIi_CpuCopyFast
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x21d2fbc

.thumb
Function_21d2fbc: @ 21d2fbc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      LoadVariableAreaAdress_11
	mov     r2, r0
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	ldr     r3, [r4, #0x10]
	bl      Function_21d2ac4
	pop     {r4,pc}
@ 0x21d2fd4

.thumb
Function_21d2fd4: @ 21d2fd4 :thumb
	push    {r3,lr}
	bl      LoadVariableAreaAdress_e
	bl      Function_2029c60
	pop     {r3,pc}
@ 0x21d2fe0

.thumb
Function_21d2fe0: @ 21d2fe0 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r2
	bl      LoadVariableAreaAdress_e
	mov     r6, r0
	mov     r0, r4
	mov     r1, r5
	bl      malloc2
	mov     r4, r0
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_2029ca8
	mov     r1, r4
	mov     r2, r5
	blx     MIi_CpuCopyFast
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x21d300a


.align 2, 0
.thumb
Function_21d300c: @ 21d300c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      LoadVariableAreaAdress_e
	mov     r2, r0
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	lsl     r0, r0, #24
	ldr     r3, [r4, #0x10]
	lsr     r0, r0, #24
	bl      Function_202a6a8
	pop     {r4,pc}
@ 0x21d3028


.thumb
Function_21d3028: @ 21d3028 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_202440c
	ldr     r1, [r4, #0x14]
	str     r1, [sp, #0x0]
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0xc]
	ldr     r3, [r4, #0x10]
	bl      Function_21d2f10
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d3046


.align 2, 0


.thumb
Function_21d3048: @ 21d3048 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_202440c
	ldr     r1, [r4, #0x14]
	str     r1, [sp, #0x0]
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0xc]
	ldr     r3, [r4, #0x10]
	bl      Function_21d2f38
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d3066


.align 2, 0


.thumb
Function_21d3068: @ 21d3068 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_202440c
	ldr     r1, [r4, #0x14]
	str     r1, [sp, #0x0]
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0xc]
	ldr     r3, [r4, #0x10]
	bl      Function_21d2f60
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d3086


.align 2, 0
.thumb
Function_21d3088: @ 21d3088 :thumb
	ldr     r3, [pc, #0x0] @ 0x21d308c, (=Function_202e9fc+1)
	bx      r3
@ 0x21d308c

.word Function_202e9fc+1 @ 0x21d308c



.thumb
Function_21d3090: @ 21d3090 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_202e8c0
	ldr     r0, [r4, #0x0]
	str     r0, [sp, #0x0]
	ldr     r2, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	lsl     r2, r2, #24
	ldr     r1, [r4, #0xc]
	ldr     r3, [r4, #0x10]
	lsr     r2, r2, #24
	bl      Function_202ed0c
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d30b4

.thumb
Function_21d30b4: @ 21d30b4 :thumb
	push    {r4-r6,lr}
	mov     r5, r2
	mov     r6, r0
	mov     r0, r1
	mov     r1, r5
	bl      malloc2
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, r5
	blx     MI_CpuFill8
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_2073700
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x21d30da


.align 2, 0


.thumb
Function_21d30dc: @ 21d30dc :thumb
	bx      lr
@ 0x21d30de


.align 2, 0


.thumb
Function_21d30e0: @ 21d30e0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	ldr     r6, [pc, #0x48] @ 0x21d3134, (=0xbb8)
	ldr     r5, [pc, #0x4c] @ 0x21d3138, (=0x21d33fc)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
.thumb
branch_21d30f0: @ 21d30f0 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [r5, #0x0]
	blx     r1
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	ldr     r3, [r5, #0x4]
	mov     r1, #0x33
	mov     r2, r4
	blx     r3
	mov     r7, r0
	cmp     r6, r4
	bhi     branch_21d310c
	bl      ErrorHandling
.thumb
branch_21d310c: @ 21d310c :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r7
	mov     r2, r4
	blx     MIi_CpuCopyFast
	mov     r0, r7
	bl      free
	ldr     r0, [sp, #0x4]
	sub     r6, r6, r4
	add     r0, r0, r4
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	add     r5, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, #0xa
	blt     branch_21d30f0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d3134

.word 0xbb8 @ 0x21d3134
.word 0x21d33fc @ 0x21d3138
.thumb
Function_21d313c: @ 21d313c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x68
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x13c] @ 0x21d3280, (=0xbb8)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x14]
	mov     r0, #0x33
	str     r0, [sp, #0x50]
	ldr     r0, [sp, #0x0]
	mov     r7, #0x0
	str     r0, [sp, #0x54]
	bl      Function_203608c
	mov     r5, r7
	str     r0, [sp, #0x5c]
	mov     r0, #0x5
	str     r0, [sp, #0x58]
	add     r0, sp, #0x3c
	str     r0, [sp, #0x60]
	add     r0, sp, #0x28
	ldr     r4, [pc, #0x11c] @ 0x21d3284, (=0x21d33fc)
	str     r0, [sp, #0x64]
	str     r5, [sp, #0x1c]
	str     r5, [sp, #0x20]
	str     r5, [sp, #0x24]
.thumb
branch_21d316e: @ 21d316e :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [r4, #0x0]
	blx     r1
	ldr     r1, [sp, #0x1c]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r0, r1, r0
	add     r4, #0xc
	str     r0, [sp, #0x1c]
	cmp     r5, #0x2
	blt     branch_21d316e
	ldr     r4, [pc, #0x100] @ 0x21d3284, (=0x21d33fc)
	mov     r5, #0x0
.thumb
branch_21d3186: @ 21d3186 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [r4, #0x0]
	blx     r1
	ldr     r1, [sp, #0x20]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r0, r1, r0
	add     r4, #0xc
	str     r0, [sp, #0x20]
	cmp     r5, #0x3
	blt     branch_21d3186
	ldr     r4, [pc, #0xe8] @ 0x21d3284, (=0x21d33fc)
	mov     r5, #0x0
.thumb
branch_21d319e: @ 21d319e :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [r4, #0x0]
	blx     r1
	ldr     r1, [sp, #0x24]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r0, r1, r0
	add     r4, #0xc
	str     r0, [sp, #0x24]
	cmp     r5, #0x4
	blt     branch_21d319e
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xcc] @ 0x21d3284, (=0x21d33fc)
	str     r0, [sp, #0x10]
	add     r0, sp, #0x1c
	str     r0, [sp, #0xc]
.thumb
branch_21d31be: @ 21d31be :thumb
	ldr     r1, [sp, #0x10]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r1, #0x0]
	blx     r1
	ldr     r1, [sp, #0x14]
	str     r0, [sp, #0x18]
	cmp     r1, r0
	bhi     branch_21d31d2
	bl      ErrorHandling
.thumb
branch_21d31d2: @ 21d31d2 :thumb
	mov     r6, #0x0
	ldr     r4, [sp, #0x4]
	mov     r5, r6
.thumb
branch_21d31d8: @ 21d31d8 :thumb
	mov     r0, r6
	bl      Function_2032ee8
	cmp     r0, #0x0
	beq     branch_21d31ea
	ldr     r0, [sp, #0x60]
	add     r1, r4, r7
	str     r1, [r0, r5]
	b       branch_21d31f0
@ 0x21d31ea

.thumb
branch_21d31ea: @ 21d31ea :thumb
	ldr     r1, [sp, #0x60]
	mov     r0, #0x0
	str     r0, [r1, r5]
.thumb
branch_21d31f0: @ 21d31f0 :thumb
	mov     r0, #0x2f
	lsl     r0, r0, #6
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, r4, r0
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x5
	blt     branch_21d31d8
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x7
	beq     branch_21d320c
	cmp     r0, #0x8
	beq     branch_21d320c
	cmp     r0, #0x9
	bne     branch_21d323e
.thumb
branch_21d320c: @ 21d320c :thumb
	mov     r6, #0x0
	ldr     r4, [sp, #0x4]
	mov     r5, r6
.thumb
branch_21d3212: @ 21d3212 :thumb
	mov     r0, r6
	bl      Function_2032ee8
	cmp     r0, #0x0
	beq     branch_21d322a
	ldr     r0, [sp, #0xc]
	sub     r0, #0x1c
	ldr     r0, [r0, #0x0]
	add     r1, r4, r0
	ldr     r0, [sp, #0x64]
	str     r1, [r0, r5]
	b       branch_21d3230
@ 0x21d322a

.thumb
branch_21d322a: @ 21d322a :thumb
	ldr     r1, [sp, #0x64]
	mov     r0, #0x0
	str     r0, [r1, r5]
.thumb
branch_21d3230: @ 21d3230 :thumb
	mov     r0, #0x2f
	lsl     r0, r0, #6
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, r4, r0
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x5
	blt     branch_21d3212
.thumb
branch_21d323e: @ 21d323e :thumb
	ldr     r0, [sp, #0x10]
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_21d324a
	add     r0, sp, #0x50
	blx     r1
.thumb
branch_21d324a: @ 21d324a :thumb
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x14]
	add     r7, r7, r0
	sub     r0, r1, r0
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	add     r0, #0xc
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, #0xa
	bcc     branch_21d31be
	ldr     r0, [sp, #0x0]
	bl      Function_202440c
	mov     r4, r0
	bl      Function_202e2ec
	mov     r0, r4
	bl      Function_202e35c
	add     sp, #0x68
	pop     {r3-r7,pc}
@ 0x21d3280

.word 0xbb8 @ 0x21d3280
.word 0x21d33fc @ 0x21d3284



Unknown_21d3288: @ 0x21d3288
.incbin "./baserom/overlay/overlay_0059.bin", 0x2508, 0x21d33fc - 0x21d3288


.word Function_21d2f88+1 @ =0x21d2f89, 0x21d33fc
.word Function_21d2f94+1 @ =0x21d2f95, 0x21d3400
.word Function_21d2fbc+1 @ =0x21d2fbd, 0x21d3404
.word Function_21d2fd4+1 @ =0x21d2fd5, 0x21d3408
.word Function_21d2fe0+1 @ =0x21d2fe1, 0x21d340c
.word Function_21d300c+1 @ =0x21d300d, 0x21d3410
.word Function_21d2b4c+1 @ =0x21d2b4d, 0x21d3414
.word Function_21d2c70+1 @ =0x21d2c71, 0x21d3418
.word 0x0 @ 0x21d341c
.word Function_21d2b54+1 @ =0x21d2b55, 0x21d3420
.word Function_21d2cb4+1 @ =0x21d2cb5, 0x21d3424
.word 0x0 @ 0x21d3428
.word Function_21d2b44+1 @ =0x21d2b45, 0x21d342c
.word Function_21d2c28+1 @ =0x21d2c29, 0x21d3430
.word 0x0 @ 0x21d3434
.word Function_202e91c+1 @ 0x21d3438
.word Function_21d3088+1 @ =0x21d3089, 0x21d343c
.word Function_21d3090+1 @ =0x21d3091, 0x21d3440
.word Function_202d05c+1 @ 0x21d3444
.word Function_21d30b4+1 @ =0x21d30b5, 0x21d3448
.word Function_21d30dc+1 @ =0x21d30dd, 0x21d344c
.word Function_21d2b4c+1 @ =0x21d2b4d, 0x21d3450
.word Function_21d2d3c+1 @ =0x21d2d3d, 0x21d3454
.word Function_21d3028+1 @ =0x21d3029, 0x21d3458
.word Function_21d2b54+1 @ =0x21d2b55, 0x21d345c
.word Function_21d2d80+1 @ =0x21d2d81, 0x21d3460
.word Function_21d3048+1 @ =0x21d3049, 0x21d3464
.word Function_21d2b44+1 @ =0x21d2b45, 0x21d3468
.word Function_21d2cf8+1 @ =0x21d2cf9, 0x21d346c
.word Function_21d3068+1 @ =0x21d3069, 0x21d3470
.word 0x0 @ 0x21d3474
.word 0x0 @ 0x21d3478
.word 0x0 @ 0x21d347c
.word Function_21d17f8+1 @ =0x21d17f9, 0x21d3480
.word Function_21d1998+1 @ =0x21d1999, 0x21d3484
.word Function_21d19e4+1 @ =0x21d19e5, 0x21d3488
.word Function_21d1838+1 @ =0x21d1839, 0x21d348c
.word Function_21d1a14+1 @ =0x21d1a15, 0x21d3490
.word Function_21d1a44+1 @ =0x21d1a45, 0x21d3494
.word Function_21d1b74+1 @ =0x21d1b75, 0x21d3498
.word Function_21d1b8c+1 @ =0x21d1b8d, 0x21d349c
.word Function_21d1c14+1 @ =0x21d1c15, 0x21d34a0
.word Function_21d1e98+1 @ =0x21d1e99, 0x21d34a4
.word Function_21d1eb8+1 @ =0x21d1eb9, 0x21d34a8
.word Function_21d1ef4+1 @ =0x21d1ef5, 0x21d34ac
.word Function_21d1f24+1 @ =0x21d1f25, 0x21d34b0
.word Function_21d1fd0+1 @ =0x21d1fd1, 0x21d34b4
.word Function_21d2020+1 @ =0x21d2021, 0x21d34b8
.word Function_21d2044+1 @ =0x21d2045, 0x21d34bc
.word Function_21d2064+1 @ =0x21d2065, 0x21d34c0
.word Function_21d20a4+1 @ =0x21d20a5, 0x21d34c4
.word Function_21d20d0+1 @ =0x21d20d1, 0x21d34c8
.word Function_21d20f4+1 @ =0x21d20f5, 0x21d34cc
.word Function_21d2154+1 @ =0x21d2155, 0x21d34d0
.word Function_21d2190+1 @ =0x21d2191, 0x21d34d4
.word Function_21d1c34+1 @ =0x21d1c35, 0x21d34d8
.word Function_21d1c64+1 @ =0x21d1c65, 0x21d34dc
.word Function_21d1d14+1 @ =0x21d1d15, 0x21d34e0
.word Function_21d1d70+1 @ =0x21d1d71, 0x21d34e4
.word Function_21d1da0+1 @ =0x21d1da1, 0x21d34e8
.word Function_21d1dc8+1 @ =0x21d1dc9, 0x21d34ec
.word Function_21d1e0c+1 @ =0x21d1e0d, 0x21d34f0
.word Function_21d1e7c+1 @ =0x21d1e7d, 0x21d34f4
.word Function_21d19c0+1 @ =0x21d19c1, 0x21d34f8
@ 0x21d34fc


.incbin "./baserom/overlay/overlay_0059.bin", 0x277c, 0x21d3500 - 0x21d34fc


@end 0x21d3500




