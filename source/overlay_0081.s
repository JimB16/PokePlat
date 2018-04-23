
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram81, "ax"


.thumb
.globl Function_81_21d0d80
Function_81_21d0d80: @ 21d0d80 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r2, [r0, #0x0]
	ldr     r1, [pc, #0xc0] @ 0x21d0e60, (=0xffffe0ff)
	ldr     r3, [pc, #0xc0] @ 0x21d0e64, (=0x4001000)
	and     r2, r1
	str     r2, [r0, #0x0]
	ldr     r2, [r3, #0x0]
	add     r0, #0x50
	and     r1, r2
	str     r1, [r3, #0x0]
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	add     r3, #0x50
	strh    r1, [r3, #0x0]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      Function_2017dd4
	mov     r2, #0x2
	mov     r0, #0x3
	mov     r1, #0x2a
	lsl     r2, r2, #16
	bl      Function_2017fc8
	mov     r0, r4
	bl      LoadPtrToOverWorldDataIn18
	mov     r5, r0
	ldr     r1, [pc, #0x94] @ 0x21d0e68, (=0x1068)
	mov     r0, r4
	mov     r2, #0x2a
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	ldr     r2, [pc, #0x88] @ 0x21d0e68, (=0x1068)
	mov     r1, #0x0
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, #0x2a
	bl      Function_2018340
	str     r0, [r4, #0x0]
	str     r5, [r4, #0x4c]
	mov     r0, r5
	bl      LoadVariableAreaAdress_12
	str     r0, [r4, #0x44]
	mov     r0, r5
	bl      LoadTrainerDataAdress
	str     r0, [r4, #0x48]
	mov     r0, #0x0
	mov     r1, #0x2a
	bl      Function_208c120
	mov     r0, #0x0
	mov     r1, #0x2a
	bl      Function_2002bec
	bl      Function_21d0f20
	ldr     r0, [r4, #0x0]
	bl      Function_21d0f40
	mov     r0, r4
	bl      Function_21d1050
	mov     r0, r4
	bl      Function_21d1130
	mov     r0, r4
	bl      Function_21d1610
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d164c
	mov     r0, r4
	bl      Function_21d1434
	ldr     r0, [pc, #0x30] @ 0x21d0e6c, (=0x21d0f01)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	bl      Function_201ffd0_SetDISPCNT_SUB_MODE1
	bl      Function_2039734
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r1, #0x0
	mov     r0, #0x43
	mov     r2, r1
	bl      Function_2004550
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0e60

.word 0xffffe0ff @ 0x21d0e60
.word 0x4001000 @ 0x21d0e64
.word 0x1068 @ 0x21d0e68
.word 0x21d0f01 @ 0x21d0e6c



.thumb
.globl Function_81_21d0e70
Function_81_21d0e70: @ 21d0e70 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      LoadOverlayData1c
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x4
	bhi     branch_21d0ec0
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d0e8a

Jumppoints_21d0e8a:
.hword branch_21d0e94 - Jumppoints_21d0e8a - 2
.hword branch_21d0e9c - Jumppoints_21d0e8a - 2
.hword branch_21d0ea4 - Jumppoints_21d0e8a - 2
.hword branch_21d0eac - Jumppoints_21d0e8a - 2
.hword branch_21d0eb4 - Jumppoints_21d0e8a - 2
.thumb
branch_21d0e94: @ 21d0e94 :thumb
	bl      Function_21d1174
	str     r0, [r4, #0x0]
	b       branch_21d0ec0
@ 0x21d0e9c

.thumb
branch_21d0e9c: @ 21d0e9c :thumb
	bl      Function_21d1188
	str     r0, [r4, #0x0]
	b       branch_21d0ec0
@ 0x21d0ea4

.thumb
branch_21d0ea4: @ 21d0ea4 :thumb
	bl      Function_21d120c
	str     r0, [r4, #0x0]
	b       branch_21d0ec0
@ 0x21d0eac

.thumb
branch_21d0eac: @ 21d0eac :thumb
	bl      Function_21d12e8
	str     r0, [r4, #0x0]
	b       branch_21d0ec0
@ 0x21d0eb4

.thumb
branch_21d0eb4: @ 21d0eb4 :thumb
	bl      Function_21d1358
	cmp     r0, #0x1
	bne     branch_21d0ec0
	mov     r0, #0x1
	pop     {r4,pc}

branch_21d0ec0: @ 21d0ec0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d0ec4


.thumb
.globl Function_81_21d0ec4
Function_81_21d0ec4: @ 21d0ec4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, r4
	bl      Function_21d1634
	ldr     r0, [r4, #0x0]
	bl      Function_21d101c
	mov     r0, r4
	bl      Function_21d115c
	mov     r0, #0x0
	bl      Function_2002c28
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x2a
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0efe


.align 2, 0


.thumb
Function_21d0f00: @ 21d0f00 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	bl      Function_201c2b8
	ldr     r3, [pc, #0xc] @ 0x21d0f18, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x21d0f1c, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r3,pc}
@ 0x21d0f16


.align 2


.word 0x27e0000 @ 0x21d0f18
.word 0x3ff8 @ 0x21d0f1c
.thumb
Function_21d0f20: @ 21d0f20 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d0f3c, (=0x21d33c0)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d0f2a: @ 21d0f2a :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d0f2a
	add     r0, sp, #0x0
	bl      GX_SetBanks
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d0f3c

.word 0x21d33c0 @ 0x21d0f3c
.thumb
Function_21d0f40: @ 21d0f40 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x80
	ldr     r5, [pc, #0xc0] @ 0x21d1008, (=0x21d3340)
	add     r3, sp, #0x70
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      SetGraphicsModes
	ldr     r5, [pc, #0xb0] @ 0x21d100c, (=0x21d336c)
	add     r3, sp, #0x54
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
	ldr     r5, [pc, #0x8c] @ 0x21d1010, (=0x21d3350)
	add     r3, sp, #0x38
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
	ldr     r5, [pc, #0x68] @ 0x21d1014, (=0x21d3388)
	add     r3, sp, #0x1c
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
	ldr     r5, [pc, #0x4c] @ 0x21d1018, (=0x21d33a4)
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x2a
	bl      Function_2019690
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x2a
	bl      Function_2019690
	add     sp, #0x80
	pop     {r3-r5,pc}
@ 0x21d1006


.align 2


.word 0x21d3340 @ 0x21d1008
.word 0x21d336c @ 0x21d100c
.word 0x21d3350 @ 0x21d1010
.word 0x21d3388 @ 0x21d1014
.word 0x21d33a4 @ 0x21d1018
.thumb
Function_21d101c: @ 21d101c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_201ff00
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
	mov     r0, #0x2a
	mov     r1, r4
	bl      Function_2018238
	pop     {r4,pc}
@ 0x21d104e


.align 2, 0
.thumb
Function_21d1050: @ 21d1050 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0

	mov     r0, #FNoteGra_Narc
	mov     r1, #0x2a
	bl      LoadFromNARC_8
	mov     r4, r0
	ldr     r0, [r5, #0x48]
	bl      GetGender
	cmp     r0, #0x0
	bne     branch_21d10ac
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x2a
	str     r0, [sp, #0xc]
	mov     r1, #0x2
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r3, r1
	bl      Function_20070e8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x2a
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r3, #0x2
	bl      Function_200710c
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x2a
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x4
	mov     r3, r2
	bl      Function_2007130
	b       branch_21d10ee
@ 0x21d10ac

.thumb
branch_21d10ac: @ 21d10ac :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x2a
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	mov     r3, #0x2
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x2a
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, #0x2
	bl      Function_200710c
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x2a
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x5
	mov     r3, r2
	bl      Function_2007130
.thumb
branch_21d10ee: @ 21d10ee :thumb
	mov     r0, r4
	bl      Call_FS_CloseFile
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	bl      Function_2019fe4
	mov     r1, r5
	mov     r2, #0x2
	add     r1, #0x5c
	lsl     r2, r2, #10
	blx     MIi_CpuCopy16
	ldr     r0, [r5, #0x0]
	add     r5, #0x5c
	mov     r3, #0x2
	mov     r1, #0x3
	mov     r2, r5
	lsl     r3, r3, #10
	bl      Function_2019574
	mov     r1, #0x1e
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x2a
	bl      LoadFromNARC_PlFont1
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201975c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d1130

.thumb
Function_21d1130: @ 21d1130 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x24] @ 0x21d1158, (=0x16e)
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x2a
	bl      LoadFromNARC_9
	str     r0, [r4, #0x50]
	mov     r0, #0x2a
	bl      Function_200b358
	str     r0, [r4, #0x54]
	mov     r0, #0x80
	mov     r1, #0x2a
	bl      Function_2023790
	str     r0, [r4, #0x58]
	pop     {r4,pc}
@ 0x21d1156


.align 2


.word 0x16e @ 0x21d1158
.thumb
Function_21d115c: @ 21d115c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x50]
	bl      Function_200b190
	ldr     r0, [r4, #0x54]
	bl      Function_200b3f0
	ldr     r0, [r4, #0x58]
	bl      Function_20237bc_FreeMsg
	pop     {r4,pc}
@ 0x21d1174

.thumb
Function_21d1174: @ 21d1174 :thumb
	push    {r3,lr}
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_21d1182
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d1182

.thumb
branch_21d1182: @ 21d1182 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d1186


.align 2, 0


.thumb
Function_21d1188: @ 21d1188 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x78] @ 0x21d1204, (=RAM_21bf67c)
	ldr     r3, [r1, #0x48]
	mov     r1, #0x20
	mov     r2, r3
	tst     r2, r1
	beq     branch_21d11a8
	sub     r1, #0x21
	bl      Function_21d13cc
	cmp     r0, #0x1
	bne     branch_21d11a4
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x21d11a4

.thumb
branch_21d11a4: @ 21d11a4 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d11a8

.thumb
branch_21d11a8: @ 21d11a8 :thumb
	mov     r1, #0x11
	tst     r1, r3
	beq     branch_21d11c0
	mov     r1, #0x1
	bl      Function_21d13cc
	cmp     r0, #0x1
	bne     branch_21d11bc
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x21d11bc

.thumb
branch_21d11bc: @ 21d11bc :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d11c0

.thumb
branch_21d11c0: @ 21d11c0 :thumb
	mov     r2, #0x2
	mov     r1, r3
	tst     r1, r2
	beq     branch_21d11ea
	ldr     r1, [pc, #0x3c] @ 0x21d1208, (=0x105c)
	ldsb    r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_21d11de
	sub     r1, r2, #0x3
	bl      Function_21d13cc
	cmp     r0, #0x1
	bne     branch_21d11ea
	mov     r0, #0x2
	pop     {r3,pc}

branch_21d11de: @ 21d11de :thumb
	mov     r0, #0x1
	mov     r1, #0x2a
	bl      Function_208c120
	mov     r0, #0x4
	pop     {r3,pc}

branch_21d11ea: @ 21d11ea :thumb
	ldr     r0, [pc, #0x18] @ 0x21d1204, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x8
	tst     r0, r1
	beq     branch_21d1200
	mov     r0, #0x1
	mov     r1, #0x2a
	bl      Function_208c120
	mov     r0, #0x4
	pop     {r3,pc}
@ 0x21d1200

.thumb
branch_21d1200: @ 21d1200 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d1204

.word RAM_21bf67c @ 0x21d1204
.word 0x105c @ 0x21d1208
.thumb
Function_21d120c: @ 21d120c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r1, [pc, #0xb4] @ 0x21d12c8, (=0x105e)
	mov     r4, r0
	ldsb    r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_21d1220
	cmp     r1, #0x1
	beq     branch_21d125c
	b       branch_21d12c2
@ 0x21d1220

.thumb
branch_21d1220: @ 21d1220 :thumb
	bl      Function_21d1360
	ldr     r2, [pc, #0xa4] @ 0x21d12cc, (=0x1063)
	mov     r0, r4
	ldrb    r1, [r4, r2]
	.hword  0x1fd2 @ sub r2, r2, #0x7
	ldsb    r2, [r4, r2]
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	bl      Function_21d140c
	ldr     r1, [pc, #0x94] @ 0x21d12d0, (=0x105c)
	ldsb    r0, [r4, r1]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldsb    r2, [r4, r1]
	mov     r1, #0x1
	mov     r0, r4
	eor     r1, r2
	bl      Function_21d164c
	ldr     r0, [pc, #0x78] @ 0x21d12c8, (=0x105e)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	ldr     r0, [pc, #0x7c] @ 0x21d12d4, (=0x691)
	bl      Function_2005748
	b       branch_21d12c2
@ 0x21d125c

.thumb
branch_21d125c: @ 21d125c :thumb
	bl      Function_21d14e0
	cmp     r0, #0x1
	bne     branch_21d12c2
	ldr     r1, [pc, #0x70] @ 0x21d12d8, (=0x105f)
	mov     r3, #0x0
	strb    r3, [r4, r1]
	.hword  0x1e48 @ sub r0, r1, #0x1
	strb    r3, [r4, r0]
	add     r0, r1, #0x1
	ldsb    r2, [r4, r0]
	mov     r0, #0x1
	eor     r2, r0
	add     r0, r1, #0x1
	strb    r2, [r4, r0]
	ldr     r2, [pc, #0x60] @ 0x21d12dc, (=0x85c)
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	.hword  0x1cc9 @ add r1, r1, #0x3
	ldrb    r1, [r4, r1]
	ldr     r0, [r4, #0x0]
	add     r2, r4, r2
	bl      Function_20198c0
	mov     r3, #0x0
	mov     r2, r4
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r1, [pc, #0x40] @ 0x21d12e0, (=0x1061)
	ldr     r0, [r4, #0x0]
	ldrb    r1, [r4, r1]
	add     r2, #0x5c
	bl      Function_20198c0
	ldr     r1, [pc, #0x38] @ 0x21d12e4, (=0x1062)
	ldr     r0, [r4, #0x0]
	ldrb    r1, [r4, r1]
	bl      Function_201c3c0
	ldr     r1, [pc, #0x2c] @ 0x21d12e0, (=0x1061)
	ldr     r0, [r4, #0x0]
	ldrb    r1, [r4, r1]
	bl      Function_201c3c0
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x21d12c2

.thumb
branch_21d12c2: @ 21d12c2 :thumb
	mov     r0, #0x2
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d12c8

.word 0x105e @ 0x21d12c8
.word 0x1063 @ 0x21d12cc
.word 0x105c @ 0x21d12d0
.word 0x691 @ 0x21d12d4
.word 0x105f @ 0x21d12d8
.word 0x85c @ 0x21d12dc
.word 0x1061 @ 0x21d12e0
.word 0x1062 @ 0x21d12e4
.thumb
Function_21d12e8: @ 21d12e8 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x5c] @ 0x21d1348, (=0x105e)
	mov     r4, r0
	ldsb    r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_21d12fa
	cmp     r1, #0x1
	beq     branch_21d1322
	b       branch_21d1342
@ 0x21d12fa

.thumb
branch_21d12fa: @ 21d12fa :thumb
	bl      Function_21d1360
	ldr     r1, [pc, #0x4c] @ 0x21d134c, (=0x105c)
	ldsb    r0, [r4, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldsb    r2, [r4, r1]
	mov     r1, #0x1
	mov     r0, r4
	eor     r1, r2
	bl      Function_21d164c
	ldr     r0, [pc, #0x30] @ 0x21d1348, (=0x105e)
	mov     r1, #0x1
	strb    r1, [r4, r0]
	ldr     r0, [pc, #0x34] @ 0x21d1350, (=0x691)
	bl      Function_2005748
	b       branch_21d1342
@ 0x21d1322

.thumb
branch_21d1322: @ 21d1322 :thumb
	bl      Function_21d156c
	cmp     r0, #0x1
	bne     branch_21d1342
	ldr     r1, [pc, #0x28] @ 0x21d1354, (=0x105f)
	mov     r2, #0x0
	strb    r2, [r4, r1]
	.hword  0x1e48 @ sub r0, r1, #0x1
	strb    r2, [r4, r0]
	add     r0, r1, #0x1
	ldsb    r2, [r4, r0]
	mov     r0, #0x1
	.hword  0x1c49 @ add r1, r1, #0x1
	eor     r2, r0
	strb    r2, [r4, r1]
	pop     {r4,pc}
@ 0x21d1342

.thumb
branch_21d1342: @ 21d1342 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x21d1346


.align 2


.word 0x105e @ 0x21d1348
.word 0x105c @ 0x21d134c
.word 0x691 @ 0x21d1350
.word 0x105f @ 0x21d1354



.thumb
Function_21d1358: @ 21d1358 :thumb
	ldr     r3, [pc, #0x0] @ 0x21d135c, (=Function_200f2ac+1)
	bx      r3
@ 0x21d135c

.word Function_200f2ac+1 @ 0x21d135c



.thumb
Function_21d1360: @ 21d1360 :thumb
	ldr     r2, [pc, #0x38] @ 0x21d139c, (=0x1060)
	ldsb    r1, [r0, r2]
	cmp     r1, #0x0
	bne     branch_21d1382
	mov     r3, #0x0
	add     r1, r2, #0x2
	strb    r3, [r0, r1]
	mov     r3, #0x2
	add     r1, r2, #0x1
	strb    r3, [r0, r1]
	mov     r3, #0x1
	add     r1, r2, #0x4
	strb    r3, [r0, r1]
	mov     r3, #0x3
	add     r1, r2, #0x3
	strb    r3, [r0, r1]
	bx      lr
@ 0x21d1382

.thumb
branch_21d1382: @ 21d1382 :thumb
	mov     r3, #0x1
	add     r1, r2, #0x2
	strb    r3, [r0, r1]
	mov     r3, #0x3
	add     r1, r2, #0x1
	strb    r3, [r0, r1]
	mov     r3, #0x0
	add     r1, r2, #0x4
	strb    r3, [r0, r1]
	mov     r3, #0x2
	add     r1, r2, #0x3
	strb    r3, [r0, r1]
	bx      lr
@ 0x21d139c

.word 0x1060 @ 0x21d139c
.thumb
Function_21d13a0: @ 21d13a0 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x44]
	mov     r3, r1
	add     r1, sp, #0x0
	mov     r2, #0x0
	bl      Function_202c2a4
	ldr     r1, [sp, #0x0]
	lsl     r0, r1, #25
	lsr     r0, r0, #25
	bne     branch_21d13c6
	lsl     r0, r1, #21
	lsr     r0, r0, #28
	bne     branch_21d13c6
	lsl     r0, r1, #13
	lsr     r0, r0, #27
	bne     branch_21d13c6
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d13c6

.thumb
branch_21d13c6: @ 21d13c6 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d13ca


.align 2, 0


.thumb
Function_21d13cc: @ 21d13cc :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	ldr     r1, [pc, #0x34] @ 0x21d1408, (=0x105c)
	bne     branch_21d13ec
	ldsb    r1, [r0, r1]
	cmp     r1, #0x9
	beq     branch_21d1404
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_21d13a0
	cmp     r0, #0x1
	bne     branch_21d1404
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d13ec

.thumb
branch_21d13ec: @ 21d13ec :thumb
	ldsb    r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_21d1404
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_21d13a0
	cmp     r0, #0x1
	bne     branch_21d1404
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d1404

.thumb
branch_21d1404: @ 21d1404 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d1408

.word 0x105c @ 0x21d1408
.thumb
Function_21d140c: @ 21d140c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r2, #0x0
	ldr     r0, [r5, #0x0]
	mov     r3, r2
	mov     r4, r1
	bl      Function_2019e2c
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      Function_201c3c0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d1432


.align 2, 0


.thumb
Function_21d1434: @ 21d1434 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_2019fe4
	ldr     r2, [pc, #0x8] @ 0x21d144c, (=0x85c)
	add     r1, r4, r2
	sub     r2, #0x5c
	blx     MIi_CpuCopy16
	pop     {r4,pc}
@ 0x21d144c

.word 0x85c @ 0x21d144c
.thumb
Function_21d1450: @ 21d1450 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r2, [sp, #0x10]
	mov     r6, r1
	ldr     r1, [sp, #0x10]
	mov     r7, r0
	lsl     r1, r1, #24
	ldr     r0, [r7, #0x0]
	lsr     r1, r1, #24
	mov     r5, r3
	bl      Function_2019fe4
	str     r0, [sp, #0x14]
	ldr     r1, [pc, #0x70] @ 0x21d14dc, (=0x21d33e8)
	lsl     r0, r5, #5
	add     r5, r1, r0
	ldr     r0, [sp, #0x10]
	mov     r4, #0x0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
.thumb
branch_21d147a: @ 21d147a :thumb
	ldrb    r0, [r5, r4]
	cmp     r0, #0xff
	bne     branch_21d14a0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x20
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	lsl     r3, r4, #24
	ldr     r0, [r7, #0x0]
	ldr     r1, [sp, #0x18]
	mov     r2, #0x0
	lsr     r3, r3, #24
	bl      Function_2019cb8
	b       branch_21d14c0
@ 0x21d14a0

.thumb
branch_21d14a0: @ 21d14a0 :thumb
	ldr     r0, [sp, #0x14]
	lsl     r1, r4, #1
	mov     r2, #0x0
	add     r3, r0, r1
.thumb
branch_21d14a8: @ 21d14a8 :thumb
	ldrb    r0, [r5, r4]
	lsl     r1, r2, #5
	add     r0, r1, r0
	lsl     r0, r0, #1
	ldrh    r0, [r6, r0]
	lsl     r1, r1, #1
	strh    r0, [r3, r1]
	add     r0, r2, #0x1
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	cmp     r2, #0x20
	bcc     branch_21d14a8
.thumb
branch_21d14c0: @ 21d14c0 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x20
	bcc     branch_21d147a
	ldr     r1, [sp, #0x10]
	ldr     r0, [r7, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_201c3c0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d14da


.align 2


.word 0x21d33e8 @ 0x21d14dc
.thumb
Function_21d14e0: @ 21d14e0 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x74] @ 0x21d1558, (=0x1062)
	mov     r4, r0
	ldrb    r2, [r4, r3]
	.hword  0x1edb @ sub r3, r3, #0x3
	ldr     r1, [pc, #0x70] @ 0x21d155c, (=0x85c)
	ldsb    r3, [r4, r3]
	add     r1, r4, r1
	bl      Function_21d1450
	ldr     r3, [pc, #0x68] @ 0x21d1560, (=0x1061)
	mov     r1, r4
	ldrb    r2, [r4, r3]
	.hword  0x1e9b @ sub r3, r3, #0x2
	ldsb    r3, [r4, r3]
	mov     r0, r4
	add     r1, #0x5c
	bl      Function_21d1450
	ldr     r2, [pc, #0x58] @ 0x21d1560, (=0x1061)
	mov     r0, r4
	ldrb    r1, [r4, r2]
	.hword  0x1f52 @ sub r2, r2, #0x5
	ldsb    r2, [r4, r2]
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	bl      Function_21d140c
	ldr     r0, [pc, #0x48] @ 0x21d1564, (=0x105f)
	ldsb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	ldsb    r1, [r4, r0]
	cmp     r1, #0x9
	bne     branch_21d1554
	.hword  0x1d40 @ add r0, r0, #0x5
	ldrb    r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2019060
	ldr     r0, [pc, #0x34] @ 0x21d1568, (=0x1063)
	mov     r1, #0x1
	ldrb    r0, [r4, r0]
	bl      Function_2019060
	ldr     r0, [pc, #0x18] @ 0x21d1558, (=0x1062)
	mov     r1, #0x2
	ldrb    r0, [r4, r0]
	bl      Function_2019060
	ldr     r0, [pc, #0x18] @ 0x21d1560, (=0x1061)
	mov     r1, #0x3
	ldrb    r0, [r4, r0]
	bl      Function_2019060
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1554

.thumb
branch_21d1554: @ 21d1554 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1558

.word 0x1062 @ 0x21d1558
.word 0x85c @ 0x21d155c
.word 0x1061 @ 0x21d1560
.word 0x105f @ 0x21d1564
.word 0x1063 @ 0x21d1568
.thumb
Function_21d156c: @ 21d156c :thumb
	push    {r3-r5,lr}
	ldr     r3, [pc, #0x88] @ 0x21d15f8, (=0x1064)
	mov     r4, r0
	ldrb    r2, [r4, r3]
	.hword  0x1f5b @ sub r3, r3, #0x5
	ldsb    r5, [r4, r3]
	mov     r3, #0x8
	ldr     r1, [pc, #0x80] @ 0x21d15fc, (=0x85c)
	sub     r3, r3, r5
	lsl     r3, r3, #16
	add     r1, r4, r1
	lsr     r3, r3, #16
	bl      Function_21d1450
	ldr     r3, [pc, #0x74] @ 0x21d1600, (=0x1063)
	mov     r1, r4
	ldrb    r2, [r4, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	ldsb    r5, [r4, r3]
	mov     r3, #0x8
	mov     r0, r4
	sub     r3, r3, r5
	lsl     r3, r3, #16
	add     r1, #0x5c
	lsr     r3, r3, #16
	bl      Function_21d1450
	ldr     r2, [pc, #0x5c] @ 0x21d1600, (=0x1063)
	mov     r0, r4
	ldrb    r1, [r4, r2]
	.hword  0x1fd2 @ sub r2, r2, #0x7
	ldrb    r2, [r4, r2]
	bl      Function_21d140c
	ldr     r0, [pc, #0x50] @ 0x21d1604, (=0x105f)
	ldsb    r1, [r4, r0]
	cmp     r1, #0x1
	bne     branch_21d15e0
	.hword  0x1d40 @ add r0, r0, #0x5
	ldrb    r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2019060
	ldr     r0, [pc, #0x3c] @ 0x21d1600, (=0x1063)
	mov     r1, #0x1
	ldrb    r0, [r4, r0]
	bl      Function_2019060
	ldr     r0, [pc, #0x38] @ 0x21d1608, (=0x1062)
	mov     r1, #0x2
	ldrb    r0, [r4, r0]
	bl      Function_2019060
	ldr     r0, [pc, #0x34] @ 0x21d160c, (=0x1061)
	mov     r1, #0x3
	ldrb    r0, [r4, r0]
	bl      Function_2019060
.thumb
branch_21d15e0: @ 21d15e0 :thumb
	ldr     r0, [pc, #0x20] @ 0x21d1604, (=0x105f)
	ldsb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	ldsb    r0, [r4, r0]
	cmp     r0, #0x9
	bne     branch_21d15f2
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d15f2

.thumb
branch_21d15f2: @ 21d15f2 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d15f6


.align 2


.word 0x1064 @ 0x21d15f8
.word 0x85c @ 0x21d15fc
.word 0x1063 @ 0x21d1600
.word 0x105f @ 0x21d1604
.word 0x1062 @ 0x21d1608
.word 0x1061 @ 0x21d160c
.thumb
Function_21d1610: @ 21d1610 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r4, [pc, #0x18] @ 0x21d1630, (=0x21d3508)
	mov     r6, #0x0
	add     r5, r7, #0x4
.thumb
branch_21d161a: @ 21d161a :thumb
	ldr     r0, [r7, #0x0]
	mov     r1, r5
	mov     r2, r4
	bl      Function_201a8d4
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	add     r5, #0x10
	cmp     r6, #0x4
	bcc     branch_21d161a
	pop     {r3-r7,pc}
@ 0x21d1630

.word 0x21d3508 @ 0x21d1630
.thumb
Function_21d1634: @ 21d1634 :thumb
	push    {r3-r5,lr}
	mov     r4, #0x0
	add     r5, r0, #0x4
.thumb
branch_21d163a: @ 21d163a :thumb
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x4
	bcc     branch_21d163a
	pop     {r3-r5,pc}
@ 0x21d164a


.align 2, 0


.thumb
Function_21d164c: @ 21d164c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	cmp     r1, #0x0
	bne     branch_21d165c
	mov     r4, r5
	add     r6, r5, #0x4
	add     r4, #0x14
	b       branch_21d1664
@ 0x21d165c

.thumb
branch_21d165c: @ 21d165c :thumb
	mov     r6, r5
	mov     r4, r5
	add     r6, #0x24
	add     r4, #0x34
.thumb
branch_21d1664: @ 21d1664 :thumb
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_21d16b0
	cmp     r0, #0x1
	bne     branch_21d16a2
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d17c8
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d1a90
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d1ad4
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d1c10
.thumb
branch_21d16a2: @ 21d16a2 :thumb
	mov     r0, r6
	bl      Function_201a9a4
	mov     r0, r4
	bl      Function_201a9a4
	pop     {r4-r6,pc}
@ 0x21d16b0

.thumb
Function_21d16b0: @ 21d16b0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x108] @ 0x21d17c0, (=0x105c)
	mov     r5, r0
	ldrb    r3, [r5, r3]
	ldr     r0, [r5, #0x44]
	mov     r7, r1
	str     r2, [sp, #0x10]
	add     r1, sp, #0x14
	mov     r2, #0x0
	bl      Function_202c2a4
	ldr     r1, [sp, #0x14]
	lsl     r0, r1, #25
	lsr     r0, r0, #25
	bne     branch_21d16e2
	lsl     r0, r1, #21
	lsr     r0, r0, #28
	bne     branch_21d16e2
	lsl     r0, r1, #13
	lsr     r0, r0, #27
	bne     branch_21d16e2
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d16e2

.thumb
branch_21d16e2: @ 21d16e2 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x1
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r2, [sp, #0x14]
	mov     r4, r0
	lsl     r2, r2, #21
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	lsr     r2, r2, #28
	bl      Function_200c2e0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r2, [sp, #0x14]
	ldr     r0, [r5, #0x54]
	lsl     r2, r2, #13
	lsr     r2, r2, #27
	mov     r3, #0x2
	bl      Function_200b60c
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r4
	bl      Function_200c388
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x98] @ 0x21d17c4, (=0x10200)
	mov     r3, r1
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x58]
	mov     r0, r7
	bl      Function_201d78c
	mov     r0, #0x0
	ldr     r1, [r5, #0x58]
	mov     r2, r0
	bl      Function_2002d7c
	ldr     r1, [sp, #0x14]
	mov     r4, r0
	lsl     r1, r1, #18
	lsr     r1, r1, #29
	ldr     r0, [r5, #0x50]
	.hword  0x1c89 @ add r1, r1, #0x2
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	mov     r1, #0x0
	add     r4, #0xc
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x64] @ 0x21d17c4, (=0x10200)
	mov     r2, r6
	str     r0, [sp, #0x8]
	mov     r0, r7
	mov     r3, r4
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r5, #0x50]
	mov     r1, #0x0
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	ldr     r0, [sp, #0x14]
	lsr     r0, r0, #19
	bl      GetMapName
	mov     r2, r0
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200b8c8
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r4
	bl      Function_200c388
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x21d17c4, (=0x10200)
	mov     r3, r1
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d17be


.align 2


.word 0x105c @ 0x21d17c0
.word 0x10200 @ 0x21d17c4
.thumb
Function_21d17c8: @ 21d17c8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	ldr     r3, [pc, #0x2bc] @ 0x21d1a8c, (=0x105c)
	mov     r6, r0
	ldrb    r3, [r6, r3]
	ldr     r0, [r6, #0x44]
	mov     r7, r1
	add     r1, sp, #0x4
	mov     r2, #0x1
	bl      Function_202c2a4
	mov     r4, #0x0
	add     r5, sp, #0x4
.thumb
branch_21d17e2: @ 21d17e2 :thumb
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x28
	bls     branch_21d17ea
	b       branch_21d1a7c
@ 0x21d17ea

.thumb
branch_21d17ea: @ 21d17ea :thumb
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d17f6

Jumppoints_21d17f6:
.hword branch_21d1848 - Jumppoints_21d17f6 - 2
.hword branch_21d184c - Jumppoints_21d17f6 - 2
.hword branch_21d185c - Jumppoints_21d17f6 - 2
.hword branch_21d186c - Jumppoints_21d17f6 - 2
.hword branch_21d187c - Jumppoints_21d17f6 - 2
.hword branch_21d188c - Jumppoints_21d17f6 - 2
.hword branch_21d189c - Jumppoints_21d17f6 - 2
.hword branch_21d18ac - Jumppoints_21d17f6 - 2
.hword branch_21d18bc - Jumppoints_21d17f6 - 2
.hword branch_21d18cc - Jumppoints_21d17f6 - 2
.hword branch_21d18dc - Jumppoints_21d17f6 - 2
.hword branch_21d18ec - Jumppoints_21d17f6 - 2
.hword branch_21d18fc - Jumppoints_21d17f6 - 2
.hword branch_21d190c - Jumppoints_21d17f6 - 2
.hword branch_21d191c - Jumppoints_21d17f6 - 2
.hword branch_21d192c - Jumppoints_21d17f6 - 2
.hword branch_21d193c - Jumppoints_21d17f6 - 2
.hword branch_21d194c - Jumppoints_21d17f6 - 2
.hword branch_21d195c - Jumppoints_21d17f6 - 2
.hword branch_21d197c - Jumppoints_21d17f6 - 2
.hword branch_21d198c - Jumppoints_21d17f6 - 2
.hword branch_21d19bc - Jumppoints_21d17f6 - 2
.hword branch_21d19ac - Jumppoints_21d17f6 - 2
.hword branch_21d199c - Jumppoints_21d17f6 - 2
.hword branch_21d196c - Jumppoints_21d17f6 - 2
.hword branch_21d19dc - Jumppoints_21d17f6 - 2
.hword branch_21d19cc - Jumppoints_21d17f6 - 2
.hword branch_21d19ec - Jumppoints_21d17f6 - 2
.hword branch_21d19fc - Jumppoints_21d17f6 - 2
.hword branch_21d1a0c - Jumppoints_21d17f6 - 2
.hword branch_21d1a1c - Jumppoints_21d17f6 - 2
.hword branch_21d1a7c - Jumppoints_21d17f6 - 2
.hword branch_21d1a3c - Jumppoints_21d17f6 - 2
.hword branch_21d1a2c - Jumppoints_21d17f6 - 2
.hword branch_21d1a4c - Jumppoints_21d17f6 - 2
.hword branch_21d1a5c - Jumppoints_21d17f6 - 2
.hword branch_21d1a6c - Jumppoints_21d17f6 - 2
.hword branch_21d1a6c - Jumppoints_21d17f6 - 2
.hword branch_21d1a6c - Jumppoints_21d17f6 - 2
.hword branch_21d1a6c - Jumppoints_21d17f6 - 2
.hword branch_21d1a6c - Jumppoints_21d17f6 - 2
.thumb
branch_21d1848: @ 21d1848 :thumb
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x21d184c

.thumb
branch_21d184c: @ 21d184c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d1e04
	b       branch_21d1a7c
@ 0x21d185c

.thumb
branch_21d185c: @ 21d185c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d1e40
	b       branch_21d1a7c
@ 0x21d186c

.thumb
branch_21d186c: @ 21d186c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d1e7c
	b       branch_21d1a7c
@ 0x21d187c

.thumb
branch_21d187c: @ 21d187c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d1eb8
	b       branch_21d1a7c
@ 0x21d188c

.thumb
branch_21d188c: @ 21d188c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d1ef4
	b       branch_21d1a7c
@ 0x21d189c

.thumb
branch_21d189c: @ 21d189c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d1f30
	b       branch_21d1a7c
@ 0x21d18ac

.thumb
branch_21d18ac: @ 21d18ac :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d1f6c
	b       branch_21d1a7c
@ 0x21d18bc

.thumb
branch_21d18bc: @ 21d18bc :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d1fa8
	b       branch_21d1a7c
@ 0x21d18cc

.thumb
branch_21d18cc: @ 21d18cc :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d1fe4
	b       branch_21d1a7c
@ 0x21d18dc

.thumb
branch_21d18dc: @ 21d18dc :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2038
	b       branch_21d1a7c
@ 0x21d18ec

.thumb
branch_21d18ec: @ 21d18ec :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2098
	b       branch_21d1a7c
@ 0x21d18fc

.thumb
branch_21d18fc: @ 21d18fc :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d20ec
	b       branch_21d1a7c
@ 0x21d190c

.thumb
branch_21d190c: @ 21d190c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2140
	b       branch_21d1a7c
@ 0x21d191c

.thumb
branch_21d191c: @ 21d191c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d219c
	b       branch_21d1a7c
@ 0x21d192c

.thumb
branch_21d192c: @ 21d192c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2208
	b       branch_21d1a7c
@ 0x21d193c

.thumb
branch_21d193c: @ 21d193c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2270
	b       branch_21d1a7c
@ 0x21d194c

.thumb
branch_21d194c: @ 21d194c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d22ac
	b       branch_21d1a7c
@ 0x21d195c

.thumb
branch_21d195c: @ 21d195c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d22e8
	b       branch_21d1a7c
@ 0x21d196c

.thumb
branch_21d196c: @ 21d196c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d233c
	b       branch_21d1a7c
@ 0x21d197c

.thumb
branch_21d197c: @ 21d197c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2398
	b       branch_21d1a7c
@ 0x21d198c

.thumb
branch_21d198c: @ 21d198c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d23f4
	b       branch_21d1a7c
@ 0x21d199c

.thumb
branch_21d199c: @ 21d199c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2450
	b       branch_21d1a7c
@ 0x21d19ac

.thumb
branch_21d19ac: @ 21d19ac :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d24ac
	b       branch_21d1a7c
@ 0x21d19bc

.thumb
branch_21d19bc: @ 21d19bc :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2508
	b       branch_21d1a7c
@ 0x21d19cc

.thumb
branch_21d19cc: @ 21d19cc :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2564
	b       branch_21d1a7c
@ 0x21d19dc

.thumb
branch_21d19dc: @ 21d19dc :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d25c0
	b       branch_21d1a7c
@ 0x21d19ec

.thumb
branch_21d19ec: @ 21d19ec :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d261c
	b       branch_21d1a7c
@ 0x21d19fc

.thumb
branch_21d19fc: @ 21d19fc :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2678
	b       branch_21d1a7c
@ 0x21d1a0c

.thumb
branch_21d1a0c: @ 21d1a0c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d26d4
	b       branch_21d1a7c
@ 0x21d1a1c

.thumb
branch_21d1a1c: @ 21d1a1c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2730
	b       branch_21d1a7c
@ 0x21d1a2c

.thumb
branch_21d1a2c: @ 21d1a2c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d276c
	b       branch_21d1a7c
@ 0x21d1a3c

.thumb
branch_21d1a3c: @ 21d1a3c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d27a8
	b       branch_21d1a7c
@ 0x21d1a4c

.thumb
branch_21d1a4c: @ 21d1a4c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d27e4
	b       branch_21d1a7c
@ 0x21d1a5c

.thumb
branch_21d1a5c: @ 21d1a5c :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2820
	b       branch_21d1a7c
@ 0x21d1a6c

.thumb
branch_21d1a6c: @ 21d1a6c :thumb
	lsl     r3, r4, #24
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d285c
.thumb
branch_21d1a7c: @ 21d1a7c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r4, #0x4
	bcs     branch_21d1a86
	b       branch_21d17e2
@ 0x21d1a86

.thumb
branch_21d1a86: @ 21d1a86 :thumb
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x21d1a8a


.align 2


.word 0x105c @ 0x21d1a8c
.thumb
Function_21d1a90: @ 21d1a90 :thumb
	push    {r3-r5,lr}
	ldr     r3, [pc, #0x3c] @ 0x21d1ad0, (=0x105c)
	mov     r5, r0
	ldrb    r3, [r5, r3]
	ldr     r0, [r5, #0x44]
	mov     r4, r1
	add     r1, sp, #0x0
	mov     r2, #0x2
	bl      Function_202c2a4
	add     r0, sp, #0x0
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1acc
	cmp     r0, #0x1
	beq     branch_21d1ab6
	cmp     r0, #0x2
	beq     branch_21d1ac2
	pop     {r3-r5,pc}
@ 0x21d1ab6

.thumb
branch_21d1ab6: @ 21d1ab6 :thumb
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x0
	bl      Function_21d2908
	pop     {r3-r5,pc}
@ 0x21d1ac2

.thumb
branch_21d1ac2: @ 21d1ac2 :thumb
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x0
	bl      Function_21d29b4
.thumb
branch_21d1acc: @ 21d1acc :thumb
	pop     {r3-r5,pc}
@ 0x21d1ace


.align 2


.word 0x105c @ 0x21d1ad0
.thumb
Function_21d1ad4: @ 21d1ad4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	ldr     r3, [pc, #0x124] @ 0x21d1c00, (=0x105c)
	mov     r4, r0
	ldrb    r3, [r4, r3]
	ldr     r0, [r4, #0x44]
	mov     r7, r1
	add     r1, sp, #0x10
	mov     r2, #0x3
	bl      Function_202c2a4
	add     r0, sp, #0x10
	ldrh    r1, [r0, #0x0]
	lsl     r1, r1, #31
	lsr     r1, r1, #31
	bne     branch_21d1af6
	b       branch_21d1bfa
@ 0x21d1af6

.thumb
branch_21d1af6: @ 21d1af6 :thumb
	ldrh    r0, [r0, #0x2]
	bl      GetMapName
	mov     r2, r0
	ldr     r1, [pc, #0x104] @ 0x21d1c04, (=0x1b1)
	mov     r0, #0x1a
	mov     r3, #0x2a
	bl      Function_200b010_LoadFromNARCCallMsgDecrypt
	mov     r6, r0
	bl      Function_2023c3c
	mov     r5, r0
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     r0, sp, #0x10
	ldrh    r0, [r0, #0x0]
	mov     r1, #TRAINERDATA_CLASS
	lsl     r0, r0, #16
	lsr     r0, r0, #17
	bl      GetNPCTrainerData
	cmp     r0, #0x3f
	bne     branch_21d1b56
	ldr     r0, [r4, #0x50]
	mov     r1, #0x3d
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	ldr     r0, [r4, #0x54]
	ldr     r2, [r4, #0x4c]
	mov     r1, #0x1
	bl      Function_200b4bc
	ldr     r0, [r4, #0x54]
	ldr     r1, [r4, #0x58]
	mov     r2, r6
	bl      Function_200c388
	ldr     r0, [r4, #0x58]
	bl      Function_2023c3c
	add     r5, r5, r0
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	b       branch_21d1b86
@ 0x21d1b56

.thumb
branch_21d1b56: @ 21d1b56 :thumb
	add     r2, sp, #0x10
	ldrh    r2, [r2, #0x0]
	ldr     r1, [pc, #0xac] @ 0x21d1c08, (=0x26a)
	mov     r0, #0x1a
	lsl     r2, r2, #16
	lsr     r2, r2, #17
	mov     r3, #0x2a
	bl      Function_200b010_LoadFromNARCCallMsgDecrypt
	mov     r6, r0
	bl      Function_2023c3c
	add     r5, r5, r0
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     r2, sp, #0x10
	ldrh    r2, [r2, #0x0]
	ldr     r0, [r4, #0x54]
	mov     r1, #0x1
	lsl     r2, r2, #16
	lsr     r2, r2, #17
	bl      Function_200ba08
.thumb
branch_21d1b86: @ 21d1b86 :thumb
	cmp     r5, #0xe
	bhi     branch_21d1b96
	ldr     r0, [r4, #0x50]
	mov     r1, #0x39
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r5, r0
	b       branch_21d1bbe
@ 0x21d1b96

.thumb
branch_21d1b96: @ 21d1b96 :thumb
	cmp     r5, #0x10
	bhi     branch_21d1ba6
	ldr     r0, [r4, #0x50]
	mov     r1, #0x3a
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r5, r0
	b       branch_21d1bbe
@ 0x21d1ba6

.thumb
branch_21d1ba6: @ 21d1ba6 :thumb
	cmp     r5, #0x13
	ldr     r0, [r4, #0x50]
	bhi     branch_21d1bb6
	mov     r1, #0x3b
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r5, r0
	b       branch_21d1bbe
@ 0x21d1bb6

.thumb
branch_21d1bb6: @ 21d1bb6 :thumb
	mov     r1, #0x3c
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r5, r0
.thumb
branch_21d1bbe: @ 21d1bbe :thumb
	add     r0, sp, #0x10
	ldrh    r0, [r0, #0x2]
	bl      GetMapName
	mov     r2, r0
	ldr     r0, [r4, #0x54]
	mov     r1, #0x0
	bl      Function_200b8c8
	ldr     r0, [r4, #0x54]
	ldr     r1, [r4, #0x58]
	mov     r2, r5
	bl      Function_200c388
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x28] @ 0x21d1c0c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r4, #0x58]
	mov     r0, r7
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r5
	bl      Function_20237bc_FreeMsg
.thumb
branch_21d1bfa: @ 21d1bfa :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d1bfe


.align 2


.word 0x105c @ 0x21d1c00
.word 0x1b1 @ 0x21d1c04
.word 0x26a @ 0x21d1c08
.word 0x10200 @ 0x21d1c0c
.thumb
Function_21d1c10: @ 21d1c10 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x78
	ldr     r3, [pc, #0x1e8] @ 0x21d1e00, (=0x105c)
	mov     r6, r0
	ldrb    r3, [r6, r3]
	ldr     r0, [r6, #0x44]
	mov     r7, r1
	add     r1, sp, #0x4
	mov     r2, #0x4
	bl      Function_202c2a4
	mov     r4, #0x0
	add     r5, sp, #0x4
.thumb
branch_21d1c2a: @ 21d1c2a :thumb
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x1d
	bls     branch_21d1c32
	b       branch_21d1df0
@ 0x21d1c32

.thumb
branch_21d1c32: @ 21d1c32 :thumb
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d1c3e

Jumppoints_21d1c3e:
.hword branch_21d1c7a - Jumppoints_21d1c3e - 2
.hword branch_21d1c7e - Jumppoints_21d1c3e - 2
.hword branch_21d1c8e - Jumppoints_21d1c3e - 2
.hword branch_21d1c9e - Jumppoints_21d1c3e - 2
.hword branch_21d1cae - Jumppoints_21d1c3e - 2
.hword branch_21d1cbe - Jumppoints_21d1c3e - 2
.hword branch_21d1cce - Jumppoints_21d1c3e - 2
.hword branch_21d1cde - Jumppoints_21d1c3e - 2
.hword branch_21d1cee - Jumppoints_21d1c3e - 2
.hword branch_21d1cfe - Jumppoints_21d1c3e - 2
.hword branch_21d1d0e - Jumppoints_21d1c3e - 2
.hword branch_21d1d1e - Jumppoints_21d1c3e - 2
.hword branch_21d1d2e - Jumppoints_21d1c3e - 2
.hword branch_21d1d3e - Jumppoints_21d1c3e - 2
.hword branch_21d1d4e - Jumppoints_21d1c3e - 2
.hword branch_21d1d5e - Jumppoints_21d1c3e - 2
.hword branch_21d1d6e - Jumppoints_21d1c3e - 2
.hword branch_21d1d7e - Jumppoints_21d1c3e - 2
.hword branch_21d1d8e - Jumppoints_21d1c3e - 2
.hword branch_21d1d8e - Jumppoints_21d1c3e - 2
.hword branch_21d1d8e - Jumppoints_21d1c3e - 2
.hword branch_21d1d8e - Jumppoints_21d1c3e - 2
.hword branch_21d1da0 - Jumppoints_21d1c3e - 2
.hword branch_21d1db0 - Jumppoints_21d1c3e - 2
.hword branch_21d1dc0 - Jumppoints_21d1c3e - 2
.hword branch_21d1dd0 - Jumppoints_21d1c3e - 2
.hword branch_21d1dd0 - Jumppoints_21d1c3e - 2
.hword branch_21d1dd0 - Jumppoints_21d1c3e - 2
.hword branch_21d1dd0 - Jumppoints_21d1c3e - 2
.hword branch_21d1de2 - Jumppoints_21d1c3e - 2
.thumb
branch_21d1c7a: @ 21d1c7a :thumb
	add     sp, #0x78
	pop     {r3-r7,pc}
@ 0x21d1c7e

.thumb
branch_21d1c7e: @ 21d1c7e :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2a9c
	b       branch_21d1df0
@ 0x21d1c8e

.thumb
branch_21d1c8e: @ 21d1c8e :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2b20
	b       branch_21d1df0
@ 0x21d1c9e

.thumb
branch_21d1c9e: @ 21d1c9e :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2ba4
	b       branch_21d1df0
@ 0x21d1cae

.thumb
branch_21d1cae: @ 21d1cae :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2c38
	b       branch_21d1df0
@ 0x21d1cbe

.thumb
branch_21d1cbe: @ 21d1cbe :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2cbc
	b       branch_21d1df0
@ 0x21d1cce

.thumb
branch_21d1cce: @ 21d1cce :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2d50
	b       branch_21d1df0
@ 0x21d1cde

.thumb
branch_21d1cde: @ 21d1cde :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2dac
	b       branch_21d1df0
@ 0x21d1cee

.thumb
branch_21d1cee: @ 21d1cee :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2e18
	b       branch_21d1df0
@ 0x21d1cfe

.thumb
branch_21d1cfe: @ 21d1cfe :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2e54
	b       branch_21d1df0
@ 0x21d1d0e

.thumb
branch_21d1d0e: @ 21d1d0e :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2eb0
	b       branch_21d1df0
@ 0x21d1d1e

.thumb
branch_21d1d1e: @ 21d1d1e :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2eec
	b       branch_21d1df0
@ 0x21d1d2e

.thumb
branch_21d1d2e: @ 21d1d2e :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2f70
	b       branch_21d1df0
@ 0x21d1d3e

.thumb
branch_21d1d3e: @ 21d1d3e :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d2fac
	b       branch_21d1df0
@ 0x21d1d4e

.thumb
branch_21d1d4e: @ 21d1d4e :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d300c
	b       branch_21d1df0
@ 0x21d1d5e

.thumb
branch_21d1d5e: @ 21d1d5e :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d3048
	b       branch_21d1df0
@ 0x21d1d6e

.thumb
branch_21d1d6e: @ 21d1d6e :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d30b4
	b       branch_21d1df0
@ 0x21d1d7e

.thumb
branch_21d1d7e: @ 21d1d7e :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d30f0
	b       branch_21d1df0
@ 0x21d1d8e

.thumb
branch_21d1d8e: @ 21d1d8e :thumb
	lsl     r3, r4, #24
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d312c
	b       branch_21d1df0
@ 0x21d1da0

.thumb
branch_21d1da0: @ 21d1da0 :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d3190
	b       branch_21d1df0
@ 0x21d1db0

.thumb
branch_21d1db0: @ 21d1db0 :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d31ec
	b       branch_21d1df0
@ 0x21d1dc0

.thumb
branch_21d1dc0: @ 21d1dc0 :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d3248
	b       branch_21d1df0
@ 0x21d1dd0

.thumb
branch_21d1dd0: @ 21d1dd0 :thumb
	lsl     r3, r4, #24
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d32a0
	b       branch_21d1df0
@ 0x21d1de2

.thumb
branch_21d1de2: @ 21d1de2 :thumb
	lsl     r3, r4, #24
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	lsr     r3, r3, #24
	bl      Function_21d3304
.thumb
branch_21d1df0: @ 21d1df0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x3a
	cmp     r4, #0x2
	bcs     branch_21d1dfa
	b       branch_21d1c2a
@ 0x21d1dfa

.thumb
branch_21d1dfa: @ 21d1dfa :thumb
	add     sp, #0x78
	pop     {r3-r7,pc}
@ 0x21d1dfe


.align 2


.word 0x105c @ 0x21d1e00
.thumb
Function_21d1e04: @ 21d1e04 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0x9
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d1e3c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d1e3c

.word 0x10200 @ 0x21d1e3c
.thumb
Function_21d1e40: @ 21d1e40 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0xa
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d1e78, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d1e78

.word 0x10200 @ 0x21d1e78
.thumb
Function_21d1e7c: @ 21d1e7c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0xb
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d1eb4, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d1eb4

.word 0x10200 @ 0x21d1eb4
.thumb
Function_21d1eb8: @ 21d1eb8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0xc
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d1ef0, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d1ef0

.word 0x10200 @ 0x21d1ef0
.thumb
Function_21d1ef4: @ 21d1ef4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0xd
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d1f2c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d1f2c

.word 0x10200 @ 0x21d1f2c
.thumb
Function_21d1f30: @ 21d1f30 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0xe
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d1f68, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d1f68

.word 0x10200 @ 0x21d1f68
.thumb
Function_21d1f6c: @ 21d1f6c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0xf
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d1fa4, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d1fa4

.word 0x10200 @ 0x21d1fa4
.thumb
Function_21d1fa8: @ 21d1fa8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0x10
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d1fe0, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d1fe0

.word 0x10200 @ 0x21d1fe0
.thumb
Function_21d1fe4: @ 21d1fe4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x11
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldrh    r2, [r4, #0x2]
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200bd60
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d2034, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2034

.word 0x10200 @ 0x21d2034
.thumb
Function_21d2038: @ 21d2038 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x12
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldrh    r2, [r4, #0x2]
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200bd60
	ldrh    r2, [r4, #0x4]
	ldr     r0, [r5, #0x54]
	mov     r1, #0x1
	bl      Function_200ba08
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d2094, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2092


.align 2


.word 0x10200 @ 0x21d2094
.thumb
Function_21d2098: @ 21d2098 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x13
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldrh    r2, [r4, #0x4]
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200ba08
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d20e8, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d20e8

.word 0x10200 @ 0x21d20e8
.thumb
Function_21d20ec: @ 21d20ec :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x14
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldrh    r2, [r4, #0x4]
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200ba08
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d213c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d213c

.word 0x10200 @ 0x21d213c
.thumb
Function_21d2140: @ 21d2140 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x15
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldrh    r0, [r4, #0x2]
	bl      GetMapName
	mov     r2, r0
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200b8c8
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d2198, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2196


.align 2


.word 0x10200 @ 0x21d2198
.thumb
Function_21d219c: @ 21d219c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	ldrh    r4, [r2, #0x2]
	mov     r5, r0
	mov     r6, r3
	str     r1, [sp, #0x10]
	cmp     r4, #0x2f
	beq     branch_21d21b4
	cmp     r4, #0x40
	beq     branch_21d21b4
	cmp     r4, #0x31
	bne     branch_21d21c0
.thumb
branch_21d21b4: @ 21d21b4 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x17
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	b       branch_21d21ca
@ 0x21d21c0

.thumb
branch_21d21c0: @ 21d21c0 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x16
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
.thumb
branch_21d21ca: @ 21d21ca :thumb
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_200b8c8
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d2204, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2204

.word 0x10200 @ 0x21d2204
.thumb
Function_21d2208: @ 21d2208 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldrh    r0, [r2, #0x2]
	mov     r7, r1
	mov     r4, r3
	str     r0, [sp, #0x10]
	bl      Function_202c6a4
	cmp     r0, #0x0
	ldr     r0, [r5, #0x50]
	bne     branch_21d2228
	mov     r1, #0x17
	bl      Function_200b1ec_CallMsgDecrypt
	b       branch_21d222e
@ 0x21d2228

.thumb
branch_21d2228: @ 21d2228 :thumb
	mov     r1, #0x18
	bl      Function_200b1ec_CallMsgDecrypt
.thumb
branch_21d222e: @ 21d222e :thumb
	mov     r6, r0
	ldr     r0, [r5, #0x54]
	ldr     r2, [sp, #0x10]
	mov     r1, #0x0
	bl      Function_200b8c8
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r6
	bl      Function_200c388
	lsl     r0, r4, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d226c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x58]
	mov     r0, r7
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d226a


.align 2


.word 0x10200 @ 0x21d226c
.thumb
Function_21d2270: @ 21d2270 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0x1e
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d22a8, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d22a8

.word 0x10200 @ 0x21d22a8
.thumb
Function_21d22ac: @ 21d22ac :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0x1f
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d22e4, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d22e4

.word 0x10200 @ 0x21d22e4
.thumb
Function_21d22e8: @ 21d22e8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x22
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldrh    r2, [r4, #0x6]
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200b70c
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d2338, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2338

.word 0x10200 @ 0x21d2338
.thumb
Function_21d233c: @ 21d233c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x28
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldrh    r0, [r4, #0x2]
	bl      GetMapName
	mov     r2, r0
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200b8c8
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d2394, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2392


.align 2


.word 0x10200 @ 0x21d2394
.thumb
Function_21d2398: @ 21d2398 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x23
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldrh    r0, [r4, #0x2]
	bl      GetMapName
	mov     r2, r0
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200b8c8
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d23f0, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d23ee


.align 2


.word 0x10200 @ 0x21d23f0
.thumb
Function_21d23f4: @ 21d23f4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x24
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldrh    r0, [r4, #0x2]
	bl      GetMapName
	mov     r2, r0
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200b8c8
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d244c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d244a


.align 2


.word 0x10200 @ 0x21d244c
.thumb
Function_21d2450: @ 21d2450 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x2b
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldrh    r0, [r4, #0x2]
	bl      GetMapName
	mov     r2, r0
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200b8c8
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d24a8, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d24a6


.align 2


.word 0x10200 @ 0x21d24a8
.thumb
Function_21d24ac: @ 21d24ac :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x26
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldrh    r0, [r4, #0x2]
	bl      GetMapName
	mov     r2, r0
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200b8c8
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d2504, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2502


.align 2


.word 0x10200 @ 0x21d2504
.thumb
Function_21d2508: @ 21d2508 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x25
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldrh    r0, [r4, #0x2]
	bl      GetMapName
	mov     r2, r0
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200b8c8
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d2560, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d255e


.align 2


.word 0x10200 @ 0x21d2560
.thumb
Function_21d2564: @ 21d2564 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x2a
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldrh    r0, [r4, #0x2]
	bl      GetMapName
	mov     r2, r0
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200b8c8
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d25bc, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d25ba


.align 2


.word 0x10200 @ 0x21d25bc
.thumb
Function_21d25c0: @ 21d25c0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x29
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldrh    r0, [r4, #0x2]
	bl      GetMapName
	mov     r2, r0
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200b8c8
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d2618, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2616


.align 2


.word 0x10200 @ 0x21d2618
.thumb
Function_21d261c: @ 21d261c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x27
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldrh    r0, [r4, #0x2]
	bl      GetMapName
	mov     r2, r0
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200b8c8
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d2674, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2672


.align 2


.word 0x10200 @ 0x21d2674
.thumb
Function_21d2678: @ 21d2678 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x2e
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldrh    r0, [r4, #0x2]
	bl      GetMapName
	mov     r2, r0
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200b8c8
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d26d0, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d26ce


.align 2


.word 0x10200 @ 0x21d26d0
.thumb
Function_21d26d4: @ 21d26d4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x2c
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldrh    r0, [r4, #0x2]
	bl      GetMapName
	mov     r2, r0
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      Function_200b8c8
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d272c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d272a


.align 2


.word 0x10200 @ 0x21d272c
.thumb
Function_21d2730: @ 21d2730 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0x2d
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d2768, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d2768

.word 0x10200 @ 0x21d2768
.thumb
Function_21d276c: @ 21d276c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0x2f
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d27a4, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d27a4

.word 0x10200 @ 0x21d27a4
.thumb
Function_21d27a8: @ 21d27a8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0x30
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d27e0, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d27e0

.word 0x10200 @ 0x21d27e0
.thumb
Function_21d27e4: @ 21d27e4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0x20
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d281c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d281c

.word 0x10200 @ 0x21d281c
.thumb
Function_21d2820: @ 21d2820 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0x21
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d2858, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d2858

.word 0x10200 @ 0x21d2858
.thumb
Function_21d285c: @ 21d285c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r1
	ldr     r1, [sp, #0x20]
	mov     r4, r3
	sub     r1, #0x24
	cmp     r1, #0x4
	bhi     branch_21d2892
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d2878

Jumppoints_21d2878:
.hword branch_21d2882 - Jumppoints_21d2878 - 2
.hword branch_21d2886 - Jumppoints_21d2878 - 2
.hword branch_21d288a - Jumppoints_21d2878 - 2
.hword branch_21d288e - Jumppoints_21d2878 - 2
.hword branch_21d2892 - Jumppoints_21d2878 - 2
.thumb
branch_21d2882: @ 21d2882 :thumb
	mov     r1, #0x19
	b       branch_21d2894
@ 0x21d2886

.thumb
branch_21d2886: @ 21d2886 :thumb
	mov     r1, #0x1a
	b       branch_21d2894
@ 0x21d288a

.thumb
branch_21d288a: @ 21d288a :thumb
	mov     r1, #0x1b
	b       branch_21d2894
@ 0x21d288e

.thumb
branch_21d288e: @ 21d288e :thumb
	mov     r1, #0x1c
	b       branch_21d2894
@ 0x21d2892

.thumb
branch_21d2892: @ 21d2892 :thumb
	mov     r1, #0x1d
.thumb
branch_21d2894: @ 21d2894 :thumb
	ldr     r0, [r0, #0x50]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r5, r0
	lsl     r0, r4, #4
	add     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d28c4, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r5
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r5
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d28c2


.align 2


.word 0x10200 @ 0x21d28c4
.thumb
Function_21d28c8: @ 21d28c8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r2
	str     r3, [sp, #0xc]
	mov     r0, #0x2a
	mov     r7, r1
	bl      AllocPkmnData
	str     r4, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r6, r0
	mov     r1, r7
	mov     r2, #0x1
	mov     r3, #0x20
	bl      Function_2074088
	mov     r0, r6
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [r5, #0x54]
	ldr     r1, [sp, #0xc]
	bl      Function_200b538
	mov     r0, r6
	bl      free
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d2908

.thumb
Function_21d2908: @ 21d2908 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r2
	mov     r5, r0
	ldrb    r0, [r4, #0x1]
	mov     r7, r1
	lsl     r1, r0, #30
	lsr     r1, r1, #30
	beq     branch_21d2920
	cmp     r1, #0x1
	beq     branch_21d292c
	b       branch_21d2938
@ 0x21d2920

.thumb
branch_21d2920: @ 21d2920 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x31
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	b       branch_21d2962
@ 0x21d292c

.thumb
branch_21d292c: @ 21d292c :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x32
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	b       branch_21d2962
@ 0x21d2938

.thumb
branch_21d2938: @ 21d2938 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #30
	bne     branch_21d294a
	ldr     r0, [r5, #0x50]
	mov     r1, #0x33
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	b       branch_21d2962
@ 0x21d294a

.thumb
branch_21d294a: @ 21d294a :thumb
	cmp     r0, #0x1
	ldr     r0, [r5, #0x50]
	bne     branch_21d295a
	mov     r1, #0x34
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	b       branch_21d2962
@ 0x21d295a

.thumb
branch_21d295a: @ 21d295a :thumb
	mov     r1, #0x31
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
.thumb
branch_21d2962: @ 21d2962 :thumb
	ldrb    r2, [r4, #0x1]
	ldrh    r1, [r4, #0x2]
	mov     r0, r5
	lsl     r2, r2, #24
	lsr     r2, r2, #30
	mov     r3, #0x0
	bl      Function_21d28c8
	ldrb    r2, [r4, #0x1]
	ldr     r0, [r5, #0x54]
	mov     r1, #0x1
	lsl     r2, r2, #26
	lsr     r2, r2, #28
	bl      Function_200bd98
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r6
	bl      Function_200c388
	mov     r0, #0x50
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d29b0, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x58]
	mov     r0, r7
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d29ae


.align 2


.word 0x10200 @ 0x21d29b0
.thumb
Function_21d29b4: @ 21d29b4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r2
	mov     r5, r0
	ldrb    r0, [r4, #0x1]
	mov     r7, r1
	lsl     r1, r0, #30
	lsr     r1, r1, #30
	beq     branch_21d29cc
	cmp     r1, #0x1
	beq     branch_21d29d8
	b       branch_21d29e4
@ 0x21d29cc

.thumb
branch_21d29cc: @ 21d29cc :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x35
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	b       branch_21d2a0e
@ 0x21d29d8

.thumb
branch_21d29d8: @ 21d29d8 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x36
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	b       branch_21d2a0e
@ 0x21d29e4

.thumb
branch_21d29e4: @ 21d29e4 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #30
	bne     branch_21d29f6
	ldr     r0, [r5, #0x50]
	mov     r1, #0x37
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	b       branch_21d2a0e
@ 0x21d29f6

.thumb
branch_21d29f6: @ 21d29f6 :thumb
	cmp     r0, #0x1
	ldr     r0, [r5, #0x50]
	bne     branch_21d2a06
	mov     r1, #0x38
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	b       branch_21d2a0e
@ 0x21d2a06

.thumb
branch_21d2a06: @ 21d2a06 :thumb
	mov     r1, #0x35
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
.thumb
branch_21d2a0e: @ 21d2a0e :thumb
	ldrb    r2, [r4, #0x1]
	ldrh    r1, [r4, #0x2]
	mov     r0, r5
	lsl     r2, r2, #24
	lsr     r2, r2, #30
	mov     r3, #0x0
	bl      Function_21d28c8
	ldrb    r2, [r4, #0x1]
	ldr     r0, [r5, #0x54]
	mov     r1, #0x1
	lsl     r2, r2, #26
	lsr     r2, r2, #28
	bl      Function_200bd98
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r6
	bl      Function_200c388
	mov     r0, #0x50
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d2a5c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x58]
	mov     r0, r7
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d2a5a


.align 2


.word 0x10200 @ 0x21d2a5c
.thumb
Function_21d2a60: @ 21d2a60 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x20
	mov     r1, #0x2a
	mov     r7, r2
	str     r3, [sp, #0x8]
	bl      Function_2023790
	mov     r1, r6
	mov     r4, r0
	bl      Function_2023d28
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x54]
	ldr     r1, [sp, #0x8]
	mov     r2, r4
	mov     r3, r7
	bl      Function_200b48c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d2a9a


.align 2, 0


.thumb
Function_21d2a9c: @ 21d2a9c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r2
	mov     r5, r0
	ldrb    r0, [r4, #0x1]
	str     r1, [sp, #0x10]
	mov     r6, r3
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	beq     branch_21d2ab8
	cmp     r0, #0x1
	beq     branch_21d2ac4
	cmp     r0, #0x2
	b       branch_21d2ad0
@ 0x21d2ab8

.thumb
branch_21d2ab8: @ 21d2ab8 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x3e
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	b       branch_21d2ada
@ 0x21d2ac4

.thumb
branch_21d2ac4: @ 21d2ac4 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x3f
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	b       branch_21d2ada
@ 0x21d2ad0

.thumb
branch_21d2ad0: @ 21d2ad0 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x40
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
.thumb
branch_21d2ada: @ 21d2ada :thumb
	ldrb    r2, [r4, #0x1]
	mov     r0, r5
	add     r1, r4, #0x2
	lsl     r2, r2, #27
	lsr     r2, r2, #31
	mov     r3, #0x0
	bl      Function_21d2a60
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d2b1c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2b1a


.align 2


.word 0x10200 @ 0x21d2b1c
.thumb
Function_21d2b20: @ 21d2b20 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r2
	mov     r5, r0
	ldrb    r0, [r4, #0x1]
	str     r1, [sp, #0x10]
	mov     r6, r3
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	beq     branch_21d2b3c
	cmp     r0, #0x1
	beq     branch_21d2b48
	cmp     r0, #0x2
	b       branch_21d2b54
@ 0x21d2b3c

.thumb
branch_21d2b3c: @ 21d2b3c :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x41
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	b       branch_21d2b5e
@ 0x21d2b48

.thumb
branch_21d2b48: @ 21d2b48 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x42
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	b       branch_21d2b5e
@ 0x21d2b54

.thumb
branch_21d2b54: @ 21d2b54 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x43
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
.thumb
branch_21d2b5e: @ 21d2b5e :thumb
	ldrb    r2, [r4, #0x1]
	mov     r0, r5
	add     r1, r4, #0x2
	lsl     r2, r2, #27
	lsr     r2, r2, #31
	mov     r3, #0x0
	bl      Function_21d2a60
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d2ba0, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2b9e


.align 2


.word 0x10200 @ 0x21d2ba0
.thumb
Function_21d2ba4: @ 21d2ba4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r2
	mov     r5, r0
	ldrb    r0, [r4, #0x1]
	str     r1, [sp, #0x10]
	mov     r6, r3
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	beq     branch_21d2bc0
	cmp     r0, #0x1
	beq     branch_21d2bcc
	cmp     r0, #0x2
	b       branch_21d2bd8
@ 0x21d2bc0

.thumb
branch_21d2bc0: @ 21d2bc0 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x44
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	b       branch_21d2be2
@ 0x21d2bcc

.thumb
branch_21d2bcc: @ 21d2bcc :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x45
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	b       branch_21d2be2
@ 0x21d2bd8

.thumb
branch_21d2bd8: @ 21d2bd8 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x46
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
.thumb
branch_21d2be2: @ 21d2be2 :thumb
	ldrb    r2, [r4, #0x1]
	mov     r0, r5
	add     r1, r4, #0x2
	lsl     r2, r2, #27
	lsr     r2, r2, #31
	mov     r3, #0x0
	bl      Function_21d2a60
	ldrb    r2, [r4, #0x1]
	mov     r1, r4
	mov     r0, r5
	lsl     r2, r2, #26
	add     r1, #0x12
	lsr     r2, r2, #31
	mov     r3, #0x1
	bl      Function_21d2a60
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d2c34, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2c34

.word 0x10200 @ 0x21d2c34
.thumb
Function_21d2c38: @ 21d2c38 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r2
	mov     r5, r0
	ldrb    r0, [r4, #0x1]
	str     r1, [sp, #0x10]
	mov     r6, r3
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	beq     branch_21d2c54
	cmp     r0, #0x1
	beq     branch_21d2c60
	cmp     r0, #0x2
	b       branch_21d2c6c
@ 0x21d2c54

.thumb
branch_21d2c54: @ 21d2c54 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x47
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	b       branch_21d2c76
@ 0x21d2c60

.thumb
branch_21d2c60: @ 21d2c60 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x48
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	b       branch_21d2c76
@ 0x21d2c6c

.thumb
branch_21d2c6c: @ 21d2c6c :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x49
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
.thumb
branch_21d2c76: @ 21d2c76 :thumb
	ldrb    r2, [r4, #0x1]
	mov     r0, r5
	add     r1, r4, #0x2
	lsl     r2, r2, #27
	lsr     r2, r2, #31
	mov     r3, #0x0
	bl      Function_21d2a60
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d2cb8, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2cb6


.align 2


.word 0x10200 @ 0x21d2cb8
.thumb
Function_21d2cbc: @ 21d2cbc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r2
	mov     r5, r0
	ldrb    r0, [r4, #0x1]
	str     r1, [sp, #0x10]
	mov     r6, r3
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	beq     branch_21d2cd8
	cmp     r0, #0x1
	beq     branch_21d2ce4
	cmp     r0, #0x2
	b       branch_21d2cf0
@ 0x21d2cd8

.thumb
branch_21d2cd8: @ 21d2cd8 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x4a
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	b       branch_21d2cfa
@ 0x21d2ce4

.thumb
branch_21d2ce4: @ 21d2ce4 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x4b
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	b       branch_21d2cfa
@ 0x21d2cf0

.thumb
branch_21d2cf0: @ 21d2cf0 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x4c
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
.thumb
branch_21d2cfa: @ 21d2cfa :thumb
	ldrb    r2, [r4, #0x1]
	mov     r0, r5
	add     r1, r4, #0x2
	lsl     r2, r2, #27
	lsr     r2, r2, #31
	mov     r3, #0x0
	bl      Function_21d2a60
	ldrb    r2, [r4, #0x1]
	mov     r1, r4
	mov     r0, r5
	lsl     r2, r2, #26
	add     r1, #0x12
	lsr     r2, r2, #31
	mov     r3, #0x1
	bl      Function_21d2a60
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d2d4c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2d4c

.word 0x10200 @ 0x21d2d4c
.thumb
Function_21d2d50: @ 21d2d50 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x4d
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	ldrb    r2, [r4, #0x1]
	mov     r7, r0
	mov     r0, r5
	lsl     r2, r2, #27
	add     r1, r4, #0x2
	lsr     r2, r2, #31
	mov     r3, #0x0
	bl      Function_21d2a60
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d2da8, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2da6


.align 2


.word 0x10200 @ 0x21d2da8
.thumb
Function_21d2dac: @ 21d2dac :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x4e
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	ldrb    r2, [r4, #0x1]
	mov     r7, r0
	mov     r0, r5
	lsl     r2, r2, #27
	add     r1, r4, #0x2
	lsr     r2, r2, #31
	mov     r3, #0x0
	bl      Function_21d2a60
	ldrb    r2, [r4, #0x1]
	mov     r1, r4
	mov     r0, r5
	lsl     r2, r2, #24
	add     r1, #0x22
	lsr     r2, r2, #30
	mov     r3, #0x1
	bl      Function_21d2a60
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d2e14, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2e14

.word 0x10200 @ 0x21d2e14
.thumb
Function_21d2e18: @ 21d2e18 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0x4f
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d2e50, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d2e50

.word 0x10200 @ 0x21d2e50
.thumb
Function_21d2e54: @ 21d2e54 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r7, r2
	mov     r1, #0x50
	mov     r4, r3
	bl      Function_200b1ec_CallMsgDecrypt
	ldrb    r2, [r7, #0x1]
	mov     r1, r7
	mov     r6, r0
	lsl     r2, r2, #24
	mov     r0, r5
	add     r1, #0x22
	lsr     r2, r2, #30
	mov     r3, #0x0
	bl      Function_21d2a60
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r6
	bl      Function_200c388
	lsl     r0, r4, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d2eac, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2eac

.word 0x10200 @ 0x21d2eac
.thumb
Function_21d2eb0: @ 21d2eb0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0x51
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d2ee8, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d2ee8

.word 0x10200 @ 0x21d2ee8
.thumb
Function_21d2eec: @ 21d2eec :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r2
	mov     r5, r0
	ldrb    r0, [r4, #0x1]
	str     r1, [sp, #0x10]
	mov     r6, r3
	lsl     r0, r0, #28
	lsr     r0, r0, #28
	beq     branch_21d2f08
	cmp     r0, #0x1
	beq     branch_21d2f14
	cmp     r0, #0x2
	b       branch_21d2f20
@ 0x21d2f08

.thumb
branch_21d2f08: @ 21d2f08 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x52
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	b       branch_21d2f2a
@ 0x21d2f14

.thumb
branch_21d2f14: @ 21d2f14 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x53
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	b       branch_21d2f2a
@ 0x21d2f20

.thumb
branch_21d2f20: @ 21d2f20 :thumb
	ldr     r0, [r5, #0x50]
	mov     r1, #0x54
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
.thumb
branch_21d2f2a: @ 21d2f2a :thumb
	ldrb    r2, [r4, #0x1]
	mov     r0, r5
	add     r1, r4, #0x2
	lsl     r2, r2, #27
	lsr     r2, r2, #31
	mov     r3, #0x0
	bl      Function_21d2a60
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d2f6c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2f6a


.align 2


.word 0x10200 @ 0x21d2f6c
.thumb
Function_21d2f70: @ 21d2f70 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0x55
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d2fa8, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d2fa8

.word 0x10200 @ 0x21d2fa8
.thumb
Function_21d2fac: @ 21d2fac :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r1, #0x57
	mov     r4, r2
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	ldrb    r2, [r4, #0x1]
	mov     r7, r0
	ldr     r0, [r5, #0x54]
	lsl     r2, r2, #28
	lsr     r2, r2, #28
	bl      Function_200b60c
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d3008, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d3006


.align 2


.word 0x10200 @ 0x21d3008
.thumb
Function_21d300c: @ 21d300c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0x58
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d3044, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d3044

.word 0x10200 @ 0x21d3044
.thumb
Function_21d3048: @ 21d3048 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x59
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	ldrb    r2, [r4, #0x1]
	mov     r7, r0
	mov     r0, r5
	lsl     r2, r2, #27
	add     r1, r4, #0x2
	lsr     r2, r2, #31
	mov     r3, #0x0
	bl      Function_21d2a60
	ldrb    r2, [r4, #0x1]
	mov     r1, r4
	mov     r0, r5
	lsl     r2, r2, #24
	add     r1, #0x22
	lsr     r2, r2, #30
	mov     r3, #0x1
	bl      Function_21d2a60
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d30b0, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d30b0

.word 0x10200 @ 0x21d30b0
.thumb
Function_21d30b4: @ 21d30b4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0x5e
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d30ec, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d30ec

.word 0x10200 @ 0x21d30ec
.thumb
Function_21d30f0: @ 21d30f0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0x56
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d3128, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d3128

.word 0x10200 @ 0x21d3128
.thumb
Function_21d312c: @ 21d312c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r1
	ldr     r1, [sp, #0x20]
	mov     r4, r3
	sub     r1, #0x12
	cmp     r1, #0x3
	bhi     branch_21d315c
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d3148

Jumppoints_21d3148:
.hword branch_21d3150 - Jumppoints_21d3148 - 2
.hword branch_21d3154 - Jumppoints_21d3148 - 2
.hword branch_21d3158 - Jumppoints_21d3148 - 2
.hword branch_21d315c - Jumppoints_21d3148 - 2
.thumb
branch_21d3150: @ 21d3150 :thumb
	mov     r1, #0x5a
	b       branch_21d315e
@ 0x21d3154

.thumb
branch_21d3154: @ 21d3154 :thumb
	mov     r1, #0x5b
	b       branch_21d315e
@ 0x21d3158

.thumb
branch_21d3158: @ 21d3158 :thumb
	mov     r1, #0x5c
	b       branch_21d315e
@ 0x21d315c

.thumb
branch_21d315c: @ 21d315c :thumb
	mov     r1, #0x5d
.thumb
branch_21d315e: @ 21d315e :thumb
	ldr     r0, [r0, #0x50]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r5, r0
	lsl     r0, r4, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d318c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r5
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r5
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d318c

.word 0x10200 @ 0x21d318c
.thumb
Function_21d3190: @ 21d3190 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x5f
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	ldrb    r2, [r4, #0x1]
	mov     r7, r0
	mov     r0, r5
	lsl     r2, r2, #27
	add     r1, r4, #0x2
	lsr     r2, r2, #31
	mov     r3, #0x0
	bl      Function_21d2a60
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d31e8, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d31e6


.align 2


.word 0x10200 @ 0x21d31e8
.thumb
Function_21d31ec: @ 21d31ec :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x60
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	ldrb    r2, [r4, #0x1]
	mov     r7, r0
	mov     r0, r5
	lsl     r2, r2, #27
	add     r1, r4, #0x2
	lsr     r2, r2, #31
	mov     r3, #0x0
	bl      Function_21d2a60
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d3244, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d3242


.align 2


.word 0x10200 @ 0x21d3244
.thumb
Function_21d3248: @ 21d3248 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x50]
	str     r1, [sp, #0x10]
	mov     r4, r2
	mov     r1, #0x61
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	ldrb    r2, [r4, #0x1]
	mov     r7, r0
	ldr     r0, [r5, #0x54]
	lsl     r2, r2, #28
	mov     r1, #0x0
	lsr     r2, r2, #28
	bl      Function_200c0b0
	ldr     r0, [r5, #0x54]
	ldr     r1, [r5, #0x58]
	mov     r2, r7
	bl      Function_200c388
	lsl     r0, r6, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d329c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [r5, #0x58]
	mov     r3, r1
	bl      Function_201d78c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d329c

.word 0x10200 @ 0x21d329c
.thumb
Function_21d32a0: @ 21d32a0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r1
	ldr     r1, [sp, #0x20]
	mov     r4, r3
	sub     r1, #0x19
	cmp     r1, #0x3
	bhi     branch_21d32d0
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d32bc

Jumppoints_21d32bc:
.hword branch_21d32c4 - Jumppoints_21d32bc - 2
.hword branch_21d32c8 - Jumppoints_21d32bc - 2
.hword branch_21d32cc - Jumppoints_21d32bc - 2
.hword branch_21d32d0 - Jumppoints_21d32bc - 2
.thumb
branch_21d32c4: @ 21d32c4 :thumb
	mov     r1, #0x62
	b       branch_21d32d2
@ 0x21d32c8

.thumb
branch_21d32c8: @ 21d32c8 :thumb
	mov     r1, #0x63
	b       branch_21d32d2
@ 0x21d32cc

.thumb
branch_21d32cc: @ 21d32cc :thumb
	mov     r1, #0x64
	b       branch_21d32d2
@ 0x21d32d0

.thumb
branch_21d32d0: @ 21d32d0 :thumb
	mov     r1, #0x65
.thumb
branch_21d32d2: @ 21d32d2 :thumb
	ldr     r0, [r0, #0x50]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r5, r0
	lsl     r0, r4, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d3300, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r5
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r5
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d3300

.word 0x10200 @ 0x21d3300
.thumb
Function_21d3304: @ 21d3304 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0x50]
	mov     r6, r1
	mov     r5, r3
	mov     r1, #0x66
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	lsl     r0, r5, #4
	add     r0, #0x70
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d333c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, r4
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d333c

.word 0x10200 @ 0x21d333c
@ 0x21d3340


.incbin "./baserom/overlay/overlay_0081.bin", 0x25c0, 0x21d3540 - 0x21d3340


@end 0x21d3540




