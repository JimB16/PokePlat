

.section .iwram100, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x6f
	lsl     r2, r0, #18
	bl      Function_2017fc8
	mov     r0, r5
	mov     r1, #0xd4
	mov     r2, #0x6f
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r1, #0x0
	mov     r2, #0xd4
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, r5
	bl      LoadPtrToOverWorldDataIn18
	mov     r1, r4
	add     r1, #0xd0
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xc
	bl      Function_21d1034
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x6f
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [pc, #0xd4] @ 0x21d0ea4, (=0x21d13b5)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	mov     r0, r4
	mov     r1, #0x1f
	add     r0, #0x5c
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x5d
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x5e
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xcd
	strb    r1, [r0, #0x0]
	mov     r0, #0x1
	bl      Function_2005454
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r5, r4
	ldr     r0, [r0, #0x4]
	add     r5, #0x3c
	bl      Function_2027b50
	mov     r6, r0
	mov     r0, r5
	bl      Function_201a7a0
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	mov     r2, #0x1
	str     r2, [sp, #0x10]
	ldr     r0, [r4, #0x18]
	mov     r1, r5
	mov     r3, #0x2
	bl      Function_201a7e8
	mov     r0, r5
	mov     r1, #0xff
	bl      Function_201ada4
	mov     r0, r5
	bl      Function_201a954
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x6f
	str     r0, [sp, #0x4]
	mov     r2, #0x7d
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	lsl     r2, r2, #2
	mov     r3, #0xf
	bl      Function_200dd0c
	mov     r0, r6
	bl      Function_200dd08
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xf0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x26
	mov     r3, #0x6f
	bl      Function_2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x1c]
	mov     r1, #0xe
	mov     r2, #0x7
	mov     r3, #0x6f
	bl      Function_2003050
	mov     r2, #0x7d
	mov     r0, r5
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r3, #0xf
	bl      Function_200e060
	add     r4, #0xc
	mov     r0, r4
	bl      Function_21d4788
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21d0ea4

.word 0x21d13b5 @ 0x21d0ea4
.thumb
Function_21d0ea8: @ 21d0ea8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      LoadOverlayData1c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x3
	bhi     branch_21d0f2a
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d0ec4

Jumppoints_21d0ec4:
.hword branch_21d0ecc - Jumppoints_21d0ec4 - 2
.hword branch_21d0ee2 - Jumppoints_21d0ec4 - 2
.hword branch_21d0efc - Jumppoints_21d0ec4 - 2
.hword branch_21d0f26 - Jumppoints_21d0ec4 - 2
.thumb
branch_21d0ecc: @ 21d0ecc :thumb
	ldr     r2, [r4, #0x4]
	mov     r1, #0xc
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0x60] @ 0x21d0f38, (=0x21d5130)
	ldr     r1, [r1, r3]
	blx     r1
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d0f2e
@ 0x21d0ee2

.thumb
branch_21d0ee2: @ 21d0ee2 :thumb
	ldr     r2, [r4, #0x4]
	mov     r1, #0xc
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0x50] @ 0x21d0f3c, (=0x21d5134)
	ldr     r0, [r4, #0x8]
	ldr     r1, [r1, r3]
	blx     r1
	cmp     r0, #0x0
	bne     branch_21d0f2e
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_21d0f2e
@ 0x21d0efc

.thumb
branch_21d0efc: @ 21d0efc :thumb
	ldr     r2, [r4, #0x4]
	mov     r1, #0xc
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0x38] @ 0x21d0f40, (=0x21d5138)
	ldr     r0, [r4, #0x8]
	ldr     r1, [r1, r3]
	blx     r1
	cmp     r0, #0x0
	bne     branch_21d0f2e
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x3
	beq     branch_21d0f20
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	b       branch_21d0f2e
@ 0x21d0f20

.thumb
branch_21d0f20: @ 21d0f20 :thumb
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d0f2e
@ 0x21d0f26

.thumb
branch_21d0f26: @ 21d0f26 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0f2a

.thumb
branch_21d0f2a: @ 21d0f2a :thumb
	bl      ErrorHandling
.thumb
branch_21d0f2e: @ 21d0f2e :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_200c7ec
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d0f38

.word 0x21d5130 @ 0x21d0f38
.word 0x21d5134 @ 0x21d0f3c
.word 0x21d5138 @ 0x21d0f40
.thumb
Function_21d0f44: @ 21d0f44 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadOverlayData1c
	mov     r5, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	mov     r0, r5
	add     r0, #0x3c
	mov     r1, #0x1
	bl      Function_200e084
	mov     r0, r5
	add     r0, #0x3c
	bl      Function_201acf4
	mov     r0, r5
	add     r0, #0x3c
	bl      Function_201a8fc
	add     r5, #0xc
	mov     r0, r5
	bl      Function_21d111c
	ldr     r0, [pc, #0x1c] @ 0x21d0f9c, (=0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      Function_201ffe8
	mov     r0, r4
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x6f
	bl      Function_201807c
	mov     r0, #0x0
	bl      Function_2005454
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0f9c

.word 0x21bf6dc @ 0x21d0f9c
.thumb
Function_21d0fa0: @ 21d0fa0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4c
	mov     r4, r0
	mov     r0, #0x6f
	bl      Function_200c6e4
	add     r2, sp, #0x2c
	ldr     r5, [pc, #0x78] @ 0x21d1028, (=0x21d5110)
	str     r0, [r4, #0x4]
	ldmia   r5!, {r0,r1}
	mov     r3, r2
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	ldr     r6, [pc, #0x68] @ 0x21d102c, (=0x21d50e4)
	stmia   r2!, {r0,r1}
	add     r5, sp, #0x18
	ldmia   r6!, {r0,r1}
	mov     r2, r5
	stmia   r5!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r3
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r3, #0x20
	bl      Function_200c73c
	cmp     r0, #0x0
	bne     branch_21d0fe8
	bl      ErrorHandling
.thumb
branch_21d0fe8: @ 21d0fe8 :thumb
	ldr     r3, [pc, #0x44] @ 0x21d1030, (=0x21d50f8)
	add     r2, sp, #0x0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x4]
	bl      Function_200c704
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x8]
	mov     r2, #0x80
	bl      Function_200c7c0
	cmp     r0, #0x0
	bne     branch_21d1012
	bl      ErrorHandling
.thumb
branch_21d1012: @ 21d1012 :thumb
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x8]
	add     r2, sp, #0x0
	bl      Function_200cb30
	cmp     r0, #0x0
	bne     branch_21d1024
	bl      ErrorHandling
.thumb
branch_21d1024: @ 21d1024 :thumb
	add     sp, #0x4c
	pop     {r3-r6,pc}
@ 0x21d1028

.word 0x21d5110 @ 0x21d1028
.word 0x21d50e4 @ 0x21d102c
.word 0x21d50f8 @ 0x21d1030
.thumb
Function_21d1034: @ 21d1034 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0xb4] @ 0x21d110c, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0xb4] @ 0x21d1110, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0xac
	mov     r1, #0x6f
	bl      LoadFromNARC_8
	str     r0, [r4, #0x0]
	mov     r0, #0x6f
	bl      Function_2018340
	str     r0, [r4, #0xc]
	mov     r0, #0x6f
	bl      MallocFill120
	str     r0, [r4, #0x10]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	mov     r0, #0x6f
	mov     r2, #0x1
	mov     r3, r1
	bl      Function_2024220
	str     r0, [r4, #0x14]
	mov     r0, #0x6f
	bl      Function_20203ac
	str     r0, [r4, #0x18]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, #0xea
	mov     r3, #0x6f
	bl      Function_200b144
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_2003858
	mov     r2, #0x2
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	lsl     r2, r2, #8
	mov     r3, #0x6f
	bl      Function_2002f70
	mov     r1, #0x1
	ldr     r0, [r4, #0x10]
	lsl     r2, r1, #9
	mov     r3, #0x6f
	bl      Function_2002f70
	mov     r1, #0x2
	ldr     r0, [r4, #0x10]
	lsl     r2, r1, #8
	mov     r3, #0x6f
	bl      Function_2002f70
	mov     r2, #0x2
	ldr     r0, [r4, #0x10]
	mov     r1, #0x3
	lsl     r2, r2, #8
	mov     r3, #0x6f
	bl      Function_2002f70
	ldr     r0, [r4, #0xc]
	bl      Function_21d1208
	mov     r0, r4
	bl      Function_21d0fa0
	ldr     r2, [pc, #0x24] @ 0x21d1114, (=0x4000060)
	ldr     r0, [pc, #0x24] @ 0x21d1118, (=0xffffcfff)
	ldrh    r1, [r2, #0x0]
	add     r4, #0x1c
	and     r1, r0
	mov     r0, #0x8
	orr     r0, r1
	strh    r0, [r2, #0x0]
	mov     r0, r4
	mov     r1, #0x6f
	mov     r2, #0x20
	bl      Function_20182cc
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d110c

.word 0xffffe0ff @ 0x21d110c
.word 0x4001000 @ 0x21d1110
.word 0x4000060 @ 0x21d1114
.word 0xffffcfff @ 0x21d1118
.thumb
Function_21d111c: @ 21d111c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff74
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      Function_2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      Function_2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x3
	bl      Function_2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x4
	bl      Function_2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x5
	bl      Function_2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x6
	bl      Function_2019044
	ldr     r0, [r4, #0xc]
	mov     r1, #0x7
	bl      Function_2019044
	ldr     r0, [r4, #0xc]
	bl      free
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      Function_2002fa0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_2002fa0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	bl      Function_2002fa0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x3
	bl      Function_2002fa0
	ldr     r0, [r4, #0x10]
	bl      Call_free1
	ldr     r0, [r4, #0x0]
	bl      Call_FS_CloseFile
	ldr     r0, [r4, #0x14]
	bl      Function_20242c4
	ldr     r0, [r4, #0x18]
	bl      Call_free5
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x8]
	bl      Function_200d0b0
	ldr     r0, [r4, #0x4]
	bl      Function_200c8d4
	ldr     r0, [r4, #0x2c]
	bl      Function_200b190
	ldr     r2, [pc, #0xc] @ 0x21d1200, (=0x4000060)
	ldr     r0, [pc, #0xc] @ 0x21d1204, (=0xcff7)
	ldrh    r1, [r2, #0x0]
	and     r0, r1
	strh    r0, [r2, #0x0]
	pop     {r4,pc}
@ 0x21d11fe

.align 2
.word 0x4000060 @ 0x21d1200
.word 0xcff7 @ 0x21d1204



.thumb
Function_21d1208: @ 21d1208 :thumb
	push    {r3-r5,lr}
	add     sp, #-0xe0
	mov     r4, r0
	bl      Function_201ff00
	ldr     r5, [pc, #0x190] @ 0x21d13a4, (=Unknown_21d50d4)
	add     r3, sp, #0x60
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      Function_2018368
	ldr     r5, [pc, #0x180] @ 0x21d13a8, (=0x21d5154)
	add     r3, sp, #0x38
	mov     r2, #0x5
.thumb
branch_21d122c: @ 21d122c :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d122c
	add     r0, sp, #0x38
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
	ldr     r5, [pc, #0x138] @ 0x21d13ac, (=0x21d51b4)
	add     r3, sp, #0x70
	mov     r2, #0xe
.thumb
branch_21d1278: @ 21d1278 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1278
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x6f
	bl      Function_2019690
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6f
	bl      Function_2019690
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6f
	bl      Function_2019690
	mov     r0, #0x3
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6f
	bl      Function_2019690
	mov     r1, #0x0
	mov     r0, r4
	add     r2, sp, #0x70
	mov     r3, r1
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x1
	add     r2, sp, #0x8c
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x2
	add     r2, sp, #0xa8
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x3
	add     r2, sp, #0xc4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019ebc
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019ebc
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019ebc
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019ebc
	ldr     r5, [pc, #0xac] @ 0x21d13b0, (=0x21d517c)
	add     r3, sp, #0x0
	mov     r2, #0x7
.thumb
branch_21d1306: @ 21d1306 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1306
	mov     r0, r4
	mov     r1, #0x4
	add     r2, sp, #0x0
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x5
	add     r2, sp, #0x1c
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019ebc
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2019ebc
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6f
	bl      Function_2019690
	mov     r0, #0x5
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x6f
	bl      Function_2019690
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff74
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	add     sp, #0xe0
	pop     {r3-r5,pc}
@ 0x21d13a2

.align 2
.word Unknown_21d50d4 @ 0x21d13a4
.word 0x21d5154 @ 0x21d13a8
.word 0x21d51b4 @ 0x21d13ac
.word 0x21d517c @ 0x21d13b0



.thumb
Function_21d13b4: @ 21d13b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_201dcac
	bl      Function_200c800
	ldr     r0, [r4, #0x1c]
	bl      Function_2003694
	ldr     r0, [r4, #0x18]
	bl      Function_201c2b8
	ldr     r3, [pc, #0xc] @ 0x21d13dc, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x21d13e0, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x21d13da


.align 2


.word 0x27e0000 @ 0x21d13dc
.word 0x3ff8 @ 0x21d13e0
.thumb
Function_21d13e4: @ 21d13e4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r1, [pc, #0xa8] @ 0x21d1494, (=0x7d8)
	mov     r5, r0
	mov     r0, #0x6f
	bl      malloc
	ldr     r2, [pc, #0xa0] @ 0x21d1494, (=0x7d8)
	mov     r1, #0x0
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r1, r5
	mov     r0, #0x7d
	add     r1, #0xc
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	add     r5, #0xd0
	ldr     r1, [r5, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_21d1808
	mov     r0, r4
	bl      Function_21d1a54
	mov     r0, r4
	add     r0, #0xc
	mov     r1, #0x6f
	bl      Function_21d4e3c
	mov     r0, #0x2
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	mov     r0, #0x64
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x68] @ 0x21d1498, (=0x4001014)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	lsr     r0, r0, #14
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	mov     r0, r4
	ldr     r3, [pc, #0x58] @ 0x21d149c, (=0x2aa)
	add     r0, #0xc
	mov     r2, #0xbf
	bl      Function_21d4e70
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	ldr     r0, [r1, #0x18]
	add     r1, #0x44
	bl      Function_21d1758
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r2, [r4, r0]
	mov     r0, #0x19
	ldr     r1, [r2, #0x48]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r2, #0x48]
	ldr     r0, [pc, #0x34] @ 0x21d14a0, (=0x4001050)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x21d14a4, (=0x4000050)
	mov     r1, #0x4
	mov     r2, #0x32
	mov     r3, #0x7
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x1
	bl      Function_21d4dc8
	mov     r0, #0x0
	mov     r1, #0xa
	bl      Function_200564c
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d1492


.align 2


.word 0x7d8 @ 0x21d1494
.word 0x4001014 @ 0x21d1498
.word 0x2aa @ 0x21d149c
.word 0x4001050 @ 0x21d14a0
.word 0x4000050 @ 0x21d14a4
.thumb
Function_21d14a8: @ 21d14a8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x6
	bhi     branch_21d14f2
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d14c0

Jumppoints_21d14c0:
.hword branch_21d14ce - Jumppoints_21d14c0 - 2
.hword branch_21d14ea - Jumppoints_21d14c0 - 2
.hword branch_21d150e - Jumppoints_21d14c0 - 2
.hword branch_21d154c - Jumppoints_21d14c0 - 2
.hword branch_21d15b0 - Jumppoints_21d14c0 - 2
.hword branch_21d1614 - Jumppoints_21d14c0 - 2
.hword branch_21d163c - Jumppoints_21d14c0 - 2
.thumb
branch_21d14ce: @ 21d14ce :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x6f
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_21d14ea: @ 21d14ea :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	bne     branch_21d14f4
.thumb
branch_21d14f2: @ 21d14f2 :thumb
	b       branch_21d1686
@ 0x21d14f4

.thumb
branch_21d14f4: @ 21d14f4 :thumb
	ldr     r1, [pc, #0x1a8] @ 0x21d16a0, (=0x429)
	mov     r0, #0x12
	mov     r2, #0x0
	bl      Function_2004550
	mov     r1, #0x0
	mov     r0, #0x3f
	mov     r2, r1
	bl      Function_2004550
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	b       branch_21d1686
@ 0x21d150e

.thumb
branch_21d150e: @ 21d150e :thumb
	mov     r0, #0x1b
	lsl     r0, r0, #4
	add     r2, r4, r0
	ldr     r1, [r4, #0x8]
	sub     r0, #0x28
	mul     r0, r1
	add     r0, r2, r0
	mov     r1, #0x1
	bl      Function_2017348
	ldr     r1, [r4, #0x8]
	mov     r2, #0x62
	lsl     r2, r2, #2
	mov     r3, r1
	mul     r3, r2
	mov     r0, #0x1
	add     r3, r4, r3
	lsl     r1, r2, #1
	str     r0, [r3, r1]
	ldr     r1, [r4, #0x8]
	mul     r2, r1
	mov     r1, #0xc7
	add     r2, r4, r2
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	b       branch_21d1686
@ 0x21d154c

.thumb
branch_21d154c: @ 21d154c :thumb
	ldr     r0, [r4, #0x8]
	ldr     r2, [r4, #0x4]
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x150] @ 0x21d16a4, (=0x21d523e)
	ldrh    r0, [r0, r1]
	cmp     r2, r0
	bne     branch_21d1560
	ldr     r0, [pc, #0x14c] @ 0x21d16a8, (=0x5c7)
	bl      Function_2005748
.thumb
branch_21d1560: @ 21d1560 :thumb
	ldr     r1, [r4, #0x8]
	ldr     r0, [pc, #0x148] @ 0x21d16ac, (=0x21d522c)
	lsl     r2, r1, #1
	ldrh    r0, [r0, r2]
	ldr     r3, [r4, #0x4]
	cmp     r3, r0
	bne     branch_21d1588
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x13c] @ 0x21d16b0, (=0x21d524c)
	mov     r0, #0x6f
	ldr     r1, [r1, r2]
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	mov     r2, r0
	mov     r3, #0x64
	str     r0, [sp, #0x4]
	bl      Function_20059d0
.thumb
branch_21d1588: @ 21d1588 :thumb
	ldr     r0, [r4, #0x4]
	add     r2, r0, #0x1
	str     r2, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x120] @ 0x21d16b4, (=0x21d5226)
	ldrh    r0, [r0, r1]
	cmp     r2, r0
	blt     branch_21d1686
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	add     r0, #0x53
	strb    r1, [r0, #0x0]
	str     r1, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d1686
@ 0x21d15b0

.thumb
branch_21d15b0: @ 21d15b0 :thumb
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r3, [r4, r0]
	mov     r1, #0x53
	ldsb    r2, [r3, r1]
	add     r3, #0x53
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r2, [r3, #0x0]
	ldr     r0, [r4, r0]
	ldsb    r2, [r0, r1]
	cmp     r2, #0x10
	beq     branch_21d15d2
	ldr     r0, [pc, #0xec] @ 0x21d16b8, (=0x4000050)
	mov     r1, #0x31
	blx     G2x_SetBlendBrightness_
	b       branch_21d1686
@ 0x21d15d2

.thumb
branch_21d15d2: @ 21d15d2 :thumb
	ldr     r1, [r4, #0x8]
	mov     r0, #0x44
	mul     r0, r1
	mov     r2, #0x1
	add     r0, r4, r0
	str     r2, [r0, #0x54]
	mov     r0, #0x1b
	lsl     r0, r0, #4
	add     r2, r4, r0
	ldr     r1, [r4, #0x8]
	sub     r0, #0x28
	mul     r0, r1
	add     r0, r2, r0
	mov     r1, #0x0
	bl      Function_2017348
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x3
	blt     branch_21d1686
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	add     r0, #0x53
	strb    r1, [r0, #0x0]
	mov     r0, #0x6
	str     r0, [r4, #0x0]
	b       branch_21d1686
@ 0x21d1614

.thumb
branch_21d1614: @ 21d1614 :thumb
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r3, [r4, r0]
	mov     r1, #0x53
	ldsb    r2, [r3, r1]
	add     r3, #0x53
	.hword  0x1e52 @ sub r2, r2, #0x1
	strb    r2, [r3, #0x0]
	ldr     r0, [r4, r0]
	ldsb    r2, [r0, r1]
	cmp     r2, #0x0
	ble     branch_21d1636
	ldr     r0, [pc, #0x88] @ 0x21d16b8, (=0x4000050)
	mov     r1, #0x31
	blx     G2x_SetBlendBrightness_
	b       branch_21d1686
@ 0x21d1636

.thumb
branch_21d1636: @ 21d1636 :thumb
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	b       branch_21d1686
@ 0x21d163c

.thumb
branch_21d163c: @ 21d163c :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x78
	blt     branch_21d1686
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r3, [r4, r0]
	mov     r1, #0x53
	ldsb    r2, [r3, r1]
	add     r3, #0x53
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r2, [r3, #0x0]
	ldr     r0, [r4, r0]
	ldsb    r2, [r0, r1]
	cmp     r2, #0x10
	beq     branch_21d1668
	ldr     r0, [pc, #0x5c] @ 0x21d16bc, (=0x4001050)
	mov     r1, #0x33
	blx     G2x_SetBlendBrightness_
	b       branch_21d1686
@ 0x21d1668

.thumb
branch_21d1668: @ 21d1668 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x6f
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	ldr     r3, [pc, #0x48] @ 0x21d16c0, (=0x7fff)
	mov     r1, r0
	mov     r2, r0
	bl      Function_200f174
	mov     r0, #0x0
	add     sp, #0xc
	str     r0, [r4, #0x0]
	pop     {r3,r4,pc}
@ 0x21d1686

.thumb
branch_21d1686: @ 21d1686 :thumb
	mov     r0, r4
	bl      Function_21d17b4
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	ldr     r1, [r4, #0x8]
	bl      Function_21d4c94
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d169e


.align 2


.word 0x429 @ 0x21d16a0
.word 0x21d523e @ 0x21d16a4
.word 0x5c7 @ 0x21d16a8
.word 0x21d522c @ 0x21d16ac
.word 0x21d524c @ 0x21d16b0
.word 0x21d5226 @ 0x21d16b4
.word 0x4000050 @ 0x21d16b8
.word 0x4001050 @ 0x21d16bc
.word 0x7fff @ 0x21d16c0
.thumb
Function_21d16c4: @ 21d16c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_21d16d4
	cmp     r1, #0x1
	beq     branch_21d16e8
	b       branch_21d1746
@ 0x21d16d4

.thumb
branch_21d16d4: @ 21d16d4 :thumb
	add     r0, #0xc
	bl      Function_21d4e58
	mov     r0, r4
	bl      Function_21d1a24
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d174e
@ 0x21d16e8

.thumb
branch_21d16e8: @ 21d16e8 :thumb
	mov     r1, #0x7d
	lsl     r1, r1, #4
	mov     r0, #0x1b
	ldr     r1, [r4, r1]
	lsl     r0, r0, #4
	add     r0, r4, r0
	add     r1, #0x1c
	mov     r2, #0x2
	bl      Function_21d4aa4
	mov     r1, #0x7d
	lsl     r1, r1, #4
	mov     r0, #0xce
	ldr     r1, [r4, r1]
	lsl     r0, r0, #2
	add     r0, r4, r0
	add     r1, #0x1c
	mov     r2, #0x2
	bl      Function_21d4aa4
	mov     r1, #0x7d
	lsl     r1, r1, #4
	mov     r0, #0x13
	ldr     r1, [r4, r1]
	lsl     r0, r0, #6
	add     r0, r4, r0
	add     r1, #0x1c
	mov     r2, #0x2
	bl      Function_21d4aa4
	mov     r1, #0x7d
	lsl     r1, r1, #4
	ldr     r0, [pc, #0x28] @ 0x21d1754, (=0x648)
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	add     r1, #0x1c
	mov     r2, #0x0
	bl      Function_21d4aa4
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff74
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d174e
@ 0x21d1746

.thumb
branch_21d1746: @ 21d1746 :thumb
	bl      free
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d174e

.thumb
branch_21d174e: @ 21d174e :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1752


.align 2


.word 0x648 @ 0x21d1754
.thumb
Function_21d1758: @ 21d1758 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r3, [pc, #0x48] @ 0x21d17a8, (=0x21d5224)
	mov     r4, r0
	ldrh    r5, [r3, #0x20]
	add     r0, sp, #0xc
	add     r2, sp, #0xc
	strh    r5, [r0, #0x0]
	ldrh    r5, [r3, #0x22]
	strh    r5, [r0, #0x2]
	ldrh    r5, [r3, #0x24]
	ldrh    r3, [r3, #0x26]
	strh    r5, [r0, #0x4]
	strh    r3, [r0, #0x6]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r1
	mov     r1, #0x32
	ldr     r3, [pc, #0x28] @ 0x21d17ac, (=0xa66)
	lsl     r1, r1, #14
	str     r4, [sp, #0x8]
	bl      Function_20206d0
	mov     r0, #0x0
	mov     r1, r4
	bl      Function_2020854
	mov     r0, r4
	bl      Function_20203d4
	mov     r1, #0x2
	ldr     r0, [pc, #0x14] @ 0x21d17b0, (=0x19a)
	lsl     r1, r1, #22
	mov     r2, r4
	bl      Function_20206bc
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d17a8

.word 0x21d5224 @ 0x21d17a8
.word 0xa66 @ 0x21d17ac
.word 0x19a @ 0x21d17b0
.thumb
Function_21d17b4: @ 21d17b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Call_G3X_Reset
	bl      Function_20203ec
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d47a0
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d4844
	mov     r0, #0x1b
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_21d49b4
	mov     r0, #0xce
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_21d49b4
	mov     r0, #0x13
	lsl     r0, r0, #6
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x10] @ 0x21d1804, (=0x648)
	add     r0, r4, r0
	bl      Function_21d49b4
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_20241bc
	pop     {r4,pc}
@ 0x21d1804

.word 0x648 @ 0x21d1804
.thumb
Function_21d1808: @ 21d1808 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	mov     r3, #0x5
	ldr     r0, [r1, #0x4]
	ldr     r7, [r1, #0xc]
	str     r0, [sp, #0x1c]
	ldr     r0, [r1, #0x10]
	ldr     r4, [r1, #0x0]
	ldr     r6, [r1, #0x8]
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6f
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x46
	mov     r2, r7
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6f
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x48
	mov     r2, r7
	mov     r3, #0x5
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6f
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x49
	mov     r2, r7
	mov     r3, #0x4
	bl      Function_200710c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x18]
	mov     r1, #0xac
	mov     r2, #0x47
	mov     r3, #0x6f
	bl      Function_2003050
	ldr     r0, [pc, #0x194] @ 0x21d1a18, (=0x21d5224)
	add     r1, sp, #0x20
	ldrh    r2, [r0, #0x0]
	add     r0, sp, #0x20
	strh    r2, [r0, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	ldr     r0, [sp, #0x18]
	mov     r3, r2
	bl      Function_2002fbc
	str     r4, [sp, #0x0]
	mov     r0, #0x32
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r1, #0x3
	str     r1, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x16c] @ 0x21d1a1c, (=0xc350)
	ldr     r2, [sp, #0x1c]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	mov     r3, r6
	bl      Function_200cdc4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x15c] @ 0x21d1a1c, (=0xc350)
	mov     r1, r6
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x1c]
	mov     r2, r4
	mov     r3, #0x30
	bl      Function_200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x148] @ 0x21d1a1c, (=0xc350)
	mov     r1, r6
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x1c]
	mov     r2, r4
	mov     r3, #0x2f
	bl      Function_200ce54
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x130] @ 0x21d1a1c, (=0xc350)
	mov     r1, r6
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x1c]
	mov     r2, r4
	mov     r3, #0x31
	bl      Function_200cc3c
	mov     r2, #0x7d
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	ldr     r0, [pc, #0x11c] @ 0x21d1a20, (=0x648)
	ldr     r2, [r2, #0x0]
	add     r0, r5, r0
	mov     r1, #0x3c
	bl      Function_21d4ac8
	mov     r2, #0x7d
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	mov     r0, #0x1b
	lsl     r0, r0, #4
	ldr     r2, [r2, #0x0]
	add     r0, r5, r0
	mov     r1, #0x3b
	bl      Function_21d4ac8
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r3, [r5, r0]
	mov     r1, #0x1b
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	lsl     r1, r1, #4
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	add     r1, r5, r1
	mov     r2, #0x39
	bl      Function_21d4b4c
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r3, [r5, r0]
	mov     r1, #0x1b
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	lsl     r1, r1, #4
	ldr     r3, [r3, #0x0]
	mov     r0, #0x1
	add     r1, r5, r1
	mov     r2, #0x3a
	bl      Function_21d4b4c
	mov     r2, #0x7d
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	mov     r0, #0xce
	lsl     r0, r0, #2
	ldr     r2, [r2, #0x0]
	add     r0, r5, r0
	mov     r1, #0x2d
	bl      Function_21d4ac8
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r3, [r5, r0]
	mov     r1, #0xce
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	add     r1, r5, r1
	mov     r2, #0x2b
	bl      Function_21d4b4c
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r3, [r5, r0]
	mov     r1, #0xce
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r3, [r3, #0x0]
	mov     r0, #0x1
	add     r1, r5, r1
	mov     r2, #0x2c
	bl      Function_21d4b4c
	mov     r2, #0x7d
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	mov     r0, #0x13
	lsl     r0, r0, #6
	ldr     r2, [r2, #0x0]
	add     r0, r5, r0
	mov     r1, #0x11
	bl      Function_21d4ac8
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r3, [r5, r0]
	mov     r1, #0x13
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	lsl     r1, r1, #6
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	add     r1, r5, r1
	mov     r2, #0xf
	bl      Function_21d4b4c
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r3, [r5, r0]
	mov     r1, #0x13
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	lsl     r1, r1, #6
	ldr     r3, [r3, #0x0]
	mov     r0, #0x1
	add     r1, r5, r1
	mov     r2, #0x10
	bl      Function_21d4b4c
	mov     r0, #0x1b
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r1, #0x1
	bl      Function_2017348
	mov     r0, #0xce
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_2017348
	mov     r0, #0x13
	lsl     r0, r0, #6
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_2017348
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x21d1a18

.word 0x21d5224 @ 0x21d1a18
.word 0xc350 @ 0x21d1a1c
.word 0x648 @ 0x21d1a20
.thumb
Function_21d1a24: @ 21d1a24 :thumb
	push    {r4-r6,lr}
	mov     r6, #0x49
	mov     r5, r0
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_21d1a2e: @ 21d1a2e :thumb
	ldr     r0, [r5, #0x58]
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r5, r6]
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r5, #0x18]
	bl      Function_200d0f4
	mov     r0, r5
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	bl      Function_200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x44
	cmp     r4, #0x3
	blt     branch_21d1a2e
	pop     {r4-r6,pc}
@ 0x21d1a54

.thumb
Function_21d1a54: @ 21d1a54 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x64
	mov     r5, r0
	mov     r0, #0x7d
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	mov     r6, #0x0
	ldr     r0, [r1, #0x4]
	mov     r7, r5
	str     r0, [sp, #0x14]
	ldr     r0, [r1, #0x8]
	mov     r4, r5
	str     r0, [sp, #0x10]
	add     r0, sp, #0x18
	strh    r6, [r0, #0x18]
	strh    r6, [r0, #0x1a]
	strh    r6, [r0, #0x1c]
	strh    r6, [r0, #0x1e]
	mov     r0, #0x2
	str     r0, [sp, #0x40]
	str     r0, [sp, #0x5c]
	.hword  0x1ec0 @ sub r0, r0, #0x3
	str     r0, [sp, #0x54]
	str     r0, [sp, #0x58]
	ldr     r0, [pc, #0x1a8] @ 0x21d1c30, (=0xc350)
	str     r6, [sp, #0x38]
	str     r6, [sp, #0x3c]
	str     r6, [sp, #0x60]
	str     r0, [sp, #0x44]
	str     r0, [sp, #0x48]
	str     r0, [sp, #0x4c]
	str     r0, [sp, #0x50]
	str     r6, [sp, #0x0]
	add     r7, #0xe4
.thumb
branch_21d1a98: @ 21d1a98 :thumb
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x10]
	add     r2, sp, #0x30
	bl      Function_200ce6c
	mov     r1, r4
	add     r1, #0xe4
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	bl      Function_200d330
	mov     r0, r4
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_200d3f4
	mov     r0, r4
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	mov     r1, r6
	bl      Function_200d430
	mov     r0, r4
	add     r0, #0xe4
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	mov     r2, r1
	bl      Function_200d4c4
	mov     r1, r4
	add     r1, #0xf0
	mov     r0, #0x1
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xec
	mov     r1, r4
	str     r6, [r0, #0x0]
	add     r1, #0xf8
	mov     r0, #0x32
	strh    r0, [r1, #0x0]
	ldr     r1, [sp, #0x0]
	add     r0, #0xce
	str     r1, [r4, r0]
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldr     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	mov     r0, #0x42
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r1, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	mov     r0, #0x11
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	bl      PRNG
	mov     r1, #0xa
	blx     _s32_div_f
	mov     r0, #0x45
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r1, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x108] @ 0x21d1c34, (=0x21d4439)
	ldr     r2, [pc, #0x10c] @ 0x21d1c38, (=0xfff)
	mov     r1, r7
	bl      AddTaskToTaskList1
	mov     r1, #0x49
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [sp, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r0, #0x78
	add     r4, #0x44
	add     r7, #0x44
	str     r0, [sp, #0x0]
	cmp     r6, #0x3
	blt     branch_21d1a98
	ldr     r1, [pc, #0xf0] @ 0x21d1c3c, (=0x21d5224)
	add     r3, sp, #0x24
	ldrh    r2, [r1, #0x14]
	add     r0, sp, #0x18
	mov     r4, #0x0
	strh    r2, [r0, #0x6]
	ldrh    r2, [r1, #0x16]
	add     r6, sp, #0x1c
	str     r3, [sp, #0xc]
	strh    r2, [r0, #0x8]
	ldrh    r2, [r1, #0x18]
	add     r6, #0x2
	add     r7, sp, #0x18
	strh    r2, [r0, #0xa]
	ldrh    r2, [r1, #0xe]
	str     r4, [sp, #0x8]
	strh    r2, [r0, #0x0]
	ldrh    r2, [r1, #0x10]
	strh    r2, [r0, #0x2]
	ldrh    r1, [r1, #0x12]
	ldr     r2, [pc, #0xcc] @ 0x21d1c40, (=0x21d5258)
	strh    r1, [r0, #0x4]
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r5
	str     r0, [sp, #0x4]
	add     r0, #0x18
	str     r0, [sp, #0x4]
.thumb
branch_21d1b84: @ 21d1b84 :thumb
	cmp     r4, #0x1
	bne     branch_21d1b8e
	mov     r0, #0x0
	str     r0, [sp, #0x5c]
	b       branch_21d1b92
@ 0x21d1b8e

.thumb
branch_21d1b8e: @ 21d1b8e :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x5c]
.thumb
branch_21d1b92: @ 21d1b92 :thumb
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x10]
	add     r2, sp, #0x30
	bl      Function_200ce6c
	str     r0, [r5, #0x18]
	mov     r0, r5
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	str     r0, [r5, #0x1c]
	ldr     r0, [r5, #0x18]
	bl      Function_200d330
	ldr     r0, [r5, #0x18]
	mov     r1, #0x2
	bl      Function_200d6a4
	ldr     r1, [sp, #0xc]
	ldr     r0, [r5, #0x18]
	ldr     r1, [r1, #0x0]
	mov     r2, r1
	bl      Function_200d6e8
	ldr     r0, [r5, #0x18]
	mov     r1, r4
	bl      Function_200d430
	mov     r1, #0x0
	mov     r2, #0x0
	ldsh    r1, [r6, r1]
	ldsh    r2, [r7, r2]
	ldr     r0, [r5, #0x18]
	bl      Function_200d4c4
	mov     r0, #0x0
	str     r0, [r5, #0x24]
	str     r4, [r5, #0x20]
	mov     r0, #0x32
	strh    r0, [r5, #0x2c]
	ldr     r0, [sp, #0x8]
	str     r0, [r5, #0x34]
	str     r0, [r5, #0x38]
	mov     r0, #0x0
	str     r0, [r5, #0x3c]
	mov     r0, #0x1
	str     r0, [r5, #0x40]
	str     r0, [r5, #0x44]
	bl      PRNG
	mov     r1, #0xa
	blx     _s32_div_f
	str     r1, [r5, #0x48]
	mov     r0, #0x0
	str     r0, [r5, #0x4c]
	mov     r2, #0x1
	ldr     r0, [pc, #0x30] @ 0x21d1c34, (=0x21d4439)
	ldr     r1, [sp, #0x4]
	lsl     r2, r2, #12
	bl      AddTaskToTaskList1
	str     r0, [r5, #0x58]
	ldr     r0, [sp, #0xc]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	add     r5, #0x44
	add     r0, #0x78
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	.hword  0x1cbf @ add r7, r7, #0x2
	add     r0, #0x44
	.hword  0x1cb6 @ add r6, r6, #0x2
	str     r0, [sp, #0x4]
	cmp     r4, #0x3
	blt     branch_21d1b84
	add     sp, #0x64
	pop     {r4-r7,pc}
@ 0x21d1c30

.word 0xc350 @ 0x21d1c30
.word 0x21d4439 @ 0x21d1c34
.word 0xfff @ 0x21d1c38
.word 0x21d5224 @ 0x21d1c3c
.word 0x21d5258 @ 0x21d1c40
.thumb
Function_21d1c44: @ 21d1c44 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r3, [pc, #0x40] @ 0x21d1c8c, (=0x21d5290)
	mov     r4, r0
	ldrh    r5, [r3, #0x0]
	add     r0, sp, #0xc
	add     r2, sp, #0xc
	strh    r5, [r0, #0x0]
	ldrh    r5, [r3, #0x2]
	strh    r5, [r0, #0x2]
	ldrh    r5, [r3, #0x4]
	ldrh    r3, [r3, #0x6]
	strh    r5, [r0, #0x4]
	strh    r3, [r0, #0x6]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r1
	ldr     r1, [pc, #0x24] @ 0x21d1c90, (=0x13c805)
	ldr     r3, [pc, #0x24] @ 0x21d1c94, (=0xc01)
	str     r4, [sp, #0x8]
	bl      Function_20206d0
	mov     r0, r4
	bl      Function_20203d4
	mov     r0, #0xa
	mov     r1, #0x3f
	lsl     r0, r0, #12
	lsl     r1, r1, #16
	mov     r2, r4
	bl      Function_20206bc
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d1c8c

.word 0x21d5290 @ 0x21d1c8c
.word 0x13c805 @ 0x21d1c90
.word 0xc01 @ 0x21d1c94
.thumb
Function_21d1c98: @ 21d1c98 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldr     r0, [pc, #0x398] @ 0x21d2038, (=0x1ec8)
	mov     r3, #0x5
	ldr     r1, [r5, r0]
	ldr     r0, [r1, #0xc]
	ldr     r4, [r1, #0x0]
	str     r0, [sp, #0x1c]
	ldr     r0, [r1, #0x10]
	ldr     r7, [r1, #0x4]
	ldr     r6, [r1, #0x8]
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6f
	str     r0, [sp, #0xc]
	ldr     r2, [sp, #0x1c]
	mov     r0, r4
	mov     r1, #0x12
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x6f
	str     r0, [sp, #0xc]
	ldr     r2, [sp, #0x1c]
	mov     r0, r4
	mov     r1, #0x14
	mov     r3, #0x5
	bl      Function_200710c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x18]
	mov     r1, #0xac
	mov     r2, #0x13
	mov     r3, #0x6f
	bl      Function_2003050
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [sp, #0x18]
	mov     r1, #0xac
	mov     r2, #0x13
	mov     r3, #0x6f
	bl      Function_2003050
	str     r4, [sp, #0x0]
	mov     r0, #0x32
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r1, #0x3
	str     r1, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x318] @ 0x21d203c, (=0xc350)
	mov     r2, r7
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	mov     r3, r6
	bl      Function_200cdc4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x308] @ 0x21d203c, (=0xc350)
	mov     r1, r6
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r2, r4
	mov     r3, #0x30
	bl      Function_200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2f4] @ 0x21d203c, (=0xc350)
	mov     r1, r6
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r2, r4
	mov     r3, #0x2f
	bl      Function_200ce54
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2dc] @ 0x21d203c, (=0xc350)
	mov     r1, r6
	str     r0, [sp, #0x8]
	mov     r0, r7
	mov     r2, r4
	mov     r3, #0x31
	bl      Function_200cc3c
	ldr     r2, [pc, #0x2c8] @ 0x21d2038, (=0x1ec8)
	mov     r0, #0x1b
	ldr     r2, [r5, r2]
	lsl     r0, r0, #4
	ldr     r2, [r2, #0x0]
	add     r0, r5, r0
	mov     r1, #0x2e
	bl      Function_21d4ac8
	ldr     r0, [pc, #0x2bc] @ 0x21d2040, (=0x18a8)
	mov     r7, #0x62
	mov     r6, #0x0
	add     r4, r5, r0
	lsl     r7, r7, #2
.thumb
branch_21d1d8a: @ 21d1d8a :thumb
	ldr     r2, [pc, #0x2ac] @ 0x21d2038, (=0x1ec8)
	mov     r0, r4
	ldr     r2, [r5, r2]
	mov     r1, #0x41
	ldr     r2, [r2, #0x0]
	bl      Function_21d4ac8
	ldr     r1, [pc, #0x2a8] @ 0x21d2044, (=0x1333)
	mov     r2, #0x1
	mov     r0, r4
	lsl     r2, r2, #12
	mov     r3, r1
	bl      Function_201736c
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, r4, r7
	cmp     r6, #0x4
	blt     branch_21d1d8a
	ldr     r2, [pc, #0x288] @ 0x21d2038, (=0x1ec8)
	mov     r0, #0x13
	ldr     r2, [r5, r2]
	lsl     r0, r0, #6
	ldr     r2, [r2, #0x0]
	add     r0, r5, r0
	mov     r1, #0x18
	bl      Function_21d4ac8
	ldr     r0, [pc, #0x274] @ 0x21d2038, (=0x1ec8)
	mov     r1, #0x13
	ldr     r3, [r5, r0]
	lsl     r1, r1, #6
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	add     r1, r5, r1
	mov     r2, #0x16
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x25c] @ 0x21d2038, (=0x1ec8)
	mov     r1, #0x13
	ldr     r3, [r5, r0]
	lsl     r1, r1, #6
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x1
	add     r1, r5, r1
	mov     r2, #0x17
	bl      Function_21d4b4c
	ldr     r2, [pc, #0x240] @ 0x21d2038, (=0x1ec8)
	ldr     r0, [pc, #0x250] @ 0x21d2048, (=0x648)
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	ldr     r2, [r2, #0x0]
	mov     r1, #0x35
	bl      Function_21d4ac8
	ldr     r0, [pc, #0x230] @ 0x21d2038, (=0x1ec8)
	ldr     r1, [pc, #0x240] @ 0x21d2048, (=0x648)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	mov     r2, #0x33
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x218] @ 0x21d2038, (=0x1ec8)
	ldr     r1, [pc, #0x228] @ 0x21d2048, (=0x648)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x1
	mov     r2, #0x34
	bl      Function_21d4b4c
	ldr     r2, [pc, #0x200] @ 0x21d2038, (=0x1ec8)
	mov     r0, #0xce
	ldr     r2, [r5, r2]
	lsl     r0, r0, #2
	ldr     r2, [r2, #0x0]
	add     r0, r5, r0
	mov     r1, #0x37
	bl      Function_21d4ac8
	ldr     r0, [pc, #0x1f0] @ 0x21d2038, (=0x1ec8)
	mov     r1, #0xce
	ldr     r3, [r5, r0]
	lsl     r1, r1, #2
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	add     r1, r5, r1
	mov     r2, #0x36
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x1d4] @ 0x21d2038, (=0x1ec8)
	mov     r1, #0xce
	ldr     r3, [r5, r0]
	lsl     r1, r1, #2
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x1
	add     r1, r5, r1
	mov     r2, #0x38
	bl      Function_21d4b4c
	ldr     r2, [pc, #0x1bc] @ 0x21d2038, (=0x1ec8)
	mov     r0, #0x7d
	ldr     r2, [r5, r2]
	lsl     r0, r0, #4
	ldr     r2, [r2, #0x0]
	add     r0, r5, r0
	mov     r1, #0x42
	bl      Function_21d4ac8
	mov     r0, #0x7d
	ldr     r1, [pc, #0x1bc] @ 0x21d204c, (=0xfffce000)
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, r1
	bl      Function_2017350
	ldr     r0, [pc, #0x198] @ 0x21d2038, (=0x1ec8)
	mov     r1, #0x7d
	ldr     r3, [r5, r0]
	lsl     r1, r1, #4
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	add     r1, r5, r1
	mov     r2, #0x43
	bl      Function_21d4b4c
	mov     r1, #0x93
	lsl     r1, r1, #4
	mov     r2, #0x1
	str     r2, [r5, r1]
	add     r0, r1, #0x4
	str     r2, [r5, r0]
	mov     r0, r1
	lsl     r2, r2, #11
	sub     r0, #0xc
	str     r2, [r5, r0]
	ldr     r2, [pc, #0x16c] @ 0x21d2038, (=0x1ec8)
	add     r1, #0x28
	ldr     r2, [r5, r2]
	add     r0, r5, r1
	ldr     r2, [r2, #0x0]
	mov     r1, #0x44
	bl      Function_21d4ac8
	ldr     r0, [pc, #0x174] @ 0x21d2050, (=0x958)
	mov     r1, #0x32
	ldr     r3, [pc, #0x16c] @ 0x21d204c, (=0xfffce000)
	add     r0, r5, r0
	lsl     r1, r1, #12
	mov     r2, #0x0
	bl      Function_2017350
	ldr     r0, [pc, #0x14c] @ 0x21d2038, (=0x1ec8)
	ldr     r1, [pc, #0x160] @ 0x21d2050, (=0x958)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	mov     r2, #0x45
	bl      Function_21d4b4c
	ldr     r1, [pc, #0x150] @ 0x21d2054, (=0xab8)
	mov     r2, #0x1
	str     r2, [r5, r1]
	add     r0, r1, #0x4
	str     r2, [r5, r0]
	mov     r0, r1
	lsl     r2, r2, #11
	sub     r0, #0xc
	str     r2, [r5, r0]
	ldr     r2, [pc, #0x120] @ 0x21d2038, (=0x1ec8)
	add     r1, #0x28
	ldr     r2, [r5, r2]
	add     r0, r5, r1
	ldr     r2, [r2, #0x0]
	mov     r1, #0x1a
	bl      Function_21d4ac8
	mov     r0, #0xae
	lsl     r0, r0, #4
	mov     r1, #0x0
	ldr     r2, [pc, #0x12c] @ 0x21d2058, (=0xfffa6000)
	add     r0, r5, r0
	mov     r3, r1
	bl      Function_2017350
	mov     r0, #0xae
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_2017348
	ldr     r0, [pc, #0xf4] @ 0x21d2038, (=0x1ec8)
	mov     r1, #0xae
	ldr     r3, [r5, r0]
	lsl     r1, r1, #4
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	add     r1, r5, r1
	mov     r2, #0x19
	bl      Function_21d4b4c
	ldr     r0, [pc, #0xdc] @ 0x21d2038, (=0x1ec8)
	mov     r1, #0xae
	ldr     r3, [r5, r0]
	lsl     r1, r1, #4
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x1
	add     r1, r5, r1
	mov     r2, #0x1b
	bl      Function_21d4b4c
	ldr     r0, [pc, #0xe4] @ 0x21d205c, (=0xc48)
	mov     r1, #0x1
	str     r1, [r5, r0]
	ldr     r2, [pc, #0xbc] @ 0x21d2038, (=0x1ec8)
	add     r0, #0x20
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	ldr     r2, [r2, #0x0]
	mov     r1, #0x1d
	bl      Function_21d4ac8
	ldr     r0, [pc, #0xd4] @ 0x21d2060, (=0xc68)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_2017348
	ldr     r0, [pc, #0xa0] @ 0x21d2038, (=0x1ec8)
	ldr     r1, [pc, #0xc8] @ 0x21d2060, (=0xc68)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	mov     r2, #0x1c
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x88] @ 0x21d2038, (=0x1ec8)
	ldr     r1, [pc, #0xb0] @ 0x21d2060, (=0xc68)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x1
	mov     r2, #0x1e
	bl      Function_21d4b4c
	mov     r0, #0xdd
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	ldr     r2, [pc, #0x68] @ 0x21d2038, (=0x1ec8)
	add     r0, #0x20
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	ldr     r2, [r2, #0x0]
	mov     r1, #0x20
	bl      Function_21d4ac8
	mov     r0, #0xdf
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_2017348
	ldr     r0, [pc, #0x4c] @ 0x21d2038, (=0x1ec8)
	mov     r1, #0xdf
	ldr     r3, [r5, r0]
	lsl     r1, r1, #4
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	add     r1, r5, r1
	mov     r2, #0x1f
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x34] @ 0x21d2038, (=0x1ec8)
	mov     r1, #0xdf
	ldr     r3, [r5, r0]
	lsl     r1, r1, #4
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x1
	add     r1, r5, r1
	mov     r2, #0x21
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x44] @ 0x21d2064, (=0xf58)
	mov     r1, #0x1
	str     r1, [r5, r0]
	ldr     r2, [pc, #0x14] @ 0x21d2038, (=0x1ec8)
	add     r0, #0x20
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	ldr     r2, [r2, #0x0]
	mov     r1, #0x23
	bl      Function_21d4ac8
	ldr     r0, [pc, #0x34] @ 0x21d2068, (=0xf78)
	b       branch_21d206c
@ 0x21d2036


.align 2


.word 0x1ec8 @ 0x21d2038
.word 0xc350 @ 0x21d203c
.word 0x18a8 @ 0x21d2040
.word 0x1333 @ 0x21d2044
.word 0x648 @ 0x21d2048
.word 0xfffce000 @ 0x21d204c
.word 0x958 @ 0x21d2050
.word 0xab8 @ 0x21d2054
.word 0xfffa6000 @ 0x21d2058
.word 0xc48 @ 0x21d205c
.word 0xc68 @ 0x21d2060
.word 0xf58 @ 0x21d2064
.word 0xf78 @ 0x21d2068
.thumb
branch_21d206c: @ 21d206c :thumb
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_2017348
	ldr     r0, [pc, #0x1ac] @ 0x21d2224, (=0x1ec8)
	ldr     r1, [pc, #0x1b0] @ 0x21d2228, (=0xf78)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	mov     r2, #0x22
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x194] @ 0x21d2224, (=0x1ec8)
	ldr     r1, [pc, #0x198] @ 0x21d2228, (=0xf78)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x1
	mov     r2, #0x24
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x184] @ 0x21d222c, (=0x10e0)
	mov     r1, #0x1
	str     r1, [r5, r0]
	ldr     r2, [pc, #0x178] @ 0x21d2224, (=0x1ec8)
	add     r0, #0x20
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	ldr     r2, [r2, #0x0]
	mov     r1, #0x26
	bl      Function_21d4ac8
	mov     r0, #0x11
	lsl     r0, r0, #8
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_2017348
	ldr     r0, [pc, #0x15c] @ 0x21d2224, (=0x1ec8)
	mov     r1, #0x11
	ldr     r3, [r5, r0]
	lsl     r1, r1, #8
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	add     r1, r5, r1
	mov     r2, #0x25
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x140] @ 0x21d2224, (=0x1ec8)
	mov     r1, #0x11
	ldr     r3, [r5, r0]
	lsl     r1, r1, #8
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x1
	add     r1, r5, r1
	mov     r2, #0x27
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x134] @ 0x21d2230, (=0x1268)
	mov     r1, #0x1
	str     r1, [r5, r0]
	ldr     r2, [pc, #0x120] @ 0x21d2224, (=0x1ec8)
	add     r0, #0x20
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	ldr     r2, [r2, #0x0]
	mov     r1, #0x29
	bl      Function_21d4ac8
	ldr     r0, [pc, #0x120] @ 0x21d2234, (=0x1288)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_2017348
	ldr     r0, [pc, #0x108] @ 0x21d2224, (=0x1ec8)
	ldr     r1, [pc, #0x114] @ 0x21d2234, (=0x1288)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	mov     r2, #0x28
	bl      Function_21d4b4c
	ldr     r2, [pc, #0xf0] @ 0x21d2224, (=0x1ec8)
	ldr     r0, [pc, #0x100] @ 0x21d2238, (=0x1410)
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	ldr     r2, [r2, #0x0]
	mov     r1, #0x2a
	bl      Function_21d4ac8
	ldr     r0, [pc, #0xf4] @ 0x21d2238, (=0x1410)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_2017348
	ldr     r0, [pc, #0xec] @ 0x21d223c, (=0x1ecc)
	ldr     r0, [r5, r0]
	ldr     r0, [r0, #0x8]
	bl      GetGender
	cmp     r0, #0x1
	ldr     r0, [pc, #0xe4] @ 0x21d2240, (=0x1598)
	ldr     r2, [pc, #0xc8] @ 0x21d2224, (=0x1ec8)
	beq     branch_21d2184
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	ldr     r2, [r2, #0x0]
	mov     r1, #0x3d
	bl      Function_21d4ac8
	ldr     r0, [pc, #0xb8] @ 0x21d2224, (=0x1ec8)
	ldr     r1, [pc, #0xd0] @ 0x21d2240, (=0x1598)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	mov     r2, #0x3e
	bl      Function_21d4b4c
	b       branch_21d21a8
@ 0x21d2184

.thumb
branch_21d2184: @ 21d2184 :thumb
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	ldr     r2, [r2, #0x0]
	mov     r1, #0x3f
	bl      Function_21d4ac8
	ldr     r0, [pc, #0x90] @ 0x21d2224, (=0x1ec8)
	ldr     r1, [pc, #0xac] @ 0x21d2240, (=0x1598)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	mov     r2, #0x40
	bl      Function_21d4b4c
.thumb
branch_21d21a8: @ 21d21a8 :thumb
	ldr     r0, [pc, #0x94] @ 0x21d2240, (=0x1598)
	mov     r1, #0x1
	mov     r3, #0x23
	add     r0, r5, r0
	lsl     r1, r1, #12
	mov     r2, #0x0
	lsl     r3, r3, #14
	bl      Function_2017350
	mov     r0, #0x1
	ldr     r1, [pc, #0x84] @ 0x21d2244, (=0x16fc)
	lsl     r2, r0, #10
	str     r0, [r5, r1]
	mov     r0, r1
	sub     r0, #0x10
	str     r2, [r5, r0]
	mov     r0, r1
	mov     r2, #0x2
	sub     r0, #0xc
	str     r2, [r5, r0]
	ldr     r2, [pc, #0x50] @ 0x21d2224, (=0x1ec8)
	add     r1, #0x24
	ldr     r2, [r5, r2]
	add     r0, r5, r1
	ldr     r2, [r2, #0x0]
	mov     r1, #0xd
	bl      Function_21d4ac8
	ldr     r0, [pc, #0x64] @ 0x21d2248, (=0x1720)
	mov     r1, #0x1
	mov     r3, #0xf
	add     r0, r5, r0
	lsl     r1, r1, #12
	mov     r2, #0x0
	lsl     r3, r3, #14
	bl      Function_2017350
	ldr     r0, [pc, #0x30] @ 0x21d2224, (=0x1ec8)
	ldr     r1, [pc, #0x50] @ 0x21d2248, (=0x1720)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	mov     r2, #0xe
	bl      Function_21d4b4c
	mov     r0, #0x1
	ldr     r1, [pc, #0x3c] @ 0x21d224c, (=0x1884)
	lsl     r2, r0, #10
	str     r0, [r5, r1]
	mov     r0, r1
	sub     r0, #0x10
	str     r2, [r5, r0]
	mov     r0, #0x2
	sub     r1, #0xc
	str     r0, [r5, r1]
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21d2222


.align 2


.word 0x1ec8 @ 0x21d2224
.word 0xf78 @ 0x21d2228
.word 0x10e0 @ 0x21d222c
.word 0x1268 @ 0x21d2230
.word 0x1288 @ 0x21d2234
.word 0x1410 @ 0x21d2238
.word 0x1ecc @ 0x21d223c
.word 0x1598 @ 0x21d2240
.word 0x16fc @ 0x21d2244
.word 0x1720 @ 0x21d2248
.word 0x1884 @ 0x21d224c
.thumb
Function_21d2250: @ 21d2250 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	mov     r5, r0
	ldr     r0, [pc, #0xc0] @ 0x21d2318, (=0x1ec8)
	mov     r4, #0x0
	ldr     r1, [r5, r0]
	mov     r7, r5
	ldr     r0, [r1, #0x4]
	mov     r6, #0x10
	str     r0, [sp, #0x8]
	ldr     r0, [r1, #0x8]
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	add     r0, sp, #0xc
	strh    r4, [r0, #0x0]
	strh    r4, [r0, #0x2]
	strh    r4, [r0, #0x4]
	strh    r4, [r0, #0x6]
	mov     r0, #0x2
	str     r0, [sp, #0x1c]
	.hword  0x1ec0 @ sub r0, r0, #0x3
	str     r0, [sp, #0x30]
	str     r0, [sp, #0x34]
	ldr     r0, [pc, #0x9c] @ 0x21d231c, (=0xc350)
	str     r4, [sp, #0x14]
	str     r4, [sp, #0x18]
	str     r4, [sp, #0x38]
	str     r4, [sp, #0x3c]
	str     r0, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	str     r0, [sp, #0x2c]
	add     r7, #0x14
.thumb
branch_21d2292: @ 21d2292 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	add     r2, sp, #0xc
	bl      Function_200ce6c
	str     r0, [r5, #0x14]
	bl      Function_200d330
	ldr     r0, [r5, #0x14]
	mov     r1, #0x2
	bl      Function_200d6a4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	ldr     r0, [r5, #0x14]
	mov     r2, r1
	bl      Function_200d6e8
	ldr     r0, [r5, #0x14]
	mov     r1, r4
	bl      Function_200d430
	lsl     r1, r6, #16
	ldr     r0, [r5, #0x14]
	asr     r1, r1, #16
	mov     r2, #0x40
	bl      Function_200d4c4
	mov     r0, #0x1
	str     r0, [r5, #0x20]
	str     r4, [r5, #0x1c]
	mov     r0, #0x32
	strh    r0, [r5, #0x28]
	ldr     r0, [sp, #0x0]
	str     r0, [r5, #0x30]
	str     r0, [r5, #0x34]
	str     r4, [r5, #0x38]
	mov     r0, #0x1
	str     r0, [r5, #0x3c]
	str     r0, [r5, #0x40]
	bl      PRNG
	mov     r1, #0xa
	blx     _s32_div_f
	str     r1, [r5, #0x44]
	mov     r0, #0x0
	str     r0, [r5, #0x48]
	mov     r2, #0x1
	ldr     r0, [pc, #0x28] @ 0x21d2320, (=0x21d4415)
	mov     r1, r7
	lsl     r2, r2, #12
	bl      AddTaskToTaskList1
	str     r0, [r5, #0x54]
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x78
	add     r5, #0x44
	add     r6, #0x40
	add     r7, #0x44
	str     r0, [sp, #0x0]
	cmp     r4, #0x3
	blt     branch_21d2292
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x21d2316


.align 2


.word 0x1ec8 @ 0x21d2318
.word 0xc350 @ 0x21d231c
.word 0x21d4415 @ 0x21d2320
.thumb
Function_21d2324: @ 21d2324 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_21d232a: @ 21d232a :thumb
	ldr     r0, [r5, #0x54]
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r5, #0x14]
	bl      Function_200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x44
	cmp     r4, #0x3
	blt     branch_21d232a
	pop     {r3-r5,pc}
@ 0x21d2340

.thumb
Function_21d2340: @ 21d2340 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r1, [pc, #0xbc] @ 0x21d2404, (=0x1ed0)
	mov     r5, r0
	mov     r0, #0x6f
	bl      malloc
	ldr     r2, [pc, #0xb4] @ 0x21d2404, (=0x1ed0)
	mov     r1, #0x0
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r1, r5
	ldr     r0, [pc, #0xac] @ 0x21d2408, (=0x1ec8)
	add     r1, #0xc
	str     r1, [r4, r0]
	mov     r1, r5
	add     r1, #0xd0
	ldr     r1, [r1, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_21d1c98
	mov     r0, r4
	bl      Function_21d2250
	mov     r0, r4
	add     r0, #0x8
	mov     r1, #0x6f
	bl      Function_21d4e3c
	mov     r0, #0x1
	lsl     r0, r0, #14
	str     r0, [sp, #0x0]
	mov     r0, #0x64
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x80] @ 0x21d240c, (=0x4001014)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	lsr     r0, r0, #14
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	mov     r0, r4
	ldr     r3, [pc, #0x70] @ 0x21d2410, (=0x2aa)
	add     r0, #0x8
	mov     r2, #0xbf
	bl      Function_21d4e70
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x68] @ 0x21d2414, (=0x4000050)
	mov     r1, #0x4
	mov     r2, #0x32
	mov     r3, #0x7
	blx     G2x_SetBlendAlpha_
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x5c] @ 0x21d2418, (=0x4001050)
	mov     r1, #0x3
	mov     r2, #0x12
	mov     r3, #0x7
	blx     G2x_SetBlendAlpha_
	ldr     r2, [pc, #0x54] @ 0x21d241c, (=0x4000060)
	ldr     r0, [pc, #0x54] @ 0x21d2420, (=0xffffcfff)
	ldrh    r1, [r2, #0x0]
	and     r1, r0
	mov     r0, #0x20
	orr     r0, r1
	strh    r0, [r2, #0x0]
	ldr     r0, [pc, #0x4c] @ 0x21d2424, (=0x21d5298)
	blx     SetEdgeTable
	ldr     r0, [pc, #0x2c] @ 0x21d2408, (=0x1ec8)
	ldr     r1, [r4, r0]
	ldr     r0, [r1, #0x18]
	add     r1, #0x44
	bl      Function_21d1c44
	ldr     r0, [pc, #0x20] @ 0x21d2408, (=0x1ec8)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	str     r1, [r0, #0x48]
	mov     r0, #0x1
	bl      Function_21d4dc8
	mov     r0, r5
	mov     r1, #0x10
	bl      Function_21d4dd8
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d2402


.align 2


.word 0x1ed0 @ 0x21d2404
.word 0x1ec8 @ 0x21d2408
.word 0x4001014 @ 0x21d240c
.word 0x2aa @ 0x21d2410
.word 0x4000050 @ 0x21d2414
.word 0x4001050 @ 0x21d2418
.word 0x4000060 @ 0x21d241c
.word 0xffffcfff @ 0x21d2420
.word 0x21d5298 @ 0x21d2424
.thumb
Function_21d2428: @ 21d2428 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x15
	bls     branch_21d2436
	b       branch_21d2ba4
@ 0x21d2436

.thumb
branch_21d2436: @ 21d2436 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d2442

Jumppoints_21d2442:
.hword branch_21d246e - Jumppoints_21d2442 - 2
.hword branch_21d24b2 - Jumppoints_21d2442 - 2
.hword branch_21d24c2 - Jumppoints_21d2442 - 2
.hword branch_21d2504 - Jumppoints_21d2442 - 2
.hword branch_21d252a - Jumppoints_21d2442 - 2
.hword branch_21d254c - Jumppoints_21d2442 - 2
.hword branch_21d2590 - Jumppoints_21d2442 - 2
.hword branch_21d25cc - Jumppoints_21d2442 - 2
.hword branch_21d2604 - Jumppoints_21d2442 - 2
.hword branch_21d26a8 - Jumppoints_21d2442 - 2
.hword branch_21d270e - Jumppoints_21d2442 - 2
.hword branch_21d272a - Jumppoints_21d2442 - 2
.hword branch_21d2750 - Jumppoints_21d2442 - 2
.hword branch_21d2826 - Jumppoints_21d2442 - 2
.hword branch_21d2846 - Jumppoints_21d2442 - 2
.hword branch_21d2892 - Jumppoints_21d2442 - 2
.hword branch_21d2948 - Jumppoints_21d2442 - 2
.hword branch_21d29ac - Jumppoints_21d2442 - 2
.hword branch_21d29fa - Jumppoints_21d2442 - 2
.hword branch_21d2a48 - Jumppoints_21d2442 - 2
.hword branch_21d2aea - Jumppoints_21d2442 - 2
.hword branch_21d2b06 - Jumppoints_21d2442 - 2
.thumb
branch_21d246e: @ 21d246e :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x6f
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x330] @ 0x21d27ac, (=0x7fff)
	mov     r0, #0x0
	mov     r2, r1
	bl      Function_200f174
	ldr     r2, [pc, #0x328] @ 0x21d27b0, (=0x1ec8)
	mov     r1, #0x0
	ldr     r0, [r4, r2]
	add     r0, #0x53
	strb    r1, [r0, #0x0]
	ldr     r3, [r4, r2]
	mov     r2, #0x53
	ldsb    r2, [r3, r2]
	ldr     r0, [pc, #0x31c] @ 0x21d27b4, (=0x4000050)
	mov     r1, #0x31
	blx     G2x_SetBlendBrightness_
	ldr     r2, [pc, #0x310] @ 0x21d27b0, (=0x1ec8)
	ldr     r0, [pc, #0x318] @ 0x21d27b8, (=0x4001050)
	ldr     r3, [r4, r2]
	mov     r2, #0x53
	ldsb    r2, [r3, r2]
	mov     r1, #0x33
	blx     G2x_SetBlendBrightness_
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_21d24b2: @ 21d24b2 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d2512
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2bb6
@ 0x21d24c2

.thumb
branch_21d24c2: @ 21d24c2 :thumb
	ldr     r1, [pc, #0x2ec] @ 0x21d27b0, (=0x1ec8)
	mov     r2, #0x14
	ldr     r0, [r4, r1]
	mov     r3, #0x3c
	str     r2, [r0, #0x64]
	ldr     r2, [r4, r1]
	mov     r0, #0x0
	str     r0, [r2, #0x68]
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x6c]
	ldr     r2, [r4, r1]
	str     r3, [r2, #0x60]
	ldr     r3, [r4, r1]
	ldr     r2, [r3, #0x18]
	str     r2, [r3, #0x58]
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x70]
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x74]
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x78]
	ldr     r2, [r4, r1]
	mov     r0, r2
	add     r0, #0x44
	str     r0, [r2, #0x5c]
	ldr     r0, [r4, r1]
	add     r0, #0x58
	bl      Function_21d4890
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2bb6
@ 0x21d2504

.thumb
branch_21d2504: @ 21d2504 :thumb
	ldr     r0, [pc, #0x2a8] @ 0x21d27b0, (=0x1ec8)
	ldr     r0, [r4, r0]
	add     r0, #0x58
	bl      Function_21d4920
	cmp     r0, #0x0
	bne     branch_21d2514
.thumb
branch_21d2512: @ 21d2512 :thumb
	b       branch_21d2bb6
@ 0x21d2514

.thumb
branch_21d2514: @ 21d2514 :thumb
	ldr     r1, [pc, #0x298] @ 0x21d27b0, (=0x1ec8)
	mov     r2, #0x14
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      Function_21d46c8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2bb6
@ 0x21d252a

.thumb
branch_21d252a: @ 21d252a :thumb
	ldr     r0, [pc, #0x284] @ 0x21d27b0, (=0x1ec8)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x40]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_21d2616
	ldr     r0, [pc, #0x270] @ 0x21d27b0, (=0x1ec8)
	ldr     r0, [r4, r0]
	bl      Function_21d4788
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2bb6
@ 0x21d254c

.thumb
branch_21d254c: @ 21d254c :thumb
	ldr     r1, [pc, #0x260] @ 0x21d27b0, (=0x1ec8)
	mov     r0, #0x0
	ldr     r2, [r4, r1]
	mov     r3, #0x3c
	str     r0, [r2, #0x64]
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x68]
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x6c]
	ldr     r2, [r4, r1]
	str     r3, [r2, #0x60]
	ldr     r3, [r4, r1]
	ldr     r2, [r3, #0x18]
	str     r2, [r3, #0x58]
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x70]
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x74]
	mov     r2, #0x46
	ldr     r0, [r4, r1]
	lsl     r2, r2, #12
	str     r2, [r0, #0x78]
	ldr     r2, [r4, r1]
	mov     r0, r2
	add     r0, #0x44
	str     r0, [r2, #0x5c]
	ldr     r0, [r4, r1]
	add     r0, #0x58
	bl      Function_21d4890
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2bb6
@ 0x21d2590

.thumb
branch_21d2590: @ 21d2590 :thumb
	ldr     r0, [pc, #0x21c] @ 0x21d27b0, (=0x1ec8)
	ldr     r0, [r4, r0]
	add     r0, #0x58
	bl      Function_21d4920
	cmp     r0, #0x0
	beq     branch_21d2616
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0xa
	blt     branch_21d2616
	ldr     r1, [pc, #0x204] @ 0x21d27b0, (=0x1ec8)
	mov     r2, #0x15
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      Function_21d46c8
	ldr     r0, [pc, #0x204] @ 0x21d27bc, (=0x1720)
	ldr     r1, [pc, #0x204] @ 0x21d27c0, (=0x21d54d0)
	add     r0, r4, r0
	bl      Function_21d44c0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	b       branch_21d2bb6
@ 0x21d25cc

.thumb
branch_21d25cc: @ 21d25cc :thumb
	ldr     r0, [pc, #0x1e0] @ 0x21d27b0, (=0x1ec8)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x40]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_21d2616
	ldr     r0, [pc, #0x1d0] @ 0x21d27b0, (=0x1ec8)
	ldr     r0, [r4, r0]
	bl      Function_21d4788
	ldr     r1, [pc, #0x1c8] @ 0x21d27b0, (=0x1ec8)
	mov     r2, #0x16
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      Function_21d46c8
	mov     r0, #0x0
	mov     r1, #0xa
	bl      Function_200564c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2bb6
@ 0x21d2604

.thumb
branch_21d2604: @ 21d2604 :thumb
	ldr     r0, [pc, #0x1a8] @ 0x21d27b0, (=0x1ec8)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x40]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_21d2618
.thumb
branch_21d2616: @ 21d2616 :thumb
	b       branch_21d2bb6
@ 0x21d2618

.thumb
branch_21d2618: @ 21d2618 :thumb
	ldr     r0, [pc, #0x194] @ 0x21d27b0, (=0x1ec8)
	ldr     r0, [r4, r0]
	bl      Function_21d4788
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0xf
	bne     branch_21d2648
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, #0x1f
.thumb
branch_21d2630: @ 21d2630 :thumb
	ldr     r3, [r1, #0x20]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r5, r3, #31
	lsl     r3, r3, #31
	sub     r3, r3, r5
	ror     r3, r2
	add     r3, r5, r3
	.hword  0x1c9b @ add r3, r3, #0x2
	str     r3, [r1, #0x20]
	add     r1, #0x44
	cmp     r0, #0x3
	blt     branch_21d2630
.thumb
branch_21d2648: @ 21d2648 :thumb
	ldr     r6, [r4, #0x4]
	cmp     r6, #0x1e
	blt     branch_21d271c
	ldr     r2, [pc, #0x160] @ 0x21d27b0, (=0x1ec8)
	mov     r3, #0x53
	ldr     r0, [r4, r2]
	ldsb    r1, [r0, r3]
	sub     r3, #0x59
	cmp     r1, r3
	ble     branch_21d2692
	lsr     r5, r6, #31
	lsl     r3, r6, #31
	sub     r3, r3, r5
	mov     r2, #0x1f
	ror     r3, r2
	add     r2, r5, r3
	beq     branch_21d2670
	.hword  0x1e49 @ sub r1, r1, #0x1
	add     r0, #0x53
	strb    r1, [r0, #0x0]
.thumb
branch_21d2670: @ 21d2670 :thumb
	ldr     r2, [pc, #0x13c] @ 0x21d27b0, (=0x1ec8)
	ldr     r0, [pc, #0x140] @ 0x21d27b4, (=0x4000050)
	ldr     r3, [r4, r2]
	mov     r2, #0x53
	ldsb    r2, [r3, r2]
	mov     r1, #0x31
	blx     G2x_SetBlendBrightness_
	ldr     r2, [pc, #0x12c] @ 0x21d27b0, (=0x1ec8)
	ldr     r0, [pc, #0x134] @ 0x21d27b8, (=0x4001050)
	ldr     r3, [r4, r2]
	mov     r2, #0x53
	ldsb    r2, [r3, r2]
	mov     r1, #0x33
	blx     G2x_SetBlendBrightness_
	b       branch_21d2bb6
@ 0x21d2692

.thumb
branch_21d2692: @ 21d2692 :thumb
	add     r1, r2, #0x4
	ldr     r1, [r4, r1]
	mov     r2, #0x17
	bl      Function_21d46c8
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2bb6
@ 0x21d26a8

.thumb
branch_21d26a8: @ 21d26a8 :thumb
	ldr     r0, [pc, #0x104] @ 0x21d27b0, (=0x1ec8)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x40]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_21d271c
	ldr     r0, [pc, #0xf4] @ 0x21d27b0, (=0x1ec8)
	ldr     r0, [r4, r0]
	bl      Function_21d4788
	ldr     r0, [pc, #0xf8] @ 0x21d27bc, (=0x1720)
	ldr     r1, [pc, #0xfc] @ 0x21d27c4, (=0x21d54e8)
	add     r0, r4, r0
	bl      Function_21d44c0
	ldr     r1, [pc, #0xe0] @ 0x21d27b0, (=0x1ec8)
	mov     r0, #0x0
	ldr     r2, [r4, r1]
	mov     r3, #0x5a
	str     r0, [r2, #0x64]
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x68]
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x6c]
	ldr     r2, [r4, r1]
	str     r3, [r2, #0x60]
	ldr     r3, [r4, r1]
	ldr     r2, [r3, #0x18]
	str     r2, [r3, #0x58]
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x70]
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x74]
	ldr     r2, [pc, #0xd4] @ 0x21d27c8, (=0xfffb0000)
	ldr     r0, [r4, r1]
	str     r2, [r0, #0x78]
	ldr     r2, [r4, r1]
	mov     r0, r2
	add     r0, #0x44
	str     r0, [r2, #0x5c]
	ldr     r0, [r4, r1]
	add     r0, #0x58
	bl      Function_21d4890
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2bb6
@ 0x21d270e

.thumb
branch_21d270e: @ 21d270e :thumb
	ldr     r0, [pc, #0xa0] @ 0x21d27b0, (=0x1ec8)
	ldr     r0, [r4, r0]
	add     r0, #0x58
	bl      Function_21d4920
	cmp     r0, #0x0
	bne     branch_21d271e
.thumb
branch_21d271c: @ 21d271c :thumb
	b       branch_21d2bb6
@ 0x21d271e

.thumb
branch_21d271e: @ 21d271e :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	b       branch_21d2bb6
@ 0x21d272a

.thumb
branch_21d272a: @ 21d272a :thumb
	ldr     r0, [pc, #0xa0] @ 0x21d27cc, (=0x13e8)
	mov     r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x9c] @ 0x21d27d0, (=0x1288)
	add     r0, r4, r0
	bl      Function_2017348
	ldr     r0, [pc, #0x98] @ 0x21d27d4, (=0x4be)
	bl      Function_200549c
	mov     r1, #0x0
	mov     r0, #0x3f
	mov     r2, r1
	bl      Function_2004550
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2bb6
@ 0x21d2750

.thumb
branch_21d2750: @ 21d2750 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x3c
	bne     branch_21d2764
	ldr     r0, [pc, #0x60] @ 0x21d27bc, (=0x1720)
	ldr     r1, [pc, #0x78] @ 0x21d27d8, (=0x21d54b8)
	add     r0, r4, r0
	bl      Function_21d44c0
.thumb
branch_21d2764: @ 21d2764 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0xf
	beq     branch_21d2782
	cmp     r0, #0x2d
	beq     branch_21d2782
	cmp     r0, #0x4b
	beq     branch_21d2782
	cmp     r0, #0x5f
	beq     branch_21d2782
	cmp     r0, #0x73
	beq     branch_21d2782
	cmp     r0, #0x82
	beq     branch_21d2782
	cmp     r0, #0x91
	bne     branch_21d27ea
.thumb
branch_21d2782: @ 21d2782 :thumb
	ldr     r0, [pc, #0x58] @ 0x21d27dc, (=0x5c5)
	bl      Function_2005748
	ldr     r5, [r4, #0x4]
	mov     r1, #0x1e
	mov     r0, r5
	blx     _s32_div_f
	mov     r2, r0
	lsl     r3, r2, #5
	lsr     r2, r5, #31
	lsl     r6, r5, #27
	sub     r6, r6, r2
	mov     r5, #0x1b
	ror     r6, r5
	add     r5, r2, r6
	mov     r2, #0xa
	mul     r2, r5
	ldr     r0, [pc, #0x34] @ 0x21d27dc, (=0x5c5)
	ldr     r1, [pc, #0x34] @ 0x21d27e0, (=0xffff)
	b       branch_21d27e4
@ 0x21d27ac

.word 0x7fff @ 0x21d27ac
.word 0x1ec8 @ 0x21d27b0
.word 0x4000050 @ 0x21d27b4
.word 0x4001050 @ 0x21d27b8
.word 0x1720 @ 0x21d27bc
.word 0x21d54d0 @ 0x21d27c0
.word 0x21d54e8 @ 0x21d27c4
.word 0xfffb0000 @ 0x21d27c8
.word 0x13e8 @ 0x21d27cc
.word 0x1288 @ 0x21d27d0
.word 0x4be @ 0x21d27d4
.word 0x21d54b8 @ 0x21d27d8
.word 0x5c5 @ 0x21d27dc
.word 0xffff @ 0x21d27e0

.thumb
branch_21d27e4: @ 21d27e4 :thumb
	add     r2, r3, r2
	bl      Function_2004f7c
branch_21d27ea: @ 21d27ea :thumb
	ldr     r0, [pc, #0x340] @ 0x21d2b2c, (=0x13e8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d2850
	ldr     r0, [pc, #0x33c] @ 0x21d2b30, (=0x1288)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_2017348
	ldr     r0, [pc, #0x334] @ 0x21d2b34, (=0x1410)
	mov     r1, #0x1
	add     r0, r4, r0
	bl      Function_2017348
	mov     r0, #0xae
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_2017348
	mov     r0, #0x31
	mov     r1, #0x1
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2bb6
@ 0x21d2826

.thumb
branch_21d2826: @ 21d2826 :thumb
	ldr     r1, [pc, #0x310] @ 0x21d2b38, (=0xb38)
	ldr     r0, [pc, #0x310] @ 0x21d2b3c, (=0xfffce000)
	ldr     r2, [r4, r1]
	cmp     r2, r0
	bge     branch_21d283a
	mov     r0, #0x2
	lsl     r0, r0, #10
	add     r0, r2, r0
	str     r0, [r4, r1]
	b       branch_21d2bb6
@ 0x21d283a

.thumb
branch_21d283a: @ 21d283a :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2bb6
@ 0x21d2846

.thumb
branch_21d2846: @ 21d2846 :thumb
	mov     r3, #0x31
	lsl     r3, r3, #6
	ldr     r0, [r4, r3]
	cmp     r0, #0x0
	beq     branch_21d2852
.thumb
branch_21d2850: @ 21d2850 :thumb
	b       branch_21d2bb6
@ 0x21d2852

.thumb
branch_21d2852: @ 21d2852 :thumb
	ldr     r0, [pc, #0x2e4] @ 0x21d2b38, (=0xb38)
	mov     r1, r3
	ldr     r2, [r4, r0]
	add     r1, #0x80
	str     r2, [r4, r1]
	ldr     r2, [pc, #0x2e0] @ 0x21d2b40, (=0xdc8)
	mov     r1, #0x1
	str     r1, [r4, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r1, [r4, r2]
	lsr     r2, r3, #1
	str     r1, [r4, r2]
	ldr     r2, [pc, #0x2d8] @ 0x21d2b44, (=0x62c)
	sub     r0, #0x58
	str     r1, [r4, r2]
	ldr     r2, [pc, #0x2d4] @ 0x21d2b48, (=0x498)
	add     r0, r4, r0
	str     r1, [r4, r2]
	add     r2, #0x8
	str     r1, [r4, r2]
	mov     r1, #0x0
	bl      Function_2017348
	ldr     r0, [pc, #0x2c8] @ 0x21d2b4c, (=0xc68)
	mov     r1, #0x1
	add     r0, r4, r0
	bl      Function_2017348
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2bb6
@ 0x21d2892

.thumb
branch_21d2892: @ 21d2892 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x1
	bne     branch_21d28a2
	ldr     r0, [pc, #0x2b0] @ 0x21d2b50, (=0x5c6)
	bl      Function_2005748
.thumb
branch_21d28a2: @ 21d28a2 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x14
	bne     branch_21d28b2
	ldr     r0, [pc, #0x2a8] @ 0x21d2b54, (=0x1720)
	ldr     r1, [pc, #0x2ac] @ 0x21d2b58, (=0x21d54a0)
	add     r0, r4, r0
	bl      Function_21d44c0
.thumb
branch_21d28b2: @ 21d28b2 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x28
	bne     branch_21d28cc
	mov     r0, #0x6f
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r2, r0
	ldr     r1, [pc, #0x298] @ 0x21d2b5c, (=0x1e3)
	sub     r2, #0x50
	mov     r3, #0x28
	str     r0, [sp, #0x4]
	bl      Function_20059d0
.thumb
branch_21d28cc: @ 21d28cc :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x41
	bne     branch_21d28e6
	mov     r0, #0x6f
	mov     r1, #0x79
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	lsl     r1, r1, #2
	mov     r2, #0x50
	mov     r3, #0x28
	str     r0, [sp, #0x4]
	bl      Function_20059d0
.thumb
branch_21d28e6: @ 21d28e6 :thumb
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x274] @ 0x21d2b60, (=0x82c)
	cmp     r0, #0x28
	bge     branch_21d28f6
	mov     r0, #0x1
	ldr     r2, [r4, r1]
	lsl     r0, r0, #10
	b       branch_21d28fc
@ 0x21d28f6

.thumb
branch_21d28f6: @ 21d28f6 :thumb
	mov     r0, r1
	ldr     r2, [r4, r1]
	sub     r0, #0x2c
.thumb
branch_21d28fc: @ 21d28fc :thumb
	sub     r0, r2, r0
	str     r0, [r4, r1]
	ldr     r0, [r4, #0x4]
	ldr     r1, [pc, #0x260] @ 0x21d2b64, (=0x9b4)
	cmp     r0, #0x41
	bge     branch_21d290e
	ldr     r2, [r4, r1]
	mov     r0, #0x1
	b       branch_21d2912
@ 0x21d290e

.thumb
branch_21d290e: @ 21d290e :thumb
	ldr     r2, [r4, r1]
	mov     r0, #0x2
.thumb
branch_21d2912: @ 21d2912 :thumb
	lsl     r0, r0, #10
	sub     r0, r2, r0
	str     r0, [r4, r1]
	mov     r1, #0x33
	lsl     r1, r1, #6
	ldr     r2, [r4, r1]
	cmp     r2, #0x0
	bge     branch_21d292c
	mov     r0, #0x2
	lsl     r0, r0, #10
	add     r0, r2, r0
	str     r0, [r4, r1]
	b       branch_21d2bb6
@ 0x21d292c

.thumb
branch_21d292c: @ 21d292c :thumb
	mov     r0, #0x0
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x234] @ 0x21d2b68, (=0x1ec8)
	str     r0, [r4, #0x4]
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	mov     r2, #0x18
	bl      Function_21d46c8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2bb6
@ 0x21d2948

.thumb
branch_21d2948: @ 21d2948 :thumb
	ldr     r0, [pc, #0x21c] @ 0x21d2b68, (=0x1ec8)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x40]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_21d295c
	b       branch_21d2bb6
@ 0x21d295c

.thumb
branch_21d295c: @ 21d295c :thumb
	ldr     r0, [pc, #0x208] @ 0x21d2b68, (=0x1ec8)
	ldr     r0, [r4, r0]
	bl      Function_21d4788
	ldr     r0, [pc, #0x204] @ 0x21d2b6c, (=0x7a8)
	mov     r3, #0x1
	str     r3, [r4, r0]
	mov     r1, #0x0
	add     r2, r0, #0x4
	str     r1, [r4, r2]
	mov     r2, r0
	add     r2, #0xc
	str     r3, [r4, r2]
	lsl     r0, r0, #1
	str     r3, [r4, r0]
	ldr     r0, [pc, #0x1d0] @ 0x21d2b4c, (=0xc68)
	add     r0, r4, r0
	bl      Function_2017348
	mov     r0, #0xdf
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_2017348
	mov     r0, #0x6f
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	ldr     r1, [pc, #0x1d8] @ 0x21d2b70, (=0x1e7)
	mov     r0, #0x2
	mov     r3, #0x7f
	str     r2, [sp, #0x4]
	bl      Function_20059d0
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2bb6
@ 0x21d29ac

.thumb
branch_21d29ac: @ 21d29ac :thumb
	mov     r0, #0xf5
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d2a80
	ldr     r1, [pc, #0x1b0] @ 0x21d2b68, (=0x1ec8)
	mov     r2, #0x19
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      Function_21d46c8
	ldr     r0, [pc, #0x1ac] @ 0x21d2b74, (=0x10d8)
	mov     r1, #0x1
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x19c] @ 0x21d2b6c, (=0x7a8)
	mov     r1, #0x0
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x1a0] @ 0x21d2b78, (=0x648)
	add     r0, r4, r0
	bl      Function_2017348
	mov     r0, #0xdf
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_2017348
	ldr     r0, [pc, #0x190] @ 0x21d2b7c, (=0xf78)
	mov     r1, #0x1
	add     r0, r4, r0
	bl      Function_2017348
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2bb6
@ 0x21d29fa

.thumb
branch_21d29fa: @ 21d29fa :thumb
	ldr     r0, [pc, #0x16c] @ 0x21d2b68, (=0x1ec8)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x40]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_21d2a80
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_21d2a1a
	ldr     r0, [pc, #0x154] @ 0x21d2b68, (=0x1ec8)
	ldr     r0, [r4, r0]
	bl      Function_21d4788
.thumb
branch_21d2a1a: @ 21d2a1a :thumb
	ldr     r0, [pc, #0x164] @ 0x21d2b80, (=0x4bf)
	bl      Function_200549c
	ldr     r0, [pc, #0x160] @ 0x21d2b84, (=0x1260)
	mov     r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x154] @ 0x21d2b7c, (=0xf78)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_2017348
	mov     r0, #0x11
	lsl     r0, r0, #8
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_2017348
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2bb6
@ 0x21d2a48

.thumb
branch_21d2a48: @ 21d2a48 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0xee
	bne     branch_21d2a64
	mov     r0, #0x6f
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	ldr     r1, [pc, #0x114] @ 0x21d2b70, (=0x1e7)
	mov     r0, #0x2
	mov     r3, #0x7f
	str     r2, [sp, #0x4]
	bl      Function_20059d0
.thumb
branch_21d2a64: @ 21d2a64 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0xaa
	bne     branch_21d2a78
	ldr     r1, [pc, #0xfc] @ 0x21d2b68, (=0x1ec8)
	mov     r2, #0x1a
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      Function_21d46c8
.thumb
branch_21d2a78: @ 21d2a78 :thumb
	ldr     r0, [pc, #0x108] @ 0x21d2b84, (=0x1260)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d2a82
.thumb
branch_21d2a80: @ 21d2a80 :thumb
	b       branch_21d2bb6
@ 0x21d2a82

.thumb
branch_21d2a82: @ 21d2a82 :thumb
	ldr     r0, [pc, #0xe4] @ 0x21d2b68, (=0x1ec8)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x40]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	beq     branch_21d2aa2
	ldr     r0, [pc, #0xd0] @ 0x21d2b68, (=0x1ec8)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x40]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d730
.thumb
branch_21d2aa2: @ 21d2aa2 :thumb
	ldr     r2, [pc, #0xc4] @ 0x21d2b68, (=0x1ec8)
	mov     r1, #0xf
	ldr     r0, [r4, r2]
	mvn     r1, r1
	add     r0, #0x53
	strb    r1, [r0, #0x0]
	ldr     r3, [r4, r2]
	mov     r2, #0x53
	ldsb    r2, [r3, r2]
	ldr     r0, [pc, #0xd0] @ 0x21d2b88, (=0x4000050)
	mov     r1, #0x31
	blx     G2x_SetBlendBrightness_
	ldr     r2, [pc, #0xa8] @ 0x21d2b68, (=0x1ec8)
	ldr     r0, [pc, #0xcc] @ 0x21d2b8c, (=0x4001050)
	ldr     r3, [r4, r2]
	mov     r2, #0x53
	ldsb    r2, [r3, r2]
	mov     r1, #0x33
	blx     G2x_SetBlendBrightness_
	bl      Function_20041fc
	mov     r1, #0x0
	bl      Function_20055d0
	ldr     r0, [pc, #0x90] @ 0x21d2b68, (=0x1ec8)
	ldr     r0, [r4, r0]
	bl      Function_21d4788
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	b       branch_21d2bb6
@ 0x21d2aea

.thumb
branch_21d2aea: @ 21d2aea :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x6f
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_21d2b06: @ 21d2b06 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d2bb6
	ldr     r2, [pc, #0x58] @ 0x21d2b68, (=0x1ec8)
	mov     r1, #0x0
	ldr     r0, [r4, r2]
	add     r0, #0x53
	strb    r1, [r0, #0x0]
	ldr     r3, [r4, r2]
	mov     r2, #0x53
	ldsb    r2, [r3, r2]
	ldr     r0, [pc, #0x68] @ 0x21d2b88, (=0x4000050)
	mov     r1, #0x31
	blx     G2x_SetBlendBrightness_
	ldr     r2, [pc, #0x40] @ 0x21d2b68, (=0x1ec8)
	ldr     r0, [pc, #0x60] @ 0x21d2b8c, (=0x4001050)
	b       branch_21d2b90
@ 0x21d2b2c

.word 0x13e8 @ 0x21d2b2c
.word 0x1288 @ 0x21d2b30
.word 0x1410 @ 0x21d2b34
.word 0xb38 @ 0x21d2b38
.word 0xfffce000 @ 0x21d2b3c
.word 0xdc8 @ 0x21d2b40
.word 0x62c @ 0x21d2b44
.word 0x498 @ 0x21d2b48
.word 0xc68 @ 0x21d2b4c
.word 0x5c6 @ 0x21d2b50
.word 0x1720 @ 0x21d2b54
.word 0x21d54a0 @ 0x21d2b58
.word 0x1e3 @ 0x21d2b5c
.word 0x82c @ 0x21d2b60
.word 0x9b4 @ 0x21d2b64
.word 0x1ec8 @ 0x21d2b68
.word 0x7a8 @ 0x21d2b6c
.word 0x1e7 @ 0x21d2b70
.word 0x10d8 @ 0x21d2b74
.word 0x648 @ 0x21d2b78
.word 0xf78 @ 0x21d2b7c
.word 0x4bf @ 0x21d2b80
.word 0x1260 @ 0x21d2b84
.word 0x4000050 @ 0x21d2b88
.word 0x4001050 @ 0x21d2b8c
.thumb
branch_21d2b90: @ 21d2b90 :thumb
	ldr     r3, [r4, r2]
	mov     r2, #0x53
	ldsb    r2, [r3, r2]
	mov     r1, #0x33
	blx     G2x_SetBlendBrightness_
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d2bb6
@ 0x21d2ba4

.thumb
branch_21d2ba4: @ 21d2ba4 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x3c
	blt     branch_21d2bb6
	mov     r0, #0x0
	add     sp, #0x18
	str     r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x21d2bb6

.thumb
branch_21d2bb6: @ 21d2bb6 :thumb
	ldr     r0, [pc, #0xb0] @ 0x21d2c68, (=0x824)
	ldr     r7, [pc, #0xb0] @ 0x21d2c6c, (=0x1a84)
	add     r3, r4, r0
	ldr     r0, [pc, #0xb0] @ 0x21d2c70, (=0x18fc)
	ldr     r6, [pc, #0xb4] @ 0x21d2c74, (=0x1c0c)
	str     r0, [sp, #0x14]
	add     r2, r4, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [pc, #0xa8] @ 0x21d2c78, (=0x9ac)
	add     r2, r4, r7
	add     r3, r4, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [pc, #0xa0] @ 0x21d2c7c, (=0x15ec)
	add     r2, r4, r6
	add     r3, r4, r0
	ldmia   r3!, {r0,r1}
	str     r2, [sp, #0xc]
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r3, [pc, #0x94] @ 0x21d2c80, (=0x1d94)
	str     r0, [r2, #0x0]
	ldr     r0, [pc, #0x94] @ 0x21d2c84, (=0x1774)
	add     r5, r4, r0
	add     r0, r4, r3
	str     r0, [sp, #0x10]
	mov     r12, r0
	ldr     r2, [sp, #0x10]
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r1, [r5, #0x0]
	mov     r0, r2
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x14]
	mov     r1, #0x2
	add     r0, #0x8
	ldr     r0, [r4, r0]
	lsl     r1, r1, #12
	str     r2, [sp, #0x10]
	sub     r2, r0, r1
	ldr     r0, [sp, #0x14]
	add     r0, #0x8
	str     r0, [sp, #0x14]
	str     r2, [r4, r0]
	mov     r0, r7
	add     r0, #0x8
	ldr     r0, [r4, r0]
	add     r7, #0x8
	sub     r0, r0, r1
	str     r0, [r4, r7]
	mov     r0, r6
	add     r0, #0x8
	ldr     r0, [r4, r0]
	add     r6, #0x8
	sub     r0, r0, r1
	str     r0, [r4, r6]
	mov     r0, r3
	add     r0, #0x8
	ldr     r0, [r4, r0]
	add     r3, #0x8
	sub     r0, r0, r1
	str     r0, [r4, r3]
	ldr     r0, [sp, #0xc]
	ldr     r2, [r0, #0x0]
	lsr     r0, r1, #1
	sub     r2, r2, r0
	ldr     r0, [sp, #0xc]
	str     r2, [r0, #0x0]
	mov     r0, r12
	ldr     r2, [r0, #0x0]
	lsr     r0, r1, #1
	sub     r1, r2, r0
	mov     r0, r12
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d2e0c
	ldr     r0, [pc, #0x2c] @ 0x21d2c88, (=0x1ec8)
	ldr     r0, [r4, r0]
	bl      Function_21d4bf0
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d2c68

.word 0x824 @ 0x21d2c68
.word 0x1a84 @ 0x21d2c6c
.word 0x18fc @ 0x21d2c70
.word 0x1c0c @ 0x21d2c74
.word 0x9ac @ 0x21d2c78
.word 0x15ec @ 0x21d2c7c
.word 0x1d94 @ 0x21d2c80
.word 0x1774 @ 0x21d2c84
.word 0x1ec8 @ 0x21d2c88
.thumb
Function_21d2c8c: @ 21d2c8c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x0
	beq     branch_21d2c9c
	cmp     r1, #0x1
	beq     branch_21d2cb0
	b       branch_21d2dd6
@ 0x21d2c9c

.thumb
branch_21d2c9c: @ 21d2c9c :thumb
	bl      Function_21d2324
	mov     r0, r5
	add     r0, #0x8
	bl      Function_21d4e58
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d2dde
@ 0x21d2cb0

.thumb
branch_21d2cb0: @ 21d2cb0 :thumb
	ldr     r1, [pc, #0x130] @ 0x21d2de4, (=0x1ec8)
	mov     r0, #0x1b
	ldr     r1, [r5, r1]
	lsl     r0, r0, #4
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x0
	bl      Function_21d4aa4
	ldr     r0, [pc, #0x124] @ 0x21d2de8, (=0x18a8)
	mov     r7, #0x62
	mov     r6, #0x0
	add     r4, r5, r0
	lsl     r7, r7, #2
.thumb
branch_21d2ccc: @ 21d2ccc :thumb
	ldr     r1, [pc, #0x114] @ 0x21d2de4, (=0x1ec8)
	mov     r0, r4
	ldr     r1, [r5, r1]
	mov     r2, #0x0
	add     r1, #0x1c
	bl      Function_21d4aa4
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, r4, r7
	cmp     r6, #0x4
	blt     branch_21d2ccc
	ldr     r1, [pc, #0x100] @ 0x21d2de4, (=0x1ec8)
	mov     r0, #0x13
	ldr     r1, [r5, r1]
	lsl     r0, r0, #6
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x2
	bl      Function_21d4aa4
	ldr     r1, [pc, #0xec] @ 0x21d2de4, (=0x1ec8)
	ldr     r0, [pc, #0xf4] @ 0x21d2dec, (=0x648)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x2
	bl      Function_21d4aa4
	ldr     r1, [pc, #0xdc] @ 0x21d2de4, (=0x1ec8)
	mov     r0, #0xce
	ldr     r1, [r5, r1]
	lsl     r0, r0, #2
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x2
	bl      Function_21d4aa4
	ldr     r1, [pc, #0xcc] @ 0x21d2de4, (=0x1ec8)
	mov     r0, #0x7d
	ldr     r1, [r5, r1]
	lsl     r0, r0, #4
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x1
	bl      Function_21d4aa4
	ldr     r1, [pc, #0xb8] @ 0x21d2de4, (=0x1ec8)
	ldr     r0, [pc, #0xc4] @ 0x21d2df0, (=0x958)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x1
	bl      Function_21d4aa4
	ldr     r1, [pc, #0xa8] @ 0x21d2de4, (=0x1ec8)
	mov     r0, #0xae
	ldr     r1, [r5, r1]
	lsl     r0, r0, #4
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x2
	bl      Function_21d4aa4
	ldr     r1, [pc, #0x98] @ 0x21d2de4, (=0x1ec8)
	ldr     r0, [pc, #0xa4] @ 0x21d2df4, (=0xc68)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x2
	bl      Function_21d4aa4
	ldr     r1, [pc, #0x88] @ 0x21d2de4, (=0x1ec8)
	mov     r0, #0xdf
	ldr     r1, [r5, r1]
	lsl     r0, r0, #4
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x2
	bl      Function_21d4aa4
	ldr     r1, [pc, #0x74] @ 0x21d2de4, (=0x1ec8)
	ldr     r0, [pc, #0x88] @ 0x21d2df8, (=0xf78)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x2
	bl      Function_21d4aa4
	ldr     r1, [pc, #0x64] @ 0x21d2de4, (=0x1ec8)
	mov     r0, #0x11
	ldr     r1, [r5, r1]
	lsl     r0, r0, #8
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x2
	bl      Function_21d4aa4
	ldr     r1, [pc, #0x54] @ 0x21d2de4, (=0x1ec8)
	ldr     r0, [pc, #0x68] @ 0x21d2dfc, (=0x1288)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x1
	bl      Function_21d4aa4
	ldr     r1, [pc, #0x44] @ 0x21d2de4, (=0x1ec8)
	ldr     r0, [pc, #0x5c] @ 0x21d2e00, (=0x1410)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x0
	bl      Function_21d4aa4
	ldr     r1, [pc, #0x34] @ 0x21d2de4, (=0x1ec8)
	ldr     r0, [pc, #0x50] @ 0x21d2e04, (=0x1598)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x1
	bl      Function_21d4aa4
	ldr     r1, [pc, #0x24] @ 0x21d2de4, (=0x1ec8)
	ldr     r0, [pc, #0x44] @ 0x21d2e08, (=0x1720)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x1
	bl      Function_21d4aa4
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d2dde
@ 0x21d2dd6

.thumb
branch_21d2dd6: @ 21d2dd6 :thumb
	bl      free
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d2dde

.thumb
branch_21d2dde: @ 21d2dde :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d2de2


.align 2


.word 0x1ec8 @ 0x21d2de4
.word 0x18a8 @ 0x21d2de8
.word 0x648 @ 0x21d2dec
.word 0x958 @ 0x21d2df0
.word 0xc68 @ 0x21d2df4
.word 0xf78 @ 0x21d2df8
.word 0x1288 @ 0x21d2dfc
.word 0x1410 @ 0x21d2e00
.word 0x1598 @ 0x21d2e04
.word 0x1720 @ 0x21d2e08
.thumb
Function_21d2e0c: @ 21d2e0c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Call_G3X_Reset
	bl      Function_20203ec
	ldr     r0, [pc, #0xc0] @ 0x21d2edc, (=0x1ec8)
	ldr     r0, [r4, r0]
	bl      Function_21d47a0
	ldr     r0, [pc, #0xb8] @ 0x21d2edc, (=0x1ec8)
	ldr     r0, [r4, r0]
	bl      Function_21d4844
	mov     r0, #0x1b
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_21d49b4
	mov     r0, #0x13
	lsl     r0, r0, #6
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0xa0] @ 0x21d2ee0, (=0x648)
	add     r0, r4, r0
	bl      Function_21d49b4
	mov     r0, #0xce
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x94] @ 0x21d2ee4, (=0x1288)
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x90] @ 0x21d2ee8, (=0x1410)
	add     r0, r4, r0
	bl      Function_21d49b4
	mov     r0, #0xae
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x80] @ 0x21d2eec, (=0xc68)
	add     r0, r4, r0
	bl      Function_21d49b4
	mov     r0, #0xdf
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x74] @ 0x21d2ef0, (=0xf78)
	add     r0, r4, r0
	bl      Function_21d49b4
	mov     r0, #0x11
	lsl     r0, r0, #8
	add     r0, r4, r0
	bl      Function_21d49b4
	mov     r0, #0x7d
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x5c] @ 0x21d2ef4, (=0x958)
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x58] @ 0x21d2ef8, (=0x1598)
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x54] @ 0x21d2efc, (=0x1720)
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x50] @ 0x21d2f00, (=0x18a8)
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x4c] @ 0x21d2f04, (=0x1a30)
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x48] @ 0x21d2f08, (=0x1bb8)
	add     r0, r4, r0
	bl      Function_21d49b4
	mov     r0, #0x75
	lsl     r0, r0, #6
	add     r0, r4, r0
	bl      Function_21d49b4
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_20241bc
	pop     {r4,pc}
@ 0x21d2eda


.align 2


.word 0x1ec8 @ 0x21d2edc
.word 0x648 @ 0x21d2ee0
.word 0x1288 @ 0x21d2ee4
.word 0x1410 @ 0x21d2ee8
.word 0xc68 @ 0x21d2eec
.word 0xf78 @ 0x21d2ef0
.word 0x958 @ 0x21d2ef4
.word 0x1598 @ 0x21d2ef8
.word 0x1720 @ 0x21d2efc
.word 0x18a8 @ 0x21d2f00
.word 0x1a30 @ 0x21d2f04
.word 0x1bb8 @ 0x21d2f08
.thumb
Function_21d2f0c: @ 21d2f0c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x6f
	mov     r4, r1
	str     r0, [sp, #0xc]
	mov     r0, #0xc
	mov     r1, #0xa
	mov     r2, r5
	mov     r3, #0x4
	bl      Function_2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x6f
	str     r0, [sp, #0xc]
	mov     r0, #0xc
	mov     r1, #0xb
	mov     r2, r5
	mov     r3, #0x4
	bl      Function_2006e60
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	mov     r1, #0xc
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x6f
	bl      Function_2003050
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d2f64

.thumb
Function_21d2f64: @ 21d2f64 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r2, [pc, #0xf8] @ 0x21d3064, (=0x1d28)
	mov     r4, r0
	ldr     r2, [r4, r2]
	mov     r0, #0x25
	lsl     r0, r0, #6
	ldr     r2, [r2, #0x0]
	add     r0, r4, r0
	mov     r1, #0x54
	bl      Function_21d4ac8
	ldr     r0, [pc, #0xe4] @ 0x21d3064, (=0x1d28)
	mov     r1, #0x25
	ldr     r3, [r4, r0]
	lsl     r1, r1, #6
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	add     r1, r4, r1
	mov     r2, #0x52
	bl      Function_21d4b4c
	ldr     r0, [pc, #0xcc] @ 0x21d3064, (=0x1d28)
	mov     r1, #0x25
	ldr     r3, [r4, r0]
	lsl     r1, r1, #6
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x1
	add     r1, r4, r1
	mov     r2, #0x53
	bl      Function_21d4b4c
	mov     r0, #0x25
	lsl     r0, r0, #6
	ldr     r1, [pc, #0xb0] @ 0x21d3068, (=0xfffd0000)
	ldr     r2, [pc, #0xb4] @ 0x21d306c, (=0xffffb000)
	ldr     r3, [pc, #0xb4] @ 0x21d3070, (=0xfffba000)
	add     r0, r4, r0
	bl      Function_2017350
	mov     r1, #0xaa
	mov     r0, #0x0
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r3, [pc, #0x98] @ 0x21d3064, (=0x1d28)
	mov     r0, #0x25
	ldr     r3, [r4, r3]
	lsl     r0, r0, #6
	add     r1, #0x28
	ldr     r3, [r3, #0x0]
	add     r0, r4, r0
	add     r1, r4, r1
	mov     r2, #0x54
	bl      Function_21d4b10
	ldr     r0, [pc, #0x84] @ 0x21d3064, (=0x1d28)
	ldr     r2, [pc, #0x90] @ 0x21d3074, (=0xac8)
	ldr     r1, [r4, r0]
	add     r2, r4, r2
	ldr     r0, [r1, #0x0]
	add     r1, #0x1c
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x25
	lsl     r1, r1, #6
	mov     r0, #0x0
	add     r1, r4, r1
	mov     r3, #0x52
	bl      Function_21d4ba0
	ldr     r0, [pc, #0x64] @ 0x21d3064, (=0x1d28)
	ldr     r2, [pc, #0x74] @ 0x21d3074, (=0xac8)
	ldr     r1, [r4, r0]
	add     r2, r4, r2
	ldr     r0, [r1, #0x0]
	add     r1, #0x1c
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x25
	lsl     r1, r1, #6
	mov     r0, #0x1
	add     r1, r4, r1
	mov     r3, #0x53
	bl      Function_21d4ba0
	ldr     r0, [pc, #0x58] @ 0x21d3074, (=0xac8)
	mov     r1, #0x3
	ldr     r2, [pc, #0x4c] @ 0x21d306c, (=0xffffb000)
	ldr     r3, [pc, #0x4c] @ 0x21d3070, (=0xfffba000)
	add     r0, r4, r0
	lsl     r1, r1, #16
	bl      Function_2017350
	ldr     r1, [pc, #0x4c] @ 0x21d3078, (=0xc28)
	mov     r0, #0x0
	str     r0, [r4, r1]
	mov     r0, #0xa9
	ldr     r2, [pc, #0x48] @ 0x21d307c, (=0x19a)
	lsl     r0, r0, #4
	str     r2, [r4, r0]
	sub     r1, #0x10
	str     r2, [r4, r1]
	ldr     r1, [r4, r0]
	mov     r0, #0x25
	lsl     r0, r0, #6
	mov     r2, #0x1
	add     r0, r4, r0
	lsl     r2, r2, #12
	mov     r3, r1
	bl      Function_201736c
	ldr     r0, [pc, #0x30] @ 0x21d3080, (=0xc18)
	mov     r2, #0x1
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0x1c] @ 0x21d3074, (=0xac8)
	lsl     r2, r2, #12
	add     r0, r4, r0
	mov     r3, r1
	bl      Function_201736c
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d3064

.word 0x1d28 @ 0x21d3064
.word 0xfffd0000 @ 0x21d3068
.word 0xffffb000 @ 0x21d306c
.word 0xfffba000 @ 0x21d3070
.word 0xac8 @ 0x21d3074
.word 0xc28 @ 0x21d3078
.word 0x19a @ 0x21d307c
.word 0xc18 @ 0x21d3080
.thumb
Function_21d3084: @ 21d3084 :thumb
	push    {r3-r7,lr}
	ldr     r2, [pc, #0x330] @ 0x21d33b8, (=0x1d28)
	mov     r5, r0
	ldr     r2, [r5, r2]
	mov     r1, #0x2e
	ldr     r2, [r2, #0x0]
	add     r0, #0x10
	bl      Function_21d4ac8
	ldr     r2, [pc, #0x320] @ 0x21d33b8, (=0x1d28)
	mov     r0, #0x32
	ldr     r2, [r5, r2]
	lsl     r0, r0, #4
	ldr     r2, [r2, #0x0]
	add     r0, r5, r0
	mov     r1, #0x18
	bl      Function_21d4ac8
	ldr     r0, [pc, #0x30c] @ 0x21d33b8, (=0x1d28)
	mov     r1, #0x32
	ldr     r3, [r5, r0]
	lsl     r1, r1, #4
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	add     r1, r5, r1
	mov     r2, #0x16
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x2f4] @ 0x21d33b8, (=0x1d28)
	mov     r1, #0x32
	ldr     r3, [r5, r0]
	lsl     r1, r1, #4
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x1
	add     r1, r5, r1
	mov     r2, #0x17
	bl      Function_21d4b4c
	ldr     r2, [pc, #0x2d8] @ 0x21d33b8, (=0x1d28)
	ldr     r0, [pc, #0x2dc] @ 0x21d33bc, (=0x10e8)
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	ldr     r2, [r2, #0x0]
	mov     r1, #0x4f
	bl      Function_21d4ac8
	ldr     r0, [pc, #0x2c8] @ 0x21d33b8, (=0x1d28)
	ldr     r1, [pc, #0x2cc] @ 0x21d33bc, (=0x10e8)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	mov     r2, #0x4d
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x2b0] @ 0x21d33b8, (=0x1d28)
	ldr     r1, [pc, #0x2b4] @ 0x21d33bc, (=0x10e8)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x1
	mov     r2, #0x4e
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x298] @ 0x21d33b8, (=0x1d28)
	ldr     r1, [pc, #0x29c] @ 0x21d33bc, (=0x10e8)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x2
	mov     r2, #0x50
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x280] @ 0x21d33b8, (=0x1d28)
	ldr     r1, [pc, #0x284] @ 0x21d33bc, (=0x10e8)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x3
	mov     r2, #0x51
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x26c] @ 0x21d33bc, (=0x10e8)
	ldr     r1, [pc, #0x270] @ 0x21d33c0, (=0xfffd0000)
	ldr     r2, [pc, #0x270] @ 0x21d33c4, (=0xffff6000)
	ldr     r3, [pc, #0x274] @ 0x21d33c8, (=0xfffba000)
	add     r0, r5, r0
	bl      Function_2017350
	ldr     r1, [pc, #0x270] @ 0x21d33cc, (=0x1248)
	mov     r2, #0x0
	mov     r0, r1
	str     r2, [r5, r1]
	add     r0, #0x10
	str     r2, [r5, r0]
	ldr     r2, [pc, #0x250] @ 0x21d33b8, (=0x1d28)
	add     r1, #0x28
	ldr     r2, [r5, r2]
	add     r0, r5, r1
	ldr     r2, [r2, #0x0]
	mov     r1, #0x4f
	bl      Function_21d4ac8
	ldr     r0, [pc, #0x240] @ 0x21d33b8, (=0x1d28)
	ldr     r1, [pc, #0x254] @ 0x21d33d0, (=0x1270)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	mov     r2, #0x4d
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x228] @ 0x21d33b8, (=0x1d28)
	ldr     r1, [pc, #0x23c] @ 0x21d33d0, (=0x1270)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x1
	mov     r2, #0x4e
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x210] @ 0x21d33b8, (=0x1d28)
	ldr     r1, [pc, #0x224] @ 0x21d33d0, (=0x1270)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x2
	mov     r2, #0x50
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x1f8] @ 0x21d33b8, (=0x1d28)
	ldr     r1, [pc, #0x20c] @ 0x21d33d0, (=0x1270)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x3
	mov     r2, #0x51
	bl      Function_21d4b4c
	ldr     r0, [pc, #0x1f8] @ 0x21d33d0, (=0x1270)
	mov     r1, #0x3
	ldr     r2, [pc, #0x1e8] @ 0x21d33c4, (=0xffff6000)
	ldr     r3, [pc, #0x1e8] @ 0x21d33c8, (=0xfffba000)
	add     r0, r5, r0
	lsl     r1, r1, #16
	bl      Function_2017350
	mov     r7, #0x62
	ldr     r0, [pc, #0x1e8] @ 0x21d33d4, (=0x13d0)
	mov     r6, #0x0
	str     r6, [r5, r0]
	add     r0, #0x10
	str     r6, [r5, r0]
	ldr     r0, [pc, #0x1e4] @ 0x21d33d8, (=0x1708)
	lsl     r7, r7, #2
	add     r4, r5, r0
.thumb
branch_21d31f8: @ 21d31f8 :thumb
	ldr     r2, [pc, #0x1bc] @ 0x21d33b8, (=0x1d28)
	mov     r0, r4
	ldr     r2, [r5, r2]
	mov     r1, #0x41
	ldr     r2, [r2, #0x0]
	bl      Function_21d4ac8
	ldr     r1, [pc, #0x1d4] @ 0x21d33dc, (=0x1333)
	mov     r2, #0x1
	mov     r0, r4
	lsl     r2, r2, #12
	mov     r3, r1
	bl      Function_201736c
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, r4, r7
	cmp     r6, #0x4
	blt     branch_21d31f8
	ldr     r2, [pc, #0x198] @ 0x21d33b8, (=0x1d28)
	mov     r0, #0x63
	ldr     r2, [r5, r2]
	lsl     r0, r0, #4
	ldr     r2, [r2, #0x0]
	add     r0, r5, r0
	mov     r1, #0x42
	bl      Function_21d4ac8
	mov     r0, #0x63
	ldr     r1, [pc, #0x1ac] @ 0x21d33e0, (=0xfffce000)
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, r1
	bl      Function_2017350
	ldr     r0, [pc, #0x178] @ 0x21d33b8, (=0x1d28)
	mov     r1, #0x63
	ldr     r3, [r5, r0]
	lsl     r1, r1, #4
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	add     r1, r5, r1
	mov     r2, #0x43
	bl      Function_21d4b4c
	mov     r1, #0x79
	lsl     r1, r1, #4
	mov     r2, #0x1
	str     r2, [r5, r1]
	add     r0, r1, #0x4
	str     r2, [r5, r0]
	mov     r0, r1
	add     r0, #0x70
	sub     r1, #0xc
	str     r0, [r5, r1]
	mov     r0, #0x63
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_2017348
	ldr     r0, [pc, #0x15c] @ 0x21d33d8, (=0x1708)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_2017348
	ldr     r2, [pc, #0x134] @ 0x21d33b8, (=0x1d28)
	ldr     r0, [pc, #0x15c] @ 0x21d33e4, (=0x7b8)
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	ldr     r2, [r2, #0x0]
	mov     r1, #0x44
	bl      Function_21d4ac8
	ldr     r0, [pc, #0x150] @ 0x21d33e4, (=0x7b8)
	mov     r1, #0x32
	ldr     r3, [pc, #0x148] @ 0x21d33e0, (=0xfffce000)
	add     r0, r5, r0
	lsl     r1, r1, #12
	mov     r2, #0x0
	bl      Function_2017350
	ldr     r0, [pc, #0x114] @ 0x21d33b8, (=0x1d28)
	ldr     r1, [pc, #0x13c] @ 0x21d33e4, (=0x7b8)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	mov     r2, #0x45
	bl      Function_21d4b4c
	ldr     r1, [pc, #0x12c] @ 0x21d33e8, (=0x918)
	mov     r2, #0x1
	str     r2, [r5, r1]
	add     r0, r1, #0x4
	str     r2, [r5, r0]
	lsl     r0, r2, #11
	sub     r1, #0xc
	str     r0, [r5, r1]
	ldr     r0, [pc, #0x118] @ 0x21d33e4, (=0x7b8)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_2017348
	ldr     r0, [pc, #0x114] @ 0x21d33ec, (=0x1890)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_2017348
	ldr     r0, [pc, #0x110] @ 0x21d33f0, (=0x1d2c)
	ldr     r0, [r5, r0]
	ldr     r0, [r0, #0x8]
	bl      GetGender
	cmp     r0, #0x1
	ldr     r0, [pc, #0x108] @ 0x21d33f4, (=0x13f8)
	ldr     r2, [pc, #0xc8] @ 0x21d33b8, (=0x1d28)
	beq     branch_21d3316
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	ldr     r2, [r2, #0x0]
	mov     r1, #0x3d
	bl      Function_21d4ac8
	ldr     r0, [pc, #0xb8] @ 0x21d33b8, (=0x1d28)
	ldr     r1, [pc, #0xf4] @ 0x21d33f4, (=0x13f8)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	mov     r2, #0x3e
	bl      Function_21d4b4c
	b       branch_21d333a
@ 0x21d3316

.thumb
branch_21d3316: @ 21d3316 :thumb
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	ldr     r2, [r2, #0x0]
	mov     r1, #0x3f
	bl      Function_21d4ac8
	ldr     r0, [pc, #0x94] @ 0x21d33b8, (=0x1d28)
	ldr     r1, [pc, #0xcc] @ 0x21d33f4, (=0x13f8)
	ldr     r3, [r5, r0]
	add     r1, r5, r1
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	mov     r2, #0x40
	bl      Function_21d4b4c
.thumb
branch_21d333a: @ 21d333a :thumb
	ldr     r0, [pc, #0xb8] @ 0x21d33f4, (=0x13f8)
	mov     r1, #0x1
	mov     r3, #0x23
	add     r0, r5, r0
	lsl     r1, r1, #12
	mov     r2, #0x0
	lsl     r3, r3, #14
	bl      Function_2017350
	mov     r0, #0x1
	ldr     r1, [pc, #0xa8] @ 0x21d33f8, (=0x155c)
	lsl     r2, r0, #10
	str     r0, [r5, r1]
	mov     r0, r1
	sub     r0, #0x10
	str     r2, [r5, r0]
	mov     r0, r1
	mov     r2, #0x2
	sub     r0, #0xc
	str     r2, [r5, r0]
	ldr     r2, [pc, #0x54] @ 0x21d33b8, (=0x1d28)
	add     r1, #0x24
	ldr     r2, [r5, r2]
	add     r0, r5, r1
	ldr     r2, [r2, #0x0]
	mov     r1, #0xd
	bl      Function_21d4ac8
	mov     r0, #0x56
	lsl     r0, r0, #6
	mov     r1, #0x1
	mov     r3, #0xf
	add     r0, r5, r0
	lsl     r1, r1, #12
	mov     r2, #0x0
	lsl     r3, r3, #14
	bl      Function_2017350
	ldr     r0, [pc, #0x30] @ 0x21d33b8, (=0x1d28)
	mov     r1, #0x56
	ldr     r3, [r5, r0]
	lsl     r1, r1, #6
	mov     r0, r3
	add     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, #0x0
	add     r1, r5, r1
	mov     r2, #0xe
	bl      Function_21d4b4c
	mov     r0, #0x1
	ldr     r1, [pc, #0x58] @ 0x21d33fc, (=0x16e4)
	lsl     r2, r0, #10
	str     r0, [r5, r1]
	mov     r0, r1
	sub     r0, #0x10
	str     r2, [r5, r0]
	mov     r0, #0x2
	sub     r1, #0xc
	str     r0, [r5, r1]
	pop     {r3-r7,pc}
@ 0x21d33b6


.align 2


.word 0x1d28 @ 0x21d33b8
.word 0x10e8 @ 0x21d33bc
.word 0xfffd0000 @ 0x21d33c0
.word 0xffff6000 @ 0x21d33c4
.word 0xfffba000 @ 0x21d33c8
.word 0x1248 @ 0x21d33cc
.word 0x1270 @ 0x21d33d0
.word 0x13d0 @ 0x21d33d4
.word 0x1708 @ 0x21d33d8
.word 0x1333 @ 0x21d33dc
.word 0xfffce000 @ 0x21d33e0
.word 0x7b8 @ 0x21d33e4
.word 0x918 @ 0x21d33e8
.word 0x1890 @ 0x21d33ec
.word 0x1d2c @ 0x21d33f0
.word 0x13f8 @ 0x21d33f4
.word 0x155c @ 0x21d33f8
.word 0x16e4 @ 0x21d33fc
.thumb
Function_21d3400: @ 21d3400 :thumb
	push    {r3-r7,lr}
	ldr     r1, [pc, #0xa8] @ 0x21d34ac, (=0x1d28)
	mov     r5, r0
	ldr     r1, [r5, r1]
	add     r0, #0x10
	add     r1, #0x1c
	mov     r2, #0x0
	bl      Function_21d4aa4
	ldr     r0, [pc, #0x9c] @ 0x21d34b0, (=0x1708)
	mov     r7, #0x62
	mov     r6, #0x0
	add     r4, r5, r0
	lsl     r7, r7, #2
.thumb
branch_21d341c: @ 21d341c :thumb
	ldr     r1, [pc, #0x8c] @ 0x21d34ac, (=0x1d28)
	mov     r0, r4
	ldr     r1, [r5, r1]
	mov     r2, #0x0
	add     r1, #0x1c
	bl      Function_21d4aa4
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, r4, r7
	cmp     r6, #0x4
	blt     branch_21d341c
	ldr     r1, [pc, #0x78] @ 0x21d34ac, (=0x1d28)
	mov     r0, #0x32
	ldr     r1, [r5, r1]
	lsl     r0, r0, #4
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x2
	bl      Function_21d4aa4
	ldr     r1, [pc, #0x64] @ 0x21d34ac, (=0x1d28)
	mov     r0, #0x63
	ldr     r1, [r5, r1]
	lsl     r0, r0, #4
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x1
	bl      Function_21d4aa4
	ldr     r1, [pc, #0x54] @ 0x21d34ac, (=0x1d28)
	ldr     r0, [pc, #0x58] @ 0x21d34b4, (=0x7b8)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x1
	bl      Function_21d4aa4
	ldr     r1, [pc, #0x44] @ 0x21d34ac, (=0x1d28)
	mov     r0, #0x25
	ldr     r1, [r5, r1]
	lsl     r0, r0, #6
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x2
	bl      Function_21d4aa4
	ldr     r1, [pc, #0x30] @ 0x21d34ac, (=0x1d28)
	ldr     r0, [pc, #0x3c] @ 0x21d34b8, (=0xac8)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x2
	bl      Function_21d4aa4
	ldr     r1, [pc, #0x20] @ 0x21d34ac, (=0x1d28)
	ldr     r0, [pc, #0x30] @ 0x21d34bc, (=0x13f8)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x1
	bl      Function_21d4aa4
	ldr     r1, [pc, #0x10] @ 0x21d34ac, (=0x1d28)
	mov     r0, #0x56
	ldr     r1, [r5, r1]
	lsl     r0, r0, #6
	add     r0, r5, r0
	add     r1, #0x1c
	mov     r2, #0x1
	bl      Function_21d4aa4
	pop     {r3-r7,pc}
@ 0x21d34ac

.word 0x1d28 @ 0x21d34ac
.word 0x1708 @ 0x21d34b0
.word 0x7b8 @ 0x21d34b4
.word 0xac8 @ 0x21d34b8
.word 0x13f8 @ 0x21d34bc
.thumb
Function_21d34c0: @ 21d34c0 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x2c] @ 0x21d34f0, (=0x1d28)
	mov     r4, r0
	ldr     r0, [pc, #0x2c] @ 0x21d34f4, (=0x10e8)
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	add     r1, #0x1c
	mov     r2, #0x4
	bl      Function_21d4aa4
	ldr     r1, [pc, #0x18] @ 0x21d34f0, (=0x1d28)
	ldr     r0, [pc, #0x20] @ 0x21d34f8, (=0x1270)
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	add     r1, #0x1c
	mov     r2, #0x4
	bl      Function_21d4aa4
	ldr     r0, [pc, #0x14] @ 0x21d34fc, (=0x125c)
	mov     r1, #0x0
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x14] @ 0x21d3500, (=0x13e4)
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x21d34f0

.word 0x1d28 @ 0x21d34f0
.word 0x10e8 @ 0x21d34f4
.word 0x1270 @ 0x21d34f8
.word 0x125c @ 0x21d34fc
.word 0x13e4 @ 0x21d3500
.thumb
Function_21d3504: @ 21d3504 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r3, [pc, #0x40] @ 0x21d354c, (=0x21d52a8)
	mov     r4, r0
	ldrh    r5, [r3, #0x0]
	add     r0, sp, #0xc
	add     r2, sp, #0xc
	strh    r5, [r0, #0x0]
	ldrh    r5, [r3, #0x2]
	strh    r5, [r0, #0x2]
	ldrh    r5, [r3, #0x4]
	ldrh    r3, [r3, #0x6]
	strh    r5, [r0, #0x4]
	strh    r3, [r0, #0x6]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r1
	ldr     r1, [pc, #0x24] @ 0x21d3550, (=0x13c805)
	ldr     r3, [pc, #0x24] @ 0x21d3554, (=0xc01)
	str     r4, [sp, #0x8]
	bl      Function_20206d0
	mov     r0, r4
	bl      Function_20203d4
	mov     r0, #0xa
	mov     r1, #0x3f
	lsl     r0, r0, #12
	lsl     r1, r1, #16
	mov     r2, r4
	bl      Function_20206bc
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d354c

.word 0x21d52a8 @ 0x21d354c
.word 0x13c805 @ 0x21d3550
.word 0xc01 @ 0x21d3554
.thumb
Function_21d3558: @ 21d3558 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Call_G3X_Reset
	bl      Function_20203ec
	ldr     r0, [pc, #0x90] @ 0x21d35f8, (=0x1d28)
	ldr     r0, [r4, r0]
	bl      Function_21d47a0
	ldr     r0, [pc, #0x88] @ 0x21d35f8, (=0x1d28)
	ldr     r0, [r4, r0]
	bl      Function_21d4844
	mov     r0, r4
	add     r0, #0x10
	bl      Function_21d49b4
	mov     r0, #0x32
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_21d49b4
	mov     r0, #0x63
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x68] @ 0x21d35fc, (=0x7b8)
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x64] @ 0x21d3600, (=0x10e8)
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x60] @ 0x21d3604, (=0x1270)
	add     r0, r4, r0
	bl      Function_21d49b4
	mov     r0, #0x25
	lsl     r0, r0, #6
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x54] @ 0x21d3608, (=0xac8)
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x50] @ 0x21d360c, (=0x13f8)
	add     r0, r4, r0
	bl      Function_21d49b4
	mov     r0, #0x56
	lsl     r0, r0, #6
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x40] @ 0x21d3610, (=0x1708)
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x3c] @ 0x21d3614, (=0x1890)
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x38] @ 0x21d3618, (=0x1a18)
	add     r0, r4, r0
	bl      Function_21d49b4
	ldr     r0, [pc, #0x34] @ 0x21d361c, (=0x1ba0)
	add     r0, r4, r0
	bl      Function_21d49b4
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_20241bc
	pop     {r4,pc}
@ 0x21d35f6


.align 2


.word 0x1d28 @ 0x21d35f8
.word 0x7b8 @ 0x21d35fc
.word 0x10e8 @ 0x21d3600
.word 0x1270 @ 0x21d3604
.word 0xac8 @ 0x21d3608
.word 0x13f8 @ 0x21d360c
.word 0x1708 @ 0x21d3610
.word 0x1890 @ 0x21d3614
.word 0x1a18 @ 0x21d3618
.word 0x1ba0 @ 0x21d361c
.thumb
Function_21d3620: @ 21d3620 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x8c] @ 0x21d36b0, (=0x1d60)
	mov     r5, r0
	mov     r0, #0x6f
	bl      malloc
	ldr     r2, [pc, #0x80] @ 0x21d36b0, (=0x1d60)
	mov     r1, #0x0
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r1, r5
	ldr     r0, [pc, #0x78] @ 0x21d36b4, (=0x1d28)
	add     r1, #0xc
	str     r1, [r4, r0]
	add     r5, #0xd0
	ldr     r1, [r5, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_21d3084
	ldr     r0, [pc, #0x64] @ 0x21d36b4, (=0x1d28)
	ldr     r1, [r4, r0]
	ldr     r0, [r1, #0xc]
	ldr     r1, [r1, #0x10]
	bl      Function_21d2f0c
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x58] @ 0x21d36b8, (=0x4000050)
	mov     r1, #0x4
	mov     r2, #0x32
	mov     r3, #0x7
	blx     G2x_SetBlendAlpha_
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x4c] @ 0x21d36bc, (=0x4001050)
	mov     r1, #0x3
	mov     r2, #0x12
	mov     r3, #0x7
	blx     G2x_SetBlendAlpha_
	ldr     r2, [pc, #0x44] @ 0x21d36c0, (=0x4000060)
	ldr     r0, [pc, #0x48] @ 0x21d36c4, (=0xffffcfff)
	ldrh    r1, [r2, #0x0]
	and     r1, r0
	mov     r0, #0x20
	orr     r0, r1
	strh    r0, [r2, #0x0]
	ldr     r0, [pc, #0x40] @ 0x21d36c8, (=0x21d52b0)
	blx     SetEdgeTable
	ldr     r0, [pc, #0x24] @ 0x21d36b4, (=0x1d28)
	mov     r2, #0x22
	ldr     r1, [r4, r0]
	lsl     r2, r2, #12
	str     r2, [r1, #0x4c]
	ldr     r1, [r4, r0]
	ldr     r0, [r1, #0x18]
	add     r1, #0x44
	bl      Function_21d3504
	mov     r1, #0x0
	mov     r0, #0x3f
	mov     r2, r1
	bl      Function_2004550
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d36ae


.align 2


.word 0x1d60 @ 0x21d36b0
.word 0x1d28 @ 0x21d36b4
.word 0x4000050 @ 0x21d36b8
.word 0x4001050 @ 0x21d36bc
.word 0x4000060 @ 0x21d36c0
.word 0xffffcfff @ 0x21d36c4
.word 0x21d52b0 @ 0x21d36c8
.thumb
Function_21d36cc: @ 21d36cc :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	beq     branch_21d36dc
	cmp     r1, #0x1
	beq     branch_21d377e
	b       branch_21d379c
@ 0x21d36dc

.thumb
branch_21d36dc: @ 21d36dc :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	str     r1, [r0, #0x8]
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x0]
	beq     branch_21d3728
	cmp     r0, #0x4
	beq     branch_21d36f2
	cmp     r0, #0x6
	bne     branch_21d36fc
.thumb
branch_21d36f2: @ 21d36f2 :thumb
	mov     r1, #0x2
	ldr     r0, [r4, #0x10]
	lsl     r1, r1, #12
	str     r1, [r0, #0x18]
	b       branch_21d3760
@ 0x21d36fc

.thumb
branch_21d36fc: @ 21d36fc :thumb
	cmp     r0, #0x5
	bne     branch_21d3708
	ldr     r0, [r4, #0x10]
	lsl     r1, r1, #13
	str     r1, [r0, #0x18]
	b       branch_21d3760
@ 0x21d3708

.thumb
branch_21d3708: @ 21d3708 :thumb
	cmp     r0, #0xff
	bne     branch_21d3716
	mov     r1, #0x6
	ldr     r0, [r4, #0x10]
	lsl     r1, r1, #12
	str     r1, [r0, #0x18]
	b       branch_21d3760
@ 0x21d3716

.thumb
branch_21d3716: @ 21d3716 :thumb
	cmp     r0, #0x7
	bne     branch_21d3760
	ldr     r0, [r4, #0x10]
	lsl     r1, r1, #12
	str     r1, [r0, #0x18]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x4
	str     r1, [r0, #0x8]
	b       branch_21d3760
@ 0x21d3728

.thumb
branch_21d3728: @ 21d3728 :thumb
	cmp     r0, #0x4
	beq     branch_21d3730
	cmp     r0, #0x6
	bne     branch_21d3738
.thumb
branch_21d3730: @ 21d3730 :thumb
	ldr     r1, [pc, #0x70] @ 0x21d37a4, (=0xffffe000)
	ldr     r0, [r4, #0x10]
	str     r1, [r0, #0x18]
	b       branch_21d3760
@ 0x21d3738

.thumb
branch_21d3738: @ 21d3738 :thumb
	cmp     r0, #0x5
	bne     branch_21d3744
	ldr     r1, [pc, #0x68] @ 0x21d37a8, (=0xffffc000)
	ldr     r0, [r4, #0x10]
	str     r1, [r0, #0x18]
	b       branch_21d3760
@ 0x21d3744

.thumb
branch_21d3744: @ 21d3744 :thumb
	cmp     r0, #0xff
	bne     branch_21d3750
	ldr     r1, [pc, #0x60] @ 0x21d37ac, (=0xffffa000)
	ldr     r0, [r4, #0x10]
	str     r1, [r0, #0x18]
	b       branch_21d3760
@ 0x21d3750

.thumb
branch_21d3750: @ 21d3750 :thumb
	cmp     r0, #0x7
	bne     branch_21d3760
	ldr     r1, [pc, #0x4c] @ 0x21d37a4, (=0xffffe000)
	ldr     r0, [r4, #0x10]
	str     r1, [r0, #0x18]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x4
	str     r1, [r0, #0x8]
.thumb
branch_21d3760: @ 21d3760 :thumb
	ldr     r1, [r4, #0x8]
	mov     r0, #0x1
	eor     r0, r1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	str     r1, [r0, #0x1c]
	ldr     r0, [r4, #0x10]
	str     r1, [r0, #0x20]
	ldr     r0, [r4, #0x10]
	bl      Function_21d4890
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d377e: @ 21d377e :thumb
	ldr     r0, [r4, #0x10]
	bl      Function_21d4920
	cmp     r0, #0x0
	beq     branch_21d37a0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x8
	ldr     r0, [r4, #0x4]
	bne     branch_21d3796
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x21d3796

.thumb
branch_21d3796: @ 21d3796 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x21d379c

.thumb
branch_21d379c: @ 21d379c :thumb
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21d37a0: @ 21d37a0 :thumb
	pop     {r4,pc}
@ 0x21d37a2


.align 2


.word 0xffffe000 @ 0x21d37a4
.word 0xffffc000 @ 0x21d37a8
.word 0xffffa000 @ 0x21d37ac
.thumb
Function_21d37b0: @ 21d37b0 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x38] @ 0x21d37ec, (=0x1d28)
	mov     r1, r0
	ldr     r3, [r1, r2]
	mov     r0, #0x0
	str     r0, [r3, #0x64]
	ldr     r3, [r1, r2]
	str     r0, [r3, #0x68]
	ldr     r3, [r1, r2]
	str     r0, [r3, #0x6c]
	ldr     r4, [r1, r2]
	mov     r3, r4
	add     r3, #0x44
	str     r3, [r4, #0x5c]
	ldr     r4, [r1, r2]
	mov     r3, r4
	add     r3, #0x58
	add     r4, #0xbc
	str     r3, [r4, #0x0]
	ldr     r3, [r1, r2]
	add     r3, #0xac
	str     r0, [r3, #0x0]
	ldr     r1, [r1, r2]
	mov     r2, #0x1
	ldr     r0, [pc, #0xc] @ 0x21d37f0, (=0x21d36cd)
	add     r1, #0xac
	lsl     r2, r2, #12
	bl      AddTaskToTaskList1
	pop     {r4,pc}
@ 0x21d37ec

.word 0x1d28 @ 0x21d37ec
.word 0x21d36cd @ 0x21d37f0
.thumb
Function_21d37f4: @ 21d37f4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x24
	ldr     r6, [pc, #0x188] @ 0x21d3984, (=0x21d52c0)
	add     r3, sp, #0x8
	mov     r2, r0
	mov     r5, r1
	ldmia   r6!, {r0,r1}
	mov     r4, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_21d381e
	cmp     r0, #0x1
	beq     branch_21d38c4
	b       branch_21d3978
@ 0x21d381e

.thumb
branch_21d381e: @ 21d381e :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	lsl     r6, r0, #2
	ldr     r0, [r4, r6]
	blx     Function_20e1108
	ldr     r0, [pc, #0x15c] @ 0x21d3988, (=0x45800000)
	bls     branch_21d3840
	ldr     r1, [r4, r6]
	blx     _fmul
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d384e
@ 0x21d3840

.thumb
branch_21d3840: @ 21d3840 :thumb
	ldr     r1, [r4, r6]
	blx     _fmul
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_21d384e: @ 21d384e :thumb
	blx     _ffix
	mov     r2, #0x1
	mov     r1, r0
	lsl     r2, r2, #12
	ldr     r0, [r5, #0x10]
	mov     r3, r2
	bl      Function_201736c
	ldr     r0, [r5, #0x4]
	add     r6, sp, #0x8
	lsl     r4, r0, #2
	ldr     r0, [r6, r4]
	mov     r1, #0x0
	blx     Function_20e1108
	ldr     r0, [pc, #0x118] @ 0x21d3988, (=0x45800000)
	bls     branch_21d3884
	ldr     r1, [r6, r4]
	blx     _fmul
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d3892
@ 0x21d3884

.thumb
branch_21d3884: @ 21d3884 :thumb
	ldr     r1, [r6, r4]
	blx     _fmul
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_21d3892: @ 21d3892 :thumb
	blx     _ffix
	mov     r2, #0x1
	mov     r1, r0
	lsl     r2, r2, #12
	ldr     r0, [r5, #0x14]
	mov     r3, r2
	bl      Function_201736c
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
	ldr     r0, [r5, #0x10]
	bl      Function_2017348
	ldr     r0, [r5, #0x14]
	mov     r1, #0x1
	bl      Function_2017348
	ldr     r0, [r5, #0x0]
	add     sp, #0x24
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r6,pc}
@ 0x21d38c4

.thumb
branch_21d38c4: @ 21d38c4 :thumb
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
	cmp     r0, #0x7
	bcc     branch_21d38f0
	mov     r0, #0x6f
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r1, [r5, #0x8]
	mov     r2, #0xc
	lsl     r1, r1, #16
	ldsh    r2, [r5, r2]
	lsr     r1, r1, #16
	mov     r3, #0x50
	bl      Function_20059d0
	ldr     r0, [r5, #0x0]
	add     sp, #0x24
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r6,pc}
@ 0x21d38f0

.thumb
branch_21d38f0: @ 21d38f0 :thumb
	lsl     r6, r0, #2
	ldr     r0, [r4, r6]
	mov     r1, #0x0
	blx     Function_20e1108
	ldr     r0, [pc, #0x8c] @ 0x21d3988, (=0x45800000)
	bls     branch_21d3910
	ldr     r1, [r4, r6]
	blx     _fmul
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d391e
@ 0x21d3910

.thumb
branch_21d3910: @ 21d3910 :thumb
	ldr     r1, [r4, r6]
	blx     _fmul
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_21d391e: @ 21d391e :thumb
	blx     _ffix
	mov     r2, #0x1
	mov     r1, r0
	lsl     r2, r2, #12
	ldr     r0, [r5, #0x10]
	mov     r3, r2
	bl      Function_201736c
	ldr     r0, [r5, #0x4]
	add     r6, sp, #0x8
	lsl     r4, r0, #2
	ldr     r0, [r6, r4]
	mov     r1, #0x0
	blx     Function_20e1108
	ldr     r0, [pc, #0x48] @ 0x21d3988, (=0x45800000)
	bls     branch_21d3954
	ldr     r1, [r6, r4]
	blx     _fmul
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d3962
@ 0x21d3954

.thumb
branch_21d3954: @ 21d3954 :thumb
	ldr     r1, [r6, r4]
	blx     _fmul
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_21d3962: @ 21d3962 :thumb
	blx     _ffix
	mov     r2, #0x1
	mov     r1, r0
	lsl     r2, r2, #12
	ldr     r0, [r5, #0x14]
	mov     r3, r2
	bl      Function_201736c
	add     sp, #0x24
	pop     {r3-r6,pc}
@ 0x21d3978

.thumb
branch_21d3978: @ 21d3978 :thumb
	mov     r0, r2
	bl      Call_RemoveTaskFromTaskList
	add     sp, #0x24
	pop     {r3-r6,pc}
@ 0x21d3982


.align 2


.word 0x21d52c0 @ 0x21d3984
.word 0x45800000 @ 0x21d3988
.thumb
Function_21d398c: @ 21d398c :thumb
	push    {r4-r6,lr}
	ldr     r3, [pc, #0x48] @ 0x21d39d8, (=0x1d30)
	mov     r6, r1
	add     r4, r0, r3
	mov     r3, #0x18
	mul     r6, r3
	mov     r3, #0x0
	add     r5, r4, r6
	str     r3, [r4, r6]
	str     r3, [r5, #0x4]
	str     r2, [r5, #0x8]
	mov     r2, #0x62
	mov     r4, #0x63
	lsl     r2, r2, #2
	lsl     r4, r4, #4
	mul     r2, r1
	add     r4, r0, r4
	add     r4, r4, r2
	str     r4, [r5, #0x10]
	ldr     r4, [pc, #0x28] @ 0x21d39dc, (=0x1708)
	add     r0, r0, r4
	add     r0, r0, r2
	str     r0, [r5, #0x14]
	cmp     r1, #0x0
	bne     branch_21d39c4
	sub     r3, #0x50
	strh    r3, [r5, #0xc]
	b       branch_21d39c8
@ 0x21d39c4

.thumb
branch_21d39c4: @ 21d39c4 :thumb
	mov     r0, #0x50
	strh    r0, [r5, #0xc]
.thumb
branch_21d39c8: @ 21d39c8 :thumb
	mov     r2, #0x1
	ldr     r0, [pc, #0x14] @ 0x21d39e0, (=0x21d37f5)
	mov     r1, r5
	lsl     r2, r2, #12
	bl      AddTaskToTaskList1
	pop     {r4-r6,pc}
@ 0x21d39d6


.align 2


.word 0x1d30 @ 0x21d39d8
.word 0x1708 @ 0x21d39dc
.word 0x21d37f5 @ 0x21d39e0
.thumb
Function_21d39e4: @ 21d39e4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x11
	bls     branch_21d39f2
	b       branch_21d3eec
@ 0x21d39f2

.thumb
branch_21d39f2: @ 21d39f2 :thumb
	add     r2, r1, r1
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x21d39fe

Jumppoints_21d39fe:
.hword branch_21d3a22 - Jumppoints_21d39fe - 2
.hword branch_21d3a30 - Jumppoints_21d39fe - 2
.hword branch_21d3a70 - Jumppoints_21d39fe - 2
.hword branch_21d3a98 - Jumppoints_21d39fe - 2
.hword branch_21d3ac6 - Jumppoints_21d39fe - 2
.hword branch_21d3b14 - Jumppoints_21d39fe - 2
.hword branch_21d3b3c - Jumppoints_21d39fe - 2
.hword branch_21d3c28 - Jumppoints_21d39fe - 2
.hword branch_21d3c58 - Jumppoints_21d39fe - 2
.hword branch_21d3c70 - Jumppoints_21d39fe - 2
.hword branch_21d3ccc - Jumppoints_21d39fe - 2
.hword branch_21d3d20 - Jumppoints_21d39fe - 2
.hword branch_21d3d8e - Jumppoints_21d39fe - 2
.hword branch_21d3dd2 - Jumppoints_21d39fe - 2
.hword branch_21d3e2a - Jumppoints_21d39fe - 2
.hword branch_21d3e5a - Jumppoints_21d39fe - 2
.hword branch_21d3eca - Jumppoints_21d39fe - 2
.hword branch_21d3ee2 - Jumppoints_21d39fe - 2
.thumb
branch_21d3a22: @ 21d3a22 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d3b1e
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_21d3a30: @ 21d3a30 :thumb
	ldr     r1, [pc, #0x30c] @ 0x21d3d40, (=0x1d28)
	mov     r0, #0x0
	ldr     r2, [r4, r1]
	mov     r3, #0x3c
	str     r0, [r2, #0x64]
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x68]
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x6c]
	ldr     r2, [r4, r1]
	str     r3, [r2, #0x60]
	ldr     r3, [r4, r1]
	ldr     r2, [r3, #0x18]
	str     r2, [r3, #0x58]
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x70]
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x74]
	ldr     r2, [pc, #0x2ec] @ 0x21d3d44, (=0xfffd2000)
	ldr     r0, [r4, r1]
	str     r2, [r0, #0x78]
	ldr     r2, [r4, r1]
	mov     r0, r2
	add     r0, #0x44
	str     r0, [r2, #0x5c]
	ldr     r0, [r4, r1]
	add     r0, #0x58
	bl      Function_21d4890
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_21d3a70: @ 21d3a70 :thumb
	ldr     r0, [pc, #0x2cc] @ 0x21d3d40, (=0x1d28)
	ldr     r0, [r4, r0]
	add     r0, #0x58
	bl      Function_21d4920
	cmp     r0, #0x0
	beq     branch_21d3b1e
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x2b8] @ 0x21d3d40, (=0x1d28)
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	mov     r2, #0xe
	bl      Function_21d46c8
	b       branch_21d3eec
@ 0x21d3a98

.thumb
branch_21d3a98: @ 21d3a98 :thumb
	ldr     r0, [pc, #0x2a4] @ 0x21d3d40, (=0x1d28)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x40]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_21d3b1e
	ldr     r0, [pc, #0x294] @ 0x21d3d40, (=0x1d28)
	ldr     r0, [r4, r0]
	bl      Function_21d4788
	ldr     r1, [pc, #0x28c] @ 0x21d3d40, (=0x1d28)
	mov     r2, #0x10
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      Function_21d46c8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_21d3ac6: @ 21d3ac6 :thumb
	ldr     r0, [pc, #0x278] @ 0x21d3d40, (=0x1d28)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x40]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_21d3b1e
	ldr     r5, [pc, #0x26c] @ 0x21d3d48, (=0x21d52dc)
	add     r3, sp, #0x18
	mov     r2, #0x5
.thumb
branch_21d3ade: @ 21d3ade :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d3ade
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	add     r0, sp, #0x18
	bl      Function_21d4ebc
	ldr     r1, [pc, #0x24c] @ 0x21d3d40, (=0x1d28)
	ldr     r1, [r4, r1]
	str     r0, [r1, #0x54]
	mov     r0, r4
	bl      Function_21d37b0
	ldr     r0, [pc, #0x240] @ 0x21d3d40, (=0x1d28)
	ldr     r0, [r4, r0]
	bl      Function_21d4788
	ldr     r0, [pc, #0x244] @ 0x21d3d4c, (=0x1248)
	mov     r1, #0x1
	str     r1, [r4, r0]
	add     r0, #0x10
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_21d3b14: @ 21d3b14 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x3c
	bge     branch_21d3b20
.thumb
branch_21d3b1e: @ 21d3b1e :thumb
	b       branch_21d3eec
@ 0x21d3b20

.thumb
branch_21d3b20: @ 21d3b20 :thumb
	ldr     r0, [pc, #0x21c] @ 0x21d3d40, (=0x1d28)
	mov     r1, #0x4
	ldr     r0, [r4, r0]
	add     r0, #0xac
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x224] @ 0x21d3d50, (=0x13d0)
	mov     r1, #0x1
	str     r1, [r4, r0]
	add     r0, #0x10
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3eec
@ 0x21d3b3c

.thumb
branch_21d3b3c: @ 21d3b3c :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x50
	bne     branch_21d3b50
	mov     r1, #0x45
	ldr     r0, [pc, #0x208] @ 0x21d3d54, (=0x6d2)
	mvn     r1, r1
	bl      Function_2005728
.thumb
branch_21d3b50: @ 21d3b50 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x87
	bne     branch_21d3b5e
	ldr     r0, [pc, #0x1fc] @ 0x21d3d54, (=0x6d2)
	mov     r1, #0x46
	bl      Function_2005728
.thumb
branch_21d3b5e: @ 21d3b5e :thumb
	ldr     r2, [r4, #0x4]
	ldr     r1, [pc, #0x1f4] @ 0x21d3d58, (=0x136)
	cmp     r2, r1
	beq     branch_21d3b74
	mov     r0, r1
	add     r0, #0x41
	cmp     r2, r0
	beq     branch_21d3b74
	add     r1, #0x7a
	cmp     r2, r1
	bne     branch_21d3b7a
.thumb
branch_21d3b74: @ 21d3b74 :thumb
	ldr     r0, [pc, #0x1e4] @ 0x21d3d5c, (=0x6d4)
	bl      Function_2005748
.thumb
branch_21d3b7a: @ 21d3b7a :thumb
	mov     r1, #0x47
	ldr     r2, [r4, #0x4]
	lsl     r1, r1, #2
	cmp     r2, r1
	beq     branch_21d3b92
	mov     r0, r1
	add     r0, #0x36
	cmp     r2, r0
	beq     branch_21d3b92
	add     r1, #0x7a
	cmp     r2, r1
	bne     branch_21d3b98
.thumb
branch_21d3b92: @ 21d3b92 :thumb
	ldr     r0, [pc, #0x1cc] @ 0x21d3d60, (=0x6d5)
	bl      Function_2005748
.thumb
branch_21d3b98: @ 21d3b98 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0xa5
	bne     branch_21d3ba8
	mov     r1, #0x45
	ldr     r0, [pc, #0x1c0] @ 0x21d3d64, (=0x6d3)
	mvn     r1, r1
	bl      Function_2005728
.thumb
branch_21d3ba8: @ 21d3ba8 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0xdc
	bne     branch_21d3bb6
	ldr     r0, [pc, #0x1b4] @ 0x21d3d64, (=0x6d3)
	mov     r1, #0x46
	bl      Function_2005728
.thumb
branch_21d3bb6: @ 21d3bb6 :thumb
	ldr     r1, [r4, #0x4]
	ldr     r0, [pc, #0x1ac] @ 0x21d3d68, (=0x1d6)
	cmp     r1, r0
	bne     branch_21d3bc8
	mov     r1, #0x45
	ldr     r0, [pc, #0x1a8] @ 0x21d3d6c, (=0x6d6)
	mvn     r1, r1
	bl      Function_2005728
.thumb
branch_21d3bc8: @ 21d3bc8 :thumb
	mov     r0, #0x82
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #2
	cmp     r1, r0
	bne     branch_21d3bda
	ldr     r0, [pc, #0x198] @ 0x21d3d6c, (=0x6d6)
	mov     r1, #0x46
	bl      Function_2005728
.thumb
branch_21d3bda: @ 21d3bda :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x78
	bne     branch_21d3bea
	ldr     r0, [pc, #0x15c] @ 0x21d3d40, (=0x1d28)
	mov     r1, #0x5
	ldr     r0, [r4, r0]
	add     r0, #0xac
	str     r1, [r0, #0x0]
.thumb
branch_21d3bea: @ 21d3bea :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0xd2
	bne     branch_21d3bfa
	ldr     r0, [pc, #0x14c] @ 0x21d3d40, (=0x1d28)
	mov     r1, #0xff
	ldr     r0, [r4, r0]
	add     r0, #0xac
	str     r1, [r0, #0x0]
.thumb
branch_21d3bfa: @ 21d3bfa :thumb
	ldr     r0, [pc, #0x150] @ 0x21d3d4c, (=0x1248)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d3c62
	ldr     r0, [pc, #0x13c] @ 0x21d3d40, (=0x1d28)
	mov     r1, #0x6
	ldr     r0, [r4, r0]
	ldr     r2, [pc, #0x164] @ 0x21d3d70, (=0x1e3)
	add     r0, #0xac
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d398c
	mov     r1, #0x45
	ldr     r0, [pc, #0x158] @ 0x21d3d74, (=0x6d7)
	mvn     r1, r1
	bl      Function_2005728
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3eec
@ 0x21d3c28

.thumb
branch_21d3c28: @ 21d3c28 :thumb
	ldr     r1, [pc, #0x124] @ 0x21d3d50, (=0x13d0)
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	bne     branch_21d3c62
	ldr     r1, [pc, #0x10c] @ 0x21d3d40, (=0x1d28)
	mov     r2, #0x7
	ldr     r1, [r4, r1]
	add     r1, #0xac
	str     r2, [r1, #0x0]
	mov     r2, #0x79
	mov     r1, #0x1
	lsl     r2, r2, #2
	bl      Function_21d398c
	ldr     r0, [pc, #0x12c] @ 0x21d3d74, (=0x6d7)
	mov     r1, #0x46
	bl      Function_2005728
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	b       branch_21d3eec
@ 0x21d3c58

.thumb
branch_21d3c58: @ 21d3c58 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x1e
	bge     branch_21d3c64
.thumb
branch_21d3c62: @ 21d3c62 :thumb
	b       branch_21d3eec
@ 0x21d3c64

.thumb
branch_21d3c64: @ 21d3c64 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3eec
@ 0x21d3c70

.thumb
branch_21d3c70: @ 21d3c70 :thumb
	ldr     r3, [pc, #0xcc] @ 0x21d3d40, (=0x1d28)
	mov     r1, #0x8
	ldr     r0, [r4, r3]
	add     r0, #0xac
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, r3]
	cmp     r0, #0x0
	bne     branch_21d3ca4
	mov     r2, #0x53
	ldsb    r0, [r1, r2]
	cmp     r0, #0x8
	bge     branch_21d3c9e
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r1, #0x53
	strb    r0, [r1, #0x0]
	ldr     r3, [r4, r3]
	ldr     r0, [pc, #0xe4] @ 0x21d3d78, (=0x4000050)
	ldsb    r2, [r3, r2]
	mov     r1, #0x31
	blx     G2x_SetBlendBrightness_
	b       branch_21d3eec
@ 0x21d3c9e

.thumb
branch_21d3c9e: @ 21d3c9e :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	b       branch_21d3eec
@ 0x21d3ca4

.thumb
branch_21d3ca4: @ 21d3ca4 :thumb
	mov     r2, #0x53
	ldsb    r0, [r1, r2]
	cmp     r0, #0x0
	ble     branch_21d3cc0
	.hword  0x1e80 @ sub r0, r0, #0x2
	add     r1, #0x53
	strb    r0, [r1, #0x0]
	ldr     r3, [r4, r3]
	ldr     r0, [pc, #0xc0] @ 0x21d3d78, (=0x4000050)
	ldsb    r2, [r3, r2]
	mov     r1, #0x31
	blx     G2x_SetBlendBrightness_
	b       branch_21d3eec
@ 0x21d3cc0

.thumb
branch_21d3cc0: @ 21d3cc0 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	b       branch_21d3eec
@ 0x21d3ccc

.thumb
branch_21d3ccc: @ 21d3ccc :thumb
	ldr     r0, [r4, #0x8]
	ldr     r2, [pc, #0x70] @ 0x21d3d40, (=0x1d28)
	cmp     r0, #0x0
	bne     branch_21d3cf8
	ldr     r1, [r4, r2]
	mov     r3, #0x53
	ldsb    r0, [r1, r3]
	cmp     r0, #0xc
	bge     branch_21d3cf2
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r1, #0x53
	strb    r0, [r1, #0x0]
	ldr     r2, [r4, r2]
	ldr     r0, [pc, #0x90] @ 0x21d3d78, (=0x4000050)
	ldsb    r2, [r2, r3]
	mov     r1, #0x31
	blx     G2x_SetBlendBrightness_
	b       branch_21d3eec
@ 0x21d3cf2

.thumb
branch_21d3cf2: @ 21d3cf2 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	b       branch_21d3eec
@ 0x21d3cf8

.thumb
branch_21d3cf8: @ 21d3cf8 :thumb
	ldr     r5, [r4, r2]
	mov     r3, #0x53
	ldsb    r0, [r5, r3]
	cmp     r0, #0x0
	ble     branch_21d3d16
	.hword  0x1e80 @ sub r0, r0, #0x2
	add     r5, #0x53
	strb    r0, [r5, #0x0]
	ldr     r2, [r4, r2]
	ldr     r0, [pc, #0x6c] @ 0x21d3d78, (=0x4000050)
	ldsb    r2, [r2, r3]
	mov     r1, #0x31
	blx     G2x_SetBlendBrightness_
	b       branch_21d3eec
@ 0x21d3d16

.thumb
branch_21d3d16: @ 21d3d16 :thumb
	add     r0, r1, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	b       branch_21d3eec
@ 0x21d3d20

.thumb
branch_21d3d20: @ 21d3d20 :thumb
	ldr     r2, [pc, #0x1c] @ 0x21d3d40, (=0x1d28)
	mov     r3, #0x53
	ldr     r5, [r4, r2]
	ldsb    r1, [r5, r3]
	cmp     r1, #0x10
	bge     branch_21d3d7c
	add     r0, r1, #0x2
	add     r5, #0x53
	strb    r0, [r5, #0x0]
	ldr     r2, [r4, r2]
	ldr     r0, [pc, #0x40] @ 0x21d3d78, (=0x4000050)
	ldsb    r2, [r2, r3]
	mov     r1, #0x31
	blx     G2x_SetBlendBrightness_
	b       branch_21d3eec
@ 0x21d3d40

.word 0x1d28 @ 0x21d3d40
.word 0xfffd2000 @ 0x21d3d44
.word 0x21d52dc @ 0x21d3d48
.word 0x1248 @ 0x21d3d4c
.word 0x13d0 @ 0x21d3d50
.word 0x6d2 @ 0x21d3d54
.word 0x136 @ 0x21d3d58
.word 0x6d4 @ 0x21d3d5c
.word 0x6d5 @ 0x21d3d60
.word 0x6d3 @ 0x21d3d64
.word 0x1d6 @ 0x21d3d68
.word 0x6d6 @ 0x21d3d6c
.word 0x1e3 @ 0x21d3d70
.word 0x6d7 @ 0x21d3d74
.word 0x4000050 @ 0x21d3d78
.thumb
branch_21d3d7c: @ 21d3d7c :thumb
	bl      Function_21d34c0
	mov     r0, r4
	bl      Function_21d2f64
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3eec
@ 0x21d3d8e

.thumb
branch_21d3d8e: @ 21d3d8e :thumb
	ldr     r2, [pc, #0x208] @ 0x21d3f98, (=0x1d28)
	mov     r3, #0x53
	ldr     r1, [r4, r2]
	ldsb    r0, [r1, r3]
	cmp     r0, #0x0
	beq     branch_21d3dae
	.hword  0x1e40 @ sub r0, r0, #0x1
	add     r1, #0x53
	strb    r0, [r1, #0x0]
	ldr     r2, [r4, r2]
	ldr     r0, [pc, #0x1f8] @ 0x21d3f9c, (=0x4000050)
	ldsb    r2, [r2, r3]
	mov     r1, #0x31
	blx     G2x_SetBlendBrightness_
	b       branch_21d3eec
@ 0x21d3dae

.thumb
branch_21d3dae: @ 21d3dae :thumb
	mov     r1, #0xaa
	lsl     r1, r1, #4
	mov     r2, #0x1
	str     r2, [r4, r1]
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	add     r1, #0xc
	str     r2, [r4, r1]
	ldr     r1, [pc, #0x1e0] @ 0x21d3fa0, (=0xc28)
	str     r2, [r4, r1]
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	add     r1, #0xc
	str     r2, [r4, r1]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3eec
@ 0x21d3dd2

.thumb
branch_21d3dd2: @ 21d3dd2 :thumb
	mov     r1, #0xa9
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	ldr     r2, [pc, #0x1c8] @ 0x21d3fa4, (=0xccd)
	cmp     r0, r2
	bge     branch_21d3e14
	add     r0, #0x52
	str     r0, [r4, r1]
	mov     r0, r2
	sub     r0, #0xb5
	ldr     r0, [r4, r0]
	sub     r2, #0xb5
	add     r0, #0x52
	str     r0, [r4, r2]
	ldr     r1, [r4, r1]
	mov     r0, #0x25
	lsl     r0, r0, #6
	mov     r2, #0x1
	add     r0, r4, r0
	lsl     r2, r2, #12
	mov     r3, r1
	bl      Function_201736c
	ldr     r0, [pc, #0x1a4] @ 0x21d3fa8, (=0xc18)
	mov     r2, #0x1
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0x1a4] @ 0x21d3fac, (=0xac8)
	lsl     r2, r2, #12
	add     r0, r4, r0
	mov     r3, r1
	bl      Function_201736c
	b       branch_21d3eec
@ 0x21d3e14

.thumb
branch_21d3e14: @ 21d3e14 :thumb
	ldr     r1, [pc, #0x180] @ 0x21d3f98, (=0x1d28)
	mov     r2, #0x12
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      Function_21d46c8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3eec
@ 0x21d3e2a

.thumb
branch_21d3e2a: @ 21d3e2a :thumb
	ldr     r0, [pc, #0x16c] @ 0x21d3f98, (=0x1d28)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x40]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_21d3eec
	ldr     r0, [pc, #0x158] @ 0x21d3f98, (=0x1d28)
	ldr     r0, [r4, r0]
	bl      Function_21d4788
	ldr     r1, [pc, #0x150] @ 0x21d3f98, (=0x1d28)
	mov     r2, #0x13
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      Function_21d46c8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3eec
@ 0x21d3e5a

.thumb
branch_21d3e5a: @ 21d3e5a :thumb
	ldr     r0, [pc, #0x13c] @ 0x21d3f98, (=0x1d28)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x40]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_21d3eec
	mov     r1, #0xa9
	lsl     r1, r1, #4
	ldr     r2, [r4, r1]
	ldr     r0, [pc, #0x13c] @ 0x21d3fb0, (=0x19a)
	cmp     r2, r0
	ble     branch_21d3eaa
	ldr     r0, [pc, #0x12c] @ 0x21d3fa8, (=0xc18)
	sub     r2, #0x52
	str     r2, [r4, r1]
	ldr     r2, [r4, r0]
	sub     r2, #0x52
	str     r2, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r0, #0x25
	lsl     r0, r0, #6
	mov     r2, #0x1
	add     r0, r4, r0
	lsl     r2, r2, #12
	mov     r3, r1
	bl      Function_201736c
	ldr     r0, [pc, #0x110] @ 0x21d3fa8, (=0xc18)
	mov     r2, #0x1
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0x10c] @ 0x21d3fac, (=0xac8)
	lsl     r2, r2, #12
	add     r0, r4, r0
	mov     r3, r1
	bl      Function_201736c
	b       branch_21d3eec
@ 0x21d3eaa

.thumb
branch_21d3eaa: @ 21d3eaa :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x6f
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3eec
@ 0x21d3eca

.thumb
branch_21d3eca: @ 21d3eca :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d3eec
	ldr     r0, [pc, #0xc4] @ 0x21d3f98, (=0x1d28)
	ldr     r0, [r4, r0]
	bl      Function_21d4788
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d3eec
@ 0x21d3ee2

.thumb
branch_21d3ee2: @ 21d3ee2 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	add     sp, #0x44
	str     r0, [r4, #0x4]
	pop     {r4-r7,pc}
@ 0x21d3eec

.thumb
branch_21d3eec: @ 21d3eec :thumb
	ldr     r0, [pc, #0xc4] @ 0x21d3fb4, (=0x684)
	ldr     r7, [pc, #0xc8] @ 0x21d3fb8, (=0x18e4)
	add     r3, r4, r0
	ldr     r0, [pc, #0xc8] @ 0x21d3fbc, (=0x175c)
	ldr     r6, [pc, #0xc8] @ 0x21d3fc0, (=0x1a6c)
	str     r0, [sp, #0x14]
	add     r2, r4, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [pc, #0xc0] @ 0x21d3fc4, (=0x80c)
	add     r2, r4, r7
	add     r3, r4, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [pc, #0xb4] @ 0x21d3fc8, (=0x144c)
	add     r2, r4, r6
	add     r3, r4, r0
	ldmia   r3!, {r0,r1}
	str     r2, [sp, #0xc]
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r3, [pc, #0xac] @ 0x21d3fcc, (=0x1bf4)
	str     r0, [r2, #0x0]
	ldr     r0, [pc, #0xac] @ 0x21d3fd0, (=0x15d4)
	add     r5, r4, r0
	add     r0, r4, r3
	str     r0, [sp, #0x10]
	mov     r12, r0
	ldr     r2, [sp, #0x10]
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r1, [r5, #0x0]
	mov     r0, r2
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x14]
	mov     r1, #0x2
	add     r0, #0x8
	ldr     r0, [r4, r0]
	lsl     r1, r1, #12
	str     r2, [sp, #0x10]
	sub     r2, r0, r1
	ldr     r0, [sp, #0x14]
	add     r0, #0x8
	str     r0, [sp, #0x14]
	str     r2, [r4, r0]
	mov     r0, r7
	add     r0, #0x8
	ldr     r0, [r4, r0]
	add     r7, #0x8
	sub     r0, r0, r1
	str     r0, [r4, r7]
	mov     r0, r6
	add     r0, #0x8
	ldr     r0, [r4, r0]
	add     r6, #0x8
	sub     r0, r0, r1
	str     r0, [r4, r6]
	mov     r0, r3
	add     r0, #0x8
	ldr     r0, [r4, r0]
	add     r3, #0x8
	sub     r0, r0, r1
	str     r0, [r4, r3]
	ldr     r0, [sp, #0xc]
	ldr     r2, [r0, #0x0]
	lsr     r0, r1, #1
	sub     r2, r2, r0
	ldr     r0, [sp, #0xc]
	str     r2, [r0, #0x0]
	mov     r0, r12
	ldr     r2, [r0, #0x0]
	lsr     r0, r1, #1
	sub     r1, r2, r0
	mov     r0, r12
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d3558
	mov     r0, #0x1
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x21d3f96


.align 2


.word 0x1d28 @ 0x21d3f98
.word 0x4000050 @ 0x21d3f9c
.word 0xc28 @ 0x21d3fa0
.word 0xccd @ 0x21d3fa4
.word 0xc18 @ 0x21d3fa8
.word 0xac8 @ 0x21d3fac
.word 0x19a @ 0x21d3fb0
.word 0x684 @ 0x21d3fb4
.word 0x18e4 @ 0x21d3fb8
.word 0x175c @ 0x21d3fbc
.word 0x1a6c @ 0x21d3fc0
.word 0x80c @ 0x21d3fc4
.word 0x144c @ 0x21d3fc8
.word 0x1bf4 @ 0x21d3fcc
.word 0x15d4 @ 0x21d3fd0
.thumb
Function_21d3fd4: @ 21d3fd4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	bne     branch_21d3ffa
	bl      Function_21d3400
	ldr     r0, [pc, #0x24] @ 0x21d4008, (=0x1d28)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	mov     r2, #0x0
	add     r0, #0x54
	mov     r3, r1
	bl      Function_21d4f0c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d4002
@ 0x21d3ffa

.thumb
branch_21d3ffa: @ 21d3ffa :thumb
	bl      free
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4002

.thumb
branch_21d4002: @ 21d4002 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d4006


.align 2


.word 0x1d28 @ 0x21d4008
.thumb
Function_21d400c: @ 21d400c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r5, r1
	mov     r1, #0x0
	mov     r4, r2
	mov     r6, r3
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	blx     _fflt
	mov     r1, r4
	blx     _fsub
	str     r0, [sp, #0x8]
	mov     r0, r5
	blx     _fflt
	mov     r1, r6
	blx     _fsub
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x8]
	mov     r1, r0
	blx     _fmul
	mov     r4, r0
	ldr     r0, [sp, #0xc]
	mov     r1, r0
	blx     _fmul
	mov     r1, r0
	mov     r0, r4
	blx     _fadd
	mov     r1, #0x0
	mov     r4, r0
	blx     Function_20e1108
	ldr     r0, [pc, #0xa0] @ 0x21d4100, (=0x45800000)
	bls     branch_21d4074
	mov     r1, r4
	blx     _fmul
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d4082
@ 0x21d4074

.thumb
branch_21d4074: @ 21d4074 :thumb
	mov     r1, r4
	blx     _fmul
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_21d4082: @ 21d4082 :thumb
	blx     _ffix
	blx     FX_Sqrt
	blx     _fflt
	ldr     r1, [pc, #0x70] @ 0x21d4100, (=0x45800000)
	blx     _fdiv
	ldr     r1, [sp, #0x30]
	mov     r4, r0
	blx     Function_20e11cc
	bcc     branch_21d40ba
	add     r1, sp, #0x18
	mov     r0, #0x1c
	ldsh    r0, [r1, r0]
	blx     _fflt
	mov     r1, r4
	blx     Function_20e1108
	bhi     branch_21d40ba
	mov     r0, #0x0
	mov     r1, r4
	blx     Function_20e1228
	bne     branch_21d40c0
.thumb
branch_21d40ba: @ 21d40ba :thumb
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x21d40c0

.thumb
branch_21d40c0: @ 21d40c0 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x30]
	blx     _fmul
	mov     r1, r4
	blx     _fdiv
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x30]
	blx     _fmul
	mov     r1, r4
	blx     _fdiv
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x0]
	blx     _fadd
	ldr     r1, [sp, #0x28]
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x4]
	blx     _fadd
	ldr     r1, [sp, #0x2c]
	str     r0, [r1, #0x0]
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x21d40fe


.align 2


.word 0x45800000 @ 0x21d4100
.thumb
Function_21d4104: @ 21d4104 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	str     r2, [sp, #0x10]
	mov     r5, r0
	mov     r4, r3
	mov     r3, #0x3
	mov     r6, r1
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x24
	add     r2, sp, #0x20
	lsl     r3, r3, #18
	bl      Function_200d67c
	ldr     r0, [sp, #0x24]
	blx     _fflt
	ldr     r1, [pc, #0xd0] @ 0x21d41f8, (=0x45800000)
	blx     _fdiv
	mov     r7, r0
	ldr     r0, [sp, #0x20]
	blx     _fflt
	ldr     r1, [pc, #0xc4] @ 0x21d41f8, (=0x45800000)
	blx     _fdiv
	mov     r3, r0
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	add     r0, sp, #0x18
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x40]
	str     r4, [sp, #0x8]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	mov     r0, r6
	mov     r2, r7
	bl      Function_21d400c
	str     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_21d41f0
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x0
	blx     Function_20e1108
	ldr     r0, [pc, #0x90] @ 0x21d41f8, (=0x45800000)
	bls     branch_21d417a
	ldr     r1, [sp, #0x1c]
	blx     _fmul
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d4188
@ 0x21d417a

.thumb
branch_21d417a: @ 21d417a :thumb
	ldr     r1, [sp, #0x1c]
	blx     _fmul
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_21d4188: @ 21d4188 :thumb
	blx     _ffix
	mov     r4, r0
	ldr     r0, [sp, #0x18]
	mov     r1, #0x0
	blx     Function_20e1108
	ldr     r0, [pc, #0x60] @ 0x21d41f8, (=0x45800000)
	bls     branch_21d41ac
	ldr     r1, [sp, #0x18]
	blx     _fmul
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d41ba
@ 0x21d41ac

.thumb
branch_21d41ac: @ 21d41ac :thumb
	ldr     r1, [sp, #0x18]
	blx     _fmul
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_21d41ba: @ 21d41ba :thumb
	blx     _ffix
	mov     r6, r0
	ldr     r0, [r5, #0x20]
	mov     r1, #0x5a
	add     r0, #0x8
	lsl     r1, r1, #2
	str     r0, [r5, #0x20]
	blx     _s32_div_f
	lsl     r0, r1, #16
	str     r1, [r5, #0x20]
	lsr     r0, r0, #16
	bl      Function_201d250
	mov     r7, r0
	ldr     r0, [r5, #0x20]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_201d264
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	add     r1, r4, r7
	add     r2, r6, r2
	bl      Function_200d5e8
.thumb
branch_21d41f0: @ 21d41f0 :thumb
	ldr     r0, [sp, #0x14]
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x21d41f6


.align 2


.word 0x45800000 @ 0x21d41f8
.thumb
Function_21d41fc: @ 21d41fc :thumb
	push    {r3,lr}
	mov     r1, #0x20
	str     r1, [sp, #0x0]
	ldr     r3, [pc, #0xc] @ 0x21d4210, (=0x40a00000)
	mov     r1, #0x80
	mov     r2, #0x28
	bl      Function_21d4104
	pop     {r3,pc}
@ 0x21d420e


.align 2


.word 0x40a00000 @ 0x21d4210
.thumb
Function_21d4214: @ 21d4214 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x1c]
	mov     r1, #0x5a
	add     r0, #0x8
	lsl     r1, r1, #2
	str     r0, [r5, #0x1c]
	blx     _s32_div_f
	lsl     r0, r1, #16
	str     r1, [r5, #0x1c]
	lsr     r0, r0, #16
	bl      Function_201d250
	lsl     r6, r0, #6
	ldr     r0, [r5, #0x1c]
	mov     r7, #0x2
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsl     r7, r7, #18
	bl      Function_201d264
	mov     r3, #0x18
	mov     r1, r0
	mul     r1, r3
	lsl     r0, r3, #13
	add     r4, r1, r0
	ldr     r0, [r5, #0x0]
	add     r1, r6, r7
	mov     r2, r4
	lsl     r3, r3, #15
	bl      Function_200d650
	asr     r0, r4, #11
	lsr     r0, r0, #20
	add     r0, r4, r0
	asr     r0, r0, #12
	strh    r0, [r5, #0x14]
	pop     {r3-r7,pc}
@ 0x21d4262


.align 2, 0


.thumb
Function_21d4264: @ 21d4264 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x1c]
	mov     r4, r1
	mov     r1, #0x5a
	add     r0, #0x8
	lsl     r1, r1, #2
	mov     r7, r2
	str     r3, [sp, #0x0]
	str     r0, [r5, #0x1c]
	blx     _s32_div_f
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	str     r1, [r5, #0x1c]
	bl      Function_201d250
	ldr     r1, [sp, #0x0]
	lsl     r4, r4, #12
	mov     r6, r1
	mul     r6, r0
	ldr     r0, [r5, #0x1c]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_201d264
	ldr     r1, [sp, #0x18]
	lsl     r3, r7, #12
	mov     r2, r1
	mul     r2, r0
	add     r2, r3, r2
	mov     r3, #0x3
	ldr     r0, [r5, #0x0]
	add     r1, r4, r6
	lsl     r3, r3, #18
	bl      Function_200d650
	pop     {r3-r7,pc}
@ 0x21d42b0

.thumb
Function_21d42b0: @ 21d42b0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r1, [r4, #0x30]
	ldr     r2, [pc, #0x50] @ 0x21d430c, (=0x21d550e)
	lsl     r3, r1, #2
	mov     r1, #0xa
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x4c] @ 0x21d4310, (=0x21d550c)
	ldsh    r2, [r2, r3]
	ldsh    r1, [r1, r3]
	ldr     r3, [pc, #0x4c] @ 0x21d4314, (=0x40400000)
	bl      Function_21d4104
	cmp     r0, #0x0
	bne     branch_21d42ee
	ldr     r0, [r4, #0x30]
	mov     r1, #0xa
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x30]
	blx     _u32_div_f
	str     r1, [r4, #0x30]
	bl      PRNG
	mov     r1, #0xa
	blx     _u32_div_f
	str     r1, [r4, #0x30]
	mov     r0, #0x3
	str     r0, [r4, #0xc]
.thumb
branch_21d42ee: @ 21d42ee :thumb
	mov     r3, #0x3
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	lsl     r3, r3, #18
	bl      Function_200d67c
	ldr     r1, [sp, #0x4]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	strh    r0, [r4, #0x14]
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d430c

.word 0x21d550e @ 0x21d430c
.word 0x21d550c @ 0x21d4310
.word 0x40400000 @ 0x21d4314
.thumb
Function_21d4318: @ 21d4318 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	mov     r1, #0x5a
	add     r0, #0x8
	lsl     r1, r1, #2
	str     r0, [r4, #0x20]
	blx     _s32_div_f
	str     r1, [r4, #0x20]
	cmp     r1, #0xc
	bge     branch_21d4360
	ldr     r0, [r4, #0x24]
	mov     r1, #0x3
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x24]
	blx     _s32_div_f
	str     r1, [r4, #0x24]
	bl      PRNG
	ldr     r1, [r4, #0x24]
	blx     _s32_div_f
	add     r0, r1, #0x1
	str     r0, [r4, #0x28]
	bl      PRNG
	ldr     r1, [r4, #0x24]
	blx     _s32_div_f
	add     r0, r1, #0x1
	str     r0, [r4, #0x2c]
	mov     r0, #0x2
	str     r0, [r4, #0xc]
.thumb
branch_21d4360: @ 21d4360 :thumb
	mov     r3, #0x3
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	lsl     r3, r3, #18
	bl      Function_200d67c
	ldr     r0, [r4, #0x20]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_201d250
	ldr     r2, [r4, #0x28]
	ldr     r3, [sp, #0x4]
	lsl     r1, r2, #1
	add     r1, r2, r1
	mul     r0, r1
	add     r0, r3, r0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x20]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_201d264
	ldr     r2, [r4, #0x2c]
	ldr     r3, [sp, #0x0]
	lsl     r1, r2, #1
	add     r1, r2, r1
	mul     r0, r1
	add     r2, r3, r0
	str     r2, [sp, #0x0]
	mov     r3, #0x3
	ldr     r0, [r4, #0x0]
	ldr     r1, [sp, #0x4]
	lsl     r3, r3, #18
	bl      Function_200d650
	ldr     r1, [sp, #0x0]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	strh    r0, [r4, #0x14]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d43ba


.align 2, 0


.thumb
Function_21d43bc: @ 21d43bc :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, #0x14
	ldsh    r0, [r4, r0]
	blx     _fflt
	ldr     r1, [pc, #0x38] @ 0x21d4404, (=0x42c80000)
	blx     _fdiv
	mov     r1, r0
	ldr     r0, [pc, #0x34] @ 0x21d4408, (=0x3f4ccccd)
	blx     _fsub
	ldr     r1, [pc, #0x34] @ 0x21d440c, (=0x3e4ccccd)
	mov     r5, r0
	blx     Function_20e1164
	bhi     branch_21d43e2
	ldr     r5, [pc, #0x28] @ 0x21d440c, (=0x3e4ccccd)
branch_21d43e2: @ 21d43e2 :thumb

	ldr     r1, [pc, #0x2c] @ 0x21d4410, (=0x3f19999a)
	mov     r0, r5
	blx     Function_20e10ac
	bcc     branch_21d43ee
	ldr     r5, [pc, #0x20] @ 0x21d4410, (=0x3f19999a)
branch_21d43ee: @ 21d43ee :thumb

	ldr     r0, [r4, #0x0]
	mov     r1, r5
	mov     r2, r5
	bl      Function_200d6e8
	mov     r1, #0x14
	ldsh    r1, [r4, r1]
	ldr     r0, [r4, #0x0]
	bl      Function_200d474
	pop     {r3-r5,pc}
@ 0x21d4404

.word 0x42c80000 @ 0x21d4404
.word 0x3f4ccccd @ 0x21d4408
.word 0x3e4ccccd @ 0x21d440c
.word 0x3f19999a @ 0x21d4410



.thumb
Function_21d4414: @ 21d4414 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0xc]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x14] @ 0x21d4434, (=0x21d5334)
	ldr     r1, [r1, r2]
	blx     r1
	mov     r0, r4
	bl      Function_21d43bc
	ldr     r0, [r4, #0x0]
	bl      Function_200d33c
	pop     {r4,pc}
@ 0x21d4432

.align 2
.word 0x21d5334 @ 0x21d4434



.thumb
Function_21d4438: @ 21d4438 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r1
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d4456
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x80
	mov     r2, #0x24
	mov     r3, #0x20
	bl      Function_21d4264
	b       branch_21d44aa
@ 0x21d4456

.thumb
branch_21d4456: @ 21d4456 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_21d44aa
	ldr     r1, [r4, #0x3c]
	cmp     r1, #0x0
	beq     branch_21d44aa
	add     r1, sp, #0x4
	add     r1, #0x2
	add     r2, sp, #0x4
	bl      Function_200d550
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	add     r3, sp, #0x4
	mov     r1, #0x2
	mov     r2, #0x0
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	ldr     r3, [pc, #0x38] @ 0x21d44b4, (=0x40400000)
	mov     r0, r4
	bl      Function_21d4104
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	bl      Function_200d788
	ldr     r0, [sp, #0xc]
	ldr     r1, [pc, #0x28] @ 0x21d44b8, (=0x3dcccccd)
	blx     Function_20e1108
	bls     branch_21d44a0
	ldr     r0, [sp, #0xc]
	ldr     r1, [pc, #0x20] @ 0x21d44bc, (=0x3b03126f)
	blx     _fsub
	str     r0, [sp, #0xc]
.thumb
branch_21d44a0: @ 21d44a0 :thumb
	ldr     r1, [sp, #0xc]
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	bl      Function_200d6e8
.thumb
branch_21d44aa: @ 21d44aa :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_200d33c
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d44b4

.word 0x40400000 @ 0x21d44b4
.word 0x3dcccccd @ 0x21d44b8
.word 0x3b03126f @ 0x21d44bc
.thumb
Function_21d44c0: @ 21d44c0 :thumb
	push    {r4,r5}
	mov     r2, #0x16
	mov     r3, #0x1
	lsl     r2, r2, #4
	str     r3, [r0, r2]
	mov     r3, r2
	add     r3, #0x24
	str     r1, [r0, r3]
	mov     r3, r2
	mov     r4, #0x0
	add     r3, #0x20
	str     r4, [r0, r3]
	mov     r3, r2
	add     r3, #0x20
	ldr     r3, [r0, r3]
	mov     r4, #0xc
	mov     r5, r3
	mul     r5, r4
	add     r3, r1, r5
	ldr     r5, [r3, #0x4]
	mov     r3, r2
	add     r3, #0x18
	str     r5, [r0, r3]
	lsl     r3, r4, #5
	ldr     r3, [r0, r3]
	mov     r5, r3
	mul     r5, r4
	add     r3, r1, r5
	ldr     r5, [r3, #0x4]
	mov     r3, r2
	add     r3, #0x1c
	str     r5, [r0, r3]
	lsl     r3, r4, #5
	ldr     r3, [r0, r3]
	sub     r2, #0x8
	mul     r4, r3
	ldr     r1, [r1, r4]
	str     r1, [r0, r2]
	pop     {r4,r5}
	bx      lr
@ 0x21d4510

.thumb
Function_21d4510: @ 21d4510 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	add     r0, #0x88
	bl      Function_2017248
	asr     r1, r0, #12
	mov     r5, #0x55
	lsr     r3, r1, #31
	lsl     r2, r1, #30
	sub     r2, r2, r3
	mov     r1, #0x1e
	ror     r2, r1
	lsl     r5, r5, #2
	add     r2, r3, r2
	ldr     r3, [r4, r5]
	ldr     r7, [pc, #0x70] @ 0x21d45a0, (=0x21d5344)
	add     r3, r0, r3
	asr     r0, r3, #12
	lsr     r6, r0, #31
	lsl     r0, r0, #30
	sub     r0, r0, r6
	ror     r0, r1
	add     r1, r6, r0
	add     r0, r5, #0x4
	ldr     r0, [r4, r0]
	.hword  0x1e46 @ sub r6, r0, #0x1
	mov     r0, #0x14
	mul     r0, r6
	mov     r6, r5
	add     r6, #0x8
	ldr     r6, [r4, r6]
	add     r0, r7, r0
	lsl     r6, r6, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0xff
	beq     branch_21d459e
	cmp     r1, r2
	beq     branch_21d4594
	mov     r1, r5
	add     r1, #0x8
	ldr     r1, [r4, r1]
	add     r5, #0x8
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r5]
	lsl     r1, r0, #2
	cmp     r1, #0x0
	ble     branch_21d4580
	lsl     r0, r0, #14
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d458e
@ 0x21d4580

.thumb
branch_21d4580: @ 21d4580 :thumb
	lsl     r0, r0, #14
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_21d458e: @ 21d458e :thumb
	blx     _ffix
	mov     r3, r0
.thumb
branch_21d4594: @ 21d4594 :thumb
	add     r4, #0x88
	mov     r0, r4
	mov     r1, r3
	bl      Function_2017240
.thumb
branch_21d459e: @ 21d459e :thumb
	pop     {r3-r7,pc}
@ 0x21d45a0

.word 0x21d5344 @ 0x21d45a0
.thumb
Function_21d45a4: @ 21d45a4 :thumb
	push    {r3-r6}
	mov     r2, #0x61
	lsl     r2, r2, #2
	mov     r1, r2
	sub     r1, #0xc
	ldr     r3, [r0, r1]
	ldr     r4, [r0, r2]
	cmp     r3, #0xff
	beq     branch_21d45be
	.hword  0x1f11 @ sub r1, r2, #0x4
	ldr     r6, [r0, r1]
	cmp     r6, #0xff
	bne     branch_21d45c0
.thumb
branch_21d45be: @ 21d45be :thumb
	b       branch_21d46c2
@ 0x21d45c0

.thumb
branch_21d45c0: @ 21d45c0 :thumb
	mov     r1, #0xc
	mov     r5, r6
	mul     r5, r1
	ldr     r6, [r4, r5]
	cmp     r6, #0x0
	bne     branch_21d45ea
	mov     r1, #0x0
	sub     r2, #0x24
	str     r1, [r0, r2]
	mov     r2, #0xff
	mov     r1, r2
	add     r1, #0x81
	str     r2, [r0, r1]
	mov     r1, r2
	add     r1, #0x79
	str     r2, [r0, r1]
	mov     r1, r2
	add     r1, #0x7d
	str     r2, [r0, r1]
	pop     {r3-r6}
	bx      lr
@ 0x21d45ea

.thumb
branch_21d45ea: @ 21d45ea :thumb
	mov     r6, r2
	sub     r6, #0x28
	ldr     r6, [r0, r6]
	cmp     r6, #0x4
	blt     branch_21d4674
	mov     r3, r2
	sub     r3, #0xc
	ldr     r3, [r0, r3]
	.hword  0x1e5d @ sub r5, r3, #0x1
	mov     r3, r2
	sub     r3, #0xc
	str     r5, [r0, r3]
	mov     r5, r2
	mov     r3, #0x0
	sub     r5, #0x28
	str     r3, [r0, r5]
	mov     r5, r2
	sub     r5, #0xc
	ldr     r5, [r0, r5]
	cmp     r5, #0x0
	bne     branch_21d46c2
	lsl     r5, r1, #5
	ldr     r5, [r0, r5]
	add     r6, r5, #0x1
	lsl     r5, r1, #5
	str     r6, [r0, r5]
	ldr     r5, [r0, r5]
	mov     r6, r5
	mul     r6, r1
	mov     r5, r2
	ldr     r6, [r4, r6]
	sub     r5, #0x2c
	str     r6, [r0, r5]
	lsl     r5, r1, #5
	ldr     r5, [r0, r5]
	mov     r6, r5
	mul     r6, r1
	add     r5, r4, r6
	ldr     r6, [r5, #0x4]
	mov     r5, r2
	sub     r5, #0xc
	str     r6, [r0, r5]
	lsl     r5, r1, #5
	ldr     r5, [r0, r5]
	mul     r1, r5
	add     r1, r4, r1
	ldr     r4, [r1, #0x4]
	mov     r1, r2
	sub     r1, #0x8
	str     r4, [r0, r1]
	mov     r1, r2
	sub     r1, #0x2c
	ldr     r1, [r0, r1]
	cmp     r1, #0x0
	bne     branch_21d46c2
	sub     r2, #0x24
	str     r3, [r0, r2]
	mov     r2, #0xff
	mov     r1, r2
	add     r1, #0x81
	str     r2, [r0, r1]
	mov     r1, r2
	add     r1, #0x79
	str     r2, [r0, r1]
	mov     r1, r2
	add     r1, #0x7d
	str     r2, [r0, r1]
	pop     {r3-r6}
	bx      lr
@ 0x21d4674

.thumb
branch_21d4674: @ 21d4674 :thumb
	cmp     r6, #0x0
	bne     branch_21d4680
	sub     r2, #0x8
	ldr     r1, [r0, r2]
	cmp     r3, r1
	beq     branch_21d46c2
.thumb
branch_21d4680: @ 21d4680 :thumb
	mov     r1, #0x56
	lsl     r1, r1, #2
	ldr     r1, [r0, r1]
	cmp     r1, #0x9
	bhi     branch_21d46c2
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d4696

Jumppoints_21d4696:
.hword branch_21d46c2 - Jumppoints_21d4696 - 2
.hword branch_21d46aa - Jumppoints_21d4696 - 2
.hword branch_21d46aa - Jumppoints_21d4696 - 2
.hword branch_21d46b8 - Jumppoints_21d4696 - 2
.hword branch_21d46b8 - Jumppoints_21d4696 - 2
.hword branch_21d46c2 - Jumppoints_21d4696 - 2
.hword branch_21d46c2 - Jumppoints_21d4696 - 2
.hword branch_21d46c2 - Jumppoints_21d4696 - 2
.hword branch_21d46c2 - Jumppoints_21d4696 - 2
.hword branch_21d46aa - Jumppoints_21d4696 - 2
.thumb
branch_21d46aa: @ 21d46aa :thumb
	add     r1, r4, r5
	ldr     r2, [r0, #0x5c]
	ldr     r1, [r1, #0x8]
	sub     r1, r2, r1
	str     r1, [r0, #0x5c]
	pop     {r3-r6}
	bx      lr
@ 0x21d46b8

.thumb
branch_21d46b8: @ 21d46b8 :thumb
	add     r1, r4, r5
	ldr     r2, [r0, #0x54]
	ldr     r1, [r1, #0x8]
	add     r1, r2, r1
	str     r1, [r0, #0x54]
.thumb
branch_21d46c2: @ 21d46c2 :thumb
	pop     {r3-r6}
	bx      lr
@ 0x21d46c6


.align 2, 0


.thumb
Function_21d46c8: @ 21d46c8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r4, r1
	ldr     r0, [pc, #0xb0] @ 0x21d4784, (=0x1ff)
	mov     r1, #0x6f
	mov     r7, r2
	bl      Function_2023790
	mov     r6, r0
	ldr     r0, [r5, #0x2c]
	mov     r1, r7
	bl      Function_200b1ec
	str     r0, [sp, #0xc]
	cmp     r7, #0x16
	bne     branch_21d4726
	ldr     r0, [r4, #0x8]
	mov     r1, #0x6f
	bl      Function_2025f04
	mov     r7, r0
	mov     r0, #0x6f
	bl      Function_200b358
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	mov     r1, #0x2
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	str     r0, [sp, #0x10]
	mov     r2, r7
	mov     r3, r1
	bl      Function_200b48c
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	mov     r1, r6
	bl      Function_200c388
	mov     r0, r7
	bl      Function_20237bc
	ldr     r0, [sp, #0x10]
	bl      Function_200b3f0
	b       branch_21d472e
@ 0x21d4726

.thumb
branch_21d4726: @ 21d4726 :thumb
	ldr     r1, [sp, #0xc]
	mov     r0, r6
	bl      Function_2023810
.thumb
branch_21d472e: @ 21d472e :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2027ac0
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x30
	mov     r1, #0xff
	bl      Function_201ada4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, r5
	str     r4, [sp, #0x4]
	add     r0, #0x30
	mov     r1, #0x1
	mov     r2, r6
	str     r3, [sp, #0x8]
	bl      Function_201d738
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x30
	bl      Function_201a954
	mov     r0, r5
	mov     r2, #0x7d
	add     r0, #0x30
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r3, #0xf
	bl      Function_200e060
	ldr     r0, [sp, #0xc]
	bl      Function_20237bc
	mov     r0, r6
	bl      Function_20237bc
	str     r4, [r5, #0x40]
	mov     r0, r4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d4782


.align 2


.word 0x1ff @ 0x21d4784
.thumb
Function_21d4788: @ 21d4788 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x30
	mov     r1, #0x1
	bl      Function_200e084
	add     r4, #0x30
	mov     r0, r4
	bl      Function_201acf4
	pop     {r4,pc}
@ 0x21d479e


.align 2, 0


.thumb
Function_21d47a0: @ 21d47a0 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x80] @ 0x21d4828, (=0x21d546c)
	add     r2, sp, #0xc
	ldmia   r3!, {r0,r1}
	mov     r4, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r3, [pc, #0x78] @ 0x21d482c, (=0x21d5460)
	str     r0, [r2, #0x0]
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, r4
	str     r0, [r2, #0x0]
	mov     r0, r4
	blx     VEC_Normalize
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	lsl     r3, r3, #16
	mov     r0, #0x0
	asr     r1, r1, #16
	asr     r2, r2, #16
	asr     r3, r3, #16
	blx     Function_20af51c
	ldr     r1, [pc, #0x50] @ 0x21d4830, (=0x7fff)
	mov     r0, #0x0
	blx     Function_20af558
	add     r0, sp, #0x0
	mov     r1, r0
	blx     VEC_Normalize
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	lsl     r3, r3, #16
	mov     r0, #0x1
	asr     r1, r1, #16
	asr     r2, r2, #16
	asr     r3, r3, #16
	blx     Function_20af51c
	ldr     r1, [pc, #0x2c] @ 0x21d4834, (=0x66f7)
	mov     r0, #0x1
	blx     Function_20af558
	ldr     r0, [pc, #0x28] @ 0x21d4838, (=0x4210)
	ldr     r1, [pc, #0x28] @ 0x21d483c, (=0x39ce)
	mov     r2, #0x0
	blx     Function_20af56c
	ldr     r0, [pc, #0x24] @ 0x21d4840, (=0x5294)
	ldr     r1, [pc, #0x1c] @ 0x21d4838, (=0x4210)
	mov     r2, #0x0
	blx     Function_20af590
	add     sp, #0x18
	pop     {r4,pc}
@ 0x21d4826


.align 2


.word 0x21d546c @ 0x21d4828
.word 0x21d5460 @ 0x21d482c
.word 0x7fff @ 0x21d4830
.word 0x66f7 @ 0x21d4834
.word 0x4210 @ 0x21d4838
.word 0x39ce @ 0x21d483c
.word 0x5294 @ 0x21d4840
.thumb
Function_21d4844: @ 21d4844 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x28
	mov     r4, r0
	ldr     r1, [r4, #0x18]
	add     r0, sp, #0x0
	bl      Function_2020a94
	add     r0, sp, #0x0
	ldrh    r1, [r0, #0x0]
	strh    r1, [r0, #0x8]
	ldrh    r1, [r0, #0x2]
	strh    r1, [r0, #0xa]
	ldrh    r1, [r0, #0x4]
	strh    r1, [r0, #0xc]
	ldrh    r1, [r0, #0x6]
	strh    r1, [r0, #0xe]
	ldr     r1, [r4, #0x18]
	add     r0, sp, #0x10
	bl      Function_2020abc
	add     r5, sp, #0x10
	add     r3, sp, #0x1c
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	ldr     r1, [r4, #0x18]
	mov     r0, r2
	bl      Function_2020adc
	ldr     r1, [r4, #0x18]
	add     r0, sp, #0x8
	bl      Function_20209d4
	add     sp, #0x28
	pop     {r3-r5,pc}
@ 0x21d488e


.align 2, 0


.thumb
Function_21d4890: @ 21d4890 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	str     r0, [r4, #0x24]
	ldr     r1, [r4, #0xc]
	mov     r0, #0xb6
	mul     r0, r1
	ldr     r1, [r4, #0x8]
	blx     _s32_div_f
	str     r0, [r4, #0x28]
	ldr     r1, [r4, #0x10]
	mov     r0, #0xb6
	mul     r0, r1
	ldr     r1, [r4, #0x8]
	blx     _s32_div_f
	str     r0, [r4, #0x2c]
	ldr     r1, [r4, #0x14]
	mov     r0, #0xb6
	mul     r0, r1
	ldr     r1, [r4, #0x8]
	blx     _s32_div_f
	str     r0, [r4, #0x30]
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x8]
	blx     _s32_div_f
	str     r0, [r4, #0x3c]
	ldr     r0, [r4, #0x1c]
	ldr     r1, [r4, #0x8]
	blx     _s32_div_f
	str     r0, [r4, #0x40]
	ldr     r0, [r4, #0x20]
	ldr     r1, [r4, #0x8]
	blx     _s32_div_f
	str     r0, [r4, #0x44]
	ldr     r1, [r4, #0x0]
	add     r0, sp, #0x0
	bl      Function_2020a94
	add     r2, sp, #0x0
	ldr     r0, [r4, #0xc]
	ldrh    r5, [r2, #0x0]
	mov     r3, r0
	mov     r1, #0xb6
	mul     r3, r1
	mov     r0, r4
	add     r3, r5, r3
	add     r0, #0x4c
	strh    r3, [r0, #0x0]
	ldr     r0, [r4, #0x10]
	ldrh    r5, [r2, #0x2]
	mov     r3, r0
	mul     r3, r1
	mov     r0, r4
	add     r3, r5, r3
	add     r0, #0x4e
	strh    r3, [r0, #0x0]
	ldr     r0, [r4, #0x14]
	ldrh    r2, [r2, #0x4]
	mul     r1, r0
	add     r4, #0x50
	add     r0, r2, r1
	strh    r0, [r4, #0x0]
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d491e


.align 2, 0


.thumb
Function_21d4920: @ 21d4920 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	add     r0, sp, #0x0
	mov     r4, #0x0
	bl      Function_2020a94
	add     r1, sp, #0x0
	ldrh    r0, [r1, #0x0]
	strh    r0, [r1, #0x8]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r1, #0xa]
	ldrh    r0, [r1, #0x4]
	strh    r0, [r1, #0xc]
	ldrh    r0, [r1, #0x6]
	strh    r0, [r1, #0xe]
	ldr     r0, [r5, #0x24]
	cmp     r0, #0x0
	bne     branch_21d494e
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d494e

.thumb
branch_21d494e: @ 21d494e :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x24]
	bne     branch_21d4970
	mov     r0, r5
	add     r0, #0x4c
	ldrh    r0, [r0, #0x0]
	mov     r4, #0x1
	strh    r0, [r1, #0x8]
	mov     r0, r5
	add     r0, #0x4e
	ldrh    r0, [r0, #0x0]
	strh    r0, [r1, #0xa]
	mov     r0, r5
	add     r0, #0x50
	ldrh    r0, [r0, #0x0]
	strh    r0, [r1, #0xc]
	b       branch_21d49a6
@ 0x21d4970

.thumb
branch_21d4970: @ 21d4970 :thumb
	ldrh    r2, [r1, #0x8]
	ldr     r0, [r5, #0x28]
	add     r0, r2, r0
	strh    r0, [r1, #0x8]
	ldrh    r2, [r1, #0xa]
	ldr     r0, [r5, #0x2c]
	add     r0, r2, r0
	strh    r0, [r1, #0xa]
	ldrh    r2, [r1, #0xc]
	ldr     r0, [r5, #0x30]
	add     r0, r2, r0
	strh    r0, [r1, #0xc]
	ldr     r2, [r5, #0x4]
	ldr     r0, [r5, #0x3c]
	ldr     r1, [r2, #0x0]
	add     r0, r1, r0
	str     r0, [r2, #0x0]
	ldr     r2, [r5, #0x4]
	ldr     r0, [r5, #0x40]
	ldr     r1, [r2, #0x4]
	add     r0, r1, r0
	str     r0, [r2, #0x4]
	ldr     r2, [r5, #0x4]
	ldr     r0, [r5, #0x44]
	ldr     r1, [r2, #0x8]
	add     r0, r1, r0
	str     r0, [r2, #0x8]
.thumb
branch_21d49a6: @ 21d49a6 :thumb
	ldr     r1, [r5, #0x0]
	add     r0, sp, #0x8
	bl      Function_20209d4
	mov     r0, r4
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d49b4

.thumb
Function_21d49b4: @ 21d49b4 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x5d
	mov     r5, r0
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	cmp     r2, #0x0
	beq     branch_21d4a82
	mov     r2, r1
	sub     r2, #0x14
	ldr     r2, [r5, r2]
	cmp     r2, #0x0
	beq     branch_21d4a66
	mov     r2, r1
	sub     r2, #0x10
	ldr     r2, [r5, r2]
	mov     r7, #0x0
	cmp     r2, #0x0
	beq     branch_21d49fa
	mov     r2, r1
	sub     r2, #0x1c
	ldr     r2, [r5, r2]
	cmp     r2, #0x0
	bne     branch_21d49ee
	sub     r1, #0x20
	ldr     r1, [r5, r1]
	add     r0, #0x88
	bl      Function_20171cc
	b       branch_21d4a2e
@ 0x21d49ee

.thumb
branch_21d49ee: @ 21d49ee :thumb
	bl      Function_21d45a4
	mov     r0, r5
	bl      Function_21d4510
	b       branch_21d4a2e
@ 0x21d49fa

.thumb
branch_21d49fa: @ 21d49fa :thumb
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_21d4a20
	mov     r4, r5
	mov     r6, r7
	add     r4, #0x88
.thumb
branch_21d4a08: @ 21d4a08 :thumb
	mov     r1, #0x55
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	mov     r0, r4
	bl      Function_2017204
	.hword  0x1c76 @ add r6, r6, #0x1
	mov     r7, r0
	add     r4, #0x14
	cmp     r6, #0x4
	blt     branch_21d4a08
	b       branch_21d4a2e
@ 0x21d4a20

.thumb
branch_21d4a20: @ 21d4a20 :thumb
	sub     r1, #0x20
	mov     r0, r5
	ldr     r1, [r5, r1]
	add     r0, #0x88
	bl      Function_2017204
	mov     r7, r0
.thumb
branch_21d4a2e: @ 21d4a2e :thumb
	mov     r1, #0x5a
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	beq     branch_21d4a44
	sub     r1, #0x14
	mov     r0, r5
	ldr     r1, [r5, r1]
	add     r0, #0x9c
	bl      Function_20171cc
.thumb
branch_21d4a44: @ 21d4a44 :thumb
	mov     r1, #0x5b
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	beq     branch_21d4a5a
	sub     r1, #0x18
	mov     r0, r5
	ldr     r1, [r5, r1]
	add     r0, #0x9c
	bl      Function_2017204
.thumb
branch_21d4a5a: @ 21d4a5a :thumb
	cmp     r7, #0x1
	bne     branch_21d4a66
	mov     r0, #0x16
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
.thumb
branch_21d4a66: @ 21d4a66 :thumb
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     Function_20b275c
	mov     r0, r5
	bl      Function_2017294
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x0
	str     r2, [sp, #0x0]
	blx     Function_20b275c
.thumb
branch_21d4a82: @ 21d4a82 :thumb
	pop     {r3-r7,pc}
@ 0x21d4a84

.thumb
Function_21d4a84: @ 21d4a84 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d4a8c, (=0x2017111)
	add     r0, #0x78
	bx      r3
@ 0x21d4a8a


.align 2


.word 0x2017111 @ 0x21d4a8c
.thumb
Function_21d4a90: @ 21d4a90 :thumb
	mov     r3, #0x14
	add     r1, #0x88
	mul     r3, r0
	add     r0, r1, r3
	ldr     r3, [pc, #0x4] @ 0x21d4aa0, (=0x20171a1)
	mov     r1, r2
	bx      r3
@ 0x21d4a9e


.align 2


.word 0x20171a1 @ 0x21d4aa0
.thumb
Function_21d4aa4: @ 21d4aa4 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r5, r2
	bl      Function_21d4a84
	mov     r4, #0x0
	cmp     r5, #0x0
	ble     branch_21d4ac6
.thumb
branch_21d4ab6: @ 21d4ab6 :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_21d4a90
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r5
	blt     branch_21d4ab6
.thumb
branch_21d4ac6: @ 21d4ac6 :thumb
	pop     {r3-r7,pc}
@ 0x21d4ac8

.thumb
Function_21d4ac8: @ 21d4ac8 :thumb
	push    {r4,lr}
	mov     r3, r1
	mov     r4, r0
	mov     r1, r2
	mov     r2, r3
	add     r0, #0x78
	mov     r3, #0x6f
	bl      Function_20170d8
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x78
	bl      Function_2017258
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      Function_2017350
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      Function_201736c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2017348
	mov     r0, #0x5d
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x21d4b10

.thumb
Function_21d4b10: @ 21d4b10 :thumb
	push    {r4,lr}
	mov     r2, r0
	mov     r4, r1
	add     r2, #0x78
	mov     r0, r4
	mov     r1, r2
	bl      Function_2017258
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      Function_2017350
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      Function_201736c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2017348
	mov     r0, #0x5d
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x21d4b4c

.thumb
Function_21d4b4c: @ 21d4b4c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r6, r0
	mov     r0, #0x6f
	mov     r4, r5
	mov     r1, #0x14
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x20]
	mov     r7, r2
	mul     r6, r1
	mov     r1, r5
	mov     r2, r3
	add     r4, #0x88
	str     r0, [sp, #0x4]
	add     r0, r4, r6
	add     r1, #0x78
	mov     r3, r7
	bl      Function_2017164
	add     r0, r4, r6
	mov     r1, #0x0
	bl      Function_2017240
	mov     r0, r5
	add     r1, r4, r6
	bl      Function_201727c
	mov     r1, #0x1
	mov     r0, #0x55
	lsl     r1, r1, #12
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0xff
	mov     r0, r1
	add     r0, #0x81
	str     r1, [r5, r0]
	mov     r0, r1
	add     r0, #0x79
	str     r1, [r5, r0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d4ba0

.thumb
Function_21d4ba0: @ 21d4ba0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r2
	mov     r4, r0
	mov     r0, #0x6f
	mov     r5, r6
	mov     r2, #0x14
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x1c]
	mul     r4, r2
	add     r5, #0x88
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x18]
	add     r0, r5, r4
	add     r1, #0x78
	bl      Function_2017164
	add     r0, r5, r4
	mov     r1, #0x0
	bl      Function_2017240
	mov     r0, r6
	add     r1, r5, r4
	bl      Function_201727c
	mov     r1, #0x1
	mov     r0, #0x55
	lsl     r1, r1, #12
	lsl     r0, r0, #2
	str     r1, [r6, r0]
	mov     r1, #0xff
	mov     r0, r1
	add     r0, #0x81
	str     r1, [r6, r0]
	mov     r0, r1
	add     r0, #0x79
	str     r1, [r6, r0]
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x21d4bee


.align 2, 0


.thumb
Function_21d4bf0: @ 21d4bf0 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	add     r0, #0xc0
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d4c2a
	mov     r0, r4
	add     r0, #0xc1
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1f
	bcs     branch_21d4c18
	mov     r0, r4
	add     r0, #0xc1
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xc1
	strb    r1, [r0, #0x0]
	b       branch_21d4c54
@ 0x21d4c18

.thumb
branch_21d4c18: @ 21d4c18 :thumb
	mov     r0, r4
	add     r0, #0xc0
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x1
	eor     r1, r0
	mov     r0, r4
	add     r0, #0xc0
	strb    r1, [r0, #0x0]
	b       branch_21d4c54
@ 0x21d4c2a

.thumb
branch_21d4c2a: @ 21d4c2a :thumb
	mov     r0, r4
	add     r0, #0xc1
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d4c44
	mov     r0, r4
	add     r0, #0xc1
	ldrb    r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xc1
	strb    r1, [r0, #0x0]
	b       branch_21d4c54
@ 0x21d4c44

.thumb
branch_21d4c44: @ 21d4c44 :thumb
	mov     r0, r4
	add     r0, #0xc0
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x1
	eor     r1, r0
	mov     r0, r4
	add     r0, #0xc0
	strb    r1, [r0, #0x0]
.thumb
branch_21d4c54: @ 21d4c54 :thumb
	mov     r0, r4
	add     r0, #0xc1
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x1
	mov     r2, #0x0
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x21d4c90, (=0xcccc)
	mov     r3, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x10]
	bl      Function_20039b0
	mov     r0, r4
	add     r0, #0xc1
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x1
	mov     r2, #0x4
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xc] @ 0x21d4c90, (=0xcccc)
	mov     r3, #0x6
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x10]
	bl      Function_20039b0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d4c90

.word 0xcccc @ 0x21d4c90
.thumb
Function_21d4c94: @ 21d4c94 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	ldr     r3, [pc, #0x120] @ 0x21d4dbc, (=0x21d5448)
	mov     r5, r0
	ldrb    r0, [r3, #0x0]
	add     r2, sp, #0x8
	mov     r4, r1
	strb    r0, [r2, #0x6]
	ldrb    r0, [r3, #0x1]
	ldr     r6, [pc, #0x118] @ 0x21d4dc0, (=0x21d5478)
	add     r7, sp, #0x20
	strb    r0, [r2, #0x7]
	ldrb    r0, [r3, #0x2]
	cmp     r4, #0x3
	strb    r0, [r2, #0x8]
	ldmia   r6!, {r0,r1}
	stmia   r7!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r7!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r7!, {r0,r1}
	ldrb    r0, [r3, #0x3]
	strb    r0, [r2, #0x0]
	ldrb    r0, [r3, #0x4]
	strb    r0, [r2, #0x1]
	ldrb    r0, [r3, #0x5]
	strb    r0, [r2, #0x2]
	ldrb    r0, [r3, #0x6]
	strb    r0, [r2, #0x3]
	ldrb    r0, [r3, #0x7]
	strb    r0, [r2, #0x4]
	ldrb    r0, [r3, #0x8]
	ldr     r3, [pc, #0xec] @ 0x21d4dc4, (=0x21d5454)
	strb    r0, [r2, #0x5]
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x14
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	bcc     branch_21d4ce6
	mov     r4, #0x2
.thumb
branch_21d4ce6: @ 21d4ce6 :thumb
	mov     r0, r5
	add     r0, #0xc0
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_21d4d1e
	mov     r0, r5
	add     r0, #0xc2
	ldrb    r1, [r0, #0x0]
	add     r0, r4, #0x1
	lsl     r0, r0, #1
	cmp     r1, r0
	bge     branch_21d4d0e
	mov     r0, r5
	add     r0, #0xc2
	ldrb    r0, [r0, #0x0]
	add     r5, #0xc2
	add     sp, #0x38
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x21d4d0e

.thumb
branch_21d4d0e: @ 21d4d0e :thumb
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0xc0
	strb    r1, [r0, #0x0]
	add     r5, #0xc2
	add     sp, #0x38
	strb    r1, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x21d4d1e

.thumb
branch_21d4d1e: @ 21d4d1e :thumb
	cmp     r0, #0x0
	bne     branch_21d4d52
	mov     r0, r5
	add     r0, #0xc1
	ldrb    r2, [r0, #0x0]
	lsl     r1, r4, #3
	add     r0, sp, #0x24
	ldr     r0, [r0, r1]
	cmp     r2, r0
	bge     branch_21d4d42
	mov     r0, r5
	add     r0, #0xc1
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xc1
	strb    r1, [r0, #0x0]
	b       branch_21d4d80
@ 0x21d4d42

.thumb
branch_21d4d42: @ 21d4d42 :thumb
	mov     r0, r5
	add     r0, #0xc0
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xc0
	strb    r1, [r0, #0x0]
	b       branch_21d4d80
@ 0x21d4d52

.thumb
branch_21d4d52: @ 21d4d52 :thumb
	mov     r0, r5
	add     r0, #0xc1
	ldrb    r2, [r0, #0x0]
	lsl     r1, r4, #3
	add     r0, sp, #0x20
	ldr     r0, [r0, r1]
	cmp     r2, r0
	ble     branch_21d4d72
	mov     r0, r5
	add     r0, #0xc1
	ldrb    r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xc1
	strb    r1, [r0, #0x0]
	b       branch_21d4d80
@ 0x21d4d72

.thumb
branch_21d4d72: @ 21d4d72 :thumb
	mov     r0, r5
	add     r0, #0xc0
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xc0
	strb    r1, [r0, #0x0]
.thumb
branch_21d4d80: @ 21d4d80 :thumb
	mov     r0, r5
	add     r1, sp, #0xc
	add     r0, #0xc1
	add     r1, #0x2
	ldrb    r0, [r0, #0x0]
	ldrb    r1, [r1, r4]
	lsl     r6, r4, #1
	blx     _s32_div_f
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	add     r3, sp, #0x8
	lsl     r1, r4, #2
	add     r0, sp, #0x14
	ldr     r0, [r0, r1]
	add     r2, sp, #0x8
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	add     r3, #0x1
	ldrb    r2, [r2, r6]
	ldrb    r3, [r3, r6]
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	bl      Function_20039b0
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x21d4dba


.align 2


.word 0x21d5448 @ 0x21d4dbc
.word 0x21d5478 @ 0x21d4dc0
.word 0x21d5454 @ 0x21d4dc4
.thumb
Function_21d4dc8: @ 21d4dc8 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d4dd0, (=0x21bf6dc)
	ldr     r3, [pc, #0x8] @ 0x21d4dd4, (=0x201ffe9)
	strb    r0, [r1, #0x5]
	bx      r3
@ 0x21d4dd0

.word 0x21bf6dc @ 0x21d4dd0
.word 0x201ffe9 @ 0x21d4dd4
.thumb
Function_21d4dd8: @ 21d4dd8 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x5f
	strb    r1, [r0, #0x0]
	mov     r2, #0x5f
	ldsb    r2, [r4, r2]
	ldr     r0, [pc, #0x14] @ 0x21d4dfc, (=0x4000050)
	mov     r1, #0x31
	blx     G2x_SetBlendBrightness_
	mov     r2, #0x5f
	ldsb    r2, [r4, r2]
	ldr     r0, [pc, #0xc] @ 0x21d4e00, (=0x4001050)
	mov     r1, #0x33
	blx     G2x_SetBlendBrightness_
	pop     {r4,pc}
@ 0x21d4dfa


.align 2


.word 0x4000050 @ 0x21d4dfc
.word 0x4001050 @ 0x21d4e00
.thumb
Function_21d4e04: @ 21d4e04 :thumb
	ldr     r3, [pc, #0x8] @ 0x21d4e10, (=AddTaskToTaskList2+1)
	mov     r2, #0x1
	mov     r1, r0
	ldr     r0, [pc, #0x8] @ 0x21d4e14, (=0x21d4e19)
	lsl     r2, r2, #10
	bx      r3
@ 0x21d4e10

.word AddTaskToTaskList2+1 @ 0x21d4e10
.word 0x21d4e19 @ 0x21d4e14



.thumb
Function_21d4e18: @ 21d4e18 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x2
	bcc     branch_21d4e2c
	ldr     r0, [r4, #0x0]
	bl      Function_2013da4
	mov     r0, #0x0
	str     r0, [r4, #0x8]
.thumb
branch_21d4e2c: @ 21d4e2c :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2013ddc
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x21d4e3a


.align 2, 0


.thumb
Function_21d4e3c: @ 21d4e3c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_2013be0
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, r4
	bl      Function_21d4e04
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x21d4e56


.align 2, 0


.thumb
Function_21d4e58: @ 21d4e58 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0x0]
	bl      Function_2013d38
	ldr     r0, [r4, #0x0]
	bl      Function_2013d74
	pop     {r4,pc}
@ 0x21d4e70

.thumb
Function_21d4e70: @ 21d4e70 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r4, [sp, #0x34]
	add     r5, sp, #0x10
	cmp     r4, #0x0
	bne     branch_21d4e9c
	ldr     r4, [sp, #0x20]
	str     r4, [sp, #0x0]
	mov     r4, #0x14
	ldsh    r4, [r5, r4]
	str     r4, [sp, #0x4]
	ldr     r4, [sp, #0x28]
	str     r4, [sp, #0x8]
	ldr     r4, [sp, #0x2c]
	str     r4, [sp, #0xc]
	ldr     r4, [sp, #0x30]
	str     r4, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	bl      Function_2013c10
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d4e9c

.thumb
branch_21d4e9c: @ 21d4e9c :thumb
	ldr     r4, [sp, #0x20]
	str     r4, [sp, #0x0]
	mov     r4, #0x14
	ldsh    r4, [r5, r4]
	str     r4, [sp, #0x4]
	ldr     r4, [sp, #0x28]
	str     r4, [sp, #0x8]
	ldr     r4, [sp, #0x2c]
	str     r4, [sp, #0xc]
	ldr     r4, [sp, #0x30]
	str     r4, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	bl      Function_2013ca4
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d4ebc

.thumb
Function_21d4ebc: @ 21d4ebc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x40] @ 0x21d4f04, (=0x21d4f9d)
	ldr     r3, [r5, #0x28]
	mov     r1, #0x38
	mov     r2, #0x5
	bl      Function_200679c
	mov     r6, r0
	bl      Function_201ced0
	mov     r4, r0
	add     r2, r4, #0x4
	mov     r3, #0x5
.thumb
branch_21d4ed8: @ 21d4ed8 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	.hword  0x1e5b @ sub r3, r3, #0x1
	bne     branch_21d4ed8
	ldr     r0, [r5, #0x0]
	str     r0, [r2, #0x0]
	str     r6, [r4, #0x34]
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	blx     Function_20bf00c
	str     r0, [r4, #0x0]
	add     r0, r4, #0x4
	bl      Function_21d503c
	ldr     r0, [pc, #0x10] @ 0x21d4f08, (=0x21d4fdd)
	mov     r1, r4
	mov     r2, #0x0
	bl      AddTaskToTaskList3
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x21d4f04

.word Function_21d4f9c+1 @ =0x21d4f9d, 0x21d4f04
.word 0x21d4fdd @ 0x21d4f08



.thumb
Function_21d4f0c: @ 21d4f0c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, r2
	mov     r2, r3
	blx     GX_SetGraphicsMode
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	blx     GX_SetBankForLCDC
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x4]
	cmp     r0, #0xa
	bgt     branch_21d4f3c
	bge     branch_21d4f60
	cmp     r0, #0x6
	bgt     branch_21d4f7c
	cmp     r0, #0x2
	blt     branch_21d4f7c
	beq     branch_21d4f42
	cmp     r0, #0x6
	beq     branch_21d4f52
	b       branch_21d4f7c
@ 0x21d4f3c

.thumb
branch_21d4f3c: @ 21d4f3c :thumb
	cmp     r0, #0xe
	beq     branch_21d4f6e
	b       branch_21d4f7c
@ 0x21d4f42

.thumb
branch_21d4f42: @ 21d4f42 :thumb
	mov     r1, #0x1a
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #22
	lsl     r2, r2, #16
	blx     MIi_CpuClearFast
	b       branch_21d4f82
@ 0x21d4f52

.thumb
branch_21d4f52: @ 21d4f52 :thumb
	mov     r2, #0x2
	ldr     r1, [pc, #0x38] @ 0x21d4f90, (=0x6820000)
	mov     r0, #0x0
	lsl     r2, r2, #16
	blx     MIi_CpuClearFast
	b       branch_21d4f82
@ 0x21d4f60

.thumb
branch_21d4f60: @ 21d4f60 :thumb
	mov     r2, #0x2
	ldr     r1, [pc, #0x30] @ 0x21d4f94, (=0x6840000)
	mov     r0, #0x0
	lsl     r2, r2, #16
	blx     MIi_CpuClearFast
	b       branch_21d4f82
@ 0x21d4f6e

.thumb
branch_21d4f6e: @ 21d4f6e :thumb
	mov     r2, #0x2
	ldr     r1, [pc, #0x24] @ 0x21d4f98, (=0x6860000)
	mov     r0, #0x0
	lsl     r2, r2, #16
	blx     MIi_CpuClearFast
	b       branch_21d4f82
@ 0x21d4f7c

.thumb
branch_21d4f7c: @ 21d4f7c :thumb
	mov     r0, #0x0
	blx     GX_SetBankForLCDC
.thumb
branch_21d4f82: @ 21d4f82 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x34]
	bl      Function_20067d0
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d4f90

.word 0x6820000 @ 0x21d4f90
.word 0x6840000 @ 0x21d4f94
.word 0x6860000 @ 0x21d4f98
.thumb
Function_21d4f9c: @ 21d4f9c :thumb
	push    {r4-r7}
	ldr     r0, [r1, #0x30]
	cmp     r0, #0x0
	beq     branch_21d4fd4
	ldr     r6, [r1, #0x20]
	ldr     r5, [r1, #0x10]
	ldr     r4, [r1, #0x1c]
	ldr     r3, [r1, #0x18]
	ldr     r2, [r1, #0x14]
	ldr     r0, [r1, #0x24]
	ldr     r1, [r1, #0x28]
	lsl     r5, r5, #20
	lsl     r7, r1, #8
	lsl     r1, r3, #24
	lsl     r3, r2, #29
	mov     r2, #0x2
	lsl     r2, r2, #30
	orr     r3, r2
	lsl     r2, r4, #25
	orr     r2, r3
	orr     r1, r2
	lsl     r6, r6, #16
	orr     r1, r5
	orr     r1, r6
	orr     r1, r7
	orr     r1, r0
	ldr     r0, [pc, #0x4] @ 0x21d4fd8, (=0x4000064)
	str     r1, [r0, #0x0]
.thumb
branch_21d4fd4: @ 21d4fd4 :thumb
	pop     {r4-r7}
	bx      lr
@ 0x21d4fd8

.word 0x4000064 @ 0x21d4fd8
.thumb
Function_21d4fdc: @ 21d4fdc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0xa
	bgt     branch_21d4ffa
	bge     branch_21d5010
	cmp     r0, #0x6
	bgt     branch_21d5020
	cmp     r0, #0x2
	blt     branch_21d5020
	beq     branch_21d5000
	cmp     r0, #0x6
	beq     branch_21d5008
	b       branch_21d5020
@ 0x21d4ffa

.thumb
branch_21d4ffa: @ 21d4ffa :thumb
	cmp     r0, #0xe
	beq     branch_21d5018
	b       branch_21d5020
@ 0x21d5000

.thumb
branch_21d5000: @ 21d5000 :thumb
	mov     r0, #0x1
	blx     GX_SetBankForLCDC
	b       branch_21d5026
@ 0x21d5008

.thumb
branch_21d5008: @ 21d5008 :thumb
	mov     r0, #0x2
	blx     GX_SetBankForLCDC
	b       branch_21d5026
@ 0x21d5010

.thumb
branch_21d5010: @ 21d5010 :thumb
	mov     r0, #0x4
	blx     GX_SetBankForLCDC
	b       branch_21d5026
@ 0x21d5018

.thumb
branch_21d5018: @ 21d5018 :thumb
	mov     r0, #0x8
	blx     GX_SetBankForLCDC
	b       branch_21d5026
@ 0x21d5020

.thumb
branch_21d5020: @ 21d5020 :thumb
	mov     r0, #0x0
	blx     GX_SetBankForLCDC
.thumb
branch_21d5026: @ 21d5026 :thumb
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0xc]
	blx     GX_SetGraphicsMode
	mov     r0, #0x1
	str     r0, [r4, #0x30]
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	pop     {r3-r5,pc}
@ 0x21d503c


.thumb
Function_21d503c: @ 21d503c :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0xa
	bgt     branch_21d5058
	bge     branch_21d507c
	cmp     r0, #0x6
	bgt     branch_21d5096
	cmp     r0, #0x2
	blt     branch_21d5096
	beq     branch_21d505e
	cmp     r0, #0x6
	beq     branch_21d506e
	b       branch_21d5096
@ 0x21d5058

.thumb
branch_21d5058: @ 21d5058 :thumb
	cmp     r0, #0xe
	beq     branch_21d508a
	b       branch_21d5096
@ 0x21d505e

.thumb
branch_21d505e: @ 21d505e :thumb
	mov     r1, #0x1a
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #22
	lsl     r2, r2, #16
	blx     MIi_CpuClearFast
	b       branch_21d5096
@ 0x21d506e

.thumb
branch_21d506e: @ 21d506e :thumb
	mov     r2, #0x2
	ldr     r1, [pc, #0x50] @ 0x21d50c4, (=0x6820000)
	mov     r0, #0x0
	lsl     r2, r2, #16
	blx     MIi_CpuClearFast
	b       branch_21d5096
@ 0x21d507c

.thumb
branch_21d507c: @ 21d507c :thumb
	mov     r2, #0x2
	ldr     r1, [pc, #0x48] @ 0x21d50c8, (=0x6840000)
	mov     r0, #0x0
	lsl     r2, r2, #16
	blx     MIi_CpuClearFast
	b       branch_21d5096
@ 0x21d508a

.thumb
branch_21d508a: @ 21d508a :thumb
	mov     r2, #0x2
	ldr     r1, [pc, #0x3c] @ 0x21d50cc, (=0x6860000)
	mov     r0, #0x0
	lsl     r2, r2, #16
	blx     MIi_CpuClearFast
.thumb
branch_21d5096: @ 21d5096 :thumb
	ldr     r5, [r4, #0x10]
	ldr     r1, [r4, #0x1c]
	ldr     r3, [r4, #0x18]
	ldr     r6, [r4, #0x14]
	ldr     r0, [r4, #0xc]
	mov     r4, #0x2
	lsl     r2, r1, #16
	lsl     r1, r0, #20
	lsl     r5, r5, #29
	lsl     r4, r4, #30
	orr     r4, r5
	lsl     r3, r3, #25
	lsl     r0, r6, #24
	orr     r3, r4
	orr     r0, r3
	orr     r0, r1
	mov     r1, r2
	orr     r1, r0
	mov     r0, #0x10
	orr     r1, r0
	ldr     r0, [pc, #0x10] @ 0x21d50d0, (=0x4000064)
	str     r1, [r0, #0x0]
	pop     {r4-r6,pc}
@ 0x21d50c4

.word 0x6820000 @ 0x21d50c4
.word 0x6840000 @ 0x21d50c8
.word 0x6860000 @ 0x21d50cc
.word 0x4000064 @ 0x21d50d0



Unknown_21d50d4: @ 0x21d50d4
.incbin "./baserom/overlay/overlay_0100.bin", 0x4354, 0x21d5130 - 0x21d50d4


.word Function_21d3620+1 @ =0x21d3621, 0x21d5130
.word Function_21d39e4+1 @ =0x21d39e5, 0x21d5134
.word Function_21d3fd4+1 @ =0x21d3fd5, 0x21d5138
.word Function_21d13e4+1 @ =0x21d13e5, 0x21d513c
.word Function_21d14a8+1 @ =0x21d14a9, 0x21d5140
.word Function_21d16c4+1 @ =0x21d16c5, 0x21d5144
.word Function_21d2340+1 @ =0x21d2341, 0x21d5148
.word Function_21d2428+1 @ =0x21d2429, 0x21d514c
.word Function_21d2c8c+1 @ =0x21d2c8d, 0x21d5150

.incbin "./baserom/overlay/overlay_0100.bin", 0x43d4, 0x21d5334 - 0x21d5154


.word Function_21d41fc+1 @ =0x21d41fd, 0x21d5334
.word Function_21d4214+1 @ =0x21d4215, 0x21d5338
.word Function_21d42b0+1 @ =0x21d42b1, 0x21d533c
.word Function_21d4318+1 @ =0x21d4319, 0x21d5340
@ 0x21d5344


.incbin "./baserom/overlay/overlay_0100.bin", 0x45c4, 0x21d5540 - 0x21d5344


@end 0x21d5540




