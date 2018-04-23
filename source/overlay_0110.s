
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram110, "ax"


.thumb
.globl Function_110_21d0d80
Function_110_21d0d80: @ 21d0d80 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r0, #0x0
	mov     r6, r1
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20177bc
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0xe8] @ 0x21d0e90, (=0xffffe0ff)
	ldr     r3, [pc, #0xec] @ 0x21d0e94, (=0x4001000)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r1, [r3, #0x0]
	lsr     r2, r2, #9
	and     r0, r1
	str     r0, [r3, #0x0]
	mov     r0, #0x3
	mov     r1, #0x72
	bl      Function_2017fc8
	mov     r1, #0x13
	mov     r0, r4
	lsl     r1, r1, #4
	mov     r2, #0x72
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r2, #0x13
	mov     r5, r0
	mov     r1, #0x0
	lsl     r2, r2, #4
	blx     Call_FillMemWithValue
	str     r4, [r5, #0x0]
	mov     r0, #0x72
	bl      Function_2018340
	str     r0, [r5, #0xc]
	mov     r0, r4
	bl      LoadPtrToOverWorldDataIn18
	mov     r4, r0
	mov     r0, #0x4a
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r0, [r5, r0]
	bl      LoadVariableAreaAdress_17
	mov     r1, #0x4b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldrb    r0, [r4, #0x4]
	strb    r0, [r5, #0x5]
	ldrb    r0, [r4, #0x5]
	strb    r0, [r5, #0x6]
	ldrh    r0, [r4, #0x6]
	strh    r0, [r5, #0x8]
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r5, r0]
	bl      LoadPlayerDataAdress
	mov     r1, #0x49
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_21d1180
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, #0x10
	mov     r3, #0x72
	bl      LoadFromNARC_9
	mov     r1, #0x11
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x72
	bl      Function_200b358
	mov     r1, #0x45
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x32
	lsl     r0, r0, #4
	mov     r1, #0x72
	bl      Function_2023790
	mov     r1, #0x46
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x32
	lsl     r0, r0, #4
	mov     r1, #0x72
	bl      Function_2023790
	mov     r1, #0x47
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x0
	add     r1, #0x84
	mov     r2, #0x72
	bl      LoadFromNARC_PlFont1
	mov     r1, #0x6
	mov     r0, #0x0
	lsl     r1, r1, #6
	mov     r2, #0x72
	bl      LoadFromNARC_PlFont2
	ldrb    r0, [r5, #0x6]
	bl      Function_21d1208
	mov     r2, r0
	mov     r1, r5
	ldr     r0, [r5, #0xc]
	add     r1, #0x10
	bl      Function_21d2124
	ldr     r0, [pc, #0x14] @ 0x21d0e98, (=0x21d1049)
	mov     r1, r5
	bl      SetMainLoopFunctionCall
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21d0e90

.word 0xffffe0ff @ 0x21d0e90
.word 0x4001000 @ 0x21d0e94
.word 0x21d1049 @ 0x21d0e98



.thumb
.globl Function_110_21d0e9c
Function_110_21d0e9c: @ 21d0e9c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      LoadOverlayData1c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_21d0eb6
	cmp     r1, #0x1
	beq     branch_21d0eca
	cmp     r1, #0x2
	beq     branch_21d0ede
	b       branch_21d0eea
@ 0x21d0eb6

.thumb
branch_21d0eb6: @ 21d0eb6 :thumb
	bl      Function_21d0f78
	cmp     r0, #0x1
	bne     branch_21d0eea
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_21d1200
	b       branch_21d0eea
@ 0x21d0eca

.thumb
branch_21d0eca: @ 21d0eca :thumb
	bl      Function_21d0fd0
	cmp     r0, #0x1
	bne     branch_21d0eea
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x2
	bl      Function_21d1200
	b       branch_21d0eea
@ 0x21d0ede

.thumb
branch_21d0ede: @ 21d0ede :thumb
	bl      Function_21d1000
	cmp     r0, #0x1
	bne     branch_21d0eea
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0eea

.thumb
branch_21d0eea: @ 21d0eea :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d0eee


.align 2, 0
.thumb
.globl Function_110_21d0ef0
Function_110_21d0ef0: @ 21d0ef0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      Function_2002fa0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2002fa0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Call_free1
	mov     r0, #0x12
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	sub     r0, #0x10
	ldr     r0, [r4, r0]
	bl      Function_200b190
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200b3f0
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	ldrb    r0, [r4, #0x6]
	bl      Function_21d1208
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x10
	bl      Function_21d216c
	ldr     r0, [r4, #0xc]
	bl      Function_21d11cc
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x72
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0f78

.thumb
Function_21d0f78: @ 21d0f78 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_21d0f8e
	cmp     r0, #0x1
	beq     branch_21d0f94
	cmp     r0, #0x2
	beq     branch_21d0fba
	b       branch_21d0fc8
@ 0x21d0f8e

.thumb
branch_21d0f8e: @ 21d0f8e :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_21d0fc8
@ 0x21d0f94

.thumb
branch_21d0f94: @ 21d0f94 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x72
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x1
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	mov     r0, r4
	bl      Function_21d140c
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_21d0fc8
@ 0x21d0fba

.thumb
branch_21d0fba: @ 21d0fba :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_21d0fc8
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x21d0fc8

.thumb
branch_21d0fc8: @ 21d0fc8 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d0fce


.align 2, 0


.thumb
Function_21d0fd0: @ 21d0fd0 :thumb
	ldrb    r1, [r0, #0x4]
	cmp     r1, #0x0
	beq     branch_21d0fdc
	cmp     r1, #0x1
	beq     branch_21d0fe2
	b       branch_21d0ff6
@ 0x21d0fdc

.thumb
branch_21d0fdc: @ 21d0fdc :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x4]
	b       branch_21d0ff6
@ 0x21d0fe2

.thumb
branch_21d0fe2: @ 21d0fe2 :thumb
	ldr     r0, [pc, #0x18] @ 0x21d0ffc, (=RAM_21bf67c)
	ldr     r1, [r0, #0x44]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_21d0ff2
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_21d0ff6
.thumb
branch_21d0ff2: @ 21d0ff2 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x21d0ff6

.thumb
branch_21d0ff6: @ 21d0ff6 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d0ffa


.align 2


.word RAM_21bf67c @ 0x21d0ffc
.thumb
Function_21d1000: @ 21d1000 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_21d1012
	cmp     r0, #0x1
	beq     branch_21d1032
	b       branch_21d1040
@ 0x21d1012

.thumb
branch_21d1012: @ 21d1012 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x72
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_21d1040
@ 0x21d1032

.thumb
branch_21d1032: @ 21d1032 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_21d1040
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x21d1040

.thumb
branch_21d1040: @ 21d1040 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d1046


.align 2, 0


.thumb
Function_21d1048: @ 21d1048 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d105a
	bl      Function_2003694_LoadSomePalettes
.thumb
branch_21d105a: @ 21d105a :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_201c2b8
	ldr     r3, [pc, #0xc] @ 0x21d1070, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x21d1074, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x21d106e


.align 2


.word 0x27e0000 @ 0x21d1070
.word 0x3ff8 @ 0x21d1074
.thumb
Function_21d1078: @ 21d1078 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d1094, (=0x21d21f8)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d1082: @ 21d1082 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d1082
	add     r0, sp, #0x0
	bl      GX_SetBanks
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d1094

.word 0x21d21f8 @ 0x21d1094



.thumb
Function_21d1098: @ 21d1098 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x64
	ldr     r5, [pc, #0xcc] @ 0x21d116c, (=Unknown_21d2194)
	add     r3, sp, #0x54
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      SetGraphicsModes
	ldr     r5, [pc, #0xbc] @ 0x21d1170, (=0x21d21a4)
	add     r3, sp, #0x38
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
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x72
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019ebc
	ldr     r5, [pc, #0x8c] @ 0x21d1174, (=0x21d21dc)
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
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x72
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019ebc
	ldr     r5, [pc, #0x5c] @ 0x21d1178, (=0x21d21c0)
	add     r3, sp, #0x0
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
	mov     r0, #0x6
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x72
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2019ebc
	ldr     r1, [pc, #0x2c] @ 0x21d117c, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	mov     r0, #0x1
	strh    r2, [r1, #0x0]
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	add     sp, #0x64
	pop     {r4,r5,pc}
@ 0x21d116c

.word Unknown_21d2194 @ 0x21d116c
.word 0x21d21a4 @ 0x21d1170
.word 0x21d21dc @ 0x21d1174
.word 0x21d21c0 @ 0x21d1178
.word 0x4000008 @ 0x21d117c



.thumb
Function_21d1180: @ 21d1180 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d1078
	ldr     r0, [r4, #0xc]
	bl      Function_21d1098
	mov     r0, #0x72
	bl      MallocFill120
	mov     r1, #0x12
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x2
	lsl     r2, r1, #8
	mov     r3, #0x72
	bl      Function_2002f70
	mov     r2, #0x12
	lsl     r2, r2, #4
	ldr     r0, [r4, r2]
	mov     r1, #0x0
	add     r2, #0xe0
	mov     r3, #0x72
	bl      Function_2002f70
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d123c
	bl      Function_21d128c
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_21d12c0
	pop     {r4,pc}
@ 0x21d11cc

.thumb
Function_21d11cc: @ 21d11cc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1f
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x1f
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2019044
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x21d1200

.thumb
Function_21d1200: @ 21d1200 :thumb
	mov     r3, #0x0
	strb    r3, [r0, #0x4]
	str     r2, [r1, #0x0]
	bx      lr
@ 0x21d1208

.thumb
Function_21d1208: @ 21d1208 :thumb
	mov     r1, #0x0
	cmp     r0, #0x6
	bhi     branch_21d1238
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d121a

Jumppoints_21d121a:
.hword branch_21d1238 - Jumppoints_21d121a - 2
.hword branch_21d1236 - Jumppoints_21d121a - 2
.hword branch_21d1228 - Jumppoints_21d121a - 2
.hword branch_21d1228 - Jumppoints_21d121a - 2
.hword branch_21d122e - Jumppoints_21d121a - 2
.hword branch_21d122a - Jumppoints_21d121a - 2
.hword branch_21d1232 - Jumppoints_21d121a - 2
.thumb
branch_21d1228: @ 21d1228 :thumb
	b       branch_21d1238
@ 0x21d122a

.thumb
branch_21d122a: @ 21d122a :thumb
	mov     r1, #0x1
	b       branch_21d1238
@ 0x21d122e

.thumb
branch_21d122e: @ 21d122e :thumb
	mov     r1, #0x2
	b       branch_21d1238
@ 0x21d1232

.thumb
branch_21d1232: @ 21d1232 :thumb
	mov     r1, #0x3
	b       branch_21d1238
@ 0x21d1236

.thumb
branch_21d1236: @ 21d1236 :thumb
	mov     r1, #0x4
.thumb
branch_21d1238: @ 21d1238 :thumb
	mov     r0, r1
	bx      lr
@ 0x21d123c


.thumb
Function_21d123c: @ 21d123c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r1

	mov     r0, #FrontierBg_Narc
	mov     r1, #0x72
	bl      LoadFromNARC_8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r1, #0x72
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0xc]
	mov     r1, #0x7c
	mov     r3, r4
	mov     r6, r0
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x72
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0xc]
	mov     r0, r6
	mov     r1, #0x7b
	mov     r3, r4
	bl      Function_200710c
	mov     r0, r6
	bl      Call_FS_CloseFile
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d128a


.align 2, 0


.thumb
Function_21d128c: @ 21d128c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r0, #0x96
	mov     r1, #0xaa
	add     r2, sp, #0x0
	mov     r3, #0x72
	bl      Function_2006f88
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	mov     r1, #0x40
	ldr     r0, [r0, #0xc]
	blx     DC_FlushRange
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0xc]
	mov     r2, #0x40
	blx     GX_LoadBGPltt
	mov     r0, r4
	bl      free
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d12be


.align 2, 0


.thumb
Function_21d12c0: @ 21d12c0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r6, r1

	mov     r0, #Poketch_Narc
	mov     r1, #0x72
	bl      LoadFromNARC_8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r1, #0x72
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0xc]
	mov     r1, #0xa
	mov     r3, r6
	mov     r4, r0
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x72
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0xc]
	mov     r0, r4
	mov     r1, #0xb
	mov     r3, r6
	bl      Function_200710c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x72
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2007130
	mov     r0, r4
	bl      Call_FS_CloseFile
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d1322


.align 2, 0


.thumb
Function_21d1324: @ 21d1324 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	add     r0, sp, #0x3c
	ldrb    r0, [r0, #0x0]
	mov     r6, r1
	mov     r7, r2
	mov     r4, r3
	cmp     r0, #0x0
	beq     branch_21d1342
	add     r1, sp, #0x18
	ldrb    r1, [r1, #0x1c]
	mov     r0, r6
	bl      Function_201ada4_ClearTextBox
.thumb
branch_21d1342: @ 21d1342 :thumb
	mov     r2, #0x11
	lsl     r2, r2, #4
	ldr     r0, [r5, r2]
	add     r2, #0xc
	ldr     r2, [r5, r2]
	mov     r1, r7
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r2, #0x45
	lsl     r2, r2, #2
	add     r1, r2, #0x4
	ldr     r0, [r5, r2]
	add     r2, #0x8
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	bl      Function_200c388
	ldr     r0, [sp, #0x40]
	cmp     r0, #0x1
	beq     branch_21d1370
	cmp     r0, #0x2
	beq     branch_21d1386
	b       branch_21d1396
@ 0x21d1370

.thumb
branch_21d1370: @ 21d1370 :thumb
	mov     r1, #0x46
	lsl     r1, r1, #2
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      Function_2002d7c
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r0, r0, #1
	sub     r4, r4, r0
	b       branch_21d1396
@ 0x21d1386

.thumb
branch_21d1386: @ 21d1386 :thumb
	mov     r1, #0x46
	lsl     r1, r1, #2
	mov     r0, #0x0
	ldr     r1, [r5, r1]
	mov     r2, r0
	bl      Function_2002d7c
	sub     r4, r4, r0
.thumb
branch_21d1396: @ 21d1396 :thumb
	ldr     r0, [sp, #0x28]
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x4]
	add     r3, sp, #0x18
	ldrb    r0, [r3, #0x14]
	ldrb    r1, [r3, #0x1c]
	ldrb    r3, [r3, #0x18]
	lsl     r0, r0, #24
	lsr     r0, r0, #8
	lsl     r3, r3, #24
	lsr     r3, r3, #16
	orr     r0, r3
	orr     r0, r1
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	add     r1, sp, #0x38
	mov     r2, #0x46
	lsl     r2, r2, #2
	ldrb    r1, [r1, #0x0]
	ldr     r2, [r5, r2]
	mov     r0, r6
	mov     r3, r4
	bl      Function_201d78c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d13cc

.thumb
Function_21d13cc: @ 21d13cc :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, #0x0
	str     r5, [sp, #0x0]
	mov     r4, #0x1
	str     r4, [sp, #0x4]
	mov     r4, #0x2
	str     r4, [sp, #0x8]
	str     r5, [sp, #0xc]
	str     r5, [sp, #0x10]
	str     r3, [sp, #0x14]
	mov     r3, r5
	str     r5, [sp, #0x18]
	bl      Function_21d1324
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x21d13ee


.align 2, 0


.thumb
Function_21d13f0: @ 21d13f0 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r0, [r0, r3]
	mov     r3, #0x4
	bl      Function_200b60c
	add     sp, #0x8
	pop     {r3,pc}
@ 0x21d140a


.align 2, 0


.thumb
Function_21d140c: @ 21d140c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x6]
	cmp     r1, #0x6
	bhi     branch_21d1460
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d1422

Jumppoints_21d1422:
.hword branch_21d1460 - Jumppoints_21d1422 - 2
.hword branch_21d144e - Jumppoints_21d1422 - 2
.hword branch_21d1430 - Jumppoints_21d1422 - 2
.hword branch_21d1430 - Jumppoints_21d1422 - 2
.hword branch_21d1442 - Jumppoints_21d1422 - 2
.hword branch_21d143c - Jumppoints_21d1422 - 2
.hword branch_21d1448 - Jumppoints_21d1422 - 2
.thumb
branch_21d1430: @ 21d1430 :thumb
	bl      Function_21d1468
	mov     r0, r4
	bl      Function_21d1650
	pop     {r4,pc}
@ 0x21d143c

.thumb
branch_21d143c: @ 21d143c :thumb
	bl      Function_21d1808
	pop     {r4,pc}
@ 0x21d1442

.thumb
branch_21d1442: @ 21d1442 :thumb
	bl      Function_21d19f4
	pop     {r4,pc}
@ 0x21d1448

.thumb
branch_21d1448: @ 21d1448 :thumb
	bl      Function_21d1c40
	pop     {r4,pc}
@ 0x21d144e

.thumb
branch_21d144e: @ 21d144e :thumb
	ldrb    r1, [r4, #0x5]
	cmp     r1, #0x1
	bhi     branch_21d145a
	bl      Function_21d1dbc
	pop     {r4,pc}
@ 0x21d145a

.thumb
branch_21d145a: @ 21d145a :thumb
	bl      Function_21d1ed8
	pop     {r4,pc}
@ 0x21d1460

.thumb
branch_21d1460: @ 21d1460 :thumb
	mov     r0, r4
	bl      Function_21d1c40
	pop     {r4,pc}
@ 0x21d1468

.thumb
Function_21d1468: @ 21d1468 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r0
	add     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x10
	mov     r2, #0x16
	mov     r3, #0x8
	bl      Function_21d1324
	ldrb    r0, [r4, #0x5]
	cmp     r0, #0x0
	bne     branch_21d14a4
	mov     r2, #0x1a
	mov     r3, #0xd8
	b       branch_21d14b2
@ 0x21d14a4

.thumb
branch_21d14a4: @ 21d14a4 :thumb
	cmp     r0, #0x1
	bne     branch_21d14ae
	mov     r2, #0x1b
	mov     r3, #0xd8
	b       branch_21d14b2
@ 0x21d14ae

.thumb
branch_21d14ae: @ 21d14ae :thumb
	mov     r2, #0x1c
	mov     r3, #0xd8
.thumb
branch_21d14b2: @ 21d14b2 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r1, r4
	str     r0, [sp, #0x18]
	mov     r0, r4
	add     r1, #0x10
	bl      Function_21d1324
	mov     r0, r4
	add     r0, #0x10
	bl      Function_201a9a4
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x20
	mov     r2, #0x22
	mov     r3, #0x1
	bl      Function_21d13cc
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r1, r4
	str     r0, [sp, #0x18]
	mov     r0, r4
	add     r1, #0x20
	mov     r2, #0x24
	mov     r3, #0xe0
	bl      Function_21d1324
	mov     r0, r4
	add     r0, #0x20
	bl      Function_201a9a4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d17ac
	mov     r1, r4
	mov     r2, r0
	mov     r0, r4
	add     r1, #0x30
	mov     r3, #0x1
	bl      Function_21d13cc
	ldrb    r1, [r4, #0x5]
	mov     r0, #0x0
	bl      Function_205e430
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x30
	mov     r2, #0x26
	mov     r3, #0x70
	bl      Function_21d1324
	ldrb    r1, [r4, #0x5]
	mov     r0, #0x0
	bl      Function_205e488
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r1, r4
	str     r0, [sp, #0x18]
	mov     r0, r4
	add     r1, #0x30
	mov     r2, #0x28
	mov     r3, #0xe0
	bl      Function_21d1324
	mov     r0, r4
	add     r0, #0x30
	bl      Function_201a9a4
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x40
	mov     r2, #0x1f
	mov     r3, #0x1
	bl      Function_21d13cc
	ldrb    r1, [r4, #0x5]
	mov     r0, #0x0
	bl      Function_205e45c
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x40
	mov     r2, #0x26
	mov     r3, #0x70
	bl      Function_21d1324
	ldrb    r1, [r4, #0x5]
	mov     r0, #0x0
	bl      Function_205e4b4
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r1, r4
	str     r0, [sp, #0x18]
	mov     r0, r4
	add     r1, #0x40
	mov     r2, #0x28
	mov     r3, #0xe0
	bl      Function_21d1324
	add     r4, #0x40
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x21d1650

.thumb
Function_21d1650: @ 21d1650 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x50
	mov     r2, #0x23
	mov     r3, #0x1
	bl      Function_21d13cc
	mov     r0, r4
	add     r0, #0x50
	bl      Function_201a9a4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d17ac
	mov     r1, r4
	mov     r2, r0
	mov     r0, r4
	add     r1, #0x60
	mov     r3, #0x1
	bl      Function_21d13cc
	ldrb    r1, [r4, #0x5]
	mov     r0, #0x1
	bl      Function_205e430
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x60
	mov     r2, #0x26
	mov     r3, #0x70
	bl      Function_21d1324
	ldrb    r1, [r4, #0x5]
	mov     r0, #0x1
	bl      Function_205e488
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r1, r4
	str     r0, [sp, #0x18]
	mov     r0, r4
	add     r1, #0x60
	mov     r2, #0x28
	mov     r3, #0xe0
	bl      Function_21d1324
	mov     r0, r4
	add     r0, #0x60
	bl      Function_201a9a4
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x70
	mov     r2, #0x1f
	mov     r3, #0x1
	bl      Function_21d13cc
	ldrb    r1, [r4, #0x5]
	mov     r0, #0x1
	bl      Function_205e45c
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x70
	mov     r2, #0x26
	mov     r3, #0x70
	bl      Function_21d1324
	ldrb    r1, [r4, #0x5]
	mov     r0, #0x1
	bl      Function_205e4b4
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r1, r4
	str     r0, [sp, #0x18]
	mov     r0, r4
	add     r1, #0x70
	mov     r2, #0x28
	mov     r3, #0xe0
	bl      Function_21d1324
	add     r4, #0x70
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x21d17aa


.align 2, 0


.thumb
Function_21d17ac: @ 21d17ac :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	bne     branch_21d17b6
	mov     r5, #0x66
	b       branch_21d17b8
@ 0x21d17b6

.thumb
branch_21d17b6: @ 21d17b6 :thumb
	mov     r5, #0x68
.thumb
branch_21d17b8: @ 21d17b8 :thumb
	ldrb    r4, [r0, #0x5]
	cmp     r4, #0x3
	bne     branch_21d17dc
	mov     r1, #0x4a
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	mov     r0, r5
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r5
	bl      Function_2030698
	b       branch_21d17f6
@ 0x21d17dc

.thumb
branch_21d17dc: @ 21d17dc :thumb
	mov     r1, #0x4a
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bl      Function_20300f4
	lsl     r2, r6, #2
	add     r2, r4, r2
	lsl     r2, r2, #24
	mov     r1, #0xa
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_20300e0
.thumb
branch_21d17f6: @ 21d17f6 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bne     branch_21d1802
	mov     r0, #0x1e
	pop     {r4-r6,pc}
@ 0x21d1802

.thumb
branch_21d1802: @ 21d1802 :thumb
	mov     r0, #0x1d
	pop     {r4-r6,pc}
@ 0x21d1806


.align 2, 0


.thumb
Function_21d1808: @ 21d1808 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x20
	mov     r5, r0
	add     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x10
	mov     r2, #0x18
	mov     r3, #0x8
	bl      Function_21d1324
	ldrb    r0, [r5, #0x5]
	cmp     r0, #0x0
	bne     branch_21d1844
	mov     r2, #0x1a
	mov     r3, #0xd8
	b       branch_21d1852
@ 0x21d1844

.thumb
branch_21d1844: @ 21d1844 :thumb
	cmp     r0, #0x1
	bne     branch_21d184e
	mov     r2, #0x1b
	mov     r3, #0xd8
	b       branch_21d1852
@ 0x21d184e

.thumb
branch_21d184e: @ 21d184e :thumb
	mov     r2, #0x1c
	mov     r3, #0xd8
.thumb
branch_21d1852: @ 21d1852 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r1, r5
	str     r0, [sp, #0x18]
	mov     r0, r5
	add     r1, #0x10
	bl      Function_21d1324
	mov     r0, r5
	add     r0, #0x10
	bl      Function_201a9a4
	mov     r0, r5
	bl      Function_21d19b0
	mov     r3, #0x0
	mov     r1, r5
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	str     r3, [sp, #0x10]
	str     r3, [sp, #0x14]
	mov     r0, r5
	add     r1, #0x20
	mov     r2, #0x27
	str     r3, [sp, #0x18]
	bl      Function_21d1324
	mov     r0, r5
	add     r0, #0x20
	bl      Function_201a9a4
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x30
	mov     r2, #0x1d
	mov     r3, #0x1
	bl      Function_21d13cc
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	ldrb    r0, [r5, #0x5]
	bl      Function_205e55c
	mov     r6, r0
	ldrb    r0, [r5, #0x5]
	bl      Function_205e55c
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_2030698
	ldrh    r1, [r5, #0x8]
	cmp     r1, r0
	beq     branch_21d18e6
	mov     r2, #0x0
	b       branch_21d18fc
@ 0x21d18e6

.thumb
branch_21d18e6: @ 21d18e6 :thumb
	ldrb    r0, [r5, #0x5]
	bl      Function_205e50c
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
.thumb
branch_21d18fc: @ 21d18fc :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x30
	mov     r2, #0x26
	mov     r3, #0x70
	bl      Function_21d1324
	mov     r0, r5
	add     r0, #0x30
	bl      Function_201a9a4
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x40
	mov     r2, #0x1f
	mov     r3, #0x1
	bl      Function_21d13cc
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0xb
	add     r2, sp, #0x1c
	bl      Function_20308a0
	mov     r4, r0
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x1
	beq     branch_21d1956
	mov     r6, #0x0
	b       branch_21d196e
@ 0x21d1956

.thumb
branch_21d1956: @ 21d1956 :thumb
	ldrb    r0, [r5, #0x5]
	bl      Function_205e584
	mov     r2, r0
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldrh    r3, [r5, #0x8]
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_20308bc
	mov     r6, r0
.thumb
branch_21d196e: @ 21d196e :thumb
	cmp     r4, #0x0
	beq     branch_21d1978
	mov     r0, r4
	bl      free
.thumb
branch_21d1978: @ 21d1978 :thumb
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, r6
	bl      Function_21d13f0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x40
	mov     r2, #0x26
	mov     r3, #0x70
	bl      Function_21d1324
	add     r5, #0x40
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0x20
	pop     {r4-r6,pc}
@ 0x21d19b0

.thumb
Function_21d19b0: @ 21d19b0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r2, #0x67
	mov     r5, r0
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x72
	bl      LoadFromNARC_9
	ldrh    r1, [r5, #0x8]
	mov     r6, r0
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, r6
	bl      Function_200b190
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, r4
	mov     r3, r1
	bl      Function_200b48c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x21d19f4

.thumb
Function_21d19f4: @ 21d19f4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	mov     r5, r0
	add     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x10
	mov     r2, #0x17
	mov     r3, #0x8
	bl      Function_21d1324
	ldrb    r0, [r5, #0x5]
	cmp     r0, #0x0
	bne     branch_21d1a30
	mov     r2, #0x1a
	mov     r3, #0xd8
	b       branch_21d1a3e
@ 0x21d1a30

.thumb
branch_21d1a30: @ 21d1a30 :thumb
	cmp     r0, #0x1
	bne     branch_21d1a3a
	mov     r2, #0x1b
	mov     r3, #0xd8
	b       branch_21d1a3e
@ 0x21d1a3a

.thumb
branch_21d1a3a: @ 21d1a3a :thumb
	mov     r2, #0x1c
	mov     r3, #0xd8
.thumb
branch_21d1a3e: @ 21d1a3e :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r1, r5
	str     r0, [sp, #0x18]
	mov     r0, r5
	add     r1, #0x10
	bl      Function_21d1324
	mov     r0, r5
	add     r0, #0x10
	bl      Function_201a9a4
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r1, r5
	str     r0, [sp, #0x18]
	mov     r0, r5
	add     r1, #0x20
	mov     r2, #0x25
	mov     r3, #0x60
	bl      Function_21d1324
	mov     r0, r5
	add     r0, #0x20
	bl      Function_201a9a4
	mov     r0, r5
	bl      Function_21d1bec
	mov     r1, r5
	mov     r2, r0
	mov     r0, r5
	add     r1, #0x30
	mov     r3, #0x1
	bl      Function_21d13cc
	ldrb    r0, [r5, #0x5]
	bl      Function_205e5e0
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x30
	mov     r2, #0x2a
	mov     r3, #0x70
	bl      Function_21d1324
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	ldrb    r0, [r5, #0x5]
	bl      Function_205e630
	mov     r6, r0
	ldrb    r0, [r5, #0x5]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r1, r5
	str     r0, [sp, #0x18]
	mov     r0, r5
	add     r1, #0x30
	mov     r2, #0x29
	mov     r3, #0xe0
	bl      Function_21d1324
	mov     r0, r5
	add     r0, #0x30
	bl      Function_201a9a4
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x40
	mov     r2, #0x1f
	mov     r3, #0x1
	bl      Function_21d13cc
	ldrb    r0, [r5, #0x5]
	bl      Function_205e608
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r5
	mov     r0, r5
	add     r1, #0x40
	mov     r2, #0x2a
	mov     r3, #0x70
	bl      Function_21d1324
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	ldrb    r0, [r5, #0x5]
	bl      Function_205e680
	mov     r6, r0
	ldrb    r0, [r5, #0x5]
	bl      Function_205e680
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r1, r5
	str     r0, [sp, #0x18]
	mov     r0, r5
	add     r1, #0x40
	mov     r2, #0x29
	mov     r3, #0xe0
	bl      Function_21d1324
	add     r5, #0x40
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x21d1bec

.thumb
Function_21d1bec: @ 21d1bec :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldrb    r4, [r0, #0x5]
	cmp     r4, #0x3
	bne     branch_21d1c14
	mov     r1, #0x4a
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	mov     r0, #0x6c
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x6c
	bl      Function_2030698
	b       branch_21d1c2a
@ 0x21d1c14

.thumb
branch_21d1c14: @ 21d1c14 :thumb
	mov     r1, #0x4a
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bl      Function_203041c
	mov     r3, #0x0
	mov     r1, #0x9
	mov     r2, r4
	str     r3, [sp, #0x0]
	bl      Function_2030470
.thumb
branch_21d1c2a: @ 21d1c2a :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bne     branch_21d1c38
	add     sp, #0x4
	mov     r0, #0x1e
	pop     {r3,r4,pc}
@ 0x21d1c38

.thumb
branch_21d1c38: @ 21d1c38 :thumb
	mov     r0, #0x1d
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d1c3e


.align 2, 0


.thumb
Function_21d1c40: @ 21d1c40 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r0
	add     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x10
	mov     r2, #0x19
	mov     r3, #0x8
	bl      Function_21d1324
	ldrb    r0, [r4, #0x5]
	cmp     r0, #0x0
	bne     branch_21d1c7c
	mov     r2, #0x1a
	mov     r3, #0xd8
	b       branch_21d1c8a
@ 0x21d1c7c

.thumb
branch_21d1c7c: @ 21d1c7c :thumb
	cmp     r0, #0x1
	bne     branch_21d1c86
	mov     r2, #0x1b
	mov     r3, #0xd8
	b       branch_21d1c8a
@ 0x21d1c86

.thumb
branch_21d1c86: @ 21d1c86 :thumb
	mov     r2, #0x1c
	mov     r3, #0xd8
.thumb
branch_21d1c8a: @ 21d1c8a :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r1, r4
	str     r0, [sp, #0x18]
	mov     r0, r4
	add     r1, #0x10
	bl      Function_21d1324
	mov     r0, r4
	add     r0, #0x10
	bl      Function_201a9a4
	mov     r0, r4
	bl      Function_21d1d68
	mov     r1, r4
	mov     r2, r0
	mov     r0, r4
	add     r1, #0x20
	mov     r3, #0x1
	bl      Function_21d13cc
	ldrb    r0, [r4, #0x5]
	bl      Function_205e700
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x20
	mov     r2, #0x2b
	mov     r3, #0x70
	bl      Function_21d1324
	mov     r0, r4
	add     r0, #0x20
	bl      Function_201a9a4
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x30
	mov     r2, #0x1f
	mov     r3, #0x1
	bl      Function_21d13cc
	ldrb    r0, [r4, #0x5]
	bl      Function_205e728
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x30
	mov     r2, #0x2b
	mov     r3, #0x70
	bl      Function_21d1324
	add     r4, #0x30
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x21d1d66


.align 2, 0


.thumb
Function_21d1d68: @ 21d1d68 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldrb    r4, [r0, #0x5]
	cmp     r4, #0x3
	bne     branch_21d1d90
	mov     r1, #0x4a
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	mov     r0, #0x6e
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x6e
	bl      Function_2030698
	b       branch_21d1da6
@ 0x21d1d90

.thumb
branch_21d1d90: @ 21d1d90 :thumb
	mov     r1, #0x4a
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bl      Function_20305b8
	mov     r3, #0x0
	mov     r1, #0x8
	mov     r2, r4
	str     r3, [sp, #0x0]
	bl      Function_2030600
.thumb
branch_21d1da6: @ 21d1da6 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bne     branch_21d1db4
	add     sp, #0x4
	mov     r0, #0x1e
	pop     {r3,r4,pc}
@ 0x21d1db4

.thumb
branch_21d1db4: @ 21d1db4 :thumb
	mov     r0, #0x1d
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d1dba


.align 2, 0


.thumb
Function_21d1dbc: @ 21d1dbc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r0
	add     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x10
	mov     r2, #0x15
	mov     r3, #0x8
	bl      Function_21d1324
	ldrb    r0, [r4, #0x5]
	cmp     r0, #0x0
	bne     branch_21d1df6
	mov     r2, #0x1a
	b       branch_21d1df8
@ 0x21d1df6

.thumb
branch_21d1df6: @ 21d1df6 :thumb
	mov     r2, #0x1b
.thumb
branch_21d1df8: @ 21d1df8 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r1, r4
	str     r0, [sp, #0x18]
	mov     r3, #0xd8
	mov     r0, r4
	add     r1, #0x10
	bl      Function_21d1324
	mov     r0, r4
	add     r0, #0x10
	bl      Function_201a9a4
	ldrb    r1, [r4, #0x5]
	mov     r0, r4
	bl      Function_21d20cc
	mov     r1, r4
	mov     r2, r0
	mov     r0, r4
	add     r1, #0x30
	mov     r3, #0x1
	bl      Function_21d13cc
	ldrb    r0, [r4, #0x5]
	bl      Function_205e750
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x30
	mov     r2, #0x26
	mov     r3, #0x70
	bl      Function_21d1324
	mov     r0, r4
	add     r0, #0x30
	bl      Function_201a9a4
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x40
	mov     r2, #0x1f
	mov     r3, #0x1
	bl      Function_21d13cc
	ldrb    r0, [r4, #0x5]
	bl      Function_205e790
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x40
	mov     r2, #0x26
	mov     r3, #0x70
	bl      Function_21d1324
	add     r4, #0x40
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x21d1ed8

.thumb
Function_21d1ed8: @ 21d1ed8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r0
	add     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x10
	mov     r2, #0x15
	mov     r3, #0x8
	bl      Function_21d1324
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r1, r4
	str     r0, [sp, #0x18]
	mov     r0, r4
	add     r1, #0x10
	mov     r2, #0x1c
	mov     r3, #0xd8
	bl      Function_21d1324
	mov     r0, r4
	add     r0, #0x10
	bl      Function_201a9a4
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x20
	mov     r2, #0x20
	mov     r3, #0x1
	bl      Function_21d13cc
	mov     r0, r4
	add     r0, #0x20
	bl      Function_201a9a4
	ldrb    r1, [r4, #0x5]
	mov     r0, r4
	bl      Function_21d20cc
	mov     r1, r4
	mov     r2, r0
	mov     r0, r4
	add     r1, #0x50
	mov     r3, #0x1
	bl      Function_21d13cc
	ldrb    r0, [r4, #0x5]
	bl      Function_205e750
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x50
	mov     r2, #0x26
	mov     r3, #0x70
	bl      Function_21d1324
	mov     r0, r4
	add     r0, #0x50
	bl      Function_201a9a4
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x60
	mov     r2, #0x1f
	mov     r3, #0x1
	bl      Function_21d13cc
	ldrb    r0, [r4, #0x5]
	bl      Function_205e790
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x60
	mov     r2, #0x26
	mov     r3, #0x70
	bl      Function_21d1324
	mov     r0, r4
	add     r0, #0x60
	bl      Function_201a9a4
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x70
	mov     r2, #0x21
	mov     r3, #0x1
	bl      Function_21d13cc
	mov     r0, r4
	add     r0, #0x70
	bl      Function_201a9a4
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_21d20cc
	mov     r1, r4
	mov     r2, r0
	mov     r0, r4
	add     r1, #0x80
	mov     r3, #0x1
	bl      Function_21d13cc
	mov     r0, #0x3
	bl      Function_205e750
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x80
	mov     r2, #0x26
	mov     r3, #0x70
	bl      Function_21d1324
	mov     r0, r4
	add     r0, #0x80
	bl      Function_201a9a4
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x90
	mov     r2, #0x1f
	mov     r3, #0x1
	bl      Function_21d13cc
	mov     r0, #0x3
	bl      Function_205e790
	mov     r1, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0xff
	bl      Function_2030698
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d13f0
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x18]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x90
	mov     r2, #0x26
	mov     r3, #0x70
	bl      Function_21d1324
	add     r4, #0x90
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x21d20ca


.align 2, 0


.thumb
Function_21d20cc: @ 21d20cc :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r1, #0x4a
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bl      Function_202d750
	cmp     r4, #0x6
	bhi     branch_21d2110
	add     r1, r4, r4
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d20ea

Jumppoints_21d20ea:
.hword branch_21d20f8 - Jumppoints_21d20ea - 2
.hword branch_21d20fc - Jumppoints_21d20ea - 2
.hword branch_21d2100 - Jumppoints_21d20ea - 2
.hword branch_21d2104 - Jumppoints_21d20ea - 2
.hword branch_21d2108 - Jumppoints_21d20ea - 2
.hword branch_21d2110 - Jumppoints_21d20ea - 2
.hword branch_21d210c - Jumppoints_21d20ea - 2
.thumb
branch_21d20f8: @ 21d20f8 :thumb
	mov     r1, #0x8
	b       branch_21d2112
@ 0x21d20fc

.thumb
branch_21d20fc: @ 21d20fc :thumb
	mov     r1, #0x9
	b       branch_21d2112
@ 0x21d2100

.thumb
branch_21d2100: @ 21d2100 :thumb
	mov     r1, #0xa
	b       branch_21d2112
@ 0x21d2104

.thumb
branch_21d2104: @ 21d2104 :thumb
	mov     r1, #0xb
	b       branch_21d2112
@ 0x21d2108

.thumb
branch_21d2108: @ 21d2108 :thumb
	mov     r1, #0xc
	b       branch_21d2112
@ 0x21d210c

.thumb
branch_21d210c: @ 21d210c :thumb
	mov     r1, #0xf
	b       branch_21d2112
@ 0x21d2110

.thumb
branch_21d2110: @ 21d2110 :thumb
	mov     r1, #0x8
.thumb
branch_21d2112: @ 21d2112 :thumb
	mov     r2, #0x0
	bl      Function_202d414
	cmp     r0, #0x1
	bne     branch_21d2120
	mov     r0, #0x1e
	pop     {r4,pc}
@ 0x21d2120

.thumb
branch_21d2120: @ 21d2120 :thumb
	mov     r0, #0x1d
	pop     {r4,pc}
@ 0x21d2124

.thumb
Function_21d2124: @ 21d2124 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	mov     r5, r1
	ldr     r0, [pc, #0x34] @ 0x21d2164, (=0x21d2278)
	lsl     r1, r2, #3
	ldr     r0, [r0, r1]
	mov     r4, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x21d2168, (=0x21d227c)
	ldr     r7, [r0, r1]
	cmp     r7, #0x0
	bls     branch_21d2160
.thumb
branch_21d213e: @ 21d213e :thumb
	ldr     r2, [sp, #0x4]
	lsl     r6, r4, #4
	lsl     r3, r4, #3
	ldr     r0, [sp, #0x0]
	add     r1, r5, r6
	add     r2, r2, r3
	bl      Function_201a8d4
	add     r0, r5, r6
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, r7
	bcc     branch_21d213e
.thumb
branch_21d2160: @ 21d2160 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d2164

.word 0x21d2278 @ 0x21d2164
.word 0x21d227c @ 0x21d2168
.thumb
Function_21d216c: @ 21d216c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x1c] @ 0x21d2190, (=0x21d227c)
	lsl     r1, r1, #3
	ldr     r5, [r0, r1]
	mov     r4, #0x0
	cmp     r5, #0x0
	bls     branch_21d218e
branch_21d217c: @ 21d217c :thumb
	lsl     r0, r4, #4
	add     r0, r6, r0
	bl      Function_201a8fc
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, r5
	bcc     branch_21d217c
branch_21d218e: @ 21d218e :thumb
	pop     {r4-r6,pc}
@ 0x21d2190

.word 0x21d227c @ 0x21d2190



Unknown_21d2194: @ 0x21d2194
.incbin "./baserom/overlay/overlay_0110.bin", 0x1414, 0x21d2340 - 0x21d2194


@end 0x21d2340



