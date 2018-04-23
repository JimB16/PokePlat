
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram101, "ax"


.thumb
.globl Function_101_21d0d80
Function_101_21d0d80: @ 21d0d80 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x2
	mov     r0, #0x3
	mov     r1, #0x4f
	lsl     r2, r2, #18
	bl      Function_2017fc8
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x4f
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r4, r0
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	mov     r0, r5
	bl      LoadPtrToOverWorldDataIn18
	str     r0, [r4, #0x0]
	bl      Function_21d0f6c
	mov     r5, r0
	str     r5, [r4, #0x4]
	bl      Function_21d19bc
	mov     r0, r5
	bl      Function_21d186c
	mov     r0, r5
	bl      Function_21d0f9c
	mov     r0, r5
	bl      Function_21d121c
	mov     r0, r5
	bl      Function_21d13c8
	bl      Function_21d150c
	mov     r0, r5
	bl      Function_21d1550
	mov     r0, r5
	bl      Function_21d1a28
	mov     r0, r5
	bl      Function_21d59ac
	mov     r0, r5
	bl      Function_21d5af0
	mov     r0, r5
	bl      Function_21d5c28
	mov     r1, #0x0
	mov     r0, #0x42
	mov     r2, r1
	bl      Function_2004550
	mov     r0, r5
	bl      Function_21d18c0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4f
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d0e3e


.align 2, 0
.thumb
.globl Function_101_21d0e40
Function_101_21d0e40: @ 21d0e40 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	bl      LoadOverlayData1c
	ldr     r5, [r0, #0x4]
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x3
	bhi     branch_21d0ec6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d0e5e

Jumppoints_21d0e5e:
.hword branch_21d0e66 - Jumppoints_21d0e5e - 2
.hword branch_21d0e76 - Jumppoints_21d0e5e - 2
.hword branch_21d0ea8 - Jumppoints_21d0e5e - 2
.hword branch_21d0eb6 - Jumppoints_21d0e5e - 2
.thumb
branch_21d0e66: @ 21d0e66 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d0ec6
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0ec6

branch_21d0e76: @ 21d0e76 :thumb
	mov     r0, r5
	bl      Function_21d1aac
	cmp     r0, #0x1
	bne     branch_21d0ec6
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4f
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	mov     r2, r1
	mov     r3, r1
	bl      Function_200f174
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d1894
	b       branch_21d0ec6

branch_21d0ea8: @ 21d0ea8 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_21d0ec6
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
branch_21d0eb6: @ 21d0eb6 :thumb
	mov     r0, r5
	bl      Function_21d18b4
	cmp     r0, #0x0
	bne     branch_21d0ec6
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}

branch_21d0ec6: @ 21d0ec6 :thumb
	ldr     r0, [pc, #0x18] @ 0x21d0ee0, (=0x44c)
	ldr     r0, [r5, r0]
	bl      Function_20713d0
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_21d80d4
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d0ede

.align 2
.word 0x44c @ 0x21d0ee0



.thumb
.globl Function_101_21d0ee4
Function_101_21d0ee4: @ 21d0ee4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r6, r0
	mov     r0, #0x0
	ldr     r4, [r6, #0x4]
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, r6
	mov     r1, r4
	bl      Function_21d0f3c
	mov     r0, r4
	bl      Function_21d1884
	mov     r0, r4
	bl      Function_21d107c
	mov     r0, r4
	bl      Function_21d1458
	mov     r0, r4
	bl      Function_21d1a4c
	mov     r0, r4
	bl      Function_21d18e4
	mov     r0, r4
	bl      Function_21d19d4
	mov     r0, r4
	bl      Function_21d0f94
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x4f
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21d0f3a


.align 2, 0
.thumb
Function_21d0f3c: @ 21d0f3c :thumb
	push    {r3,lr}
	mov     r2, r1
	ldr     r3, [r2, #0x60]
	ldr     r1, [pc, #0x24] @ 0x21d0f68, (=0xc350)
	cmp     r3, r1
	bls     branch_21d0f4a
	mov     r3, r1
branch_21d0f4a: @ 21d0f4a :thumb
	ldr     r1, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	str     r3, [r1, #0x0]
	ldr     r3, [r2, #0x20]
	ldr     r1, [r0, #0x0]
	str     r3, [r1, #0xc]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_21d0f66
	ldr     r2, [r2, #0xc]
	mov     r1, #0xe
	bl      Function_202cf70
.thumb
branch_21d0f66: @ 21d0f66 :thumb
	pop     {r3,pc}
@ 0x21d0f68

.word 0xc350 @ 0x21d0f68
.thumb
Function_21d0f6c: @ 21d0f6c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x21d0f8c, (=0x4c8)
	bl      Function_21d1998
	ldr     r1, [r4, #0x0]
	ldr     r1, [r1, #0x0]
	str     r1, [r0, #0x60]
	mov     r1, r0
	ldr     r2, [r4, #0x4]
	add     r1, #0x88
	str     r2, [r1, #0x0]
	ldr     r2, [r4, #0x10]
	ldr     r1, [pc, #0x8] @ 0x21d0f90, (=0x4c4)
	str     r2, [r0, r1]
	pop     {r4,pc}
@ 0x21d0f8c

.word 0x4c8 @ 0x21d0f8c
.word 0x4c4 @ 0x21d0f90



.thumb
Function_21d0f94: @ 21d0f94 :thumb
	ldr     r3, [pc, #0x0] @ 0x21d0f98, (=free+1)
	bx      r3
@ 0x21d0f98

.word free+1 @ 0x21d0f98



.thumb
Function_21d0f9c: @ 21d0f9c :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r0, #0x4f
	bl      Function_2018340
	ldr     r1, [pc, #0xc4] @ 0x21d106c, (=0x43c)
	str     r0, [r4, r1]
	bl      Function_21d1098
	ldr     r0, [pc, #0xbc] @ 0x21d106c, (=0x43c)
	ldr     r0, [r4, r0]
	bl      Function_21d10b8
	bl      Function_21d11d0
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
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
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
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	ldr     r0, [pc, #0x64] @ 0x21d1070, (=0x4000008)
	mov     r2, #0x3
	ldrh    r1, [r0, #0x0]
	mov     r3, #0x1
	mov     r7, #0x2
	bic     r1, r2
	strh    r1, [r0, #0x0]
	ldrh    r1, [r0, #0x2]
	ldr     r6, [pc, #0x58] @ 0x21d1074, (=0x4001008)
	bic     r1, r2
	orr     r1, r3
	strh    r1, [r0, #0x2]
	ldrh    r1, [r0, #0x4]
	bic     r1, r2
	orr     r1, r7
	strh    r1, [r0, #0x4]
	ldrh    r5, [r0, #0x6]
	mov     r1, #0x3
	bic     r5, r2
	orr     r5, r1
	strh    r5, [r0, #0x6]
	ldrh    r5, [r6, #0x0]
	bic     r5, r2
	strh    r5, [r6, #0x0]
	ldrh    r5, [r6, #0x2]
	bic     r5, r2
	orr     r3, r5
	strh    r3, [r6, #0x2]
	ldrh    r3, [r6, #0x4]
	add     r0, #0x48
	bic     r3, r2
	orr     r3, r7
	strh    r3, [r6, #0x4]
	ldrh    r3, [r6, #0x6]
	bic     r3, r2
	orr     r1, r3
	strh    r1, [r6, #0x6]
	mov     r1, #0x9
	str     r1, [sp, #0x0]
	mov     r1, #0x4
	mov     r2, #0x10
	mov     r3, #0x8
	blx     G2x_SetBlendAlpha_
	ldr     r0, [pc, #0x14] @ 0x21d1078, (=0x21d197d)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	pop     {r3-r7,pc}
@ 0x21d106c

.word 0x43c @ 0x21d106c
.word 0x4000008 @ 0x21d1070
.word 0x4001008 @ 0x21d1074
.word 0x21d197d @ 0x21d1078
.thumb
Function_21d107c: @ 21d107c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x10] @ 0x21d1094, (=0x43c)
	ldr     r0, [r4, r0]
	bl      Function_21d11a4
	mov     r0, r4
	bl      Function_21d15a4
	bl      Function_21d1544
	pop     {r4,pc}
@ 0x21d1094

.word 0x43c @ 0x21d1094
.thumb
Function_21d1098: @ 21d1098 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d10b4, (=0x21d8620)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d10a2: @ 21d10a2 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d10a2
	add     r0, sp, #0x0
	bl      GX_SetBanks
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d10b4

.word 0x21d8620 @ 0x21d10b4
.thumb
Function_21d10b8: @ 21d10b8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x80
	ldr     r2, [pc, #0xcc] @ 0x21d118c, (=0x4000304)
	mov     r4, r0
	ldrh    r1, [r2, #0x0]
	lsr     r0, r2, #11
	ldr     r5, [pc, #0xc8] @ 0x21d1190, (=0x21d8590)
	orr     r0, r1
	strh    r0, [r2, #0x0]
	add     r3, sp, #0x70
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      SetGraphicsModes
	ldr     r5, [pc, #0xb4] @ 0x21d1194, (=0x21d85cc)
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
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x4f
	bl      Function_2019690
	ldr     r5, [pc, #0x84] @ 0x21d1198, (=0x21d85e8)
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
	ldr     r5, [pc, #0x60] @ 0x21d119c, (=0x21d8604)
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
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019ebc
	ldr     r5, [pc, #0x3c] @ 0x21d11a0, (=0x21d85b0)
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x7
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_2019ebc
	add     sp, #0x80
	pop     {r3-r5,pc}
@ 0x21d118c

.word 0x4000304 @ 0x21d118c
.word 0x21d8590 @ 0x21d1190
.word 0x21d85cc @ 0x21d1194
.word 0x21d85e8 @ 0x21d1198
.word 0x21d8604 @ 0x21d119c
.word 0x21d85b0 @ 0x21d11a0
.thumb
Function_21d11a4: @ 21d11a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_2019044
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x21d11ce


.align 2, 0


.thumb
Function_21d11d0: @ 21d11d0 :thumb
	push    {r4,r5}
	mov     r0, #0x1
	lsl     r0, r0, #26
	ldr     r2, [r0, #0x0]
	ldr     r1, [pc, #0x3c] @ 0x21d1218, (=0xffff1fff)
	mov     r5, r0
	and     r2, r1
	lsr     r1, r0, #13
	orr     r1, r2
	str     r1, [r0, #0x0]
	add     r5, #0x48
	ldrh    r3, [r5, #0x0]
	mov     r1, #0x3f
	mov     r2, #0x1f
	bic     r3, r1
	mov     r4, r3
	orr     r4, r2
	mov     r3, #0x20
	orr     r4, r3
	strh    r4, [r5, #0x0]
	mov     r4, r0
	add     r4, #0x4a
	ldrh    r5, [r4, #0x0]
	bic     r5, r1
	mov     r1, r5
	orr     r1, r2
	orr     r1, r3
	strh    r1, [r4, #0x0]
	mov     r1, r0
	mov     r2, #0xff
	add     r1, #0x40
	strh    r2, [r1, #0x0]
	add     r0, #0x44
	strh    r2, [r0, #0x0]
	pop     {r4,r5}
	bx      lr
@ 0x21d1218

.word 0xffff1fff @ 0x21d1218
.thumb
Function_21d121c: @ 21d121c :thumb
	push    {r3-r5,lr}
	mov     r1, #0x3
	mov     r2, #0x0
	mov     r4, r0
	bl      Function_21d19e4
	ldr     r1, [pc, #0x190] @ 0x21d13bc, (=0x448)
	mov     r5, r0
	add     r1, r4, r1
	blx     Function_20a71b0
	ldr     r1, [pc, #0x188] @ 0x21d13bc, (=0x448)
	mov     r2, #0x1a
	ldr     r1, [r4, r1]
	mov     r0, #0x1
	ldr     r1, [r1, #0xc]
	lsl     r2, r2, #4
	mov     r3, #0x0
	bl      Function_201972c
	mov     r0, r5
	bl      free
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_21d19e4
	ldr     r1, [pc, #0x168] @ 0x21d13c0, (=0x444)
	mov     r5, r0
	add     r1, r4, r1
	blx     Function_20a7118
	ldr     r0, [pc, #0x160] @ 0x21d13c0, (=0x444)
	mov     r1, #0x0
	ldr     r3, [r4, r0]
	sub     r0, #0x8
	str     r1, [sp, #0x0]
	ldr     r2, [r3, #0x14]
	ldr     r0, [r4, r0]
	ldr     r3, [r3, #0x10]
	mov     r1, #0x1
	bl      Function_201958c
	mov     r0, r5
	bl      free
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_21d19e4
	mov     r1, #0x11
	lsl     r1, r1, #6
	add     r1, r4, r1
	mov     r5, r0
	blx     Function_20a7248
	mov     r0, #0x11
	lsl     r0, r0, #6
	ldr     r3, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	mov     r2, r3
	ldr     r0, [r4, r0]
	ldr     r3, [r3, #0x8]
	mov     r1, #0x1
	add     r2, #0xc
	bl      Function_2019574
	ldr     r0, [pc, #0x11c] @ 0x21d13c4, (=0x43c)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      Function_2019448
	mov     r0, r5
	bl      free
	mov     r0, r4
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_21d19e4
	ldr     r1, [pc, #0xfc] @ 0x21d13c0, (=0x444)
	mov     r5, r0
	add     r1, r4, r1
	blx     Function_20a7118
	ldr     r0, [pc, #0xf4] @ 0x21d13c0, (=0x444)
	mov     r1, #0x0
	ldr     r3, [r4, r0]
	sub     r0, #0x8
	str     r1, [sp, #0x0]
	ldr     r2, [r3, #0x14]
	ldr     r0, [r4, r0]
	ldr     r3, [r3, #0x10]
	mov     r1, #0x2
	bl      Function_201958c
	mov     r0, r5
	bl      free
	mov     r0, r4
	mov     r1, #0x9
	mov     r2, #0x0
	bl      Function_21d19e4
	mov     r1, #0x11
	lsl     r1, r1, #6
	add     r1, r4, r1
	mov     r5, r0
	blx     Function_20a7248
	mov     r0, #0x11
	lsl     r0, r0, #6
	ldr     r3, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	mov     r2, r3
	ldr     r0, [r4, r0]
	ldr     r3, [r3, #0x8]
	mov     r1, #0x2
	add     r2, #0xc
	bl      Function_2019574
	ldr     r0, [pc, #0xb0] @ 0x21d13c4, (=0x43c)
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	bl      Function_2019448
	mov     r0, r5
	bl      free
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_21d19e4
	ldr     r1, [pc, #0x8c] @ 0x21d13bc, (=0x448)
	mov     r5, r0
	add     r1, r4, r1
	blx     Function_20a71b0
	ldr     r1, [pc, #0x84] @ 0x21d13bc, (=0x448)
	mov     r2, #0x1a
	ldr     r1, [r4, r1]
	mov     r0, #0x7
	ldr     r1, [r1, #0xc]
	lsl     r2, r2, #4
	mov     r3, #0x0
	bl      Function_201972c
	mov     r0, r5
	bl      free
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x0
	bl      Function_21d19e4
	ldr     r1, [pc, #0x64] @ 0x21d13c0, (=0x444)
	mov     r5, r0
	add     r1, r4, r1
	blx     Function_20a7118
	ldr     r0, [pc, #0x5c] @ 0x21d13c0, (=0x444)
	mov     r1, #0x0
	ldr     r3, [r4, r0]
	sub     r0, #0x8
	str     r1, [sp, #0x0]
	ldr     r2, [r3, #0x14]
	ldr     r0, [r4, r0]
	ldr     r3, [r3, #0x10]
	mov     r1, #0x7
	bl      Function_201958c
	mov     r0, r5
	bl      free
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x0
	bl      Function_21d19e4
	mov     r1, #0x11
	lsl     r1, r1, #6
	add     r1, r4, r1
	mov     r5, r0
	blx     Function_20a7248
	mov     r0, #0x11
	lsl     r0, r0, #6
	ldr     r3, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	mov     r2, r3
	ldr     r0, [r4, r0]
	ldr     r3, [r3, #0x8]
	mov     r1, #0x7
	add     r2, #0xc
	bl      Function_2019574
	ldr     r0, [pc, #0x18] @ 0x21d13c4, (=0x43c)
	mov     r1, #0x7
	ldr     r0, [r4, r0]
	bl      Function_2019448
	mov     r0, r5
	bl      free
	pop     {r3-r5,pc}
@ 0x21d13bc

.word 0x448 @ 0x21d13bc
.word 0x444 @ 0x21d13c0
.word 0x43c @ 0x21d13c4
.thumb
Function_21d13c8: @ 21d13c8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [pc, #0x78] @ 0x21d1448, (=0x408)
	mov     r1, #0x0
	add     r4, r5, r0
	str     r1, [sp, #0x0]
	mov     r2, #0x4f
	str     r2, [sp, #0x4]
	add     r0, #0x34
	ldr     r0, [r5, r0]
	mov     r2, #0x1
	mov     r3, #0xf
	bl      Function_200daa4
	ldr     r1, [pc, #0x64] @ 0x21d144c, (=0x4c4)
	mov     r2, #0x1f
	ldr     r0, [r5, r1]
	sub     r1, #0x88
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x4f
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	mov     r1, #0x0
	mov     r3, #0xe
	bl      Function_200dd0c
	mov     r1, #0x1e
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x4f
	bl      LoadFromNARC_PlFont2
	mov     r2, #0x22
	mov     r0, #0x0
	mov     r1, #0x1a
	lsl     r2, r2, #4
	mov     r3, #0x4f
	bl      LoadFromNARC_9
	ldr     r1, [pc, #0x28] @ 0x21d1448, (=0x408)
	str     r0, [r5, r1]
	mov     r0, #0x4f
	bl      Function_200b358
	str     r0, [r4, #0x4]
	ldr     r0, [pc, #0x24] @ 0x21d1450, (=0x43c)
	mov     r1, r4
	ldr     r0, [r5, r0]
	ldr     r2, [pc, #0x24] @ 0x21d1454, (=Unknown_21d8588)
	add     r1, #0x8
	bl      Function_201a8d4
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, #0x4f
	bl      Function_2023790
	str     r0, [r4, #0x18]
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d1446

.align 2
.word 0x408 @ 0x21d1448
.word 0x4c4 @ 0x21d144c
.word 0x43c @ 0x21d1450
.word Unknown_21d8588 @ 0x21d1454



.thumb
Function_21d1458: @ 21d1458 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x28] @ 0x21d1488, (=0x408)
	add     r4, r5, r0
	mov     r6, r4
	add     r6, #0x8
	mov     r0, r6
	bl      Function_201acf4
	mov     r0, r6
	bl      Function_201a8fc
	ldr     r0, [pc, #0x14] @ 0x21d1488, (=0x408)
	ldr     r0, [r5, r0]
	bl      Function_200b190
	ldr     r0, [r4, #0x4]
	bl      Function_200b3f0
	ldr     r0, [r4, #0x18]
	bl      Function_20237bc_FreeMsg
	pop     {r4-r6,pc}
@ 0x21d1486


.align 2


.word 0x408 @ 0x21d1488
.thumb
Function_21d148c: @ 21d148c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x4c] @ 0x21d14e0, (=0x408)
	mov     r6, r1
	add     r4, r5, r0
	mov     r0, r4
	add     r0, #0x8
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0xe
	bl      Function_200e060
	mov     r0, r4
	add     r0, #0x8
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x2c] @ 0x21d14e0, (=0x408)
	ldr     r2, [r4, #0x18]
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r4
	ldr     r2, [r4, #0x18]
	add     r0, #0x8
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	add     r4, #0x8
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d14de


.align 2


.word 0x408 @ 0x21d14e0
.thumb
Function_21d14e4: @ 21d14e4 :thumb
	push    {r3-r5,lr}
	ldr     r4, [pc, #0x20] @ 0x21d1508, (=0x408)
	mov     r5, r0
	add     r0, r5, r4
	add     r0, #0x8
	mov     r1, #0x1
	bl      Function_200e084
	add     r0, r5, r4
	add     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	add     r0, r5, r4
	add     r0, #0x8
	bl      Function_201a9a4
	pop     {r3-r5,pc}
@ 0x21d1508

.word 0x408 @ 0x21d1508
.thumb
Function_21d150c: @ 21d150c :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x28] @ 0x21d153c, (=0x21d85a0)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r1, [pc, #0x20] @ 0x21d1540, (=0x200010)
	mov     r0, r2
	mov     r2, r1
	bl      Function_201e88c
	mov     r0, #0x10
	mov     r1, #0x4f
	bl      Function_201f834
	bl      Function_201e994
	bl      Function_201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d153c

.word 0x21d85a0 @ 0x21d153c
.word 0x200010 @ 0x21d1540
.thumb
Function_21d1544: @ 21d1544 :thumb
	push    {r3,lr}
	bl      Function_201e958
	bl      Function_201f8b4
	pop     {r3,pc}
@ 0x21d1550

.thumb
Function_21d1550: @ 21d1550 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r0
	blx     Function_20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x80
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x4f
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      Function_200a784
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r1, #0x40
	str     r1, [sp, #0x4]
	mov     r2, #0x20
	str     r2, [sp, #0x8]
	mov     r3, #0xb
	str     r3, [sp, #0xc]
	mov     r0, #0x8
	str     r0, [sp, #0x10]
	str     r3, [sp, #0x14]
	str     r3, [sp, #0x18]
	mov     r0, #0x4f
	mov     r3, r1
	bl      Function_21d7e48
	mov     r1, #0x45
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_21d15bc
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x21d15a2


.align 2, 0


.thumb
Function_21d15a4: @ 21d15a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d1868
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_21d7fb4
	bl      Function_200a878
	pop     {r4,pc}
@ 0x21d15bc

.thumb
Function_21d15bc: @ 21d15bc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r2, #0x45
	mov     r4, r0
	mov     r0, #0x0
	lsl     r2, r2, #4
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_21d80e4
	mov     r1, #0x1
	mov     r2, #0x45
	str     r1, [sp, #0x0]
	lsl     r2, r2, #4
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	mov     r3, #0x15
	bl      Function_21d80e4
	mov     r2, #0x45
	mov     r0, #0x6
	lsl     r2, r2, #4
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	mov     r1, #0x2
	mov     r3, #0x44
	bl      Function_21d80e4
	mov     r2, #0x45
	mov     r0, #0x7
	lsl     r2, r2, #4
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	mov     r1, #0x2
	mov     r3, #0x47
	bl      Function_21d80e4
	mov     r2, #0x45
	mov     r0, #0x8
	lsl     r2, r2, #4
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	mov     r1, #0x2
	mov     r3, #0x40
	bl      Function_21d80e4
	mov     r2, #0x45
	mov     r0, #0x9
	lsl     r2, r2, #4
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	mov     r1, #0x2
	mov     r3, #0x3c
	bl      Function_21d80e4
	mov     r2, #0x45
	mov     r0, #0x0
	lsl     r2, r2, #4
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	mov     r1, #0x3
	mov     r3, #0xa
	bl      Function_21d81b4
	mov     r1, #0x1
	mov     r2, #0x45
	str     r1, [sp, #0x0]
	lsl     r2, r2, #4
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	mov     r3, #0x14
	bl      Function_21d81b4
	mov     r2, #0x45
	mov     r0, #0x6
	lsl     r2, r2, #4
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	mov     r1, #0x2
	mov     r3, #0x43
	bl      Function_21d81b4
	mov     r2, #0x45
	mov     r0, #0x7
	lsl     r2, r2, #4
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	mov     r1, #0x2
	mov     r3, #0x3f
	bl      Function_21d81b4
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0xc
	mov     r3, #0x0
	bl      Function_21d8288
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0x16
	mov     r3, #0x1
	bl      Function_21d8288
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0x45
	mov     r3, #0x6
	bl      Function_21d8288
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0x48
	mov     r3, #0x7
	bl      Function_21d8288
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0x41
	mov     r3, #0x8
	bl      Function_21d8288
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0x3d
	mov     r3, #0x9
	bl      Function_21d8288
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0xd
	mov     r3, #0x0
	bl      Function_21d82f0
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0x17
	mov     r3, #0x1
	bl      Function_21d82f0
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0x46
	mov     r3, #0x6
	bl      Function_21d82f0
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0x49
	mov     r3, #0x7
	bl      Function_21d82f0
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0x42
	mov     r3, #0x8
	bl      Function_21d82f0
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0x3e
	mov     r3, #0x9
	bl      Function_21d82f0
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d814c
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d814c
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d814c
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x7
	bl      Function_21d814c
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x8
	bl      Function_21d814c
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x9
	bl      Function_21d814c
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d8180
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d8180
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d8180
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x7
	bl      Function_21d8180
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x8
	bl      Function_21d8180
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x9
	bl      Function_21d8180
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d8220
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d8220
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d8220
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x7
	bl      Function_21d8220
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d8254
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d8254
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      Function_21d8254
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x7
	bl      Function_21d8254
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d1866


.align 2, 0


.thumb
Function_21d1868: @ 21d1868 :thumb
	bx      lr
@ 0x21d186a


.align 2, 0


.thumb
Function_21d186c: @ 21d186c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x4f
	mov     r1, #0x80
	bl      Function_20711ec
	ldr     r1, [pc, #0x4] @ 0x21d1880, (=0x44c)
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x21d187e


.align 2


.word 0x44c @ 0x21d1880



.thumb
Function_21d1884: @ 21d1884 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d188c, (=0x44c)
	ldr     r3, [pc, #0x8] @ 0x21d1890, (=Function_207121c+1)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x21d188c

.word 0x44c @ 0x21d188c
.word Function_207121c+1 @ 0x21d1890



.thumb
Function_21d1894: @ 21d1894 :thumb
	ldr     r2, [pc, #0x18] @ 0x21d18b0, (=0x424)
	add     r2, r0, r2
	ldr     r0, [r2, #0x8]
	cmp     r0, r1
	beq     branch_21d18ac
	ldr     r0, [r2, #0xc]
	cmp     r0, r1
	beq     branch_21d18ac
	str     r1, [r2, #0xc]
	mov     r0, #0x1
	str     r0, [r2, #0x0]
	str     r0, [r2, #0x4]
.thumb
branch_21d18ac: @ 21d18ac :thumb
	bx      lr
@ 0x21d18ae


.align 2


.word 0x424 @ 0x21d18b0
.thumb
Function_21d18b4: @ 21d18b4 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d18bc, (=0x428)
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d18ba


.align 2


.word 0x428 @ 0x21d18bc
.thumb
Function_21d18c0: @ 21d18c0 :thumb
	push    {r4,lr}
	mov     r1, r0
	ldr     r0, [pc, #0x14] @ 0x21d18dc, (=0x424)
	mov     r2, #0x90
	add     r4, r1, r0
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x3
	str     r0, [r4, #0xc]
	ldr     r0, [pc, #0xc] @ 0x21d18e0, (=0x21d18f5)
	bl      AddTaskToTaskList1
	str     r0, [r4, #0x10]
	pop     {r4,pc}
@ 0x21d18dc

.word 0x424 @ 0x21d18dc
.word 0x21d18f5 @ 0x21d18e0
.thumb
Function_21d18e4: @ 21d18e4 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d18ec, (=0x434)
	ldr     r3, [pc, #0x8] @ 0x21d18f0, (=Call_RemoveTaskFromTaskList+1)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x21d18ec

.word 0x434 @ 0x21d18ec
.word Call_RemoveTaskFromTaskList+1 @ 0x21d18f0
.thumb
Function_21d18f4: @ 21d18f4 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x80] @ 0x21d1978, (=0x424)
	add     r4, r1, r0
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_21d1974
	cmp     r1, #0x1
	beq     branch_21d190a
	cmp     r1, #0x2
	beq     branch_21d193e
	pop     {r4,pc}
@ 0x21d190a

.thumb
branch_21d190a: @ 21d190a :thumb
	ldr     r1, [r4, #0x8]
	cmp     r1, #0x0
	beq     branch_21d191a
	cmp     r1, #0x1
	beq     branch_21d1924
	cmp     r1, #0x2
	beq     branch_21d192e
	b       branch_21d1936
@ 0x21d191a

.thumb
branch_21d191a: @ 21d191a :thumb
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_20049f4
	b       branch_21d1936
@ 0x21d1924

.thumb
branch_21d1924: @ 21d1924 :thumb
	add     r0, #0x7c
	mov     r1, #0x0
	bl      Function_20055d0
	b       branch_21d1936
@ 0x21d192e

.thumb
branch_21d192e: @ 21d192e :thumb
	add     r0, #0x7d
	mov     r1, #0x0
	bl      Function_20055d0
.thumb
branch_21d1936: @ 21d1936 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d193e

.thumb
branch_21d193e: @ 21d193e :thumb
	ldr     r1, [r4, #0xc]
	cmp     r1, #0x0
	beq     branch_21d194e
	cmp     r1, #0x1
	beq     branch_21d1958
	cmp     r1, #0x2
	beq     branch_21d1960
	b       branch_21d1966
@ 0x21d194e

.thumb
branch_21d194e: @ 21d194e :thumb
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_20049f4
	b       branch_21d1966
@ 0x21d1958

.thumb
branch_21d1958: @ 21d1958 :thumb
	add     r0, #0x7c
	bl      Function_2005474
	b       branch_21d1966
@ 0x21d1960

.thumb
branch_21d1960: @ 21d1960 :thumb
	add     r0, #0x7d
	bl      Function_2005474
.thumb
branch_21d1966: @ 21d1966 :thumb
	ldr     r0, [r4, #0xc]
	str     r0, [r4, #0x8]
	mov     r0, #0x3
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	str     r0, [r4, #0x0]
.thumb
branch_21d1974: @ 21d1974 :thumb
	pop     {r4,pc}
@ 0x21d1976


.align 2


.word 0x424 @ 0x21d1978
.thumb
Function_21d197c: @ 21d197c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_201dcac
	bl      Function_200a858
	ldr     r0, [pc, #0x8] @ 0x21d1994, (=0x43c)
	ldr     r0, [r4, r0]
	bl      Function_201c2b8
	pop     {r4,pc}
@ 0x21d1992


.align 2


.word 0x43c @ 0x21d1994
.thumb
Function_21d1998: @ 21d1998 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x4f
	mov     r1, r5
	bl      malloc
	mov     r4, r0
	bne     branch_21d19ac
	bl      ErrorHandling
branch_21d19ac: @ 21d19ac :thumb

	mov     r0, r4
	mov     r1, #0x0
	mov     r2, r5
	blx     Call_FillMemWithValue
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d19ba


.align 2, 0
.thumb
Function_21d19bc: @ 21d19bc :thumb
	push    {r4,lr}
	mov     r4, r0

	mov     r0, #Slot_Narc
	mov     r1, #0x4f
	bl      LoadFromNARC_8
	ldr     r1, [pc, #0x4] @ 0x21d19d0, (=0x438)
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x21d19ce

.align 2
.word 0x438 @ 0x21d19d0



.thumb
Function_21d19d4: @ 21d19d4 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d19dc, (=0x438)
	ldr     r3, [pc, #0x8] @ 0x21d19e0, (=Call_FS_CloseFile+1)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x21d19dc

.word 0x438 @ 0x21d19dc
.word Call_FS_CloseFile+1 @ 0x21d19e0
.thumb
Function_21d19e4: @ 21d19e4 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x38] @ 0x21d1a24, (=0x438)
	mov     r6, r1
	ldr     r0, [r4, r0]
	mov     r5, r2
	bl      Function_2006d84_GetFilesize
	mov     r1, r0
	cmp     r5, #0x1
	bne     branch_21d1a02
	mov     r0, #0x4f
	bl      malloc
	b       branch_21d1a08
@ 0x21d1a02

.thumb
branch_21d1a02: @ 21d1a02 :thumb
	mov     r0, #0x4f
	bl      malloc2
.thumb
branch_21d1a08: @ 21d1a08 :thumb
	mov     r5, r0
	cmp     r5, #0x0
	bne     branch_21d1a12
	bl      ErrorHandling
.thumb
branch_21d1a12: @ 21d1a12 :thumb
	ldr     r0, [pc, #0x10] @ 0x21d1a24, (=0x438)
	mov     r1, r6
	ldr     r0, [r4, r0]
	mov     r2, r5
	bl      LoadFileFromNARCFileHandler
	mov     r0, r5
	pop     {r4-r6,pc}
@ 0x21d1a22


.align 2


.word 0x438 @ 0x21d1a24
.thumb
Function_21d1a28: @ 21d1a28 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d1a68
	mov     r0, r4
	bl      Function_21d2b8c
	mov     r0, r4
	bl      Function_21d45c4
	mov     r0, r4
	bl      Function_21d4764
	mov     r0, r4
	bl      Function_21d4d38
	pop     {r4,pc}
@ 0x21d1a4a


.align 2, 0


.thumb
Function_21d1a4c: @ 21d1a4c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d2bc0
	mov     r0, r4
	bl      Function_21d45e8
	mov     r0, r4
	bl      Function_21d4788
	mov     r0, r4
	bl      Function_21d4ea4
	pop     {r4,pc}
@ 0x21d1a68

.thumb
Function_21d1a68: @ 21d1a68 :thumb
	push    {r3-r7,lr}
	mov     r7, #0x15
	mov     r5, r0
	mov     r4, #0x0
	lsl     r6, r7, #17
.thumb
branch_21d1a72: @ 21d1a72 :thumb
	bl      PRNG
	mov     r1, r7
	blx     _s32_div_f
	mov     r0, r5
	add     r0, #0xa8
	str     r1, [r0, #0x0]
	lsl     r0, r1, #17
	sub     r1, r6, r0
	mov     r0, r5
	add     r0, #0x90
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x90
	mov     r1, #0x2a
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #16
	blx     _s32_div_f
	mov     r0, r5
	add     r0, #0x90
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r1, [r0, #0x0]
	cmp     r4, #0x3
	blt     branch_21d1a72
	pop     {r3-r7,pc}
@ 0x21d1aaa


.align 2, 0


.thumb
Function_21d1aac: @ 21d1aac :thumb
	push    {r3-r5,lr}
	ldr     r4, [pc, #0x1c] @ 0x21d1acc, (=0x21d8838)
	mov     r5, r0
.thumb
branch_21d1ab2: @ 21d1ab2 :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	blx     r1
	cmp     r0, #0x1
	beq     branch_21d1ab2
	cmp     r0, #0x2
	bne     branch_21d1ac8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d1ac8

.thumb
branch_21d1ac8: @ 21d1ac8 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d1acc

.word 0x21d8838 @ 0x21d1acc
.thumb
Function_21d1ad0: @ 21d1ad0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	str     r1, [r4, #0x64]
	mov     r3, #0x1
	mov     r2, r4
	str     r1, [r4, #0x68]
	lsl     r3, r3, #16
	add     r2, #0x8c
	str     r3, [r2, #0x0]
	str     r1, [r4, #0x74]
	str     r1, [r4, #0x8]
	mov     r2, #0x1
	str     r2, [r4, #0x0]
	bl      Function_21d5938
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d5938
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d5938
	mov     r0, r4
	bl      Function_21d4ff8
	mov     r0, r4
	bl      Function_21d5200
	ldr     r1, [r4, #0x60]
	cmp     r1, #0x0
	bne     branch_21d1b1c
	mov     r0, #0x3c
	str     r0, [r4, #0x0]
	mov     r0, #0x3f
	str     r0, [r4, #0x4]
	b       branch_21d1b38
@ 0x21d1b1c

.thumb
branch_21d1b1c: @ 21d1b1c :thumb
	cmp     r1, #0x3
	bge     branch_21d1b2a
	mov     r0, #0x3b
	str     r0, [r4, #0x0]
	mov     r0, #0x3f
	str     r0, [r4, #0x4]
	b       branch_21d1b38
@ 0x21d1b2a

.thumb
branch_21d1b2a: @ 21d1b2a :thumb
	ldr     r0, [pc, #0x10] @ 0x21d1b3c, (=0xc350)
	cmp     r1, r0
	blt     branch_21d1b38
	mov     r0, #0x3d
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d1b38: @ 21d1b38 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1b3c

.word 0xc350 @ 0x21d1b3c
.thumb
Function_21d1b40: @ 21d1b40 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x8
	bl      Function_21d55f8
	cmp     r0, #0x0
	beq     branch_21d1b5c
	mov     r0, r4
	bl      Function_21d5244
	mov     r0, #0x3f
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1b5c

.thumb
branch_21d1b5c: @ 21d1b5c :thumb
	mov     r0, #0x1
	lsl     r0, r0, #10
	bl      Function_21d55f8
	cmp     r0, #0x0
	beq     branch_21d1b90
	ldr     r0, [r4, #0x60]
	.hword  0x1ec0 @ sub r0, r0, #0x3
	str     r0, [r4, #0x60]
	ldr     r0, [pc, #0x24] @ 0x21d1b94, (=0x45c)
	ldr     r1, [r4, r0]
	.hword  0x1cc9 @ add r1, r1, #0x3
	str     r1, [r4, r0]
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x21d1b98, (=0x5ed)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5244
	mov     r0, r4
	bl      Function_21d5010
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1b90

.thumb
branch_21d1b90: @ 21d1b90 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1b94

.word 0x45c @ 0x21d1b94
.word 0x5ed @ 0x21d1b98
.thumb
Function_21d1b9c: @ 21d1b9c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x8
	bl      Function_21d55f8
	cmp     r0, #0x0
	beq     branch_21d1bb8
	ldr     r0, [r4, #0x60]
	.hword  0x1cc0 @ add r0, r0, #0x3
	str     r0, [r4, #0x60]
	mov     r0, #0x3f
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1bb8

.thumb
branch_21d1bb8: @ 21d1bb8 :thumb
	mov     r0, #0x12
	lsl     r0, r0, #6
	bl      Function_21d55f8
	cmp     r0, #0x0
	beq     branch_21d1bcc
	mov     r0, #0x3
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1bcc

.thumb
branch_21d1bcc: @ 21d1bcc :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1bd0

.thumb
Function_21d1bd0: @ 21d1bd0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d40a8
	mov     r0, #0x46
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	add     r1, r0, #0x4
	ldr     r1, [r4, r1]
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	mov     r0, #0x0
	str     r0, [r4, #0x70]
	ldr     r1, [r4, #0x74]
	mov     r0, #0x33
	tst     r0, r1
	beq     branch_21d1bfc
	mov     r0, #0x1
	str     r0, [r4, #0x70]
.thumb
branch_21d1bfc: @ 21d1bfc :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	ldr     r0, [r4, #0x74]
	cmp     r0, #0x0
	beq     branch_21d1c38
	mov     r0, r4
	bl      Function_21d41ec
	cmp     r0, #0x0
	bne     branch_21d1c18
	mov     r0, #0x55
	mov     r1, #0x4
	lsl     r0, r0, #2
	b       branch_21d1c2c
@ 0x21d1c18

.thumb
branch_21d1c18: @ 21d1c18 :thumb
	ldr     r0, [r4, #0x74]
	bl      Function_21d5814
	mov     r1, #0x55
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x49
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
.thumb
branch_21d1c2c: @ 21d1c2c :thumb
	str     r1, [r4, r0]
	mov     r1, #0x1
	mov     r0, r4
	str     r1, [r4, #0x30]
	bl      Function_21d4798
.thumb
branch_21d1c38: @ 21d1c38 :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d5938
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d5938
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d5938
	mov     r0, r4
	bl      Function_21d5010
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d2bdc
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d2bdc
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d2bdc
	mov     r0, r4
	bl      Function_21d5848
	mov     r1, #0x1
	mov     r0, r4
	str     r1, [r4, #0x7c]
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x84
	str     r1, [r0, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	mov     r0, #0x4
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x8] @ 0x21d1c98, (=0x5ee)
	bl      Function_2005748
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1c96


.align 2


.word 0x5ee @ 0x21d1c98
.thumb
Function_21d1c9c: @ 21d1c9c :thumb
	mov     r1, #0x1
	ldr     r2, [r0, #0x6c]
	lsl     r1, r1, #12
	add     r2, r2, r1
	lsl     r1, r1, #3
	str     r2, [r0, #0x6c]
	cmp     r2, r1
	blt     branch_21d1cb8
	mov     r1, #0x0
	str     r1, [r0, #0x6c]
	mov     r1, #0x5
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	bx      lr
@ 0x21d1cb8

.thumb
branch_21d1cb8: @ 21d1cb8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d1cbc

.thumb
Function_21d1cbc: @ 21d1cbc :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0xec] @ 0x21d1dac, (=RAM_21bf67c)
	mov     r4, r0
	ldr     r2, [r1, #0x48]
	ldr     r1, [r4, #0x7c]
	cmp     r1, #0x1
	bne     branch_21d1d02
	mov     r1, #0x2
	lsl     r1, r1, #10
	mov     r3, r2
	tst     r3, r1
	beq     branch_21d1d02
	mov     r2, #0x2
	str     r2, [r4, #0x7c]
	bl      Function_21d5858
	mov     r0, r4
	bl      Function_21d5880
	cmp     r0, #0x0
	bne     branch_21d1cea
	mov     r0, #0x0
	str     r0, [r4, #0x70]
.thumb
branch_21d1cea: @ 21d1cea :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d58f4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d2bf4
	ldr     r0, [pc, #0xb4] @ 0x21d1db0, (=0x626)
	bl      Function_2005748
	b       branch_21d1d8a
@ 0x21d1d02

.thumb
branch_21d1d02: @ 21d1d02 :thumb
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_21d1d46
	mov     r1, #0x2
	mov     r0, r2
	tst     r0, r1
	beq     branch_21d1d46
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d5858
	mov     r0, r4
	bl      Function_21d5880
	cmp     r0, #0x0
	bne     branch_21d1d2e
	mov     r0, #0x0
	str     r0, [r4, #0x70]
.thumb
branch_21d1d2e: @ 21d1d2e :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d58f4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d2bf4
	ldr     r0, [pc, #0x70] @ 0x21d1db0, (=0x626)
	bl      Function_2005748
	b       branch_21d1d8a
@ 0x21d1d46

.thumb
branch_21d1d46: @ 21d1d46 :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_21d1d8a
	mov     r1, #0x1
	mov     r0, r2
	tst     r0, r1
	beq     branch_21d1d8a
	mov     r0, r4
	mov     r2, #0x2
	add     r0, #0x84
	str     r2, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d5858
	mov     r0, r4
	bl      Function_21d5880
	cmp     r0, #0x0
	bne     branch_21d1d74
	mov     r0, #0x0
	str     r0, [r4, #0x70]
.thumb
branch_21d1d74: @ 21d1d74 :thumb
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d58f4
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d2bf4
	ldr     r0, [pc, #0x28] @ 0x21d1db0, (=0x626)
	bl      Function_2005748
.thumb
branch_21d1d8a: @ 21d1d8a :thumb
	ldr     r0, [r4, #0x7c]
	cmp     r0, #0x2
	bne     branch_21d1da8
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_21d1da8
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_21d1da8
	mov     r0, #0x6
	str     r0, [r4, #0x0]
.thumb
branch_21d1da8: @ 21d1da8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1dac

.word RAM_21bf67c @ 0x21d1dac
.word 0x626 @ 0x21d1db0
.thumb
Function_21d1db4: @ 21d1db4 :thumb
	push    {r4,lr}
	mov     r1, #0x0
	mov     r4, r0
	bl      Function_21d2c04
	cmp     r0, #0x1
	beq     branch_21d1dda
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d2c04
	cmp     r0, #0x1
	beq     branch_21d1dda
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d2c04
	cmp     r0, #0x1
	bne     branch_21d1dde
.thumb
branch_21d1dda: @ 21d1dda :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1dde

.thumb
branch_21d1dde: @ 21d1dde :thumb
	mov     r0, r4
	bl      Function_21d4ff8
	mov     r0, #0x7
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1dec

.thumb
Function_21d1dec: @ 21d1dec :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r2, r4
	ldr     r1, [r4, #0x74]
	add     r2, #0x48
	bl      Function_21d5778
	str     r0, [r4, #0x44]
	cmp     r0, #0x6
	bne     branch_21d1e24
	ldr     r1, [r4, #0x74]
	mov     r0, #0xaa
	tst     r0, r1
	beq     branch_21d1e10
	mov     r0, #0x10
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1e10

.thumb
branch_21d1e10: @ 21d1e10 :thumb
	cmp     r1, #0x0
	beq     branch_21d1e1c
	mov     r0, #0xa
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1e1c

.thumb
branch_21d1e1c: @ 21d1e1c :thumb
	mov     r0, #0x8
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1e24

.thumb
branch_21d1e24: @ 21d1e24 :thumb
	ldr     r2, [r4, #0x74]
	mov     r1, #0xaa
	tst     r1, r2
	beq     branch_21d1e3e
	mov     r0, #0x2
	tst     r0, r2
	beq     branch_21d1e36
	mov     r0, #0x15
	b       branch_21d1e38
@ 0x21d1e36

.thumb
branch_21d1e36: @ 21d1e36 :thumb
	mov     r0, #0x13
.thumb
branch_21d1e38: @ 21d1e38 :thumb
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1e3e

.thumb
branch_21d1e3e: @ 21d1e3e :thumb
	cmp     r0, #0x2
	bne     branch_21d1e4a
	mov     r0, #0xe
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1e4a

.thumb
branch_21d1e4a: @ 21d1e4a :thumb
	mov     r0, #0xc
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1e52


.align 2, 0


.thumb
Function_21d1e54: @ 21d1e54 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d4ff8
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	mov     r0, #0x9
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1e68

.thumb
Function_21d1e68: @ 21d1e68 :thumb
	mov     r1, #0x1
	ldr     r2, [r0, #0x6c]
	lsl     r1, r1, #12
	add     r2, r2, r1
	lsl     r1, r1, #3
	str     r2, [r0, #0x6c]
	cmp     r2, r1
	blt     branch_21d1e7e
	mov     r1, #0x0
	str     r1, [r0, #0x6c]
	str     r1, [r0, #0x0]
.thumb
branch_21d1e7e: @ 21d1e7e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d1e82


.align 2, 0


.thumb
Function_21d1e84: @ 21d1e84 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d4ff8
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d4798
	mov     r0, #0xb
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1e9c

.thumb
Function_21d1e9c: @ 21d1e9c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d47ac
	cmp     r0, #0x1
	bne     branch_21d1eb8
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d4798
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1eb8

.thumb
branch_21d1eb8: @ 21d1eb8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1ebc

.thumb
Function_21d1ebc: @ 21d1ebc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d597c
	ldr     r1, [pc, #0x20] @ 0x21d1ee8, (=0x458)
	str     r0, [r4, #0x64]
	ldr     r2, [r4, r1]
	add     r0, r2, r0
	str     r0, [r4, r1]
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	mov     r0, #0xd
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_21d45f8
	mov     r0, r4
	mov     r1, #0xb
	bl      Function_21d4798
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1ee8

.word 0x458 @ 0x21d1ee8
.thumb
Function_21d1eec: @ 21d1eec :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	ldr     r2, [r4, #0x6c]
	lsl     r1, r1, #12
	add     r2, r2, r1
	mov     r1, #0x1e
	lsl     r1, r1, #12
	str     r2, [r4, #0x6c]
	cmp     r2, r1
	bne     branch_21d1f0a
	mov     r1, #0x2
	bl      Function_21d4798
	b       branch_21d1f30
@ 0x21d1f0a

.thumb
branch_21d1f0a: @ 21d1f0a :thumb
	ble     branch_21d1f30
	bl      Function_21d460c
	cmp     r0, #0x1
	bne     branch_21d1f30
	mov     r0, r4
	bl      Function_21d47ac
	cmp     r0, #0x1
	bne     branch_21d1f30
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d4798
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1f30

.thumb
branch_21d1f30: @ 21d1f30 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1f34

.thumb
Function_21d1f34: @ 21d1f34 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	str     r1, [r4, #0x64]
	str     r1, [r4, #0x6c]
	mov     r1, #0xf
	str     r1, [r4, #0x0]
	bl      Function_21d45f8
	mov     r0, r4
	mov     r1, #0xb
	bl      Function_21d4798
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1f52


.align 2, 0


.thumb
Function_21d1f54: @ 21d1f54 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	ldr     r2, [r4, #0x6c]
	lsl     r1, r1, #12
	add     r2, r2, r1
	mov     r1, #0xf
	lsl     r1, r1, #12
	str     r2, [r4, #0x6c]
	cmp     r2, r1
	bne     branch_21d1f72
	mov     r1, #0x2
	bl      Function_21d4798
	b       branch_21d1f9a
@ 0x21d1f72

.thumb
branch_21d1f72: @ 21d1f72 :thumb
	ble     branch_21d1f9a
	bl      Function_21d460c
	cmp     r0, #0x1
	bne     branch_21d1f9a
	mov     r0, r4
	bl      Function_21d47ac
	cmp     r0, #0x1
	bne     branch_21d1f9a
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d4798
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	mov     r0, #0x3
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1f9a

.thumb
branch_21d1f9a: @ 21d1f9a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1f9e


.align 2, 0


.thumb
Function_21d1fa0: @ 21d1fa0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d4ff8
	mov     r0, r4
	bl      Function_21d4210
	mov     r0, r4
	bl      Function_21d42d0
	mov     r0, r4
	mov     r1, #0xb
	bl      Function_21d4798
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	mov     r1, #0x11
	str     r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d1fc6


.align 2, 0


.thumb
Function_21d1fc8: @ 21d1fc8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	ldr     r2, [r4, #0x6c]
	lsl     r1, r1, #12
	add     r2, r2, r1
	lsl     r1, r1, #3
	str     r2, [r4, #0x6c]
	cmp     r2, r1
	blt     branch_21d1fee
	mov     r1, #0x3
	bl      Function_21d4798
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d1894
	mov     r0, #0x12
	str     r0, [r4, #0x0]
.thumb
branch_21d1fee: @ 21d1fee :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1ff2


.align 2, 0


.thumb
Function_21d1ff4: @ 21d1ff4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d47ac
	cmp     r0, #0x1
	bne     branch_21d2008
	mov     r0, #0x17
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2008

.thumb
branch_21d2008: @ 21d2008 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d200c

.thumb
Function_21d200c: @ 21d200c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d597c
	str     r0, [r4, #0x64]
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	mov     r0, #0x14
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_21d45f8
	mov     r0, r4
	bl      Function_21d4210
	mov     r0, r4
	bl      Function_21d42d0
	mov     r0, r4
	mov     r1, #0xb
	bl      Function_21d4798
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d203c

.thumb
Function_21d203c: @ 21d203c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	ldr     r2, [r4, #0x6c]
	lsl     r1, r1, #12
	add     r2, r2, r1
	mov     r1, #0x1e
	lsl     r1, r1, #12
	str     r2, [r4, #0x6c]
	cmp     r2, r1
	bne     branch_21d2062
	mov     r1, #0x1
	bl      Function_21d1894
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_21d4798
	b       branch_21d2082
@ 0x21d2062

.thumb
branch_21d2062: @ 21d2062 :thumb
	blt     branch_21d2082
	bl      Function_21d460c
	cmp     r0, #0x1
	bne     branch_21d2082
	mov     r0, r4
	bl      Function_21d47ac
	cmp     r0, #0x1
	bne     branch_21d2082
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	mov     r0, #0x17
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2082

.thumb
branch_21d2082: @ 21d2082 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2086


.align 2, 0


.thumb
Function_21d2088: @ 21d2088 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	str     r1, [r4, #0x6c]
	mov     r1, #0x16
	str     r1, [r4, #0x0]
	bl      Function_21d45f8
	mov     r0, r4
	mov     r1, #0xb
	bl      Function_21d4798
	mov     r0, r4
	bl      Function_21d4210
	mov     r0, r4
	bl      Function_21d42d0
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d20b0

.thumb
Function_21d20b0: @ 21d20b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	ldr     r2, [r4, #0x6c]
	lsl     r1, r1, #12
	add     r3, r2, r1
	lsl     r2, r1, #3
	str     r3, [r4, #0x6c]
	cmp     r3, r2
	bne     branch_21d20d4
	mov     r1, #0x3
	bl      Function_21d4798
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d1894
	b       branch_21d20f8
@ 0x21d20d4

.thumb
branch_21d20d4: @ 21d20d4 :thumb
	lsl     r1, r1, #3
	cmp     r3, r1
	blt     branch_21d20f8
	bl      Function_21d460c
	cmp     r0, #0x1
	bne     branch_21d20f8
	mov     r0, r4
	bl      Function_21d47ac
	cmp     r0, #0x1
	bne     branch_21d20f8
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	mov     r0, #0x18
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d20f8

.thumb
branch_21d20f8: @ 21d20f8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d20fc

.thumb
Function_21d20fc: @ 21d20fc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x50]
	cmp     r0, #0x6
	blt     branch_21d210a
	bl      ErrorHandling
.thumb
branch_21d210a: @ 21d210a :thumb
	mov     r0, #0x19
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2112


.align 2, 0


.thumb
Function_21d2114: @ 21d2114 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x50]
	cmp     r0, #0x6
	blt     branch_21d2122
	bl      ErrorHandling
.thumb
branch_21d2122: @ 21d2122 :thumb
	mov     r0, #0x1c
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d212a


.align 2, 0


.thumb
Function_21d212c: @ 21d212c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	str     r1, [r4, #0x64]
	str     r1, [r4, #0x68]
	mov     r2, #0x1a
	str     r2, [r4, #0x0]
	str     r1, [r4, #0x74]
	bl      Function_21d5938
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d5938
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d5938
	mov     r0, r4
	bl      Function_21d4ff8
	mov     r0, r4
	bl      Function_21d5200
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_21d4798
	ldr     r1, [r4, #0x60]
	cmp     r1, #0x0
	bne     branch_21d2174
	mov     r0, #0x3c
	str     r0, [r4, #0x0]
	mov     r0, #0x3f
	str     r0, [r4, #0x4]
	b       branch_21d2190
@ 0x21d2174

.thumb
branch_21d2174: @ 21d2174 :thumb
	cmp     r1, #0x3
	bge     branch_21d2182
	mov     r0, #0x3b
	str     r0, [r4, #0x0]
	mov     r0, #0x3f
	str     r0, [r4, #0x4]
	b       branch_21d2190
@ 0x21d2182

.thumb
branch_21d2182: @ 21d2182 :thumb
	ldr     r0, [pc, #0x10] @ 0x21d2194, (=0xc350)
	cmp     r1, r0
	blt     branch_21d2190
	mov     r0, #0x3d
	str     r0, [r4, #0x0]
	mov     r0, #0x1a
	str     r0, [r4, #0x4]
.thumb
branch_21d2190: @ 21d2190 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2194

.word 0xc350 @ 0x21d2194
.thumb
Function_21d2198: @ 21d2198 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x8
	bl      Function_21d55f8
	cmp     r0, #0x0
	beq     branch_21d21b4
	mov     r0, #0x3f
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_21d5244
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d21b4

.thumb
branch_21d21b4: @ 21d21b4 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #10
	bl      Function_21d55f8
	cmp     r0, #0x0
	beq     branch_21d21e8
	ldr     r0, [r4, #0x60]
	.hword  0x1ec0 @ sub r0, r0, #0x3
	str     r0, [r4, #0x60]
	ldr     r0, [pc, #0x24] @ 0x21d21ec, (=0x45c)
	ldr     r1, [r4, r0]
	.hword  0x1cc9 @ add r1, r1, #0x3
	str     r1, [r4, r0]
	mov     r0, #0x1b
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x21d21f0, (=0x5ed)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5244
	mov     r0, r4
	bl      Function_21d5010
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d21e8

.thumb
branch_21d21e8: @ 21d21e8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d21ec

.word 0x45c @ 0x21d21ec
.word 0x5ed @ 0x21d21f0
.thumb
Function_21d21f4: @ 21d21f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x8
	bl      Function_21d55f8
	cmp     r0, #0x0
	beq     branch_21d2210
	ldr     r0, [r4, #0x60]
	.hword  0x1cc0 @ add r0, r0, #0x3
	str     r0, [r4, #0x60]
	mov     r0, #0x3f
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2210

.thumb
branch_21d2210: @ 21d2210 :thumb
	mov     r0, #0x12
	lsl     r0, r0, #6
	bl      Function_21d55f8
	cmp     r0, #0x0
	beq     branch_21d2224
	mov     r0, #0x1c
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2224

.thumb
branch_21d2224: @ 21d2224 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2228

.thumb
Function_21d2228: @ 21d2228 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d4394
	mov     r1, #0x46
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, r1]
	mov     r0, r1
	add     r0, #0x8
	ldr     r0, [r4, r0]
	add     r1, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, r1]
	mov     r0, #0x0
	str     r0, [r4, #0x70]
	ldr     r1, [r4, #0x74]
	mov     r0, #0x33
	tst     r0, r1
	beq     branch_21d2256
	mov     r0, #0x1
	str     r0, [r4, #0x70]
.thumb
branch_21d2256: @ 21d2256 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	ldr     r0, [r4, #0x74]
	cmp     r0, #0x0
	beq     branch_21d2264
	mov     r0, #0x1
	str     r0, [r4, #0x30]
.thumb
branch_21d2264: @ 21d2264 :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d5938
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d5938
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d5938
	mov     r0, r4
	bl      Function_21d5010
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d2bdc
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d2bdc
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d2bdc
	mov     r0, r4
	bl      Function_21d5848
	mov     r0, r4
	mov     r1, #0x9
	bl      Function_21d4798
	mov     r1, #0x1
	mov     r0, r4
	str     r1, [r4, #0x7c]
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x84
	str     r1, [r0, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	mov     r0, #0x1d
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x8] @ 0x21d22cc, (=0x5ee)
	bl      Function_2005748
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d22ca


.align 2


.word 0x5ee @ 0x21d22cc
.thumb
Function_21d22d0: @ 21d22d0 :thumb
	mov     r1, #0x1
	ldr     r2, [r0, #0x6c]
	lsl     r1, r1, #12
	add     r2, r2, r1
	lsl     r1, r1, #3
	str     r2, [r0, #0x6c]
	cmp     r2, r1
	blt     branch_21d22ec
	mov     r1, #0x0
	str     r1, [r0, #0x6c]
	mov     r1, #0x1e
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	bx      lr
@ 0x21d22ec

.thumb
branch_21d22ec: @ 21d22ec :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d22f0

.thumb
Function_21d22f0: @ 21d22f0 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0xec] @ 0x21d23e0, (=RAM_21bf67c)
	mov     r4, r0
	ldr     r2, [r1, #0x48]
	ldr     r1, [r4, #0x7c]
	cmp     r1, #0x1
	bne     branch_21d2336
	mov     r1, #0x2
	lsl     r1, r1, #10
	mov     r3, r2
	tst     r3, r1
	beq     branch_21d2336
	mov     r2, #0x2
	str     r2, [r4, #0x7c]
	bl      Function_21d5858
	mov     r0, r4
	bl      Function_21d5880
	cmp     r0, #0x0
	bne     branch_21d231e
	mov     r0, #0x0
	str     r0, [r4, #0x70]
.thumb
branch_21d231e: @ 21d231e :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d58f4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d2bf4
	ldr     r0, [pc, #0xb4] @ 0x21d23e4, (=0x626)
	bl      Function_2005748
	b       branch_21d23be
@ 0x21d2336

.thumb
branch_21d2336: @ 21d2336 :thumb
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_21d237a
	mov     r1, #0x2
	mov     r0, r2
	tst     r0, r1
	beq     branch_21d237a
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d5858
	mov     r0, r4
	bl      Function_21d5880
	cmp     r0, #0x0
	bne     branch_21d2362
	mov     r0, #0x0
	str     r0, [r4, #0x70]
.thumb
branch_21d2362: @ 21d2362 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d58f4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d2bf4
	ldr     r0, [pc, #0x70] @ 0x21d23e4, (=0x626)
	bl      Function_2005748
	b       branch_21d23be
@ 0x21d237a

.thumb
branch_21d237a: @ 21d237a :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_21d23be
	mov     r1, #0x1
	mov     r0, r2
	tst     r0, r1
	beq     branch_21d23be
	mov     r0, r4
	mov     r2, #0x2
	add     r0, #0x84
	str     r2, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d5858
	mov     r0, r4
	bl      Function_21d5880
	cmp     r0, #0x0
	bne     branch_21d23a8
	mov     r0, #0x0
	str     r0, [r4, #0x70]
.thumb
branch_21d23a8: @ 21d23a8 :thumb
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d58f4
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d2bf4
	ldr     r0, [pc, #0x28] @ 0x21d23e4, (=0x626)
	bl      Function_2005748
.thumb
branch_21d23be: @ 21d23be :thumb
	ldr     r0, [r4, #0x7c]
	cmp     r0, #0x2
	bne     branch_21d23dc
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_21d23dc
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_21d23dc
	mov     r0, #0x1f
	str     r0, [r4, #0x0]
.thumb
branch_21d23dc: @ 21d23dc :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d23e0

.word RAM_21bf67c @ 0x21d23e0
.word 0x626 @ 0x21d23e4
.thumb
Function_21d23e8: @ 21d23e8 :thumb
	push    {r4,lr}
	mov     r1, #0x0
	mov     r4, r0
	bl      Function_21d2c04
	cmp     r0, #0x1
	beq     branch_21d240e
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d2c04
	cmp     r0, #0x1
	beq     branch_21d240e
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d2c04
	cmp     r0, #0x1
	bne     branch_21d2412
.thumb
branch_21d240e: @ 21d240e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2412

.thumb
branch_21d2412: @ 21d2412 :thumb
	mov     r0, r4
	bl      Function_21d4ff8
	mov     r0, #0x20
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2420

.thumb
Function_21d2420: @ 21d2420 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r2, r4
	ldr     r1, [r4, #0x74]
	add     r2, #0x48
	bl      Function_21d5778
	str     r0, [r4, #0x44]
	cmp     r0, #0x6
	bne     branch_21d243c
	mov     r0, #0x21
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d243c

.thumb
branch_21d243c: @ 21d243c :thumb
	mov     r1, #0x3
	ldr     r2, [r4, #0x74]
	lsl     r1, r1, #8
	tst     r1, r2
	beq     branch_21d244e
	mov     r0, #0x27
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d244e

.thumb
branch_21d244e: @ 21d244e :thumb
	cmp     r0, #0x2
	bne     branch_21d245a
	mov     r0, #0x25
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d245a

.thumb
branch_21d245a: @ 21d245a :thumb
	mov     r0, #0x23
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2462


.align 2, 0


.thumb
Function_21d2464: @ 21d2464 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d4ff8
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_21d4798
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	mov     r0, #0x22
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2480

.thumb
Function_21d2480: @ 21d2480 :thumb
	mov     r1, #0x1
	ldr     r2, [r0, #0x6c]
	lsl     r1, r1, #12
	add     r2, r2, r1
	lsl     r1, r1, #3
	str     r2, [r0, #0x6c]
	cmp     r2, r1
	blt     branch_21d249c
	mov     r1, #0x0
	str     r1, [r0, #0x6c]
	mov     r1, #0x19
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	bx      lr
@ 0x21d249c

.thumb
branch_21d249c: @ 21d249c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d24a0

.thumb
Function_21d24a0: @ 21d24a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d597c
	ldr     r1, [pc, #0x20] @ 0x21d24cc, (=0x458)
	str     r0, [r4, #0x64]
	ldr     r2, [r4, r1]
	add     r0, r2, r0
	str     r0, [r4, r1]
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	mov     r0, #0x24
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_21d45f8
	mov     r0, r4
	mov     r1, #0xa
	bl      Function_21d4798
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d24cc

.word 0x458 @ 0x21d24cc
.thumb
Function_21d24d0: @ 21d24d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d460c
	cmp     r0, #0x1
	bne     branch_21d24ec
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_21d4798
	mov     r0, #0x19
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d24ec

.thumb
branch_21d24ec: @ 21d24ec :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d24f0

.thumb
Function_21d24f0: @ 21d24f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	str     r1, [r4, #0x64]
	str     r1, [r4, #0x6c]
	mov     r1, #0x26
	str     r1, [r4, #0x0]
	bl      Function_21d45f8
	mov     r0, r4
	mov     r1, #0xa
	bl      Function_21d4798
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d250e


.align 2, 0


.thumb
Function_21d2510: @ 21d2510 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	ldr     r2, [r4, #0x6c]
	lsl     r1, r1, #12
	add     r2, r2, r1
	mov     r1, #0xf
	lsl     r1, r1, #12
	str     r2, [r4, #0x6c]
	cmp     r2, r1
	ble     branch_21d2548
	bl      Function_21d460c
	cmp     r0, #0x1
	bne     branch_21d2548
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_21d4798
	mov     r0, r4
	bl      Function_21d4ff8
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	mov     r0, #0x1c
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2548

.thumb
branch_21d2548: @ 21d2548 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d254c

.thumb
Function_21d254c: @ 21d254c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d597c
	ldr     r1, [pc, #0x38] @ 0x21d2590, (=0x458)
	str     r0, [r4, #0x64]
	ldr     r2, [r4, r1]
	add     r0, r2, r0
	str     r0, [r4, r1]
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	mov     r0, #0x28
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_21d45f8
	mov     r0, r4
	mov     r1, #0xa
	bl      Function_21d4798
	mov     r0, r4
	bl      Function_21d53b0
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d1894
	mov     r0, r4
	bl      Function_21d7b08
	ldr     r1, [pc, #0x8] @ 0x21d2594, (=0x454)
	str     r0, [r4, r1]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2590

.word 0x458 @ 0x21d2590
.word 0x454 @ 0x21d2594
.thumb
Function_21d2598: @ 21d2598 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d460c
	cmp     r0, #0x1
	bne     branch_21d25bc
	ldr     r0, [pc, #0x18] @ 0x21d25c0, (=0x454)
	ldr     r0, [r4, r0]
	bl      Function_207136c
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_21d4798
	mov     r0, #0x29
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d25bc

.thumb
branch_21d25bc: @ 21d25bc :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d25c0

.word 0x454 @ 0x21d25c0
.thumb
Function_21d25c4: @ 21d25c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d47b4
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	str     r0, [r4, #0x14]
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	mov     r1, #0x2a
	str     r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d25dc

.thumb
Function_21d25dc: @ 21d25dc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x1c]
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x38] @ 0x21d2624, (=0x3e7)
	str     r1, [r4, #0x1c]
	cmp     r1, r0
	bls     branch_21d25f4
	str     r0, [r4, #0x1c]
.thumb
branch_21d25f4: @ 21d25f4 :thumb
	ldr     r1, [r4, #0x1c]
	mov     r0, r4
	bl      Function_21d79bc
	mov     r0, #0x10
	str     r0, [r4, #0x10]
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	str     r0, [r4, #0x24]
	str     r0, [r4, #0x28]
	str     r0, [r4, #0x2c]
	mov     r0, r4
	bl      Function_21d44e8
	cmp     r0, #0x0
	bne     branch_21d261a
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
.thumb
branch_21d261a: @ 21d261a :thumb
	mov     r0, #0x2b
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2622


.align 2


.word 0x3e7 @ 0x21d2624
.thumb
Function_21d2628: @ 21d2628 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x10]
	cmp     r0, #0x1
	bge     branch_21d263a
	bl      ErrorHandling
.thumb
branch_21d263a: @ 21d263a :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d5938
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d5938
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d5938
	mov     r0, r4
	bl      Function_21d4ff8
	mov     r0, r4
	bl      Function_21d5200
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_21d4798
	mov     r2, #0x2c
	str     r2, [r4, #0x0]
	ldr     r1, [r4, #0x60]
	cmp     r1, #0x0
	bne     branch_21d267a
	mov     r0, #0x3c
	str     r0, [r4, #0x0]
	mov     r0, #0x3f
	str     r0, [r4, #0x4]
	b       branch_21d2694
@ 0x21d267a

.thumb
branch_21d267a: @ 21d267a :thumb
	cmp     r1, #0x1
	bge     branch_21d2688
	mov     r0, #0x3c
	str     r0, [r4, #0x0]
	mov     r0, #0x3f
	str     r0, [r4, #0x4]
	b       branch_21d2694
@ 0x21d2688

.thumb
branch_21d2688: @ 21d2688 :thumb
	ldr     r0, [pc, #0xc] @ 0x21d2698, (=0xc350)
	cmp     r1, r0
	blt     branch_21d2694
	mov     r0, #0x3d
	str     r0, [r4, #0x0]
	str     r2, [r4, #0x4]
.thumb
branch_21d2694: @ 21d2694 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2698

.word 0xc350 @ 0x21d2698
.thumb
Function_21d269c: @ 21d269c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x8
	bl      Function_21d55f8
	cmp     r0, #0x0
	beq     branch_21d26b2
	mov     r0, #0x3f
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d26b2

.thumb
branch_21d26b2: @ 21d26b2 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #10
	bl      Function_21d55f8
	cmp     r0, #0x0
	beq     branch_21d26f8
	ldr     r0, [r4, #0x60]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x60]
	ldr     r0, [r4, #0x14]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x14]
	ldr     r0, [pc, #0x30] @ 0x21d26fc, (=0x45c)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	bge     branch_21d26dc
	mov     r0, #0x0
	str     r0, [r4, #0x14]
.thumb
branch_21d26dc: @ 21d26dc :thumb
	mov     r0, #0x2d
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x21d2700, (=0x5ed)
	bl      Function_2005748
	mov     r0, r4
	bl      Function_21d5244
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d4fb8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d26f8

.thumb
branch_21d26f8: @ 21d26f8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d26fc

.word 0x45c @ 0x21d26fc
.word 0x5ed @ 0x21d2700
.thumb
Function_21d2704: @ 21d2704 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x8
	bl      Function_21d55f8
	cmp     r0, #0x0
	beq     branch_21d2720
	ldr     r0, [r4, #0x60]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x60]
	mov     r0, #0x3f
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2720

.thumb
branch_21d2720: @ 21d2720 :thumb
	mov     r0, #0x12
	lsl     r0, r0, #6
	bl      Function_21d55f8
	cmp     r0, #0x0
	beq     branch_21d2734
	mov     r0, #0x2e
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2734

.thumb
branch_21d2734: @ 21d2734 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2738

.thumb
Function_21d2738: @ 21d2738 :thumb
	push    {r4,lr}
	mov     r2, #0x46
	mov     r4, r0
	lsl     r2, r2, #4
	ldr     r1, [r4, r2]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r2]
	mov     r1, r2
	add     r1, #0xc
	ldr     r1, [r4, r1]
	add     r2, #0xc
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r2]
	mov     r1, #0x1
	str     r1, [r4, #0x74]
	str     r1, [r4, #0x30]
	str     r1, [r4, #0x70]
	mov     r1, #0x0
	bl      Function_21d5938
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d5938
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d5938
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d4fb8
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d2bdc
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d2bdc
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d2bdc
	mov     r0, r4
	bl      Function_21d5848
	mov     r0, r4
	bl      Function_21d45b0
	mov     r1, #0x1
	mov     r0, r4
	str     r1, [r4, #0x7c]
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x84
	str     r1, [r0, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	mov     r0, #0x2f
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x68] @ 0x21d2820, (=0x5ee)
	bl      Function_2005748
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	bne     branch_21d27ec
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	bne     branch_21d27ec
	mov     r0, r4
	bl      Function_21d44c4
	cmp     r0, #0x1
	bne     branch_21d27de
	mov     r0, #0x1
	str     r0, [r4, #0x28]
	mov     r0, #0x13
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_21d27de: @ 21d27de :thumb
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x1
	bne     branch_21d27ec
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d53f8
.thumb
branch_21d27ec: @ 21d27ec :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	bne     branch_21d281c
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	bne     branch_21d281c
	mov     r0, r4
	bl      Function_21d44a0
	cmp     r0, #0x1
	bne     branch_21d280e
	mov     r0, #0x1
	str     r0, [r4, #0x24]
	ldr     r0, [pc, #0x1c] @ 0x21d2824, (=0x4bc)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_21d280e: @ 21d280e :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x1
	bne     branch_21d281c
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d53f8
.thumb
branch_21d281c: @ 21d281c :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2820

.word 0x5ee @ 0x21d2820
.word 0x4bc @ 0x21d2824
.thumb
Function_21d2828: @ 21d2828 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	ldr     r2, [r0, #0x6c]
	lsl     r1, r1, #12
	add     r2, r2, r1
	lsl     r1, r1, #3
	str     r2, [r0, #0x6c]
	cmp     r2, r1
	blt     branch_21d284c
	mov     r1, #0x0
	str     r1, [r0, #0x6c]
	mov     r1, #0x30
	str     r1, [r0, #0x0]
	mov     r1, #0x6
	bl      Function_21d4798
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d284c

.thumb
branch_21d284c: @ 21d284c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d2850

.thumb
Function_21d2850: @ 21d2850 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0xf4] @ 0x21d2948, (=RAM_21bf67c)
	mov     r4, r0
	ldr     r2, [r1, #0x48]
	ldr     r1, [r4, #0x7c]
	cmp     r1, #0x1
	bne     branch_21d2898
	mov     r1, #0x2
	lsl     r1, r1, #10
	mov     r3, r2
	tst     r3, r1
	beq     branch_21d2898
	mov     r2, #0x2
	str     r2, [r4, #0x7c]
	bl      Function_21d5858
	mov     r0, r4
	bl      Function_21d58c0
	cmp     r0, #0x0
	bne     branch_21d2880
	mov     r0, #0x0
	str     r0, [r4, #0x70]
	str     r0, [r4, #0x30]
.thumb
branch_21d2880: @ 21d2880 :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d58f4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d2bf4
	ldr     r0, [pc, #0xb8] @ 0x21d294c, (=0x5f5)
	bl      Function_2005748
	b       branch_21d2924
@ 0x21d2898

.thumb
branch_21d2898: @ 21d2898 :thumb
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_21d28de
	mov     r1, #0x2
	mov     r0, r2
	tst     r0, r1
	beq     branch_21d28de
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d5858
	mov     r0, r4
	bl      Function_21d58c0
	cmp     r0, #0x0
	bne     branch_21d28c6
	mov     r0, #0x0
	str     r0, [r4, #0x70]
	str     r0, [r4, #0x30]
.thumb
branch_21d28c6: @ 21d28c6 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d58f4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d2bf4
	ldr     r0, [pc, #0x74] @ 0x21d294c, (=0x5f5)
	bl      Function_2005748
	b       branch_21d2924
@ 0x21d28de

.thumb
branch_21d28de: @ 21d28de :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_21d2924
	mov     r1, #0x1
	mov     r0, r2
	tst     r0, r1
	beq     branch_21d2924
	mov     r0, r4
	mov     r2, #0x2
	add     r0, #0x84
	str     r2, [r0, #0x0]
	mov     r0, r4
	bl      Function_21d5858
	mov     r0, r4
	bl      Function_21d58c0
	cmp     r0, #0x0
	bne     branch_21d290e
	mov     r0, #0x0
	str     r0, [r4, #0x70]
	str     r0, [r4, #0x30]
.thumb
branch_21d290e: @ 21d290e :thumb
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d58f4
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d2bf4
	ldr     r0, [pc, #0x2c] @ 0x21d294c, (=0x5f5)
	bl      Function_2005748
.thumb
branch_21d2924: @ 21d2924 :thumb
	ldr     r0, [r4, #0x7c]
	cmp     r0, #0x2
	bne     branch_21d2942
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_21d2942
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_21d2942
	mov     r0, #0x31
	str     r0, [r4, #0x0]
.thumb
branch_21d2942: @ 21d2942 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2946


.align 2


.word RAM_21bf67c @ 0x21d2948
.word 0x5f5 @ 0x21d294c
.thumb
Function_21d2950: @ 21d2950 :thumb
	push    {r4,lr}
	mov     r1, #0x0
	mov     r4, r0
	bl      Function_21d2c04
	cmp     r0, #0x1
	beq     branch_21d2976
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d2c04
	cmp     r0, #0x1
	beq     branch_21d2976
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d2c04
	cmp     r0, #0x1
	bne     branch_21d297a
.thumb
branch_21d2976: @ 21d2976 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d297a

.thumb
branch_21d297a: @ 21d297a :thumb
	mov     r0, r4
	bl      Function_21d4ff8
	mov     r0, #0x32
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2988

.thumb
Function_21d2988: @ 21d2988 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r2, r4
	ldr     r1, [r4, #0x74]
	add     r2, #0x48
	bl      Function_21d57ec
	str     r0, [r4, #0x44]
	cmp     r0, #0x6
	ldr     r0, [r4, #0x28]
	bne     branch_21d29ae
	cmp     r0, #0x1
	bne     branch_21d29a6
	mov     r0, #0x3
	str     r0, [r4, #0x28]
.thumb
branch_21d29a6: @ 21d29a6 :thumb
	mov     r0, #0x33
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d29ae

.thumb
branch_21d29ae: @ 21d29ae :thumb
	cmp     r0, #0x1
	bne     branch_21d29b6
	mov     r0, #0x2
	str     r0, [r4, #0x28]
.thumb
branch_21d29b6: @ 21d29b6 :thumb
	mov     r0, #0x34
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d29be


.align 2, 0


.thumb
Function_21d29c0: @ 21d29c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d4ff8
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_21d4798
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x1
	bgt     branch_21d29da
	mov     r0, #0x36
	b       branch_21d29dc
@ 0x21d29da

.thumb
branch_21d29da: @ 21d29da :thumb
	mov     r0, #0x2b
.thumb
branch_21d29dc: @ 21d29dc :thumb
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d29e2


.align 2, 0


.thumb
Function_21d29e4: @ 21d29e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x44]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x20] @ 0x21d2a10, (=0x21d94f0)
	ldr     r3, [r1, r2]
	ldr     r1, [pc, #0x20] @ 0x21d2a14, (=0x458)
	str     r3, [r4, #0x64]
	ldr     r2, [r4, r1]
	add     r2, r2, r3
	str     r2, [r4, r1]
	bl      Function_21d45f8
	mov     r0, r4
	mov     r1, #0xa
	bl      Function_21d4798
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	mov     r1, #0x35
	str     r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d2a10

.word 0x21d94f0 @ 0x21d2a10
.word 0x458 @ 0x21d2a14
.thumb
Function_21d2a18: @ 21d2a18 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d460c
	cmp     r0, #0x0
	bne     branch_21d2a28
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2a28

.thumb
branch_21d2a28: @ 21d2a28 :thumb
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_21d4798
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x1
	bgt     branch_21d2a3a
	mov     r0, #0x36
	b       branch_21d2a3c
@ 0x21d2a3a

.thumb
branch_21d2a3a: @ 21d2a3a :thumb
	mov     r0, #0x2b
.thumb
branch_21d2a3c: @ 21d2a3c :thumb
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2a42


.align 2, 0


.thumb
Function_21d2a44: @ 21d2a44 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x10]
	beq     branch_21d2a54
	bl      ErrorHandling
.thumb
branch_21d2a54: @ 21d2a54 :thumb
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x1
	bne     branch_21d2a70
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	bne     branch_21d2a70
	mov     r0, r4
	mov     r1, #0x8
	bl      Function_21d4798
	mov     r0, #0x3a
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2a70

.thumb
branch_21d2a70: @ 21d2a70 :thumb
	mov     r0, #0x37
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2a78

.thumb
Function_21d2a78: @ 21d2a78 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d44fc
	mov     r0, r4
	bl      Function_21d4550
	ldr     r1, [r4, #0x24]
	cmp     r1, #0x1
	bne     branch_21d2a8e
	mov     r0, #0x2
.thumb
branch_21d2a8e: @ 21d2a8e :thumb
	cmp     r0, #0x2
	bne     branch_21d2aa2
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_21d4798
	mov     r0, #0x38
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2aa2

.thumb
branch_21d2aa2: @ 21d2aa2 :thumb
	cmp     r0, #0x1
	bne     branch_21d2ab6
	mov     r0, r4
	mov     r1, #0xc
	bl      Function_21d4798
	mov     r0, #0x39
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2ab6

.thumb
branch_21d2ab6: @ 21d2ab6 :thumb
	mov     r0, #0x23
	mov     r1, #0x0
	bl      Function_2005844
	mov     r0, #0x2a
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2ac6


.align 2, 0


.thumb
Function_21d2ac8: @ 21d2ac8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d47ac
	cmp     r0, #0x0
	bne     branch_21d2ad8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2ad8

.thumb
branch_21d2ad8: @ 21d2ad8 :thumb
	mov     r0, #0x2a
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2ae0

.thumb
Function_21d2ae0: @ 21d2ae0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d47ac
	cmp     r0, #0x0
	bne     branch_21d2af0
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2af0

.thumb
branch_21d2af0: @ 21d2af0 :thumb
	mov     r0, #0x2a
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2af8

.thumb
Function_21d2af8: @ 21d2af8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d47ac
	cmp     r0, #0x0
	bne     branch_21d2b08
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2b08

.thumb
branch_21d2b08: @ 21d2b08 :thumb
	ldr     r1, [r4, #0x1c]
	ldr     r0, [r4, #0x20]
	cmp     r1, r0
	bls     branch_21d2b12
	str     r1, [r4, #0x20]
.thumb
branch_21d2b12: @ 21d2b12 :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d1894
	mov     r0, r4
	bl      Function_21d53d4
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d2b28

.thumb
Function_21d2b28: @ 21d2b28 :thumb
	push    {r4,lr}
	mov     r1, #0x0
	mov     r4, r0
	bl      Function_21d148c
	mov     r0, #0x3e
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2b3a


.align 2, 0


.thumb
Function_21d2b3c: @ 21d2b3c :thumb
	push    {r4,lr}
	mov     r1, #0x2
	mov     r4, r0
	bl      Function_21d148c
	mov     r0, #0x3e
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2b4e


.align 2, 0


.thumb
Function_21d2b50: @ 21d2b50 :thumb
	push    {r4,lr}
	mov     r1, #0x1
	mov     r4, r0
	bl      Function_21d148c
	mov     r0, #0x3e
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2b62


.align 2, 0


.thumb
Function_21d2b64: @ 21d2b64 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x3
	bl      Function_21d55f8
	cmp     r0, #0x0
	beq     branch_21d2b7c
	mov     r0, r4
	bl      Function_21d14e4
	ldr     r0, [r4, #0x4]
	str     r0, [r4, #0x0]
.thumb
branch_21d2b7c: @ 21d2b7c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d2b80

.thumb
Function_21d2b80: @ 21d2b80 :thumb
	push    {r3,lr}
	bl      Function_21d5244
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x21d2b8a


.align 2, 0


.thumb
Function_21d2b8c: @ 21d2b8c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r7
	add     r5, #0xb4
	mov     r4, #0x0
	mov     r6, r5
.thumb
branch_21d2b98: @ 21d2b98 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	mov     r2, r4
	str     r4, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x21d2bbc, (=0x21d2c11)
	mov     r1, r6
	add     r2, #0x81
	str     r7, [r5, #0x20]
	bl      AddTaskToTaskList1
	str     r0, [r5, #0x1c]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x24
	add     r6, #0x24
	cmp     r4, #0x3
	bcc     branch_21d2b98
	pop     {r3-r7,pc}
@ 0x21d2bba


.align 2


.word 0x21d2c11 @ 0x21d2bbc
.thumb
Function_21d2bc0: @ 21d2bc0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_21d2bc6: @ 21d2bc6 :thumb
	mov     r0, r5
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	bl      Call_RemoveTaskFromTaskList
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x24
	cmp     r4, #0x3
	bcc     branch_21d2bc6
	pop     {r3-r5,pc}
@ 0x21d2bda


.align 2, 0


.thumb
Function_21d2bdc: @ 21d2bdc :thumb
	mov     r2, #0x24
	mov     r3, r1
	mul     r3, r2
	add     r1, r0, r3
	add     r0, r0, r3
	mov     r2, #0x1
	add     r1, #0xb4
	str     r2, [r1, #0x0]
	add     r0, #0xb8
	str     r2, [r0, #0x0]
	bx      lr
@ 0x21d2bf2


.align 2, 0


.thumb
Function_21d2bf4: @ 21d2bf4 :thumb
	mov     r2, #0x24
	mul     r2, r1
	add     r0, r0, r2
	mov     r3, #0x2
	add     r0, #0xb4
	str     r3, [r0, #0x0]
	bx      lr
@ 0x21d2c02


.align 2, 0


.thumb
Function_21d2c04: @ 21d2c04 :thumb
	mov     r2, #0x24
	mul     r2, r1
	add     r0, r0, r2
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x21d2c10

.thumb
Function_21d2c10: @ 21d2c10 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r4, [r5, #0x20]
	ldr     r6, [pc, #0x14] @ 0x21d2c2c, (=0x21d86c4)
.thumb
branch_21d2c18: @ 21d2c18 :thumb
	ldr     r2, [r5, #0x0]
	mov     r0, r5
	lsl     r2, r2, #2
	ldr     r2, [r6, r2]
	mov     r1, r4
	blx     r2
	cmp     r0, #0x1
	beq     branch_21d2c18
	pop     {r4-r6,pc}
@ 0x21d2c2a


.align 2


.word 0x21d86c4 @ 0x21d2c2c
.thumb
Function_21d2c30: @ 21d2c30 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d2c34

.thumb
Function_21d2c34: @ 21d2c34 :thumb
	push    {r3,lr}
	mov     r2, r0
	mov     r0, r1
	ldr     r1, [r2, #0x10]
	mov     r2, r0
	add     r2, #0x8c
	ldr     r2, [r2, #0x0]
	bl      Function_21d3fe8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d2c4a


.align 2, 0


.thumb
Function_21d2c4c: @ 21d2c4c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x0]
	mov     r4, r1
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r5, #0x0]
	mov     r2, #0x0
	str     r2, [r5, #0x14]
	str     r2, [r5, #0x18]
	ldr     r2, [r4, #0x30]
	cmp     r2, #0x1
	ldr     r2, [r4, #0x8]
	bne     branch_21d2c96
	cmp     r2, #0x0
	bne     branch_21d2c80
	bl      Function_21d2d88
	cmp     r0, #0x0
	bne     branch_21d2ca4
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d3780
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	b       branch_21d2ca4
@ 0x21d2c80

.thumb
branch_21d2c80: @ 21d2c80 :thumb
	bl      Function_21d2dc0
	cmp     r0, #0x0
	bne     branch_21d2ca4
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d3830
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	b       branch_21d2ca4
@ 0x21d2c96

.thumb
branch_21d2c96: @ 21d2c96 :thumb
	cmp     r2, #0x0
	bne     branch_21d2ca0
	bl      Function_21d3780
	b       branch_21d2ca4
@ 0x21d2ca0

.thumb
branch_21d2ca0: @ 21d2ca0 :thumb
	bl      Function_21d3830
.thumb
branch_21d2ca4: @ 21d2ca4 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d2ca8

.thumb
Function_21d2ca8: @ 21d2ca8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r3, r1
	ldr     r1, [r5, #0x10]
	mov     r7, r3
	lsl     r0, r1, #2
	add     r7, #0x90
	str     r0, [sp, #0x0]
	ldr     r0, [r7, r0]
	mov     r4, #0x0
	lsr     r6, r0, #31
	lsl     r2, r0, #15
	sub     r2, r2, r6
	mov     r0, #0xf
	ror     r2, r0
	add     r0, r6, r2
	beq     branch_21d2ce2
	mov     r2, r3
	add     r2, #0x8c
	ldr     r2, [r2, #0x0]
	mov     r4, #0x1
	cmp     r0, r2
	bge     branch_21d2cda
	mov     r2, r0
.thumb
branch_21d2cda: @ 21d2cda :thumb
	mov     r0, r3
	bl      Function_21d4024
	b       branch_21d2d08
@ 0x21d2ce2

.thumb
branch_21d2ce2: @ 21d2ce2 :thumb
	ldr     r2, [r5, #0x18]
	cmp     r2, #0x0
	beq     branch_21d2d08
	.hword  0x1e50 @ sub r0, r2, #0x1
	str     r0, [r5, #0x18]
	mov     r0, r3
	add     r3, #0x8c
	ldr     r2, [r3, #0x0]
	mov     r4, #0x1
	bl      Function_21d3fe8
	ldr     r0, [sp, #0x0]
	ldr     r0, [r7, r0]
	lsr     r2, r0, #31
	lsl     r1, r0, #15
	sub     r1, r1, r2
	mov     r0, #0xf
	ror     r1, r0
	add     r0, r2, r1
.thumb
branch_21d2d08: @ 21d2d08 :thumb
	cmp     r0, #0x0
	bne     branch_21d2d44
	ldr     r6, [r5, #0x18]
	cmp     r6, #0x0
	bne     branch_21d2d44
	ldr     r3, [pc, #0x38] @ 0x21d2d4c, (=0x21d86d8)
	add     r2, sp, #0x4
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	cmp     r6, #0x4
	str     r0, [r2, #0x0]
	ble     branch_21d2d28
	mov     r6, #0x4
.thumb
branch_21d2d28: @ 21d2d28 :thumb
	lsl     r1, r6, #2
	add     r0, sp, #0x4
	ldr     r0, [r0, r1]
	str     r0, [r5, #0x8]
	mov     r0, #0x0
	str     r0, [r5, #0xc]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	cmp     r4, #0x0
	bne     branch_21d2d44
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d2d44

.thumb
branch_21d2d44: @ 21d2d44 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d2d4a


.align 2


.word 0x21d86d8 @ 0x21d2d4c
.thumb
Function_21d2d50: @ 21d2d50 :thumb
	push    {r3,r4}
	ldr     r2, [r0, #0x10]
	ldr     r3, [r0, #0x8]
	add     r1, #0x9c
	lsl     r2, r2, #2
	str     r3, [r1, r2]
	ldr     r3, [r0, #0x8]
	neg     r3, r3
	str     r3, [r0, #0x8]
	ldr     r3, [r0, #0xc]
	add     r4, r3, #0x1
	mov     r3, #0x1
	str     r4, [r0, #0xc]
	tst     r3, r4
	bne     branch_21d2d74
	ldr     r3, [r0, #0x8]
	asr     r3, r3, #2
	str     r3, [r0, #0x8]
.thumb
branch_21d2d74: @ 21d2d74 :thumb
	ldr     r3, [r0, #0x8]
	cmp     r3, #0x0
	bne     branch_21d2d82
	mov     r3, #0x0
	str     r3, [r0, #0x0]
	str     r3, [r0, #0x4]
	str     r3, [r1, r2]
.thumb
branch_21d2d82: @ 21d2d82 :thumb
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x21d2d88

.thumb
Function_21d2d88: @ 21d2d88 :thumb
	push    {r3,lr}
	ldr     r2, [r1, #0x74]
	cmp     r2, #0x0
	bne     branch_21d2d94
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d2d94

.thumb
branch_21d2d94: @ 21d2d94 :thumb
	ldr     r2, [r0, #0x10]
	cmp     r2, #0x0
	beq     branch_21d2da4
	cmp     r2, #0x1
	beq     branch_21d2daa
	cmp     r2, #0x2
	beq     branch_21d2db0
	b       branch_21d2db6
@ 0x21d2da4

.thumb
branch_21d2da4: @ 21d2da4 :thumb
	bl      Function_21d2de0
	pop     {r3,pc}
@ 0x21d2daa

.thumb
branch_21d2daa: @ 21d2daa :thumb
	bl      Function_21d2e1c
	pop     {r3,pc}
@ 0x21d2db0

.thumb
branch_21d2db0: @ 21d2db0 :thumb
	bl      Function_21d2e58
	pop     {r3,pc}
@ 0x21d2db6

.thumb
branch_21d2db6: @ 21d2db6 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d2dbe


.align 2, 0


.thumb
Function_21d2dc0: @ 21d2dc0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x74]
	cmp     r0, #0x0
	bne     branch_21d2dd0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d2dd0

.thumb
branch_21d2dd0: @ 21d2dd0 :thumb
	bl      Function_21d5618
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d3738
	pop     {r3-r5,pc}
@ 0x21d2de0

.thumb
Function_21d2de0: @ 21d2de0 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x74]
	bl      Function_21d5618
	mov     r6, r0
	cmp     r6, #0x6
	bne     branch_21d2df6
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x21d2df6

.thumb
branch_21d2df6: @ 21d2df6 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d38fc
	cmp     r0, #0x1
	bne     branch_21d2e0e
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_21d2e94
	pop     {r4-r6,pc}
@ 0x21d2e0e

.thumb
branch_21d2e0e: @ 21d2e0e :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_21d2fac
	pop     {r4-r6,pc}
@ 0x21d2e1a


.align 2, 0


.thumb
Function_21d2e1c: @ 21d2e1c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x74]
	bl      Function_21d5618
	mov     r6, r0
	cmp     r6, #0x6
	bne     branch_21d2e32
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x21d2e32

.thumb
branch_21d2e32: @ 21d2e32 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d38fc
	cmp     r0, #0x1
	bne     branch_21d2e4a
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_21d32ec
	pop     {r4-r6,pc}
@ 0x21d2e4a

.thumb
branch_21d2e4a: @ 21d2e4a :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_21d3394
	pop     {r4-r6,pc}
@ 0x21d2e56


.align 2, 0


.thumb
Function_21d2e58: @ 21d2e58 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x74]
	bl      Function_21d5618
	mov     r6, r0
	cmp     r6, #0x6
	bne     branch_21d2e6e
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x21d2e6e

.thumb
branch_21d2e6e: @ 21d2e6e :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d38fc
	cmp     r0, #0x1
	bne     branch_21d2e86
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_21d32ec
	pop     {r4-r6,pc}
@ 0x21d2e86

.thumb
branch_21d2e86: @ 21d2e86 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_21d3394
	pop     {r4-r6,pc}
@ 0x21d2e92


.align 2, 0


.thumb
Function_21d2e94: @ 21d2e94 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x0]
	ldr     r0, [r0, #0x10]
	mov     r4, r1
	mov     r6, r2
	str     r0, [sp, #0x8]
	mov     r7, #0x1
.thumb
branch_21d2ea4: @ 21d2ea4 :thumb
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	mov     r2, r7
	bl      Function_21d55d4
	cmp     r6, r0
	bne     branch_21d2edc
	mov     r5, #0x0
	cmp     r7, #0x3
	bgt     branch_21d2edc
.thumb
branch_21d2eb8: @ 21d2eb8 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d2ed4
	ldr     r0, [sp, #0x0]
	add     r1, r7, r5
	str     r1, [r0, #0x14]
	str     r5, [r0, #0x18]
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x21d2ed4

.thumb
branch_21d2ed4: @ 21d2ed4 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r0, r7, r5
	cmp     r0, #0x3
	ble     branch_21d2eb8
.thumb
branch_21d2edc: @ 21d2edc :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, #0x3
	ble     branch_21d2ea4
	mov     r0, #0x4
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x70]
	cmp     r0, #0x1
	bne     branch_21d2ef0
	mov     r0, #0x15
	str     r0, [sp, #0x10]
.thumb
branch_21d2ef0: @ 21d2ef0 :thumb
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r7, #0x1
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x1
	blt     branch_21d2fa4
.thumb
branch_21d2f00: @ 21d2f00 :thumb
	mov     r2, #0x1
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	sub     r2, r2, r7
	bl      Function_21d55d4
	cmp     r6, r0
	bne     branch_21d2f9c
	mov     r5, #0x0
.thumb
branch_21d2f12: @ 21d2f12 :thumb
	add     r0, r7, r5
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x4]
	mov     r0, r4
	mov     r2, r6
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d2f96
	cmp     r5, #0x0
	bne     branch_21d2f58
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0xc]
	lsr     r0, r0, #31
	lsl     r2, r1, #30
	sub     r2, r2, r0
	mov     r1, #0x1e
	ror     r2, r1
	add     r0, r0, r2
	bne     branch_21d2f86
	mov     r0, r4
	add     r1, r7, #0x2
	mov     r2, r6
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d2f86
	ldr     r0, [sp, #0x0]
	mov     r1, #0x3
	str     r1, [r0, #0x14]
	add     r1, r7, #0x2
	str     r1, [r0, #0x18]
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x21d2f58

.thumb
branch_21d2f58: @ 21d2f58 :thumb
	cmp     r5, #0x1
	bne     branch_21d2f86
	ldr     r0, [sp, #0xc]
	mov     r1, #0x6
	blx     _s32_div_f
	cmp     r1, #0x2
	bge     branch_21d2f86
	mov     r0, r4
	add     r1, r7, #0x2
	mov     r2, r6
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d2f86
	ldr     r0, [sp, #0x0]
	mov     r1, #0x3
	str     r1, [r0, #0x14]
	add     r1, r7, #0x2
	str     r1, [r0, #0x18]
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x21d2f86

.thumb
branch_21d2f86: @ 21d2f86 :thumb
	ldr     r0, [sp, #0x0]
	add     r1, r5, #0x1
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0x4]
	add     sp, #0x14
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x21d2f96

.thumb
branch_21d2f96: @ 21d2f96 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x3
	blt     branch_21d2f12
.thumb
branch_21d2f9c: @ 21d2f9c :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, r0
	ble     branch_21d2f00
.thumb
branch_21d2fa4: @ 21d2fa4 :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d2faa


.align 2, 0


.thumb
Function_21d2fac: @ 21d2fac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r2
	mov     r2, r0
	ldr     r7, [r2, #0x10]
	add     r2, sp, #0xc
	str     r2, [sp, #0x0]
	add     r2, sp, #0x14
	add     r3, sp, #0x10
	str     r0, [sp, #0x4]
	mov     r5, r1
	bl      Function_21d394c
	cmp     r0, #0x0
	bne     branch_21d2fd0
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d2fd0

.thumb
branch_21d2fd0: @ 21d2fd0 :thumb
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d3040
	ldr     r2, [sp, #0x14]
	mov     r0, r5
	mov     r1, r7
	bl      Function_21d55d4
	cmp     r4, r0
	bne     branch_21d2ffc
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	str     r1, [r0, #0x14]
	mov     r1, #0x0
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d2ffc

.thumb
branch_21d2ffc: @ 21d2ffc :thumb
	ldr     r2, [sp, #0x10]
	cmp     r2, #0x0
	beq     branch_21d301e
	mov     r0, r5
	mov     r1, r7
	bl      Function_21d55d4
	cmp     r4, r0
	bne     branch_21d301e
	ldr     r1, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	str     r1, [r0, #0x14]
	mov     r1, #0x0
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d301e

.thumb
branch_21d301e: @ 21d301e :thumb
	ldr     r2, [sp, #0xc]
	cmp     r2, #0x0
	beq     branch_21d3040
	mov     r0, r5
	mov     r1, r7
	bl      Function_21d55d4
	cmp     r4, r0
	bne     branch_21d3040
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	str     r1, [r0, #0x14]
	mov     r1, #0x0
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3040

.thumb
branch_21d3040: @ 21d3040 :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x70]
	cmp     r0, #0x1
	bne     branch_21d304e
	mov     r0, #0x15
	str     r0, [sp, #0x8]
.thumb
branch_21d304e: @ 21d304e :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_21d3096
	ldr     r0, [sp, #0x8]
	mov     r6, #0x1
	cmp     r0, #0x1
	blt     branch_21d3090
.thumb
branch_21d305c: @ 21d305c :thumb
	ldr     r2, [sp, #0x14]
	mov     r0, r5
	mov     r1, r7
	sub     r2, r2, r6
	bl      Function_21d55d4
	cmp     r4, r0
	bne     branch_21d3088
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d3088
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	str     r1, [r0, #0x14]
	str     r6, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3088

.thumb
branch_21d3088: @ 21d3088 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	ble     branch_21d305c
.thumb
branch_21d3090: @ 21d3090 :thumb
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d3096

.thumb
branch_21d3096: @ 21d3096 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	bne     branch_21d3168
	ldr     r0, [sp, #0x8]
	mov     r6, #0x1
	cmp     r0, #0x1
	blt     branch_21d3162
.thumb
branch_21d30a4: @ 21d30a4 :thumb
	mov     r0, #0x1
	tst     r0, r6
	beq     branch_21d3102
	ldr     r2, [sp, #0x14]
	mov     r0, r5
	mov     r1, r7
	sub     r2, r2, r6
	bl      Function_21d55d4
	cmp     r4, r0
	bne     branch_21d30d6
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d30d6
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	str     r1, [r0, #0x14]
	str     r6, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d30d6

.thumb
branch_21d30d6: @ 21d30d6 :thumb
	ldr     r2, [sp, #0x10]
	mov     r0, r5
	mov     r1, r7
	sub     r2, r2, r6
	bl      Function_21d55d4
	cmp     r4, r0
	bne     branch_21d315a
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d315a
	ldr     r1, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	str     r1, [r0, #0x14]
	str     r6, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3102

.thumb
branch_21d3102: @ 21d3102 :thumb
	ldr     r2, [sp, #0x10]
	mov     r0, r5
	mov     r1, r7
	sub     r2, r2, r6
	bl      Function_21d55d4
	cmp     r4, r0
	bne     branch_21d312e
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d312e
	ldr     r1, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	str     r1, [r0, #0x14]
	str     r6, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d312e

.thumb
branch_21d312e: @ 21d312e :thumb
	ldr     r2, [sp, #0x14]
	mov     r0, r5
	mov     r1, r7
	sub     r2, r2, r6
	bl      Function_21d55d4
	cmp     r4, r0
	bne     branch_21d315a
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d315a
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	str     r1, [r0, #0x14]
	str     r6, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d315a

.thumb
branch_21d315a: @ 21d315a :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	ble     branch_21d30a4
.thumb
branch_21d3162: @ 21d3162 :thumb
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d3168

.thumb
branch_21d3168: @ 21d3168 :thumb
	ldr     r0, [sp, #0x8]
	mov     r6, #0x1
	cmp     r0, #0x1
	bge     branch_21d3172
	b       branch_21d32e6
@ 0x21d3172

.thumb
branch_21d3172: @ 21d3172 :thumb
	mov     r0, #0x3
	and     r0, r6
	bne     branch_21d31fc
	ldr     r2, [sp, #0x14]
	mov     r0, r5
	mov     r1, r7
	sub     r2, r2, r6
	bl      Function_21d55d4
	cmp     r4, r0
	bne     branch_21d31a4
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d31a4
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	str     r1, [r0, #0x14]
	str     r6, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d31a4

.thumb
branch_21d31a4: @ 21d31a4 :thumb
	ldr     r2, [sp, #0x10]
	mov     r0, r5
	mov     r1, r7
	sub     r2, r2, r6
	bl      Function_21d55d4
	cmp     r4, r0
	bne     branch_21d31d0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d31d0
	ldr     r1, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	str     r1, [r0, #0x14]
	str     r6, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d31d0

.thumb
branch_21d31d0: @ 21d31d0 :thumb
	ldr     r2, [sp, #0xc]
	mov     r0, r5
	mov     r1, r7
	sub     r2, r2, r6
	bl      Function_21d55d4
	cmp     r4, r0
	bne     branch_21d32dc
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d32dc
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	str     r1, [r0, #0x14]
	str     r6, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d31fc

.thumb
branch_21d31fc: @ 21d31fc :thumb
	cmp     r0, #0x1
	bne     branch_21d3258
	ldr     r2, [sp, #0x10]
	mov     r0, r5
	mov     r1, r7
	sub     r2, r2, r6
	bl      Function_21d55d4
	cmp     r4, r0
	bne     branch_21d322c
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d322c
	ldr     r1, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	str     r1, [r0, #0x14]
	str     r6, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d322c

.thumb
branch_21d322c: @ 21d322c :thumb
	ldr     r2, [sp, #0x14]
	mov     r0, r5
	mov     r1, r7
	sub     r2, r2, r6
	bl      Function_21d55d4
	cmp     r4, r0
	bne     branch_21d32dc
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d32dc
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	str     r1, [r0, #0x14]
	str     r6, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3258

.thumb
branch_21d3258: @ 21d3258 :thumb
	ldr     r2, [sp, #0xc]
	mov     r0, r5
	mov     r1, r7
	sub     r2, r2, r6
	bl      Function_21d55d4
	cmp     r4, r0
	bne     branch_21d3284
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d3284
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	str     r1, [r0, #0x14]
	str     r6, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3284

.thumb
branch_21d3284: @ 21d3284 :thumb
	ldr     r2, [sp, #0x14]
	mov     r0, r5
	mov     r1, r7
	sub     r2, r2, r6
	bl      Function_21d55d4
	cmp     r4, r0
	bne     branch_21d32b0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d32b0
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	str     r1, [r0, #0x14]
	str     r6, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d32b0

.thumb
branch_21d32b0: @ 21d32b0 :thumb
	ldr     r2, [sp, #0x10]
	mov     r0, r5
	mov     r1, r7
	sub     r2, r2, r6
	bl      Function_21d55d4
	cmp     r4, r0
	bne     branch_21d32dc
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_21d3b34
	cmp     r0, #0x1
	bne     branch_21d32dc
	ldr     r1, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	str     r1, [r0, #0x14]
	str     r6, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d32dc

.thumb
branch_21d32dc: @ 21d32dc :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	bgt     branch_21d32e6
	b       branch_21d3172
@ 0x21d32e6

.thumb
branch_21d32e6: @ 21d32e6 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d32ec

.thumb
Function_21d32ec: @ 21d32ec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	ldr     r7, [r0, #0x10]
	str     r0, [sp, #0x0]
	mov     r4, r1
	mov     r6, r2
	mov     r5, #0x1
.thumb
branch_21d32fa: @ 21d32fa :thumb
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_21d55d4
	cmp     r6, r0
	bne     branch_21d3316
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r5, [r0, #0x14]
	str     r1, [r0, #0x18]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3316

.thumb
branch_21d3316: @ 21d3316 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x3
	ble     branch_21d32fa
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x70]
	cmp     r0, #0x1
	bne     branch_21d332a
	mov     r0, #0x15
	str     r0, [sp, #0x4]
.thumb
branch_21d332a: @ 21d332a :thumb
	ldr     r0, [sp, #0x4]
	mov     r5, #0x1
	cmp     r0, #0x1
	blt     branch_21d338c
.thumb
branch_21d3332: @ 21d3332 :thumb
	mov     r2, #0x1
	mov     r0, r4
	mov     r1, r7
	sub     r2, r2, r5
	bl      Function_21d55d4
	cmp     r6, r0
	bne     branch_21d3384
	lsr     r2, r5, #31
	lsl     r1, r5, #30
	sub     r1, r1, r2
	mov     r0, #0x1e
	ror     r1, r0
	add     r0, r2, r1
	cmp     r0, #0x1
	bne     branch_21d3362
	ldr     r0, [sp, #0x0]
	mov     r1, #0x3
	str     r1, [r0, #0x14]
	add     r1, r5, #0x2
	str     r1, [r0, #0x18]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3362

.thumb
branch_21d3362: @ 21d3362 :thumb
	.hword  0x1e80 @ sub r0, r0, #0x2
	cmp     r0, #0x1
	bhi     branch_21d3378
	ldr     r0, [sp, #0x0]
	mov     r1, #0x2
	str     r1, [r0, #0x14]
	add     r1, r5, #0x1
	str     r1, [r0, #0x18]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3378

.thumb
branch_21d3378: @ 21d3378 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [r1, #0x14]
	add     sp, #0x8
	str     r5, [r1, #0x18]
	pop     {r3-r7,pc}
@ 0x21d3384

.thumb
branch_21d3384: @ 21d3384 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	ble     branch_21d3332
.thumb
branch_21d338c: @ 21d338c :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d3392


.align 2, 0


.thumb
Function_21d3394: @ 21d3394 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x48
	mov     r5, r2
	mov     r2, r0
	ldr     r7, [r2, #0x10]
	add     r2, sp, #0x3c
	str     r2, [sp, #0x0]
	add     r2, sp, #0x44
	add     r3, sp, #0x40
	str     r0, [sp, #0x4]
	mov     r6, r1
	bl      Function_21d394c
	cmp     r0, #0x0
	bne     branch_21d33b8
	add     sp, #0x48
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d33b8

.thumb
branch_21d33b8: @ 21d33b8 :thumb
	ldr     r2, [sp, #0x44]
	mov     r0, r6
	mov     r1, r7
	bl      Function_21d55d4
	cmp     r5, r0
	bne     branch_21d33d6
	ldr     r1, [sp, #0x44]
	ldr     r0, [sp, #0x4]
	add     sp, #0x48
	str     r1, [r0, #0x14]
	mov     r1, #0x0
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d33d6

.thumb
branch_21d33d6: @ 21d33d6 :thumb
	ldr     r2, [sp, #0x40]
	cmp     r2, #0x0
	beq     branch_21d33f8
	mov     r0, r6
	mov     r1, r7
	bl      Function_21d55d4
	cmp     r5, r0
	bne     branch_21d33f8
	ldr     r1, [sp, #0x40]
	ldr     r0, [sp, #0x4]
	add     sp, #0x48
	str     r1, [r0, #0x14]
	mov     r1, #0x0
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d33f8

.thumb
branch_21d33f8: @ 21d33f8 :thumb
	ldr     r2, [sp, #0x3c]
	cmp     r2, #0x0
	beq     branch_21d341a
	mov     r0, r6
	mov     r1, r7
	bl      Function_21d55d4
	cmp     r5, r0
	bne     branch_21d341a
	ldr     r1, [sp, #0x3c]
	ldr     r0, [sp, #0x4]
	add     sp, #0x48
	str     r1, [r0, #0x14]
	mov     r1, #0x0
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d341a

.thumb
branch_21d341a: @ 21d341a :thumb
	ldr     r0, [r6, #0x70]
	mov     r4, #0x4
	cmp     r0, #0x1
	bne     branch_21d3424
	mov     r4, #0x15
.thumb
branch_21d3424: @ 21d3424 :thumb
	ldr     r0, [sp, #0x40]
	cmp     r0, #0x0
	bne     branch_21d3464
	mov     r0, #0x1
	str     r0, [sp, #0x38]
	cmp     r4, #0x1
	blt     branch_21d345e
.thumb
branch_21d3432: @ 21d3432 :thumb
	ldr     r3, [sp, #0x44]
	ldr     r2, [sp, #0x38]
	mov     r0, r6
	mov     r1, r7
	sub     r2, r3, r2
	bl      Function_21d55d4
	cmp     r5, r0
	bne     branch_21d3454
	ldr     r1, [sp, #0x44]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0x38]
	add     sp, #0x48
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3454

.thumb
branch_21d3454: @ 21d3454 :thumb
	ldr     r0, [sp, #0x38]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x38]
	cmp     r0, r4
	ble     branch_21d3432
.thumb
branch_21d345e: @ 21d345e :thumb
	add     sp, #0x48
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d3464

.thumb
branch_21d3464: @ 21d3464 :thumb
	lsl     r0, r7, #2
	add     r0, r6, r0
	add     r0, #0xa8
	ldr     r1, [sp, #0x3c]
	ldr     r0, [r0, #0x0]
	cmp     r1, #0x0
	bne     branch_21d354a
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	tst     r0, r1
	beq     branch_21d34e0
	cmp     r4, #0x1
	blt     branch_21d34aa
.thumb
branch_21d347e: @ 21d347e :thumb
	ldr     r3, [sp, #0x44]
	ldr     r2, [sp, #0x8]
	mov     r0, r6
	mov     r1, r7
	sub     r2, r3, r2
	bl      Function_21d55d4
	cmp     r5, r0
	bne     branch_21d34a0
	ldr     r1, [sp, #0x44]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0x8]
	add     sp, #0x48
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d34a0

.thumb
branch_21d34a0: @ 21d34a0 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, r4
	ble     branch_21d347e
.thumb
branch_21d34aa: @ 21d34aa :thumb
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	cmp     r4, #0x1
	blt     branch_21d3544
.thumb
branch_21d34b2: @ 21d34b2 :thumb
	ldr     r3, [sp, #0x40]
	ldr     r2, [sp, #0xc]
	mov     r0, r6
	mov     r1, r7
	sub     r2, r3, r2
	bl      Function_21d55d4
	cmp     r5, r0
	bne     branch_21d34d4
	ldr     r1, [sp, #0x40]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0xc]
	add     sp, #0x48
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d34d4

.thumb
branch_21d34d4: @ 21d34d4 :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	cmp     r0, r4
	ble     branch_21d34b2
	b       branch_21d3544
@ 0x21d34e0

.thumb
branch_21d34e0: @ 21d34e0 :thumb
	cmp     r4, #0x1
	blt     branch_21d3510
.thumb
branch_21d34e4: @ 21d34e4 :thumb
	ldr     r3, [sp, #0x40]
	ldr     r2, [sp, #0x8]
	mov     r0, r6
	mov     r1, r7
	sub     r2, r3, r2
	bl      Function_21d55d4
	cmp     r5, r0
	bne     branch_21d3506
	ldr     r1, [sp, #0x40]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0x8]
	add     sp, #0x48
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3506

.thumb
branch_21d3506: @ 21d3506 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, r4
	ble     branch_21d34e4
.thumb
branch_21d3510: @ 21d3510 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r4, #0x1
	blt     branch_21d3544
.thumb
branch_21d3518: @ 21d3518 :thumb
	ldr     r3, [sp, #0x44]
	ldr     r2, [sp, #0x10]
	mov     r0, r6
	mov     r1, r7
	sub     r2, r3, r2
	bl      Function_21d55d4
	cmp     r5, r0
	bne     branch_21d353a
	ldr     r1, [sp, #0x44]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0x10]
	add     sp, #0x48
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d353a

.thumb
branch_21d353a: @ 21d353a :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, r4
	ble     branch_21d3518
.thumb
branch_21d3544: @ 21d3544 :thumb
	add     sp, #0x48
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d354a

.thumb
branch_21d354a: @ 21d354a :thumb
	mov     r1, #0x3
	blx     _s32_div_f
	cmp     r1, #0x0
	bne     branch_21d35f2
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	cmp     r4, #0x1
	blt     branch_21d3588
.thumb
branch_21d355c: @ 21d355c :thumb
	ldr     r3, [sp, #0x44]
	ldr     r2, [sp, #0x14]
	mov     r0, r6
	mov     r1, r7
	sub     r2, r3, r2
	bl      Function_21d55d4
	cmp     r5, r0
	bne     branch_21d357e
	ldr     r1, [sp, #0x44]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0x14]
	add     sp, #0x48
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d357e

.thumb
branch_21d357e: @ 21d357e :thumb
	ldr     r0, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, r4
	ble     branch_21d355c
.thumb
branch_21d3588: @ 21d3588 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r4, #0x1
	blt     branch_21d35bc
.thumb
branch_21d3590: @ 21d3590 :thumb
	ldr     r3, [sp, #0x40]
	ldr     r2, [sp, #0x18]
	mov     r0, r6
	mov     r1, r7
	sub     r2, r3, r2
	bl      Function_21d55d4
	cmp     r5, r0
	bne     branch_21d35b2
	ldr     r1, [sp, #0x40]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0x18]
	add     sp, #0x48
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d35b2

.thumb
branch_21d35b2: @ 21d35b2 :thumb
	ldr     r0, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, r4
	ble     branch_21d3590
.thumb
branch_21d35bc: @ 21d35bc :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	cmp     r4, #0x1
	blt     branch_21d35f0
.thumb
branch_21d35c4: @ 21d35c4 :thumb
	ldr     r3, [sp, #0x3c]
	ldr     r2, [sp, #0x1c]
	mov     r0, r6
	mov     r1, r7
	sub     r2, r3, r2
	bl      Function_21d55d4
	cmp     r5, r0
	bne     branch_21d35e6
	ldr     r1, [sp, #0x3c]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0x1c]
	add     sp, #0x48
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d35e6

.thumb
branch_21d35e6: @ 21d35e6 :thumb
	ldr     r0, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x1c]
	cmp     r0, r4
	ble     branch_21d35c4
.thumb
branch_21d35f0: @ 21d35f0 :thumb
	b       branch_21d3730
@ 0x21d35f2

.thumb
branch_21d35f2: @ 21d35f2 :thumb
	cmp     r1, #0x1
	bne     branch_21d3694
	mov     r0, #0x1
	str     r0, [sp, #0x20]
	cmp     r4, #0x1
	blt     branch_21d362a
.thumb
branch_21d35fe: @ 21d35fe :thumb
	ldr     r3, [sp, #0x40]
	ldr     r2, [sp, #0x20]
	mov     r0, r6
	mov     r1, r7
	sub     r2, r3, r2
	bl      Function_21d55d4
	cmp     r5, r0
	bne     branch_21d3620
	ldr     r1, [sp, #0x40]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0x20]
	add     sp, #0x48
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3620

.thumb
branch_21d3620: @ 21d3620 :thumb
	ldr     r0, [sp, #0x20]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x20]
	cmp     r0, r4
	ble     branch_21d35fe
.thumb
branch_21d362a: @ 21d362a :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x24]
	cmp     r4, #0x1
	blt     branch_21d365e
.thumb
branch_21d3632: @ 21d3632 :thumb
	ldr     r3, [sp, #0x3c]
	ldr     r2, [sp, #0x24]
	mov     r0, r6
	mov     r1, r7
	sub     r2, r3, r2
	bl      Function_21d55d4
	cmp     r5, r0
	bne     branch_21d3654
	ldr     r1, [sp, #0x3c]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0x24]
	add     sp, #0x48
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3654

.thumb
branch_21d3654: @ 21d3654 :thumb
	ldr     r0, [sp, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	cmp     r0, r4
	ble     branch_21d3632
.thumb
branch_21d365e: @ 21d365e :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x28]
	cmp     r4, #0x1
	blt     branch_21d3730
.thumb
branch_21d3666: @ 21d3666 :thumb
	ldr     r3, [sp, #0x44]
	ldr     r2, [sp, #0x28]
	mov     r0, r6
	mov     r1, r7
	sub     r2, r3, r2
	bl      Function_21d55d4
	cmp     r5, r0
	bne     branch_21d3688
	ldr     r1, [sp, #0x44]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0x28]
	add     sp, #0x48
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3688

.thumb
branch_21d3688: @ 21d3688 :thumb
	ldr     r0, [sp, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x28]
	cmp     r0, r4
	ble     branch_21d3666
	b       branch_21d3730
@ 0x21d3694

.thumb
branch_21d3694: @ 21d3694 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x2c]
	cmp     r4, #0x1
	blt     branch_21d36c8
.thumb
branch_21d369c: @ 21d369c :thumb
	ldr     r3, [sp, #0x3c]
	ldr     r2, [sp, #0x2c]
	mov     r0, r6
	mov     r1, r7
	sub     r2, r3, r2
	bl      Function_21d55d4
	cmp     r5, r0
	bne     branch_21d36be
	ldr     r1, [sp, #0x3c]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0x2c]
	add     sp, #0x48
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d36be

.thumb
branch_21d36be: @ 21d36be :thumb
	ldr     r0, [sp, #0x2c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x2c]
	cmp     r0, r4
	ble     branch_21d369c
.thumb
branch_21d36c8: @ 21d36c8 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x30]
	cmp     r4, #0x1
	blt     branch_21d36fc
.thumb
branch_21d36d0: @ 21d36d0 :thumb
	ldr     r3, [sp, #0x44]
	ldr     r2, [sp, #0x30]
	mov     r0, r6
	mov     r1, r7
	sub     r2, r3, r2
	bl      Function_21d55d4
	cmp     r5, r0
	bne     branch_21d36f2
	ldr     r1, [sp, #0x44]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0x30]
	add     sp, #0x48
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d36f2

.thumb
branch_21d36f2: @ 21d36f2 :thumb
	ldr     r0, [sp, #0x30]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x30]
	cmp     r0, r4
	ble     branch_21d36d0
.thumb
branch_21d36fc: @ 21d36fc :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x34]
	cmp     r4, #0x1
	blt     branch_21d3730
.thumb
branch_21d3704: @ 21d3704 :thumb
	ldr     r3, [sp, #0x40]
	ldr     r2, [sp, #0x34]
	mov     r0, r6
	mov     r1, r7
	sub     r2, r3, r2
	bl      Function_21d55d4
	cmp     r5, r0
	bne     branch_21d3726
	ldr     r1, [sp, #0x40]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x14]
	ldr     r1, [sp, #0x34]
	add     sp, #0x48
	str     r1, [r0, #0x18]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3726

.thumb
branch_21d3726: @ 21d3726 :thumb
	ldr     r0, [sp, #0x34]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x34]
	cmp     r0, r4
	ble     branch_21d3704
.thumb
branch_21d3730: @ 21d3730 :thumb
	mov     r0, #0x0
	add     sp, #0x48
	pop     {r3-r7,pc}
@ 0x21d3736


.align 2, 0


.thumb
Function_21d3738: @ 21d3738 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	ldr     r0, [r0, #0x10]
	mov     r6, r1
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x70]
	mov     r7, r2
	mov     r5, #0x4
	cmp     r0, #0x1
	bne     branch_21d3750
	mov     r5, #0x15
.thumb
branch_21d3750: @ 21d3750 :thumb
	mov     r4, #0x0
	cmp     r5, #0x0
	blt     branch_21d377a
.thumb
branch_21d3756: @ 21d3756 :thumb
	mov     r2, #0x2
	ldr     r1, [sp, #0x4]
	mov     r0, r6
	sub     r2, r2, r4
	bl      Function_21d55d4
	cmp     r7, r0
	bne     branch_21d3774
	ldr     r0, [sp, #0x0]
	mov     r1, #0x2
	str     r1, [r0, #0x14]
	str     r4, [r0, #0x18]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3774

.thumb
branch_21d3774: @ 21d3774 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r5
	ble     branch_21d3756
.thumb
branch_21d377a: @ 21d377a :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d3780

.thumb
Function_21d3780: @ 21d3780 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r6, r0
	mov     r0, r4
	bl      Function_21d38e4
	ldr     r1, [r6, #0x10]
	cmp     r1, #0x0
	beq     branch_21d3796
	cmp     r0, #0x2
	blt     branch_21d382c
.thumb
branch_21d3796: @ 21d3796 :thumb
	cmp     r1, #0x0
	bne     branch_21d37bc
	cmp     r0, #0x2
	bge     branch_21d37bc
	mov     r5, #0x0
.thumb
branch_21d37a0: @ 21d37a0 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d3af0
	cmp     r0, #0x0
	bne     branch_21d37b0
	str     r5, [r6, #0x18]
	pop     {r4-r6,pc}
@ 0x21d37b0

.thumb
branch_21d37b0: @ 21d37b0 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x15
	ble     branch_21d37a0
	bl      ErrorHandling
	pop     {r4-r6,pc}
@ 0x21d37bc

.thumb
branch_21d37bc: @ 21d37bc :thumb
	cmp     r1, #0x0
	beq     branch_21d37ca
	cmp     r1, #0x1
	beq     branch_21d37ea
	cmp     r1, #0x2
	beq     branch_21d380a
	b       branch_21d3828
@ 0x21d37ca

.thumb
branch_21d37ca: @ 21d37ca :thumb
	mov     r5, #0x1
.thumb
branch_21d37cc: @ 21d37cc :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_21d3b50
	cmp     r0, #0x0
	bne     branch_21d37de
	str     r5, [r6, #0x18]
	pop     {r4-r6,pc}
@ 0x21d37de

.thumb
branch_21d37de: @ 21d37de :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x15
	ble     branch_21d37cc
	bl      ErrorHandling
	pop     {r4-r6,pc}
@ 0x21d37ea

.thumb
branch_21d37ea: @ 21d37ea :thumb
	mov     r5, #0x1
.thumb
branch_21d37ec: @ 21d37ec :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_21d3c9c
	cmp     r0, #0x0
	bne     branch_21d37fe
	str     r5, [r6, #0x18]
	pop     {r4-r6,pc}
@ 0x21d37fe

.thumb
branch_21d37fe: @ 21d37fe :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x15
	ble     branch_21d37ec
	bl      ErrorHandling
	b       branch_21d3828
@ 0x21d380a

.thumb
branch_21d380a: @ 21d380a :thumb
	mov     r5, #0x1
.thumb
branch_21d380c: @ 21d380c :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_21d3dd4
	cmp     r0, #0x0
	bne     branch_21d381e
	str     r5, [r6, #0x18]
	pop     {r4-r6,pc}
@ 0x21d381e

.thumb
branch_21d381e: @ 21d381e :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x15
	ble     branch_21d380c
	bl      ErrorHandling
.thumb
branch_21d3828: @ 21d3828 :thumb
	bl      ErrorHandling
.thumb
branch_21d382c: @ 21d382c :thumb
	pop     {r4-r6,pc}
@ 0x21d382e


.align 2, 0


.thumb
Function_21d3830: @ 21d3830 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r0
	mov     r0, r4
	bl      Function_21d38e4
	ldr     r1, [r6, #0x10]
	cmp     r1, #0x0
	beq     branch_21d3846
	cmp     r0, #0x2
	blt     branch_21d38e0
.thumb
branch_21d3846: @ 21d3846 :thumb
	cmp     r1, #0x0
	bne     branch_21d386e
	cmp     r0, #0x2
	bge     branch_21d386e
	mov     r5, #0x0
	mov     r7, #0x2
.thumb
branch_21d3852: @ 21d3852 :thumb
	mov     r0, r4
	mov     r1, #0x0
	sub     r2, r7, r5
	bl      Function_21d55d4
	cmp     r0, #0x3
	beq     branch_21d3864
	str     r5, [r6, #0x18]
	pop     {r3-r7,pc}
@ 0x21d3864

.thumb
branch_21d3864: @ 21d3864 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x15
	blt     branch_21d3852
	bl      ErrorHandling
.thumb
branch_21d386e: @ 21d386e :thumb
	ldr     r0, [r6, #0x10]
	cmp     r0, #0x0
	beq     branch_21d387e
	cmp     r0, #0x1
	beq     branch_21d389e
	cmp     r0, #0x2
	beq     branch_21d38be
	b       branch_21d38dc
@ 0x21d387e

.thumb
branch_21d387e: @ 21d387e :thumb
	mov     r5, #0x0
.thumb
branch_21d3880: @ 21d3880 :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_21d3f0c
	cmp     r0, #0x0
	bne     branch_21d3892
	str     r5, [r6, #0x18]
	pop     {r3-r7,pc}
@ 0x21d3892

.thumb
branch_21d3892: @ 21d3892 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x15
	blt     branch_21d3880
	bl      ErrorHandling
	pop     {r3-r7,pc}
@ 0x21d389e

.thumb
branch_21d389e: @ 21d389e :thumb
	mov     r5, #0x0
.thumb
branch_21d38a0: @ 21d38a0 :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_21d3f58
	cmp     r0, #0x0
	bne     branch_21d38b2
	str     r5, [r6, #0x18]
	pop     {r3-r7,pc}
@ 0x21d38b2

.thumb
branch_21d38b2: @ 21d38b2 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x15
	ble     branch_21d38a0
	bl      ErrorHandling
	pop     {r3-r7,pc}
@ 0x21d38be

.thumb
branch_21d38be: @ 21d38be :thumb
	mov     r5, #0x0
.thumb
branch_21d38c0: @ 21d38c0 :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_21d3fa0
	cmp     r0, #0x0
	bne     branch_21d38d2
	str     r5, [r6, #0x18]
	pop     {r3-r7,pc}
@ 0x21d38d2

.thumb
branch_21d38d2: @ 21d38d2 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x15
	ble     branch_21d38c0
	bl      ErrorHandling
.thumb
branch_21d38dc: @ 21d38dc :thumb
	bl      ErrorHandling
.thumb
branch_21d38e0: @ 21d38e0 :thumb
	pop     {r3-r7,pc}
@ 0x21d38e2


.align 2, 0


.thumb
Function_21d38e4: @ 21d38e4 :thumb
	mov     r2, #0x0
	mov     r3, r2
.thumb
branch_21d38e8: @ 21d38e8 :thumb
	ldr     r1, [r0, #0x7c]
	cmp     r1, #0x1
	beq     branch_21d38f0
	.hword  0x1c5b @ add r3, r3, #0x1
.thumb
branch_21d38f0: @ 21d38f0 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r2, #0x3
	blt     branch_21d38e8
	mov     r0, r3
	bx      lr
@ 0x21d38fc

.thumb
Function_21d38fc: @ 21d38fc :thumb
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x0
	beq     branch_21d390c
	cmp     r0, #0x1
	beq     branch_21d3922
	cmp     r0, #0x2
	beq     branch_21d3934
	b       branch_21d3946
@ 0x21d390c

.thumb
branch_21d390c: @ 21d390c :thumb
	mov     r0, r1
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_21d391e
	add     r1, #0x84
	ldr     r0, [r1, #0x0]
	cmp     r0, #0x1
	beq     branch_21d3946
.thumb
branch_21d391e: @ 21d391e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d3922

.thumb
branch_21d3922: @ 21d3922 :thumb
	ldr     r0, [r1, #0x7c]
	cmp     r0, #0x1
	bne     branch_21d3930
	add     r1, #0x84
	ldr     r0, [r1, #0x0]
	cmp     r0, #0x1
	beq     branch_21d3946
.thumb
branch_21d3930: @ 21d3930 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d3934

.thumb
branch_21d3934: @ 21d3934 :thumb
	ldr     r0, [r1, #0x7c]
	cmp     r0, #0x1
	bne     branch_21d3942
	add     r1, #0x80
	ldr     r0, [r1, #0x0]
	cmp     r0, #0x1
	beq     branch_21d3946
.thumb
branch_21d3942: @ 21d3942 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d3946

.thumb
branch_21d3946: @ 21d3946 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x21d394a


.align 2, 0


.thumb
Function_21d394c: @ 21d394c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	mov     r5, r1
	ldr     r0, [sp, #0x20]
	mov     r1, r3
	str     r0, [sp, #0x20]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r7, [r5, #0x7c]
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	mov     r3, #0x0
	mov     r12, r0
	mov     r0, r5
	add     r0, #0xc8
	ldr     r4, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xec
	ldr     r6, [r0, #0x0]
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldr     r5, [r5, r0]
	ldr     r0, [sp, #0x20]
	str     r3, [r2, #0x0]
	str     r3, [r1, #0x0]
	str     r3, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x0
	beq     branch_21d399a
	cmp     r0, #0x1
	beq     branch_21d3a04
	cmp     r0, #0x2
	beq     branch_21d3a80
	b       branch_21d3ae4
@ 0x21d399a

.thumb
branch_21d399a: @ 21d399a :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	beq     branch_21d39c8
	mov     r0, r12
	cmp     r0, #0x1
	beq     branch_21d39c8
	cmp     r6, r5
	bne     branch_21d39b2
	add     sp, #0x8
	str     r6, [r2, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d39b2

.thumb
branch_21d39b2: @ 21d39b2 :thumb
	cmp     r5, #0x1
	bne     branch_21d39c0
	mov     r0, #0x3
	str     r0, [r2, #0x0]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d39c0

.thumb
branch_21d39c0: @ 21d39c0 :thumb
	mov     r0, #0x1
	str     r0, [r2, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d39c8

.thumb
branch_21d39c8: @ 21d39c8 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	beq     branch_21d39ec
	cmp     r6, #0x2
	bne     branch_21d39e4
	mov     r0, #0x1
	str     r0, [r2, #0x0]
	mov     r2, #0x2
	str     r2, [r1, #0x0]
	ldr     r1, [sp, #0x20]
	mov     r2, #0x3
	str     r2, [r1, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d39e4

.thumb
branch_21d39e4: @ 21d39e4 :thumb
	add     sp, #0x8
	str     r6, [r2, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d39ec

.thumb
branch_21d39ec: @ 21d39ec :thumb
	cmp     r5, #0x2
	bne     branch_21d39f8
	add     sp, #0x8
	str     r5, [r2, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d39f8

.thumb
branch_21d39f8: @ 21d39f8 :thumb
	mov     r0, #0x1
	str     r0, [r2, #0x0]
	mov     r2, #0x3
	str     r2, [r1, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d3a04

.thumb
branch_21d3a04: @ 21d3a04 :thumb
	cmp     r7, #0x1
	beq     branch_21d3a24
	mov     r0, r12
	cmp     r0, #0x1
	beq     branch_21d3a24
	cmp     r4, r5
	bne     branch_21d3a1a
	add     sp, #0x8
	str     r4, [r2, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3a1a

.thumb
branch_21d3a1a: @ 21d3a1a :thumb
	mov     r0, #0x2
	str     r0, [r2, #0x0]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3a24

.thumb
branch_21d3a24: @ 21d3a24 :thumb
	cmp     r7, #0x1
	beq     branch_21d3a54
	cmp     r4, #0x2
	bne     branch_21d3a36
	mov     r0, #0x2
	str     r0, [r2, #0x0]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3a36

.thumb
branch_21d3a36: @ 21d3a36 :thumb
	cmp     r4, #0x1
	bne     branch_21d3a46
	mov     r0, #0x1
	str     r0, [r2, #0x0]
	mov     r2, #0x2
	str     r2, [r1, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d3a46

.thumb
branch_21d3a46: @ 21d3a46 :thumb
	mov     r0, #0x2
	str     r0, [r2, #0x0]
	mov     r0, #0x3
	str     r0, [r1, #0x0]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3a54

.thumb
branch_21d3a54: @ 21d3a54 :thumb
	cmp     r5, #0x2
	bne     branch_21d3a62
	mov     r0, #0x2
	str     r0, [r2, #0x0]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3a62

.thumb
branch_21d3a62: @ 21d3a62 :thumb
	cmp     r5, #0x1
	bne     branch_21d3a72
	mov     r0, #0x1
	str     r0, [r2, #0x0]
	mov     r2, #0x2
	str     r2, [r1, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d3a72

.thumb
branch_21d3a72: @ 21d3a72 :thumb
	mov     r0, #0x2
	str     r0, [r2, #0x0]
	mov     r0, #0x3
	str     r0, [r1, #0x0]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3a80

.thumb
branch_21d3a80: @ 21d3a80 :thumb
	cmp     r7, #0x1
	beq     branch_21d3aa8
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	beq     branch_21d3aa8
	cmp     r4, r6
	bne     branch_21d3a96
	add     sp, #0x8
	str     r4, [r2, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3a96

.thumb
branch_21d3a96: @ 21d3a96 :thumb
	cmp     r4, #0x1
	bne     branch_21d3a9e
	mov     r0, #0x3
	b       branch_21d3aa0
@ 0x21d3a9e

.thumb
branch_21d3a9e: @ 21d3a9e :thumb
	mov     r0, #0x1
.thumb
branch_21d3aa0: @ 21d3aa0 :thumb
	str     r0, [r2, #0x0]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3aa8

.thumb
branch_21d3aa8: @ 21d3aa8 :thumb
	cmp     r7, #0x1
	beq     branch_21d3ac6
	cmp     r4, #0x2
	bne     branch_21d3aba
	mov     r0, #0x2
	str     r0, [r2, #0x0]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3aba

.thumb
branch_21d3aba: @ 21d3aba :thumb
	mov     r0, #0x1
	str     r0, [r2, #0x0]
	mov     r2, #0x3
	str     r2, [r1, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d3ac6

.thumb
branch_21d3ac6: @ 21d3ac6 :thumb
	cmp     r6, #0x2
	bne     branch_21d3adc
	mov     r0, #0x1
	str     r0, [r2, #0x0]
	mov     r2, #0x2
	str     r2, [r1, #0x0]
	ldr     r1, [sp, #0x20]
	mov     r2, #0x3
	str     r2, [r1, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d3adc

.thumb
branch_21d3adc: @ 21d3adc :thumb
	add     sp, #0x8
	str     r6, [r2, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3ae4

.thumb
branch_21d3ae4: @ 21d3ae4 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d3aee


.align 2, 0


.thumb
Function_21d3af0: @ 21d3af0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r2, #0x1
	mov     r1, #0x0
	sub     r2, r2, r4
	mov     r5, r0
	bl      Function_21d55d4
	cmp     r0, #0x3
	bne     branch_21d3b08
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d3b08

.thumb
branch_21d3b08: @ 21d3b08 :thumb
	mov     r2, #0x2
	mov     r0, r5
	mov     r1, #0x0
	sub     r2, r2, r4
	bl      Function_21d55d4
	cmp     r0, #0x3
	bne     branch_21d3b1c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d3b1c

.thumb
branch_21d3b1c: @ 21d3b1c :thumb
	mov     r2, #0x3
	mov     r0, r5
	mov     r1, #0x0
	sub     r2, r2, r4
	bl      Function_21d55d4
	cmp     r0, #0x3
	bne     branch_21d3b30
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d3b30

.thumb
branch_21d3b30: @ 21d3b30 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d3b34

.thumb
Function_21d3b34: @ 21d3b34 :thumb
	push    {r3,lr}
	cmp     r2, #0x3
	bne     branch_21d3b3e
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d3b3e

.thumb
branch_21d3b3e: @ 21d3b3e :thumb
	bl      Function_21d3af0
	cmp     r0, #0x0
	bne     branch_21d3b4a
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d3b4a

.thumb
branch_21d3b4a: @ 21d3b4a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d3b4e


.align 2, 0


.thumb
Function_21d3b50: @ 21d3b50 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r4, r1
	mov     r0, r4
	add     r0, #0xf0
	ldr     r7, [r0, #0x0]
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r6, [r4, r0]
	mov     r1, #0x1
	mov     r0, r2
	sub     r0, r1, r0
	str     r0, [sp, #0x10]
	str     r2, [sp, #0x0]
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d55d4
	mov     r1, #0x1
	mov     r5, r0
	mov     r0, r4
	sub     r2, r1, r7
	bl      Function_21d55d4
	str     r0, [sp, #0x14]
	mov     r0, #0x1
	sub     r0, r0, r6
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d55d4
	cmp     r5, #0x3
	beq     branch_21d3ba2
	ldr     r1, [sp, #0x14]
	cmp     r5, r1
	bne     branch_21d3ba8
	cmp     r5, r0
	bne     branch_21d3ba8
.thumb
branch_21d3ba2: @ 21d3ba2 :thumb
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3ba8

.thumb
branch_21d3ba8: @ 21d3ba8 :thumb
	ldr     r2, [sp, #0x0]
	mov     r3, #0x2
	mov     r0, r4
	mov     r1, #0x0
	sub     r2, r3, r2
	bl      Function_21d55d4
	mov     r5, r0
	mov     r0, #0x2
	sub     r0, r0, r7
	str     r0, [sp, #0xc]
	ldr     r2, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d55d4
	mov     r1, #0x2
	str     r0, [sp, #0x18]
	mov     r0, r4
	sub     r2, r1, r6
	bl      Function_21d55d4
	cmp     r5, #0x3
	beq     branch_21d3be2
	ldr     r1, [sp, #0x18]
	cmp     r5, r1
	bne     branch_21d3be8
	cmp     r5, r0
	bne     branch_21d3be8
.thumb
branch_21d3be2: @ 21d3be2 :thumb
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3be8

.thumb
branch_21d3be8: @ 21d3be8 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x3
	sub     r0, r1, r0
	str     r0, [sp, #0x8]
	ldr     r2, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d55d4
	mov     r2, #0x3
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	sub     r2, r2, r7
	bl      Function_21d55d4
	mov     r7, r0
	mov     r0, #0x3
	sub     r0, r0, r6
	str     r0, [sp, #0x1c]
	ldr     r2, [sp, #0x1c]
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d55d4
	cmp     r5, #0x3
	beq     branch_21d3c26
	cmp     r5, r7
	bne     branch_21d3c2c
	cmp     r5, r0
	bne     branch_21d3c2c
.thumb
branch_21d3c26: @ 21d3c26 :thumb
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3c2c

.thumb
branch_21d3c2c: @ 21d3c2c :thumb
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d55d4
	mov     r5, r0
	ldr     r2, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d55d4
	mov     r6, r0
	ldr     r2, [sp, #0x1c]
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d55d4
	cmp     r5, #0x3
	beq     branch_21d3c5a
	cmp     r5, r6
	bne     branch_21d3c60
	cmp     r5, r0
	bne     branch_21d3c60
.thumb
branch_21d3c5a: @ 21d3c5a :thumb
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3c60

.thumb
branch_21d3c60: @ 21d3c60 :thumb
	ldr     r2, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d55d4
	mov     r5, r0
	ldr     r2, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d55d4
	mov     r6, r0
	ldr     r2, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d55d4
	cmp     r5, #0x3
	beq     branch_21d3c8e
	cmp     r5, r6
	bne     branch_21d3c94
	cmp     r5, r0
	bne     branch_21d3c94
.thumb
branch_21d3c8e: @ 21d3c8e :thumb
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3c94

.thumb
branch_21d3c94: @ 21d3c94 :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21d3c9a


.align 2, 0


.thumb
Function_21d3c9c: @ 21d3c9c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r1
	mov     r0, r5
	add     r0, #0xcc
	ldr     r6, [r0, #0x0]
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r4, [r5, r0]
	mov     r0, #0x1
	sub     r0, r0, r6
	str     r0, [sp, #0xc]
	mov     r7, r2
	ldr     r2, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d55d4
	mov     r1, #0x1
	str     r0, [sp, #0x10]
	mov     r0, r5
	sub     r2, r1, r7
	bl      Function_21d55d4
	str     r0, [sp, #0x14]
	mov     r0, #0x1
	sub     r0, r0, r4
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_21d55d4
	ldr     r2, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	cmp     r2, r1
	bne     branch_21d3cf2
	mov     r1, r2
	cmp     r1, r0
	bne     branch_21d3cf2
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x21d3cf2

.thumb
branch_21d3cf2: @ 21d3cf2 :thumb
	mov     r2, #0x2
	mov     r0, r5
	mov     r1, #0x0
	sub     r2, r2, r6
	bl      Function_21d55d4
	str     r0, [sp, #0x18]
	mov     r0, #0x2
	sub     r0, r0, r7
	str     r0, [sp, #0x8]
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d55d4
	mov     r1, #0x2
	str     r0, [sp, #0x1c]
	mov     r0, r5
	sub     r2, r1, r4
	bl      Function_21d55d4
	ldr     r2, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	cmp     r2, r1
	bne     branch_21d3d30
	mov     r1, r2
	cmp     r1, r0
	bne     branch_21d3d30
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x21d3d30

.thumb
branch_21d3d30: @ 21d3d30 :thumb
	mov     r0, #0x3
	sub     r0, r0, r6
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d55d4
	mov     r2, #0x3
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	sub     r2, r2, r7
	bl      Function_21d55d4
	str     r0, [sp, #0x20]
	mov     r0, #0x3
	sub     r7, r0, r4
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, r7
	bl      Function_21d55d4
	ldr     r1, [sp, #0x20]
	cmp     r6, r1
	bne     branch_21d3d6e
	cmp     r6, r0
	bne     branch_21d3d6e
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x21d3d6e

.thumb
branch_21d3d6e: @ 21d3d6e :thumb
	ldr     r2, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d55d4
	mov     r4, r0
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d55d4
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, r7
	bl      Function_21d55d4
	cmp     r4, r6
	bne     branch_21d3d9e
	cmp     r4, r0
	bne     branch_21d3d9e
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x21d3d9e

.thumb
branch_21d3d9e: @ 21d3d9e :thumb
	ldr     r2, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d55d4
	mov     r4, r0
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d55d4
	mov     r6, r0
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_21d55d4
	cmp     r4, r6
	bne     branch_21d3dce
	cmp     r4, r0
	bne     branch_21d3dce
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x21d3dce

.thumb
branch_21d3dce: @ 21d3dce :thumb
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x21d3dd4

.thumb
Function_21d3dd4: @ 21d3dd4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r1
	mov     r0, r5
	add     r0, #0xcc
	ldr     r6, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xf0
	ldr     r4, [r0, #0x0]
	mov     r0, #0x1
	sub     r0, r0, r6
	str     r0, [sp, #0xc]
	mov     r7, r2
	ldr     r2, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d55d4
	mov     r1, #0x1
	str     r0, [sp, #0x10]
	mov     r0, r5
	sub     r2, r1, r4
	bl      Function_21d55d4
	str     r0, [sp, #0x14]
	mov     r0, #0x1
	sub     r0, r0, r7
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_21d55d4
	ldr     r2, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	cmp     r2, r1
	bne     branch_21d3e2a
	mov     r1, r2
	cmp     r1, r0
	bne     branch_21d3e2a
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3e2a

.thumb
branch_21d3e2a: @ 21d3e2a :thumb
	mov     r2, #0x2
	mov     r0, r5
	mov     r1, #0x0
	sub     r2, r2, r6
	bl      Function_21d55d4
	str     r0, [sp, #0x18]
	mov     r0, #0x2
	sub     r0, r0, r4
	str     r0, [sp, #0x8]
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d55d4
	mov     r1, #0x2
	str     r0, [sp, #0x1c]
	mov     r0, r5
	sub     r2, r1, r7
	bl      Function_21d55d4
	ldr     r2, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	cmp     r2, r1
	bne     branch_21d3e68
	mov     r1, r2
	cmp     r1, r0
	bne     branch_21d3e68
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3e68

.thumb
branch_21d3e68: @ 21d3e68 :thumb
	mov     r0, #0x3
	sub     r0, r0, r6
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d55d4
	mov     r2, #0x3
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x1
	sub     r2, r2, r4
	bl      Function_21d55d4
	mov     r4, r0
	mov     r0, #0x3
	sub     r7, r0, r7
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, r7
	bl      Function_21d55d4
	cmp     r6, r4
	bne     branch_21d3ea4
	cmp     r6, r0
	bne     branch_21d3ea4
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3ea4

.thumb
branch_21d3ea4: @ 21d3ea4 :thumb
	ldr     r2, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d55d4
	mov     r4, r0
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d55d4
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, r7
	bl      Function_21d55d4
	cmp     r4, r6
	bne     branch_21d3ed4
	cmp     r4, r0
	bne     branch_21d3ed4
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3ed4

.thumb
branch_21d3ed4: @ 21d3ed4 :thumb
	ldr     r2, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d55d4
	mov     r4, r0
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d55d4
	mov     r6, r0
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_21d55d4
	cmp     r4, r6
	bne     branch_21d3f04
	cmp     r4, r0
	bne     branch_21d3f04
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3f04

.thumb
branch_21d3f04: @ 21d3f04 :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21d3f0a


.align 2, 0


.thumb
Function_21d3f0c: @ 21d3f0c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r0, r5
	add     r0, #0xf0
	ldr     r7, [r0, #0x0]
	mov     r0, #0x45
	lsl     r0, r0, #2
	mov     r3, #0x2
	ldr     r6, [r5, r0]
	mov     r0, r5
	mov     r1, #0x0
	sub     r2, r3, r2
	bl      Function_21d55d4
	mov     r2, #0x2
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	sub     r2, r2, r7
	bl      Function_21d55d4
	mov     r1, #0x2
	mov     r7, r0
	mov     r0, r5
	sub     r2, r1, r6
	bl      Function_21d55d4
	cmp     r4, #0x3
	beq     branch_21d3f4e
	cmp     r4, r7
	bne     branch_21d3f52
	cmp     r4, r0
	bne     branch_21d3f52
.thumb
branch_21d3f4e: @ 21d3f4e :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3f52

.thumb
branch_21d3f52: @ 21d3f52 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d3f56


.align 2, 0


.thumb
Function_21d3f58: @ 21d3f58 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r2
	mov     r2, r5
	add     r2, #0xcc
	mov     r0, #0x45
	ldr     r3, [r2, #0x0]
	lsl     r0, r0, #2
	mov     r2, #0x2
	ldr     r6, [r5, r0]
	mov     r0, r5
	mov     r1, #0x0
	sub     r2, r2, r3
	bl      Function_21d55d4
	mov     r2, #0x2
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	sub     r2, r2, r7
	bl      Function_21d55d4
	mov     r1, #0x2
	mov     r7, r0
	mov     r0, r5
	sub     r2, r1, r6
	bl      Function_21d55d4
	cmp     r4, r7
	bne     branch_21d3f9c
	cmp     r4, r0
	bne     branch_21d3f9c
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3f9c

.thumb
branch_21d3f9c: @ 21d3f9c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d3fa0

.thumb
Function_21d3fa0: @ 21d3fa0 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r2
	mov     r2, r5
	add     r2, #0xcc
	mov     r0, r5
	ldr     r3, [r2, #0x0]
	add     r0, #0xf0
	mov     r2, #0x2
	ldr     r6, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	sub     r2, r2, r3
	bl      Function_21d55d4
	mov     r2, #0x2
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	sub     r2, r2, r6
	bl      Function_21d55d4
	mov     r1, #0x2
	mov     r6, r0
	mov     r0, r5
	sub     r2, r1, r7
	bl      Function_21d55d4
	cmp     r4, r6
	bne     branch_21d3fe4
	cmp     r4, r0
	bne     branch_21d3fe4
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d3fe4

.thumb
branch_21d3fe4: @ 21d3fe4 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d3fe8

.thumb
Function_21d3fe8: @ 21d3fe8 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, r6
	lsl     r5, r1, #2
	add     r4, #0x90
	ldr     r0, [r4, r5]
	mov     r1, #0x2a
	add     r0, r0, r2
	str     r0, [r4, r5]
	ldr     r0, [r4, r5]
	lsl     r1, r1, #16
	blx     _s32_div_f
	str     r1, [r4, r5]
	ldr     r1, [r4, r5]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	asr     r0, r1, #4
	lsr     r0, r0, #27
	add     r0, r1, r0
	asr     r1, r0, #5
	mov     r0, #0x15
	sub     r1, r0, r1
	add     r0, r6, r5
	add     r0, #0xa8
	str     r1, [r0, #0x0]
	pop     {r4-r6,pc}
@ 0x21d4022


.align 2, 0


.thumb
Function_21d4024: @ 21d4024 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r7
	add     r5, #0x90
	lsl     r4, r1, #2
	ldr     r0, [r5, r4]
	lsr     r6, r0, #31
	lsl     r3, r0, #15
	sub     r3, r3, r6
	mov     r0, #0xf
	ror     r3, r0
	add     r0, r6, r3
	beq     branch_21d4058
	cmp     r0, r2
	bge     branch_21d4044
	mov     r2, r0
.thumb
branch_21d4044: @ 21d4044 :thumb
	mov     r0, r7
	bl      Function_21d3fe8
	ldr     r0, [r5, r4]
	lsr     r2, r0, #31
	lsl     r1, r0, #15
	sub     r1, r1, r2
	mov     r0, #0xf
	ror     r1, r0
	add     r0, r2, r1
.thumb
branch_21d4058: @ 21d4058 :thumb
	pop     {r3-r7,pc}
@ 0x21d405a


.align 2, 0


.thumb
Function_21d405c: @ 21d405c :thumb
	push    {r3,lr}
	bl      PRNG
	mov     r1, #0x64
	blx     _u32_div_f
	mov     r0, r1
	pop     {r3,pc}
@ 0x21d406c

.thumb
Function_21d406c: @ 21d406c :thumb
	ldr     r3, [r1, #0x0]
	sub     r2, r3, r0
	str     r2, [r1, #0x0]
	bpl     branch_21d4078
	mov     r2, #0x0
	str     r2, [r1, #0x0]
.thumb
branch_21d4078: @ 21d4078 :thumb
	cmp     r3, r0
	bcs     branch_21d4080
	mov     r0, #0x1
	bx      lr
@ 0x21d4080

.thumb
branch_21d4080: @ 21d4080 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d4084

.thumb
Function_21d4084: @ 21d4084 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d405c
	add     r4, #0x88
	ldr     r1, [r4, #0x0]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x10] @ 0x21d40a4, (=0x21d9520)
	ldr     r1, [r1, r2]
	cmp     r1, r0
	bls     branch_21d409e
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d409e

.thumb
branch_21d409e: @ 21d409e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d40a2


.align 2


.word 0x21d9520 @ 0x21d40a4
.thumb
Function_21d40a8: @ 21d40a8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, #0x0
	str     r1, [r5, #0x74]
	bl      Function_21d4084
	cmp     r0, #0x1
	beq     branch_21d40ba
	b       branch_21d41cc
@ 0x21d40ba

.thumb
branch_21d40ba: @ 21d40ba :thumb
	mov     r0, r5
	bl      Function_21d405c
	mov     r1, r5
	str     r0, [sp, #0x0]
	add     r1, #0x88
	ldr     r1, [r1, #0x0]
	ldr     r0, [pc, #0x104] @ 0x21d41d0, (=0x21d95c8)
	lsl     r3, r1, #4
	mov     r1, #0x47
	lsl     r1, r1, #4
	ldr     r2, [r5, r1]
	add     r4, r0, r3
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r5, r1]
	ldrh    r0, [r0, r3]
	add     r1, sp, #0x0
	bl      Function_21d406c
	cmp     r0, #0x0
	beq     branch_21d40fa
	ldr     r1, [r5, #0x74]
	mov     r0, #0x8
	orr     r0, r1
	str     r0, [r5, #0x74]
	mov     r0, #0x4a
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d40fa

.thumb
branch_21d40fa: @ 21d40fa :thumb
	ldrh    r0, [r4, #0x2]
	add     r1, sp, #0x0
	bl      Function_21d406c
	cmp     r0, #0x0
	beq     branch_21d411a
	ldr     r1, [r5, #0x74]
	mov     r0, #0x4
	orr     r0, r1
	str     r0, [r5, #0x74]
	ldr     r0, [pc, #0xc4] @ 0x21d41d4, (=0x49c)
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d411a

.thumb
branch_21d411a: @ 21d411a :thumb
	ldrh    r0, [r4, #0x4]
	add     r1, sp, #0x0
	bl      Function_21d406c
	cmp     r0, #0x0
	beq     branch_21d413c
	ldr     r1, [r5, #0x74]
	mov     r0, #0x80
	orr     r0, r1
	str     r0, [r5, #0x74]
	mov     r0, #0x4b
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d413c

.thumb
branch_21d413c: @ 21d413c :thumb
	ldrh    r0, [r4, #0x6]
	add     r1, sp, #0x0
	bl      Function_21d406c
	cmp     r0, #0x0
	beq     branch_21d415c
	ldr     r1, [r5, #0x74]
	mov     r0, #0x40
	orr     r0, r1
	str     r0, [r5, #0x74]
	ldr     r0, [pc, #0x84] @ 0x21d41d8, (=0x4ac)
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d415c

.thumb
branch_21d415c: @ 21d415c :thumb
	ldrh    r0, [r4, #0x8]
	add     r1, sp, #0x0
	bl      Function_21d406c
	cmp     r0, #0x0
	beq     branch_21d417c
	ldr     r1, [r5, #0x74]
	mov     r0, #0x20
	orr     r0, r1
	str     r0, [r5, #0x74]
	ldr     r0, [pc, #0x68] @ 0x21d41dc, (=0x4a8)
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d417c

.thumb
branch_21d417c: @ 21d417c :thumb
	ldrh    r0, [r4, #0xa]
	add     r1, sp, #0x0
	bl      Function_21d406c
	cmp     r0, #0x0
	beq     branch_21d419c
	ldr     r1, [r5, #0x74]
	mov     r0, #0x10
	orr     r0, r1
	str     r0, [r5, #0x74]
	ldr     r0, [pc, #0x4c] @ 0x21d41e0, (=0x4a4)
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d419c

.thumb
branch_21d419c: @ 21d419c :thumb
	ldrh    r0, [r4, #0xc]
	add     r1, sp, #0x0
	bl      Function_21d406c
	cmp     r0, #0x0
	ldr     r1, [r5, #0x74]
	beq     branch_21d41bc
	mov     r0, #0x2
	orr     r0, r1
	str     r0, [r5, #0x74]
	ldr     r0, [pc, #0x30] @ 0x21d41e4, (=0x498)
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d41bc

.thumb
branch_21d41bc: @ 21d41bc :thumb
	mov     r0, #0x1
	orr     r1, r0
	str     r1, [r5, #0x74]
	ldr     r1, [pc, #0x24] @ 0x21d41e8, (=0x494)
	ldr     r2, [r5, r1]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r5, r1]
	pop     {r3-r5,pc}
@ 0x21d41cc

.thumb
branch_21d41cc: @ 21d41cc :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d41d0

.word 0x21d95c8 @ 0x21d41d0
.word 0x49c @ 0x21d41d4
.word 0x4ac @ 0x21d41d8
.word 0x4a8 @ 0x21d41dc
.word 0x4a4 @ 0x21d41e0
.word 0x498 @ 0x21d41e4
.word 0x494 @ 0x21d41e8
.thumb
Function_21d41ec: @ 21d41ec :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d405c
	add     r4, #0x88
	ldr     r1, [r4, #0x0]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x10] @ 0x21d420c, (=0x21d94d8)
	ldr     r1, [r1, r2]
	cmp     r0, r1
	bcs     branch_21d4206
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d4206

.thumb
branch_21d4206: @ 21d4206 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d420a


.align 2


.word 0x21d94d8 @ 0x21d420c
.thumb
Function_21d4210: @ 21d4210 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_21d405c
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x88
	ldr     r1, [r0, #0x0]
	mov     r0, #0x48
	ldr     r2, [pc, #0x98] @ 0x21d42c0, (=0x21d9934)
	mul     r0, r1
	add     r0, r2, r0
	str     r0, [sp, #0x0]
	mov     r6, #0x0
	mov     r4, r0
	add     r7, sp, #0x4
.thumb
branch_21d4232: @ 21d4232 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r7
	bl      Function_21d406c
	cmp     r0, #0x1
	bne     branch_21d4292
	mov     r0, #0xc
	mov     r1, r6
	mul     r1, r0
	ldr     r0, [sp, #0x0]
	add     r1, r0, r1
	ldr     r0, [r1, #0x4]
	str     r0, [r5, #0x50]
	ldr     r0, [r1, #0x8]
	str     r0, [r5, #0x4c]
	ldr     r0, [r5, #0x50]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x6c] @ 0x21d42c4, (=0x21d9568)
	ldr     r0, [r0, r1]
	str     r0, [r5, #0x18]
	ldr     r0, [r5, #0x4c]
	cmp     r0, #0x0
	beq     branch_21d426c
	cmp     r0, #0x1
	beq     branch_21d4278
	cmp     r0, #0x2
	beq     branch_21d4284
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d426c

.thumb
branch_21d426c: @ 21d426c :thumb
	ldr     r0, [pc, #0x58] @ 0x21d42c8, (=0x478)
	add     sp, #0x8
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	pop     {r3-r7,pc}
@ 0x21d4278

.thumb
branch_21d4278: @ 21d4278 :thumb
	ldr     r0, [pc, #0x50] @ 0x21d42cc, (=0x47c)
	add     sp, #0x8
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	pop     {r3-r7,pc}
@ 0x21d4284

.thumb
branch_21d4284: @ 21d4284 :thumb
	mov     r0, #0x12
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	add     sp, #0x8
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	pop     {r3-r7,pc}
@ 0x21d4292

.thumb
branch_21d4292: @ 21d4292 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	cmp     r6, #0x6
	blt     branch_21d4232
	.hword  0x1e71 @ sub r1, r6, #0x1
	mov     r0, #0xc
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [sp, #0x0]
	add     r1, r0, r2
	ldr     r0, [r1, #0x4]
	str     r0, [r5, #0x50]
	ldr     r0, [r1, #0x8]
	str     r0, [r5, #0x4c]
	ldr     r0, [r5, #0x50]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x10] @ 0x21d42c4, (=0x21d9568)
	ldr     r0, [r0, r1]
	str     r0, [r5, #0x18]
	bl      ErrorHandling
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d42c0

.word 0x21d9934 @ 0x21d42c0
.word 0x21d9568 @ 0x21d42c4
.word 0x478 @ 0x21d42c8
.word 0x47c @ 0x21d42cc
.thumb
Function_21d42d0: @ 21d42d0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r4, #0x0
	bl      Function_21d405c
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r0, #0x88
	ldr     r1, [r0, #0x0]
	mov     r0, #0x48
	mul     r0, r1
	ldr     r2, [pc, #0x74] @ 0x21d4360, (=0x21d9784)
	ldr     r1, [r6, #0x4c]
	add     r2, r2, r0
	mov     r0, #0x18
	mul     r0, r1
	add     r5, r2, r0
	str     r5, [sp, #0x0]
	add     r7, sp, #0x4
.thumb
branch_21d42f8: @ 21d42f8 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r7
	bl      Function_21d406c
	cmp     r0, #0x1
	bne     branch_21d4348
	ldr     r0, [sp, #0x0]
	lsl     r1, r4, #3
	add     r0, r0, r1
	ldr     r1, [r0, #0x4]
	mov     r0, #0x56
	lsl     r0, r0, #2
	str     r1, [r6, r0]
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_21d4324
	cmp     r0, #0x1
	beq     branch_21d4330
	cmp     r0, #0x2
	beq     branch_21d433c
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d4324

.thumb
branch_21d4324: @ 21d4324 :thumb
	ldr     r0, [pc, #0x3c] @ 0x21d4364, (=0x488)
	add     sp, #0x8
	ldr     r1, [r6, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r6, r0]
	pop     {r3-r7,pc}
@ 0x21d4330

.thumb
branch_21d4330: @ 21d4330 :thumb
	ldr     r0, [pc, #0x34] @ 0x21d4368, (=0x484)
	add     sp, #0x8
	ldr     r1, [r6, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r6, r0]
	pop     {r3-r7,pc}
@ 0x21d433c

.thumb
branch_21d433c: @ 21d433c :thumb
	ldr     r0, [pc, #0x2c] @ 0x21d436c, (=0x48c)
	add     sp, #0x8
	ldr     r1, [r6, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r6, r0]
	pop     {r3-r7,pc}
@ 0x21d4348

.thumb
branch_21d4348: @ 21d4348 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r4, #0x3
	bcc     branch_21d42f8
	mov     r0, #0x56
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r6, r0]
	bl      ErrorHandling
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d4360

.word 0x21d9784 @ 0x21d4360
.word 0x488 @ 0x21d4364
.word 0x484 @ 0x21d4368
.word 0x48c @ 0x21d436c
.thumb
Function_21d4370: @ 21d4370 :thumb
	push    {r4,lr}
	mov     r1, r0
	add     r1, #0x88
	ldr     r1, [r1, #0x0]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x14] @ 0x21d4390, (=0x21d9538)
	ldr     r4, [r1, r2]
	bl      Function_21d405c
	cmp     r0, r4
	bcs     branch_21d438a
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d438a

.thumb
branch_21d438a: @ 21d438a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d438e


.align 2


.word 0x21d9538 @ 0x21d4390
.thumb
Function_21d4394: @ 21d4394 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x88
	ldr     r1, [r1, #0x0]
	ldr     r2, [pc, #0xe8] @ 0x21d4488, (=0x21d9628)
	lsl     r1, r1, #4
	add     r5, r2, r1
	bl      Function_21d405c
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x74]
	mov     r0, r4
	bl      Function_21d4370
	cmp     r0, #0x0
	bne     branch_21d441e
	ldr     r0, [pc, #0xd0] @ 0x21d448c, (=0x474)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, #0x50]
	cmp     r1, #0x5
	bhi     branch_21d440e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d43d2

Jumppoints_21d43d2:
.hword branch_21d43de - Jumppoints_21d43d2 - 2
.hword branch_21d43de - Jumppoints_21d43d2 - 2
.hword branch_21d43de - Jumppoints_21d43d2 - 2
.hword branch_21d43f6 - Jumppoints_21d43d2 - 2
.hword branch_21d43f6 - Jumppoints_21d43d2 - 2
.hword branch_21d43f6 - Jumppoints_21d43d2 - 2
.thumb
branch_21d43de: @ 21d43de :thumb
	mov     r1, #0x2
	ldr     r2, [r4, #0x74]
	lsl     r1, r1, #8
	orr     r1, r2
	str     r1, [r4, #0x74]
	mov     r1, r0
	add     r1, #0x44
	ldr     r1, [r4, r1]
	add     r0, #0x44
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x21d43f6

.thumb
branch_21d43f6: @ 21d43f6 :thumb
	mov     r1, #0x1
	ldr     r2, [r4, #0x74]
	lsl     r1, r1, #8
	orr     r1, r2
	str     r1, [r4, #0x74]
	mov     r1, r0
	add     r1, #0x40
	ldr     r1, [r4, r1]
	add     r0, #0x40
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x21d440e

.thumb
branch_21d440e: @ 21d440e :thumb
	bl      ErrorHandling
	mov     r0, #0x2
	ldr     r1, [r4, #0x74]
	lsl     r0, r0, #8
	orr     r0, r1
	str     r0, [r4, #0x74]
	pop     {r3-r5,pc}
@ 0x21d441e

.thumb
branch_21d441e: @ 21d441e :thumb
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x0
	bl      Function_21d406c
	cmp     r0, #0x1
	bne     branch_21d443c
	ldr     r1, [r4, #0x74]
	mov     r0, #0x4
	orr     r0, r1
	str     r0, [r4, #0x74]
	ldr     r0, [pc, #0x5c] @ 0x21d4490, (=0x49c)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x21d443c

.thumb
branch_21d443c: @ 21d443c :thumb
	ldr     r0, [r5, #0x4]
	add     r1, sp, #0x0
	bl      Function_21d406c
	cmp     r0, #0x1
	bne     branch_21d445a
	ldr     r1, [r4, #0x74]
	mov     r0, #0x40
	orr     r0, r1
	str     r0, [r4, #0x74]
	ldr     r0, [pc, #0x40] @ 0x21d4494, (=0x4ac)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x21d445a

.thumb
branch_21d445a: @ 21d445a :thumb
	ldr     r0, [r5, #0x4]
	add     r1, sp, #0x0
	bl      Function_21d406c
	cmp     r0, #0x1
	bne     branch_21d4478
	ldr     r1, [r4, #0x74]
	mov     r0, #0x10
	orr     r0, r1
	str     r0, [r4, #0x74]
	ldr     r0, [pc, #0x28] @ 0x21d4498, (=0x4a4)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x21d4478

.thumb
branch_21d4478: @ 21d4478 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x74]
	ldr     r0, [pc, #0x1c] @ 0x21d449c, (=0x494)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x21d4486


.align 2


.word 0x21d9628 @ 0x21d4488
.word 0x474 @ 0x21d448c
.word 0x49c @ 0x21d4490
.word 0x4ac @ 0x21d4494
.word 0x4a4 @ 0x21d4498
.word 0x494 @ 0x21d449c
.thumb
Function_21d44a0: @ 21d44a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d405c
	add     r4, #0x88
	ldr     r1, [r4, #0x0]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x10] @ 0x21d44c0, (=0x21d9580)
	ldr     r1, [r1, r2]
	cmp     r0, r1
	bcs     branch_21d44ba
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d44ba

.thumb
branch_21d44ba: @ 21d44ba :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d44be


.align 2


.word 0x21d9580 @ 0x21d44c0
.thumb
Function_21d44c4: @ 21d44c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d405c
	add     r4, #0x88
	ldr     r1, [r4, #0x0]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x10] @ 0x21d44e4, (=0x21d9508)
	ldr     r1, [r1, r2]
	cmp     r0, r1
	bcs     branch_21d44de
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d44de

.thumb
branch_21d44de: @ 21d44de :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d44e2


.align 2


.word 0x21d9508 @ 0x21d44e4
.thumb
Function_21d44e8: @ 21d44e8 :thumb
	push    {r4,lr}
	ldr     r4, [r0, #0x18]
	bl      Function_21d405c
	cmp     r0, r4
	bcs     branch_21d44f8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d44f8

.thumb
branch_21d44f8: @ 21d44f8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d44fc

.thumb
Function_21d44fc: @ 21d44fc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r4, [r5, #0x18]
	bl      Function_21d405c
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0x38] @ 0x21d454c, (=0x21d9598)
	lsl     r0, r0, #3
	add     r6, r1, r0
	ldr     r0, [r5, #0x28]
	cmp     r0, #0x2
	bne     branch_21d4520
	sub     r4, #0xa
	b       branch_21d453e
@ 0x21d4520

.thumb
branch_21d4520: @ 21d4520 :thumb
	ldr     r0, [r6, #0x0]
	add     r1, sp, #0x0
	bl      Function_21d406c
	cmp     r0, #0x1
	bne     branch_21d4530
	sub     r4, #0xa
	b       branch_21d453e
@ 0x21d4530

.thumb
branch_21d4530: @ 21d4530 :thumb
	ldr     r0, [r6, #0x4]
	add     r1, sp, #0x0
	bl      Function_21d406c
	cmp     r0, #0x1
	bne     branch_21d453e
	.hword  0x1f64 @ sub r4, r4, #0x5
.thumb
branch_21d453e: @ 21d453e :thumb
	cmp     r4, #0x0
	bge     branch_21d4544
	mov     r4, #0x0
.thumb
branch_21d4544: @ 21d4544 :thumb
	str     r4, [r5, #0x18]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d454a


.align 2


.word 0x21d9598 @ 0x21d454c
.thumb
Function_21d4550: @ 21d4550 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x18]
	bl      Function_21d405c
	str     r0, [sp, #0x0]
	add     r5, #0x88
	ldr     r1, [r5, #0x0]
	mov     r0, #0x90
	mul     r0, r1
	ldr     r2, [pc, #0x44] @ 0x21d45ac, (=0x21d9ae4)
	mov     r1, #0x0
	add     r5, r2, r0
	mov     r2, r5
.thumb
branch_21d456c: @ 21d456c :thumb
	ldr     r0, [r2, #0x0]
	cmp     r4, r0
	bcc     branch_21d459c
	lsl     r4, r1, #4
	add     r0, r5, r4
	ldr     r0, [r0, #0x4]
	add     r1, sp, #0x0
	bl      Function_21d406c
	cmp     r0, #0x1
	bne     branch_21d4586
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d4586

.thumb
branch_21d4586: @ 21d4586 :thumb
	add     r0, r5, r4
	ldr     r0, [r0, #0x8]
	add     r1, sp, #0x0
	bl      Function_21d406c
	cmp     r0, #0x1
	bne     branch_21d4598
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d4598

.thumb
branch_21d4598: @ 21d4598 :thumb
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x21d459c

.thumb
branch_21d459c: @ 21d459c :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x10
	cmp     r1, #0x9
	blt     branch_21d456c
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d45ac

.word 0x21d9ae4 @ 0x21d45ac
.thumb
Function_21d45b0: @ 21d45b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      PRNG
	mov     r1, #0x6
	blx     _s32_div_f
	str     r1, [r4, #0x34]
	pop     {r4,pc}
@ 0x21d45c2


.align 2, 0


.thumb
Function_21d45c4: @ 21d45c4 :thumb
	push    {r4,lr}
	mov     r1, #0x12
	lsl     r1, r1, #4
	add     r4, r0, r1
	mov     r1, #0x0
	str     r1, [r4, #0x0]
	str     r1, [r4, #0x4]
	str     r0, [r4, #0xc]
	ldr     r0, [pc, #0xc] @ 0x21d45e4, (=0x21d4615)
	mov     r1, r4
	mov     r2, #0x8a
	bl      AddTaskToTaskList1
	str     r0, [r4, #0x10]
	pop     {r4,pc}
@ 0x21d45e2


.align 2


.word 0x21d4615 @ 0x21d45e4
.thumb
Function_21d45e8: @ 21d45e8 :thumb
	mov     r1, #0x13
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x21d45f4, (=Call_RemoveTaskFromTaskList+1)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x21d45f2


.align 2


.word Call_RemoveTaskFromTaskList+1 @ 0x21d45f4
.thumb
Function_21d45f8: @ 21d45f8 :thumb
	mov     r1, #0x49
	lsl     r1, r1, #2
	mov     r3, #0x0
	str     r3, [r0, r1]
	add     r2, r1, #0x4
	str     r3, [r0, r2]
	mov     r2, #0x1
	.hword  0x1f09 @ sub r1, r1, #0x4
	str     r2, [r0, r1]
	bx      lr
@ 0x21d460c

.thumb
Function_21d460c: @ 21d460c :thumb
	mov     r1, #0x49
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d4614

.thumb
Function_21d4614: @ 21d4614 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r0, [r5, #0x0]
	ldr     r4, [r5, #0xc]
	cmp     r0, #0x3
	bhi     branch_21d4702
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d462c

Jumppoints_21d462c:
.hword branch_21d4702 - Jumppoints_21d462c - 2
.hword branch_21d4634 - Jumppoints_21d462c - 2
.hword branch_21d4642 - Jumppoints_21d462c - 2
.hword branch_21d4664 - Jumppoints_21d462c - 2
.thumb
branch_21d4634: @ 21d4634 :thumb
	mov     r0, r5
	bl      Function_21d4714
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d4642

.thumb
branch_21d4642: @ 21d4642 :thumb
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x0
	beq     branch_21d4650
	bl      Function_21d505c
	cmp     r0, #0x1
	bne     branch_21d4702
.thumb
branch_21d4650: @ 21d4650 :thumb
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x0
	beq     branch_21d465e
	bl      Function_21d505c
	cmp     r0, #0x1
	bne     branch_21d4702
.thumb
branch_21d465e: @ 21d465e :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
.thumb
branch_21d4664: @ 21d4664 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #10
	bl      Function_21d55f8
	cmp     r0, #0x0
	bne     branch_21d4676
	ldr     r0, [r4, #0x64]
	cmp     r0, #0x0
	bne     branch_21d46c4
.thumb
branch_21d4676: @ 21d4676 :thumb
	ldr     r0, [pc, #0x8c] @ 0x21d4704, (=0x62d)
	bl      Function_2005748
	ldr     r1, [r4, #0x60]
	ldr     r0, [r4, #0x64]
	add     r1, r1, r0
	ldr     r0, [pc, #0x84] @ 0x21d4708, (=0xc350)
	str     r1, [r4, #0x60]
	cmp     r1, r0
	blt     branch_21d468c
	str     r0, [r4, #0x60]
.thumb
branch_21d468c: @ 21d468c :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x1
	bne     branch_21d469a
	ldr     r1, [r4, #0x14]
	ldr     r0, [r4, #0x64]
	add     r0, r1, r0
	str     r0, [r4, #0x14]
.thumb
branch_21d469a: @ 21d469a :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x64]
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x0
	beq     branch_21d46ac
	bl      Function_207136c
	mov     r0, #0x0
	str     r0, [r5, #0x14]
.thumb
branch_21d46ac: @ 21d46ac :thumb
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x0
	beq     branch_21d46ba
	bl      Function_207136c
	mov     r0, #0x0
	str     r0, [r5, #0x18]
.thumb
branch_21d46ba: @ 21d46ba :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x4]
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x21d46c4

.thumb
branch_21d46c4: @ 21d46c4 :thumb
	ldr     r1, [pc, #0x44] @ 0x21d470c, (=RAM_21bf67c)
	mov     r0, #0x3
	ldr     r2, [r1, #0x44]
	ldr     r1, [pc, #0x44] @ 0x21d4710, (=0xc03)
	tst     r1, r2
	beq     branch_21d46d2
	mov     r0, #0x1
.thumb
branch_21d46d2: @ 21d46d2 :thumb
	ldr     r1, [r5, #0x8]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, #0x8]
	tst     r0, r1
	bne     branch_21d4702
	ldr     r0, [r4, #0x64]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x64]
	ldr     r0, [r4, #0x60]
	add     r1, r0, #0x1
	ldr     r0, [pc, #0x20] @ 0x21d4708, (=0xc350)
	str     r1, [r4, #0x60]
	cmp     r1, r0
	blt     branch_21d46f0
	str     r0, [r4, #0x60]
.thumb
branch_21d46f0: @ 21d46f0 :thumb
	ldr     r0, [pc, #0x10] @ 0x21d4704, (=0x62d)
	bl      Function_2005748
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x1
	bne     branch_21d4702
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
.thumb
branch_21d4702: @ 21d4702 :thumb
	pop     {r3-r5,pc}
@ 0x21d4704

.word 0x62d @ 0x21d4704
.word 0xc350 @ 0x21d4708
.word RAM_21bf67c @ 0x21d470c
.word 0xc03 @ 0x21d4710
.thumb
Function_21d4714: @ 21d4714 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r7, [r5, #0xc]
	ldr     r6, [r7, #0x48]
	cmp     r6, #0x0
	bne     branch_21d4724
	bl      ErrorHandling
.thumb
branch_21d4724: @ 21d4724 :thumb
	mov     r4, #0x0
.thumb
branch_21d4726: @ 21d4726 :thumb
	mov     r0, #0x1
	tst     r0, r6
	beq     branch_21d4758
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x0
	bne     branch_21d4740
	ldr     r2, [r7, #0x64]
	mov     r0, r7
	mov     r1, r4
	bl      Function_21d5028
	str     r0, [r5, #0x14]
	b       branch_21d4758
@ 0x21d4740

.thumb
branch_21d4740: @ 21d4740 :thumb
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x0
	bne     branch_21d4754
	ldr     r2, [r7, #0x64]
	mov     r0, r7
	mov     r1, r4
	bl      Function_21d5028
	str     r0, [r5, #0x18]
	b       branch_21d4758
@ 0x21d4754

.thumb
branch_21d4754: @ 21d4754 :thumb
	bl      ErrorHandling
.thumb
branch_21d4758: @ 21d4758 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	lsr     r6, r6, #1
	cmp     r4, #0x5
	blt     branch_21d4726
	pop     {r3-r7,pc}
@ 0x21d4762


.align 2, 0


.thumb
Function_21d4764: @ 21d4764 :thumb
	push    {r4,lr}
	mov     r1, #0x4f
	lsl     r1, r1, #2
	add     r4, r0, r1
	mov     r1, #0x0
	str     r1, [r4, #0x0]
	str     r1, [r4, #0x4]
	str     r0, [r4, #0x20]
	ldr     r0, [pc, #0xc] @ 0x21d4784, (=0x21d4825)
	mov     r1, r4
	mov     r2, #0x84
	bl      AddTaskToTaskList1
	str     r0, [r4, #0x24]
	pop     {r4,pc}
@ 0x21d4782


.align 2


.word 0x21d4825 @ 0x21d4784
.thumb
Function_21d4788: @ 21d4788 :thumb
	mov     r1, #0x16
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x21d4794, (=Call_RemoveTaskFromTaskList+1)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x21d4792


.align 2


.word Call_RemoveTaskFromTaskList+1 @ 0x21d4794
.thumb
Function_21d4798: @ 21d4798 :thumb
	mov     r2, #0x4f
	lsl     r2, r2, #2
	add     r2, r0, r2
	str     r1, [r2, #0x0]
	mov     r0, #0x0
	str     r0, [r2, #0x4]
	str     r0, [r2, #0x8]
	str     r0, [r2, #0x10]
	bx      lr
@ 0x21d47aa


.align 2, 0


.thumb
Function_21d47ac: @ 21d47ac :thumb
	mov     r1, #0x51
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x21d47b4

.thumb
Function_21d47b4: @ 21d47b4 :thumb
	push    {r4,lr}
	mov     r1, #0x52
	mov     r4, r0
	mov     r2, #0x0
	lsl     r1, r1, #2
	str     r2, [r4, r1]
	bl      Function_21d7228
	mov     r1, #0x5d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_21d73b4
	mov     r1, #0x5e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_21d7550
	mov     r1, #0x5f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_21d76b4
	mov     r1, #0x6
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x21d47f0

.thumb
Function_21d47f0: @ 21d47f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x52
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	add     r0, #0x2c
	ldr     r0, [r4, r0]
	bl      Function_207136c
	mov     r0, #0x5e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_207136c
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_207136c
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	bl      Function_207136c
	pop     {r4,pc}
@ 0x21d4824

.thumb
Function_21d4824: @ 21d4824 :thumb
	push    {r3-r5,lr}
	ldr     r4, [pc, #0x18] @ 0x21d4840, (=0x21d8774)
	mov     r5, r1
.thumb
branch_21d482a: @ 21d482a :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	ldr     r1, [r5, #0x4]
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	blx     r1
	cmp     r0, #0x1
	beq     branch_21d482a
	pop     {r3-r5,pc}
@ 0x21d4840

.word 0x21d8774 @ 0x21d4840
.thumb
Function_21d4844: @ 21d4844 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	ldr     r1, [r4, #0x18]
	bl      Function_21d5d58
	str     r0, [r4, #0x28]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d485c

.thumb
Function_21d485c: @ 21d485c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	bl      Function_21d5dc4
	cmp     r0, #0x0
	bne     branch_21d486e
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d486e

.thumb
branch_21d486e: @ 21d486e :thumb
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	bl      Function_21d5d90
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4880

.thumb
Function_21d4880: @ 21d4880 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	bl      Function_21d5dc4
	cmp     r0, #0x0
	bne     branch_21d4892
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4892

.thumb
branch_21d4892: @ 21d4892 :thumb
	ldr     r0, [r4, #0x28]
	mov     r1, #0x5
	bl      Function_21d5d90
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d48a8

.thumb
Function_21d48a8: @ 21d48a8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d48ac

.thumb
Function_21d48ac: @ 21d48ac :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x4
	bl      Function_21d5d90
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d48c2


.align 2, 0


.thumb
Function_21d48c4: @ 21d48c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	bl      Function_21d5dc4
	cmp     r0, #0x1
	bne     branch_21d48e2
	ldr     r0, [r4, #0x28]
	bl      Function_207136c
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d48e2: @ 21d48e2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d48e6


.align 2, 0


.thumb
Function_21d48e8: @ 21d48e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x2
	bl      Function_21d5d90
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d48fe


.align 2, 0


.thumb
Function_21d4900: @ 21d4900 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	bl      Function_21d5dc4
	cmp     r0, #0x1
	bne     branch_21d4926
	ldr     r0, [r4, #0x20]
	bl      Function_21d6484
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x20]
	ldr     r1, [r4, #0x1c]
	bl      Function_21d6764
	str     r0, [r4, #0x30]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d4926: @ 21d4926 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d492a


.align 2, 0


.thumb
Function_21d492c: @ 21d492c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	bl      Function_21d67b0
	cmp     r0, #0x1
	bne     branch_21d4950
	ldr     r0, [r4, #0x30]
	mov     r1, #0x1
	bl      Function_21d679c
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	bl      Function_21d5da4
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d4950: @ 21d4950 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4954

.thumb
Function_21d4954: @ 21d4954 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	bl      Function_21d67b0
	cmp     r0, #0x1
	bne     branch_21d4972
	ldr     r0, [r4, #0x2c]
	bl      Function_207136c
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d4972: @ 21d4972 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4976


.align 2, 0


.thumb
Function_21d4978: @ 21d4978 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	bl      Function_21d6484
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x30]
	mov     r1, #0x2
	bl      Function_21d679c
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4996


.align 2, 0


.thumb
Function_21d4998: @ 21d4998 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	bl      Function_21d67b0
	cmp     r0, #0x1
	bne     branch_21d49c8
	ldr     r0, [r4, #0x30]
	bl      Function_207136c
	ldr     r0, [r4, #0x2c]
	bl      Function_207136c
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_21d5da4
	ldr     r0, [r4, #0x28]
	mov     r1, #0x3
	bl      Function_21d5d90
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d49c8: @ 21d49c8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d49cc

.thumb
Function_21d49cc: @ 21d49cc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	bl      Function_21d5dc4
	cmp     r0, #0x1
	bne     branch_21d49e8
	ldr     r0, [r4, #0x28]
	mov     r1, #0x4
	bl      Function_21d5d90
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d49e8: @ 21d49e8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d49ec

.thumb
Function_21d49ec: @ 21d49ec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	bl      Function_21d5dc4
	cmp     r0, #0x1
	bne     branch_21d4a0a
	ldr     r0, [r4, #0x28]
	bl      Function_207136c
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d4a0a: @ 21d4a0a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4a0e


.align 2, 0


.thumb
Function_21d4a10: @ 21d4a10 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	mov     r1, #0x3
	bl      Function_21d679c
	ldr     r0, [r4, #0x20]
	bl      Function_21d6df0
	str     r0, [r4, #0x34]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	ldr     r1, [r4, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x4]
	pop     {r4,pc}
@ 0x21d4a30

.thumb
Function_21d4a30: @ 21d4a30 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x10]
	cmp     r0, #0x30
	blt     branch_21d4a56
	mov     r1, #0x0
	str     r1, [r4, #0x10]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x23
	bl      Function_2005844
	ldr     r0, [r4, #0x30]
	mov     r1, #0x4
	bl      Function_21d679c
.thumb
branch_21d4a56: @ 21d4a56 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4a5a


.align 2, 0


.thumb
Function_21d4a5c: @ 21d4a5c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x34]
	bl      Function_21d6e1c
	cmp     r0, #0x1
	bne     branch_21d4a86
	ldr     r0, [r4, #0x30]
	mov     r1, #0x3
	bl      Function_21d679c
	ldr     r0, [r4, #0x34]
	bl      Function_207136c
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	mov     r0, #0x1
	str     r0, [r4, #0x8]
.thumb
branch_21d4a86: @ 21d4a86 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4a8a


.align 2, 0


.thumb
Function_21d4a8c: @ 21d4a8c :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x20]
	ldr     r3, [pc, #0x20] @ 0x21d4ab4, (=0x21d87a8)
	ldr     r2, [r1, #0x34]
	mov     r1, #0x18
	mul     r1, r2
	add     r2, r3, r1
	ldr     r1, [r0, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x14]
	lsl     r1, r1, #2
	add     r1, r2, r1
	ldr     r0, [r0, #0x30]
	ldr     r1, [r1, #0xc]
	bl      Function_21d679c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d4ab4

.word 0x21d87a8 @ 0x21d4ab4
.thumb
Function_21d4ab8: @ 21d4ab8 :thumb
	push    {r3-r5,lr}
	ldr     r2, [r0, #0x20]
	mov     r1, #0x0
	mov     r4, r1
	mov     r5, r2
.thumb
branch_21d4ac2: @ 21d4ac2 :thumb
	ldr     r3, [r5, #0x7c]
	cmp     r3, #0x1
	beq     branch_21d4aca
	.hword  0x1c49 @ add r1, r1, #0x1
.thumb
branch_21d4aca: @ 21d4aca :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_21d4ac2
	ldr     r3, [r0, #0x14]
	cmp     r3, #0x2
	bge     branch_21d4af4
	cmp     r3, r1
	beq     branch_21d4af4
	ldr     r3, [r2, #0x34]
	mov     r2, #0x18
	ldr     r4, [pc, #0x14] @ 0x21d4af8, (=0x21d87a8)
	str     r1, [r0, #0x14]
	mul     r2, r3
	add     r2, r4, r2
	lsl     r1, r1, #2
	add     r1, r2, r1
	ldr     r0, [r0, #0x30]
	ldr     r1, [r1, #0xc]
	bl      Function_21d679c
.thumb
branch_21d4af4: @ 21d4af4 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d4af8

.word 0x21d87a8 @ 0x21d4af8
.thumb
Function_21d4afc: @ 21d4afc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	mov     r1, #0x3
	bl      Function_21d679c
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4b12


.align 2, 0


.thumb
Function_21d4b14: @ 21d4b14 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	bl      Function_21d47f0
	ldr     r0, [r4, #0x20]
	bl      Function_21d6484
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x30]
	mov     r1, #0x2
	bl      Function_21d679c
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4b38

.thumb
Function_21d4b38: @ 21d4b38 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	bl      Function_21d67b0
	cmp     r0, #0x1
	bne     branch_21d4b68
	ldr     r0, [r4, #0x30]
	bl      Function_207136c
	ldr     r0, [r4, #0x2c]
	bl      Function_207136c
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_21d5da4
	ldr     r0, [r4, #0x28]
	mov     r1, #0x3
	bl      Function_21d5d90
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d4b68: @ 21d4b68 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4b6c

.thumb
Function_21d4b6c: @ 21d4b6c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	bl      Function_21d5dc4
	cmp     r0, #0x1
	bne     branch_21d4b9c
	ldr     r0, [r4, #0x20]
	bl      Function_21d72d4
	ldr     r0, [r4, #0x20]
	bl      Function_21d7460
	ldr     r0, [r4, #0x20]
	mov     r1, #0x0
	bl      Function_21d77e4
	ldr     r0, [r4, #0x20]
	mov     r1, #0x1
	bl      Function_21d77e4
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d4b9c: @ 21d4b9c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4ba0

.thumb
Function_21d4ba0: @ 21d4ba0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x10]
	cmp     r0, #0x2d
	blt     branch_21d4bc0
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x28]
	mov     r1, #0x4
	bl      Function_21d5d90
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d4bc0: @ 21d4bc0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4bc4

.thumb
Function_21d4bc4: @ 21d4bc4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	bl      Function_21d5dc4
	cmp     r0, #0x1
	bne     branch_21d4be2
	ldr     r0, [r4, #0x28]
	bl      Function_207136c
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d4be2: @ 21d4be2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4be6


.align 2, 0


.thumb
Function_21d4be8: @ 21d4be8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	mov     r1, #0x4
	bl      Function_21d679c
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4c02


.align 2, 0


.thumb
Function_21d4c04: @ 21d4c04 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	mov     r1, #0x8
	bl      Function_21d679c
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4c1e


.align 2, 0


.thumb
Function_21d4c20: @ 21d4c20 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x6
	bl      Function_21d5d90
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4c3a


.align 2, 0


.thumb
Function_21d4c3c: @ 21d4c3c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	bl      Function_21d6484
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x30]
	mov     r1, #0x2
	bl      Function_21d679c
	mov     r0, #0x1
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4c5e


.align 2, 0


.thumb
Function_21d4c60: @ 21d4c60 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	bl      Function_21d67b0
	cmp     r0, #0x1
	bne     branch_21d4c94
	ldr     r0, [r4, #0x2c]
	bl      Function_207136c
	ldr     r0, [r4, #0x30]
	bl      Function_207136c
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_21d5da4
	ldr     r0, [r4, #0x28]
	mov     r1, #0x3
	bl      Function_21d5d90
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d4c94: @ 21d4c94 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4c98

.thumb
Function_21d4c98: @ 21d4c98 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x10]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x10]
	cmp     r1, #0x1e
	blt     branch_21d4cb6
	mov     r1, #0x0
	str     r1, [r0, #0x10]
	ldr     r1, [r0, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x4]
	ldr     r0, [r0, #0x28]
	mov     r1, #0x2
	bl      Function_21d5d90
.thumb
branch_21d4cb6: @ 21d4cb6 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d4cba


.align 2, 0


.thumb
Function_21d4cbc: @ 21d4cbc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	bl      Function_21d5dc4
	cmp     r0, #0x1
	bne     branch_21d4ce6
	ldr     r0, [r4, #0x20]
	bl      Function_21d6484
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x20]
	ldr     r1, [r4, #0x1c]
	bl      Function_21d6764
	str     r0, [r4, #0x30]
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d4ce6: @ 21d4ce6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4cea


.align 2, 0


.thumb
Function_21d4cec: @ 21d4cec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	bl      Function_21d67b0
	cmp     r0, #0x1
	bne     branch_21d4d10
	ldr     r0, [r4, #0x30]
	mov     r1, #0x1
	bl      Function_21d679c
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	bl      Function_21d5da4
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d4d10: @ 21d4d10 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4d14

.thumb
Function_21d4d14: @ 21d4d14 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	bl      Function_21d67b0
	cmp     r0, #0x1
	bne     branch_21d4d32
	ldr     r0, [r4, #0x2c]
	bl      Function_207136c
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d4d32: @ 21d4d32 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d4d36


.align 2, 0


.thumb
Function_21d4d38: @ 21d4d38 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r1, #0x61
	mov     r5, r0
	lsl     r1, r1, #2
	add     r4, r5, r1
	mov     r1, #0x3
	mov     r2, #0x0
	str     r5, [r4, #0x0]
	bl      Function_21d19e4
	add     r1, sp, #0x0
	mov     r6, r0
	blx     Function_20a71b0
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	add     r2, r4, #0x4
	bl      Function_21d4ea8
	mov     r2, r4
	ldr     r0, [sp, #0x0]
	mov     r1, #0x2
	add     r2, #0xa4
	bl      Function_21d4ea8
	mov     r2, r4
	ldr     r0, [sp, #0x0]
	mov     r1, #0x3
	add     r2, #0xc4
	bl      Function_21d4ea8
	mov     r2, r4
	ldr     r0, [sp, #0x0]
	mov     r1, #0x3
	add     r2, #0xe4
	bl      Function_21d4ea8
	mov     r2, #0x41
	lsl     r2, r2, #2
	ldr     r0, [sp, #0x0]
	mov     r1, #0x4
	add     r2, r4, r2
	bl      Function_21d4ea8
	mov     r2, #0x49
	lsl     r2, r2, #2
	ldr     r0, [sp, #0x0]
	mov     r1, #0x4
	add     r2, r4, r2
	bl      Function_21d4ea8
	mov     r0, r6
	bl      free
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_21d19e4
	add     r1, sp, #0x0
	mov     r6, r0
	blx     Function_20a71b0
	mov     r2, r4
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r2, #0x24
	bl      Function_21d4ea8
	mov     r0, r6
	bl      free
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_21d19e4
	add     r1, sp, #0x0
	mov     r6, r0
	blx     Function_20a71b0
	mov     r2, r4
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r2, #0x44
	bl      Function_21d4ea8
	mov     r0, r6
	bl      free
	mov     r0, r5
	mov     r1, #0x7
	mov     r2, #0x0
	bl      Function_21d19e4
	add     r1, sp, #0x0
	mov     r6, r0
	blx     Function_20a71b0
	mov     r2, r4
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r2, #0x64
	bl      Function_21d4ea8
	mov     r0, r6
	bl      free
	mov     r0, r5
	mov     r1, #0x4a
	mov     r2, #0x0
	bl      Function_21d19e4
	add     r1, sp, #0x0
	mov     r6, r0
	blx     Function_20a71b0
	mov     r2, #0x51
	lsl     r2, r2, #2
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r2, r4, r2
	bl      Function_21d4ea8
	mov     r0, r6
	bl      free
	mov     r0, r5
	mov     r1, #0x4b
	mov     r2, #0x0
	bl      Function_21d19e4
	add     r1, sp, #0x0
	mov     r6, r0
	blx     Function_20a71b0
	mov     r2, #0x59
	lsl     r2, r2, #2
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r2, r4, r2
	bl      Function_21d4ea8
	mov     r2, #0x61
	lsl     r2, r2, #2
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r2, r4, r2
	bl      Function_21d4ea8
	mov     r0, r6
	bl      free
	mov     r0, r5
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      Function_21d19e4
	add     r1, sp, #0x0
	mov     r5, r0
	blx     Function_20a71b0
	mov     r2, #0x69
	lsl     r2, r2, #2
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r2, r4, r2
	bl      Function_21d4ea8
	mov     r2, #0x71
	lsl     r2, r2, #2
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r2, r4, r2
	bl      Function_21d4ea8
	mov     r0, r5
	bl      free
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d4ea4

.thumb
Function_21d4ea4: @ 21d4ea4 :thumb
	bx      lr
@ 0x21d4ea6


.align 2, 0


.thumb
Function_21d4ea8: @ 21d4ea8 :thumb
	ldr     r3, [r0, #0xc]
	lsl     r0, r1, #5
	add     r3, r3, r0
	mov     r1, #0x0
.thumb
branch_21d4eb0: @ 21d4eb0 :thumb
	ldrh    r0, [r3, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r0, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, #0x10
	blt     branch_21d4eb0
	bx      lr
@ 0x21d4ec0

.thumb
Function_21d4ec0: @ 21d4ec0 :thumb
	push    {r0-r3}
	push    {r3-r6}
	mov     r1, r2
	mov     r0, r3
	add     r2, sp, #0x10
	add     r3, sp, #0x14
	cmp     r1, #0x10
	bls     branch_21d4ed2
	mov     r1, #0x10
.thumb
branch_21d4ed2: @ 21d4ed2 :thumb
	ldrh    r4, [r2, #0x0]
	ldrh    r3, [r3, #0x0]
	lsl     r2, r4, #22
	lsr     r6, r2, #27
	lsl     r2, r4, #27
	lsr     r5, r2, #27
	lsl     r2, r4, #17
	lsl     r4, r3, #17
	lsr     r2, r2, #27
	lsr     r4, r4, #27
	sub     r4, r4, r2
	mul     r4, r1
	asr     r4, r4, #4
	add     r2, r2, r4
	lsl     r4, r2, #10
	lsl     r2, r3, #27
	lsl     r3, r3, #22
	lsr     r3, r3, #27
	lsr     r2, r2, #27
	sub     r3, r3, r6
	sub     r2, r2, r5
	mul     r2, r1
	mul     r3, r1
	asr     r1, r3, #4
	asr     r2, r2, #4
	add     r1, r6, r1
	add     r2, r5, r2
	lsl     r1, r1, #5
	orr     r1, r2
	orr     r1, r4
	strh    r1, [r0, #0x0]
	pop     {r3-r6}
	add     sp, #0x10
	bx      lr
@ 0x21d4f16


.align 2, 0


.thumb
Function_21d4f18: @ 21d4f18 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	str     r2, [sp, #0x0]
	mov     r6, r3
	mov     r7, #0x0
.thumb
branch_21d4f24: @ 21d4f24 :thumb
	ldrh    r0, [r5, #0x0]
	ldrh    r1, [r4, #0x0]
	ldr     r2, [sp, #0x0]
	mov     r3, r6
	bl      Function_21d4ec0
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r7, #0x10
	blt     branch_21d4f24
	pop     {r3-r7,pc}
@ 0x21d4f3e


.align 2, 0


.thumb
Function_21d4f40: @ 21d4f40 :thumb
	push    {r4,lr}
	mov     r4, r2
	lsl     r0, r1, #24
	mov     r1, r3
	lsl     r3, r4, #21
	lsr     r0, r0, #24
	mov     r2, #0x20
	lsr     r3, r3, #16
	bl      Function_201972c
	pop     {r4,pc}
@ 0x21d4f56


.align 2, 0


.thumb
Function_21d4f58: @ 21d4f58 :thumb
	push    {r4,lr}
	mov     r3, r1
	lsl     r4, r3, #2
	ldr     r2, [pc, #0x14] @ 0x21d4f74, (=0x21d9e60)
	lsl     r3, r3, #5
	ldr     r2, [r2, r4]
	mov     r4, #0x8a
	lsl     r4, r4, #2
	add     r4, r0, r4
	mov     r1, #0x1
	add     r3, r4, r3
	bl      Function_21d4f40
	pop     {r4,pc}
@ 0x21d4f74

.word 0x21d9e60 @ 0x21d4f74
.thumb
Function_21d4f78: @ 21d4f78 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r2, #0x61
	lsl     r2, r2, #2
	ldr     r0, [pc, #0x30] @ 0x21d4fb4, (=0x21d9e60)
	lsl     r4, r1, #2
	ldr     r6, [r0, r4]
	mov     r0, r2
	add     r3, r7, r2
	add     r0, #0x60
	add     r4, r3, r0
	mov     r0, r3
	sub     r2, #0x40
	lsl     r5, r1, #5
	add     r1, r3, r2
	add     r0, #0xa4
	add     r0, r0, r5
	add     r1, r1, r5
	mov     r2, #0xa
	add     r3, r4, r5
	bl      Function_21d4f18
	mov     r0, r7
	mov     r1, #0x1
	mov     r2, r6
	add     r3, r4, r5
	bl      Function_21d4f40
	pop     {r3-r7,pc}
@ 0x21d4fb2


.align 2


.word 0x21d9e60 @ 0x21d4fb4
.thumb
Function_21d4fb8: @ 21d4fb8 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r2, #0x61
	lsl     r2, r2, #2
	ldr     r0, [pc, #0x30] @ 0x21d4ff4, (=0x21d9e60)
	lsl     r4, r1, #2
	ldr     r6, [r0, r4]
	mov     r0, r2
	add     r3, r7, r2
	add     r0, #0x60
	add     r4, r3, r0
	mov     r0, r3
	sub     r2, #0x40
	lsl     r5, r1, #5
	add     r1, r3, r2
	add     r0, #0xa4
	add     r0, r0, r5
	add     r1, r1, r5
	mov     r2, #0xc
	add     r3, r4, r5
	bl      Function_21d4f18
	mov     r0, r7
	mov     r1, #0x1
	mov     r2, r6
	add     r3, r4, r5
	bl      Function_21d4f40
	pop     {r3-r7,pc}
@ 0x21d4ff2


.align 2


.word 0x21d9e60 @ 0x21d4ff4
.thumb
Function_21d4ff8: @ 21d4ff8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_21d4ffe: @ 21d4ffe :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d4f58
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_21d4ffe
	pop     {r3-r5,pc}
@ 0x21d500e


.align 2, 0


.thumb
Function_21d5010: @ 21d5010 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_21d5016: @ 21d5016 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_21d4f78
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_21d5016
	pop     {r3-r5,pc}
@ 0x21d5026


.align 2, 0


.thumb
Function_21d5028: @ 21d5028 :thumb
	push    {r4,lr}
	add     sp, #-0x20
	add     r4, sp, #0x14
	mov     r3, #0x0
	str     r3, [r4, #0x0]
	str     r3, [r4, #0x4]
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r3, [r4, #0x8]
	str     r0, [sp, #0x10]
	add     r1, sp, #0x8
	str     r1, [sp, #0x0]
	mov     r1, #0x8f
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0xc] @ 0x21d5054, (=0x44c)
	mov     r2, r4
	ldr     r0, [r0, r1]
	ldr     r1, [pc, #0xc] @ 0x21d5058, (=0x21d86b0)
	bl      Function_2071330
	add     sp, #0x20
	pop     {r4,pc}
@ 0x21d5054

.word 0x44c @ 0x21d5054
.word 0x21d86b0 @ 0x21d5058
.thumb
Function_21d505c: @ 21d505c :thumb
	push    {r3,lr}
	bl      Function_2071598
	ldr     r0, [r0, #0xc]
	pop     {r3,pc}
@ 0x21d5066


.align 2, 0


.thumb
Function_21d5068: @ 21d5068 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_20715bc
	ldr     r1, [r0, #0x8]
	str     r1, [r4, #0x1c]
	ldr     r1, [r0, #0x0]
	str     r1, [r4, #0x10]
	ldr     r0, [r0, #0x4]
	str     r0, [r4, #0x14]
	mov     r0, #0x61
	ldr     r1, [r4, #0x1c]
	lsl     r0, r0, #2
	add     r0, r1, r0
	str     r0, [r4, #0x20]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d508a


.align 2, 0


.thumb
Function_21d508c: @ 21d508c :thumb
	ldr     r3, [pc, #0x4] @ 0x21d5094, (=0x21d4f59)
	ldr     r0, [r1, #0x1c]
	ldr     r1, [r1, #0x10]
	bx      r3
@ 0x21d5094

.word 0x21d4f59 @ 0x21d5094
.thumb
Function_21d5098: @ 21d5098 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	ldr     r2, [r4, #0x10]
	ldr     r0, [pc, #0x15c] @ 0x21d51fc, (=0x21d9e60)
	lsl     r1, r2, #2
	ldr     r0, [r0, r1]
	lsl     r5, r2, #5
	mov     r1, #0x79
	ldr     r2, [r4, #0x20]
	lsl     r1, r1, #2
	add     r6, r2, r1
	sub     r1, #0xa0
	str     r0, [sp, #0x0]
	mov     r0, r2
	add     r1, r2, r1
	ldr     r2, [r4, #0x0]
	add     r0, #0xa4
	cmp     r2, #0x4
	bls     branch_21d50c0
	b       branch_21d51fa
@ 0x21d50c0

.thumb
branch_21d50c0: @ 21d50c0 :thumb
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x21d50cc

Jumppoints_21d50cc:
.hword branch_21d50d6 - Jumppoints_21d50cc - 2
.hword branch_21d5118 - Jumppoints_21d50cc - 2
.hword branch_21d517c - Jumppoints_21d50cc - 2
.hword branch_21d51be - Jumppoints_21d50cc - 2
.hword branch_21d51fa - Jumppoints_21d50cc - 2
.thumb
branch_21d50d6: @ 21d50d6 :thumb
	mov     r7, #0x1
	ldr     r2, [r4, #0x18]
	lsl     r7, r7, #14
	add     r3, r2, r7
	lsl     r2, r7, #2
	str     r3, [r4, #0x18]
	cmp     r3, r2
	ble     branch_21d50e8
	str     r2, [r4, #0x18]
.thumb
branch_21d50e8: @ 21d50e8 :thumb
	ldr     r2, [r4, #0x18]
	asr     r3, r2, #11
	lsr     r3, r3, #20
	add     r3, r2, r3
	asr     r2, r3, #12
	cmp     r2, #0x10
	bne     branch_21d50fc
	ldr     r3, [r4, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	str     r3, [r4, #0x0]
.thumb
branch_21d50fc: @ 21d50fc :thumb
	lsl     r2, r2, #16
	add     r0, r0, r5
	add     r1, r1, r5
	lsr     r2, r2, #16
	add     r3, r6, r5
	bl      Function_21d4f18
	ldr     r0, [r4, #0x1c]
	ldr     r2, [sp, #0x0]
	mov     r1, #0x1
	add     r3, r6, r5
	bl      Function_21d4f40
	pop     {r3-r7,pc}
@ 0x21d5118

.thumb
branch_21d5118: @ 21d5118 :thumb
	mov     r2, #0x1
	ldr     r3, [r4, #0x18]
	lsl     r2, r2, #14
	sub     r2, r3, r2
	str     r2, [r4, #0x18]
	bpl     branch_21d5128
	mov     r2, #0x0
	str     r2, [r4, #0x18]
.thumb
branch_21d5128: @ 21d5128 :thumb
	ldr     r2, [r4, #0x18]
	asr     r3, r2, #11
	lsr     r3, r3, #20
	add     r3, r2, r3
	asr     r2, r3, #12
	bne     branch_21d5160
	ldr     r3, [r4, #0x4]
	.hword  0x1c5b @ add r3, r3, #0x1
	str     r3, [r4, #0x4]
	cmp     r3, #0x4
	blt     branch_21d515a
	ldr     r3, [r4, #0x14]
	cmp     r3, #0x0
	beq     branch_21d5150
	ldr     r3, [r4, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	str     r3, [r4, #0x0]
	mov     r3, #0x1
	str     r3, [r4, #0xc]
	b       branch_21d5160
@ 0x21d5150

.thumb
branch_21d5150: @ 21d5150 :thumb
	mov     r3, #0x4
	str     r3, [r4, #0x0]
	mov     r3, #0x1
	str     r3, [r4, #0xc]
	b       branch_21d5160
@ 0x21d515a

.thumb
branch_21d515a: @ 21d515a :thumb
	ldr     r3, [r4, #0x0]
	.hword  0x1e5b @ sub r3, r3, #0x1
	str     r3, [r4, #0x0]
.thumb
branch_21d5160: @ 21d5160 :thumb
	lsl     r2, r2, #16
	add     r0, r0, r5
	add     r1, r1, r5
	lsr     r2, r2, #16
	add     r3, r6, r5
	bl      Function_21d4f18
	ldr     r0, [r4, #0x1c]
	ldr     r2, [sp, #0x0]
	mov     r1, #0x1
	add     r3, r6, r5
	bl      Function_21d4f40
	pop     {r3-r7,pc}
@ 0x21d517c

.thumb
branch_21d517c: @ 21d517c :thumb
	mov     r7, #0x2
	ldr     r2, [r4, #0x18]
	lsl     r7, r7, #14
	add     r3, r2, r7
	lsl     r2, r7, #1
	str     r3, [r4, #0x18]
	cmp     r3, r2
	ble     branch_21d518e
	str     r2, [r4, #0x18]
.thumb
branch_21d518e: @ 21d518e :thumb
	ldr     r2, [r4, #0x18]
	asr     r3, r2, #11
	lsr     r3, r3, #20
	add     r3, r2, r3
	asr     r2, r3, #12
	cmp     r2, #0x10
	bne     branch_21d51a2
	ldr     r3, [r4, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	str     r3, [r4, #0x0]
.thumb
branch_21d51a2: @ 21d51a2 :thumb
	lsl     r2, r2, #16
	add     r0, r0, r5
	add     r1, r1, r5
	lsr     r2, r2, #16
	add     r3, r6, r5
	bl      Function_21d4f18
	ldr     r0, [r4, #0x1c]
	ldr     r2, [sp, #0x0]
	mov     r1, #0x1
	add     r3, r6, r5
	bl      Function_21d4f40
	pop     {r3-r7,pc}
@ 0x21d51be

.thumb
branch_21d51be: @ 21d51be :thumb
	mov     r2, #0x2
	ldr     r3, [r4, #0x18]
	lsl     r2, r2, #14
	sub     r2, r3, r2
	str     r2, [r4, #0x18]
	bpl     branch_21d51ce
	mov     r2, #0x0
	str     r2, [r4, #0x18]
.thumb
branch_21d51ce: @ 21d51ce :thumb
	ldr     r2, [r4, #0x18]
	asr     r3, r2, #11
	lsr     r3, r3, #20
	add     r3, r2, r3
	asr     r2, r3, #12
	bne     branch_21d51e0
	ldr     r3, [r4, #0x0]
	.hword  0x1e5b @ sub r3, r3, #0x1
	str     r3, [r4, #0x0]
.thumb
branch_21d51e0: @ 21d51e0 :thumb
	lsl     r2, r2, #16
	add     r0, r0, r5
	add     r1, r1, r5
	lsr     r2, r2, #16
	add     r3, r6, r5
	bl      Function_21d4f18
	ldr     r0, [r4, #0x1c]
	ldr     r2, [sp, #0x0]
	mov     r1, #0x1
	add     r3, r6, r5
	bl      Function_21d4f40
.thumb
branch_21d51fa: @ 21d51fa :thumb
	pop     {r3-r7,pc}
@ 0x21d51fc

.word 0x21d9e60 @ 0x21d51fc
.thumb
Function_21d5200: @ 21d5200 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	add     r1, sp, #0x8
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d521e
	bl      ErrorHandling
.thumb
branch_21d521e: @ 21d521e :thumb
	str     r4, [sp, #0x0]
	mov     r0, #0x8f
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x14] @ 0x21d523c, (=0x44c)
	ldr     r1, [pc, #0x18] @ 0x21d5240, (=0x21d8700)
	ldr     r0, [r4, r0]
	add     r2, sp, #0x8
	mov     r3, #0x0
	bl      Function_2071330
	mov     r1, #0x4d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x21d523c

.word 0x44c @ 0x21d523c
.word 0x21d8700 @ 0x21d5240
.thumb
Function_21d5244: @ 21d5244 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d525e
	bl      Function_207136c
	mov     r0, #0x4d
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_21d525e: @ 21d525e :thumb
	mov     r0, r4
	bl      Function_21d4ff8
	pop     {r4,pc}
@ 0x21d5266


.align 2, 0


.thumb
Function_21d5268: @ 21d5268 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	ldr     r0, [r6, #0x4]
	ldr     r1, [pc, #0x10c] @ 0x21d5380, (=0x21d8938)
	lsl     r0, r0, #4
	add     r4, r1, r0
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x104] @ 0x21d5384, (=0x21d9e60)
	mov     r5, r6
	str     r0, [sp, #0x0]
	mov     r7, #0x0
.thumb
branch_21d5284: @ 21d5284 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [sp, #0xc]
	tst     r0, r1
	beq     branch_21d5310
	ldr     r0, [r6, #0x8]
	cmp     r0, #0x0
	bne     branch_21d529c
	ldr     r0, [r4, #0x4]
	str     r0, [r5, #0x14]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	b       branch_21d52d0
@ 0x21d529c

.thumb
branch_21d529c: @ 21d529c :thumb
	ldr     r1, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	cmp     r1, r0
	ldr     r1, [r5, #0x14]
	bge     branch_21d52bc
	ldr     r0, [r4, #0xc]
	add     r1, r1, r0
	str     r1, [r5, #0x14]
	ldr     r0, [r4, #0x8]
	cmp     r1, r0
	blt     branch_21d52b6
	str     r0, [r5, #0x14]
	b       branch_21d52d0
@ 0x21d52b6

.thumb
branch_21d52b6: @ 21d52b6 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	b       branch_21d52d0
@ 0x21d52bc

.thumb
branch_21d52bc: @ 21d52bc :thumb
	ldr     r0, [r4, #0xc]
	sub     r1, r1, r0
	str     r1, [r5, #0x14]
	ldr     r0, [r4, #0x8]
	cmp     r1, r0
	bgt     branch_21d52cc
	str     r0, [r5, #0x14]
	b       branch_21d52d0
@ 0x21d52cc

.thumb
branch_21d52cc: @ 21d52cc :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x8]
.thumb
branch_21d52d0: @ 21d52d0 :thumb
	ldr     r0, [sp, #0x0]
	mov     r2, #0x51
	ldr     r0, [r0, #0x0]
	ldr     r1, [r6, #0x2c]
	str     r0, [sp, #0x4]
	mov     r0, #0x79
	lsl     r0, r0, #2
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	mov     r0, r1
	lsl     r2, r2, #2
	add     r1, r1, r2
	ldr     r3, [r5, #0x14]
	add     r0, #0xa4
	asr     r2, r3, #11
	lsr     r2, r2, #20
	add     r2, r3, r2
	ldr     r3, [sp, #0x10]
	lsl     r2, r2, #4
	add     r0, r0, r7
	add     r1, r1, r7
	lsr     r2, r2, #16
	add     r3, r3, r7
	bl      Function_21d4f18
	ldr     r3, [sp, #0x10]
	ldr     r0, [r6, #0x28]
	ldr     r2, [sp, #0x4]
	mov     r1, #0x1
	add     r3, r3, r7
	bl      Function_21d4f40
.thumb
branch_21d5310: @ 21d5310 :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	add     r7, #0x20
	lsl     r0, r0, #1
	str     r0, [sp, #0xc]
	cmp     r0, #0x10
	bls     branch_21d5284
	cmp     r0, #0x20
	bhi     branch_21d535a
	mov     r5, r6
	mov     r7, #0x1
	add     r5, #0xc
	mov     r1, #0x0
	lsl     r7, r7, #12
	mov     r0, #0x20
.thumb
branch_21d5334: @ 21d5334 :thumb
	ldr     r2, [r4, #0x0]
	tst     r2, r0
	beq     branch_21d5350
	ldr     r2, [r5, #0x0]
	add     r2, r2, r7
	str     r2, [r5, #0x0]
	ldr     r3, [r6, #0xc]
	ldr     r2, [r4, #0x4]
	cmp     r3, r2
	blt     branch_21d534c
	str     r1, [r6, #0xc]
	b       branch_21d5350
@ 0x21d534c

.thumb
branch_21d534c: @ 21d534c :thumb
	mov     r2, #0x0
	str     r2, [sp, #0x8]
.thumb
branch_21d5350: @ 21d5350 :thumb
	ldr     r2, [sp, #0xc]
	lsl     r2, r2, #1
	str     r2, [sp, #0xc]
	cmp     r2, #0x20
	bls     branch_21d5334
.thumb
branch_21d535a: @ 21d535a :thumb
	mov     r0, #0x1
	str     r0, [r6, #0x8]
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x1
	bne     branch_21d537a
	mov     r3, #0x0
	str     r3, [r6, #0x8]
	ldr     r0, [r6, #0x4]
	ldr     r1, [pc, #0x14] @ 0x21d5380, (=0x21d8938)
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x4]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	cmp     r0, #0x40
	bne     branch_21d537a
	str     r3, [r6, #0x4]
.thumb
branch_21d537a: @ 21d537a :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d537e


.align 2


.word 0x21d8938 @ 0x21d5380
.word 0x21d9e60 @ 0x21d5384
.thumb
Function_21d5388: @ 21d5388 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_20715bc
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r4, #0x28]
	add     r0, r0, r1
	str     r0, [r4, #0x2c]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d539e


.align 2, 0


.thumb
Function_21d53a0: @ 21d53a0 :thumb
	bx      lr
@ 0x21d53a2


.align 2, 0


.thumb
Function_21d53a4: @ 21d53a4 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d53ac, (=0x21d5269)
	mov     r0, r1
	bx      r3
@ 0x21d53aa


.align 2


.word 0x21d5269 @ 0x21d53ac
.thumb
Function_21d53b0: @ 21d53b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x4f
	mov     r1, #0x10
	bl      malloc2
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	ldr     r0, [pc, #0x8] @ 0x21d53d0, (=0x21d542d)
	mov     r2, #0x8f
	str     r4, [r1, #0xc]
	bl      AddTaskToTaskList1
	pop     {r4,pc}
@ 0x21d53d0

.word 0x21d542d @ 0x21d53d0
.thumb
Function_21d53d4: @ 21d53d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x4f
	mov     r1, #0x10
	bl      malloc2
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	ldr     r0, [pc, #0x8] @ 0x21d53f4, (=0x21d548d)
	mov     r2, #0x8f
	str     r4, [r1, #0xc]
	bl      AddTaskToTaskList1
	pop     {r4,pc}
@ 0x21d53f4

.word 0x21d548d @ 0x21d53f4
.thumb
Function_21d53f8: @ 21d53f8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x4f
	mov     r1, #0x10
	bl      malloc2
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	mov     r0, #0x2
	str     r4, [r1, #0x8]
	lsl     r0, r0, #14
	str     r0, [r1, #0x4]
	ldr     r0, [pc, #0x10] @ 0x21d5428, (=0x21d54ed)
	mov     r2, #0x8f
	str     r5, [r1, #0xc]
	bl      AddTaskToTaskList1
	mov     r0, #0x5f
	lsl     r0, r0, #4
	bl      Function_2005748
	pop     {r3-r5,pc}
@ 0x21d5428

.word 0x21d54ed @ 0x21d5428
.thumb
Function_21d542c: @ 21d542c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	mov     r0, #0x61
	ldr     r1, [r5, #0xc]
	lsl     r0, r0, #2
	add     r2, r1, r0
	mov     r0, #0x2
	ldr     r3, [r5, #0x4]
	lsl     r0, r0, #10
	add     r0, r3, r0
	asr     r3, r0, #11
	lsr     r3, r3, #20
	mov     r1, r2
	mov     r6, r2
	add     r3, r0, r3
	str     r0, [r5, #0x4]
	lsl     r0, r3, #4
	lsr     r4, r0, #16
	add     r1, #0x24
	add     r6, #0x84
	cmp     r4, #0x10
	bls     branch_21d545c
	mov     r4, #0x10
.thumb
branch_21d545c: @ 21d545c :thumb
	add     r0, r2, #0x4
	mov     r2, r4
	mov     r3, r6
	bl      Function_21d4f18
	ldr     r0, [r5, #0xc]
	mov     r1, #0x7
	mov     r2, #0x1
	mov     r3, r6
	bl      Function_21d4f40
	cmp     r4, #0x10
	beq     branch_21d547e
	ldr     r0, [r5, #0xc]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3f
	bne     branch_21d548a
.thumb
branch_21d547e: @ 21d547e :thumb
	mov     r0, r5
	bl      free
	mov     r0, r7
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21d548a: @ 21d548a :thumb
	pop     {r3-r7,pc}
@ 0x21d548c

.thumb
Function_21d548c: @ 21d548c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	mov     r0, #0x61
	ldr     r1, [r5, #0xc]
	lsl     r0, r0, #2
	add     r2, r1, r0
	mov     r1, #0x2
	ldr     r3, [r5, #0x4]
	lsl     r1, r1, #10
	add     r1, r3, r1
	asr     r3, r1, #11
	lsr     r3, r3, #20
	mov     r0, r2
	mov     r6, r2
	add     r3, r1, r3
	str     r1, [r5, #0x4]
	lsl     r1, r3, #4
	lsr     r4, r1, #16
	add     r0, #0x24
	add     r6, #0x84
	cmp     r4, #0x10
	bls     branch_21d54bc
	mov     r4, #0x10
.thumb
branch_21d54bc: @ 21d54bc :thumb
	add     r1, r2, #0x4
	mov     r2, r4
	mov     r3, r6
	bl      Function_21d4f18
	ldr     r0, [r5, #0xc]
	mov     r1, #0x7
	mov     r2, #0x1
	mov     r3, r6
	bl      Function_21d4f40
	cmp     r4, #0x10
	beq     branch_21d54de
	ldr     r0, [r5, #0xc]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3f
	bne     branch_21d54ea
.thumb
branch_21d54de: @ 21d54de :thumb
	mov     r0, r5
	bl      free
	mov     r0, r7
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21d54ea: @ 21d54ea :thumb
	pop     {r3-r7,pc}
@ 0x21d54ec

.thumb
Function_21d54ec: @ 21d54ec :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	ldr     r1, [r5, #0xc]
	mov     r2, #0x61
	lsl     r2, r2, #2
	mov     r7, r0
	add     r0, r1, r2
	add     r6, r1, r2
	ldr     r3, [r1, #0x0]
	add     r0, #0x24
	add     r6, #0x84
	cmp     r3, #0x3f
	bne     branch_21d5514
	mov     r0, r5
	bl      free
	mov     r0, r7
	bl      Call_RemoveTaskFromTaskList
	pop     {r3-r7,pc}
@ 0x21d5514

.thumb
branch_21d5514: @ 21d5514 :thumb
	ldr     r3, [r5, #0x8]
	cmp     r3, #0x0
	bne     branch_21d5520
	add     r1, r1, r2
	add     r1, #0x44
	b       branch_21d5524
@ 0x21d5520

.thumb
branch_21d5520: @ 21d5520 :thumb
	add     r1, r1, r2
	add     r1, #0x64
.thumb
branch_21d5524: @ 21d5524 :thumb
	ldr     r2, [r5, #0x0]
	cmp     r2, #0x0
	beq     branch_21d5530
	cmp     r2, #0x1
	beq     branch_21d5566
	pop     {r3-r7,pc}
@ 0x21d5530

.thumb
branch_21d5530: @ 21d5530 :thumb
	mov     r2, #0x1
	ldr     r3, [r5, #0x4]
	lsl     r2, r2, #12
	add     r3, r3, r2
	asr     r2, r3, #11
	lsr     r2, r2, #20
	add     r2, r3, r2
	asr     r2, r2, #12
	str     r3, [r5, #0x4]
	cmp     r2, #0x10
	ble     branch_21d554e
	ldr     r3, [r5, #0x0]
	mov     r2, #0x10
	.hword  0x1c5b @ add r3, r3, #0x1
	str     r3, [r5, #0x0]
.thumb
branch_21d554e: @ 21d554e :thumb
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	mov     r3, r6
	bl      Function_21d4f18
	ldr     r0, [r5, #0xc]
	mov     r1, #0x7
	mov     r2, #0x1
	mov     r3, r6
	bl      Function_21d4f40
	pop     {r3-r7,pc}
@ 0x21d5566

.thumb
branch_21d5566: @ 21d5566 :thumb
	mov     r2, #0x1
	ldr     r3, [r5, #0x4]
	lsl     r2, r2, #10
	sub     r2, r3, r2
	asr     r3, r2, #11
	lsr     r3, r3, #20
	add     r3, r2, r3
	str     r2, [r5, #0x4]
	asr     r4, r3, #12
	bpl     branch_21d557c
	mov     r4, #0x0
.thumb
branch_21d557c: @ 21d557c :thumb
	lsl     r2, r4, #16
	lsr     r2, r2, #16
	mov     r3, r6
	bl      Function_21d4f18
	ldr     r0, [r5, #0xc]
	mov     r1, #0x7
	mov     r2, #0x1
	mov     r3, r6
	bl      Function_21d4f40
	cmp     r4, #0x0
	bne     branch_21d55a2
	mov     r0, r5
	bl      free
	mov     r0, r7
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21d55a2: @ 21d55a2 :thumb
	pop     {r3-r7,pc}
@ 0x21d55a4

.thumb
Function_21d55a4: @ 21d55a4 :thumb
	push    {r4,lr}
	mov     r4, r1
	lsl     r1, r4, #2
	add     r0, r0, r1
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x15
	add     r0, r2, r0
	blx     _s32_div_f
	cmp     r1, #0x0
	bge     branch_21d55be
	add     r1, #0x15
.thumb
branch_21d55be: @ 21d55be :thumb
	mov     r0, #0x54
	mov     r2, r4
	mul     r2, r0
	ldr     r0, [pc, #0x8] @ 0x21d55d0, (=0x21d9688)
	lsl     r1, r1, #2
	add     r0, r0, r2
	ldr     r0, [r1, r0]
	pop     {r4,pc}
@ 0x21d55ce


.align 2


.word 0x21d9688 @ 0x21d55d0
.thumb
Function_21d55d4: @ 21d55d4 :thumb
	push    {r4-r6,lr}
	lsl     r4, r1, #2
	add     r4, r0, r4
	add     r4, #0x90
	ldr     r4, [r4, #0x0]
	mov     r3, #0x0
	lsr     r6, r4, #31
	lsl     r5, r4, #15
	sub     r5, r5, r6
	mov     r4, #0xf
	ror     r5, r4
	add     r4, r6, r5
	beq     branch_21d55f0
	.hword  0x1e5b @ sub r3, r3, #0x1
.thumb
branch_21d55f0: @ 21d55f0 :thumb
	add     r2, r2, r3
	bl      Function_21d55a4
	pop     {r4-r6,pc}
@ 0x21d55f8

.thumb
Function_21d55f8: @ 21d55f8 :thumb
	ldr     r1, [pc, #0x18] @ 0x21d5614, (=RAM_21bf67c)
	ldr     r1, [r1, #0x48]
	and     r1, r0
	cmp     r1, r0
	bne     branch_21d5606
	mov     r0, #0x2
	bx      lr
@ 0x21d5606

.thumb
branch_21d5606: @ 21d5606 :thumb
	tst     r0, r1
	beq     branch_21d560e
	mov     r0, #0x1
	bx      lr
@ 0x21d560e

.thumb
branch_21d560e: @ 21d560e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d5612


.align 2


.word RAM_21bf67c @ 0x21d5614
.thumb
Function_21d5618: @ 21d5618 :thumb
	mov     r2, #0x3
	mov     r1, r0
	tst     r1, r2
	beq     branch_21d5624
	mov     r0, #0x2
	bx      lr
@ 0x21d5624

.thumb
branch_21d5624: @ 21d5624 :thumb
	mov     r1, #0xc
	tst     r1, r0
	beq     branch_21d562e
	mov     r0, r2
	bx      lr
@ 0x21d562e

.thumb
branch_21d562e: @ 21d562e :thumb
	mov     r1, #0x30
	tst     r1, r0
	beq     branch_21d5638
	mov     r0, #0x4
	bx      lr
@ 0x21d5638

.thumb
branch_21d5638: @ 21d5638 :thumb
	mov     r1, #0xc0
	mov     r2, r0
	tst     r2, r1
	beq     branch_21d5644
	mov     r0, #0x5
	bx      lr
@ 0x21d5644

.thumb
branch_21d5644: @ 21d5644 :thumb
	add     r1, #0x40
	tst     r1, r0
	beq     branch_21d564e
	mov     r0, #0x1
	bx      lr
@ 0x21d564e

.thumb
branch_21d564e: @ 21d564e :thumb
	mov     r1, #0x2
	lsl     r1, r1, #8
	tst     r0, r1
	beq     branch_21d565a
	mov     r0, #0x0
	bx      lr
@ 0x21d565a

.thumb
branch_21d565a: @ 21d565a :thumb
	mov     r0, #0x6
	bx      lr
@ 0x21d565e


.align 2, 0


.thumb
Function_21d5660: @ 21d5660 :thumb
	push    {r4-r6,lr}
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r5, r0
	bl      Function_21d55d4
	mov     r1, #0x1
	mov     r4, r0
	mov     r0, r5
	mov     r2, r1
	bl      Function_21d55d4
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_21d55d4
	cmp     r4, #0x3
	beq     branch_21d5690
	cmp     r4, r6
	bne     branch_21d5694
	cmp     r4, r0
	bne     branch_21d5694
.thumb
branch_21d5690: @ 21d5690 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x21d5694

.thumb
branch_21d5694: @ 21d5694 :thumb
	mov     r0, #0x6
	pop     {r4-r6,pc}
@ 0x21d5698

.thumb
Function_21d5698: @ 21d5698 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r1, #0x0
	mov     r2, #0x2
	bl      Function_21d55d4
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x2
	bl      Function_21d55d4
	mov     r1, #0x2
	mov     r6, r0
	mov     r0, r5
	mov     r2, r1
	bl      Function_21d55d4
	cmp     r4, #0x3
	beq     branch_21d56c8
	cmp     r4, r6
	bne     branch_21d56cc
	cmp     r4, r0
	bne     branch_21d56cc
.thumb
branch_21d56c8: @ 21d56c8 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x21d56cc

.thumb
branch_21d56cc: @ 21d56cc :thumb
	mov     r0, #0x6
	pop     {r4-r6,pc}
@ 0x21d56d0

.thumb
Function_21d56d0: @ 21d56d0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r1, #0x0
	mov     r2, #0x3
	bl      Function_21d55d4
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x3
	bl      Function_21d55d4
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, #0x3
	bl      Function_21d55d4
	cmp     r4, #0x3
	beq     branch_21d5700
	cmp     r4, r6
	bne     branch_21d5704
	cmp     r4, r0
	bne     branch_21d5704
.thumb
branch_21d5700: @ 21d5700 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x21d5704

.thumb
branch_21d5704: @ 21d5704 :thumb
	mov     r0, #0x6
	pop     {r4-r6,pc}
@ 0x21d5708

.thumb
Function_21d5708: @ 21d5708 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_21d55d4
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x2
	bl      Function_21d55d4
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, #0x3
	bl      Function_21d55d4
	cmp     r4, #0x3
	beq     branch_21d5738
	cmp     r4, r6
	bne     branch_21d573c
	cmp     r4, r0
	bne     branch_21d573c
.thumb
branch_21d5738: @ 21d5738 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x21d573c

.thumb
branch_21d573c: @ 21d573c :thumb
	mov     r0, #0x6
	pop     {r4-r6,pc}
@ 0x21d5740

.thumb
Function_21d5740: @ 21d5740 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r1, #0x0
	mov     r2, #0x3
	bl      Function_21d55d4
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x2
	bl      Function_21d55d4
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_21d55d4
	cmp     r4, #0x3
	beq     branch_21d5770
	cmp     r4, r6
	bne     branch_21d5774
	cmp     r4, r0
	bne     branch_21d5774
.thumb
branch_21d5770: @ 21d5770 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x21d5774

.thumb
branch_21d5774: @ 21d5774 :thumb
	mov     r0, #0x6
	pop     {r4-r6,pc}
@ 0x21d5778

.thumb
Function_21d5778: @ 21d5778 :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r1, #0x0
	mov     r5, r0
	str     r1, [r4, #0x0]
	mov     r6, #0x6
	bl      Function_21d5660
	cmp     r0, #0x6
	beq     branch_21d5796
	ldr     r1, [r4, #0x0]
	mov     r6, r0
	mov     r0, #0x2
	orr     r0, r1
	str     r0, [r4, #0x0]
.thumb
branch_21d5796: @ 21d5796 :thumb
	mov     r0, r5
	bl      Function_21d5698
	cmp     r0, #0x6
	beq     branch_21d57aa
	ldr     r1, [r4, #0x0]
	mov     r6, r0
	mov     r0, #0x1
	orr     r0, r1
	str     r0, [r4, #0x0]
.thumb
branch_21d57aa: @ 21d57aa :thumb
	mov     r0, r5
	bl      Function_21d56d0
	cmp     r0, #0x6
	beq     branch_21d57be
	ldr     r1, [r4, #0x0]
	mov     r6, r0
	mov     r0, #0x4
	orr     r0, r1
	str     r0, [r4, #0x0]
.thumb
branch_21d57be: @ 21d57be :thumb
	mov     r0, r5
	bl      Function_21d5708
	cmp     r0, #0x6
	beq     branch_21d57d2
	ldr     r1, [r4, #0x0]
	mov     r6, r0
	mov     r0, #0x8
	orr     r0, r1
	str     r0, [r4, #0x0]
.thumb
branch_21d57d2: @ 21d57d2 :thumb
	mov     r0, r5
	bl      Function_21d5740
	cmp     r0, #0x6
	beq     branch_21d57e6
	ldr     r1, [r4, #0x0]
	mov     r6, r0
	mov     r0, #0x10
	orr     r0, r1
	str     r0, [r4, #0x0]
.thumb
branch_21d57e6: @ 21d57e6 :thumb
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x21d57ea


.align 2, 0


.thumb
Function_21d57ec: @ 21d57ec :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r1, #0x0
	str     r1, [r5, #0x0]
	bl      Function_21d5698
	mov     r4, r0
	cmp     r4, #0x6
	beq     branch_21d580e
	cmp     r4, #0x2
	beq     branch_21d5806
	bl      ErrorHandling
.thumb
branch_21d5806: @ 21d5806 :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, #0x1
	orr     r0, r1
	str     r0, [r5, #0x0]
.thumb
branch_21d580e: @ 21d580e :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d5812


.align 2, 0


.thumb
Function_21d5814: @ 21d5814 :thumb
	push    {r3,lr}
	mov     r2, #0x3
	mov     r1, r0
	tst     r1, r2
	beq     branch_21d5822
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d5822

.thumb
branch_21d5822: @ 21d5822 :thumb
	mov     r1, #0xc
	tst     r1, r0
	beq     branch_21d582c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d582c

.thumb
branch_21d582c: @ 21d582c :thumb
	mov     r1, #0x30
	tst     r1, r0
	beq     branch_21d5836
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x21d5836

.thumb
branch_21d5836: @ 21d5836 :thumb
	mov     r1, #0xc0
	tst     r0, r1
	beq     branch_21d5840
	mov     r0, r2
	pop     {r3,pc}
@ 0x21d5840

.thumb
branch_21d5840: @ 21d5840 :thumb
	bl      ErrorHandling
	mov     r0, #0x4
	pop     {r3,pc}
@ 0x21d5848

.thumb
Function_21d5848: @ 21d5848 :thumb
	mov     r2, #0x0
	mov     r1, r2
.thumb
branch_21d584c: @ 21d584c :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r1, [r0, #0x54]
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r2, #0x3
	blt     branch_21d584c
	bx      lr
@ 0x21d5858

.thumb
Function_21d5858: @ 21d5858 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
	mov     r1, r5
.thumb
branch_21d5862: @ 21d5862 :thumb
	ldr     r0, [r1, #0x54]
	cmp     r0, #0x0
	beq     branch_21d5870
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r4, #0x3
	blt     branch_21d5862
.thumb
branch_21d5870: @ 21d5870 :thumb
	cmp     r4, #0x3
	blt     branch_21d5878
	bl      ErrorHandling
.thumb
branch_21d5878: @ 21d5878 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	str     r6, [r0, #0x54]
	pop     {r4-r6,pc}
@ 0x21d5880

.thumb
Function_21d5880: @ 21d5880 :thumb
	push    {r4-r6}
	add     sp, #-0xc
	ldr     r6, [pc, #0x34] @ 0x21d58bc, (=0x21d866c)
	mov     r4, r0
	ldmia   r6!, {r0,r1}
	add     r5, sp, #0x0
	mov     r3, r5
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r2, #0x0
	str     r0, [r5, #0x0]
.thumb
branch_21d5896: @ 21d5896 :thumb
	ldr     r1, [r4, #0x54]
	cmp     r1, #0x0
	beq     branch_21d58aa
	ldr     r0, [r3, #0x0]
	cmp     r1, r0
	beq     branch_21d58aa
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r6}
	bx      lr
@ 0x21d58aa

.thumb
branch_21d58aa: @ 21d58aa :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r2, #0x3
	blt     branch_21d5896
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r6}
	bx      lr
@ 0x21d58bc

.word 0x21d866c @ 0x21d58bc
.thumb
Function_21d58c0: @ 21d58c0 :thumb
	push    {r3,r4}
	ldr     r2, [r0, #0x34]
	mov     r1, #0x18
	ldr     r3, [pc, #0x28] @ 0x21d58f0, (=0x21d87a8)
	mul     r1, r2
	mov     r4, #0x0
	add     r3, r3, r1
.thumb
branch_21d58ce: @ 21d58ce :thumb
	ldr     r2, [r0, #0x54]
	cmp     r2, #0x0
	beq     branch_21d58e0
	ldr     r1, [r3, #0x0]
	cmp     r2, r1
	beq     branch_21d58e0
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x21d58e0

.thumb
branch_21d58e0: @ 21d58e0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r4, #0x3
	blt     branch_21d58ce
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x21d58f0

.word 0x21d87a8 @ 0x21d58f0
.thumb
Function_21d58f4: @ 21d58f4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	lsl     r2, r1, #3
	ldr     r3, [pc, #0x2c] @ 0x21d5930, (=0x21d8740)
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	add     r5, r3, r2
	ldr     r2, [r3, r2]
	ldr     r0, [pc, #0x24] @ 0x21d5934, (=0x43c)
	ldr     r3, [r5, #0x4]
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_2019e2c
	ldr     r0, [pc, #0x10] @ 0x21d5934, (=0x43c)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      Function_201c3c0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d5930

.word 0x21d8740 @ 0x21d5930
.word 0x43c @ 0x21d5934
.thumb
Function_21d5938: @ 21d5938 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	lsl     r2, r1, #3
	ldr     r3, [pc, #0x2c] @ 0x21d5974, (=0x21d8740)
	str     r0, [sp, #0x4]
	mov     r0, #0x5
	str     r0, [sp, #0x8]
	add     r5, r3, r2
	ldr     r2, [r3, r2]
	ldr     r0, [pc, #0x24] @ 0x21d5978, (=0x43c)
	ldr     r3, [r5, #0x4]
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_2019e2c
	ldr     r0, [pc, #0x10] @ 0x21d5978, (=0x43c)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      Function_201c3c0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d5974

.word 0x21d8740 @ 0x21d5974
.word 0x43c @ 0x21d5978
.thumb
Function_21d597c: @ 21d597c :thumb
	push    {r3-r5,lr}
	ldr     r4, [r0, #0x44]
	ldr     r5, [r0, #0x48]
	cmp     r4, #0x6
	bne     branch_21d598a
	bl      ErrorHandling
.thumb
branch_21d598a: @ 21d598a :thumb
	ldr     r3, [pc, #0x1c] @ 0x21d59a8, (=0x21d9550)
	lsl     r2, r4, #2
	mov     r1, #0x0
	ldr     r3, [r3, r2]
	mov     r0, r1
	mov     r2, #0x1
.thumb
branch_21d5996: @ 21d5996 :thumb
	mov     r4, r5
	tst     r4, r2
	beq     branch_21d599e
	add     r0, r0, r3
.thumb
branch_21d599e: @ 21d599e :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	lsr     r5, r5, #1
	cmp     r1, #0x5
	blt     branch_21d5996
	pop     {r3-r5,pc}
@ 0x21d59a8

.word 0x21d9550 @ 0x21d59a8
.thumb
Function_21d59ac: @ 21d59ac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r7, r0
	mov     r4, #0x0
	add     r0, sp, #0x8
	str     r4, [r0, #0x0]
	str     r4, [r0, #0x4]
	mov     r6, #0x11
	lsl     r6, r6, #14
	str     r4, [r0, #0x8]
	str     r7, [sp, #0x14]
	cmp     r4, #0x3
	bge     branch_21d59fe
.thumb
branch_21d59c6: @ 21d59c6 :thumb
	mov     r5, #0x0
.thumb
branch_21d59c8: @ 21d59c8 :thumb
	str     r6, [sp, #0x8]
	str     r4, [sp, #0x1c]
	str     r5, [sp, #0x18]
	add     r0, sp, #0x14
	str     r0, [sp, #0x0]
	mov     r0, #0x8b
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x21d5a04, (=0x44c)
	ldr     r1, [pc, #0x2c] @ 0x21d5a08, (=0x21d91dc)
	ldr     r0, [r7, r0]
	add     r2, sp, #0x8
	mov     r3, #0x0
	bl      Function_2071330
	mov     r0, #0x2
	lsl     r0, r0, #16
	add     r5, r5, r0
	mov     r0, #0xa
	lsl     r0, r0, #16
	cmp     r5, r0
	blt     branch_21d59c8
	mov     r0, #0xf
	lsl     r0, r0, #14
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, r6, r0
	cmp     r4, #0x3
	blt     branch_21d59c6
.thumb
branch_21d59fe: @ 21d59fe :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21d5a02


.align 2


.word 0x44c @ 0x21d5a04
.word 0x21d91dc @ 0x21d5a08
.thumb
Function_21d5a0c: @ 21d5a0c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x28
	mov     r5, r0
	mov     r4, r1
	bl      Function_20715bc
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	mov     r2, r4
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	add     r1, sp, #0x1c
	str     r0, [r2, #0x0]
	mov     r0, r5
	bl      Function_20715e4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x3
	str     r0, [sp, #0x14]
	mov     r0, #0x2
	str     r0, [sp, #0x18]
	mov     r0, #0x45
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, r4
	add     r1, #0xc
	add     r2, sp, #0x1c
	mov     r3, #0x1
	bl      Function_21d84a4
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x1
	add     sp, #0x28
	pop     {r3-r5,pc}
@ 0x21d5a62


.align 2, 0


.thumb
Function_21d5a64: @ 21d5a64 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d5a6c, (=0x21d8545)
	add     r1, #0xc
	mov     r0, r1
	bx      r3
@ 0x21d5a6c

.word Function_21d8544+1 @ =0x21d8545, 0x21d5a6c
.thumb
Function_21d5a70: @ 21d5a70 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	ldr     r7, [r5, #0x8]
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	lsl     r6, r7, #2
	add     r0, r0, r6
	add     r0, #0x90
	ldr     r1, [r5, #0x4]
	ldr     r0, [r0, #0x0]
	add     r0, r1, r0
	mov     r1, #0xa
	lsl     r1, r1, #16
	blx     _s32_div_f
	mov     r4, r1
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x4
	bl      Function_20715e4
	ldr     r1, [r5, #0x0]
	mov     r0, #0x1
	add     r1, r1, r6
	add     r1, #0x9c
	lsl     r0, r0, #16
	ldr     r1, [r1, #0x0]
	add     r0, r4, r0
	add     r0, r0, r1
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x10]
	add     r1, sp, #0x4
	bl      Function_2021c50
	asr     r2, r4, #16
	lsr     r2, r2, #15
	add     r2, r4, r2
	ldr     r0, [r5, #0x0]
	mov     r1, r7
	asr     r2, r2, #17
	bl      Function_21d55a4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x20] @ 0x21d5ae8, (=0x21d927c)
	ldr     r4, [r0, r1]
	ldr     r0, [r5, #0x10]
	bl      Function_2021e24
	cmp     r4, r0
	beq     branch_21d5ae4
	ldr     r0, [r5, #0x10]
	mov     r1, r4
	bl      Function_2021d6c
	ldr     r0, [r5, #0x10]
	mov     r1, #0x0
	bl      Function_2021e50
.thumb
branch_21d5ae4: @ 21d5ae4 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d5ae8

.word 0x21d927c @ 0x21d5ae8
.thumb
Function_21d5aec: @ 21d5aec :thumb
	bx      lr
@ 0x21d5aee


.align 2, 0


.thumb
Function_21d5af0: @ 21d5af0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	ldr     r3, [pc, #0x3c] @ 0x21d5b34, (=0x21d8ecc)
	mov     r5, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x8
	mov     r6, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r4, #0x1
	str     r0, [r2, #0x0]
	mov     r7, #0x8d
.thumb
branch_21d5b08: @ 21d5b08 :thumb
	str     r5, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x21d5b38, (=0x44c)
	str     r7, [sp, #0x4]
	ldr     r0, [r5, r0]
	ldr     r1, [pc, #0x28] @ 0x21d5b3c, (=0x21d91f0)
	mov     r2, r6
	mov     r3, r4
	bl      Function_2071330
	mov     r0, #0xa
	mul     r4, r0
	mov     r0, #0x2
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #14
	sub     r0, r1, r0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x14] @ 0x21d5b40, (=0x186a0)
	cmp     r4, r0
	bcc     branch_21d5b08
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d5b32


.align 2


.word 0x21d8ecc @ 0x21d5b34
.word 0x44c @ 0x21d5b38
.word 0x21d91f0 @ 0x21d5b3c
.word 0x186a0 @ 0x21d5b40
.thumb
Function_21d5b44: @ 21d5b44 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x28
	mov     r5, r0
	mov     r4, r1
	bl      Function_20715b4
	mov     r1, #0xa
	str     r0, [r4, #0x4]
	mul     r1, r0
	str     r1, [r4, #0x8]
	mov     r0, r5
	bl      Function_20715bc
	str     r0, [r4, #0x0]
	mov     r0, r5
	add     r1, sp, #0x1c
	bl      Function_20715e4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	str     r3, [sp, #0xc]
	str     r3, [sp, #0x10]
	str     r3, [sp, #0x14]
	str     r3, [sp, #0x18]
	mov     r0, #0x45
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, r4
	add     r1, #0xc
	add     r2, sp, #0x1c
	bl      Function_21d84a4
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x1
	add     sp, #0x28
	pop     {r3-r5,pc}
@ 0x21d5b9a


.align 2, 0


.thumb
Function_21d5b9c: @ 21d5b9c :thumb
	ldr     r3, [pc, #0x4] @ 0x21d5ba4, (=0x21d8545)
	add     r1, #0xc
	mov     r0, r1
	bx      r3
@ 0x21d5ba4

.word Function_21d8544+1 @ =0x21d8545, 0x21d5ba4
.thumb
Function_21d5ba8: @ 21d5ba8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r4, [r0, #0x60]
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x1
	bls     branch_21d5bca
	cmp     r4, r0
	bcs     branch_21d5bca
	ldr     r0, [r5, #0x10]
	mov     r1, #0x0
	bl      Function_2021cac
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d5bca

.thumb
branch_21d5bca: @ 21d5bca :thumb
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r1, [r5, #0x8]
	mov     r0, r4
	blx     _u32_div_f
	mov     r4, r1
	ldr     r1, [r5, #0x4]
	mov     r0, r4
	blx     _u32_div_f
	mov     r4, r0
	ldr     r0, [r5, #0x10]
	bl      Function_2021e24
	cmp     r4, r0
	beq     branch_21d5bfe
	ldr     r0, [r5, #0x10]
	mov     r1, r4
	bl      Function_2021d6c
	ldr     r0, [r5, #0x10]
	bl      Function_2021de0
.thumb
branch_21d5bfe: @ 21d5bfe :thumb
	mov     r0, r6
	add     r1, sp, #0x0
	bl      Function_20715e4
	ldr     r0, [pc, #0x18] @ 0x21d5c20, (=0x21d937c)
	lsl     r1, r4, #2
	ldr     r0, [r0, r1]
	ldr     r2, [sp, #0x0]
	add     r1, sp, #0x0
	add     r0, r2, r0
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x10]
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d5c1e


.align 2


.word 0x21d937c @ 0x21d5c20
.thumb
Function_21d5c24: @ 21d5c24 :thumb
	bx      lr
@ 0x21d5c26


.align 2, 0


.thumb
Function_21d5c28: @ 21d5c28 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	ldr     r3, [pc, #0x3c] @ 0x21d5c6c, (=0x21d8f98)
	mov     r5, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x8
	mov     r6, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r4, #0x1
	str     r0, [r2, #0x0]
	mov     r7, #0x8d
.thumb
branch_21d5c40: @ 21d5c40 :thumb
	str     r5, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x21d5c70, (=0x44c)
	str     r7, [sp, #0x4]
	ldr     r0, [r5, r0]
	ldr     r1, [pc, #0x28] @ 0x21d5c74, (=0x21d9204)
	mov     r2, r6
	mov     r3, r4
	bl      Function_2071330
	mov     r0, #0xa
	mul     r4, r0
	mov     r0, #0x2
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #14
	sub     r0, r1, r0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x14] @ 0x21d5c78, (=0x186a0)
	cmp     r4, r0
	bcc     branch_21d5c40
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d5c6a


.align 2


.word 0x21d8f98 @ 0x21d5c6c
.word 0x44c @ 0x21d5c70
.word 0x21d9204 @ 0x21d5c74
.word 0x186a0 @ 0x21d5c78
.thumb
Function_21d5c7c: @ 21d5c7c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x28
	mov     r5, r0
	mov     r4, r1
	bl      Function_20715b4
	mov     r1, #0xa
	str     r0, [r4, #0x4]
	mul     r1, r0
	str     r1, [r4, #0x8]
	mov     r0, r5
	bl      Function_20715bc
	str     r0, [r4, #0x0]
	mov     r0, r5
	add     r1, sp, #0x1c
	bl      Function_20715e4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	str     r3, [sp, #0xc]
	str     r3, [sp, #0x10]
	str     r3, [sp, #0x14]
	str     r3, [sp, #0x18]
	mov     r0, #0x45
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, r4
	add     r1, #0xc
	add     r2, sp, #0x1c
	bl      Function_21d84a4
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x1
	add     sp, #0x28
	pop     {r3-r5,pc}
@ 0x21d5cd2


.align 2, 0


.thumb
Function_21d5cd4: @ 21d5cd4 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d5cdc, (=0x21d8545)
	add     r1, #0xc
	mov     r0, r1
	bx      r3
@ 0x21d5cdc

.word Function_21d8544+1 @ =0x21d8545, 0x21d5cdc
.thumb
Function_21d5ce0: @ 21d5ce0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r4, [r0, #0x64]
	ldr     r0, [r5, #0x4]
	cmp     r4, r0
	ldr     r0, [r5, #0x10]
	bcs     branch_21d5cfe
	mov     r1, #0x0
	bl      Function_2021cac
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d5cfe

.thumb
branch_21d5cfe: @ 21d5cfe :thumb
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r1, [r5, #0x8]
	mov     r0, r4
	blx     _u32_div_f
	mov     r4, r1
	ldr     r1, [r5, #0x4]
	mov     r0, r4
	blx     _u32_div_f
	mov     r4, r0
	ldr     r0, [r5, #0x10]
	bl      Function_2021e24
	cmp     r4, r0
	beq     branch_21d5d30
	ldr     r0, [r5, #0x10]
	mov     r1, r4
	bl      Function_2021d6c
	ldr     r0, [r5, #0x10]
	bl      Function_2021de0
.thumb
branch_21d5d30: @ 21d5d30 :thumb
	mov     r0, r6
	add     r1, sp, #0x0
	bl      Function_20715e4
	ldr     r0, [pc, #0x14] @ 0x21d5d50, (=0x21d9354)
	lsl     r1, r4, #2
	ldr     r0, [r0, r1]
	ldr     r2, [sp, #0x0]
	add     r1, sp, #0x0
	add     r0, r2, r0
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x10]
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d5d50

.word 0x21d9354 @ 0x21d5d50
.thumb
Function_21d5d54: @ 21d5d54 :thumb
	bx      lr
@ 0x21d5d56


.align 2, 0


.thumb
Function_21d5d58: @ 21d5d58 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	ldr     r6, [pc, #0x24] @ 0x21d5d84, (=0x21d90ac)
	add     r5, sp, #0x8
	mov     r4, r0
	mov     r3, r1
	ldmia   r6!, {r0,r1}
	mov     r2, r5
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	ldr     r1, [pc, #0x18] @ 0x21d5d88, (=0x21d9218)
	str     r0, [r5, #0x0]
	str     r4, [sp, #0x0]
	mov     r0, #0x86
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x14] @ 0x21d5d8c, (=0x44c)
	ldr     r0, [r4, r0]
	bl      Function_2071330
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21d5d82


.align 2


.word 0x21d90ac @ 0x21d5d84
.word 0x21d9218 @ 0x21d5d88
.word 0x44c @ 0x21d5d8c
.thumb
Function_21d5d90: @ 21d5d90 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_2071598
	str     r4, [r0, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x8]
	str     r1, [r0, #0x30]
	pop     {r4,pc}
@ 0x21d5da4

.thumb
Function_21d5da4: @ 21d5da4 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_2071598
	cmp     r4, #0x1
	ldr     r0, [r0, #0x40]
	bne     branch_21d5dba
	mov     r1, #0x0
	bl      Function_2021cac
	pop     {r4,pc}
@ 0x21d5dba

.thumb
branch_21d5dba: @ 21d5dba :thumb
	mov     r1, #0x1
	bl      Function_2021cac
	pop     {r4,pc}
@ 0x21d5dc2


.align 2, 0


.thumb
Function_21d5dc4: @ 21d5dc4 :thumb
	push    {r3,lr}
	bl      Function_2071598
	ldr     r0, [r0, #0x8]
	pop     {r3,pc}
@ 0x21d5dce


.align 2, 0


.thumb
Function_21d5dd0: @ 21d5dd0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_20715bc
	str     r0, [r4, #0x38]
	mov     r0, r5
	bl      Function_20715b4
	str     r0, [r4, #0x10]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d5de8

.thumb
Function_21d5de8: @ 21d5de8 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x40]
	cmp     r0, #0x0
	beq     branch_21d5e00
	ldr     r0, [r4, #0x38]
	bl      Function_21d63a4
	add     r4, #0x3c
	mov     r0, r4
	bl      Function_21d8544
.thumb
branch_21d5e00: @ 21d5e00 :thumb
	pop     {r4,pc}
@ 0x21d5e02


.align 2, 0


.thumb
Function_21d5e04: @ 21d5e04 :thumb
	push    {r3-r5,lr}
	ldr     r4, [pc, #0x18] @ 0x21d5e20, (=0x21d9294)
	mov     r5, r1
.thumb
branch_21d5e0a: @ 21d5e0a :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	ldr     r1, [r5, #0x4]
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	blx     r1
	cmp     r0, #0x1
	beq     branch_21d5e0a
	pop     {r3-r5,pc}
@ 0x21d5e20

.word 0x21d9294 @ 0x21d5e20
.thumb
Function_21d5e24: @ 21d5e24 :thumb
	bx      lr
@ 0x21d5e26


.align 2, 0


.thumb
Function_21d5e28: @ 21d5e28 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x10]
	bl      Function_21d630c
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d5e3c

.thumb
Function_21d5e3c: @ 21d5e3c :thumb
	ldr     r1, [r0, #0xc]
	cmp     r1, #0x2
	bne     branch_21d5e48
	ldr     r1, [r0, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x4]
.thumb
branch_21d5e48: @ 21d5e48 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d5e4c

.thumb
Function_21d5e4c: @ 21d5e4c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	ldr     r5, [pc, #0x28] @ 0x21d5e7c, (=0x21d90c4)
	mov     r4, r0
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x0
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x38]
	add     r1, #0x3c
	bl      Function_21d6410
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d5e7a


.align 2


.word 0x21d90c4 @ 0x21d5e7c
.thumb
Function_21d5e80: @ 21d5e80 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d5e84

.thumb
Function_21d5e84: @ 21d5e84 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x54] @ 0x21d5ee0, (=0x21d9088)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r5, [pc, #0x4c] @ 0x21d5ee4, (=0x21d8fb0)
	str     r0, [r2, #0x0]
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x40]
	bl      Function_2021c70
	ldr     r0, [r4, #0x40]
	mov     r1, #0x0
	bl      Function_2021c94
	ldr     r0, [r4, #0x40]
	add     r1, sp, #0xc
	bl      Function_2021c50
	ldr     r0, [r4, #0x40]
	mov     r1, #0x0
	bl      Function_2021d6c
	ldr     r0, [r4, #0x40]
	mov     r1, #0x0
	bl      Function_2021e50
	ldr     r0, [pc, #0x18] @ 0x21d5ee8, (=0x624)
	bl      Function_2005748
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d5ede


.align 2


.word 0x21d9088 @ 0x21d5ee0
.word 0x21d8fb0 @ 0x21d5ee4
.word 0x624 @ 0x21d5ee8
.thumb
Function_21d5eec: @ 21d5eec :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldr     r0, [r4, #0x40]
	add     r1, sp, #0xc
	bl      Function_21d8560
	ldr     r0, [r4, #0x40]
	add     r1, sp, #0x0
	bl      Function_21d8574
	mov     r0, #0x1
	ldr     r1, [sp, #0x10]
	lsl     r0, r0, #14
	sub     r1, r1, r0
	str     r1, [sp, #0x10]
	ldr     r2, [sp, #0x0]
	ldr     r1, [pc, #0x40] @ 0x21d5f50, (=0x1c7)
	sub     r2, r2, r1
	str     r2, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	sub     r1, r2, r1
	str     r1, [sp, #0x4]
	ldr     r1, [r4, #0x30]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x30]
	cmp     r1, #0x9
	bcc     branch_21d5f3a
	mov     r1, #0x16
	lsr     r0, r0, #2
	lsl     r1, r1, #16
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d5f3a: @ 21d5f3a :thumb
	ldr     r0, [r4, #0x40]
	add     r1, sp, #0xc
	bl      Function_2021c50
	ldr     r0, [r4, #0x40]
	add     r1, sp, #0x0
	bl      Function_2021c70
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r4,pc}
@ 0x21d5f50

.word 0x1c7 @ 0x21d5f50
.thumb
Function_21d5f54: @ 21d5f54 :thumb
	ldr     r1, [r0, #0x30]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x30]
	cmp     r1, #0x3
	bcc     branch_21d5f6c
	mov     r1, #0x0
	str     r1, [r0, #0x30]
	mov     r1, #0x1
	str     r1, [r0, #0x8]
	ldr     r1, [r0, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x4]
.thumb
branch_21d5f6c: @ 21d5f6c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d5f70

.thumb
Function_21d5f70: @ 21d5f70 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x40]
	mov     r1, #0x1
	bl      Function_2021d6c
	ldr     r0, [r4, #0x40]
	bl      Function_2021de0
	ldr     r0, [r4, #0x40]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x6d
	lsl     r0, r0, #4
	bl      Function_2005748
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d5f9c

.thumb
Function_21d5f9c: @ 21d5f9c :thumb
	ldr     r1, [r0, #0x30]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x30]
	cmp     r1, #0x4
	bcc     branch_21d5fb4
	mov     r1, #0x0
	str     r1, [r0, #0x30]
	mov     r1, #0x1
	str     r1, [r0, #0x8]
	ldr     r1, [r0, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x4]
.thumb
branch_21d5fb4: @ 21d5fb4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d5fb8

.thumb
Function_21d5fb8: @ 21d5fb8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x58] @ 0x21d6018, (=0x21d8ff8)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r5, [pc, #0x50] @ 0x21d601c, (=0x21d8f14)
	str     r0, [r2, #0x0]
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r5, r2
	str     r0, [r3, #0x0]
	mov     r3, r4
	ldmia   r5!, {r0,r1}
	add     r3, #0x14
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x40]
	bl      Function_2021c50
	ldr     r0, [r4, #0x40]
	add     r1, sp, #0xc
	bl      Function_2021c70
	ldr     r0, [r4, #0x40]
	mov     r1, #0x0
	bl      Function_2021c94
	ldr     r0, [r4, #0x40]
	mov     r1, #0x3
	bl      Function_2021d6c
	ldr     r0, [r4, #0x40]
	bl      Function_2021de0
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d6018

.word 0x21d8ff8 @ 0x21d6018
.word 0x21d8f14 @ 0x21d601c
.thumb
Function_21d6020: @ 21d6020 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x2c
	ldr     r5, [pc, #0x58] @ 0x21d6080, (=0x21d92b0)
	mov     r4, r0
	add     r2, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r3, r2
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	mov     r6, r4
	add     r6, #0x14
	stmia   r2!, {r0,r1}
	add     r5, sp, #0x20
	ldmia   r6!, {r0,r1}
	mov     r2, r5
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r5, #0x0]
	ldr     r1, [r4, #0x30]
	ldr     r0, [sp, #0x24]
	lsr     r1, r1, #1
	lsl     r1, r1, #2
	ldr     r1, [r3, r1]
	add     r0, r0, r1
	str     r0, [sp, #0x24]
	ldr     r0, [r4, #0x40]
	mov     r1, r2
	bl      Function_2021c50
	ldr     r0, [r4, #0x30]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x30]
	cmp     r0, #0x10
	bcc     branch_21d607a
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d607a: @ 21d607a :thumb
	mov     r0, #0x0
	add     sp, #0x2c
	pop     {r3-r6,pc}
@ 0x21d6080

.word 0x21d92b0 @ 0x21d6080
.thumb
Function_21d6084: @ 21d6084 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x58] @ 0x21d60e4, (=0x21d8ee4)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r5, [pc, #0x50] @ 0x21d60e8, (=0x21d8fd4)
	str     r0, [r2, #0x0]
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r5, r2
	str     r0, [r3, #0x0]
	mov     r3, r4
	ldmia   r5!, {r0,r1}
	add     r3, #0x14
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x40]
	bl      Function_2021c50
	ldr     r0, [r4, #0x40]
	add     r1, sp, #0xc
	bl      Function_2021c70
	ldr     r0, [r4, #0x40]
	mov     r1, #0x0
	bl      Function_2021c94
	ldr     r0, [r4, #0x40]
	mov     r1, #0x4
	bl      Function_2021d6c
	ldr     r0, [r4, #0x40]
	bl      Function_2021de0
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d60e4

.word 0x21d8ee4 @ 0x21d60e4
.word 0x21d8fd4 @ 0x21d60e8
.thumb
Function_21d60ec: @ 21d60ec :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldr     r0, [r4, #0x40]
	add     r1, sp, #0xc
	bl      Function_21d8560
	ldr     r0, [r4, #0x40]
	add     r1, sp, #0x0
	bl      Function_21d8574
	mov     r0, #0x1
	ldr     r1, [sp, #0x10]
	lsl     r0, r0, #14
	add     r1, r1, r0
	str     r1, [sp, #0x10]
	ldr     r2, [sp, #0x0]
	ldr     r1, [pc, #0x44] @ 0x21d6154, (=0x1c7)
	add     r2, r2, r1
	str     r2, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	add     r1, r2, r1
	str     r1, [sp, #0x4]
	ldr     r1, [r4, #0x30]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x30]
	cmp     r1, #0xa
	bcc     branch_21d613e
	mov     r1, #0x7
	lsr     r0, r0, #2
	lsl     r1, r1, #18
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d613e: @ 21d613e :thumb
	ldr     r0, [r4, #0x40]
	add     r1, sp, #0xc
	bl      Function_2021c50
	ldr     r0, [r4, #0x40]
	add     r1, sp, #0x0
	bl      Function_2021c70
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r4,pc}
@ 0x21d6154

.word 0x1c7 @ 0x21d6154
.thumb
Function_21d6158: @ 21d6158 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	ldr     r3, [pc, #0x78] @ 0x21d61d8, (=0x21d8f50)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x18
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r3, [pc, #0x70] @ 0x21d61dc, (=0x21d8ec0)
	str     r0, [r2, #0x0]
	add     r2, sp, #0xc
	ldmia   r3!, {r0,r1}
	mov     r6, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	add     r5, sp, #0x0
	mov     r7, #0x0
	str     r7, [r5, #0x0]
	str     r0, [r2, #0x0]
	mov     r3, r6
	str     r7, [r5, #0x4]
	mov     r2, r4
	ldmia   r3!, {r0,r1}
	str     r7, [r5, #0x8]
	add     r2, #0x14
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r2, r4
	ldmia   r5!, {r0,r1}
	add     r2, #0x20
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	str     r0, [r2, #0x0]
	str     r7, [r4, #0x30]
	str     r7, [r4, #0x34]
	str     r7, [r4, #0x2c]
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x40]
	bl      Function_2021c50
	ldr     r0, [r4, #0x40]
	add     r1, sp, #0x18
	bl      Function_2021c70
	ldr     r0, [r4, #0x40]
	mov     r1, r7
	bl      Function_2021c94
	ldr     r0, [r4, #0x40]
	mov     r1, #0x2
	bl      Function_2021d6c
	ldr     r0, [r4, #0x40]
	bl      Function_2021de0
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x21d61d8

.word 0x21d8f50 @ 0x21d61d8
.word 0x21d8ec0 @ 0x21d61dc
.thumb
Function_21d61e0: @ 21d61e0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x60
	ldr     r3, [pc, #0x94] @ 0x21d627c, (=0x21d92d0)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x40
	mov     r6, r2
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r3, [pc, #0x80] @ 0x21d6280, (=0x21d92f0)
	add     r2, sp, #0x20
	ldmia   r3!, {r0,r1}
	mov     r5, r2
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r3, [pc, #0x70] @ 0x21d6284, (=0x21d9310)
	add     r2, sp, #0x0
	mov     r7, r2
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r1, [r4, #0x34]
	ldr     r0, [r4, #0x2c]
	lsl     r1, r1, #2
	ldr     r1, [r6, r1]
	add     r0, r0, r1
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x34]
	ldr     r1, [r4, #0x14]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r0, r1, r0
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0x30]
	add     r2, r0, #0x1
	str     r2, [r4, #0x30]
	ldr     r1, [r4, #0x34]
	lsl     r0, r1, #2
	ldr     r0, [r7, r0]
	cmp     r2, r0
	bcc     branch_21d6260
	add     r0, r1, #0x1
	str     r0, [r4, #0x34]
	cmp     r0, #0x8
	blt     branch_21d625c
	mov     r0, #0x0
	str     r0, [r4, #0x34]
.thumb
branch_21d625c: @ 21d625c :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x30]
.thumb
branch_21d6260: @ 21d6260 :thumb
	mov     r1, r4
	ldr     r0, [r4, #0x40]
	add     r1, #0x14
	bl      Function_2021c50
	ldr     r1, [r4, #0x2c]
	ldr     r0, [r4, #0x40]
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_2021c94
	mov     r0, #0x0
	add     sp, #0x60
	pop     {r3-r7,pc}
@ 0x21d627c

.word 0x21d92d0 @ 0x21d627c
.word 0x21d92f0 @ 0x21d6280
.word 0x21d9310 @ 0x21d6284
.thumb
Function_21d6288: @ 21d6288 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x24
	ldr     r3, [pc, #0x74] @ 0x21d6304, (=0x21d8e9c)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x18
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r5, [pc, #0x6c] @ 0x21d6308, (=0x21d8efc)
	str     r0, [r2, #0x0]
	add     r2, sp, #0xc
	mov     r3, r2
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r5, r4
	str     r0, [r2, #0x0]
	add     r2, sp, #0x0
	mov     r0, #0x0
	str     r0, [r2, #0x0]
	str     r0, [r2, #0x4]
	mov     r6, r3
	str     r0, [r2, #0x8]
	ldmia   r6!, {r0,r1}
	add     r5, #0x14
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r5, #0x0]
	mov     r5, r4
	ldmia   r2!, {r0,r1}
	add     r5, #0x20
	stmia   r5!, {r0,r1}
	ldr     r0, [r2, #0x0]
	mov     r1, r3
	str     r0, [r5, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x40]
	bl      Function_2021c50
	ldr     r0, [r4, #0x40]
	add     r1, sp, #0x18
	bl      Function_2021c70
	ldr     r0, [r4, #0x40]
	mov     r1, #0x0
	bl      Function_2021c94
	ldr     r0, [r4, #0x40]
	mov     r1, #0x2
	bl      Function_2021d6c
	ldr     r0, [r4, #0x40]
	bl      Function_2021de0
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	add     sp, #0x24
	pop     {r3-r6,pc}
@ 0x21d6302


.align 2


.word 0x21d8e9c @ 0x21d6304
.word 0x21d8efc @ 0x21d6308
.thumb
Function_21d630c: @ 21d630c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r1
	ldr     r4, [r6, #0x38]
	cmp     r5, #0x5
	blt     branch_21d631c
	bl      ErrorHandling
.thumb
branch_21d631c: @ 21d631c :thumb
	mov     r1, #0x2
	mov     r2, #0x45
	ldr     r7, [pc, #0x70] @ 0x21d6394, (=0x21d93d4)
	lsl     r3, r5, #4
	str     r1, [sp, #0x0]
	lsl     r2, r2, #4
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	add     r5, r7, r3
	ldr     r2, [r4, r2]
	ldr     r3, [r7, r3]
	bl      Function_21d80e4
	mov     r1, #0x2
	mov     r2, #0x45
	str     r1, [sp, #0x0]
	lsl     r2, r2, #4
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	ldr     r3, [r5, #0x4]
	bl      Function_21d81b4
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	ldr     r2, [r5, #0x8]
	mov     r3, #0x2
	bl      Function_21d8288
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	ldr     r2, [r5, #0xc]
	mov     r3, #0x2
	bl      Function_21d82f0
	ldr     r0, [pc, #0x28] @ 0x21d6398, (=0x21d63bd)
	ldr     r2, [pc, #0x28] @ 0x21d639c, (=0x101)
	mov     r1, r6
	bl      AddTaskToTaskList2
	cmp     r0, #0x0
	bne     branch_21d6380
	bl      ErrorHandling
.thumb
branch_21d6380: @ 21d6380 :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d63a0, (=0x21d63e9)
	ldr     r2, [pc, #0x18] @ 0x21d639c, (=0x101)
	mov     r1, r6
	bl      AddTaskToTaskList3
	cmp     r0, #0x0
	bne     branch_21d6392
	bl      ErrorHandling
.thumb
branch_21d6392: @ 21d6392 :thumb
	pop     {r3-r7,pc}
@ 0x21d6394

.word 0x21d93d4 @ 0x21d6394
.word 0x21d63bd @ 0x21d6398
.word 0x101 @ 0x21d639c
.word 0x21d63e9 @ 0x21d63a0
.thumb
Function_21d63a4: @ 21d63a4 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x45
	str     r1, [sp, #0x0]
	lsl     r2, r2, #4
	ldr     r0, [r0, r2]
	mov     r2, r1
	mov     r3, r1
	bl      Function_21d8358
	pop     {r3,pc}
@ 0x21d63ba


.align 2, 0


.thumb
Function_21d63bc: @ 21d63bc :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, #0x45
	ldr     r4, [r5, #0x38]
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      Function_21d814c
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      Function_21d8220
	mov     r0, #0x1
	str     r0, [r5, #0xc]
	mov     r0, r6
	bl      Call_RemoveTaskFromTaskList
	pop     {r4-r6,pc}
@ 0x21d63e8

.thumb
Function_21d63e8: @ 21d63e8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x38]
	cmp     r0, #0x1
	bne     branch_21d640c
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x2
	bl      Function_21d8254
	mov     r0, #0x2
	str     r0, [r4, #0xc]
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21d640c: @ 21d640c :thumb
	pop     {r3-r5,pc}
@ 0x21d640e


.align 2, 0


.thumb
Function_21d6410: @ 21d6410 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x34
	mov     r5, r0
	mov     r4, r1
	add     r1, sp, #0x28
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	ldr     r6, [pc, #0x5c] @ 0x21d6480, (=0x21d9100)
	str     r0, [r1, #0x8]
	ldmia   r6!, {r0,r1}
	add     r3, sp, #0x1c
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	str     r0, [r3, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r3, #0x2
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	str     r3, [sp, #0xc]
	str     r3, [sp, #0x10]
	str     r3, [sp, #0x14]
	mov     r0, #0x7
	str     r0, [sp, #0x18]
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_21d84a4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_2021cf8
	ldr     r0, [r4, #0x4]
	add     r1, sp, #0x28
	bl      Function_2021c60
	ldr     r0, [r4, #0x4]
	add     r1, sp, #0x1c
	bl      Function_2021c70
	mov     r0, #0x0
	bl      Function_201d2a4
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2021c94
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2021cc8
	add     sp, #0x34
	pop     {r3-r6,pc}
@ 0x21d6480

.word 0x21d9100 @ 0x21d6480
.thumb
Function_21d6484: @ 21d6484 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x24] @ 0x21d64b0, (=0x21d8f8c)
	mov     r3, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r2, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x1c] @ 0x21d64b4, (=0x21d9150)
	str     r0, [r4, #0x0]
	str     r3, [sp, #0x0]
	mov     r0, #0x87
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x14] @ 0x21d64b8, (=0x44c)
	ldr     r0, [r3, r0]
	mov     r3, #0x0
	bl      Function_2071330
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d64ae


.align 2


.word 0x21d8f8c @ 0x21d64b0
.word 0x21d9150 @ 0x21d64b4
.word 0x44c @ 0x21d64b8
.thumb
Function_21d64bc: @ 21d64bc :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_20715bc
	str     r0, [r4, #0x10]
	mov     r0, r4
	bl      Function_21d65f4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d64d0

.thumb
Function_21d64d0: @ 21d64d0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_21d64f8
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r0, #0x45
	ldr     r2, [r4, #0x10]
	lsl     r0, r0, #4
	ldr     r0, [r2, r0]
	mov     r2, r1
	mov     r3, r1
	bl      Function_21d8358
	add     r4, #0x14
	mov     r0, r4
	bl      Function_21d8544
.thumb
branch_21d64f8: @ 21d64f8 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d64fc

.thumb
Function_21d64fc: @ 21d64fc :thumb
	push    {r4,lr}
	add     sp, #-0x28
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x3
	bhi     branch_21d6598
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d6514

Jumppoints_21d6514:
.hword branch_21d651c - Jumppoints_21d6514 - 2
.hword branch_21d655e - Jumppoints_21d6514 - 2
.hword branch_21d6576 - Jumppoints_21d6514 - 2
.hword branch_21d6598 - Jumppoints_21d6514 - 2
.thumb
branch_21d651c: @ 21d651c :thumb
	ldr     r1, [r4, #0xc]
	cmp     r1, #0x2
	bne     branch_21d6598
	add     r1, sp, #0x1c
	bl      Function_20715e4
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r3, #0x2
	str     r3, [sp, #0x14]
	mov     r0, #0x5
	str     r0, [sp, #0x18]
	mov     r0, #0x45
	ldr     r1, [r4, #0x10]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, r4
	add     r1, #0x14
	add     r2, sp, #0x1c
	bl      Function_21d84a4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	bl      Function_2021cc8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_21d655e: @ 21d655e :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0xf
	bcc     branch_21d6598
	ldr     r0, [r4, #0x0]
	add     sp, #0x28
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x21d6576

.thumb
branch_21d6576: @ 21d6576 :thumb
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r0, #0x45
	ldr     r2, [r4, #0x10]
	lsl     r0, r0, #4
	ldr     r0, [r2, r0]
	mov     r2, r1
	mov     r3, r1
	bl      Function_21d8358
	mov     r0, r4
	add     r0, #0x14
	bl      Function_21d8544
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_21d6598: @ 21d6598 :thumb
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d659c

.thumb
Function_21d659c: @ 21d659c :thumb
	bx      lr
@ 0x21d659e


.align 2, 0


.thumb
Function_21d65a0: @ 21d65a0 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, #0x45
	ldr     r4, [r5, #0x10]
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x3
	bl      Function_21d814c
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x3
	bl      Function_21d8220
	mov     r0, #0x1
	str     r0, [r5, #0xc]
	mov     r0, r6
	bl      Call_RemoveTaskFromTaskList
	pop     {r4-r6,pc}
@ 0x21d65cc

.thumb
Function_21d65cc: @ 21d65cc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x10]
	cmp     r0, #0x1
	bne     branch_21d65f0
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x3
	bl      Function_21d8254
	mov     r0, #0x2
	str     r0, [r4, #0xc]
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21d65f0: @ 21d65f0 :thumb
	pop     {r3-r5,pc}
@ 0x21d65f2


.align 2, 0


.thumb
Function_21d65f4: @ 21d65f4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r2, #0x45
	ldr     r4, [r5, #0x10]
	mov     r0, #0x3
	lsl     r2, r2, #4
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	mov     r1, #0x2
	mov     r3, #0x2c
	bl      Function_21d80e4
	mov     r2, #0x45
	mov     r0, #0x3
	lsl     r2, r2, #4
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	mov     r1, #0x2
	mov     r3, #0x2f
	bl      Function_21d81b4
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0x2d
	mov     r3, #0x3
	bl      Function_21d8288
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0x2e
	mov     r3, #0x3
	bl      Function_21d82f0
	ldr     r0, [pc, #0x24] @ 0x21d6670, (=0x21d65a1)
	ldr     r2, [pc, #0x24] @ 0x21d6674, (=0x101)
	mov     r1, r5
	bl      AddTaskToTaskList2
	cmp     r0, #0x0
	bne     branch_21d665c
	bl      ErrorHandling
.thumb
branch_21d665c: @ 21d665c :thumb
	ldr     r0, [pc, #0x18] @ 0x21d6678, (=0x21d65cd)
	ldr     r2, [pc, #0x14] @ 0x21d6674, (=0x101)
	mov     r1, r5
	bl      AddTaskToTaskList3
	cmp     r0, #0x0
	bne     branch_21d666e
	bl      ErrorHandling
.thumb
branch_21d666e: @ 21d666e :thumb
	pop     {r3-r5,pc}
@ 0x21d6670

.word 0x21d65a1 @ 0x21d6670
.word 0x101 @ 0x21d6674
.word 0x21d65cd @ 0x21d6678
.thumb
Function_21d667c: @ 21d667c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, #0x45
	ldr     r4, [r5, #0x20]
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x4
	bl      Function_21d814c
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x4
	bl      Function_21d8220
	mov     r0, #0x1
	str     r0, [r5, #0x10]
	mov     r0, r6
	bl      Call_RemoveTaskFromTaskList
	pop     {r4-r6,pc}
@ 0x21d66a8

.thumb
Function_21d66a8: @ 21d66a8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x10]
	ldr     r1, [r4, #0x20]
	cmp     r0, #0x1
	bne     branch_21d66cc
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x4
	bl      Function_21d8254
	mov     r0, #0x2
	str     r0, [r4, #0x10]
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21d66cc: @ 21d66cc :thumb
	pop     {r3-r5,pc}
@ 0x21d66ce


.align 2, 0


.thumb
Function_21d66d0: @ 21d66d0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x18]
	mov     r2, #0x45
	lsl     r3, r0, #4
	ldr     r7, [pc, #0x78] @ 0x21d6754, (=0x21d93a4)
	ldr     r4, [r6, #0x20]
	mov     r0, #0x4
	lsl     r2, r2, #4
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	add     r5, r7, r3
	ldr     r2, [r4, r2]
	ldr     r3, [r7, r3]
	mov     r1, #0x2
	bl      Function_21d80e4
	mov     r2, #0x45
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	lsl     r2, r2, #4
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	ldr     r3, [r5, #0x4]
	mov     r1, #0x2
	bl      Function_21d81b4
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	ldr     r2, [r5, #0x8]
	mov     r3, #0x4
	bl      Function_21d8288
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	ldr     r2, [r5, #0xc]
	mov     r3, #0x4
	bl      Function_21d82f0
	ldr     r0, [pc, #0x28] @ 0x21d6758, (=0x21d667d)
	ldr     r2, [pc, #0x28] @ 0x21d675c, (=0x101)
	mov     r1, r6
	bl      AddTaskToTaskList2
	cmp     r0, #0x0
	bne     branch_21d6740
	bl      ErrorHandling
.thumb
branch_21d6740: @ 21d6740 :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d6760, (=0x21d66a9)
	ldr     r2, [pc, #0x18] @ 0x21d675c, (=0x101)
	mov     r1, r6
	bl      AddTaskToTaskList3
	cmp     r0, #0x0
	bne     branch_21d6752
	bl      ErrorHandling
.thumb
branch_21d6752: @ 21d6752 :thumb
	pop     {r3-r7,pc}
@ 0x21d6754

.word 0x21d93a4 @ 0x21d6754
.word 0x21d667d @ 0x21d6758
.word 0x101 @ 0x21d675c
.word 0x21d66a9 @ 0x21d6760
.thumb
Function_21d6764: @ 21d6764 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	ldr     r6, [pc, #0x24] @ 0x21d6790, (=0x21d90dc)
	add     r5, sp, #0x8
	mov     r4, r0
	mov     r3, r1
	ldmia   r6!, {r0,r1}
	mov     r2, r5
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	ldr     r1, [pc, #0x18] @ 0x21d6794, (=0x21d9164)
	str     r0, [r5, #0x0]
	str     r4, [sp, #0x0]
	mov     r0, #0x89
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x14] @ 0x21d6798, (=0x44c)
	ldr     r0, [r4, r0]
	bl      Function_2071330
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21d678e


.align 2


.word 0x21d90dc @ 0x21d6790
.word 0x21d9164 @ 0x21d6794
.word 0x44c @ 0x21d6798
.thumb
Function_21d679c: @ 21d679c :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_2071598
	str     r4, [r0, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	str     r1, [r0, #0xc]
	str     r1, [r0, #0x14]
	pop     {r4,pc}
@ 0x21d67b0

.thumb
Function_21d67b0: @ 21d67b0 :thumb
	push    {r3,lr}
	bl      Function_2071598
	ldr     r0, [r0, #0xc]
	pop     {r3,pc}
@ 0x21d67ba


.align 2, 0


.thumb
Function_21d67bc: @ 21d67bc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_20715bc
	str     r0, [r4, #0x20]
	mov     r0, r5
	bl      Function_20715b4
	str     r0, [r4, #0x18]
	mov     r0, r4
	bl      Function_21d66d0
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d67da


.align 2, 0


.thumb
Function_21d67dc: @ 21d67dc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	beq     branch_21d6804
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	mov     r0, #0x45
	ldr     r2, [r4, #0x20]
	lsl     r0, r0, #4
	ldr     r0, [r2, r0]
	mov     r2, r1
	mov     r3, r1
	bl      Function_21d8358
	add     r4, #0x24
	mov     r0, r4
	bl      Function_21d8544
.thumb
branch_21d6804: @ 21d6804 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d6808

.thumb
Function_21d6808: @ 21d6808 :thumb
	push    {r3-r5,lr}
	ldr     r4, [pc, #0x18] @ 0x21d6824, (=0x21d9330)
	mov     r5, r1
.thumb
branch_21d680e: @ 21d680e :thumb
	ldr     r1, [r5, #0x4]
	mov     r0, r5
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	ldr     r1, [r5, #0x8]
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	blx     r1
	cmp     r0, #0x1
	beq     branch_21d680e
	pop     {r3-r5,pc}
@ 0x21d6824

.word 0x21d9330 @ 0x21d6824
.thumb
Function_21d6828: @ 21d6828 :thumb
	bx      lr
@ 0x21d682a


.align 2, 0


.thumb
Function_21d682c: @ 21d682c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x34
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x2
	bne     branch_21d689e
	ldr     r5, [pc, #0x68] @ 0x21d68a4, (=0x21d8f74)
	add     r3, sp, #0x28
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x1c
	str     r0, [r3, #0x0]
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r3, #0x2
	str     r3, [sp, #0x14]
	mov     r0, #0x6
	str     r0, [sp, #0x18]
	mov     r0, #0x45
	ldr     r1, [r4, #0x20]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, r4
	add     r1, #0x24
	bl      Function_21d84a4
	ldr     r0, [r4, #0x28]
	mov     r1, #0x2
	bl      Function_2021cf8
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0x1c
	bl      Function_2021c60
	mov     r0, #0x0
	bl      Function_201d2a4
	mov     r1, r0
	ldr     r0, [r4, #0x28]
	bl      Function_2021c94
	mov     r0, #0x1
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
.thumb
branch_21d689e: @ 21d689e :thumb
	mov     r0, #0x0
	add     sp, #0x34
	pop     {r4,r5,pc}
@ 0x21d68a4

.word 0x21d8f74 @ 0x21d68a4
.thumb
Function_21d68a8: @ 21d68a8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d68ac

.thumb
Function_21d68ac: @ 21d68ac :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x4c] @ 0x21d6900, (=0x21d90a0)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r5, [pc, #0x44] @ 0x21d6904, (=0x21d9094)
	str     r0, [r2, #0x0]
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x28]
	bl      Function_2021c70
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0xc
	bl      Function_2021c50
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	bl      Function_2021d6c
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_2021ce4
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_2021cc8
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d6900

.word 0x21d90a0 @ 0x21d6900
.word 0x21d9094 @ 0x21d6904
.thumb
Function_21d6908: @ 21d6908 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0xc
	bl      Function_21d8560
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0x0
	bl      Function_21d8574
	ldr     r0, [sp, #0x0]
	add     r0, #0xc0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	add     r0, #0xc0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
	cmp     r0, #0x10
	blt     branch_21d6952
	mov     r0, #0x5
	lsl     r0, r0, #18
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [r4, #0x14]
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x23
	bl      Function_2005844
.thumb
branch_21d6952: @ 21d6952 :thumb
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0x0
	bl      Function_2021c70
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0xc
	bl      Function_2021c50
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r4,pc}
@ 0x21d6968

.thumb
Function_21d6968: @ 21d6968 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	ldr     r0, [r4, #0x28]
	lsl     r1, r1, #12
	bl      Function_2021e2c
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
	cmp     r0, #0x9
	blt     branch_21d698e
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	str     r0, [r4, #0xc]
.thumb
branch_21d698e: @ 21d698e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d6992


.align 2, 0


.thumb
Function_21d6994: @ 21d6994 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x54] @ 0x21d69f0, (=0x21d907c)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r5, [pc, #0x4c] @ 0x21d69f4, (=0x21d9070)
	str     r0, [r2, #0x0]
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x28]
	bl      Function_2021c70
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0xc
	bl      Function_2021c50
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	bl      Function_2021d6c
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_2021ce4
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_2021cc8
	ldr     r0, [pc, #0x18] @ 0x21d69f8, (=0x6d1)
	bl      Function_2005748
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d69ee


.align 2


.word 0x21d907c @ 0x21d69f0
.word 0x21d9070 @ 0x21d69f4
.word 0x6d1 @ 0x21d69f8
.thumb
Function_21d69fc: @ 21d69fc :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0xc
	bl      Function_21d8560
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0x0
	bl      Function_21d8574
	mov     r0, #0x6
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #6
	sub     r1, r1, r0
	str     r1, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	sub     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
	cmp     r0, #0x8
	blt     branch_21d6a48
	mov     r0, #0x1d
	lsl     r0, r0, #16
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	str     r0, [r4, #0xc]
.thumb
branch_21d6a48: @ 21d6a48 :thumb
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0x0
	bl      Function_2021c70
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0xc
	bl      Function_2021c50
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r4,pc}
@ 0x21d6a5e


.align 2, 0


.thumb
Function_21d6a60: @ 21d6a60 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x58] @ 0x21d6ac0, (=0x21d9058)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r5, [pc, #0x50] @ 0x21d6ac4, (=0x21d904c)
	str     r0, [r2, #0x0]
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x28]
	bl      Function_2021c70
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0xc
	bl      Function_2021c50
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_2021d6c
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_2021cc8
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_2021ce4
	ldr     r0, [r4, #0x28]
	bl      Function_2021de0
	mov     r0, #0x1
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d6abe


.align 2


.word 0x21d9058 @ 0x21d6ac0
.word 0x21d904c @ 0x21d6ac4
.thumb
Function_21d6ac8: @ 21d6ac8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x64] @ 0x21d6b34, (=0x21d9004)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r5, [pc, #0x5c] @ 0x21d6b38, (=0x21d8f80)
	str     r0, [r2, #0x0]
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x28]
	bl      Function_2021c70
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0xc
	bl      Function_2021c50
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r1, #0x2
	ldr     r0, [r4, #0x28]
	lsl     r1, r1, #10
	bl      Function_2021ce4
	ldr     r0, [r4, #0x28]
	bl      Function_2021e24
	cmp     r0, #0x2
	beq     branch_21d6b22
	ldr     r0, [r4, #0x28]
	mov     r1, #0x2
	bl      Function_2021d6c
	ldr     r0, [r4, #0x28]
	bl      Function_2021de0
.thumb
branch_21d6b22: @ 21d6b22 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d6b32


.align 2


.word 0x21d9004 @ 0x21d6b34
.word 0x21d8f80 @ 0x21d6b38
.thumb
Function_21d6b3c: @ 21d6b3c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x58] @ 0x21d6b9c, (=0x21d8f20)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r5, [pc, #0x50] @ 0x21d6ba0, (=0x21d90f4)
	str     r0, [r2, #0x0]
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x28]
	bl      Function_2021c70
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0xc
	bl      Function_2021c50
	ldr     r0, [r4, #0x28]
	mov     r1, #0x5
	bl      Function_2021d6c
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r1, #0x1
	ldr     r0, [r4, #0x28]
	lsl     r1, r1, #12
	bl      Function_2021ce4
	ldr     r0, [r4, #0x28]
	bl      Function_2021de0
	mov     r0, #0x1
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d6b9c

.word 0x21d8f20 @ 0x21d6b9c
.word 0x21d90f4 @ 0x21d6ba0
.thumb
Function_21d6ba4: @ 21d6ba4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x58] @ 0x21d6c04, (=0x21d8f2c)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r5, [pc, #0x50] @ 0x21d6c08, (=0x21d8fe0)
	str     r0, [r2, #0x0]
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x28]
	bl      Function_2021c70
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0xc
	bl      Function_2021c50
	ldr     r0, [r4, #0x28]
	mov     r1, #0x4
	bl      Function_2021d6c
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r1, #0x1
	ldr     r0, [r4, #0x28]
	lsl     r1, r1, #12
	bl      Function_2021ce4
	ldr     r0, [r4, #0x28]
	bl      Function_2021de0
	mov     r0, #0x1
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d6c04

.word 0x21d8f2c @ 0x21d6c04
.word 0x21d8fe0 @ 0x21d6c08
.thumb
Function_21d6c0c: @ 21d6c0c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x58] @ 0x21d6c6c, (=0x21d8fbc)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r5, [pc, #0x50] @ 0x21d6c70, (=0x21d8fc8)
	str     r0, [r2, #0x0]
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x28]
	bl      Function_2021c70
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0xc
	bl      Function_2021c50
	ldr     r0, [r4, #0x28]
	mov     r1, #0x3
	bl      Function_2021d6c
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r1, #0x1
	ldr     r0, [r4, #0x28]
	lsl     r1, r1, #12
	bl      Function_2021ce4
	ldr     r0, [r4, #0x28]
	bl      Function_2021de0
	mov     r0, #0x1
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d6c6c

.word 0x21d8fbc @ 0x21d6c6c
.word 0x21d8fc8 @ 0x21d6c70
.thumb
Function_21d6c74: @ 21d6c74 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	ldr     r3, [pc, #0x5c] @ 0x21d6cd8, (=0x21d901c)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0xc
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r5, [pc, #0x54] @ 0x21d6cdc, (=0x21d8ea8)
	str     r0, [r2, #0x0]
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x28]
	bl      Function_2021c70
	ldr     r0, [r4, #0x28]
	add     r1, sp, #0xc
	bl      Function_2021c50
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_2021cc8
	mov     r1, #0x1
	ldr     r0, [r4, #0x28]
	lsl     r1, r1, #12
	bl      Function_2021ce4
	ldr     r0, [r4, #0x28]
	mov     r1, #0x5
	bl      Function_2021d6c
	ldr     r0, [r4, #0x28]
	bl      Function_2021de0
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	mov     r1, #0x1
	str     r1, [r4, #0xc]
	ldr     r1, [r4, #0x8]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x8]
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d6cd6


.align 2


.word 0x21d901c @ 0x21d6cd8
.word 0x21d8ea8 @ 0x21d6cdc
.thumb
Function_21d6ce0: @ 21d6ce0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	ldr     r0, [r4, #0x28]
	lsl     r1, r1, #12
	bl      Function_2021e2c
	ldr     r0, [r4, #0x28]
	bl      Function_2021fd0
	cmp     r0, #0x0
	bne     branch_21d6d0c
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
	cmp     r0, #0x8
	blt     branch_21d6d0c
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0x28]
	bl      Function_2021de0
.thumb
branch_21d6d0c: @ 21d6d0c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d6d10

.thumb
Function_21d6d10: @ 21d6d10 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, #0x45
	ldr     r4, [r5, #0x2c]
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_21d814c
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_21d8220
	mov     r0, #0x1
	str     r0, [r5, #0x10]
	mov     r0, r6
	bl      Call_RemoveTaskFromTaskList
	pop     {r4-r6,pc}
@ 0x21d6d3c

.thumb
Function_21d6d3c: @ 21d6d3c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x2c]
	mov     r5, r0
	mov     r0, #0x1
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	beq     branch_21d6d64
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0x5
	bl      Function_21d8254
	mov     r0, #0x2
	str     r0, [r4, #0x10]
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21d6d64: @ 21d6d64 :thumb
	pop     {r3-r5,pc}
@ 0x21d6d66


.align 2, 0


.thumb
Function_21d6d68: @ 21d6d68 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r2, #0x45
	ldr     r4, [r5, #0x2c]
	mov     r0, #0x5
	lsl     r2, r2, #4
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	mov     r1, #0x2
	mov     r3, #0x38
	bl      Function_21d80e4
	mov     r2, #0x45
	mov     r0, #0x5
	lsl     r2, r2, #4
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	mov     r1, #0x2
	mov     r3, #0x3b
	bl      Function_21d81b4
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0x39
	mov     r3, #0x5
	bl      Function_21d8288
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0x3a
	mov     r3, #0x5
	bl      Function_21d82f0
	ldr     r0, [pc, #0x24] @ 0x21d6de4, (=0x21d6d11)
	ldr     r2, [pc, #0x24] @ 0x21d6de8, (=0x101)
	mov     r1, r5
	bl      AddTaskToTaskList2
	cmp     r0, #0x0
	bne     branch_21d6dd0
	bl      ErrorHandling
.thumb
branch_21d6dd0: @ 21d6dd0 :thumb
	ldr     r0, [pc, #0x18] @ 0x21d6dec, (=0x21d6d3d)
	ldr     r2, [pc, #0x14] @ 0x21d6de8, (=0x101)
	mov     r1, r5
	bl      AddTaskToTaskList3
	cmp     r0, #0x0
	bne     branch_21d6de2
	bl      ErrorHandling
.thumb
branch_21d6de2: @ 21d6de2 :thumb
	pop     {r3-r5,pc}
@ 0x21d6de4

.word 0x21d6d11 @ 0x21d6de4
.word 0x101 @ 0x21d6de8
.word 0x21d6d3d @ 0x21d6dec
.thumb
Function_21d6df0: @ 21d6df0 :thumb
	push    {lr}
	add     sp, #-0x14
	add     r2, sp, #0x8
	mov     r3, #0x0
	str     r3, [r2, #0x0]
	str     r3, [r2, #0x4]
	str     r3, [r2, #0x8]
	str     r0, [sp, #0x0]
	mov     r1, #0x88
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0xc] @ 0x21d6e14, (=0x44c)
	ldr     r0, [r0, r1]
	ldr     r1, [pc, #0xc] @ 0x21d6e18, (=0x21d9178)
	bl      Function_2071330
	add     sp, #0x14
	pop     {pc}
@ 0x21d6e12


.align 2


.word 0x44c @ 0x21d6e14
.word 0x21d9178 @ 0x21d6e18
.thumb
Function_21d6e1c: @ 21d6e1c :thumb
	push    {r3,lr}
	bl      Function_2071598
	ldr     r0, [r0, #0x4]
	pop     {r3,pc}
@ 0x21d6e26


.align 2, 0


.thumb
Function_21d6e28: @ 21d6e28 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_20715bc
	str     r0, [r4, #0x2c]
	mov     r0, r4
	bl      Function_21d6d68
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d6e3c

.thumb
Function_21d6e3c: @ 21d6e3c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x0
	beq     branch_21d6e72
	mov     r1, #0x5
	str     r1, [sp, #0x0]
	mov     r0, #0x45
	ldr     r2, [r4, #0x2c]
	lsl     r0, r0, #4
	ldr     r0, [r2, r0]
	mov     r2, r1
	mov     r3, r1
	bl      Function_21d8358
	mov     r0, r4
	add     r0, #0x30
	bl      Function_21d8544
	ldr     r0, [r4, #0x40]
	cmp     r0, #0x0
	beq     branch_21d6e72
	add     r4, #0x3c
	mov     r0, r4
	bl      Function_21d8544
.thumb
branch_21d6e72: @ 21d6e72 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d6e76


.align 2, 0


.thumb
Function_21d6e78: @ 21d6e78 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r1
	add     r1, sp, #0xc
	mov     r7, r0
	mov     r4, r2
	mov     r6, r3
	bl      Function_20715e4
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	add     r0, r0, r6
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x30]
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	mov     r0, r7
	add     r1, sp, #0xc
	bl      Function_20715d4
	ldr     r0, [sp, #0x38]
	cmp     r0, #0x0
	bne     branch_21d6eae
	ldr     r0, [sp, #0xc]
	add     r0, r5, r0
	str     r0, [sp, #0x0]
	b       branch_21d6eb4
@ 0x21d6eae

.thumb
branch_21d6eae: @ 21d6eae :thumb
	ldr     r0, [sp, #0xc]
	sub     r0, r5, r0
	str     r0, [sp, #0x0]
.thumb
branch_21d6eb4: @ 21d6eb4 :thumb
	ldr     r0, [sp, #0x10]
	add     r1, sp, #0x0
	sub     r0, r4, r0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x34]
	bl      Function_2021c50
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d6ec6


.align 2, 0


.thumb
Function_21d6ec8: @ 21d6ec8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x40
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r6, r0
	cmp     r1, #0xa
	bls     branch_21d6ed8
	b       branch_21d7210
@ 0x21d6ed8

.thumb
branch_21d6ed8: @ 21d6ed8 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d6ee4

Jumppoints_21d6ee4:
.hword branch_21d6efa - Jumppoints_21d6ee4 - 2
.hword branch_21d6f6c - Jumppoints_21d6ee4 - 2
.hword branch_21d6ff4 - Jumppoints_21d6ee4 - 2
.hword branch_21d7008 - Jumppoints_21d6ee4 - 2
.hword branch_21d703a - Jumppoints_21d6ee4 - 2
.hword branch_21d706c - Jumppoints_21d6ee4 - 2
.hword branch_21d709e - Jumppoints_21d6ee4 - 2
.hword branch_21d70e6 - Jumppoints_21d6ee4 - 2
.hword branch_21d70fc - Jumppoints_21d6ee4 - 2
.hword branch_21d7148 - Jumppoints_21d6ee4 - 2
.hword branch_21d71a8 - Jumppoints_21d6ee4 - 2
.thumb
branch_21d6efa: @ 21d6efa :thumb
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x2
	beq     branch_21d6f02
	b       branch_21d7210
@ 0x21d6f02

.thumb
branch_21d6f02: @ 21d6f02 :thumb
	ldr     r5, [pc, #0x310] @ 0x21d7214, (=0x21d90d0)
	add     r3, sp, #0x34
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r3, #0x2
	str     r3, [sp, #0x14]
	mov     r0, #0x4
	str     r0, [sp, #0x18]
	mov     r0, #0x45
	ldr     r1, [r4, #0x2c]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, r4
	add     r1, #0x30
	bl      Function_21d84a4
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r3, #0x2
	str     r3, [sp, #0x14]
	mov     r0, #0x4
	str     r0, [sp, #0x18]
	mov     r0, #0x45
	ldr     r1, [r4, #0x2c]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, r4
	add     r1, #0x3c
	add     r2, sp, #0x34
	bl      Function_21d84a4
	ldr     r0, [r4, #0x40]
	mov     r1, #0x1
	bl      Function_2021d0c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_21d6f6c: @ 21d6f6c :thumb
	mov     r0, r6
	add     r1, sp, #0x28
	mov     r5, #0x0
	bl      Function_20715e4
	mov     r1, #0x2
	ldr     r2, [sp, #0x2c]
	lsl     r1, r1, #14
	ldr     r0, [sp, #0x28]
	add     r2, r2, r1
	add     r0, r0, r1
	str     r2, [sp, #0x2c]
	lsl     r2, r1, #3
	str     r0, [sp, #0x28]
	cmp     r0, r2
	blt     branch_21d6f92
	mov     r0, r2
	str     r0, [sp, #0x28]
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d6f92: @ 21d6f92 :thumb
	mov     r0, #0xe
	ldr     r1, [sp, #0x2c]
	lsl     r0, r0, #14
	cmp     r1, r0
	blt     branch_21d6fa4
	mov     r0, #0x1
	lsl     r0, r0, #18
	str     r0, [sp, #0x2c]
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_21d6fa4: @ 21d6fa4 :thumb
	mov     r0, r6
	add     r1, sp, #0x28
	bl      Function_20715d4
	mov     r0, #0x2
	ldr     r1, [sp, #0x28]
	lsl     r0, r0, #16
	sub     r0, r1, r0
	str     r0, [sp, #0x1c]
	mov     r0, #0x69
	ldr     r1, [sp, #0x2c]
	lsl     r0, r0, #14
	sub     r0, r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [r4, #0x34]
	add     r1, sp, #0x1c
	bl      Function_2021c50
	mov     r0, #0x12
	ldr     r1, [sp, #0x28]
	lsl     r0, r0, #16
	sub     r0, r0, r1
	str     r0, [sp, #0x1c]
	mov     r0, #0x69
	ldr     r1, [sp, #0x2c]
	lsl     r0, r0, #14
	sub     r0, r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [r4, #0x40]
	add     r1, sp, #0x1c
	bl      Function_2021c50
	cmp     r5, #0x2
	beq     branch_21d6fea
	b       branch_21d7210
@ 0x21d6fea

.thumb
branch_21d6fea: @ 21d6fea :thumb
	ldr     r0, [r4, #0x0]
	add     sp, #0x40
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x21d6ff4

.thumb
branch_21d6ff4: @ 21d6ff4 :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x8
	bcc     branch_21d70f0
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_21d7008: @ 21d7008 :thumb
	ldr     r3, [pc, #0x20c] @ 0x21d7218, (=0xffffc000)
	mov     r2, #0x69
	str     r3, [sp, #0x0]
	ldr     r0, [r4, #0x34]
	lsl     r1, r3, #3
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	lsl     r2, r2, #14
	asr     r3, r3, #1
	bl      Function_21d6e78
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x4
	bcc     branch_21d70f0
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	add     sp, #0x40
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x21d703a

.thumb
branch_21d703a: @ 21d703a :thumb
	mov     r3, #0x1
	lsl     r3, r3, #14
	str     r3, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r2, #0x69
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	ldr     r1, [pc, #0x1d0] @ 0x21d721c, (=0xfffe0000)
	lsl     r2, r2, #14
	lsr     r3, r3, #1
	bl      Function_21d6e78
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x4
	bcc     branch_21d70f0
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	add     sp, #0x40
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x21d706c

.thumb
branch_21d706c: @ 21d706c :thumb
	ldr     r3, [pc, #0x1a8] @ 0x21d7218, (=0xffffc000)
	mov     r2, #0x69
	str     r3, [sp, #0x0]
	ldr     r1, [r4, #0x40]
	lsl     r2, r2, #14
	str     r1, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r1, #0x12
	lsl     r1, r1, #16
	asr     r3, r3, #1
	bl      Function_21d6e78
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x4
	bcc     branch_21d70f0
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	add     sp, #0x40
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x21d709e

.thumb
branch_21d709e: @ 21d709e :thumb
	mov     r1, #0x1
	lsl     r1, r1, #14
	str     r1, [sp, #0x0]
	ldr     r1, [r4, #0x40]
	mov     r2, #0x69
	str     r1, [sp, #0x4]
	mov     r3, #0x1
	mov     r1, #0x12
	str     r3, [sp, #0x8]
	lsl     r1, r1, #16
	lsl     r2, r2, #14
	lsl     r3, r3, #13
	bl      Function_21d6e78
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x4
	bcc     branch_21d70f0
	mov     r1, #0x0
	str     r1, [r4, #0x8]
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	cmp     r0, #0x2
	bcs     branch_21d70da
	mov     r0, #0x3
	add     sp, #0x40
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x21d70da

.thumb
branch_21d70da: @ 21d70da :thumb
	str     r1, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	add     sp, #0x40
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x21d70e6

.thumb
branch_21d70e6: @ 21d70e6 :thumb
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x8
	bcs     branch_21d70f2
.thumb
branch_21d70f0: @ 21d70f0 :thumb
	b       branch_21d7210
@ 0x21d70f2

.thumb
branch_21d70f2: @ 21d70f2 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_21d70fc: @ 21d70fc :thumb
	ldr     r3, [pc, #0x118] @ 0x21d7218, (=0xffffc000)
	mov     r2, #0x69
	str     r3, [sp, #0x0]
	ldr     r0, [r4, #0x34]
	lsl     r1, r3, #3
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r6
	lsl     r2, r2, #14
	asr     r3, r3, #1
	bl      Function_21d6e78
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [r4, #0x40]
	mov     r1, #0x12
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	mov     r2, #0x69
	str     r0, [sp, #0x8]
	mov     r0, r6
	lsl     r1, r1, #16
	lsl     r2, r2, #14
	bl      Function_21d6e78
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x4
	bcc     branch_21d7210
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	add     sp, #0x40
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x21d7148

.thumb
branch_21d7148: @ 21d7148 :thumb
	mov     r3, #0x1
	lsl     r3, r3, #14
	str     r3, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	mov     r2, #0x69
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	ldr     r1, [pc, #0xc0] @ 0x21d721c, (=0xfffe0000)
	lsl     r2, r2, #14
	lsr     r3, r3, #1
	bl      Function_21d6e78
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [r4, #0x40]
	mov     r1, #0x12
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	mov     r2, #0x69
	str     r0, [sp, #0x8]
	mov     r0, r6
	lsl     r1, r1, #16
	lsl     r2, r2, #14
	bl      Function_21d6e78
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x4
	bcc     branch_21d7210
	mov     r1, #0x0
	str     r1, [r4, #0x8]
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	cmp     r0, #0x2
	bcs     branch_21d719c
	mov     r0, #0x8
	add     sp, #0x40
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x21d719c

.thumb
branch_21d719c: @ 21d719c :thumb
	str     r1, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	add     sp, #0x40
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x21d71a8

.thumb
branch_21d71a8: @ 21d71a8 :thumb
	ldr     r3, [pc, #0x74] @ 0x21d7220, (=0xffff8000)
	mov     r2, #0x69
	str     r3, [sp, #0x0]
	ldr     r1, [r4, #0x34]
	lsl     r2, r2, #14
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	lsl     r1, r3, #2
	bl      Function_21d6e78
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [r4, #0x40]
	mov     r1, #0x12
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	mov     r2, #0x69
	str     r0, [sp, #0x8]
	mov     r0, r6
	lsl     r1, r1, #16
	lsl     r2, r2, #14
	bl      Function_21d6e78
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x4
	bcc     branch_21d7206
	mov     r0, r4
	add     r0, #0x30
	bl      Function_21d8544
	mov     r0, r4
	add     r0, #0x3c
	bl      Function_21d8544
	mov     r1, #0x5
	str     r1, [sp, #0x0]
	mov     r0, #0x45
	ldr     r2, [r4, #0x2c]
	lsl     r0, r0, #4
	ldr     r0, [r2, r0]
	mov     r2, r1
	mov     r3, r1
	bl      Function_21d8358
.thumb
branch_21d7206: @ 21d7206 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_21d7210: @ 21d7210 :thumb
	add     sp, #0x40
	pop     {r4-r6,pc}
@ 0x21d7214

.word 0x21d90d0 @ 0x21d7214
.word 0xffffc000 @ 0x21d7218
.word 0xfffe0000 @ 0x21d721c
.word 0xffff8000 @ 0x21d7220
.thumb
Function_21d7224: @ 21d7224 :thumb
	bx      lr
@ 0x21d7226


.align 2, 0


.thumb
Function_21d7228: @ 21d7228 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x24] @ 0x21d7254, (=0x21d8f5c)
	mov     r3, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r2, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x1c] @ 0x21d7258, (=0x21d918c)
	str     r0, [r4, #0x0]
	str     r3, [sp, #0x0]
	mov     r0, #0x8e
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x14] @ 0x21d725c, (=0x44c)
	ldr     r0, [r3, r0]
	mov     r3, #0x0
	bl      Function_2071330
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d7252


.align 2


.word 0x21d8f5c @ 0x21d7254
.word 0x21d918c @ 0x21d7258
.word 0x44c @ 0x21d725c
.thumb
Function_21d7260: @ 21d7260 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x28
	mov     r5, r0
	mov     r4, r1
	bl      Function_20715bc
	str     r0, [r4, #0x0]
	mov     r0, r5
	add     r1, sp, #0x1c
	bl      Function_20715e4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r3, #0x2
	str     r3, [sp, #0x14]
	mov     r0, #0x3
	str     r0, [sp, #0x18]
	mov     r0, #0x45
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	add     r1, r4, #0x4
	add     r2, sp, #0x1c
	bl      Function_21d84a4
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x1
	add     sp, #0x28
	pop     {r3-r5,pc}
@ 0x21d72aa


.align 2, 0


.thumb
Function_21d72ac: @ 21d72ac :thumb
	ldr     r3, [pc, #0x4] @ 0x21d72b4, (=0x21d8545)
	add     r0, r1, #0x4
	bx      r3
@ 0x21d72b2


.align 2


.word Function_21d8544+1 @ =0x21d8545, 0x21d72b4
.thumb
Function_21d72b8: @ 21d72b8 :thumb
	mov     r0, #0x52
	ldr     r2, [r1, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	mov     r3, #0x1
	cmp     r0, #0x1
	bne     branch_21d72c8
	mov     r3, #0x0
.thumb
branch_21d72c8: @ 21d72c8 :thumb
	ldr     r0, [r1, #0x8]
	mov     r1, r3
	ldr     r3, [pc, #0x0] @ 0x21d72d0, (=Function_2021cac+1)
	bx      r3
@ 0x21d72d0

.word Function_2021cac+1 @ 0x21d72d0
.thumb
Function_21d72d4: @ 21d72d4 :thumb
	push    {lr}
	add     sp, #-0x14
	mov     r1, #0x15
	lsl     r1, r1, #14
	str     r1, [sp, #0x8]
	mov     r1, #0x13
	lsl     r1, r1, #16
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x0]
	mov     r1, #0x8e
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0x10] @ 0x21d72fc, (=0x44c)
	add     r2, sp, #0x8
	ldr     r0, [r0, r1]
	ldr     r1, [pc, #0xc] @ 0x21d7300, (=0x21d91c8)
	mov     r3, #0x0
	bl      Function_2071330
	add     sp, #0x14
	pop     {pc}
@ 0x21d72fc

.word 0x44c @ 0x21d72fc
.word 0x21d91c8 @ 0x21d7300
.thumb
Function_21d7304: @ 21d7304 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x40
	mov     r5, r0
	mov     r4, r1
	add     r1, sp, #0x28
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	ldr     r3, [pc, #0x78] @ 0x21d7390, (=0x21d8f44)
	str     r0, [r1, #0x8]
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x1c
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, r5
	bl      Function_20715bc
	str     r0, [r4, #0x4]
	mov     r0, r5
	add     r1, sp, #0x34
	bl      Function_20715e4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r3, #0x2
	str     r3, [sp, #0x14]
	mov     r0, #0x3
	str     r0, [sp, #0x18]
	mov     r0, #0x45
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, r4
	add     r1, #0x8
	add     r2, sp, #0x34
	bl      Function_21d84a4
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      Function_2021cf8
	ldr     r0, [r4, #0xc]
	add     r1, sp, #0x28
	bl      Function_2021c60
	ldr     r0, [r4, #0xc]
	add     r1, sp, #0x1c
	bl      Function_2021c70
	mov     r0, #0x0
	bl      Function_201d2a4
	mov     r1, r0
	ldr     r0, [r4, #0xc]
	bl      Function_2021c94
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x1
	add     sp, #0x40
	pop     {r3-r5,pc}
@ 0x21d738e


.align 2


.word 0x21d8f44 @ 0x21d7390
.thumb
Function_21d7394: @ 21d7394 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d739c, (=0x21d8545)
	add     r1, #0x8
	mov     r0, r1
	bx      r3
@ 0x21d739c

.word Function_21d8544+1 @ =0x21d8545, 0x21d739c
.thumb
Function_21d73a0: @ 21d73a0 :thumb
	push    {r3,lr}
	ldr     r2, [r1, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r1, #0x0]
	cmp     r2, #0x2d
	blt     branch_21d73b0
	bl      Function_207136c
.thumb
branch_21d73b0: @ 21d73b0 :thumb
	pop     {r3,pc}
@ 0x21d73b2


.align 2, 0


.thumb
Function_21d73b4: @ 21d73b4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x24] @ 0x21d73e0, (=0x21d9034)
	mov     r3, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r2, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x1c] @ 0x21d73e4, (=0x21d922c)
	str     r0, [r4, #0x0]
	str     r3, [sp, #0x0]
	mov     r0, #0x8e
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x14] @ 0x21d73e8, (=0x44c)
	ldr     r0, [r3, r0]
	mov     r3, #0x0
	bl      Function_2071330
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d73de


.align 2


.word 0x21d9034 @ 0x21d73e0
.word 0x21d922c @ 0x21d73e4
.word 0x44c @ 0x21d73e8
.thumb
Function_21d73ec: @ 21d73ec :thumb
	push    {r3-r5,lr}
	add     sp, #-0x28
	mov     r5, r0
	mov     r4, r1
	bl      Function_20715bc
	str     r0, [r4, #0x0]
	mov     r0, r5
	add     r1, sp, #0x1c
	bl      Function_20715e4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7
	str     r1, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	mov     r3, #0x2
	str     r3, [sp, #0x14]
	mov     r0, #0x3
	str     r0, [sp, #0x18]
	mov     r0, #0x45
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	add     r1, r4, #0x4
	add     r2, sp, #0x1c
	bl      Function_21d84a4
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x1
	add     sp, #0x28
	pop     {r3-r5,pc}
@ 0x21d7438

.thumb
Function_21d7438: @ 21d7438 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d7440, (=0x21d8545)
	add     r0, r1, #0x4
	bx      r3
@ 0x21d743e


.align 2


.word Function_21d8544+1 @ =0x21d8545, 0x21d7440
.thumb
Function_21d7444: @ 21d7444 :thumb
	mov     r0, #0x52
	ldr     r2, [r1, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	mov     r3, #0x1
	cmp     r0, #0x1
	bne     branch_21d7454
	mov     r3, #0x0
.thumb
branch_21d7454: @ 21d7454 :thumb
	ldr     r0, [r1, #0x8]
	mov     r1, r3
	ldr     r3, [pc, #0x0] @ 0x21d745c, (=Function_2021cac+1)
	bx      r3
@ 0x21d745c

.word Function_2021cac+1 @ 0x21d745c
.thumb
Function_21d7460: @ 21d7460 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x2c] @ 0x21d7494, (=0x21d8ef0)
	mov     r3, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r2, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x24] @ 0x21d7498, (=0x21d9254)
	str     r0, [r4, #0x0]
	mov     r0, #0x11
	lsl     r0, r0, #14
	str     r0, [sp, #0x8]
	lsl     r0, r0, #2
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x0]
	mov     r0, #0x8e
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x14] @ 0x21d749c, (=0x44c)
	ldr     r0, [r3, r0]
	mov     r3, #0x0
	bl      Function_2071330
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d7494

.word 0x21d8ef0 @ 0x21d7494
.word 0x21d9254 @ 0x21d7498
.word 0x44c @ 0x21d749c
.thumb
Function_21d74a0: @ 21d74a0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x40
	mov     r5, r0
	mov     r4, r1
	add     r1, sp, #0x28
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	ldr     r3, [pc, #0x78] @ 0x21d752c, (=0x21d8fec)
	str     r0, [r1, #0x8]
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x1c
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, r5
	bl      Function_20715bc
	str     r0, [r4, #0x4]
	mov     r0, r5
	add     r1, sp, #0x34
	bl      Function_20715e4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7
	str     r1, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	mov     r3, #0x2
	str     r3, [sp, #0x14]
	mov     r0, #0x3
	str     r0, [sp, #0x18]
	mov     r0, #0x45
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, r4
	add     r1, #0x8
	add     r2, sp, #0x34
	bl      Function_21d84a4
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      Function_2021cf8
	ldr     r0, [r4, #0xc]
	add     r1, sp, #0x28
	bl      Function_2021c60
	ldr     r0, [r4, #0xc]
	add     r1, sp, #0x1c
	bl      Function_2021c70
	mov     r0, #0x0
	bl      Function_201d2a4
	mov     r1, r0
	ldr     r0, [r4, #0xc]
	bl      Function_2021c94
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x1
	add     sp, #0x40
	pop     {r3-r5,pc}
@ 0x21d752c

.word 0x21d8fec @ 0x21d752c
.thumb
Function_21d7530: @ 21d7530 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d7538, (=0x21d8545)
	add     r1, #0x8
	mov     r0, r1
	bx      r3
@ 0x21d7538

.word Function_21d8544+1 @ =0x21d8545, 0x21d7538
.thumb
Function_21d753c: @ 21d753c :thumb
	push    {r3,lr}
	ldr     r2, [r1, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r1, #0x0]
	cmp     r2, #0x2d
	blt     branch_21d754c
	bl      Function_207136c
.thumb
branch_21d754c: @ 21d754c :thumb
	pop     {r3,pc}
@ 0x21d754e


.align 2, 0


.thumb
Function_21d7550: @ 21d7550 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x24] @ 0x21d757c, (=0x21d8eb4)
	mov     r3, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r2, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x1c] @ 0x21d7580, (=0x21d913c)
	str     r0, [r4, #0x0]
	str     r3, [sp, #0x0]
	mov     r0, #0x8e
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x14] @ 0x21d7584, (=0x44c)
	ldr     r0, [r3, r0]
	mov     r3, #0x0
	bl      Function_2071330
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d757a


.align 2


.word 0x21d8eb4 @ 0x21d757c
.word 0x21d913c @ 0x21d7580
.word 0x44c @ 0x21d7584
.thumb
Function_21d7588: @ 21d7588 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r4, r0
	mov     r7, r1
	bl      Function_20715bc
	str     r0, [r7, #0x0]
	mov     r0, r4
	add     r1, sp, #0x1c
	bl      Function_20715e4
	mov     r6, #0x0
	add     r4, r7, #0x4
	mov     r5, r7
.thumb
branch_21d75a4: @ 21d75a4 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x2
	str     r0, [sp, #0x14]
	mov     r0, #0x3
	str     r0, [sp, #0x18]
	mov     r0, #0x45
	ldr     r1, [r7, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, r4
	add     r2, sp, #0x1c
	mov     r3, #0x2
	bl      Function_21d84a4
	ldr     r0, [r5, #0x8]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r5, #0x8]
	mov     r1, #0x1
	bl      Function_2021cc8
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	add     r5, #0xc
	cmp     r6, #0x2
	blt     branch_21d75a4
	mov     r0, #0x1
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x21d75f0

.thumb
Function_21d75f0: @ 21d75f0 :thumb
	push    {r4,lr}
	mov     r4, r1
	add     r0, r4, #0x4
	bl      Function_21d8544
	add     r4, #0x10
	mov     r0, r4
	bl      Function_21d8544
	pop     {r4,pc}
@ 0x21d7604

.thumb
Function_21d7604: @ 21d7604 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r0, #0x4f
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r4, r1, r0
	ldr     r0, [r5, #0x8]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r5, #0x14]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x1
	beq     branch_21d76aa
	ldr     r3, [pc, #0x84] @ 0x21d76b0, (=0x21d9010)
	add     r2, sp, #0x0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r6, #0x0
	str     r0, [r2, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r7, [r0, #0x10]
	cmp     r7, #0x63
	bls     branch_21d7640
	mov     r7, #0x63
.thumb
branch_21d7640: @ 21d7640 :thumb
	mov     r0, r7
	mov     r1, #0x64
	blx     _u32_div_f
	mov     r0, r1
	mov     r1, #0xa
	blx     _u32_div_f
	mov     r4, r0
	beq     branch_21d767e
	ldr     r0, [r5, #0x8]
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldr     r0, [r5, #0x8]
	mov     r1, r4
	bl      Function_2021d6c
	ldr     r0, [r5, #0x8]
	bl      Function_2021de0
	ldr     r0, [r5, #0x8]
	mov     r1, #0x1
	bl      Function_2021cac
	mov     r0, #0x2
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_21d767e: @ 21d767e :thumb
	mov     r0, #0xc
	mov     r4, r6
	add     r5, #0x8
	mul     r4, r0
	ldr     r0, [r5, r4]
	add     r1, sp, #0x0
	bl      Function_2021c50
	mov     r0, r7
	mov     r1, #0xa
	blx     _u32_div_f
	ldr     r0, [r5, r4]
	bl      Function_2021d6c
	ldr     r0, [r5, r4]
	bl      Function_2021de0
	ldr     r0, [r5, r4]
	mov     r1, #0x1
	bl      Function_2021cac
.thumb
branch_21d76aa: @ 21d76aa :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d76ae


.align 2


.word 0x21d9010 @ 0x21d76b0
.thumb
Function_21d76b4: @ 21d76b4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x24] @ 0x21d76e0, (=0x21d90e8)
	mov     r3, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r2, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x1c] @ 0x21d76e4, (=0x21d91a0)
	str     r0, [r4, #0x0]
	str     r3, [sp, #0x0]
	mov     r0, #0x8e
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x14] @ 0x21d76e8, (=0x44c)
	ldr     r0, [r3, r0]
	mov     r3, #0x0
	bl      Function_2071330
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d76de


.align 2


.word 0x21d90e8 @ 0x21d76e0
.word 0x21d91a0 @ 0x21d76e4
.word 0x44c @ 0x21d76e8
.thumb
Function_21d76ec: @ 21d76ec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	ldr     r3, [pc, #0x5c] @ 0x21d7750, (=0x21d8f68)
	mov     r4, r0
	mov     r6, r1
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x1c
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, r4
	bl      Function_20715bc
	str     r0, [r6, #0x0]
	mov     r4, #0x0
	add     r5, r6, #0x4
	mov     r7, #0x2
.thumb
branch_21d770e: @ 21d770e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r7, [sp, #0x14]
	mov     r0, #0x3
	str     r0, [sp, #0x18]
	mov     r0, #0x45
	ldr     r1, [r6, #0x0]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, r5
	add     r2, sp, #0x1c
	mov     r3, r7
	bl      Function_21d84a4
	mov     r0, #0x2
	ldr     r1, [sp, #0x1c]
	lsl     r0, r0, #14
	add     r0, r1, r0
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	str     r0, [sp, #0x1c]
	cmp     r4, #0x5
	blt     branch_21d770e
	mov     r0, #0x1
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x21d7750

.word 0x21d8f68 @ 0x21d7750
.thumb
Function_21d7754: @ 21d7754 :thumb
	push    {r3-r5,lr}
	mov     r4, #0x0
	add     r5, r1, #0x4
.thumb
branch_21d775a: @ 21d775a :thumb
	mov     r0, r5
	bl      Function_21d8544
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0x5
	blt     branch_21d775a
	pop     {r3-r5,pc}
@ 0x21d776a


.align 2, 0


.thumb
Function_21d776c: @ 21d776c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r0, #0x52
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r7, #0x1
	cmp     r0, #0x1
	bne     branch_21d7780
	mov     r7, #0x0
.thumb
branch_21d7780: @ 21d7780 :thumb
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_21d7784: @ 21d7784 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, r7
	bl      Function_2021cac
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	cmp     r6, #0x5
	blt     branch_21d7784
	cmp     r7, #0x0
	beq     branch_21d77d8
	ldr     r0, [r5, #0x0]
	ldr     r6, [r0, #0x14]
	ldr     r0, [pc, #0x3c] @ 0x21d77dc, (=0xc350)
	cmp     r6, r0
	ble     branch_21d77a4
	mov     r6, r0
.thumb
branch_21d77a4: @ 21d77a4 :thumb
	ldr     r4, [pc, #0x38] @ 0x21d77e0, (=0x2710)
	mov     r7, #0xa
.thumb
branch_21d77a8: @ 21d77a8 :thumb
	mov     r1, r4
	mov     r0, r6
	mul     r1, r7
	blx     _s32_div_f
	mov     r0, r1
	mov     r1, r4
	blx     _s32_div_f
	mov     r1, r0
	ldr     r0, [r5, #0x8]
	bl      Function_2021d6c
	ldr     r0, [r5, #0x8]
	bl      Function_2021de0
	mov     r0, r4
	mov     r1, #0xa
	blx     _s32_div_f
	mov     r4, r0
	add     r5, #0xc
	cmp     r4, #0x1
	bge     branch_21d77a8
.thumb
branch_21d77d8: @ 21d77d8 :thumb
	pop     {r3-r7,pc}
@ 0x21d77da


.align 2


.word 0xc350 @ 0x21d77dc
.word 0x2710 @ 0x21d77e0
.thumb
Function_21d77e4: @ 21d77e4 :thumb
	push    {lr}
	add     sp, #-0x14
	mov     r3, r1
	add     r2, sp, #0x8
	mov     r1, #0x0
	str     r1, [r2, #0x0]
	str     r1, [r2, #0x4]
	str     r1, [r2, #0x8]
	str     r0, [sp, #0x0]
	mov     r1, #0x8e
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0xc] @ 0x21d7808, (=0x44c)
	ldr     r0, [r0, r1]
	ldr     r1, [pc, #0xc] @ 0x21d780c, (=0x21d9240)
	bl      Function_2071330
	add     sp, #0x14
	pop     {pc}
@ 0x21d7808

.word 0x44c @ 0x21d7808
.word 0x21d9240 @ 0x21d780c
.thumb
Function_21d7810: @ 21d7810 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r6, r0
	mov     r5, r1
	add     r1, sp, #0x2c
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	ldr     r3, [pc, #0x150] @ 0x21d7974, (=0x21d9040)
	str     r0, [r1, #0x8]
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x20
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, r6
	bl      Function_20715bc
	mov     r4, r0
	mov     r0, r6
	bl      Function_20715b4
	str     r0, [r5, #0x0]
	str     r4, [r5, #0x14]
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_21d787a
	ldr     r1, [r4, #0x1c]
	ldr     r0, [pc, #0x12c] @ 0x21d7978, (=0x3e7)
	str     r1, [r5, #0x4]
	cmp     r1, r0
	bls     branch_21d7852
	str     r0, [r5, #0x4]
.thumb
branch_21d7852: @ 21d7852 :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x64
	bcc     branch_21d785e
	mov     r0, #0x3
	str     r0, [r5, #0x8]
	b       branch_21d786c
@ 0x21d785e

.thumb
branch_21d785e: @ 21d785e :thumb
	cmp     r0, #0xa
	bcc     branch_21d7868
	mov     r0, #0x2
	str     r0, [r5, #0x8]
	b       branch_21d786c
@ 0x21d7868

.thumb
branch_21d7868: @ 21d7868 :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x8]
.thumb
branch_21d786c: @ 21d786c :thumb
	mov     r0, #0x32
	lsl     r0, r0, #14
	str     r0, [sp, #0x38]
	mov     r0, #0x13
	lsl     r0, r0, #16
	str     r0, [sp, #0x3c]
	b       branch_21d78c6
@ 0x21d787a

.thumb
branch_21d787a: @ 21d787a :thumb
	ldr     r1, [r4, #0x14]
	ldr     r0, [pc, #0xfc] @ 0x21d797c, (=0x1869f)
	str     r1, [r5, #0x4]
	cmp     r1, r0
	bls     branch_21d7886
	str     r0, [r5, #0x4]
.thumb
branch_21d7886: @ 21d7886 :thumb
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0xf4] @ 0x21d7980, (=0x2710)
	cmp     r1, r0
	bcc     branch_21d7894
	mov     r0, #0x5
	str     r0, [r5, #0x8]
	b       branch_21d78ba
@ 0x21d7894

.thumb
branch_21d7894: @ 21d7894 :thumb
	mov     r0, #0xfa
	lsl     r0, r0, #2
	cmp     r1, r0
	bcc     branch_21d78a2
	mov     r0, #0x4
	str     r0, [r5, #0x8]
	b       branch_21d78ba
@ 0x21d78a2

.thumb
branch_21d78a2: @ 21d78a2 :thumb
	cmp     r1, #0x64
	bcc     branch_21d78ac
	mov     r0, #0x3
	str     r0, [r5, #0x8]
	b       branch_21d78ba
@ 0x21d78ac

.thumb
branch_21d78ac: @ 21d78ac :thumb
	cmp     r1, #0xa
	bcc     branch_21d78b6
	mov     r0, #0x2
	str     r0, [r5, #0x8]
	b       branch_21d78ba
@ 0x21d78b6

.thumb
branch_21d78b6: @ 21d78b6 :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x8]
.thumb
branch_21d78ba: @ 21d78ba :thumb
	mov     r0, #0x32
	lsl     r0, r0, #14
	str     r0, [sp, #0x38]
	mov     r0, #0x11
	lsl     r0, r0, #16
	str     r0, [sp, #0x3c]
.thumb
branch_21d78c6: @ 21d78c6 :thumb
	ldr     r0, [r5, #0x8]
	mov     r7, #0x0
	mov     r6, #0x1
	cmp     r0, #0x0
	bls     branch_21d796a
	mov     r0, r5
	str     r0, [sp, #0x1c]
	add     r0, #0x18
	str     r0, [sp, #0x1c]
	mov     r4, r5
.thumb
branch_21d78da: @ 21d78da :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x2
	str     r0, [sp, #0x14]
	mov     r0, #0x3
	str     r0, [sp, #0x18]
	mov     r0, #0x45
	ldr     r1, [r5, #0x14]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	ldr     r1, [sp, #0x1c]
	add     r2, sp, #0x38
	mov     r3, #0x2
	bl      Function_21d84a4
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x2
	bl      Function_2021cf8
	ldr     r0, [r4, #0x1c]
	add     r1, sp, #0x2c
	bl      Function_2021c60
	ldr     r0, [r4, #0x1c]
	add     r1, sp, #0x20
	bl      Function_2021c70
	mov     r0, #0x0
	bl      Function_201d2a4
	mov     r1, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_2021c94
	mov     r1, #0xa
	ldr     r0, [r5, #0x4]
	mul     r1, r6
	blx     _u32_div_f
	mov     r0, r1
	mov     r1, r6
	blx     _u32_div_f
	mov     r1, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_2021d6c
	ldr     r0, [r4, #0x1c]
	bl      Function_2021de0
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x38]
	add     r0, #0xc
	str     r0, [sp, #0x1c]
	mov     r0, #0xa
	mul     r6, r0
	mov     r0, #0x1
	lsl     r0, r0, #16
	sub     r0, r1, r0
	str     r0, [sp, #0x38]
	ldr     r0, [r5, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0xc
	cmp     r7, r0
	bcc     branch_21d78da
.thumb
branch_21d796a: @ 21d796a :thumb
	str     r7, [r5, #0x10]
	mov     r0, #0x1
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x21d7972


.align 2


.word 0x21d9040 @ 0x21d7974
.word 0x3e7 @ 0x21d7978
.word 0x1869f @ 0x21d797c
.word 0x2710 @ 0x21d7980
.thumb
Function_21d7984: @ 21d7984 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	ldr     r0, [r6, #0x10]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_21d79a4
	mov     r5, r6
	add     r5, #0x18
.thumb
branch_21d7994: @ 21d7994 :thumb
	mov     r0, r5
	bl      Function_21d8544
	ldr     r0, [r6, #0x10]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, r0
	blt     branch_21d7994
.thumb
branch_21d79a4: @ 21d79a4 :thumb
	pop     {r4-r6,pc}
@ 0x21d79a6


.align 2, 0


.thumb
Function_21d79a8: @ 21d79a8 :thumb
	push    {r3,lr}
	ldr     r2, [r1, #0xc]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r1, #0xc]
	cmp     r2, #0x2d
	blt     branch_21d79b8
	bl      Function_207136c
.thumb
branch_21d79b8: @ 21d79b8 :thumb
	pop     {r3,pc}
@ 0x21d79ba


.align 2, 0


.thumb
Function_21d79bc: @ 21d79bc :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x2c] @ 0x21d79f0, (=0x21d8f08)
	mov     r2, r0
	mov     r3, r1
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x20] @ 0x21d79f4, (=0x3e7)
	cmp     r3, r0
	bls     branch_21d79d8
	mov     r3, r0
.thumb
branch_21d79d8: @ 21d79d8 :thumb
	str     r2, [sp, #0x0]
	mov     r0, #0x8e
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x21d79f8, (=0x44c)
	ldr     r1, [pc, #0x18] @ 0x21d79fc, (=0x21d9268)
	ldr     r0, [r2, r0]
	add     r2, sp, #0x8
	bl      Function_2071330
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d79ee


.align 2


.word 0x21d8f08 @ 0x21d79f0
.word 0x3e7 @ 0x21d79f4
.word 0x44c @ 0x21d79f8
.word 0x21d9268 @ 0x21d79fc
.thumb
Function_21d7a00: @ 21d7a00 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r4, r0
	mov     r5, r1
	bl      Function_20715bc
	str     r0, [r5, #0x8]
	mov     r0, r4
	bl      Function_20715b4
	str     r0, [sp, #0x20]
	mov     r0, r4
	add     r1, sp, #0x24
	bl      Function_20715e4
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x64
	bcc     branch_21d7a36
	mov     r0, #0x3
	str     r0, [r5, #0x4]
	mov     r0, #0x1
	ldr     r1, [sp, #0x24]
	lsl     r0, r0, #16
	sub     r0, r1, r0
	mov     r4, #0x64
	str     r0, [sp, #0x24]
	b       branch_21d7a4e
@ 0x21d7a36

.thumb
branch_21d7a36: @ 21d7a36 :thumb
	cmp     r0, #0xa
	bcc     branch_21d7a4a
	mov     r0, #0x2
	str     r0, [r5, #0x4]
	ldr     r1, [sp, #0x24]
	lsl     r0, r0, #14
	sub     r0, r1, r0
	mov     r4, #0xa
	str     r0, [sp, #0x24]
	b       branch_21d7a4e
@ 0x21d7a4a

.thumb
branch_21d7a4a: @ 21d7a4a :thumb
	mov     r4, #0x1
	str     r4, [r5, #0x4]
.thumb
branch_21d7a4e: @ 21d7a4e :thumb
	ldr     r0, [r5, #0x4]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_21d7aca
	mov     r0, r5
	str     r0, [sp, #0x1c]
	add     r0, #0xc
	str     r0, [sp, #0x1c]
	mov     r7, r5
.thumb
branch_21d7a60: @ 21d7a60 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, #0x7
	str     r0, [sp, #0x8]
	mov     r0, #0x9
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x2
	str     r0, [sp, #0x14]
	mov     r0, #0x3
	str     r0, [sp, #0x18]
	mov     r0, #0x45
	ldr     r1, [r5, #0x8]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	ldr     r1, [sp, #0x1c]
	add     r2, sp, #0x24
	mov     r3, #0x2
	bl      Function_21d84a4
	mov     r1, #0xa
	ldr     r0, [sp, #0x20]
	mul     r1, r4
	blx     _u32_div_f
	mov     r0, r1
	mov     r1, r4
	blx     _u32_div_f
	mov     r1, r0
	ldr     r0, [r7, #0x10]
	bl      Function_2021d6c
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x24]
	add     r0, #0xc
	str     r0, [sp, #0x1c]
	mov     r0, #0x1
	lsl     r0, r0, #16
	add     r0, r1, r0
	str     r0, [sp, #0x24]
	mov     r0, r4
	mov     r1, #0xa
	add     r7, #0xc
	.hword  0x1c76 @ add r6, r6, #0x1
	blx     _u32_div_f
	mov     r4, r0
	ldr     r0, [r5, #0x4]
	cmp     r6, r0
	blt     branch_21d7a60
.thumb
branch_21d7aca: @ 21d7aca :thumb
	mov     r0, #0x1
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x21d7ad0

.thumb
Function_21d7ad0: @ 21d7ad0 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	ldr     r0, [r6, #0x4]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_21d7af0
	mov     r5, r6
	add     r5, #0xc
.thumb
branch_21d7ae0: @ 21d7ae0 :thumb
	mov     r0, r5
	bl      Function_21d8544
	ldr     r0, [r6, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, r0
	blt     branch_21d7ae0
.thumb
branch_21d7af0: @ 21d7af0 :thumb
	pop     {r4-r6,pc}
@ 0x21d7af2


.align 2, 0


.thumb
Function_21d7af4: @ 21d7af4 :thumb
	push    {r3,lr}
	ldr     r2, [r1, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r1, #0x0]
	cmp     r2, #0x3c
	blt     branch_21d7b04
	bl      Function_207136c
.thumb
branch_21d7b04: @ 21d7b04 :thumb
	pop     {r3,pc}
@ 0x21d7b06


.align 2, 0


.thumb
Function_21d7b08: @ 21d7b08 :thumb
	push    {lr}
	add     sp, #-0x14
	add     r2, sp, #0x8
	mov     r3, #0x0
	str     r3, [r2, #0x0]
	str     r3, [r2, #0x4]
	str     r3, [r2, #0x8]
	str     r0, [sp, #0x0]
	mov     r1, #0x8c
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0xc] @ 0x21d7b2c, (=0x44c)
	ldr     r0, [r0, r1]
	ldr     r1, [pc, #0xc] @ 0x21d7b30, (=0x21d91b4)
	bl      Function_2071330
	add     sp, #0x14
	pop     {pc}
@ 0x21d7b2a


.align 2


.word 0x44c @ 0x21d7b2c
.word 0x21d91b4 @ 0x21d7b30
.thumb
Function_21d7b34: @ 21d7b34 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_20715bc
	str     r0, [r4, #0x44]
	ldr     r0, [r0, #0x44]
	mov     r3, r4
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x44]
	add     r3, #0x1c
	ldr     r0, [r0, #0x48]
	mov     r1, #0x1
.thumb
branch_21d7b4c: @ 21d7b4c :thumb
	mov     r2, r0
	tst     r2, r1
	bne     branch_21d7b60
	ldr     r2, [r3, #0x0]
	lsr     r0, r0, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r3, #0x0]
	ldr     r2, [r4, #0x1c]
	cmp     r2, #0x5
	blt     branch_21d7b4c
.thumb
branch_21d7b60: @ 21d7b60 :thumb
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x5
	blt     branch_21d7b6a
	bl      ErrorHandling
.thumb
branch_21d7b6a: @ 21d7b6a :thumb
	mov     r0, r4
	bl      Function_21d7d94
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d7b74

.thumb
Function_21d7b74: @ 21d7b74 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	ldr     r0, [r7, #0x14]
	cmp     r0, #0x0
	bne     branch_21d7bb0
	mov     r5, r7
	mov     r6, #0x0
	mov     r4, r7
	add     r5, #0x20
.thumb
branch_21d7b86: @ 21d7b86 :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_21d7b92
	mov     r0, r5
	bl      Function_21d8544
.thumb
branch_21d7b92: @ 21d7b92 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	add     r5, #0xc
	cmp     r6, #0x3
	blt     branch_21d7b86
	mov     r1, #0xa
	str     r1, [sp, #0x0]
	mov     r0, #0x45
	ldr     r2, [r7, #0x44]
	lsl     r0, r0, #4
	ldr     r0, [r2, r0]
	mov     r2, #0x8
	mov     r3, r1
	bl      Function_21d8358
.thumb
branch_21d7bb0: @ 21d7bb0 :thumb
	pop     {r3-r7,pc}
@ 0x21d7bb2


.align 2, 0


.thumb
Function_21d7bb4: @ 21d7bb4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r5, r1
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x5
	bhi     branch_21d7bde
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d7bcc

Jumppoints_21d7bcc:
.hword branch_21d7bd8 - Jumppoints_21d7bcc - 2
.hword branch_21d7c52 - Jumppoints_21d7bcc - 2
.hword branch_21d7c9c - Jumppoints_21d7bcc - 2
.hword branch_21d7cb4 - Jumppoints_21d7bcc - 2
.hword branch_21d7cf8 - Jumppoints_21d7bcc - 2
.hword branch_21d7d10 - Jumppoints_21d7bcc - 2
.thumb
branch_21d7bd8: @ 21d7bd8 :thumb
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x2
	beq     branch_21d7be0
.thumb
branch_21d7bde: @ 21d7bde :thumb
	b       branch_21d7d44
@ 0x21d7be0

.thumb
branch_21d7be0: @ 21d7be0 :thumb
	mov     r4, #0x0
	mov     r7, r5
	str     r4, [sp, #0x20]
	add     r7, #0x20
	mov     r6, r5
.thumb
branch_21d7bea: @ 21d7bea :thumb
	ldr     r1, [r5, #0x1c]
	mov     r0, #0x24
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [pc, #0x154] @ 0x21d7d48, (=0x21d9424)
	add     r0, r0, r2
	add     r3, r4, r0
	add     r2, sp, #0x24
	ldmia   r3!, {r0,r1}
	mov     r12, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r3, #0x3
	str     r0, [r2, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	mov     r0, #0x45
	ldr     r1, [r5, #0x44]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, r7
	mov     r2, r12
	bl      Function_21d84a4
	ldr     r0, [r6, #0x24]
	mov     r1, #0x1
	bl      Function_2021cc8
	ldr     r0, [sp, #0x20]
	add     r4, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r7, #0xc
	add     r6, #0xc
	str     r0, [sp, #0x20]
	cmp     r0, #0x3
	blt     branch_21d7bea
	ldr     r0, [r5, #0x0]
	add     sp, #0x30
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x21d7c52

.thumb
branch_21d7c52: @ 21d7c52 :thumb
	mov     r6, #0x0
	str     r6, [sp, #0x1c]
	mov     r4, r5
	add     r7, sp, #0x24
.thumb
branch_21d7c5a: @ 21d7c5a :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, r7
	bl      Function_21d8560
	mov     r0, #0x1
	ldr     r1, [sp, #0x28]
	lsl     r0, r0, #14
	add     r1, r1, r0
	mov     r0, #0xf
	lsl     r0, r0, #16
	str     r1, [sp, #0x28]
	cmp     r1, r0
	blt     branch_21d7c78
	str     r0, [sp, #0x28]
	b       branch_21d7c7c
@ 0x21d7c78

.thumb
branch_21d7c78: @ 21d7c78 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
.thumb
branch_21d7c7c: @ 21d7c7c :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, r7
	bl      Function_2021c50
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	cmp     r6, #0x3
	blt     branch_21d7c5a
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	bne     branch_21d7d44
	ldr     r0, [r5, #0x0]
	add     sp, #0x30
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x21d7c9c

.thumb
branch_21d7c9c: @ 21d7c9c :thumb
	ldr     r0, [r5, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0xc]
	cmp     r0, #0x1e
	blt     branch_21d7d44
	mov     r0, #0x0
	str     r0, [r5, #0xc]
	ldr     r0, [r5, #0x0]
	add     sp, #0x30
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x21d7cb4

.thumb
branch_21d7cb4: @ 21d7cb4 :thumb
	ldr     r0, [r5, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0xc]
	cmp     r0, #0xc
	blt     branch_21d7cc2
	mov     r7, #0x1
	b       branch_21d7cc4
@ 0x21d7cc2

.thumb
branch_21d7cc2: @ 21d7cc2 :thumb
	mov     r7, #0x0
.thumb
branch_21d7cc4: @ 21d7cc4 :thumb
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_21d7cc8: @ 21d7cc8 :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, r7
	bl      Function_2021cac
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	cmp     r6, #0x3
	blt     branch_21d7cc8
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x1e
	blt     branch_21d7d44
	mov     r1, #0x0
	str     r1, [r5, #0xc]
	ldr     r0, [r5, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x10]
	cmp     r0, #0x3
	blt     branch_21d7d44
	str     r1, [r5, #0x10]
	ldr     r0, [r5, #0x0]
	add     sp, #0x30
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x21d7cf8

.thumb
branch_21d7cf8: @ 21d7cf8 :thumb
	ldr     r0, [r5, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0xc]
	cmp     r0, #0x1e
	blt     branch_21d7d44
	mov     r0, #0x0
	str     r0, [r5, #0xc]
	ldr     r0, [r5, #0x0]
	add     sp, #0x30
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x21d7d10

.thumb
branch_21d7d10: @ 21d7d10 :thumb
	mov     r4, r5
	mov     r6, #0x0
	add     r4, #0x20
.thumb
branch_21d7d16: @ 21d7d16 :thumb
	mov     r0, r4
	bl      Function_21d8544
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	cmp     r6, #0x3
	blt     branch_21d7d16
	mov     r1, #0xa
	str     r1, [sp, #0x0]
	mov     r0, #0x45
	ldr     r2, [r5, #0x44]
	lsl     r0, r0, #4
	ldr     r0, [r2, r0]
	mov     r2, #0x8
	mov     r3, r1
	bl      Function_21d8358
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0x1
	str     r0, [r5, #0x4]
	str     r0, [r5, #0x14]
.thumb
branch_21d7d44: @ 21d7d44 :thumb
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x21d7d48

.word 0x21d9424 @ 0x21d7d48
.thumb
Function_21d7d4c: @ 21d7d4c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, #0x45
	ldr     r1, [r4, #0x44]
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0xa
	bl      Function_21d814c
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	pop     {r3-r5,pc}
@ 0x21d7d6c

.thumb
Function_21d7d6c: @ 21d7d6c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x44]
	cmp     r0, #0x1
	bne     branch_21d7d90
	mov     r0, #0x45
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	mov     r1, #0xa
	bl      Function_21d8180
	mov     r0, #0x2
	str     r0, [r4, #0x8]
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_21d7d90: @ 21d7d90 :thumb
	pop     {r3-r5,pc}
@ 0x21d7d92


.align 2, 0


.thumb
Function_21d7d94: @ 21d7d94 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	ldr     r4, [r5, #0x44]
	cmp     r0, #0x0
	bne     branch_21d7ddc
	mov     r2, #0x45
	mov     r0, #0xa
	lsl     r2, r2, #4
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	mov     r1, #0x3
	mov     r3, #0xe
	bl      Function_21d80e4
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0xf
	mov     r3, #0xa
	bl      Function_21d8288
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0x10
	mov     r3, #0xa
	bl      Function_21d82f0
	b       branch_21d7e16
@ 0x21d7ddc

.thumb
branch_21d7ddc: @ 21d7ddc :thumb
	mov     r2, #0x45
	mov     r0, #0xa
	lsl     r2, r2, #4
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r2]
	sub     r2, #0x18
	ldr     r2, [r4, r2]
	mov     r1, #0x3
	mov     r3, #0x11
	bl      Function_21d80e4
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0x12
	mov     r3, #0xa
	bl      Function_21d8288
	mov     r1, #0x45
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r1, [r4, r1]
	mov     r2, #0x13
	mov     r3, #0xa
	bl      Function_21d82f0
.thumb
branch_21d7e16: @ 21d7e16 :thumb
	ldr     r0, [pc, #0x24] @ 0x21d7e3c, (=0x21d7d4d)
	ldr     r2, [pc, #0x24] @ 0x21d7e40, (=0x101)
	mov     r1, r5
	bl      AddTaskToTaskList2
	cmp     r0, #0x0
	bne     branch_21d7e28
	bl      ErrorHandling
.thumb
branch_21d7e28: @ 21d7e28 :thumb
	ldr     r0, [pc, #0x18] @ 0x21d7e44, (=0x21d7d6d)
	ldr     r2, [pc, #0x14] @ 0x21d7e40, (=0x101)
	mov     r1, r5
	bl      AddTaskToTaskList3
	cmp     r0, #0x0
	bne     branch_21d7e3a
	bl      ErrorHandling
.thumb
branch_21d7e3a: @ 21d7e3a :thumb
	pop     {r3-r5,pc}
@ 0x21d7e3c

.word 0x21d7d4d @ 0x21d7e3c
.word 0x101 @ 0x21d7e40
.word 0x21d7d6d @ 0x21d7e44
.thumb
Function_21d7e48: @ 21d7e48 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x28]
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x28]
	mov     r1, #0x57
	lsl     r1, r1, #2
	str     r2, [sp, #0x8]
	mov     r7, r3
	ldr     r5, [sp, #0x20]
	ldr     r6, [sp, #0x24]
	bl      malloc
	mov     r4, r0
	bne     branch_21d7e6c
	bl      ErrorHandling
.thumb
branch_21d7e6c: @ 21d7e6c :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	str     r0, [r4, #0x0]
	strb    r7, [r4, #0x4]
	strb    r5, [r4, #0x5]
	ldr     r0, [sp, #0x28]
	strb    r6, [r4, #0x6]
	strb    r0, [r4, #0x7]
	ldr     r0, [sp, #0x2c]
	ldr     r2, [sp, #0x0]
	strb    r0, [r4, #0x8]
	ldr     r0, [sp, #0x30]
	add     r1, #0x10
	strb    r0, [r4, #0x9]
	ldr     r0, [sp, #0x34]
	strb    r0, [r4, #0xa]
	ldr     r0, [sp, #0x38]
	strb    r0, [r4, #0xb]
	ldr     r0, [sp, #0x4]
	bl      Function_20095c4
	str     r0, [r4, #0xc]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x0]
	bl      Function_201dcc8
	mov     r1, #0x4e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x0]
	bl      Function_201dbec
	ldr     r2, [sp, #0x0]
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_2009714
	mov     r1, #0x4f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2009714
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	ldr     r2, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_2009714
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [sp, #0x28]
	ldr     r2, [sp, #0x0]
	mov     r1, #0x3
	bl      Function_2009714
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [sp, #0x0]
	lsl     r1, r7, #3
	bl      malloc
	mov     r1, #0x53
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [sp, #0x0]
	lsl     r1, r5, #3
	bl      malloc
	mov     r1, #0x15
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r0, [sp, #0x0]
	lsl     r1, r6, #3
	bl      malloc
	mov     r1, #0x55
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r1, [sp, #0x28]
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #3
	bl      malloc
	mov     r1, #0x56
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r1, #0x0
	cmp     r7, #0x0
	bls     branch_21d7f48
	bls     branch_21d7f48
	ldr     r0, [sp, #0x2c]
	mov     r2, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
.thumb
branch_21d7f38: @ 21d7f38 :thumb
	mov     r3, #0x53
	lsl     r3, r3, #2
	ldr     r3, [r4, r3]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r0, [r3, r2]
	add     r2, #0x8
	cmp     r1, r7
	bcc     branch_21d7f38
.thumb
branch_21d7f48: @ 21d7f48 :thumb
	mov     r3, #0x0
	cmp     r5, #0x0
	bls     branch_21d7f68
	bls     branch_21d7f68
	ldr     r0, [sp, #0x30]
	mov     r7, #0x15
	lsl     r0, r0, #16
	mov     r2, r3
	lsr     r1, r0, #16
	lsl     r7, r7, #4
.thumb
branch_21d7f5c: @ 21d7f5c :thumb
	ldr     r0, [r4, r7]
	.hword  0x1c5b @ add r3, r3, #0x1
	strh    r1, [r0, r2]
	add     r2, #0x8
	cmp     r3, r5
	bcc     branch_21d7f5c
.thumb
branch_21d7f68: @ 21d7f68 :thumb
	mov     r1, #0x0
	cmp     r6, #0x0
	bls     branch_21d7f88
	bls     branch_21d7f88
	ldr     r2, [sp, #0x34]
	mov     r0, r1
	lsl     r2, r2, #16
	lsr     r5, r2, #16
	mov     r2, #0x55
	lsl     r2, r2, #2
.thumb
branch_21d7f7c: @ 21d7f7c :thumb
	ldr     r3, [r4, r2]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r5, [r3, r0]
	add     r0, #0x8
	cmp     r1, r6
	bcc     branch_21d7f7c
.thumb
branch_21d7f88: @ 21d7f88 :thumb
	ldr     r0, [sp, #0x28]
	mov     r1, #0x0
	cmp     r0, #0x0
	bls     branch_21d7fac
	bls     branch_21d7fac
	ldr     r2, [sp, #0x38]
	mov     r3, #0x56
	lsl     r2, r2, #16
	mov     r0, r1
	lsr     r5, r2, #16
	lsl     r3, r3, #2
.thumb
branch_21d7f9e: @ 21d7f9e :thumb
	ldr     r2, [r4, r3]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r5, [r2, r0]
	ldr     r2, [sp, #0x28]
	add     r0, #0x8
	cmp     r1, r2
	bcc     branch_21d7f9e
.thumb
branch_21d7fac: @ 21d7fac :thumb
	mov     r0, r4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d7fb2


.align 2, 0


.thumb
Function_21d7fb4: @ 21d7fb4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x4]
	mov     r6, #0x0
	cmp     r0, #0x0
	bls     branch_21d7fe2
	mov     r7, #0x53
	mov     r4, r6
	lsl     r7, r7, #2
.thumb
branch_21d7fc6: @ 21d7fc6 :thumb
	ldr     r1, [r5, r7]
	ldrb    r2, [r5, #0x8]
	add     r0, r1, r4
	ldrh    r1, [r1, r4]
	cmp     r2, r1
	beq     branch_21d7fd8
	ldr     r0, [r0, #0x4]
	bl      Function_200a4e4
.thumb
branch_21d7fd8: @ 21d7fd8 :thumb
	ldrb    r0, [r5, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r0
	bcc     branch_21d7fc6
.thumb
branch_21d7fe2: @ 21d7fe2 :thumb
	ldrb    r0, [r5, #0x5]
	mov     r6, #0x0
	cmp     r0, #0x0
	bls     branch_21d800c
	mov     r7, #0x15
	mov     r4, r6
	lsl     r7, r7, #4
.thumb
branch_21d7ff0: @ 21d7ff0 :thumb
	ldr     r1, [r5, r7]
	ldrb    r2, [r5, #0x9]
	add     r0, r1, r4
	ldrh    r1, [r1, r4]
	cmp     r2, r1
	beq     branch_21d8002
	ldr     r0, [r0, #0x4]
	bl      Function_200a6dc
.thumb
branch_21d8002: @ 21d8002 :thumb
	ldrb    r0, [r5, #0x5]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r0
	bcc     branch_21d7ff0
.thumb
branch_21d800c: @ 21d800c :thumb
	ldrb    r0, [r5, #0x6]
	mov     r6, #0x0
	cmp     r0, #0x0
	bls     branch_21d8036
	mov     r7, #0x55
	mov     r4, r6
	lsl     r7, r7, #2
.thumb
branch_21d801a: @ 21d801a :thumb
	ldr     r1, [r5, r7]
	ldrb    r2, [r5, #0xa]
	add     r0, r1, r4
	ldrh    r1, [r1, r4]
	cmp     r2, r1
	beq     branch_21d802c
	ldr     r0, [r0, #0x4]
	bl      Function_2009d4c
.thumb
branch_21d802c: @ 21d802c :thumb
	ldrb    r0, [r5, #0x6]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r0
	bcc     branch_21d801a
.thumb
branch_21d8036: @ 21d8036 :thumb
	ldrb    r0, [r5, #0x7]
	mov     r6, #0x0
	cmp     r0, #0x0
	bls     branch_21d8060
	mov     r7, #0x56
	mov     r4, r6
	lsl     r7, r7, #2
.thumb
branch_21d8044: @ 21d8044 :thumb
	ldr     r1, [r5, r7]
	ldrb    r2, [r5, #0xb]
	add     r0, r1, r4
	ldrh    r1, [r1, r4]
	cmp     r2, r1
	beq     branch_21d8056
	ldr     r0, [r0, #0x4]
	bl      Function_2009d4c
.thumb
branch_21d8056: @ 21d8056 :thumb
	ldrb    r0, [r5, #0x7]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r0
	bcc     branch_21d8044
.thumb
branch_21d8060: @ 21d8060 :thumb
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2009754
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	bl      Function_2009754
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2009754
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2009754
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      free
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      free
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      free
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      free
	bl      Function_201dc3c
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Call_free4
	ldr     r0, [r5, #0xc]
	bl      Function_20219c0
	ldr     r0, [r5, #0xc]
	bl      Function_2021964
	mov     r0, r5
	bl      free
	pop     {r3-r7,pc}
@ 0x21d80d2


.align 2, 0


.thumb
Function_21d80d4: @ 21d80d4 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      Function_20219f8
	bl      Function_201dce8
	pop     {r3,pc}
@ 0x21d80e2


.align 2, 0


.thumb
Function_21d80e4: @ 21d80e4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldrb    r5, [r4, #0x4]
	mov     r7, r1
	mov     r1, #0x0
	str     r2, [sp, #0xc]
	mov     r12, r3
	cmp     r5, #0x0
	bls     branch_21d8144
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r6, [r4, r0]
	ldrb    r3, [r4, #0x8]
	mov     r2, r6
.thumb
branch_21d8102: @ 21d8102 :thumb
	ldrh    r0, [r2, #0x0]
	cmp     r3, r0
	bne     branch_21d813c
	ldr     r0, [sp, #0x28]
	lsl     r5, r1, #3
	mov     r1, #0x53
	strh    r0, [r6, r5]
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	mov     r3, #0x0
	add     r2, r2, r5
	strh    r3, [r2, #0x2]
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	sub     r1, #0x10
	str     r0, [sp, #0x8]
	ldr     r0, [r4, r1]
	ldr     r1, [sp, #0xc]
	mov     r2, r12
	bl      Function_2009a4c
	mov     r1, #0x53
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	add     sp, #0x10
	add     r1, r1, r5
	str     r0, [r1, #0x4]
	pop     {r3-r7,pc}
@ 0x21d813c

.thumb
branch_21d813c: @ 21d813c :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x8
	cmp     r1, r5
	bcc     branch_21d8102
.thumb
branch_21d8144: @ 21d8144 :thumb
	bl      ErrorHandling
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d814c

.thumb
Function_21d814c: @ 21d814c :thumb
	push    {r3-r5,lr}
	ldrb    r2, [r0, #0x4]
	mov     r4, #0x0
	cmp     r2, #0x0
	bls     branch_21d8178
	mov     r3, #0x53
	lsl     r3, r3, #2
	ldr     r5, [r0, r3]
	mov     r3, r5
.thumb
branch_21d815e: @ 21d815e :thumb
	ldrh    r0, [r3, #0x0]
	cmp     r1, r0
	bne     branch_21d8170
	lsl     r0, r4, #3
	add     r0, r5, r0
	ldr     r0, [r0, #0x4]
	bl      Function_200a3dc
	pop     {r3-r5,pc}
@ 0x21d8170

.thumb
branch_21d8170: @ 21d8170 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r3, #0x8
	cmp     r4, r2
	bcc     branch_21d815e
.thumb
branch_21d8178: @ 21d8178 :thumb
	bl      ErrorHandling
	pop     {r3-r5,pc}
@ 0x21d817e


.align 2, 0


.thumb
Function_21d8180: @ 21d8180 :thumb
	push    {r3-r5,lr}
	ldrb    r2, [r0, #0x4]
	mov     r4, #0x0
	cmp     r2, #0x0
	bls     branch_21d81ac
	mov     r3, #0x53
	lsl     r3, r3, #2
	ldr     r5, [r0, r3]
	mov     r3, r5
.thumb
branch_21d8192: @ 21d8192 :thumb
	ldrh    r0, [r3, #0x0]
	cmp     r1, r0
	bne     branch_21d81a4
	lsl     r0, r4, #3
	add     r0, r5, r0
	ldr     r0, [r0, #0x4]
	bl      Function_2009d4c
	pop     {r3-r5,pc}
@ 0x21d81a4

.thumb
branch_21d81a4: @ 21d81a4 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r3, #0x8
	cmp     r4, r2
	bcc     branch_21d8192
.thumb
branch_21d81ac: @ 21d81ac :thumb
	bl      ErrorHandling
	pop     {r3-r5,pc}
@ 0x21d81b2


.align 2, 0


.thumb
Function_21d81b4: @ 21d81b4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldrb    r5, [r4, #0x4]
	mov     r7, r1
	mov     r1, #0x0
	str     r2, [sp, #0x10]
	mov     r12, r3
	cmp     r5, #0x0
	bls     branch_21d8218
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r6, [r4, r0]
	ldrb    r3, [r4, #0x9]
	mov     r2, r6
.thumb
branch_21d81d2: @ 21d81d2 :thumb
	ldrh    r0, [r2, #0x0]
	cmp     r3, r0
	bne     branch_21d8210
	ldr     r0, [sp, #0x28]
	lsl     r5, r1, #3
	mov     r1, #0x15
	strh    r0, [r6, r5]
	lsl     r1, r1, #4
	ldr     r2, [r4, r1]
	mov     r3, #0x0
	add     r2, r2, r5
	strh    r3, [r2, #0x2]
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	sub     r1, #0x10
	str     r0, [sp, #0xc]
	ldr     r0, [r4, r1]
	ldr     r1, [sp, #0x10]
	mov     r2, r12
	bl      Function_2009b04
	mov     r1, #0x15
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	add     sp, #0x14
	add     r1, r1, r5
	str     r0, [r1, #0x4]
	pop     {r4-r7,pc}
@ 0x21d8210

.thumb
branch_21d8210: @ 21d8210 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x8
	cmp     r1, r5
	bcc     branch_21d81d2
.thumb
branch_21d8218: @ 21d8218 :thumb
	bl      ErrorHandling
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d8220

.thumb
Function_21d8220: @ 21d8220 :thumb
	push    {r3-r5,lr}
	ldrb    r2, [r0, #0x5]
	mov     r4, #0x0
	cmp     r2, #0x0
	bls     branch_21d824c
	mov     r3, #0x15
	lsl     r3, r3, #4
	ldr     r5, [r0, r3]
	mov     r3, r5
.thumb
branch_21d8232: @ 21d8232 :thumb
	ldrh    r0, [r3, #0x0]
	cmp     r1, r0
	bne     branch_21d8244
	lsl     r0, r4, #3
	add     r0, r5, r0
	ldr     r0, [r0, #0x4]
	bl      Function_200a640
	pop     {r3-r5,pc}
@ 0x21d8244

.thumb
branch_21d8244: @ 21d8244 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r3, #0x8
	cmp     r4, r2
	bcc     branch_21d8232
.thumb
branch_21d824c: @ 21d824c :thumb
	bl      ErrorHandling
	pop     {r3-r5,pc}
@ 0x21d8252


.align 2, 0


.thumb
Function_21d8254: @ 21d8254 :thumb
	push    {r3-r5,lr}
	ldrb    r2, [r0, #0x5]
	mov     r4, #0x0
	cmp     r2, #0x0
	bls     branch_21d8280
	mov     r3, #0x15
	lsl     r3, r3, #4
	ldr     r5, [r0, r3]
	mov     r3, r5
.thumb
branch_21d8266: @ 21d8266 :thumb
	ldrh    r0, [r3, #0x0]
	cmp     r1, r0
	bne     branch_21d8278
	lsl     r0, r4, #3
	add     r0, r5, r0
	ldr     r0, [r0, #0x4]
	bl      Function_2009d4c
	pop     {r3-r5,pc}
@ 0x21d8278

.thumb
branch_21d8278: @ 21d8278 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r3, #0x8
	cmp     r4, r2
	bcc     branch_21d8266
.thumb
branch_21d8280: @ 21d8280 :thumb
	bl      ErrorHandling
	pop     {r3-r5,pc}
@ 0x21d8286


.align 2, 0


.thumb
Function_21d8288: @ 21d8288 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldrb    r5, [r4, #0x4]
	str     r1, [sp, #0xc]
	mov     r12, r2
	mov     r6, r3
	mov     r1, #0x0
	cmp     r5, #0x0
	bls     branch_21d82e8
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r7, [r4, r0]
	ldrb    r3, [r4, #0xa]
	mov     r2, r7
.thumb
branch_21d82a6: @ 21d82a6 :thumb
	ldrh    r0, [r2, #0x0]
	cmp     r3, r0
	bne     branch_21d82e0
	lsl     r5, r1, #3
	mov     r0, #0x55
	strh    r6, [r7, r5]
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	mov     r3, #0x0
	add     r1, r1, r5
	strh    r3, [r1, #0x2]
	str     r6, [sp, #0x0]
	mov     r1, #0x2
	str     r1, [sp, #0x4]
	ldr     r1, [r4, #0x0]
	sub     r0, #0x10
	str     r1, [sp, #0x8]
	ldr     r0, [r4, r0]
	ldr     r1, [sp, #0xc]
	mov     r2, r12
	bl      Function_2009bc4
	mov     r1, #0x55
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	add     sp, #0x10
	add     r1, r1, r5
	str     r0, [r1, #0x4]
	pop     {r3-r7,pc}
@ 0x21d82e0

.thumb
branch_21d82e0: @ 21d82e0 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x8
	cmp     r1, r5
	bcc     branch_21d82a6
.thumb
branch_21d82e8: @ 21d82e8 :thumb
	bl      ErrorHandling
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d82f0

.thumb
Function_21d82f0: @ 21d82f0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldrb    r5, [r4, #0x4]
	str     r1, [sp, #0xc]
	mov     r12, r2
	mov     r6, r3
	mov     r1, #0x0
	cmp     r5, #0x0
	bls     branch_21d8350
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r7, [r4, r0]
	ldrb    r3, [r4, #0xb]
	mov     r2, r7
.thumb
branch_21d830e: @ 21d830e :thumb
	ldrh    r0, [r2, #0x0]
	cmp     r3, r0
	bne     branch_21d8348
	lsl     r5, r1, #3
	mov     r0, #0x56
	strh    r6, [r7, r5]
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	mov     r3, #0x0
	add     r1, r1, r5
	strh    r3, [r1, #0x2]
	str     r6, [sp, #0x0]
	mov     r1, #0x3
	str     r1, [sp, #0x4]
	ldr     r1, [r4, #0x0]
	sub     r0, #0x10
	str     r1, [sp, #0x8]
	ldr     r0, [r4, r0]
	ldr     r1, [sp, #0xc]
	mov     r2, r12
	bl      Function_2009bc4
	mov     r1, #0x56
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	add     sp, #0x10
	add     r1, r1, r5
	str     r0, [r1, #0x4]
	pop     {r3-r7,pc}
@ 0x21d8348

.thumb
branch_21d8348: @ 21d8348 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x8
	cmp     r1, r5
	bcc     branch_21d830e
.thumb
branch_21d8350: @ 21d8350 :thumb
	bl      ErrorHandling
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d8358

.thumb
Function_21d8358: @ 21d8358 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, r1
	ldrb    r1, [r4, #0x8]
	mov     r7, r2
	str     r3, [sp, #0x0]
	ldr     r6, [sp, #0x20]
	cmp     r0, r1
	beq     branch_21d83b4
	ldrb    r5, [r4, #0x4]
	mov     r2, #0x0
	cmp     r5, #0x0
	bls     branch_21d83b4
	mov     r1, #0x53
	lsl     r1, r1, #2
	ldr     r3, [r4, r1]
	mov     r12, r3
.thumb
branch_21d837c: @ 21d837c :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_21d83ac
	lsl     r5, r2, #3
	mov     r0, r12
	add     r0, r0, r5
	ldr     r0, [r0, #0x4]
	bl      Function_200a4e4
	mov     r1, #0x4f
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0x10
	ldr     r1, [r4, r1]
	add     r1, r1, r5
	ldr     r1, [r1, #0x4]
	bl      Function_2009d68
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0x8]
	ldr     r0, [r4, r0]
	strh    r1, [r0, r5]
	b       branch_21d83b4
@ 0x21d83ac

.thumb
branch_21d83ac: @ 21d83ac :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x8
	cmp     r2, r5
	bcc     branch_21d837c
.thumb
branch_21d83b4: @ 21d83b4 :thumb
	ldrb    r0, [r4, #0x9]
	cmp     r7, r0
	beq     branch_21d8402
	ldrb    r0, [r4, #0x5]
	mov     r1, #0x0
	cmp     r0, #0x0
	bls     branch_21d8402
	mov     r2, #0x15
	lsl     r2, r2, #4
	ldr     r3, [r4, r2]
	str     r3, [sp, #0x4]
.thumb
branch_21d83ca: @ 21d83ca :thumb
	ldrh    r2, [r3, #0x0]
	cmp     r7, r2
	bne     branch_21d83fa
	ldr     r0, [sp, #0x4]
	lsl     r5, r1, #3
	add     r0, r0, r5
	ldr     r0, [r0, #0x4]
	bl      Function_200a6dc
	mov     r1, #0x5
	lsl     r1, r1, #6
	ldr     r0, [r4, r1]
	add     r1, #0x10
	ldr     r1, [r4, r1]
	add     r1, r1, r5
	ldr     r1, [r1, #0x4]
	bl      Function_2009d68
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r4, r0]
	strh    r1, [r0, r5]
	b       branch_21d8402
@ 0x21d83fa

.thumb
branch_21d83fa: @ 21d83fa :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r3, #0x8
	cmp     r1, r0
	bcc     branch_21d83ca
.thumb
branch_21d8402: @ 21d8402 :thumb
	ldrb    r1, [r4, #0xa]
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	beq     branch_21d8452
	ldrb    r3, [r4, #0x6]
	mov     r5, #0x0
	cmp     r3, #0x0
	bls     branch_21d8452
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r7, [r4, r0]
	mov     r2, r7
.thumb
branch_21d841a: @ 21d841a :thumb
	ldrh    r1, [r2, #0x0]
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	bne     branch_21d844a
	lsl     r5, r5, #3
	add     r0, r7, r5
	ldr     r0, [r0, #0x4]
	bl      Function_2009d4c
	mov     r1, #0x51
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0x10
	ldr     r1, [r4, r1]
	add     r1, r1, r5
	ldr     r1, [r1, #0x4]
	bl      Function_2009d68
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0xa]
	ldr     r0, [r4, r0]
	strh    r1, [r0, r5]
	b       branch_21d8452
@ 0x21d844a

.thumb
branch_21d844a: @ 21d844a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r2, #0x8
	cmp     r5, r3
	bcc     branch_21d841a
.thumb
branch_21d8452: @ 21d8452 :thumb
	ldrb    r0, [r4, #0xb]
	cmp     r6, r0
	beq     branch_21d84a0
	ldrb    r1, [r4, #0x7]
	mov     r2, #0x0
	cmp     r1, #0x0
	bls     branch_21d84a0
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r5, r0
.thumb
branch_21d8468: @ 21d8468 :thumb
	ldrh    r3, [r5, #0x0]
	cmp     r6, r3
	bne     branch_21d8498
	lsl     r5, r2, #3
	add     r0, r0, r5
	ldr     r0, [r0, #0x4]
	bl      Function_2009d4c
	mov     r1, #0x52
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0x10
	ldr     r1, [r4, r1]
	add     r1, r1, r5
	ldr     r1, [r1, #0x4]
	bl      Function_2009d68
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0xb]
	ldr     r0, [r4, r0]
	add     sp, #0x8
	strh    r1, [r0, r5]
	pop     {r3-r7,pc}
@ 0x21d8498

.thumb
branch_21d8498: @ 21d8498 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r5, #0x8
	cmp     r2, r1
	bcc     branch_21d8468
.thumb
branch_21d84a0: @ 21d84a0 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d84a4

.thumb
Function_21d84a4: @ 21d84a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x70
	mov     r5, r0
	ldrb    r0, [r5, #0xb]
	mov     r4, r1
	ldr     r1, [sp, #0x98]
	mov     r6, r2
	mov     r7, r3
	cmp     r1, r0
	bne     branch_21d84be
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x98]
.thumb
branch_21d84be: @ 21d84be :thumb
	ldr     r0, [sp, #0x98]
	mov     r1, #0x4f
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x88]
	lsl     r1, r1, #2
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x9c]
	ldr     r2, [sp, #0x90]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, r1]
	ldr     r3, [sp, #0x94]
	str     r0, [sp, #0x14]
	add     r0, r1, #0x4
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x18]
	mov     r0, r1
	add     r0, #0x8
	ldr     r0, [r5, r0]
	add     r1, #0xc
	str     r0, [sp, #0x1c]
	ldr     r0, [r5, r1]
	ldr     r1, [sp, #0x8c]
	str     r0, [sp, #0x20]
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, sp, #0x4c
	bl      Function_20093b4
	ldr     r0, [sp, #0x88]
	cmp     r0, #0x1
	bne     branch_21d850e
	ldr     r0, [sp, #0x4c]
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	b       branch_21d8510
@ 0x21d850e

.thumb
branch_21d850e: @ 21d850e :thumb
	mov     r0, #0x0
.thumb
branch_21d8510: @ 21d8510 :thumb
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0xc]
	add     r2, sp, #0x34
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x4c
	str     r0, [sp, #0x30]
	ldmia   r6!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0xa0]
	str     r7, [sp, #0x44]
	str     r0, [sp, #0x40]
	ldr     r0, [r5, #0x0]
	str     r0, [sp, #0x48]
	add     r0, sp, #0x2c
	bl      Function_2021b90
	str     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_21d853e
	bl      ErrorHandling
.thumb
branch_21d853e: @ 21d853e :thumb
	add     sp, #0x70
	pop     {r3-r7,pc}
@ 0x21d8542


.align 2, 0


.thumb
Function_21d8544: @ 21d8544 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_21d8554
	ldr     r0, [r4, #0x8]
	bl      Function_200a5b4
.thumb
branch_21d8554: @ 21d8554 :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2021bd4
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x21d8560

.thumb
Function_21d8560: @ 21d8560 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_2021d28
	mov     r2, r0
	ldmia   r2!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d8574

.thumb
Function_21d8574: @ 21d8574 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_2021d2c
	mov     r2, r0
	ldmia   r2!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r4, #0x0]
	pop     {r4,pc}



Unknown_21d8588: @ 0x21d8588
.incbin "./baserom/overlay/overlay_0101.bin", 0x7808, 0x21d8648 - 0x21d8588


.word Function_21d48a8+1 @ =0x21d48a9, 0x21d8648
.word Function_21d4c20+1 @ =0x21d4c21, 0x21d864c
.word Function_21d48a8+1 @ =0x21d48a9, 0x21d8650
.word Function_21d4afc+1 @ =0x21d4afd, 0x21d8654
.word Function_21d48a8+1 @ =0x21d48a9, 0x21d8658
.word Function_21d4c04+1 @ =0x21d4c05, 0x21d865c
.word Function_21d48a8+1 @ =0x21d48a9, 0x21d8660
.word Function_21d4be8+1 @ =0x21d4be9, 0x21d8664
.word Function_21d48a8+1 @ =0x21d48a9, 0x21d8668
.word 0x800 @ 0x21d866c
.word 0x2 @ 0x21d8670
.word 0x1 @ 0x21d8674
.word Function_21d48ac+1 @ =0x21d48ad, 0x21d8678
.word Function_21d48c4+1 @ =0x21d48c5, 0x21d867c
.word Function_21d48a8+1 @ =0x21d48a9, 0x21d8680
.word Function_21d4a8c+1 @ =0x21d4a8d, 0x21d8684
.word Function_21d4ab8+1 @ =0x21d4ab9, 0x21d8688
.word Function_21d48a8+1 @ =0x21d48a9, 0x21d868c
.word Function_21d4844+1 @ =0x21d4845, 0x21d8690
.word Function_21d485c+1 @ =0x21d485d, 0x21d8694
.word Function_21d4880+1 @ =0x21d4881, 0x21d8698
.word Function_21d48a8+1 @ =0x21d48a9, 0x21d869c
.word Function_21d4a10+1 @ =0x21d4a11, 0x21d86a0
.word Function_21d4a30+1 @ =0x21d4a31, 0x21d86a4
.word Function_21d4a5c+1 @ =0x21d4a5d, 0x21d86a8
.word Function_21d48a8+1 @ =0x21d48a9, 0x21d86ac
.word 0x24 @ 0x21d86b0
.word Function_21d5068+1 @ =0x21d5069, 0x21d86b4
.word Function_21d508c+1 @ =0x21d508d, 0x21d86b8
.word Function_21d5098+1 @ =0x21d5099, 0x21d86bc
.word Function_20715fc+1 @ 0x21d86c0
.word Function_21d2c30+1 @ =0x21d2c31, 0x21d86c4
.word Function_21d2c34+1 @ =0x21d2c35, 0x21d86c8
.word Function_21d2c4c+1 @ =0x21d2c4d, 0x21d86cc
.word Function_21d2ca8+1 @ =0x21d2ca9, 0x21d86d0
.word Function_21d2d50+1 @ =0x21d2d51, 0x21d86d4
.word 0x4000 @ 0x21d86d8
.word 0x8000 @ 0x21d86dc
.word 0x8000 @ 0x21d86e0
.word 0x8000 @ 0x21d86e4
.word 0x10000 @ 0x21d86e8
.word Function_21d4978+1 @ =0x21d4979, 0x21d86ec
.word Function_21d4998+1 @ =0x21d4999, 0x21d86f0
.word Function_21d49cc+1 @ =0x21d49cd, 0x21d86f4
.word Function_21d49ec+1 @ =0x21d49ed, 0x21d86f8
.word Function_21d48a8+1 @ =0x21d48a9, 0x21d86fc
.word 0x30 @ 0x21d8700
.word Function_21d5388+1 @ =0x21d5389, 0x21d8704
.word Function_21d53a0+1 @ =0x21d53a1, 0x21d8708
.word Function_21d53a4+1 @ =0x21d53a5, 0x21d870c
.word Function_20715fc+1 @ 0x21d8710
.word Function_21d48e8+1 @ =0x21d48e9, 0x21d8714
.word Function_21d4900+1 @ =0x21d4901, 0x21d8718
.word Function_21d492c+1 @ =0x21d492d, 0x21d871c
.word Function_21d4954+1 @ =0x21d4955, 0x21d8720
.word Function_21d48a8+1 @ =0x21d48a9, 0x21d8724
.word Function_21d4b14+1 @ =0x21d4b15, 0x21d8728
.word Function_21d4b38+1 @ =0x21d4b39, 0x21d872c
.word Function_21d4b6c+1 @ =0x21d4b6d, 0x21d8730
.word Function_21d4ba0+1 @ =0x21d4ba1, 0x21d8734
.word Function_21d4bc4+1 @ =0x21d4bc5, 0x21d8738
.word Function_21d48a8+1 @ =0x21d48a9, 0x21d873c

.incbin "./baserom/overlay/overlay_0101.bin", 0x79c0, 0x21d8758 - 0x21d8740


.word Function_21d4c3c+1 @ =0x21d4c3d, 0x21d8758
.word Function_21d4c60+1 @ =0x21d4c61, 0x21d875c
.word Function_21d4c98+1 @ =0x21d4c99, 0x21d8760
.word Function_21d4cbc+1 @ =0x21d4cbd, 0x21d8764
.word Function_21d4cec+1 @ =0x21d4ced, 0x21d8768
.word Function_21d4d14+1 @ =0x21d4d15, 0x21d876c
.word Function_21d48a8+1 @ =0x21d48a9, 0x21d8770

.incbin "./baserom/overlay/overlay_0101.bin", 0x79f4, 0x21d8838 - 0x21d8774


.word Function_21d1ad0+1 @ =0x21d1ad1, 0x21d8838
.word Function_21d1b40+1 @ =0x21d1b41, 0x21d883c
.word Function_21d1b9c+1 @ =0x21d1b9d, 0x21d8840
.word Function_21d1bd0+1 @ =0x21d1bd1, 0x21d8844
.word Function_21d1c9c+1 @ =0x21d1c9d, 0x21d8848
.word Function_21d1cbc+1 @ =0x21d1cbd, 0x21d884c
.word Function_21d1db4+1 @ =0x21d1db5, 0x21d8850
.word Function_21d1dec+1 @ =0x21d1ded, 0x21d8854
.word Function_21d1e54+1 @ =0x21d1e55, 0x21d8858
.word Function_21d1e68+1 @ =0x21d1e69, 0x21d885c
.word Function_21d1e84+1 @ =0x21d1e85, 0x21d8860
.word Function_21d1e9c+1 @ =0x21d1e9d, 0x21d8864
.word Function_21d1ebc+1 @ =0x21d1ebd, 0x21d8868
.word Function_21d1eec+1 @ =0x21d1eed, 0x21d886c
.word Function_21d1f34+1 @ =0x21d1f35, 0x21d8870
.word Function_21d1f54+1 @ =0x21d1f55, 0x21d8874
.word Function_21d1fa0+1 @ =0x21d1fa1, 0x21d8878
.word Function_21d1fc8+1 @ =0x21d1fc9, 0x21d887c
.word Function_21d1ff4+1 @ =0x21d1ff5, 0x21d8880
.word Function_21d200c+1 @ =0x21d200d, 0x21d8884
.word Function_21d203c+1 @ =0x21d203d, 0x21d8888
.word Function_21d2088+1 @ =0x21d2089, 0x21d888c
.word Function_21d20b0+1 @ =0x21d20b1, 0x21d8890
.word Function_21d20fc+1 @ =0x21d20fd, 0x21d8894
.word Function_21d2114+1 @ =0x21d2115, 0x21d8898
.word Function_21d212c+1 @ =0x21d212d, 0x21d889c
.word Function_21d2198+1 @ =0x21d2199, 0x21d88a0
.word Function_21d21f4+1 @ =0x21d21f5, 0x21d88a4
.word Function_21d2228+1 @ =0x21d2229, 0x21d88a8
.word Function_21d22d0+1 @ =0x21d22d1, 0x21d88ac
.word Function_21d22f0+1 @ =0x21d22f1, 0x21d88b0
.word Function_21d23e8+1 @ =0x21d23e9, 0x21d88b4
.word Function_21d2420+1 @ =0x21d2421, 0x21d88b8
.word Function_21d2464+1 @ =0x21d2465, 0x21d88bc
.word Function_21d2480+1 @ =0x21d2481, 0x21d88c0
.word Function_21d24a0+1 @ =0x21d24a1, 0x21d88c4
.word Function_21d24d0+1 @ =0x21d24d1, 0x21d88c8
.word Function_21d24f0+1 @ =0x21d24f1, 0x21d88cc
.word Function_21d2510+1 @ =0x21d2511, 0x21d88d0
.word Function_21d254c+1 @ =0x21d254d, 0x21d88d4
.word Function_21d2598+1 @ =0x21d2599, 0x21d88d8
.word Function_21d25c4+1 @ =0x21d25c5, 0x21d88dc
.word Function_21d25dc+1 @ =0x21d25dd, 0x21d88e0
.word Function_21d2628+1 @ =0x21d2629, 0x21d88e4
.word Function_21d269c+1 @ =0x21d269d, 0x21d88e8
.word Function_21d2704+1 @ =0x21d2705, 0x21d88ec
.word Function_21d2738+1 @ =0x21d2739, 0x21d88f0
.word Function_21d2828+1 @ =0x21d2829, 0x21d88f4
.word Function_21d2850+1 @ =0x21d2851, 0x21d88f8
.word Function_21d2950+1 @ =0x21d2951, 0x21d88fc
.word Function_21d2988+1 @ =0x21d2989, 0x21d8900
.word Function_21d29c0+1 @ =0x21d29c1, 0x21d8904
.word Function_21d29e4+1 @ =0x21d29e5, 0x21d8908
.word Function_21d2a18+1 @ =0x21d2a19, 0x21d890c
.word Function_21d2a44+1 @ =0x21d2a45, 0x21d8910
.word Function_21d2a78+1 @ =0x21d2a79, 0x21d8914
.word Function_21d2ac8+1 @ =0x21d2ac9, 0x21d8918
.word Function_21d2ae0+1 @ =0x21d2ae1, 0x21d891c
.word Function_21d2af8+1 @ =0x21d2af9, 0x21d8920
.word Function_21d2b28+1 @ =0x21d2b29, 0x21d8924
.word Function_21d2b3c+1 @ =0x21d2b3d, 0x21d8928
.word Function_21d2b50+1 @ =0x21d2b51, 0x21d892c
.word Function_21d2b64+1 @ =0x21d2b65, 0x21d8930
.word Function_21d2b80+1 @ =0x21d2b81, 0x21d8934

.incbin "./baserom/overlay/overlay_0101.bin", 0x7bb8, 0x21d8e58 - 0x21d8938


.word Function_21d6a60+1 @ =0x21d6a61, 0x21d8e58
.word Function_21d68a8+1 @ =0x21d68a9, 0x21d8e5c
.word Function_21d6c0c+1 @ =0x21d6c0d, 0x21d8e60
.word Function_21d68a8+1 @ =0x21d68a9, 0x21d8e64
.word Function_21d6288+1 @ =0x21d6289, 0x21d8e68
.word Function_21d5e80+1 @ =0x21d5e81, 0x21d8e6c
.word Function_21d6ba4+1 @ =0x21d6ba5, 0x21d8e70
.word Function_21d68a8+1 @ =0x21d68a9, 0x21d8e74
.word Function_21d6b3c+1 @ =0x21d6b3d, 0x21d8e78
.word Function_21d68a8+1 @ =0x21d68a9, 0x21d8e7c
.word Function_21d682c+1 @ =0x21d682d, 0x21d8e80
.word Function_21d68a8+1 @ =0x21d68a9, 0x21d8e84
.word Function_21d6ac8+1 @ =0x21d6ac9, 0x21d8e88
.word Function_21d68a8+1 @ =0x21d68a9, 0x21d8e8c
.word Function_21d6158+1 @ =0x21d6159, 0x21d8e90
.word Function_21d61e0+1 @ =0x21d61e1, 0x21d8e94
.word Function_21d5e80+1 @ =0x21d5e81, 0x21d8e98

.incbin "./baserom/overlay/overlay_0101.bin", 0x811c, 0x21d8ed8 - 0x21d8e9c


.word Function_21d6c74+1 @ =0x21d6c75, 0x21d8ed8
.word Function_21d6ce0+1 @ =0x21d6ce1, 0x21d8edc
.word Function_21d68a8+1 @ =0x21d68a9, 0x21d8ee0

.incbin "./baserom/overlay/overlay_0101.bin", 0x8164, 0x21d8f38 - 0x21d8ee4


.word Function_21d5fb8+1 @ =0x21d5fb9, 0x21d8f38
.word Function_21d6020+1 @ =0x21d6021, 0x21d8f3c
.word Function_21d5e80+1 @ =0x21d5e81, 0x21d8f40

.incbin "./baserom/overlay/overlay_0101.bin", 0x81c4, 0x21d8fa4 - 0x21d8f44


.word Function_21d6084+1 @ =0x21d6085, 0x21d8fa4
.word Function_21d60ec+1 @ =0x21d60ed, 0x21d8fa8
.word Function_21d5e80+1 @ =0x21d5e81, 0x21d8fac

.incbin "./baserom/overlay/overlay_0101.bin", 0x8230, 0x21d9028 - 0x21d8fb0


.word Function_21d5f70+1 @ =0x21d5f71, 0x21d9028
.word Function_21d5f9c+1 @ =0x21d5f9d, 0x21d902c
.word Function_21d5e80+1 @ =0x21d5e81, 0x21d9030

.incbin "./baserom/overlay/overlay_0101.bin", 0x82b4, 0x21d9064 - 0x21d9034


.word Function_21d6994+1 @ =0x21d6995, 0x21d9064
.word Function_21d69fc+1 @ =0x21d69fd, 0x21d9068
.word Function_21d68a8+1 @ =0x21d68a9, 0x21d906c

.incbin "./baserom/overlay/overlay_0101.bin", 0x82f0, 0x21d910c - 0x21d9070


.word Function_21d68ac+1 @ =0x21d68ad, 0x21d910c
.word Function_21d6908+1 @ =0x21d6909, 0x21d9110
.word Function_21d6968+1 @ =0x21d6969, 0x21d9114
.word Function_21d68a8+1 @ =0x21d68a9, 0x21d9118
.word Function_21d5e28+1 @ =0x21d5e29, 0x21d911c
.word Function_21d5e3c+1 @ =0x21d5e3d, 0x21d9120
.word Function_21d5e4c+1 @ =0x21d5e4d, 0x21d9124
.word Function_21d5e80+1 @ =0x21d5e81, 0x21d9128
.word Function_21d5e84+1 @ =0x21d5e85, 0x21d912c
.word Function_21d5eec+1 @ =0x21d5eed, 0x21d9130
.word Function_21d5f54+1 @ =0x21d5f55, 0x21d9134
.word Function_21d5e80+1 @ =0x21d5e81, 0x21d9138
.word 0x18 @ 0x21d913c
.word Function_21d7588+1 @ =0x21d7589, 0x21d9140
.word Function_21d75f0+1 @ =0x21d75f1, 0x21d9144
.word Function_21d7604+1 @ =0x21d7605, 0x21d9148
.word Function_20715fc+1 @ 0x21d914c
.word 0x20 @ 0x21d9150
.word Function_21d64bc+1 @ =0x21d64bd, 0x21d9154
.word Function_21d64d0+1 @ =0x21d64d1, 0x21d9158
.word Function_21d64fc+1 @ =0x21d64fd, 0x21d915c
.word Function_21d659c+1 @ =0x21d659d, 0x21d9160
.word 0x30 @ 0x21d9164
.word Function_21d67bc+1 @ =0x21d67bd, 0x21d9168
.word Function_21d67dc+1 @ =0x21d67dd, 0x21d916c
.word Function_21d6808+1 @ =0x21d6809, 0x21d9170
.word Function_21d6828+1 @ =0x21d6829, 0x21d9174
.word 0x48 @ 0x21d9178
.word Function_21d6e28+1 @ =0x21d6e29, 0x21d917c
.word Function_21d6e3c+1 @ =0x21d6e3d, 0x21d9180
.word Function_21d6ec8+1 @ =0x21d6ec9, 0x21d9184
.word Function_21d7224+1 @ =0x21d7225, 0x21d9188
.word 0x10 @ 0x21d918c
.word Function_21d7260+1 @ =0x21d7261, 0x21d9190
.word Function_21d72ac+1 @ =0x21d72ad, 0x21d9194
.word Function_21d72b8+1 @ =0x21d72b9, 0x21d9198
.word Function_20715fc+1 @ 0x21d919c
.word 0x40 @ 0x21d91a0
.word Function_21d76ec+1 @ =0x21d76ed, 0x21d91a4
.word Function_21d7754+1 @ =0x21d7755, 0x21d91a8
.word Function_21d776c+1 @ =0x21d776d, 0x21d91ac
.word Function_20715fc+1 @ 0x21d91b0
.word 0x48 @ 0x21d91b4
.word Function_21d7b34+1 @ =0x21d7b35, 0x21d91b8
.word Function_21d7b74+1 @ =0x21d7b75, 0x21d91bc
.word Function_21d7bb4+1 @ =0x21d7bb5, 0x21d91c0
.word Function_20715fc+1 @ 0x21d91c4
.word 0x14 @ 0x21d91c8
.word Function_21d7304+1 @ =0x21d7305, 0x21d91cc
.word Function_21d7394+1 @ =0x21d7395, 0x21d91d0
.word Function_21d73a0+1 @ =0x21d73a1, 0x21d91d4
.word Function_20715fc+1 @ 0x21d91d8
.word 0x18 @ 0x21d91dc
.word Function_21d5a0c+1 @ =0x21d5a0d, 0x21d91e0
.word Function_21d5a64+1 @ =0x21d5a65, 0x21d91e4
.word Function_21d5a70+1 @ =0x21d5a71, 0x21d91e8
.word Function_21d5aec+1 @ =0x21d5aed, 0x21d91ec
.word 0x18 @ 0x21d91f0
.word Function_21d5b44+1 @ =0x21d5b45, 0x21d91f4
.word Function_21d5b9c+1 @ =0x21d5b9d, 0x21d91f8
.word Function_21d5ba8+1 @ =0x21d5ba9, 0x21d91fc
.word Function_21d5c24+1 @ =0x21d5c25, 0x21d9200
.word 0x18 @ 0x21d9204
.word Function_21d5c7c+1 @ =0x21d5c7d, 0x21d9208
.word Function_21d5cd4+1 @ =0x21d5cd5, 0x21d920c
.word Function_21d5ce0+1 @ =0x21d5ce1, 0x21d9210
.word Function_21d5d54+1 @ =0x21d5d55, 0x21d9214
.word 0x48 @ 0x21d9218
.word Function_21d5dd0+1 @ =0x21d5dd1, 0x21d921c
.word Function_21d5de8+1 @ =0x21d5de9, 0x21d9220
.word Function_21d5e04+1 @ =0x21d5e05, 0x21d9224
.word Function_21d5e24+1 @ =0x21d5e25, 0x21d9228
.word 0x10 @ 0x21d922c
.word Function_21d73ec+1 @ =0x21d73ed, 0x21d9230
.word Function_21d7438+1 @ =0x21d7439, 0x21d9234
.word Function_21d7444+1 @ =0x21d7445, 0x21d9238
.word Function_20715fc+1 @ 0x21d923c
.word 0x54 @ 0x21d9240
.word Function_21d7810+1 @ =0x21d7811, 0x21d9244
.word Function_21d7984+1 @ =0x21d7985, 0x21d9248
.word Function_21d79a8+1 @ =0x21d79a9, 0x21d924c
.word Function_20715fc+1 @ 0x21d9250
.word 0x14 @ 0x21d9254
.word Function_21d74a0+1 @ =0x21d74a1, 0x21d9258
.word Function_21d7530+1 @ =0x21d7531, 0x21d925c
.word Function_21d753c+1 @ =0x21d753d, 0x21d9260
.word Function_20715fc+1 @ 0x21d9264
.word 0x30 @ 0x21d9268
.word Function_21d7a00+1 @ =0x21d7a01, 0x21d926c
.word Function_21d7ad0+1 @ =0x21d7ad1, 0x21d9270
.word Function_21d7af4+1 @ =0x21d7af5, 0x21d9274
.word Function_20715fc+1 @ 0x21d9278
@ 0x21d927c


.incbin "./baserom/overlay/overlay_0101.bin", 0x84fc, 0x21d9e80 - 0x21d927c


@end 0x21d9e80




