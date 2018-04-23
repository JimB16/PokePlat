
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram121, "ax"


.thumb
.globl Function_121_21d0d80
Function_121_21d0d80: @ 21d0d80 :thumb
	push    {r3,r4,lr}
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
	ldr     r2, [pc, #0xbc] @ 0x21d0e60, (=0xffffe0ff)
	and     r0, r2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0xbc] @ 0x21d0e64, (=0x4001000)
	ldr     r3, [r0, #0x0]
	and     r2, r3
	str     r2, [r0, #0x0]
	ldr     r3, [r1, #0x0]
	ldr     r2, [pc, #0xb4] @ 0x21d0e68, (=0xffff1fff)
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
	mov     r1, #0x1e
	lsl     r2, r2, #16
	bl      Function_2017fc8
	mov     r0, r4
	mov     r1, #0xe8
	mov     r2, #0x1e
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r1, #0x0
	mov     r2, #0xe8
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r0, #0x1e
	bl      Function_21d1270
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      Function_2017dd4
	bl      Function_21d0f94
	bl      Function_201e3d8
	mov     r0, #0x4
	bl      Function_201e450
	mov     r0, r4
	bl      Function_21d1074
	mov     r0, r4
	bl      Function_21d0ff4
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x1e
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [pc, #0x44] @ 0x21d0e6c, (=RAM_21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      Function_201ffe8
	bl      Function_201ffd0_SetDISPCNT_SUB_MODE1
	mov     r0, #0x1
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002ae4
	mov     r0, #0x0
	bl      Function_2002b20
	ldr     r0, [pc, #0x28] @ 0x21d0e70, (=0x21d0f69)
	ldr     r2, [pc, #0x28] @ 0x21d0e74, (=0xea60)
	mov     r1, r4
	bl      AddTaskToTaskList1
	str     r0, [r4, #0x8]
	ldr     r0, [pc, #0x24] @ 0x21d0e78, (=0x21d0f7d)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d0e60

.word 0xffffe0ff @ 0x21d0e60
.word 0x4001000 @ 0x21d0e64
.word 0xffff1fff @ 0x21d0e68
.word RAM_21bf6dc @ 0x21d0e6c
.word 0x21d0f69 @ 0x21d0e70
.word 0xea60 @ 0x21d0e74
.word 0x21d0f7d @ 0x21d0e78



.thumb
.globl Function_121_21d0e7c
Function_121_21d0e7c: @ 21d0e7c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	bl      LoadOverlayData1c
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x3
	bhi     branch_21d0f04
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d0e9a

Jumppoints_21d0e9a:
.hword branch_21d0ea2 - Jumppoints_21d0e9a - 2
.hword branch_21d0eb2 - Jumppoints_21d0e9a - 2
.hword branch_21d0ed6 - Jumppoints_21d0e9a - 2
.hword branch_21d0ef6 - Jumppoints_21d0e9a - 2
.thumb
branch_21d0ea2: @ 21d0ea2 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_21d0f04
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0f04
@ 0x21d0eb2

.thumb
branch_21d0eb2: @ 21d0eb2 :thumb
	ldr     r0, [r5, #0x10]
	cmp     r0, #0xf
	bne     branch_21d0ebe
	ldr     r0, [pc, #0x54] @ 0x21d0f10, (=0x5d3)
	bl      Function_2005748
.thumb
branch_21d0ebe: @ 21d0ebe :thumb
	ldr     r0, [r5, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x10]
	ldr     r0, [r5, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0xc]
	cmp     r0, #0x55
	ble     branch_21d0f04
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0f04
@ 0x21d0ed6

.thumb
branch_21d0ed6: @ 21d0ed6 :thumb
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x1e
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0f04
@ 0x21d0ef6

.thumb
branch_21d0ef6: @ 21d0ef6 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_21d0f04
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4,r5,pc}
@ 0x21d0f04

.thumb
branch_21d0f04: @ 21d0f04 :thumb
	mov     r0, r5
	bl      Function_21d1318
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d0f10

.word 0x5d3 @ 0x21d0f10



.thumb
.globl Function_121_21d0f14
Function_121_21d0f14: @ 21d0f14 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	bl      Function_21d1184
	mov     r0, r4
	bl      Function_21d1068
	ldr     r0, [r4, #0x0]
	bl      Function_21d1310
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201e530
	mov     r0, #0x0
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002ae4
	mov     r0, #0x0
	bl      Function_2002b20
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x1e
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0f68

.thumb
Function_21d0f68: @ 21d0f68 :thumb
	push    {r3,lr}
	mov     r0, r1
	bl      Function_21d11a8
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_20241bc
	pop     {r3,pc}
@ 0x21d0f7a


.align 2, 0


.thumb
Function_21d0f7c: @ 21d0f7c :thumb
	ldr     r3, [pc, #0xc] @ 0x21d0f8c, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x21d0f90, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	bx      lr
@ 0x21d0f8a


.align 2


.word 0x27e0000 @ 0x21d0f8c
.word 0x3ff8 @ 0x21d0f90
.thumb
Function_21d0f94: @ 21d0f94 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	bl      Function_201ff00
	bl      Function_201ff68
	ldr     r4, [pc, #0x4c] @ 0x21d0ff0, (=0x21d1380)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d0fa6: @ 21d0fa6 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d0fa6
	add     r0, sp, #0x0
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
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d0ff0

.word 0x21d1380 @ 0x21d0ff0
.thumb
Function_21d0ff4: @ 21d0ff4 :thumb
	push    {r4,lr}
	add     sp, #-0x20
	mov     r4, r0
	add     r1, sp, #0x14
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, #0x1e
	bl      Function_20203ac
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x4]
	mov     r1, #0xa
	str     r0, [sp, #0x8]
	ldr     r2, [pc, #0x40] @ 0x21d105c, (=Unknown_21d1378)
	ldr     r3, [pc, #0x44] @ 0x21d1060, (=0xfa4)
	add     r0, sp, #0x14
	lsl     r1, r1, #16
	bl      Function_20206d0
	mov     r1, #0x4b
	ldr     r2, [r4, #0x4]
	mov     r0, #0x0
	lsl     r1, r1, #14
	bl      Function_20206bc
	add     r0, sp, #0xc
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	strh    r1, [r0, #0x2]
	strh    r1, [r0, #0x4]
	strh    r1, [r0, #0x6]
	ldr     r1, [r4, #0x4]
	bl      Function_2020a94
	ldr     r1, [pc, #0x20] @ 0x21d1064, (=0xc011)
	add     r0, sp, #0xc
	strh    r1, [r0, #0x0]
	ldr     r1, [r4, #0x4]
	add     r0, sp, #0xc
	bl      Function_20209d4
	ldr     r0, [r4, #0x4]
	bl      Function_20203d4
	add     sp, #0x20
	pop     {r4,pc}
@ 0x21d105a

.align 2
.word Unknown_21d1378 @ 0x21d105c
.word 0xfa4 @ 0x21d1060
.word 0xc011 @ 0x21d1064



.thumb
Function_21d1068: @ 21d1068 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d1070, (=Call_free5+1)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x21d106e


.align 2


.word Call_free5+1 @ 0x21d1070
.thumb
Function_21d1074: @ 21d1074 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	add     r0, #0xd8
	mov     r1, #0x1e
	mov     r2, #0x4
	bl      Function_20182cc
	mov     r0, #Titledemo_Narc
	mov     r1, #0x1e
	bl      LoadFromNARC_8
	mov     r4, r0
	mov     r0, r5
	add     r0, #0xb4
	mov     r1, r4
	mov     r2, #0x10
	mov     r3, #0x1e
	bl      Function_20170d8
	mov     r0, r5
	add     r0, #0xbc
	mov     r2, #0x1f
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	lsl     r2, r2, #16
	blx     Function_20b2d8c
	mov     r0, r5
	add     r0, #0xbc
	mov     r2, #0x3f
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	lsl     r2, r2, #24
	blx     Function_20b2d8c
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0xd8
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x8c
	add     r1, #0xb4
	mov     r2, r4
	mov     r3, #0x12
	bl      Function_2017164
	mov     r0, r5
	add     r0, #0x8c
	mov     r1, #0x0
	bl      Function_2017240
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0xd8
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xa0
	add     r1, #0xb4
	mov     r2, r4
	mov     r3, #0x11
	bl      Function_2017164
	mov     r0, r5
	add     r0, #0xa0
	mov     r1, #0x0
	bl      Function_2017240
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x14
	add     r1, #0xb4
	bl      Function_2017258
	mov     r1, #0x0
	mov     r0, r5
	add     r0, #0x14
	mov     r2, r1
	mov     r3, r1
	bl      Function_2017350
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r5
	add     r0, #0x14
	mov     r2, r1
	mov     r3, r1
	bl      Function_201736c
	mov     r0, r5
	add     r0, #0x14
	mov     r1, #0x1
	bl      Function_2017348
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x14
	add     r1, #0x8c
	bl      Function_201727c
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x14
	add     r1, #0xa0
	bl      Function_201727c
	mov     r0, r4
	bl      Call_FS_CloseFile
	mov     r0, r5
	ldr     r1, [pc, #0x20] @ 0x21d117c, (=0xfffffed2)
	add     r0, #0xc8
	str     r1, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [pc, #0x1c] @ 0x21d1180, (=0xe383)
	add     r0, #0xcc
	str     r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	lsl     r1, r1, #12
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, #0xf
	lsl     r0, r0, #10
	add     r5, #0xd4
	str     r0, [r5, #0x0]
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d117c

.word 0xfffffed2 @ 0x21d117c
.word 0xe383 @ 0x21d1180
.thumb
Function_21d1184: @ 21d1184 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xb4
	bl      Function_2017110
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x8c
	add     r1, #0xd8
	bl      Function_20171a0
	mov     r0, r4
	add     r4, #0xd8
	add     r0, #0xa0
	mov     r1, r4
	bl      Function_20171a0
	pop     {r4,pc}
@ 0x21d11a8

.thumb
Function_21d11a8: @ 21d11a8 :thumb
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
	ldr     r0, [r4, #0x4]
	bl      Function_20203d4
	ldr     r1, [r4, #0x4]
	mov     r0, #0x0
	bl      Function_2020854
	bl      Function_20203ec
	mov     r0, #0x0
	ldr     r2, [pc, #0x7c] @ 0x21d125c, (=0xfffff000)
	mov     r1, r0
	mov     r3, r0
	blx     Function_20af51c
	ldr     r1, [pc, #0x74] @ 0x21d1260, (=0x739c)
	mov     r0, #0x0
	blx     Function_20af558
	ldr     r0, [pc, #0x70] @ 0x21d1264, (=0x7fff)
	mov     r2, #0x0
	mov     r1, r0
	blx     Function_20af56c
	ldr     r0, [pc, #0x68] @ 0x21d1264, (=0x7fff)
	mov     r2, #0x0
	mov     r1, r0
	blx     Function_20af590
	add     r0, sp, #0x28
	blx     Function_20af4bc
	ldr     r1, [pc, #0x5c] @ 0x21d1268, (=0x21c5b48)
	add     r0, sp, #0x4
	blx     MI_Copy36B
	ldr     r1, [pc, #0x58] @ 0x21d126c, (=0x21c5b0c)
	mov     r0, #0xa4
	ldr     r2, [r1, #0x7c]
	bic     r2, r0
	add     r0, sp, #0x34
	str     r2, [r1, #0x7c]
	blx     Function_20af4ec
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x8c
	lsl     r1, r1, #12
	bl      Function_20171cc
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0xa0
	lsl     r1, r1, #12
	bl      Function_20171cc
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     Function_20b275c
	add     r4, #0x14
	mov     r0, r4
	bl      Function_2017294
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x0
	str     r2, [sp, #0x0]
	blx     Function_20b275c
	add     sp, #0x40
	pop     {r4,pc}
@ 0x21d125c

.word 0xfffff000 @ 0x21d125c
.word 0x739c @ 0x21d1260
.word 0x7fff @ 0x21d1264
.word 0x21c5b48 @ 0x21d1268
.word 0x21c5b0c @ 0x21d126c
.thumb
Function_21d1270: @ 21d1270 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, #0x2
	ldr     r1, [pc, #0x10] @ 0x21d1288, (=0x21d128d)
	str     r2, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	mov     r3, r1
	bl      Function_2024220
	add     sp, #0x8
	pop     {r3,pc}
@ 0x21d1288

.word 0x21d128d @ 0x21d1288
.thumb
Function_21d128c: @ 21d128c :thumb
	push    {r3,lr}
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r0, [pc, #0x60] @ 0x21d12f8, (=0x4000008)
	mov     r1, #0x3
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strh    r1, [r0, #0x0]
	add     r0, #0x58
	ldrh    r2, [r0, #0x0]
	ldr     r1, [pc, #0x50] @ 0x21d12fc, (=0xffffcffd)
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
	ldr     r2, [pc, #0x40] @ 0x21d1300, (=0xcffb)
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
	ldr     r2, [pc, #0x1c] @ 0x21d1304, (=0x7fff)
	mov     r1, r0
	mov     r3, #0x3f
	str     r0, [sp, #0x0]
	blx     G3X_SetClearColor
	ldr     r1, [pc, #0x14] @ 0x21d1308, (=0xbfff0000)
	ldr     r0, [pc, #0x18] @ 0x21d130c, (=0x4000580)
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x21d12f8

.word 0x4000008 @ 0x21d12f8
.word 0xffffcffd @ 0x21d12fc
.word 0xcffb @ 0x21d1300
.word 0x7fff @ 0x21d1304
.word 0xbfff0000 @ 0x21d1308
.word 0x4000580 @ 0x21d130c
.thumb
Function_21d1310: @ 21d1310 :thumb
	ldr     r3, [pc, #0x0] @ 0x21d1314, (=Function_20242c4+1)
	bx      r3
@ 0x21d1314

.word Function_20242c4+1 @ 0x21d1314
.thumb
Function_21d1318: @ 21d1318 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	add     r0, sp, #0x8
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x8]
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	strh    r1, [r0, #0x2]
	strh    r1, [r0, #0x4]
	strh    r1, [r0, #0x6]
	mov     r0, r4
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, #0x4]
	asr     r0, r0, #8
	neg     r0, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_202094c
	mov     r0, r4
	add     r0, #0xd4
	ldr     r1, [r0, #0x0]
	mov     r0, r4
	sub     r1, #0x80
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd4
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #12
	cmp     r0, r1
	bge     branch_21d1368
	mov     r0, r4
	add     r0, #0xd4
	str     r1, [r0, #0x0]
.thumb
branch_21d1368: @ 21d1368 :thumb
	mov     r0, r4
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	add     r4, #0xc4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x21d1378


Unknown_21d1378: @ 0x21d1378
.incbin "./baserom/overlay/overlay_0121.bin", 0x5f8, 0x21d13c0 - 0x21d1378


@end 0x21d13c0



