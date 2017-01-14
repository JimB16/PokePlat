

.section .iwram72, "ax"


.thumb
Function_223d7a0: @ 223d7a0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r1, [r5, #0x0]
	mov     r6, r0
	cmp     r1, #0x0
	beq     branch_223d7b6
	cmp     r1, #0x1
	bne     branch_223d7b4
	b       branch_223d8ea

branch_223d7b4: @ 223d7b4 :thumb
	b       branch_223d8f8

branch_223d7b6: @ 223d7b6 :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      SetBrightnessWithValue
	mov     r0, #0x1
	mov     r1, #0x0
	bl      SetBrightnessWithValue
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x11c] @ 0x223d900, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x11c] @ 0x223d904, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x3
	mov     r1, #0x27
	lsl     r2, r2, #6
	bl      Function_2017fc8
	ldr     r1, [pc, #0x10c] @ 0x223d908, (=0x5cb0)
	mov     r0, r6
	mov     r2, #0x27
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	ldr     r2, [pc, #0x104] @ 0x223d908, (=0x5cb0)
	mov     r1, #0x0
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, #0x27
	bl      Function_2018340
	str     r0, [r4, #0x0]
	mov     r0, #0x5f
	mov     r1, #0x27
	bl      LoadFromNARC_8
	mov     r7, r0
	mov     r0, #0x27
	bl      Function_200b358
	str     r0, [r4, #0x10]
	ldr     r2, [pc, #0xe4] @ 0x223d90c, (=0x1a9)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x27
	bl      Function_200b144
	str     r0, [r4, #0x14]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      Function_2017dd4
	bl      Function_223da70
	ldr     r0, [r4, #0x0]
	bl      Function_223da90
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x27
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	mov     r0, r6
	bl      LoadPtrToOverWorldDataIn18
	bl      LoadVariableAreaAdress_13
	bl      Function_202c840
	ldr     r1, [pc, #0xa4] @ 0x223d910, (=0x5b98)
	str     r0, [r4, r1]
	mov     r0, r6
	bl      LoadPtrToOverWorldDataIn18
	bl      LoadVariableAreaAdress_14
	str     r0, [r4, #0x8]
	mov     r0, r6
	bl      LoadPtrToOverWorldDataIn18
	bl      LoadPlayerDataAdress
	str     r0, [r4, #0xc]
	mov     r0, r4
	mov     r1, r7
	bl      Function_223dca8
	bl      Function_201e3d8
	mov     r0, #0x1
	bl      Function_201e450
	ldr     r0, [pc, #0x78] @ 0x223d914, (=0x223da49)
	ldr     r1, [r4, #0x0]
	bl      SetMainLoopFunctionCall
	mov     r0, #0x2
	mov     r1, #0x27
	bl      Function_2002bb8
	mov     r0, r4
	bl      Function_223db98
	bl      Function_223dda8
	mov     r0, r4
	mov     r1, r7
	bl      Function_223ddd8
	mov     r0, r4
	bl      Function_223df58
	mov     r0, r4
	mov     r1, r6
	bl      Function_223e0a0
	mov     r1, #0x0
	mov     r0, #0x38
	mov     r2, r1
	bl      Function_2004550
	ldr     r2, [pc, #0x44] @ 0x223d918, (=0x4000304)
	ldr     r0, [pc, #0x44] @ 0x223d91c, (=0xffff7fff)
	ldrh    r1, [r2, #0x0]
	and     r0, r1
	strh    r0, [r2, #0x0]
	mov     r0, r7
	bl      Call_FS_CloseFile
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223d8f8
@ 0x223d8ea

.thumb
branch_223d8ea: @ 223d8ea :thumb
	bl      LoadOverlayData1c
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x223d8f8

.thumb
branch_223d8f8: @ 223d8f8 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223d8fe


.align 2


.word 0xffffe0ff @ 0x223d900
.word 0x4001000 @ 0x223d904
.word 0x5cb0 @ 0x223d908
.word 0x1a9 @ 0x223d90c
.word 0x5b98 @ 0x223d910
.word 0x223da49 @ 0x223d914
.word 0x4000304 @ 0x223d918
.word 0xffff7fff @ 0x223d91c
.thumb
Function_223d920: @ 223d920 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      LoadOverlayData1c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_223d93a
	cmp     r1, #0x1
	beq     branch_223d948
	cmp     r1, #0x2
	beq     branch_223d966
	b       branch_223d972
@ 0x223d93a

.thumb
branch_223d93a: @ 223d93a :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_223d972
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223d972
@ 0x223d948

.thumb
branch_223d948: @ 223d948 :thumb
	mov     r2, #0xc3
	lsl     r2, r2, #2
	ldr     r2, [r4, r2]
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x28] @ 0x223d97c, (=0x223ed40)
	ldr     r2, [r2, r3]
	cmp     r2, #0x0
	beq     branch_223d95c
	blx     r2
	str     r0, [r5, #0x0]
.thumb
branch_223d95c: @ 223d95c :thumb
	ldr     r0, [pc, #0x20] @ 0x223d980, (=0x4318)
	add     r0, r4, r0
	bl      Function_223e8d0
	b       branch_223d972
@ 0x223d966

.thumb
branch_223d966: @ 223d966 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_223d972
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223d972

.thumb
branch_223d972: @ 223d972 :thumb
	ldr     r0, [r4, #0x3c]
	bl      Function_20219f8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223d97c

.word 0x223ed40 @ 0x223d97c
.word 0x4318 @ 0x223d980
.thumb
Function_223d984: @ 223d984 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	bl      LoadOverlayData1c
	mov     r6, r0
	ldr     r0, [pc, #0xb0] @ 0x223da40, (=0x5b98)
	mov     r1, #0x2d
	lsl     r1, r1, #4
	ldr     r0, [r6, r0]
	ldr     r1, [r6, r1]
	bl      Function_223e9b4
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x5e
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_200a4e4
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_200a4e4
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_200a6dc
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_200a6dc
	mov     r7, #0x5a
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_223d9d4: @ 223d9d4 :thumb
	ldr     r0, [r5, r7]
	bl      Function_2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_223d9d4
	ldr     r0, [r6, #0x3c]
	bl      Function_2021964
	bl      Function_200a878
	bl      Function_201e958
	bl      Function_201f8b4
	mov     r0, r6
	bl      Function_223e260
	mov     r0, #0x2
	bl      Function_2002c60
	ldr     r0, [r6, #0x0]
	bl      Function_223dc6c
	bl      Function_201e530
	ldr     r0, [r6, #0x14]
	bl      Function_200b190
	ldr     r0, [r6, #0x10]
	bl      Function_200b3f0
	mov     r0, r6
	bl      Function_223dc34
	ldr     r0, [sp, #0x0]
	bl      FreeSomeDataAndStore0InOverlayData1c
	ldr     r2, [pc, #0x20] @ 0x223da44, (=0x4000304)
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	orr     r0, r1
	strh    r0, [r2, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x27
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223da3e


.align 2


.word 0x5b98 @ 0x223da40
.word 0x4000304 @ 0x223da44
.thumb
Function_223da48: @ 223da48 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_201dcac
	bl      Function_200a858
	mov     r0, r4
	bl      Function_201c2b8
	ldr     r3, [pc, #0xc] @ 0x223da68, (=0x27e0000)
	ldr     r1, [pc, #0xc] @ 0x223da6c, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x223da68

.word 0x27e0000 @ 0x223da68
.word 0x3ff8 @ 0x223da6c
.thumb
Function_223da70: @ 223da70 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x223da8c, (=0x223ec08)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_223da7a: @ 223da7a :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223da7a
	add     r0, sp, #0x0
	bl      Function_201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x223da8c

.word 0x223ec08 @ 0x223da8c
.thumb
Function_223da90: @ 223da90 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x9c
	ldr     r5, [pc, #0xe8] @ 0x223db80, (=0x223eb5c)
	add     r3, sp, #0x8c
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      Function_2018368
	ldr     r5, [pc, #0xd8] @ 0x223db84, (=0x223ebb4)
	add     r3, sp, #0x70
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
	ldr     r5, [pc, #0xb4] @ 0x223db88, (=0x223ebd0)
	add     r3, sp, #0x54
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019ebc
	ldr     r5, [pc, #0x90] @ 0x223db8c, (=0x223ebec)
	add     r3, sp, #0x38
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	ldr     r5, [pc, #0x74] @ 0x223db90, (=0x223eb7c)
	add     r3, sp, #0x1c
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
	ldr     r5, [pc, #0x50] @ 0x223db94, (=0x223eb98)
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
	mov     r1, #0x5
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x27
	bl      Function_2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x27
	bl      Function_2019690
	add     sp, #0x9c
	pop     {r4,r5,pc}
@ 0x223db7e


.align 2


.word 0x223eb5c @ 0x223db80
.word 0x223ebb4 @ 0x223db84
.word 0x223ebd0 @ 0x223db88
.word 0x223ebec @ 0x223db8c
.word 0x223eb7c @ 0x223db90
.word 0x223eb98 @ 0x223db94
.thumb
Function_223db98: @ 223db98 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [pc, #0x84] @ 0x223dc24, (=0x433d)
	mov     r6, #0x0
	add     r5, r7, r0
	mov     r0, #0xf0
	mov     r4, r7
	str     r0, [sp, #0x0]
.thumb
branch_223dba8: @ 223dba8 :thumb
	mov     r0, #0x8
	mov     r1, #0x27
	bl      Function_2023790
	str     r0, [r4, #0x18]
	ldrb    r1, [r5, #0x0]
	ldr     r0, [sp, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	bic     r1, r0
	strb    r1, [r5, #0x0]
	ldr     r0, [pc, #0x68] @ 0x223dc28, (=0x4384)
	mov     r1, #0x0
	strh    r1, [r4, r0]
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x11
	cmp     r6, #0x5
	blt     branch_223dba8
	mov     r0, #0x14
	mov     r1, #0x27
	bl      Function_2023790
	str     r0, [r7, #0x2c]
	mov     r0, #0x28
	mov     r1, #0x27
	bl      Function_2023790
	str     r0, [r7, #0x30]
	mov     r0, #0x50
	mov     r1, #0x27
	bl      Function_2023790
	str     r0, [r7, #0x34]
	ldr     r0, [pc, #0x40] @ 0x223dc2c, (=0x431a)
	mov     r1, #0x0
	strb    r1, [r7, r0]
	mov     r0, #0xc3
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r7, r0]
	ldr     r0, [r7, #0x14]
	ldr     r2, [r7, #0x2c]
	mov     r1, #0xc
	bl      Function_200b1b8
	ldr     r0, [r7, #0x14]
	ldr     r2, [r7, #0x30]
	mov     r1, #0x9
	bl      Function_200b1b8
	mov     r0, #0x27
	bl      Function_2015920
	ldr     r1, [pc, #0x1c] @ 0x223dc30, (=0x5c9c)
	mov     r2, #0x5
	str     r0, [r7, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	mov     r0, #0x0
	add     r1, r7, r1
	blx     MIi_CpuClearFast
	pop     {r3-r7,pc}
@ 0x223dc22


.align 2


.word 0x433d @ 0x223dc24
.word 0x4384 @ 0x223dc28
.word 0x431a @ 0x223dc2c
.word 0x5c9c @ 0x223dc30
.thumb
Function_223dc34: @ 223dc34 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x2c] @ 0x223dc68, (=0x5c9c)
	ldr     r0, [r6, r0]
	bl      Function_2015938
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_223dc44: @ 223dc44 :thumb
	ldr     r0, [r5, #0x18]
	bl      Function_20237bc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x5
	blt     branch_223dc44
	ldr     r0, [r6, #0x34]
	bl      Function_20237bc
	ldr     r0, [r6, #0x30]
	bl      Function_20237bc
	ldr     r0, [r6, #0x2c]
	bl      Function_20237bc
	pop     {r4-r6,pc}
@ 0x223dc66


.align 2


.word 0x5c9c @ 0x223dc68
.thumb
Function_223dc6c: @ 223dc6c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x4
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
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019044
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x223dca6


.align 2, 0


.thumb
Function_223dca8: @ 223dca8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r0
	ldr     r4, [r6, #0x0]
	mov     r0, #0x60
	mov     r5, r1
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x27
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      Function_2007130
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	mov     r0, #0x27
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2007130
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x27
	bl      Function_2002e98
	mov     r1, #0x1a
	mov     r0, #0x4
	lsl     r1, r1, #4
	mov     r2, #0x27
	bl      Function_2002e98
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x27
	bl      Function_2019690
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x27
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, r4
	mov     r3, #0x2
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x27
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, r4
	mov     r3, #0x2
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x27
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, r4
	mov     r3, #0x5
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x27
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, r4
	mov     r3, #0x5
	bl      Function_200710c
	ldr     r0, [r6, #0xc]
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x27
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x27
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200daa4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223dda8

.thumb
Function_223dda8: @ 223dda8 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x24] @ 0x223ddd4, (=0x223eb6c)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      Function_201e86c
	mov     r0, #0x14
	mov     r1, #0x27
	bl      Function_201f834
	bl      Function_201e994
	bl      Function_201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223ddd4

.word 0x223eb6c @ 0x223ddd4
.thumb
Function_223ddd8: @ 223ddd8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r7, r1
	blx     Function_20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7e
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x27
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      Function_200a784
	mov     r1, r5
	mov     r0, #0x32
	add     r1, #0x40
	mov     r2, #0x27
	bl      Function_20095c4
	str     r0, [r5, #0x3c]
	mov     r0, r5
	mov     r2, #0x1
	add     r0, #0x40
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      Function_200964c
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_223de1c: @ 223de1c :thumb
	mov     r0, #0x2
	mov     r1, r6
	mov     r2, #0x27
	bl      Function_2009714
	mov     r1, #0x5a
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_223de1c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	mov     r0, #0x27
	str     r0, [sp, #0x8]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, r7
	mov     r2, #0x7
	bl      Function_2009a4c
	mov     r1, #0x5e
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	mov     r0, #0x27
	sub     r1, #0xc
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	mov     r1, r7
	bl      Function_2009b04
	mov     r1, #0x5f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x27
	sub     r1, #0xc
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r2, #0x8
	mov     r3, #0x1
	bl      Function_2009bc4
	mov     r1, #0x6
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x27
	sub     r1, #0xc
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r2, #0x9
	mov     r3, #0x1
	bl      Function_2009bc4
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x27
	sub     r1, #0x1c
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r2, #0x7
	bl      Function_2009a4c
	mov     r1, #0x62
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	mov     r0, #0x27
	sub     r1, #0x1c
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_2009b04
	mov     r1, #0x63
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x27
	sub     r1, #0x1c
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r2, #0x8
	bl      Function_2009bc4
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x27
	sub     r1, #0x1c
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r7
	mov     r2, #0x9
	bl      Function_2009bc4
	mov     r1, #0x65
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	sub     r1, #0x1c
	ldr     r0, [r5, r1]
	bl      Function_200a328
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_200a328
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_200a5c8
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_200a5c8
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223df58

.thumb
Function_223df58: @ 223df58 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x5c
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r2, #0x5a
	str     r1, [sp, #0x10]
	lsl     r2, r2, #2
	ldr     r0, [r4, r2]
	mov     r3, r1
	str     r0, [sp, #0x14]
	add     r0, r2, #0x4
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x18]
	mov     r0, r2
	add     r0, #0x8
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x1c]
	mov     r0, r2
	add     r0, #0xc
	ldr     r0, [r4, r0]
	add     r2, #0x30
	str     r0, [sp, #0x20]
	str     r1, [sp, #0x24]
	add     r0, r4, r2
	mov     r2, r1
	str     r1, [sp, #0x28]
	bl      Function_20093b4
	mov     r1, #0x1
	mov     r3, #0x5a
	str     r1, [sp, #0x0]
	.hword  0x1e88 @ sub r0, r1, #0x2
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	lsl     r3, r3, #2
	ldr     r2, [r4, r3]
	str     r2, [sp, #0x14]
	add     r2, r3, #0x4
	ldr     r2, [r4, r2]
	str     r2, [sp, #0x18]
	mov     r2, r3
	add     r2, #0x8
	ldr     r2, [r4, r2]
	str     r2, [sp, #0x1c]
	mov     r2, r3
	add     r2, #0xc
	ldr     r2, [r4, r2]
	add     r3, #0x54
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, r4, r3
	mov     r2, r1
	mov     r3, r1
	bl      Function_20093b4
	ldr     r0, [r4, #0x3c]
	mov     r2, #0x0
	str     r0, [sp, #0x2c]
	mov     r0, #0x66
	lsl     r0, r0, #2
	add     r1, r4, r0
	str     r1, [sp, #0x30]
	mov     r1, #0x1
	lsl     r1, r1, #12
	add     r0, #0x24
	str     r2, [sp, #0x3c]
	str     r1, [sp, #0x40]
	str     r1, [sp, #0x44]
	str     r1, [sp, #0x48]
	add     r1, sp, #0x2c
	strh    r2, [r1, #0x20]
	mov     r1, #0x1
	add     r0, r4, r0
	str     r0, [sp, #0x30]
	mov     r0, #0xe
	lsl     r0, r0, #16
	str     r0, [sp, #0x34]
	mov     r0, #0xaf
	lsl     r0, r0, #12
	str     r0, [sp, #0x38]
	str     r1, [sp, #0x50]
	str     r1, [sp, #0x54]
	mov     r1, #0x27
	add     r0, sp, #0x2c
	str     r1, [sp, #0x58]
	bl      Function_2021aa0
	mov     r1, #0x25
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x25
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021d6c
	mov     r0, #0x25
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021e90
	mov     r0, #0x25
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      Function_2021e80
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	add     sp, #0x5c
	pop     {r3,r4,pc}
@ 0x223e05e


.align 2, 0


.thumb
Function_223e060: @ 223e060 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r2
	mov     r0, #0x2
	mov     r2, #0x0
	mov     r6, r1
	mov     r7, r3
	bl      Function_2002d7c
	mov     r3, r0
	str     r4, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	mov     r1, r7
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldrb    r4, [r5, #0x7]
	mov     r0, r5
	mov     r2, r6
	lsl     r4, r4, #3
	sub     r4, r4, r3
	lsr     r3, r4, #31
	add     r3, r4, r3
	asr     r3, r3, #1
	bl      Function_201d78c
	ldr     r0, [r5, #0xc]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223e0a0

.thumb
Function_223e0a0: @ 223e0a0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	mov     r1, #0xb5
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r0, [r5, #0x0]
	add     r1, r5, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_201a7e8
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0x9
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	mov     r1, #0xb1
	lsl     r1, r1, #2
	str     r0, [sp, #0x8]
	mov     r2, #0x1
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	add     r1, r5, r1
	mov     r3, #0x4
	bl      Function_201a7e8
	mov     r0, #0xb1
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x2
	bl      Function_201ada4
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0xc1
	mov     r1, #0xb9
	str     r0, [sp, #0x10]
	lsl     r1, r1, #2
	ldr     r0, [r5, #0x0]
	add     r1, r5, r1
	mov     r2, #0x1
	mov     r3, #0x1a
	bl      Function_201a7e8
	mov     r0, #0xb9
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_201ada4
	ldr     r0, [pc, #0x11c] @ 0x223e250, (=0xe0702)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0xb9
	lsl     r0, r0, #2
	ldr     r1, [r5, #0x2c]
	add     r0, r5, r0
	mov     r3, #0x2
	bl      Function_223e060
	mov     r1, #0x2
	lsl     r1, r1, #8
	blx     DC_FlushRange
	mov     r4, #0x0
	ldr     r0, [pc, #0x104] @ 0x223e254, (=0x5b9c)
	str     r4, [sp, #0x18]
	mov     r7, r4
	add     r6, r5, r0
.thumb
branch_223e156: @ 223e156 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xb9
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x4
	mov     r2, #0x2
	mov     r3, r4
	str     r6, [sp, #0x4]
	bl      Function_2012c60
	mov     r1, #0x1
	mov     r0, r6
	lsl     r1, r1, #8
	blx     DC_FlushRange
	mov     r2, #0x1
	mov     r0, r6
	mov     r1, r7
	lsl     r2, r2, #8
	blx     GX_LoadOBJ
	mov     r0, #0x1
	lsl     r0, r0, #8
	add     r7, r7, r0
	ldr     r0, [sp, #0x18]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, #0x2
	blt     branch_223e156
	mov     r3, #0x2
	str     r3, [sp, #0x0]
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r1, #0xbd
	lsl     r1, r1, #2
	str     r3, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0xd1
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	add     r1, r5, r1
	mov     r2, #0x1
	bl      Function_201a7e8
	ldr     r1, [r5, #0x30]
	mov     r0, #0x1
	mov     r2, #0x0
	bl      Function_2002d7c
	mov     r4, r0
	mov     r0, #0xbd
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r3, #0xe0
	sub     r4, r3, r4
	lsr     r3, r4, #31
	add     r3, r4, r3
	ldr     r0, [pc, #0x7c] @ 0x223e258, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, #0xbd
	lsl     r0, r0, #2
	ldr     r2, [r5, #0x30]
	add     r0, r5, r0
	mov     r1, #0x1
	asr     r3, r3, #1
	bl      Function_201d78c
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r0, #0x9d
	lsl     r0, r0, #2
	mov     r7, #0x1
	mov     r6, #0x3
	add     r4, r5, r0
.thumb
branch_223e1fe: @ 223e1fe :thumb
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	mov     r2, #0x4
	mov     r3, #0x5
	bl      Function_201a7e8
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_201ada4
	ldr     r0, [sp, #0x14]
	add     r7, #0x14
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	add     r4, #0x10
	str     r0, [sp, #0x14]
	cmp     r0, #0x5
	blt     branch_223e1fe
	mov     r0, #0x9d
	lsl     r0, r0, #2
	ldr     r2, [pc, #0x1c] @ 0x223e25c, (=0xe0d0f)
	add     r0, r5, r0
	mov     r1, #0x0
	mov     r3, r5
	bl      Function_223e910
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223e24e


.align 2


.word 0xe0702 @ 0x223e250
.word 0x5b9c @ 0x223e254
.word 0x10200 @ 0x223e258
.word 0xe0d0f @ 0x223e25c
.thumb
Function_223e260: @ 223e260 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r0, #0x9d
	lsl     r0, r0, #2
	mov     r4, #0x0
	add     r5, r6, r0
.thumb
branch_223e26c: @ 223e26c :thumb
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x5
	blt     branch_223e26c
	mov     r0, #0xbd
	lsl     r0, r0, #2
	add     r0, r6, r0
	bl      Function_201a8fc
	mov     r0, #0xb9
	lsl     r0, r0, #2
	add     r0, r6, r0
	bl      Function_201a8fc
	mov     r0, #0xb1
	lsl     r0, r0, #2
	add     r0, r6, r0
	bl      Function_201a8fc
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r0, r6, r0
	bl      Function_201a8fc
	pop     {r4-r6,pc}
@ 0x223e2a4

.thumb
Function_223e2a4: @ 223e2a4 :thumb
	bx      lr
@ 0x223e2a6


.align 2, 0


.thumb
Function_223e2a8: @ 223e2a8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r4, r0
	ldr     r0, [pc, #0xc0] @ 0x223e370, (=0x223eb4a)
	bl      Function_2022664
	mov     r1, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_223e2fc
	cmp     r1, #0x0
	bne     branch_223e2ee
	mov     r0, #0xc3
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_223e2fc
	mov     r0, r4
	mov     r1, #0xa
	bl      Function_223e930
	mov     r0, #0xc3
	mov     r1, #0x2
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	sub     r0, #0xbc
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_223e3a8
	ldr     r0, [pc, #0x8c] @ 0x223e374, (=0x5dd)
	bl      Function_2005748
	b       branch_223e2fc
@ 0x223e2ee

.thumb
branch_223e2ee: @ 223e2ee :thumb
	ldr     r0, [pc, #0x88] @ 0x223e378, (=0x431a)
	strb    r1, [r4, r0]
	mov     r0, #0x25
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_223e388
.thumb
branch_223e2fc: @ 223e2fc :thumb
	ldr     r0, [pc, #0x7c] @ 0x223e37c, (=0x223eb42)
	bl      Function_2022644
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223e310
	mov     r0, r4
	bl      Function_223ea18
.thumb
branch_223e310: @ 223e310 :thumb
	add     r0, sp, #0x0
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_201e564
	cmp     r0, #0x1
	bne     branch_223e36c
	add     r7, sp, #0x0
	ldrh    r3, [r7, #0x0]
	mov     r1, #0x0
	cmp     r3, #0x0
	ble     branch_223e344
	ldr     r5, [pc, #0x54] @ 0x223e380, (=0x431c)
	add     r2, sp, #0x0
	mov     r6, r5
	add     r6, #0x8
.thumb
branch_223e330: @ 223e330 :thumb
	ldrh    r3, [r2, #0x2]
	add     r0, r4, r1
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r3, [r0, r5]
	ldrh    r3, [r2, #0x4]
	add     r2, #0x8
	strb    r3, [r0, r6]
	ldrh    r3, [r7, #0x0]
	cmp     r1, r3
	blt     branch_223e330
.thumb
branch_223e344: @ 223e344 :thumb
	ldr     r0, [pc, #0x3c] @ 0x223e384, (=0x432c)
	mov     r2, #0xf0
	ldrb    r1, [r4, r0]
	bic     r1, r2
	lsl     r2, r3, #24
	lsr     r2, r2, #24
	lsl     r2, r2, #28
	lsr     r2, r2, #24
	orr     r1, r2
	strb    r1, [r4, r0]
	ldrb    r3, [r4, r0]
	mov     r1, #0xf
	bic     r3, r1
	mov     r1, r0
	sub     r1, #0x12
	ldrb    r2, [r4, r1]
	mov     r1, #0xf
	and     r1, r2
	orr     r1, r3
	strb    r1, [r4, r0]
.thumb
branch_223e36c: @ 223e36c :thumb
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x223e370

.word 0x223eb4a @ 0x223e370
.word 0x5dd @ 0x223e374
.word 0x431a @ 0x223e378
.word 0x223eb42 @ 0x223e37c
.word 0x431c @ 0x223e380
.word 0x432c @ 0x223e384



.thumb
Function_223e388: @ 223e388 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x18] @ 0x223e3a4, (=Unknown_223eb3c)
	cmp     r1, #0x0
	ldr     r0, [r0, #0x0]
	bne     branch_223e39c
	ldrh    r1, [r2, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      Function_2021d6c
	pop     {r3,pc}

branch_223e39c: @ 223e39c :thumb
	ldrh    r1, [r2, #0x4]
	bl      Function_2021d6c
	pop     {r3,pc}
@ 0x223e3a4

.word Unknown_223eb3c @ 0x223e3a4



.thumb
Function_223e3a8: @ 223e3a8 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	ldr     r0, [r0, #0x0]
	bne     branch_223e3b8
	mov     r1, #0x1
	bl      Function_2021d6c
	pop     {r3,pc}
@ 0x223e3b8

.thumb
branch_223e3b8: @ 223e3b8 :thumb
	mov     r1, #0x0
	bl      Function_2021d6c
	pop     {r3,pc}
@ 0x223e3c0

.thumb
Function_223e3c0: @ 223e3c0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_223e2a8
	mov     r0, #0x9d
	lsl     r0, r0, #2
	ldr     r2, [pc, #0x30] @ 0x223e400, (=0xe0c0f)
	add     r0, r5, r0
	mov     r1, #0x0
	mov     r3, r5
	bl      Function_223e910
	mov     r0, r5
	bl      Function_223e914
	mov     r0, r5
	bl      Function_223e8cc
	ldr     r2, [pc, #0x1c] @ 0x223e404, (=0x432d)
	mov     r0, #0xb1
	lsl     r0, r0, #2
	add     r1, r5, r2
	add     r2, #0x55
	add     r0, r5, r0
	add     r2, r5, r2
	mov     r3, #0x1
	bl      Function_223e80c
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223e3fe


.align 2


.word 0xe0c0f @ 0x223e400
.word 0x432d @ 0x223e404
.thumb
Function_223e408: @ 223e408 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223e2a4
	mov     r0, r4
	bl      Function_223e8cc
	ldr     r2, [pc, #0x14] @ 0x223e42c, (=0x432d)
	mov     r0, #0xb1
	lsl     r0, r0, #2
	add     r1, r4, r2
	add     r2, #0x55
	add     r0, r4, r0
	add     r2, r4, r2
	mov     r3, #0x0
	bl      Function_223e80c
	pop     {r4,pc}
@ 0x223e42c

.word 0x432d @ 0x223e42c
.thumb
Function_223e430: @ 223e430 :thumb
	push    {lr}
	add     sp, #-0x14
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0xb4
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	mov     r2, #0x19
	add     r0, sp, #0x0
	strb    r2, [r0, #0x10]
	mov     r2, #0x6
	strb    r2, [r0, #0x11]
	mov     r0, r1
	add     r1, sp, #0x0
	bl      Function_2015958
	add     sp, #0x14
	pop     {pc}
@ 0x223e458

.thumb
Function_223e458: @ 223e458 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x38]
	mov     r4, r1
	bl      Function_223e99c
	cmp     r0, #0x0
	beq     branch_223e47a
	ldr     r1, [pc, #0x18] @ 0x223e484, (=0x5c9c)
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, r1]
	bl      Function_223e430
	mov     r0, #0xc3
	mov     r1, #0x3
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_223e47a: @ 223e47a :thumb
	mov     r0, r5
	bl      Function_223e408
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223e484

.word 0x5c9c @ 0x223e484
.thumb
Function_223e488: @ 223e488 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x90] @ 0x223e520, (=0x5c9c)
	mov     r4, r1
	ldr     r0, [r5, r0]
	bl      Function_20159fc
	cmp     r0, #0x1
	beq     branch_223e4a2
	cmp     r0, #0x2
	beq     branch_223e4e4
	b       branch_223e50a
@ 0x223e4a2

.thumb
branch_223e4a2: @ 223e4a2 :thumb
	ldr     r0, [r5, #0x8]
	mov     r1, #0x4
	bl      Function_202cfec
	ldr     r0, [r5, #0x8]
	mov     r1, #0x72
	bl      Function_202cf28
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x1
	bl      Function_200e084
	ldr     r0, [pc, #0x60] @ 0x223e520, (=0x5c9c)
	ldr     r0, [r5, r0]
	bl      Function_2015a54
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x27
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	add     sp, #0xc
	mov     r0, #0x2
	pop     {r4,r5,pc}
@ 0x223e4e4

.thumb
branch_223e4e4: @ 223e4e4 :thumb
	mov     r0, #0xc3
	mov     r1, #0x4
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	sub     r0, #0xbc
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_223e3a8
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x1
	bl      Function_200e084
	ldr     r0, [pc, #0x1c] @ 0x223e520, (=0x5c9c)
	ldr     r0, [r5, r0]
	bl      Function_2015a54
.thumb
branch_223e50a: @ 223e50a :thumb
	ldr     r1, [pc, #0x18] @ 0x223e524, (=0x432c)
	mov     r0, #0xf0
	ldrb    r2, [r5, r1]
	bic     r2, r0
	mov     r0, r5
	strb    r2, [r5, r1]
	bl      Function_223e408
	mov     r0, r4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223e520

.word 0x5c9c @ 0x223e520
.word 0x432c @ 0x223e524
.thumb
Function_223e528: @ 223e528 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x5c] @ 0x223e58c, (=0x5c9c)
	mov     r4, r1
	ldr     r0, [r5, r0]
	bl      Function_20159fc
	cmp     r0, #0x1
	beq     branch_223e540
	cmp     r0, #0x2
	beq     branch_223e570
	b       branch_223e588
@ 0x223e540

.thumb
branch_223e540: @ 223e540 :thumb
	mov     r0, #0xc3
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	sub     r0, #0x38
	add     r0, r5, r0
	bl      Function_200e084
	ldr     r0, [pc, #0x38] @ 0x223e58c, (=0x5c9c)
	ldr     r0, [r5, r0]
	bl      Function_2015a54
	mov     r0, #0xb1
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x2
	bl      Function_201ada4
	mov     r0, #0xb1
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_201a954
	b       branch_223e588
@ 0x223e570

.thumb
branch_223e570: @ 223e570 :thumb
	mov     r0, #0xc3
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	sub     r0, #0x38
	add     r0, r5, r0
	bl      Function_200e084
	ldr     r0, [pc, #0x8] @ 0x223e58c, (=0x5c9c)
	ldr     r0, [r5, r0]
	bl      Function_2015a54
.thumb
branch_223e588: @ 223e588 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223e58c

.word 0x5c9c @ 0x223e58c
.thumb
Function_223e590: @ 223e590 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0xb
	mov     r5, r0
	bl      Function_223e930
	mov     r0, #0xc3
	mov     r1, #0x5
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_223e408
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223e5ae


.align 2, 0


.thumb
Function_223e5b0: @ 223e5b0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x38]
	mov     r4, r1
	bl      Function_223e99c
	cmp     r0, #0x0
	beq     branch_223e5d2
	mov     r0, #0xc3
	mov     r1, #0x6
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r1, [pc, #0x10] @ 0x223e5dc, (=0x5c9c)
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, r1]
	bl      Function_223e430
.thumb
branch_223e5d2: @ 223e5d2 :thumb
	mov     r0, r5
	bl      Function_223e408
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223e5dc

.word 0x5c9c @ 0x223e5dc
.thumb
Function_223e5e0: @ 223e5e0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	ldr     r4, [sp, #0x38]
	mov     r12, r1
	mov     r6, r2
	mov     r7, r3
	str     r0, [sp, #0x18]
	ldr     r3, [sp, #0x3c]
	ldr     r2, [sp, #0x40]
	ldr     r1, [sp, #0x44]
	cmp     r4, #0x0
	bge     branch_223e60c
	neg     r0, r4
	cmp     r0, r2
	ble     branch_223e600
	mov     r0, r2
.thumb
branch_223e600: @ 223e600 :thumb
	ldr     r5, [sp, #0x30]
	mov     r4, #0x0
	sub     r5, r5, r0
	add     r6, r6, r0
	str     r5, [sp, #0x30]
	sub     r2, r2, r0
.thumb
branch_223e60c: @ 223e60c :thumb
	cmp     r3, #0x0
	bge     branch_223e624
	neg     r0, r3
	cmp     r0, r1
	ble     branch_223e618
	mov     r0, r1
.thumb
branch_223e618: @ 223e618 :thumb
	ldr     r5, [sp, #0x34]
	mov     r3, #0x0
	sub     r5, r5, r0
	add     r7, r7, r0
	str     r5, [sp, #0x34]
	sub     r1, r1, r0
.thumb
branch_223e624: @ 223e624 :thumb
	ldr     r0, [sp, #0x30]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x34]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	lsl     r0, r3, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0xc]
	lsl     r0, r2, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x14]
	lsl     r2, r6, #16
	lsl     r3, r7, #16
	ldr     r0, [sp, #0x18]
	mov     r1, r12
	lsr     r2, r2, #16
	lsr     r3, r3, #16
	bl      Function_201addc
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223e660

.thumb
Function_223e660: @ 223e660 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x50]
	str     r1, [sp, #0x1c]
	str     r0, [sp, #0x50]
	ldr     r0, [sp, #0x54]
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x54]
	ldr     r0, [sp, #0x50]
	str     r3, [sp, #0x24]
	ldr     r4, [r0, #0x0]
	ldr     r0, [sp, #0x54]
	ldr     r5, [r0, #0x0]
	mov     r0, r2
	str     r0, [sp, #0x38]
	mov     r0, r3
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x58]
	cmp     r0, #0x0
	bne     branch_223e6a0
	ldr     r0, [sp, #0x5c]
	cmp     r0, #0x0
	bne     branch_223e6a0
	ldr     r0, [sp, #0x50]
	mov     r1, r2
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x54]
	mov     r1, r3
	str     r1, [r0, #0x0]
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x223e6a0

.thumb
branch_223e6a0: @ 223e6a0 :thumb
	ldr     r0, [sp, #0x20]
	sub     r0, r0, r4
	str     r0, [sp, #0x34]
	bpl     branch_223e6ac
	neg     r0, r0
	str     r0, [sp, #0x34]
.thumb
branch_223e6ac: @ 223e6ac :thumb
	ldr     r0, [sp, #0x24]
	sub     r7, r0, r5
	bpl     branch_223e6b4
	neg     r7, r7
.thumb
branch_223e6b4: @ 223e6b4 :thumb
	ldr     r0, [sp, #0x34]
	cmp     r0, r7
	ble     branch_223e742
	ldr     r0, [sp, #0x20]
	cmp     r4, r0
	ble     branch_223e6da
	ldr     r0, [sp, #0x24]
	cmp     r5, r0
	ble     branch_223e6cc
	mov     r0, #0x1
	str     r0, [sp, #0x2c]
	b       branch_223e6d2
@ 0x223e6cc

.thumb
branch_223e6cc: @ 223e6cc :thumb
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x2c]
.thumb
branch_223e6d2: @ 223e6d2 :thumb
	str     r4, [sp, #0x38]
	ldr     r4, [sp, #0x20]
	ldr     r5, [sp, #0x24]
	b       branch_223e6ec
@ 0x223e6da

.thumb
branch_223e6da: @ 223e6da :thumb
	ldr     r0, [sp, #0x24]
	cmp     r5, r0
	bge     branch_223e6e6
	mov     r0, #0x1
	str     r0, [sp, #0x2c]
	b       branch_223e6ec
@ 0x223e6e6

.thumb
branch_223e6e6: @ 223e6e6 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x2c]
.thumb
branch_223e6ec: @ 223e6ec :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r2, #0x0
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	mov     r3, r2
	bl      Function_223e5e0
	ldr     r0, [sp, #0x34]
	.hword  0x1c64 @ add r4, r4, #0x1
	asr     r6, r0, #1
	ldr     r0, [sp, #0x38]
	cmp     r4, r0
	bgt     branch_223e7c6
.thumb
branch_223e712: @ 223e712 :thumb
	sub     r6, r6, r7
	bpl     branch_223e71e
	ldr     r0, [sp, #0x34]
	add     r6, r6, r0
	ldr     r0, [sp, #0x2c]
	add     r5, r5, r0
.thumb
branch_223e71e: @ 223e71e :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r2, #0x0
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	mov     r3, r2
	bl      Function_223e5e0
	ldr     r0, [sp, #0x38]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	ble     branch_223e712
	b       branch_223e7c6
@ 0x223e742

.thumb
branch_223e742: @ 223e742 :thumb
	ldr     r0, [sp, #0x24]
	cmp     r5, r0
	ble     branch_223e762
	ldr     r0, [sp, #0x20]
	cmp     r4, r0
	ble     branch_223e754
	mov     r0, #0x1
	str     r0, [sp, #0x28]
	b       branch_223e75a
@ 0x223e754

.thumb
branch_223e754: @ 223e754 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x28]
.thumb
branch_223e75a: @ 223e75a :thumb
	str     r5, [sp, #0x30]
	ldr     r5, [sp, #0x24]
	ldr     r4, [sp, #0x20]
	b       branch_223e774
@ 0x223e762

.thumb
branch_223e762: @ 223e762 :thumb
	ldr     r0, [sp, #0x20]
	cmp     r4, r0
	bge     branch_223e76e
	mov     r0, #0x1
	str     r0, [sp, #0x28]
	b       branch_223e774
@ 0x223e76e

.thumb
branch_223e76e: @ 223e76e :thumb
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x28]
.thumb
branch_223e774: @ 223e774 :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r2, #0x0
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	mov     r3, r2
	bl      Function_223e5e0
	ldr     r0, [sp, #0x30]
	.hword  0x1c6d @ add r5, r5, #0x1
	asr     r6, r7, #1
	cmp     r5, r0
	bgt     branch_223e7c6
.thumb
branch_223e798: @ 223e798 :thumb
	ldr     r0, [sp, #0x34]
	sub     r6, r6, r0
	bpl     branch_223e7a4
	ldr     r0, [sp, #0x28]
	add     r6, r6, r7
	add     r4, r4, r0
.thumb
branch_223e7a4: @ 223e7a4 :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r2, #0x0
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	mov     r3, r2
	bl      Function_223e5e0
	ldr     r0, [sp, #0x30]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	ble     branch_223e798
.thumb
branch_223e7c6: @ 223e7c6 :thumb
	ldr     r1, [sp, #0x20]
	ldr     r0, [sp, #0x50]
	str     r1, [r0, #0x0]
	ldr     r1, [sp, #0x24]
	ldr     r0, [sp, #0x54]
	str     r1, [r0, #0x0]
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x223e7d6


.align 2, 0


.thumb
Function_223e7d8: @ 223e7d8 :thumb
	mov     r2, #0x0
.thumb
branch_223e7da: @ 223e7da :thumb
	ldrb    r3, [r0, #0x10]
	lsl     r3, r3, #24
	lsr     r3, r3, #28
	strh    r3, [r1, #0x2]
	ldrb    r3, [r0, #0x10]
	lsl     r3, r3, #24
	lsr     r3, r3, #28
	beq     branch_223e7fe
	add     r3, r0, r3
	.hword  0x1e5b @ sub r3, r3, #0x1
	ldrb    r3, [r3, #0x0]
	strb    r3, [r1, #0x0]
	ldrb    r3, [r0, #0x10]
	lsl     r3, r3, #24
	lsr     r3, r3, #28
	add     r3, r0, r3
	ldrb    r3, [r3, #0x7]
	strb    r3, [r1, #0x1]
.thumb
branch_223e7fe: @ 223e7fe :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0x11
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r2, #0x5
	blt     branch_223e7da
	bx      lr
@ 0x223e80a


.align 2, 0


.thumb
Function_223e80c: @ 223e80c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r7, r0
	mov     r0, #0x0
	str     r1, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r3, [sp, #0x18]
	str     r0, [sp, #0x1c]
	str     r0, [sp, #0x20]
	mov     r5, r1
	mov     r6, r2
.thumb
branch_223e822: @ 223e822 :thumb
	ldrb    r0, [r5, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	beq     branch_223e886
	ldrh    r0, [r6, #0x2]
	cmp     r0, #0x0
	beq     branch_223e83c
	ldrb    r0, [r6, #0x0]
	sub     r0, #0x20
	str     r0, [sp, #0x28]
	ldrb    r0, [r6, #0x1]
	sub     r0, #0x48
	str     r0, [sp, #0x24]
.thumb
branch_223e83c: @ 223e83c :thumb
	ldrb    r0, [r5, #0x10]
	mov     r4, #0x0
	lsl     r0, r0, #24
	lsr     r1, r0, #28
	cmp     r1, #0x0
	ble     branch_223e886
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	cmp     r1, #0x0
	ble     branch_223e886
.thumb
branch_223e850: @ 223e850 :thumb
	add     r0, sp, #0x28
	str     r0, [sp, #0x0]
	add     r0, sp, #0x24
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	ldrh    r0, [r6, #0x2]
	add     r3, r5, r4
	str     r0, [sp, #0xc]
	ldrb    r1, [r5, #0x10]
	ldrb    r3, [r3, #0x8]
	mov     r0, r7
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	lsl     r2, r1, #4
	ldr     r1, [pc, #0x58] @ 0x223e8c8, (=0x223ec30)
	sub     r3, #0x48
	add     r1, r1, r2
	ldrb    r2, [r5, r4]
	sub     r2, #0x20
	bl      Function_223e660
	ldrb    r0, [r5, #0x10]
	.hword  0x1c64 @ add r4, r4, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	cmp     r4, r0
	blt     branch_223e850
.thumb
branch_223e886: @ 223e886 :thumb
	ldr     r0, [sp, #0x20]
	add     r5, #0x11
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	str     r0, [sp, #0x20]
	cmp     r0, #0x5
	blt     branch_223e822
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	beq     branch_223e8a6
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	beq     branch_223e8a6
	mov     r0, r7
	bl      Function_201a954
.thumb
branch_223e8a6: @ 223e8a6 :thumb
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	bl      Function_223e7d8
	mov     r3, #0x0
	mov     r1, #0xf0
.thumb
branch_223e8b2: @ 223e8b2 :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1c5b @ add r3, r3, #0x1
	ldrb    r2, [r0, #0x10]
	bic     r2, r1
	strb    r2, [r0, #0x10]
	add     r0, #0x11
	str     r0, [sp, #0x10]
	cmp     r3, #0x5
	blt     branch_223e8b2
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x223e8c8

.word 0x223ec30 @ 0x223e8c8
.thumb
Function_223e8cc: @ 223e8cc :thumb
	bx      lr
@ 0x223e8ce


.align 2, 0


.thumb
Function_223e8d0: @ 223e8d0 :thumb
	push    {r3,lr}
	ldrh    r1, [r0, #0x0]
	add     r1, #0x14
	strh    r1, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	mov     r1, #0x5a
	lsl     r1, r1, #2
	cmp     r2, r1
	bls     branch_223e8e6
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
.thumb
branch_223e8e6: @ 223e8e6 :thumb
	ldrh    r0, [r0, #0x0]
	bl      Function_201d250
	mov     r1, #0xa
	mul     r1, r0
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	add     r0, #0xf
	lsl     r1, r0, #5
	mov     r0, #0x1d
	orr     r1, r0
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	add     r0, sp, #0x0
	mov     r1, #0x18
	mov     r2, #0x2
	blx     GX_LoadOBJPltt
	pop     {r3,pc}
@ 0x223e910

.thumb
Function_223e910: @ 223e910 :thumb
	bx      lr
@ 0x223e912


.align 2, 0


.thumb
Function_223e914: @ 223e914 :thumb
	ldr     r1, [pc, #0x14] @ 0x223e92c, (=0x431c)
	add     r3, r0, r1
	add     r1, #0x11
	add     r2, r0, r1
	mov     r1, #0x11
.thumb
branch_223e91e: @ 223e91e :thumb
	ldrb    r0, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_223e91e
	bx      lr
@ 0x223e92c

.word 0x431c @ 0x223e92c
.thumb
Function_223e930: @ 223e930 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x50
	mov     r1, #0x27
	bl      Function_2023790
	mov     r4, r0
	ldr     r0, [r5, #0x14]
	mov     r1, r6
	mov     r2, r4
	bl      Function_200b1b8
	ldr     r0, [r5, #0x10]
	ldr     r1, [r5, #0x34]
	mov     r2, r4
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0xb5
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200e060
	ldr     r0, [r5, #0xc]
	bl      Function_2027ac0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldr     r2, [r5, #0x34]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      Function_201d738
	str     r0, [r5, #0x38]
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223e99a


.align 2, 0


.thumb
Function_223e99c: @ 223e99c :thumb
	push    {r3,lr}
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_223e9ae
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223e9ae

.thumb
branch_223e9ae: @ 223e9ae :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223e9b2


.align 2, 0


.thumb
Function_223e9b4: @ 223e9b4 :thumb
	push    {r3-r7,lr}
	mov     r7, #0x0
	mov     r5, r0
	str     r1, [sp, #0x0]
	mov     r4, r7
	strb    r7, [r5, #0x0]
	mov     r6, r7
.thumb
branch_223e9c2: @ 223e9c2 :thumb
	ldr     r0, [sp, #0x0]
	ldrb    r1, [r0, r6]
	mov     r0, #0xf
	and     r0, r1
	cmp     r0, #0x1
	bne     branch_223e9d8
	mov     r0, #0x1
	ldrb    r1, [r5, #0x0]
	lsl     r0, r4
	orr     r0, r1
	strb    r0, [r5, #0x0]
.thumb
branch_223e9d8: @ 223e9d8 :thumb
	ldr     r0, [sp, #0x0]
	ldrb    r0, [r0, r6]
	asr     r0, r0, #4
	cmp     r0, #0x1
	bne     branch_223e9ee
	ldrb    r0, [r5, #0x0]
	add     r2, r4, #0x1
	mov     r1, #0x1
	lsl     r1, r2
	orr     r0, r1
	strb    r0, [r5, #0x0]
.thumb
branch_223e9ee: @ 223e9ee :thumb
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r4, #0x8
	bne     branch_223e9fe
	mov     r0, #0x0
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1c7f @ add r7, r7, #0x1
	strb    r0, [r5, #0x0]
	mov     r4, r0
.thumb
branch_223e9fe: @ 223e9fe :thumb
	mov     r0, #0x6
	lsl     r0, r0, #10
	cmp     r7, r0
	blt     branch_223ea0a
	bl      ErrorHandling
.thumb
branch_223ea0a: @ 223ea0a :thumb
	mov     r0, #0x6
	.hword  0x1c76 @ add r6, r6, #0x1
	lsl     r0, r0, #10
	cmp     r6, r0
	blt     branch_223e9c2
	pop     {r3-r7,pc}
@ 0x223ea16


.align 2, 0


.thumb
Function_223ea18: @ 223ea18 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0xa8] @ 0x223eac4, (=0x21bf6bc)
	mov     r4, r0
	ldrh    r0, [r1, #0x1c]
	ldr     r3, [pc, #0xa4] @ 0x223eac8, (=0xffff)
	cmp     r0, r3
	beq     branch_223eab2
	ldrh    r1, [r1, #0x1e]
	cmp     r1, r3
	beq     branch_223eab2
	ldr     r2, [pc, #0x9c] @ 0x223eacc, (=0x5ca8)
	ldr     r5, [r4, r2]
	cmp     r5, r3
	beq     branch_223eab2
	add     r1, r2, #0x4
	ldr     r1, [r4, r1]
	cmp     r1, r3
	beq     branch_223eab2
	cmp     r5, r0
	ble     branch_223ea48
	mov     r1, #0x0
	sub     r3, r5, r0
	mvn     r1, r1
	b       branch_223ea4c
@ 0x223ea48

.thumb
branch_223ea48: @ 223ea48 :thumb
	sub     r3, r0, r5
	mov     r1, #0x1
.thumb
branch_223ea4c: @ 223ea4c :thumb
	.hword  0x1f90 @ sub r0, r2, #0x6
	strb    r1, [r4, r0]
	cmp     r3, #0x3
	blt     branch_223ea82
	cmp     r3, #0x28
	bgt     branch_223ea82
	ldr     r0, [pc, #0x68] @ 0x223eac4, (=0x21bf6bc)
	ldrh    r2, [r0, #0x1e]
	ldr     r0, [pc, #0x70] @ 0x223ead0, (=0x5cac)
	ldr     r1, [r4, r0]
	cmp     r1, r2
	ble     branch_223ea6c
	sub     r2, r1, r2
	mov     r1, #0x0
	mvn     r1, r1
	b       branch_223ea70
@ 0x223ea6c

.thumb
branch_223ea6c: @ 223ea6c :thumb
	sub     r2, r2, r1
	mov     r1, #0x1
.thumb
branch_223ea70: @ 223ea70 :thumb
	sub     r0, #0x9
	strb    r1, [r4, r0]
	cmp     r2, #0x28
	bgt     branch_223eab2
	ldr     r0, [pc, #0x58] @ 0x223ead4, (=0x5ca0)
	add     r0, r4, r0
	bl      Function_223ead8
	b       branch_223eab2
@ 0x223ea82

.thumb
branch_223ea82: @ 223ea82 :thumb
	cmp     r3, #0x28
	bgt     branch_223eab2
	ldr     r0, [pc, #0x3c] @ 0x223eac4, (=0x21bf6bc)
	ldrh    r2, [r0, #0x1e]
	ldr     r0, [pc, #0x44] @ 0x223ead0, (=0x5cac)
	ldr     r1, [r4, r0]
	cmp     r1, r2
	ble     branch_223ea9a
	sub     r2, r1, r2
	mov     r1, #0x0
	mvn     r1, r1
	b       branch_223ea9e
@ 0x223ea9a

.thumb
branch_223ea9a: @ 223ea9a :thumb
	sub     r2, r2, r1
	mov     r1, #0x1
.thumb
branch_223ea9e: @ 223ea9e :thumb
	sub     r0, #0x9
	strb    r1, [r4, r0]
	cmp     r2, #0x3
	blt     branch_223eab2
	cmp     r2, #0x28
	bgt     branch_223eab2
	ldr     r0, [pc, #0x28] @ 0x223ead4, (=0x5ca0)
	add     r0, r4, r0
	bl      Function_223ead8
.thumb
branch_223eab2: @ 223eab2 :thumb
	ldr     r1, [pc, #0x10] @ 0x223eac4, (=0x21bf6bc)
	ldr     r0, [pc, #0x14] @ 0x223eacc, (=0x5ca8)
	ldrh    r2, [r1, #0x1c]
	str     r2, [r4, r0]
	ldrh    r1, [r1, #0x1e]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x223eac2


.align 2


.word 0x21bf6bc @ 0x223eac4
.word 0xffff @ 0x223eac8
.word 0x5ca8 @ 0x223eacc
.word 0x5cac @ 0x223ead0
.word 0x5ca0 @ 0x223ead4
.thumb
Function_223ead8: @ 223ead8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223eafc
	mov     r0, #0x1
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223eafc
	ldr     r0, [pc, #0x48] @ 0x223eb38, (=0x69a)
	bl      Function_20057d4
	cmp     r0, #0x0
	bne     branch_223eafc
	ldr     r0, [pc, #0x40] @ 0x223eb38, (=0x69a)
	bl      Function_2005748
.thumb
branch_223eafc: @ 223eafc :thumb
	mov     r0, #0x0
	ldsb    r1, [r4, r0]
	mov     r0, #0x2
	ldsb    r0, [r4, r0]
	mul     r0, r1
	bmi     branch_223eb14
	mov     r0, #0x1
	ldsb    r1, [r4, r0]
	mov     r0, #0x3
	ldsb    r0, [r4, r0]
	mul     r0, r1
	bpl     branch_223eb24
.thumb
branch_223eb14: @ 223eb14 :thumb
	ldr     r0, [pc, #0x20] @ 0x223eb38, (=0x69a)
	bl      Function_20057d4
	cmp     r0, #0x0
	bne     branch_223eb24
	ldr     r0, [pc, #0x18] @ 0x223eb38, (=0x69a)
	bl      Function_2005748
.thumb
branch_223eb24: @ 223eb24 :thumb
	mov     r0, #0x2
	ldsb    r0, [r4, r0]
	strb    r0, [r4, #0x0]
	mov     r0, #0x3
	ldsb    r0, [r4, r0]
	strb    r0, [r4, #0x1]
	mov     r0, #0x0
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	pop     {r4,pc}
@ 0x223eb38

.word 0x69a @ 0x223eb38



Unknown_223eb3c: @ 0x223eb3c
.incbin "./baserom/overlay/overlay_0072.bin", 0x139c, 0x223ed60 - 0x223eb3c


@end 0x223ed60




