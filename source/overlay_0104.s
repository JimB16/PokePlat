
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


@ 0x3b5800 in arm9.bin

.section .iwram104, "ax"


.thumb
Function_222dce0: @ 222dce0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r3, r1
	mov     r0, r2
	mov     r1, r4
	mov     r2, r3
	bl      LoadFromNARC_2
	pop     {r4,pc}
@ 0x222dcf2


.align 2, 0
.thumb
Function_222dcf4: @ 222dcf4 :thumb
	mov     r3, r1
	mov     r1, r2
	mov     r2, r3
	ldr     r3, =LoadFromNARC+1
	bx      r3
@ 0x222dcfe

.align 2
.pool



.thumb
Function_222dd04: @ 222dd04 :thumb
	push    {r3-r7,lr}
	mov     r6, r2
	mov     r5, r0
	mov     r4, r1
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, #0x15
	mov     r3, r6
	bl      LoadFromNARC_9
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x30
	blx     MI_CpuFill8
	lsl     r0, r4, #16
	ldr     r2, [sp, #0x0]
	lsr     r0, r0, #16
	mov     r1, r6
	bl      Function_222dce0
	mov     r6, r0
	ldr     r0, [pc, #0x30] @ 0x222dd68, (=0xffff)
	str     r4, [r5, #0x0]
	strh    r0, [r5, #0x18]
	lsl     r0, r4, #1
	add     r0, r4, r0
	strh    r0, [r5, #0x1a]
	ldrh    r0, [r6, #0x0]
	mov     r1, r4
	strh    r0, [r5, #0x4]
	mov     r0, r7
	bl      Function_200b1ec_CallMsgDecrypt
	add     r5, #0x8
	mov     r4, r0
	mov     r1, r5
	mov     r2, #0x8
	bl      Function_2023df0
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, r7
	bl      Function_200b190
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x222dd68

.word 0xffff @ 0x222dd68



.thumb
Function_222dd6c: @ 222dd6c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r1, [sp, #0x0]
	mov     r7, r2
	mov     r1, #0x0
	mov     r2, #0x38
	mov     r4, r0
	mov     r6, r3
	ldr     r5, [sp, #0x34]
	blx     MI_CpuFill8
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x40]
	add     r0, sp, #0x8
	bl      Function_222dcf4
	ldrh    r1, [r4, #0x0]
	add     r3, sp, #0x8
	ldr     r0, [pc, #0x184] @ 0x222df18, (=0xfffff800)
	mov     r2, r1
	and     r2, r0
	ldrh    r1, [r3, #0x0]
	lsr     r0, r0, #21
	and     r0, r1
	orr     r0, r2
	strh    r0, [r4, #0x0]
	ldrh    r1, [r4, #0x0]
	ldr     r0, [pc, #0x178] @ 0x222df1c, (=0xffff07ff)
	and     r0, r1
	ldrh    r1, [r3, #0xe]
	lsl     r1, r1, #27
	lsr     r1, r1, #16
	orr     r0, r1
	strh    r0, [r4, #0x0]
	ldr     r0, [sp, #0x38]
	cmp     r0, #0x0
	beq     branch_222ddcc
	cmp     r5, #0x4
	bcc     branch_222ddc2
	mov     r0, #0x3
	and     r0, r5
	lsl     r0, r0, #24
	lsr     r5, r0, #24
branch_222ddc2: @ 222ddc2 :thumb
	ldr     r0, [pc, #0x15c] @ 0x222df20, (=Unknown_223f290)
	lsl     r1, r5, #1
	ldrh    r0, [r0, r1]
	strh    r0, [r4, #0x2]
	b       branch_222ddd0

branch_222ddcc: @ 222ddcc :thumb
	ldrh    r0, [r3, #0xc]
	strh    r0, [r4, #0x2]
branch_222ddd0: @ 222ddd0 :thumb
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	add     r1, sp, #0x8
	mov     r2, r4
	mov     r5, r0
branch_222dddc: @ 222dddc :thumb
	ldrh    r3, [r1, #0x2]
	strh    r3, [r2, #0x4]
	ldrh    r3, [r1, #0x2]
	cmp     r3, #0xda
	bne     branch_222dde8
	str     r5, [sp, #0x4]
branch_222dde8: @ 222dde8 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r0, #0x4
	blt     branch_222dddc
	str     r7, [r4, #0xc]
	cmp     r6, #0x0
	bne     branch_222de26
branch_222ddf8: @ 222ddf8 :thumb
	bl      PRNG
	mov     r5, r0
	bl      PRNG
	lsl     r0, r0, #16
	mov     r6, r5
	orr     r6, r0
	mov     r0, r6
	bl      PkmnData_DivBy25
	add     r1, sp, #0x8
	ldrb    r1, [r1, #0xb]
	cmp     r1, r0
	bne     branch_222ddf8
	mov     r0, r7
	mov     r1, r6
	bl      CheckIfShinyPkmn
	cmp     r0, #0x1
	beq     branch_222ddf8
	str     r6, [r4, #0x10]
	b       branch_222de28

branch_222de26: @ 222de26 :thumb
	str     r6, [r4, #0x10]
branch_222de28: @ 222de28 :thumb
	add     r0, sp, #0x20
	ldrb    r1, [r0, #0x10]
	ldr     r2, [r4, #0x14]
	mov     r0, #0x1f
	bic     r2, r0
	mov     r0, #0x1f
	and     r0, r1
	orr     r2, r0
	ldr     r0, [pc, #0xe8] @ 0x222df24, (=0xfffffc1f)
	mov     r7, #0x0
	and     r2, r0
	lsl     r0, r1, #27
	lsr     r1, r0, #22
	orr     r2, r1
	ldr     r1, [pc, #0xe0] @ 0x222df28, (=0xffff83ff)
	mov     r5, r7
	and     r2, r1
	lsr     r1, r0, #17
	orr     r2, r1
	ldr     r1, [pc, #0xdc] @ 0x222df2c, (=0xfff07fff)
	and     r2, r1
	lsr     r1, r0, #12
	orr     r2, r1
	ldr     r1, [pc, #0xd8] @ 0x222df30, (=0xfe0fffff)
	and     r2, r1
	lsr     r1, r0, #7
	orr     r2, r1
	ldr     r1, [pc, #0xd4] @ 0x222df34, (=0xc1ffffff)
	lsr     r0, r0, #2
	and     r1, r2
	orr     r0, r1
	str     r0, [r4, #0x14]
branch_222de68: @ 222de68 :thumb
	mov     r0, r5
	bl      Function_20787cc
	add     r1, sp, #0x8
	ldrb    r1, [r1, #0xa]
	tst     r0, r1
	beq     branch_222de78
	.hword  0x1c7f @ add r7, r7, #0x1
branch_222de78: @ 222de78 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x6
	blt     branch_222de68
	ldr     r0, [pc, #0xb8] @ 0x222df38, (=0x1fe)
	mov     r1, r7
	blx     _s32_div_f
	cmp     r0, #0xff
	ble     branch_222de8c
	mov     r0, #0xff
.thumb
branch_222de8c: @ 222de8c :thumb
	lsl     r0, r0, #24
	mov     r5, #0x0
	lsr     r7, r0, #24
.thumb
branch_222de92: @ 222de92 :thumb
	mov     r0, r5
	bl      Function_20787cc
	add     r1, sp, #0x8
	ldrb    r1, [r1, #0xa]
	tst     r0, r1
	beq     branch_222dea4
	add     r0, r4, r5
	strb    r7, [r0, #0x18]
.thumb
branch_222dea4: @ 222dea4 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x6
	blt     branch_222de92
	mov     r0, #0x0
	strb    r0, [r4, #0x1e]
	ldr     r0, [pc, #0x8c] @ 0x222df3c, (=CountryOfOriginValue)
	mov     r1, #0x19
	ldrb    r0, [r0, #0x0]
	strb    r0, [r4, #0x1f]
	ldrh    r0, [r4, #0x0]
	lsl     r0, r0, #21
	lsr     r0, r0, #21
	bl      GetPkmnBaseData1
	cmp     r0, #0x0
	beq     branch_222dee8
	ldr     r2, [r4, #0x10]
	mov     r1, #0x1
	tst     r1, r2
	beq     branch_222ded4
	mov     r1, r4
	add     r1, #0x20
	strb    r0, [r1, #0x0]
	b       branch_222defa

branch_222ded4: @ 222ded4 :thumb
	ldrh    r0, [r4, #0x0]
	mov     r1, #0x18
	lsl     r0, r0, #21
	lsr     r0, r0, #21
	bl      GetPkmnBaseData1
	mov     r1, r4
	add     r1, #0x20
	strb    r0, [r1, #0x0]
	b       branch_222defa

branch_222dee8: @ 222dee8 :thumb
	ldrh    r0, [r4, #0x0]
	mov     r1, #0x18
	lsl     r0, r0, #21
	lsr     r0, r0, #21
	bl      GetPkmnBaseData1
	mov     r1, r4
	add     r1, #0x20
	strb    r0, [r1, #0x0]
.thumb
branch_222defa: @ 222defa :thumb
	mov     r1, r4
	ldr     r0, [sp, #0x4]
	add     r1, #0x21
	strb    r0, [r1, #0x0]
	ldrh    r0, [r4, #0x0]
	add     r4, #0x22
	ldr     r1, [sp, #0x3c]
	lsl     r0, r0, #21
	lsr     r0, r0, #21
	mov     r2, r4
	bl      Function_200b274
	mov     r0, r6
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x222df18

.word 0xfffff800 @ 0x222df18
.word 0xffff07ff @ 0x222df1c
.word Unknown_223f290 @ 0x222df20
.word 0xfffffc1f @ 0x222df24
.word 0xffff83ff @ 0x222df28
.word 0xfff07fff @ 0x222df2c
.word 0xfe0fffff @ 0x222df30
.word 0xc1ffffff @ 0x222df34
.word 0x1fe @ 0x222df38
.word CountryOfOriginValue @ 0x222df3c



.thumb
Function_222df40: @ 222df40 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	mov     r4, r2
	bl      ClearCompletePkmnDataStructure
	cmp     r4, #0x78
	bne     branch_222df58
	mov     r4, #0x32
	b       branch_222df5e

branch_222df58: @ 222df58 :thumb
	cmp     r4, #0x79
	bne     branch_222df5e
	mov     r4, #0x64
branch_222df5e: @ 222df5e :thumb
	ldr     r1, [r6, #0x14]
	ldr     r0, [pc, #0x1a4] @ 0x222e108, (=0x3fffffff)
	mov     r2, r4
	and     r0, r1
	str     r0, [sp, #0x1c]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x10]
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldrh    r1, [r6, #0x0]
	ldr     r3, [sp, #0x1c]
	mov     r0, r5
	lsl     r1, r1, #21
	lsr     r1, r1, #21
	bl      InitPkmnData
	mov     r0, r5
	mov     r1, #0xaf
	add     r2, sp, #0x1c
	bl      SetPkmnData
	mov     r0, r5
	bl      Function_207418c
	ldrh    r0, [r6, #0x0]
	add     r2, sp, #0x14
	add     r2, #0x1
	lsl     r0, r0, #16
	lsr     r1, r0, #27
	add     r0, sp, #0x14
	strb    r1, [r0, #0x1]
	mov     r0, r5
	mov     r1, #0x70
	bl      SetPkmnData
	mov     r0, r5
	mov     r1, #0x6
	add     r2, r6, #0x2
	bl      SetPkmnData
	mov     r4, #0x0
	str     r6, [sp, #0x10]
	mov     r7, r4
.thumb
branch_222dfbc: @ 222dfbc :thumb
	ldr     r0, [sp, #0x10]
	add     r2, sp, #0x14
	ldrh    r1, [r0, #0x4]
	add     r0, sp, #0x14
	add     r2, #0x2
	strh    r1, [r0, #0x2]
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x36
	bl      SetPkmnData
	ldrb    r0, [r6, #0x1e]
	add     r2, sp, #0x14
	add     r2, #0x1
	mov     r1, r0
	asr     r1, r7
	mov     r0, #0x3
	and     r1, r0
	add     r0, sp, #0x14
	strb    r1, [r0, #0x1]
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x3e
	bl      SetPkmnData
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x42
	mov     r2, #0x0
	bl      GetPkmnData
	add     r1, sp, #0x14
	strb    r0, [r1, #0x0]
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x3a
	add     r2, sp, #0x14
	bl      SetPkmnData
	ldr     r0, [sp, #0x10]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1cbf @ add r7, r7, #0x2
	str     r0, [sp, #0x10]
	cmp     r4, #0x4
	blt     branch_222dfbc
	ldr     r0, [r6, #0xc]
	mov     r1, #0x7
	str     r0, [sp, #0x18]
	mov     r0, r5
	add     r2, sp, #0x18
	bl      SetPkmnData
	add     r2, sp, #0x14
	ldrb    r1, [r6, #0x18]
	add     r0, sp, #0x14
	add     r2, #0x1
	strb    r1, [r0, #0x1]
	mov     r0, r5
	mov     r1, #0xd
	bl      SetPkmnData
	add     r2, sp, #0x14
	ldrb    r1, [r6, #0x19]
	add     r0, sp, #0x14
	add     r2, #0x1
	strb    r1, [r0, #0x1]
	mov     r0, r5
	mov     r1, #0xe
	bl      SetPkmnData
	add     r2, sp, #0x14
	ldrb    r1, [r6, #0x1a]
	add     r0, sp, #0x14
	add     r2, #0x1
	strb    r1, [r0, #0x1]
	mov     r0, r5
	mov     r1, #0xf
	bl      SetPkmnData
	add     r2, sp, #0x14
	ldrb    r1, [r6, #0x1b]
	add     r0, sp, #0x14
	add     r2, #0x1
	strb    r1, [r0, #0x1]
	mov     r0, r5
	mov     r1, #0x10
	bl      SetPkmnData
	add     r2, sp, #0x14
	ldrb    r1, [r6, #0x1c]
	add     r0, sp, #0x14
	add     r2, #0x1
	strb    r1, [r0, #0x1]
	mov     r0, r5
	mov     r1, #0x11
	bl      SetPkmnData
	add     r2, sp, #0x14
	ldrb    r1, [r6, #0x1d]
	add     r0, sp, #0x14
	add     r2, #0x1
	strb    r1, [r0, #0x1]
	mov     r0, r5
	mov     r1, #0x12
	bl      SetPkmnData
	mov     r2, r6
	mov     r0, r5
	mov     r1, #0xa
	add     r2, #0x20
	bl      SetPkmnData
	mov     r2, r6
	mov     r0, r5
	mov     r1, #0x9
	add     r2, #0x21
	bl      SetPkmnData
	ldr     r0, [r6, #0x14]
	lsl     r0, r0, #1
	lsr     r0, r0, #31
	beq     branch_222e0e6
	mov     r2, #0x67
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x4
	bl      LoadFromNARC_9
	ldrh    r1, [r6, #0x0]
	mov     r4, r0
	lsl     r1, r1, #21
	lsr     r1, r1, #21
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x77
	mov     r2, r7
	bl      SetPkmnData
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	mov     r0, r4
	bl      Function_200b190
	b       branch_222e0f2
@ 0x222e0e6

.thumb
branch_222e0e6: @ 222e0e6 :thumb
	mov     r2, r6
	mov     r0, r5
	mov     r1, #0x75
	add     r2, #0x22
	bl      SetPkmnData
.thumb
branch_222e0f2: @ 222e0f2 :thumb
	add     r6, #0x1f
	mov     r0, r5
	mov     r1, #0xc
	mov     r2, r6
	bl      SetPkmnData
	mov     r0, r5
	bl      Function_207418c
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x222e108

.word 0x3fffffff @ 0x222e108
.thumb
Function_222e10c: @ 222e10c :thumb
	ldr     r3, [pc, #0x1c] @ 0x222e12c, (=0x223f298)
	mov     r2, #0x0
.thumb
branch_222e110: @ 222e110 :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_222e11e
	ldr     r0, [pc, #0x18] @ 0x222e130, (=0x223f29a)
	lsl     r1, r2, #2
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x222e11e

.thumb
branch_222e11e: @ 222e11e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r2, #0x3f
	bcc     branch_222e110
	mov     r0, #0x3
	bx      lr
@ 0x222e12a


.align 2


.word 0x223f298 @ 0x222e12c
.word 0x223f29a @ 0x222e130
.thumb
Function_222e134: @ 222e134 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	bl      LoadTrainerDataAdress
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x8]
	mov     r0, r5
	bl      LoadTrainerDataAdress
	mov     r3, #0x0
	mov     r1, r0
	str     r3, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x4
	bl      Function_2077ee4
	ldr     r0, [pc, #0x50] @ 0x222e1b8, (=0x232)
	bl      GetMapName
	mov     r3, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x0
	bl      Function_209304c
	ldr     r2, [pc, #0x3c] @ 0x222e1bc, (=0x16b)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0xb
	bl      LoadFromNARC_9
	mov     r1, #0x0
	mov     r5, r0
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x91
	mov     r2, r6
	bl      SetPkmnData
	mov     r0, r4
	mov     r1, #0x7
	add     r2, sp, #0x8
	bl      SetPkmnData
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	mov     r0, r5
	bl      Function_200b190
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x222e1b6


.align 2


.word 0x232 @ 0x222e1b8
.word 0x16b @ 0x222e1bc



.thumb
Function_222e1c0: @ 222e1c0 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	mov     r5, r1
	mov     r1, r4
	bl      Function_222e134
	mov     r0, r5
	mov     r1, r4
	bl      CopyPkmnDataToParty
	pop     {r3-r5,pc}
@ 0x222e1d6


.align 2, 0
.thumb
Function_222e1d8: @ 222e1d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2021e24
	cmp     r4, r0
	beq     branch_222e200
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2021e50
	mov     r0, r5
	mov     r1, r4
	bl      Function_2021d6c
	mov     r1, #0x1
	mov     r0, r5
	lsl     r1, r1, #12
	bl      Function_2021e2c
branch_222e200: @ 222e200 :thumb
	pop     {r3-r5,pc}
@ 0x222e202


.align 2, 0
.thumb
Function_222e204: @ 222e204 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	lsl     r1, r1, #12
	mov     r4, r2
	str     r1, [sp, #0x0]
	lsl     r1, r4, #12
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	mov     r5, r0
	str     r1, [sp, #0x8]
	cmp     r3, #0x1
	bne     branch_222e232
	bl      Function_2021e74
	cmp     r0, #0x0
	bne     branch_222e22c
	.hword  0x1ee0 @ sub r0, r4, #0x3
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	b       branch_222e232
@ 0x222e22c

.thumb
branch_222e22c: @ 222e22c :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
.thumb
branch_222e232: @ 222e232 :thumb
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x222e23e


.align 2, 0


.thumb
Function_222e240: @ 222e240 :thumb
	push    {r3,lr}
	mov     r2, #0x30
	bl      Function_208c104
	cmp     r0, #0x4
	bhi     branch_222e272
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222e258

Jumppoints_222e258:
.hword branch_222e272 - Jumppoints_222e258 - 2
.hword branch_222e26e - Jumppoints_222e258 - 2
.hword branch_222e26a - Jumppoints_222e258 - 2
.hword branch_222e266 - Jumppoints_222e258 - 2
.hword branch_222e262 - Jumppoints_222e258 - 2
.thumb
branch_222e262: @ 222e262 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222e266

.thumb
branch_222e266: @ 222e266 :thumb
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x222e26a

.thumb
branch_222e26a: @ 222e26a :thumb
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x222e26e

.thumb
branch_222e26e: @ 222e26e :thumb
	mov     r0, #0x4
	pop     {r3,pc}
@ 0x222e272

.thumb
branch_222e272: @ 222e272 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222e276


.align 2, 0


.thumb
Function_222e278: @ 222e278 :thumb
	push    {r3,lr}
	bl      Function_222dd04
	bl      free
	pop     {r3,pc}
@ 0x222e284

.thumb
Function_222e284: @ 222e284 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	lsl     r0, r3, #2
	ldr     r1, [r4, #0x0]
	add     r0, r5, r0
	str     r1, [r0, #0x18]
	mov     r0, #0x34
	mov     r6, r3
	mul     r6, r0
	add     r0, r5, r6
	ldrh    r1, [r4, #0x4]
	add     r0, #0x29
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x3c
	mov     r1, r4
	add     r0, r0, r6
	add     r1, #0x8
	bl      Function_20021b0
	add     r0, r5, r6
	ldrh    r1, [r4, #0x20]
	add     r0, #0x4c
	strh    r1, [r0, #0x0]
	add     r0, r5, r6
	ldrh    r1, [r4, #0x22]
	add     r0, #0x4e
	strh    r1, [r0, #0x0]
	add     r0, r5, r6
	ldrh    r1, [r4, #0x24]
	add     r0, #0x50
	strh    r1, [r0, #0x0]
	add     r0, r5, r6
	ldrh    r1, [r4, #0x26]
	add     r0, #0x52
	strh    r1, [r0, #0x0]
	add     r0, r5, r6
	ldrh    r1, [r4, #0x28]
	add     r0, #0x54
	strh    r1, [r0, #0x0]
	add     r0, r5, r6
	ldrh    r1, [r4, #0x2a]
	add     r0, #0x56
	strh    r1, [r0, #0x0]
	add     r0, r5, r6
	ldrh    r1, [r4, #0x2c]
	add     r0, #0x58
	strh    r1, [r0, #0x0]
	add     r0, r5, r6
	ldrh    r1, [r4, #0x2e]
	add     r0, #0x5a
	strh    r1, [r0, #0x0]
	pop     {r4-r6,pc}
@ 0x222e2f0

.thumb
Function_222e2f0: @ 222e2f0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r0
	str     r1, [sp, #0x14]
	mov     r5, r2
	mov     r4, r3
	bl      PRNG
	mov     r6, r0
	bl      PRNG
	lsl     r0, r0, #16
	mov     r2, r6
	orr     r2, r0
	lsl     r0, r5, #24
	str     r4, [sp, #0x0]
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x34]
	ldr     r3, [sp, #0x30]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x38]
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	mov     r0, r7
	bl      Function_222dd6c
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x222e32e


.align 2, 0


.thumb
Function_222e330: @ 222e330 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x30]
	mov     r7, r1
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x34]
	str     r2, [sp, #0x10]
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x38]
	str     r3, [sp, #0x14]
	str     r0, [sp, #0x38]
	ldr     r0, [sp, #0x3c]
	mov     r4, #0x0
	str     r0, [sp, #0x3c]
	ldr     r0, [sp, #0x34]
	cmp     r0, #0x0
	ble     branch_222e3a4
	ldr     r5, [sp, #0x30]
	mov     r6, r3
.thumb
branch_222e358: @ 222e358 :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_222e362
	mov     r0, #0x0
	b       branch_222e364
@ 0x222e362

.thumb
branch_222e362: @ 222e362 :thumb
	ldrb    r0, [r0, r4]
.thumb
branch_222e364: @ 222e364 :thumb
	lsl     r0, r0, #24
	lsr     r3, r0, #24
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	bne     branch_222e372
	mov     r0, #0x0
	b       branch_222e374
@ 0x222e372

.thumb
branch_222e372: @ 222e372 :thumb
	ldr     r0, [r6, #0x0]
.thumb
branch_222e374: @ 222e374 :thumb
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x38]
	mov     r2, r4
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x3c]
	str     r0, [sp, #0x8]
	ldrh    r1, [r7, #0x0]
	ldr     r0, [sp, #0xc]
	bl      Function_222e2f0
	ldr     r1, [sp, #0x30]
	cmp     r1, #0x0
	beq     branch_222e390
	str     r0, [r5, #0x0]
.thumb
branch_222e390: @ 222e390 :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x38
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x34]
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1cbf @ add r7, r7, #0x2
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_222e358
.thumb
branch_222e3a4: @ 222e3a4 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x222e3a8

.thumb
Function_222e3a8: @ 222e3a8 :thumb
	cmp     r0, #0x64
	bcs     branch_222e3b0
	mov     r0, #0x3
	bx      lr
@ 0x222e3b0

.thumb
branch_222e3b0: @ 222e3b0 :thumb
	cmp     r0, #0x78
	bcs     branch_222e3b8
	mov     r0, #0x6
	bx      lr
@ 0x222e3b8

.thumb
branch_222e3b8: @ 222e3b8 :thumb
	cmp     r0, #0x8c
	bcs     branch_222e3c0
	mov     r0, #0x9
	bx      lr
@ 0x222e3c0

.thumb
branch_222e3c0: @ 222e3c0 :thumb
	cmp     r0, #0xa0
	bcs     branch_222e3c8
	mov     r0, #0xc
	bx      lr
@ 0x222e3c8

.thumb
branch_222e3c8: @ 222e3c8 :thumb
	cmp     r0, #0xb4
	bcs     branch_222e3d0
	mov     r0, #0xf
	bx      lr
@ 0x222e3d0

.thumb
branch_222e3d0: @ 222e3d0 :thumb
	cmp     r0, #0xc8
	bcs     branch_222e3d8
	mov     r0, #0x12
	bx      lr
@ 0x222e3d8

.thumb
branch_222e3d8: @ 222e3d8 :thumb
	cmp     r0, #0xdc
	bcs     branch_222e3e0
	mov     r0, #0x15
	bx      lr
@ 0x222e3e0

.thumb
branch_222e3e0: @ 222e3e0 :thumb
	mov     r0, #0x1f
	bx      lr
@ 0x222e3e4

.thumb
Function_222e3e4: @ 222e3e4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x7c
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x90]
	mov     r7, r3
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	str     r0, [sp, #0x90]
	cmp     r0, #0x6
	ble     branch_222e3fc
	bl      ErrorHandling
.thumb
branch_222e3fc: @ 222e3fc :thumb
	ldr     r0, [sp, #0x90]
	mov     r4, #0x0
	str     r4, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_222e4aa
	add     r0, sp, #0x1c
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x94]
	str     r0, [sp, #0xc]
.thumb
branch_222e40e: @ 222e40e :thumb
	bl      PRNG
	ldr     r1, [sp, #0x0]
	ldrh    r1, [r1, #0x2]
	blx     _s32_div_f
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #1
	add     r0, r0, r1
	ldrh    r0, [r0, #0x4]
	mov     r2, #0xb3
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x18]
	bl      Function_222dcf4
	mov     r0, #0x0
	cmp     r4, #0x0
	ble     branch_222e452
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x10]
	ldrh    r2, [r2, #0x0]
	ldrh    r3, [r3, #0xc]
	add     r1, sp, #0x1c
.thumb
branch_222e43e: @ 222e43e :thumb
	ldrh    r5, [r1, #0x0]
	cmp     r5, r2
	beq     branch_222e452
	ldrh    r5, [r1, #0xc]
	cmp     r5, r3
	beq     branch_222e452
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r1, #0x10
	cmp     r0, r4
	blt     branch_222e43e
.thumb
branch_222e452: @ 222e452 :thumb
	cmp     r0, r4
	bne     branch_222e4a4
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x32
	bge     branch_222e490
	mov     r3, #0x0
	cmp     r7, #0x0
	ble     branch_222e484
	ldr     r2, [sp, #0x10]
	ldr     r5, [sp, #0x10]
	ldrh    r2, [r2, #0x0]
	ldrh    r6, [r5, #0xc]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
.thumb
branch_222e46e: @ 222e46e :thumb
	ldrh    r5, [r0, #0x0]
	cmp     r2, r5
	beq     branch_222e484
	ldrh    r5, [r1, #0x0]
	cmp     r6, r5
	beq     branch_222e484
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r3, r7
	blt     branch_222e46e
.thumb
branch_222e484: @ 222e484 :thumb
	cmp     r3, r7
	beq     branch_222e490
	ldr     r0, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	b       branch_222e4a4
@ 0x222e490

.thumb
branch_222e490: @ 222e490 :thumb
	ldr     r1, [sp, #0x18]
	ldr     r0, [sp, #0xc]
	.hword  0x1c64 @ add r4, r4, #0x1
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x10]
	add     r0, #0x10
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0xc]
.thumb
branch_222e4a4: @ 222e4a4 :thumb
	ldr     r0, [sp, #0x90]
	cmp     r4, r0
	bne     branch_222e40e
.thumb
branch_222e4aa: @ 222e4aa :thumb
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x32
	blt     branch_222e4b6
	add     sp, #0x7c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x222e4b6

.thumb
branch_222e4b6: @ 222e4b6 :thumb
	mov     r0, #0x0
	add     sp, #0x7c
	pop     {r4-r7,pc}
@ 0x222e4bc

.thumb
Function_222e4bc: @ 222e4bc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x74
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x8c]
	str     r2, [sp, #0x14]
	str     r3, [sp, #0x18]
	str     r0, [sp, #0x8c]
	add     r0, sp, #0x44
	mov     r2, #0xb
	mov     r3, #0xb2
	mov     r5, r1
	bl      Function_222dd04
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x10]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_222e4f2
.thumb
branch_222e4e0: @ 222e4e0 :thumb
	mov     r0, r5
	bl      Function_222e3a8
	ldr     r1, [sp, #0x8c]
	strb    r0, [r1, r4]
	ldr     r0, [sp, #0x10]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_222e4e0
.thumb
branch_222e4f2: @ 222e4f2 :thumb
	add     r0, sp, #0x78
	ldrb    r0, [r0, #0x1c]
	add     r1, sp, #0x2c
	cmp     r0, #0x0
	bne     branch_222e514
	ldr     r0, [sp, #0x10]
	add     r2, sp, #0x24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x18]
	mov     r3, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x20]
	bl      Function_222e3e4
	b       branch_222e5aa
@ 0x222e514

.thumb
branch_222e514: @ 222e514 :thumb
	ldr     r0, [sp, #0x10]
	add     r2, sp, #0x24
	lsr     r0, r0, #1
	str     r0, [sp, #0x1c]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x18]
	mov     r3, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x20]
	bl      Function_222e3e4
	ldr     r0, [sp, #0x1c]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_222e560
	ldr     r6, [sp, #0x18]
	add     r4, sp, #0x2c
	add     r5, sp, #0x24
.thumb
branch_222e53c: @ 222e53c :thumb
	ldrh    r1, [r6, #0x0]
	add     r0, sp, #0x34
	mov     r2, #0xb3
	bl      Function_222dcf4
	add     r0, sp, #0x24
	ldrh    r0, [r0, #0x10]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	strh    r0, [r4, #0x0]
	add     r0, sp, #0x24
	ldrh    r0, [r0, #0x1c]
	.hword  0x1ca4 @ add r4, r4, #0x2
	strh    r0, [r5, #0x0]
	ldr     r0, [sp, #0x1c]
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r7, r0
	blt     branch_222e53c
.thumb
branch_222e560: @ 222e560 :thumb
	ldr     r0, [sp, #0x20]
	bl      free
	ldr     r1, [sp, #0x14]
	add     r0, sp, #0x44
	mov     r2, #0xb
	mov     r3, #0xb2
	bl      Function_222dd04
	ldr     r1, [sp, #0x10]
	str     r0, [sp, #0x20]
	lsr     r6, r1, #1
	ldr     r1, [sp, #0x18]
	lsl     r2, r6, #1
	add     r1, r1, r2
	str     r6, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0xb
	str     r1, [sp, #0x8]
	add     r1, sp, #0x2c
	add     r2, sp, #0x24
	mov     r3, r6
	bl      Function_222e3e4
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_222e5aa
	ldr     r0, [sp, #0x8c]
	add     r4, r0, r6
.thumb
branch_222e59a: @ 222e59a :thumb
	ldr     r0, [sp, #0x14]
	bl      Function_222e3a8
	strb    r0, [r4, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r5, r6
	blt     branch_222e59a
.thumb
branch_222e5aa: @ 222e5aa :thumb
	ldr     r0, [sp, #0x20]
	bl      free
	ldr     r0, [sp, #0x90]
	ldr     r1, [sp, #0x18]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0x8c]
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	mov     r0, #0xb3
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x88]
	mov     r3, #0x0
	bl      Function_222e330
	add     sp, #0x74
	pop     {r4-r7,pc}
@ 0x222e5d0

.thumb
Function_222e5d0: @ 222e5d0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_203608c
	mov     r1, #0x1
	eor     r0, r1
	bl      Function_2032ee8
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_200b498
	pop     {r3-r5,pc}
@ 0x222e5ee


.align 2, 0


.thumb
Function_222e5f0: @ 222e5f0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      GetGender
	mov     r4, r0
	mov     r0, r5
	bl      Function_2025fcc
	cmp     r0, #0x0
	bgt     branch_222e608
	beq     branch_222e624
	b       branch_222e618
@ 0x222e608

.thumb
branch_222e608: @ 222e608 :thumb
	cmp     r0, #0xc
	bgt     branch_222e618
	cmp     r0, #0x7
	blt     branch_222e618
	beq     branch_222e618
	cmp     r0, #0x8
	beq     branch_222e618
	cmp     r0, #0xc
.thumb
branch_222e618: @ 222e618 :thumb
	cmp     r4, #0x0
	bne     branch_222e620
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222e620

.thumb
branch_222e620: @ 222e620 :thumb
	mov     r0, #0x61
	pop     {r3-r5,pc}
@ 0x222e624

.thumb
branch_222e624: @ 222e624 :thumb
	cmp     r4, #0x0
	bne     branch_222e62c
	mov     r0, #0xfc
	pop     {r3-r5,pc}
@ 0x222e62c

.thumb
branch_222e62c: @ 222e62c :thumb
	mov     r0, #0xfd
	pop     {r3-r5,pc}
@ 0x222e630

.thumb
Function_222e630: @ 222e630 :thumb
	push    {r3,lr}
	bl      Function_202c878
	bl      Function_2038f8c
	pop     {r3,pc}
@ 0x222e63c


.thumb
.globl Function_104_222e63c
Function_104_222e63c: @ 222e63c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0xbc
	mov     r6, r2
	bl      malloc
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0xbc
	blx     MI_CpuFill8
	str     r7, [r4, #0x0]
	mov     r0, r4
	mov     r1, r4
	str     r5, [r4, #0x34]
	add     r0, #0x52
	strh    r6, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x40
	add     r1, #0x3c
	mov     r2, r6
	mov     r3, r5
	bl      Function_222e830
	mov     r0, #0x8
	mov     r1, #0x40
	mov     r2, r5
	bl      Function_200b368
	str     r0, [r4, #0x44]
	mov     r0, #0x1
	lsl     r0, r0, #10
	mov     r1, r5
	bl      Function_2023790
	str     r0, [r4, #0x48]
	mov     r0, #0x1
	lsl     r0, r0, #10
	mov     r1, r5
	bl      Function_2023790
	lsl     r1, r6, #16
	mov     r2, #0x0
	str     r0, [r4, #0x4c]
	mov     r0, r4
	lsr     r1, r1, #16
	mov     r3, r2
	bl      Function_222e82c
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x222e6a6


.align 2, 0
.thumb
.globl Function_104_222e6a8
Function_104_222e6a8: @ 222e6a8 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x51
	str     r0, [sp, #0x0]
	ldsb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_222e6b8
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_222e6b8: @ 222e6b8 :thumb
	ldr     r0, [sp, #0x0]
	add     r0, #0x38
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_222e6fc
	ldr     r5, [sp, #0x0]
	mov     r7, #0x0
	mov     r6, r5
	add     r6, #0x51
branch_222e6ca: @ 222e6ca :thumb
	ldr     r4, [r5, #0x4]
	cmp     r4, #0x0
	beq     branch_222e6ec
	mov     r0, r4
	bl      Function_222e988
	cmp     r0, #0x0
	bne     branch_222e6ec
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_222e7fc
	mov     r0, #0x0
	str     r0, [r5, #0x4]
	ldsb    r0, [r6, r0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r6, #0x0]
branch_222e6ec: @ 222e6ec :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x8
	blt     branch_222e6ca
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_223d8c4
branch_222e6fc: @ 222e6fc :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x51
	ldsb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_222e70a
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_222e70a: @ 222e70a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x222e70e


.align 2, 0
.thumb
.globl Function_104_222e710
Function_104_222e710: @ 222e710 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x51
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_222e720
	bl      ErrorHandling
branch_222e720: @ 222e720 :thumb

	ldr     r0, [r4, #0x44]
	bl      Function_200b3f0
	ldr     r0, [r4, #0x48]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r4, #0x4c]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [r4, #0x40]
	bl      free
	ldr     r0, [r4, #0x3c]
	bl      Function_200b190
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x222e746


.align 2, 0
.thumb
.globl Function_104_222e748
Function_104_222e748: @ 222e748 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x34]
	mov     r6, r1
	mov     r1, #0x90
	mov     r7, r2
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0x90
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r2, [pc, #0x5c] @ 0x222e7c0, (=0x223f63c)
	ldr     r1, [pc, #0x5c] @ 0x222e7c4, (=0x223f674)
	ldr     r2, [r2, #0x0]
	mov     r0, r4
	bl      Function_222e930
	ldr     r0, [pc, #0x58] @ 0x222e7c8, (=0xffff)
	str     r5, [r4, #0x0]
	cmp     r6, r0
	beq     branch_222e780
	mov     r0, r5
	add     r0, #0x52
	ldrh    r0, [r0, #0x0]
	cmp     r0, r6
	bne     branch_222e792
.thumb
branch_222e780: @ 222e780 :thumb
	mov     r0, r4
	ldr     r1, [r5, #0x40]
	add     r0, #0x84
	str     r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [r5, #0x3c]
	add     r0, #0x80
	str     r1, [r0, #0x0]
	b       branch_222e7a2
@ 0x222e792

.thumb
branch_222e792: @ 222e792 :thumb
	mov     r0, r4
	mov     r1, r4
	ldr     r3, [r5, #0x34]
	add     r0, #0x84
	add     r1, #0x80
	mov     r2, r6
	bl      Function_222e830
.thumb
branch_222e7a2: @ 222e7a2 :thumb
	mov     r1, r4
	add     r1, #0x84
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	bl      Function_222e968
	mov     r0, r4
	mov     r1, r7
	bl      Function_222e904
	mov     r0, r5
	mov     r1, r4
	bl      Function_222e7cc
	pop     {r3-r7,pc}
@ 0x222e7c0

.word 0x223f63c @ 0x222e7c0
.word 0x223f674 @ 0x222e7c4
.word 0xffff @ 0x222e7c8
.thumb
Function_222e7cc: @ 222e7cc :thumb
	push    {r4,lr}
	mov     r3, #0x0
	mov     r4, r0
.thumb
branch_222e7d2: @ 222e7d2 :thumb
	ldr     r2, [r4, #0x4]
	cmp     r2, #0x0
	bne     branch_222e7ec
	lsl     r2, r3, #2
	add     r2, r0, r2
	str     r1, [r2, #0x4]
	mov     r1, #0x51
	ldsb    r1, [r0, r1]
	add     r0, #0x51
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222e7ec

.thumb
branch_222e7ec: @ 222e7ec :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r3, #0x8
	blt     branch_222e7d2
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222e7fc

.thumb
Function_222e7fc: @ 222e7fc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, #0x3c]
	cmp     r0, r1
	beq     branch_222e812
	bl      Function_200b190
.thumb
branch_222e812: @ 222e812 :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, #0x40]
	cmp     r0, r1
	beq     branch_222e822
	bl      free
.thumb
branch_222e822: @ 222e822 :thumb
	mov     r0, r4
	bl      free
	pop     {r3-r5,pc}
@ 0x222e82a


.align 2, 0


.thumb
Function_222e82c: @ 222e82c :thumb
	bx      lr
@ 0x222e82e


.align 2, 0


.thumb
Function_222e830: @ 222e830 :thumb
	push    {r3-r7,lr}
	mov     r6, r2
	mov     r5, r0
	mov     r4, r1
	mov     r0, r6
	mov     r1, #0x1
	mov     r7, r3
	bl      Function_222ea90
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_222ea90
	mov     r6, r0

	ldr     r1, [sp, #0x0]
	mov     r0, #FrScript_Narc
	mov     r2, r7
	bl      LoadFromNARC_2
	str     r0, [r5, #0x0]
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, r6
	mov     r3, r7
	bl      LoadFromNARC_9
	str     r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x222e86a


.align 2, 0
.thumb
.globl Function_104_222e86c
Function_104_222e86c: @ 222e86c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x52
	ldrh    r0, [r0, #0x0]
	mov     r6, r1
	mov     r1, #0x2
	mov     r7, r2
	bl      Function_222ea90
	mov     r4, r0
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_222ea90
	mov     r2, r0
	cmp     r4, r2
	beq     branch_222e8c4
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, r7
	bl      LoadFromNARC_9
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, r5
.thumb
branch_222e89e: @ 222e89e :thumb
	ldr     r0, [r2, #0x4]
	cmp     r0, #0x0
	beq     branch_222e8b4
	mov     r3, r0
	add     r3, #0x80
	ldr     r6, [r3, #0x0]
	ldr     r3, [r5, #0x3c]
	cmp     r6, r3
	bne     branch_222e8b4
	add     r0, #0x80
	str     r4, [r0, #0x0]
.thumb
branch_222e8b4: @ 222e8b4 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x8
	blt     branch_222e89e
	ldr     r0, [r5, #0x3c]
	bl      Function_200b190
	str     r4, [r5, #0x3c]
.thumb
branch_222e8c4: @ 222e8c4 :thumb
	pop     {r3-r7,pc}
@ 0x222e8c6


.align 2, 0
.thumb
.globl Function_104_222e8c8
Function_104_222e8c8: @ 222e8c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0x10
	bl      malloc
	add     r4, #0x24
	mov     r3, r0
	mov     r2, #0x8
branch_222e8da: @ 222e8da :thumb
	ldrh    r1, [r4, #0x0]
	.hword  0x1ca4 @ add r4, r4, #0x2
	strh    r1, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_222e8da
	pop     {r4,pc}
@ 0x222e8e8


.thumb
.globl Function_104_222e8e8
Function_104_222e8e8: @ 222e8e8 :thumb
	push    {r4,lr}
	mov     r4, r1
	add     r0, #0x24
	mov     r3, #0x8
branch_222e8f0: @ 222e8f0 :thumb
	ldrh    r2, [r4, #0x0]
	.hword  0x1ca4 @ add r4, r4, #0x2
	strh    r2, [r0, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1e5b @ sub r3, r3, #0x1
	bne     branch_222e8f0
	mov     r0, r1
	bl      free
	pop     {r4,pc}
@ 0x222e904

.thumb
Function_222e904: @ 222e904 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [r4, #0x1c]
	lsl     r1, r1, #2
	add     r1, r2, r1
	str     r1, [r4, #0x1c]
	bl      Function_222ea60
	ldr     r1, [r4, #0x1c]
	add     r0, r1, r0
	str     r0, [r4, #0x1c]
	pop     {r4,pc}
@ 0x222e91c

.thumb
Function_222e91c: @ 222e91c :thumb
	add     r0, #0x24
	lsl     r1, r1, #1
	add     r0, r0, r1
	bx      lr
@ 0x222e924

.thumb
Function_222e924: @ 222e924 :thumb
	ldr     r3, [pc, #0x4] @ 0x222e92c, (=Function_209b974+1)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x222e92a

.align 2
.word Function_209b974+1 @ 0x222e92c



.thumb
Function_222e930: @ 222e930 :thumb
	push    {r3,r4}
	mov     r4, #0x0
	strb    r4, [r0, #0x19]
	str     r4, [r0, #0x1c]
	mov     r3, r0
	strb    r4, [r0, #0x18]
	add     r3, #0x88
	str     r4, [r3, #0x0]
	str     r1, [r0, #0x70]
	str     r2, [r0, #0x74]
	mov     r2, r0
	mov     r3, r4
.thumb
branch_222e948: @ 222e948 :thumb
	mov     r1, r2
	add     r1, #0x78
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	strh    r3, [r1, #0x0]
	cmp     r4, #0x4
	bcc     branch_222e948
	mov     r1, #0x0
.thumb
branch_222e958: @ 222e958 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	str     r1, [r0, #0x20]
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r3, #0x14
	bcc     branch_222e958
	pop     {r3,r4}
	bx      lr
@ 0x222e966


.align 2, 0


.thumb
Function_222e968: @ 222e968 :thumb
	str     r1, [r0, #0x1c]
	mov     r1, #0x1
	strb    r1, [r0, #0x19]
	mov     r0, r1
	bx      lr
@ 0x222e972


.align 2, 0


.thumb
Function_222e974: @ 222e974 :thumb
	mov     r2, #0x2
	strb    r2, [r0, #0x19]
	add     r0, #0x88
	str     r1, [r0, #0x0]
	bx      lr
@ 0x222e97e


.align 2, 0


.thumb
Function_222e980: @ 222e980 :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x19]
	str     r1, [r0, #0x1c]
	bx      lr
@ 0x222e988

.thumb
Function_222e988: @ 222e988 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x19]
	cmp     r1, #0x0
	beq     branch_222e99c
	cmp     r1, #0x1
	beq     branch_222e9c2
	cmp     r1, #0x2
	beq     branch_222e9a0
	b       branch_222e9f4
@ 0x222e99c

.thumb
branch_222e99c: @ 222e99c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222e9a0

.thumb
branch_222e9a0: @ 222e9a0 :thumb
	mov     r1, r4
	add     r1, #0x88
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_222e9be
	blx     r1
	cmp     r0, #0x1
	bne     branch_222e9ba
	mov     r0, #0x1
	strb    r0, [r4, #0x19]
	mov     r0, #0x0
	add     r4, #0x88
	str     r0, [r4, #0x0]
.thumb
branch_222e9ba: @ 222e9ba :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222e9be

.thumb
branch_222e9be: @ 222e9be :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0x19]
.thumb
branch_222e9c2: @ 222e9c2 :thumb
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	bne     branch_222e9ce
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	pop     {r4,pc}
@ 0x222e9ce

.thumb
branch_222e9ce: @ 222e9ce :thumb
	mov     r0, r4
	bl      Function_222ea48
	mov     r1, r0
	ldr     r0, [r4, #0x74]
	cmp     r1, r0
	bcc     branch_222e9e6
	bl      ErrorHandling
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	pop     {r4,pc}
@ 0x222e9e6

.thumb
branch_222e9e6: @ 222e9e6 :thumb
	ldr     r2, [r4, #0x70]
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	mov     r0, r4
	blx     r1
	cmp     r0, #0x1
	bne     branch_222e9c2
.thumb
branch_222e9f4: @ 222e9f4 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222e9f8

.thumb
Function_222e9f8: @ 222e9f8 :thumb
	ldrb    r3, [r0, #0x18]
	add     r2, r3, #0x1
	cmp     r2, #0x14
	blt     branch_222ea04
	mov     r0, #0x1
	bx      lr
@ 0x222ea04

.thumb
branch_222ea04: @ 222ea04 :thumb
	lsl     r2, r3, #2
	add     r2, r0, r2
	str     r1, [r2, #0x20]
	ldrb    r1, [r0, #0x18]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x18]
	mov     r0, #0x0
	bx      lr
@ 0x222ea14

.thumb
Function_222ea14: @ 222ea14 :thumb
	ldrb    r1, [r0, #0x18]
	cmp     r1, #0x0
	bne     branch_222ea1e
	mov     r0, #0x0
	bx      lr
@ 0x222ea1e

.thumb
branch_222ea1e: @ 222ea1e :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r0, #0x18]
	ldrb    r1, [r0, #0x18]
	lsl     r1, r1, #2
	add     r0, r0, r1
	ldr     r0, [r0, #0x20]
	bx      lr
@ 0x222ea2c

.thumb
Function_222ea2c: @ 222ea2c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x1c]
	bl      Function_222e9f8
	str     r4, [r5, #0x1c]
	pop     {r3-r5,pc}
@ 0x222ea3c

.thumb
Function_222ea3c: @ 222ea3c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222ea14
	str     r0, [r4, #0x1c]
	pop     {r4,pc}
@ 0x222ea48

.thumb
Function_222ea48: @ 222ea48 :thumb
	ldr     r1, [r0, #0x1c]
	add     r3, r1, #0x1
	str     r3, [r0, #0x1c]
	ldrb    r2, [r1, #0x0]
	add     r1, r3, #0x1
	str     r1, [r0, #0x1c]
	ldrb    r0, [r3, #0x0]
	lsl     r0, r0, #8
	add     r0, r2, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x222ea60

.thumb
Function_222ea60: @ 222ea60 :thumb
	push    {r4,r5}
	ldr     r1, [r0, #0x1c]
	add     r2, r1, #0x1
	str     r2, [r0, #0x1c]
	ldrb    r3, [r1, #0x0]
	add     r1, r2, #0x1
	add     r5, r1, #0x1
	str     r1, [r0, #0x1c]
	ldrb    r2, [r2, #0x0]
	add     r4, r5, #0x1
	str     r5, [r0, #0x1c]
	ldrb    r1, [r1, #0x0]
	str     r4, [r0, #0x1c]
	ldrb    r0, [r5, #0x0]
	mov     r4, #0x0
	add     r0, r4, r0
	lsl     r0, r0, #8
	add     r0, r0, r1
	lsl     r0, r0, #8
	add     r0, r0, r2
	lsl     r0, r0, #8
	add     r0, r0, r3
	pop     {r4,r5}
	bx      lr
@ 0x222ea90

.thumb
Function_222ea90: @ 222ea90 :thumb
	push    {r3,lr}
	cmp     r1, #0xd
	bhi     branch_222eb4a
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x222eaa2

Jumppoints_222eaa2:
.hword branch_222eabe - Jumppoints_222eaa2 - 2
.hword branch_222eac8 - Jumppoints_222eaa2 - 2
.hword branch_222ead2 - Jumppoints_222eaa2 - 2
.hword branch_222eadc - Jumppoints_222eaa2 - 2
.hword branch_222eae6 - Jumppoints_222eaa2 - 2
.hword branch_222eaf0 - Jumppoints_222eaa2 - 2
.hword branch_222eafa - Jumppoints_222eaa2 - 2
.hword branch_222eb04 - Jumppoints_222eaa2 - 2
.hword branch_222eb0e - Jumppoints_222eaa2 - 2
.hword branch_222eb18 - Jumppoints_222eaa2 - 2
.hword branch_222eb22 - Jumppoints_222eaa2 - 2
.hword branch_222eb2c - Jumppoints_222eaa2 - 2
.hword branch_222eb36 - Jumppoints_222eaa2 - 2
.hword branch_222eb40 - Jumppoints_222eaa2 - 2
.thumb
branch_222eabe: @ 222eabe :thumb
	mov     r1, #0x28
	mul     r1, r0
	ldr     r0, [pc, #0x90] @ 0x222eb54, (=0x223f394)
	ldr     r0, [r0, r1]
	pop     {r3,pc}
@ 0x222eac8

.thumb
branch_222eac8: @ 222eac8 :thumb
	mov     r1, #0x28
	mul     r1, r0
	ldr     r0, [pc, #0x88] @ 0x222eb58, (=0x223f3a0)
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x222ead2

.thumb
branch_222ead2: @ 222ead2 :thumb
	mov     r1, #0x28
	mul     r1, r0
	ldr     r0, [pc, #0x84] @ 0x222eb5c, (=0x223f3a2)
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x222eadc

.thumb
branch_222eadc: @ 222eadc :thumb
	mov     r1, #0x28
	mul     r1, r0
	ldr     r0, [pc, #0x7c] @ 0x222eb60, (=0x223f3a4)
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x222eae6

.thumb
branch_222eae6: @ 222eae6 :thumb
	mov     r1, #0x28
	mul     r1, r0
	ldr     r0, [pc, #0x78] @ 0x222eb64, (=0x223f3a6)
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x222eaf0

.thumb
branch_222eaf0: @ 222eaf0 :thumb
	mov     r1, #0x28
	mul     r1, r0
	ldr     r0, [pc, #0x70] @ 0x222eb68, (=0x223f3a8)
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x222eafa

.thumb
branch_222eafa: @ 222eafa :thumb
	mov     r1, #0x28
	mul     r1, r0
	ldr     r0, [pc, #0x6c] @ 0x222eb6c, (=0x223f3aa)
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x222eb04

.thumb
branch_222eb04: @ 222eb04 :thumb
	mov     r1, #0x28
	mul     r1, r0
	ldr     r0, [pc, #0x64] @ 0x222eb70, (=0x223f3ac)
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x222eb0e

.thumb
branch_222eb0e: @ 222eb0e :thumb
	mov     r1, #0x28
	mul     r1, r0
	ldr     r0, [pc, #0x60] @ 0x222eb74, (=0x223f3ae)
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x222eb18

.thumb
branch_222eb18: @ 222eb18 :thumb
	mov     r1, #0x28
	mul     r1, r0
	ldr     r0, [pc, #0x58] @ 0x222eb78, (=0x223f3b0)
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x222eb22

.thumb
branch_222eb22: @ 222eb22 :thumb
	mov     r1, #0x28
	mul     r1, r0
	ldr     r0, [pc, #0x54] @ 0x222eb7c, (=0x223f3b2)
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x222eb2c

.thumb
branch_222eb2c: @ 222eb2c :thumb
	mov     r1, #0x28
	mul     r1, r0
	ldr     r0, [pc, #0x4c] @ 0x222eb80, (=0x223f3b4)
	ldrh    r0, [r0, r1]
	pop     {r3,pc}
@ 0x222eb36

.thumb
branch_222eb36: @ 222eb36 :thumb
	mov     r1, #0x28
	mul     r1, r0
	ldr     r0, [pc, #0x48] @ 0x222eb84, (=0x223f3b6)
	ldrb    r0, [r0, r1]
	pop     {r3,pc}
@ 0x222eb40

.thumb
branch_222eb40: @ 222eb40 :thumb
	mov     r1, #0x28
	mul     r1, r0
	ldr     r0, [pc, #0x40] @ 0x222eb88, (=0x223f3b7)
	ldrb    r0, [r0, r1]
	pop     {r3,pc}
@ 0x222eb4a

.thumb
branch_222eb4a: @ 222eb4a :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222eb52


.align 2


.word 0x223f394 @ 0x222eb54
.word 0x223f3a0 @ 0x222eb58
.word 0x223f3a2 @ 0x222eb5c
.word 0x223f3a4 @ 0x222eb60
.word 0x223f3a6 @ 0x222eb64
.word 0x223f3a8 @ 0x222eb68
.word 0x223f3aa @ 0x222eb6c
.word 0x223f3ac @ 0x222eb70
.word 0x223f3ae @ 0x222eb74
.word 0x223f3b0 @ 0x222eb78
.word 0x223f3b2 @ 0x222eb7c
.word 0x223f3b4 @ 0x222eb80
.word 0x223f3b6 @ 0x222eb84
.word 0x223f3b7 @ 0x222eb88
.thumb
Function_222eb8c: @ 222eb8c :thumb
	push    {r3,lr}
	mov     r3, #0x28
	mul     r3, r2
	ldr     r2, [pc, #0xc] @ 0x222eba0, (=0x223f398)
	ldr     r2, [r2, r3]
	cmp     r2, #0x0
	beq     branch_222eb9c
	blx     r2
.thumb
branch_222eb9c: @ 222eb9c :thumb
	pop     {r3,pc}
@ 0x222eb9e


.align 2


.word 0x223f398 @ 0x222eba0
.thumb
Function_222eba4: @ 222eba4 :thumb
	push    {r3,lr}
	mov     r3, #0x28
	mul     r3, r2
	ldr     r2, [pc, #0xc] @ 0x222ebb8, (=0x223f39c)
	ldr     r2, [r2, r3]
	cmp     r2, #0x0
	beq     branch_222ebb4
	blx     r2
.thumb
branch_222ebb4: @ 222ebb4 :thumb
	pop     {r3,pc}
@ 0x222ebb6


.align 2


.word 0x223f39c @ 0x222ebb8
.thumb
Function_222ebbc: @ 222ebbc :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, #0x5e
	mov     r1, #0x20
	bl      malloc
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x222ebcc


.thumb
Function_222ebcc: @ 222ebcc :thumb
	ldr     r3, [pc, #0x4] @ 0x222ebd4, (=free+1)
	ldr     r0, [r1, #0x0]
	bx      r3
@ 0x222ebd2

.align 2
.word free+1 @ 0x222ebd4



.thumb
Function_222ebd8: @ 222ebd8 :thumb
	push    {r4,lr}
	mov     r2, r0
	mov     r4, r1
	ldr     r0, [r2, #0x0]
	ldr     r1, [r2, #0x4]
	bl      Function_223d9e4
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_2019060
	mov     r0, #0x2
	mov     r1, r0
	bl      Function_2019060
	mov     r0, #0x3
	mov     r1, r0
	bl      Function_2019060
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	pop     {r4,pc}
@ 0x222ec0a


.align 2, 0


.thumb
Function_222ec0c: @ 222ec0c :thumb
	ldr     r3, [pc, #0x4] @ 0x222ec14, (=0x223da29)
	ldr     r0, [r1, #0x0]
	bx      r3
@ 0x222ec12


.align 2


.word 0x223da29 @ 0x222ec14
.thumb
Function_222ec18: @ 222ec18 :thumb
	bx      lr
@ 0x222ec1a


.align 2, 0


.thumb
Function_222ec1c: @ 222ec1c :thumb
	bx      lr
@ 0x222ec1e


.align 2, 0
.thumb
Function_222ec20: @ 222ec20 :thumb
	push    {r3,lr}
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_2019060
	mov     r0, #0x2
	mov     r1, r0
	bl      Function_2019060
	mov     r0, #0x3
	mov     r1, r0
	bl      Function_2019060
	mov     r3, #0x14
	ldr     r0, [pc, #0x14] @ 0x222ec54, (=REG_BLDCNT)
	mov     r1, #0x1
	mov     r2, #0x3c
	str     r3, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	pop     {r3,pc}
@ 0x222ec52

.align 2
.word REG_BLDCNT @ 0x222ec54



.thumb
Function_222ec58: @ 222ec58 :thumb
	bx      lr
@ 0x222ec5a


.align 2, 0
.thumb
Function_222ec5c: @ 222ec5c :thumb
	push    {r3,lr}
	mov     r0, #0x2
	mov     r1, #0x3
	bl      Function_2019060
	mov     r0, #0x3
	mov     r1, #0x2
	bl      Function_2019060
	pop     {r3,pc}
@ 0x222ec70


.thumb
Function_222ec70: @ 222ec70 :thumb
	bx      lr
@ 0x222ec72


.align 2, 0
.thumb
Function_222ec74: @ 222ec74 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x10] @ 0x222ec88, (=REG_BLDCNT)
	mov     r3, #0x14
	mov     r1, #0x1
	mov     r2, #0x3c
	str     r3, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	pop     {r3,pc}
@ 0x222ec86

.align 2
.word REG_BLDCNT @ 0x222ec88



.thumb
Function_222ec8c: @ 222ec8c :thumb
	bx      lr
@ 0x222ec8e


.align 2, 0
.thumb
Function_222ec90: @ 222ec90 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0x0]
	mov     r4, r1
	bl      Function_223c164
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x222ec9e


.align 2, 0
.thumb
Function_222eca0: @ 222eca0 :thumb
	ldr     r3, [pc, #0x4] @ 0x222eca8, (=0x223c23d)
	ldr     r0, [r1, #0x0]
	bx      r3
@ 0x222eca6

.align 2
.word 0x223c23d @ 0x222eca8



.thumb
Function_222ecac: @ 222ecac :thumb
	push    {r3,lr}
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_2019060
	mov     r0, #0x0
	mov     r1, #0x2
	bl      Function_2019060
	mov     r0, #0x2
	mov     r1, r0
	bl      Function_2019060
	mov     r0, #0x3
	mov     r1, r0
	bl      Function_2019060
	mov     r3, #0x14
	ldr     r0, [pc, #0xc] @ 0x222ece0, (=REG_BLDCNT)
	mov     r1, #0x1
	mov     r2, #0x3c
	str     r3, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	pop     {r3,pc}
@ 0x222ecde


.align 2


.word REG_BLDCNT @ 0x222ece0
.thumb
Function_222ece4: @ 222ece4 :thumb
	bx      lr
@ 0x222ece6


.align 2, 0
.thumb
.globl Function_104_222ece8
Function_104_222ece8: @ 222ece8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xd9
	lsl     r0, r0, #4
	ldrb    r1, [r3, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r3, r0]
	bl      Function_203608c
	cmp     r4, r0
	pop     {r4,pc}
@ 0x222ecfe


.align 2, 0


.thumb
Function_222ed00: @ 222ed00 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x1c] @ 0x222ed24, (=0x6fc)
	ldr     r0, [r4, r0]
	bl      LoadTrainerDataAdress
	ldr     r1, [pc, #0x18] @ 0x222ed28, (=0x72c)
	mov     r0, #0x22
	add     r1, r4, r1
	mov     r2, #0x2c
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222ed20
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222ed20

.thumb
branch_222ed20: @ 222ed20 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222ed24

.word 0x6fc @ 0x222ed24
.word 0x72c @ 0x222ed28



.thumb
.globl Function_104_222ed2c
Function_104_222ed2c: @ 222ed2c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xd9
	lsl     r0, r0, #4
	ldrb    r1, [r3, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r3, r0]
	bl      Function_203608c
	cmp     r4, r0
	pop     {r4,pc}
@ 0x222ed42


.align 2, 0


.thumb
Function_222ed44: @ 222ed44 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x28] @ 0x222ed70, (=0x72c)
	mov     r3, #0x0
	add     r1, r0, r1
	mov     r4, r1
.thumb
branch_222ed4e: @ 222ed4e :thumb
	ldrh    r2, [r0, #0x18]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r2, [r4, #0x0]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r3, #0x14
	blt     branch_222ed4e
	mov     r0, #0x23
	mov     r2, #0x2c
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222ed6c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222ed6c

.thumb
branch_222ed6c: @ 222ed6c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222ed70

.word 0x72c @ 0x222ed70



.thumb
.globl Function_104_222ed74
Function_104_222ed74: @ 222ed74 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r0, #0xd9
	mov     r4, r3
	lsl     r0, r0, #4
	ldrb    r1, [r4, r0]
	mov     r5, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_222eda6
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_222eda6
	mov     r1, #0x0
.thumb
branch_222ed98: @ 222ed98 :thumb
	ldrh    r0, [r5, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	strh    r0, [r4, #0x18]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r1, #0x14
	blt     branch_222ed98
.thumb
branch_222eda6: @ 222eda6 :thumb
	pop     {r4-r6,pc}
@ 0x222eda8

.thumb
Function_222eda8: @ 222eda8 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x2c] @ 0x222edd8, (=0x72c)
	mov     r2, #0x9a
	add     r1, r0, r1
	mov     r4, #0x0
	mov     r5, r1
	lsl     r2, r2, #2
.thumb
branch_222edb6: @ 222edb6 :thumb
	ldrh    r3, [r0, r2]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r3, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x14
	blt     branch_222edb6
	mov     r0, #0x24
	mov     r2, #0x2c
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222edd4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222edd4

.thumb
branch_222edd4: @ 222edd4 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222edd8

.word 0x72c @ 0x222edd8



.thumb
.globl Function_104_222eddc
Function_104_222eddc: @ 222eddc :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r0, #0xd9
	mov     r4, r3
	lsl     r0, r0, #4
	ldrb    r1, [r4, r0]
	mov     r5, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_222ee12
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_222ee12
	mov     r0, #0x9a
	mov     r2, #0x0
	lsl     r0, r0, #2
branch_222ee04: @ 222ee04 :thumb
	ldrh    r1, [r5, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	strh    r1, [r4, r0]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r2, #0x14
	blt     branch_222ee04
.thumb
branch_222ee12: @ 222ee12 :thumb
	pop     {r4-r6,pc}
@ 0x222ee14

.thumb
Function_222ee14: @ 222ee14 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x1c] @ 0x222ee34, (=0x72c)
	mov     r3, r0
	strh    r1, [r3, r2]
	add     r1, r3, r2
	mov     r0, #0x25
	mov     r2, #0x2c
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222ee2e
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222ee2e

.thumb
branch_222ee2e: @ 222ee2e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222ee32

.align 2
.word 0x72c @ 0x222ee34



.thumb
.globl Function_104_222ee38
Function_104_222ee38: @ 222ee38 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0xd9
	mov     r4, r3
	lsl     r0, r0, #4
	ldrb    r1, [r4, r0]
	mov     r6, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_222ee58
	ldrh    r1, [r6, #0x0]
	ldr     r0, [pc, #0x4] @ 0x222ee5c, (=0xd88)
	strb    r1, [r4, r0]
.thumb
branch_222ee58: @ 222ee58 :thumb
	pop     {r4-r6,pc}
@ 0x222ee5a


.align 2


.word 0xd88 @ 0x222ee5c
.thumb
Function_222ee60: @ 222ee60 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      GetPkmnDataSize
	mov     r4, r0
	ldr     r0, [pc, #0x34] @ 0x222eea0, (=0x6fc)
	ldr     r0, [r5, r0]
	bl      LoadPokePartyAdress
	mov     r1, #0x26
	lsl     r1, r1, #4
	ldrb    r1, [r5, r1]
	bl      GetAdrOfPkmnInParty
	ldr     r1, [pc, #0x24] @ 0x222eea4, (=0x784)
	mov     r2, r4
	add     r1, r5, r1
	blx     MI_CpuCopy8
	ldr     r1, [pc, #0x1c] @ 0x222eea4, (=0x784)
	mov     r2, #0x2
	mov     r0, #0x26
	add     r1, r5, r1
	lsl     r2, r2, #8
	bl      Function_203597c
	cmp     r0, #0x1
	bne     branch_222ee9c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222ee9c

.thumb
branch_222ee9c: @ 222ee9c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222eea0

.word 0x6fc @ 0x222eea0
.word 0x784 @ 0x222eea4



.thumb
.globl Function_104_222eea8
Function_104_222eea8: @ 222eea8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0xd9
	mov     r4, r3
	lsl     r0, r0, #4
	ldrb    r1, [r4, r0]
	mov     r6, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_222eed2
	bl      GetPkmnDataSize
	ldr     r1, [pc, #0xc] @ 0x222eed4, (=0xd8c)
	mov     r2, r0
	ldr     r1, [r4, r1]
	mov     r0, r6
	blx     MI_CpuCopy8
branch_222eed2: @ 222eed2 :thumb
	pop     {r4-r6,pc}
@ 0x222eed4

.word 0xd8c @ 0x222eed4



.thumb
.globl Function_104_222eed8
Function_104_222eed8: @ 222eed8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x2
	lsl     r0, r0, #8
	mov     r4, r1
	cmp     r2, r0
	ble     branch_222eeea
	bl      ErrorHandling
branch_222eeea: @ 222eeea :thumb

	ldr     r0, [pc, #0x8] @ 0x222eef4, (=0x984)
	add     r1, r4, r0
	lsl     r0, r5, #9
	add     r0, r1, r0
	pop     {r3-r5,pc}
@ 0x222eef4

.word 0x984 @ 0x222eef4
.thumb
Function_222eef8: @ 222eef8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x2c] @ 0x222ef2c, (=0x504)
	add     r4, r5, r0
	sub     r0, #0xc
	ldr     r0, [r5, r0]
	bl      LoadTrainerDataAdress
	ldrh    r0, [r5, #0x8]
	mov     r1, r4
	mov     r2, #0x3c
	strh    r0, [r4, #0x2]
	ldrh    r0, [r5, #0xc]
	strh    r0, [r4, #0x4]
	ldrh    r0, [r5, #0xe]
	strh    r0, [r4, #0x6]
	mov     r0, #0x16
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222ef26
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222ef26

.thumb
branch_222ef26: @ 222ef26 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222ef2a

.align 2
.word 0x504 @ 0x222ef2c



.thumb
.globl Function_104_222ef30
Function_104_222ef30: @ 222ef30 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x28] @ 0x222ef60, (=0x702)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r5, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_222ef5c
	ldrh    r1, [r5, #0x2]
	mov     r0, #0x16
	lsl     r0, r0, #6
	strh    r1, [r4, r0]
	ldrh    r2, [r5, #0x4]
	add     r1, r0, #0x2
	.hword  0x1e80 @ sub r0, r0, #0x2
	strh    r2, [r4, r1]
	ldrh    r1, [r5, #0x6]
	strh    r1, [r4, r0]
.thumb
branch_222ef5c: @ 222ef5c :thumb
	pop     {r4-r6,pc}
@ 0x222ef5e


.align 2


.word 0x702 @ 0x222ef60
.thumb
Function_222ef64: @ 222ef64 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x28] @ 0x222ef90, (=0x504)
	mov     r3, #0x0
	add     r1, r0, r1
	mov     r4, r1
.thumb
branch_222ef6e: @ 222ef6e :thumb
	ldrh    r2, [r0, #0x18]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r2, [r4, #0x0]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r3, #0xe
	blt     branch_222ef6e
	mov     r0, #0x17
	mov     r2, #0x3c
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222ef8c
	mov     r0, #0x1
	pop     {r4,pc}

branch_222ef8c: @ 222ef8c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222ef90

.word 0x504 @ 0x222ef90



.thumb
.globl Function_104_222ef94
Function_104_222ef94: @ 222ef94 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x2c] @ 0x222efc8, (=0x702)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r5, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_222efc4
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_222efc4
	mov     r1, #0x0
.thumb
branch_222efb6: @ 222efb6 :thumb
	ldrh    r0, [r5, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	strh    r0, [r4, #0x18]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r1, #0xe
	blt     branch_222efb6
.thumb
branch_222efc4: @ 222efc4 :thumb
	pop     {r4-r6,pc}
@ 0x222efc6


.align 2


.word 0x702 @ 0x222efc8
.thumb
Function_222efcc: @ 222efcc :thumb
	push    {r4-r6,lr}
	ldr     r1, [pc, #0x60] @ 0x222f030, (=0x504)
	ldr     r2, [pc, #0x60] @ 0x222f034, (=0x584)
	add     r1, r0, r1
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, r1
.thumb
branch_222efda: @ 222efda :thumb
	ldrh    r3, [r5, r2]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	strh    r3, [r6, #0x0]
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r4, #0x6
	blt     branch_222efda
	mov     r2, #0x59
	mov     r5, #0x0
	mov     r4, r1
	lsl     r2, r2, #4
.thumb
branch_222eff0: @ 222eff0 :thumb
	add     r3, r0, r5
	ldrb    r3, [r3, r2]
	.hword  0x1c6d @ add r5, r5, #0x1
	strh    r3, [r4, #0xc]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r5, #0x6
	blt     branch_222eff0
	ldr     r4, [pc, #0x38] @ 0x222f038, (=0x598)
	mov     r2, r1
	mov     r3, #0x0
	add     r2, #0x18
	mov     r5, r4
.thumb
branch_222f008: @ 222f008 :thumb
	ldr     r6, [r0, r4]
	.hword  0x1c5b @ add r3, r3, #0x1
	strh    r6, [r2, #0x0]
	ldr     r6, [r0, r5]
	.hword  0x1d00 @ add r0, r0, #0x4
	lsr     r6, r6, #16
	strh    r6, [r2, #0xc]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r3, #0x6
	blt     branch_222f008
	mov     r0, #0x18
	mov     r2, #0x3c
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222f02c
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x222f02c

.thumb
branch_222f02c: @ 222f02c :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222f030

.word 0x504 @ 0x222f030
.word 0x584 @ 0x222f034
.word 0x598 @ 0x222f038



.thumb
.globl Function_104_222f03c
Function_104_222f03c: @ 222f03c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x6c] @ 0x222f0b0, (=0x702)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r5, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_222f0ae
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_222f0ae
	mov     r0, #0x95
	mov     r2, #0x0
	mov     r3, r5
	mov     r6, r4
	lsl     r0, r0, #2
.thumb
branch_222f066: @ 222f066 :thumb
	ldrh    r1, [r3, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r1, [r6, r0]
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r2, #0x6
	blt     branch_222f066
	mov     r0, #0x26
	mov     r6, #0x0
	mov     r3, r5
	lsl     r0, r0, #4
.thumb
branch_222f07c: @ 222f07c :thumb
	ldrh    r2, [r3, #0xc]
	add     r1, r4, r6
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	strb    r2, [r1, r0]
	cmp     r6, #0x6
	blt     branch_222f07c
	mov     r2, #0x9a
	lsl     r2, r2, #2
	mov     r1, #0x0
	add     r5, #0x18
	mov     r3, r2
	mov     r6, r2
.thumb
branch_222f096: @ 222f096 :thumb
	ldrh    r0, [r5, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r4, r2]
	ldrh    r7, [r5, #0xc]
	ldr     r0, [r4, r3]
	.hword  0x1cad @ add r5, r5, #0x2
	lsl     r7, r7, #16
	orr     r0, r7
	str     r0, [r4, r6]
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r1, #0x6
	blt     branch_222f096
.thumb
branch_222f0ae: @ 222f0ae :thumb
	pop     {r3-r7,pc}
@ 0x222f0b0

.word 0x702 @ 0x222f0b0
.thumb
Function_222f0b4: @ 222f0b4 :thumb
	push    {r4-r6,lr}
	ldr     r1, [pc, #0x60] @ 0x222f118, (=0x504)
	ldr     r2, [pc, #0x60] @ 0x222f11c, (=0x3d2)
	add     r1, r0, r1
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, r1
.thumb
branch_222f0c2: @ 222f0c2 :thumb
	ldrh    r3, [r5, r2]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	strh    r3, [r6, #0x0]
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r4, #0x4
	blt     branch_222f0c2
	ldr     r2, [pc, #0x4c] @ 0x222f120, (=0x3da)
	mov     r5, #0x0
	mov     r4, r1
.thumb
branch_222f0d6: @ 222f0d6 :thumb
	add     r3, r0, r5
	ldrb    r3, [r3, r2]
	.hword  0x1c6d @ add r5, r5, #0x1
	strh    r3, [r4, #0x8]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r5, #0x4
	blt     branch_222f0d6
	mov     r4, #0x3e
	mov     r2, r1
	lsl     r4, r4, #4
	mov     r3, #0x0
	add     r2, #0x10
	mov     r5, r4
.thumb
branch_222f0f0: @ 222f0f0 :thumb
	ldr     r6, [r0, r4]
	.hword  0x1c5b @ add r3, r3, #0x1
	strh    r6, [r2, #0x0]
	ldr     r6, [r0, r5]
	.hword  0x1d00 @ add r0, r0, #0x4
	lsr     r6, r6, #16
	strh    r6, [r2, #0x8]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r3, #0x4
	blt     branch_222f0f0
	mov     r0, #0x19
	mov     r2, #0x3c
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222f114
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x222f114

.thumb
branch_222f114: @ 222f114 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222f118

.word 0x504 @ 0x222f118
.word 0x3d2 @ 0x222f11c
.word 0x3da @ 0x222f120



.thumb
.globl Function_104_222f124
Function_104_222f124: @ 222f124 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x68] @ 0x222f194, (=0x702)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r5, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_222f192
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_222f192
	ldr     r0, [pc, #0x50] @ 0x222f198, (=0x3d2)
	mov     r2, #0x0
	mov     r3, r5
	mov     r6, r4
.thumb
branch_222f14c: @ 222f14c :thumb
	ldrh    r1, [r3, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r1, [r6, r0]
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r2, #0x4
	blt     branch_222f14c
	ldr     r0, [pc, #0x40] @ 0x222f19c, (=0x3da)
	mov     r6, #0x0
	mov     r3, r5
.thumb
branch_222f160: @ 222f160 :thumb
	ldrh    r2, [r3, #0x8]
	add     r1, r4, r6
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	strb    r2, [r1, r0]
	cmp     r6, #0x4
	blt     branch_222f160
	mov     r2, #0x3e
	lsl     r2, r2, #4
	mov     r1, #0x0
	add     r5, #0x10
	mov     r3, r2
	mov     r6, r2
.thumb
branch_222f17a: @ 222f17a :thumb
	ldrh    r0, [r5, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r4, r2]
	ldrh    r7, [r5, #0x8]
	ldr     r0, [r4, r3]
	.hword  0x1cad @ add r5, r5, #0x2
	lsl     r7, r7, #16
	orr     r0, r7
	str     r0, [r4, r6]
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r1, #0x4
	blt     branch_222f17a
.thumb
branch_222f192: @ 222f192 :thumb
	pop     {r3-r7,pc}
@ 0x222f194

.word 0x702 @ 0x222f194
.word 0x3d2 @ 0x222f198
.word 0x3da @ 0x222f19c
.thumb
Function_222f1a0: @ 222f1a0 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x1c] @ 0x222f1c0, (=0x504)
	mov     r3, r0
	strh    r1, [r3, r2]
	add     r1, r3, r2
	mov     r0, #0x1a
	mov     r2, #0x3c
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222f1ba
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222f1ba

.thumb
branch_222f1ba: @ 222f1ba :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222f1be

.align 2
.word 0x504 @ 0x222f1c0



.thumb
.globl Function_104_222f1c4
Function_104_222f1c4: @ 222f1c4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x18] @ 0x222f1e4, (=0x702)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r6, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_222f1e2
	ldrh    r1, [r6, #0x0]
	ldr     r0, [pc, #0x8] @ 0x222f1e8, (=0x57c)
	strb    r1, [r4, r0]
.thumb
branch_222f1e2: @ 222f1e2 :thumb
	pop     {r4-r6,pc}
@ 0x222f1e4

.word 0x702 @ 0x222f1e4
.word 0x57c @ 0x222f1e8
.thumb
Function_222f1ec: @ 222f1ec :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x1c] @ 0x222f20c, (=0x504)
	mov     r3, r0
	strh    r1, [r3, r2]
	add     r1, r3, r2
	mov     r0, #0x1b
	mov     r2, #0x3c
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222f206
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222f206

.thumb
branch_222f206: @ 222f206 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222f20a

.align 2
.word 0x504 @ 0x222f20c



.thumb
.globl Function_104_222f210
Function_104_222f210: @ 222f210 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x18] @ 0x222f230, (=0x702)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r6, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_222f22e
	ldrh    r1, [r6, #0x0]
	ldr     r0, [pc, #0x8] @ 0x222f234, (=0x57d)
	strb    r1, [r4, r0]
.thumb
branch_222f22e: @ 222f22e :thumb
	pop     {r4-r6,pc}
@ 0x222f230

.word 0x702 @ 0x222f230
.word 0x57d @ 0x222f234
.thumb
Function_222f238: @ 222f238 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r0, [pc, #0xd0] @ 0x222f310, (=0x504)
	add     r0, r5, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldrb    r0, [r5, #0x4]
	bl      Function_223aa50
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	cmp     r4, #0x0
	ble     branch_222f28a
	add     r7, sp, #0x10
	add     r6, sp, #0x14
.thumb
branch_222f25c: @ 222f25c :thumb
	ldr     r0, [pc, #0xb4] @ 0x222f314, (=0x4d4)
	ldr     r1, [sp, #0x8]
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0xc]
	mov     r1, #0x47
	mov     r2, #0x0
	bl      GetPkmnData
	strb    r0, [r7, #0x0]
	mov     r1, #0x0
	ldr     r0, [sp, #0xc]
	mov     r2, r1
	bl      GetPkmnData
	stmia   r6!, {r0}
	ldr     r0, [sp, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, r4
	blt     branch_222f25c
.thumb
branch_222f28a: @ 222f28a :thumb
	mov     r3, #0x0
	cmp     r4, #0x0
	ble     branch_222f2a2
	ldr     r2, [sp, #0x0]
	ldr     r0, [pc, #0x84] @ 0x222f318, (=0x4e8)
.thumb
branch_222f294: @ 222f294 :thumb
	ldrh    r1, [r5, r0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	strh    r1, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r3, r4
	blt     branch_222f294
.thumb
branch_222f2a2: @ 222f2a2 :thumb
	ldr     r0, [sp, #0x4]
	add     r0, r0, r4
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	cmp     r4, #0x0
	ble     branch_222f2c6
	ldr     r1, [sp, #0x4]
	add     r3, sp, #0x10
	lsl     r2, r1, #1
	ldr     r1, [sp, #0x0]
	add     r2, r1, r2
.thumb
branch_222f2b8: @ 222f2b8 :thumb
	ldrb    r1, [r3, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c5b @ add r3, r3, #0x1
	strh    r1, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r0, r4
	blt     branch_222f2b8
.thumb
branch_222f2c6: @ 222f2c6 :thumb
	ldr     r0, [sp, #0x4]
	mov     r3, #0x0
	add     r0, r0, r4
	cmp     r4, #0x0
	ble     branch_222f2f6
	ldr     r5, [sp, #0x0]
	lsl     r6, r4, #1
	ldr     r2, [sp, #0x0]
	lsl     r0, r0, #1
	add     r5, r5, r6
	add     r2, r2, r0
	add     r1, sp, #0x14
	add     r0, r5, r0
.thumb
branch_222f2e0: @ 222f2e0 :thumb
	ldr     r5, [r1, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	strh    r5, [r2, #0x0]
	ldr     r5, [r1, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	lsr     r5, r5, #16
	strh    r5, [r0, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r3, r4
	blt     branch_222f2e0
.thumb
branch_222f2f6: @ 222f2f6 :thumb
	ldr     r1, [sp, #0x0]
	mov     r0, #0x1c
	mov     r2, #0x3c
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222f30a
	add     sp, #0x1c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x222f30a

.thumb
branch_222f30a: @ 222f30a :thumb
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x222f310

.word 0x504 @ 0x222f310
.word 0x4d4 @ 0x222f314
.word 0x4e8 @ 0x222f318



.thumb
.globl Function_104_222f31c
Function_104_222f31c: @ 222f31c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x88] @ 0x222f3ac, (=0x702)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	str     r2, [sp, #0x0]
	mov     r7, #0x0
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_222f3a8
	ldrb    r0, [r4, #0x4]
	bl      Function_223aa50
	mov     r3, r7
	cmp     r0, #0x0
	ble     branch_222f356
	ldr     r5, [sp, #0x0]
	ldr     r1, [pc, #0x68] @ 0x222f3b0, (=0x584)
	mov     r6, r4
.thumb
branch_222f348: @ 222f348 :thumb
	ldrh    r2, [r5, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	strh    r2, [r6, r1]
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r3, r0
	blt     branch_222f348
.thumb
branch_222f356: @ 222f356 :thumb
	add     r7, r7, r0
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_222f376
	ldr     r1, [sp, #0x0]
	lsl     r2, r7, #1
	add     r5, r1, r2
	mov     r1, #0x59
	lsl     r1, r1, #4
.thumb
branch_222f368: @ 222f368 :thumb
	ldrh    r3, [r5, #0x0]
	add     r2, r4, r6
	.hword  0x1c76 @ add r6, r6, #0x1
	strb    r3, [r2, r1]
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r6, r0
	blt     branch_222f368
.thumb
branch_222f376: @ 222f376 :thumb
	add     r2, r7, r0
	mov     r1, #0x0
	cmp     r0, #0x0
	ble     branch_222f3a8
	ldr     r3, [sp, #0x0]
	lsl     r2, r2, #1
	lsl     r6, r0, #1
	add     r5, r3, r2
	add     r3, r3, r6
	add     r6, r3, r2
	ldr     r2, [pc, #0x28] @ 0x222f3b4, (=0x598)
.thumb
branch_222f38c: @ 222f38c :thumb
	ldrh    r7, [r5, #0x0]
	ldr     r3, [pc, #0x24] @ 0x222f3b4, (=0x598)
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r7, [r4, r3]
	ldrh    r7, [r6, #0x0]
	ldr     r3, [r4, r3]
	.hword  0x1cad @ add r5, r5, #0x2
	lsl     r7, r7, #16
	orr     r3, r7
	str     r3, [r4, r2]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r1, r0
	blt     branch_222f38c
.thumb
branch_222f3a8: @ 222f3a8 :thumb
	pop     {r3-r7,pc}
@ 0x222f3aa


.align 2


.word 0x702 @ 0x222f3ac
.word 0x584 @ 0x222f3b0
.word 0x598 @ 0x222f3b4
.thumb
Function_222f3b8: @ 222f3b8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	bl      Function_203041c
	ldrh    r1, [r5, #0x14]
	ldr     r0, [pc, #0x48] @ 0x222f410, (=0x3c2)
	strh    r1, [r5, r0]
	ldrh    r1, [r5, #0x16]
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r1, [r5, r0]
	ldr     r0, [r5, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e630
	mov     r6, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_2030698
	ldr     r1, [pc, #0x20] @ 0x222f414, (=0x3d6)
	mov     r2, #0x28
	strh    r0, [r5, r1]
	sub     r1, #0x16
	mov     r0, #0x2a
	add     r1, r5, r1
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222f40a
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x222f40a

.thumb
branch_222f40a: @ 222f40a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222f40e

.align 2
.word 0x3c2 @ 0x222f410
.word 0x3d6 @ 0x222f414



.thumb
.globl Function_104_222f418
Function_104_222f418: @ 222f418 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x24] @ 0x222f444, (=0xa1a)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r5, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_222f442
	ldrh    r1, [r5, #0x2]
	ldr     r0, [pc, #0x14] @ 0x222f448, (=0xa16)
	strh    r1, [r4, r0]
	ldrh    r2, [r5, #0x4]
	.hword  0x1f01 @ sub r1, r0, #0x4
	.hword  0x1d80 @ add r0, r0, #0x6
	strh    r2, [r4, r1]
	ldrh    r1, [r5, #0x16]
	strh    r1, [r4, r0]
.thumb
branch_222f442: @ 222f442 :thumb
	pop     {r4-r6,pc}
@ 0x222f444

.word 0xa1a @ 0x222f444
.word 0xa16 @ 0x222f448
.thumb
Function_222f44c: @ 222f44c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xf
	mov     r2, #0x0
	mov     r3, r4
	lsl     r0, r0, #6
.thumb
branch_222f458: @ 222f458 :thumb
	ldrh    r1, [r3, #0x30]
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r1, [r3, r0]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0xe
	blt     branch_222f458
	mov     r1, #0xf
	lsl     r1, r1, #6
	mov     r0, #0x2b
	add     r1, r4, r1
	mov     r2, #0x28
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222f47a
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222f47a

.thumb
branch_222f47a: @ 222f47a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222f47e


.align 2, 0
.thumb
.globl Function_104_222f480
Function_104_222f480: @ 222f480 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x2c] @ 0x222f4b4, (=0xa1a)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r5, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_222f4b0
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_222f4b0
	mov     r1, #0x0
.thumb
branch_222f4a2: @ 222f4a2 :thumb
	ldrh    r0, [r5, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	strh    r0, [r4, #0x30]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r1, #0xe
	blt     branch_222f4a2
.thumb
branch_222f4b0: @ 222f4b0 :thumb
	pop     {r4-r6,pc}
@ 0x222f4b2


.align 2


.word 0xa1a @ 0x222f4b4
.thumb
Function_222f4b8: @ 222f4b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x64] @ 0x222f524, (=0xa18)
	ldrb    r1, [r4, r0]
	mov     r0, #0xf
	lsl     r0, r0, #6
	strh    r1, [r4, r0]
	bl      Function_203608c
	cmp     r0, #0x0
	ldr     r1, [pc, #0x58] @ 0x222f528, (=0xa1b)
	bne     branch_222f4f0
	ldrb    r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_222f4de
	.hword  0x1ec8 @ sub r0, r1, #0x3
	ldrb    r0, [r4, r0]
	strb    r0, [r4, r1]
	b       branch_222f502
@ 0x222f4de

.thumb
branch_222f4de: @ 222f4de :thumb
	.hword  0x1f80 @ sub r0, r0, #0x6
	cmp     r0, #0x4
	bne     branch_222f502
	.hword  0x1ec8 @ sub r0, r1, #0x3
	ldrb    r0, [r4, r0]
	cmp     r0, #0x4
	beq     branch_222f502
	strb    r0, [r4, r1]
	b       branch_222f502
@ 0x222f4f0

.thumb
branch_222f4f0: @ 222f4f0 :thumb
	ldrb    r0, [r4, r1]
	cmp     r0, #0x4
	bne     branch_222f502
	.hword  0x1ec8 @ sub r0, r1, #0x3
	ldrb    r0, [r4, r0]
	cmp     r0, #0x4
	beq     branch_222f502
	.hword  0x1d80 @ add r0, r0, #0x6
	strb    r0, [r4, r1]
.thumb
branch_222f502: @ 222f502 :thumb
	ldr     r0, [pc, #0x24] @ 0x222f528, (=0xa1b)
	ldr     r1, [pc, #0x24] @ 0x222f52c, (=0x3c2)
	ldrb    r0, [r4, r0]
	mov     r2, #0x28
	strh    r0, [r4, r1]
	.hword  0x1e89 @ sub r1, r1, #0x2
	mov     r0, #0x2c
	add     r1, r4, r1
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222f51e
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222f51e

.thumb
branch_222f51e: @ 222f51e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222f522

.align 2
.word 0xa18 @ 0x222f524
.word 0xa1b @ 0x222f528
.word 0x3c2 @ 0x222f52c



.thumb
.globl Function_104_222f530
Function_104_222f530: @ 222f530 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x8c] @ 0x222f5c4, (=0xa1a)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r5, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_222f5c2
	ldrh    r1, [r5, #0x0]
	ldr     r0, [pc, #0x7c] @ 0x222f5c8, (=0xa19)
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_222f594
	ldr     r1, [pc, #0x74] @ 0x222f5cc, (=0xa1b)
	ldrb    r0, [r4, r1]
	cmp     r0, #0x0
	beq     branch_222f57a
	cmp     r0, #0x4
	bne     branch_222f5c2
	.hword  0x1e88 @ sub r0, r1, #0x2
	ldrb    r0, [r4, r0]
	cmp     r0, #0x4
	beq     branch_222f5c2
	add     r2, r0, #0x6
	.hword  0x1ec8 @ sub r0, r1, #0x3
	strb    r2, [r4, r0]
	.hword  0x1e88 @ sub r0, r1, #0x2
	ldrb    r0, [r4, r0]
	.hword  0x1d80 @ add r0, r0, #0x6
	strb    r0, [r4, r1]
	pop     {r4-r6,pc}
@ 0x222f57a

.thumb
branch_222f57a: @ 222f57a :thumb
	.hword  0x1e88 @ sub r0, r1, #0x2
	ldrb    r0, [r4, r0]
	.hword  0x1d80 @ add r0, r0, #0x6
	strb    r0, [r4, r1]
	.hword  0x1e88 @ sub r0, r1, #0x2
	ldrb    r0, [r4, r0]
	cmp     r0, #0x4
	beq     branch_222f5c2
	add     r0, r1, #0x5
	ldr     r2, [pc, #0x40] @ 0x222f5d0, (=0xeedd)
	ldr     r0, [r4, r0]
	strh    r2, [r0, #0x0]
	pop     {r4-r6,pc}
@ 0x222f594

.thumb
branch_222f594: @ 222f594 :thumb
	ldrh    r1, [r5, #0x2]
	ldr     r0, [pc, #0x34] @ 0x222f5cc, (=0xa1b)
	strb    r1, [r4, r0]
	ldrb    r1, [r4, r0]
	cmp     r1, #0x4
	beq     branch_222f5a8
	.hword  0x1d40 @ add r0, r0, #0x5
	ldr     r1, [pc, #0x2c] @ 0x222f5d0, (=0xeedd)
	ldr     r0, [r4, r0]
	strh    r1, [r0, #0x0]
.thumb
branch_222f5a8: @ 222f5a8 :thumb
	ldr     r1, [pc, #0x1c] @ 0x222f5c8, (=0xa19)
	ldrb    r0, [r4, r1]
	cmp     r0, #0x4
	bne     branch_222f5c2
	.hword  0x1e48 @ sub r0, r1, #0x1
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_222f5c2
	cmp     r0, #0x4
	beq     branch_222f5c2
	add     r2, r0, #0x6
	add     r0, r1, #0x2
	strb    r2, [r4, r0]
.thumb
branch_222f5c2: @ 222f5c2 :thumb
	pop     {r4-r6,pc}
@ 0x222f5c4

.word 0xa1a @ 0x222f5c4
.word 0xa19 @ 0x222f5c8
.word 0xa1b @ 0x222f5cc
.word 0xeedd @ 0x222f5d0
.thumb
Function_222f5d4: @ 222f5d4 :thumb
	push    {r3-r7,lr}
	mov     r3, r0
	mov     r0, #0x9b
	mov     r1, #0xf
	mov     r4, #0x0
	mov     r5, r3
	lsl     r0, r0, #2
	lsl     r1, r1, #6
.thumb
branch_222f5e4: @ 222f5e4 :thumb
	ldrh    r2, [r5, r0]
	.hword  0x1c64 @ add r4, r4, #0x1
	strh    r2, [r5, r1]
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x4
	blt     branch_222f5e4
	mov     r0, #0x9d
	mov     r1, #0xf2
	mov     r5, #0x0
	mov     r4, r3
	lsl     r0, r0, #2
	lsl     r1, r1, #2
.thumb
branch_222f5fc: @ 222f5fc :thumb
	add     r2, r3, r5
	ldrb    r2, [r2, r0]
	.hword  0x1c6d @ add r5, r5, #0x1
	strh    r2, [r4, r1]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r5, #0x4
	blt     branch_222f5fc
	mov     r7, #0xf
	lsl     r7, r7, #6
	mov     r1, r3
	mov     r5, #0x9e
	mov     r6, r7
	mov     r2, #0x0
	mov     r0, r3
	add     r1, #0x10
	lsl     r5, r5, #2
	add     r6, #0x8
.thumb
branch_222f61e: @ 222f61e :thumb
	mov     r4, #0x9e
	lsl     r4, r4, #2
	ldr     r4, [r0, r4]
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r4, [r1, r7]
	ldr     r4, [r0, r5]
	.hword  0x1d00 @ add r0, r0, #0x4
	lsr     r4, r4, #16
	strh    r4, [r1, r6]
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r2, #0x4
	blt     branch_222f61e
	mov     r1, #0xf
	lsl     r1, r1, #6
	mov     r0, #0x2d
	add     r1, r3, r1
	mov     r2, #0x28
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222f64c
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_222f64c: @ 222f64c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x222f650


.thumb
.globl Function_104_222f650
Function_104_222f650: @ 222f650 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x6c] @ 0x222f6c4, (=0xa1a)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r5, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_222f6c2
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_222f6c2
	mov     r0, #0x9b
	mov     r2, #0x0
	mov     r3, r5
	mov     r6, r4
	lsl     r0, r0, #2
.thumb
branch_222f67a: @ 222f67a :thumb
	ldrh    r1, [r3, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r1, [r6, r0]
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r2, #0x4
	blt     branch_222f67a
	mov     r0, #0x9d
	mov     r6, #0x0
	mov     r3, r5
	lsl     r0, r0, #2
.thumb
branch_222f690: @ 222f690 :thumb
	ldrh    r2, [r3, #0x8]
	add     r1, r4, r6
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	strb    r2, [r1, r0]
	cmp     r6, #0x4
	blt     branch_222f690
	mov     r2, #0x9e
	lsl     r2, r2, #2
	mov     r1, #0x0
	add     r5, #0x10
	mov     r3, r2
	mov     r6, r2
.thumb
branch_222f6aa: @ 222f6aa :thumb
	ldrh    r0, [r5, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r4, r2]
	ldrh    r7, [r5, #0x8]
	ldr     r0, [r4, r3]
	.hword  0x1cad @ add r5, r5, #0x2
	lsl     r7, r7, #16
	orr     r0, r7
	str     r0, [r4, r6]
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r1, #0x4
	blt     branch_222f6aa
.thumb
branch_222f6c2: @ 222f6c2 :thumb
	pop     {r3-r7,pc}
@ 0x222f6c4

.word 0xa1a @ 0x222f6c4



.thumb
Function_222f6c8: @ 222f6c8 :thumb
	push    {r3,lr}
	mov     r2, #0xf
	mov     r3, r0
	lsl     r2, r2, #6
	strh    r1, [r3, r2]
	add     r1, r3, r2
	mov     r0, #0x2e
	mov     r2, #0x28
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222f6e4
	mov     r0, #0x1
	pop     {r3,pc}

branch_222f6e4: @ 222f6e4 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222f6e8


.thumb
.globl Function_104_222f6e8
Function_104_222f6e8: @ 222f6e8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x1c] @ 0x222f70c, (=0xa1a)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r6, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_222f708
	ldrh    r1, [r6, #0x0]
	mov     r0, #0xa1
	lsl     r0, r0, #4
	strb    r1, [r4, r0]
.thumb
branch_222f708: @ 222f708 :thumb
	pop     {r4-r6,pc}
@ 0x222f70a


.align 2


.word 0xa1a @ 0x222f70c
.thumb
Function_222f710: @ 222f710 :thumb
	push    {r3,lr}
	mov     r2, #0xf
	mov     r3, r0
	lsl     r2, r2, #6
	strh    r1, [r3, r2]
	add     r1, r3, r2
	mov     r0, #0x2f
	mov     r2, #0x28
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222f72c
	mov     r0, #0x1
	pop     {r3,pc}

branch_222f72c: @ 222f72c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222f730


.thumb
.globl Function_104_222f730
Function_104_222f730: @ 222f730 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x18] @ 0x222f750, (=0xa1a)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r6, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_222f74e
	ldrh    r1, [r6, #0x0]
	ldr     r0, [pc, #0x8] @ 0x222f754, (=0xa11)
	strb    r1, [r4, r0]
.thumb
branch_222f74e: @ 222f74e :thumb
	pop     {r4-r6,pc}
@ 0x222f750

.word 0xa1a @ 0x222f750
.word 0xa11 @ 0x222f754
.thumb
Function_222f758: @ 222f758 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	ldrb    r0, [r7, #0x10]
	mov     r1, #0x0
	bl      Function_223b7a8
	str     r0, [sp, #0x0]
	bl      GetPkmnDataSize
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_222f79c
	mov     r0, #0x41
	lsl     r0, r0, #4
	add     r0, r7, r0
	mov     r5, r4
	str     r0, [sp, #0x4]
.thumb
branch_222f780: @ 222f780 :thumb
	ldr     r0, [r7, #0x28]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	ldr     r1, [sp, #0x4]
	mov     r2, r6
	add     r1, r1, r5
	blx     MI_CpuCopy8
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, r5, r6
	cmp     r4, r0
	blt     branch_222f780
.thumb
branch_222f79c: @ 222f79c :thumb
	mov     r1, #0x41
	lsl     r1, r1, #4
	mov     r2, #0x2
	mov     r0, #0x30
	add     r1, r7, r1
	lsl     r2, r2, #8
	bl      Function_203597c
	cmp     r0, #0x1
	bne     branch_222f7b6
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_222f7b6: @ 222f7b6 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222f7bc


.thumb
.globl Function_104_222f7bc
Function_104_222f7bc: @ 222f7bc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r1, [pc, #0x84] @ 0x222f848, (=0xa1a)
	mov     r4, r0
	mov     r0, r3
	ldrb    r0, [r0, r1]
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	add     r2, r0, #0x1
	mov     r0, r3
	strb    r2, [r0, r1]
	bl      Function_203608c
	cmp     r4, r0
	beq     branch_222f844
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	ldrb    r0, [r0, #0x10]
	bl      Function_223b7a8
	str     r0, [sp, #0x8]
	bl      GetPkmnDataSize
	mov     r5, r0
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r6, r0
	ldr     r0, [sp, #0x8]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_222f81e
	mov     r4, r7
.thumb
branch_222f7fe: @ 222f7fe :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	add     r0, r0, r4
	mov     r2, r5
	blx     MI_CpuCopy8
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	ldr     r0, [r0, #0x28]
	bl      CopyPkmnDataToParty
	ldr     r0, [sp, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, r4, r5
	cmp     r7, r0
	blt     branch_222f7fe
.thumb
branch_222f81e: @ 222f81e :thumb
	mov     r0, r6
	bl      free
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_222f844
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	ldr     r0, [r0, #0x28]
	mov     r2, #0x2
	bl      Function_207a184
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	ldr     r0, [r0, #0x28]
	mov     r2, #0x3
	bl      Function_207a184
branch_222f844: @ 222f844 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x222f848

.word 0xa1a @ 0x222f848



.thumb
.globl Function_104_222f84c
Function_104_222f84c: @ 222f84c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x2
	lsl     r0, r0, #8
	mov     r4, r1
	cmp     r2, r0
	ble     branch_222f85e
	bl      ErrorHandling
branch_222f85e: @ 222f85e :thumb

	mov     r0, #0x61
	lsl     r0, r0, #4
	add     r1, r4, r0
	lsl     r0, r5, #9
	add     r0, r1, r0
	pop     {r3-r5,pc}
@ 0x222f86a


.align 2, 0


.thumb
Function_222f86c: @ 222f86c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_20305b8
	ldrh    r0, [r4, #0x18]
	ldr     r1, [pc, #0x20] @ 0x222f89c, (=0x426)
	strh    r0, [r4, r1]
	add     r0, r1, #0x2
	ldrh    r2, [r4, #0x1a]
	.hword  0x1e89 @ sub r1, r1, #0x2
	add     r1, r4, r1
	strh    r2, [r4, r0]
	mov     r0, #0x41
	mov     r2, #0x28
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222f896
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222f896

.thumb
branch_222f896: @ 222f896 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222f89a

.align 2
.word 0x426 @ 0x222f89c



.thumb
.globl Function_104_222f8a0
Function_104_222f8a0: @ 222f8a0 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x20] @ 0x222f8c8, (=0xa7c)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r5, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_222f8c4
	ldrh    r1, [r5, #0x2]
	ldr     r0, [pc, #0x10] @ 0x222f8cc, (=0xa78)
	strh    r1, [r4, r0]
	ldrh    r1, [r5, #0x4]
	.hword  0x1e80 @ sub r0, r0, #0x2
	strh    r1, [r4, r0]
.thumb
branch_222f8c4: @ 222f8c4 :thumb
	pop     {r4-r6,pc}
@ 0x222f8c6


.align 2


.word 0xa7c @ 0x222f8c8
.word 0xa78 @ 0x222f8cc
.thumb
Function_222f8d0: @ 222f8d0 :thumb
	push    {r4,lr}
	mov     r1, r0
	ldr     r2, [pc, #0x2c] @ 0x222f904, (=0x424)
	mov     r3, #0x0
	mov     r4, r1
.thumb
branch_222f8da: @ 222f8da :thumb
	mov     r0, r4
	add     r0, #0x78
	ldrh    r0, [r0, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	strh    r0, [r4, r2]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r3, #0xe
	blt     branch_222f8da
	ldr     r2, [pc, #0x18] @ 0x222f904, (=0x424)
	mov     r0, #0x42
	add     r1, r1, r2
	mov     r2, #0x28
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222f8fe
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222f8fe

.thumb
branch_222f8fe: @ 222f8fe :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222f902

.align 2
.word 0x424 @ 0x222f904



.thumb
.globl Function_104_222f908
Function_104_222f908: @ 222f908 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x30] @ 0x222f940, (=0xa7c)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r5, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_222f93c
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_222f93c
	mov     r2, #0x0
.thumb
branch_222f92a: @ 222f92a :thumb
	ldrh    r1, [r5, #0x0]
	mov     r0, r4
	add     r0, #0x78
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r1, [r0, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r2, #0xe
	blt     branch_222f92a
.thumb
branch_222f93c: @ 222f93c :thumb
	pop     {r4-r6,pc}
@ 0x222f93e


.align 2


.word 0xa7c @ 0x222f940
.thumb
Function_222f944: @ 222f944 :thumb
	push    {r3-r7,lr}
	mov     r3, r0
	mov     r0, #0xc5
	ldr     r1, [pc, #0x6c] @ 0x222f9b8, (=0x424)
	mov     r4, #0x0
	mov     r5, r3
	lsl     r0, r0, #2
.thumb
branch_222f952: @ 222f952 :thumb
	ldrh    r2, [r5, r0]
	.hword  0x1c64 @ add r4, r4, #0x1
	strh    r2, [r5, r1]
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x4
	blt     branch_222f952
	mov     r0, #0xc7
	ldr     r1, [pc, #0x58] @ 0x222f9bc, (=0x42c)
	mov     r5, #0x0
	mov     r4, r3
	lsl     r0, r0, #2
.thumb
branch_222f968: @ 222f968 :thumb
	add     r2, r3, r5
	ldrb    r2, [r2, r0]
	.hword  0x1c6d @ add r5, r5, #0x1
	strh    r2, [r4, r1]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r5, #0x4
	blt     branch_222f968
	ldr     r7, [pc, #0x40] @ 0x222f9b8, (=0x424)
	mov     r1, r3
	mov     r5, #0x32
	mov     r6, r7
	mov     r2, #0x0
	mov     r0, r3
	add     r1, #0x10
	lsl     r5, r5, #4
	add     r6, #0x8
.thumb
branch_222f988: @ 222f988 :thumb
	mov     r4, #0x32
	lsl     r4, r4, #4
	ldr     r4, [r0, r4]
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r4, [r1, r7]
	ldr     r4, [r0, r5]
	.hword  0x1d00 @ add r0, r0, #0x4
	lsr     r4, r4, #16
	strh    r4, [r1, r6]
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r2, #0x4
	blt     branch_222f988
	ldr     r1, [pc, #0x14] @ 0x222f9b8, (=0x424)
	mov     r0, #0x43
	add     r1, r3, r1
	mov     r2, #0x28
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222f9b4
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222f9b4

.thumb
branch_222f9b4: @ 222f9b4 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x222f9b8

.word 0x424 @ 0x222f9b8
.word 0x42c @ 0x222f9bc



.thumb
.globl Function_104_222f9c0
Function_104_222f9c0: @ 222f9c0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x6c] @ 0x222fa34, (=0xa7c)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r5, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_222fa32
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_222fa32
	mov     r0, #0xc5
	mov     r2, #0x0
	mov     r3, r5
	mov     r6, r4
	lsl     r0, r0, #2
.thumb
branch_222f9ea: @ 222f9ea :thumb
	ldrh    r1, [r3, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r1, [r6, r0]
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r2, #0x4
	blt     branch_222f9ea
	mov     r0, #0xc7
	mov     r6, #0x0
	mov     r3, r5
	lsl     r0, r0, #2
.thumb
branch_222fa00: @ 222fa00 :thumb
	ldrh    r2, [r3, #0x8]
	add     r1, r4, r6
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	strb    r2, [r1, r0]
	cmp     r6, #0x4
	blt     branch_222fa00
	mov     r2, #0x32
	lsl     r2, r2, #4
	mov     r1, #0x0
	add     r5, #0x10
	mov     r3, r2
	mov     r6, r2
.thumb
branch_222fa1a: @ 222fa1a :thumb
	ldrh    r0, [r5, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r4, r2]
	ldrh    r7, [r5, #0x8]
	ldr     r0, [r4, r3]
	.hword  0x1cad @ add r5, r5, #0x2
	lsl     r7, r7, #16
	orr     r0, r7
	str     r0, [r4, r6]
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r1, #0x4
	blt     branch_222fa1a
.thumb
branch_222fa32: @ 222fa32 :thumb
	pop     {r3-r7,pc}
@ 0x222fa34

.word 0xa7c @ 0x222fa34
.thumb
Function_222fa38: @ 222fa38 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x1c] @ 0x222fa58, (=0x424)
	mov     r3, r0
	strh    r1, [r3, r2]
	add     r1, r3, r2
	mov     r0, #0x44
	mov     r2, #0x28
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222fa52
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222fa52

.thumb
branch_222fa52: @ 222fa52 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222fa56

.align 2
.word 0x424 @ 0x222fa58



.thumb
.globl Function_104_222fa5c
Function_104_222fa5c: @ 222fa5c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x18] @ 0x222fa7c, (=0xa7c)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r6, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_222fa7a
	ldrh    r1, [r6, #0x0]
	ldr     r0, [pc, #0x8] @ 0x222fa80, (=0xa74)
	strb    r1, [r4, r0]
.thumb
branch_222fa7a: @ 222fa7a :thumb
	pop     {r4-r6,pc}
@ 0x222fa7c

.word 0xa7c @ 0x222fa7c
.word 0xa74 @ 0x222fa80
.thumb
Function_222fa84: @ 222fa84 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x1c] @ 0x222faa4, (=0x424)
	mov     r3, r0
	strh    r1, [r3, r2]
	add     r1, r3, r2
	mov     r0, #0x45
	mov     r2, #0x28
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_222fa9e
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222fa9e

.thumb
branch_222fa9e: @ 222fa9e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222faa2

.align 2
.word 0x424 @ 0x222faa4



.thumb
.globl Function_104_222faa8
Function_104_222faa8: @ 222faa8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x18] @ 0x222fac8, (=0xa7c)
	mov     r4, r3
	ldrb    r1, [r4, r0]
	mov     r6, r2
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_222fac6
	ldrh    r1, [r6, #0x0]
	ldr     r0, [pc, #0x8] @ 0x222facc, (=0xa75)
	strb    r1, [r4, r0]
.thumb
branch_222fac6: @ 222fac6 :thumb
	pop     {r4-r6,pc}
@ 0x222fac8

.word 0xa7c @ 0x222fac8
.word 0xa75 @ 0x222facc
.thumb
Function_222fad0: @ 222fad0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	ldrb    r0, [r7, #0x10]
	mov     r1, #0x0
	bl      Function_223bd70
	str     r0, [sp, #0x0]
	bl      GetPkmnDataSize
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_222fb12
	ldr     r0, [pc, #0x40] @ 0x222fb30, (=0x474)
	mov     r5, r4
	add     r0, r7, r0
	str     r0, [sp, #0x4]
branch_222faf6: @ 222faf6 :thumb
	ldr     r0, [r7, #0x70]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	ldr     r1, [sp, #0x4]
	mov     r2, r6
	add     r1, r1, r5
	blx     MI_CpuCopy8
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, r5, r6
	cmp     r4, r0
	blt     branch_222faf6
.thumb
branch_222fb12: @ 222fb12 :thumb
	ldr     r1, [pc, #0x1c] @ 0x222fb30, (=0x474)
	mov     r2, #0x2
	mov     r0, #0x46
	add     r1, r7, r1
	lsl     r2, r2, #8
	bl      Function_203597c
	cmp     r0, #0x1
	bne     branch_222fb2a
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222fb2a

.thumb
branch_222fb2a: @ 222fb2a :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222fb30

.word 0x474 @ 0x222fb30



.thumb
.globl Function_104_222fb34
Function_104_222fb34: @ 222fb34 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r1, [pc, #0x84] @ 0x222fbc0, (=0xa7c)
	mov     r4, r0
	mov     r0, r3
	ldrb    r0, [r0, r1]
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	add     r2, r0, #0x1
	mov     r0, r3
	strb    r2, [r0, r1]
	bl      Function_203608c
	cmp     r4, r0
	beq     branch_222fbbc
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	ldrb    r0, [r0, #0x10]
	bl      Function_223bd70
	str     r0, [sp, #0x8]
	bl      GetPkmnDataSize
	mov     r5, r0
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r6, r0
	ldr     r0, [sp, #0x8]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_222fb96
	mov     r4, r7
.thumb
branch_222fb76: @ 222fb76 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	add     r0, r0, r4
	mov     r2, r5
	blx     MI_CpuCopy8
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	ldr     r0, [r0, #0x70]
	bl      CopyPkmnDataToParty
	ldr     r0, [sp, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, r4, r5
	cmp     r7, r0
	blt     branch_222fb76
.thumb
branch_222fb96: @ 222fb96 :thumb
	mov     r0, r6
	bl      free
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_222fbbc
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	ldr     r0, [r0, #0x70]
	mov     r2, #0x2
	bl      Function_207a184
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	ldr     r0, [r0, #0x70]
	mov     r2, #0x3
	bl      Function_207a184
.thumb
branch_222fbbc: @ 222fbbc :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x222fbc0

.word 0xa7c @ 0x222fbc0



.thumb
.globl Function_104_222fbc4
Function_104_222fbc4: @ 222fbc4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x2
	lsl     r0, r0, #8
	mov     r4, r1
	cmp     r2, r0
	ble     branch_222fbd6
	bl      ErrorHandling
branch_222fbd6: @ 222fbd6 :thumb

	ldr     r0, [pc, #0x8] @ 0x222fbe0, (=0x674)
	add     r1, r4, r0
	lsl     r0, r5, #9
	add     r0, r1, r0
	pop     {r3-r5,pc}
@ 0x222fbe0

.word 0x674 @ 0x222fbe0
.thumb
Function_222fbe4: @ 222fbe4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222ea48
	mov     r1, r0
	mov     r0, r4
	bl      Function_222fc14
	mov     r4, r0
	bne     branch_222fbfc
	bl      ErrorHandling
.thumb
branch_222fbfc: @ 222fbfc :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x222fc00

.thumb
Function_222fc00: @ 222fc00 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222ea48
	mov     r1, r0
	mov     r0, r4
	bl      Function_222fc8c
	pop     {r4,pc}
@ 0x222fc12


.align 2, 0


.thumb
Function_222fc14: @ 222fc14 :thumb
	push    {r3,lr}
	mov     r3, #0x2
	lsl     r3, r3, #14
	cmp     r1, r3
	bcs     branch_222fc22
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222fc22

.thumb
branch_222fc22: @ 222fc22 :thumb
	mov     r2, r3
	add     r2, #0x8
	cmp     r1, r2
	bcs     branch_222fc34
	sub     r1, r1, r3
	add     r0, #0x8
	lsl     r1, r1, #1
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x222fc34

.thumb
branch_222fc34: @ 222fc34 :thumb
	mov     r2, r3
	add     r2, #0x10
	cmp     r1, r2
	bcs     branch_222fc48
	add     r3, #0x8
	ldr     r0, [r0, #0x0]
	sub     r1, r1, r3
	bl      Function_222e91c
	pop     {r3,pc}
@ 0x222fc48

.thumb
branch_222fc48: @ 222fc48 :thumb
	mov     r2, r3
	add     r2, #0x14
	cmp     r1, r2
	bcs     branch_222fc5c
	add     r3, #0x10
	sub     r1, r1, r3
	add     r0, #0x78
	lsl     r1, r1, #1
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x222fc5c

.thumb
branch_222fc5c: @ 222fc5c :thumb
	ldr     r0, [pc, #0x24] @ 0x222fc84, (=0xfd13)
	cmp     r1, r0
	bne     branch_222fc66
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222fc66

.thumb
branch_222fc66: @ 222fc66 :thumb
	ldr     r0, [pc, #0x20] @ 0x222fc88, (=0xeeee)
	cmp     r1, r0
	bne     branch_222fc70
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222fc70

.thumb
branch_222fc70: @ 222fc70 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r1, r0
	bne     branch_222fc7a
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222fc7a

.thumb
branch_222fc7a: @ 222fc7a :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222fc82


.align 2


.word 0xfd13 @ 0x222fc84
.word 0xeeee @ 0x222fc88
.thumb
Function_222fc8c: @ 222fc8c :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_222fc14
	cmp     r0, #0x0
	beq     branch_222fc9a
	ldrh    r4, [r0, #0x0]
.thumb
branch_222fc9a: @ 222fc9a :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x222fc9e


.align 2, 0


.thumb
Function_222fca0: @ 222fca0 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x222fca4

.thumb
Function_222fca4: @ 222fca4 :thumb
	push    {r3,lr}
	bl      Function_222e980
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222fcae


.align 2, 0


.thumb
Function_222fcb0: @ 222fcb0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222e980
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b9b4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222fcc4

.thumb
Function_222fcc4: @ 222fcc4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x0]
	bl      Function_222fc00
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x10] @ 0x222fce4, (=0xffff)
	bl      Function_209b9bc
	ldr     r1, [pc, #0xc] @ 0x222fce8, (=0x222fced)
	mov     r0, r5
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222fce4

.word 0xffff @ 0x222fce4
.word Function_222fcec+1 @ =0x222fced, 0x222fce8
.thumb
Function_222fcec: @ 222fcec :thumb
	mov     r0, #0x1
	bx      lr
@ 0x222fcf0

.thumb
Function_222fcf0: @ 222fcf0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x0]
	bl      Function_222fc00
	mov     r6, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r6
	bl      Function_209b9bc
	mov     r0, r5
	bl      Function_222e980
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222fd16


.align 2, 0


.thumb
Function_222fd18: @ 222fd18 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_222ea48
	mov     r4, r0
	mov     r0, r5
	bl      Function_222ea48
	mov     r6, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_222fc14
	strh    r4, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x78
	strh    r6, [r0, #0x0]
	ldr     r1, [pc, #0xc] @ 0x222fd48, (=0x222fd4d)
	mov     r0, r5
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x222fd46


.align 2


.word Function_222fd4c+1 @ =0x222fd4d, 0x222fd48
.thumb
Function_222fd4c: @ 222fd4c :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	bl      Function_222fc14
	ldrh    r1, [r0, #0x0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r0, #0x0]
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_222fd68
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222fd68

.thumb
branch_222fd68: @ 222fd68 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222fd6c

.thumb
Function_222fd6c: @ 222fd6c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fbe4
	mov     r4, r0
	mov     r0, r5
	bl      Function_222ea48
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222fd82


.align 2, 0


.thumb
Function_222fd84: @ 222fd84 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fbe4
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fbe4
	ldrh    r0, [r0, #0x0]
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222fd9c

.thumb
Function_222fd9c: @ 222fd9c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fbe4
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fc00
	ldrh    r1, [r4, #0x0]
	add     r0, r1, r0
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222fdb6


.align 2, 0


.thumb
Function_222fdb8: @ 222fdb8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fbe4
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fc00
	ldrh    r1, [r4, #0x0]
	sub     r0, r1, r0
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222fdd2


.align 2, 0


.thumb
Function_222fdd4: @ 222fdd4 :thumb
	cmp     r0, r1
	bcs     branch_222fddc
	mov     r0, #0x0
	bx      lr
@ 0x222fddc

.thumb
branch_222fddc: @ 222fddc :thumb
	cmp     r0, r1
	bne     branch_222fde4
	mov     r0, #0x1
	bx      lr
@ 0x222fde4

.thumb
branch_222fde4: @ 222fde4 :thumb
	mov     r0, #0x2
	bx      lr
@ 0x222fde8

.thumb
Function_222fde8: @ 222fde8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fc00
	mov     r4, r0
	mov     r0, r5
	bl      Function_222ea48
	mov     r1, r0
	mov     r0, r4
	bl      Function_222fdd4
	add     r5, #0x8c
	strb    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222fe08

.thumb
Function_222fe08: @ 222fe08 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fbe4
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fbe4
	mov     r1, r0
	ldrh    r0, [r4, #0x0]
	ldrh    r1, [r1, #0x0]
	bl      Function_222fdd4
	add     r5, #0x8c
	strb    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222fe2a


.align 2, 0


.thumb
Function_222fe2c: @ 222fe2c :thumb
	str     r1, [r0, #0x1c]
	bx      lr
@ 0x222fe30

.thumb
Function_222fe30: @ 222fe30 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222ea60
	mov     r2, r0
	ldr     r1, [r4, #0x1c]
	mov     r0, r4
	add     r1, r1, r2
	bl      Function_222fe2c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222fe48

.thumb
Function_222fe48: @ 222fe48 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x1c]
	add     r1, r2, #0x1
	str     r1, [r5, #0x1c]
	ldrb    r4, [r2, #0x0]
	bl      Function_222ea60
	mov     r1, r0
	lsl     r0, r4, #1
	add     r4, r4, r0
	mov     r0, r5
	add     r0, #0x8c
	ldr     r3, [pc, #0x18] @ 0x222fe7c, (=0x223f648)
	ldrb    r2, [r0, #0x0]
	add     r0, r3, r4
	ldrb    r0, [r2, r0]
	cmp     r0, #0x1
	bne     branch_222fe78
	ldr     r2, [r5, #0x1c]
	mov     r0, r5
	add     r1, r2, r1
	bl      Function_222fe2c
.thumb
branch_222fe78: @ 222fe78 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222fe7c

.word 0x223f648 @ 0x222fe7c
.thumb
Function_222fe80: @ 222fe80 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222ea60
	mov     r2, r0
	ldr     r1, [r4, #0x1c]
	mov     r0, r4
	add     r1, r1, r2
	bl      Function_222ea2c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222fe98

.thumb
Function_222fe98: @ 222fe98 :thumb
	push    {r3,lr}
	bl      Function_222ea3c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222fea2


.align 2, 0


.thumb
Function_222fea4: @ 222fea4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x1c]
	add     r1, r2, #0x1
	str     r1, [r5, #0x1c]
	ldrb    r4, [r2, #0x0]
	bl      Function_222ea60
	mov     r1, r0
	lsl     r0, r4, #1
	add     r4, r4, r0
	mov     r0, r5
	add     r0, #0x8c
	ldr     r3, [pc, #0x18] @ 0x222fed8, (=0x223f648)
	ldrb    r2, [r0, #0x0]
	add     r0, r3, r4
	ldrb    r0, [r2, r0]
	cmp     r0, #0x1
	bne     branch_222fed4
	ldr     r2, [r5, #0x1c]
	mov     r0, r5
	add     r1, r2, r1
	bl      Function_222ea2c
.thumb
branch_222fed4: @ 222fed4 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222fed8

.word 0x223f648 @ 0x222fed8
.thumb
Function_222fedc: @ 222fedc :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      Function_222ea48
	mov     r2, r0
	mov     r3, #0x0
	add     r0, sp, #0x4
	strb    r3, [r0, #0x0]
	strb    r3, [r0, #0x1]
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	strb    r3, [r0, #0x3]
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	add     r4, #0x80
	ldr     r1, [r4, #0x0]
	bl      Function_2231f74
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x222ff0a


.align 2, 0


.thumb
Function_222ff0c: @ 222ff0c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      Function_222ea48
	mov     r3, #0x0
	mov     r1, r4
	str     r3, [sp, #0x0]
	add     r1, #0x80
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, #0x0]
	bl      Function_2231f74
	ldr     r1, [pc, #0xc] @ 0x222ff38, (=0x222ff6d)
	mov     r0, r4
	bl      Function_222e974
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x222ff36


.align 2


.word Function_222ff6c+1 @ =0x222ff6d, 0x222ff38
.thumb
Function_222ff3c: @ 222ff3c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      Function_222ea48
	mov     r2, r0
	mov     r0, #0x0
	mov     r1, r4
	str     r0, [sp, #0x0]
	add     r1, #0x80
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r3, #0x1
	bl      Function_2231f74
	ldr     r1, [pc, #0xc] @ 0x222ff68, (=0x222ff6d)
	mov     r0, r4
	bl      Function_222e974
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x222ff68

.word Function_222ff6c+1 @ =0x222ff6d, 0x222ff68
.thumb
Function_222ff6c: @ 222ff6c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	add     r0, #0x50
	ldrb    r0, [r0, #0x0]
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_222ff80
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222ff80

.thumb
branch_222ff80: @ 222ff80 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222ff84

.thumb
Function_222ff84: @ 222ff84 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	bl      Function_2232088
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222ff90

.thumb
Function_222ff90: @ 222ff90 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      Function_222ea48
	mov     r4, r0
	mov     r0, r5
	bl      Function_222ea48
	mov     r6, r0
	mov     r0, r5
	bl      Function_222ea48
	mov     r7, r0
	mov     r0, r5
	bl      Function_222ea48
	str     r4, [sp, #0x0]
	mov     r3, r0
	str     r6, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r7
	mov     r2, r7
	bl      Function_200f174
	mov     r0, #0x0
	bl      Function_200f32c
	mov     r0, #0x1
	bl      Function_200f32c
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x222ffd8

.thumb
Function_222ffd8: @ 222ffd8 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x8] @ 0x222ffe4, (=0x222ffe9)
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222ffe4

.word Function_222ffe8+1 @ =0x222ffe9, 0x222ffe4
.thumb
Function_222ffe8: @ 222ffe8 :thumb
	push    {r3,lr}
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_222fff6
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222fff6

.thumb
branch_222fff6: @ 222fff6 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222fffa


.align 2, 0


.thumb
Function_222fffc: @ 222fffc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r1, [r5, #0x1c]
	ldr     r4, [r5, #0x0]
	add     r2, r1, #0x1
	str     r2, [r5, #0x1c]
	ldrb    r1, [r1, #0x0]
	add     r3, r2, #0x1
	str     r1, [sp, #0x14]
	str     r3, [r5, #0x1c]
	ldrb    r1, [r2, #0x0]
	add     r2, r3, #0x1
	str     r1, [sp, #0x10]
	str     r2, [r5, #0x1c]
	ldrb    r7, [r3, #0x0]
	add     r1, r2, #0x1
	str     r1, [r5, #0x1c]
	ldrb    r6, [r2, #0x0]
	bl      Function_222ea48
	str     r0, [sp, #0x18]
	ldr     r1, [sp, #0x18]
	mov     r0, r5
	bl      Function_222fc14
	str     r6, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x44]
	mov     r3, r7
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	bl      Function_2232258
	str     r0, [r4, #0x60]
	ldr     r0, [sp, #0x18]
	add     r5, #0x78
	strh    r0, [r5, #0x0]
	mov     r0, #0x1
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2230056


.align 2, 0


.thumb
Function_2230058: @ 2230058 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r1, [r5, #0x1c]
	ldr     r4, [r5, #0x0]
	add     r2, r1, #0x1
	str     r2, [r5, #0x1c]
	ldrb    r1, [r1, #0x0]
	add     r3, r2, #0x1
	str     r1, [sp, #0x14]
	str     r3, [r5, #0x1c]
	ldrb    r1, [r2, #0x0]
	add     r2, r3, #0x1
	str     r1, [sp, #0x10]
	str     r2, [r5, #0x1c]
	ldrb    r7, [r3, #0x0]
	add     r1, r2, #0x1
	str     r1, [r5, #0x1c]
	ldrb    r6, [r2, #0x0]
	bl      Function_222ea48
	str     r0, [sp, #0x18]
	ldr     r1, [sp, #0x18]
	mov     r0, r5
	bl      Function_222fc14
	str     r6, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x44]
	mov     r3, r7
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	bl      Function_2232258
	str     r0, [r4, #0x60]
	ldr     r0, [sp, #0x18]
	add     r5, #0x78
	strh    r0, [r5, #0x0]
	mov     r0, #0x1
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x22300b6


.align 2, 0


.thumb
Function_22300b8: @ 22300b8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x0]
	bl      Function_222ea48
	mov     r6, r0
	mov     r0, r5
	bl      Function_222ea48
	mov     r3, r0
	ldr     r0, [r4, #0x60]
	mov     r1, r6
	mov     r2, #0xff
	bl      Function_22322a8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22300da


.align 2, 0


.thumb
Function_22300dc: @ 22300dc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x0]
	bl      Function_222ea48
	mov     r6, r0
	mov     r0, r5
	bl      Function_222ea48
	mov     r7, r0
	mov     r0, r5
	bl      Function_222ea48
	mov     r3, r0
	ldr     r0, [r4, #0x60]
	mov     r1, r6
	mov     r2, r7
	bl      Function_22322a8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2230106


.align 2, 0


.thumb
Function_2230108: @ 2230108 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x60]
	bl      Function_22322b0
	ldr     r1, [pc, #0x8] @ 0x2230120, (=0x2230125)
	mov     r0, r4
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2230120

.word Function_2230124+1 @ =0x2230125, 0x2230120
.thumb
Function_2230124: @ 2230124 :thumb
	push    {r4,lr}
	mov     r1, r0
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	ldr     r4, [r0, #0x0]
	bl      Function_222fc14
	ldrh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x10] @ 0x2230148, (=0xeeee)
	cmp     r1, r0
	bne     branch_223013e
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223013e

.thumb
branch_223013e: @ 223013e :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x60]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2230146


.align 2


.word 0xeeee @ 0x2230148
.thumb
Function_223014c: @ 223014c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r1, [r5, #0x1c]
	ldr     r4, [r5, #0x0]
	add     r2, r1, #0x1
	str     r2, [r5, #0x1c]
	ldrb    r1, [r1, #0x0]
	add     r3, r2, #0x1
	str     r1, [sp, #0x14]
	str     r3, [r5, #0x1c]
	ldrb    r1, [r2, #0x0]
	add     r2, r3, #0x1
	str     r1, [sp, #0x10]
	str     r2, [r5, #0x1c]
	ldrb    r7, [r3, #0x0]
	add     r1, r2, #0x1
	str     r1, [r5, #0x1c]
	ldrb    r6, [r2, #0x0]
	bl      Function_222ea48
	str     r0, [sp, #0x18]
	ldr     r1, [sp, #0x18]
	mov     r0, r5
	bl      Function_222fc14
	str     r6, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x44]
	mov     r3, r7
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	bl      Function_22325fc
	str     r0, [r4, #0x60]
	ldr     r0, [sp, #0x18]
	add     r5, #0x78
	strh    r0, [r5, #0x0]
	mov     r0, #0x1
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x22301a6


.align 2, 0


.thumb
Function_22301a8: @ 22301a8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r1, [r5, #0x1c]
	ldr     r4, [r5, #0x0]
	add     r2, r1, #0x1
	str     r2, [r5, #0x1c]
	ldrb    r1, [r1, #0x0]
	add     r3, r2, #0x1
	str     r1, [sp, #0x14]
	str     r3, [r5, #0x1c]
	ldrb    r1, [r2, #0x0]
	add     r2, r3, #0x1
	str     r1, [sp, #0x10]
	str     r2, [r5, #0x1c]
	ldrb    r7, [r3, #0x0]
	add     r1, r2, #0x1
	str     r1, [r5, #0x1c]
	ldrb    r6, [r2, #0x0]
	bl      Function_222ea48
	str     r0, [sp, #0x18]
	ldr     r1, [sp, #0x18]
	mov     r0, r5
	bl      Function_222fc14
	str     r6, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x44]
	mov     r3, r7
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	bl      Function_22325fc
	str     r0, [r4, #0x60]
	ldr     r0, [sp, #0x18]
	add     r5, #0x78
	strh    r0, [r5, #0x0]
	mov     r0, #0x1
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2230206


.align 2, 0


.thumb
Function_2230208: @ 2230208 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x0]
	bl      Function_222ea48
	mov     r6, r0
	mov     r0, r5
	bl      Function_222ea48
	mov     r7, r0
	mov     r0, r5
	bl      Function_222ea48
	mov     r3, r0
	ldr     r0, [r4, #0x60]
	mov     r1, r6
	mov     r2, r7
	bl      Function_223261c
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2230232


.align 2, 0


.thumb
Function_2230234: @ 2230234 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x60]
	bl      Function_2232624
	ldr     r1, [pc, #0x8] @ 0x223024c, (=0x2230125)
	mov     r0, r4
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223024c

.word Function_2230124+1 @ =0x2230125, 0x223024c
.thumb
Function_2230250: @ 2230250 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x60]
	bl      Function_2232b5c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223025e


.align 2, 0


.thumb
Function_2230260: @ 2230260 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r4, [r5, #0x0]
	mov     r0, r4
	bl      Function_222e924
	mov     r6, r0
	mov     r0, r5
	bl      Function_222ea48
	ldr     r1, [r5, #0x1c]
	mov     r7, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x1c]
	ldrb    r0, [r1, #0x0]
	ldr     r1, [pc, #0x24] @ 0x22302a8, (=0x223f640)
	ldr     r2, [pc, #0x28] @ 0x22302ac, (=0x3d9)
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x34]
	mov     r3, #0xc
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x0]
	bl      Function_2002054
	str     r0, [r4, #0x74]
	mov     r0, r5
	add     r0, #0x78
	strh    r7, [r0, #0x0]
	ldr     r1, [pc, #0x14] @ 0x22302b0, (=0x22302b5)
	mov     r0, r5
	bl      Function_222e974
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22302a8

.word 0x223f640 @ 0x22302a8
.word 0x3d9 @ 0x22302ac
.word Function_22302b4+1 @ =0x22302b5, 0x22302b0
.thumb
Function_22302b4: @ 22302b4 :thumb
	push    {r3-r5,lr}
	mov     r1, r0
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	ldr     r5, [r0, #0x0]
	bl      Function_222fc14
	mov     r4, r0
	ldr     r0, [r5, #0x74]
	ldr     r1, [r5, #0x34]
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_22302d8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22302d8

.thumb
branch_22302d8: @ 22302d8 :thumb
	cmp     r0, #0x0
	bne     branch_22302e0
	mov     r0, #0x0
	b       branch_22302e2
@ 0x22302e0

.thumb
branch_22302e0: @ 22302e0 :thumb
	mov     r0, #0x1
.thumb
branch_22302e2: @ 22302e2 :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22302e8

.thumb
Function_22302e8: @ 22302e8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	bl      Function_222ea60
	ldr     r1, [sp, #0x0]
	ldr     r1, [r1, #0x1c]
	str     r1, [sp, #0x4]
	add     r1, r1, r0
	ldr     r0, [sp, #0x0]
	str     r1, [r0, #0x1c]
.thumb
branch_223030c: @ 223030c :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_222fc00
	add     r1, sp, #0xc
	strh    r0, [r1, #0x0]
	ldrh    r2, [r1, #0x0]
	ldr     r0, [pc, #0x84] @ 0x22303a0, (=0xfd13)
	cmp     r2, r0
	beq     branch_2230394
	ldr     r0, [sp, #0x0]
	ldr     r3, [r0, #0x1c]
	add     r2, r3, #0x1
	str     r2, [r0, #0x1c]
	ldrb    r0, [r3, #0x0]
	strb    r0, [r1, #0x2]
	ldrh    r1, [r1, #0x0]
	ldr     r0, [pc, #0x74] @ 0x22303a4, (=0xeeee)
	cmp     r1, r0
	bne     branch_2230352
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      LoadTrainerDataAdress
	bl      Function_222e5f0
	add     r1, sp, #0xc
	strh    r0, [r1, #0x0]
	mov     r0, r4
	add     r1, sp, #0xc
	bl      Function_223d0ec
	b       branch_223030c
@ 0x2230352

.thumb
branch_2230352: @ 2230352 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r1, r0
	bne     branch_223038a
	bl      Function_2035e38
	cmp     r0, #0x1
	bne     branch_223030c
	bl      Function_2035e18
	mov     r6, r0
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_223030c
	add     r7, sp, #0xc
.thumb
branch_223036e: @ 223036e :thumb
	mov     r0, r5
	bl      Function_2032ee8
	bl      Function_222e5f0
	strh    r0, [r7, #0x0]
	mov     r0, r4
	add     r1, sp, #0xc
	bl      Function_223d0ec
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_223036e
	b       branch_223030c
@ 0x223038a

.thumb
branch_223038a: @ 223038a :thumb
	mov     r0, r4
	add     r1, sp, #0xc
	bl      Function_223d0ec
	b       branch_223030c
@ 0x2230394

.thumb
branch_2230394: @ 2230394 :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	str     r1, [r0, #0x1c]
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22303a0

.word 0xfd13 @ 0x22303a0
.word 0xeeee @ 0x22303a4
.thumb
Function_22303a8: @ 22303a8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r5, r0
	mov     r0, r4
	bl      Function_222fc00
	mov     r1, r0
	mov     r0, r5
	bl      Function_223d148
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22303c8

.thumb
Function_22303c8: @ 22303c8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	str     r0, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_222ea60
	ldr     r1, [r5, #0x1c]
	mov     r4, r5
	add     r0, r1, r0
	str     r1, [sp, #0x0]
	str     r0, [r5, #0x1c]
	add     r4, #0x1c
	add     r6, sp, #0xc
.thumb
branch_22303ee: @ 22303ee :thumb
	mov     r7, #0x0
	mov     r0, r5
	mvn     r7, r7
	bl      Function_222fc00
	strh    r0, [r6, #0x4]
	ldrh    r1, [r6, #0x4]
	ldr     r0, [pc, #0x98] @ 0x2230498, (=0xfd13)
	cmp     r1, r0
	beq     branch_223048c
	mov     r0, r5
	bl      Function_222fc00
	strh    r0, [r6, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r5, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	ldrb    r0, [r1, #0x0]
	strb    r0, [r6, #0xa]
	mov     r0, r5
	bl      Function_222ea48
	sub     r0, #0x8
	strh    r0, [r6, #0x6]
	mov     r0, r5
	bl      Function_222ea48
	sub     r0, #0x10
	strh    r0, [r6, #0x8]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r5, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	ldrb    r0, [r1, #0x0]
	strb    r0, [r6, #0xb]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r5, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	ldrb    r0, [r1, #0x0]
	strb    r0, [r6, #0xc]
	mov     r0, #0x0
	strh    r0, [r6, #0x2]
	ldrh    r1, [r6, #0x0]
	ldr     r0, [pc, #0x50] @ 0x223049c, (=0xeeee)
	cmp     r1, r0
	bne     branch_2230466
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      LoadTrainerDataAdress
	bl      Function_222e5f0
	strh    r0, [r6, #0x0]
	mov     r7, #0x1f
	b       branch_2230480
@ 0x2230466

.thumb
branch_2230466: @ 2230466 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r1, r0
	bne     branch_2230480
	ldr     r0, [r4, #0x0]
	ldr     r1, [r5, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	ldrb    r0, [r1, #0x0]
	bl      Function_2032ee8
	bl      Function_222e5f0
	strh    r0, [r6, #0x0]
.thumb
branch_2230480: @ 2230480 :thumb
	ldr     r0, [sp, #0x4]
	add     r1, sp, #0xc
	mov     r2, r7
	bl      Function_223d180
	b       branch_22303ee
@ 0x223048c

.thumb
branch_223048c: @ 223048c :thumb
	ldr     r0, [sp, #0x0]
	str     r0, [r5, #0x1c]
	mov     r0, #0x0
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x2230496


.align 2


.word 0xfd13 @ 0x2230498
.word 0xeeee @ 0x223049c
.thumb
Function_22304a0: @ 22304a0 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r5, r0
	mov     r0, r4
	bl      Function_222fc00
	mov     r1, r0
	ldr     r0, [r5, #0x14]
	bl      0x222bf18
	mov     r1, r0
	mov     r0, r5
	bl      Function_223d200
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22304c8

.thumb
Function_22304c8: @ 22304c8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fc00
	ldr     r2, [r5, #0x1c]
	mov     r1, r0
	add     r0, r2, #0x1
	str     r0, [r5, #0x1c]
	ldrb    r5, [r2, #0x0]
	mov     r2, #0x0
	mov     r0, r4
	str     r2, [sp, #0x0]
	add     r3, sp, #0x0
	bl      Function_223d258
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_22304fc
	bl      ErrorHandling
.thumb
branch_22304fc: @ 22304fc :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      0x222d008
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2230508

.thumb
Function_2230508: @ 2230508 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223050c

.thumb
Function_223050c: @ 223050c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r4, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	bl      Function_209b974
	str     r0, [sp, #0xc]
	mov     r0, r5
	bl      Function_222fc00
	mov     r7, r0
	mov     r0, r5
	bl      Function_222ea60
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r7
	bl      Function_223d5a8
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	bne     branch_223053e
	bl      ErrorHandling
.thumb
branch_223053e: @ 223053e :thumb
	mov     r0, r4
	add     r0, #0x59
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x34]
	ldr     r3, [sp, #0xc]
	str     r0, [sp, #0x4]
	ldr     r2, [r5, #0x1c]
	ldr     r1, [sp, #0x8]
	ldr     r3, [r3, #0x30]
	mov     r0, r7
	add     r2, r2, r6
	bl      Function_223056c
	mov     r0, r4
	add     r0, #0x59
	ldrb    r0, [r0, #0x0]
	add     r4, #0x59
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223056a


.align 2, 0


.thumb
Function_223056c: @ 223056c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r1
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x18
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      malloc
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x18
	blx     MI_CpuFill8
	str     r5, [r4, #0x14]
	ldr     r0, [sp, #0x0]
	str     r7, [r4, #0xc]
	str     r0, [r4, #0x10]
	ldr     r0, [sp, #0x18]
	strh    r6, [r4, #0x4]
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x38]
	cmp     r0, #0x0
	beq     branch_22305a0
	bl      ErrorHandling
.thumb
branch_22305a0: @ 22305a0 :thumb
	ldr     r0, [pc, #0xc] @ 0x22305b0, (=0x2232b79)
	ldr     r2, [pc, #0x10] @ 0x22305b4, (=0xeac4)
	mov     r1, r4
	bl      AddTaskToTaskList1
	str     r0, [r5, #0x38]
	pop     {r3-r7,pc}
@ 0x22305ae


.align 2


.word Function_2232b78+1 @ =0x2232b79, 0x22305b0
.word 0xeac4 @ 0x22305b4
.thumb
Function_22305b8: @ 22305b8 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x8] @ 0x22305c4, (=0x22305c9)
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22305c4

.word Function_22305c8+1 @ =0x22305c9, 0x22305c4
.thumb
Function_22305c8: @ 22305c8 :thumb
	ldr     r0, [r0, #0x0]
	add     r0, #0x59
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_22305d6
	mov     r0, #0x1
	bx      lr
@ 0x22305d6

.thumb
branch_22305d6: @ 22305d6 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22305da


.align 2, 0


.thumb
Function_22305dc: @ 22305dc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	ldr     r4, [r6, #0x0]
	ldr     r0, [r4, #0x0]
	bl      Function_209b974
	mov     r5, r0
	mov     r0, r6
	bl      Function_222ea60
	ldr     r1, [r6, #0x1c]
	add     r0, r1, r0
	str     r0, [r6, #0x1c]
	str     r1, [sp, #0x4]
	ldr     r1, [r4, #0x34]
	mov     r0, #FrontierObj_Narc
	bl      LoadFromNARC_8
	mov     r7, r0
branch_2230604: @ 2230604 :thumb
	mov     r0, r6
	bl      Function_222fc00
	mov     r4, r0
	ldr     r0, [pc, #0x2c] @ 0x223063c, (=0xfd13)
	cmp     r4, r0
	beq     branch_223062a
	str     r4, [sp, #0x0]
	ldr     r0, [r5, #0x34]
	ldr     r1, [r5, #0x38]
	ldr     r3, [r5, #0x4]
	mov     r2, r7
	bl      Function_223d768
	mov     r0, r5
	mov     r1, r4
	bl      Function_223d29c
	b       branch_2230604
@ 0x223062a

.thumb
branch_223062a: @ 223062a :thumb
	mov     r0, r7
	bl      Call_FS_CloseFile
	ldr     r0, [sp, #0x4]
	str     r0, [r6, #0x1c]
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223063a


.align 2


.word 0xfd13 @ 0x223063c
.thumb
Function_2230640: @ 2230640 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r5, r0
	ldr     r0, [r4, #0x38]
	mov     r1, r5
	bl      Function_223d7ec
	mov     r0, r4
	mov     r1, r5
	bl      Function_223d2cc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223066a


.align 2, 0


.thumb
Function_223066c: @ 223066c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r6, r0
	mov     r0, r5
	bl      Function_222ea60
	ldr     r1, [r5, #0x1c]
	mov     r4, r5
	add     r0, r1, r0
	str     r1, [sp, #0x0]
	str     r0, [r5, #0x1c]
	add     r4, #0x1c
.thumb
branch_223068e: @ 223068e :thumb
	mov     r0, r5
	bl      Function_222fc00
	mov     r7, r0
	ldr     r0, [pc, #0x6c] @ 0x2230704, (=0xfd13)
	cmp     r7, r0
	beq     branch_22306fa
	mov     r0, r5
	bl      Function_222fc00
	str     r0, [sp, #0xc]
	mov     r0, r5
	bl      Function_222fc00
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      Function_222fc00
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r5, #0x1c]
	add     r2, r0, #0x1
	str     r2, [r4, #0x0]
	ldrb    r0, [r1, #0x0]
	str     r0, [sp, #0x8]
	add     r0, r2, #0x1
	ldr     r1, [r5, #0x1c]
	mov     r2, r7
	str     r0, [r4, #0x0]
	ldrb    r0, [r1, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x4]
	mov     r0, r6
	bl      Function_223d2fc
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	asr     r1, r1, #16
	asr     r2, r2, #16
	mov     r7, r0
	bl      Function_200d4c4
	ldr     r1, [sp, #0x14]
	mov     r0, r7
	bl      Function_200d3f4
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	mov     r0, r6
	bl      Function_223d378
	b       branch_223068e
@ 0x22306fa

.thumb
branch_22306fa: @ 22306fa :thumb
	ldr     r0, [sp, #0x0]
	str     r0, [r5, #0x1c]
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2230704

.word 0xfd13 @ 0x2230704
.thumb
Function_2230708: @ 2230708 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r5, r0
	mov     r0, r4
	bl      Function_222fc00
	mov     r1, r0
	mov     r0, r5
	bl      Function_223d348
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2230728


.thumb
Function_2230728: @ 2230728 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fc00
	ldr     r2, [r5, #0x1c]
	mov     r1, r0
	add     r0, r2, #0x1
	str     r0, [r5, #0x1c]
	mov     r0, r4
	ldrb    r5, [r2, #0x0]
	bl      Function_223d370
	mov     r4, r0
	bne     branch_2230754
	bl      ErrorHandling
.thumb
branch_2230754: @ 2230754 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_200d3f4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2230760

.thumb
Function_2230760: @ 2230760 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r5, r0
	mov     r0, r4
	bl      Function_222fc00
	mov     r1, r0
	mov     r0, r5
	bl      Function_223d370
	mov     r4, r0
	bne     branch_2230784
	bl      ErrorHandling
.thumb
branch_2230784: @ 2230784 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_200d7cc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2230790

.thumb
Function_2230790: @ 2230790 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r6, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r5, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_223d370
	mov     r4, r0
	bne     branch_22307be
	bl      ErrorHandling
.thumb
branch_22307be: @ 22307be :thumb
	cmp     r5, #0x0
	ldr     r0, [r4, #0x0]
	bne     branch_22307cc
	mov     r1, #0x0
	bl      Function_200d808
	b       branch_22307d2
@ 0x22307cc

.thumb
branch_22307cc: @ 22307cc :thumb
	mov     r1, #0x1
	bl      Function_200d808
.thumb
branch_22307d2: @ 22307d2 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22307d6


.align 2, 0


.thumb
Function_22307d8: @ 22307d8 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	bl      Function_222fc00
	mov     r5, r0
	mov     r0, r4
	bl      Function_222fc00
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r1, r5
	mov     r4, r0
	bl      Function_223d370
	mov     r1, r6
	bl      Function_200d364
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_223d378
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223080e


.align 2, 0


.thumb
Function_2230810: @ 2230810 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fc00
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_223d378
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223082e


.align 2, 0


.thumb
Function_2230830: @ 2230830 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222fc00
	mov     r1, r4
	add     r1, #0x78
	strh    r0, [r1, #0x0]
	ldr     r1, [pc, #0xc] @ 0x223084c, (=0x2230851)
	mov     r0, r4
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223084a


.align 2


.word Function_2230850+1 @ =0x2230851, 0x223084c
.thumb
Function_2230850: @ 2230850 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r1, r5
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	mov     r4, r0
	bl      Function_223d370
	add     r5, #0x78
	mov     r6, r0
	ldrh    r1, [r5, #0x0]
	mov     r0, r4
	bl      Function_223d3a4
	cmp     r0, #0x0
	beq     branch_2230882
	mov     r0, r6
	bl      Function_200d3b8
	cmp     r0, #0x0
	bne     branch_2230886
.thumb
branch_2230882: @ 2230882 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2230886

.thumb
branch_2230886: @ 2230886 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223088a


.align 2, 0


.thumb
Function_223088c: @ 223088c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r4, r2
	ldr     r7, [r6, #0x0]
	cmp     r4, #0x7
	ble     branch_223089e
	bl      ErrorHandling
.thumb
branch_223089e: @ 223089e :thumb
	ldr     r0, [r7, #0x34]
	lsl     r1, r4, #1
	bl      malloc
	str     r0, [sp, #0x8]
	mov     r0, r6
	bl      Function_222fc00
	ldr     r5, [sp, #0x8]
	str     r0, [sp, #0x4]
	mov     r4, #0x0
.thumb
branch_22308b4: @ 22308b4 :thumb
	mov     r0, r6
	bl      Function_222fc00
	strh    r0, [r5, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x3
	blt     branch_22308b4
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	ldr     r0, [r7, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	mov     r2, #0x1
	bl      Function_223d860
	ldr     r0, [sp, #0x8]
	bl      free
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22308de


.align 2, 0


.thumb
Function_22308e0: @ 22308e0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      Function_222fc00
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	mov     r3, r2
	ldr     r0, [r0, #0x0]
	bl      Function_223d860
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2230900

.thumb
Function_2230900: @ 2230900 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	mov     r2, #0x3
	bl      Function_223088c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223090e


.align 2, 0


.thumb
Function_2230910: @ 2230910 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x4]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	mov     r2, r1
	mov     r3, #0x8
	bl      Function_208712c
	mov     r2, r0
	ldr     r0, [pc, #0x14] @ 0x2230948, (=0x2230951)
	ldr     r1, [pc, #0x18] @ 0x223094c, (=JumpTable_20f2dac)
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r3, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_209b988
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2230946

.align 2
.word Function_2230950+1 @ =0x2230951, 0x2230948
.word JumpTable_20f2dac @ 0x223094c



.thumb
Function_2230950: @ 2230950 :thumb
	ldr     r3, [pc, #0x0] @ 0x2230954, (=Function_208716c+1)
	bx      r3
@ 0x2230954

.word Function_208716c+1 @ 0x2230954



.thumb
Function_2230958: @ 2230958 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	mov     r1, #0xb
	add     r2, sp, #0x0
	bl      Function_202f1f8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2230970

.thumb
Function_2230970: @ 2230970 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r4, [r5, #0x0]
	bl      Function_222ea48
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_222fc00
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      Function_222fc00
	mov     r6, r0
	mov     r0, r5
	bl      Function_222fbe4
	mov     r7, r0
	ldr     r0, [pc, #0x3c] @ 0x22309d4, (=0x270f)
	cmp     r6, r0
	bls     branch_223099e
	mov     r6, r0
.thumb
branch_223099e: @ 223099e :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xb0
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xb2
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x0]
	bl      Function_2230a2c
	mov     r1, r4
	add     r1, #0xb4
	strh    r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xb6
	strh    r6, [r0, #0x0]
	add     r4, #0xb8
	ldr     r1, [pc, #0x14] @ 0x22309d8, (=0x22309dd)
	mov     r0, r5
	str     r7, [r4, #0x0]
	bl      Function_222e974
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22309d2


.align 2


.word 0x270f @ 0x22309d4
.word Function_22309dc+1 @ =0x22309dd, 0x22309d8
.thumb
Function_22309dc: @ 22309dc :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r4, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	bl      Function_209b970
	mov     r1, r4
	add     r1, #0xb0
	str     r1, [sp, #0x0]
	mov     r1, r4
	add     r1, #0xb2
	str     r1, [sp, #0x4]
	mov     r1, r4
	mov     r2, r4
	add     r1, #0xb4
	add     r2, #0xb6
	ldrh    r1, [r1, #0x0]
	ldrh    r2, [r2, #0x0]
	ldr     r0, [r0, #0x8]
	mov     r3, #0x0
	bl      Function_202f41c
	sub     r1, r0, #0x2
	cmp     r1, #0x1
	bhi     branch_2230a24
	cmp     r0, #0x2
	bne     branch_2230a16
	mov     r1, #0x1
	b       branch_2230a18

branch_2230a16: @ 2230a16 :thumb
	mov     r1, #0x0
branch_2230a18: @ 2230a18 :thumb
	add     r4, #0xb8
	ldr     r0, [r4, #0x0]
	add     sp, #0x8
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2230a24

.thumb
branch_2230a24: @ 2230a24 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2230a2a


.align 2, 0


.thumb
Function_2230a2c: @ 2230a2c :thumb
	push    {r4,lr}
	mov     r4, #0xf
	cmp     r0, #0x6
	bhi     branch_2230a6c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2230a40

Jumppoints_2230a40:
.hword branch_2230b4c - Jumppoints_2230a40 - 2
.hword branch_2230a4e - Jumppoints_2230a40 - 2
.hword branch_2230a7c - Jumppoints_2230a40 - 2
.hword branch_2230aa6 - Jumppoints_2230a40 - 2
.hword branch_2230ad0 - Jumppoints_2230a40 - 2
.hword branch_2230afa - Jumppoints_2230a40 - 2
.hword branch_2230b24 - Jumppoints_2230a40 - 2
.thumb
branch_2230a4e: @ 2230a4e :thumb
	cmp     r1, #0x6
	bhi     branch_2230a76
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2230a5e

Jumppoints_2230a5e:
.hword branch_2230a6c - Jumppoints_2230a5e - 2
.hword branch_2230a6e - Jumppoints_2230a5e - 2
.hword branch_2230a72 - Jumppoints_2230a5e - 2
.hword branch_2230a72 - Jumppoints_2230a5e - 2
.hword branch_2230a74 - Jumppoints_2230a5e - 2
.hword branch_2230a74 - Jumppoints_2230a5e - 2
.hword branch_2230a72 - Jumppoints_2230a5e - 2
.thumb
branch_2230a6c: @ 2230a6c :thumb
	b       branch_2230b4c
@ 0x2230a6e

.thumb
branch_2230a6e: @ 2230a6e :thumb
	mov     r4, #0x10
	b       branch_2230b4c
@ 0x2230a72

.thumb
branch_2230a72: @ 2230a72 :thumb
	mov     r4, #0x11
.thumb
branch_2230a74: @ 2230a74 :thumb
	b       branch_2230b4c
@ 0x2230a76

.thumb
branch_2230a76: @ 2230a76 :thumb
	bl      ErrorHandling
	b       branch_2230b4c
@ 0x2230a7c

.thumb
branch_2230a7c: @ 2230a7c :thumb
	cmp     r1, #0x3
	bhi     branch_2230aa0
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2230a8c

Jumppoints_2230a8c:
.hword branch_2230a94 - Jumppoints_2230a8c - 2
.hword branch_2230a98 - Jumppoints_2230a8c - 2
.hword branch_2230a9c - Jumppoints_2230a8c - 2
.hword branch_2230a9c - Jumppoints_2230a8c - 2
.thumb
branch_2230a94: @ 2230a94 :thumb
	mov     r4, #0x12
	b       branch_2230b4c
@ 0x2230a98

.thumb
branch_2230a98: @ 2230a98 :thumb
	mov     r4, #0x13
	b       branch_2230b4c
@ 0x2230a9c

.thumb
branch_2230a9c: @ 2230a9c :thumb
	mov     r4, #0x14
	b       branch_2230b4c
@ 0x2230aa0

.thumb
branch_2230aa0: @ 2230aa0 :thumb
	bl      ErrorHandling
	b       branch_2230b4c
@ 0x2230aa6

.thumb
branch_2230aa6: @ 2230aa6 :thumb
	cmp     r1, #0x3
	bhi     branch_2230aca
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2230ab6

Jumppoints_2230ab6:
.hword branch_2230abe - Jumppoints_2230ab6 - 2
.hword branch_2230ac2 - Jumppoints_2230ab6 - 2
.hword branch_2230ac6 - Jumppoints_2230ab6 - 2
.hword branch_2230ac6 - Jumppoints_2230ab6 - 2
.thumb
branch_2230abe: @ 2230abe :thumb
	mov     r4, #0x15
	b       branch_2230b4c
@ 0x2230ac2

.thumb
branch_2230ac2: @ 2230ac2 :thumb
	mov     r4, #0x16
	b       branch_2230b4c
@ 0x2230ac6

.thumb
branch_2230ac6: @ 2230ac6 :thumb
	mov     r4, #0x17
	b       branch_2230b4c
@ 0x2230aca

.thumb
branch_2230aca: @ 2230aca :thumb
	bl      ErrorHandling
	b       branch_2230b4c
@ 0x2230ad0

.thumb
branch_2230ad0: @ 2230ad0 :thumb
	cmp     r1, #0x3
	bhi     branch_2230af4
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2230ae0

Jumppoints_2230ae0:
.hword branch_2230ae8 - Jumppoints_2230ae0 - 2
.hword branch_2230aec - Jumppoints_2230ae0 - 2
.hword branch_2230af0 - Jumppoints_2230ae0 - 2
.hword branch_2230af0 - Jumppoints_2230ae0 - 2
.thumb
branch_2230ae8: @ 2230ae8 :thumb
	mov     r4, #0x1b
	b       branch_2230b4c
@ 0x2230aec

.thumb
branch_2230aec: @ 2230aec :thumb
	mov     r4, #0x1c
	b       branch_2230b4c
@ 0x2230af0

.thumb
branch_2230af0: @ 2230af0 :thumb
	mov     r4, #0x1d
	b       branch_2230b4c
@ 0x2230af4

.thumb
branch_2230af4: @ 2230af4 :thumb
	bl      ErrorHandling
	b       branch_2230b4c
@ 0x2230afa

.thumb
branch_2230afa: @ 2230afa :thumb
	cmp     r1, #0x3
	bhi     branch_2230b1e
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2230b0a

Jumppoints_2230b0a:
.hword branch_2230b12 - Jumppoints_2230b0a - 2
.hword branch_2230b16 - Jumppoints_2230b0a - 2
.hword branch_2230b1a - Jumppoints_2230b0a - 2
.hword branch_2230b1a - Jumppoints_2230b0a - 2
.thumb
branch_2230b12: @ 2230b12 :thumb
	mov     r4, #0x18
	b       branch_2230b4c
@ 0x2230b16

.thumb
branch_2230b16: @ 2230b16 :thumb
	mov     r4, #0x19
	b       branch_2230b4c
@ 0x2230b1a

.thumb
branch_2230b1a: @ 2230b1a :thumb
	mov     r4, #0x1a
	b       branch_2230b4c
@ 0x2230b1e

.thumb
branch_2230b1e: @ 2230b1e :thumb
	bl      ErrorHandling
	b       branch_2230b4c
@ 0x2230b24

.thumb
branch_2230b24: @ 2230b24 :thumb
	cmp     r1, #0x3
	bhi     branch_2230b48
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2230b34

Jumppoints_2230b34:
.hword branch_2230b3c - Jumppoints_2230b34 - 2
.hword branch_2230b40 - Jumppoints_2230b34 - 2
.hword branch_2230b44 - Jumppoints_2230b34 - 2
.hword branch_2230b44 - Jumppoints_2230b34 - 2
.thumb
branch_2230b3c: @ 2230b3c :thumb
	mov     r4, #0x1e
	b       branch_2230b4c
@ 0x2230b40

.thumb
branch_2230b40: @ 2230b40 :thumb
	mov     r4, #0x1f
	b       branch_2230b4c
@ 0x2230b44

.thumb
branch_2230b44: @ 2230b44 :thumb
	mov     r4, #0x20
	b       branch_2230b4c
@ 0x2230b48

.thumb
branch_2230b48: @ 2230b48 :thumb
	bl      ErrorHandling
.thumb
branch_2230b4c: @ 2230b4c :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x2230b50

.thumb
Function_2230b50: @ 2230b50 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r1, #0x72
	mov     r4, r0
	mov     r0, #0xb
	lsl     r1, r1, #2
	bl      malloc
	mov     r2, #0x72
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r6, r0
	blx     MI_CpuFill8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	mov     r1, #0xb
	add     r2, sp, #0x4
	mov     r3, r6
	bl      Function_202f298
	ldr     r1, [pc, #0x20] @ 0x2230ba8, (=0x45f)
	mov     r0, #0x5
	mov     r2, #0x1
	bl      Function_2004550
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x14] @ 0x2230bac, (=JumpTable_BattleScreen)
	ldr     r0, [r0, #0x0]
	mov     r2, r6
	mov     r3, #0x1
	bl      Function_209b988
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2230ba8

.word 0x45f @ 0x2230ba8
.word JumpTable_BattleScreen @ 0x2230bac
.thumb
Function_2230bb0: @ 2230bb0 :thumb
	push    {r3,lr}
	bl      Function_202f22c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2230bba


.align 2, 0


.thumb
Function_2230bbc: @ 2230bbc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fbe4
	mov     r5, r0
	ldr     r0, [r4, #0x8]
	mov     r1, #0xb
	add     r2, sp, #0x0
	mov     r3, #0x0
	bl      Function_202f330
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2230be4


.thumb
Function_2230be4: @ 2230be4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r5, r0
	mov     r0, r4
	bl      Function_222fbe4
	ldr     r0, [r5, #0x8]
	bl      Function_20246e0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2230c02


.align 2, 0


.thumb
Function_2230c04: @ 2230c04 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	bl      Function_209b970
	mov     r6, r0
	mov     r0, r5
	bl      Function_222fbe4
	mov     r0, #0x4
	bl      Function_2017de0
	ldr     r0, [r4, #0x34]
	bl      Function_2017e00
	ldr     r0, [r6, #0x8]
	mov     r1, #0x2
	bl      Function_2024814
	ldr     r1, [pc, #0x8] @ 0x2230c38, (=0x2230c3d)
	mov     r0, r5
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2230c38

.word Function_2230c3c+1 @ =0x2230c3d, 0x2230c38
.thumb
Function_2230c3c: @ 2230c3c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      Function_2024828
	cmp     r0, #0x2
	bne     branch_2230c5e
	bl      Function_2017e2c
	mov     r0, #0x4
	bl      Function_2017df0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2230c5e

.thumb
branch_2230c5e: @ 2230c5e :thumb
	cmp     r0, #0x3
	bne     branch_2230c70
	bl      Function_2017e2c
	mov     r0, #0x4
	bl      Function_2017df0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2230c70

.thumb
branch_2230c70: @ 2230c70 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2230c74

.thumb
Function_2230c74: @ 2230c74 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      Function_2025340
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2230c88

.thumb
Function_2230c88: @ 2230c88 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fbe4
	mov     r5, r0
	ldr     r0, [r4, #0x8]
	bl      Function_20247c8
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2230caa


.align 2, 0


.thumb
Function_2230cac: @ 2230cac :thumb
	push    {r4,lr}
	ldr     r4, [r0, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2230cc0, (=0x3e2)
	mov     r0, r4
	add     r0, #0x64
	bl      Function_200e7fc
	str     r0, [r4, #0x7c]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2230cc0

.word 0x3e2 @ 0x2230cc0
.thumb
Function_2230cc4: @ 2230cc4 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x7c]
	bl      Function_200eba0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2230cd2


.align 2, 0


.thumb
Function_2230cd4: @ 2230cd4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x1c]
	add     r1, r2, #0x1
	str     r1, [r5, #0x1c]
	ldrb    r4, [r2, #0x0]
	bl      Function_222fc00
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x44]
	bl      Function_200b70c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2230cf4

.thumb
Function_2230cf4: @ 2230cf4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r2, [r5, #0x1c]
	add     r1, r2, #0x1
	str     r1, [r5, #0x1c]
	ldrb    r4, [r2, #0x0]
	bl      Function_222fc00
	mov     r6, r0
	bl      Function_2230d28
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x44]
	mov     r2, r6
	bl      Function_200b60c
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2230d26


.align 2, 0


.thumb
Function_2230d28: @ 2230d28 :thumb
	push    {r4,lr}
	mov     r1, #0xa
	mov     r4, r0
	blx     _u32_div_f
	cmp     r0, #0x0
	bne     branch_2230d3a
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2230d3a

.thumb
branch_2230d3a: @ 2230d3a :thumb
	mov     r0, r4
	mov     r1, #0x64
	blx     _u32_div_f
	cmp     r0, #0x0
	bne     branch_2230d4a
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2230d4a

.thumb
branch_2230d4a: @ 2230d4a :thumb
	mov     r1, #0xfa
	mov     r0, r4
	lsl     r1, r1, #2
	blx     _u32_div_f
	cmp     r0, #0x0
	bne     branch_2230d5c
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2230d5c

.thumb
branch_2230d5c: @ 2230d5c :thumb
	ldr     r1, [pc, #0x50] @ 0x2230db0, (=0x2710)
	mov     r0, r4
	blx     _u32_div_f
	cmp     r0, #0x0
	bne     branch_2230d6c
	mov     r0, #0x4
	pop     {r4,pc}
@ 0x2230d6c

.thumb
branch_2230d6c: @ 2230d6c :thumb
	ldr     r1, [pc, #0x44] @ 0x2230db4, (=0x186a0)
	mov     r0, r4
	blx     _u32_div_f
	cmp     r0, #0x0
	bne     branch_2230d7c
	mov     r0, #0x5
	pop     {r4,pc}
@ 0x2230d7c

.thumb
branch_2230d7c: @ 2230d7c :thumb
	ldr     r1, [pc, #0x38] @ 0x2230db8, (=0xf4240)
	mov     r0, r4
	blx     _u32_div_f
	cmp     r0, #0x0
	bne     branch_2230d8c
	mov     r0, #0x6
	pop     {r4,pc}
@ 0x2230d8c

.thumb
branch_2230d8c: @ 2230d8c :thumb
	ldr     r1, [pc, #0x2c] @ 0x2230dbc, (=0x989680)
	mov     r0, r4
	blx     _u32_div_f
	cmp     r0, #0x0
	bne     branch_2230d9c
	mov     r0, #0x7
	pop     {r4,pc}
@ 0x2230d9c

.thumb
branch_2230d9c: @ 2230d9c :thumb
	ldr     r1, [pc, #0x20] @ 0x2230dc0, (=0x5f5e100)
	mov     r0, r4
	blx     _u32_div_f
	cmp     r0, #0x0
	bne     branch_2230dac
	mov     r0, #0x8
	pop     {r4,pc}
@ 0x2230dac

.thumb
branch_2230dac: @ 2230dac :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2230db0

.word 0x2710 @ 0x2230db0
.word 0x186a0 @ 0x2230db4
.word 0xf4240 @ 0x2230db8
.word 0x989680 @ 0x2230dbc
.word 0x5f5e100 @ 0x2230dc0
.thumb
Function_2230dc4: @ 2230dc4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r2, [r5, #0x1c]
	add     r1, r2, #0x1
	str     r1, [r5, #0x1c]
	ldr     r0, [r0, #0x8]
	ldrb    r4, [r2, #0x0]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x44]
	bl      Function_200b498
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2230dee


.align 2, 0


.thumb
Function_2230df0: @ 2230df0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r1, [r5, #0x1c]
	add     r0, r1, #0x1
	str     r0, [r5, #0x1c]
	ldrb    r4, [r1, #0x0]
	bl      Function_203608c
	mov     r1, #0x1
	eor     r0, r1
	bl      Function_2032ee8
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x44]
	bl      Function_200b498
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2230e20

.thumb
Function_2230e20: @ 2230e20 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x1c]
	add     r1, r2, #0x1
	str     r1, [r5, #0x1c]
	ldrb    r4, [r2, #0x0]
	bl      Function_222fc00
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x44]
	bl      Function_200b630
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2230e40

.thumb
Function_2230e40: @ 2230e40 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r2, [r5, #0x1c]
	add     r1, r2, #0x1
	str     r1, [r5, #0x1c]
	ldrb    r6, [r2, #0x0]
	bl      Function_222fc00
	mov     r7, r0
	mov     r0, r5
	bl      Function_222ea48
	ldr     r1, [r5, #0x1c]
	str     r0, [sp, #0x8]
	add     r0, r1, #0x1
	str     r0, [r5, #0x1c]
	ldrb    r4, [r1, #0x0]
	mov     r0, r7
	mov     r1, #0xb
	bl      Function_2230e90
	mov     r7, r0
	str     r4, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	ldr     r3, [sp, #0x8]
	ldr     r0, [r0, #0x44]
	mov     r1, r6
	mov     r2, r7
	bl      Function_200b48c
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2230e8e


.align 2, 0


.thumb
Function_2230e90: @ 2230e90 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x67
	mov     r4, r0
	mov     r3, r1
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	bl      LoadFromNARC_9
	mov     r5, r0
	mov     r1, r4
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, r5
	bl      Function_200b190
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2230eb6


.align 2, 0


.thumb
Function_2230eb8: @ 2230eb8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x1c]
	add     r1, r2, #0x1
	str     r1, [r5, #0x1c]
	ldrb    r4, [r2, #0x0]
	bl      Function_222fc00
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x44]
	bl      Function_200b7ec
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2230ed8

.thumb
Function_2230ed8: @ 2230ed8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r1, [r4, #0x1c]
	mov     r2, r0
	add     r0, r1, #0x1
	str     r0, [r4, #0x1c]
	ldr     r0, [r4, #0x0]
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r0, #0x44]
	ldr     r2, [r2, #0x8]
	bl      Function_200b4bc
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2230efc

.thumb
Function_2230efc: @ 2230efc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fbe4
	mov     r5, r0
	ldr     r0, [r4, #0x8]
	bl      Function_202d750
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_202d230
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2230f26


.align 2, 0


.thumb
Function_2230f28: @ 2230f28 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r5, r0
	ldr     r0, [r4, #0x8]
	bl      Function_202440c
	mov     r1, r5
	bl      Function_206d0c8
	ldr     r0, [r4, #0x8]
	bl      LoadVariableAreaAdress_14
	mov     r1, #0x44
	mov     r2, r5
	bl      Function_202cf70
	ldr     r0, [r4, #0x8]
	bl      Function_202d750
	mov     r1, r5
	mov     r2, #0x5
	bl      Function_202d230
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2230f6a


.align 2, 0


.thumb
Function_2230f6c: @ 2230f6c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r5, r0
	ldr     r0, [r4, #0x8]
	bl      LoadVariableAreaAdress_14
	mov     r1, #0x45
	mov     r2, r5
	bl      Function_202cf70
	ldr     r0, [r4, #0x8]
	bl      Function_202d750
	mov     r1, r5
	mov     r2, #0x6
	bl      Function_202d230
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2230fa2


.align 2, 0


.thumb
Function_2230fa4: @ 2230fa4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222fc00
	mov     r1, r4
	add     r1, #0x78
	strh    r0, [r1, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_20364f0
	ldr     r1, [pc, #0xc] @ 0x2230fc8, (=0x2230fcd)
	mov     r0, r4
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2230fc6


.align 2


.word Function_2230fcc+1 @ =0x2230fcd, 0x2230fc8
.thumb
Function_2230fcc: @ 2230fcc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2035e18
	cmp     r0, #0x2
	bge     branch_2230fdc
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2230fdc

.thumb
branch_2230fdc: @ 2230fdc :thumb
	add     r4, #0x78
	ldrh    r0, [r4, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_2036540
	pop     {r4,pc}
@ 0x2230fea


.align 2, 0


.thumb
Function_2230fec: @ 2230fec :thumb
	push    {r3,lr}
	bl      Function_20365f4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2230ff6


.align 2, 0


.thumb
Function_2230ff8: @ 2230ff8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_205987c
	ldr     r1, [pc, #0x8] @ 0x223100c, (=0x2231011)
	mov     r0, r4
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223100c

.word Function_2231010+1 @ =0x2231011, 0x223100c
.thumb
Function_2231010: @ 2231010 :thumb
	push    {r3,lr}
	bl      Function_2036780
	cmp     r0, #0x1
	beq     branch_2231026
	bl      Function_2033e1c
	cmp     r0, #0x1
	beq     branch_2231026
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2231026

.thumb
branch_2231026: @ 2231026 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223102a


.align 2, 0


.thumb
Function_223102c: @ 223102c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_222fbe4
	mov     r5, r0
	mov     r0, r4
	bl      Function_222fc00
	mov     r4, r0
	bl      PRNG
	mov     r1, r4
	blx     _s32_div_f
	strh    r1, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223104e


.align 2, 0


.thumb
Function_2231050: @ 2231050 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      LoadPokePartyAdress
	bl      HealPokemon
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2231068

.thumb
Function_2231068: @ 2231068 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x8] @ 0x2231074, (=0x2231079)
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2231074

.word Function_2231078+1 @ =0x2231079, 0x2231074
.thumb
Function_2231078: @ 2231078 :thumb
	ldr     r0, [pc, #0x10] @ 0x223108c, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_2231086
	mov     r0, #0x1
	bx      lr
@ 0x2231086

.thumb
branch_2231086: @ 2231086 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223108a


.align 2


.word 0x21bf67c @ 0x223108c
.thumb
Function_2231090: @ 2231090 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222fc00
	mov     r1, r4
	add     r1, #0x78
	strh    r0, [r1, #0x0]
	ldr     r1, [pc, #0xc] @ 0x22310ac, (=0x22310b1)
	mov     r0, r4
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22310aa


.align 2


.word Function_22310b0+1 @ =0x22310b1, 0x22310ac
.thumb
Function_22310b0: @ 22310b0 :thumb
	ldr     r1, [pc, #0x28] @ 0x22310dc, (=0x21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x3
	tst     r1, r2
	beq     branch_22310be
	mov     r0, #0x1
	bx      lr
@ 0x22310be

.thumb
branch_22310be: @ 22310be :thumb
	mov     r1, r0
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	.hword  0x1e4a @ sub r2, r1, #0x1
	mov     r1, r0
	add     r1, #0x78
	strh    r2, [r1, #0x0]
	add     r0, #0x78
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_22310d8
	mov     r0, #0x1
	bx      lr
@ 0x22310d8

.thumb
branch_22310d8: @ 22310d8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22310dc

.word 0x21bf67c @ 0x22310dc
.thumb
Function_22310e0: @ 22310e0 :thumb
	push    {r3,lr}
	bl      Function_222fbe4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22310ea


.align 2, 0


.thumb
Function_22310ec: @ 22310ec :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_222ea48
	mov     r6, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      LoadFlagAdress
	mov     r1, r6
	bl      Function_20508b8
	strh    r4, [r0, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2231118

.thumb
Function_2231118: @ 2231118 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_222ea48
	mov     r6, r0
	mov     r0, r5
	bl      Function_222fbe4
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      LoadFlagAdress
	mov     r1, r6
	bl      Function_20508b8
	ldrh    r0, [r0, #0x0]
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2231146


.align 2, 0


.thumb
Function_2231148: @ 2231148 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_223115a
	cmp     r0, #0x1
	beq     branch_2231176
	b       branch_22311a8
@ 0x223115a

.thumb
branch_223115a: @ 223115a :thumb
	mov     r1, #0x10
	mov     r0, #0x2
	mov     r2, r1
	mov     r3, r4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	sub     r2, #0x20
	add     r3, #0xc
	bl      Function_223e894
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_22311b6
@ 0x2231176

.thumb
branch_2231176: @ 2231176 :thumb
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_22311b6
	mov     r0, #0x0
	bl      Function_200f32c
	mov     r0, #0x1
	bl      Function_200f32c
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_22311b6
@ 0x22311a8

.thumb
branch_22311a8: @ 22311a8 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_22311b6
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x22311b6

.thumb
branch_22311b6: @ 22311b6 :thumb
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x22311bc

.thumb
Function_22311bc: @ 22311bc :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x3
	bhi     branch_2231284
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22311d4

Jumppoints_22311d4:
.hword branch_22311dc - Jumppoints_22311d4 - 2
.hword branch_22311f8 - Jumppoints_22311d4 - 2
.hword branch_2231252 - Jumppoints_22311d4 - 2
.hword branch_223126a - Jumppoints_22311d4 - 2
.thumb
branch_22311dc: @ 22311dc :thumb
	mov     r1, #0x10
	mov     r0, #0x2
	mov     r2, r1
	mov     r3, r4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	sub     r2, #0x20
	add     r3, #0xc
	bl      Function_223e894
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_22312d2
@ 0x22311f8

.thumb
branch_22311f8: @ 22311f8 :thumb
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_22312d2
	mov     r0, #0xb
	mov     r1, #0x1
	bl      Function_201a778
	str     r0, [r4, #0x28]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	str     r3, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x28]
	ldr     r0, [r0, #0x0]
	mov     r2, #0x1
	bl      Function_201a7e8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x2
	ldr     r0, [r0, #0x4]
	mov     r3, r1
	bl      Function_20038b0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r4, #0x28]
	bl      Function_201a9a4
	mov     r0, #0xb
	bl      Function_223eba0
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
branch_2231252: @ 2231252 :thumb
	mov     r0, #0xf
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	ldr     r0, [r4, #0x2c]
	ldr     r3, [r4, #0x28]
	mov     r2, r1
	bl      Function_223ebf0
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_22312d2

branch_223126a: @ 223126a :thumb
	ldr     r0, [r4, #0x2c]
	bl      Function_223ec34
	mov     r5, r0
	ldr     r0, [r4, #0x28]
	bl      Function_201a9a4
	cmp     r5, #0x0
	beq     branch_22312d2
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_22312d2
@ 0x2231284

.thumb
branch_2231284: @ 2231284 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_22312d2
	ldr     r0, [r4, #0x2c]
	bl      Function_223ebd0
	ldr     r0, [r4, #0x28]
	bl      Function_201acf4
	ldr     r0, [r4, #0x28]
	bl      Function_201a8fc
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	bl      Function_201a928
	mov     r0, #0x0
	mov     r1, r0
	bl      SetBrightnessWithValue
	mov     r0, #0x1
	mov     r1, #0x0
	bl      SetBrightnessWithValue
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0xb
	bl      Function_2019690
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2019ebc
	add     sp, #0x14
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x22312d2

.thumb
branch_22312d2: @ 22312d2 :thumb
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x22312d8

.thumb
Function_22312d8: @ 22312d8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x3
	bhi     branch_22313a0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22312f0

Jumppoints_22312f0:
.hword branch_22312f8 - Jumppoints_22312f0 - 2
.hword branch_2231314 - Jumppoints_22312f0 - 2
.hword branch_223136e - Jumppoints_22312f0 - 2
.hword branch_2231386 - Jumppoints_22312f0 - 2
.thumb
branch_22312f8: @ 22312f8 :thumb
	mov     r1, #0x10
	mov     r0, #0x2
	mov     r2, r1
	mov     r3, r4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	sub     r2, #0x20
	add     r3, #0xc
	bl      Function_223e894
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_22313ee
@ 0x2231314

.thumb
branch_2231314: @ 2231314 :thumb
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_22313ee
	mov     r0, #0xb
	mov     r1, #0x1
	bl      Function_201a778
	str     r0, [r4, #0x28]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	str     r3, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x28]
	ldr     r0, [r0, #0x0]
	mov     r2, #0x1
	bl      Function_201a7e8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x2
	ldr     r0, [r0, #0x4]
	mov     r3, r1
	bl      Function_20038b0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [r4, #0x28]
	bl      Function_201a9a4
	mov     r0, #0xb
	bl      Function_223eba0
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_223136e: @ 223136e :thumb
	mov     r0, #0xf
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	ldr     r0, [r4, #0x2c]
	ldr     r3, [r4, #0x28]
	mov     r2, r1
	bl      Function_223ebf0
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_22313ee
@ 0x2231386

.thumb
branch_2231386: @ 2231386 :thumb
	ldr     r0, [r4, #0x2c]
	bl      Function_223ee44
	mov     r5, r0
	ldr     r0, [r4, #0x28]
	bl      Function_201a9a4
	cmp     r5, #0x0
	beq     branch_22313ee
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_22313ee
@ 0x22313a0

.thumb
branch_22313a0: @ 22313a0 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_22313ee
	ldr     r0, [r4, #0x2c]
	bl      Function_223ebd0
	ldr     r0, [r4, #0x28]
	bl      Function_201acf4
	ldr     r0, [r4, #0x28]
	bl      Function_201a8fc
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	bl      Function_201a928
	mov     r0, #0x0
	mov     r1, r0
	bl      SetBrightnessWithValue
	mov     r0, #0x1
	mov     r1, #0x0
	bl      SetBrightnessWithValue
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0xb
	bl      Function_2019690
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2019ebc
	add     sp, #0x14
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x22313ee

.thumb
branch_22313ee: @ 22313ee :thumb
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x22313f4

.thumb
Function_22313f4: @ 22313f4 :thumb
	lsl     r1, r1, #16
	orr     r0, r1
	bx      lr
@ 0x22313fa


.align 2, 0


.thumb
Function_22313fc: @ 22313fc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r4, r1
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x0]
	ldr     r7, [r4, #0x24]
	bl      Function_2019ff0
	str     r0, [sp, #0x20]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x0]
	bl      Function_2019ff0
	str     r0, [sp, #0x1c]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	ldr     r0, [r0, #0x0]
	bl      Function_2019ff0
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	ldr     r0, [r0, #0x0]
	bl      Function_2019ff0
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x1
	beq     branch_223143e
	b       branch_22315ae
@ 0x223143e

.thumb
branch_223143e: @ 223143e :thumb
	mov     r0, #0x6
	lsl     r0, r0, #8
	ldr     r0, [r7, r0]
	bl      Function_223f27c
	str     r0, [sp, #0x24]
	mov     r0, #0x0
	str     r0, [sp, #0x28]
	mov     r4, r7
.thumb
branch_2231450: @ 2231450 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x8]
	strh    r0, [r4, #0xa]
	ldsh    r6, [r4, r0]
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	cmp     r6, r0
	blt     branch_2231462
	b       branch_2231586
@ 0x2231462

.thumb
branch_2231462: @ 2231462 :thumb
	ldr     r0, [sp, #0x24]
	lsl     r1, r6, #5
	add     r5, r0, r1
.thumb
branch_2231468: @ 2231468 :thumb
	mov     r2, #0x1
	mov     r0, #0x0
	lsl     r2, r2, #12
	str     r0, [sp, #0x0]
	add     r0, sp, #0x2c
	mov     r1, #0x0
	mov     r3, r2
	bl      Function_201d470
	mov     r0, #0x8
	ldsh    r1, [r4, r0]
	ldr     r0, [sp, #0x20]
	add     r0, r0, r1
	mov     r1, #0xa
	ldsh    r2, [r4, r1]
	ldr     r1, [sp, #0x1c]
	lsl     r0, r0, #16
	add     r1, r1, r2
	ldr     r2, [pc, #0x28c] @ 0x223171c, (=0x604)
	lsl     r1, r1, #16
	ldr     r2, [r7, r2]
	asr     r0, r0, #16
	asr     r1, r1, #16
	cmp     r2, #0x2
	bne     branch_22314bc
	lsr     r2, r0, #31
	lsl     r3, r0, #24
	sub     r3, r3, r2
	mov     r0, #0x18
	ror     r3, r0
	add     r0, r2, r3
	lsr     r2, r1, #31
	lsl     r3, r1, #24
	lsl     r0, r0, #16
	sub     r3, r3, r2
	mov     r1, #0x18
	ror     r3, r1
	add     r1, r2, r3
	lsl     r1, r1, #16
	asr     r0, r0, #16
	asr     r1, r1, #16
	b       branch_22314e8
@ 0x22314bc

.thumb
branch_22314bc: @ 22314bc :thumb
	cmp     r2, #0x1
	bne     branch_22314e8
	cmp     r0, #0x0
	bge     branch_22314ce
	mov     r2, #0x1
	lsl     r2, r2, #8
	add     r0, r0, r2
	lsl     r0, r0, #16
	asr     r0, r0, #16
.thumb
branch_22314ce: @ 22314ce :thumb
	cmp     r1, #0x0
	bge     branch_22314d8
	neg     r1, r1
	lsl     r1, r1, #16
	asr     r1, r1, #16
.thumb
branch_22314d8: @ 22314d8 :thumb
	lsr     r2, r0, #31
	lsl     r3, r0, #24
	sub     r3, r3, r2
	mov     r0, #0x18
	ror     r3, r0
	add     r0, r2, r3
	lsl     r0, r0, #16
	asr     r0, r0, #16
.thumb
branch_22314e8: @ 22314e8 :thumb
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r1, [sp, #0x4]
	mov     r0, r5
	add     r1, sp, #0x2c
	mov     r3, r2
	blx     G2x_SetBGyAffine_
	mov     r0, #0x8
	ldsh    r1, [r4, r0]
	ldr     r0, [sp, #0x18]
	add     r0, r0, r1
	mov     r1, #0xa
	ldsh    r2, [r4, r1]
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #16
	add     r1, r1, r2
	ldr     r2, [pc, #0x210] @ 0x223171c, (=0x604)
	lsl     r1, r1, #16
	ldr     r2, [r7, r2]
	asr     r0, r0, #16
	asr     r1, r1, #16
	cmp     r2, #0x2
	bne     branch_223153a
	lsr     r2, r0, #31
	lsl     r3, r0, #24
	sub     r3, r3, r2
	mov     r0, #0x18
	ror     r3, r0
	add     r0, r2, r3
	lsr     r2, r1, #31
	lsl     r3, r1, #24
	lsl     r0, r0, #16
	sub     r3, r3, r2
	mov     r1, #0x18
	ror     r3, r1
	add     r1, r2, r3
	lsl     r1, r1, #16
	asr     r0, r0, #16
	asr     r1, r1, #16
	b       branch_2231566
@ 0x223153a

.thumb
branch_223153a: @ 223153a :thumb
	cmp     r2, #0x1
	bne     branch_2231566
	cmp     r0, #0x0
	bge     branch_223154c
	mov     r2, #0x1
	lsl     r2, r2, #8
	add     r0, r0, r2
	lsl     r0, r0, #16
	asr     r0, r0, #16
.thumb
branch_223154c: @ 223154c :thumb
	cmp     r1, #0x0
	bge     branch_2231556
	neg     r1, r1
	lsl     r1, r1, #16
	asr     r1, r1, #16
.thumb
branch_2231556: @ 2231556 :thumb
	lsr     r2, r0, #31
	lsl     r3, r0, #24
	sub     r3, r3, r2
	mov     r0, #0x18
	ror     r3, r0
	add     r0, r2, r3
	lsl     r0, r0, #16
	asr     r0, r0, #16
.thumb
branch_2231566: @ 2231566 :thumb
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x0
	str     r1, [sp, #0x4]
	add     r0, #0x10
	add     r1, sp, #0x2c
	mov     r3, r2
	blx     G2x_SetBGyAffine_
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x20
	cmp     r6, r0
	bge     branch_2231586
	b       branch_2231468
@ 0x2231586

.thumb
branch_2231586: @ 2231586 :thumb
	ldr     r0, [sp, #0x28]
	add     r4, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x28]
	cmp     r0, #0x60
	bge     branch_2231594
	b       branch_2231450
@ 0x2231594

.thumb
branch_2231594: @ 2231594 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #8
	ldr     r0, [r7, r0]
	bl      Function_223f258
	mov     r0, r7
	bl      free
	ldr     r0, [sp, #0x8]
	bl      Call_RemoveTaskFromTaskList
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x22315ae

.thumb
branch_22315ae: @ 22315ae :thumb
	mov     r0, #0x6
	lsl     r0, r0, #8
	ldr     r0, [r7, r0]
	bl      Function_223f27c
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r4, r7
.thumb
branch_22315c0: @ 22315c0 :thumb
	mov     r0, #0x8
	ldsh    r1, [r4, r0]
	mov     r0, #0x4
	ldsh    r0, [r4, r0]
	add     r0, r1, r0
	strh    r0, [r4, #0x8]
	mov     r0, #0xa
	ldsh    r1, [r4, r0]
	mov     r0, #0x6
	ldsh    r0, [r4, r0]
	add     r0, r1, r0
	strh    r0, [r4, #0xa]
	mov     r0, #0x0
	ldsh    r6, [r4, r0]
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	cmp     r6, r0
	blt     branch_22315e6
	b       branch_223170a
@ 0x22315e6

.thumb
branch_22315e6: @ 22315e6 :thumb
	ldr     r0, [sp, #0x10]
	lsl     r1, r6, #5
	add     r5, r0, r1
.thumb
branch_22315ec: @ 22315ec :thumb
	mov     r2, #0x1
	mov     r0, #0x0
	lsl     r2, r2, #12
	str     r0, [sp, #0x0]
	add     r0, sp, #0x2c
	mov     r1, #0x0
	mov     r3, r2
	bl      Function_201d470
	mov     r0, #0x8
	ldsh    r1, [r4, r0]
	ldr     r0, [sp, #0x20]
	add     r0, r0, r1
	mov     r1, #0xa
	ldsh    r2, [r4, r1]
	ldr     r1, [sp, #0x1c]
	lsl     r0, r0, #16
	add     r1, r1, r2
	ldr     r2, [pc, #0x108] @ 0x223171c, (=0x604)
	lsl     r1, r1, #16
	ldr     r2, [r7, r2]
	asr     r0, r0, #16
	asr     r1, r1, #16
	cmp     r2, #0x2
	bne     branch_2231640
	lsr     r2, r0, #31
	lsl     r3, r0, #24
	sub     r3, r3, r2
	mov     r0, #0x18
	ror     r3, r0
	add     r0, r2, r3
	lsr     r2, r1, #31
	lsl     r3, r1, #24
	lsl     r0, r0, #16
	sub     r3, r3, r2
	mov     r1, #0x18
	ror     r3, r1
	add     r1, r2, r3
	lsl     r1, r1, #16
	asr     r0, r0, #16
	asr     r1, r1, #16
	b       branch_223166c
@ 0x2231640

.thumb
branch_2231640: @ 2231640 :thumb
	cmp     r2, #0x1
	bne     branch_223166c
	cmp     r0, #0x0
	bge     branch_2231652
	mov     r2, #0x1
	lsl     r2, r2, #8
	add     r0, r0, r2
	lsl     r0, r0, #16
	asr     r0, r0, #16
.thumb
branch_2231652: @ 2231652 :thumb
	cmp     r1, #0x0
	bge     branch_223165c
	neg     r1, r1
	lsl     r1, r1, #16
	asr     r1, r1, #16
.thumb
branch_223165c: @ 223165c :thumb
	lsr     r2, r0, #31
	lsl     r3, r0, #24
	sub     r3, r3, r2
	mov     r0, #0x18
	ror     r3, r0
	add     r0, r2, r3
	lsl     r0, r0, #16
	asr     r0, r0, #16
.thumb
branch_223166c: @ 223166c :thumb
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r1, [sp, #0x4]
	mov     r0, r5
	add     r1, sp, #0x2c
	mov     r3, r2
	blx     G2x_SetBGyAffine_
	mov     r0, #0x8
	ldsh    r1, [r4, r0]
	ldr     r0, [sp, #0x18]
	add     r0, r0, r1
	mov     r1, #0xa
	ldsh    r2, [r4, r1]
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #16
	add     r1, r1, r2
	ldr     r2, [pc, #0x8c] @ 0x223171c, (=0x604)
	lsl     r1, r1, #16
	ldr     r2, [r7, r2]
	asr     r0, r0, #16
	asr     r1, r1, #16
	cmp     r2, #0x2
	bne     branch_22316be
	lsr     r2, r0, #31
	lsl     r3, r0, #24
	sub     r3, r3, r2
	mov     r0, #0x18
	ror     r3, r0
	add     r0, r2, r3
	lsr     r2, r1, #31
	lsl     r3, r1, #24
	lsl     r0, r0, #16
	sub     r3, r3, r2
	mov     r1, #0x18
	ror     r3, r1
	add     r1, r2, r3
	lsl     r1, r1, #16
	asr     r0, r0, #16
	asr     r1, r1, #16
	b       branch_22316ea
@ 0x22316be

.thumb
branch_22316be: @ 22316be :thumb
	cmp     r2, #0x1
	bne     branch_22316ea
	cmp     r0, #0x0
	bge     branch_22316d0
	mov     r2, #0x1
	lsl     r2, r2, #8
	add     r0, r0, r2
	lsl     r0, r0, #16
	asr     r0, r0, #16
.thumb
branch_22316d0: @ 22316d0 :thumb
	cmp     r1, #0x0
	bge     branch_22316da
	neg     r1, r1
	lsl     r1, r1, #16
	asr     r1, r1, #16
.thumb
branch_22316da: @ 22316da :thumb
	lsr     r2, r0, #31
	lsl     r3, r0, #24
	sub     r3, r3, r2
	mov     r0, #0x18
	ror     r3, r0
	add     r0, r2, r3
	lsl     r0, r0, #16
	asr     r0, r0, #16
.thumb
branch_22316ea: @ 22316ea :thumb
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x0
	str     r1, [sp, #0x4]
	add     r0, #0x10
	add     r1, sp, #0x2c
	mov     r3, r2
	blx     G2x_SetBGyAffine_
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x20
	cmp     r6, r0
	bge     branch_223170a
	b       branch_22315ec
@ 0x223170a

.thumb
branch_223170a: @ 223170a :thumb
	ldr     r0, [sp, #0xc]
	add     r4, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	cmp     r0, #0x60
	bge     branch_2231718
	b       branch_22315c0
@ 0x2231718

.thumb
branch_2231718: @ 2231718 :thumb
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x223171c

.word 0x604 @ 0x223171c
.thumb
Function_2231720: @ 2231720 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_2231736
	cmp     r0, #0x1
	beq     branch_2231752
	cmp     r0, #0x2
	beq     branch_223180c
	b       branch_2231846
@ 0x2231736

.thumb
branch_2231736: @ 2231736 :thumb
	mov     r1, #0x10
	mov     r0, #0x2
	mov     r2, r1
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	sub     r2, #0x20
	add     r3, #0xc
	bl      Function_223e894
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
	b       branch_223184c
@ 0x2231752

.thumb
branch_2231752: @ 2231752 :thumb
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	beq     branch_223184c
	add     r0, sp, #0x4
	mov     r1, #0x0
	mov     r2, #0x20
	blx     MI_CpuFill8
	mov     r0, #0x0
	str     r0, [r5, #0x10]
	ldr     r1, [pc, #0xec] @ 0x2231854, (=0x608)
	mov     r0, #0x5e
	bl      malloc
	ldr     r1, [pc, #0xe8] @ 0x2231858, (=0x604)
	str     r0, [r5, #0x24]
	mov     r2, #0x1
	str     r2, [r0, r1]
	ldr     r0, [pc, #0xe4] @ 0x223185c, (=0x4000020)
	add     r1, sp, #0x4
	mov     r2, #0x5e
	bl      Function_223f1b4
	mov     r7, #0x0
	mov     r1, #0x6
	ldr     r2, [r5, #0x24]
	lsl     r1, r1, #8
	str     r0, [r2, r1]
	mov     r6, r7
	mov     r4, r7
.thumb
branch_223178e: @ 223178e :thumb
	ldr     r0, [r5, #0x24]
	strh    r6, [r0, r4]
	ldr     r1, [r5, #0x24]
	add     r0, r1, r4
	ldsh    r1, [r1, r4]
	.hword  0x1c89 @ add r1, r1, #0x2
	strh    r1, [r0, #0x2]
	mov     r0, #0x31
	sub     r2, r0, r7
	lsr     r1, r2, #31
	lsl     r3, r2, #29
	sub     r3, r3, r1
	mov     r0, #0x1d
	ror     r3, r0
	add     r0, r1, r3
	ldr     r1, [r5, #0x24]
	add     r1, r1, r4
	strh    r0, [r1, #0x4]
	asr     r0, r2, #1
	lsr     r0, r0, #30
	add     r0, r2, r0
	asr     r1, r0, #2
	ldr     r0, [r5, #0x24]
	add     r0, r0, r4
	strh    r1, [r0, #0x6]
	ldr     r0, [r5, #0x24]
	add     r1, r0, r4
	mov     r0, #0x0
	strh    r0, [r1, #0x8]
	ldr     r0, [r5, #0x24]
	add     r1, r0, r4
	mov     r0, #0x0
	strh    r0, [r1, #0xa]
	mov     r1, r0
	bl      Function_22313f4
	ldr     r1, [r5, #0x24]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r1, r1, r4
	str     r0, [r1, #0xc]
	.hword  0x1cb6 @ add r6, r6, #0x2
	add     r4, #0x10
	cmp     r7, #0x60
	blt     branch_223178e
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x28
	mov     r1, r0
	sub     r1, #0x38
	mov     r2, #0x0
	mov     r3, #0x1e
	bl      Function_200aae0
	mov     r2, #0x1
	ldr     r0, [pc, #0x64] @ 0x2231860, (=0x22313fd)
	mov     r1, r5
	lsl     r2, r2, #12
	bl      AddTaskToTaskList1
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
	b       branch_223184c
@ 0x223180c

.thumb
branch_223180c: @ 223180c :thumb
	mov     r0, #0x1
	bl      Function_200ac1c
	cmp     r0, #0x0
	beq     branch_223184c
	mov     r0, #0x1
	str     r0, [r5, #0x10]
	mov     r0, #0x3
	mov     r1, #0x0
	bl      Function_2019120
	ldr     r0, [r5, #0x0]
	mov     r2, #0x0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2019184
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	ldr     r0, [r0, #0x0]
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2019184
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
	b       branch_223184c
@ 0x2231846

.thumb
branch_2231846: @ 2231846 :thumb
	add     sp, #0x24
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x223184c

.thumb
branch_223184c: @ 223184c :thumb
	mov     r0, #0x1
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2231852


.align 2


.word 0x608 @ 0x2231854
.word 0x604 @ 0x2231858
.word 0x4000020 @ 0x223185c
.word Function_22313fc+1 @ =0x22313fd, 0x2231860
.thumb
Function_2231864: @ 2231864 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_223187a
	cmp     r0, #0x1
	beq     branch_2231896
	cmp     r0, #0x2
	beq     branch_2231974
	b       branch_22319ae
@ 0x223187a

.thumb
branch_223187a: @ 223187a :thumb
	mov     r1, #0x10
	mov     r0, #0x2
	mov     r2, r1
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	sub     r2, #0x20
	add     r3, #0xc
	bl      Function_223e894
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
	b       branch_22319b4
@ 0x2231896

.thumb
branch_2231896: @ 2231896 :thumb
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bne     branch_223189e
	b       branch_22319b4
@ 0x223189e

.thumb
branch_223189e: @ 223189e :thumb
	add     r0, sp, #0x4
	mov     r1, #0x0
	mov     r2, #0x20
	blx     MI_CpuFill8
	mov     r0, #0x0
	str     r0, [r5, #0x10]
	ldr     r1, [pc, #0x10c] @ 0x22319bc, (=0x608)
	mov     r0, #0x5e
	bl      malloc
	ldr     r1, [pc, #0x108] @ 0x22319c0, (=0x604)
	str     r0, [r5, #0x24]
	mov     r2, #0x2
	str     r2, [r0, r1]
	ldr     r0, [pc, #0x104] @ 0x22319c4, (=0x4000020)
	add     r1, sp, #0x4
	mov     r2, #0x5e
	bl      Function_223f1b4
	mov     r6, #0x0
	mov     r1, #0x6
	ldr     r2, [r5, #0x24]
	lsl     r1, r1, #8
	str     r0, [r2, r1]
	mov     r7, r6
	mov     r4, r6
.thumb
branch_22318d4: @ 22318d4 :thumb
	ldr     r0, [r5, #0x24]
	lsr     r2, r6, #31
	strh    r7, [r0, r4]
	ldr     r1, [r5, #0x24]
	add     r0, r1, r4
	ldsh    r1, [r1, r4]
	.hword  0x1c89 @ add r1, r1, #0x2
	strh    r1, [r0, #0x2]
	mov     r0, #0x30
	sub     r1, r0, r6
	asr     r0, r1, #2
	lsr     r0, r0, #29
	add     r0, r1, r0
	asr     r0, r0, #3
	add     r1, r0, #0x1
	ldr     r0, [r5, #0x24]
	add     r0, r0, r4
	strh    r1, [r0, #0x4]
	lsl     r1, r6, #31
	sub     r1, r1, r2
	mov     r0, #0x1f
	ror     r1, r0
	add     r0, r2, r1
	beq     branch_2231912
	ldr     r0, [r5, #0x24]
	mov     r1, #0x4
	add     r0, r0, r4
	ldsh    r2, [r0, r1]
	.hword  0x1f49 @ sub r1, r1, #0x5
	mul     r1, r2
	strh    r1, [r0, #0x4]
.thumb
branch_2231912: @ 2231912 :thumb
	cmp     r6, #0x30
	bge     branch_223191e
	ldr     r0, [r5, #0x24]
	add     r0, r0, r4
	strh    r6, [r0, #0x6]
	b       branch_2231928
@ 0x223191e

.thumb
branch_223191e: @ 223191e :thumb
	mov     r0, #0x60
	sub     r1, r0, r6
	ldr     r0, [r5, #0x24]
	add     r0, r0, r4
	strh    r1, [r0, #0x6]
.thumb
branch_2231928: @ 2231928 :thumb
	ldr     r0, [r5, #0x24]
	add     r1, r0, r4
	mov     r0, #0x0
	strh    r0, [r1, #0x8]
	ldr     r0, [r5, #0x24]
	add     r1, r0, r4
	mov     r0, #0x0
	strh    r0, [r1, #0xa]
	mov     r1, r0
	bl      Function_22313f4
	ldr     r1, [r5, #0x24]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r1, r1, r4
	str     r0, [r1, #0xc]
	.hword  0x1cbf @ add r7, r7, #0x2
	add     r4, #0x10
	cmp     r6, #0x60
	blt     branch_22318d4
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x28
	mov     r1, r0
	sub     r1, #0x38
	mov     r2, #0x0
	mov     r3, #0x1c
	bl      Function_200aae0
	mov     r2, #0x1
	ldr     r0, [pc, #0x64] @ 0x22319c8, (=0x22313fd)
	mov     r1, r5
	lsl     r2, r2, #12
	bl      AddTaskToTaskList1
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
	b       branch_22319b4
@ 0x2231974

.thumb
branch_2231974: @ 2231974 :thumb
	mov     r0, #0x1
	bl      Function_200ac1c
	cmp     r0, #0x0
	beq     branch_22319b4
	mov     r0, #0x1
	str     r0, [r5, #0x10]
	mov     r0, #0x3
	mov     r1, #0x0
	bl      Function_2019120
	ldr     r0, [r5, #0x0]
	mov     r2, #0x0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2019184
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	ldr     r0, [r0, #0x0]
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2019184
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
	b       branch_22319b4
@ 0x22319ae

.thumb
branch_22319ae: @ 22319ae :thumb
	add     sp, #0x24
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x22319b4

.thumb
branch_22319b4: @ 22319b4 :thumb
	mov     r0, #0x1
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x22319ba


.align 2


.word 0x608 @ 0x22319bc
.word 0x604 @ 0x22319c0
.word 0x4000020 @ 0x22319c4
.word Function_22313fc+1 @ =0x22313fd, 0x22319c8
.thumb
Function_22319cc: @ 22319cc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_22319de
	cmp     r0, #0x1
	beq     branch_22319f0
	b       branch_2231a1a
@ 0x22319de

.thumb
branch_22319de: @ 22319de :thumb
	mov     r0, r4
	add     r0, #0x18
	mov     r1, #0x5e
	bl      Function_223f094
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_2231a1a
@ 0x22319f0

.thumb
branch_22319f0: @ 22319f0 :thumb
	mov     r0, #0x12
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	mov     r0, #0x19
	lsl     r0, r0, #4
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x2231a20, (=0x400001c)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, #0x4
	str     r0, [sp, #0x10]
	mov     r0, r4
	ldr     r3, [pc, #0x18] @ 0x2231a24, (=0x2aa)
	add     r0, #0x18
	mov     r2, #0xbf
	bl      Function_223f0b0
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_2231a1a: @ 2231a1a :thumb
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2231a20

.word 0x400001c @ 0x2231a20
.word 0x2aa @ 0x2231a24
.thumb
Function_2231a28: @ 2231a28 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r0, r5
	bl      Function_222fc00
	mov     r1, r5
	add     r1, #0x78
	strh    r0, [r1, #0x0]
	ldr     r1, [pc, #0x5c] @ 0x2231aa0, (=0x45f)
	mov     r0, #0x5
	mov     r2, #0x1
	bl      Function_2004550
	mov     r0, #0xb
	mov     r1, #0x30
	bl      malloc
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	str     r0, [r4, #0x14]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, r5
	add     r0, #0x78
	ldrh    r0, [r0, #0x0]
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x0]
	bl      Function_222e924
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x0]
	bl      Function_209b980
	ldr     r1, [pc, #0x24] @ 0x2231aa4, (=0x2231aa9)
	mov     r0, r5
	bl      Function_222e974
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x2
	ldr     r0, [r0, #0x4]
	mov     r3, r1
	bl      Function_20038b0
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2231aa0

.word 0x45f @ 0x2231aa0
.word Function_2231aa8+1 @ =0x2231aa9, 0x2231aa4
.thumb
Function_2231aa8: @ 2231aa8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r4, r0
	ldr     r1, [r4, #0x8]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x34] @ 0x2231af0, (=0x223f65c)
	ldr     r1, [r1, r2]
	blx     r1
	mov     r6, r0
	bne     branch_2231ae4
	mov     r0, #0x0
	mov     r1, r0
	bl      SetBrightnessWithValue
	mov     r0, #0x1
	mov     r1, #0x0
	bl      SetBrightnessWithValue
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x14]
	ldr     r0, [r0, #0x0]
	bl      Function_209b980
	mov     r0, r4
	bl      free
.thumb
branch_2231ae4: @ 2231ae4 :thumb
	cmp     r6, #0x0
	bne     branch_2231aec
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2231aec

.thumb
branch_2231aec: @ 2231aec :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2231af0

.word 0x223f65c @ 0x2231af0
.thumb
Function_2231af4: @ 2231af4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fbe4
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      LoadTrainerDataAdress
	bl      GetGender
	cmp     r0, #0x0
	bne     branch_2231b18
	mov     r0, #0x0
	b       branch_2231b1a
@ 0x2231b18

.thumb
branch_2231b18: @ 2231b18 :thumb
	mov     r0, #0x61
.thumb
branch_2231b1a: @ 2231b1a :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2231b20

.thumb
Function_2231b20: @ 2231b20 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r6, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r7, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r3, r0
	ldr     r0, [r4, #0x10]
	mov     r1, r6
	mov     r2, r7
	bl      Function_223d614
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2231b54

.thumb
Function_2231b54: @ 2231b54 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r5, r0
	mov     r0, r4
	bl      Function_222fc00
	mov     r1, r0
	ldr     r0, [r5, #0x10]
	bl      Function_223d68c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2231b74

.thumb
Function_2231b74: @ 2231b74 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r5, r0
	mov     r0, r4
	bl      Function_222fc00
	mov     r6, r0
	mov     r0, r4
	bl      Function_222fc00
	mov     r4, r0
	ldr     r0, [r5, #0x10]
	mov     r1, r6
	bl      Function_223d6d0
	mov     r2, #0x0
	mov     r1, r4
	mov     r3, r2
	bl      Function_20146f4
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2231ba8

.thumb
Function_2231ba8: @ 2231ba8 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x8] @ 0x2231bb4, (=0x2231bb9)
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2231bb4

.word Function_2231bb8+1 @ =0x2231bb9, 0x2231bb4
.thumb
Function_2231bb8: @ 2231bb8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	ldr     r0, [r0, #0x10]
	bl      Function_223d6e4
	cmp     r0, #0x1
	bne     branch_2231bd0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2231bd0

.thumb
branch_2231bd0: @ 2231bd0 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2231bd4

.thumb
Function_2231bd4: @ 2231bd4 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r5, r0
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	add     r5, #0xa4
	cmp     r0, #0x0
	beq     branch_2231bf6
	bl      ErrorHandling
	ldr     r0, [r5, #0x0]
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_2231bf6: @ 2231bf6 :thumb
	mov     r0, r4
	bl      Function_222fc00
	mov     r6, r0
	mov     r0, r4
	bl      Function_222fc00
	mov     r7, r0
	mov     r0, r4
	bl      Function_222fc00
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      Function_222fc00
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0xc
	blx     MI_CpuFill8
	strh    r6, [r5, #0x4]
	ldr     r0, [sp, #0x0]
	strh    r7, [r5, #0x6]
	strb    r0, [r5, #0x9]
	ldr     r0, [pc, #0x10] @ 0x2231c3c, (=0x223319d)
	ldr     r2, [pc, #0x14] @ 0x2231c40, (=0x11170)
	mov     r1, r5
	strb    r4, [r5, #0xa]
	bl      AddTaskToTaskList1
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2231c3a


.align 2


.word Function_223319c+1 @ =0x223319d, 0x2231c3c
.word 0x11170 @ 0x2231c40
.thumb
Function_2231c44: @ 2231c44 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x8] @ 0x2231c50, (=0x2231c55)
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2231c50

.word Function_2231c54+1 @ =0x2231c55, 0x2231c50
.thumb
Function_2231c54: @ 2231c54 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2231c6a
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2231c6a

.thumb
branch_2231c6a: @ 2231c6a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2231c6e


.align 2, 0


.thumb
Function_2231c70: @ 2231c70 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	mov     r4, r0
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	add     r4, #0xb0
	cmp     r0, #0x0
	beq     branch_2231c92
	bl      ErrorHandling
	ldr     r0, [r4, #0x0]
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_2231c92: @ 2231c92 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0xc
	blx     MI_CpuFill8
	mov     r0, r5
	bl      Function_222fc00
	strb    r0, [r4, #0x4]
	mov     r0, r5
	bl      Function_222fc00
	strb    r0, [r4, #0x5]
	mov     r0, r5
	bl      Function_222fc00
	strb    r0, [r4, #0x6]
	mov     r0, r5
	bl      Function_222fc00
	strb    r0, [r4, #0x7]
	mov     r0, r5
	bl      Function_222fc00
	strh    r0, [r4, #0x8]
	mov     r0, r5
	bl      Function_222fc00
	strb    r0, [r4, #0xa]
	mov     r2, #0x4b
	ldr     r0, [pc, #0x10] @ 0x2231ce0, (=0x22331e9)
	mov     r1, r4
	lsl     r2, r2, #2
	bl      AddTaskToTaskList1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2231cde


.align 2


.word Function_22331e8+1 @ =0x22331e9, 0x2231ce0
.thumb
Function_2231ce4: @ 2231ce4 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x8] @ 0x2231cf0, (=0x2231cf5)
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2231cf0

.word Function_2231cf4+1 @ =0x2231cf5, 0x2231cf0
.thumb
Function_2231cf4: @ 2231cf4 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2231d0a
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2231d0a

.thumb
branch_2231d0a: @ 2231d0a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2231d0e


.align 2, 0


.thumb
Function_2231d10: @ 2231d10 :thumb
	push    {r3,lr}
	bl      Function_222ea48
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2231d1a


.align 2, 0


.thumb
Function_2231d1c: @ 2231d1c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      Function_222e924
	mov     r7, r0
	mov     r0, r5
	bl      Function_222fc00
	str     r0, [sp, #0x18]
	mov     r0, r5
	bl      Function_222fc00
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r6, r0
	mov     r0, r5
	bl      Function_222ea48
	str     r0, [sp, #0x1c]
	mov     r0, r5
	bl      Function_222ea48
	mov     r0, r5
	bl      Function_222ea48
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      LoadPokePartyAdress
	ldr     r1, [sp, #0x18]
	bl      GetAdrOfPkmnInParty
	str     r4, [sp, #0x0]
	mov     r1, r0
	str     r6, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	str     r2, [sp, #0xc]
	mov     r0, #0x8
	str     r0, [sp, #0x10]
	str     r2, [sp, #0x14]
	ldr     r3, [sp, #0x1c]
	mov     r0, r7
	mov     r2, #0xb
	bl      Function_2232ce0
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2231d8c

.thumb
Function_2231d8c: @ 2231d8c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      Function_222e924
	mov     r4, r0
	mov     r0, r5
	bl      Function_222ea48
	mov     r1, r0
	mov     r0, r4
	bl      Function_2232e80
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2231daa


.align 2, 0


.thumb
Function_2231dac: @ 2231dac :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      Function_222e924
	mov     r4, r0
	mov     r0, r5
	bl      Function_222ea48
	add     r1, sp, #0x10
	mov     r6, r0
	mov     r0, r4
	add     r1, #0x2
	add     r2, sp, #0x10
	bl      Function_223d554
	ldr     r0, [r4, #0x4]
	add     r1, sp, #0x10
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x78
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	ldsh    r0, [r1, r0]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	ldsh    r0, [r1, r0]
	str     r0, [sp, #0xc]
	ldr     r1, [r4, #0x0]
	ldr     r2, [r4, #0x34]
	ldr     r3, [r4, #0x38]
	mov     r0, r6
	bl      Function_223dc7c
	ldr     r1, [pc, #0x18] @ 0x2231e0c, (=0x4b2)
	mov     r0, #0x5
	mov     r2, #0x1
	bl      Function_2004550
	ldr     r1, [pc, #0x10] @ 0x2231e10, (=0x2231e15)
	mov     r0, r5
	bl      Function_222e974
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x2231e0a


.align 2


.word 0x4b2 @ 0x2231e0c
.word Function_2231e14+1 @ =0x2231e15, 0x2231e10
.thumb
Function_2231e14: @ 2231e14 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b974
	add     r4, #0x78
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_2231e2c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2231e2c

.thumb
branch_2231e2c: @ 2231e2c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2231e30

.thumb
Function_2231e30: @ 2231e30 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222ea48
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      LoadVariableAreaAdress_14
	mov     r1, r4
	bl      Function_202cf28
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2231e52


.align 2, 0


.thumb
Function_2231e54: @ 2231e54 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_222ea48
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      LoadVariableAreaAdress_14
	mov     r1, r4
	mov     r2, r6
	bl      Function_202cf70
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2231e80

.thumb
Function_2231e80: @ 2231e80 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222ea48
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      LoadVariableAreaAdress_14
	mov     r1, r4
	bl      Function_202cfec
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2231ea2


.align 2, 0


.thumb
Function_2231ea4: @ 2231ea4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fbe4
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      Function_205e6d8
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2231ec2


.align 2, 0
.thumb
Function_2231ec4: @ 2231ec4 :thumb
	push    {r4,lr}
	bl      Function_222fbe4
	mov     r4, r0
	bl      Function_202fac0
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2231ed6


.align 2, 0
.thumb
Function_2231ed8: @ 2231ed8 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      LoadVariableAreaAdress_1d
	mov     r4, r0
	bl      Function_4_21d2388
	mov     r1, r0
	mov     r0, r4
	bl      Function_202b13c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2231efa


.align 2, 0
.thumb
Function_2231efc: @ 2231efc :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      Function_202440c
	mov     r5, r0
	mov     r0, r4
	bl      Function_222fc00
	mov     r4, r0
	bl      Function_203608c
	mov     r1, #0x1
	sub     r0, r1, r0
	bl      Function_2032ee8
	lsl     r1, r4, #24
	mov     r2, r0
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_206d088
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2231f34

.thumb
Function_2231f34: @ 2231f34 :thumb
	push    {r3,lr}
	bl      Function_222fc00
	bl      Function_203632c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2231f42


.align 2, 0


.thumb
Function_2231f44: @ 2231f44 :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x1c]
	ldr     r3, [r0, #0x0]
	add     r1, r2, #0x1
	str     r1, [r0, #0x1c]
	ldrb    r1, [r2, #0x0]
	ldr     r0, [r3, #0x60]
	bl      Function_223327c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2231f5a


.align 2, 0


.thumb
Function_2231f5c: @ 2231f5c :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x1c]
	ldr     r3, [r0, #0x0]
	add     r1, r2, #0x1
	str     r1, [r0, #0x1c]
	ldrb    r1, [r2, #0x0]
	ldr     r0, [r3, #0x60]
	bl      Function_2233298
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2231f72


.align 2, 0


.thumb
Function_2231f74: @ 2231f74 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x4]
	ldr     r4, [sp, #0x20]
	bl      Function_2231fc4
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2232034
	cmp     r4, #0x0
	bne     branch_2231fae
	mov     r0, r5
	bl      Function_222e924
	ldr     r0, [r0, #0x8]
	bl      Function_209b970
	ldr     r0, [r0, #0x4]
	bl      Function_2027ac0
	mov     r2, r0
	mov     r0, #0x0
	mov     r1, #0x1
	b       branch_2231fb4
@ 0x2231fae

.thumb
branch_2231fae: @ 2231fae :thumb
	ldrb    r2, [r4, #0x0]
	ldrb    r0, [r4, #0x1]
	ldrb    r1, [r4, #0x2]
.thumb
branch_2231fb4: @ 2231fb4 :thumb
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x4]
	mov     r0, r5
	bl      Function_2232050
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2231fc2


.align 2, 0


.thumb
Function_2231fc4: @ 2231fc4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	bl      Function_222e924
	mov     r1, r4
	add     r1, #0x5a
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_223201c
	mov     r1, #0x13
	str     r1, [sp, #0x0]
	mov     r1, #0x1b
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	mov     r1, #0xd
	str     r1, [sp, #0xc]
	ldr     r1, [pc, #0x40] @ 0x223202c, (=0x36d)
	mov     r2, #0x1
	str     r1, [sp, #0x10]
	mov     r1, r4
	ldr     r0, [r0, #0x0]
	add     r1, #0x64
	mov     r3, #0x2
	bl      Function_201a7e8
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	ldr     r2, [pc, #0x28] @ 0x2232030, (=0x3e2)
	add     r0, #0x64
	mov     r1, #0x0
	mov     r3, #0xb
	bl      Function_200e060
	mov     r0, #0x1
	add     r4, #0x5a
	add     sp, #0x14
	strb    r0, [r4, #0x0]
	pop     {r3,r4,pc}
@ 0x223201c

.thumb
branch_223201c: @ 223201c :thumb
	add     r4, #0x64
	mov     r0, r4
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x223202a


.align 2


.word 0x36d @ 0x223202c
.word 0x3e2 @ 0x2232030
.thumb
Function_2232034: @ 2232034 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, r2
	ldr     r2, [r4, #0x4c]
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r4, #0x44]
	ldr     r1, [r4, #0x48]
	ldr     r2, [r4, #0x4c]
	bl      Function_200c388
	pop     {r4,pc}
@ 0x223204e


.align 2, 0


.thumb
Function_2232050: @ 2232050 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, r3
	mov     r6, r1
	mov     r4, r2
	bl      Function_2002ac8
	ldr     r0, [sp, #0x20]
	bl      Function_2002ae4
	mov     r0, #0x0
	bl      Function_2002b20
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r4, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r5
	ldr     r2, [r5, #0x48]
	add     r0, #0x64
	mov     r1, r6
	bl      Function_201d738_CallInitTextInterpreter
	add     r5, #0x50
	strb    r0, [r5, #0x0]
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2232088

.thumb
Function_2232088: @ 2232088 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x5a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	beq     branch_2232098
	bl      ErrorHandling
.thumb
branch_2232098: @ 2232098 :thumb
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, r4
	add     r0, #0x64
	bl      Function_201a8fc
	mov     r0, #0x0
	add     r4, #0x5a
	strb    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x22320b2


.align 2, 0


.thumb
Function_22320b4: @ 22320b4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_2231fc4
	add     r3, sp, #0x8
	ldrh    r0, [r3, #0x14]
	mov     r1, r6
	mov     r2, r7
	str     r0, [sp, #0x0]
	ldrh    r3, [r3, #0x10]
	ldr     r0, [r5, #0x48]
	bl      Function_22320fc
	add     r0, sp, #0x8
	ldrb    r3, [r0, #0x18]
	cmp     r3, #0xff
	beq     branch_22320ec
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r4
	bl      Function_2232050
	pop     {r3-r7,pc}
@ 0x22320ec

.thumb
branch_22320ec: @ 22320ec :thumb
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, #0x1
	str     r2, [sp, #0x0]
	bl      Function_2232050
	pop     {r3-r7,pc}
@ 0x22320fa


.align 2, 0


.thumb
Function_22320fc: @ 22320fc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	add     r0, sp, #0x0
	mov     r7, r3
	bl      Function_2014a84
	add     r0, sp, #0x0
	mov     r1, r4
	mov     r2, r6
	bl      Function_2014ce0
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, r7
	bl      Function_2014cf8
	add     r2, sp, #0x10
	ldrh    r2, [r2, #0x10]
	add     r0, sp, #0x0
	mov     r1, #0x1
	bl      Function_2014cf8
	add     r0, sp, #0x0
	mov     r1, #0x20
	bl      Function_2014b34
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2023810
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223214a


.align 2, 0


.thumb
Function_223214c: @ 223214c :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	ldr     r1, [sp, #0x28]
	mov     r7, r0
	mov     r4, r2
	mov     r5, r3
	cmp     r1, #0x0
	bne     branch_223217a
	ldr     r2, [pc, #0xf0] @ 0x2232250, (=0x169)
	ldr     r3, [r7, #0x34]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      LoadFromNARC_9
	mov     r1, r6
	add     r1, #0x8c
	str     r0, [r1, #0x0]
	mov     r0, r6
	add     r0, #0x97
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x2
	orr     r1, r0
	b       branch_223218a
@ 0x223217a

.thumb
branch_223217a: @ 223217a :thumb
	mov     r0, r6
	add     r0, #0x8c
	str     r1, [r0, #0x0]
	mov     r0, r6
	add     r0, #0x97
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x2
	bic     r1, r0
.thumb
branch_223218a: @ 223218a :thumb
	mov     r0, r6
	add     r0, #0x97
	strb    r1, [r0, #0x0]
	mov     r0, r6
	ldr     r1, [sp, #0x24]
	add     r0, #0x90
	str     r1, [r0, #0x0]
	mov     r0, r6
	ldr     r1, [sp, #0x20]
	str     r7, [r6, #0x0]
	add     r0, #0xa0
	str     r1, [r0, #0x0]
	mov     r1, r6
	add     r1, #0xa0
	ldr     r1, [r1, #0x0]
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	mov     r1, r6
	add     r1, #0x97
	ldrb    r3, [r1, #0x0]
	mov     r1, #0x1
	bic     r3, r1
	add     r1, sp, #0x8
	ldrb    r2, [r1, #0x14]
	mov     r1, #0x1
	and     r1, r2
	mov     r2, r3
	orr     r2, r1
	mov     r1, r6
	add     r1, #0x97
	strb    r2, [r1, #0x0]
	add     r1, sp, #0x8
	mov     r2, r6
	ldrb    r1, [r1, #0x10]
	add     r2, #0x96
	mov     r3, #0x3
	strb    r1, [r2, #0x0]
	mov     r2, r6
	add     r2, #0x98
	strb    r4, [r2, #0x0]
	mov     r2, r6
	add     r2, #0x99
	strb    r5, [r2, #0x0]
	mov     r2, r6
	add     r2, #0x9b
	strb    r0, [r2, #0x0]
	mov     r2, r7
	add     r2, #0x64
	str     r2, [r6, #0x18]
	mov     r2, r6
	add     r2, #0x94
	strb    r3, [r2, #0x0]
	mov     r2, #0xb5
	lsl     r2, r2, #2
	strh    r1, [r6, r2]
	mov     r3, r6
	mov     r2, r0
.thumb
branch_22321fc: @ 22321fc :thumb
	mov     r1, r3
	add     r1, #0xb4
	str     r2, [r1, #0x0]
	mov     r1, r3
	add     r1, #0xb8
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r3, #0x8
	str     r2, [r1, #0x0]
	cmp     r0, #0x1c
	blt     branch_22321fc
	mov     r0, r6
	mov     r1, r6
	mov     r5, #0x0
	mov     r4, #0xff
.thumb
branch_2232218: @ 2232218 :thumb
	mov     r3, #0x6f
	lsl     r3, r3, #2
	str     r5, [r0, r3]
	.hword  0x1d1b @ add r3, r3, #0x4
	str     r5, [r0, r3]
	mov     r3, #0xa7
	lsl     r3, r3, #2
	strh    r4, [r1, r3]
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0x8
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r2, #0x1c
	blt     branch_2232218
	mov     r4, r6
.thumb
branch_2232234: @ 2232234 :thumb
	ldr     r1, [r7, #0x34]
	mov     r0, #0x50
	bl      Function_2023790
	str     r0, [r4, #0x1c]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x1c
	blt     branch_2232234
	add     r6, #0xa0
	ldr     r1, [pc, #0x8] @ 0x2232254, (=0xeeee)
	ldr     r0, [r6, #0x0]
	strh    r1, [r0, #0x0]
	pop     {r3-r7,pc}
@ 0x2232250

.word 0x169 @ 0x2232250
.word 0xeeee @ 0x2232254
.thumb
Function_2232258: @ 2232258 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	str     r2, [sp, #0x14]
	mov     r7, r1
	mov     r1, #0xb6
	ldr     r0, [r5, #0x34]
	lsl     r1, r1, #2
	mov     r4, r3
	bl      malloc
	mov     r6, r0
	bne     branch_2232278
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2232278

.thumb
branch_2232278: @ 2232278 :thumb
	mov     r2, #0xb6
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     Call_FillMemWithValue
	str     r4, [sp, #0x0]
	add     r0, sp, #0x20
	ldrb    r0, [r0, #0x10]
	mov     r1, r6
	mov     r2, r7
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x34]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x38]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x3c]
	str     r0, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	mov     r0, r5
	bl      Function_223214c
	mov     r0, r6
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22322a8

.thumb
Function_22322a8: @ 22322a8 :thumb
	push    {r3,lr}
	bl      Function_2232390
	pop     {r3,pc}
@ 0x22322b0

.thumb
Function_22322b0: @ 22322b0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      Function_222e924
	mov     r4, r0
	mov     r0, r5
	bl      Function_2232414
	mov     r1, #0x7
	tst     r1, r0
	bne     branch_22322ce
	lsr     r0, r0, #3
	b       branch_22322d2
@ 0x22322ce

.thumb
branch_22322ce: @ 22322ce :thumb
	lsr     r0, r0, #3
	.hword  0x1c40 @ add r0, r0, #0x1
.thumb
branch_22322d2: @ 22322d2 :thumb
	mov     r1, r5
	add     r1, #0x97
	ldrb    r1, [r1, #0x0]
	lsl     r1, r1, #25
	lsr     r1, r1, #31
	beq     branch_22322ec
	mov     r1, r5
	add     r1, #0x98
	ldrb    r1, [r1, #0x0]
	sub     r2, r1, r0
	mov     r1, r5
	add     r1, #0x98
	strb    r2, [r1, #0x0]
.thumb
branch_22322ec: @ 22322ec :thumb
	mov     r1, r5
	add     r1, #0x97
	ldrb    r1, [r1, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #31
	beq     branch_223230e
	mov     r1, r5
	add     r1, #0x99
	ldrb    r2, [r1, #0x0]
	mov     r1, r5
	add     r1, #0x9b
	ldrb    r1, [r1, #0x0]
	lsl     r1, r1, #1
	sub     r2, r2, r1
	mov     r1, r5
	add     r1, #0x99
	strb    r2, [r1, #0x0]
.thumb
branch_223230e: @ 223230e :thumb
	mov     r1, r5
	add     r1, #0x99
	ldrb    r1, [r1, #0x0]
	lsl     r0, r0, #24
	mov     r3, r5
	str     r1, [sp, #0x0]
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x9b
	ldrb    r0, [r0, #0x0]
	mov     r1, r5
	mov     r2, #0x1
	lsl     r0, r0, #25
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	add     r3, #0x98
	ldrb    r3, [r3, #0x0]
	ldr     r0, [r4, #0x0]
	add     r1, #0x8
	bl      Function_201a7e8
	mov     r0, r5
	ldr     r2, [pc, #0x44] @ 0x2232388, (=0x3d9)
	add     r0, #0x8
	mov     r1, #0x1
	mov     r3, #0xc
	bl      Function_200dc48
	mov     r0, r5
	bl      Function_2232454
	ldr     r2, [r5, #0x0]
	mov     r1, r5
	add     r1, #0x96
	ldr     r2, [r2, #0x34]
	mov     r0, r5
	lsl     r2, r2, #24
	ldrb    r1, [r1, #0x0]
	add     r0, #0xa4
	lsr     r2, r2, #24
	bl      Function_2001b9c
	mov     r1, r5
	add     r1, #0xb0
	str     r0, [r1, #0x0]
	mov     r0, r5
	bl      Function_22325d8
	ldr     r0, [pc, #0x14] @ 0x223238c, (=0x22324c9)
	mov     r1, r5
	mov     r2, #0x0
	bl      AddTaskToTaskList1
	str     r0, [r5, #0x4]
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2232386


.align 2


.word 0x3d9 @ 0x2232388
.word Function_22324c8+1 @ =0x22324c9, 0x223238c
.thumb
Function_2232390: @ 2232390 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r1, [sp, #0x0]
	ldr     r1, [r5, #0x0]
	mov     r0, #0x50
	ldr     r1, [r1, #0x34]
	mov     r6, r2
	mov     r7, r3
	bl      Function_2023790
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x0]
	mov     r2, r4
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r1, r5
	add     r1, #0x9b
	ldrb    r1, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x90
	lsl     r1, r1, #2
	add     r1, r5, r1
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x1c]
	mov     r2, r4
	bl      Function_200c388
	mov     r0, r5
	add     r0, #0x9b
	ldrb    r1, [r0, #0x0]
	lsl     r0, r1, #2
	add     r0, r5, r0
	lsl     r1, r1, #3
	add     r1, r5, r1
	ldr     r0, [r0, #0x1c]
	add     r1, #0xb4
	str     r0, [r1, #0x0]
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, r5
	add     r0, #0x9b
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #1
	add     r1, r5, r0
	mov     r0, #0xa7
	lsl     r0, r0, #2
	strh    r6, [r1, r0]
	mov     r0, r5
	add     r0, #0x9b
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #3
	add     r0, r5, r0
	add     r0, #0xb8
	str     r7, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x9b
	ldrb    r0, [r0, #0x0]
	add     r5, #0x9b
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x2232412


.align 2, 0


.thumb
Function_2232414: @ 2232414 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	add     r0, #0x9b
	ldrb    r0, [r0, #0x0]
	mov     r6, #0x0
	mov     r4, r6
	cmp     r0, #0x0
	ble     branch_223244c
	mov     r5, r7
.thumb
branch_2232426: @ 2232426 :thumb
	mov     r0, r5
	add     r0, #0xb4
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_223244c
	mov     r0, #0x0
	mov     r2, r0
	bl      Function_2002d7c
	cmp     r6, r0
	bcs     branch_223243e
	mov     r6, r0
.thumb
branch_223243e: @ 223243e :thumb
	mov     r0, r7
	add     r0, #0x9b
	ldrb    r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r4, r0
	blt     branch_2232426
.thumb
branch_223244c: @ 223244c :thumb
	add     r6, #0xc
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x2232452


.align 2, 0


.thumb
Function_2232454: @ 2232454 :thumb
	mov     r2, r0
	mov     r1, r0
	add     r2, #0xb4
	add     r1, #0xa4
	str     r2, [r1, #0x0]
	mov     r2, r0
	mov     r1, r0
	add     r2, #0x8
	add     r1, #0xa8
	str     r2, [r1, #0x0]
	mov     r1, r0
	mov     r2, #0x0
	add     r1, #0xac
	strb    r2, [r1, #0x0]
	mov     r1, r0
	mov     r2, #0x1
	add     r1, #0xad
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x9b
	ldrb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xae
	strb    r2, [r1, #0x0]
	mov     r2, r0
	add     r2, #0xaf
	ldrb    r3, [r2, #0x0]
	mov     r2, #0xf
	mov     r1, r0
	bic     r3, r2
	mov     r2, r0
	add     r2, #0xaf
	strb    r3, [r2, #0x0]
	mov     r2, r0
	add     r2, #0xaf
	ldrb    r3, [r2, #0x0]
	mov     r2, #0x30
	add     r1, #0xaf
	bic     r3, r2
	mov     r2, r0
	add     r2, #0xaf
	strb    r3, [r2, #0x0]
	add     r0, #0x9b
	ldrb    r0, [r0, #0x0]
	ldrb    r2, [r1, #0x0]
	cmp     r0, #0x4
	bcc     branch_22324be
	mov     r0, #0xc0
	bic     r2, r0
	mov     r0, #0x40
	orr     r0, r2
	strb    r0, [r1, #0x0]
	bx      lr
@ 0x22324be

.thumb
branch_22324be: @ 22324be :thumb
	mov     r0, #0xc0
	bic     r2, r0
	strb    r2, [r1, #0x0]
	bx      lr
@ 0x22324c6


.align 2, 0


.thumb
Function_22324c8: @ 22324c8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22324e4
	mov     r0, r5
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	add     r5, #0x94
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x22324e4

.thumb
branch_22324e4: @ 22324e4 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_2232562
	mov     r0, r5
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	bl      Function_2001be0
	mov     r4, r0
	ldr     r0, [pc, #0x68] @ 0x2232564, (=0x21bf67c)
	mov     r1, #0x40
	ldr     r0, [r0, #0x4c]
	tst     r1, r0
	bne     branch_2232514
	mov     r1, #0x80
	tst     r1, r0
	bne     branch_2232514
	mov     r1, #0x20
	tst     r1, r0
	bne     branch_2232514
	mov     r1, #0x10
	tst     r0, r1
	beq     branch_223251a
.thumb
branch_2232514: @ 2232514 :thumb
	mov     r0, r5
	bl      Function_22325d8
.thumb
branch_223251a: @ 223251a :thumb
	mov     r0, r5
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0x44] @ 0x2232568, (=0xeedd)
	ldrh    r2, [r0, #0x0]
	cmp     r2, r1
	bne     branch_2232530
	mov     r0, r5
	bl      Function_2232570
	pop     {r3-r5,pc}
@ 0x2232530

.thumb
branch_2232530: @ 2232530 :thumb
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r4, r1
	beq     branch_2232540
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r4, r1
	beq     branch_2232562
	b       branch_223255a
@ 0x2232540

.thumb
branch_2232540: @ 2232540 :thumb
	mov     r1, r5
	add     r1, #0x97
	ldrb    r1, [r1, #0x0]
	lsl     r1, r1, #31
	lsr     r1, r1, #31
	cmp     r1, #0x1
	bne     branch_2232562
	ldr     r1, [pc, #0x1c] @ 0x223256c, (=0xfffe)
	strh    r1, [r0, #0x0]
	mov     r0, r5
	bl      Function_2232570
	pop     {r3-r5,pc}
@ 0x223255a

.thumb
branch_223255a: @ 223255a :thumb
	strh    r4, [r0, #0x0]
	mov     r0, r5
	bl      Function_2232570
.thumb
branch_2232562: @ 2232562 :thumb
	pop     {r3-r5,pc}
@ 0x2232564

.word 0x21bf67c @ 0x2232564
.word 0xeedd @ 0x2232568
.word 0xfffe @ 0x223256c
.thumb
Function_2232570: @ 2232570 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x5c] @ 0x22325d4, (=0x5dc)
	bl      Function_2005748
	mov     r0, r6
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, r6
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, r6
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	bl      Function_201a8fc
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_22325a0: @ 22325a0 :thumb
	ldr     r0, [r5, #0x1c]
	bl      Function_20237bc_FreeMsg
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x1c
	blt     branch_22325a0
	mov     r0, r6
	add     r0, #0x97
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_22325c6
	mov     r0, r6
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	bl      Function_200b190
.thumb
branch_22325c6: @ 22325c6 :thumb
	ldr     r0, [r6, #0x4]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r6
	bl      free
	pop     {r4-r6,pc}
@ 0x22325d4

.word 0x5dc @ 0x22325d4
.thumb
Function_22325d8: @ 22325d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	bl      Function_2001dc4
	lsl     r0, r0, #1
	add     r1, r4, r0
	mov     r0, #0xa7
	lsl     r0, r0, #2
	ldrh    r1, [r1, r0]
	cmp     r1, #0xff
	beq     branch_22325fa
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2232ac4
.thumb
branch_22325fa: @ 22325fa :thumb
	pop     {r4,pc}
@ 0x22325fc

.thumb
Function_22325fc: @ 22325fc :thumb
	push    {r4,lr}
	add     sp, #-0x10
	add     r4, sp, #0x8
	ldrb    r4, [r4, #0x10]
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x1c]
	str     r4, [sp, #0x4]
	ldr     r4, [sp, #0x20]
	str     r4, [sp, #0x8]
	ldr     r4, [sp, #0x24]
	str     r4, [sp, #0xc]
	bl      Function_2232258
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223261a


.align 2, 0


.thumb
Function_223261c: @ 223261c :thumb
	push    {r3,lr}
	bl      Function_2232750
	pop     {r3,pc}
@ 0x2232624

.thumb
Function_2232624: @ 2232624 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      Function_222e924
	mov     r4, r0
	mov     r0, r5
	bl      Function_22327f0
	mov     r1, #0x7
	tst     r1, r0
	bne     branch_2232642
	lsr     r1, r0, #3
	b       branch_2232646
@ 0x2232642

.thumb
branch_2232642: @ 2232642 :thumb
	lsr     r0, r0, #3
	add     r1, r0, #0x1
.thumb
branch_2232646: @ 2232646 :thumb
	mov     r0, r5
	add     r0, #0x97
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #25
	lsr     r0, r0, #31
	beq     branch_2232660
	mov     r0, r5
	add     r0, #0x98
	ldrb    r0, [r0, #0x0]
	sub     r2, r0, r1
	mov     r0, r5
	add     r0, #0x98
	strb    r2, [r0, #0x0]
.thumb
branch_2232660: @ 2232660 :thumb
	mov     r0, r5
	add     r0, #0x9b
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x8
	bls     branch_22326b0
	mov     r0, r5
	add     r0, #0x97
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #31
	beq     branch_2232684
	mov     r0, r5
	add     r0, #0x99
	ldrb    r2, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x99
	sub     r2, #0x10
	strb    r2, [r0, #0x0]
.thumb
branch_2232684: @ 2232684 :thumb
	mov     r0, r5
	add     r0, #0x99
	ldrb    r0, [r0, #0x0]
	mov     r3, r5
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	mov     r0, #0x10
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	add     r3, #0x98
	mov     r1, r5
	ldrb    r3, [r3, #0x0]
	ldr     r0, [r4, #0x0]
	add     r1, #0x8
	bl      Function_201a7e8
	b       branch_22326fe
@ 0x22326b0

.thumb
branch_22326b0: @ 22326b0 :thumb
	mov     r2, r5
	add     r2, #0x97
	ldrb    r2, [r2, #0x0]
	lsl     r2, r2, #24
	lsr     r2, r2, #31
	beq     branch_22326cc
	mov     r2, r5
	add     r2, #0x99
	ldrb    r2, [r2, #0x0]
	lsl     r0, r0, #1
	sub     r2, r2, r0
	mov     r0, r5
	add     r0, #0x99
	strb    r2, [r0, #0x0]
.thumb
branch_22326cc: @ 22326cc :thumb
	mov     r0, r5
	add     r0, #0x99
	ldrb    r0, [r0, #0x0]
	mov     r3, r5
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x9b
	ldrb    r0, [r0, #0x0]
	mov     r1, r5
	add     r3, #0x98
	lsl     r0, r0, #25
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x10]
	ldrb    r3, [r3, #0x0]
	ldr     r0, [r4, #0x0]
	add     r1, #0x8
	bl      Function_201a7e8
.thumb
branch_22326fe: @ 22326fe :thumb
	mov     r0, r5
	ldr     r2, [pc, #0x44] @ 0x2232748, (=0x3d9)
	add     r0, #0x8
	mov     r1, #0x1
	mov     r3, #0xc
	bl      Function_200dc48
	mov     r0, r5
	bl      Function_2232830
	ldr     r3, [r5, #0x0]
	mov     r2, r5
	add     r2, #0x96
	ldr     r3, [r3, #0x34]
	mov     r0, #0x65
	lsl     r0, r0, #2
	lsl     r3, r3, #24
	ldrb    r2, [r2, #0x0]
	add     r0, r5, r0
	mov     r1, #0x0
	lsr     r3, r3, #24
	bl      Function_200112c
	mov     r1, #0x6d
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_2232b2c
	ldr     r0, [pc, #0x10] @ 0x223274c, (=0x223296d)
	mov     r1, r5
	mov     r2, #0x0
	bl      AddTaskToTaskList1
	str     r0, [r5, #0x4]
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2232748

.word 0x3d9 @ 0x2232748
.word Function_223296c+1 @ =0x223296d, 0x223274c
.thumb
Function_2232750: @ 2232750 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	str     r1, [sp, #0x0]
	ldr     r1, [r5, #0x0]
	mov     r0, #0x50
	ldr     r1, [r1, #0x34]
	mov     r7, r2
	mov     r4, r3
	bl      Function_2023790
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x0]
	mov     r2, r6
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r1, r5
	add     r1, #0x9b
	ldrb    r1, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x90
	lsl     r1, r1, #2
	add     r1, r5, r1
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x1c]
	mov     r2, r6
	bl      Function_200c388
	mov     r0, r5
	add     r0, #0x9b
	ldrb    r1, [r0, #0x0]
	lsl     r0, r1, #2
	add     r0, r5, r0
	lsl     r1, r1, #3
	add     r2, r5, r1
	mov     r1, #0x6f
	ldr     r0, [r0, #0x1c]
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	cmp     r4, #0xfa
	bne     branch_22327c2
	mov     r0, r5
	add     r0, #0x9b
	ldrb    r0, [r0, #0x0]
	mov     r2, #0x2
	mvn     r2, r2
	lsl     r0, r0, #3
	add     r1, r5, r0
	mov     r0, #0x7
	lsl     r0, r0, #6
	str     r2, [r1, r0]
	b       branch_22327d2
@ 0x22327c2

.thumb
branch_22327c2: @ 22327c2 :thumb
	mov     r0, r5
	add     r0, #0x9b
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #3
	add     r1, r5, r0
	mov     r0, #0x7
	lsl     r0, r0, #6
	str     r4, [r1, r0]
.thumb
branch_22327d2: @ 22327d2 :thumb
	mov     r0, r5
	add     r0, #0x9b
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #1
	add     r1, r5, r0
	mov     r0, #0xa7
	lsl     r0, r0, #2
	strh    r7, [r1, r0]
	mov     r0, r5
	add     r0, #0x9b
	ldrb    r0, [r0, #0x0]
	add     r5, #0x9b
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x22327f0

.thumb
Function_22327f0: @ 22327f0 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	add     r0, #0x9b
	ldrb    r0, [r0, #0x0]
	mov     r6, #0x0
	mov     r4, r6
	cmp     r0, #0x0
	ble     branch_2232828
	mov     r5, r7
.thumb
branch_2232802: @ 2232802 :thumb
	mov     r0, #0x6f
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	cmp     r1, #0x0
	beq     branch_2232828
	mov     r0, #0x0
	mov     r2, r0
	bl      Function_2002d7c
	cmp     r6, r0
	bcs     branch_223281a
	mov     r6, r0
.thumb
branch_223281a: @ 223281a :thumb
	mov     r0, r7
	add     r0, #0x9b
	ldrb    r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r4, r0
	blt     branch_2232802
.thumb
branch_2232828: @ 2232828 :thumb
	add     r6, #0xc
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x223282e


.align 2, 0


.thumb
Function_2232830: @ 2232830 :thumb
	push    {r4,r5}
	mov     r3, #0x6f
	lsl     r3, r3, #2
	mov     r1, r3
	add     r2, r0, r3
	sub     r1, #0x28
	str     r2, [r0, r1]
	mov     r1, r3
	ldr     r2, [pc, #0xe4] @ 0x2232928, (=0x2232961)
	sub     r1, #0x24
	str     r2, [r0, r1]
	mov     r1, r3
	ldr     r2, [pc, #0xe0] @ 0x223292c, (=0x223293d)
	sub     r1, #0x20
	str     r2, [r0, r1]
	mov     r2, r0
	mov     r1, r3
	add     r2, #0x8
	sub     r1, #0x1c
	str     r2, [r0, r1]
	mov     r1, r0
	add     r1, #0x9b
	ldrb    r2, [r1, #0x0]
	mov     r1, r3
	sub     r1, #0x18
	strh    r2, [r0, r1]
	mov     r1, r3
	mov     r2, #0x8
	sub     r1, #0x16
	strh    r2, [r0, r1]
	mov     r1, r3
	mov     r2, #0x1
	sub     r1, #0x14
	strb    r2, [r0, r1]
	mov     r1, r3
	mov     r4, #0xc
	sub     r1, #0x13
	strb    r4, [r0, r1]
	mov     r1, r3
	mov     r4, #0x2
	sub     r1, #0x12
	strb    r4, [r0, r1]
	mov     r1, r3
	sub     r1, #0x11
	ldrb    r4, [r0, r1]
	mov     r1, #0xf
	bic     r4, r1
	orr     r4, r2
	mov     r2, r3
	sub     r2, #0x11
	strb    r4, [r0, r2]
	mov     r2, r3
	sub     r2, #0x11
	ldrb    r5, [r0, r2]
	mov     r2, #0xf0
	mov     r4, #0x10
	bic     r5, r2
	orr     r5, r4
	mov     r4, r3
	sub     r4, #0x11
	strb    r5, [r0, r4]
	mov     r4, r3
	sub     r4, #0x10
	ldrb    r4, [r0, r4]
	bic     r4, r1
	mov     r1, #0xf
	orr     r4, r1
	mov     r1, r3
	sub     r1, #0x10
	strb    r4, [r0, r1]
	mov     r1, r3
	sub     r1, #0x10
	ldrb    r4, [r0, r1]
	mov     r1, #0x20
	bic     r4, r2
	mov     r2, r4
	orr     r2, r1
	mov     r1, r3
	sub     r1, #0x10
	strb    r2, [r0, r1]
	mov     r1, r3
	sub     r1, #0xe
	ldrh    r2, [r0, r1]
	mov     r1, #0x7
	bic     r2, r1
	mov     r1, r3
	sub     r1, #0xe
	strh    r2, [r0, r1]
	mov     r1, r3
	sub     r1, #0xe
	ldrh    r2, [r0, r1]
	mov     r1, #0x78
	bic     r2, r1
	mov     r1, r3
	sub     r1, #0xe
	strh    r2, [r0, r1]
	mov     r1, r3
	sub     r1, #0xe
	ldrh    r2, [r0, r1]
	ldr     r1, [pc, #0x38] @ 0x2232930, (=0xfffffe7f)
	and     r2, r1
	mov     r1, r3
	sub     r1, #0xe
	strh    r2, [r0, r1]
	mov     r1, r3
	sub     r1, #0xe
	ldrh    r2, [r0, r1]
	ldr     r1, [pc, #0x2c] @ 0x2232934, (=0xffff81ff)
	and     r2, r1
	mov     r1, r3
	sub     r1, #0xe
	strh    r2, [r0, r1]
	mov     r1, r3
	sub     r1, #0xe
	ldrh    r2, [r0, r1]
	ldr     r1, [pc, #0x20] @ 0x2232938, (=0xffff7fff)
	and     r2, r1
	mov     r1, r3
	sub     r1, #0xe
	strh    r2, [r0, r1]
	sub     r3, #0xc
	str     r0, [r0, r3]
	pop     {r4,r5}
	bx      lr
@ 0x2232928

.word Function_2232960+1 @ =0x2232961, 0x2232928
.word Function_223293c+1 @ =0x223293d, 0x223292c
.word 0xfffffe7f @ 0x2232930
.word 0xffff81ff @ 0x2232934
.word 0xffff7fff @ 0x2232938
.thumb
Function_223293c: @ 223293c :thumb
	push    {r3,lr}
	mov     r2, #0x2
	mvn     r2, r2
	cmp     r1, r2
	bne     branch_2232952
	mov     r1, #0x3
	mov     r2, #0xf
	mov     r3, #0x4
	bl      Function_200147c
	pop     {r3,pc}

branch_2232952: @ 2232952 :thumb
	mov     r1, #0x1
	mov     r2, #0xf
	mov     r3, #0x2
	bl      Function_200147c
	pop     {r3,pc}
@ 0x223295e


.align 2, 0
.thumb
Function_2232960: @ 2232960 :thumb
	ldr     r3, [pc, #0x4] @ 0x2232968, (=Function_2001504+1)
	mov     r1, #0x13
	bx      r3
@ 0x2232966

.align 2
.word Function_2001504+1 @ 0x2232968



.thumb
Function_223296c: @ 223296c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r0, r5
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2232988
	mov     r0, r5
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	add     r5, #0x94
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, #0x0]
	pop     {r4-r6,pc}

branch_2232988: @ 2232988 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_2232a46
	mov     r0, #0x6d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2001288
	mov     r4, r0
	mov     r0, #0x6d
	mov     r1, #0xb5
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldrh    r6, [r5, r1]
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	bl      Function_20014d0
	mov     r0, #0xb5
	lsl     r0, r0, #2
	ldrh    r0, [r5, r0]
	cmp     r6, r0
	beq     branch_22329be
	ldr     r0, [pc, #0x8c] @ 0x2232a48, (=0x5dc)
	bl      Function_2005748
branch_22329be: @ 22329be :thumb
	ldr     r0, [pc, #0x8c] @ 0x2232a4c, (=0x21bf67c)
	mov     r1, #0x40
	ldr     r0, [r0, #0x4c]
	tst     r1, r0
	bne     branch_22329da
	mov     r1, #0x80
	tst     r1, r0
	bne     branch_22329da
	mov     r1, #0x20
	tst     r1, r0
	bne     branch_22329da
	mov     r1, #0x10
	tst     r0, r1
	beq     branch_22329e0
branch_22329da: @ 22329da :thumb
	mov     r0, r5
	bl      Function_2232b2c
branch_22329e0: @ 22329e0 :thumb
	mov     r0, r5
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	ldrh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x64] @ 0x2232a50, (=0xeedd)
	cmp     r1, r0
	bne     branch_22329f8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2232a58
	pop     {r4-r6,pc}

branch_22329f8: @ 22329f8 :thumb
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_2232a08
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	beq     branch_2232a46
	b       branch_2232a30

branch_2232a08: @ 2232a08 :thumb
	mov     r0, r5
	add     r0, #0x97
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_2232a46
	ldr     r0, [pc, #0x30] @ 0x2232a48, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	add     r0, #0xa0
	ldr     r1, [pc, #0x30] @ 0x2232a54, (=0xfffe)
	ldr     r0, [r0, #0x0]
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2232a58
	pop     {r4-r6,pc}

branch_2232a30: @ 2232a30 :thumb
	ldr     r0, [pc, #0x14] @ 0x2232a48, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	strh    r4, [r0, #0x0]
	mov     r0, r5
	bl      Function_2232a58
branch_2232a46: @ 2232a46 :thumb
	pop     {r4-r6,pc}
@ 0x2232a48

.word 0x5dc @ 0x2232a48
.word 0x21bf67c @ 0x2232a4c
.word 0xeedd @ 0x2232a50
.word 0xfffe @ 0x2232a54



.thumb
Function_2232a58: @ 2232a58 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	cmp     r1, #0x1
	bne     branch_2232a66
	ldr     r0, [pc, #0x5c] @ 0x2232ac0, (=0x5dc)
	bl      Function_2005748
branch_2232a66: @ 2232a66 :thumb
	mov     r0, #0x6d
	lsl     r0, r0, #2
	mov     r1, #0x0
	ldr     r0, [r6, r0]
	mov     r2, r1
	bl      Function_2001384
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, r6
	add     r0, #0x8
	bl      Function_201a8fc
	mov     r4, #0x0
	mov     r5, r6
branch_2232a8c: @ 2232a8c :thumb
	ldr     r0, [r5, #0x1c]
	bl      Function_20237bc_FreeMsg
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x1c
	blt     branch_2232a8c
	mov     r0, r6
	add     r0, #0x97
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_2232ab2
	mov     r0, r6
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	bl      Function_200b190
branch_2232ab2: @ 2232ab2 :thumb
	ldr     r0, [r6, #0x4]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r6
	bl      free
	pop     {r4-r6,pc}
@ 0x2232ac0

.word 0x5dc @ 0x2232ac0



.thumb
Function_2232ac4: @ 2232ac4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	str     r1, [sp, #0xc]
	ldr     r1, [r5, #0x0]
	mov     r0, #0x50
	ldr     r1, [r1, #0x34]
	mov     r7, r2
	bl      Function_2023790
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	ldr     r1, [r1, #0x34]
	mov     r0, #0x50
	bl      Function_2023790
	mov     r6, r0
	ldr     r0, [r5, #0x18]
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0xc]
	mov     r2, r4
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r0, r5
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	mov     r1, r6
	mov     r2, r4
	bl      Function_200c388
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r7, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r0, [r5, #0x18]
	mov     r1, #0x1
	mov     r2, r6
	bl      Function_201d738_CallInitTextInterpreter
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2232b2c

.thumb
Function_2232b2c: @ 2232b2c :thumb
	push    {r4,lr}
	mov     r1, #0x6d
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	.hword  0x1d89 @ add r1, r1, #0x6
	add     r1, r4, r1
	bl      Function_20014d0
	ldr     r0, [pc, #0x18] @ 0x2232b58, (=0x1ba)
	ldrh    r1, [r4, r0]
	add     r0, #0xe2
	lsl     r1, r1, #1
	add     r1, r4, r1
	ldrh    r1, [r1, r0]
	cmp     r1, #0xff
	beq     branch_2232b56
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2232ac4
.thumb
branch_2232b56: @ 2232b56 :thumb
	pop     {r4,pc}
@ 0x2232b58

.word 0x1ba @ 0x2232b58
.thumb
Function_2232b5c: @ 2232b5c :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_2232b72
	mov     r1, r0
	add     r1, #0xa0
	ldr     r2, [pc, #0xc] @ 0x2232b74, (=0xfffe)
	ldr     r1, [r1, #0x0]
	strh    r2, [r1, #0x0]
	mov     r1, #0x0
	bl      Function_2232a58
.thumb
branch_2232b72: @ 2232b72 :thumb
	pop     {r3,pc}
@ 0x2232b74

.word 0xfffe @ 0x2232b74
.thumb
Function_2232b78: @ 2232b78 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r7, r0
	ldr     r0, [r5, #0xc]
	ldrh    r4, [r0, #0x0]
	ldrh    r6, [r0, #0x2]
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_2232b98
	cmp     r0, #0x1
	beq     branch_2232ba6
	cmp     r0, #0x2
	beq     branch_2232c4a
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2232b98

.thumb
branch_2232b98: @ 2232b98 :thumb
	ldr     r0, [pc, #0xdc] @ 0x2232c78, (=0xfd13)
	cmp     r4, r0
	bne     branch_2232ba6
	mov     r0, #0x2
	add     sp, #0x8
	strb    r0, [r5, #0x0]
	pop     {r3-r7,pc}

branch_2232ba6: @ 2232ba6 :thumb
	ldr     r0, [r5, #0x14]
	mov     r1, #0x5
	ldr     r0, [r0, #0x0]
	bl      Function_63_222bf90
	cmp     r0, #0x0
	bne     branch_2232c72
	cmp     r4, #0x20
	bcc     branch_2232bde
	cmp     r4, #0x26
	bhi     branch_2232bde
	mov     r0, #0x2
	ldsh    r1, [r5, r0]
	sub     r4, #0x20
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r5, #0x2]
	ldsh    r1, [r5, r0]
	ldr     r0, [pc, #0xb0] @ 0x2232c7c, (=0x223f9a4)
	ldrb    r0, [r0, r4]
	cmp     r1, r0
	blt     branch_2232c72
	mov     r0, #0x0
	strh    r0, [r5, #0x2]
	ldr     r0, [r5, #0xc]
	add     sp, #0x8
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0xc]
	pop     {r3-r7,pc}
@ 0x2232bde

.thumb
branch_2232bde: @ 2232bde :thumb
	cmp     r4, #0x27
	bcc     branch_2232c16
	cmp     r4, #0x29
	bcs     branch_2232c16
	cmp     r4, #0x27
	beq     branch_2232bf0
	cmp     r4, #0x28
	beq     branch_2232bfc
	b       branch_2232c08
@ 0x2232bf0

.thumb
branch_2232bf0: @ 2232bf0 :thumb
	ldr     r0, [r5, #0x14]
	mov     r1, #0x1
	ldr     r0, [r0, #0x4]
	bl      0x222d008
	b       branch_2232c0c
@ 0x2232bfc

.thumb
branch_2232bfc: @ 2232bfc :thumb
	ldr     r0, [r5, #0x14]
	mov     r1, #0x0
	ldr     r0, [r0, #0x4]
	bl      0x222d008
	b       branch_2232c0c
@ 0x2232c08

.thumb
branch_2232c08: @ 2232c08 :thumb
	bl      ErrorHandling
.thumb
branch_2232c0c: @ 2232c0c :thumb
	ldr     r0, [r5, #0xc]
	add     sp, #0x8
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0xc]
	pop     {r3-r7,pc}
@ 0x2232c16

.thumb
branch_2232c16: @ 2232c16 :thumb
	ldr     r1, [r5, #0x14]
	ldrh    r2, [r5, #0x4]
	ldr     r1, [r1, #0x0]
	add     r0, sp, #0x0
	mov     r3, r4
	bl      Function_2232c80
	ldr     r0, [r5, #0x10]
	add     r1, sp, #0x0
	bl      0x222d7c8
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
	ldrb    r0, [r5, #0x1]
	cmp     r0, r6
	blt     branch_2232c42
	mov     r0, #0x0
	strb    r0, [r5, #0x1]
	ldr     r0, [r5, #0xc]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r5, #0xc]
.thumb
branch_2232c42: @ 2232c42 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	strb    r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x2232c4a

.thumb
branch_2232c4a: @ 2232c4a :thumb
	ldr     r0, [r5, #0x14]
	mov     r1, #0x5
	ldr     r0, [r0, #0x0]
	bl      Function_63_222bf90
	cmp     r0, #0x0
	bne     branch_2232c72
	ldr     r1, [r5, #0x8]
	ldrb    r0, [r1, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r1, #0x0]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x0
	str     r1, [r0, #0x38]
	mov     r0, r5
	bl      free
	mov     r0, r7
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_2232c72: @ 2232c72 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2232c76


.align 2


.word 0xfd13 @ 0x2232c78
.word 0x223f9a4 @ 0x2232c7c
.thumb
Function_2232c80: @ 2232c80 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	strb    r2, [r4, #0x7]
	ldr     r0, [pc, #0x4c] @ 0x2232cd8, (=0x22419a2)
	lsl     r2, r3, #2
	ldrh    r0, [r0, r2]
	strb    r0, [r4, #0x6]
	ldr     r0, [pc, #0x48] @ 0x2232cdc, (=0x22419a0)
	ldrh    r0, [r0, r2]
	strh    r0, [r4, #0x4]
	cmp     r0, #0x2
	beq     branch_2232ca2
	cmp     r0, #0x3
	beq     branch_2232ca2
	cmp     r0, #0x6
	bne     branch_2232cbc
.thumb
branch_2232ca2: @ 2232ca2 :thumb
	mov     r0, r1
	bl      0x222c0f0
	add     r1, sp, #0x0
	strh    r0, [r1, #0x4]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x6]
	ldrh    r0, [r1, #0x4]
	add     sp, #0x8
	strh    r0, [r4, #0x0]
	ldrh    r0, [r1, #0x6]
	strh    r0, [r4, #0x2]
	pop     {r4,pc}
@ 0x2232cbc

.thumb
branch_2232cbc: @ 2232cbc :thumb
	mov     r0, r1
	bl      0x222c0e4
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r0, #16
	strh    r0, [r1, #0x2]
	ldrh    r0, [r1, #0x0]
	strh    r0, [r4, #0x0]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r4, #0x2]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2232cd6


.align 2


.word 0x22419a2 @ 0x2232cd8
.word 0x22419a0 @ 0x2232cdc
.thumb
Function_2232ce0: @ 2232ce0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x7c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	str     r1, [sp, #0x20]
	str     r0, [sp, #0x2c]
	ldr     r7, [r5, #0x34]
	ldr     r6, [r5, #0x38]

	mov     r0, #PlBattObj_Narc
	mov     r1, r2
	str     r2, [sp, #0x24]
	mov     r4, r3
	bl      LoadFromNARC_8
	str     r0, [sp, #0x30]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x30]
	mov     r0, r7
	mov     r1, r6
	mov     r3, #0x70
	str     r4, [sp, #0x8]
	bl      Function_200cc3c
	ldr     r0, [sp, #0x30]
	mov     r1, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x6f
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x2c]
	mov     r2, r7
	mov     r3, r6
	str     r4, [sp, #0x14]
	bl      Function_200cdc4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x30]
	mov     r0, r7
	mov     r1, r6
	mov     r3, #0x71
	str     r4, [sp, #0x4]
	bl      Function_200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x30]
	mov     r0, r7
	mov     r1, r6
	mov     r3, #0x72
	str     r4, [sp, #0x4]
	bl      Function_200ce54
	ldr     r0, [sp, #0x30]
	bl      Call_FS_CloseFile
	add     r0, sp, #0x38
	mov     r1, #0x0
	mov     r2, #0x34
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x90]
	add     r1, sp, #0x38
	strh    r0, [r1, #0x0]
	ldr     r0, [sp, #0x94]
	strh    r0, [r1, #0x2]
	mov     r0, #0x0
	strh    r0, [r1, #0x4]
	strh    r0, [r1, #0x6]
	ldr     r1, [sp, #0x98]
	str     r0, [sp, #0x44]
	str     r1, [sp, #0x40]
	mov     r1, #0x1
	str     r1, [sp, #0x48]
	ldr     r1, [sp, #0x9c]
	str     r0, [sp, #0x68]
	str     r1, [sp, #0x64]
	add     r1, sp, #0x38
.thumb
branch_2232d8a: @ 2232d8a :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r4, [r1, #0x14]
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r0, #0x6
	blt     branch_2232d8a
	mov     r0, r7
	mov     r1, r6
	add     r2, sp, #0x38
	bl      Function_200ce6c
	mov     r6, r0
	bl      Function_200d330
	mov     r1, #0x32
	ldr     r0, [sp, #0x24]
	lsl     r1, r1, #6
	bl      malloc
	str     r0, [sp, #0x28]
	mov     r1, #0x0
	ldr     r0, [sp, #0x20]
	mov     r2, r1
	bl      GetPkmnData
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x20]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0
	ldr     r1, [sp, #0x20]
	add     r0, sp, #0x6c
	mov     r2, #0x2
	bl      Function_2075ef4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x28]
	add     r1, sp, #0x38
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x34]
	ldr     r2, [sp, #0x24]
	str     r0, [sp, #0x10]
	str     r3, [sp, #0x14]
	mov     r0, #0x2
	str     r0, [sp, #0x18]
	str     r7, [sp, #0x1c]
	ldrh    r0, [r1, #0x34]
	ldrh    r1, [r1, #0x36]
	bl      Function_20136a4
	ldr     r0, [r6, #0x0]
	bl      Function_2021f98
	mov     r7, r0
	ldr     r0, [sp, #0x28]
	mov     r1, #0x4
	blx     DC_FlushRange
	mov     r2, #0x32
	ldr     r0, [sp, #0x28]
	ldr     r1, [r7, #0x4]
	lsl     r2, r2, #6
	blx     GX_LoadOBJ
	ldr     r0, [r6, #0x0]
	bl      Function_2021f9c
	mov     r1, #0x1
	bl      Function_201fab4
	lsl     r7, r0, #4
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	add     r2, sp, #0x38
	ldrh    r1, [r2, #0x34]
	ldrh    r2, [r2, #0x38]
	ldr     r0, [sp, #0x2c]
	ldr     r3, [sp, #0x24]
	bl      Function_2003050
	ldr     r0, [sp, #0xa0]
	cmp     r0, #0x0
	ble     branch_2232e5e
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	add     r0, sp, #0x80
	ldrh    r0, [r0, #0x24]
	lsl     r2, r7, #16
	mov     r1, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	lsr     r2, r2, #16
	mov     r3, #0x10
	bl      Function_20039b0
.thumb
branch_2232e5e: @ 2232e5e :thumb
	ldr     r0, [sp, #0x28]
	bl      free
	ldr     r0, [pc, #0x14] @ 0x2232e7c, (=0xc350)
	add     r5, #0x80
	sub     r0, r4, r0
	lsl     r4, r0, #2
	ldr     r0, [r5, r4]
	cmp     r0, #0x0
	beq     branch_2232e76
	bl      ErrorHandling
.thumb
branch_2232e76: @ 2232e76 :thumb
	str     r6, [r5, r4]
	add     sp, #0x7c
	pop     {r4-r7,pc}
@ 0x2232e7c

.word 0xc350 @ 0x2232e7c
.thumb
Function_2232e80: @ 2232e80 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x34] @ 0x2232ebc, (=0xc350)
	mov     r6, r1
	mov     r4, r5
	sub     r0, r6, r0
	add     r4, #0x80
	lsl     r7, r0, #2
	ldr     r0, [r4, r7]
	bl      Function_200d0f4
	mov     r0, #0x0
	str     r0, [r4, r7]
	ldr     r0, [r5, #0x38]
	mov     r1, r6
	bl      Function_200d070
	ldr     r0, [r5, #0x38]
	mov     r1, r6
	bl      Function_200d080
	ldr     r0, [r5, #0x38]
	mov     r1, r6
	bl      Function_200d090
	ldr     r0, [r5, #0x38]
	mov     r1, r6
	bl      Function_200d0a0
	pop     {r3-r7,pc}
@ 0x2232ebc

.word 0xc350 @ 0x2232ebc
.thumb
Function_2232ec0: @ 2232ec0 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, r0
	bl      Function_2079fd0
	mov     r1, #0x13
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	mov     r0, #0x7d
	lsl     r0, r0, #4
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x4]
	ldr     r2, [r4, #0x34]
	ldr     r3, [r4, #0x38]
	mov     r1, #0x2
	bl      Function_200cd7c
	bl      Function_2079fd8
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x7d
	lsl     r0, r0, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x34]
	ldr     r1, [r4, #0x38]
	mov     r2, #0x13
	bl      Function_200ce0c
	bl      Function_2079fe4
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x7d
	lsl     r0, r0, #4
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x34]
	ldr     r1, [r4, #0x38]
	mov     r2, #0x13
	bl      Function_200ce3c
	add     sp, #0x18
	pop     {r4,pc}
@ 0x2232f26


.align 2, 0


.thumb
Function_2232f28: @ 2232f28 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x7d
	ldr     r0, [r4, #0x38]
	lsl     r1, r1, #4
	bl      Function_200d090
	mov     r1, #0x7d
	ldr     r0, [r4, #0x38]
	lsl     r1, r1, #4
	bl      Function_200d0a0
	mov     r1, #0x7d
	ldr     r0, [r4, #0x38]
	lsl     r1, r1, #4
	bl      Function_200d080
	pop     {r4,pc}
@ 0x2232f4c


.thumb
Function_2232f4c: @ 2232f4c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r4, r2
	mov     r5, r0
	mov     r7, r1
	str     r3, [sp, #0xc]
	cmp     r4, #0x8
	blt     branch_2232f60
	bl      ErrorHandling
branch_2232f60: @ 2232f60 :thumb
	mov     r0, r7
	bl      Function_2079d80
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x7d
	lsl     r0, r0, #4
	add     r0, r4, r0
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x34]
	ldr     r1, [r5, #0x38]
	mov     r2, #0x13
	bl      Function_200d888
	ldr     r6, [pc, #0x4c] @ 0x2232fd0, (=0x223f9e0)
	add     r3, sp, #0x10
	mov     r2, #0x6
.thumb
branch_2232f88: @ 2232f88 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2232f88
	ldr     r0, [r6, #0x0]
	add     r1, sp, #0x10
	str     r0, [r3, #0x0]
	ldr     r0, [sp, #0x24]
	add     r2, sp, #0x10
	add     r0, r0, r4
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0xc]
	strh    r0, [r1, #0x0]
	ldr     r0, [sp, #0x58]
	strh    r0, [r1, #0x2]
	mov     r0, #0xc8
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x34]
	ldr     r1, [r5, #0x38]
	bl      Function_200ce6c
	mov     r4, r0
	mov     r0, r7
	bl      Function_2079fc4
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2021f24
	mov     r0, r4
	bl      Function_200d330
	mov     r0, r4
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x2232fce


.align 2


.word 0x223f9e0 @ 0x2232fd0
.thumb
Function_2232fd4: @ 2232fd4 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r1, #0x7d
	lsl     r1, r1, #4
	ldr     r0, [r0, #0x38]
	add     r1, r2, r1
	bl      Function_200d070
	mov     r0, r4
	bl      Function_200d0f4
	pop     {r4,pc}
@ 0x2232fec


.thumb
Function_2232fec: @ 2232fec :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0

	mov     r0, #PlPlistGra_Narc
	mov     r1, #0x5e
	bl      LoadFromNARC_8
	mov     r4, r0
	bl      Function_2081934
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x64] @ 0x2233074, (=0x7d1)
	mov     r1, #0x2
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x4]
	ldr     r2, [r5, #0x34]
	ldr     r3, [r5, #0x38]
	bl      Function_200cdc4
	bl      Function_2081938
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x48] @ 0x2233074, (=0x7d1)
	mov     r2, r4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x34]
	ldr     r1, [r5, #0x38]
	bl      Function_200ce24
	bl      Function_208193c
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x2233074, (=0x7d1)
	mov     r2, r4
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x34]
	ldr     r1, [r5, #0x38]
	bl      Function_200ce54
	bl      Function_2081930
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x2233078, (=0x7d9)
	mov     r2, #0x14
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x34]
	ldr     r1, [r5, #0x38]
	bl      Function_200d888
	mov     r0, r4
	bl      Call_FS_CloseFile
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2233074

.word 0x7d1 @ 0x2233074
.word 0x7d9 @ 0x2233078
.thumb
Function_223307c: @ 223307c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x38]
	ldr     r1, [pc, #0x20] @ 0x22330a4, (=0x7d9)
	bl      Function_200d070
	ldr     r0, [r4, #0x38]
	ldr     r1, [pc, #0x1c] @ 0x22330a8, (=0x7d1)
	bl      Function_200d090
	ldr     r0, [r4, #0x38]
	ldr     r1, [pc, #0x14] @ 0x22330a8, (=0x7d1)
	bl      Function_200d0a0
	ldr     r0, [r4, #0x38]
	ldr     r1, [pc, #0xc] @ 0x22330a8, (=0x7d1)
	bl      Function_200d080
	pop     {r4,pc}
@ 0x22330a2


.align 2


.word 0x7d9 @ 0x22330a4
.word 0x7d1 @ 0x22330a8
.thumb
Function_22330ac: @ 22330ac :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	ldr     r5, [pc, #0x38] @ 0x22330ec, (=0x223f9ac)
	mov     r6, r2
	mov     r3, r0
	mov     r7, r1
	add     r4, sp, #0x0
	mov     r2, #0x6
.thumb
branch_22330bc: @ 22330bc :thumb
	ldmia   r5!, {r0,r1}
	stmia   r4!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_22330bc
	ldr     r0, [r5, #0x0]
	add     r2, sp, #0x0
	str     r0, [r4, #0x0]
	add     r0, sp, #0x0
	strh    r7, [r0, #0x0]
	strh    r6, [r0, #0x2]
	mov     r0, #0x4b
	lsl     r0, r0, #2
	str     r0, [sp, #0x8]
	ldr     r0, [r3, #0x34]
	ldr     r1, [r3, #0x38]
	bl      Function_200ce6c
	mov     r4, r0
	bl      Function_200d330
	mov     r0, r4
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x22330ea


.align 2


.word 0x223f9ac @ 0x22330ec
.thumb
Function_22330f0: @ 22330f0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22330f8, (=Function_200d0f4+1)
	mov     r0, r1
	bx      r3
@ 0x22330f6


.align 2


.word Function_200d0f4+1 @ 0x22330f8
.thumb
Function_22330fc: @ 22330fc :thumb
	ldr     r3, [pc, #0x4] @ 0x2233104, (=0x223310d)
	ldr     r2, [pc, #0x8] @ 0x2233108, (=0x266)
	bx      r3
@ 0x2233102


.align 2


.word 0x223310d @ 0x2233104
.word 0x266 @ 0x2233108
.thumb
Function_223310c: @ 223310c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	mov     r6, r2
	bl      Function_209b970
	ldrh    r2, [r4, #0x0]
	ldr     r1, [pc, #0x58] @ 0x223317c, (=0xffff)
	cmp     r2, r1
	bne     branch_223314c
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, r6
	mov     r3, #0x20
	bl      LoadFromNARC_9
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldrh    r2, [r4, #0x2]
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	mov     r3, #0x1
	bl      Function_2231f74
	mov     r0, r6
	bl      Function_200b190
	b       branch_2233170
@ 0x223314c

.thumb
branch_223314c: @ 223314c :thumb
	ldr     r0, [r0, #0x8]
	bl      LoadPlayerDataAdress
	bl      Function_2027ac0
	mov     r1, r0
	ldrh    r0, [r4, #0x4]
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	ldsh    r0, [r4, r0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldrh    r2, [r4, #0x0]
	ldrh    r3, [r4, #0x2]
	ldr     r0, [r5, #0x0]
	bl      Function_22320b4
.thumb
branch_2233170: @ 2233170 :thumb
	ldr     r1, [pc, #0xc] @ 0x2233180, (=0x2233185)
	mov     r0, r5
	bl      Function_222e974
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223317c

.word 0xffff @ 0x223317c
.word Function_2233184+1 @ =0x2233185, 0x2233180
.thumb
Function_2233184: @ 2233184 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	add     r0, #0x50
	ldrb    r0, [r0, #0x0]
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2233198
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2233198

.thumb
branch_2233198: @ 2233198 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223319c

.thumb
Function_223319c: @ 223319c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r1, #0x8
	ldsb    r2, [r4, r1]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r2, [r4, #0x8]
	ldsb    r2, [r4, r1]
	mov     r1, #0x9
	ldsb    r1, [r4, r1]
	cmp     r2, r1
	ble     branch_22331e4
	mov     r1, #0x0
	strb    r1, [r4, #0x8]
	mov     r1, #0xa
	ldsb    r2, [r4, r1]
	.hword  0x1e52 @ sub r2, r2, #0x1
	strb    r2, [r4, #0xa]
	ldsb    r1, [r4, r1]
	cmp     r1, #0x0
	bge     branch_22331d4
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0xc
	blx     MI_CpuFill8
	pop     {r4,pc}
@ 0x22331d4

.thumb
branch_22331d4: @ 22331d4 :thumb
	mov     r0, #0x4
	ldsh    r0, [r4, r0]
	neg     r0, r0
	strh    r0, [r4, #0x4]
	mov     r0, #0x6
	ldsh    r0, [r4, r0]
	neg     r0, r0
	strh    r0, [r4, #0x6]
.thumb
branch_22331e4: @ 22331e4 :thumb
	pop     {r4,pc}
@ 0x22331e6


.align 2, 0


.thumb
Function_22331e8: @ 22331e8 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, #0x8
	mov     r7, r0
	ldsh    r0, [r4, r1]
	cmp     r0, #0x0
	bgt     branch_223326e
	mov     r0, #0xa
	ldsb    r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_2233252
	ldr     r2, [pc, #0x74] @ 0x2233274, (=WIN_IN)
	mov     r1, #0x3f
	ldrh    r3, [r2, #0x0]
	mov     r0, #0xf
	mov     r5, #0x20
	bic     r3, r1
	orr     r0, r3
	orr     r0, r5
	strh    r0, [r2, #0x0]
	ldrh    r3, [r2, #0x2]
	mov     r0, #0x1f
	bic     r3, r1
	orr     r0, r3
	orr     r0, r5
	strh    r0, [r2, #0x2]
	ldrb    r3, [r4, #0x4]
	ldrb    r1, [r4, #0x7]
	ldrb    r0, [r4, #0x5]
	lsl     r6, r3, #8
	mov     r3, #0xff
	lsl     r3, r3, #8
	and     r6, r3
	ldrb    r3, [r4, #0x6]
	orr     r6, r3
	mov     r3, r2
	sub     r3, #0x8
	strh    r6, [r3, #0x0]
	lsl     r3, r0, #8
	mov     r0, #0xff
	lsl     r0, r0, #8
	and     r0, r3
	orr     r1, r0
	.hword  0x1f10 @ sub r0, r2, #0x4
	strh    r1, [r0, #0x0]
	lsl     r2, r5, #21
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x30] @ 0x2233278, (=0xffff1fff)
	and     r1, r0
	lsl     r0, r5, #8
	orr     r0, r1
	str     r0, [r2, #0x0]
	b       branch_223325c
@ 0x2233252

.thumb
branch_2233252: @ 2233252 :thumb
	lsl     r2, r1, #23
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x20] @ 0x2233278, (=0xffff1fff)
	and     r0, r1
	str     r0, [r2, #0x0]
branch_223325c: @ 223325c :thumb
	mov     r0, r7
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0xc
	blx     MI_CpuFill8
	pop     {r3-r7,pc}

branch_223326e: @ 223326e :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x2233274

.word WIN_IN @ 0x2233274
.word 0xffff1fff @ 0x2233278
.thumb
Function_223327c: @ 223327c :thumb
	mov     r2, r0
	add     r2, #0x97
	ldrb    r3, [r2, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r2, #0x40
	lsl     r1, r1, #31
	bic     r3, r2
	lsr     r1, r1, #25
	orr     r1, r3
	add     r0, #0x97
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x2233296


.align 2, 0


.thumb
Function_2233298: @ 2233298 :thumb
	mov     r2, r0
	add     r2, #0x97
	ldrb    r3, [r2, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	mov     r2, #0x80
	lsl     r1, r1, #31
	bic     r3, r2
	lsr     r1, r1, #24
	orr     r1, r3
	add     r0, #0x97
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x22332b2


.align 2, 0


.thumb
Function_22332b4: @ 22332b4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_222fc00
	mov     r7, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	lsl     r2, r4, #24
	lsl     r3, r6, #24
	ldr     r0, [r0, #0x8]
	mov     r1, r7
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_22339b4
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b980
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22332f4

.thumb
Function_22332f4: @ 22332f4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fc00
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r4
	bl      Function_2233b98
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2233310

.thumb
Function_2233310: @ 2233310 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	bl      Function_22340d0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2233322


.align 2, 0


.thumb
Function_2233324: @ 2233324 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r7, r0
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r5, r0
	mov     r0, #0xb
	mov     r1, #0x24
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0x24
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [r7, #0x8]
	mov     r3, #0x0
	str     r0, [r4, #0x0]
	ldrb    r0, [r5, #0x4]
	mov     r2, r4
	strb    r0, [r4, #0x4]
	ldrb    r0, [r5, #0x5]
	strb    r0, [r4, #0x5]
	ldr     r0, [pc, #0x20] @ 0x2233380, (=0x4d4)
	strb    r3, [r4, #0x6]
	ldr     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, #0x8]
	ldr     r0, [r5, r0]
	ldr     r1, [pc, #0x18] @ 0x2233384, (=0x223fa14)
	str     r0, [r4, #0xc]
	ldr     r0, [pc, #0x18] @ 0x2233388, (=0x2233479)
	str     r5, [r4, #0x1c]
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b988
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2233380

.word 0x4d4 @ 0x2233380
.word 0x223fa14 @ 0x2233384
.word Function_2233478+1 @ =0x2233479, 0x2233388
.thumb
Function_223338c: @ 223338c :thumb
	push    {r3-r5,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x22333b0, (=0x4fc)
	ldr     r5, [r4, r0]
	ldr     r0, [r5, #0x14]
	bl      Function_2052868
	str     r0, [r4, #0x14]
	mov     r0, r5
	bl      Function_20520a4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22333ae


.align 2


.word 0x4fc @ 0x22333b0
.thumb
Function_22333b4: @ 22333b4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r6
	mov     r4, r0
	bl      Function_223aba0
	mov     r2, r0
	ldr     r0, [pc, #0x18] @ 0x22333f0, (=0x4fc)
	mov     r3, #0x0
	str     r2, [r4, r0]
	str     r3, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x10] @ 0x22333f4, (=JumpTable_BattleScreen)
	ldr     r0, [r0, #0x0]
	bl      Function_209b988
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x22333ee

.align 2
.word 0x4fc @ 0x22333f0
.word JumpTable_BattleScreen @ 0x22333f4



.thumb
Function_22333f8: @ 22333f8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r7, r0
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r5, r0
	mov     r2, #0x0
	ldr     r0, [pc, #0x54] @ 0x2233468, (=0x4dc)
	mov     r3, r5
	mov     r1, r2
.thumb
branch_2233418: @ 2233418 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r1, [r3, r0]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x6
	blt     branch_2233418
	mov     r0, #0xb
	mov     r1, #0x24
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0x24
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [r7, #0x8]
	mov     r2, r4
	str     r0, [r4, #0x0]
	ldrb    r0, [r5, #0x4]
	mov     r3, #0x0
	strb    r0, [r4, #0x4]
	ldrb    r0, [r5, #0x5]
	strb    r0, [r4, #0x5]
	mov     r0, #0x1
	strb    r0, [r4, #0x6]
	ldr     r0, [pc, #0x20] @ 0x223346c, (=0x4d4)
	ldr     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, #0x8]
	ldr     r0, [r5, r0]
	ldr     r1, [pc, #0x1c] @ 0x2233470, (=0x223fa24)
	str     r0, [r4, #0xc]
	ldr     r0, [pc, #0x1c] @ 0x2233474, (=0x2233479)
	str     r5, [r4, #0x1c]
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b988
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2233468

.word 0x4dc @ 0x2233468
.word 0x4d4 @ 0x223346c
.word 0x223fa24 @ 0x2233470
.word Function_2233478+1 @ =0x2233479, 0x2233474
.thumb
Function_2233478: @ 2233478 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	mov     r1, r4
	bl      Function_223410c
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x223348c

.thumb
Function_223348c: @ 223348c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	bl      Function_223449c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223349e


.align 2, 0


.thumb
Function_22334a0: @ 22334a0 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	bl      Function_2234570
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22334b2


.align 2, 0


.thumb
Function_22334b4: @ 22334b4 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	bl      Function_22346a4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22334c6


.align 2, 0


.thumb
Function_22334c8: @ 22334c8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	bl      Function_223470c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22334da


.align 2, 0


.thumb
Function_22334dc: @ 22334dc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x6c
	mov     r6, r0
	ldr     r2, [r6, #0x1c]
	add     r1, r2, #0x1
	str     r1, [r6, #0x1c]
	ldrb    r7, [r2, #0x0]
	add     r2, r1, #0x1
	str     r2, [r6, #0x1c]
	ldrb    r5, [r1, #0x0]
	add     r1, r2, #0x1
	str     r1, [r6, #0x1c]
	ldrb    r1, [r2, #0x0]
	str     r1, [sp, #0x1c]
	bl      Function_222fbe4
	str     r0, [sp, #0x18]
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r4, r0
	ldr     r0, [r6, #0x0]
	bl      Function_222e924
	str     r0, [sp, #0x20]
	cmp     r7, #0x29
	bhi     branch_223359e
	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2233520

Jumppoints_2233520:
.hword branch_2233574 - Jumppoints_2233520 - 2
.hword branch_2233578 - Jumppoints_2233520 - 2
.hword branch_223357c - Jumppoints_2233520 - 2
.hword branch_2233580 - Jumppoints_2233520 - 2
.hword branch_223358e - Jumppoints_2233520 - 2
.hword branch_2233596 - Jumppoints_2233520 - 2
.hword branch_2233892 - Jumppoints_2233520 - 2
.hword branch_22335a6 - Jumppoints_2233520 - 2
.hword branch_2233892 - Jumppoints_2233520 - 2
.hword branch_22335ae - Jumppoints_2233520 - 2
.hword branch_22335bc - Jumppoints_2233520 - 2
.hword branch_2233892 - Jumppoints_2233520 - 2
.hword branch_2233892 - Jumppoints_2233520 - 2
.hword branch_2233892 - Jumppoints_2233520 - 2
.hword branch_22335c6 - Jumppoints_2233520 - 2
.hword branch_22335d2 - Jumppoints_2233520 - 2
.hword branch_22335e8 - Jumppoints_2233520 - 2
.hword branch_2233600 - Jumppoints_2233520 - 2
.hword branch_2233638 - Jumppoints_2233520 - 2
.hword branch_22336f8 - Jumppoints_2233520 - 2
.hword branch_2233704 - Jumppoints_2233520 - 2
.hword branch_2233712 - Jumppoints_2233520 - 2
.hword branch_223371a - Jumppoints_2233520 - 2
.hword branch_2233722 - Jumppoints_2233520 - 2
.hword branch_223372e - Jumppoints_2233520 - 2
.hword branch_2233892 - Jumppoints_2233520 - 2
.hword branch_2233738 - Jumppoints_2233520 - 2
.hword branch_2233742 - Jumppoints_2233520 - 2
.hword branch_223374a - Jumppoints_2233520 - 2
.hword branch_2233756 - Jumppoints_2233520 - 2
.hword branch_223375e - Jumppoints_2233520 - 2
.hword branch_2233782 - Jumppoints_2233520 - 2
.hword branch_223379a - Jumppoints_2233520 - 2
.hword branch_22337b2 - Jumppoints_2233520 - 2
.hword branch_22337e0 - Jumppoints_2233520 - 2
.hword branch_2233810 - Jumppoints_2233520 - 2
.hword branch_223381c - Jumppoints_2233520 - 2
.hword branch_2233824 - Jumppoints_2233520 - 2
.hword branch_223384c - Jumppoints_2233520 - 2
.hword branch_2233854 - Jumppoints_2233520 - 2
.hword branch_2233880 - Jumppoints_2233520 - 2
.hword branch_2233888 - Jumppoints_2233520 - 2
.thumb
branch_2233574: @ 2233574 :thumb
	strb    r5, [r4, #0x7]
	b       branch_2233892
@ 0x2233578

.thumb
branch_2233578: @ 2233578 :thumb
	strb    r5, [r4, #0x5]
	b       branch_2233892
@ 0x223357c

.thumb
branch_223357c: @ 223357c :thumb
	strb    r5, [r4, #0x4]
	b       branch_2233892
@ 0x2233580

.thumb
branch_2233580: @ 2233580 :thumb
	lsl     r0, r5, #1
	add     r1, r4, r0
	ldr     r0, [pc, #0x310] @ 0x2233898, (=0x4dc)
	ldrh    r1, [r1, r0]
	ldr     r0, [sp, #0x18]
	strh    r1, [r0, #0x0]
	b       branch_2233892
@ 0x223358e

.thumb
branch_223358e: @ 223358e :thumb
	ldrh    r1, [r4, #0xc]
	ldr     r0, [sp, #0x18]
	strh    r1, [r0, #0x0]
	b       branch_2233892
@ 0x2233596

.thumb
branch_2233596: @ 2233596 :thumb
	ldrh    r1, [r4, #0xc]
	ldr     r0, [pc, #0x300] @ 0x223389c, (=0x270f)
	cmp     r1, r0
	bcc     branch_22335a0
.thumb
branch_223359e: @ 223359e :thumb
	b       branch_2233892
@ 0x22335a0

.thumb
branch_22335a0: @ 22335a0 :thumb
	add     r0, r1, #0x1
	strh    r0, [r4, #0xc]
	b       branch_2233892
@ 0x22335a6

.thumb
branch_22335a6: @ 22335a6 :thumb
	mov     r0, #0x0
	blx     OS_ResetSystem
	b       branch_2233892
@ 0x22335ae

.thumb
branch_22335ae: @ 22335ae :thumb
	ldr     r0, [pc, #0x2f0] @ 0x22338a0, (=0x4f4)
	ldr     r0, [r4, r0]
	bl      Function_202ff68
	ldr     r1, [sp, #0x18]
	strh    r0, [r1, #0x0]
	b       branch_2233892
@ 0x22335bc

.thumb
branch_22335bc: @ 22335bc :thumb
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2234148
	b       branch_2233892
@ 0x22335c6

.thumb
branch_22335c6: @ 22335c6 :thumb
	mov     r0, r4
	bl      Function_2234430
	ldr     r1, [sp, #0x18]
	strh    r0, [r1, #0x0]
	b       branch_2233892
@ 0x22335d2

.thumb
branch_22335d2: @ 22335d2 :thumb
	mov     r0, #0x38
	mul     r0, r5
	add     r1, r4, r0
	mov     r0, #0x3f
	lsl     r0, r0, #4
	ldrh    r0, [r1, r0]
	lsl     r0, r0, #21
	lsr     r1, r0, #21
	ldr     r0, [sp, #0x18]
	strh    r1, [r0, #0x0]
	b       branch_2233892
@ 0x22335e8

.thumb
branch_22335e8: @ 22335e8 :thumb
	mov     r0, #0x38
	mul     r0, r5
	add     r1, r4, r0
	ldr     r0, [sp, #0x1c]
	lsl     r0, r0, #1
	add     r1, r1, r0
	mov     r0, #0xfd
	lsl     r0, r0, #2
	ldrh    r1, [r1, r0]
	ldr     r0, [sp, #0x18]
	strh    r1, [r0, #0x0]
	b       branch_2233892
@ 0x2233600

.thumb
branch_2233600: @ 2233600 :thumb
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r6, r0
	mov     r0, r4
	bl      Function_223ada0
	mov     r2, r0
	mov     r0, #0x3f
	lsl     r0, r0, #4
	add     r1, r4, r0
	mov     r0, #0x38
	mul     r0, r5
	add     r0, r1, r0
	mov     r1, r6
	bl      Function_222df40
	mov     r0, r6
	mov     r1, #0xb1
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [sp, #0x18]
	strh    r0, [r1, #0x0]
	mov     r0, r6
	bl      free
	b       branch_2233892
@ 0x2233638

.thumb
branch_2233638: @ 2233638 :thumb
	ldrb    r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_223aa74
	mov     r1, #0x0
	str     r0, [sp, #0x14]
	add     r2, sp, #0x24
	mov     r0, r1
.thumb
branch_2233648: @ 2233648 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	stmia   r2!, {r0}
	cmp     r1, #0x12
	blt     branch_2233648
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	ble     branch_22336be
	mov     r0, #0x3f
	lsl     r0, r0, #4
	add     r6, r4, r0
.thumb
branch_2233668: @ 2233668 :thumb
	mov     r0, r4
	bl      Function_223ada0
	mov     r2, r0
	mov     r0, r6
	mov     r1, r5
	bl      Function_222df40
	mov     r0, r5
	mov     r1, #0xb1
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0xb2
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r7, r0
	bne     branch_2233694
	mov     r0, #0xff
.thumb
branch_2233694: @ 2233694 :thumb
	lsl     r1, r7, #2
	add     r2, sp, #0x24
	ldr     r2, [r2, r1]
	add     r3, r2, #0x1
	add     r2, sp, #0x24
	str     r3, [r2, r1]
	cmp     r0, #0xff
	beq     branch_22336b0
	lsl     r0, r0, #2
	mov     r1, r2
	ldr     r1, [r1, r0]
	add     r2, r1, #0x1
	add     r1, sp, #0x24
	str     r2, [r1, r0]
.thumb
branch_22336b0: @ 22336b0 :thumb
	ldr     r0, [sp, #0x10]
	add     r6, #0x38
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x14]
	str     r1, [sp, #0x10]
	cmp     r1, r0
	blt     branch_2233668
.thumb
branch_22336be: @ 22336be :thumb
	mov     r0, r5
	bl      free
	mov     r0, #0x0
	add     r4, sp, #0x24
	mov     r5, r0
	mov     r3, r4
.thumb
branch_22336cc: @ 22336cc :thumb
	lsl     r1, r0, #2
	ldr     r2, [r3, r1]
	ldr     r1, [r4, #0x0]
	cmp     r2, r1
	bge     branch_22336d8
	mov     r0, r5
.thumb
branch_22336d8: @ 22336d8 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x12
	blt     branch_22336cc
	lsl     r2, r0, #2
	add     r1, sp, #0x24
	ldr     r1, [r1, r2]
	cmp     r1, #0x1
	bgt     branch_22336f2
	ldr     r0, [sp, #0x18]
	mov     r1, #0xff
	strh    r1, [r0, #0x0]
	b       branch_2233892
@ 0x22336f2

.thumb
branch_22336f2: @ 22336f2 :thumb
	ldr     r1, [sp, #0x18]
	strh    r0, [r1, #0x0]
	b       branch_2233892
@ 0x22336f8

.thumb
branch_22336f8: @ 22336f8 :thumb
	mov     r0, r4
	bl      Function_223af34
	ldr     r1, [sp, #0x18]
	strh    r0, [r1, #0x0]
	b       branch_2233892
@ 0x2233704

.thumb
branch_2233704: @ 2233704 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2234440
	ldr     r1, [sp, #0x18]
	strh    r0, [r1, #0x0]
	b       branch_2233892
@ 0x2233712

.thumb
branch_2233712: @ 2233712 :thumb
	mov     r0, r4
	bl      Function_2234474
	b       branch_2233892
@ 0x223371a

.thumb
branch_223371a: @ 223371a :thumb
	mov     r0, r4
	bl      Function_2234480
	b       branch_2233892
@ 0x2233722

.thumb
branch_2233722: @ 2233722 :thumb
	mov     r0, r4
	bl      Function_223443c
	ldr     r1, [sp, #0x18]
	strh    r0, [r1, #0x0]
	b       branch_2233892
@ 0x223372e

.thumb
branch_223372e: @ 223372e :thumb
	ldr     r0, [pc, #0x174] @ 0x22338a4, (=0x57c)
	ldrb    r1, [r4, r0]
	ldr     r0, [sp, #0x18]
	strh    r1, [r0, #0x0]
	b       branch_2233892
@ 0x2233738

.thumb
branch_2233738: @ 2233738 :thumb
	ldr     r0, [pc, #0x16c] @ 0x22338a8, (=0x57d)
	ldrb    r1, [r4, r0]
	ldr     r0, [sp, #0x18]
	strh    r1, [r0, #0x0]
	b       branch_2233892
@ 0x2233742

.thumb
branch_2233742: @ 2233742 :thumb
	mov     r0, r4
	bl      Function_209ba80
	b       branch_2233892
@ 0x223374a

.thumb
branch_223374a: @ 223374a :thumb
	ldrb    r0, [r4, #0x4]
	bl      Function_223aed4
	ldr     r1, [sp, #0x18]
	strh    r0, [r1, #0x0]
	b       branch_2233892
@ 0x2233756

.thumb
branch_2233756: @ 2233756 :thumb
	ldrb    r1, [r4, #0x4]
	ldr     r0, [sp, #0x18]
	strh    r1, [r0, #0x0]
	b       branch_2233892
@ 0x223375e

.thumb
branch_223375e: @ 223375e :thumb
	mov     r0, #0x1a
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	mov     r1, #0x3
	ldr     r0, [sp, #0x20]
	str     r5, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	mov     r2, r1
	mov     r3, #0xa
	bl      Function_2019e2c
	ldr     r0, [sp, #0x20]
	mov     r1, #0x3
	ldr     r0, [r0, #0x0]
	bl      Function_201c3c0
	b       branch_2233892
@ 0x2233782

.thumb
branch_2233782: @ 2233782 :thumb
	ldr     r0, [r6, #0x0]
	bl      Function_222e924
	mov     r1, r0
	ldr     r0, [pc, #0x120] @ 0x22338ac, (=0x22338b5)
	mov     r2, #0x5
	bl      AddTaskToTaskList1
	mov     r1, #0x5
	lsl     r1, r1, #8
	str     r0, [r4, r1]
	b       branch_2233892
@ 0x223379a

.thumb
branch_223379a: @ 223379a :thumb
	mov     r0, #0x5
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2233892
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0x5
	mov     r1, #0x0
	lsl     r0, r0, #8
	str     r1, [r4, r0]
	b       branch_2233892
@ 0x22337b2

.thumb
branch_22337b2: @ 22337b2 :thumb
	ldrb    r1, [r4, #0x6]
	mov     r0, r4
	add     r0, #0x34
	lsl     r1, r1, #1
	add     r1, r4, r1
	ldrh    r1, [r1, #0x18]
	mov     r2, #0xb
	mov     r3, #0xb2
	bl      Function_222e278
	ldrb    r1, [r4, #0x6]
	mov     r0, #0x51
	lsl     r0, r0, #2
	.hword  0x1dc9 @ add r1, r1, #0x7
	lsl     r1, r1, #1
	add     r1, r4, r1
	ldrh    r1, [r1, #0x18]
	add     r0, r4, r0
	mov     r2, #0xb
	mov     r3, #0xb2
	bl      Function_222e278
	b       branch_2233892
@ 0x22337e0

.thumb
branch_22337e0: @ 22337e0 :thumb
	ldrb    r0, [r4, #0x4]
	bl      Function_223aa50
	mov     r7, r0
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_2233892
.thumb
branch_22337ee: @ 22337ee :thumb
	ldr     r0, [pc, #0xc0] @ 0x22338b0, (=0x4d4)
	mov     r1, r5
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r5
	ldr     r0, [r0, #0x44]
	bl      Function_200b538
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_22337ee
	b       branch_2233892
@ 0x2233810

.thumb
branch_2233810: @ 2233810 :thumb
	mov     r0, r4
	bl      Function_22347f8
	ldr     r1, [sp, #0x18]
	strh    r0, [r1, #0x0]
	b       branch_2233892
@ 0x223381c

.thumb
branch_223381c: @ 223381c :thumb
	mov     r0, r4
	bl      Function_2234790
	b       branch_2233892
@ 0x2233824

.thumb
branch_2233824: @ 2233824 :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_2233892
	ldrh    r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x15
	bne     branch_2233840
	ldr     r0, [sp, #0x18]
	mov     r1, #0x1
	strh    r1, [r0, #0x0]
	b       branch_2233892
@ 0x2233840

.thumb
branch_2233840: @ 2233840 :thumb
	cmp     r0, #0x31
	bne     branch_2233892
	ldr     r0, [sp, #0x18]
	mov     r1, #0x2
	strh    r1, [r0, #0x0]
	b       branch_2233892
@ 0x223384c

.thumb
branch_223384c: @ 223384c :thumb
	mov     r0, r4
	bl      Function_223ae30
	b       branch_2233892
@ 0x2233854

.thumb
branch_2233854: @ 2233854 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	mov     r3, #0x3f
	lsl     r3, r3, #4
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	mov     r0, #0xb3
	mov     r1, r3
	mov     r2, r3
	str     r0, [sp, #0xc]
	add     r0, r4, r3
	sub     r1, #0x1e
	sub     r2, #0x16
	sub     r3, #0x10
	add     r1, r4, r1
	add     r2, r4, r2
	add     r3, r4, r3
	bl      Function_222e330
	b       branch_2233892
@ 0x2233880

.thumb
branch_2233880: @ 2233880 :thumb
	mov     r0, r4
	bl      Function_223adb0
	b       branch_2233892
@ 0x2233888

.thumb
branch_2233888: @ 2233888 :thumb
	ldrb    r1, [r4, #0xb]
	ldr     r0, [sp, #0x18]
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	strb    r0, [r4, #0xb]
.thumb
branch_2233892: @ 2233892 :thumb
	mov     r0, #0x0
	add     sp, #0x6c
	pop     {r4-r7,pc}
@ 0x2233898

.word 0x4dc @ 0x2233898
.word 0x270f @ 0x223389c
.word 0x4f4 @ 0x22338a0
.word 0x57c @ 0x22338a4
.word 0x57d @ 0x22338a8
.word Function_22338b4+1 @ =0x22338b5, 0x22338ac
.word 0x4d4 @ 0x22338b0
.thumb
Function_22338b4: @ 22338b4 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      Function_20192f8
	cmp     r0, #0xff
	ldr     r0, [r4, #0x0]
	blt     branch_22338d2
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_201c63c
	pop     {r4,pc}
@ 0x22338d2

.thumb
branch_22338d2: @ 22338d2 :thumb
	mov     r1, #0x2
	mov     r2, #0x4
	mov     r3, #0x1
	bl      Function_201c63c
	pop     {r4,pc}
@ 0x22338de


.align 2, 0


.thumb
Function_22338e0: @ 22338e0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fbe4
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	ldr     r0, [r0, #0x14]
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22338fa


.align 2, 0
.thumb
Function_22338fc: @ 22338fc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_222fc00
	mov     r6, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r7, r0
	mov     r0, r5
	bl      Function_222fbe4
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r6
	mov     r2, r7
	bl      Function_22347a4
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223392c

.thumb
Function_223392c: @ 223392c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222ea48
	mov     r1, r4
	add     r1, #0x78
	strh    r0, [r1, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2233948, (=0x223394d)
	mov     r0, r4
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2233946


.align 2


.word Function_223394c+1 @ =0x223394d, 0x2233948
.thumb
Function_223394c: @ 223394c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	bl      Function_222fc8c
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	ldr     r1, [pc, #0x14] @ 0x2233978, (=0x702)
	ldrb    r2, [r0, r1]
	cmp     r2, #0x2
	bcc     branch_2233972
	mov     r2, #0x0
	strb    r2, [r0, r1]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2233972

.thumb
branch_2233972: @ 2233972 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2233976


.align 2


.word 0x702 @ 0x2233978
.thumb
Function_223397c: @ 223397c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r1, [r5, #0x1c]
	add     r0, r1, #0x1
	str     r0, [r5, #0x1c]
	ldr     r0, [r5, #0x0]
	ldrb    r4, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r2, r0
	bne     branch_22339a0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22339a0

.thumb
branch_22339a0: @ 22339a0 :thumb
	lsl     r1, r4, #4
	add     r1, r4, r1
	add     r2, #0x4c
	lsl     r1, r1, #4
	mov     r0, r5
	add     r1, r2, r1
	bl      Function_22330fc
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22339b4

.thumb
Function_22339b4: @ 22339b4 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r4, r0
	ldr     r1, [pc, #0x1c4] @ 0x2233b80, (=0x708)
	mov     r0, #0xb
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      malloc
	ldr     r1, [pc, #0x1bc] @ 0x2233b84, (=0x2241ac0)
	ldr     r2, [pc, #0x1b4] @ 0x2233b80, (=0x708)
	str     r0, [r1, #0x0]
	mov     r1, #0x0
	blx     MI_CpuFill8
	ldr     r0, [pc, #0x1b0] @ 0x2233b84, (=0x2241ac0)
	ldr     r5, [r0, #0x0]
	mov     r0, r4
	bl      Function_202ff58
	ldr     r1, [pc, #0x1a8] @ 0x2233b88, (=0x4f4)
	str     r0, [r5, r1]
	add     r0, r1, #0x4
	str     r4, [r5, r0]
	mov     r0, #0xb
	ldr     r1, [pc, #0x19c] @ 0x2233b84, (=0x2241ac0)
	str     r0, [r5, #0x0]
	ldr     r5, [r1, #0x0]
	bl      AllocPkmnParty
	ldr     r1, [pc, #0x198] @ 0x2233b8c, (=0x4d4)
	str     r0, [r5, r1]
	mov     r0, #0xb
	bl      AllocPkmnParty
	ldr     r1, [pc, #0x194] @ 0x2233b90, (=0x4d8)
	str     r0, [r5, r1]
	add     r1, #0x1c
	mov     r0, r4
	ldr     r5, [r5, r1]
	bl      Function_20300f4
	mov     r4, r0
	cmp     r6, #0x0
	bne     branch_2233ac6
	ldr     r0, [pc, #0x174] @ 0x2233b84, (=0x2241ac0)
	ldr     r1, [r0, #0x0]
	strb    r7, [r1, #0x4]
	ldr     r0, [sp, #0x0]
	strb    r0, [r1, #0x5]
	mov     r0, #0x0
	strb    r0, [r1, #0x6]
	mov     r0, r5
	bl      Function_202ff4c
	ldr     r0, [pc, #0x160] @ 0x2233b84, (=0x2241ac0)
	ldr     r2, [r0, #0x0]
	ldrb    r3, [r2, #0x4]
	cmp     r3, #0x3
	bne     branch_2233a3a
	ldr     r0, [pc, #0x164] @ 0x2233b94, (=0x4f8)
	ldr     r0, [r2, r0]
	bl      LoadFlagAdress
	bl      Function_206b6fc
	b       branch_2233a4e
@ 0x2233a3a

.thumb
branch_2233a3a: @ 2233a3a :thumb
	ldrb    r2, [r2, #0x5]
	mov     r0, r4
	mov     r1, #0xa
	lsl     r2, r2, #2
	add     r2, r3, r2
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_20300e0
.thumb
branch_2233a4e: @ 2233a4e :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bne     branch_2233ab6
	ldr     r0, [pc, #0x12c] @ 0x2233b84, (=0x2241ac0)
	ldr     r5, [r0, #0x0]
	ldr     r0, [pc, #0x138] @ 0x2233b94, (=0x4f8)
	ldr     r0, [r5, r0]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e430
	mov     r6, r0
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e430
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_2030698
	strh    r0, [r5, #0xc]
	ldr     r0, [pc, #0xfc] @ 0x2233b84, (=0x2241ac0)
	ldr     r4, [r0, #0x0]
	ldr     r0, [pc, #0x108] @ 0x2233b94, (=0x4f8)
	ldr     r0, [r4, r0]
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	ldrb    r0, [r4, #0x5]
	ldrb    r1, [r4, #0x4]
	bl      Function_205e488
	mov     r7, r0
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e488
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, r7
	bl      Function_2030698
	b       branch_2233abe
@ 0x2233ab6

.thumb
branch_2233ab6: @ 2233ab6 :thumb
	ldr     r0, [pc, #0xcc] @ 0x2233b84, (=0x2241ac0)
	ldr     r4, [r0, #0x0]
	mov     r0, #0x0
	strh    r0, [r4, #0xc]
.thumb
branch_2233abe: @ 2233abe :thumb
	strh    r0, [r4, #0x8]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	b       branch_2233b54
@ 0x2233ac6

.thumb
branch_2233ac6: @ 2233ac6 :thumb
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2030030
	ldr     r1, [pc, #0xb0] @ 0x2233b84, (=0x2241ac0)
	ldr     r4, [r1, #0x0]
	mov     r1, #0x0
	strb    r0, [r4, #0x4]
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      Function_2030030
	mov     r2, #0x0
	strb    r0, [r4, #0x5]
	mov     r0, r5
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2030030
	strb    r0, [r4, #0x6]
	ldr     r0, [pc, #0x8c] @ 0x2233b84, (=0x2241ac0)
	ldr     r5, [r0, #0x0]
	ldr     r0, [pc, #0x98] @ 0x2233b94, (=0x4f8)
	ldr     r0, [r5, r0]
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e430
	mov     r7, r0
	ldrb    r0, [r4, #0x5]
	ldrb    r1, [r4, #0x4]
	bl      Function_205e430
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, r7
	bl      Function_2030698
	strh    r0, [r5, #0xc]
	ldr     r0, [pc, #0x5c] @ 0x2233b84, (=0x2241ac0)
	ldr     r4, [r0, #0x0]
	ldr     r0, [pc, #0x68] @ 0x2233b94, (=0x4f8)
	ldr     r0, [r4, r0]
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	ldrb    r0, [r4, #0x5]
	ldrb    r1, [r4, #0x4]
	bl      Function_205e488
	mov     r7, r0
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e488
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, r7
	bl      Function_2030698
	strh    r0, [r4, #0x8]
.thumb
branch_2233b54: @ 2233b54 :thumb
	ldr     r0, [pc, #0x2c] @ 0x2233b84, (=0x2241ac0)
	mov     r1, #0x7
	ldr     r4, [r0, #0x0]
	ldrh    r0, [r4, #0xc]
	blx     _s32_div_f
	strh    r0, [r4, #0xe]
	ldrb    r0, [r4, #0x4]
	bl      Function_223aed4
	cmp     r0, #0x1
	bne     branch_2233b78
	ldr     r0, [pc, #0x14] @ 0x2233b84, (=0x2241ac0)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x20] @ 0x2233b94, (=0x4f8)
	ldr     r0, [r1, r0]
	bl      Function_222e630
.thumb
branch_2233b78: @ 2233b78 :thumb
	ldr     r0, [pc, #0x8] @ 0x2233b84, (=0x2241ac0)
	ldr     r0, [r0, #0x0]
	pop     {r3-r7,pc}
@ 0x2233b7e


.align 2


.word 0x708 @ 0x2233b80
.word 0x2241ac0 @ 0x2233b84
.word 0x4f4 @ 0x2233b88
.word 0x4d4 @ 0x2233b8c
.word 0x4d8 @ 0x2233b90
.word 0x4f8 @ 0x2233b94
.thumb
Function_2233b98: @ 2233b98 :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	bne     branch_2233ba4
	bl      Function_2233bac
	pop     {r3,pc}
@ 0x2233ba4

.thumb
branch_2233ba4: @ 2233ba4 :thumb
	bl      Function_2233f1c
	pop     {r3,pc}
@ 0x2233baa


.align 2, 0


.thumb
Function_2233bac: @ 2233bac :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1fc
	add     sp, #-0xd8
	mov     r4, r0
	bl      Function_223af34
	mov     r1, r0
	mov     r2, r4
	ldrb    r0, [r4, #0x4]
	add     r2, #0x18
	mov     r3, #0xe
	bl      Function_223a860
	mov     r0, r4
	bl      Function_223af34
	mov     r3, #0x26
	lsl     r3, r3, #4
	add     r1, r4, r3
	str     r1, [sp, #0x0]
	mov     r1, r3
	mov     r2, r3
	add     r1, #0x8
	add     r1, r4, r1
	str     r1, [sp, #0x4]
	ldrh    r1, [r4, #0x8]
	sub     r2, #0xc
	add     r3, #0x20
	str     r1, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	ldrb    r1, [r4, #0x5]
	add     r2, r4, r2
	add     r3, r4, r3
	bl      Function_223aaa0
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x0
	bl      Function_2233d80
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_2233d80
	mov     r0, #0x6
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	mov     r12, r0
	mov     r3, r4
	add     r5, sp, #0x34
.thumb
branch_2233c16: @ 2233c16 :thumb
	mov     r0, #0xa
	lsl     r0, r0, #6
	add     r2, r3, r0
	mov     r7, r5
	mov     r6, #0x7
.thumb
branch_2233c20: @ 2233c20 :thumb
	ldmia   r2!, {r0,r1}
	stmia   r7!, {r0,r1}
	.hword  0x1e76 @ sub r6, r6, #0x1
	bne     branch_2233c20
	mov     r0, r12
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r3, #0x38
	add     r5, #0x38
	mov     r12, r0
	cmp     r0, #0x6
	blt     branch_2233c16
	ldrb    r0, [r4, #0x4]
	bl      Function_223aed4
	cmp     r0, #0x1
	bne     branch_2233ce4
	mov     r0, #0xa
	lsl     r0, r0, #6
	ldr     r7, [pc, #0x128] @ 0x2233d70, (=0x282)
	mov     r5, #0x0
	add     r0, r4, r0
	add     r1, sp, #0x28
	mov     r2, r4
	add     r3, sp, #0x1c
.thumb
branch_2233c50: @ 2233c50 :thumb
	ldrh    r6, [r0, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r0, #0x38
	lsl     r6, r6, #21
	lsr     r6, r6, #21
	strh    r6, [r1, #0x0]
	ldrh    r6, [r2, r7]
	.hword  0x1c89 @ add r1, r1, #0x2
	add     r2, #0x38
	strh    r6, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r5, #0x6
	blt     branch_2233c50
	mov     r0, r4
	bl      Function_223af34
	mov     r3, #0x59
	lsl     r3, r3, #4
	add     r1, r4, r3
	str     r1, [sp, #0x0]
	mov     r1, r3
	add     r1, #0x8
	add     r1, r4, r1
	str     r1, [sp, #0x4]
	mov     r1, r3
	mov     r2, r3
	sub     r1, #0x10
	ldrh    r1, [r4, r1]
	sub     r2, #0xc
	add     r3, #0x20
	str     r1, [sp, #0x8]
	add     r1, sp, #0x28
	str     r1, [sp, #0xc]
	add     r1, sp, #0x1c
	str     r1, [sp, #0x10]
	ldrb    r1, [r4, #0x5]
	add     r2, r4, r2
	add     r3, r4, r3
	bl      Function_223aaa0
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_2233d80
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x1
	bl      Function_2233d80
	mov     r0, #0xc
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	mov     r5, r4
	add     r6, sp, #0x34
.thumb
branch_2233cc0: @ 2233cc0 :thumb
	mov     r0, #0x5b
	lsl     r0, r0, #4
	add     r3, r5, r0
	mov     r0, #0x15
	lsl     r0, r0, #4
	add     r2, r6, r0
	mov     r7, #0x7
.thumb
branch_2233cce: @ 2233cce :thumb
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	.hword  0x1e7f @ sub r7, r7, #0x1
	bne     branch_2233cce
	ldr     r0, [sp, #0x14]
	add     r5, #0x38
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r6, #0x38
	str     r0, [sp, #0x14]
	cmp     r0, #0x6
	blt     branch_2233cc0
.thumb
branch_2233ce4: @ 2233ce4 :thumb
	ldrb    r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_223aa74
	ldr     r2, [pc, #0x84] @ 0x2233d74, (=0x3d2)
	add     r3, sp, #0x34
	add     r1, r4, r2
	str     r1, [sp, #0x0]
	mov     r1, r2
	add     r1, #0x1e
	add     r1, r4, r1
	str     r1, [sp, #0x4]
	mov     r1, r2
	add     r1, #0x8
	add     r1, r4, r1
	add     r2, #0xe
	str     r1, [sp, #0x8]
	add     r1, r4, r2
	str     r1, [sp, #0xc]
	ldr     r1, [sp, #0x18]
	str     r1, [sp, #0x10]
	ldrb    r1, [r4, #0x6]
	ldrb    r2, [r4, #0x5]
	lsl     r1, r1, #1
	add     r1, r4, r1
	ldrh    r1, [r1, #0x18]
	bl      Function_223ab0c
	mov     r0, #0xa
	lsl     r0, r0, #6
	mov     r7, #0x0
	add     r6, r4, r0
.thumb
branch_2233d24: @ 2233d24 :thumb
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r5, r0
	mov     r0, r4
	bl      Function_223ada0
	mov     r2, r0
	mov     r0, r6
	mov     r1, r5
	bl      Function_222df40
	ldr     r0, [pc, #0x38] @ 0x2233d78, (=0x4f8)
	ldr     r1, [pc, #0x3c] @ 0x2233d7c, (=0x4d4)
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, r5
	bl      Function_222e1c0
	mov     r0, r5
	bl      free
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x38
	cmp     r7, #0x6
	blt     branch_2233d24
	ldr     r6, [pc, #0x20] @ 0x2233d7c, (=0x4d4)
	mov     r5, #0x0
.thumb
branch_2233d5c: @ 2233d5c :thumb
	ldr     r0, [r4, r6]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x6
	blt     branch_2233d5c
	add     sp, #0x1fc
	add     sp, #0xd8
	pop     {r4-r7,pc}
@ 0x2233d70

.word 0x282 @ 0x2233d70
.word 0x3d2 @ 0x2233d74
.word 0x4f8 @ 0x2233d78
.word 0x4d4 @ 0x2233d7c
.thumb
Function_2233d80: @ 2233d80 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xdc
	mov     r4, r0
	mov     r5, r1
	mov     r6, r2
	bl      PRNG
	mov     r1, #0x6
	blx     _s32_div_f
	lsl     r0, r1, #16
	lsr     r2, r0, #16
	cmp     r6, #0x0
	bne     branch_2233e5c
	mov     r0, #0x95
	lsl     r0, r0, #2
	add     r1, r4, r0
	lsl     r3, r5, #1
	str     r1, [sp, #0x5c]
	ldrh    r1, [r1, r3]
	str     r3, [sp, #0x20]
	add     r6, sp, #0xa4
	str     r1, [sp, #0x1c]
	mov     r1, r0
	add     r1, #0xc
	add     r1, r4, r1
	str     r1, [sp, #0x24]
	ldrb    r1, [r1, r5]
	mov     r7, #0x7
	str     r1, [sp, #0x18]
	mov     r1, r0
	add     r1, #0x14
	add     r1, r4, r1
	str     r1, [sp, #0x28]
	lsl     r1, r5, #2
	ldr     r3, [sp, #0x28]
	str     r1, [sp, #0x2c]
	ldr     r1, [r3, r1]
	add     r0, #0x2c
	str     r1, [sp, #0x14]
	add     r1, r4, r0
	mov     r0, #0x38
	mul     r0, r5
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x30]
.thumb
branch_2233ddc: @ 2233ddc :thumb
	ldr     r3, [sp, #0x30]
	.hword  0x1e7f @ sub r7, r7, #0x1
	ldmia   r3!, {r0,r1}
	str     r3, [sp, #0x30]
	stmia   r6!, {r0,r1}
	bne     branch_2233ddc
	mov     r0, #0x95
	lsl     r0, r0, #2
	add     r1, r4, r0
	str     r1, [sp, #0x34]
	ldr     r3, [sp, #0x34]
	lsl     r1, r2, #1
	ldrh    r6, [r3, r1]
	str     r1, [sp, #0x38]
	ldr     r3, [sp, #0x20]
	ldr     r1, [sp, #0x5c]
	strh    r6, [r1, r3]
	mov     r1, r0
	add     r1, #0xc
	add     r1, r4, r1
	ldrb    r3, [r1, r2]
	str     r1, [sp, #0x3c]
	ldr     r1, [sp, #0x24]
	strb    r3, [r1, r5]
	mov     r1, r0
	add     r1, #0x14
	add     r7, r4, r1
	lsl     r1, r2, #2
	str     r1, [sp, #0x60]
	ldr     r5, [r7, r1]
	ldr     r3, [sp, #0x28]
	ldr     r1, [sp, #0x2c]
	add     r0, #0x2c
	str     r5, [r3, r1]
	add     r1, r4, r0
	mov     r0, #0x38
	mul     r0, r2
	add     r6, r1, r0
	mov     r5, r6
	mov     r4, #0x7
.thumb
branch_2233e2c: @ 2233e2c :thumb
	ldr     r3, [sp, #0x10]
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	str     r3, [sp, #0x10]
	.hword  0x1e64 @ sub r4, r4, #0x1
	bne     branch_2233e2c
	ldr     r3, [sp, #0x1c]
	ldr     r1, [sp, #0x34]
	ldr     r0, [sp, #0x38]
	strh    r3, [r1, r0]
	ldr     r1, [sp, #0x18]
	ldr     r0, [sp, #0x3c]
	add     r3, sp, #0xa4
	strb    r1, [r0, r2]
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0x60]
	mov     r2, #0x7
	str     r1, [r7, r0]
.thumb
branch_2233e50: @ 2233e50 :thumb
	ldmia   r3!, {r0,r1}
	stmia   r6!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2233e50
	add     sp, #0xdc
	pop     {r4-r7,pc}
@ 0x2233e5c

.thumb
branch_2233e5c: @ 2233e5c :thumb
	ldr     r0, [pc, #0xb8] @ 0x2233f18, (=0x584)
	lsl     r3, r5, #1
	add     r1, r4, r0
	str     r1, [sp, #0x64]
	ldrh    r1, [r1, r3]
	str     r3, [sp, #0x40]
	add     r6, sp, #0x6c
	str     r1, [sp, #0x8]
	mov     r1, r0
	add     r1, #0xc
	add     r1, r4, r1
	str     r1, [sp, #0x44]
	ldrb    r1, [r1, r5]
	mov     r7, #0x7
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0x14
	add     r1, r4, r1
	str     r1, [sp, #0x48]
	lsl     r1, r5, #2
	ldr     r3, [sp, #0x48]
	str     r1, [sp, #0x4c]
	ldr     r1, [r3, r1]
	add     r0, #0x2c
	str     r1, [sp, #0x0]
	add     r1, r4, r0
	mov     r0, #0x38
	mul     r0, r5
	add     r0, r1, r0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x50]
.thumb
branch_2233e9a: @ 2233e9a :thumb
	ldr     r3, [sp, #0x50]
	.hword  0x1e7f @ sub r7, r7, #0x1
	ldmia   r3!, {r0,r1}
	str     r3, [sp, #0x50]
	stmia   r6!, {r0,r1}
	bne     branch_2233e9a
	ldr     r3, [pc, #0x70] @ 0x2233f18, (=0x584)
	add     r0, r4, r3
	str     r0, [sp, #0x54]
	ldr     r1, [sp, #0x54]
	lsl     r0, r2, #1
	ldrh    r6, [r1, r0]
	str     r0, [sp, #0x58]
	ldr     r1, [sp, #0x40]
	ldr     r0, [sp, #0x64]
	strh    r6, [r0, r1]
	mov     r0, r3
	add     r0, #0xc
	add     r0, r4, r0
	ldrb    r1, [r0, r2]
	mov     r12, r0
	ldr     r0, [sp, #0x44]
	strb    r1, [r0, r5]
	mov     r0, r3
	add     r0, #0x14
	add     r7, r4, r0
	lsl     r0, r2, #2
	str     r0, [sp, #0x68]
	ldr     r5, [r7, r0]
	ldr     r1, [sp, #0x48]
	ldr     r0, [sp, #0x4c]
	add     r3, #0x2c
	str     r5, [r1, r0]
	mov     r0, #0x38
	add     r1, r4, r3
	mul     r0, r2
	add     r5, r1, r0
	mov     r6, r5
	mov     r4, #0x7
.thumb
branch_2233ee8: @ 2233ee8 :thumb
	ldr     r3, [sp, #0xc]
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	str     r3, [sp, #0xc]
	.hword  0x1e64 @ sub r4, r4, #0x1
	bne     branch_2233ee8
	ldr     r3, [sp, #0x8]
	ldr     r1, [sp, #0x54]
	ldr     r0, [sp, #0x58]
	strh    r3, [r1, r0]
	ldr     r1, [sp, #0x4]
	mov     r0, r12
	strb    r1, [r0, r2]
	ldr     r1, [sp, #0x0]
	ldr     r0, [sp, #0x68]
	add     r3, sp, #0x6c
	str     r1, [r7, r0]
	mov     r2, #0x7
.thumb
branch_2233f0c: @ 2233f0c :thumb
	ldmia   r3!, {r0,r1}
	stmia   r5!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2233f0c
	add     sp, #0xdc
	pop     {r4-r7,pc}
@ 0x2233f18

.word 0x584 @ 0x2233f18
.thumb
Function_2233f1c: @ 2233f1c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x19c
	mov     r5, r0
	ldrb    r0, [r5, #0x4]
	bl      Function_223aa50
	ldr     r7, [pc, #0x18c] @ 0x22340b8, (=0x4f4)
	mov     r4, #0x0
	mov     r6, r5
.thumb
branch_2233f2e: @ 2233f2e :thumb
	lsl     r2, r4, #24
	ldr     r0, [r5, r7]
	mov     r1, #0x3
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030030
	strh    r0, [r6, #0x18]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r4, #0xe
	blt     branch_2233f2e
	add     r0, sp, #0x28
	mov     r4, #0x0
	add     r6, sp, #0x40
	str     r0, [sp, #0x14]
	add     r7, sp, #0x20
	str     r5, [sp, #0x10]
branch_2233f52: @ 2233f52 :thumb
	ldr     r0, [pc, #0x164] @ 0x22340b8, (=0x4f4)
	lsl     r2, r4, #24
	ldr     r0, [r5, r0]
	mov     r1, #0x4
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030030
	strh    r0, [r6, #0x0]
	ldr     r0, [pc, #0x150] @ 0x22340b8, (=0x4f4)
	lsl     r2, r4, #24
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030030
	ldr     r1, [sp, #0x14]
	lsl     r2, r4, #24
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x13c] @ 0x22340b8, (=0x4f4)
	mov     r1, #0x5
	ldr     r0, [r5, r0]
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030030
	strb    r0, [r7, #0x0]
	ldrh    r2, [r6, #0x0]
	ldr     r1, [sp, #0x10]
	ldr     r0, [pc, #0x12c] @ 0x22340bc, (=0x4e8)
	.hword  0x1c64 @ add r4, r4, #0x1
	strh    r2, [r1, r0]
	ldr     r0, [sp, #0x14]
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x14]
	mov     r0, r1
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1c7f @ add r7, r7, #0x1
	str     r0, [sp, #0x10]
	cmp     r4, #0x4
	blt     branch_2233f52
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	mov     r0, #0xb3
	str     r0, [sp, #0xc]
	add     r0, sp, #0x4c
	add     r1, sp, #0x40
	add     r2, sp, #0x20
	add     r3, sp, #0x28
	bl      Function_222e330
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r6, r0
	mov     r7, #0x0
	add     r4, sp, #0x4c
.thumb
branch_2233fd0: @ 2233fd0 :thumb
	mov     r0, r5
	bl      Function_223ada0
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_222df40
	ldr     r0, [pc, #0xdc] @ 0x22340c0, (=0x4f8)
	ldr     r1, [pc, #0xe0] @ 0x22340c4, (=0x4d4)
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      Function_222e1c0
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x38
	cmp     r7, #0x4
	blt     branch_2233fd0
	mov     r0, r6
	bl      free
	add     r0, sp, #0x28
	mov     r4, #0x0
	add     r6, sp, #0x40
	str     r0, [sp, #0x1c]
	add     r7, sp, #0x20
	str     r5, [sp, #0x18]
.thumb
branch_2234008: @ 2234008 :thumb
	ldr     r0, [pc, #0xac] @ 0x22340b8, (=0x4f4)
	lsl     r2, r4, #24
	ldr     r0, [r5, r0]
	mov     r1, #0x7
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030030
	strh    r0, [r6, #0x0]
	ldr     r0, [pc, #0x9c] @ 0x22340b8, (=0x4f4)
	lsl     r2, r4, #24
	ldr     r0, [r5, r0]
	mov     r1, #0x9
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030030
	ldr     r1, [sp, #0x1c]
	lsl     r2, r4, #24
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x84] @ 0x22340b8, (=0x4f4)
	mov     r1, #0x8
	ldr     r0, [r5, r0]
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030030
	strb    r0, [r7, #0x0]
	ldrh    r2, [r6, #0x0]
	ldr     r1, [sp, #0x18]
	ldr     r0, [pc, #0x80] @ 0x22340c8, (=0x3d2)
	.hword  0x1c64 @ add r4, r4, #0x1
	strh    r2, [r1, r0]
	ldr     r0, [sp, #0x1c]
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x1c]
	mov     r0, r1
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1c7f @ add r7, r7, #0x1
	str     r0, [sp, #0x18]
	cmp     r4, #0x4
	blt     branch_2234008
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	mov     r0, #0xb3
	str     r0, [sp, #0xc]
	add     r0, sp, #0x4c
	add     r1, sp, #0x40
	add     r2, sp, #0x20
	add     r3, sp, #0x28
	bl      Function_222e330
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r6, r0
	mov     r7, #0x0
	add     r4, sp, #0x4c
.thumb
branch_2234086: @ 2234086 :thumb
	mov     r0, r5
	bl      Function_223ada0
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_222df40
	ldr     r0, [pc, #0x28] @ 0x22340c0, (=0x4f8)
	ldr     r1, [pc, #0x30] @ 0x22340cc, (=0x4d8)
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      Function_222e1c0
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x38
	cmp     r7, #0x4
	blt     branch_2234086
	mov     r0, r6
	bl      free
	add     sp, #0x19c
	pop     {r4-r7,pc}
@ 0x22340b6


.align 2


.word 0x4f4 @ 0x22340b8
.word 0x4e8 @ 0x22340bc
.word 0x4f8 @ 0x22340c0
.word 0x4d4 @ 0x22340c4
.word 0x3d2 @ 0x22340c8
.word 0x4d8 @ 0x22340cc
.thumb
Function_22340d0: @ 22340d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_22340fe
	ldr     r0, [pc, #0x28] @ 0x2234100, (=0x4d4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22340e2
	bl      free
.thumb
branch_22340e2: @ 22340e2 :thumb
	ldr     r0, [pc, #0x20] @ 0x2234104, (=0x4d8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22340ee
	bl      free
.thumb
branch_22340ee: @ 22340ee :thumb
	ldr     r2, [pc, #0x18] @ 0x2234108, (=0x708)
	mov     r0, r4
	mov     r1, #0x0
	blx     MI_CpuFill8
	mov     r0, r4
	bl      free
.thumb
branch_22340fe: @ 22340fe :thumb
	pop     {r4,pc}
@ 0x2234100

.word 0x4d4 @ 0x2234100
.word 0x4d8 @ 0x2234104
.word 0x708 @ 0x2234108
.thumb
Function_223410c: @ 223410c :thumb
	push    {r3-r7,lr}
	ldr     r7, [pc, #0x1c] @ 0x223412c, (=0x4dc)
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
.thumb
branch_2234116: @ 2234116 :thumb
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	bl      Function_2234130
	strh    r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x6
	blt     branch_2234116
	pop     {r3-r7,pc}
@ 0x223412c

.word 0x4dc @ 0x223412c
.thumb
Function_2234130: @ 2234130 :thumb
	push    {r3,lr}
	cmp     r1, #0x6
	bcc     branch_223413e
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223413e

.thumb
branch_223413e: @ 223413e :thumb
	lsl     r1, r1, #1
	add     r0, r0, r1
	ldrh    r0, [r0, #0x10]
	pop     {r3,pc}
@ 0x2234146


.align 2, 0


.thumb
Function_2234148: @ 2234148 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldr     r0, [pc, #0x2c4] @ 0x2234414, (=0x4f8)
	mov     r6, r1
	ldr     r0, [r5, r0]
	bl      Function_20300f4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2b8] @ 0x2234414, (=0x4f8)
	ldr     r0, [r5, r0]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	ldrb    r0, [r5, #0x4]
	bl      Function_223aa50
	ldrb    r0, [r5, #0x4]
	mov     r1, #0x1
	bl      Function_223aa74
	ldrb    r1, [r5, #0x5]
	add     r0, sp, #0x4
	add     r3, sp, #0xc
	strb    r1, [r0, #0x8]
	ldr     r0, [pc, #0x29c] @ 0x2234418, (=0x4f4)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_202ff84
	ldrb    r1, [r5, #0x4]
	add     r0, sp, #0x4
	mov     r2, #0x0
	strb    r1, [r0, #0x8]
	ldr     r0, [pc, #0x288] @ 0x2234418, (=0x4f4)
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	add     r3, sp, #0xc
	bl      Function_202ff84
	ldr     r0, [pc, #0x27c] @ 0x2234418, (=0x4f4)
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	bl      Function_202ff70
	ldrb    r1, [r5, #0x6]
	add     r0, sp, #0x4
	mov     r2, #0x0
	strb    r1, [r0, #0x8]
	ldr     r0, [pc, #0x268] @ 0x2234418, (=0x4f4)
	mov     r1, #0x2
	ldr     r0, [r5, r0]
	add     r3, sp, #0xc
	bl      Function_202ff84
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e488
	mov     r7, r0
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e488
	bl      Function_205e6a8
	mov     r2, r0
	ldrh    r3, [r5, #0x8]
	mov     r0, r4
	mov     r1, r7
	bl      Function_20306e4
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e430
	mov     r7, r0
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e430
	bl      Function_205e6a8
	mov     r2, r0
	ldrh    r3, [r5, #0xc]
	mov     r0, r4
	mov     r1, r7
	bl      Function_20306e4
	cmp     r6, #0x2
	beq     branch_22342f4
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e45c
	mov     r6, r0
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e45c
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_2030698
	mov     r6, r0
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e45c
	mov     r7, r0
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e45c
	bl      Function_205e6a8
	mov     r2, r0
	ldrh    r3, [r5, #0xc]
	mov     r0, r4
	mov     r1, r7
	bl      Function_2030848
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e45c
	mov     r7, r0
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e45c
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r7
	bl      Function_2030698
	ldrh    r1, [r5, #0xc]
	cmp     r1, r6
	bne     branch_223428e
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e4b4
	mov     r6, r0
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e4b4
	bl      Function_205e6a8
	mov     r2, r0
	ldrh    r3, [r5, #0x8]
	mov     r0, r4
	mov     r1, r6
	bl      Function_2030848
	b       branch_22342b4

branch_223428e: @ 223428e :thumb
	cmp     r6, r0
	bcs     branch_22342b4
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e4b4
	mov     r6, r0
	ldrb    r0, [r5, #0x5]
	ldrb    r1, [r5, #0x4]
	bl      Function_205e4b4
	bl      Function_205e6a8
	mov     r2, r0
	ldrh    r3, [r5, #0x8]
	mov     r0, r4
	mov     r1, r6
	bl      Function_20306e4
branch_22342b4: @ 22342b4 :thumb
	ldrb    r1, [r5, #0xa]
	add     r0, sp, #0x4
	strb    r1, [r0, #0x8]
	ldrb    r2, [r5, #0x5]
	ldrb    r3, [r5, #0x4]
	ldr     r0, [sp, #0x0]
	lsl     r2, r2, #2
	add     r2, r3, r2
	lsl     r2, r2, #24
	mov     r1, #0xa
	lsr     r2, r2, #24
	add     r3, sp, #0xc
	bl      Function_20300b0
	ldrb    r0, [r5, #0x4]
	cmp     r0, #0x3
	bne     branch_22342f4
	ldrb    r0, [r5, #0x5]
	cmp     r0, #0x0
	bne     branch_22342e0
	mov     r6, #0x66
	b       branch_22342e2
@ 0x22342e0

.thumb
branch_22342e0: @ 22342e0 :thumb
	mov     r6, #0x68
.thumb
branch_22342e2: @ 22342e2 :thumb
	mov     r0, r6
	bl      Function_205e6a8
	mov     r2, r0
	ldrb    r3, [r5, #0xa]
	mov     r0, r4
	mov     r1, r6
	bl      Function_20306e4
.thumb
branch_22342f4: @ 22342f4 :thumb
	ldr     r7, [pc, #0x120] @ 0x2234418, (=0x4f4)
	mov     r4, #0x0
	add     r6, sp, #0x4
.thumb
branch_22342fa: @ 22342fa :thumb
	lsl     r0, r4, #1
	add     r0, r5, r0
	ldrh    r0, [r0, #0x18]
	lsl     r2, r4, #24
	mov     r1, #0x3
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, r7]
	lsr     r2, r2, #24
	add     r3, sp, #0x4
	bl      Function_202ff84
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0xe
	bcc     branch_22342fa
	ldr     r0, [pc, #0x100] @ 0x223441c, (=0x4d4)
	ldr     r0, [r5, r0]
	bl      GetNrOfPkmnInParty
	mov     r7, r0
	ldr     r4, [pc, #0xf8] @ 0x2234420, (=0x0)
	beq     branch_2234394
.thumb
branch_2234328: @ 2234328 :thumb
	ldr     r0, [pc, #0xf0] @ 0x223441c, (=0x4d4)
	mov     r1, r4
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	mov     r6, r0
	lsl     r0, r4, #1
	add     r1, r5, r0
	ldr     r0, [pc, #0xe8] @ 0x2234424, (=0x4e8)
	lsl     r2, r4, #24
	ldrh    r1, [r1, r0]
	add     r0, sp, #0x4
	lsr     r2, r2, #24
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0xd0] @ 0x2234418, (=0x4f4)
	mov     r1, #0x4
	ldr     r0, [r5, r0]
	add     r3, sp, #0x4
	bl      Function_202ff84
	mov     r0, r6
	mov     r1, #0x47
	mov     r2, #0x0
	bl      GetPkmnData
	add     r1, sp, #0x4
	strb    r0, [r1, #0x8]
	ldr     r0, [pc, #0xb8] @ 0x2234418, (=0x4f4)
	lsl     r2, r4, #24
	ldr     r0, [r5, r0]
	mov     r1, #0x5
	lsr     r2, r2, #24
	add     r3, sp, #0xc
	bl      Function_202ff84
	mov     r1, #0x0
	mov     r0, r6
	mov     r2, r1
	bl      GetPkmnData
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x9c] @ 0x2234418, (=0x4f4)
	lsl     r2, r4, #24
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	lsr     r2, r2, #24
	add     r3, sp, #0x10
	bl      Function_202ff84
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, r7
	bcc     branch_2234328
.thumb
branch_2234394: @ 2234394 :thumb
	ldr     r0, [pc, #0x90] @ 0x2234428, (=0x4d8)
	ldr     r0, [r5, r0]
	bl      GetNrOfPkmnInParty
	mov     r7, r0
	ldr     r4, [pc, #0x80] @ 0x2234420, (=0x0)
	beq     branch_223440e
.thumb
branch_22343a2: @ 22343a2 :thumb
	ldr     r0, [pc, #0x84] @ 0x2234428, (=0x4d8)
	mov     r1, r4
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	mov     r6, r0
	lsl     r0, r4, #1
	add     r1, r5, r0
	ldr     r0, [pc, #0x78] @ 0x223442c, (=0x3d2)
	lsl     r2, r4, #24
	ldrh    r1, [r1, r0]
	add     r0, sp, #0x4
	lsr     r2, r2, #24
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x58] @ 0x2234418, (=0x4f4)
	mov     r1, #0x7
	ldr     r0, [r5, r0]
	add     r3, sp, #0x4
	bl      Function_202ff84
	mov     r0, r6
	mov     r1, #0x47
	mov     r2, #0x0
	bl      GetPkmnData
	add     r1, sp, #0x4
	strb    r0, [r1, #0x8]
	ldr     r0, [pc, #0x3c] @ 0x2234418, (=0x4f4)
	lsl     r2, r4, #24
	ldr     r0, [r5, r0]
	mov     r1, #0x8
	lsr     r2, r2, #24
	add     r3, sp, #0xc
	bl      Function_202ff84
	mov     r1, #0x0
	mov     r0, r6
	mov     r2, r1
	bl      GetPkmnData
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x20] @ 0x2234418, (=0x4f4)
	lsl     r2, r4, #24
	ldr     r0, [r5, r0]
	mov     r1, #0x9
	lsr     r2, r2, #24
	add     r3, sp, #0x10
	bl      Function_202ff84
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, r7
	bcc     branch_22343a2
.thumb
branch_223440e: @ 223440e :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2234412


.align 2


.word 0x4f8 @ 0x2234414
.word 0x4f4 @ 0x2234418
.word 0x4d4 @ 0x223441c
.word 0x0 @ 0x2234420
.word 0x4e8 @ 0x2234424
.word 0x4d8 @ 0x2234428
.word 0x3d2 @ 0x223442c
.thumb
Function_2234430: @ 2234430 :thumb
	ldrb    r1, [r0, #0x6]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x6]
	ldrb    r0, [r0, #0x6]
	bx      lr
@ 0x223443a


.align 2, 0


.thumb
Function_223443c: @ 223443c :thumb
	ldrb    r0, [r0, #0x6]
	bx      lr
@ 0x2234440

.thumb
Function_2234440: @ 2234440 :thumb
	push    {r4,lr}
	add     sp, #-0x30
	mov     r2, r0
	ldrb    r4, [r2, #0x6]
	mov     r3, #0x7
	mul     r3, r1
	add     r1, r4, r3
	lsl     r1, r1, #24
	lsr     r1, r1, #23
	add     r1, r2, r1
	ldrh    r1, [r1, #0x18]
	add     r0, sp, #0x0
	mov     r2, #0xb
	mov     r3, #0xb2
	bl      Function_222dd04
	bl      free
	add     r0, sp, #0x0
	ldrh    r0, [r0, #0x4]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_222e10c
	add     sp, #0x30
	pop     {r4,pc}
@ 0x2234474

.thumb
Function_2234474: @ 2234474 :thumb
	ldr     r3, [pc, #0x4] @ 0x223447c, (=0x2234149)
	mov     r1, #0x1
	bx      r3
@ 0x223447a


.align 2


.word Function_2234148+1 @ =0x2234149, 0x223447c
.thumb
Function_2234480: @ 2234480 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0xa]
	ldrh    r1, [r0, #0xe]
	cmp     r1, #0x8
	bcs     branch_223448e
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r0, #0xe]
.thumb
branch_223448e: @ 223448e :thumb
	ldr     r3, [pc, #0x8] @ 0x2234498, (=0x2234149)
	mov     r1, #0x0
	strb    r1, [r0, #0x6]
	bx      r3
@ 0x2234496


.align 2


.word Function_2234148+1 @ =0x2234149, 0x2234498
.thumb
Function_223449c: @ 223449c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldrb    r0, [r5, #0x4]
	bl      Function_223aa50
	str     r0, [sp, #0x4]
	ldrb    r0, [r5, #0x4]
	mov     r1, #0x1
	bl      Function_223aa74
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x223455c, (=0x4d4)
	ldr     r0, [r5, r0]
	bl      ZeroFillPkmnPartyStructure_6
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r6, r0
	ldr     r0, [sp, #0x4]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_223451a
	mov     r0, #0xa
	lsl     r0, r0, #6
	add     r0, r5, r0
	mov     r4, r5
	str     r0, [sp, #0x8]
.thumb
branch_22344d6: @ 22344d6 :thumb
	mov     r0, r5
	bl      Function_223ada0
	mov     r2, r0
	ldr     r0, [pc, #0x80] @ 0x2234560, (=0x4dc)
	mov     r1, #0x38
	ldrh    r0, [r4, r0]
	mul     r1, r0
	ldr     r0, [sp, #0x8]
	add     r0, r0, r1
	mov     r1, r6
	bl      Function_222df40
	ldr     r0, [pc, #0x70] @ 0x2234564, (=0x4f8)
	ldr     r1, [pc, #0x68] @ 0x223455c, (=0x4d4)
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      Function_222e1c0
	ldr     r0, [pc, #0x60] @ 0x2234560, (=0x4dc)
	.hword  0x1c7f @ add r7, r7, #0x1
	ldrh    r0, [r4, r0]
	lsl     r0, r0, #1
	add     r1, r5, r0
	mov     r0, #0x95
	lsl     r0, r0, #2
	ldrh    r1, [r1, r0]
	ldr     r0, [pc, #0x58] @ 0x2234568, (=0x4e8)
	strh    r1, [r4, r0]
	ldr     r0, [sp, #0x4]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r7, r0
	blt     branch_22344d6
.thumb
branch_223451a: @ 223451a :thumb
	ldr     r0, [sp, #0x0]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_2234550
	mov     r0, #0x3f
	lsl     r0, r0, #4
	add     r4, r5, r0
.thumb
branch_2234528: @ 2234528 :thumb
	mov     r0, r5
	bl      Function_223ada0
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_222df40
	ldr     r0, [pc, #0x28] @ 0x2234564, (=0x4f8)
	ldr     r1, [pc, #0x30] @ 0x223456c, (=0x4d8)
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      Function_222e1c0
	ldr     r0, [sp, #0x0]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x38
	cmp     r7, r0
	blt     branch_2234528
.thumb
branch_2234550: @ 2234550 :thumb
	mov     r0, r6
	bl      free
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223455a


.align 2


.word 0x4d4 @ 0x223455c
.word 0x4dc @ 0x2234560
.word 0x4f8 @ 0x2234564
.word 0x4e8 @ 0x2234568
.word 0x4d8 @ 0x223456c
.thumb
Function_2234570: @ 2234570 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x4c
	mov     r1, #0x0
	mov     r5, r0
	add     r2, sp, #0x3c
	add     r3, sp, #0x2c
	mov     r0, r1
.thumb
branch_223457e: @ 223457e :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r0, [r2, #0x0]
	strh    r0, [r3, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r1, #0x8
	blt     branch_223457e
	ldrb    r0, [r5, #0x4]
	mov     r1, #0x1
	bl      Function_223aa74
	str     r0, [sp, #0x1c]
	ldr     r0, [pc, #0x100] @ 0x2234698, (=0x4d4)
	ldr     r0, [r5, r0]
	bl      GetNrOfPkmnInParty
	mov     r7, #0x0
	str     r0, [sp, #0x20]
	cmp     r0, #0x0
	ble     branch_22345d8
	add     r6, sp, #0x3c
	add     r4, sp, #0x2c
.thumb
branch_22345aa: @ 22345aa :thumb
	ldr     r0, [pc, #0xec] @ 0x2234698, (=0x4d4)
	mov     r1, r7
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x24]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r6, #0x0]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x0]
	ldr     r0, [sp, #0x20]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r7, r0
	blt     branch_22345aa
.thumb
branch_22345d8: @ 22345d8 :thumb
	ldr     r0, [pc, #0xc0] @ 0x223469c, (=0x4d8)
	ldr     r0, [r5, r0]
	bl      GetNrOfPkmnInParty
	mov     r7, #0x0
	str     r0, [sp, #0x14]
	cmp     r0, #0x0
	ble     branch_2234636
	ldr     r0, [sp, #0x20]
	str     r5, [sp, #0x18]
	lsl     r1, r0, #1
	add     r0, sp, #0x3c
	add     r6, r0, r1
	add     r0, sp, #0x2c
	add     r4, r0, r1
.thumb
branch_22345f6: @ 22345f6 :thumb
	ldr     r0, [pc, #0xa4] @ 0x223469c, (=0x4d8)
	mov     r1, r7
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x28]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r6, #0x0]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x0]
	ldr     r1, [sp, #0x18]
	ldr     r0, [pc, #0x84] @ 0x22346a0, (=0x3d2)
	.hword  0x1c7f @ add r7, r7, #0x1
	ldrh    r2, [r1, r0]
	mov     r0, #0x95
	lsl     r0, r0, #2
	strh    r2, [r1, r0]
	mov     r0, r1
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r7, r0
	blt     branch_22345f6
.thumb
branch_2234636: @ 2234636 :thumb
	ldrb    r0, [r5, #0x6]
	ldrb    r1, [r5, #0x5]
	lsl     r0, r0, #1
	add     r0, r5, r0
	ldrh    r0, [r0, #0x18]
	bl      Function_223a8a8
	ldr     r1, [pc, #0x58] @ 0x22346a0, (=0x3d2)
	ldr     r3, [sp, #0x20]
	add     r2, r5, r1
	str     r2, [sp, #0x0]
	mov     r2, #0xb
	str     r2, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	ldr     r2, [sp, #0x14]
	add     r1, #0x8
	str     r0, [sp, #0xc]
	add     r0, r5, r1
	str     r0, [sp, #0x10]
	add     r2, r3, r2
	ldr     r3, [sp, #0x1c]
	add     r0, sp, #0x3c
	add     r1, sp, #0x2c
	bl      Function_223a918
	mov     r2, #0x3e
	lsl     r2, r2, #4
	add     r0, r5, r2
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x1c]
	mov     r1, r2
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	mov     r0, #0xb3
	str     r0, [sp, #0xc]
	mov     r0, r2
	add     r0, #0x10
	sub     r1, #0xe
	.hword  0x1f92 @ sub r2, r2, #0x6
	add     r0, r5, r0
	add     r1, r5, r1
	add     r2, r5, r2
	mov     r3, #0x0
	bl      Function_222e330
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x2234698

.word 0x4d4 @ 0x2234698
.word 0x4d8 @ 0x223469c
.word 0x3d2 @ 0x22346a0
.thumb
Function_22346a4: @ 22346a4 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x54] @ 0x22346fc, (=0x4dc)
	mov     r4, r0
	ldrh    r0, [r4, r1]
	cmp     r0, #0xff
	beq     branch_22346f8
	.hword  0x1f08 @ sub r0, r1, #0x4
	.hword  0x1c89 @ add r1, r1, #0x2
	ldrh    r1, [r4, r1]
	ldr     r0, [r4, r0]
	bl      GetAdrOfPkmnInParty
	ldr     r1, [pc, #0x40] @ 0x2234700, (=0x4d4)
	mov     r2, r0
	ldr     r0, [r4, r1]
	add     r1, #0x8
	ldrh    r1, [r4, r1]
	bl      Function_207a128
	ldr     r1, [pc, #0x38] @ 0x2234704, (=0x4de)
	ldrh    r0, [r4, r1]
	lsl     r0, r0, #1
	add     r2, r4, r0
	mov     r0, #0x95
	lsl     r0, r0, #2
	ldrh    r2, [r2, r0]
	.hword  0x1e88 @ sub r0, r1, #0x2
	ldrh    r0, [r4, r0]
	add     r1, #0xa
	lsl     r0, r0, #1
	add     r0, r4, r0
	strh    r2, [r0, r1]
	mov     r0, r4
	bl      Function_2234790
	ldr     r0, [pc, #0x1c] @ 0x2234708, (=0x4f8)
	ldr     r0, [r4, r0]
	bl      LoadVariableAreaAdress_14
	mov     r1, #0x40
	bl      Function_202cf28
.thumb
branch_22346f8: @ 22346f8 :thumb
	pop     {r4,pc}
@ 0x22346fa


.align 2


.word 0x4dc @ 0x22346fc
.word 0x4d4 @ 0x2234700
.word 0x4de @ 0x2234704
.word 0x4f8 @ 0x2234708
.thumb
Function_223470c: @ 223470c :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x4]
	bl      Function_223aa50
	ldrb    r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_223aa74
	mov     r6, r0
	ldr     r0, [pc, #0x64] @ 0x2234788, (=0x4d8)
	ldr     r0, [r4, r0]
	bl      ZeroFillPkmnPartyStructure_6
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	cmp     r6, #0x0
	ble     branch_2234768
	mov     r0, #0x3f
	lsl     r0, r0, #4
	add     r5, r4, r0
.thumb
branch_223473e: @ 223473e :thumb
	mov     r0, r4
	bl      Function_223ada0
	mov     r2, r0
	mov     r0, r5
	mov     r1, r7
	bl      Function_222df40
	ldr     r0, [pc, #0x3c] @ 0x223478c, (=0x4f8)
	ldr     r1, [pc, #0x34] @ 0x2234788, (=0x4d8)
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, r7
	bl      Function_222e1c0
	ldr     r0, [sp, #0x0]
	add     r5, #0x38
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
	cmp     r0, r6
	blt     branch_223473e
.thumb
branch_2234768: @ 2234768 :thumb
	mov     r0, r7
	bl      free
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2234784
	ldr     r7, [pc, #0x10] @ 0x2234788, (=0x4d8)
.thumb
branch_2234776: @ 2234776 :thumb
	ldr     r0, [r4, r7]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_2234776
.thumb
branch_2234784: @ 2234784 :thumb
	pop     {r3-r7,pc}
@ 0x2234786


.align 2


.word 0x4d8 @ 0x2234788
.word 0x4f8 @ 0x223478c
.thumb
Function_2234790: @ 2234790 :thumb
	ldrh    r2, [r0, #0x8]
	ldr     r1, [pc, #0xc] @ 0x22347a0, (=0x270f)
	cmp     r2, r1
	bcs     branch_223479c
	add     r1, r2, #0x1
	strh    r1, [r0, #0x8]
.thumb
branch_223479c: @ 223479c :thumb
	bx      lr
@ 0x223479e


.align 2


.word 0x270f @ 0x22347a0
.thumb
Function_22347a4: @ 22347a4 :thumb
	push    {r3,lr}
	cmp     r1, #0x6
	bhi     branch_22347f4
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22347b6

Jumppoints_22347b6:
.hword branch_22347c4 - Jumppoints_22347b6 - 2
.hword branch_22347ca - Jumppoints_22347b6 - 2
.hword branch_22347d0 - Jumppoints_22347b6 - 2
.hword branch_22347d6 - Jumppoints_22347b6 - 2
.hword branch_22347dc - Jumppoints_22347b6 - 2
.hword branch_22347e6 - Jumppoints_22347b6 - 2
.hword branch_22347f0 - Jumppoints_22347b6 - 2
.thumb
branch_22347c4: @ 22347c4 :thumb
	bl      Function_222eef8
	pop     {r3,pc}
@ 0x22347ca

.thumb
branch_22347ca: @ 22347ca :thumb
	bl      Function_222ef64
	pop     {r3,pc}
@ 0x22347d0

.thumb
branch_22347d0: @ 22347d0 :thumb
	bl      Function_222efcc
	pop     {r3,pc}
@ 0x22347d6

.thumb
branch_22347d6: @ 22347d6 :thumb
	bl      Function_222f0b4
	pop     {r3,pc}
@ 0x22347dc

.thumb
branch_22347dc: @ 22347dc :thumb
	lsl     r1, r2, #24
	lsr     r1, r1, #24
	bl      Function_222f1a0
	pop     {r3,pc}
@ 0x22347e6

.thumb
branch_22347e6: @ 22347e6 :thumb
	lsl     r1, r2, #24
	lsr     r1, r1, #24
	bl      Function_222f1ec
	pop     {r3,pc}
@ 0x22347f0

.thumb
branch_22347f0: @ 22347f0 :thumb
	bl      Function_222f238
.thumb
branch_22347f4: @ 22347f4 :thumb
	pop     {r3,pc}
@ 0x22347f6


.align 2, 0


.thumb
Function_22347f8: @ 22347f8 :thumb
	ldrb    r3, [r0, #0x4]
	ldrh    r2, [r0, #0xe]
	cmp     r3, #0x1
	bhi     branch_223480e
	cmp     r2, #0x8
	bcc     branch_2234808
	mov     r1, #0x9
	b       branch_223481a
@ 0x2234808

.thumb
branch_2234808: @ 2234808 :thumb
	ldr     r1, [pc, #0x24] @ 0x2234830, (=0x223fa34)
	ldrb    r1, [r1, r2]
	b       branch_223481a
@ 0x223480e

.thumb
branch_223480e: @ 223480e :thumb
	cmp     r2, #0x8
	bcc     branch_2234816
	mov     r1, #0x15
	b       branch_223481a
@ 0x2234816

.thumb
branch_2234816: @ 2234816 :thumb
	ldr     r1, [pc, #0x1c] @ 0x2234834, (=0x223fa40)
	ldrb    r1, [r1, r2]
.thumb
branch_223481a: @ 223481a :thumb
	cmp     r3, #0x0
	bne     branch_223482a
	ldrh    r0, [r0, #0xc]
	cmp     r0, #0x15
	beq     branch_2234828
	cmp     r0, #0x31
	bne     branch_223482a
.thumb
branch_2234828: @ 2234828 :thumb
	mov     r1, #0x14
.thumb
branch_223482a: @ 223482a :thumb
	mov     r0, r1
	bx      lr
@ 0x223482e


.align 2


.word 0x223fa34 @ 0x2234830
.word 0x223fa40 @ 0x2234834
.thumb
Function_2234838: @ 2234838 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_222fc00
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_222fc00
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r6, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	lsl     r1, r7, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x0]
	lsl     r2, r4, #24
	lsl     r3, r6, #24
	ldr     r0, [r0, #0x8]
	ldr     r1, [sp, #0x4]
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_2234db4
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b980
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223488a


.align 2, 0


.thumb
Function_223488c: @ 223488c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fc00
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r4
	bl      Function_22350b0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22348a8

.thumb
Function_22348a8: @ 22348a8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	bl      Function_2235190
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22348ba


.align 2, 0


.thumb
Function_22348bc: @ 22348bc :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r7, r0
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r4, r0
	mov     r0, #0xb
	mov     r1, #0x20
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0x20
	mov     r5, r0
	blx     MI_CpuFill8
	ldr     r0, [r7, #0x8]
	ldr     r1, [pc, #0x90] @ 0x223497c, (=0x704)
	str     r0, [r5, #0x0]
	ldrb    r0, [r4, #0x4]
	add     r3, r4, r1
	sub     r1, #0xf
	strb    r0, [r5, #0x4]
	str     r4, [r5, #0x10]
	ldrb    r2, [r4, #0x4]
	lsl     r0, r2, #3
	add     r0, r2, r0
	add     r0, r3, r0
	str     r0, [r5, #0x8]
	mov     r0, #0x99
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	str     r0, [r5, #0xc]
	ldrh    r0, [r4, #0x8]
	strh    r0, [r5, #0x18]
	ldrb    r0, [r4, r1]
	strb    r0, [r5, #0x5]
	ldr     r0, [pc, #0x6c] @ 0x2234980, (=0xd84)
	add     r0, r4, r0
	str     r0, [r5, #0x14]
	ldr     r0, [r5, #0xc]
	bl      ZeroFillPkmnPartyStructure_6
	ldr     r0, [r7, #0x8]
	bl      LoadPokePartyAdress
	mov     r1, #0x26
	lsl     r1, r1, #4
	ldrb    r1, [r4, r1]
	mov     r7, r0
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	ldr     r0, [r5, #0xc]
	bl      CopyPkmnDataToParty
	ldrb    r0, [r5, #0x4]
	cmp     r0, #0x1
	bne     branch_2234950
	ldr     r1, [pc, #0x44] @ 0x2234984, (=0x261)
	mov     r0, r7
	ldrb    r1, [r4, r1]
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	ldr     r0, [r5, #0xc]
	bl      CopyPkmnDataToParty
	b       branch_2234964
@ 0x2234950

.thumb
branch_2234950: @ 2234950 :thumb
	add     r0, #0xfe
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bhi     branch_2234964
	ldr     r1, [pc, #0x2c] @ 0x2234988, (=0xd8c)
	ldr     r0, [r5, #0xc]
	ldr     r1, [r4, r1]
	bl      CopyPkmnDataToParty
.thumb
branch_2234964: @ 2234964 :thumb
	ldr     r0, [pc, #0x24] @ 0x223498c, (=0x2234a09)
	ldr     r1, [pc, #0x28] @ 0x2234990, (=0x223fa4c)
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x0]
	mov     r2, r5
	ldr     r0, [r0, #0x0]
	mov     r3, #0x0
	bl      Function_209b988
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223497a


.align 2


.word 0x704 @ 0x223497c
.word 0xd84 @ 0x2234980
.word 0x261 @ 0x2234984
.word 0xd8c @ 0x2234988
.word Function_2234a08+1 @ =0x2234a09, 0x223498c
.word 0x223fa4c @ 0x2234990
.thumb
Function_2234994: @ 2234994 :thumb
	push    {r3-r5,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r4, r0
	mov     r0, #0x7
	lsl     r0, r0, #8
	ldr     r5, [r4, r0]
	ldr     r0, [r5, #0x14]
	bl      Function_2052868
	str     r0, [r4, #0x14]
	mov     r0, r5
	bl      Function_20520a4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22349b8

.thumb
Function_22349b8: @ 22349b8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r6
	mov     r4, r0
	bl      Function_223b250
	mov     r6, r0
	mov     r0, #0x7
	lsl     r0, r0, #8
	str     r6, [r4, r0]
	ldr     r1, [pc, #0x1c] @ 0x2234a00, (=0x45f)
	mov     r0, #0x5
	mov     r2, #0x1
	bl      Function_2004550
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x10] @ 0x2234a04, (=JumpTable_BattleScreen)
	ldr     r0, [r0, #0x0]
	mov     r2, r6
	bl      Function_209b988
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2234a00

.word 0x45f @ 0x2234a00
.word JumpTable_BattleScreen @ 0x2234a04
.thumb
Function_2234a08: @ 2234a08 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	mov     r1, r4
	bl      Function_22351cc
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2234a1c

.thumb
Function_2234a1c: @ 2234a1c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r1, [r4, #0x1c]
	add     r2, r1, #0x1
	str     r2, [r4, #0x1c]
	ldrb    r7, [r1, #0x0]
	add     r1, r2, #0x1
	str     r1, [r4, #0x1c]
	ldrb    r6, [r2, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x1c]
	bl      Function_222fbe4
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r4, r0
	cmp     r7, #0x26
	bls     branch_2234a54
	b       branch_2234c62
@ 0x2234a54

.thumb
branch_2234a54: @ 2234a54 :thumb
	add     r1, r7, r7
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2234a60

Jumppoints_2234a60:
.hword branch_2234c62 - Jumppoints_2234a60 - 2
.hword branch_2234c62 - Jumppoints_2234a60 - 2
.hword branch_2234aae - Jumppoints_2234a60 - 2
.hword branch_2234ab2 - Jumppoints_2234a60 - 2
.hword branch_2234aba - Jumppoints_2234a60 - 2
.hword branch_2234ac0 - Jumppoints_2234a60 - 2
.hword branch_2234c62 - Jumppoints_2234a60 - 2
.hword branch_2234ace - Jumppoints_2234a60 - 2
.hword branch_2234c62 - Jumppoints_2234a60 - 2
.hword branch_2234ad6 - Jumppoints_2234a60 - 2
.hword branch_2234ae2 - Jumppoints_2234a60 - 2
.hword branch_2234c62 - Jumppoints_2234a60 - 2
.hword branch_2234c62 - Jumppoints_2234a60 - 2
.hword branch_2234c62 - Jumppoints_2234a60 - 2
.hword branch_2234aea - Jumppoints_2234a60 - 2
.hword branch_2234c18 - Jumppoints_2234a60 - 2
.hword branch_2234c62 - Jumppoints_2234a60 - 2
.hword branch_2234bac - Jumppoints_2234a60 - 2
.hword branch_2234c62 - Jumppoints_2234a60 - 2
.hword branch_2234af2 - Jumppoints_2234a60 - 2
.hword branch_2234b04 - Jumppoints_2234a60 - 2
.hword branch_2234b0e - Jumppoints_2234a60 - 2
.hword branch_2234b14 - Jumppoints_2234a60 - 2
.hword branch_2234b1a - Jumppoints_2234a60 - 2
.hword branch_2234b22 - Jumppoints_2234a60 - 2
.hword branch_2234c62 - Jumppoints_2234a60 - 2
.hword branch_2234c62 - Jumppoints_2234a60 - 2
.hword branch_2234b2a - Jumppoints_2234a60 - 2
.hword branch_2234b66 - Jumppoints_2234a60 - 2
.hword branch_2234b9c - Jumppoints_2234a60 - 2
.hword branch_2234ba2 - Jumppoints_2234a60 - 2
.hword branch_2234bb2 - Jumppoints_2234a60 - 2
.hword branch_2234bca - Jumppoints_2234a60 - 2
.hword branch_2234bf8 - Jumppoints_2234a60 - 2
.hword branch_2234c10 - Jumppoints_2234a60 - 2
.hword branch_2234c36 - Jumppoints_2234a60 - 2
.hword branch_2234c3c - Jumppoints_2234a60 - 2
.hword branch_2234c42 - Jumppoints_2234a60 - 2
.hword branch_2234c62 - Jumppoints_2234a60 - 2
.thumb
branch_2234aae: @ 2234aae :thumb
	strb    r6, [r4, #0x4]
	b       branch_2234c62
@ 0x2234ab2

.thumb
branch_2234ab2: @ 2234ab2 :thumb
	ldr     r0, [pc, #0x1b4] @ 0x2234c68, (=0x6f2)
	ldrh    r0, [r4, r0]
	strh    r0, [r5, #0x0]
	b       branch_2234c62
@ 0x2234aba

.thumb
branch_2234aba: @ 2234aba :thumb
	ldrh    r0, [r4, #0x8]
	strh    r0, [r5, #0x0]
	b       branch_2234c62
@ 0x2234ac0

.thumb
branch_2234ac0: @ 2234ac0 :thumb
	ldrh    r1, [r4, #0x8]
	ldr     r0, [pc, #0x1a8] @ 0x2234c6c, (=0x270f)
	cmp     r1, r0
	bcs     branch_2234b64
	add     r0, r1, #0x1
	strh    r0, [r4, #0x8]
	b       branch_2234c62
@ 0x2234ace

.thumb
branch_2234ace: @ 2234ace :thumb
	mov     r0, #0x0
	blx     OS_ResetSystem
	b       branch_2234c62
@ 0x2234ad6

.thumb
branch_2234ad6: @ 2234ad6 :thumb
	ldr     r0, [pc, #0x198] @ 0x2234c70, (=0x6f8)
	ldr     r0, [r4, r0]
	bl      Function_2030124
	strh    r0, [r5, #0x0]
	b       branch_2234c62
@ 0x2234ae2

.thumb
branch_2234ae2: @ 2234ae2 :thumb
	mov     r1, #0x2
	bl      Function_223526c
	b       branch_2234c62
@ 0x2234aea

.thumb
branch_2234aea: @ 2234aea :thumb
	bl      Function_22354b0
	strh    r0, [r5, #0x0]
	b       branch_2234c62
@ 0x2234af2

.thumb
branch_2234af2: @ 2234af2 :thumb
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x2
	bne     branch_2234afe
	mov     r0, #0xa
	strh    r0, [r5, #0x0]
	b       branch_2234c62
@ 0x2234afe

.thumb
branch_2234afe: @ 2234afe :thumb
	ldrh    r0, [r4, #0xa]
	strh    r0, [r5, #0x0]
	b       branch_2234c62
@ 0x2234b04

.thumb
branch_2234b04: @ 2234b04 :thumb
	mov     r1, r6
	bl      Function_22354c0
	strh    r0, [r5, #0x0]
	b       branch_2234c62
@ 0x2234b0e

.thumb
branch_2234b0e: @ 2234b0e :thumb
	bl      Function_22354f4
	b       branch_2234c62
@ 0x2234b14

.thumb
branch_2234b14: @ 2234b14 :thumb
	bl      Function_2235518
	b       branch_2234c62
@ 0x2234b1a

.thumb
branch_2234b1a: @ 2234b1a :thumb
	bl      Function_22354bc
	strh    r0, [r5, #0x0]
	b       branch_2234c62
@ 0x2234b22

.thumb
branch_2234b22: @ 2234b22 :thumb
	ldr     r0, [pc, #0x150] @ 0x2234c74, (=0xd88)
	ldrb    r0, [r4, r0]
	strh    r0, [r5, #0x0]
	b       branch_2234c62
@ 0x2234b2a

.thumb
branch_2234b2a: @ 2234b2a :thumb
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x8]
	bl      LoadPokePartyAdress
	str     r0, [sp, #0x0]
	ldrb    r0, [r4, #0x4]
	bl      Function_223b500
	mov     r7, r0
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_2234b64
	ldr     r0, [pc, #0x134] @ 0x2234c78, (=0x728)
	add     r6, r4, r0
.thumb
branch_2234b46: @ 2234b46 :thumb
	mov     r1, #0x26
	add     r2, r4, r5
	lsl     r1, r1, #4
	ldrb    r1, [r2, r1]
	ldr     r0, [sp, #0x0]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x6
	mov     r2, r6
	bl      SetPkmnData
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r5, r7
	blt     branch_2234b46
.thumb
branch_2234b64: @ 2234b64 :thumb
	b       branch_2234c62
@ 0x2234b66

.thumb
branch_2234b66: @ 2234b66 :thumb
	ldr     r1, [pc, #0x114] @ 0x2234c7c, (=0x6f5)
	ldrb    r2, [r4, #0x4]
	ldrb    r0, [r4, r1]
	add     r1, #0xf
	add     r3, r4, r1
	lsl     r1, r2, #3
	add     r1, r2, r1
	add     r1, r3, r1
	bl      Function_20301e0
	mov     r2, r0
	cmp     r2, #0xa
	bcs     branch_2234c62
	ldr     r1, [pc, #0xf8] @ 0x2234c7c, (=0x6f5)
	ldrb    r3, [r4, #0x4]
	ldrb    r0, [r4, r1]
	add     r1, #0xf
	add     r5, r4, r1
	lsl     r1, r3, #3
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r1, r3, r1
	lsl     r2, r2, #24
	add     r1, r5, r1
	lsr     r2, r2, #24
	bl      Function_2030204
	b       branch_2234c62
@ 0x2234b9c

.thumb
branch_2234b9c: @ 2234b9c :thumb
	bl      Function_209ba80
	b       branch_2234c62
@ 0x2234ba2

.thumb
branch_2234ba2: @ 2234ba2 :thumb
	ldrb    r0, [r4, #0x4]
	bl      Function_223b5b0
	strh    r0, [r5, #0x0]
	b       branch_2234c62
@ 0x2234bac

.thumb
branch_2234bac: @ 2234bac :thumb
	ldrb    r0, [r4, #0x4]
	strh    r0, [r5, #0x0]
	b       branch_2234c62
@ 0x2234bb2

.thumb
branch_2234bb2: @ 2234bb2 :thumb
	cmp     r6, #0x0
	bne     branch_2234bc0
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	b       branch_2234c62
@ 0x2234bc0

.thumb
branch_2234bc0: @ 2234bc0 :thumb
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	b       branch_2234c62
@ 0x2234bca

.thumb
branch_2234bca: @ 2234bca :thumb
	ldrb    r1, [r4, #0x5]
	add     r0, #0x40
	mov     r2, #0xb
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldrh    r1, [r1, #0x18]
	mov     r3, #0xb2
	bl      Function_222e278
	ldrb    r1, [r4, #0x5]
	mov     r0, #0x15
	lsl     r0, r0, #4
	lsl     r1, r1, #1
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #1
	add     r1, r4, r1
	ldrh    r1, [r1, #0x18]
	add     r0, r4, r0
	mov     r2, #0xb
	mov     r3, #0xb2
	bl      Function_222e278
	b       branch_2234c62
@ 0x2234bf8

.thumb
branch_2234bf8: @ 2234bf8 :thumb
	ldr     r1, [pc, #0x80] @ 0x2234c7c, (=0x6f5)
	ldrb    r2, [r4, #0x4]
	ldrb    r0, [r4, r1]
	add     r1, #0xf
	add     r3, r4, r1
	lsl     r1, r2, #3
	add     r1, r2, r1
	add     r1, r3, r1
	bl      Function_20301e0
	strh    r0, [r5, #0x0]
	b       branch_2234c62
@ 0x2234c10

.thumb
branch_2234c10: @ 2234c10 :thumb
	bl      Function_2235578
	strh    r0, [r5, #0x0]
	b       branch_2234c62
@ 0x2234c18

.thumb
branch_2234c18: @ 2234c18 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x8]
	bl      LoadPokePartyAdress
	mov     r1, #0x26
	lsl     r1, r1, #4
	ldrb    r1, [r4, r1]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r5, #0x0]
	b       branch_2234c62
@ 0x2234c36

.thumb
branch_2234c36: @ 2234c36 :thumb
	bl      Function_22356a0
	b       branch_2234c62
@ 0x2234c3c

.thumb
branch_2234c3c: @ 2234c3c :thumb
	bl      Function_22356f4
	b       branch_2234c62
@ 0x2234c42

.thumb
branch_2234c42: @ 2234c42 :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_2234c62
	ldrh    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x32
	bne     branch_2234c5a
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	b       branch_2234c62
@ 0x2234c5a

.thumb
branch_2234c5a: @ 2234c5a :thumb
	cmp     r0, #0xaa
	bne     branch_2234c62
	mov     r0, #0x2
	strh    r0, [r5, #0x0]
.thumb
branch_2234c62: @ 2234c62 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2234c68

.word 0x6f2 @ 0x2234c68
.word 0x270f @ 0x2234c6c
.word 0x6f8 @ 0x2234c70
.word 0xd88 @ 0x2234c74
.word 0x728 @ 0x2234c78
.word 0x6f5 @ 0x2234c7c
.thumb
Function_2234c80: @ 2234c80 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fbe4
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	ldr     r0, [r0, #0x14]
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2234c9a


.align 2, 0


.thumb
Function_2234c9c: @ 2234c9c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_222fc00
	mov     r6, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r7, r0
	mov     r0, r5
	bl      Function_222fbe4
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r6
	mov     r2, r7
	bl      Function_2235534
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2234ccc

.thumb
Function_2234ccc: @ 2234ccc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222ea48
	mov     r1, r4
	add     r1, #0x78
	strh    r0, [r1, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2234ce8, (=0x2234ced)
	mov     r0, r4
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2234ce6


.align 2


.word Function_2234cec+1 @ =0x2234ced, 0x2234ce8
.thumb
Function_2234cec: @ 2234cec :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	bl      Function_222fc8c
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, #0xd9
	lsl     r1, r1, #4
	ldrb    r2, [r0, r1]
	cmp     r2, #0x2
	bcc     branch_2234d14
	mov     r2, #0x0
	strb    r2, [r0, r1]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2234d14

.thumb
branch_2234d14: @ 2234d14 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2234d18

.thumb
Function_2234d18: @ 2234d18 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r1, [r5, #0x1c]
	add     r0, r1, #0x1
	str     r0, [r5, #0x1c]
	ldr     r0, [r5, #0x0]
	ldrb    r4, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r2, r0
	bne     branch_2234d3c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2234d3c

.thumb
branch_2234d3c: @ 2234d3c :thumb
	lsl     r1, r4, #4
	add     r1, r4, r1
	add     r2, #0x58
	lsl     r1, r1, #4
	mov     r0, r5
	add     r1, r2, r1
	bl      Function_22330fc
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2234d50

.thumb
Function_2234d50: @ 2234d50 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fbe4
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r4
	bl      Function_223520c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2234d6c

.thumb
Function_2234d6c: @ 2234d6c :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r4, r0
	ldr     r0, [r5, #0x8]
	bl      LoadPokePartyAdress
	mov     r1, #0x26
	lsl     r1, r1, #4
	ldrb    r1, [r4, r1]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_2234db0
	ldr     r0, [r5, #0x8]
	bl      Function_202440c
	mov     r1, r6
	bl      Function_206d048
.thumb
branch_2234db0: @ 2234db0 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2234db4

.thumb
Function_2234db4: @ 2234db4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r1
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x2d0] @ 0x2235090, (=0xd98)
	mov     r0, #0xb
	mov     r6, r2
	str     r3, [sp, #0x8]
	bl      malloc
	ldr     r1, [pc, #0x2c8] @ 0x2235094, (=0x2241ac4)
	ldr     r2, [pc, #0x2c4] @ 0x2235090, (=0xd98)
	str     r0, [r1, #0x0]
	mov     r1, #0x0
	blx     MI_CpuFill8
	ldr     r0, [pc, #0x2bc] @ 0x2235094, (=0x2241ac4)
	ldr     r4, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	bl      Function_2030114
	ldr     r1, [pc, #0x2b8] @ 0x2235098, (=0x6f8)
	str     r0, [r4, r1]
	ldr     r0, [sp, #0x4]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r0, [r4, r1]
	mov     r0, #0xb
	ldr     r1, [pc, #0x2a8] @ 0x2235094, (=0x2241ac4)
	str     r0, [r4, #0x0]
	ldr     r4, [r1, #0x0]
	bl      AllocPkmnParty
	mov     r1, #0x99
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0xb
	bl      AllocPkmnData
	ldr     r1, [pc, #0x298] @ 0x223509c, (=0xd8c)
	str     r0, [r4, r1]
	ldr     r0, [pc, #0x290] @ 0x2235098, (=0x6f8)
	ldr     r4, [r4, r0]
	ldr     r0, [sp, #0x4]
	bl      Function_203026c
	str     r0, [sp, #0xc]
	cmp     r5, #0x0
	bne     branch_2234ed0
	ldr     r0, [pc, #0x27c] @ 0x2235094, (=0x2241ac4)
	ldr     r0, [r0, #0x0]
	strb    r6, [r0, #0x4]
	ldrb    r0, [r0, #0x4]
	bl      Function_223b500
	mov     r6, r0
	ldr     r0, [pc, #0x270] @ 0x2235094, (=0x2241ac4)
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	strb    r1, [r0, #0x5]
	mov     r0, r4
	bl      Function_2030108
	ldr     r0, [pc, #0x260] @ 0x2235094, (=0x2241ac4)
	ldr     r1, [r0, #0x0]
	ldrb    r2, [r1, #0x4]
	cmp     r2, #0x3
	bne     branch_2234e48
	ldr     r0, [pc, #0x264] @ 0x22350a0, (=0x6fc)
	ldr     r0, [r1, r0]
	bl      LoadFlagAdress
	bl      Function_206b6fc
	b       branch_2234e54
@ 0x2234e48

.thumb
branch_2234e48: @ 2234e48 :thumb
	ldr     r0, [sp, #0xc]
	mov     r3, #0x0
	mov     r1, #0x5
	str     r3, [sp, #0x0]
	bl      Function_20302b4
.thumb
branch_2234e54: @ 2234e54 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bne     branch_2234e96
	ldr     r0, [pc, #0x234] @ 0x2235094, (=0x2241ac4)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x23c] @ 0x22350a0, (=0x6fc)
	ldr     r0, [r1, r0]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	ldr     r0, [pc, #0x228] @ 0x2235094, (=0x2241ac4)
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x4]
	bl      Function_205e50c
	mov     r5, r0
	ldr     r0, [pc, #0x21c] @ 0x2235094, (=0x2241ac4)
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x4]
	bl      Function_205e50c
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r5
	bl      Function_2030698
	ldr     r1, [pc, #0x204] @ 0x2235094, (=0x2241ac4)
	ldr     r1, [r1, #0x0]
	strh    r0, [r1, #0x8]
	b       branch_2234eba
@ 0x2234e96

.thumb
branch_2234e96: @ 2234e96 :thumb
	ldr     r5, [pc, #0x1fc] @ 0x2235094, (=0x2241ac4)
	mov     r4, #0x0
	ldr     r0, [r5, #0x0]
	ldr     r7, [pc, #0x200] @ 0x22350a0, (=0x6fc)
	strh    r4, [r0, #0x8]
.thumb
branch_2234ea0: @ 2234ea0 :thumb
	ldr     r1, [r5, #0x0]
	lsl     r2, r4, #24
	ldr     r0, [r1, r7]
	ldrb    r1, [r1, #0x4]
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2235620
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x12
	bcc     branch_2234ea0
.thumb
branch_2234eba: @ 2234eba :thumb
	ldr     r0, [pc, #0x1d8] @ 0x2235094, (=0x2241ac4)
	mov     r1, #0x26
	ldr     r3, [r0, #0x0]
	ldr     r0, [sp, #0x8]
	lsl     r1, r1, #4
	strb    r0, [r3, r1]
	add     r0, sp, #0x20
	ldrb    r2, [r0, #0x10]
	add     r0, r1, #0x1
	strb    r2, [r3, r0]
	b       branch_2234fba
@ 0x2234ed0

.thumb
branch_2234ed0: @ 2234ed0 :thumb
	ldr     r0, [pc, #0x1c0] @ 0x2235094, (=0x2241ac4)
	mov     r1, #0x0
	ldr     r5, [r0, #0x0]
	str     r1, [sp, #0x0]
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      Function_2030198
	strb    r0, [r5, #0x4]
	ldrb    r0, [r5, #0x4]
	bl      Function_223b500
	mov     r2, #0x0
	mov     r6, r0
	ldr     r0, [pc, #0x1a4] @ 0x2235094, (=0x2241ac4)
	str     r2, [sp, #0x0]
	ldr     r5, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2030198
	strb    r0, [r5, #0x5]
	ldr     r0, [pc, #0x190] @ 0x2235094, (=0x2241ac4)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x198] @ 0x22350a0, (=0x6fc)
	ldr     r0, [r1, r0]
	bl      LoadVariableAreaAdress_17
	mov     r7, r0
	ldr     r0, [pc, #0x184] @ 0x2235094, (=0x2241ac4)
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x4]
	bl      Function_205e50c
	str     r0, [sp, #0x10]
	ldrb    r0, [r5, #0x4]
	bl      Function_205e50c
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	bl      Function_2030698
	ldr     r1, [pc, #0x164] @ 0x2235094, (=0x2241ac4)
	mov     r5, #0x0
	ldr     r1, [r1, #0x0]
	cmp     r6, #0x0
	strh    r0, [r1, #0x8]
	ble     branch_2234f62
	mov     r7, r5
.thumb
branch_2234f3c: @ 2234f3c :thumb
	lsl     r2, r5, #24
	mov     r0, r4
	mov     r1, #0x3
	lsr     r2, r2, #24
	mov     r3, r7
	str     r7, [sp, #0x0]
	bl      Function_2030198
	ldr     r1, [pc, #0x144] @ 0x2235094, (=0x2241ac4)
	ldr     r1, [r1, #0x0]
	add     r2, r1, r5
	mov     r1, #0x26
	lsl     r1, r1, #4
	strb    r0, [r2, r1]
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, r6
	blt     branch_2234f3c
.thumb
branch_2234f62: @ 2234f62 :thumb
	mov     r5, #0x0
	mov     r7, r5
.thumb
branch_2234f66: @ 2234f66 :thumb
	lsl     r2, r5, #24
	mov     r0, r4
	mov     r1, #0x2
	lsr     r2, r2, #24
	mov     r3, r7
	str     r7, [sp, #0x0]
	bl      Function_2030198
	ldr     r1, [pc, #0x11c] @ 0x2235094, (=0x2241ac4)
	ldr     r2, [r1, #0x0]
	lsl     r1, r5, #1
	add     r1, r2, r1
	strh    r0, [r1, #0x18]
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x14
	bcc     branch_2234f66
	mov     r5, #0x0
.thumb
branch_2234f8c: @ 2234f8c :thumb
	ldr     r0, [pc, #0x104] @ 0x2235094, (=0x2241ac4)
	lsl     r2, r5, #24
	ldr     r7, [r0, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x4
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030198
	lsl     r1, r5, #1
	lsl     r0, r0, #24
	add     r2, r7, r1
	mov     r1, #0x9a
	lsr     r0, r0, #24
	lsl     r1, r1, #2
	strh    r0, [r2, r1]
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x14
	bcc     branch_2234f8c
.thumb
branch_2234fba: @ 2234fba :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_2234ff4
	ldr     r7, [pc, #0xd0] @ 0x2235094, (=0x2241ac4)
.thumb
branch_2234fc2: @ 2234fc2 :thumb
	ldr     r4, [r7, #0x0]
	ldr     r0, [pc, #0xd8] @ 0x22350a0, (=0x6fc)
	ldr     r0, [r4, r0]
	bl      LoadPokePartyAdress
	mov     r1, #0x26
	add     r2, r4, r5
	lsl     r1, r1, #4
	ldrb    r1, [r2, r1]
	bl      GetAdrOfPkmnInParty
	ldr     r4, [r7, #0x0]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r1, r5, #1
	add     r2, r4, r1
	ldr     r1, [pc, #0xbc] @ 0x22350a4, (=0x728)
	strh    r0, [r2, r1]
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, r6
	blt     branch_2234fc2
.thumb
branch_2234ff4: @ 2234ff4 :thumb
	ldr     r0, [pc, #0x9c] @ 0x2235094, (=0x2241ac4)
	mov     r1, #0xa
	ldr     r4, [r0, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	ldrh    r0, [r4, #0x8]
	blx     _s32_div_f
	strh    r0, [r4, #0xa]
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x2
	bne     branch_223502e
	ldr     r4, [pc, #0x84] @ 0x2235094, (=0x2241ac4)
	ldr     r6, [pc, #0x98] @ 0x22350a8, (=0x716)
	mov     r5, #0x0
	mov     r7, #0x9
.thumb
branch_2235014: @ 2235014 :thumb
	ldr     r1, [r4, #0x0]
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	add     r1, r1, r6
	mov     r2, r7
	bl      Function_2030204
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x12
	bcc     branch_2235014
	b       branch_223506e
@ 0x223502e

.thumb
branch_223502e: @ 223502e :thumb
	ldr     r5, [pc, #0x64] @ 0x2235094, (=0x2241ac4)
	mov     r4, #0x0
	add     r7, sp, #0x14
.thumb
branch_2235034: @ 2235034 :thumb
	ldr     r1, [r5, #0x0]
	str     r7, [sp, #0x0]
	ldrb    r1, [r1, #0x4]
	lsl     r2, r4, #24
	add     r3, sp, #0x14
	ldr     r0, [sp, #0x4]
	lsr     r2, r2, #24
	add     r3, #0x2
	bl      Function_22355c0
	mov     r2, r0
	lsl     r0, r4, #24
	lsl     r2, r2, #24
	ldr     r1, [r5, #0x0]
	ldr     r3, [pc, #0x58] @ 0x22350ac, (=0x704)
	lsr     r0, r0, #24
	add     r6, r1, r3
	ldrb    r3, [r1, #0x4]
	lsr     r2, r2, #24
	lsl     r1, r3, #3
	add     r1, r3, r1
	add     r1, r6, r1
	bl      Function_2030204
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x12
	bcc     branch_2235034
.thumb
branch_223506e: @ 223506e :thumb
	ldr     r0, [pc, #0x24] @ 0x2235094, (=0x2241ac4)
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x4]
	bl      Function_223b5b0
	cmp     r0, #0x1
	bne     branch_2235088
	ldr     r0, [pc, #0x14] @ 0x2235094, (=0x2241ac4)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x22350a0, (=0x6fc)
	ldr     r0, [r1, r0]
	bl      Function_222e630
.thumb
branch_2235088: @ 2235088 :thumb
	ldr     r0, [pc, #0x8] @ 0x2235094, (=0x2241ac4)
	ldr     r0, [r0, #0x0]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2235090

.word 0xd98 @ 0x2235090
.word 0x2241ac4 @ 0x2235094
.word 0x6f8 @ 0x2235098
.word 0xd8c @ 0x223509c
.word 0x6fc @ 0x22350a0
.word 0x728 @ 0x22350a4
.word 0x716 @ 0x22350a8
.word 0x704 @ 0x22350ac
.thumb
Function_22350b0: @ 22350b0 :thumb
	ldr     r3, [pc, #0x0] @ 0x22350b4, (=0x22350b9)
	bx      r3
@ 0x22350b4

.word Function_22350b8+1 @ =0x22350b9, 0x22350b4
.thumb
Function_22350b8: @ 22350b8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldrb    r2, [r5, #0x4]
	mov     r4, #0x0
	mov     r6, #0x1
	cmp     r2, #0x0
	beq     branch_22350ca
	mov     r6, #0x2
.thumb
branch_22350ca: @ 22350ca :thumb
	ldr     r1, [pc, #0xb4] @ 0x2235180, (=0x6f5)
	lsl     r3, r2, #3
	ldrb    r0, [r5, r1]
	add     r1, #0xf
	add     r1, r5, r1
	add     r2, r2, r3
	add     r1, r1, r2
	bl      Function_20301e0
	mov     r7, r0
	mov     r0, r5
	bl      Function_2235704
	strb    r0, [r5, #0x7]
	mov     r0, r5
	add     r0, #0x18
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x90] @ 0x2235180, (=0x6f5)
	ldrb    r3, [r5, #0x5]
	ldrb    r0, [r5, r0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_223af58
	ldrb    r0, [r5, #0x5]
	mov     r1, r6
	mov     r3, r7
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x18
	str     r0, [sp, #0x4]
	ldrb    r0, [r5, #0x4]
	ldrh    r2, [r5, #0xa]
	bl      Function_223afb4
	ldrb    r0, [r5, #0x5]
	mov     r6, r5
	add     r6, #0x18
	lsl     r0, r0, #25
	lsr     r0, r0, #23
	ldrh    r1, [r6, r0]
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x64] @ 0x2235184, (=0xfecd)
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, #0x1
	bhi     branch_2235134
	mov     r0, r5
	bl      Function_223b5c0
	lsl     r0, r0, #24
	lsr     r7, r0, #24
.thumb
branch_2235134: @ 2235134 :thumb
	ldr     r0, [sp, #0xc]
	ldrh    r1, [r6, r0]
	ldr     r0, [pc, #0x4c] @ 0x2235188, (=0x133)
	cmp     r1, r0
	bne     branch_2235140
	mov     r4, #0x1
.thumb
branch_2235140: @ 2235140 :thumb
	mov     r0, #0x4d
	lsl     r0, r0, #2
	cmp     r1, r0
	bne     branch_223514a
	mov     r4, #0x2
.thumb
branch_223514a: @ 223514a :thumb
	mov     r0, #0x99
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x9a
	lsl     r0, r0, #2
	add     r0, r5, r0
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	ldr     r1, [pc, #0x1c] @ 0x223518c, (=0x6f4)
	ldrb    r3, [r5, #0x5]
	ldrb    r1, [r5, r1]
	mov     r0, #0x1
	mov     r2, r7
	bl      Function_223b0c8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2235180

.word 0x6f5 @ 0x2235180
.word 0xfecd @ 0x2235184
.word 0x133 @ 0x2235188
.word 0x6f4 @ 0x223518c
.thumb
Function_2235190: @ 2235190 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_22351c0
	mov     r0, #0x99
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22351a4
	bl      free
.thumb
branch_22351a4: @ 22351a4 :thumb
	ldr     r0, [pc, #0x1c] @ 0x22351c4, (=0xd8c)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22351b0
	bl      free
.thumb
branch_22351b0: @ 22351b0 :thumb
	ldr     r2, [pc, #0x14] @ 0x22351c8, (=0xd98)
	mov     r0, r4
	mov     r1, #0x0
	blx     MI_CpuFill8
	mov     r0, r4
	bl      free
.thumb
branch_22351c0: @ 22351c0 :thumb
	pop     {r4,pc}
@ 0x22351c2


.align 2


.word 0xd8c @ 0x22351c4
.word 0xd98 @ 0x22351c8
.thumb
Function_22351cc: @ 22351cc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0x0
	bl      Function_2235208
	ldr     r1, [pc, #0x24] @ 0x2235200, (=0x6f2)
	strh    r0, [r4, r1]
	ldrh    r2, [r4, r1]
	add     r0, r1, #0x3
	strb    r2, [r4, r0]
	ldrh    r0, [r4, r1]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_223b5a4
	ldr     r1, [pc, #0x14] @ 0x2235204, (=0x6f4)
	strb    r0, [r4, r1]
	add     r0, r1, #0x1
	ldrb    r0, [r4, r0]
	cmp     r0, #0x11
	bcc     branch_22351fe
	mov     r2, #0x11
	add     r0, r1, #0x1
	strb    r2, [r4, r0]
.thumb
branch_22351fe: @ 22351fe :thumb
	pop     {r4,pc}
@ 0x2235200

.word 0x6f2 @ 0x2235200
.word 0x6f4 @ 0x2235204
.thumb
Function_2235208: @ 2235208 :thumb
	ldrh    r0, [r0, #0x6]
	bx      lr
@ 0x223520c

.thumb
Function_223520c: @ 223520c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldrb    r6, [r5, #0x4]
	mov     r4, r1
	cmp     r6, #0x3
	beq     branch_223525e
	mov     r0, r6
	bl      Function_205e534
	mov     r7, r0
	ldrb    r0, [r5, #0x4]
	bl      Function_205e55c
	str     r0, [sp, #0x10]
	ldrb    r0, [r5, #0x4]
	bl      Function_205e534
	bl      Function_205e6a8
	str     r0, [sp, #0x14]
	mov     r0, r6
	bl      Function_205e584
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	add     r0, sp, #0x1c
	str     r0, [sp, #0x8]
	add     r0, sp, #0x18
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x1c] @ 0x2235268, (=0x6fc)
	ldr     r2, [sp, #0x10]
	ldr     r0, [r5, r0]
	ldr     r3, [sp, #0x14]
	mov     r1, r7
	bl      Function_20309a0
	add     sp, #0x20
	strh    r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x223525e

.thumb
branch_223525e: @ 223525e :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2235266


.align 2


.word 0x6fc @ 0x2235268
.thumb
Function_223526c: @ 223526c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldr     r0, [pc, #0x230] @ 0x22354a4, (=0x6fc)
	mov     r4, r1
	ldr     r0, [r5, r0]
	bl      Function_203026c
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x224] @ 0x22354a4, (=0x6fc)
	ldr     r0, [r5, r0]
	bl      LoadVariableAreaAdress_17
	str     r0, [sp, #0xc]
	ldrb    r1, [r5, #0x4]
	add     r0, sp, #0x14
	strb    r1, [r0, #0x8]
	mov     r1, #0x0
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x210] @ 0x22354a8, (=0x6f8)
	mov     r2, r1
	ldr     r0, [r5, r0]
	mov     r3, r1
	bl      Function_2030140
	ldr     r0, [pc, #0x204] @ 0x22354a8, (=0x6f8)
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	bl      Function_203012c
	ldr     r0, [pc, #0x1f8] @ 0x22354a4, (=0x6fc)
	ldr     r0, [r5, r0]
	bl      LoadPokePartyAdress
	mov     r1, #0x26
	lsl     r1, r1, #4
	ldrb    r1, [r5, r1]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	ldrb    r0, [r5, #0x4]
	bl      Function_205e55c
	mov     r7, r0
	ldrb    r0, [r5, #0x4]
	bl      Function_205e55c
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [sp, #0xc]
	mov     r1, r7
	bl      Function_2030698
	mov     r7, r0
	mov     r2, #0x0
	ldrb    r1, [r5, #0x5]
	add     r0, sp, #0x14
	mov     r3, r2
	strb    r1, [r0, #0x8]
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1b0] @ 0x22354a8, (=0x6f8)
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	bl      Function_2030140
	ldrb    r0, [r5, #0x4]
	bl      Function_205e50c
	str     r0, [sp, #0x10]
	ldrb    r0, [r5, #0x4]
	bl      Function_205e50c
	bl      Function_205e6a8
	mov     r2, r0
	ldrh    r3, [r5, #0x8]
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	bl      Function_20306e4
	cmp     r4, #0x2
	beq     branch_22353b8
	ldrb    r4, [r5, #0x4]
	cmp     r4, #0x3
	beq     branch_2235348
	mov     r0, r4
	bl      Function_205e534
	mov     r6, r0
	mov     r0, r4
	bl      Function_205e534
	bl      Function_205e6a8
	mov     r2, r0
	ldrh    r3, [r5, #0x8]
	ldr     r0, [sp, #0xc]
	mov     r1, r6
	bl      Function_20306e4
	b       branch_223538a
@ 0x2235348

.thumb
branch_2235348: @ 2235348 :thumb
	cmp     r7, r6
	beq     branch_223536c
	mov     r0, r4
	bl      Function_205e534
	mov     r6, r0
	mov     r0, r4
	bl      Function_205e534
	bl      Function_205e6a8
	mov     r2, r0
	ldrh    r3, [r5, #0x8]
	ldr     r0, [sp, #0xc]
	mov     r1, r6
	bl      Function_20306e4
	b       branch_223538a

branch_223536c: @ 223536c :thumb
	mov     r0, r4
	bl      Function_205e534
	mov     r6, r0
	mov     r0, r4
	bl      Function_205e534
	bl      Function_205e6a8
	mov     r2, r0
	ldrh    r3, [r5, #0x8]
	ldr     r0, [sp, #0xc]
	mov     r1, r6
	bl      Function_2030848
branch_223538a: @ 223538a :thumb
	ldrb    r1, [r5, #0x6]
	add     r0, sp, #0x14
	mov     r3, #0x0
	strb    r1, [r0, #0x8]
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	ldrb    r2, [r5, #0x4]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x5
	bl      Function_2030280
	ldrb    r0, [r5, #0x4]
	cmp     r0, #0x3
	bne     branch_22353b8
	mov     r0, #0x6a
	bl      Function_205e6a8
	mov     r2, r0
	ldrb    r3, [r5, #0x6]
	ldr     r0, [sp, #0xc]
	mov     r1, #0x6a
	bl      Function_20306e4
.thumb
branch_22353b8: @ 22353b8 :thumb
	mov     r4, #0x0
	add     r6, sp, #0x14
	add     r7, sp, #0x14
.thumb
branch_22353be: @ 22353be :thumb
	lsl     r0, r4, #1
	add     r0, r5, r0
	ldrh    r0, [r0, #0x18]
	lsl     r2, r4, #24
	mov     r1, #0x2
	strh    r0, [r7, #0x0]
	ldr     r0, [pc, #0xdc] @ 0x22354a8, (=0x6f8)
	str     r6, [sp, #0x0]
	ldr     r0, [r5, r0]
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030140
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x14
	bcc     branch_22353be
	mov     r4, #0x0
	add     r6, sp, #0x1c
	add     r7, sp, #0x14
.thumb
branch_22353e8: @ 22353e8 :thumb
	mov     r0, #0x26
	add     r1, r5, r4
	lsl     r0, r0, #4
	ldrb    r0, [r1, r0]
	lsl     r2, r4, #24
	mov     r1, #0x3
	strb    r0, [r7, #0x8]
	ldr     r0, [pc, #0xb0] @ 0x22354a8, (=0x6f8)
	str     r6, [sp, #0x0]
	ldr     r0, [r5, r0]
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030140
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x2
	bcc     branch_22353e8
	ldr     r0, [pc, #0x9c] @ 0x22354ac, (=0x704)
	mov     r4, #0x0
	add     r6, r5, r0
	add     r7, sp, #0x14
.thumb
branch_2235416: @ 2235416 :thumb
	ldrb    r2, [r5, #0x4]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	lsl     r1, r2, #3
	add     r1, r2, r1
	add     r1, r6, r1
	bl      Function_20301e0
	strb    r0, [r7, #0x8]
	ldr     r0, [pc, #0x78] @ 0x22354a4, (=0x6fc)
	lsl     r2, r4, #24
	ldrb    r1, [r5, #0x4]
	ldrb    r3, [r7, #0x8]
	ldr     r0, [r5, r0]
	lsr     r2, r2, #24
	bl      Function_2235620
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x12
	bcc     branch_2235416
	mov     r4, #0x0
	add     r6, sp, #0x14
	add     r7, sp, #0x14
.thumb
branch_2235448: @ 2235448 :thumb
	lsl     r0, r4, #1
	add     r1, r5, r0
	mov     r0, #0x9a
	lsl     r0, r0, #2
	ldrh    r0, [r1, r0]
	lsl     r2, r4, #24
	mov     r1, #0x4
	strh    r0, [r7, #0x0]
	ldr     r0, [pc, #0x4c] @ 0x22354a8, (=0x6f8)
	str     r6, [sp, #0x0]
	ldr     r0, [r5, r0]
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030140
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x14
	bcc     branch_2235448
	ldrb    r0, [r5, #0x4]
	bl      Function_205e55c
	mov     r4, r0
	ldrb    r0, [r5, #0x4]
	bl      Function_205e55c
	bl      Function_205e6a8
	mov     r5, r0
	ldr     r0, [sp, #0x8]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r3, r0
	lsl     r3, r3, #16
	ldr     r0, [sp, #0xc]
	mov     r1, r4
	mov     r2, r5
	lsr     r3, r3, #16
	bl      Function_20306e4
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x22354a2


.align 2


.word 0x6fc @ 0x22354a4
.word 0x6f8 @ 0x22354a8
.word 0x704 @ 0x22354ac
.thumb
Function_22354b0: @ 22354b0 :thumb
	ldrb    r1, [r0, #0x5]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x5]
	ldrb    r0, [r0, #0x5]
	bx      lr
@ 0x22354ba


.align 2, 0


.thumb
Function_22354bc: @ 22354bc :thumb
	ldrb    r0, [r0, #0x5]
	bx      lr
@ 0x22354c0

.thumb
Function_22354c0: @ 22354c0 :thumb
	push    {r3,lr}
	add     sp, #-0x30
	mov     r2, r0
	ldrb    r3, [r2, #0x5]
	add     r0, sp, #0x0
	lsl     r3, r3, #1
	add     r1, r1, r3
	lsl     r1, r1, #24
	lsr     r1, r1, #23
	add     r1, r2, r1
	ldrh    r1, [r1, #0x18]
	mov     r2, #0xb
	mov     r3, #0xb2
	bl      Function_222dd04
	bl      free
	add     r0, sp, #0x0
	ldrh    r0, [r0, #0x4]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_222e10c
	add     sp, #0x30
	pop     {r3,pc}
@ 0x22354f2


.align 2, 0


.thumb
Function_22354f4: @ 22354f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x4]
	ldr     r0, [pc, #0x18] @ 0x2235514, (=0x704)
	add     r2, r4, r0
	lsl     r0, r1, #3
	add     r0, r1, r0
	add     r0, r2, r0
	bl      Function_2030244
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223526c
	pop     {r4,pc}
@ 0x2235512


.align 2


.word 0x704 @ 0x2235514
.thumb
Function_2235518: @ 2235518 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x6]
	ldrh    r1, [r0, #0xa]
	cmp     r1, #0x12
	bcs     branch_2235526
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r0, #0xa]
.thumb
branch_2235526: @ 2235526 :thumb
	ldr     r3, [pc, #0x8] @ 0x2235530, (=0x223526d)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bx      r3
@ 0x223552e


.align 2


.word Function_223526c+1 @ =0x223526d, 0x2235530
.thumb
Function_2235534: @ 2235534 :thumb
	push    {r3,lr}
	cmp     r1, #0x7
	bhi     branch_2235576
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2235546

Jumppoints_2235546:
.hword branch_2235556 - Jumppoints_2235546 - 2
.hword branch_223555c - Jumppoints_2235546 - 2
.hword branch_2235562 - Jumppoints_2235546 - 2
.hword branch_2235568 - Jumppoints_2235546 - 2
.hword branch_2235576 - Jumppoints_2235546 - 2
.hword branch_2235576 - Jumppoints_2235546 - 2
.hword branch_2235576 - Jumppoints_2235546 - 2
.hword branch_2235572 - Jumppoints_2235546 - 2
.thumb
branch_2235556: @ 2235556 :thumb
	bl      Function_222ed00
	pop     {r3,pc}
@ 0x223555c

.thumb
branch_223555c: @ 223555c :thumb
	bl      Function_222ed44
	pop     {r3,pc}
@ 0x2235562

.thumb
branch_2235562: @ 2235562 :thumb
	bl      Function_222eda8
	pop     {r3,pc}
@ 0x2235568

.thumb
branch_2235568: @ 2235568 :thumb
	lsl     r1, r2, #24
	lsr     r1, r1, #24
	bl      Function_222ee14
	pop     {r3,pc}
@ 0x2235572

.thumb
branch_2235572: @ 2235572 :thumb
	bl      Function_222ee60
.thumb
branch_2235576: @ 2235576 :thumb
	pop     {r3,pc}
@ 0x2235578

.thumb
Function_2235578: @ 2235578 :thumb
	ldrb    r3, [r0, #0x4]
	ldrh    r2, [r0, #0xa]
	cmp     r3, #0x1
	bhi     branch_223558e
	cmp     r2, #0x12
	bcc     branch_2235588
	mov     r1, #0xc
	b       branch_223559a
@ 0x2235588

.thumb
branch_2235588: @ 2235588 :thumb
	ldr     r1, [pc, #0x2c] @ 0x22355b8, (=0x223fa5c)
	ldrb    r1, [r1, r2]
	b       branch_223559a
@ 0x223558e

.thumb
branch_223558e: @ 223558e :thumb
	cmp     r2, #0x12
	bcc     branch_2235596
	mov     r1, #0x17
	b       branch_223559a
@ 0x2235596

.thumb
branch_2235596: @ 2235596 :thumb
	ldr     r1, [pc, #0x24] @ 0x22355bc, (=0x223fa70)
	ldrb    r1, [r1, r2]
.thumb
branch_223559a: @ 223559a :thumb
	cmp     r3, #0x0
	bne     branch_22355ac
	ldrh    r0, [r0, #0x8]
	cmp     r0, #0x32
	beq     branch_22355a8
	cmp     r0, #0xaa
	bne     branch_22355b2
.thumb
branch_22355a8: @ 22355a8 :thumb
	mov     r1, #0x14
	b       branch_22355b2
@ 0x22355ac

.thumb
branch_22355ac: @ 22355ac :thumb
	cmp     r3, #0x2
	bne     branch_22355b2
	mov     r1, #0xc
.thumb
branch_22355b2: @ 22355b2 :thumb
	mov     r0, r1
	bx      lr
@ 0x22355b6


.align 2


.word 0x223fa5c @ 0x22355b8
.word 0x223fa70 @ 0x22355bc
.thumb
Function_22355c0: @ 22355c0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r1
	mov     r5, r2
	mov     r6, r3
	ldr     r4, [sp, #0x20]
	bl      LoadVariableAreaAdress_17
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, r5
	bl      Function_205e4e0
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r1, r5
	bl      Function_205e4e0
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	bl      Function_2030698
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r0, #0xf
	and     r0, r1
	strh    r0, [r6, #0x0]
	asr     r0, r1, #4
	strh    r0, [r4, #0x0]
	lsr     r2, r5, #31
	lsl     r1, r5, #31
	sub     r1, r1, r2
	mov     r0, #0x1f
	ror     r1, r0
	add     r0, r2, r1
	bne     branch_2235618
	add     sp, #0x8
	ldrh    r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x2235618

.thumb
branch_2235618: @ 2235618 :thumb
	ldrh    r0, [r4, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223561e


.align 2, 0


.thumb
Function_2235620: @ 2235620 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r3
	add     r3, sp, #0xc
	str     r3, [sp, #0x0]
	add     r3, sp, #0xc
	add     r3, #0x2
	str     r0, [sp, #0x4]
	mov     r6, r1
	mov     r5, r2
	bl      Function_22355c0
	add     r0, sp, #0xc
	ldrh    r1, [r0, #0x0]
	ldrh    r0, [r0, #0x2]
	lsr     r3, r5, #31
	lsl     r1, r1, #4
	orr     r0, r1
	lsl     r2, r5, #31
	lsl     r0, r0, #24
	sub     r2, r2, r3
	mov     r1, #0x1f
	ror     r2, r1
	add     r1, r3, r2
	lsl     r1, r1, #24
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	bne     branch_223565c
	mov     r2, #0xf0
	b       branch_223565e
@ 0x223565c

.thumb
branch_223565c: @ 223565c :thumb
	mov     r2, #0xf
.thumb
branch_223565e: @ 223565e :thumb
	and     r0, r2
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	lsl     r0, r1, #2
	mov     r1, r7
	lsl     r1, r0
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	orr     r4, r0
	ldr     r0, [sp, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r7, r0
	mov     r0, r6
	mov     r1, r5
	bl      Function_205e4e0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, r5
	bl      Function_205e4e0
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r1, [sp, #0x8]
	mov     r0, r7
	mov     r3, r4
	bl      Function_20306e4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223569e


.align 2, 0


.thumb
Function_22356a0: @ 22356a0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x4]
	cmp     r0, #0x2
	beq     branch_22356ee
	ldr     r0, [pc, #0x44] @ 0x22356f0, (=0x704)
	mov     r4, #0x0
	add     r6, r5, r0
.thumb
branch_22356b0: @ 22356b0 :thumb
	ldrb    r2, [r5, #0x4]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	lsl     r1, r2, #3
	add     r1, r2, r1
	add     r1, r6, r1
	bl      Function_20301e0
	cmp     r0, #0xa
	bcc     branch_22356ca
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x11
	blt     branch_22356b0
.thumb
branch_22356ca: @ 22356ca :thumb
	cmp     r4, #0x11
	bne     branch_22356ee
	ldr     r0, [pc, #0x20] @ 0x22356f0, (=0x704)
	mov     r4, #0x0
	add     r6, r5, r0
	mov     r7, #0x9
.thumb
branch_22356d6: @ 22356d6 :thumb
	ldrb    r2, [r5, #0x4]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	lsl     r1, r2, #3
	add     r1, r2, r1
	add     r1, r6, r1
	mov     r2, r7
	bl      Function_2030204
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x11
	blt     branch_22356d6
.thumb
branch_22356ee: @ 22356ee :thumb
	pop     {r3-r7,pc}
@ 0x22356f0

.word 0x704 @ 0x22356f0
.thumb
Function_22356f4: @ 22356f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b64c
	bl      Function_223b6c4
	str     r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x2235704

.thumb
Function_2235704: @ 2235704 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	ldr     r1, [pc, #0x1c4] @ 0x22358d0, (=0x6f5)
	ldrb    r2, [r6, #0x4]
	ldrb    r0, [r6, r1]
	add     r1, #0xf
	add     r3, r6, r1
	lsl     r1, r2, #3
	add     r1, r2, r1
	add     r1, r3, r1
	bl      Function_20301e0
	mov     r4, r0
	mov     r0, r6
	bl      Function_223b64c
	str     r0, [sp, #0x4]
	ldrb    r0, [r6, #0x4]
	cmp     r0, #0x2
	bne     branch_2235738
	ldr     r0, [sp, #0x4]
	add     sp, #0xc
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	pop     {r4-r7,pc}
@ 0x2235738

.thumb
branch_2235738: @ 2235738 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_2235750
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_223575e
@ 0x2235750

.thumb
branch_2235750: @ 2235750 :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_223575e: @ 223575e :thumb
	ldr     r5, [r6, #0xc]
	blx     _ffix
	lsl     r1, r5, #1
	add     r1, r5, r1
	sub     r0, r0, r1
	str     r0, [sp, #0x8]
	mov     r0, r5
	blx     _fflt
	ldr     r1, [pc, #0x160] @ 0x22358d4, (=0x45800000)
	blx     _fdiv
	blx     _f2d
	mov     r3, r1
	mov     r2, r0
	ldr     r1, [pc, #0x154] @ 0x22358d8, (=0x40140000)
	mov     r0, #0x0
	blx     Function_20e0234
	blx     _d2f
	mov     r5, r0
	ldr     r0, [sp, #0x4]
	blx     _fflt
	mov     r1, r5
	blx     _fdiv
	blx     _f2d
	ldr     r3, [pc, #0x13c] @ 0x22358dc, (=0x3ff00000)
	mov     r2, #0x0
	blx     Function_20e0ef8
	bcs     branch_22357b2
	mov     r0, r4
	blx     _fflt
	str     r0, [sp, #0x0]
	b       branch_22357f0
@ 0x22357b2

.thumb
branch_22357b2: @ 22357b2 :thumb
	ldr     r0, [sp, #0x4]
	mul     r0, r4
	cmp     r0, #0x0
	ble     branch_22357cc
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_22357da
@ 0x22357cc

.thumb
branch_22357cc: @ 22357cc :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_22357da: @ 22357da :thumb
	blx     _ffix
	blx     _fflt
	ldr     r1, [pc, #0xf0] @ 0x22358d4, (=0x45800000)
	blx     _fdiv
	mov     r1, r5
	blx     _fdiv
	str     r0, [sp, #0x0]
.thumb
branch_22357f0: @ 22357f0 :thumb
	ldr     r0, [pc, #0xec] @ 0x22358e0, (=0x704)
	mov     r5, #0x0
	mov     r4, r5
	add     r7, r6, r0
.thumb
branch_22357f8: @ 22357f8 :thumb
	ldr     r0, [pc, #0xd4] @ 0x22358d0, (=0x6f5)
	ldrb    r0, [r6, r0]
	cmp     r4, r0
	bne     branch_2235816
	mov     r0, r5
	blx     _f2d
	ldr     r3, [pc, #0xd4] @ 0x22358dc, (=0x3ff00000)
	mov     r2, #0x0
	blx     _dadd
	blx     _d2f
	mov     r5, r0
	b       branch_223583e
@ 0x2235816

.thumb
branch_2235816: @ 2235816 :thumb
	ldrb    r2, [r6, #0x4]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	lsl     r1, r2, #3
	add     r1, r2, r1
	add     r1, r7, r1
	bl      Function_20301e0
	cmp     r0, #0x0
	beq     branch_223583e
	mov     r0, r5
	blx     _f2d
	ldr     r3, [pc, #0xa8] @ 0x22358dc, (=0x3ff00000)
	mov     r2, #0x0
	blx     _dadd
	blx     _d2f
	mov     r5, r0
.thumb
branch_223583e: @ 223583e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x12
	blt     branch_22357f8
	mov     r0, r5
	blx     _f2d
	mov     r2, r0
	mov     r0, #0x0
	mov     r3, r1
	mov     r1, r0
	blx     Function_20e1020
	beq     branch_223586c
	mov     r0, r5
	blx     _f2d
	ldr     r3, [pc, #0x7c] @ 0x22358dc, (=0x3ff00000)
	mov     r2, #0x0
	blx     _dsub
	blx     _d2f
	mov     r5, r0
.thumb
branch_223586c: @ 223586c :thumb
	mov     r0, r5
	blx     _f2d
	ldr     r3, [pc, #0x70] @ 0x22358e4, (=0x3fe00000)
	mov     r2, #0x0
	blx     Function_20e0234
	blx     _d2f
	mov     r4, r0
	ldr     r0, [sp, #0x8]
	blx     _fflt
	ldr     r1, [pc, #0x4c] @ 0x22358d4, (=0x45800000)
	blx     _fdiv
	ldr     r1, [sp, #0x0]
	blx     _fadd
	mov     r1, r0
	mov     r0, r4
	blx     _fadd
	mov     r5, r0
	blx     _ffix
	mov     r4, r0
	mov     r0, r5
	blx     _ffix
	blx     _fflt
	mov     r1, r0
	mov     r0, r5
	blx     Function_20e1290
	beq     branch_22358b8
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_22358b8: @ 22358b8 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r4, r0
	ble     branch_22358c0
	mov     r4, r0
.thumb
branch_22358c0: @ 22358c0 :thumb
	cmp     r4, #0x64
	ble     branch_22358c6
	mov     r4, #0x64
.thumb
branch_22358c6: @ 22358c6 :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22358ce


.align 2


.word 0x6f5 @ 0x22358d0
.word 0x45800000 @ 0x22358d4
.word 0x40140000 @ 0x22358d8
.word 0x3ff00000 @ 0x22358dc
.word 0x704 @ 0x22358e0
.word 0x3fe00000 @ 0x22358e4
.thumb
Function_22358e8: @ 22358e8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	bl      Function_222fc00
	str     r0, [sp, #0xc]
	mov     r0, r5
	bl      Function_222fc00
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fc00
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      Function_222fc00
	mov     r6, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r7, r0
	mov     r0, r5
	bl      Function_222fbe4
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	str     r6, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r1, [sp, #0x14]
	str     r7, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [r0, #0x8]
	ldr     r1, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	lsr     r2, r2, #24
	bl      Function_22361b4
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b980
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223594a


.align 2, 0


.thumb
Function_223594c: @ 223594c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fc00
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r4
	bl      Function_2236514
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2235968

.thumb
Function_2235968: @ 2235968 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	bl      Function_22367ac
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223597a


.align 2, 0


.thumb
Function_223597c: @ 223597c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r7, r0
	mov     r0, #0xb
	mov     r1, #0x30
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0x30
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [r6, #0x8]
	mov     r1, r7
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_2235b3c
	ldr     r0, [pc, #0x14] @ 0x22359c8, (=0x2235b85)
	ldr     r1, [pc, #0x14] @ 0x22359cc, (=0x223fa94)
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r2, r4
	ldr     r0, [r0, #0x0]
	mov     r3, #0x0
	bl      Function_209b988
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22359c8

.word Function_2235b84+1 @ =0x2235b85, 0x22359c8
.word 0x223fa94 @ 0x22359cc
.thumb
Function_22359d0: @ 22359d0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r7, r0
	mov     r0, #0xb
	mov     r1, #0x30
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0x30
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [r6, #0x8]
	mov     r1, r7
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_2235b3c
	ldr     r0, [pc, #0x14] @ 0x2235a1c, (=0x2235b85)
	ldr     r1, [pc, #0x14] @ 0x2235a20, (=0x223fa84)
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r2, r4
	ldr     r0, [r0, #0x0]
	mov     r3, #0x0
	bl      Function_209b988
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2235a1c

.word Function_2235b84+1 @ =0x2235b85, 0x2235a1c
.word 0x223fa84 @ 0x2235a20
.thumb
Function_2235a24: @ 2235a24 :thumb
	push    {r3-r5,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r4, r0
	ldr     r5, [r4, #0xc]
	mov     r1, #0x0
	ldr     r0, [r5, #0x4]
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      Function_207a128
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	bl      Function_207a128
	ldrb    r0, [r4, #0x10]
	bl      Function_223ba14
	cmp     r0, #0x0
	bne     branch_2235a74
	ldr     r0, [r5, #0x4]
	mov     r1, #0x2
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x2
	bl      Function_207a128
	b       branch_2235a98
@ 0x2235a74

.thumb
branch_2235a74: @ 2235a74 :thumb
	ldr     r0, [r5, #0xc]
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x2
	bl      Function_207a128
	ldr     r0, [r5, #0xc]
	mov     r1, #0x1
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x3
	bl      Function_207a128
.thumb
branch_2235a98: @ 2235a98 :thumb
	ldr     r0, [r5, #0x14]
	bl      Function_2052868
	str     r0, [r4, #0x1c]
	mov     r0, r5
	bl      Function_20520a4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2235aaa


.align 2, 0


.thumb
Function_2235aac: @ 2235aac :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r6
	mov     r4, r0
	bl      Function_223b810
	mov     r2, r0
	str     r2, [r4, #0xc]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2235ae4, (=JumpTable_BattleScreen)
	ldr     r0, [r0, #0x0]
	bl      Function_209b988
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2235ae4

.word JumpTable_BattleScreen @ 0x2235ae4
.thumb
Function_2235ae8: @ 2235ae8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r7, r0
	mov     r0, #0xb
	mov     r1, #0x30
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0x30
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [r6, #0x8]
	mov     r1, r7
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_2235b3c
	ldr     r0, [pc, #0x14] @ 0x2235b34, (=0x2235b85)
	ldr     r1, [pc, #0x14] @ 0x2235b38, (=0x223faa4)
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r2, r4
	ldr     r0, [r0, #0x0]
	mov     r3, #0x0
	bl      Function_209b988
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2235b34

.word Function_2235b84+1 @ =0x2235b85, 0x2235b34
.word 0x223faa4 @ 0x2235b38
.thumb
Function_2235b3c: @ 2235b3c :thumb
	push    {r4-r7}
	ldrb    r2, [r1, #0x10]
	mov     r6, #0x0
	strb    r2, [r0, #0x4]
	ldr     r2, [r1, #0x28]
	str     r2, [r0, #0x18]
	ldr     r2, [r1, #0x2c]
	str     r2, [r0, #0x1c]
	ldr     r2, [pc, #0x30] @ 0x2235b80, (=0xa1c)
	str     r1, [r0, #0x24]
	ldrh    r2, [r1, r2]
	strh    r2, [r0, #0x28]
	mov     r2, #0xde
	lsl     r2, r2, #2
	add     r3, r2, #0x4
.thumb
branch_2235b5a: @ 2235b5a :thumb
	mov     r7, #0x37
	add     r5, r1, r6
	lsl     r7, r7, #4
	ldrb    r7, [r5, r7]
	add     r4, r0, r6
	.hword  0x1c76 @ add r6, r6, #0x1
	strb    r7, [r4, #0x8]
	mov     r7, #0xdd
	lsl     r7, r7, #2
	ldrb    r7, [r5, r7]
	cmp     r6, #0x4
	strb    r7, [r4, #0xc]
	ldrb    r7, [r5, r2]
	strb    r7, [r4, #0x10]
	ldrb    r5, [r5, r3]
	strb    r5, [r4, #0x14]
	blt     branch_2235b5a
	pop     {r4-r7}
	bx      lr
@ 0x2235b80

.word 0xa1c @ 0x2235b80
.thumb
Function_2235b84: @ 2235b84 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x24]
	mov     r1, r4
	bl      Function_22367dc
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2235b98

.thumb
Function_2235b98: @ 2235b98 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	bl      Function_2236bf0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2235baa


.align 2, 0


.thumb
Function_2235bac: @ 2235bac :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	bl      Function_2236bf8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2235bbe


.align 2, 0


.thumb
Function_2235bc0: @ 2235bc0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	ldr     r3, [r0, #0x1c]
	mov     r1, r0
	add     r2, r3, #0x1
	str     r2, [r1, #0x1c]
	ldrb    r1, [r3, #0x0]
	add     r3, r2, #0x1
	str     r0, [sp, #0x10]
	str     r1, [sp, #0x18]
	mov     r1, r0
	str     r3, [r1, #0x1c]
	ldrb    r6, [r2, #0x0]
	add     r2, r3, #0x1
	str     r2, [r1, #0x1c]
	ldrb    r1, [r3, #0x0]
	str     r1, [sp, #0x14]
	bl      Function_222fbe4
	mov     r5, r0
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r4, r0
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r7, r0
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x2c
	bls     branch_2235c08
	b       branch_2235f7e
@ 0x2235c08

.thumb
branch_2235c08: @ 2235c08 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2235c14

Jumppoints_2235c14:
.hword branch_2235f7e - Jumppoints_2235c14 - 2
.hword branch_2235f7e - Jumppoints_2235c14 - 2
.hword branch_2235c6e - Jumppoints_2235c14 - 2
.hword branch_2235c72 - Jumppoints_2235c14 - 2
.hword branch_2235c80 - Jumppoints_2235c14 - 2
.hword branch_2235c86 - Jumppoints_2235c14 - 2
.hword branch_2235f7e - Jumppoints_2235c14 - 2
.hword branch_2235c94 - Jumppoints_2235c14 - 2
.hword branch_2235f7e - Jumppoints_2235c14 - 2
.hword branch_2235c9c - Jumppoints_2235c14 - 2
.hword branch_2235ca6 - Jumppoints_2235c14 - 2
.hword branch_2235f7e - Jumppoints_2235c14 - 2
.hword branch_2235f7e - Jumppoints_2235c14 - 2
.hword branch_2235f7e - Jumppoints_2235c14 - 2
.hword branch_2235cb0 - Jumppoints_2235c14 - 2
.hword branch_2235cba - Jumppoints_2235c14 - 2
.hword branch_2235cce - Jumppoints_2235c14 - 2
.hword branch_2235e1a - Jumppoints_2235c14 - 2
.hword branch_2235ce4 - Jumppoints_2235c14 - 2
.hword branch_2235d10 - Jumppoints_2235c14 - 2
.hword branch_2235d1a - Jumppoints_2235c14 - 2
.hword branch_2235d26 - Jumppoints_2235c14 - 2
.hword branch_2235d2e - Jumppoints_2235c14 - 2
.hword branch_2235d36 - Jumppoints_2235c14 - 2
.hword branch_2235d40 - Jumppoints_2235c14 - 2
.hword branch_2235e20 - Jumppoints_2235c14 - 2
.hword branch_2235d4a - Jumppoints_2235c14 - 2
.hword branch_2235d52 - Jumppoints_2235c14 - 2
.hword branch_2235d66 - Jumppoints_2235c14 - 2
.hword branch_2235d6e - Jumppoints_2235c14 - 2
.hword branch_2235d76 - Jumppoints_2235c14 - 2
.hword branch_2235d88 - Jumppoints_2235c14 - 2
.hword branch_2235d98 - Jumppoints_2235c14 - 2
.hword branch_2235d9e - Jumppoints_2235c14 - 2
.hword branch_2235ddc - Jumppoints_2235c14 - 2
.hword branch_2235e10 - Jumppoints_2235c14 - 2
.hword branch_2235e26 - Jumppoints_2235c14 - 2
.hword branch_2235e3a - Jumppoints_2235c14 - 2
.hword branch_2235e68 - Jumppoints_2235c14 - 2
.hword branch_2235e72 - Jumppoints_2235c14 - 2
.hword branch_2235ea2 - Jumppoints_2235c14 - 2
.hword branch_2235ec4 - Jumppoints_2235c14 - 2
.hword branch_2235ef0 - Jumppoints_2235c14 - 2
.hword branch_2235ef8 - Jumppoints_2235c14 - 2
.hword branch_2235f02 - Jumppoints_2235c14 - 2
.thumb
branch_2235c6e: @ 2235c6e :thumb
	strb    r6, [r4, #0x10]
	b       branch_2235f7e
@ 0x2235c72

.thumb
branch_2235c72: @ 2235c72 :thumb
	lsl     r0, r6, #1
	add     r1, r4, r0
	mov     r0, #0xe
	lsl     r0, r0, #6
	ldrh    r0, [r1, r0]
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235c80

.thumb
branch_2235c80: @ 2235c80 :thumb
	ldrh    r0, [r4, #0x14]
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235c86

.thumb
branch_2235c86: @ 2235c86 :thumb
	ldrh    r1, [r4, #0x14]
	ldr     r0, [pc, #0x2f8] @ 0x2235f84, (=0x270f)
	cmp     r1, r0
	bcs     branch_2235d0e
	add     r0, r1, #0x1
	strh    r0, [r4, #0x14]
	b       branch_2235f7e
@ 0x2235c94

.thumb
branch_2235c94: @ 2235c94 :thumb
	mov     r0, #0x0
	blx     OS_ResetSystem
	b       branch_2235f7e
@ 0x2235c9c

.thumb
branch_2235c9c: @ 2235c9c :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_20302ec
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235ca6

.thumb
branch_2235ca6: @ 2235ca6 :thumb
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2236848
	b       branch_2235f7e
@ 0x2235cb0

.thumb
branch_2235cb0: @ 2235cb0 :thumb
	mov     r0, r4
	bl      Function_2236b48
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235cba

.thumb
branch_2235cba: @ 2235cba :thumb
	mov     r0, #0x38
	mul     r0, r6
	add     r1, r4, r0
	mov     r0, #0xa2
	lsl     r0, r0, #2
	ldrh    r0, [r1, r0]
	lsl     r0, r0, #21
	lsr     r0, r0, #21
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235cce

.thumb
branch_2235cce: @ 2235cce :thumb
	mov     r0, #0x38
	mul     r0, r6
	add     r1, r4, r0
	ldr     r0, [sp, #0x14]
	lsl     r0, r0, #1
	add     r1, r1, r0
	mov     r0, #0xa3
	lsl     r0, r0, #2
	ldrh    r0, [r1, r0]
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235ce4

.thumb
branch_2235ce4: @ 2235ce4 :thumb
	ldr     r0, [r7, #0x8]
	bl      LoadPokePartyAdress
	mov     r7, r0
	ldr     r0, [pc, #0x298] @ 0x2235f88, (=0x36a)
	mov     r5, #0x0
	add     r6, r4, r0
.thumb
branch_2235cf2: @ 2235cf2 :thumb
	add     r1, r4, r5
	add     r1, #0x24
	ldrb    r1, [r1, #0x0]
	mov     r0, r7
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x6
	mov     r2, r6
	bl      SetPkmnData
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r5, #0x3
	blt     branch_2235cf2
.thumb
branch_2235d0e: @ 2235d0e :thumb
	b       branch_2235f7e
@ 0x2235d10

.thumb
branch_2235d10: @ 2235d10 :thumb
	mov     r0, r4
	bl      Function_223bb60
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235d1a

.thumb
branch_2235d1a: @ 2235d1a :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2236b58
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235d26

.thumb
branch_2235d26: @ 2235d26 :thumb
	mov     r0, r4
	bl      Function_2236b8c
	b       branch_2235f7e
@ 0x2235d2e

.thumb
branch_2235d2e: @ 2235d2e :thumb
	mov     r0, r4
	bl      Function_2236bd0
	b       branch_2235f7e
@ 0x2235d36

.thumb
branch_2235d36: @ 2235d36 :thumb
	mov     r0, r4
	bl      Function_2236b54
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235d40

.thumb
branch_2235d40: @ 2235d40 :thumb
	mov     r0, #0xa1
	lsl     r0, r0, #4
	ldrb    r0, [r4, r0]
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235d4a

.thumb
branch_2235d4a: @ 2235d4a :thumb
	ldr     r0, [pc, #0x240] @ 0x2235f8c, (=0xa11)
	ldrb    r0, [r4, r0]
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235d52

.thumb
branch_2235d52: @ 2235d52 :thumb
	mov     r0, r4
	bl      Function_2236d10
	strh    r0, [r5, #0x0]
	ldrb    r1, [r4, #0x10]
	ldrh    r2, [r5, #0x0]
	ldr     r0, [r4, #0x4]
	bl      Function_2236ed8
	b       branch_2235f7e
@ 0x2235d66

.thumb
branch_2235d66: @ 2235d66 :thumb
	mov     r0, r4
	bl      Function_2236c50
	b       branch_2235f7e
@ 0x2235d6e

.thumb
branch_2235d6e: @ 2235d6e :thumb
	mov     r0, r4
	bl      Function_209ba80
	b       branch_2235f7e
@ 0x2235d76

.thumb
branch_2235d76: @ 2235d76 :thumb
	ldr     r0, [pc, #0x218] @ 0x2235f90, (=0xa1b)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x6
	bcc     branch_2235d84
	.hword  0x1f80 @ sub r0, r0, #0x6
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235d84

.thumb
branch_2235d84: @ 2235d84 :thumb
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235d88

.thumb
branch_2235d88: @ 2235d88 :thumb
	ldr     r0, [pc, #0x204] @ 0x2235f90, (=0xa1b)
	mov     r2, #0x0
	strb    r2, [r4, r0]
	.hword  0x1e81 @ sub r1, r0, #0x2
	strb    r2, [r4, r1]
	.hword  0x1ec0 @ sub r0, r0, #0x3
	strb    r2, [r4, r0]
	b       branch_2235f7e
@ 0x2235d98

.thumb
branch_2235d98: @ 2235d98 :thumb
	ldr     r0, [pc, #0x1f8] @ 0x2235f94, (=0xa18)
	strb    r6, [r4, r0]
	b       branch_2235f7e
@ 0x2235d9e

.thumb
branch_2235d9e: @ 2235d9e :thumb
	ldr     r0, [pc, #0x1f0] @ 0x2235f90, (=0xa1b)
	mov     r5, #0x0
	ldrb    r0, [r4, r0]
	cmp     r0, #0x6
	bcc     branch_2235db4
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_2235dbe
	mov     r5, #0x1
	b       branch_2235dbe
@ 0x2235db4

.thumb
branch_2235db4: @ 2235db4 :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2235dbe
	mov     r5, #0x1
.thumb
branch_2235dbe: @ 2235dbe :thumb
	cmp     r5, #0x1
	bne     branch_2235dd2
	ldr     r0, [r7, #0x8]
	bl      LoadVariableAreaAdress_17
	ldrb    r1, [r4, #0x10]
	mov     r2, #0x32
	bl      Function_223bc2c
	b       branch_2235f7e
@ 0x2235dd2

.thumb
branch_2235dd2: @ 2235dd2 :thumb
	ldr     r0, [pc, #0x1c4] @ 0x2235f98, (=0xa1c)
	ldrh    r1, [r4, r0]
	sub     r1, #0x32
	strh    r1, [r4, r0]
	b       branch_2235f7e
@ 0x2235ddc

.thumb
branch_2235ddc: @ 2235ddc :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	ldrb    r0, [r4, #0x10]
	bl      Function_223ba14
	cmp     r0, #0x1
	bne     branch_2235e08
	ldr     r0, [pc, #0x1a4] @ 0x2235f90, (=0xa1b)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x6
	bcc     branch_2235e00
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2235e08
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235e00

.thumb
branch_2235e00: @ 2235e00 :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2235e0a
.thumb
branch_2235e08: @ 2235e08 :thumb
	b       branch_2235f7e
@ 0x2235e0a

.thumb
branch_2235e0a: @ 2235e0a :thumb
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235e10

.thumb
branch_2235e10: @ 2235e10 :thumb
	ldrb    r0, [r4, #0x10]
	bl      Function_223ba14
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235e1a

.thumb
branch_2235e1a: @ 2235e1a :thumb
	ldrb    r0, [r4, #0x10]
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235e20

.thumb
branch_2235e20: @ 2235e20 :thumb
	ldrb    r0, [r4, #0x12]
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235e26

.thumb
branch_2235e26: @ 2235e26 :thumb
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	bl      Function_222e924
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	mov     r2, #0x3
	bl      Function_223bb84
	b       branch_2235f7e
@ 0x2235e3a

.thumb
branch_2235e3a: @ 2235e3a :thumb
	ldrb    r1, [r4, #0x11]
	mov     r0, r4
	add     r0, #0x4c
	lsl     r1, r1, #1
	add     r1, r4, r1
	ldrh    r1, [r1, #0x30]
	mov     r2, #0xb
	mov     r3, #0xb2
	bl      Function_222e278
	ldrb    r1, [r4, #0x11]
	mov     r0, #0x57
	lsl     r0, r0, #2
	.hword  0x1dc9 @ add r1, r1, #0x7
	lsl     r1, r1, #1
	add     r1, r4, r1
	ldrh    r1, [r1, #0x30]
	add     r0, r4, r0
	mov     r2, #0xb
	mov     r3, #0xb2
	bl      Function_222e278
	b       branch_2235f7e
@ 0x2235e68

.thumb
branch_2235e68: @ 2235e68 :thumb
	mov     r0, r4
	bl      Function_2237338
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235e72

.thumb
branch_2235e72: @ 2235e72 :thumb
	ldr     r0, [r7, #0x8]
	bl      Function_203041c
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0xa
	mov     r3, r2
	bl      Function_2030470
	strh    r0, [r5, #0x0]
	mov     r1, #0x1
	add     r0, sp, #0x20
	strb    r1, [r0, #0x0]
	ldr     r0, [r7, #0x8]
	bl      Function_203041c
	add     r1, sp, #0x20
	mov     r2, #0x0
	str     r1, [sp, #0x0]
	mov     r1, #0xa
	mov     r3, r2
	bl      Function_2030430
	b       branch_2235f7e
@ 0x2235ea2

.thumb
branch_2235ea2: @ 2235ea2 :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	ldrb    r0, [r4, #0x10]
	cmp     r0, #0x0
	bne     branch_2235f7e
	ldrh    r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x15
	bne     branch_2235eba
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235eba

.thumb
branch_2235eba: @ 2235eba :thumb
	cmp     r0, #0x31
	bne     branch_2235f7e
	mov     r0, #0x2
	strh    r0, [r5, #0x0]
	b       branch_2235f7e
@ 0x2235ec4

.thumb
branch_2235ec4: @ 2235ec4 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	mov     r3, #0xa2
	lsl     r3, r3, #2
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	mov     r0, #0xb3
	mov     r1, r3
	mov     r2, r3
	str     r0, [sp, #0xc]
	add     r0, r4, r3
	sub     r1, #0x1c
	sub     r2, #0x14
	sub     r3, #0x10
	add     r1, r4, r1
	add     r2, r4, r2
	add     r3, r4, r3
	bl      Function_222e330
	b       branch_2235f7e
@ 0x2235ef0

.thumb
branch_2235ef0: @ 2235ef0 :thumb
	mov     r0, r4
	bl      Function_223bab8
	b       branch_2235f7e
@ 0x2235ef8

.thumb
branch_2235ef8: @ 2235ef8 :thumb
	ldrb    r0, [r4, #0x13]
	strh    r0, [r5, #0x0]
	mov     r0, #0x1
	strb    r0, [r4, #0x13]
	b       branch_2235f7e
@ 0x2235f02

.thumb
branch_2235f02: @ 2235f02 :thumb
	ldrb    r5, [r4, #0x10]
	cmp     r5, #0x3
	bne     branch_2235f7e
	cmp     r6, #0x0
	ldr     r0, [r7, #0x8]
	bne     branch_2235f5a
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	ldrb    r0, [r4, #0x10]
	bl      Function_205e630
	str     r0, [sp, #0x1c]
	mov     r0, r5
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r1, [sp, #0x1c]
	mov     r0, r6
	bl      Function_2030698
	strh    r0, [r4, #0x22]
	ldr     r0, [r7, #0x8]
	bl      LoadVariableAreaAdress_17
	mov     r5, r0
	ldrb    r0, [r4, #0x10]
	bl      Function_205e630
	mov     r6, r0
	ldrb    r0, [r4, #0x10]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldrh    r3, [r4, #0x20]
	mov     r0, r5
	mov     r1, r6
	bl      Function_20306e4
	b       branch_2235f7e
@ 0x2235f5a

.thumb
branch_2235f5a: @ 2235f5a :thumb
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	ldrb    r0, [r4, #0x10]
	bl      Function_205e630
	mov     r7, r0
	mov     r0, r5
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldrh    r3, [r4, #0x22]
	mov     r0, r6
	mov     r1, r7
	bl      Function_20306e4
.thumb
branch_2235f7e: @ 2235f7e :thumb
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2235f84

.word 0x270f @ 0x2235f84
.word 0x36a @ 0x2235f88
.word 0xa11 @ 0x2235f8c
.word 0xa1b @ 0x2235f90
.word 0xa18 @ 0x2235f94
.word 0xa1c @ 0x2235f98
.thumb
Function_2235f9c: @ 2235f9c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fbe4
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	ldr     r0, [r0, #0x1c]
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2235fb6


.align 2, 0


.thumb
Function_2235fb8: @ 2235fb8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_222fc00
	mov     r6, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r7, r0
	mov     r0, r5
	bl      Function_222fbe4
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r6
	mov     r2, r7
	bl      Function_2236f70
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2235fe8

.thumb
Function_2235fe8: @ 2235fe8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222ea48
	mov     r1, r4
	add     r1, #0x78
	strh    r0, [r1, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2236004, (=0x2236009)
	mov     r0, r4
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2236002


.align 2


.word Function_2236008+1 @ =0x2236009, 0x2236004
.thumb
Function_2236008: @ 2236008 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	bl      Function_222fc8c
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	ldr     r1, [pc, #0x14] @ 0x2236034, (=0xa1a)
	ldrb    r2, [r0, r1]
	cmp     r2, #0x2
	bcc     branch_223602e
	mov     r2, #0x0
	strb    r2, [r0, r1]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223602e

.thumb
branch_223602e: @ 223602e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2236032


.align 2


.word 0xa1a @ 0x2236034
.thumb
Function_2236038: @ 2236038 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222ea48
	mov     r1, r4
	add     r1, #0x78
	strh    r0, [r1, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2236054, (=0x2236059)
	mov     r0, r4
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2236052


.align 2


.word Function_2236058+1 @ =0x2236059, 0x2236054
.thumb
Function_2236058: @ 2236058 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	bl      Function_222fc14
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	ldr     r2, [pc, #0x18] @ 0x223608c, (=0xa1b)
	ldrb    r1, [r0, r2]
	cmp     r1, #0x0
	bne     branch_223607c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223607c

.thumb
branch_223607c: @ 223607c :thumb
	mov     r3, #0x0
	.hword  0x1e51 @ sub r1, r2, #0x1
	strb    r3, [r0, r1]
	ldrb    r0, [r0, r2]
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223608a


.align 2


.word 0xa1b @ 0x223608c
.thumb
Function_2236090: @ 2236090 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2236fc0
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22360a8

.thumb
Function_22360a8: @ 22360a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_22370e0
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22360c0

.thumb
Function_22360c0: @ 22360c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2237180
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22360d8

.thumb
Function_22360d8: @ 22360d8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_222fc00
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fbe4
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      LoadVariableAreaAdress_17
	mov     r5, r0
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	bl      Function_205e630
	mov     r7, r0
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r5
	mov     r1, r7
	bl      Function_2030698
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2236120

.thumb
Function_2236120: @ 2236120 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_222fc00
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      LoadVariableAreaAdress_17
	lsl     r1, r4, #24
	lsr     r1, r1, #24
	mov     r2, r6
	bl      Function_223bc2c
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223614e


.align 2, 0


.thumb
Function_2236150: @ 2236150 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_222fc00
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	lsl     r1, r4, #24
	ldr     r0, [r0, #0x8]
	lsr     r1, r1, #24
	mov     r2, r6
	bl      Function_2236ed8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223617a


.align 2, 0


.thumb
Function_223617c: @ 223617c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r1, [r5, #0x1c]
	add     r0, r1, #0x1
	str     r0, [r5, #0x1c]
	ldr     r0, [r5, #0x0]
	ldrb    r4, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r2, r0
	bne     branch_22361a0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22361a0

.thumb
branch_22361a0: @ 22361a0 :thumb
	lsl     r1, r4, #4
	add     r1, r4, r1
	add     r2, #0x64
	lsl     r1, r1, #4
	mov     r0, r5
	add     r1, r2, r1
	bl      Function_22330fc
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22361b4

.thumb
Function_22361b4: @ 22361b4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r1
	mov     r5, r0
	ldr     r1, [pc, #0x348] @ 0x2236508, (=0xa28)
	mov     r0, #0xb
	mov     r6, r2
	str     r3, [sp, #0x4]
	bl      malloc
	ldr     r1, [pc, #0x340] @ 0x223650c, (=0x2241ac8)
	ldr     r2, [pc, #0x33c] @ 0x2236508, (=0xa28)
	str     r0, [r1, #0x0]
	mov     r1, #0x0
	blx     MI_CpuFill8
	ldr     r0, [pc, #0x334] @ 0x223650c, (=0x2241ac8)
	ldr     r4, [r0, #0x0]
	mov     r0, r5
	bl      Function_20302dc
	str     r0, [r4, #0x8]
	ldr     r1, [pc, #0x328] @ 0x223650c, (=0x2241ac8)
	str     r5, [r4, #0x4]
	mov     r0, #0xb
	str     r0, [r4, #0x0]
	ldr     r4, [r1, #0x0]
	bl      AllocPkmnParty
	str     r0, [r4, #0x28]
	mov     r0, #0xb
	bl      AllocPkmnParty
	str     r0, [r4, #0x2c]
	mov     r0, #0xa2
	ldr     r1, [sp, #0x38]
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r0, r5
	ldr     r4, [r4, #0x8]
	bl      Function_203041c
	mov     r5, r0
	cmp     r7, #0x0
	beq     branch_2236210
	b       branch_22363aa
@ 0x2236210

.thumb
branch_2236210: @ 2236210 :thumb
	ldr     r0, [pc, #0x2f8] @ 0x223650c, (=0x2241ac8)
	ldr     r1, [r0, #0x0]
	mov     r0, #0x0
	strb    r6, [r1, #0x10]
	strb    r0, [r1, #0x11]
	mov     r0, r4
	bl      Function_20302d0
	ldr     r0, [pc, #0x2e8] @ 0x223650c, (=0x2241ac8)
	ldr     r0, [r0, #0x0]
	ldrb    r2, [r0, #0x10]
	cmp     r2, #0x3
	bne     branch_2236236
	ldr     r0, [r0, #0x4]
	bl      LoadFlagAdress
	bl      Function_206b6fc
	b       branch_2236242
@ 0x2236236

.thumb
branch_2236236: @ 2236236 :thumb
	mov     r3, #0x0
	mov     r0, r5
	mov     r1, #0x9
	str     r3, [sp, #0x0]
	bl      Function_2030470
.thumb
branch_2236242: @ 2236242 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bne     branch_2236282
	ldr     r0, [pc, #0x2c0] @ 0x223650c, (=0x2241ac8)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r5, r0
	ldr     r0, [pc, #0x2b4] @ 0x223650c, (=0x2241ac8)
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x10]
	bl      Function_205e5e0
	mov     r4, r0
	ldr     r0, [pc, #0x2a8] @ 0x223650c, (=0x2241ac8)
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x10]
	bl      Function_205e5e0
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2030698
	ldr     r1, [pc, #0x290] @ 0x223650c, (=0x2241ac8)
	ldr     r1, [r1, #0x0]
	strh    r0, [r1, #0x14]
	b       branch_2236320
@ 0x2236282

.thumb
branch_2236282: @ 2236282 :thumb
	ldr     r0, [pc, #0x288] @ 0x223650c, (=0x2241ac8)
	ldr     r4, [r0, #0x0]
	mov     r0, #0x0
	strh    r0, [r4, #0x14]
	ldr     r0, [r4, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r5, r0
	ldr     r0, [pc, #0x278] @ 0x223650c, (=0x2241ac8)
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x10]
	bl      Function_205e630
	mov     r7, r0
	ldrb    r0, [r4, #0x10]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r5
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_20306e4
	ldr     r0, [pc, #0x254] @ 0x223650c, (=0x2241ac8)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	mov     r0, r6
	bl      Function_205e658
	mov     r5, r0
	mov     r0, r6
	bl      Function_205e658
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r5
	mov     r3, #0x0
	bl      Function_20306e4
	ldr     r4, [pc, #0x22c] @ 0x223650c, (=0x2241ac8)
	mov     r5, #0x0
.thumb
branch_22362e2: @ 22362e2 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	lsl     r1, r5, #24
	ldrb    r0, [r0, #0x10]
	lsr     r1, r1, #24
	bl      Function_205e5b4
	mov     r7, r0
	ldr     r0, [r4, #0x0]
	lsl     r1, r5, #24
	ldrb    r0, [r0, #0x10]
	lsr     r1, r1, #24
	bl      Function_205e5b4
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, r7
	mov     r3, #0x1
	bl      Function_20306e4
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x3
	bcc     branch_22362e2
.thumb
branch_2236320: @ 2236320 :thumb
	ldr     r0, [pc, #0x1e8] @ 0x223650c, (=0x2241ac8)
	mov     r1, #0x7
	ldr     r5, [r0, #0x0]
	ldrh    r0, [r5, #0x14]
	blx     _s32_div_f
	strh    r0, [r5, #0x16]
	mov     r0, #0x0
	str     r0, [r5, #0x18]
	mov     r1, r5
	ldr     r0, [sp, #0x4]
	add     r1, #0x24
	strb    r0, [r1, #0x0]
	add     r1, sp, #0x20
	mov     r0, r5
	ldrh    r2, [r1, #0x10]
	add     r0, #0x25
	strb    r2, [r0, #0x0]
	mov     r0, r5
	ldrh    r1, [r1, #0x14]
	add     r0, #0x26
	strb    r1, [r0, #0x0]
	ldr     r0, [pc, #0x1bc] @ 0x223650c, (=0x2241ac8)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	ldr     r0, [pc, #0x1b0] @ 0x223650c, (=0x2241ac8)
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x10]
	bl      Function_205e630
	mov     r6, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_2030698
	strh    r0, [r5, #0x20]
	ldr     r0, [pc, #0x190] @ 0x223650c, (=0x2241ac8)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	ldr     r0, [pc, #0x184] @ 0x223650c, (=0x2241ac8)
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x10]
	bl      Function_205e630
	mov     r6, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	mov     r3, #0xa
	bl      Function_2030804
	b       branch_223642e
@ 0x22363aa

.thumb
branch_22363aa: @ 22363aa :thumb
	ldr     r0, [pc, #0x160] @ 0x223650c, (=0x2241ac8)
	mov     r1, #0x0
	ldr     r5, [r0, #0x0]
	str     r1, [sp, #0x0]
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      Function_2030398
	strb    r0, [r5, #0x10]
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2030398
	strb    r0, [r5, #0x11]
	ldr     r0, [pc, #0x13c] @ 0x223650c, (=0x2241ac8)
	ldr     r6, [r0, #0x0]
	ldr     r0, [r6, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r7, r0
	ldr     r0, [pc, #0x130] @ 0x223650c, (=0x2241ac8)
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x10]
	bl      Function_205e5e0
	str     r0, [sp, #0xc]
	ldrb    r0, [r5, #0x10]
	bl      Function_205e5e0
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r1, [sp, #0xc]
	mov     r0, r7
	bl      Function_2030698
	strh    r0, [r6, #0x14]
	ldrh    r0, [r6, #0x14]
	mov     r1, #0x7
	blx     _s32_div_f
	mov     r5, #0x0
	strh    r0, [r6, #0x16]
	ldr     r7, [pc, #0x100] @ 0x223650c, (=0x2241ac8)
	mov     r6, r5
.thumb
branch_223640c: @ 223640c :thumb
	lsl     r2, r5, #24
	mov     r0, r4
	mov     r1, #0x7
	lsr     r2, r2, #24
	mov     r3, r6
	str     r6, [sp, #0x0]
	bl      Function_2030398
	ldr     r1, [r7, #0x0]
	add     r1, r1, r5
	add     r1, #0x24
	strb    r0, [r1, #0x0]
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x3
	bcc     branch_223640c
.thumb
branch_223642e: @ 223642e :thumb
	ldr     r6, [pc, #0xdc] @ 0x223650c, (=0x2241ac8)
	ldr     r7, [pc, #0xdc] @ 0x2236510, (=0x36a)
	mov     r4, #0x0
.thumb
branch_2236434: @ 2236434 :thumb
	ldr     r5, [r6, #0x0]
	ldr     r0, [r5, #0x4]
	bl      LoadPokePartyAdress
	add     r1, r5, r4
	add     r1, #0x24
	ldrb    r1, [r1, #0x0]
	bl      GetAdrOfPkmnInParty
	ldr     r5, [r6, #0x0]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r1, r4, #1
	add     r1, r5, r1
	strh    r0, [r1, r7]
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x3
	bcc     branch_2236434
	ldr     r0, [r5, #0x4]
	bl      LoadPokePartyAdress
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xa0] @ 0x223650c, (=0x2241ac8)
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x10]
	bl      Function_223b7a8
	mov     r7, r0
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_22364e8
	ldr     r6, [pc, #0x8c] @ 0x223650c, (=0x2241ac8)
.thumb
branch_223647e: @ 223647e :thumb
	ldr     r1, [r6, #0x0]
	ldr     r0, [sp, #0x8]
	add     r1, r1, r5
	add     r1, #0x24
	ldrb    r1, [r1, #0x0]
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x28]
	bl      CopyPkmnDataToParty
	ldr     r0, [r6, #0x0]
	mov     r1, r5
	ldr     r0, [r0, #0x28]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x0
	str     r1, [sp, #0x14]
	mov     r4, r0
	mov     r1, #0x6
	add     r2, sp, #0x14
	bl      SetPkmnData
	mov     r0, r4
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x32
	bls     branch_22364de
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0x32
	bl      GetBaseExpPts
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x8
	add     r2, sp, #0x10
	bl      SetPkmnData
	mov     r0, r4
	bl      Function_207418c
branch_22364de: @ 22364de :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, r7
	blt     branch_223647e
.thumb
branch_22364e8: @ 22364e8 :thumb
	ldr     r0, [pc, #0x20] @ 0x223650c, (=0x2241ac8)
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x10]
	bl      Function_223ba14
	cmp     r0, #0x1
	bne     branch_2236500
	ldr     r0, [pc, #0x14] @ 0x223650c, (=0x2241ac8)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	bl      Function_222e630
.thumb
branch_2236500: @ 2236500 :thumb
	ldr     r0, [pc, #0x8] @ 0x223650c, (=0x2241ac8)
	ldr     r0, [r0, #0x0]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2236508

.word 0xa28 @ 0x2236508
.word 0x2241ac8 @ 0x223650c
.word 0x36a @ 0x2236510
.thumb
Function_2236514: @ 2236514 :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	bne     branch_2236520
	bl      Function_2236528
	pop     {r3,pc}
@ 0x2236520

.thumb
branch_2236520: @ 2236520 :thumb
	bl      Function_22365f8
	pop     {r3,pc}
@ 0x2236526


.align 2, 0


.thumb
Function_2236528: @ 2236528 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	ldr     r0, [r7, #0x28]
	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	mov     r6, #0x0
	str     r0, [sp, #0x10]
	cmp     r0, #0x0
	ble     branch_2236590
	mov     r5, r7
.thumb
branch_2236542: @ 2236542 :thumb
	ldr     r0, [r7, #0x28]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x3a
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	mov     r1, #0xe5
	lsl     r1, r1, #2
	strh    r0, [r5, r1]
	mov     r0, r4
	mov     r1, #0x3b
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x88] @ 0x22365f0, (=0x396)
	mov     r2, #0x0
	strh    r0, [r5, r1]
	mov     r0, r4
	mov     r1, #0x3c
	bl      GetPkmnData
	mov     r1, #0xe6
	lsl     r1, r1, #2
	strh    r0, [r5, r1]
	mov     r0, r4
	mov     r1, #0x3d
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x70] @ 0x22365f4, (=0x39a)
	.hword  0x1c76 @ add r6, r6, #0x1
	strh    r0, [r5, r1]
	ldr     r0, [sp, #0x10]
	add     r5, #0x8
	cmp     r6, r0
	blt     branch_2236542
.thumb
branch_2236590: @ 2236590 :thumb
	mov     r0, r7
	bl      Function_223bb60
	mov     r1, r0
	mov     r2, r7
	ldrb    r0, [r7, #0x10]
	add     r2, #0x30
	mov     r3, #0xe
	bl      Function_223b760
	ldrb    r0, [r7, #0x10]
	mov     r1, #0x1
	ldrb    r4, [r7, #0x11]
	bl      Function_223b7dc
	mov     r5, r0
	ldrb    r0, [r7, #0x10]
	bl      Function_223ba14
	mov     r3, #0xa2
	lsl     r3, r3, #2
	add     r1, r7, r3
	str     r1, [sp, #0x0]
	mov     r1, r3
	sub     r1, #0x14
	add     r1, r7, r1
	str     r1, [sp, #0x4]
	mov     r1, r3
	sub     r1, #0x10
	add     r1, r7, r1
	lsl     r0, r0, #24
	add     r2, r4, #0x7
	str     r1, [sp, #0x8]
	lsr     r0, r0, #24
	lsl     r1, r4, #1
	lsl     r2, r2, #1
	str     r0, [sp, #0xc]
	add     r1, r7, r1
	add     r2, r7, r2
	sub     r3, #0x1c
	ldrh    r1, [r1, #0x30]
	ldrh    r2, [r2, #0x30]
	mov     r0, r5
	add     r3, r7, r3
	bl      Function_222e4bc
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22365f0

.word 0x396 @ 0x22365f0
.word 0x39a @ 0x22365f4
.thumb
Function_22365f8: @ 22365f8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x18c
	mov     r5, r0
	bl      Function_22366a4
	mov     r4, #0x0
	mov     r6, r5
	mov     r7, r4
.thumb
branch_2236608: @ 2236608 :thumb
	str     r7, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x6
	lsr     r2, r2, #24
	mov     r3, r7
	bl      Function_2030398
	strh    r0, [r6, #0x30]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r4, #0xe
	blt     branch_2236608
	mov     r6, #0x0
	add     r4, sp, #0x30
	mov     r7, r5
.thumb
branch_2236628: @ 2236628 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	lsl     r2, r6, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x8
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030398
	strh    r0, [r4, #0x0]
	ldrh    r1, [r4, #0x0]
	mov     r0, #0x9b
	lsl     r0, r0, #2
	strh    r1, [r7, r0]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cbf @ add r7, r7, #0x2
	cmp     r6, #0x4
	blt     branch_2236628
	add     r0, sp, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	mov     r0, #0xb3
	str     r0, [sp, #0xc]
	add     r0, sp, #0x3c
	add     r1, sp, #0x30
	add     r2, sp, #0x10
	mov     r3, #0x0
	bl      Function_222e330
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r6, r0
	mov     r7, #0x0
	add     r4, sp, #0x3c
.thumb
branch_2236676: @ 2236676 :thumb
	mov     r0, r5
	bl      Function_223ba10
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_222df40
	ldr     r1, [r5, #0x2c]
	mov     r0, r5
	mov     r2, r6
	bl      Function_223baa0
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x38
	cmp     r7, #0x4
	blt     branch_2236676
	mov     r0, r6
	bl      free
	add     sp, #0x18c
	pop     {r4-r7,pc}
@ 0x22366a2


.align 2, 0


.thumb
Function_22366a4: @ 22366a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x28]
	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	mov     r4, #0x0
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_22367a6
	add     r7, sp, #0x8
.thumb
branch_22366be: @ 22366be :thumb
	ldr     r0, [r5, #0x28]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x2
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030398
	add     r2, sp, #0x8
	strh    r0, [r7, #0x2]
	mov     r0, r6
	mov     r1, #0xa3
	add     r2, #0x2
	bl      SetPkmnData
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x3
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030398
	strb    r0, [r7, #0x0]
	mov     r0, r6
	mov     r1, #0x3a
	add     r2, sp, #0x8
	bl      SetPkmnData
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x3
	lsr     r2, r2, #24
	mov     r3, #0x1
	bl      Function_2030398
	strb    r0, [r7, #0x0]
	mov     r0, r6
	mov     r1, #0x3b
	add     r2, sp, #0x8
	bl      SetPkmnData
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x3
	lsr     r2, r2, #24
	mov     r3, #0x2
	bl      Function_2030398
	strb    r0, [r7, #0x0]
	mov     r0, r6
	mov     r1, #0x3c
	add     r2, sp, #0x8
	bl      SetPkmnData
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x3
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	lsr     r2, r2, #24
	mov     r3, r1
	bl      Function_2030398
	strb    r0, [r7, #0x0]
	mov     r0, r6
	mov     r1, #0x3d
	add     r2, sp, #0x8
	bl      SetPkmnData
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x4
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030398
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0xa0
	add     r2, sp, #0xc
	bl      SetPkmnData
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x5
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030398
	add     r2, sp, #0x8
	strh    r0, [r7, #0x2]
	mov     r0, r6
	mov     r1, #0x6
	add     r2, #0x2
	bl      SetPkmnData
	ldr     r0, [sp, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_22366be
.thumb
branch_22367a6: @ 22367a6 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22367aa


.align 2, 0


.thumb
Function_22367ac: @ 22367ac :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_22367d6
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	beq     branch_22367bc
	bl      free
.thumb
branch_22367bc: @ 22367bc :thumb
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	beq     branch_22367c6
	bl      free
.thumb
branch_22367c6: @ 22367c6 :thumb
	ldr     r2, [pc, #0x10] @ 0x22367d8, (=0xa28)
	mov     r0, r4
	mov     r1, #0x0
	blx     MI_CpuFill8
	mov     r0, r4
	bl      free
.thumb
branch_22367d6: @ 22367d6 :thumb
	pop     {r4,pc}
@ 0x22367d8

.word 0xa28 @ 0x22367d8
.thumb
Function_22367dc: @ 22367dc :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_22367e6: @ 22367e6 :thumb
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	bl      Function_2236834
	mov     r1, #0xe
	lsl     r1, r1, #6
	strh    r0, [r5, r1]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x6
	blt     branch_22367e6
	mov     r3, #0x0
	.hword  0x1f08 @ sub r0, r1, #0x4
.thumb
branch_2236802: @ 2236802 :thumb
	add     r2, r6, r3
	ldrb    r5, [r2, #0x8]
	mov     r4, #0x37
	add     r1, r7, r3
	lsl     r4, r4, #4
	strb    r5, [r1, r4]
	ldrb    r5, [r2, #0xc]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r5, [r1, r4]
	mov     r4, #0xde
	lsl     r4, r4, #2
	ldrb    r5, [r2, #0x10]
	cmp     r3, #0x4
	strb    r5, [r1, r4]
	ldrb    r2, [r2, #0x14]
	strb    r2, [r1, r0]
	blt     branch_2236802
	ldrh    r1, [r6, #0x28]
	ldr     r0, [pc, #0x4] @ 0x2236830, (=0xa1c)
	strh    r1, [r7, r0]
	pop     {r3-r7,pc}
@ 0x223682e


.align 2


.word 0xa1c @ 0x2236830
.thumb
Function_2236834: @ 2236834 :thumb
	push    {r3,lr}
	cmp     r1, #0x6
	bcc     branch_2236842
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2236842

.thumb
branch_2236842: @ 2236842 :thumb
	ldrh    r0, [r0, #0x20]
	pop     {r3,pc}
@ 0x2236846


.align 2, 0


.thumb
Function_2236848: @ 2236848 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r6, r1
	bl      Function_203041c
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x1
	bl      Function_223b7dc
	ldrb    r1, [r5, #0x10]
	add     r0, sp, #0x10
	strb    r1, [r0, #0x8]
	mov     r1, #0x0
	add     r0, sp, #0x18
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r2, r1
	mov     r3, r1
	bl      Function_2030308
	ldr     r0, [r5, #0x8]
	mov     r1, #0x1
	bl      Function_20302f4
	mov     r2, #0x0
	ldrb    r1, [r5, #0x11]
	add     r0, sp, #0x10
	mov     r3, r2
	strb    r1, [r0, #0x8]
	add     r0, sp, #0x18
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x1
	bl      Function_2030308
	ldrb    r0, [r5, #0x10]
	bl      Function_205e5e0
	mov     r7, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e5e0
	bl      Function_205e6a8
	mov     r2, r0
	ldrh    r3, [r5, #0x14]
	mov     r0, r4
	mov     r1, r7
	bl      Function_20306e4
	cmp     r6, #0x2
	beq     branch_22369ba
	ldrb    r0, [r5, #0x10]
	bl      Function_205e608
	mov     r6, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e608
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_2030698
	mov     r6, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e608
	mov     r7, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e608
	bl      Function_205e6a8
	mov     r2, r0
	ldrh    r3, [r5, #0x14]
	mov     r0, r4
	mov     r1, r7
	bl      Function_2030848
	ldrb    r0, [r5, #0x10]
	bl      Function_205e608
	mov     r7, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e608
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r7
	bl      Function_2030698
	str     r0, [sp, #0xc]
	ldrb    r0, [r5, #0x10]
	bl      Function_205e630
	mov     r7, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r7
	bl      Function_2030698
	mov     r7, r0
	ldrh    r0, [r5, #0x14]
	cmp     r0, r6
	bne     branch_223695e
	ldrb    r0, [r5, #0x10]
	bl      Function_205e680
	mov     r6, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e680
	bl      Function_205e6a8
	lsl     r3, r7, #16
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	lsr     r3, r3, #16
	bl      Function_2030848
	b       branch_2236984
@ 0x223695e

.thumb
branch_223695e: @ 223695e :thumb
	ldr     r0, [sp, #0xc]
	cmp     r6, r0
	bcs     branch_2236984
	ldrb    r0, [r5, #0x10]
	bl      Function_205e680
	mov     r6, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e680
	bl      Function_205e6a8
	lsl     r3, r7, #16
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	lsr     r3, r3, #16
	bl      Function_20306e4
.thumb
branch_2236984: @ 2236984 :thumb
	mov     r0, r5
	add     r0, #0x27
	ldrb    r1, [r0, #0x0]
	add     r0, sp, #0x10
	mov     r3, #0x0
	strb    r1, [r0, #0x8]
	add     r0, sp, #0x18
	str     r0, [sp, #0x0]
	ldrb    r2, [r5, #0x10]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x9
	bl      Function_2030430
	ldrb    r0, [r5, #0x10]
	cmp     r0, #0x3
	bne     branch_22369ba
	mov     r0, #0x6c
	bl      Function_205e6a8
	mov     r3, r5
	add     r3, #0x27
	mov     r2, r0
	ldrb    r3, [r3, #0x0]
	mov     r0, r4
	mov     r1, #0x6c
	bl      Function_20306e4
.thumb
branch_22369ba: @ 22369ba :thumb
	mov     r4, #0x0
	add     r6, sp, #0x10
	add     r7, sp, #0x10
.thumb
branch_22369c0: @ 22369c0 :thumb
	lsl     r0, r4, #1
	add     r0, r5, r0
	ldrh    r0, [r0, #0x30]
	lsl     r2, r4, #24
	mov     r1, #0x6
	strh    r0, [r7, #0x0]
	str     r6, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030308
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0xe
	bcc     branch_22369c0
	mov     r4, #0x0
	add     r6, sp, #0x18
	add     r7, sp, #0x10
.thumb
branch_22369e8: @ 22369e8 :thumb
	add     r0, r5, r4
	add     r0, #0x24
	ldrb    r0, [r0, #0x0]
	lsl     r2, r4, #24
	mov     r1, #0x7
	strb    r0, [r7, #0x8]
	str     r6, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030308
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x3
	bcc     branch_22369e8
	ldr     r0, [r5, #0x28]
	bl      GetNrOfPkmnInParty
	mov     r4, #0x0
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	bls     branch_2236b00
	add     r7, sp, #0x10
.thumb
branch_2236a1a: @ 2236a1a :thumb
	ldr     r0, [r5, #0x28]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xa3
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	strh    r0, [r7, #0x0]
	add     r0, sp, #0x10
	str     r0, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x2
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030308
	mov     r0, r6
	mov     r1, #0x3a
	mov     r2, #0x0
	bl      GetPkmnData
	strb    r0, [r7, #0x8]
	add     r0, sp, #0x18
	str     r0, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x3
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030308
	mov     r0, r6
	mov     r1, #0x3b
	mov     r2, #0x0
	bl      GetPkmnData
	strb    r0, [r7, #0x8]
	add     r0, sp, #0x18
	str     r0, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x3
	lsr     r2, r2, #24
	mov     r3, #0x1
	bl      Function_2030308
	mov     r0, r6
	mov     r1, #0x3c
	mov     r2, #0x0
	bl      GetPkmnData
	strb    r0, [r7, #0x8]
	add     r0, sp, #0x18
	str     r0, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x3
	lsr     r2, r2, #24
	mov     r3, #0x2
	bl      Function_2030308
	mov     r0, r6
	mov     r1, #0x3d
	mov     r2, #0x0
	bl      GetPkmnData
	strb    r0, [r7, #0x8]
	add     r0, sp, #0x18
	str     r0, [sp, #0x0]
	mov     r1, #0x3
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	lsr     r2, r2, #24
	mov     r3, r1
	bl      Function_2030308
	mov     r0, r6
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x1c]
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x4
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030308
	mov     r0, r6
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r7, #0x0]
	add     r0, sp, #0x10
	str     r0, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x5
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030308
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldr     r0, [sp, #0x8]
	cmp     r4, r0
	bcc     branch_2236a1a
.thumb
branch_2236b00: @ 2236b00 :thumb
	ldr     r0, [r5, #0x2c]
	bl      GetNrOfPkmnInParty
	mov     r6, r0
	ldr     r4, [pc, #0x38] @ 0x2236b44, (=0x0)
	beq     branch_2236b3e
	add     r7, sp, #0x10
.thumb
branch_2236b0e: @ 2236b0e :thumb
	ldr     r0, [r5, #0x2c]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	lsl     r0, r4, #1
	add     r1, r5, r0
	mov     r0, #0x9b
	lsl     r0, r0, #2
	ldrh    r1, [r1, r0]
	add     r0, sp, #0x10
	lsl     r2, r4, #24
	strh    r1, [r0, #0x0]
	str     r7, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x8
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_2030308
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, r6
	bcc     branch_2236b0e
.thumb
branch_2236b3e: @ 2236b3e :thumb
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x2236b42


.align 2


.word 0x0 @ 0x2236b44
.thumb
Function_2236b48: @ 2236b48 :thumb
	ldrb    r1, [r0, #0x11]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x11]
	ldrb    r0, [r0, #0x11]
	bx      lr
@ 0x2236b52


.align 2, 0


.thumb
Function_2236b54: @ 2236b54 :thumb
	ldrb    r0, [r0, #0x11]
	bx      lr
@ 0x2236b58

.thumb
Function_2236b58: @ 2236b58 :thumb
	push    {r4,lr}
	add     sp, #-0x30
	mov     r2, r0
	ldrb    r4, [r2, #0x11]
	mov     r3, #0x7
	mul     r3, r1
	add     r1, r4, r3
	lsl     r1, r1, #24
	lsr     r1, r1, #23
	add     r1, r2, r1
	ldrh    r1, [r1, #0x30]
	add     r0, sp, #0x0
	mov     r2, #0xb
	mov     r3, #0xb2
	bl      Function_222dd04
	bl      free
	add     r0, sp, #0x0
	ldrh    r0, [r0, #0x4]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_222e10c
	add     sp, #0x30
	pop     {r4,pc}
@ 0x2236b8c

.thumb
Function_2236b8c: @ 2236b8c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_2236b92: @ 2236b92 :thumb
	ldr     r0, [r5, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	lsl     r1, r4, #24
	ldrb    r0, [r5, #0x10]
	lsr     r1, r1, #24
	bl      Function_205e5b4
	mov     r7, r0
	lsl     r1, r4, #24
	ldrb    r0, [r5, #0x10]
	lsr     r1, r1, #24
	bl      Function_205e5b4
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, r7
	mov     r3, #0x1
	bl      Function_20306e4
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_2236b92
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2236848
	pop     {r3-r7,pc}
@ 0x2236bd0

.thumb
Function_2236bd0: @ 2236bd0 :thumb
	mov     r1, r0
	mov     r2, #0x1
	add     r1, #0x27
	strb    r2, [r1, #0x0]
	ldrh    r1, [r0, #0x16]
	cmp     r1, #0x8
	bcs     branch_2236be2
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r0, #0x16]
.thumb
branch_2236be2: @ 2236be2 :thumb
	ldr     r3, [pc, #0x8] @ 0x2236bec, (=0x2236849)
	mov     r1, #0x0
	strb    r1, [r0, #0x11]
	bx      r3
@ 0x2236bea


.align 2


.word Function_2236848+1 @ =0x2236849, 0x2236bec
.thumb
Function_2236bf0: @ 2236bf0 :thumb
	ldr     r3, [pc, #0x0] @ 0x2236bf4, (=0x223bab9)
	bx      r3
@ 0x2236bf4

.word 0x223bab9 @ 0x2236bf4
.thumb
Function_2236bf8: @ 2236bf8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x1
	ldrb    r4, [r5, #0x11]
	bl      Function_223b7dc
	mov     r6, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_223ba14
	mov     r3, #0xa2
	lsl     r3, r3, #2
	add     r1, r5, r3
	str     r1, [sp, #0x0]
	mov     r1, r3
	sub     r1, #0x14
	add     r1, r5, r1
	str     r1, [sp, #0x4]
	mov     r1, r3
	sub     r1, #0x10
	add     r1, r5, r1
	lsl     r0, r0, #24
	add     r2, r4, #0x7
	str     r1, [sp, #0x8]
	lsr     r0, r0, #24
	lsl     r1, r4, #1
	lsl     r2, r2, #1
	str     r0, [sp, #0xc]
	add     r1, r5, r1
	add     r2, r5, r2
	sub     r3, #0x1c
	ldrh    r1, [r1, #0x30]
	ldrh    r2, [r2, #0x30]
	mov     r0, r6
	add     r3, r5, r3
	bl      Function_222e4bc
	mov     r0, r5
	bl      Function_223bab8
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2236c50

.thumb
Function_2236c50: @ 2236c50 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2236c64
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	b       branch_2236c68
@ 0x2236c64

.thumb
branch_2236c64: @ 2236c64 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
.thumb
branch_2236c68: @ 2236c68 :thumb
	ldrb    r0, [r6, #0x10]
	mov     r1, #0x0
	bl      Function_223b7a8
	mov     r5, r0
	ldr     r0, [r6, #0x28]
	bl      GetNrOfPkmnInParty
	ldr     r4, [sp, #0x0]
	mov     r0, r4
	add     r0, r5, r0
	mov     r1, r4
	str     r0, [sp, #0x4]
	cmp     r1, r0
	bge     branch_2236cda
.thumb
branch_2236c86: @ 2236c86 :thumb
	ldr     r0, [r6, #0x28]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	ldr     r1, [sp, #0x0]
	mov     r2, #0x0
	sub     r1, r4, r1
	lsl     r1, r1, #3
	add     r5, r6, r1
	mov     r1, #0x3a
	mov     r7, r0
	bl      GetPkmnData
	mov     r1, #0xe5
	lsl     r1, r1, #2
	strh    r0, [r5, r1]
	mov     r0, r7
	mov     r1, #0x3b
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x54] @ 0x2236d08, (=0x396)
	mov     r2, #0x0
	strh    r0, [r5, r1]
	mov     r0, r7
	mov     r1, #0x3c
	bl      GetPkmnData
	mov     r1, #0xe6
	lsl     r1, r1, #2
	strh    r0, [r5, r1]
	mov     r0, r7
	mov     r1, #0x3d
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x3c] @ 0x2236d0c, (=0x39a)
	.hword  0x1c64 @ add r4, r4, #0x1
	strh    r0, [r5, r1]
	ldr     r0, [sp, #0x4]
	cmp     r4, r0
	blt     branch_2236c86
.thumb
branch_2236cda: @ 2236cda :thumb
	ldr     r0, [r6, #0x28]
	bl      Function_223ba24
	mov     r0, #0x37
	lsl     r0, r0, #4
	mov     r7, #0x0
	mov     r2, r0
	mov     r3, r0
	mov     r4, r7
	add     r1, r0, #0x4
	add     r2, #0x8
	add     r3, #0xc
.thumb
branch_2236cf2: @ 2236cf2 :thumb
	add     r5, r6, r7
	strb    r4, [r5, r0]
	strb    r4, [r5, r1]
	strb    r4, [r5, r2]
	.hword  0x1c7f @ add r7, r7, #0x1
	strb    r4, [r5, r3]
	cmp     r7, #0x4
	blt     branch_2236cf2
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2236d06


.align 2


.word 0x396 @ 0x2236d08
.word 0x39a @ 0x2236d0c
.thumb
Function_2236d10: @ 2236d10 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	add     r1, sp, #0x18
	mov     r4, r0
.thumb
branch_2236d1e: @ 2236d1e :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r4, [r1, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, #0x14
	blt     branch_2236d1e
	strb    r4, [r6, #0x12]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2236d38
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	b       branch_2236d3c
@ 0x2236d38

.thumb
branch_2236d38: @ 2236d38 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
.thumb
branch_2236d3c: @ 2236d3c :thumb
	ldrb    r0, [r6, #0x10]
	mov     r1, #0x0
	bl      Function_223b7a8
	str     r0, [sp, #0x8]
	ldrb    r0, [r6, #0x10]
	mov     r1, #0x1
	bl      Function_223b7dc
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	add     r0, r1, r0
	ldr     r1, [sp, #0x0]
	str     r0, [sp, #0xc]
	cmp     r1, r0
	bge     branch_2236e12
	add     r7, sp, #0x18
.thumb
branch_2236d60: @ 2236d60 :thumb
	ldr     r0, [r6, #0x28]
	ldr     r1, [sp, #0x0]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xac
	mov     r2, #0x0
	mov     r5, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2236e06
	mov     r0, r5
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x14]
	mov     r0, r5
	mov     r1, #0xa4
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [sp, #0x14]
	cmp     r1, #0x0
	beq     branch_2236dd2
	ldrb    r1, [r7, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r7, #0x0]
	ldr     r1, [sp, #0x14]
	cmp     r1, r0
	bne     branch_2236da6
	ldrb    r0, [r7, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r7, #0x1]
	b       branch_2236dbc
@ 0x2236da6

.thumb
branch_2236da6: @ 2236da6 :thumb
	lsr     r1, r0, #1
	ldr     r0, [sp, #0x14]
	cmp     r0, r1
	bcc     branch_2236db6
	ldrb    r0, [r7, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r7, #0x2]
	b       branch_2236dbc
@ 0x2236db6

.thumb
branch_2236db6: @ 2236db6 :thumb
	ldrb    r0, [r7, #0x3]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r7, #0x3]
.thumb
branch_2236dbc: @ 2236dbc :thumb
	mov     r0, r5
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2236dd6
	ldrb    r0, [r7, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r7, #0x4]
	b       branch_2236dd6
@ 0x2236dd2

.thumb
branch_2236dd2: @ 2236dd2 :thumb
	mov     r0, #0x1
	strb    r0, [r6, #0x12]
.thumb
branch_2236dd6: @ 2236dd6 :thumb
	mov     r0, r5
	mov     r1, #0x3a
	mov     r2, #0x0
	bl      GetPkmnData
	add     r4, r4, r0
	mov     r0, r5
	mov     r1, #0x3b
	mov     r2, #0x0
	bl      GetPkmnData
	add     r4, r4, r0
	mov     r0, r5
	mov     r1, #0x3c
	mov     r2, #0x0
	bl      GetPkmnData
	add     r4, r4, r0
	mov     r0, r5
	mov     r1, #0x3d
	mov     r2, #0x0
	bl      GetPkmnData
	add     r4, r4, r0
.thumb
branch_2236e06: @ 2236e06 :thumb
	ldr     r0, [sp, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0xc]
	str     r1, [sp, #0x0]
	cmp     r1, r0
	blt     branch_2236d60
.thumb
branch_2236e12: @ 2236e12 :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, #0x0
	cmp     r1, #0x0
	ble     branch_2236e36
	mov     r2, #0xdd
	add     r3, sp, #0x18
	lsl     r2, r2, #2
.thumb
branch_2236e20: @ 2236e20 :thumb
	add     r1, r6, r0
	ldrb    r1, [r1, r2]
	cmp     r1, #0x1
	bne     branch_2236e2e
	ldrb    r1, [r3, #0x8]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r3, #0x8]
.thumb
branch_2236e2e: @ 2236e2e :thumb
	ldr     r1, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, r1
	blt     branch_2236e20
.thumb
branch_2236e36: @ 2236e36 :thumb
	ldr     r0, [sp, #0x8]
	mov     r3, #0x0
	mov     r7, r3
	cmp     r0, #0x0
	ble     branch_2236e5e
	mov     r0, #0xe5
	lsl     r0, r0, #2
.thumb
branch_2236e44: @ 2236e44 :thumb
	mov     r2, #0x0
	mov     r5, r6
.thumb
branch_2236e48: @ 2236e48 :thumb
	ldrh    r1, [r5, r0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	add     r3, r3, r1
	cmp     r2, #0x4
	blt     branch_2236e48
	ldr     r1, [sp, #0x8]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x8
	cmp     r7, r1
	blt     branch_2236e44
.thumb
branch_2236e5e: @ 2236e5e :thumb
	sub     r0, r3, r4
	cmp     r0, #0x5
	bgt     branch_2236e6e
	add     r0, sp, #0x18
	ldrb    r1, [r0, #0x5]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x5]
	b       branch_2236e88
@ 0x2236e6e

.thumb
branch_2236e6e: @ 2236e6e :thumb
	cmp     r0, #0xa
	bgt     branch_2236e7c
	add     r0, sp, #0x18
	ldrb    r1, [r0, #0x6]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x6]
	b       branch_2236e88
@ 0x2236e7c

.thumb
branch_2236e7c: @ 2236e7c :thumb
	cmp     r0, #0xf
	bgt     branch_2236e88
	add     r0, sp, #0x18
	ldrb    r1, [r0, #0x7]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x7]
.thumb
branch_2236e88: @ 2236e88 :thumb
	add     r1, sp, #0x18
	ldrb    r2, [r1, #0x0]
	lsl     r0, r2, #1
	add     r2, r2, r0
	ldr     r0, [sp, #0x10]
	add     r3, r0, r2
	ldrb    r2, [r1, #0x1]
	lsl     r0, r2, #1
	add     r0, r2, r0
	add     r2, r3, r0
	ldrb    r0, [r1, #0x2]
	lsl     r0, r0, #1
	add     r2, r2, r0
	ldrb    r0, [r1, #0x3]
	add     r2, r2, r0
	ldrb    r0, [r1, #0x4]
	add     r2, r2, r0
	ldrb    r0, [r1, #0x5]
	lsl     r0, r0, #3
	add     r3, r2, r0
	ldrb    r2, [r1, #0x6]
	mov     r0, #0x6
	mul     r0, r2
	add     r2, r3, r0
	ldrb    r0, [r1, #0x7]
	ldrb    r1, [r1, #0x8]
	lsl     r0, r0, #2
	add     r2, r2, r0
	mov     r0, #0x7
	mul     r0, r1
	add     r0, r2, r0
	str     r0, [sp, #0x10]
	cmp     r0, #0x0
	bgt     branch_2236ed0
	mov     r0, #0x1
	str     r0, [sp, #0x10]
.thumb
branch_2236ed0: @ 2236ed0 :thumb
	ldr     r0, [sp, #0x10]
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x2236ed6


.align 2, 0


.thumb
Function_2236ed8: @ 2236ed8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r6, r0
	mov     r4, r2
	bl      LoadVariableAreaAdress_17
	mov     r7, r0
	mov     r0, r5
	bl      Function_205e630
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	bl      Function_2030698
	add     r1, r0, r4
	ldr     r0, [pc, #0x64] @ 0x2236f6c, (=0x270f)
	cmp     r1, r0
	ble     branch_2236f34
	mov     r0, r6
	bl      LoadVariableAreaAdress_17
	mov     r7, r0
	mov     r0, r5
	bl      Function_205e630
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r1, [sp, #0x4]
	ldr     r3, [pc, #0x40] @ 0x2236f6c, (=0x270f)
	mov     r0, r7
	bl      Function_20306e4
	b       branch_2236f5a
@ 0x2236f34

.thumb
branch_2236f34: @ 2236f34 :thumb
	mov     r0, r6
	bl      LoadVariableAreaAdress_17
	mov     r7, r0
	mov     r0, r5
	bl      Function_205e630
	str     r0, [sp, #0x8]
	mov     r0, r5
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r1, [sp, #0x8]
	mov     r0, r7
	mov     r3, r4
	bl      Function_2030804
.thumb
branch_2236f5a: @ 2236f5a :thumb
	mov     r0, r6
	bl      LoadVariableAreaAdress_14
	mov     r1, #0x41
	mov     r2, r4
	bl      Function_202cf70
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2236f6c

.word 0x270f @ 0x2236f6c
.thumb
Function_2236f70: @ 2236f70 :thumb
	push    {r3,lr}
	cmp     r1, #0x6
	bhi     branch_2236fbc
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2236f82

Jumppoints_2236f82:
.hword branch_2236f90 - Jumppoints_2236f82 - 2
.hword branch_2236f96 - Jumppoints_2236f82 - 2
.hword branch_2236f9c - Jumppoints_2236f82 - 2
.hword branch_2236fa2 - Jumppoints_2236f82 - 2
.hword branch_2236fa8 - Jumppoints_2236f82 - 2
.hword branch_2236fb0 - Jumppoints_2236f82 - 2
.hword branch_2236fb8 - Jumppoints_2236f82 - 2
.thumb
branch_2236f90: @ 2236f90 :thumb
	bl      Function_222f3b8
	pop     {r3,pc}
@ 0x2236f96

.thumb
branch_2236f96: @ 2236f96 :thumb
	bl      Function_222f44c
	pop     {r3,pc}
@ 0x2236f9c

.thumb
branch_2236f9c: @ 2236f9c :thumb
	bl      Function_222f4b8
	pop     {r3,pc}
@ 0x2236fa2

.thumb
branch_2236fa2: @ 2236fa2 :thumb
	bl      Function_222f5d4
	pop     {r3,pc}
@ 0x2236fa8

.thumb
branch_2236fa8: @ 2236fa8 :thumb
	mov     r1, r2
	bl      Function_222f6c8
	pop     {r3,pc}
@ 0x2236fb0

.thumb
branch_2236fb0: @ 2236fb0 :thumb
	mov     r1, r2
	bl      Function_222f710
	pop     {r3,pc}
@ 0x2236fb8

.thumb
branch_2236fb8: @ 2236fb8 :thumb
	bl      Function_222f758
.thumb
branch_2236fbc: @ 2236fbc :thumb
	pop     {r3,pc}
@ 0x2236fbe


.align 2, 0


.thumb
Function_2236fc0: @ 2236fc0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r6, r1
	bl      Function_222e924
	mov     r4, r0
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2236fdc
	bl      ErrorHandling
.thumb
branch_2236fdc: @ 2236fdc :thumb
	mov     r0, r5
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2236fea
	bl      ErrorHandling
.thumb
branch_2236fea: @ 2236fea :thumb
	ldrb    r0, [r6, #0x10]
	bl      Function_223ba14
	cmp     r0, #0x0
	bne     branch_2237032
	mov     r0, #0xb
	mov     r1, #0x1
	bl      Function_201a778
	mov     r1, r5
	add     r1, #0xa8
	str     r0, [r1, #0x0]
	mov     r2, #0x1
	mov     r1, r5
	str     r2, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xa0] @ 0x22370b8, (=0x253)
	add     r1, #0xa8
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r3, r2
	bl      Function_201a7e8
	mov     r1, r5
	add     r1, #0xa8
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, #0x0]
	bl      Function_22370c0
	b       branch_22370aa
@ 0x2237032

.thumb
branch_2237032: @ 2237032 :thumb
	mov     r0, #0xb
	mov     r1, #0x1
	bl      Function_201a778
	mov     r1, r5
	add     r1, #0xa8
	str     r0, [r1, #0x0]
	mov     r0, #0xb
	mov     r1, #0x1
	bl      Function_201a778
	mov     r1, r5
	add     r1, #0xac
	str     r0, [r1, #0x0]
	mov     r2, #0x1
	mov     r1, r5
	str     r2, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x54] @ 0x22370b8, (=0x253)
	add     r1, #0xa8
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r3, r2
	bl      Function_201a7e8
	mov     r2, #0x1
	mov     r1, r5
	str     r2, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x38] @ 0x22370bc, (=0x22b)
	add     r1, #0xac
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r3, #0x15
	bl      Function_201a7e8
	mov     r1, r5
	add     r1, #0xa8
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, #0x0]
	bl      Function_22370c0
	mov     r1, r5
	add     r1, #0xac
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, #0x0]
	bl      Function_22370c0
.thumb
branch_22370aa: @ 22370aa :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2237180
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x22370b6


.align 2


.word 0x253 @ 0x22370b8
.word 0x22b @ 0x22370bc
.thumb
Function_22370c0: @ 22370c0 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r2, [pc, #0x14] @ 0x22370dc, (=0x3d9)
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, #0xc
	bl      Function_200dc48
	mov     r0, r4
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	pop     {r4,pc}
@ 0x22370da


.align 2


.word 0x3d9 @ 0x22370dc
.thumb
Function_22370e0: @ 22370e0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldrb    r0, [r1, #0x10]
	bl      Function_223ba14
	cmp     r0, #0x0
	bne     branch_2237114
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_22370fc
	bl      ErrorHandling
.thumb
branch_22370fc: @ 22370fc :thumb
	mov     r0, r5
	add     r0, #0xa8
	ldr     r4, [r0, #0x0]
	mov     r1, #0x0
	mov     r0, r4
	bl      Function_200dc9c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_201a928
	b       branch_2237170
@ 0x2237114

.thumb
branch_2237114: @ 2237114 :thumb
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2237122
	bl      ErrorHandling
.thumb
branch_2237122: @ 2237122 :thumb
	mov     r0, r5
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2237130
	bl      ErrorHandling
.thumb
branch_2237130: @ 2237130 :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2237144
	mov     r0, r5
	add     r0, #0xa8
	ldr     r4, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xac
	b       branch_223714e
@ 0x2237144

.thumb
branch_2237144: @ 2237144 :thumb
	mov     r0, r5
	add     r0, #0xac
	ldr     r4, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xa8
branch_223714e: @ 223714e :thumb
	ldr     r6, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_201a928
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_201a928
branch_2237170: @ 2237170 :thumb
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0xa8
	str     r1, [r0, #0x0]
	add     r5, #0xac
	str     r1, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x223717e


.align 2, 0


.thumb
Function_2237180: @ 2237180 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r4, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_223ba14
	cmp     r0, #0x0
	bne     branch_22371da
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_223719e
	bl      ErrorHandling
.thumb
branch_223719e: @ 223719e :thumb
	ldr     r0, [r5, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e630
	mov     r7, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, r7
	bl      Function_2030698
	mov     r6, r0
	ldr     r0, [r5, #0x4]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	mov     r0, r4
	add     r4, #0xa8
	ldr     r1, [r4, #0x0]
	mov     r3, r6
	bl      Function_2237284
	pop     {r3-r7,pc}
@ 0x22371da

.thumb
branch_22371da: @ 22371da :thumb
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_22371e8
	bl      ErrorHandling
.thumb
branch_22371e8: @ 22371e8 :thumb
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_22371f6
	bl      ErrorHandling
.thumb
branch_22371f6: @ 22371f6 :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_223722a
	ldr     r0, [r5, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e630
	mov     r7, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, r7
	bl      Function_2030698
	mov     r6, r0
	ldr     r0, [pc, #0x58] @ 0x2237280, (=0xa1c)
	ldrh    r5, [r5, r0]
	b       branch_2237254
@ 0x223722a

.thumb
branch_223722a: @ 223722a :thumb
	ldr     r0, [pc, #0x54] @ 0x2237280, (=0xa1c)
	ldrh    r6, [r5, r0]
	ldr     r0, [r5, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r7, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e630
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0x10]
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	bl      Function_2030698
	mov     r5, r0
.thumb
branch_2237254: @ 2237254 :thumb
	mov     r0, #0x0
	bl      Function_2032ee8
	mov     r1, r4
	add     r1, #0xa8
	mov     r2, r0
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	mov     r3, r6
	bl      Function_2237284
	mov     r0, #0x1
	bl      Function_2032ee8
	mov     r2, r0
	mov     r0, r4
	add     r4, #0xac
	ldr     r1, [r4, #0x0]
	mov     r3, r5
	bl      Function_2237284
	pop     {r3-r7,pc}
@ 0x2237280

.word 0xa1c @ 0x2237280
.thumb
Function_2237284: @ 2237284 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	str     r3, [sp, #0x14]
	str     r1, [sp, #0xc]
	ldr     r1, [r5, #0x34]
	mov     r0, #0x14
	str     r2, [sp, #0x10]
	bl      Function_2023790
	mov     r4, r0
	ldr     r1, [r5, #0x34]
	mov     r0, #0x14
	bl      Function_2023790
	mov     r6, r0
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, #0xc7
	mov     r3, #0xb
	bl      LoadFromNARC_9
	mov     r7, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x44]
	ldr     r2, [sp, #0x14]
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_200b60c
	mov     r0, r7
	mov     r1, #0x2
	mov     r2, r4
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r5, #0x44]
	mov     r1, r6
	mov     r2, r4
	bl      Function_200c388
	mov     r3, #0x10
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	ldr     r0, [sp, #0xc]
	str     r1, [sp, #0x8]
	mov     r2, r6
	bl      Function_201d738_CallInitTextInterpreter
	ldr     r0, [r5, #0x44]
	ldr     r2, [sp, #0x10]
	mov     r1, #0x0
	bl      Function_200b498
	mov     r0, r7
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [r5, #0x44]
	mov     r1, r6
	mov     r2, r4
	bl      Function_200c388
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	mov     r2, r6
	mov     r3, r1
	str     r1, [sp, #0x8]
	bl      Function_201d738_CallInitTextInterpreter
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	mov     r0, r7
	bl      Function_200b190
	ldr     r0, [sp, #0xc]
	bl      Function_201a954
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2237338

.thumb
Function_2237338: @ 2237338 :thumb
	ldrb    r3, [r0, #0x10]
	ldrh    r2, [r0, #0x16]
	cmp     r3, #0x1
	bhi     branch_223734e
	cmp     r2, #0x8
	bcc     branch_2237348
	mov     r1, #0x7
	b       branch_223735a
@ 0x2237348

.thumb
branch_2237348: @ 2237348 :thumb
	ldr     r1, [pc, #0x24] @ 0x2237370, (=0x223fab4)
	ldrb    r1, [r1, r2]
	b       branch_223735a
@ 0x223734e

.thumb
branch_223734e: @ 223734e :thumb
	cmp     r2, #0x8
	bcc     branch_2237356
	mov     r1, #0x12
	b       branch_223735a
@ 0x2237356

.thumb
branch_2237356: @ 2237356 :thumb
	ldr     r1, [pc, #0x1c] @ 0x2237374, (=0x223fac0)
	ldrb    r1, [r1, r2]
.thumb
branch_223735a: @ 223735a :thumb
	cmp     r3, #0x0
	bne     branch_223736a
	ldrh    r0, [r0, #0x14]
	cmp     r0, #0x15
	beq     branch_2237368
	cmp     r0, #0x31
	bne     branch_223736a
.thumb
branch_2237368: @ 2237368 :thumb
	mov     r1, #0x14
.thumb
branch_223736a: @ 223736a :thumb
	mov     r0, r1
	bx      lr
@ 0x223736e


.align 2


.word 0x223fab4 @ 0x2237370
.word 0x223fac0 @ 0x2237374
.thumb
Function_2237378: @ 2237378 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	bl      Function_222fc00
	str     r0, [sp, #0xc]
	mov     r0, r5
	bl      Function_222fc00
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fc00
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      Function_222fc00
	mov     r6, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r7, r0
	mov     r0, r5
	bl      Function_222fbe4
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	str     r6, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r1, [sp, #0x14]
	str     r7, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [r0, #0x8]
	ldr     r1, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	lsr     r2, r2, #24
	bl      Function_2237dd8
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b980
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22373da


.align 2, 0


.thumb
Function_22373dc: @ 22373dc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fc00
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r4
	bl      Function_223806c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22373f8

.thumb
Function_22373f8: @ 22373f8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	bl      Function_2238210
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223740a


.align 2, 0


.thumb
Function_223740c: @ 223740c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r7, r0
	mov     r0, #0xb
	mov     r1, #0x48
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0x48
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [r6, #0x8]
	mov     r1, r7
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_2237634
	ldr     r0, [pc, #0x14] @ 0x2237458, (=0x223770d)
	ldr     r1, [pc, #0x14] @ 0x223745c, (=0x223fad8)
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r2, r4
	ldr     r0, [r0, #0x0]
	mov     r3, #0x0
	bl      Function_209b988
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2237458

.word Function_223770c+1 @ =0x223770d, 0x2237458
.word 0x223fad8 @ 0x223745c
.thumb
Function_2237460: @ 2237460 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r6, r0
	ldr     r1, [r6, #0xc]
	mov     r4, #0x6d
	str     r1, [sp, #0x8]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0x8]
	lsl     r4, r4, #2
	ldr     r1, [r1, #0x4]
	ldr     r2, [r2, #0xc]
	ldr     r3, [r3, r4]
	bl      Function_2238538
	strb    r0, [r6, #0x1d]
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, #0x14]
	bl      Function_2052868
	str     r0, [r6, #0x28]
	ldrb    r0, [r6, #0x13]
	cmp     r0, #0x1b
	bne     branch_223749c
	mov     r1, #0x1
	mov     r7, #0x3
	b       branch_22374a0
@ 0x223749c

.thumb
branch_223749c: @ 223749c :thumb
	mov     r1, #0x0
	mov     r7, #0x2
.thumb
branch_22374a0: @ 22374a0 :thumb
	ldr     r0, [sp, #0x8]
	lsl     r5, r1, #2
	add     r4, r0, #0x4
	mov     r2, #0x0
	ldr     r0, [r4, r5]
	ldr     r1, [r6, #0x70]
	mov     r3, r2
	bl      Function_2239054
	mov     r2, #0x1
	ldr     r0, [r4, r5]
	ldr     r1, [r6, #0x70]
	mov     r3, r2
	bl      Function_2239054
	ldrb    r0, [r6, #0x10]
	bl      Function_223ba14
	cmp     r0, #0x0
	bne     branch_22374d6
	mov     r2, #0x2
	ldr     r0, [r4, r5]
	ldr     r1, [r6, #0x70]
	mov     r3, r2
	bl      Function_2239054
	b       branch_22374f4
@ 0x22374d6

.thumb
branch_22374d6: @ 22374d6 :thumb
	ldr     r0, [sp, #0x8]
	lsl     r5, r7, #2
	add     r4, r0, #0x4
	ldr     r0, [r4, r5]
	ldr     r1, [r6, #0x70]
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_2239054
	ldr     r0, [r4, r5]
	ldr     r1, [r6, #0x70]
	mov     r2, #0x1
	mov     r3, #0x3
	bl      Function_2239054
.thumb
branch_22374f4: @ 22374f4 :thumb
	ldrb    r0, [r6, #0x13]
	cmp     r0, #0x11
	bne     branch_2237548
	ldrb    r0, [r6, #0x10]
	mov     r1, #0x1
	bl      Function_223bd70
	mov     r5, #0x0
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_2237548
.thumb
branch_223750a: @ 223750a :thumb
	ldr     r0, [r6, #0x70]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r4, r0
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	.hword  0x1ef9 @ sub r1, r7, #0x3
	bl      GetBaseExpPts
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x8
	add     r2, sp, #0x10
	bl      SetPkmnData
	mov     r0, r4
	bl      Function_207418c
	ldr     r0, [sp, #0x4]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_223750a
.thumb
branch_2237548: @ 2237548 :thumb
	ldr     r0, [r6, #0x70]
	bl      GetNrOfPkmnInParty
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	ble     branch_22375ea
	mov     r5, r6
	add     r7, sp, #0x14
.thumb
branch_223755e: @ 223755e :thumb
	ldr     r0, [r6, #0x70]
	ldr     r1, [sp, #0x0]
	bl      GetAdrOfPkmnInParty
	mov     r1, r5
	add     r1, #0x94
	ldr     r1, [r1, #0x0]
	mov     r4, r0
	str     r1, [sp, #0x14]
	mov     r1, #0xa4
	mov     r2, r7
	bl      SetPkmnData
	mov     r0, r4
	mov     r1, #0xa3
	mov     r2, r7
	bl      SetPkmnData
	mov     r0, r5
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa5
	str     r0, [sp, #0x14]
	mov     r0, r4
	mov     r2, r7
	bl      SetPkmnData
	mov     r0, r5
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa6
	str     r0, [sp, #0x14]
	mov     r0, r4
	mov     r2, r7
	bl      SetPkmnData
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa7
	str     r0, [sp, #0x14]
	mov     r0, r4
	mov     r2, r7
	bl      SetPkmnData
	mov     r0, r5
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa8
	str     r0, [sp, #0x14]
	mov     r0, r4
	mov     r2, r7
	bl      SetPkmnData
	mov     r0, r5
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa9
	str     r0, [sp, #0x14]
	mov     r0, r4
	mov     r2, r7
	bl      SetPkmnData
	ldr     r0, [sp, #0x0]
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r1, r0, #0x1
	ldr     r0, [sp, #0xc]
	str     r1, [sp, #0x0]
	cmp     r1, r0
	blt     branch_223755e
.thumb
branch_22375ea: @ 22375ea :thumb
	ldr     r0, [sp, #0x8]
	bl      Function_20520a4
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22375f6


.align 2, 0


.thumb
Function_22375f8: @ 22375f8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r6
	mov     r4, r0
	bl      Function_223bdd8
	mov     r2, r0
	str     r2, [r4, #0xc]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2237630, (=JumpTable_BattleScreen)
	ldr     r0, [r0, #0x0]
	bl      Function_209b988
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2237630

.word JumpTable_BattleScreen @ 0x2237630
.thumb
Function_2237634: @ 2237634 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r4, r0
	ldrb    r0, [r7, #0x10]
	strb    r0, [r4, #0x4]
	mov     r0, r7
	bl      Function_223c124
	strh    r0, [r4, #0x1e]
	mov     r0, r7
	add     r0, #0x20
	str     r0, [r4, #0x14]
	mov     r0, r7
	add     r0, #0x13
	str     r0, [r4, #0x10]
	ldrb    r0, [r7, #0x1d]
	mov     r1, #0x0
	strb    r0, [r4, #0x7]
	ldrh    r0, [r7, #0x18]
	strh    r0, [r4, #0x1c]
	ldr     r0, [pc, #0xa8] @ 0x2237708, (=0xa78)
	ldrh    r0, [r7, r0]
	strh    r0, [r4, #0x18]
	mov     r0, r7
	add     r0, #0x1c
	str     r0, [r4, #0xc]
	ldr     r0, [r7, #0x70]
	str     r0, [r4, #0x30]
	ldr     r0, [r7, #0x74]
	str     r0, [r4, #0x34]
	str     r7, [r4, #0x3c]
	mov     r0, r7
	str     r1, [r7, #0x14]
	add     r0, #0x14
	str     r0, [r4, #0x8]
	ldrb    r0, [r7, #0x12]
	add     r4, #0x42
	strb    r0, [r4, #0x0]
	strb    r1, [r7, #0x12]
	strb    r1, [r7, #0x1f]
	ldr     r0, [r7, #0x70]
	bl      GetNrOfPkmnInParty
	mov     r6, #0x0
	str     r0, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_2237706
	mov     r5, r7
.thumb
branch_2237694: @ 2237694 :thumb
	ldr     r0, [r7, #0x70]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xa4
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	mov     r1, r5
	add     r1, #0x94
	str     r0, [r1, #0x0]
	mov     r0, r4
	mov     r1, #0xa5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r5
	add     r1, #0xa4
	str     r0, [r1, #0x0]
	mov     r0, r4
	mov     r1, #0xa6
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r5
	add     r1, #0xb4
	str     r0, [r1, #0x0]
	mov     r0, r4
	mov     r1, #0xa7
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r5
	add     r1, #0xc4
	str     r0, [r1, #0x0]
	mov     r0, r4
	mov     r1, #0xa8
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r5
	add     r1, #0xd4
	str     r0, [r1, #0x0]
	mov     r0, r4
	mov     r1, #0xa9
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r5
	add     r1, #0xe4
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_2237694
.thumb
branch_2237706: @ 2237706 :thumb
	pop     {r3-r7,pc}
@ 0x2237708

.word 0xa78 @ 0x2237708
.thumb
Function_223770c: @ 223770c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x3c]
	mov     r1, r4
	bl      Function_2238240
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2237720

.thumb
Function_2237720: @ 2237720 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	bl      Function_22384d4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2237732


.align 2, 0


.thumb
Function_2237734: @ 2237734 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	bl      Function_22384dc
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2237746


.align 2, 0


.thumb
Function_2237748: @ 2237748 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r7, r0
	ldr     r2, [r7, #0x1c]
	add     r1, r2, #0x1
	str     r1, [r7, #0x1c]
	ldrb    r1, [r2, #0x0]
	str     r1, [sp, #0x20]
	bl      Function_222fc00
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	mov     r0, r7
	bl      Function_222fc00
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x1c]
	mov     r0, r7
	bl      Function_222fbe4
	mov     r5, r0
	ldr     r0, [r7, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r4, r0
	ldr     r0, [r7, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	str     r0, [sp, #0x24]
	ldr     r0, [r7, #0x0]
	bl      Function_222e924
	ldr     r1, [sp, #0x20]
	str     r0, [sp, #0x28]
	cmp     r1, #0x34
	bls     branch_2237798
	b       branch_2237c02
@ 0x2237798

.thumb
branch_2237798: @ 2237798 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22377a4

Jumppoints_22377a4:
.hword branch_2237c02 - Jumppoints_22377a4 - 2
.hword branch_2237c02 - Jumppoints_22377a4 - 2
.hword branch_223780e - Jumppoints_22377a4 - 2
.hword branch_2237812 - Jumppoints_22377a4 - 2
.hword branch_223781e - Jumppoints_22377a4 - 2
.hword branch_2237824 - Jumppoints_22377a4 - 2
.hword branch_22379a0 - Jumppoints_22377a4 - 2
.hword branch_2237832 - Jumppoints_22377a4 - 2
.hword branch_2237c02 - Jumppoints_22377a4 - 2
.hword branch_223783a - Jumppoints_22377a4 - 2
.hword branch_2237844 - Jumppoints_22377a4 - 2
.hword branch_2237a52 - Jumppoints_22377a4 - 2
.hword branch_223784e - Jumppoints_22377a4 - 2
.hword branch_2237c02 - Jumppoints_22377a4 - 2
.hword branch_223785a - Jumppoints_22377a4 - 2
.hword branch_2237864 - Jumppoints_22377a4 - 2
.hword branch_2237886 - Jumppoints_22377a4 - 2
.hword branch_22379b2 - Jumppoints_22377a4 - 2
.hword branch_223788c - Jumppoints_22377a4 - 2
.hword branch_22378ba - Jumppoints_22377a4 - 2
.hword branch_22378c4 - Jumppoints_22377a4 - 2
.hword branch_22378d0 - Jumppoints_22377a4 - 2
.hword branch_22378d8 - Jumppoints_22377a4 - 2
.hword branch_22378e0 - Jumppoints_22377a4 - 2
.hword branch_22378ea - Jumppoints_22377a4 - 2
.hword branch_22378f2 - Jumppoints_22377a4 - 2
.hword branch_2237c02 - Jumppoints_22377a4 - 2
.hword branch_2237c02 - Jumppoints_22377a4 - 2
.hword branch_22379a8 - Jumppoints_22377a4 - 2
.hword branch_22379b8 - Jumppoints_22377a4 - 2
.hword branch_22379be - Jumppoints_22377a4 - 2
.hword branch_22379c4 - Jumppoints_22377a4 - 2
.hword branch_2237a22 - Jumppoints_22377a4 - 2
.hword branch_2237a2e - Jumppoints_22377a4 - 2
.hword branch_2237a34 - Jumppoints_22377a4 - 2
.hword branch_2237a3a - Jumppoints_22377a4 - 2
.hword branch_2237a46 - Jumppoints_22377a4 - 2
.hword branch_2237a5c - Jumppoints_22377a4 - 2
.hword branch_2237a72 - Jumppoints_22377a4 - 2
.hword branch_2237ac2 - Jumppoints_22377a4 - 2
.hword branch_2237ad4 - Jumppoints_22377a4 - 2
.hword branch_2237b06 - Jumppoints_22377a4 - 2
.hword branch_2237b14 - Jumppoints_22377a4 - 2
.hword branch_2237b22 - Jumppoints_22377a4 - 2
.hword branch_2237b40 - Jumppoints_22377a4 - 2
.hword branch_2237b82 - Jumppoints_22377a4 - 2
.hword branch_2237b8c - Jumppoints_22377a4 - 2
.hword branch_2237b96 - Jumppoints_22377a4 - 2
.hword branch_2237b9c - Jumppoints_22377a4 - 2
.hword branch_2237bbe - Jumppoints_22377a4 - 2
.hword branch_2237bea - Jumppoints_22377a4 - 2
.hword branch_2237bf2 - Jumppoints_22377a4 - 2
.hword branch_2237bfc - Jumppoints_22377a4 - 2
.thumb
branch_223780e: @ 223780e :thumb
	strb    r6, [r4, #0x10]
	b       branch_2237c02
@ 0x2237812

.thumb
branch_2237812: @ 2237812 :thumb
	lsl     r0, r6, #1
	add     r1, r4, r0
	ldr     r0, [pc, #0x314] @ 0x2237b2c, (=0x418)
	ldrh    r0, [r1, r0]
	strh    r0, [r5, #0x0]
	b       branch_2237c02
@ 0x223781e

.thumb
branch_223781e: @ 223781e :thumb
	ldrh    r0, [r4, #0x18]
	strh    r0, [r5, #0x0]
	b       branch_2237c02
@ 0x2237824

.thumb
branch_2237824: @ 2237824 :thumb
	ldrh    r1, [r4, #0x18]
	ldr     r0, [pc, #0x308] @ 0x2237b30, (=0x270f)
	cmp     r1, r0
	bcs     branch_22378b8
	add     r0, r1, #0x1
	strh    r0, [r4, #0x18]
	b       branch_2237c02
@ 0x2237832

.thumb
branch_2237832: @ 2237832 :thumb
	mov     r0, #0x0
	blx     OS_ResetSystem
	b       branch_2237c02
@ 0x223783a

.thumb
branch_223783a: @ 223783a :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_20304b0
	strh    r0, [r5, #0x0]
	b       branch_2237c02
@ 0x2237844

.thumb
branch_2237844: @ 2237844 :thumb
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2238278
	b       branch_2237c02
@ 0x223784e

.thumb
branch_223784e: @ 223784e :thumb
	ldrb    r1, [r4, #0x13]
	mov     r0, r4
	bl      Function_223c0bc
	strh    r0, [r5, #0x0]
	b       branch_2237c02
@ 0x223785a

.thumb
branch_223785a: @ 223785a :thumb
	mov     r0, r4
	bl      Function_2238454
	strh    r0, [r5, #0x0]
	b       branch_2237c02
@ 0x2237864

.thumb
branch_2237864: @ 2237864 :thumb
	cmp     r6, #0x0
	bne     branch_2237872
	ldr     r0, [r4, #0x70]
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	b       branch_223787a
@ 0x2237872

.thumb
branch_2237872: @ 2237872 :thumb
	ldr     r0, [r4, #0x74]
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
.thumb
branch_223787a: @ 223787a :thumb
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r5, #0x0]
	b       branch_2237c02
@ 0x2237886

.thumb
branch_2237886: @ 2237886 :thumb
	ldrb    r0, [r4, #0x13]
	strh    r0, [r5, #0x0]
	b       branch_2237c02
@ 0x223788c

.thumb
branch_223788c: @ 223788c :thumb
	ldr     r0, [sp, #0x24]
	ldr     r0, [r0, #0x8]
	bl      LoadPokePartyAdress
	mov     r7, r0
	ldr     r0, [pc, #0x29c] @ 0x2237b34, (=0x412)
	mov     r5, #0x0
	add     r6, r4, r0
.thumb
branch_223789c: @ 223789c :thumb
	add     r1, r4, r5
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	mov     r0, r7
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x6
	mov     r2, r6
	bl      SetPkmnData
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r5, #0x3
	blt     branch_223789c
.thumb
branch_22378b8: @ 22378b8 :thumb
	b       branch_2237c02
@ 0x22378ba

.thumb
branch_22378ba: @ 22378ba :thumb
	mov     r0, r4
	bl      Function_223c124
	strh    r0, [r5, #0x0]
	b       branch_2237c02
@ 0x22378c4

.thumb
branch_22378c4: @ 22378c4 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2238464
	strh    r0, [r5, #0x0]
	b       branch_2237c02
@ 0x22378d0

.thumb
branch_22378d0: @ 22378d0 :thumb
	mov     r0, r4
	bl      Function_22384a8
	b       branch_2237c02
@ 0x22378d8

.thumb
branch_22378d8: @ 22378d8 :thumb
	mov     r0, r4
	bl      Function_22384b4
	b       branch_2237c02
@ 0x22378e0

.thumb
branch_22378e0: @ 22378e0 :thumb
	mov     r0, r4
	bl      Function_2238460
	strh    r0, [r5, #0x0]
	b       branch_2237c02
@ 0x22378ea

.thumb
branch_22378ea: @ 22378ea :thumb
	ldr     r0, [pc, #0x24c] @ 0x2237b38, (=0xa74)
	ldrb    r0, [r4, r0]
	strh    r0, [r5, #0x0]
	b       branch_2237c02
@ 0x22378f2

.thumb
branch_22378f2: @ 22378f2 :thumb
	ldrb    r0, [r4, #0x13]
	cmp     r0, #0x1b
	bne     branch_223799e
	ldrb    r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_223bd70
	str     r0, [sp, #0x18]
	ldrb    r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_223bda4
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	ble     branch_223799e
.thumb
branch_2237914: @ 2237914 :thumb
	ldr     r0, [r4, #0x30]
	ldr     r7, [r0, #0x0]
	mov     r0, r7
	bl      Function_2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x38
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [r4, #0x40]
	ldr     r5, [r0, #0x0]
	mov     r0, r5
	bl      Function_2021d28
	mov     r6, r0
	add     r3, sp, #0x2c
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	mov     r0, r7
	bl      Function_2021c50
	mov     r0, r5
	add     r1, sp, #0x38
	bl      Function_2021c50
	ldr     r0, [r4, #0x50]
	ldr     r7, [r0, #0x0]
	mov     r0, r7
	bl      Function_2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x38
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [r4, #0x60]
	ldr     r5, [r0, #0x0]
	mov     r0, r5
	bl      Function_2021d28
	mov     r6, r0
	add     r3, sp, #0x2c
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	mov     r0, r7
	bl      Function_2021c50
	mov     r0, r5
	add     r1, sp, #0x38
	bl      Function_2021c50
	ldr     r0, [sp, #0x10]
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x18]
	str     r1, [sp, #0x10]
	cmp     r1, r0
	blt     branch_2237914
.thumb
branch_223799e: @ 223799e :thumb
	b       branch_2237c02
@ 0x22379a0

.thumb
branch_22379a0: @ 22379a0 :thumb
	mov     r0, r4
	bl      Function_209ba80
	b       branch_2237c02
@ 0x22379a8

.thumb
branch_22379a8: @ 22379a8 :thumb
	ldrb    r0, [r4, #0x10]
	bl      Function_223c000
	strh    r0, [r5, #0x0]
	b       branch_2237c02
@ 0x22379b2

.thumb
branch_22379b2: @ 22379b2 :thumb
	ldrb    r0, [r4, #0x10]
	strh    r0, [r5, #0x0]
	b       branch_2237c02
@ 0x22379b8

.thumb
branch_22379b8: @ 22379b8 :thumb
	bl      Function_2232ec0
	b       branch_2237c02
@ 0x22379be

.thumb
branch_22379be: @ 22379be :thumb
	bl      Function_2232f28
	b       branch_2237c02
@ 0x22379c4

.thumb
branch_22379c4: @ 22379c4 :thumb
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	mov     r2, r6
	bl      Function_2238764
	ldrb    r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_223bd70
	str     r0, [sp, #0x14]
	ldrb    r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_223bda4
	mov     r7, r0
	cmp     r6, #0x0
	bne     branch_2237a06
	ldr     r0, [sp, #0x14]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_2237a04
	mov     r6, #0x2
.thumb
branch_22379f0: @ 22379f0 :thumb
	ldr     r0, [r4, #0x30]
	mov     r1, r6
	ldr     r0, [r0, #0x0]
	bl      Function_2021e80
	ldr     r0, [sp, #0x14]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, r0
	blt     branch_22379f0
.thumb
branch_2237a04: @ 2237a04 :thumb
	b       branch_2237c02
@ 0x2237a06

.thumb
branch_2237a06: @ 2237a06 :thumb
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_2237a20
	mov     r6, #0x2
.thumb
branch_2237a0e: @ 2237a0e :thumb
	ldr     r0, [r4, #0x40]
	mov     r1, r6
	ldr     r0, [r0, #0x0]
	bl      Function_2021e80
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, r7
	blt     branch_2237a0e
.thumb
branch_2237a20: @ 2237a20 :thumb
	b       branch_2237c02
@ 0x2237a22

.thumb
branch_2237a22: @ 2237a22 :thumb
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	mov     r2, r6
	bl      Function_2238814
	b       branch_2237c02
@ 0x2237a2e

.thumb
branch_2237a2e: @ 2237a2e :thumb
	bl      Function_2232fec
	b       branch_2237c02
@ 0x2237a34

.thumb
branch_2237a34: @ 2237a34 :thumb
	bl      Function_223307c
	b       branch_2237c02
@ 0x2237a3a

.thumb
branch_2237a3a: @ 2237a3a :thumb
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	mov     r2, r6
	bl      Function_22388dc
	b       branch_2237c02
@ 0x2237a46

.thumb
branch_2237a46: @ 2237a46 :thumb
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	mov     r2, r6
	bl      Function_22389a0
	b       branch_2237c02
@ 0x2237a52

.thumb
branch_2237a52: @ 2237a52 :thumb
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	bl      Function_2238658
	b       branch_2237c02
@ 0x2237a5c

.thumb
branch_2237a5c: @ 2237a5c :thumb
	ldrb    r0, [r4, #0x10]
	bl      Function_223c000
	cmp     r0, #0x1
	beq     branch_2237a68
	b       branch_2237c02
@ 0x2237a68

.thumb
branch_2237a68: @ 2237a68 :thumb
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	bl      Function_2238728
	b       branch_2237c02
@ 0x2237a72

.thumb
branch_2237a72: @ 2237a72 :thumb
	ldrb    r0, [r4, #0x13]
	bl      Function_223c148
	cmp     r0, #0x0
	bne     branch_2237a9a
	ldr     r1, [sp, #0x1c]
	mov     r0, r4
	bl      Function_2238498
	mov     r2, r0
	lsl     r2, r2, #1
	add     r2, r4, r2
	ldr     r0, [r7, #0x0]
	add     r2, #0x78
	ldrh    r2, [r2, #0x0]
	ldr     r0, [r0, #0x44]
	mov     r1, r6
	bl      Function_200ba40
	b       branch_2237c02
@ 0x2237a9a

.thumb
branch_2237a9a: @ 2237a9a :thumb
	ldrb    r0, [r4, #0x10]
	bl      Function_223c000
	cmp     r0, #0x0
	bne     branch_2237aae
	ldr     r0, [sp, #0x24]
	ldr     r0, [r0, #0x8]
	bl      LoadTrainerDataAdress
	b       branch_2237ab4
@ 0x2237aae

.thumb
branch_2237aae: @ 2237aae :thumb
	ldr     r0, [sp, #0x1c]
	bl      Function_2032ee8
.thumb
branch_2237ab4: @ 2237ab4 :thumb
	mov     r2, r0
	ldr     r0, [r7, #0x0]
	mov     r1, r6
	ldr     r0, [r0, #0x44]
	bl      Function_200b498
	b       branch_2237c02
@ 0x2237ac2

.thumb
branch_2237ac2: @ 2237ac2 :thumb
	ldr     r1, [pc, #0x78] @ 0x2237b3c, (=0xa7a)
	ldr     r0, [sp, #0x1c]
	mov     r2, r6
	strb    r0, [r4, r1]
	mov     r0, r7
	mov     r1, r4
	bl      Function_2237c0c
	b       branch_2237c02
@ 0x2237ad4

.thumb
branch_2237ad4: @ 2237ad4 :thumb
	ldrb    r1, [r4, #0x11]
	mov     r0, r4
	add     r0, #0xf4
	lsl     r1, r1, #1
	add     r1, r4, r1
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	mov     r2, #0xb
	mov     r3, #0xb2
	bl      Function_222e278
	ldrb    r1, [r4, #0x11]
	mov     r0, #0x81
	lsl     r0, r0, #2
	.hword  0x1dc9 @ add r1, r1, #0x7
	lsl     r1, r1, #1
	add     r1, r4, r1
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	add     r0, r4, r0
	mov     r2, #0xb
	mov     r3, #0xb2
	bl      Function_222e278
	b       branch_2237c02
@ 0x2237b06

.thumb
branch_2237b06: @ 2237b06 :thumb
	ldr     r1, [sp, #0x28]
	ldr     r3, [sp, #0x1c]
	mov     r0, r4
	mov     r2, r6
	bl      Function_223886c
	b       branch_2237c02
@ 0x2237b14

.thumb
branch_2237b14: @ 2237b14 :thumb
	ldr     r1, [sp, #0x28]
	ldr     r3, [sp, #0x1c]
	mov     r0, r4
	mov     r2, r6
	bl      Function_22388a4
	b       branch_2237c02
@ 0x2237b22

.thumb
branch_2237b22: @ 2237b22 :thumb
	ldr     r1, [sp, #0x1c]
	mov     r0, r6
	bl      Function_2238ab4
	b       branch_2237c02
@ 0x2237b2c

.word 0x418 @ 0x2237b2c
.word 0x270f @ 0x2237b30
.word 0x412 @ 0x2237b34
.word 0xa74 @ 0x2237b38
.word 0xa7a @ 0x2237b3c
.thumb
branch_2237b40: @ 2237b40 :thumb
	cmp     r6, #0x0
	bne     branch_2237b58
	str     r6, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r1, #0x2
	mov     r3, r1
	ldr     r0, [r0, #0x4]
	add     r3, #0xfe
	bl      Function_20039b0
	b       branch_2237c02
@ 0x2237b58

.thumb
branch_2237b58: @ 2237b58 :thumb
	ldr     r0, [r7, #0x0]
	ldr     r1, [sp, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      Function_223d5a8
	ldr     r0, [r0, #0x4]
	bl      0x222d050
	mov     r2, r0
	lsl     r2, r2, #20
	str     r6, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x2
	ldr     r0, [r0, #0x4]
	lsr     r2, r2, #16
	mov     r3, #0x10
	bl      Function_20039b0
	b       branch_2237c02
@ 0x2237b82

.thumb
branch_2237b82: @ 2237b82 :thumb
	mov     r0, r4
	bl      Function_2239014
	strh    r0, [r5, #0x0]
	b       branch_2237c02
@ 0x2237b8c

.thumb
branch_2237b8c: @ 2237b8c :thumb
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	b       branch_2237c02
@ 0x2237b96

.thumb
branch_2237b96: @ 2237b96 :thumb
	ldrb    r0, [r4, #0x1f]
	strh    r0, [r5, #0x0]
	b       branch_2237c02
@ 0x2237b9c

.thumb
branch_2237b9c: @ 2237b9c :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	ldrb    r0, [r4, #0x10]
	cmp     r0, #0x0
	bne     branch_2237c02
	ldrh    r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x15
	bne     branch_2237bb4
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	b       branch_2237c02
@ 0x2237bb4

.thumb
branch_2237bb4: @ 2237bb4 :thumb
	cmp     r0, #0x31
	bne     branch_2237c02
	mov     r0, #0x2
	strh    r0, [r5, #0x0]
	b       branch_2237c02
@ 0x2237bbe

.thumb
branch_2237bbe: @ 2237bbe :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	mov     r3, #0x33
	lsl     r3, r3, #4
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	mov     r0, #0xb3
	mov     r1, r3
	mov     r2, r3
	str     r0, [sp, #0xc]
	add     r0, r4, r3
	sub     r1, #0x1c
	sub     r2, #0x14
	sub     r3, #0x10
	add     r1, r4, r1
	add     r2, r4, r2
	add     r3, r4, r3
	bl      Function_222e330
	b       branch_2237c02
@ 0x2237bea

.thumb
branch_2237bea: @ 2237bea :thumb
	mov     r0, r4
	bl      Function_223c04c
	b       branch_2237c02
@ 0x2237bf2

.thumb
branch_2237bf2: @ 2237bf2 :thumb
	ldrb    r0, [r4, #0x1e]
	strh    r0, [r5, #0x0]
	mov     r0, #0x1
	strb    r0, [r4, #0x1e]
	b       branch_2237c02
@ 0x2237bfc

.thumb
branch_2237bfc: @ 2237bfc :thumb
	ldr     r0, [pc, #0x8] @ 0x2237c08, (=0xa7c)
	mov     r1, #0x0
	strb    r1, [r4, r0]
.thumb
branch_2237c02: @ 2237c02 :thumb
	mov     r0, #0x0
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x2237c08

.word 0xa7c @ 0x2237c08
.thumb
Function_2237c0c: @ 2237c0c :thumb
	push    {r3-r5,lr}
	ldr     r0, [r0, #0x0]
	mov     r5, r1
	mov     r4, r2
	bl      Function_222e924
	ldr     r0, [r0, #0x10]
	mov     r1, #0x0
	bl      Function_223d6d0
	ldr     r2, [pc, #0x8] @ 0x2237c2c, (=0x2237c31)
	mov     r1, r4
	mov     r3, r5
	bl      Function_20146f4
	pop     {r3-r5,pc}
@ 0x2237c2c

.word Function_2237c30+1 @ =0x2237c31, 0x2237c2c
.thumb
Function_2237c30: @ 2237c30 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r0
	bl      Function_2014764
	ldr     r5, [pc, #0x68] @ 0x2237ca4, (=0x223facc)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x8
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0x5c] @ 0x2237ca8, (=0xa7a)
	ldrb    r0, [r2, r0]
	cmp     r0, #0x1
	bne     branch_2237ca0
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2014798
	add     r1, sp, #0x0
	mov     r0, #0x0
	ldsh    r2, [r1, r0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	mul     r0, r2
	strh    r0, [r1, #0x0]
	mov     r0, r4
	ldrh    r2, [r1, #0x0]
	add     r0, #0x50
	strh    r2, [r0, #0x0]
	mov     r0, r4
	ldrh    r2, [r1, #0x2]
	add     r0, #0x52
	strh    r2, [r0, #0x0]
	mov     r0, r4
	ldrh    r1, [r1, #0x4]
	add     r0, #0x54
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x20]
	ldr     r1, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	add     r0, r1, r0
	str     r0, [r4, #0x28]
	ldr     r0, [r4, #0x20]
	ldr     r1, [sp, #0xc]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x8]
	add     r0, r1, r0
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x20]
	ldr     r1, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	add     r0, r1, r0
	str     r0, [r4, #0x30]
.thumb
branch_2237ca0: @ 2237ca0 :thumb
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2237ca4

.word 0x223facc @ 0x2237ca4
.word 0xa7a @ 0x2237ca8
.thumb
Function_2237cac: @ 2237cac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fbe4
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	ldr     r0, [r0, #0x28]
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2237cc6


.align 2, 0


.thumb
Function_2237cc8: @ 2237cc8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_222fc00
	mov     r6, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r7, r0
	mov     r0, r5
	bl      Function_222fbe4
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r6
	mov     r2, r7
	bl      Function_2238b40
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2237cf8

.thumb
Function_2237cf8: @ 2237cf8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222ea48
	mov     r1, r4
	add     r1, #0x78
	strh    r0, [r1, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2237d14, (=0x2237d19)
	mov     r0, r4
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2237d12


.align 2


.word Function_2237d18+1 @ =0x2237d19, 0x2237d14
.thumb
Function_2237d18: @ 2237d18 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	bl      Function_222fc8c
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	ldr     r1, [pc, #0x14] @ 0x2237d44, (=0xa7c)
	ldrb    r2, [r0, r1]
	cmp     r2, #0x2
	bcc     branch_2237d3e
	mov     r2, #0x0
	strb    r2, [r0, r1]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2237d3e

.thumb
branch_2237d3e: @ 2237d3e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2237d42


.align 2


.word 0xa7c @ 0x2237d44
.thumb
Function_2237d48: @ 2237d48 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r1, [r5, #0x1c]
	add     r0, r1, #0x1
	str     r0, [r5, #0x1c]
	ldr     r0, [r5, #0x0]
	ldrb    r4, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r2, r0
	bne     branch_2237d6c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2237d6c

.thumb
branch_2237d6c: @ 2237d6c :thumb
	mov     r1, #0x43
	lsl     r1, r1, #2
	add     r2, r2, r1
	lsl     r1, r4, #4
	add     r1, r4, r1
	lsl     r1, r1, #4
	mov     r0, r5
	add     r1, r2, r1
	bl      Function_22330fc
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2237d84

.thumb
Function_2237d84: @ 2237d84 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	ldrb    r1, [r0, #0x13]
	bl      Function_2238b88
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2237d98

.thumb
Function_2237d98: @ 2237d98 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      Function_222e924
	mov     r6, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r7, r0
	mov     r0, r5
	bl      Function_222fc00
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_222fc00
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	ldr     r3, [sp, #0x4]
	mov     r1, r6
	mov     r2, r7
	str     r4, [sp, #0x0]
	bl      Function_22389f4
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2237dd8

.thumb
Function_2237dd8: @ 2237dd8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r7, r1
	mov     r4, r0
	str     r2, [sp, #0x4]
	ldr     r1, [pc, #0x27c] @ 0x2238060, (=0xa88)
	mov     r0, #0xb
	str     r3, [sp, #0x8]
	bl      malloc
	ldr     r1, [pc, #0x274] @ 0x2238064, (=0x2241acc)
	ldr     r2, [pc, #0x270] @ 0x2238060, (=0xa88)
	str     r0, [r1, #0x0]
	mov     r1, #0x0
	blx     MI_CpuFill8
	ldr     r0, [pc, #0x268] @ 0x2238064, (=0x2241acc)
	ldr     r5, [r0, #0x0]
	mov     r0, r4
	bl      Function_20304a0
	str     r0, [r5, #0x8]
	ldr     r1, [pc, #0x25c] @ 0x2238064, (=0x2241acc)
	str     r4, [r5, #0x4]
	mov     r0, #0xb
	str     r0, [r5, #0x0]
	ldr     r5, [r1, #0x0]
	bl      AllocPkmnParty
	str     r0, [r5, #0x70]
	mov     r0, #0xb
	bl      AllocPkmnParty
	str     r0, [r5, #0x74]
	mov     r0, #0x2a
	ldr     r1, [sp, #0x38]
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	mov     r0, #0x20
	strb    r0, [r5, #0x13]
	mov     r0, r4
	ldr     r6, [r5, #0x8]
	bl      Function_20305b8
	mov     r4, r0
	cmp     r7, #0x0
	bne     branch_2237edc
	ldr     r0, [pc, #0x22c] @ 0x2238064, (=0x2241acc)
	mov     r1, #0x0
	ldr     r2, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	strb    r0, [r2, #0x10]
	strb    r1, [r2, #0x11]
	mov     r0, #0x3
	strb    r0, [r2, #0x1c]
	mov     r0, r6
	strb    r1, [r2, #0x12]
	bl      Function_2030494
	ldr     r0, [pc, #0x214] @ 0x2238064, (=0x2241acc)
	ldr     r0, [r0, #0x0]
	ldrb    r2, [r0, #0x10]
	cmp     r2, #0x3
	bne     branch_2237e64
	ldr     r0, [r0, #0x4]
	bl      LoadFlagAdress
	bl      Function_206b6fc
	b       branch_2237e70
@ 0x2237e64

.thumb
branch_2237e64: @ 2237e64 :thumb
	mov     r3, #0x0
	mov     r0, r4
	mov     r1, #0x8
	str     r3, [sp, #0x0]
	bl      Function_2030600
.thumb
branch_2237e70: @ 2237e70 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bne     branch_2237ea8
	ldr     r0, [pc, #0x1e8] @ 0x2238064, (=0x2241acc)
	ldr     r5, [r0, #0x0]
	ldr     r0, [r5, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	ldr     r0, [pc, #0x1dc] @ 0x2238064, (=0x2241acc)
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x10]
	bl      Function_205e700
	mov     r6, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e700
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_2030698
	strh    r0, [r5, #0x18]
	b       branch_2237eb0
@ 0x2237ea8

.thumb
branch_2237ea8: @ 2237ea8 :thumb
	ldr     r0, [pc, #0x1b8] @ 0x2238064, (=0x2241acc)
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	strh    r1, [r0, #0x18]
.thumb
branch_2237eb0: @ 2237eb0 :thumb
	ldr     r0, [pc, #0x1b0] @ 0x2238064, (=0x2241acc)
	mov     r1, #0x7
	ldr     r4, [r0, #0x0]
	ldrh    r0, [r4, #0x18]
	blx     _s32_div_f
	strh    r0, [r4, #0x1a]
	mov     r0, #0x0
	str     r0, [r4, #0x24]
	mov     r1, r4
	ldr     r0, [sp, #0x8]
	add     r1, #0x2c
	strb    r0, [r1, #0x0]
	mov     r0, r4
	add     r1, sp, #0x20
	ldrh    r2, [r1, #0x10]
	add     r0, #0x2d
	add     r4, #0x2e
	strb    r2, [r0, #0x0]
	ldrh    r0, [r1, #0x14]
	strb    r0, [r4, #0x0]
	b       branch_2237f84
@ 0x2237edc

.thumb
branch_2237edc: @ 2237edc :thumb
	mov     r1, #0x0
	mov     r0, r6
	mov     r2, r1
	mov     r3, r1
	str     r1, [sp, #0x0]
	bl      Function_203054c
	ldr     r1, [pc, #0x178] @ 0x2238064, (=0x2241acc)
	mov     r2, #0x0
	ldr     r1, [r1, #0x0]
	mov     r3, r2
	strb    r0, [r1, #0x10]
	mov     r0, r6
	mov     r1, #0x2
	str     r2, [sp, #0x0]
	bl      Function_203054c
	ldr     r1, [pc, #0x164] @ 0x2238064, (=0x2241acc)
	mov     r2, #0x0
	ldr     r4, [r1, #0x0]
	mov     r1, #0x3
	strb    r0, [r4, #0x11]
	str     r2, [sp, #0x0]
	mov     r0, r6
	mov     r3, r2
	bl      Function_203054c
	strb    r0, [r4, #0x1c]
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_203054c
	strb    r0, [r4, #0x12]
	ldr     r0, [pc, #0x13c] @ 0x2238064, (=0x2241acc)
	ldr     r5, [r0, #0x0]
	ldr     r0, [r5, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r7, r0
	ldr     r0, [pc, #0x130] @ 0x2238064, (=0x2241acc)
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x10]
	bl      Function_205e700
	str     r0, [sp, #0x10]
	ldrb    r0, [r4, #0x10]
	bl      Function_205e700
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	bl      Function_2030698
	strh    r0, [r5, #0x18]
	ldrh    r0, [r5, #0x18]
	mov     r1, #0x7
	blx     _s32_div_f
	mov     r4, #0x0
	strh    r0, [r5, #0x1a]
	mov     r7, r4
.thumb
branch_2237f60: @ 2237f60 :thumb
	ldr     r0, [pc, #0x100] @ 0x2238064, (=0x2241acc)
	lsl     r2, r4, #24
	ldr     r5, [r0, #0x0]
	mov     r0, r6
	mov     r1, #0x6
	lsr     r2, r2, #24
	mov     r3, r7
	str     r7, [sp, #0x0]
	bl      Function_203054c
	add     r1, r5, r4
	add     r1, #0x2c
	strb    r0, [r1, #0x0]
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x3
	bcc     branch_2237f60
.thumb
branch_2237f84: @ 2237f84 :thumb
	ldr     r6, [pc, #0xdc] @ 0x2238064, (=0x2241acc)
	ldr     r7, [pc, #0xe0] @ 0x2238068, (=0x412)
	mov     r5, #0x0
.thumb
branch_2237f8a: @ 2237f8a :thumb
	ldr     r4, [r6, #0x0]
	ldr     r0, [r4, #0x4]
	bl      LoadPokePartyAdress
	add     r1, r4, r5
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	bl      GetAdrOfPkmnInParty
	ldr     r4, [r6, #0x0]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r1, r5, #1
	add     r1, r4, r1
	strh    r0, [r1, r7]
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x3
	bcc     branch_2237f8a
	ldr     r0, [r4, #0x4]
	bl      LoadPokePartyAdress
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xa4] @ 0x2238064, (=0x2241acc)
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x10]
	bl      Function_223bd70
	mov     r7, r0
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_223803e
	ldr     r6, [pc, #0x90] @ 0x2238064, (=0x2241acc)
.thumb
branch_2237fd4: @ 2237fd4 :thumb
	ldr     r1, [r6, #0x0]
	ldr     r0, [sp, #0xc]
	add     r1, r1, r5
	add     r1, #0x2c
	ldrb    r1, [r1, #0x0]
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x70]
	bl      CopyPkmnDataToParty
	ldr     r0, [r6, #0x0]
	mov     r1, r5
	ldr     r0, [r0, #0x70]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x0
	str     r1, [sp, #0x18]
	mov     r4, r0
	mov     r1, #0x6
	add     r2, sp, #0x18
	bl      SetPkmnData
	mov     r0, r4
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x32
	bls     branch_2238034
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0x32
	bl      GetBaseExpPts
	str     r0, [sp, #0x14]
	mov     r0, r4
	mov     r1, #0x8
	add     r2, sp, #0x14
	bl      SetPkmnData
	mov     r0, r4
	bl      Function_207418c
.thumb
branch_2238034: @ 2238034 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, r7
	blt     branch_2237fd4
.thumb
branch_223803e: @ 223803e :thumb
	ldr     r0, [pc, #0x24] @ 0x2238064, (=0x2241acc)
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x10]
	bl      Function_223c000
	cmp     r0, #0x1
	bne     branch_2238056
	ldr     r0, [pc, #0x14] @ 0x2238064, (=0x2241acc)
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	bl      Function_222e630
.thumb
branch_2238056: @ 2238056 :thumb
	ldr     r0, [pc, #0xc] @ 0x2238064, (=0x2241acc)
	ldr     r0, [r0, #0x0]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223805e


.align 2


.word 0xa88 @ 0x2238060
.word 0x2241acc @ 0x2238064
.word 0x412 @ 0x2238068
.thumb
Function_223806c: @ 223806c :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	bne     branch_2238078
	bl      Function_2238080
	pop     {r3,pc}
@ 0x2238078

.thumb
branch_2238078: @ 2238078 :thumb
	bl      Function_2238114
	pop     {r3,pc}
@ 0x223807e


.align 2, 0


.thumb
Function_2238080: @ 2238080 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	bl      Function_223c124
	mov     r1, r0
	mov     r2, r5
	ldrb    r0, [r5, #0x10]
	add     r2, #0x78
	mov     r3, #0xe
	bl      Function_223bd28
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x1
	ldrb    r4, [r5, #0x11]
	bl      Function_223bda4
	mov     r6, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_223c000
	mov     r3, #0x33
	lsl     r3, r3, #4
	add     r1, r5, r3
	str     r1, [sp, #0x0]
	mov     r1, r3
	sub     r1, #0x14
	add     r1, r5, r1
	str     r1, [sp, #0x4]
	mov     r1, r3
	sub     r1, #0x10
	add     r1, r5, r1
	add     r2, r4, #0x7
	str     r1, [sp, #0x8]
	lsl     r0, r0, #24
	lsl     r1, r4, #1
	lsl     r2, r2, #1
	lsr     r0, r0, #24
	add     r1, r5, r1
	add     r2, r5, r2
	str     r0, [sp, #0xc]
	add     r1, #0x78
	add     r2, #0x78
	sub     r3, #0x1c
	ldrh    r1, [r1, #0x0]
	ldrh    r2, [r2, #0x0]
	mov     r0, r6
	add     r3, r5, r3
	bl      Function_222e4bc
	mov     r0, r5
	bl      Function_223c124
	ldr     r3, [pc, #0x20] @ 0x223810c, (=0x223faf8)
	mov     r2, #0x0
.thumb
branch_22380ee: @ 22380ee :thumb
	ldrb    r1, [r3, #0x0]
	cmp     r0, r1
	blt     branch_2238100
	ldr     r0, [pc, #0x18] @ 0x2238110, (=0x223faf9)
	lsl     r1, r2, #1
	ldrb    r0, [r0, r1]
	add     sp, #0x10
	strb    r0, [r5, #0x1c]
	pop     {r4-r6,pc}
@ 0x2238100

.thumb
branch_2238100: @ 2238100 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x3
	bcc     branch_22380ee
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223810c

.word 0x223faf8 @ 0x223810c
.word 0x223faf9 @ 0x2238110
.thumb
Function_2238114: @ 2238114 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x18c
	mov     r5, r0
	bl      Function_22381c4
	mov     r4, #0x0
	mov     r6, r5
	mov     r7, r4
.thumb
branch_2238124: @ 2238124 :thumb
	str     r7, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x5
	lsr     r2, r2, #24
	mov     r3, r7
	bl      Function_203054c
	mov     r1, r6
	add     r1, #0x78
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	strh    r0, [r1, #0x0]
	cmp     r4, #0xe
	blt     branch_2238124
	mov     r6, #0x0
	add     r4, sp, #0x30
	mov     r7, r5
.thumb
branch_2238148: @ 2238148 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	lsl     r2, r6, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x7
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_203054c
	strh    r0, [r4, #0x0]
	ldrh    r1, [r4, #0x0]
	mov     r0, #0xc5
	lsl     r0, r0, #2
	strh    r1, [r7, r0]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cbf @ add r7, r7, #0x2
	cmp     r6, #0x4
	blt     branch_2238148
	add     r0, sp, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	mov     r0, #0xb3
	str     r0, [sp, #0xc]
	add     r0, sp, #0x3c
	add     r1, sp, #0x30
	add     r2, sp, #0x10
	mov     r3, #0x0
	bl      Function_222e330
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r6, r0
	mov     r7, #0x0
	add     r4, sp, #0x3c
.thumb
branch_2238196: @ 2238196 :thumb
	mov     r0, r5
	bl      Function_223bffc
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_222df40
	ldr     r1, [r5, #0x74]
	mov     r0, r5
	mov     r2, r6
	bl      Function_223c034
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x38
	cmp     r7, #0x4
	blt     branch_2238196
	mov     r0, r6
	bl      free
	add     sp, #0x18c
	pop     {r4-r7,pc}
@ 0x22381c2


.align 2, 0


.thumb
Function_22381c4: @ 22381c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x70]
	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_223820a
.thumb
branch_22381da: @ 22381da :thumb
	ldr     r0, [r5, #0x70]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x4
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_203054c
	add     r1, sp, #0x4
	strh    r0, [r1, #0x0]
	mov     r0, r6
	mov     r1, #0x6
	add     r2, sp, #0x4
	bl      SetPkmnData
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_22381da
.thumb
branch_223820a: @ 223820a :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223820e


.align 2, 0


.thumb
Function_2238210: @ 2238210 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_223823a
	ldr     r0, [r4, #0x70]
	cmp     r0, #0x0
	beq     branch_2238220
	bl      free
.thumb
branch_2238220: @ 2238220 :thumb
	ldr     r0, [r4, #0x74]
	cmp     r0, #0x0
	beq     branch_223822a
	bl      free
.thumb
branch_223822a: @ 223822a :thumb
	ldr     r2, [pc, #0x10] @ 0x223823c, (=0xa88)
	mov     r0, r4
	mov     r1, #0x0
	blx     MI_CpuFill8
	mov     r0, r4
	bl      free
.thumb
branch_223823a: @ 223823a :thumb
	pop     {r4,pc}
@ 0x223823c

.word 0xa88 @ 0x223823c
.thumb
Function_2238240: @ 2238240 :thumb
	push    {r3-r7,lr}
	ldr     r7, [pc, #0x1c] @ 0x2238260, (=0x418)
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
.thumb
branch_223824a: @ 223824a :thumb
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	bl      Function_2238264
	strh    r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x6
	blt     branch_223824a
	pop     {r3-r7,pc}
@ 0x2238260

.word 0x418 @ 0x2238260
.thumb
Function_2238264: @ 2238264 :thumb
	push    {r3,lr}
	cmp     r1, #0x6
	bcc     branch_2238272
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2238272

.thumb
branch_2238272: @ 2238272 :thumb
	ldrh    r0, [r0, #0x38]
	pop     {r3,pc}
@ 0x2238276


.align 2, 0


.thumb
Function_2238278: @ 2238278 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	bl      Function_20305b8
	str     r0, [sp, #0x4]
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x1
	bl      Function_223bda4
	ldrb    r1, [r5, #0x10]
	add     r0, sp, #0x8
	strb    r1, [r0, #0x8]
	mov     r1, #0x0
	add     r0, sp, #0x10
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r2, r1
	mov     r3, r1
	bl      Function_20304cc
	ldr     r0, [r5, #0x8]
	mov     r1, #0x1
	bl      Function_20304b8
	mov     r2, #0x0
	ldrb    r1, [r5, #0x11]
	add     r0, sp, #0x8
	mov     r3, r2
	strb    r1, [r0, #0x8]
	add     r0, sp, #0x10
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x2
	bl      Function_20304cc
	mov     r2, #0x0
	ldrb    r1, [r5, #0x1c]
	add     r0, sp, #0x8
	mov     r3, r2
	strb    r1, [r0, #0x8]
	add     r0, sp, #0x10
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x3
	bl      Function_20304cc
	mov     r2, #0x0
	ldrb    r1, [r5, #0x12]
	add     r0, sp, #0x8
	mov     r3, r2
	strb    r1, [r0, #0x8]
	add     r0, sp, #0x10
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x1
	bl      Function_20304cc
	ldr     r0, [r5, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e700
	mov     r7, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e700
	bl      Function_205e6a8
	mov     r2, r0
	ldrh    r3, [r5, #0x18]
	mov     r0, r6
	mov     r1, r7
	bl      Function_20306e4
	cmp     r4, #0x2
	beq     branch_223837e
	ldr     r0, [r5, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e728
	mov     r6, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_205e728
	bl      Function_205e6a8
	mov     r2, r0
	ldrh    r3, [r5, #0x18]
	mov     r0, r4
	mov     r1, r6
	bl      Function_2030848
	mov     r0, r5
	add     r0, #0x2f
	ldrb    r1, [r0, #0x0]
	add     r0, sp, #0x8
	mov     r3, #0x0
	strb    r1, [r0, #0x8]
	add     r0, sp, #0x10
	str     r0, [sp, #0x0]
	ldrb    r2, [r5, #0x10]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x8
	bl      Function_20305cc
	ldrb    r0, [r5, #0x10]
	cmp     r0, #0x3
	bne     branch_223837e
	ldr     r0, [r5, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	mov     r0, #0x6e
	bl      Function_205e6a8
	mov     r3, r5
	add     r3, #0x2f
	mov     r2, r0
	ldrb    r3, [r3, #0x0]
	mov     r0, r4
	mov     r1, #0x6e
	bl      Function_20306e4
.thumb
branch_223837e: @ 223837e :thumb
	mov     r4, #0x0
	add     r6, sp, #0x8
	add     r7, sp, #0x8
.thumb
branch_2238384: @ 2238384 :thumb
	lsl     r0, r4, #1
	add     r0, r5, r0
	add     r0, #0x78
	ldrh    r0, [r0, #0x0]
	lsl     r2, r4, #24
	mov     r1, #0x5
	strh    r0, [r7, #0x0]
	str     r6, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_20304cc
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0xe
	bcc     branch_2238384
	mov     r4, #0x0
	add     r6, sp, #0x10
	add     r7, sp, #0x8
.thumb
branch_22383ae: @ 22383ae :thumb
	add     r0, r5, r4
	add     r0, #0x2c
	ldrb    r0, [r0, #0x0]
	lsl     r2, r4, #24
	mov     r1, #0x6
	strb    r0, [r7, #0x8]
	str     r6, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_20304cc
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x3
	bcc     branch_22383ae
	ldr     r0, [r5, #0x70]
	bl      GetNrOfPkmnInParty
	mov     r6, r0
	ldr     r4, [pc, #0x74] @ 0x2238450, (=0x0)
	beq     branch_223840c
	add     r7, sp, #0x8
.thumb
branch_22383de: @ 22383de :thumb
	ldr     r0, [r5, #0x70]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	add     r1, sp, #0x8
	strh    r0, [r1, #0x0]
	str     r7, [sp, #0x0]
	lsl     r2, r4, #24
	ldr     r0, [r5, #0x8]
	mov     r1, #0x4
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_20304cc
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, r6
	bcc     branch_22383de
.thumb
branch_223840c: @ 223840c :thumb
	ldr     r0, [r5, #0x74]
	bl      GetNrOfPkmnInParty
	mov     r6, r0
	ldr     r4, [pc, #0x38] @ 0x2238450, (=0x0)
	beq     branch_223844a
	add     r7, sp, #0x8
.thumb
branch_223841a: @ 223841a :thumb
	ldr     r0, [r5, #0x74]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	lsl     r0, r4, #1
	add     r1, r5, r0
	mov     r0, #0xc5
	lsl     r0, r0, #2
	ldrh    r1, [r1, r0]
	add     r0, sp, #0x8
	lsl     r2, r4, #24
	strh    r1, [r0, #0x0]
	str     r7, [sp, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r1, #0x7
	lsr     r2, r2, #24
	mov     r3, #0x0
	bl      Function_20304cc
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, r6
	bcc     branch_223841a
.thumb
branch_223844a: @ 223844a :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223844e


.align 2


.word 0x0 @ 0x2238450
.thumb
Function_2238454: @ 2238454 :thumb
	ldrb    r1, [r0, #0x11]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x11]
	ldrb    r0, [r0, #0x11]
	bx      lr
@ 0x223845e


.align 2, 0


.thumb
Function_2238460: @ 2238460 :thumb
	ldrb    r0, [r0, #0x11]
	bx      lr
@ 0x2238464

.thumb
Function_2238464: @ 2238464 :thumb
	push    {r4,lr}
	add     sp, #-0x30
	mov     r4, r0
	bl      Function_2238498
	lsl     r1, r0, #24
	lsr     r1, r1, #23
	add     r1, r4, r1
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	add     r0, sp, #0x0
	mov     r2, #0xb
	mov     r3, #0xb2
	bl      Function_222dd04
	bl      free
	add     r0, sp, #0x0
	ldrh    r0, [r0, #0x4]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_222e10c
	add     sp, #0x30
	pop     {r4,pc}
@ 0x2238496


.align 2, 0


.thumb
Function_2238498: @ 2238498 :thumb
	ldrb    r2, [r0, #0x11]
	mov     r0, #0x7
	mul     r0, r1
	add     r0, r2, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x22384a6


.align 2, 0


.thumb
Function_22384a8: @ 22384a8 :thumb
	ldr     r3, [pc, #0x4] @ 0x22384b0, (=0x2238279)
	mov     r1, #0x1
	bx      r3
@ 0x22384ae


.align 2


.word Function_2238278+1 @ =0x2238279, 0x22384b0
.thumb
Function_22384b4: @ 22384b4 :thumb
	mov     r1, r0
	mov     r2, #0x1
	add     r1, #0x2f
	strb    r2, [r1, #0x0]
	ldrh    r1, [r0, #0x1a]
	cmp     r1, #0x8
	bcs     branch_22384c6
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r0, #0x1a]
.thumb
branch_22384c6: @ 22384c6 :thumb
	ldr     r3, [pc, #0x8] @ 0x22384d0, (=0x2238279)
	mov     r1, #0x0
	strb    r1, [r0, #0x11]
	bx      r3
@ 0x22384ce


.align 2


.word Function_2238278+1 @ =0x2238279, 0x22384d0
.thumb
Function_22384d4: @ 22384d4 :thumb
	ldr     r3, [pc, #0x0] @ 0x22384d8, (=0x223c04d)
	bx      r3
@ 0x22384d8

.word 0x223c04d @ 0x22384d8
.thumb
Function_22384dc: @ 22384dc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x1
	ldrb    r4, [r5, #0x11]
	bl      Function_223bda4
	mov     r6, r0
	ldrb    r0, [r5, #0x10]
	bl      Function_223c000
	mov     r3, #0x33
	lsl     r3, r3, #4
	add     r1, r5, r3
	str     r1, [sp, #0x0]
	mov     r1, r3
	sub     r1, #0x14
	add     r1, r5, r1
	str     r1, [sp, #0x4]
	mov     r1, r3
	sub     r1, #0x10
	add     r1, r5, r1
	add     r2, r4, #0x7
	str     r1, [sp, #0x8]
	lsl     r0, r0, #24
	lsl     r1, r4, #1
	lsl     r2, r2, #1
	lsr     r0, r0, #24
	add     r1, r5, r1
	add     r2, r5, r2
	str     r0, [sp, #0xc]
	add     r1, #0x78
	add     r2, #0x78
	sub     r3, #0x1c
	ldrh    r1, [r1, #0x0]
	ldrh    r2, [r2, #0x0]
	mov     r0, r6
	add     r3, r5, r3
	bl      Function_222e4bc
	mov     r0, r5
	bl      Function_223c04c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2238538

.thumb
Function_2238538: @ 2238538 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldrb    r0, [r6, #0x10]
	mov     r4, #0x0
	mov     r7, r1
	str     r2, [sp, #0x0]
	mov     r1, r4
	mov     r5, r3
	bl      Function_223bd70
	mov     r3, r0
	ldr     r2, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	bl      Function_2238584
	ldr     r2, [pc, #0x20] @ 0x223857c, (=0x223fafe)
	add     r4, r4, r0
	mov     r1, #0x0
.thumb
branch_223855e: @ 223855e :thumb
	ldrb    r0, [r2, #0x0]
	cmp     r5, r0
	bge     branch_223856e
	ldr     r0, [pc, #0x18] @ 0x2238580, (=0x223faff)
	lsl     r1, r1, #1
	ldrb    r0, [r0, r1]
	add     r4, r4, r0
	b       branch_2238576
@ 0x223856e

.thumb
branch_223856e: @ 223856e :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, #0x5
	blt     branch_223855e
.thumb
branch_2238576: @ 2238576 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x223857a


.align 2


.word 0x223fafe @ 0x223857c
.word 0x223faff @ 0x2238580
.thumb
Function_2238584: @ 2238584 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r3, [sp, #0xc]
	str     r0, [sp, #0x0]
	mov     r4, #0x0
	ldr     r0, [sp, #0xc]
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r5, r4
	mov     r6, r4
	cmp     r0, #0x0
	ble     branch_22385e2
.thumb
branch_223859c: @ 223859c :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xac
	mov     r2, #0x0
	mov     r7, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_22385da
	mov     r0, r7
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_22385c6
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
.thumb
branch_22385c6: @ 22385c6 :thumb
	mov     r0, r7
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_22385da
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
.thumb
branch_22385da: @ 22385da :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_223859c
.thumb
branch_22385e2: @ 22385e2 :thumb
	ldr     r0, [sp, #0x0]
	ldrb    r0, [r0, #0x10]
	bl      Function_223c000
	cmp     r0, #0x1
	bne     branch_223863c
	ldr     r0, [sp, #0xc]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_223863c
.thumb
branch_22385f6: @ 22385f6 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xac
	mov     r2, #0x0
	mov     r7, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2238634
	mov     r0, r7
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2238620
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
.thumb
branch_2238620: @ 2238620 :thumb
	mov     r0, r7
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2238634
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
.thumb
branch_2238634: @ 2238634 :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_22385f6
.thumb
branch_223863c: @ 223863c :thumb
	ldr     r0, [pc, #0x10] @ 0x2238650, (=0x223faf0)
	ldrb    r1, [r0, r5]
	mov     r0, #0x0
	add     r1, r0, r1
	ldr     r0, [pc, #0xc] @ 0x2238654, (=0x223fae8)
	ldrb    r0, [r0, r4]
	add     r0, r1, r0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223864e


.align 2


.word 0x223faf0 @ 0x2238650
.word 0x223fae8 @ 0x2238654
.thumb
Function_2238658: @ 2238658 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldrb    r0, [r5, #0x13]
	mov     r4, r1
	cmp     r0, #0x20
	beq     branch_223870e

	mov     r0, #FrontierBg_Narc
	mov     r1, #0x5e
	bl      LoadFromNARC_8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r1, #0x5e
	str     r1, [sp, #0xc]
	ldrb    r2, [r5, #0x13]
	mov     r1, #0x6
	mov     r6, r0
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0x94] @ 0x223871c, (=0x223fbba)
	ldr     r2, [r4, #0x0]
	ldrh    r1, [r1, r3]
	mov     r3, #0x2
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5e
	str     r0, [sp, #0xc]
	ldrb    r2, [r5, #0x13]
	mov     r1, #0x6
	mov     r0, r6
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0x74] @ 0x2238720, (=0x223fbbc)
	ldr     r2, [r4, #0x0]
	ldrh    r1, [r1, r3]
	mov     r3, #0x2
	bl      Function_200710c
	ldrb    r2, [r5, #0x13]
	mov     r1, #0x6
	mov     r0, r6
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0x60] @ 0x2238724, (=0x223fbbe)
	add     r2, sp, #0x10
	ldrh    r1, [r1, r3]
	mov     r3, #0x5e
	bl      Function_20071ec
	ldr     r1, [sp, #0x10]
	mov     r5, r0
	ldr     r0, [r1, #0xc]
	ldr     r1, [r1, #0x8]
	blx     DC_FlushRange
	blx     GX_BeginLoadBGExtPltt
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1
	lsl     r1, r1, #14
	ldr     r0, [r0, #0xc]
	lsr     r2, r1, #1
	blx     GX_LoadBGExtPltt
	blx     GX_EndLoadBGExtPltt
	mov     r0, r5
	bl      free
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      Function_201c3c0
	mov     r0, r6
	bl      Call_FS_CloseFile
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x223870e

.thumb
branch_223870e: @ 223870e :thumb
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x223871a


.align 2


.word 0x223fbba @ 0x223871c
.word 0x223fbbc @ 0x2238720
.word 0x223fbbe @ 0x2238724



.thumb
Function_2238728: @ 2238728 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r1

	mov     r0, #FrontierBg_Narc
	mov     r1, #0x5e
	bl      LoadFromNARC_8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r1, #0x5e
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r1, #0x35
	mov     r3, #0x3
	mov     r4, r0
	bl      Function_200710c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	bl      Function_201c3c0
	mov     r0, r4
	bl      Call_FS_CloseFile
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2238762


.align 2, 0


.thumb
Function_2238764: @ 2238764 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x4]
	ldrb    r0, [r0, #0x10]
	str     r1, [sp, #0x8]
	mov     r1, #0x1
	mov     r4, r2
	bl      Function_223bd70
	mov     r7, r0
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	ldrb    r0, [r0, #0x10]
	bl      Function_223bda4
	str     r0, [sp, #0xc]
	cmp     r4, #0x0
	bne     branch_22387c8
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_2238808
	ldr     r5, [pc, #0x7c] @ 0x223880c, (=0x223fb18)
	ldr     r6, [sp, #0x4]
.thumb
branch_2238792: @ 2238792 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	ldr     r0, [r0, #0x70]
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	mov     r0, #0x2
	ldsh    r0, [r5, r0]
	mov     r3, #0x0
	mov     r2, r4
	str     r0, [sp, #0x0]
	ldsh    r3, [r5, r3]
	ldr     r0, [sp, #0x8]
	bl      Function_2232f4c
	str     r0, [r6, #0x30]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2021cc8
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, r7
	blt     branch_2238792
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22387c8

.thumb
branch_22387c8: @ 22387c8 :thumb
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2238808
	ldr     r4, [pc, #0x40] @ 0x2238810, (=0x223fb28)
	ldr     r5, [sp, #0x4]
.thumb
branch_22387d2: @ 22387d2 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	ldr     r0, [r0, #0x74]
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	mov     r3, #0x0
	mov     r2, r7
	str     r0, [sp, #0x0]
	ldsh    r3, [r4, r3]
	ldr     r0, [sp, #0x8]
	bl      Function_2232f4c
	str     r0, [r5, #0x40]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2021cc8
	ldr     r0, [sp, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_22387d2
.thumb
branch_2238808: @ 2238808 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223880c

.word 0x223fb18 @ 0x223880c
.word 0x223fb28 @ 0x2238810
.thumb
Function_2238814: @ 2238814 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x10]
	mov     r7, r1
	mov     r1, #0x1
	mov     r6, r2
	bl      Function_223bd70
	mov     r4, r0
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x1
	bl      Function_223bda4
	str     r0, [sp, #0x0]
	cmp     r6, #0x0
	bne     branch_223884e
	mov     r6, #0x0
	cmp     r4, #0x0
	ble     branch_223886a
.thumb
branch_223883a: @ 223883a :thumb
	ldr     r1, [r5, #0x30]
	mov     r0, r7
	mov     r2, r6
	bl      Function_2232fd4
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r4
	blt     branch_223883a
	pop     {r3-r7,pc}
@ 0x223884e

.thumb
branch_223884e: @ 223884e :thumb
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_223886a
.thumb
branch_2238854: @ 2238854 :thumb
	ldr     r1, [r5, #0x40]
	mov     r0, r7
	mov     r2, r4
	bl      Function_2232fd4
	ldr     r0, [sp, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_2238854
.thumb
branch_223886a: @ 223886a :thumb
	pop     {r3-r7,pc}
@ 0x223886c

.thumb
Function_223886c: @ 223886c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x1
	mov     r6, r2
	mov     r4, r3
	bl      Function_223bd70
	cmp     r4, r0
	bge     branch_22388a2
	cmp     r6, #0x1
	bne     branch_2238894
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x30]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2021cac
	pop     {r4-r6,pc}
@ 0x2238894

.thumb
branch_2238894: @ 2238894 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x30]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_2021cac
.thumb
branch_22388a2: @ 22388a2 :thumb
	pop     {r4-r6,pc}
@ 0x22388a4

.thumb
Function_22388a4: @ 22388a4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x1
	mov     r6, r2
	mov     r4, r3
	bl      Function_223bda4
	cmp     r4, r0
	bge     branch_22388da
	cmp     r6, #0x1
	bne     branch_22388cc
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x40]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2021cac
	pop     {r4-r6,pc}
@ 0x22388cc

.thumb
branch_22388cc: @ 22388cc :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x40]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_2021cac
.thumb
branch_22388da: @ 22388da :thumb
	pop     {r4-r6,pc}
@ 0x22388dc

.thumb
Function_22388dc: @ 22388dc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	ldrb    r0, [r7, #0x10]
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	mov     r4, r2
	bl      Function_223bd70
	str     r0, [sp, #0x8]
	ldrb    r0, [r7, #0x10]
	mov     r1, #0x1
	bl      Function_223bda4
	str     r0, [sp, #0x4]
	cmp     r4, #0x0
	bne     branch_223894c
	ldr     r0, [sp, #0x8]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2238994
	ldr     r4, [pc, #0x90] @ 0x2238998, (=0x223fb18)
	mov     r5, r7
.thumb
branch_223890a: @ 223890a :thumb
	mov     r1, #0x0
	mov     r2, #0x2
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [sp, #0x0]
	add     r1, #0x8
	.hword  0x1d12 @ add r2, r2, #0x4
	bl      Function_22330ac
	str     r0, [r5, #0x50]
	ldr     r0, [r7, #0x70]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_223893c
	ldr     r0, [r5, #0x50]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_2021cac
.thumb
branch_223893c: @ 223893c :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_223890a
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223894c

.thumb
branch_223894c: @ 223894c :thumb
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2238994
	ldr     r4, [pc, #0x48] @ 0x223899c, (=0x223fb28)
	mov     r5, r7
.thumb
branch_2238956: @ 2238956 :thumb
	mov     r1, #0x0
	mov     r2, #0x2
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [sp, #0x0]
	add     r1, #0x8
	.hword  0x1d12 @ add r2, r2, #0x4
	bl      Function_22330ac
	str     r0, [r5, #0x60]
	ldr     r0, [r7, #0x74]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2238988
	ldr     r0, [r5, #0x60]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_2021cac
.thumb
branch_2238988: @ 2238988 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_2238956
.thumb
branch_2238994: @ 2238994 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2238998

.word 0x223fb18 @ 0x2238998
.word 0x223fb28 @ 0x223899c
.thumb
Function_22389a0: @ 22389a0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x10]
	mov     r4, r1
	mov     r1, #0x1
	mov     r6, r2
	bl      Function_223bd70
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x1
	bl      Function_223bda4
	mov     r7, r0
	cmp     r6, #0x0
	bne     branch_22389dc
	ldr     r0, [sp, #0x0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_22389f2
.thumb
branch_22389c8: @ 22389c8 :thumb
	ldr     r1, [r5, #0x50]
	mov     r0, r4
	bl      Function_22330f0
	ldr     r0, [sp, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	blt     branch_22389c8
	pop     {r3-r7,pc}
@ 0x22389dc

.thumb
branch_22389dc: @ 22389dc :thumb
	mov     r6, #0x0
	cmp     r7, #0x0
	ble     branch_22389f2
.thumb
branch_22389e2: @ 22389e2 :thumb
	ldr     r1, [r5, #0x60]
	mov     r0, r4
	bl      Function_22330f0
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r7
	blt     branch_22389e2
.thumb
branch_22389f2: @ 22389f2 :thumb
	pop     {r3-r7,pc}
@ 0x22389f4

.thumb
Function_22389f4: @ 22389f4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x1
	mov     r6, r2
	mov     r4, r3
	bl      Function_223bd70
	mov     r7, r0
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x1
	bl      Function_223bda4
	cmp     r6, #0x0
	bne     branch_2238a62
	cmp     r4, r7
	bge     branch_2238ab0
	ldr     r0, [r5, #0x70]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	add     r1, sp, #0x8
	ldrh    r1, [r1, #0x10]
	cmp     r1, #0x1
	bne     branch_2238a52
	cmp     r0, #0x0
	bne     branch_2238a42
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x50]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_2021cac
	pop     {r3-r7,pc}
@ 0x2238a42

.thumb
branch_2238a42: @ 2238a42 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x50]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2021cac
	pop     {r3-r7,pc}
@ 0x2238a52

.thumb
branch_2238a52: @ 2238a52 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x50]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_2021cac
	pop     {r3-r7,pc}
@ 0x2238a62

.thumb
branch_2238a62: @ 2238a62 :thumb
	cmp     r4, r0
	bge     branch_2238ab0
	ldr     r0, [r5, #0x74]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	add     r1, sp, #0x8
	ldrh    r1, [r1, #0x10]
	cmp     r1, #0x1
	bne     branch_2238aa2
	cmp     r0, #0x0
	bne     branch_2238a92
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x60]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_2021cac
	pop     {r3-r7,pc}
@ 0x2238a92

.thumb
branch_2238a92: @ 2238a92 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x60]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2021cac
	pop     {r3-r7,pc}
@ 0x2238aa2

.thumb
branch_2238aa2: @ 2238aa2 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x60]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_2021cac
.thumb
branch_2238ab0: @ 2238ab0 :thumb
	pop     {r3-r7,pc}
@ 0x2238ab2


.align 2, 0


.thumb
Function_2238ab4: @ 2238ab4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	cmp     r1, #0x0
	bne     branch_2238ac6
	mov     r5, #0x1e
	mov     r6, #0x8f
	lsl     r5, r5, #4
	b       branch_2238acc
@ 0x2238ac6

.thumb
branch_2238ac6: @ 2238ac6 :thumb
	mov     r6, #0x8e
	mov     r5, r6
	add     r5, #0x92
.thumb
branch_2238acc: @ 2238acc :thumb
	mov     r1, #0x2
	mov     r0, #0x5e
	lsl     r1, r1, #12
	bl      malloc
	mov     r2, #0x2
	mov     r1, #0x0
	lsl     r2, r2, #12
	mov     r4, r0
	blx     Call_FillMemWithValue

	mov     r0, #FrontierBg_Narc
	mov     r1, #0x5e
	bl      LoadFromNARC_8
	mov     r1, r6
	add     r2, sp, #0x8
	mov     r3, #0x5e
	str     r0, [sp, #0x4]
	bl      Function_20071ec
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r2, #0x1
	ldr     r0, [r0, #0xc]
	mov     r1, r4
	lsl     r2, r2, #12
	mov     r3, r7
	bl      Function_200393c
	mov     r1, #0x2
	mov     r0, r4
	lsl     r1, r1, #12
	blx     DC_FlushRange
	blx     GX_BeginLoadBGExtPltt
	mov     r1, #0x6
	mov     r0, r4
	lsl     r1, r1, #12
	mov     r2, r5
	blx     GX_LoadBGExtPltt
	blx     GX_EndLoadBGExtPltt
	ldr     r0, [sp, #0x4]
	bl      Call_FS_CloseFile
	mov     r0, r4
	bl      free
	mov     r0, r6
	bl      free
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2238b40

.thumb
Function_2238b40: @ 2238b40 :thumb
	push    {r3,lr}
	cmp     r1, #0x5
	bhi     branch_2238b84
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2238b52

Jumppoints_2238b52:
.hword branch_2238b5e - Jumppoints_2238b52 - 2
.hword branch_2238b64 - Jumppoints_2238b52 - 2
.hword branch_2238b6a - Jumppoints_2238b52 - 2
.hword branch_2238b70 - Jumppoints_2238b52 - 2
.hword branch_2238b78 - Jumppoints_2238b52 - 2
.hword branch_2238b80 - Jumppoints_2238b52 - 2
.thumb
branch_2238b5e: @ 2238b5e :thumb
	bl      Function_222f86c
	pop     {r3,pc}
@ 0x2238b64

.thumb
branch_2238b64: @ 2238b64 :thumb
	bl      Function_222f8d0
	pop     {r3,pc}
@ 0x2238b6a

.thumb
branch_2238b6a: @ 2238b6a :thumb
	bl      Function_222f944
	pop     {r3,pc}
@ 0x2238b70

.thumb
branch_2238b70: @ 2238b70 :thumb
	mov     r1, r2
	bl      Function_222fa38
	pop     {r3,pc}
@ 0x2238b78

.thumb
branch_2238b78: @ 2238b78 :thumb
	mov     r1, r2
	bl      Function_222fa84
	pop     {r3,pc}
@ 0x2238b80

.thumb
branch_2238b80: @ 2238b80 :thumb
	bl      Function_222fad0
.thumb
branch_2238b84: @ 2238b84 :thumb
	pop     {r3,pc}
@ 0x2238b86


.align 2, 0


.thumb
Function_2238b88: @ 2238b88 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	cmp     r6, #0x9
	bcs     branch_2238b9e
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x1
	ldr     r4, [r5, #0x74]
	bl      Function_223bda4
	b       branch_2238ba8
@ 0x2238b9e

.thumb
branch_2238b9e: @ 2238b9e :thumb
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x1
	ldr     r4, [r5, #0x70]
	bl      Function_223bd70
.thumb
branch_2238ba8: @ 2238ba8 :thumb
	ldr     r3, [pc, #0xc] @ 0x2238bb8, (=0x2241a38)
	mov     r1, r4
	lsl     r4, r6, #2
	mov     r2, r0
	ldr     r3, [r3, r4]
	mov     r0, r5
	blx     r3
	pop     {r4-r6,pc}
@ 0x2238bb8

.word 0x2241a38 @ 0x2238bb8
.thumb
Function_2238bbc: @ 2238bbc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r2
	mov     r5, #0x0
	str     r1, [sp, #0x0]
	cmp     r7, #0x0
	ble     branch_2238c0c
.thumb
branch_2238bca: @ 2238bca :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xa4
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	mov     r4, r0
	blx     _dfltu
	mov     r2, r0
	mov     r3, r1
	ldr     r0, [pc, #0x28] @ 0x2238c10, (=0x33333333)
	ldr     r1, [pc, #0x28] @ 0x2238c14, (=0x3ff33333)
	blx     Function_20e0234
	blx     _dfixu
	str     r0, [sp, #0x4]
	sub     r0, r0, r4
	str     r0, [sp, #0x4]
	sub     r0, r4, r0
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r1, #0xa3
	add     r2, sp, #0x4
	bl      SetPkmnData
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_2238bca
.thumb
branch_2238c0c: @ 2238c0c :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2238c10

.word 0x33333333 @ 0x2238c10
.word 0x3ff33333 @ 0x2238c14
.thumb
Function_2238c18: @ 2238c18 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r2, [sp, #0x8]
	str     r0, [sp, #0x0]
	mov     r5, #0x0
	ldr     r0, [sp, #0x8]
	str     r1, [sp, #0x4]
	str     r5, [sp, #0xc]
	cmp     r0, #0x0
	ble     branch_2238c88
.thumb
branch_2238c2c: @ 2238c2c :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r4, r0
	mov     r1, #0xb1
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0xb2
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0xa
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r6, #0x3
	beq     branch_2238c6a
	cmp     r7, #0x3
	beq     branch_2238c6a
	cmp     r6, #0x8
	beq     branch_2238c6a
	cmp     r7, #0x8
	beq     branch_2238c6a
	cmp     r0, #0x11
	bne     branch_2238c72
.thumb
branch_2238c6a: @ 2238c6a :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	b       branch_2238c80
@ 0x2238c72

.thumb
branch_2238c72: @ 2238c72 :thumb
	mov     r0, #0x8
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0xa0
	add     r2, sp, #0x10
	bl      SetPkmnData
.thumb
branch_2238c80: @ 2238c80 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_2238c2c
.thumb
branch_2238c88: @ 2238c88 :thumb
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	cmp     r1, r0
	blt     branch_2238c96
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	strb    r1, [r0, #0x1f]
.thumb
branch_2238c96: @ 2238c96 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2238c9a


.align 2, 0


.thumb
Function_2238c9c: @ 2238c9c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r2, [sp, #0x8]
	str     r0, [sp, #0x0]
	mov     r6, #0x0
	ldr     r0, [sp, #0x8]
	mov     r5, r6
	str     r1, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_2238d02
.thumb
branch_2238cb0: @ 2238cb0 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r4, r0
	mov     r1, #0xb1
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0xb2
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0xa
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r7, #0x4
	beq     branch_2238ce8
	ldr     r1, [sp, #0xc]
	cmp     r1, #0x4
	beq     branch_2238ce8
	cmp     r0, #0x7
	bne     branch_2238cec
.thumb
branch_2238ce8: @ 2238ce8 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	b       branch_2238cfa
@ 0x2238cec

.thumb
branch_2238cec: @ 2238cec :thumb
	mov     r0, #0x40
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0xa0
	add     r2, sp, #0x10
	bl      SetPkmnData
.thumb
branch_2238cfa: @ 2238cfa :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_2238cb0
.thumb
branch_2238d02: @ 2238d02 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r6, r0
	blt     branch_2238d0e
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	strb    r1, [r0, #0x1f]
.thumb
branch_2238d0e: @ 2238d0e :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2238d12


.align 2, 0


.thumb
Function_2238d14: @ 2238d14 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r2, [sp, #0x8]
	str     r0, [sp, #0x0]
	mov     r6, #0x0
	ldr     r0, [sp, #0x8]
	mov     r5, r6
	str     r1, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_2238d7a
.thumb
branch_2238d28: @ 2238d28 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r4, r0
	mov     r1, #0xb1
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0xb2
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0xa
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r7, #0xa
	beq     branch_2238d60
	ldr     r1, [sp, #0xc]
	cmp     r1, #0xa
	beq     branch_2238d60
	cmp     r0, #0x29
	bne     branch_2238d64
.thumb
branch_2238d60: @ 2238d60 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	b       branch_2238d72
@ 0x2238d64

.thumb
branch_2238d64: @ 2238d64 :thumb
	mov     r0, #0x10
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0xa0
	add     r2, sp, #0x10
	bl      SetPkmnData
.thumb
branch_2238d72: @ 2238d72 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_2238d28
.thumb
branch_2238d7a: @ 2238d7a :thumb
	ldr     r0, [sp, #0x8]
	cmp     r6, r0
	blt     branch_2238d86
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	strb    r1, [r0, #0x1f]
.thumb
branch_2238d86: @ 2238d86 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2238d8a


.align 2, 0


.thumb
Function_2238d8c: @ 2238d8c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	ldrh    r0, [r0, #0x20]
	mov     r5, r2
	str     r1, [sp, #0x4]
	mov     r1, r5
	mov     r6, #0x0
	blx     _s32_div_f
	lsl     r0, r1, #24
	lsr     r4, r0, #24
	mov     r7, r6
	cmp     r5, #0x0
	ble     branch_2238dfa
.thumb
branch_2238daa: @ 2238daa :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xa
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	bl      GetPkmnData
	cmp     r0, #0xf
	beq     branch_2238dc4
	cmp     r0, #0x48
	bne     branch_2238dd4
.thumb
branch_2238dc4: @ 2238dc4 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r4, r5
	bcc     branch_2238df4
	mov     r4, #0x0
	b       branch_2238df4
@ 0x2238dd4

.thumb
branch_2238dd4: @ 2238dd4 :thumb
	bl      PRNG
	lsr     r2, r0, #31
	lsl     r1, r0, #30
	sub     r1, r1, r2
	mov     r0, #0x1e
	ror     r1, r0
	add     r0, r2, r1
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	mov     r1, #0xa0
	add     r2, sp, #0xc
	bl      SetPkmnData
	b       branch_2238dfa
@ 0x2238df4

.thumb
branch_2238df4: @ 2238df4 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, r5
	blt     branch_2238daa
.thumb
branch_2238dfa: @ 2238dfa :thumb
	cmp     r6, r5
	blt     branch_2238e04
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	strb    r1, [r0, #0x1f]
.thumb
branch_2238e04: @ 2238e04 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2238e08

.thumb
Function_2238e08: @ 2238e08 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x0]
	ldrh    r0, [r0, #0x20]
	mov     r6, r2
	str     r1, [sp, #0x4]
	mov     r1, r6
	mov     r7, #0x0
	blx     _s32_div_f
	lsl     r0, r1, #24
	lsr     r5, r0, #24
	mov     r0, r7
	str     r0, [sp, #0x8]
	cmp     r6, #0x0
	ble     branch_2238e8c
.thumb
branch_2238e28: @ 2238e28 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r4, r0
	mov     r1, #0xb1
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0xb2
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0xa
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [sp, #0xc]
	cmp     r1, #0xf
	beq     branch_2238e62
	ldr     r1, [sp, #0x10]
	cmp     r1, #0xf
	beq     branch_2238e62
	cmp     r0, #0x28
	bne     branch_2238e72
.thumb
branch_2238e62: @ 2238e62 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r5, r6
	bcc     branch_2238e82
	mov     r5, #0x0
	b       branch_2238e82
@ 0x2238e72

.thumb
branch_2238e72: @ 2238e72 :thumb
	mov     r0, #0x20
	str     r0, [sp, #0x14]
	mov     r0, r4
	mov     r1, #0xa0
	add     r2, sp, #0x14
	bl      SetPkmnData
	b       branch_2238e8c
@ 0x2238e82

.thumb
branch_2238e82: @ 2238e82 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, r6
	blt     branch_2238e28
.thumb
branch_2238e8c: @ 2238e8c :thumb
	cmp     r7, r6
	blt     branch_2238e96
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	strb    r1, [r0, #0x1f]
.thumb
branch_2238e96: @ 2238e96 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2238e9a


.align 2, 0


.thumb
Function_2238e9c: @ 2238e9c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	bl      Function_223c124
	cmp     r0, #0x3
	bcs     branch_2238eb4
	ldr     r0, [pc, #0x44] @ 0x2238ef4, (=0x2241a20)
	mov     r1, #0x8
	ldr     r4, [r0, #0x0]
	b       branch_2238ec6
@ 0x2238eb4

.thumb
branch_2238eb4: @ 2238eb4 :thumb
	cmp     r0, #0x6
	bcs     branch_2238ec0
	ldr     r0, [pc, #0x38] @ 0x2238ef4, (=0x2241a20)
	mov     r1, #0x14
	ldr     r4, [r0, #0x4]
	b       branch_2238ec6
@ 0x2238ec0

.thumb
branch_2238ec0: @ 2238ec0 :thumb
	ldr     r0, [pc, #0x30] @ 0x2238ef4, (=0x2241a20)
	mov     r1, #0xa
	ldr     r4, [r0, #0x8]
.thumb
branch_2238ec6: @ 2238ec6 :thumb
	ldrh    r0, [r7, #0x20]
	blx     _s32_div_f
	lsl     r0, r1, #1
	ldrh    r1, [r4, r0]
	add     r0, sp, #0x0
	mov     r4, #0x0
	strh    r1, [r0, #0x0]
	cmp     r5, #0x0
	ble     branch_2238ef2
	mov     r7, #0x6
.thumb
branch_2238edc: @ 2238edc :thumb
	mov     r0, r6
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, r7
	add     r2, sp, #0x0
	bl      SetPkmnData
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r5
	blt     branch_2238edc
.thumb
branch_2238ef2: @ 2238ef2 :thumb
	pop     {r3-r7,pc}
@ 0x2238ef4

.word 0x2241a20 @ 0x2238ef4
.thumb
Function_2238ef8: @ 2238ef8 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	bl      Function_223c124
	cmp     r0, #0x3
	bcs     branch_2238f10
	ldr     r0, [pc, #0x44] @ 0x2238f50, (=0x2241a20)
	mov     r1, #0xb
	ldr     r4, [r0, #0xc]
	b       branch_2238f22
@ 0x2238f10

.thumb
branch_2238f10: @ 2238f10 :thumb
	cmp     r0, #0x6
	bcs     branch_2238f1c
	ldr     r0, [pc, #0x38] @ 0x2238f50, (=0x2241a20)
	mov     r1, #0xd
	ldr     r4, [r0, #0x10]
	b       branch_2238f22
@ 0x2238f1c

.thumb
branch_2238f1c: @ 2238f1c :thumb
	ldr     r0, [pc, #0x30] @ 0x2238f50, (=0x2241a20)
	mov     r1, #0xb
	ldr     r4, [r0, #0x14]
.thumb
branch_2238f22: @ 2238f22 :thumb
	ldrh    r0, [r7, #0x20]
	blx     _s32_div_f
	lsl     r0, r1, #1
	ldrh    r1, [r4, r0]
	add     r0, sp, #0x0
	mov     r4, #0x0
	strh    r1, [r0, #0x0]
	cmp     r5, #0x0
	ble     branch_2238f4e
	mov     r7, #0x6
.thumb
branch_2238f38: @ 2238f38 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, r7
	add     r2, sp, #0x0
	bl      SetPkmnData
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r5
	blt     branch_2238f38
.thumb
branch_2238f4e: @ 2238f4e :thumb
	pop     {r3-r7,pc}
@ 0x2238f50

.word 0x2241a20 @ 0x2238f50
.thumb
Function_2238f54: @ 2238f54 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r2
	mov     r4, #0x0
	str     r1, [sp, #0x0]
	cmp     r7, #0x0
	ble     branch_2238fa8
.thumb
branch_2238f62: @ 2238f62 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xa1
	mov     r2, #0x0
	mov     r5, r0
	bl      GetPkmnData
	add     r6, r0, #0x3
	cmp     r6, #0x64
	bls     branch_2238f80
	bl      ErrorHandling
	mov     r6, #0x64
.thumb
branch_2238f80: @ 2238f80 :thumb
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r6
	bl      GetBaseExpPts
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x8
	add     r2, sp, #0x4
	bl      SetPkmnData
	mov     r0, r5
	bl      Function_207418c
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_2238f62
.thumb
branch_2238fa8: @ 2238fa8 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2238fac

.thumb
Function_2238fac: @ 2238fac :thumb
	ldr     r1, [pc, #0x4] @ 0x2238fb4, (=0x3e9)
	str     r1, [r0, #0x14]
	bx      lr
@ 0x2238fb2


.align 2


.word 0x3e9 @ 0x2238fb4
.thumb
Function_2238fb8: @ 2238fb8 :thumb
	mov     r1, #0x2
	str     r1, [r0, #0x14]
	bx      lr
@ 0x2238fbe


.align 2, 0


.thumb
Function_2238fc0: @ 2238fc0 :thumb
	mov     r1, #0xa
	str     r1, [r0, #0x14]
	bx      lr
@ 0x2238fc6


.align 2, 0


.thumb
Function_2238fc8: @ 2238fc8 :thumb
	mov     r1, #0x5
	str     r1, [r0, #0x14]
	bx      lr
@ 0x2238fce


.align 2, 0


.thumb
Function_2238fd0: @ 2238fd0 :thumb
	mov     r1, #0xe
	str     r1, [r0, #0x14]
	bx      lr
@ 0x2238fd6


.align 2, 0


.thumb
Function_2238fd8: @ 2238fd8 :thumb
	ldr     r1, [pc, #0x4] @ 0x2238fe0, (=0x3ea)
	str     r1, [r0, #0x14]
	bx      lr
@ 0x2238fde


.align 2


.word 0x3ea @ 0x2238fe0
.thumb
Function_2238fe4: @ 2238fe4 :thumb
	ldrb    r1, [r0, #0x1c]
	cmp     r1, #0x7
	bcs     branch_2238fee
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x1c]
.thumb
branch_2238fee: @ 2238fee :thumb
	bx      lr
@ 0x2238ff0

.thumb
Function_2238ff0: @ 2238ff0 :thumb
	ldrb    r1, [r0, #0x1c]
	cmp     r1, #0x0
	beq     branch_2238ffa
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r0, #0x1c]
.thumb
branch_2238ffa: @ 2238ffa :thumb
	bx      lr
@ 0x2238ffc

.thumb
Function_2238ffc: @ 2238ffc :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x12]
	bx      lr
@ 0x2239002


.align 2, 0


.thumb
Function_2239004: @ 2239004 :thumb
	bx      lr
@ 0x2239006


.align 2, 0


.thumb
Function_2239008: @ 2239008 :thumb
	bx      lr
@ 0x223900a


.align 2, 0


.thumb
Function_223900c: @ 223900c :thumb
	bx      lr
@ 0x223900e


.align 2, 0


.thumb
Function_2239010: @ 2239010 :thumb
	bx      lr
@ 0x2239012


.align 2, 0


.thumb
Function_2239014: @ 2239014 :thumb
	ldrb    r3, [r0, #0x10]
	ldrh    r2, [r0, #0x1a]
	cmp     r3, #0x1
	bhi     branch_223902a
	cmp     r2, #0x8
	bcc     branch_2239024
	mov     r1, #0x6
	b       branch_2239036
@ 0x2239024

.thumb
branch_2239024: @ 2239024 :thumb
	ldr     r1, [pc, #0x24] @ 0x223904c, (=0x223fc7c)
	ldrb    r1, [r1, r2]
	b       branch_2239036
@ 0x223902a

.thumb
branch_223902a: @ 223902a :thumb
	cmp     r2, #0x8
	bcc     branch_2239032
	mov     r1, #0x11
	b       branch_2239036
@ 0x2239032

.thumb
branch_2239032: @ 2239032 :thumb
	ldr     r1, [pc, #0x1c] @ 0x2239050, (=0x223fc88)
	ldrb    r1, [r1, r2]
.thumb
branch_2239036: @ 2239036 :thumb
	cmp     r3, #0x0
	bne     branch_2239046
	ldrh    r0, [r0, #0x18]
	cmp     r0, #0x15
	beq     branch_2239044
	cmp     r0, #0x31
	bne     branch_2239046
.thumb
branch_2239044: @ 2239044 :thumb
	mov     r1, #0x14
.thumb
branch_2239046: @ 2239046 :thumb
	mov     r0, r1
	bx      lr
@ 0x223904a


.align 2


.word 0x223fc7c @ 0x223904c
.word 0x223fc88 @ 0x2239050
.thumb
Function_2239054: @ 2239054 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, r2
	mov     r4, r3
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x6
	add     r2, sp, #0x0
	bl      SetPkmnData
	pop     {r3-r5,pc}
@ 0x223907e


.align 2, 0


.thumb
Function_2239080: @ 2239080 :thumb
	push    {r3,lr}
	bl      Function_222fc00
	bl      Function_2005748
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223908e


.align 2, 0


.thumb
Function_2239090: @ 2239090 :thumb
	push    {r3,lr}
	bl      Function_222fc00
	mov     r1, #0x0
	bl      Function_20057a4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22390a0

.thumb
Function_22390a0: @ 22390a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222fc00
	mov     r1, r4
	add     r1, #0x78
	strh    r0, [r1, #0x0]
	ldr     r1, [pc, #0xc] @ 0x22390bc, (=0x22390c1)
	mov     r0, r4
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22390ba


.align 2


.word Function_22390c0+1 @ =0x22390c1, 0x22390bc
.thumb
Function_22390c0: @ 22390c0 :thumb
	push    {r3,lr}
	add     r0, #0x78
	ldrh    r0, [r0, #0x0]
	bl      Function_20057d4
	cmp     r0, #0x0
	bne     branch_22390d2
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22390d2

.thumb
branch_22390d2: @ 22390d2 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22390d6


.align 2, 0


.thumb
Function_22390d8: @ 22390d8 :thumb
	push    {r3,lr}
	bl      Function_222ea48
	bl      Function_2006150
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22390e6


.align 2, 0


.thumb
Function_22390e8: @ 22390e8 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x8] @ 0x22390f4, (=0x22390f9)
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22390f4

.word Function_22390f8+1 @ =0x22390f9, 0x22390f4
.thumb
Function_22390f8: @ 22390f8 :thumb
	push    {r3,lr}
	bl      Function_20061e4
	cmp     r0, #0x0
	bne     branch_2239106
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2239106

.thumb
branch_2239106: @ 2239106 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223910a


.align 2, 0


.thumb
Function_223910c: @ 223910c :thumb
	push    {r3,lr}
	bl      Function_222ea48
	bl      Function_200549c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223911a


.align 2, 0


.thumb
Function_223911c: @ 223911c :thumb
	push    {r3,lr}
	bl      Function_222ea48
	bl      Function_20041fc
	mov     r1, #0x0
	bl      Function_20055d0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2239130

.thumb
Function_2239130: @ 2239130 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [r7, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r5, r0
	mov     r0, r7
	bl      Function_222ea48
	mov     r6, r0
	mov     r0, r7
	bl      Function_222fc00
	str     r0, [sp, #0x0]
	mov     r0, r7
	bl      Function_222fbe4
	mov     r4, r0
	ldr     r0, [r7, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	cmp     r6, #0x3b
	bgt     branch_22391b0
	mov     r1, r6
	sub     r1, #0x21
	bmi     branch_22391aa
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2239174

Jumppoints_2239174:
.hword branch_22391ec - Jumppoints_2239174 - 2
.hword branch_22391f4 - Jumppoints_2239174 - 2
.hword branch_22391fc - Jumppoints_2239174 - 2
.hword branch_2239204 - Jumppoints_2239174 - 2
.hword branch_223922e - Jumppoints_2239174 - 2
.hword branch_2239236 - Jumppoints_2239174 - 2
.hword branch_2239240 - Jumppoints_2239174 - 2
.hword branch_2239214 - Jumppoints_2239174 - 2
.hword branch_223921c - Jumppoints_2239174 - 2
.hword branch_223926c - Jumppoints_2239174 - 2
.hword branch_223920c - Jumppoints_2239174 - 2
.hword branch_2239226 - Jumppoints_2239174 - 2
.hword branch_223926c - Jumppoints_2239174 - 2
.hword branch_22391bc - Jumppoints_2239174 - 2
.hword branch_223926c - Jumppoints_2239174 - 2
.hword branch_223926c - Jumppoints_2239174 - 2
.hword branch_223926c - Jumppoints_2239174 - 2
.hword branch_223926c - Jumppoints_2239174 - 2
.hword branch_223926c - Jumppoints_2239174 - 2
.hword branch_223926c - Jumppoints_2239174 - 2
.hword branch_223926c - Jumppoints_2239174 - 2
.hword branch_223926c - Jumppoints_2239174 - 2
.hword branch_22391de - Jumppoints_2239174 - 2
.hword branch_223926c - Jumppoints_2239174 - 2
.hword branch_223926c - Jumppoints_2239174 - 2
.hword branch_2239246 - Jumppoints_2239174 - 2
.hword branch_2239254 - Jumppoints_2239174 - 2

.thumb
branch_22391aa: @ 22391aa :thumb
	cmp     r6, #0x2
	beq     branch_22391b6
	b       branch_223926c

branch_22391b0: @ 22391b0 :thumb
	cmp     r6, #0x64
	beq     branch_223925c
	b       branch_223926c

branch_22391b6: @ 22391b6 :thumb
	bl      Function_2049f8c
	b       branch_2239270

branch_22391bc: @ 22391bc :thumb
	bl      Function_204aa04
	strh    r0, [r4, #0x0]
	ldr     r0, [r5, #0x8]
	bl      Function_202440c
	ldrh    r1, [r4, #0x0]
	bl      Function_206d0c8
	ldr     r0, [r5, #0x8]
	bl      LoadVariableAreaAdress_14
	ldrh    r2, [r4, #0x0]
	mov     r1, #0x44
	bl      Function_202cf70
	b       branch_2239270
@ 0x22391de

.thumb
branch_22391de: @ 22391de :thumb
	ldr     r1, [sp, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_223927c
	strh    r0, [r4, #0x0]
	b       branch_2239270

branch_22391ec: @ 22391ec :thumb
	bl      Function_204a578
	strh    r0, [r4, #0x0]
	b       branch_2239270

branch_22391f4: @ 22391f4 :thumb
	bl      Function_22395b4
	strh    r0, [r4, #0x0]
	b       branch_2239270

branch_22391fc: @ 22391fc :thumb
	bl      Function_204a57c
	strh    r0, [r4, #0x0]
	b       branch_2239270
@ 0x2239204

.thumb
branch_2239204: @ 2239204 :thumb
	bl      Function_22395d8
	strh    r0, [r4, #0x0]
	b       branch_2239270
@ 0x223920c

.thumb
branch_223920c: @ 223920c :thumb
	bl      Function_204a9f8
	strh    r0, [r4, #0x0]
	b       branch_2239270
@ 0x2239214

.thumb
branch_2239214: @ 2239214 :thumb
	ldr     r1, [r5, #0x8]
	bl      Function_22394a4
	b       branch_2239270
@ 0x223921c

.thumb
branch_223921c: @ 223921c :thumb
	ldr     r1, [sp, #0x0]
	bl      Function_2239588
	strh    r0, [r4, #0x0]
	b       branch_2239270
@ 0x2239226

.thumb
branch_2239226: @ 2239226 :thumb
	ldr     r1, [sp, #0x0]
	bl      Function_22395a0
	b       branch_2239270
@ 0x223922e

.thumb
branch_223922e: @ 223922e :thumb
	ldr     r1, [r5, #0x8]
	bl      Function_204a660
	b       branch_2239270
@ 0x2239236

.thumb
branch_2239236: @ 2239236 :thumb
	ldr     r1, [r5, #0x8]
	ldr     r2, [r5, #0xc]
	bl      Function_204a7a4
	b       branch_2239270
@ 0x2239240

.thumb
branch_2239240: @ 2239240 :thumb
	bl      Function_204a8c8
	b       branch_2239270
@ 0x2239246

.thumb
branch_2239246: @ 2239246 :thumb
	ldr     r1, [pc, #0x2c] @ 0x2239274, (=0x884)
	mov     r2, #0x46
	add     r0, r0, r1
	mov     r1, #0x0
	blx     MI_CpuFill8
	b       branch_2239270
@ 0x2239254

.thumb
branch_2239254: @ 2239254 :thumb
	ldr     r1, [pc, #0x20] @ 0x2239278, (=0x8d6)
	mov     r2, #0x1
	strb    r2, [r0, r1]
	b       branch_2239270
@ 0x223925c

.thumb
branch_223925c: @ 223925c :thumb
	cmp     r0, #0x0
	bne     branch_2239266
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_2239270
@ 0x2239266

.thumb
branch_2239266: @ 2239266 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	b       branch_2239270
@ 0x223926c

.thumb
branch_223926c: @ 223926c :thumb
	bl      ErrorHandling
.thumb
branch_2239270: @ 2239270 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2239274

.word 0x884 @ 0x2239274
.word 0x8d6 @ 0x2239278
.thumb
Function_223927c: @ 223927c :thumb
	cmp     r1, #0x2
	bne     branch_2239288
	ldrb    r0, [r0, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #29
	bx      lr
@ 0x2239288

.thumb
branch_2239288: @ 2239288 :thumb
	cmp     r1, #0x1
	bne     branch_22392ae
	ldrb    r1, [r0, #0xf]
	cmp     r1, #0x2
	bne     branch_22392a0
	ldrb    r0, [r0, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #29
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x20] @ 0x22392bc, (=0x223fc94)
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x22392a0

.thumb
branch_22392a0: @ 22392a0 :thumb
	ldrb    r0, [r0, #0x12]
	cmp     r0, #0x0
	beq     branch_22392aa
	mov     r0, #0x61
	bx      lr
@ 0x22392aa

.thumb
branch_22392aa: @ 22392aa :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22392ae

.thumb
branch_22392ae: @ 22392ae :thumb
	ldrb    r0, [r0, #0x11]
	cmp     r0, #0x0
	beq     branch_22392b8
	mov     r0, #0x61
	bx      lr
@ 0x22392b8

.thumb
branch_22392b8: @ 22392b8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22392bc

.word 0x223fc94 @ 0x22392bc
.thumb
Function_22392c0: @ 22392c0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r1, [r5, #0x1c]
	add     r0, r1, #0x1
	str     r0, [r5, #0x1c]
	ldr     r0, [r5, #0x0]
	ldrb    r6, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r4, r0
	bne     branch_22392e4
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22392e4

.thumb
branch_22392e4: @ 22392e4 :thumb
	ldrb    r0, [r4, #0xf]
	bl      Function_223a790
	lsl     r1, r6, #4
	add     r1, r6, r1
	mov     r2, r0
	add     r4, #0x90
	lsl     r1, r1, #4
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_223310c
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2239300

.thumb
Function_2239300: @ 2239300 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	bl      Function_204a32c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2239312


.align 2, 0
.thumb
Function_2239314: @ 2239314 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r6
	mov     r4, r0
	bl      Function_223a580
	mov     r6, r0
	mov     r0, #0x8d
	lsl     r0, r0, #4
	str     r6, [r4, r0]
	ldr     r1, [pc, #0x1c] @ 0x223935c, (=0x45f)
	mov     r0, #0x5
	mov     r2, #0x1
	bl      Function_2004550
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x10] @ 0x2239360, (=JumpTable_BattleScreen)
	ldr     r0, [r0, #0x0]
	mov     r2, r6
	bl      Function_209b988
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223935c

.word 0x45f @ 0x223935c
.word JumpTable_BattleScreen @ 0x2239360



.thumb
Function_2239364: @ 2239364 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fbe4
	mov     r6, r0
	mov     r0, #0x8d
	lsl     r0, r0, #4
	ldr     r5, [r4, r0]
	ldr     r0, [r5, #0x14]
	bl      Function_2052868
	ldr     r1, [pc, #0x10] @ 0x2239398, (=0x8cc)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	strh    r0, [r6, #0x0]
	mov     r0, r5
	bl      Function_20520a4
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2239398

.word 0x8cc @ 0x2239398
.thumb
Function_223939c: @ 223939c :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r0, r4
	bl      Function_222fc00
	mov     r6, r0
	mov     r0, r4
	bl      Function_222fc00
	mov     r7, r0
	mov     r0, r4
	bl      Function_222fbe4
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r4, r0
	cmp     r6, #0x2
	bne     branch_22393d6
	mov     r1, r7
	bl      Function_223a734
	b       branch_22393da
@ 0x22393d6

.thumb
branch_22393d6: @ 22393d6 :thumb
	bl      ErrorHandling
.thumb
branch_22393da: @ 22393da :thumb
	bl      Function_203608c
	ldr     r1, [pc, #0x1c] @ 0x22393fc, (=0x83e)
	add     r1, r4, r1
	bl      Function_2036614
	cmp     r0, #0x1
	bne     branch_22393f0
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	b       branch_22393f8
@ 0x22393f0

.thumb
branch_22393f0: @ 22393f0 :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22393f8

.thumb
branch_22393f8: @ 22393f8 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22393fc

.word 0x83e @ 0x22393fc
.thumb
Function_2239400: @ 2239400 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222ea48
	mov     r4, r0
	mov     r0, r5
	bl      Function_222ea48
	mov     r1, r5
	add     r1, #0x78
	strh    r4, [r1, #0x0]
	mov     r1, r5
	add     r1, #0x7a
	strh    r0, [r1, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2239428, (=0x223942d)
	mov     r0, r5
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2239428

.word Function_223942c+1 @ =0x223942d, 0x2239428
.thumb
Function_223942c: @ 223942c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x7a
	ldrh    r0, [r0, #0x0]
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r5, #0x78
	ldrh    r3, [r5, #0x0]
	ldr     r2, [r4, #0x8]
	bl      Function_2239464
	cmp     r0, #0x1
	bne     branch_2239460
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2239460

.thumb
branch_2239460: @ 2239460 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2239464

.thumb
Function_2239464: @ 2239464 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r6, r1
	mov     r5, r3
	bl      Function_203608c
	mov     r1, #0x1
	sub     r0, r1, r0
	bl      Function_203664c
	mov     r7, r0
	bne     branch_2239480
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2239480

.thumb
branch_2239480: @ 2239480 :thumb
	add     r1, sp, #0x8
	ldrh    r1, [r1, #0x10]
	mov     r0, r4
	bl      Function_222fc14
	mov     r4, r0
	cmp     r5, #0x2
	bne     branch_223949c
	mov     r0, r6
	mov     r1, r7
	bl      Function_223a750
	strh    r0, [r4, #0x0]
	b       branch_22394a0
@ 0x223949c

.thumb
branch_223949c: @ 223949c :thumb
	bl      ErrorHandling
.thumb
branch_22394a0: @ 22394a0 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22394a4

.thumb
Function_22394a4: @ 22394a4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldrb    r2, [r4, #0xf]
	cmp     r2, #0x6
	bhi     branch_2239560
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x22394bc

Jumppoints_22394bc:
.hword branch_2239560 - Jumppoints_22394bc - 2
.hword branch_2239560 - Jumppoints_22394bc - 2
.hword branch_22394e0 - Jumppoints_22394bc - 2
.hword branch_22394e0 - Jumppoints_22394bc - 2
.hword branch_22394ca - Jumppoints_22394bc - 2
.hword branch_22394ca - Jumppoints_22394bc - 2
.hword branch_22394e0 - Jumppoints_22394bc - 2
.thumb
branch_22394ca: @ 22394ca :thumb
	ldrb    r2, [r4, #0xc]
	mov     r0, r1
	mov     r1, r4
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #24
	add     r1, #0x78
	lsr     r2, r2, #24
	bl      Function_223a30c
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x22394e0

.thumb
branch_22394e0: @ 22394e0 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r1, [r4, #0x4]
	str     r1, [sp, #0xc]
	ldrb    r2, [r4, #0xc]
	mov     r1, r4
	ldrb    r3, [r4, #0xe]
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #2
	add     r2, r4, r2
	ldrh    r2, [r2, #0x3e]
	add     r1, #0x78
	bl      Function_223a0c4
	ldrb    r3, [r4, #0xe]
	mov     r0, #0x0
	cmp     r3, #0x0
	ble     branch_2239532
	mov     r1, r4
	add     r1, #0xa8
	add     r2, sp, #0x14
	mov     r5, r4
	add     r6, sp, #0x10
.thumb
branch_2239512: @ 2239512 :thumb
	ldrh    r3, [r1, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r1, #0x38
	lsl     r3, r3, #21
	lsr     r3, r3, #21
	strh    r3, [r2, #0x0]
	mov     r3, r5
	add     r3, #0xaa
	ldrh    r3, [r3, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	add     r5, #0x38
	strh    r3, [r6, #0x0]
	ldrb    r3, [r4, #0xe]
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r0, r3
	blt     branch_2239512
.thumb
branch_2239532: @ 2239532 :thumb
	add     r0, sp, #0x14
	str     r0, [sp, #0x0]
	add     r0, sp, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x62
	str     r0, [sp, #0xc]
	ldrb    r2, [r4, #0xc]
	lsl     r1, r1, #2
	mov     r0, r4
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	add     r2, r4, r2
	ldrh    r2, [r2, #0x3e]
	add     r1, r4, r1
	bl      Function_223a0c4
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x2239560

.thumb
branch_2239560: @ 2239560 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	mov     r1, r4
	str     r0, [sp, #0xc]
	ldrb    r2, [r4, #0xc]
	ldrb    r3, [r4, #0xe]
	mov     r0, r4
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #1
	add     r2, r4, r2
	ldrh    r2, [r2, #0x3e]
	add     r1, #0x78
	bl      Function_223a0c4
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x2239586


.align 2, 0


.thumb
Function_2239588: @ 2239588 :thumb
	lsl     r2, r1, #4
	add     r1, r1, r2
	lsl     r1, r1, #4
	add     r0, r0, r1
	add     r0, #0x7c
	ldrh    r0, [r0, #0x0]
	ldr     r3, [pc, #0x4] @ 0x223959c, (=0x222e10d)
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bx      r3
@ 0x223959c

.word Function_222e10c+1 @ =0x222e10d, 0x223959c
.thumb
Function_22395a0: @ 22395a0 :thumb
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	lsl     r1, r1, #30
	ldrb    r3, [r0, #0x10]
	mov     r2, #0x6
	lsr     r1, r1, #29
	bic     r3, r2
	orr     r1, r3
	strb    r1, [r0, #0x10]
	bx      lr
@ 0x22395b4

.thumb
Function_22395b4: @ 22395b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0xd]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xd]
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x6
	beq     branch_22395cc
	ldr     r0, [r4, #0x8]
	bl      Function_206bff0
	str     r0, [r4, #0x8]
.thumb
branch_22395cc: @ 22395cc :thumb
	ldrb    r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xc]
	ldrb    r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x22395d6


.align 2, 0


.thumb
Function_22395d8: @ 22395d8 :thumb
	ldrb    r1, [r0, #0xd]
	ldrh    r0, [r0, #0x1a]
	add     r1, r0, r1
	ldr     r0, [pc, #0xc] @ 0x22395ec, (=0xffff)
	cmp     r1, r0
	bhi     branch_22395e8
	lsl     r0, r1, #16
	lsr     r0, r0, #16
.thumb
branch_22395e8: @ 22395e8 :thumb
	bx      lr
@ 0x22395ea


.align 2


.word 0xffff @ 0x22395ec
.thumb
Function_22395f0: @ 22395f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r0, [r0, #0x8]
	bl      Function_2239c58
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b980
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2239610

.thumb
Function_2239610: @ 2239610 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	bl      Function_2239c7c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2239622


.align 2, 0


.thumb
Function_2239624: @ 2239624 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_222fc00
	mov     r6, r0
	mov     r0, r5
	bl      Function_222fc00
	mov     r7, r0
	mov     r0, r5
	bl      Function_222fc00
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      Function_222fbe4
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	ldr     r3, [sp, #0x0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_2239c88
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223965e


.align 2, 0


.thumb
Function_2239660: @ 2239660 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222ea48
	mov     r1, r4
	add     r1, #0x78
	strh    r0, [r1, #0x0]
	ldr     r1, [pc, #0xc] @ 0x223967c, (=0x2239681)
	mov     r0, r4
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223967a


.align 2


.word Function_2239680+1 @ =0x2239681, 0x223967c
.thumb
Function_2239680: @ 2239680 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r1, r0
	add     r1, #0x6f
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x2
	bcc     branch_223969e
	mov     r1, #0x0
	add     r0, #0x6f
	strb    r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223969e

.thumb
branch_223969e: @ 223969e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22396a2


.align 2, 0


.thumb
Function_22396a4: @ 22396a4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_222fc00
	mov     r6, r0
	mov     r0, r5
	bl      Function_222fbe4
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	add     r0, #0x6e
	ldrb    r0, [r0, #0x0]
	cmp     r6, r0
	bne     branch_22396ca
	mov     r0, #0x1
	b       branch_22396cc
@ 0x22396ca

.thumb
branch_22396ca: @ 22396ca :thumb
	mov     r0, #0x0
.thumb
branch_22396cc: @ 22396cc :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22396d2


.align 2, 0


.thumb
Function_22396d4: @ 22396d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_222fc00
	mov     r0, r5
	bl      Function_222fc00
	mov     r7, r0
	mov     r0, r5
	bl      Function_222fbe4
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	ldr     r1, [r0, #0x28]
	mov     r0, r4
	add     r0, #0x98
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xb0
	str     r6, [r0, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x0]
	mov     r2, r7
	bl      Function_2239cd0
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223971c

.thumb
Function_223971c: @ 223971c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      Function_222fbe4
	mov     r4, r0
	mov     r0, r5
	bl      Function_222fbe4
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r5, r0
	add     r0, #0xa8
	ldr     r1, [r0, #0x0]
	mov     r0, r1
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x7
	bne     branch_223975c
	mov     r0, #0xff
	mov     r2, #0x0
	strh    r0, [r4, #0x0]
	mov     r1, r2
.thumb
branch_223974e: @ 223974e :thumb
	add     r0, r5, r2
	add     r0, #0xa1
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r1, [r0, #0x0]
	cmp     r2, #0x2
	blt     branch_223974e
	b       branch_2239782
@ 0x223975c

.thumb
branch_223975c: @ 223975c :thumb
	cmp     r0, #0x6
	bne     branch_2239782
	add     r1, #0x2c
	ldrb    r0, [r1, #0x0]
	strh    r0, [r4, #0x0]
	ldrh    r0, [r4, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x0]
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	add     r0, #0x2d
	ldrb    r0, [r0, #0x0]
	strh    r0, [r6, #0x0]
	ldrh    r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_2239782
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r6, #0x0]
.thumb
branch_2239782: @ 2239782 :thumb
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	bl      free
	mov     r0, #0x0
	add     r5, #0xa8
	str     r0, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x2239794

.thumb
Function_2239794: @ 2239794 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fbe4
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	add     r0, #0x59
	ldrb    r0, [r0, #0x0]
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22397b0

.thumb
Function_22397b0: @ 22397b0 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r1, [r7, #0x1c]
	add     r2, r1, #0x1
	str     r2, [r7, #0x1c]
	ldrb    r1, [r1, #0x0]
	str     r1, [sp, #0x0]
	add     r1, r2, #0x1
	str     r1, [r7, #0x1c]
	ldrb    r6, [r2, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r7, #0x1c]
	bl      Function_222fbe4
	mov     r5, r0
	ldr     r0, [r7, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r4, r0
	ldr     r0, [r7, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	cmp     r0, #0xd
	bhi     branch_2239860
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22397f4

Jumppoints_22397f4:
.hword branch_2239810 - Jumppoints_22397f4 - 2
.hword branch_2239818 - Jumppoints_22397f4 - 2
.hword branch_2239820 - Jumppoints_22397f4 - 2
.hword branch_22398d4 - Jumppoints_22397f4 - 2
.hword branch_22398f0 - Jumppoints_22397f4 - 2
.hword branch_2239918 - Jumppoints_22397f4 - 2
.hword branch_2239924 - Jumppoints_22397f4 - 2
.hword branch_2239936 - Jumppoints_22397f4 - 2
.hword branch_223993c - Jumppoints_22397f4 - 2
.hword branch_2239944 - Jumppoints_22397f4 - 2
.hword branch_223994c - Jumppoints_22397f4 - 2
.hword branch_2239954 - Jumppoints_22397f4 - 2
.hword branch_22399ce - Jumppoints_22397f4 - 2
.hword branch_2239afc - Jumppoints_22397f4 - 2
.thumb
branch_2239810: @ 2239810 :thumb
	mov     r0, r4
	bl      Function_209ba80
	b       branch_2239b10
@ 0x2239818

.thumb
branch_2239818: @ 2239818 :thumb
	add     r4, #0x86
	ldrh    r0, [r4, #0x0]
	strh    r0, [r5, #0x0]
	b       branch_2239b10
@ 0x2239820

.thumb
branch_2239820: @ 2239820 :thumb
	cmp     r6, #0x1
	bne     branch_223986a
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	mov     r0, r4
	add     r0, #0x76
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x86
	ldrh    r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_2239842
	mov     r0, r4
	add     r0, #0x88
	ldrh    r0, [r0, #0x0]
	cmp     r1, r0
	bne     branch_2239848
.thumb
branch_2239842: @ 2239842 :thumb
	ldrh    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x0]
.thumb
branch_2239848: @ 2239848 :thumb
	mov     r0, r4
	add     r0, #0x78
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x86
	ldrh    r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_2239862
	add     r4, #0x88
	ldrh    r0, [r4, #0x0]
	cmp     r1, r0
	beq     branch_2239862
.thumb
branch_2239860: @ 2239860 :thumb
	b       branch_2239b10
@ 0x2239862

.thumb
branch_2239862: @ 2239862 :thumb
	ldrh    r0, [r5, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r0, [r5, #0x0]
	b       branch_2239b10
@ 0x223986a

.thumb
branch_223986a: @ 223986a :thumb
	cmp     r6, #0x5
	bne     branch_2239888
	mov     r0, r4
	add     r0, #0x76
	add     r4, #0x86
	ldrh    r1, [r0, #0x0]
	ldrh    r0, [r4, #0x0]
	cmp     r1, r0
	bne     branch_2239882
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	b       branch_2239b10
@ 0x2239882

.thumb
branch_2239882: @ 2239882 :thumb
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	b       branch_2239b10
@ 0x2239888

.thumb
branch_2239888: @ 2239888 :thumb
	cmp     r6, #0x4
	beq     branch_2239890
	cmp     r6, #0x6
	bne     branch_2239986
.thumb
branch_2239890: @ 2239890 :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	mov     r0, r4
	add     r0, #0x76
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x86
	ldrh    r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_22398ae
	mov     r0, r4
	add     r0, #0x88
	ldrh    r0, [r0, #0x0]
	cmp     r1, r0
	bne     branch_22398b4
.thumb
branch_22398ae: @ 22398ae :thumb
	ldrh    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x0]
.thumb
branch_22398b4: @ 22398b4 :thumb
	mov     r0, r4
	add     r0, #0x78
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x86
	ldrh    r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_22398cc
	add     r4, #0x88
	ldrh    r0, [r4, #0x0]
	cmp     r1, r0
	bne     branch_2239986
.thumb
branch_22398cc: @ 22398cc :thumb
	ldrh    r0, [r5, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r0, [r5, #0x0]
	b       branch_2239b10
@ 0x22398d4

.thumb
branch_22398d4: @ 22398d4 :thumb
	ldr     r0, [r7, #0x8]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	mov     r0, #0x6a
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x6a
	bl      Function_2030698
	strh    r0, [r5, #0x0]
	b       branch_2239b10
@ 0x22398f0

.thumb
branch_22398f0: @ 22398f0 :thumb
	ldr     r0, [r7, #0x8]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	mov     r0, #0x3
	bl      Function_205e55c
	mov     r6, r0
	mov     r0, #0x3
	bl      Function_205e55c
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_2030698
	strh    r0, [r5, #0x0]
	b       branch_2239b10
@ 0x2239918

.thumb
branch_2239918: @ 2239918 :thumb
	lsl     r0, r6, #1
	add     r0, r4, r0
	add     r0, #0x76
	ldrh    r0, [r0, #0x0]
	strh    r0, [r5, #0x0]
	b       branch_2239b10
@ 0x2239924

.thumb
branch_2239924: @ 2239924 :thumb
	ldr     r0, [r7, #0x8]
	bl      Function_203026c
	mov     r1, r0
	ldr     r0, [r7, #0x8]
	mov     r2, #0x3
	bl      Function_204fa50
	b       branch_2239b10
@ 0x2239936

.thumb
branch_2239936: @ 2239936 :thumb
	add     r4, #0xa0
	strb    r6, [r4, #0x0]
	b       branch_2239b10
@ 0x223993c

.thumb
branch_223993c: @ 223993c :thumb
	add     r4, #0x74
	ldrh    r0, [r4, #0x0]
	strh    r0, [r5, #0x0]
	b       branch_2239b10
@ 0x2239944

.thumb
branch_2239944: @ 2239944 :thumb
	add     r4, #0xa0
	ldrb    r0, [r4, #0x0]
	strh    r0, [r5, #0x0]
	b       branch_2239b10
@ 0x223994c

.thumb
branch_223994c: @ 223994c :thumb
	add     r4, #0x71
	ldrb    r0, [r4, #0x0]
	strh    r0, [r5, #0x0]
	b       branch_2239b10
@ 0x2239954

.thumb
branch_2239954: @ 2239954 :thumb
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	mov     r0, r4
	add     r0, #0xa0
	ldrb    r0, [r0, #0x0]
	bl      Function_223c264
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	bl      LoadVariableAreaAdress_17
	mov     r7, r0
	mov     r0, r6
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r7
	mov     r1, r6
	bl      Function_2030698
	mov     r1, r4
	add     r1, #0x72
	ldrh    r1, [r1, #0x0]
	cmp     r0, r1
	bne     branch_2239988
.thumb
branch_2239986: @ 2239986 :thumb
	b       branch_2239b10
@ 0x2239988

.thumb
branch_2239988: @ 2239988 :thumb
	ldr     r0, [r4, #0x0]
	bl      LoadVariableAreaAdress_17
	mov     r7, r0
	mov     r0, r6
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r7
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_20306e4
	mov     r0, r4
	add     r0, #0xa0
	ldrb    r0, [r0, #0x0]
	bl      Function_223c29c
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	mov     r0, r6
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_20306e4
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	b       branch_2239b10
@ 0x22399ce

.thumb
branch_22399ce: @ 22399ce :thumb
	mov     r0, r4
	add     r0, #0xa0
	ldrb    r0, [r0, #0x0]
	bl      Function_223c29c
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	bl      LoadVariableAreaAdress_17
	mov     r7, r0
	mov     r0, r6
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r7
	mov     r1, r6
	bl      Function_2030698
	strh    r0, [r5, #0x0]
	ldrh    r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_2239ae0
	mov     r0, r4
	add     r0, #0xa0
	ldrb    r0, [r0, #0x0]
	bl      Function_223c264
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	mov     r0, r5
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, r5
	mov     r3, #0x0
	bl      Function_20306e4
	mov     r0, r4
	add     r0, #0xa0
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2239a38
	ldr     r0, [r4, #0x0]
	bl      Function_202d750
	mov     r1, #0x6
	mov     r2, #0x2
	bl      Function_202d3b4
.thumb
branch_2239a38: @ 2239a38 :thumb
	mov     r0, r4
	add     r0, #0xa0
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x4
	bne     branch_2239a76
	ldr     r0, [r4, #0x0]
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	mov     r0, r5
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, #0x88
	mov     r3, #0x0
	bl      Function_20306e4
	ldr     r0, [r4, #0x0]
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	mov     r0, r5
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, #0x89
	mov     r3, #0x0
	bl      Function_20306e4
.thumb
branch_2239a76: @ 2239a76 :thumb
	mov     r0, r4
	add     r0, #0xa0
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_2239aaa
	ldr     r0, [r4, #0x0]
	bl      LoadVariableAreaAdress_17
	mov     r5, r0
	mov     r0, #0x0
	mov     r1, #0x3
	bl      Function_205e488
	mov     r6, r0
	mov     r0, #0x0
	mov     r1, #0x3
	bl      Function_205e488
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_20306e4
.thumb
branch_2239aaa: @ 2239aaa :thumb
	mov     r0, r4
	add     r0, #0xa0
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x3
	bne     branch_2239b10
	ldr     r0, [r4, #0x0]
	bl      LoadVariableAreaAdress_17
	mov     r5, r0
	mov     r0, #0x1
	mov     r1, #0x3
	bl      Function_205e488
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, #0x3
	bl      Function_205e488
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_20306e4
	b       branch_2239b10
@ 0x2239ae0

.thumb
branch_2239ae0: @ 2239ae0 :thumb
	ldr     r0, [r4, #0x0]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	mov     r0, r6
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_20306e4
	b       branch_2239b10
@ 0x2239afc

.thumb
branch_2239afc: @ 2239afc :thumb
	mov     r2, #0x0
	mov     r1, r2
.thumb
branch_2239b00: @ 2239b00 :thumb
	add     r0, r4, r2
	add     r0, #0xa1
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r1, [r0, #0x0]
	cmp     r2, #0x2
	blt     branch_2239b00
	add     r4, #0x9f
	strb    r1, [r4, #0x0]
.thumb
branch_2239b10: @ 2239b10 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2239b14

.thumb
Function_2239b14: @ 2239b14 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xb4
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b970
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	mov     r6, r0
	mov     r4, r6
	add     r3, sp, #0x0
	mov     r2, #0x16
.thumb
branch_2239b34: @ 2239b34 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2239b34
	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r6
	bl      Function_2239c7c
	ldr     r0, [r7, #0x8]
	mov     r1, #0x0
	mov     r2, #0x6
	bl      Function_204a124
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x0]
	bl      Function_209b980
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x6
	bne     branch_2239b68
	ldr     r0, [r7, #0x8]
	bl      Function_222e630
.thumb
branch_2239b68: @ 2239b68 :thumb
	ldrb    r0, [r4, #0xe]
	mov     r2, #0x0
	cmp     r0, #0x0
	ble     branch_2239ba0
	add     r3, sp, #0x0
	mov     r5, r3
	mov     r6, r4
.thumb
branch_2239b76: @ 2239b76 :thumb
	mov     r0, r3
	add     r0, #0x6a
	ldrb    r1, [r0, #0x0]
	add     r0, r4, r2
	add     r0, #0x2a
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x76
	ldrh    r0, [r0, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c5b @ add r3, r3, #0x1
	strh    r0, [r6, #0x2e]
	mov     r0, r5
	add     r0, #0x7e
	ldrh    r0, [r0, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
	strh    r0, [r6, #0x36]
	ldrb    r0, [r4, #0xe]
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r2, r0
	blt     branch_2239b76
.thumb
branch_2239ba0: @ 2239ba0 :thumb
	add     r0, sp, #0x80
	ldrh    r1, [r0, #0x6]
	strh    r1, [r4, #0x16]
	ldrh    r0, [r0, #0x8]
	mov     r1, #0xe0
	strh    r0, [r4, #0x18]
	add     r0, sp, #0x40
	ldrb    r2, [r0, #0x18]
	strb    r2, [r4, #0x12]
	ldrb    r0, [r4, #0x10]
	bic     r0, r1
	add     r1, r2, #0x5
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	lsl     r1, r1, #29
	lsr     r1, r1, #24
	orr     r0, r1
	strb    r0, [r4, #0x10]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2239bd4
	ldr     r1, [r7, #0x8]
	mov     r0, r4
	bl      Function_204a4c8
.thumb
branch_2239bd4: @ 2239bd4 :thumb
	ldr     r0, [r7, #0x8]
	bl      LoadPokePartyAdress
	bl      HealPokemon
	mov     r0, r4
	bl      Function_209ba80
	ldr     r1, [pc, #0x8] @ 0x2239bf0, (=0x8d4)
	mov     r0, #0x0
	strb    r0, [r4, r1]
	add     sp, #0xb4
	pop     {r4-r7,pc}
@ 0x2239bee


.align 2


.word 0x8d4 @ 0x2239bf0
.thumb
Function_2239bf4: @ 2239bf4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_222fbe4
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	bl      Function_209bb08
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2239c10

.thumb
Function_2239c10: @ 2239c10 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x8] @ 0x2239c1c, (=0x2239c21)
	bl      Function_222e974
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2239c1c

.word Function_2239c20+1 @ =0x2239c21, 0x2239c1c
.thumb
Function_2239c20: @ 2239c20 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	ldr     r1, [pc, #0x14] @ 0x2239c40, (=0x8d4)
	ldrb    r2, [r0, r1]
	cmp     r2, #0x2
	bcs     branch_2239c36
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2239c36

.thumb
branch_2239c36: @ 2239c36 :thumb
	mov     r2, #0x0
	strb    r2, [r0, r1]
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2239c3e


.align 2


.word 0x8d4 @ 0x2239c40
.thumb
Function_2239c44: @ 2239c44 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_209b978
	bl      Function_204a32c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2239c56


.align 2, 0


.thumb
Function_2239c58: @ 2239c58 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xb
	mov     r1, #0xb4
	bl      malloc
	ldr     r1, [pc, #0x10] @ 0x2239c78, (=0x2241ad0)
	mov     r2, #0xb4
	str     r0, [r1, #0x0]
	mov     r1, #0x0
	blx     MI_CpuFill8
	ldr     r0, [pc, #0x4] @ 0x2239c78, (=0x2241ad0)
	ldr     r0, [r0, #0x0]
	str     r4, [r0, #0x0]
	pop     {r4,pc}
@ 0x2239c78

.word 0x2241ad0 @ 0x2239c78
.thumb
Function_2239c7c: @ 2239c7c :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_2239c86
	bl      free
.thumb
branch_2239c86: @ 2239c86 :thumb
	pop     {r3,pc}
@ 0x2239c88

.thumb
Function_2239c88: @ 2239c88 :thumb
	push    {r3,lr}
	cmp     r1, #0x5
	bhi     branch_2239ccc
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2239c9a

Jumppoints_2239c9a:
.hword branch_2239ca6 - Jumppoints_2239c9a - 2
.hword branch_2239cac - Jumppoints_2239c9a - 2
.hword branch_2239cb4 - Jumppoints_2239c9a - 2
.hword branch_2239ccc - Jumppoints_2239c9a - 2
.hword branch_2239cbe - Jumppoints_2239c9a - 2
.hword branch_2239cc6 - Jumppoints_2239c9a - 2
.thumb
branch_2239ca6: @ 2239ca6 :thumb
	bl      Function_209bba4
	pop     {r3,pc}
@ 0x2239cac

.thumb
branch_2239cac: @ 2239cac :thumb
	mov     r1, r2
	bl      Function_209bc1c
	pop     {r3,pc}
@ 0x2239cb4

.thumb
branch_2239cb4: @ 2239cb4 :thumb
	mov     r1, r2
	mov     r2, r3
	bl      Function_209bc64
	pop     {r3,pc}
@ 0x2239cbe

.thumb
branch_2239cbe: @ 2239cbe :thumb
	mov     r1, r2
	bl      Function_209bd68
	pop     {r3,pc}
@ 0x2239cc6

.thumb
branch_2239cc6: @ 2239cc6 :thumb
	mov     r1, r2
	bl      Function_209bdb0
.thumb
branch_2239ccc: @ 2239ccc :thumb
	pop     {r3,pc}
@ 0x2239cce


.align 2, 0


.thumb
Function_2239cd0: @ 2239cd0 :thumb
	push    {r3,lr}
	mov     r3, r1
	add     r3, #0x98
	ldr     r3, [r3, #0x0]
	cmp     r2, #0x4
	bhi     branch_2239d18
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x2239ce8

Jumppoints_2239ce8:
.hword branch_2239cf2 - Jumppoints_2239ce8 - 2
.hword branch_2239cfc - Jumppoints_2239ce8 - 2
.hword branch_2239d06 - Jumppoints_2239ce8 - 2
.hword branch_2239d10 - Jumppoints_2239ce8 - 2
.hword branch_2239d18 - Jumppoints_2239ce8 - 2
.thumb
branch_2239cf2: @ 2239cf2 :thumb
	mov     r2, r3
	mov     r3, #0xb
	bl      Function_2239d1c
	pop     {r3,pc}
@ 0x2239cfc

.thumb
branch_2239cfc: @ 2239cfc :thumb
	mov     r2, r3
	mov     r3, #0xb
	bl      Function_2239f38
	pop     {r3,pc}
@ 0x2239d06

.thumb
branch_2239d06: @ 2239d06 :thumb
	mov     r2, r3
	mov     r3, #0xb
	bl      Function_2239fb0
	pop     {r3,pc}
@ 0x2239d10

.thumb
branch_2239d10: @ 2239d10 :thumb
	mov     r2, r3
	mov     r3, #0xb
	bl      Function_223a090
.thumb
branch_2239d18: @ 2239d18 :thumb
	pop     {r3,pc}
@ 0x2239d1a


.align 2, 0


.thumb
Function_2239d1c: @ 2239d1c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0xb
	mov     r1, #0x40
	mov     r4, r2
	bl      malloc
	mov     r1, r5
	add     r1, #0xa8
	str     r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xa8
	ldr     r1, [r1, #0x0]
	mov     r0, #0x0
	mov     r2, #0x40
	blx     MIi_CpuClearFast
	ldr     r0, [r5, #0x0]
	bl      LoadPokePartyAdress
	mov     r1, r5
	add     r1, #0xa8
	ldr     r1, [r1, #0x0]
	str     r0, [r1, #0x0]
	ldr     r0, [r5, #0x0]
	bl      LoadVariableAreaAdressItemList
	mov     r1, r5
	add     r1, #0xa8
	ldr     r1, [r1, #0x0]
	str     r0, [r1, #0x4]
	ldr     r0, [r5, #0x0]
	bl      LoadVariableAreaAdress_f
	mov     r1, r5
	add     r1, #0xa8
	ldr     r1, [r1, #0x0]
	str     r0, [r1, #0x8]
	ldr     r0, [r5, #0x0]
	bl      LoadPlayerDataAdress
	mov     r1, r5
	add     r1, #0xa8
	ldr     r1, [r1, #0x0]
	str     r0, [r1, #0xc]
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	add     r0, #0x21
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xa0
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2239d9e
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x11
	add     r0, #0x20
	strb    r1, [r0, #0x0]
	b       branch_2239dd8
@ 0x2239d9e

.thumb
branch_2239d9e: @ 2239d9e :thumb
	cmp     r0, #0x5
	bne     branch_2239db0
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x16
	add     r0, #0x20
	strb    r1, [r0, #0x0]
	b       branch_2239dd8
@ 0x2239db0

.thumb
branch_2239db0: @ 2239db0 :thumb
	cmp     r0, #0x4
	bne     branch_2239dc2
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x17
	add     r0, #0x20
	strb    r1, [r0, #0x0]
	b       branch_2239dd8
@ 0x2239dc2

.thumb
branch_2239dc2: @ 2239dc2 :thumb
	cmp     r0, #0x6
	bne     branch_2239dd4
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x17
	add     r0, #0x20
	strb    r1, [r0, #0x0]
	b       branch_2239dd8
@ 0x2239dd4

.thumb
branch_2239dd4: @ 2239dd4 :thumb
	bl      ErrorHandling
.thumb
branch_2239dd8: @ 2239dd8 :thumb
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	str     r4, [r0, #0x1c]
	mov     r0, r5
	add     r0, #0x9f
	ldrb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	add     r0, #0x22
	strb    r1, [r0, #0x0]
	mov     r0, #0x0
.thumb
branch_2239df2: @ 2239df2 :thumb
	add     r1, r5, r0
	add     r1, #0xa1
	ldrb    r2, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xa8
	ldr     r1, [r1, #0x0]
	add     r1, r1, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	add     r1, #0x2c
	lsr     r0, r0, #24
	strb    r2, [r1, #0x0]
	cmp     r0, #0x2
	bcc     branch_2239df2
	mov     r0, r5
	add     r0, #0xa0
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2239e56
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, r0
	add     r1, #0x32
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xf
	add     r0, #0x32
	bic     r2, r1
	mov     r1, #0x2
	orr     r1, r2
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, r0
	add     r1, #0x32
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xf0
	add     r0, #0x32
	bic     r2, r1
	mov     r1, #0x20
	orr     r1, r2
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x64
	add     r0, #0x33
	strb    r1, [r0, #0x0]
	b       branch_2239f20
@ 0x2239e56

.thumb
branch_2239e56: @ 2239e56 :thumb
	cmp     r0, #0x5
	bne     branch_2239e98
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, r0
	add     r1, #0x32
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xf
	add     r0, #0x32
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, r0
	add     r1, #0x32
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xf0
	add     r0, #0x32
	bic     r2, r1
	mov     r1, #0x10
	orr     r1, r2
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1e
	add     r0, #0x33
	strb    r1, [r0, #0x0]
	b       branch_2239f20
@ 0x2239e98

.thumb
branch_2239e98: @ 2239e98 :thumb
	cmp     r0, #0x4
	bne     branch_2239eda
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, r0
	add     r1, #0x32
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xf
	add     r0, #0x32
	bic     r2, r1
	mov     r1, #0x2
	orr     r1, r2
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, r0
	add     r1, #0x32
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xf0
	add     r0, #0x32
	bic     r2, r1
	mov     r1, #0x20
	orr     r1, r2
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x64
	add     r0, #0x33
	strb    r1, [r0, #0x0]
	b       branch_2239f20
@ 0x2239eda

.thumb
branch_2239eda: @ 2239eda :thumb
	cmp     r0, #0x6
	bne     branch_2239f1c
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, r0
	add     r1, #0x32
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xf
	add     r0, #0x32
	bic     r2, r1
	mov     r1, #0x2
	orr     r1, r2
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, r0
	add     r1, #0x32
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xf0
	add     r0, #0x32
	bic     r2, r1
	mov     r1, #0x20
	orr     r1, r2
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x64
	add     r0, #0x33
	strb    r1, [r0, #0x0]
	b       branch_2239f20
@ 0x2239f1c

.thumb
branch_2239f1c: @ 2239f1c :thumb
	bl      ErrorHandling
.thumb
branch_2239f20: @ 2239f20 :thumb
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	add     r5, #0xa8
	ldr     r1, [pc, #0xc] @ 0x2239f34, (=Unknown_20f1e88)
	ldr     r2, [r5, #0x0]
	mov     r0, r6
	bl      Function_209b988
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2239f34

.word Unknown_20f1e88 @ 0x2239f34



.thumb
Function_2239f38: @ 2239f38 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, r0
	add     r1, #0x22
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x6
	beq     branch_2239f60
	cmp     r1, #0x7
	bne     branch_2239f70
	mov     r0, r4
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x4
	strh    r1, [r0, #0x0]
	add     r4, #0x9d
	strb    r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x2239f60

.thumb
branch_2239f60: @ 2239f60 :thumb
	mov     r0, r4
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x4
	strh    r1, [r0, #0x0]
	add     r4, #0x9d
	strb    r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x2239f70

.thumb
branch_2239f70: @ 2239f70 :thumb
	mov     r1, r4
	add     r0, #0x2c
	add     r1, #0xa1
	mov     r2, #0x2
	blx     MI_CpuCopy8
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	add     r0, #0x22
	ldrb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x9f
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	bl      free
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xa8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	strh    r1, [r0, #0x0]
	add     r4, #0x9d
	strb    r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x2239fae


.align 2, 0


.thumb
Function_2239fb0: @ 2239fb0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, r3
	mov     r1, #0x30
	bl      malloc2
	mov     r1, r4
	add     r1, #0xac
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	mov     r2, #0x30
	blx     MI_CpuFill8
	ldr     r0, [r4, #0x0]
	bl      LoadPlayerDataAdress
	mov     r1, r4
	add     r1, #0xac
	ldr     r1, [r1, #0x0]
	str     r0, [r1, #0x4]
	ldr     r0, [r4, #0x0]
	bl      LoadPokePartyAdress
	mov     r1, r4
	add     r1, #0xac
	ldr     r1, [r1, #0x0]
	str     r0, [r1, #0x0]
	ldr     r0, [r4, #0x0]
	bl      Function_207a274
	mov     r1, r4
	add     r1, #0xac
	ldr     r1, [r1, #0x0]
	str     r0, [r1, #0x1c]
	ldr     r0, [r4, #0x0]
	bl      Function_208c324
	mov     r1, r4
	add     r1, #0xac
	ldr     r1, [r1, #0x0]
	str     r0, [r1, #0x2c]
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	strb    r1, [r0, #0x11]
	mov     r0, r4
	add     r0, #0x9f
	ldrb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	strb    r1, [r0, #0x14]
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      GetNrOfPkmnInParty
	mov     r1, r4
	add     r1, #0xac
	ldr     r1, [r1, #0x0]
	strb    r0, [r1, #0x13]
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	strh    r1, [r0, #0x18]
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	strb    r1, [r0, #0x12]
	ldr     r0, [r4, #0x0]
	bl      LoadVariableAreaAdress_18
	mov     r1, r4
	add     r1, #0xac
	ldr     r1, [r1, #0x0]
	str     r0, [r1, #0x20]
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0x28] @ 0x223a088, (=0x223fca0)
	bl      Function_208d720
	ldr     r0, [r4, #0x0]
	bl      LoadTrainerDataAdress
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      Function_208e9c0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	add     r4, #0xac
	ldr     r1, [pc, #0x10] @ 0x223a08c, (=Unknown_20f410c)
	ldr     r2, [r4, #0x0]
	mov     r0, r5
	bl      Function_209b988
	pop     {r3-r5,pc}
@ 0x223a086


.align 2


.word 0x223fca0 @ 0x223a088
.word Unknown_20f410c @ 0x223a08c
.thumb
Function_223a090: @ 223a090 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	ldrb    r1, [r0, #0x14]
	mov     r0, r4
	add     r0, #0x9f
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      free
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xac
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	add     r4, #0x9d
	strh    r1, [r0, #0x0]
	strb    r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x223a0c2


.align 2, 0


.thumb
Function_223a0c4: @ 223a0c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldrb    r0, [r5, #0xf]
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_223a77c
	mov     r3, r0
	ldr     r2, [sp, #0x3c]
	mov     r0, r4
	mov     r1, r6
	bl      Function_222dd04
	str     r0, [sp, #0x14]
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x30]
	add     r4, #0x30
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x34]
	ldr     r1, [sp, #0x14]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x38]
	mov     r2, r6
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x3c]
	mov     r3, r4
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      Function_223a118
	mov     r4, r0
	ldr     r0, [sp, #0x14]
	bl      free
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223a116


.align 2, 0


.thumb
Function_223a118: @ 223a118 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x84
	mov     r7, r0
	ldr     r0, [sp, #0x9c]
	str     r2, [sp, #0x18]
	str     r0, [sp, #0x9c]
	ldr     r0, [sp, #0xa0]
	str     r1, [sp, #0x14]
	str     r0, [sp, #0xa0]
	ldr     r0, [sp, #0xa4]
	str     r3, [sp, #0x1c]
	str     r0, [sp, #0xa4]
	ldr     r0, [sp, #0xa8]
	str     r0, [sp, #0xa8]
	mov     r0, #0x0
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x88
	ldrb    r0, [r0, #0x10]
	cmp     r0, #0x4
	bls     branch_223a144
	bl      ErrorHandling
.thumb
branch_223a144: @ 223a144 :thumb
	add     r0, sp, #0x88
	ldrb    r6, [r0, #0x10]
	mov     r4, #0x0
	str     r4, [sp, #0x30]
	cmp     r6, #0x0
	bne     branch_223a152
	b       branch_223a262
@ 0x223a152

.thumb
branch_223a152: @ 223a152 :thumb
	add     r0, sp, #0x74
	str     r0, [sp, #0x24]
.thumb
branch_223a156: @ 223a156 :thumb
	mov     r0, r7
	bl      Function_204aec0
	ldr     r1, [sp, #0x14]
	ldrh    r1, [r1, #0x2]
	blx     _s32_div_f
	lsl     r0, r1, #24
	lsr     r1, r0, #23
	ldr     r0, [sp, #0x14]
	add     r0, r0, r1
	ldrh    r0, [r0, #0x4]
	str     r0, [sp, #0x34]
	ldrb    r0, [r7, #0xf]
	bl      Function_223a768
	mov     r2, r0
	ldr     r1, [sp, #0x34]
	add     r0, sp, #0x44
	bl      Function_222dcf4
	mov     r0, #0x0
	str     r0, [sp, #0x40]
	cmp     r4, #0x0
	ble     branch_223a1b0
	add     r5, sp, #0x74
.thumb
branch_223a18a: @ 223a18a :thumb
	ldrb    r0, [r7, #0xf]
	bl      Function_223a768
	mov     r2, r0
	ldr     r1, [r5, #0x0]
	add     r0, sp, #0x54
	bl      Function_222dcf4
	add     r0, sp, #0x44
	ldrh    r1, [r0, #0x10]
	ldrh    r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_223a1b0
	ldr     r0, [sp, #0x40]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x40]
	cmp     r0, r4
	blt     branch_223a18a
.thumb
branch_223a1b0: @ 223a1b0 :thumb
	ldr     r0, [sp, #0x40]
	cmp     r0, r4
	bne     branch_223a25c
	ldr     r0, [sp, #0x9c]
	cmp     r0, #0x0
	beq     branch_223a1da
	mov     r0, #0x0
	cmp     r6, #0x0
	ble     branch_223a1d6
	add     r1, sp, #0x44
	ldrh    r3, [r1, #0x0]
	ldr     r2, [sp, #0x9c]
.thumb
branch_223a1c8: @ 223a1c8 :thumb
	ldrh    r1, [r2, #0x0]
	cmp     r3, r1
	beq     branch_223a1d6
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r0, r6
	blt     branch_223a1c8
.thumb
branch_223a1d6: @ 223a1d6 :thumb
	cmp     r0, r6
	bne     branch_223a25c
.thumb
branch_223a1da: @ 223a1da :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x32
	bge     branch_223a252
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	cmp     r4, #0x0
	ble     branch_223a214
	add     r5, sp, #0x74
.thumb
branch_223a1ea: @ 223a1ea :thumb
	ldrb    r0, [r7, #0xf]
	bl      Function_223a768
	mov     r2, r0
	ldr     r1, [r5, #0x0]
	add     r0, sp, #0x54
	bl      Function_222dcf4
	add     r0, sp, #0x44
	ldrh    r1, [r0, #0x1c]
	cmp     r1, #0x0
	beq     branch_223a208
	ldrh    r0, [r0, #0xc]
	cmp     r1, r0
	beq     branch_223a214
.thumb
branch_223a208: @ 223a208 :thumb
	ldr     r0, [sp, #0x20]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x20]
	cmp     r0, r4
	blt     branch_223a1ea
.thumb
branch_223a214: @ 223a214 :thumb
	ldr     r0, [sp, #0x20]
	cmp     r0, r4
	beq     branch_223a222
	ldr     r0, [sp, #0x30]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x30]
	b       branch_223a25c
@ 0x223a222

.thumb
branch_223a222: @ 223a222 :thumb
	ldr     r0, [sp, #0xa0]
	cmp     r0, #0x0
	beq     branch_223a252
	mov     r0, #0x0
	cmp     r6, #0x0
	ble     branch_223a246
	add     r1, sp, #0x44
	ldrh    r3, [r1, #0xc]
	ldr     r2, [sp, #0xa0]
.thumb
branch_223a234: @ 223a234 :thumb
	ldrh    r1, [r2, #0x0]
	cmp     r3, r1
	bne     branch_223a23e
	cmp     r1, #0x0
	bne     branch_223a246
.thumb
branch_223a23e: @ 223a23e :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r0, r6
	blt     branch_223a234
.thumb
branch_223a246: @ 223a246 :thumb
	cmp     r0, r6
	beq     branch_223a252
	ldr     r0, [sp, #0x30]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x30]
	b       branch_223a25c
@ 0x223a252

.thumb
branch_223a252: @ 223a252 :thumb
	ldr     r1, [sp, #0x34]
	ldr     r0, [sp, #0x24]
	.hword  0x1c64 @ add r4, r4, #0x1
	stmia   r0!, {r1}
	str     r0, [sp, #0x24]
.thumb
branch_223a25c: @ 223a25c :thumb
	cmp     r4, r6
	beq     branch_223a262
	b       branch_223a156
@ 0x223a262

.thumb
branch_223a262: @ 223a262 :thumb
	ldr     r0, [sp, #0x18]
	bl      Function_204ae84
	str     r0, [sp, #0x3c]
	mov     r0, r7
	bl      Function_204aec0
	mov     r5, r0
	mov     r0, r7
	bl      Function_204aec0
	lsl     r0, r0, #16
	orr     r0, r5
	str     r0, [sp, #0x38]
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x32
	blt     branch_223a288
	mov     r0, #0x1
	str     r0, [sp, #0x2c]
.thumb
branch_223a288: @ 223a288 :thumb
	mov     r5, #0x0
	cmp     r4, #0x0
	ble     branch_223a2d0
	add     r0, sp, #0x74
	str     r0, [sp, #0x28]
	add     r6, sp, #0x64
.thumb
branch_223a294: @ 223a294 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x3c]
	ldr     r2, [sp, #0x28]
	str     r0, [sp, #0x4]
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x2c]
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0xa8]
	ldr     r3, [sp, #0x38]
	str     r0, [sp, #0x10]
	ldr     r2, [r2, #0x0]
	mov     r0, r7
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	bl      Function_223a3a8
	stmia   r6!, {r0}
	ldr     r0, [sp, #0x28]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x1c]
	add     r0, #0x38
	str     r0, [sp, #0x1c]
	cmp     r5, r4
	blt     branch_223a294
.thumb
branch_223a2d0: @ 223a2d0 :thumb
	ldr     r0, [sp, #0xa4]
	cmp     r0, #0x0
	bne     branch_223a2dc
	ldr     r0, [sp, #0x2c]
	add     sp, #0x84
	pop     {r4-r7,pc}
@ 0x223a2dc

.thumb
branch_223a2dc: @ 223a2dc :thumb
	ldr     r1, [sp, #0x38]
	ldr     r2, [sp, #0xa4]
	str     r1, [r0, #0x0]
	mov     r3, #0x0
	add     r0, sp, #0x74
	add     r1, sp, #0x64
.thumb
branch_223a2e8: @ 223a2e8 :thumb
	ldr     r5, [r0, #0x0]
	ldr     r4, [sp, #0xa4]
	.hword  0x1c5b @ add r3, r3, #0x1
	strh    r5, [r4, #0x4]
	ldr     r4, [r1, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r4, [r2, #0x8]
	ldr     r4, [sp, #0xa4]
	.hword  0x1d09 @ add r1, r1, #0x4
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r4, [sp, #0xa4]
	cmp     r3, #0x2
	blt     branch_223a2e8
	ldr     r0, [sp, #0x2c]
	add     sp, #0x84
	pop     {r4-r7,pc}
@ 0x223a30a


.align 2, 0


.thumb
Function_223a30c: @ 223a30c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r2
	mov     r2, #0x11
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x0
	lsl     r2, r2, #4
	blx     MI_CpuFill8
	mov     r0, r6
	bl      Function_202d764
	mov     r6, r0
	bl      Function_202d5e8
	cmp     r0, #0x0
	bne     branch_223a33a
	mov     r0, r5
	mov     r1, r4
	bl      Function_223a348
	pop     {r4-r6,pc}
@ 0x223a33a

.thumb
branch_223a33a: @ 223a33a :thumb
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_202d63c
	pop     {r4-r6,pc}
@ 0x223a346


.align 2, 0


.thumb
Function_223a348: @ 223a348 :thumb
	push    {r3-r7,lr}
	mov     r2, #0x11
	mov     r4, r1
	mov     r1, #0x0
	lsl     r2, r2, #4
	mov     r5, r0
	blx     MI_CpuFill8
	mov     r0, #0x6
	mul     r0, r4
	ldr     r1, [pc, #0x3c] @ 0x223a39c, (=0x223fcb4)
	str     r0, [sp, #0x0]
	add     r6, r1, r0
	ldr     r1, [pc, #0x3c] @ 0x223a3a0, (=0x223fce0)
	mov     r2, #0x30
	mov     r0, r4
	mul     r0, r2
	add     r0, r1, r0
	mov     r1, r5
	ldr     r7, [pc, #0x34] @ 0x223a3a4, (=0x223fe30)
	blx     MI_CpuCopy8
	ldr     r1, [pc, #0x24] @ 0x223a39c, (=0x223fcb4)
	ldr     r0, [sp, #0x0]
	mov     r4, #0x0
	ldrh    r0, [r1, r0]
	strh    r0, [r5, #0x6]
	add     r5, #0x30
.thumb
branch_223a380: @ 223a380 :thumb
	add     r0, r6, r4
	ldrb    r1, [r0, #0x2]
	mov     r0, #0x38
	mov     r2, #0x38
	mul     r0, r1
	add     r0, r7, r0
	mov     r1, r5
	blx     MI_CpuCopy8
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x38
	cmp     r4, #0x4
	blt     branch_223a380
	pop     {r3-r7,pc}
@ 0x223a39c

.word 0x223fcb4 @ 0x223a39c
.word 0x223fce0 @ 0x223a3a0
.word 0x223fe30 @ 0x223a3a4
.thumb
Function_223a3a8: @ 223a3a8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r1
	mov     r4, r0
	mov     r6, r2
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x38
	str     r3, [sp, #0x0]
	blx     MI_CpuFill8
	ldrb    r0, [r4, #0xf]
	bl      Function_223a768
	mov     r2, r0
	add     r0, sp, #0x8
	mov     r1, r6
	bl      Function_222dcf4
	add     r2, sp, #0x8
	ldrh    r0, [r5, #0x0]
	ldr     r1, [pc, #0x184] @ 0x223a558, (=0xfffff800)
	ldrh    r3, [r2, #0x0]
	and     r0, r1
	lsr     r1, r1, #21
	and     r1, r3
	orr     r0, r1
	strh    r0, [r5, #0x0]
	ldrh    r1, [r5, #0x0]
	ldr     r0, [pc, #0x178] @ 0x223a55c, (=0xffff07ff)
	and     r1, r0
	ldrh    r0, [r2, #0xe]
	lsl     r0, r0, #27
	lsr     r0, r0, #16
	orr     r0, r1
	strh    r0, [r5, #0x0]
	ldr     r0, [sp, #0x3c]
	cmp     r0, #0x0
	beq     branch_223a402
	add     r0, sp, #0x20
	ldrb    r0, [r0, #0x18]
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x160] @ 0x223a560, (=0x223fcac)
	ldrh    r0, [r0, r1]
	b       branch_223a404
@ 0x223a402

.thumb
branch_223a402: @ 223a402 :thumb
	ldrh    r0, [r2, #0xc]
.thumb
branch_223a404: @ 223a404 :thumb
	strh    r0, [r5, #0x2]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	add     r1, sp, #0x8
	mov     r2, r5
	mov     r3, r0
.thumb
branch_223a412: @ 223a412 :thumb
	ldrh    r6, [r1, #0x2]
	strh    r6, [r2, #0x4]
	ldrh    r6, [r1, #0x2]
	cmp     r6, #0xda
	bne     branch_223a41e
	str     r3, [sp, #0x4]
.thumb
branch_223a41e: @ 223a41e :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r0, #0x4
	blt     branch_223a412
	ldr     r0, [sp, #0x0]
	ldr     r7, [sp, #0x30]
	str     r0, [r5, #0xc]
	cmp     r7, #0x0
	bne     branch_223a464
.thumb
branch_223a432: @ 223a432 :thumb
	mov     r0, r4
	bl      Function_204aec0
	mov     r6, r0
	mov     r0, r4
	bl      Function_204aec0
	lsl     r0, r0, #16
	mov     r7, r6
	orr     r7, r0
	mov     r0, r7
	bl      PkmnData_DivBy25
	add     r1, sp, #0x8
	ldrb    r1, [r1, #0xb]
	cmp     r1, r0
	bne     branch_223a432
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	bl      CheckIfShinyPkmn
	cmp     r0, #0x1
	beq     branch_223a432
	str     r7, [r5, #0x10]
	b       branch_223a466

branch_223a464: @ 223a464 :thumb
	str     r7, [r5, #0x10]
branch_223a466: @ 223a466 :thumb
	add     r0, sp, #0x20
	ldrb    r1, [r0, #0x14]
	ldr     r2, [r5, #0x14]
	mov     r0, #0x1f
	bic     r2, r0
	mov     r0, #0x1f
	and     r0, r1
	orr     r2, r0
	ldr     r0, [pc, #0xec] @ 0x223a564, (=0xfffffc1f)
	mov     r6, #0x0
	and     r2, r0
	lsl     r0, r1, #27
	lsr     r1, r0, #22
	orr     r2, r1
	ldr     r1, [pc, #0xe4] @ 0x223a568, (=0xffff83ff)
	mov     r4, r6
	and     r2, r1
	lsr     r1, r0, #17
	orr     r2, r1
	ldr     r1, [pc, #0xdc] @ 0x223a56c, (=0xfff07fff)
	and     r2, r1
	lsr     r1, r0, #12
	orr     r2, r1
	ldr     r1, [pc, #0xd8] @ 0x223a570, (=0xfe0fffff)
	and     r2, r1
	lsr     r1, r0, #7
	orr     r2, r1
	ldr     r1, [pc, #0xd4] @ 0x223a574, (=0xc1ffffff)
	lsr     r0, r0, #2
	and     r1, r2
	orr     r0, r1
	str     r0, [r5, #0x14]
.thumb
branch_223a4a6: @ 223a4a6 :thumb
	mov     r0, r4
	bl      Function_20787cc
	add     r1, sp, #0x8
	ldrb    r1, [r1, #0xa]
	tst     r0, r1
	beq     branch_223a4b6
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_223a4b6: @ 223a4b6 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x6
	blt     branch_223a4a6
	ldr     r0, [pc, #0xb8] @ 0x223a578, (=0x1fe)
	mov     r1, r6
	blx     _s32_div_f
	cmp     r0, #0xff
	ble     branch_223a4ca
	mov     r0, #0xff
.thumb
branch_223a4ca: @ 223a4ca :thumb
	lsl     r0, r0, #24
	mov     r4, #0x0
	lsr     r6, r0, #24
.thumb
branch_223a4d0: @ 223a4d0 :thumb
	mov     r0, r4
	bl      Function_20787cc
	add     r1, sp, #0x8
	ldrb    r1, [r1, #0xa]
	tst     r0, r1
	beq     branch_223a4e2
	add     r0, r5, r4
	strb    r6, [r0, #0x18]
.thumb
branch_223a4e2: @ 223a4e2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x6
	blt     branch_223a4d0
	mov     r0, #0x0
	strb    r0, [r5, #0x1e]
	ldr     r0, [pc, #0x8c] @ 0x223a57c, (=CountryOfOriginValue)
	mov     r1, #0x19
	ldrb    r0, [r0, #0x0]
	strb    r0, [r5, #0x1f]
	ldrh    r0, [r5, #0x0]
	lsl     r0, r0, #21
	lsr     r0, r0, #21
	bl      GetPkmnBaseData1
	cmp     r0, #0x0
	beq     branch_223a526
	ldr     r2, [r5, #0x10]
	mov     r1, #0x1
	tst     r1, r2
	beq     branch_223a512
	mov     r1, r5
	add     r1, #0x20
	strb    r0, [r1, #0x0]
	b       branch_223a538
@ 0x223a512

.thumb
branch_223a512: @ 223a512 :thumb
	ldrh    r0, [r5, #0x0]
	mov     r1, #0x18
	lsl     r0, r0, #21
	lsr     r0, r0, #21
	bl      GetPkmnBaseData1
	mov     r1, r5
	add     r1, #0x20
	strb    r0, [r1, #0x0]
	b       branch_223a538
@ 0x223a526

.thumb
branch_223a526: @ 223a526 :thumb
	ldrh    r0, [r5, #0x0]
	mov     r1, #0x18
	lsl     r0, r0, #21
	lsr     r0, r0, #21
	bl      GetPkmnBaseData1
	mov     r1, r5
	add     r1, #0x20
	strb    r0, [r1, #0x0]
.thumb
branch_223a538: @ 223a538 :thumb
	mov     r1, r5
	ldr     r0, [sp, #0x4]
	add     r1, #0x21
	strb    r0, [r1, #0x0]
	ldrh    r0, [r5, #0x0]
	add     r5, #0x22
	ldr     r1, [sp, #0x40]
	lsl     r0, r0, #21
	lsr     r0, r0, #21
	mov     r2, r5
	bl      Function_200b274
	mov     r0, r7
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223a556


.align 2


.word 0xfffff800 @ 0x223a558
.word 0xffff07ff @ 0x223a55c
.word 0x223fcac @ 0x223a560
.word 0xfffffc1f @ 0x223a564
.word 0xffff83ff @ 0x223a568
.word 0xfff07fff @ 0x223a56c
.word 0xfe0fffff @ 0x223a570
.word 0xc1ffffff @ 0x223a574
.word 0x1fe @ 0x223a578
.word CountryOfOriginValue @ 0x223a57c
.thumb
Function_223a580: @ 223a580 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldrb    r0, [r5, #0xf]
	mov     r4, r1
	bl      Function_223a700
	mov     r1, r0
	ldr     r0, [r5, #0x4]
	bl      AllocMainGameData
	mov     r7, r0
	ldr     r0, [r4, #0x8]
	bl      LoadPokePartyAdress
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x10]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x20]
	str     r0, [sp, #0x8]
	ldr     r2, [r4, #0x8]
	ldr     r3, [r4, #0x1c]
	mov     r0, r7
	bl      Function_20521b8
	mov     r0, #0x15
	mov     r1, #0x12
	lsl     r0, r0, #4
	str     r1, [r7, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r7, r0]
	ldr     r0, [r5, #0x4]
	bl      AllocPkmnData
	mov     r4, r0
	ldrb    r1, [r5, #0xe]
	ldr     r0, [r7, #0x4]
	bl      ZeroFillPkmnPartyStructure
	ldrb    r0, [r5, #0xe]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_223a630

branch_223a5dc: @ 223a5dc :thumb
	add     r1, r5, r6
	add     r1, #0x2a
	ldrb    r1, [r1, #0x0]
	ldr     r0, [sp, #0xc]
	bl      GetAdrOfPkmnInParty
	mov     r1, r4
	bl      Function_20775ec
	mov     r0, r4
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x32
	bls     branch_223a61e
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0x32
	bl      GetBaseExpPts
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x8
	add     r2, sp, #0x10
	bl      SetPkmnData
	mov     r0, r4
	bl      Function_207418c
branch_223a61e: @ 223a61e :thumb
	mov     r0, r7
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_205213c
	ldrb    r0, [r5, #0xe]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_223a5dc
branch_223a630: @ 223a630 :thumb
	mov     r0, r4
	bl      free
	mov     r0, r7
	bl      Function_2052894
	ldr     r0, [r5, #0x4]
	mov     r1, r5
	str     r0, [sp, #0x0]
	ldrb    r2, [r5, #0xe]
	mov     r0, r7
	add     r1, #0x78
	mov     r3, #0x1
	bl      Function_223a6ac
	mov     r2, #0x0
	mov     r1, r7
	mov     r0, #0x7
.thumb
branch_223a654: @ 223a654 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r0, [r1, #0x34]
	add     r1, #0x34
	cmp     r2, #0x4
	blt     branch_223a654
	ldrb    r0, [r5, #0xf]
	cmp     r0, #0x2
	beq     branch_223a66e
	cmp     r0, #0x3
	beq     branch_223a690
	cmp     r0, #0x6
	beq     branch_223a690
	b       branch_223a6a4
@ 0x223a66e

.thumb
branch_223a66e: @ 223a66e :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, #0xa6
	str     r0, [sp, #0x0]
	ldrb    r2, [r5, #0x10]
	lsl     r1, r1, #2
	add     r1, r5, r1
	lsl     r2, r2, #24
	lsr     r3, r2, #29
	lsl     r2, r3, #4
	add     r2, r3, r2
	lsl     r2, r2, #4
	add     r1, r1, r2
	ldrb    r2, [r5, #0xe]
	mov     r0, r7
	mov     r3, #0x2
	bl      Function_223a6ac
.thumb
branch_223a690: @ 223a690 :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, #0x62
	str     r0, [sp, #0x0]
	ldrb    r2, [r5, #0xe]
	lsl     r1, r1, #2
	mov     r0, r7
	add     r1, r5, r1
	mov     r3, #0x3
	bl      Function_223a6ac
.thumb
branch_223a6a4: @ 223a6a4 :thumb
	mov     r0, r7
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223a6aa


.align 2, 0


.thumb
Function_223a6ac: @ 223a6ac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	ldr     r4, [sp, #0x28]
	str     r0, [sp, #0x4]
	mov     r5, r1
	mov     r7, r2
	str     r3, [sp, #0x8]
	str     r4, [sp, #0x0]
	bl      Function_222e284
	ldr     r0, [sp, #0x28]
	bl      AllocPkmnData
	mov     r4, r0
	mov     r6, #0x0
	cmp     r7, #0x0
	ble     branch_223a6f6
	ldr     r0, [sp, #0x8]
	add     r5, #0x30
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x4]
	add     r0, r0, r1
	str     r0, [sp, #0xc]
.thumb
branch_223a6da: @ 223a6da :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x78
	bl      Function_222df40
	ldr     r0, [sp, #0xc]
	mov     r1, r4
	ldr     r0, [r0, #0x4]
	bl      CopyPkmnDataToParty
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x38
	cmp     r6, r7
	blt     branch_223a6da
.thumb
branch_223a6f6: @ 223a6f6 :thumb
	mov     r0, r4
	bl      free
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223a700

.thumb
Function_223a700: @ 223a700 :thumb
	cmp     r0, #0x6
	bhi     branch_223a72e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223a710

Jumppoints_223a710:
.hword branch_223a71e - Jumppoints_223a710 - 2
.hword branch_223a722 - Jumppoints_223a710 - 2
.hword branch_223a726 - Jumppoints_223a710 - 2
.hword branch_223a72a - Jumppoints_223a710 - 2
.hword branch_223a71e - Jumppoints_223a710 - 2
.hword branch_223a72e - Jumppoints_223a710 - 2
.hword branch_223a72a - Jumppoints_223a710 - 2
.thumb
branch_223a71e: @ 223a71e :thumb
	mov     r0, #0x81
	bx      lr
@ 0x223a722

.thumb
branch_223a722: @ 223a722 :thumb
	mov     r0, #0x83
	bx      lr
@ 0x223a726

.thumb
branch_223a726: @ 223a726 :thumb
	mov     r0, #0xcb
	bx      lr
@ 0x223a72a

.thumb
branch_223a72a: @ 223a72a :thumb
	mov     r0, #0x8f
	bx      lr
@ 0x223a72e

.thumb
branch_223a72e: @ 223a72e :thumb
	mov     r0, #0x81
	bx      lr
@ 0x223a732


.align 2, 0


.thumb
Function_223a734: @ 223a734 :thumb
	ldrb    r3, [r0, #0x10]
	mov     r2, #0x8
	bic     r3, r2
	lsl     r2, r1, #24
	lsr     r2, r2, #24
	lsl     r2, r2, #31
	lsr     r2, r2, #28
	orr     r2, r3
	strb    r2, [r0, #0x10]
	ldr     r2, [pc, #0x4] @ 0x223a74c, (=0x83e)
	strh    r1, [r0, r2]
	bx      lr
@ 0x223a74c

.word 0x83e @ 0x223a74c
.thumb
Function_223a750: @ 223a750 :thumb
	ldrb    r0, [r0, #0x10]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	bne     branch_223a75e
	ldrh    r0, [r1, #0x0]
	cmp     r0, #0x0
	beq     branch_223a762
.thumb
branch_223a75e: @ 223a75e :thumb
	mov     r0, #0x1
	bx      lr
@ 0x223a762

.thumb
branch_223a762: @ 223a762 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223a766


.align 2, 0


.thumb
Function_223a768: @ 223a768 :thumb
	push    {r3,lr}
	bl      Function_223a7ac
	cmp     r0, #0x0
	bne     branch_223a776
	mov     r0, #0x87
	pop     {r3,pc}
@ 0x223a776

.thumb
branch_223a776: @ 223a776 :thumb
	mov     r0, #0xb3
	pop     {r3,pc}
@ 0x223a77a


.align 2, 0


.thumb
Function_223a77c: @ 223a77c :thumb
	push    {r3,lr}
	bl      Function_223a7ac
	cmp     r0, #0x0
	bne     branch_223a78a
	mov     r0, #0x86
	pop     {r3,pc}
@ 0x223a78a

.thumb
branch_223a78a: @ 223a78a :thumb
	mov     r0, #0xb2
	pop     {r3,pc}
@ 0x223a78e


.align 2, 0


.thumb
Function_223a790: @ 223a790 :thumb
	push    {r3,lr}
	bl      Function_223a7ac
	cmp     r0, #0x0
	bne     branch_223a79e
	ldr     r0, [pc, #0x8] @ 0x223a7a4, (=0x265)
	pop     {r3,pc}
@ 0x223a79e

.thumb
branch_223a79e: @ 223a79e :thumb
	ldr     r0, [pc, #0x8] @ 0x223a7a8, (=0x266)
	pop     {r3,pc}
@ 0x223a7a2


.align 2


.word 0x265 @ 0x223a7a4
.word 0x266 @ 0x223a7a8
.thumb
Function_223a7ac: @ 223a7ac :thumb
	push    {r3-r5,lr}
	cmp     r0, #0x3
	beq     branch_223a7b6
	cmp     r0, #0x6
	bne     branch_223a7f0
.thumb
branch_223a7b6: @ 223a7b6 :thumb
	mov     r0, #0x0
	bl      Function_2032ee8
	mov     r5, r0
	bne     branch_223a7c4
	bl      ErrorHandling
.thumb
branch_223a7c4: @ 223a7c4 :thumb
	mov     r0, #0x1
	bl      Function_2032ee8
	mov     r4, r0
	bne     branch_223a7d2
	bl      ErrorHandling
.thumb
branch_223a7d2: @ 223a7d2 :thumb
	mov     r0, r5
	bl      Function_2025fcc
	mov     r5, r0
	mov     r0, r4
	bl      Function_2025fcc
	cmp     r5, #0x0
	beq     branch_223a7e8
	cmp     r0, #0x0
	bne     branch_223a7ec
.thumb
branch_223a7e8: @ 223a7e8 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223a7ec

.thumb
branch_223a7ec: @ 223a7ec :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223a7f0

.thumb
branch_223a7f0: @ 223a7f0 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223a7f4

.thumb
Function_223a7f4: @ 223a7f4 :thumb
	push    {r3-r5,lr}
	cmp     r1, #0x8
	bcc     branch_223a7fc
	mov     r1, #0x7
.thumb
branch_223a7fc: @ 223a7fc :thumb
	cmp     r0, #0x0
	bne     branch_223a818
	mov     r0, #0x7
	add     r3, r2, #0x1
	mul     r0, r1
	add     r0, r3, r0
	cmp     r0, #0x15
	bne     branch_223a810
	ldr     r0, [pc, #0x38] @ 0x223a848, (=0x135)
	pop     {r3-r5,pc}
@ 0x223a810

.thumb
branch_223a810: @ 223a810 :thumb
	cmp     r0, #0x31
	bne     branch_223a818
	ldr     r0, [pc, #0x34] @ 0x223a84c, (=0x136)
	pop     {r3-r5,pc}
@ 0x223a818

.thumb
branch_223a818: @ 223a818 :thumb
	cmp     r2, #0x6
	beq     branch_223a820
	cmp     r2, #0xd
	bne     branch_223a82e
.thumb
branch_223a820: @ 223a820 :thumb
	ldr     r0, [pc, #0x2c] @ 0x223a850, (=0x2240200)
	lsl     r1, r1, #3
	ldrh    r4, [r0, r1]
	ldr     r0, [pc, #0x2c] @ 0x223a854, (=0x2240202)
	ldrh    r0, [r0, r1]
	sub     r5, r0, r4
	b       branch_223a83a
@ 0x223a82e

.thumb
branch_223a82e: @ 223a82e :thumb
	ldr     r0, [pc, #0x28] @ 0x223a858, (=0x22401fc)
	lsl     r1, r1, #3
	ldrh    r4, [r0, r1]
	ldr     r0, [pc, #0x24] @ 0x223a85c, (=0x22401fe)
	ldrh    r0, [r0, r1]
	sub     r5, r0, r4
.thumb
branch_223a83a: @ 223a83a :thumb
	bl      PRNG
	mov     r1, r5
	blx     _s32_div_f
	add     r0, r4, r1
	pop     {r3-r5,pc}
@ 0x223a848

.word 0x135 @ 0x223a848
.word 0x136 @ 0x223a84c
.word 0x2240200 @ 0x223a850
.word 0x2240202 @ 0x223a854
.word 0x22401fc @ 0x223a858
.word 0x22401fe @ 0x223a85c
.thumb
Function_223a860: @ 223a860 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r2
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r7, r3
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_223a870: @ 223a870 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r2, r4
	bl      Function_223a7f4
	mov     r1, #0x0
	strh    r0, [r5, #0x0]
	cmp     r4, #0x0
	ble     branch_223a896
	lsl     r0, r4, #1
	ldrh    r3, [r6, r0]
	mov     r2, r6
.thumb
branch_223a888: @ 223a888 :thumb
	ldrh    r0, [r2, #0x0]
	cmp     r0, r3
	beq     branch_223a896
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, r4
	blt     branch_223a888
.thumb
branch_223a896: @ 223a896 :thumb
	cmp     r1, r4
	bne     branch_223a89e
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_223a89e: @ 223a89e :thumb
	cmp     r4, r7
	blt     branch_223a870
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223a8a6


.align 2, 0


.thumb
Function_223a8a8: @ 223a8a8 :thumb
	push    {r4,lr}
	cmp     r1, #0x0
	bne     branch_223a8b4
	ldr     r2, [pc, #0x38] @ 0x223a8e8, (=0x224028c)
	ldr     r1, [pc, #0x38] @ 0x223a8ec, (=0x2241ab8)
	b       branch_223a8b8
@ 0x223a8b4

.thumb
branch_223a8b4: @ 223a8b4 :thumb
	ldr     r2, [pc, #0x38] @ 0x223a8f0, (=0x22402dc)
	ldr     r1, [pc, #0x34] @ 0x223a8ec, (=0x2241ab8)
.thumb
branch_223a8b8: @ 223a8b8 :thumb
	mov     r4, #0xa
	str     r2, [r1, #0x0]
	mov     r2, #0x0
	cmp     r4, #0x0
	ble     branch_223a8d4
	ldr     r1, [pc, #0x28] @ 0x223a8ec, (=0x2241ab8)
	ldr     r3, [r1, #0x0]
.thumb
branch_223a8c6: @ 223a8c6 :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r0, r1
	blt     branch_223a8d4
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x8
	cmp     r2, r4
	blt     branch_223a8c6
.thumb
branch_223a8d4: @ 223a8d4 :thumb
	cmp     r2, r4
	blt     branch_223a8de
	bl      ErrorHandling
	.hword  0x1e62 @ sub r2, r4, #0x1
.thumb
branch_223a8de: @ 223a8de :thumb
	ldr     r0, [pc, #0xc] @ 0x223a8ec, (=0x2241ab8)
	ldr     r1, [r0, #0x0]
	lsl     r0, r2, #3
	add     r0, r1, r0
	pop     {r4,pc}
@ 0x223a8e8

.word 0x224028c @ 0x223a8e8
.word 0x2241ab8 @ 0x223a8ec
.word 0x22402dc @ 0x223a8f0
.thumb
Function_223a8f4: @ 223a8f4 :thumb
	cmp     r0, #0x8
	blt     branch_223a8fa
	mov     r0, #0x7
.thumb
branch_223a8fa: @ 223a8fa :thumb
	cmp     r1, #0x0
	bne     branch_223a906
	ldr     r1, [pc, #0x10] @ 0x223a910, (=0x224028c)
	lsl     r0, r0, #3
	add     r0, r1, r0
	bx      lr
@ 0x223a906

.thumb
branch_223a906: @ 223a906 :thumb
	ldr     r1, [pc, #0xc] @ 0x223a914, (=0x224023c)
	lsl     r0, r0, #3
	add     r0, r1, r0
	bx      lr
@ 0x223a90e


.align 2


.word 0x224028c @ 0x223a910
.word 0x224023c @ 0x223a914
.thumb
Function_223a918: @ 223a918 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x84
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xa0]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0xa0]
	ldr     r0, [sp, #0xa8]
	mov     r7, r2
	str     r0, [sp, #0xa8]
	mov     r0, r3
	str     r3, [sp, #0x8]
	cmp     r0, #0x6
	ble     branch_223a936
	bl      ErrorHandling
.thumb
branch_223a936: @ 223a936 :thumb
	ldr     r0, [sp, #0xa0]
	mov     r4, #0x0
	ldrh    r1, [r0, #0x4]
	ldrh    r0, [r0, #0x2]
	sub     r0, r1, r0
	add     r1, sp, #0x88
	ldrh    r5, [r1, #0x1c]
	str     r0, [sp, #0x1c]
	mov     r0, r4
	cmp     r5, #0x0
	beq     branch_223a964
	ldr     r3, [pc, #0xfc] @ 0x223aa4c, (=0x22401e8)
	mov     r0, #0x5
	mov     r2, r4
.thumb
branch_223a952: @ 223a952 :thumb
	ldr     r1, [r3, #0x0]
	cmp     r5, r1
	bgt     branch_223a95c
	mov     r0, r2
	b       branch_223a964
@ 0x223a95c

.thumb
branch_223a95c: @ 223a95c :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r2, #0x5
	bcc     branch_223a952
.thumb
branch_223a964: @ 223a964 :thumb
	ldr     r1, [sp, #0x8]
	cmp     r1, #0x0
	beq     branch_223aa44
	add     r1, sp, #0x24
	str     r1, [sp, #0x14]
	ldr     r1, [sp, #0x98]
	str     r1, [sp, #0x10]
	ldr     r1, [sp, #0x8]
	sub     r0, r1, r0
	str     r0, [sp, #0xc]
.thumb
branch_223a978: @ 223a978 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r4, r0
	blt     branch_223a9ac
	ldr     r0, [sp, #0xa0]
	ldrb    r0, [r0, #0x7]
	cmp     r0, #0x1
	bne     branch_223a9ac
	ldr     r0, [sp, #0xa0]
	ldrh    r1, [r0, #0xc]
	ldrh    r0, [r0, #0xa]
	sub     r0, r1, r0
	str     r0, [sp, #0x1c]
	bl      PRNG
	ldr     r1, [sp, #0x1c]
	.hword  0x1c49 @ add r1, r1, #0x1
	blx     _s32_div_f
	ldr     r0, [sp, #0xa0]
	ldrh    r0, [r0, #0xc]
	sub     r0, r0, r1
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0xa0]
	ldrb    r0, [r0, #0xe]
	str     r0, [sp, #0x20]
	b       branch_223a9c6
@ 0x223a9ac

.thumb
branch_223a9ac: @ 223a9ac :thumb
	bl      PRNG
	ldr     r1, [sp, #0x1c]
	.hword  0x1c49 @ add r1, r1, #0x1
	blx     _s32_div_f
	ldr     r0, [sp, #0xa0]
	ldrh    r0, [r0, #0x4]
	sub     r0, r0, r1
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0xa0]
	ldrb    r0, [r0, #0x6]
	str     r0, [sp, #0x20]
.thumb
branch_223a9c6: @ 223a9c6 :thumb
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	mov     r2, #0xb3
	bl      Function_222dcf4
	mov     r2, #0x0
	cmp     r4, #0x0
	ble     branch_223a9f4
	ldr     r1, [sp, #0x14]
	ldr     r3, [sp, #0x14]
	ldrh    r1, [r1, #0x0]
	ldrh    r3, [r3, #0xc]
	add     r0, sp, #0x24
.thumb
branch_223a9e0: @ 223a9e0 :thumb
	ldrh    r5, [r0, #0x0]
	cmp     r5, r1
	beq     branch_223a9f4
	ldrh    r5, [r0, #0xc]
	cmp     r5, r3
	beq     branch_223a9f4
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0x10
	cmp     r2, r4
	blt     branch_223a9e0
.thumb
branch_223a9f4: @ 223a9f4 :thumb
	cmp     r2, r4
	bne     branch_223aa3e
	mov     r3, #0x0
	cmp     r7, #0x0
	ble     branch_223aa20
	ldr     r2, [sp, #0x14]
	ldr     r5, [sp, #0x14]
	ldrh    r2, [r2, #0x0]
	ldrh    r6, [r5, #0xc]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
.thumb
branch_223aa0a: @ 223aa0a :thumb
	ldrh    r5, [r0, #0x0]
	cmp     r2, r5
	beq     branch_223aa20
	ldrh    r5, [r1, #0x0]
	cmp     r6, r5
	beq     branch_223aa20
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r3, r7
	blt     branch_223aa0a
.thumb
branch_223aa20: @ 223aa20 :thumb
	cmp     r3, r7
	bne     branch_223aa3e
	ldr     r1, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	strh    r1, [r0, #0x0]
	ldr     r1, [sp, #0x20]
	ldr     r0, [sp, #0xa8]
	strb    r1, [r0, r4]
	ldr     r0, [sp, #0x14]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x10
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x10]
.thumb
branch_223aa3e: @ 223aa3e :thumb
	ldr     r0, [sp, #0x8]
	cmp     r4, r0
	bne     branch_223a978
.thumb
branch_223aa44: @ 223aa44 :thumb
	mov     r0, #0x0
	add     sp, #0x84
	pop     {r4-r7,pc}
@ 0x223aa4a


.align 2


.word 0x22401e8 @ 0x223aa4c
.thumb
Function_223aa50: @ 223aa50 :thumb
	cmp     r0, #0x3
	bhi     branch_223aa70
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223aa60

Jumppoints_223aa60:
.hword branch_223aa68 - Jumppoints_223aa60 - 2
.hword branch_223aa68 - Jumppoints_223aa60 - 2
.hword branch_223aa6c - Jumppoints_223aa60 - 2
.hword branch_223aa6c - Jumppoints_223aa60 - 2
.thumb
branch_223aa68: @ 223aa68 :thumb
	mov     r0, #0x3
	bx      lr
@ 0x223aa6c

.thumb
branch_223aa6c: @ 223aa6c :thumb
	mov     r0, #0x2
	bx      lr
@ 0x223aa70

.thumb
branch_223aa70: @ 223aa70 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223aa74

.thumb
Function_223aa74: @ 223aa74 :thumb
	cmp     r0, #0x3
	bhi     branch_223aa9c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223aa84

Jumppoints_223aa84:
.hword branch_223aa8c - Jumppoints_223aa84 - 2
.hword branch_223aa8c - Jumppoints_223aa84 - 2
.hword branch_223aa90 - Jumppoints_223aa84 - 2
.hword branch_223aa90 - Jumppoints_223aa84 - 2
.thumb
branch_223aa8c: @ 223aa8c :thumb
	mov     r0, #0x3
	bx      lr
@ 0x223aa90

.thumb
branch_223aa90: @ 223aa90 :thumb
	cmp     r1, #0x0
	bne     branch_223aa98
	mov     r0, #0x2
	bx      lr
@ 0x223aa98

.thumb
branch_223aa98: @ 223aa98 :thumb
	mov     r0, #0x4
	bx      lr
@ 0x223aa9c

.thumb
branch_223aa9c: @ 223aa9c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223aaa0

.thumb
Function_223aaa0: @ 223aaa0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r2
	mov     r4, r3
	bl      Function_223a8f4
	ldr     r1, [sp, #0x2c]
	str     r5, [sp, #0x0]
	cmp     r1, #0x0
	bne     branch_223aad2
	mov     r1, #0xb
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r0, sp, #0x10
	ldrh    r0, [r0, #0x18]
	mov     r3, #0x6
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x20]
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	bl      Function_223a918
	b       branch_223aaec
@ 0x223aad2

.thumb
branch_223aad2: @ 223aad2 :thumb
	mov     r2, #0xb
	str     r2, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r0, sp, #0x10
	ldrh    r0, [r0, #0x18]
	mov     r2, #0x6
	mov     r3, r2
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x20]
	str     r0, [sp, #0x10]
	mov     r0, r1
	bl      Function_223a918
.thumb
branch_223aaec: @ 223aaec :thumb
	ldr     r0, [sp, #0x24]
	ldr     r2, [sp, #0x20]
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	mov     r0, #0xb3
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, r5
	mov     r3, #0x0
	bl      Function_222e330
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x223ab0c

.thumb
Function_223ab0c: @ 223ab0c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x84
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0xa8]
	mov     r7, r3
	str     r0, [sp, #0xa8]
	mov     r0, r1
	mov     r1, r2
	bl      Function_223a8a8
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	mov     r12, r0
	ldr     r0, [sp, #0xa8]
	cmp     r0, #0x0
	ble     branch_223ab60
	add     r4, sp, #0x34
	add     r5, sp, #0x1c
.thumb
branch_223ab30: @ 223ab30 :thumb
	mov     r6, r7
	add     r3, sp, #0x4c
	mov     r2, #0x7
.thumb
branch_223ab36: @ 223ab36 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223ab36
	add     r0, sp, #0x1c
	ldrh    r0, [r0, #0x30]
	add     r7, #0x38
	lsl     r0, r0, #21
	lsr     r0, r0, #21
	strh    r0, [r4, #0x0]
	add     r0, sp, #0x1c
	ldrh    r0, [r0, #0x32]
	.hword  0x1ca4 @ add r4, r4, #0x2
	strh    r0, [r5, #0x0]
	mov     r0, r12
	add     r1, r0, #0x1
	ldr     r0, [sp, #0xa8]
	.hword  0x1cad @ add r5, r5, #0x2
	mov     r12, r1
	cmp     r1, r0
	blt     branch_223ab30
.thumb
branch_223ab60: @ 223ab60 :thumb
	ldr     r0, [sp, #0x98]
	ldr     r2, [sp, #0xa8]
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x18]
	add     r1, sp, #0x1c
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0xa0]
	str     r0, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	add     r0, sp, #0x34
	bl      Function_223a918
	ldr     r0, [sp, #0xa4]
	ldr     r1, [sp, #0x98]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0xa0]
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	mov     r0, #0xb3
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x9c]
	mov     r3, #0x0
	bl      Function_222e330
	add     sp, #0x84
	pop     {r4-r7,pc}
@ 0x223aba0

.thumb
Function_223aba0: @ 223aba0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x48
	mov     r5, r0
	ldrb    r0, [r5, #0x4]
	mov     r6, r1
	bl      Function_223aa50
	str     r0, [sp, #0x14]
	ldrb    r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_223aa74
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x1b0] @ 0x223ad6c, (=0x4d4)
	ldr     r0, [r5, r0]
	bl      HealPokemon
	ldr     r0, [pc, #0x1ac] @ 0x223ad70, (=0x4d8)
	ldr     r0, [r5, r0]
	bl      HealPokemon
	ldrb    r0, [r5, #0x4]
	bl      Function_223ad74
	mov     r1, r0
	mov     r0, #0xb
	bl      AllocMainGameData
	ldr     r1, [r6, #0xc]
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [r6, #0x10]
	str     r1, [sp, #0x4]
	ldr     r1, [r6, #0x20]
	str     r1, [sp, #0x8]
	ldr     r2, [r6, #0x8]
	ldr     r3, [r6, #0x1c]
	mov     r1, #0x0
	bl      Function_20521b8
	mov     r0, #0x15
	mov     r1, #0x13
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x4]
	ldr     r1, [sp, #0x14]
	bl      ZeroFillPkmnPartyStructure
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r7, r0
	ldr     r0, [sp, #0x14]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_223ac36
.thumb
branch_223ac14: @ 223ac14 :thumb
	ldr     r0, [pc, #0x154] @ 0x223ad6c, (=0x4d4)
	mov     r1, r6
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	mov     r1, r7
	bl      Function_20775ec
	mov     r0, r4
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_205213c
	ldr     r0, [sp, #0x14]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_223ac14
.thumb
branch_223ac36: @ 223ac36 :thumb
	mov     r0, r7
	bl      free
	mov     r0, r4
	bl      Function_2052894
	ldrb    r1, [r5, #0x6]
	add     r0, sp, #0x18
	mov     r2, #0xb
	lsl     r1, r1, #1
	add     r1, r5, r1
	ldrh    r1, [r1, #0x18]
	mov     r3, #0xb2
	bl      Function_222dd04
	bl      free
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	add     r1, sp, #0x18
	mov     r3, #0x1
	bl      Function_222e284
	ldrb    r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_223aa74
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	bl      ZeroFillPkmnPartyStructure
	mov     r7, #0x0
	mov     r6, r4
.thumb
branch_223ac7c: @ 223ac7c :thumb
	mov     r0, r5
	bl      Function_223aee4
	str     r0, [r6, #0x34]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x34
	cmp     r7, #0x4
	blt     branch_223ac7c
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r7, r0
	ldr     r0, [sp, #0x10]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_223acbe
.thumb
branch_223ac9c: @ 223ac9c :thumb
	ldr     r0, [pc, #0xd0] @ 0x223ad70, (=0x4d8)
	mov     r1, r6
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	mov     r1, r7
	bl      Function_20775ec
	mov     r0, r4
	mov     r1, r7
	mov     r2, #0x1
	bl      Function_205213c
	ldr     r0, [sp, #0x10]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_223ac9c
.thumb
branch_223acbe: @ 223acbe :thumb
	mov     r0, r7
	bl      free
	ldrb    r0, [r5, #0x4]
	cmp     r0, #0x2
	beq     branch_223acce
	cmp     r0, #0x3
	bne     branch_223ad64
.thumb
branch_223acce: @ 223acce :thumb
	mov     r0, r4
	bl      Function_2052894
	bl      Function_203608c
	mov     r1, #0x1
	sub     r0, r1, r0
	bl      Function_2032ee8
	mov     r1, #0x1
	lsl     r1, r1, #8
	ldr     r1, [r4, r1]
	bl      CopyTrainerData
	ldrb    r1, [r5, #0x6]
	add     r0, sp, #0x18
	mov     r2, #0xb
	.hword  0x1dc9 @ add r1, r1, #0x7
	lsl     r1, r1, #1
	add     r1, r5, r1
	ldrh    r1, [r1, #0x18]
	mov     r3, #0xb2
	bl      Function_222dd04
	bl      free
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	add     r1, sp, #0x18
	mov     r3, #0x3
	bl      Function_222e284
	ldrb    r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_223aa74
	mov     r1, r0
	ldr     r0, [r4, #0x10]
	bl      ZeroFillPkmnPartyStructure
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	ble     branch_223ad5e
	mov     r6, r0
.thumb
branch_223ad36: @ 223ad36 :thumb
	ldr     r0, [pc, #0x38] @ 0x223ad70, (=0x4d8)
	mov     r1, r6
	ldr     r0, [r5, r0]
	bl      GetAdrOfPkmnInParty
	mov     r1, r7
	bl      Function_20775ec
	mov     r0, r4
	mov     r1, r7
	mov     r2, #0x3
	bl      Function_205213c
	ldr     r0, [sp, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x10]
	str     r1, [sp, #0xc]
	cmp     r1, r0
	blt     branch_223ad36
.thumb
branch_223ad5e: @ 223ad5e :thumb
	mov     r0, r7
	bl      free
.thumb
branch_223ad64: @ 223ad64 :thumb
	mov     r0, r4
	add     sp, #0x48
	pop     {r3-r7,pc}
@ 0x223ad6a


.align 2


.word 0x4d4 @ 0x223ad6c
.word 0x4d8 @ 0x223ad70
.thumb
Function_223ad74: @ 223ad74 :thumb
	cmp     r0, #0x3
	bhi     branch_223ad9c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223ad84

Jumppoints_223ad84:
.hword branch_223ad8c - Jumppoints_223ad84 - 2
.hword branch_223ad90 - Jumppoints_223ad84 - 2
.hword branch_223ad94 - Jumppoints_223ad84 - 2
.hword branch_223ad98 - Jumppoints_223ad84 - 2
.thumb
branch_223ad8c: @ 223ad8c :thumb
	mov     r0, #0x81
	bx      lr
@ 0x223ad90

.thumb
branch_223ad90: @ 223ad90 :thumb
	mov     r0, #0x83
	bx      lr
@ 0x223ad94

.thumb
branch_223ad94: @ 223ad94 :thumb
	mov     r0, #0x8f
	bx      lr
@ 0x223ad98

.thumb
branch_223ad98: @ 223ad98 :thumb
	mov     r0, #0x8f
	bx      lr
@ 0x223ad9c

.thumb
branch_223ad9c: @ 223ad9c :thumb
	mov     r0, #0x81
	bx      lr
@ 0x223ada0

.thumb
Function_223ada0: @ 223ada0 :thumb
	ldrb    r0, [r0, #0x5]
	cmp     r0, #0x0
	bne     branch_223adaa
	mov     r0, #0x32
	bx      lr
@ 0x223adaa

.thumb
branch_223adaa: @ 223adaa :thumb
	mov     r0, #0x64
	bx      lr
@ 0x223adae


.align 2, 0


.thumb
Function_223adb0: @ 223adb0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	mov     r3, #0xa
	lsl     r3, r3, #6
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	mov     r0, #0xb3
	mov     r1, r3
	mov     r2, r3
	str     r0, [sp, #0xc]
	add     r0, r5, r3
	sub     r1, #0x2c
	sub     r2, #0x20
	sub     r3, #0x18
	add     r1, r5, r1
	add     r2, r5, r2
	add     r3, r5, r3
	bl      Function_222e330
	ldr     r0, [pc, #0x44] @ 0x223ae28, (=0x4d4)
	ldr     r0, [r5, r0]
	bl      ZeroFillPkmnPartyStructure_6
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r6, r0
	mov     r0, #0xa
	lsl     r0, r0, #6
	mov     r7, #0x0
	add     r4, r5, r0
.thumb
branch_223adf8: @ 223adf8 :thumb
	mov     r0, r5
	bl      Function_223ada0
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_222df40
	ldr     r0, [pc, #0x20] @ 0x223ae2c, (=0x4f8)
	ldr     r1, [pc, #0x1c] @ 0x223ae28, (=0x4d4)
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      Function_222e1c0
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x38
	cmp     r7, #0x6
	blt     branch_223adf8
	mov     r0, r6
	bl      free
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223ae28

.word 0x4d4 @ 0x223ae28
.word 0x4f8 @ 0x223ae2c
.thumb
Function_223ae30: @ 223ae30 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x84
	mov     r5, r0
	ldr     r0, [pc, #0x90] @ 0x223aec8, (=0x4d4)
	ldr     r0, [r5, r0]
	bl      GetNrOfPkmnInParty
	mov     r4, r0
	cmp     r4, #0x2
	ble     branch_223ae54
	ldr     r6, [pc, #0x80] @ 0x223aec8, (=0x4d4)
.thumb
branch_223ae46: @ 223ae46 :thumb
	ldr     r0, [r5, r6]
	.hword  0x1e61 @ sub r1, r4, #0x1
	bl      Function_207a080
	.hword  0x1e64 @ sub r4, r4, #0x1
	cmp     r4, #0x2
	bgt     branch_223ae46
.thumb
branch_223ae54: @ 223ae54 :thumb
	ldr     r3, [pc, #0x74] @ 0x223aecc, (=0x584)
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	mov     r2, r3
	str     r0, [sp, #0x8]
	mov     r0, #0xb3
	add     r1, r5, r3
	add     r2, #0xc
	add     r3, #0x14
	str     r0, [sp, #0xc]
	add     r0, sp, #0x14
	add     r2, r5, r2
	add     r3, r5, r3
	bl      Function_222e330
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	add     r6, sp, #0x14
	mov     r4, r5
.thumb
branch_223ae88: @ 223ae88 :thumb
	mov     r0, r5
	bl      Function_223ada0
	mov     r2, r0
	mov     r0, r6
	mov     r1, r7
	bl      Function_222df40
	ldr     r0, [pc, #0x34] @ 0x223aed0, (=0x4f8)
	ldr     r1, [pc, #0x2c] @ 0x223aec8, (=0x4d4)
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, r7
	bl      Function_222e1c0
	ldr     r0, [pc, #0x24] @ 0x223aecc, (=0x584)
	add     r6, #0x38
	ldrh    r1, [r4, r0]
	sub     r0, #0x98
	strh    r1, [r4, r0]
	ldr     r0, [sp, #0x10]
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x2
	blt     branch_223ae88
	mov     r0, r7
	bl      free
	add     sp, #0x84
	pop     {r4-r7,pc}
@ 0x223aec6


.align 2


.word 0x4d4 @ 0x223aec8
.word 0x584 @ 0x223aecc
.word 0x4f8 @ 0x223aed0
.thumb
Function_223aed4: @ 223aed4 :thumb
	cmp     r0, #0x2
	beq     branch_223aedc
	cmp     r0, #0x3
	bne     branch_223aee0
.thumb
branch_223aedc: @ 223aedc :thumb
	mov     r0, #0x1
	bx      lr
@ 0x223aee0

.thumb
branch_223aee0: @ 223aee0 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223aee4

.thumb
Function_223aee4: @ 223aee4 :thumb
	push    {r3,lr}
	ldrb    r1, [r0, #0x4]
	cmp     r1, #0x0
	bne     branch_223af04
	ldrb    r1, [r0, #0x6]
	lsl     r1, r1, #1
	add     r1, r0, r1
	ldrh    r2, [r1, #0x18]
	ldr     r1, [pc, #0x38] @ 0x223af30, (=0xfecb)
	add     r1, r2, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	cmp     r1, #0x1
	bhi     branch_223af04
	mov     r0, #0x7
	pop     {r3,pc}
@ 0x223af04

.thumb
branch_223af04: @ 223af04 :thumb
	bl      Function_223af34
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r1, #0x7
	cmp     r0, #0x4
	bhi     branch_223af2c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223af1c

Jumppoints_223af1c:
.hword branch_223af2c - Jumppoints_223af1c - 2
.hword branch_223af26 - Jumppoints_223af1c - 2
.hword branch_223af26 - Jumppoints_223af1c - 2
.hword branch_223af2a - Jumppoints_223af1c - 2
.hword branch_223af2a - Jumppoints_223af1c - 2
.thumb
branch_223af26: @ 223af26 :thumb
	mov     r1, #0x0
	b       branch_223af2c
@ 0x223af2a

.thumb
branch_223af2a: @ 223af2a :thumb
	mov     r1, #0x1
.thumb
branch_223af2c: @ 223af2c :thumb
	mov     r0, r1
	pop     {r3,pc}
@ 0x223af30

.word 0xfecb @ 0x223af30
.thumb
Function_223af34: @ 223af34 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x4]
	ldrh    r4, [r5, #0xe]
	bl      Function_223aed4
	cmp     r0, #0x1
	bne     branch_223af50
	ldr     r0, [pc, #0xc] @ 0x223af54, (=0x57e)
	ldrh    r1, [r5, r0]
	ldrh    r0, [r5, #0xe]
	cmp     r1, r0
	bls     branch_223af50
	mov     r4, r1
.thumb
branch_223af50: @ 223af50 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223af54

.word 0x57e @ 0x223af54
.thumb
Function_223af58: @ 223af58 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r3
	mov     r0, r2
	str     r1, [sp, #0x0]
	mov     r4, #0x0
	bl      Function_223b644
	lsl     r1, r5, #25
	lsl     r0, r0, #24
	ldr     r2, [sp, #0x18]
	lsr     r1, r1, #23
	add     r5, r2, r1
	ldr     r1, [pc, #0x38] @ 0x223afac, (=0x224041c)
	lsr     r0, r0, #20
	add     r7, r1, r0
	ldr     r1, [pc, #0x34] @ 0x223afb0, (=0x224038c)
	lsl     r0, r6, #3
	add     r6, r1, r0
.thumb
branch_223af7e: @ 223af7e :thumb
	bl      PRNG
	mov     r1, #0xc
	blx     _s32_div_f
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	cmp     r0, #0x8
	bcs     branch_223af96
	lsl     r0, r0, #1
	ldrh    r0, [r7, r0]
	b       branch_223af9e
@ 0x223af96

.thumb
branch_223af96: @ 223af96 :thumb
	lsl     r0, r0, #1
	add     r0, r6, r0
	sub     r0, #0x10
	ldrh    r0, [r0, #0x0]
.thumb
branch_223af9e: @ 223af9e :thumb
	strh    r0, [r5, #0x0]
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, r0
	blt     branch_223af7e
	pop     {r3-r7,pc}
@ 0x223afac

.word 0x224041c @ 0x223afac
.word 0x224038c @ 0x223afb0
.thumb
Function_223afb4: @ 223afb4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r0, [sp, #0x34]
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x34]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	add     r0, sp, #0x20
	ldrb    r4, [r0, #0x10]
	mov     r6, r2
	lsl     r0, r4, #25
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, r3
	bl      Function_223b644
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	cmp     r5, #0x0
	bne     branch_223b00e
	mov     r0, #0xa
	add     r1, r4, #0x1
	mul     r0, r6
	add     r0, r1, r0
	cmp     r0, #0x32
	bne     branch_223affa
	ldr     r0, [sp, #0x8]
	ldr     r2, [pc, #0xcc] @ 0x223b0bc, (=0x133)
	lsl     r1, r0, #1
	ldr     r0, [sp, #0x34]
	add     sp, #0x1c
	strh    r2, [r0, r1]
	pop     {r4-r7,pc}
@ 0x223affa

.thumb
branch_223affa: @ 223affa :thumb
	cmp     r0, #0xaa
	bne     branch_223b00e
	ldr     r0, [sp, #0x8]
	mov     r2, #0x4d
	lsl     r1, r0, #1
	ldr     r0, [sp, #0x34]
	lsl     r2, r2, #2
	strh    r2, [r0, r1]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223b00e

.thumb
branch_223b00e: @ 223b00e :thumb
	ldr     r0, [sp, #0x8]
	lsl     r1, r0, #1
	ldr     r0, [sp, #0x34]
	add     r0, r0, r1
	str     r0, [sp, #0xc]
.thumb
branch_223b018: @ 223b018 :thumb
	bl      PRNG
	mov     r1, #0x4b
	lsl     r1, r1, #2
	blx     _u32_div_f
	lsl     r0, r1, #16
	lsr     r4, r0, #16
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x10]
	str     r4, [sp, #0x14]
	add     r5, r1, r0
	lsl     r0, r5, #1
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x4]
	lsl     r1, r0, #4
	ldr     r0, [pc, #0x84] @ 0x223b0c0, (=0x224041c)
	add     r7, r0, r1
.thumb
branch_223b03c: @ 223b03c :thumb
	ldr     r1, [sp, #0x34]
	ldr     r0, [sp, #0x18]
	ldrh    r6, [r1, r0]
	ldr     r0, [pc, #0x80] @ 0x223b0c4, (=0x22404bc)
	lsl     r1, r4, #1
	ldrh    r0, [r0, r1]
	cmp     r6, r0
	bne     branch_223b076
	mov     r1, #0x0
	cmp     r5, #0x0
	ble     branch_223b062
	ldr     r2, [sp, #0x34]
.thumb
branch_223b054: @ 223b054 :thumb
	ldrh    r0, [r2, #0x0]
	cmp     r4, r0
	beq     branch_223b062
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, r5
	blt     branch_223b054
.thumb
branch_223b062: @ 223b062 :thumb
	cmp     r1, r5
	bne     branch_223b076
	ldr     r0, [sp, #0xc]
	strh    r4, [r0, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	b       branch_223b0ae
@ 0x223b076

.thumb
branch_223b076: @ 223b076 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	mov     r0, #0x4b
	lsl     r0, r0, #2
	cmp     r4, r0
	bcc     branch_223b086
	mov     r4, #0x0
.thumb
branch_223b086: @ 223b086 :thumb
	ldr     r0, [sp, #0x14]
	cmp     r4, r0
	bne     branch_223b03c
.thumb
branch_223b08c: @ 223b08c :thumb
	bl      PRNG
	lsr     r1, r0, #31
	lsl     r2, r0, #29
	sub     r2, r2, r1
	mov     r0, #0x1d
	ror     r2, r0
	add     r0, r1, r2
	lsl     r0, r0, #16
	lsr     r0, r0, #15
	ldrh    r2, [r7, r0]
	cmp     r6, r2
	beq     branch_223b08c
	ldr     r1, [sp, #0x34]
	ldr     r0, [sp, #0x18]
	strh    r2, [r1, r0]
	b       branch_223b03c
@ 0x223b0ae

.thumb
branch_223b0ae: @ 223b0ae :thumb
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	cmp     r1, r0
	blt     branch_223b018
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223b0ba


.align 2


.word 0x133 @ 0x223b0bc
.word 0x224041c @ 0x223b0c0
.word 0x22404bc @ 0x223b0c4
.thumb
Function_223b0c8: @ 223b0c8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	mov     r7, #0x0
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x30]
	ldr     r6, [sp, #0x2c]
	str     r0, [sp, #0x30]
	lsl     r0, r3, #25
	lsr     r4, r0, #24
	mov     r0, r2
	str     r7, [sp, #0xc]
	bl      Function_223b644
	lsl     r0, r0, #24
	lsr     r2, r0, #24
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x0
	beq     branch_223b14e
	ldr     r3, [pc, #0x144] @ 0x223b238, (=0x2240714)
	mov     r2, r7
.thumb
branch_223b0f6: @ 223b0f6 :thumb
	lsl     r0, r2, #1
	ldrh    r1, [r3, r0]
	ldr     r0, [sp, #0x28]
	cmp     r0, r1
	bne     branch_223b104
	mov     r5, r2
	b       branch_223b110
@ 0x223b104

.thumb
branch_223b104: @ 223b104 :thumb
	add     r0, r2, #0x1
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	ldr     r0, [pc, #0x130] @ 0x223b23c, (=0x1dd)
	cmp     r2, r0
	bcc     branch_223b0f6
.thumb
branch_223b110: @ 223b110 :thumb
	ldr     r0, [pc, #0x128] @ 0x223b23c, (=0x1dd)
	cmp     r2, r0
	bne     branch_223b11a
	mov     r5, r0
	sub     r5, #0x65
.thumb
branch_223b11a: @ 223b11a :thumb
	ldr     r0, [pc, #0x124] @ 0x223b240, (=0x224032c)
	mov     r1, #0x0
.thumb
branch_223b11e: @ 223b11e :thumb
	lsl     r2, r1, #2
	add     r2, r0, r2
	ldrh    r2, [r2, #0x2]
	cmp     r5, r2
	bcc     branch_223b132
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	cmp     r1, #0x4
	bcc     branch_223b11e
.thumb
branch_223b132: @ 223b132 :thumb
	cmp     r1, #0x4
	bne     branch_223b138
	mov     r1, #0x3
.thumb
branch_223b138: @ 223b138 :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x2
	bne     branch_223b144
	ldr     r0, [pc, #0x104] @ 0x223b244, (=0x2240338)
	str     r0, [sp, #0x10]
	b       branch_223b156
@ 0x223b144

.thumb
branch_223b144: @ 223b144 :thumb
	ldr     r2, [pc, #0xf8] @ 0x223b240, (=0x224032c)
	lsl     r0, r1, #2
	add     r0, r2, r0
	str     r0, [sp, #0x10]
	b       branch_223b156
@ 0x223b14e

.thumb
branch_223b14e: @ 223b14e :thumb
	ldr     r1, [pc, #0xf8] @ 0x223b248, (=0x2240364)
	lsl     r0, r2, #2
	add     r0, r1, r0
	str     r0, [sp, #0x10]
.thumb
branch_223b156: @ 223b156 :thumb
	ldr     r0, [sp, #0x10]
	ldrh    r1, [r0, #0x2]
	ldrh    r0, [r0, #0x0]
	sub     r0, r1, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	bl      PRNG
	mov     r1, r5
	blx     _s32_div_f
	ldr     r0, [sp, #0x10]
	ldrh    r0, [r0, #0x0]
	add     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	str     r2, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_223b234
	.hword  0x1ea0 @ sub r0, r4, #0x2
	lsl     r0, r0, #1
	mov     r12, r0
	lsl     r0, r4, #1
	add     r5, r6, r0
.thumb
branch_223b190: @ 223b190 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	bne     branch_223b1b2
	mov     r0, #0x0
	cmp     r4, #0x0
	ble     branch_223b1c2
	add     r1, r2, #0x1
.thumb
branch_223b19e: @ 223b19e :thumb
	lsl     r3, r0, #1
	ldrh    r3, [r6, r3]
	cmp     r1, r3
	beq     branch_223b1c2
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, r4
	blt     branch_223b19e
	b       branch_223b1c2
@ 0x223b1b2

.thumb
branch_223b1b2: @ 223b1b2 :thumb
	mov     r1, r12
	ldrh    r1, [r6, r1]
	add     r0, r2, #0x1
	cmp     r0, r1
	bne     branch_223b1c0
	mov     r0, #0x0
	b       branch_223b1c2
@ 0x223b1c0

.thumb
branch_223b1c0: @ 223b1c0 :thumb
	mov     r0, r4
.thumb
branch_223b1c2: @ 223b1c2 :thumb
	cmp     r0, r4
	bne     branch_223b20a
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x0
	beq     branch_223b1e2
	ldr     r0, [pc, #0x68] @ 0x223b238, (=0x2240714)
	lsl     r1, r2, #1
	ldrh    r1, [r0, r1]
	ldr     r0, [sp, #0x28]
	cmp     r0, r1
	beq     branch_223b20a
	lsl     r0, r7, #1
	add     r1, r2, #0x1
	strh    r1, [r5, r0]
	.hword  0x1c7f @ add r7, r7, #0x1
	b       branch_223b20a
@ 0x223b1e2

.thumb
branch_223b1e2: @ 223b1e2 :thumb
	ldr     r1, [pc, #0x68] @ 0x223b24c, (=0x2240ace)
	lsl     r0, r2, #2
	add     r3, r1, r0
	ldrh    r1, [r1, r0]
	ldr     r0, [sp, #0x4]
	cmp     r0, r1
	beq     branch_223b1f6
	ldrh    r1, [r3, #0x2]
	cmp     r0, r1
	bne     branch_223b20a
.thumb
branch_223b1f6: @ 223b1f6 :thumb
	ldr     r0, [pc, #0x40] @ 0x223b238, (=0x2240714)
	lsl     r1, r2, #1
	ldrh    r1, [r0, r1]
	ldr     r0, [sp, #0x28]
	cmp     r0, r1
	beq     branch_223b20a
	lsl     r0, r7, #1
	add     r1, r2, #0x1
	strh    r1, [r5, r0]
	.hword  0x1c7f @ add r7, r7, #0x1
.thumb
branch_223b20a: @ 223b20a :thumb
	ldr     r1, [sp, #0x10]
	add     r0, r2, #0x1
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	ldrh    r1, [r1, #0x2]
	add     r0, r2, #0x1
	cmp     r0, r1
	blt     branch_223b224
	ldr     r0, [sp, #0x10]
	ldrh    r0, [r0, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r2, r0, #16
.thumb
branch_223b224: @ 223b224 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r2, r0
	bne     branch_223b22e
	mov     r0, #0x1
	str     r0, [sp, #0xc]
.thumb
branch_223b22e: @ 223b22e :thumb
	ldr     r0, [sp, #0x0]
	cmp     r7, r0
	blt     branch_223b190
.thumb
branch_223b234: @ 223b234 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223b238

.word 0x2240714 @ 0x223b238
.word 0x1dd @ 0x223b23c
.word 0x224032c @ 0x223b240
.word 0x2240338 @ 0x223b244
.word 0x2240364 @ 0x223b248
.word 0x2240ace @ 0x223b24c
.thumb
Function_223b250: @ 223b250 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x64
	mov     r5, r0
	ldrb    r0, [r5, #0x5]
	mov     r6, r1
	lsl     r0, r0, #25
	lsr     r7, r0, #24
	ldrb    r0, [r5, #0x4]
	bl      Function_223b500
	str     r0, [sp, #0x18]
	ldrb    r0, [r5, #0x4]
	bl      Function_223b50c
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x22c] @ 0x223b49c, (=0x6fc)
	ldr     r0, [r5, r0]
	bl      LoadPokePartyAdress
	str     r0, [sp, #0x1c]
	bl      HealPokemon
	ldrb    r0, [r5, #0x4]
	bl      Function_223b4d4
	mov     r1, r0
	mov     r0, #0xb
	bl      AllocMainGameData
	ldr     r1, [r6, #0xc]
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [r6, #0x10]
	str     r1, [sp, #0x4]
	ldr     r1, [r6, #0x20]
	str     r1, [sp, #0x8]
	ldr     r2, [r6, #0x8]
	ldr     r3, [r6, #0x1c]
	mov     r1, #0x0
	bl      Function_20521b8
	mov     r0, #0x15
	mov     r1, #0x16
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x4]
	ldr     r1, [sp, #0x18]
	bl      ZeroFillPkmnPartyStructure
	mov     r0, #0xb
	bl      AllocPkmnData
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x18]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_223b2ec
.thumb
branch_223b2c6: @ 223b2c6 :thumb
	mov     r1, #0x26
	add     r2, r5, r6
	lsl     r1, r1, #4
	ldrb    r1, [r2, r1]
	ldr     r0, [sp, #0x1c]
	bl      GetAdrOfPkmnInParty
	ldr     r1, [sp, #0x20]
	bl      Function_20775ec
	ldr     r1, [sp, #0x20]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_205213c
	ldr     r0, [sp, #0x18]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_223b2c6
.thumb
branch_223b2ec: @ 223b2ec :thumb
	ldr     r0, [sp, #0x20]
	bl      free
	mov     r0, r4
	bl      Function_2052894
	lsl     r0, r7, #1
	str     r0, [sp, #0x28]
	mov     r6, r5
	ldr     r1, [sp, #0x28]
	add     r6, #0x18
	ldrh    r1, [r6, r1]
	add     r0, sp, #0x34
	mov     r2, #0xb
	mov     r3, #0xb2
	bl      Function_222dd04
	bl      free
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	add     r1, sp, #0x34
	mov     r3, #0x1
	bl      Function_222e284
	ldr     r0, [r4, #0x8]
	ldr     r1, [sp, #0x10]
	bl      ZeroFillPkmnPartyStructure
	ldr     r1, [pc, #0x174] @ 0x223b4a0, (=0x6f5)
	ldrb    r2, [r5, #0x4]
	ldrb    r0, [r5, r1]
	add     r1, #0xf
	add     r3, r5, r1
	lsl     r1, r2, #3
	add     r1, r2, r1
	add     r1, r3, r1
	bl      Function_20301e0
	str     r0, [sp, #0x24]
	ldrb    r0, [r5, #0x4]
	cmp     r0, #0x2
	bne     branch_223b34a
	mov     r0, #0x9
	str     r0, [sp, #0x24]
.thumb
branch_223b34a: @ 223b34a :thumb
	ldr     r2, [sp, #0x24]
	mov     r0, r5
	mov     r1, r7
	bl      Function_223b604
	mov     r2, #0x0
	mov     r1, r4
.thumb
branch_223b358: @ 223b358 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r0, [r1, #0x34]
	add     r1, #0x34
	cmp     r2, #0x4
	blt     branch_223b358
	mov     r0, #0x38
	mul     r0, r7
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	mov     r3, #0x29
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	mov     r0, #0xb4
	str     r0, [sp, #0x8]
	ldr     r2, [sp, #0x28]
	lsl     r3, r3, #4
	add     r1, r5, r3
	ldr     r0, [sp, #0x14]
	ldrh    r2, [r6, r2]
	sub     r3, #0x28
	add     r0, r1, r0
	add     r6, r5, r3
	lsl     r3, r7, #1
	ldr     r1, [sp, #0x24]
	add     r3, r6, r3
	bl      Function_223b518
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	ble     branch_223b3f2
	mov     r0, #0x29
	lsl     r0, r0, #4
	add     r0, r5, r0
	str     r0, [sp, #0x2c]
	mov     r0, #0x38
	mul     r0, r7
	str     r0, [sp, #0x30]
.thumb
branch_223b3b0: @ 223b3b0 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_223b4a4
	cmp     r0, #0x0
	bne     branch_223b3b0
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	bl      Function_223b57c
	mov     r2, r0
	lsl     r2, r2, #24
	ldr     r1, [sp, #0x2c]
	ldr     r0, [sp, #0x30]
	lsr     r2, r2, #24
	add     r0, r1, r0
	mov     r1, r6
	bl      Function_222df40
	mov     r0, r6
	bl      Call_SetPkmnAbility
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_205213c
	ldr     r0, [sp, #0xc]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x10]
	str     r1, [sp, #0xc]
	cmp     r1, r0
	blt     branch_223b3b0
branch_223b3f2: @ 223b3f2 :thumb
	mov     r0, r6
	bl      free
	ldrb    r0, [r5, #0x4]
	cmp     r0, #0x2
	beq     branch_223b402
	cmp     r0, #0x3
	bne     branch_223b494
.thumb
branch_223b402: @ 223b402 :thumb
	mov     r0, r4
	bl      Function_2052894
	bl      Function_203608c
	mov     r1, #0x1
	sub     r0, r1, r0
	bl      Function_2032ee8
	mov     r1, #0x1
	lsl     r1, r1, #8
	ldr     r1, [r4, r1]
	bl      CopyTrainerData
	add     r1, r7, #0x1
	lsl     r1, r1, #1
	add     r1, r5, r1
	ldrh    r1, [r1, #0x18]
	add     r0, sp, #0x34
	mov     r2, #0xb
	mov     r3, #0xb2
	bl      Function_222dd04
	bl      free
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	add     r1, sp, #0x34
	mov     r3, #0x3
	bl      Function_222e284
	ldr     r0, [r4, #0x10]
	ldr     r1, [sp, #0x10]
	bl      ZeroFillPkmnPartyStructure
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r6, r0
.thumb
branch_223b454: @ 223b454 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_223b4a4
	cmp     r0, #0x0
	bne     branch_223b454
	ldr     r1, [sp, #0x24]
	mov     r0, r5
	bl      Function_223b57c
	mov     r2, r0
	mov     r0, #0x29
	lsl     r0, r0, #4
	add     r1, r5, r0
	ldr     r0, [sp, #0x14]
	lsl     r2, r2, #24
	add     r0, r1, r0
	mov     r1, r6
	lsr     r2, r2, #24
	bl      Function_222df40
	mov     r0, r6
	bl      Call_SetPkmnAbility
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x3
	bl      Function_205213c
	mov     r0, r6
	bl      free
branch_223b494: @ 223b494 :thumb
	mov     r0, r4
	add     sp, #0x64
	pop     {r4-r7,pc}
@ 0x223b49a


.align 2


.word 0x6fc @ 0x223b49c
.word 0x6f5 @ 0x223b4a0
.thumb
Function_223b4a4: @ 223b4a4 :thumb
	push    {r4,lr}
	mov     r2, #0x38
	mul     r2, r1
	mov     r1, #0x2a
	lsl     r1, r1, #4
	add     r1, r0, r1
	ldr     r4, [r1, r2]
	ldr     r3, [pc, #0x1c] @ 0x223b4d0, (=0x3d0a9)
	cmp     r4, r3
	bls     branch_223b4bc
	sub     r3, r4, r3
	b       branch_223b4be
@ 0x223b4bc

.thumb
branch_223b4bc: @ 223b4bc :thumb
	add     r3, r4, r3
branch_223b4be: @ 223b4be :thumb
	str     r3, [r1, r2]
	add     r3, r0, r2
	mov     r0, #0xa7
	lsl     r0, r0, #2
	ldr     r0, [r3, r0]
	ldr     r1, [r1, r2]
	bl      CheckIfShinyPkmn
	pop     {r4,pc}
@ 0x223b4d0

.word 0x3d0a9 @ 0x223b4d0



.thumb
Function_223b4d4: @ 223b4d4 :thumb
	cmp     r0, #0x3
	bhi     branch_223b4fc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223b4e4

Jumppoints_223b4e4:
.hword branch_223b4ec - Jumppoints_223b4e4 - 2
.hword branch_223b4f0 - Jumppoints_223b4e4 - 2
.hword branch_223b4f4 - Jumppoints_223b4e4 - 2
.hword branch_223b4f8 - Jumppoints_223b4e4 - 2
.thumb
branch_223b4ec: @ 223b4ec :thumb
	mov     r0, #0x81
	bx      lr
@ 0x223b4f0

.thumb
branch_223b4f0: @ 223b4f0 :thumb
	mov     r0, #0x83
	bx      lr
@ 0x223b4f4

.thumb
branch_223b4f4: @ 223b4f4 :thumb
	mov     r0, #0x8f
	bx      lr
@ 0x223b4f8

.thumb
branch_223b4f8: @ 223b4f8 :thumb
	mov     r0, #0x8f
	bx      lr
@ 0x223b4fc

.thumb
branch_223b4fc: @ 223b4fc :thumb
	mov     r0, #0x81
	bx      lr
@ 0x223b500

.thumb
Function_223b500: @ 223b500 :thumb
	cmp     r0, #0x1
	bne     branch_223b508
	mov     r0, #0x2
	bx      lr
@ 0x223b508

.thumb
branch_223b508: @ 223b508 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x223b50c

.thumb
Function_223b50c: @ 223b50c :thumb
	cmp     r0, #0x1
	bne     branch_223b514
	mov     r0, #0x2
	bx      lr
@ 0x223b514

.thumb
branch_223b514: @ 223b514 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x223b518

.thumb
Function_223b518: @ 223b518 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r0
	ldr     r0, [sp, #0x2c]
	mov     r5, r3
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x30]
	ldr     r7, [sp, #0x28]
	str     r0, [sp, #0x30]
	ldr     r0, [pc, #0x4c] @ 0x223b578, (=0x133)
	cmp     r2, r0
	bne     branch_223b534
	mov     r0, #0x1f
	b       branch_223b544
@ 0x223b534

.thumb
branch_223b534: @ 223b534 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r2, r0
	bne     branch_223b53e
	mov     r0, #0x1f
	b       branch_223b544
@ 0x223b53e

.thumb
branch_223b53e: @ 223b53e :thumb
	mov     r0, r1
	bl      Function_223b5f0
.thumb
branch_223b544: @ 223b544 :thumb
	mov     r4, #0x0
	cmp     r7, #0x0
	ble     branch_223b572
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
.thumb
branch_223b550: @ 223b550 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	ldr     r3, [sp, #0xc]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	mov     r2, r4
	str     r0, [sp, #0x8]
	ldrh    r1, [r5, #0x0]
	mov     r0, r6
	bl      Function_222e2f0
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	add     r6, #0x38
	cmp     r4, r7
	blt     branch_223b550
.thumb
branch_223b572: @ 223b572 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223b576


.align 2


.word 0x133 @ 0x223b578
.thumb
Function_223b57c: @ 223b57c :thumb
	push    {r3,lr}
	ldrb    r1, [r0, #0x5]
	lsl     r1, r1, #25
	lsr     r1, r1, #23
	add     r1, r0, r1
	ldrh    r2, [r1, #0x18]
	ldr     r1, [pc, #0x14] @ 0x223b5a0, (=0xfecd)
	add     r1, r2, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	cmp     r1, #0x1
	bhi     branch_223b59a
	bl      Function_223b64c
	pop     {r3,pc}
@ 0x223b59a

.thumb
branch_223b59a: @ 223b59a :thumb
	ldrb    r0, [r0, #0x7]
	pop     {r3,pc}
@ 0x223b59e


.align 2


.word 0xfecd @ 0x223b5a0
.thumb
Function_223b5a4: @ 223b5a4 :thumb
	ldr     r1, [pc, #0x4] @ 0x223b5ac, (=0x2241244)
	ldrb    r0, [r1, r0]
	bx      lr
@ 0x223b5aa


.align 2


.word 0x2241244 @ 0x223b5ac
.thumb
Function_223b5b0: @ 223b5b0 :thumb
	cmp     r0, #0x2
	beq     branch_223b5b8
	cmp     r0, #0x3
	bne     branch_223b5bc
.thumb
branch_223b5b8: @ 223b5b8 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x223b5bc

.thumb
branch_223b5bc: @ 223b5bc :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223b5c0

.thumb
Function_223b5c0: @ 223b5c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x223b5ec, (=0x6fc)
	ldr     r0, [r4, r0]
	bl      LoadPokePartyAdress
	mov     r1, #0x26
	lsl     r1, r1, #4
	ldrb    r1, [r4, r1]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0xa
	blx     _s32_div_f
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r4,pc}
@ 0x223b5ea


.align 2


.word 0x6fc @ 0x223b5ec
.thumb
Function_223b5f0: @ 223b5f0 :thumb
	push    {r3,lr}
	bl      Function_223b644
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x4] @ 0x223b600, (=0x224033d)
	ldrb    r0, [r0, r1]
	pop     {r3,pc}
@ 0x223b5fe


.align 2


.word 0x224033d @ 0x223b600
.thumb
Function_223b604: @ 223b604 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r2, #0x8
	blt     branch_223b60e
	mov     r2, #0x7
	b       branch_223b618
@ 0x223b60e

.thumb
branch_223b60e: @ 223b60e :thumb
	cmp     r2, #0x4
	blt     branch_223b616
	mov     r2, #0x1
	b       branch_223b618
@ 0x223b616

.thumb
branch_223b616: @ 223b616 :thumb
	mov     r2, #0x0
.thumb
branch_223b618: @ 223b618 :thumb
	ldrb    r3, [r0, #0x4]
	cmp     r3, #0x0
	bne     branch_223b634
	lsl     r1, r1, #25
	lsr     r1, r1, #23
	add     r0, r0, r1
	ldrh    r1, [r0, #0x18]
	ldr     r0, [pc, #0x18] @ 0x223b640, (=0xfecd)
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, #0x1
	bhi     branch_223b634
	mov     r2, #0x7
.thumb
branch_223b634: @ 223b634 :thumb
	cmp     r3, #0x2
	bne     branch_223b63a
	mov     r2, #0x7
.thumb
branch_223b63a: @ 223b63a :thumb
	mov     r0, r2
	bx      lr
@ 0x223b63e


.align 2


.word 0xfecd @ 0x223b640
.thumb
Function_223b644: @ 223b644 :thumb
	cmp     r0, #0xa
	bcc     branch_223b64a
	mov     r0, #0x9
.thumb
branch_223b64a: @ 223b64a :thumb
	bx      lr
@ 0x223b64c

.thumb
Function_223b64c: @ 223b64c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x64] @ 0x223b6b8, (=0x6fc)
	ldr     r0, [r5, r0]
	bl      LoadPokePartyAdress
	mov     r1, #0x26
	lsl     r1, r1, #4
	ldrb    r1, [r5, r1]
	mov     r6, r0
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldrb    r0, [r5, #0x4]
	bl      Function_223b500
	cmp     r0, #0x2
	bne     branch_223b69a
	ldr     r1, [pc, #0x40] @ 0x223b6bc, (=0x261)
	mov     r0, r6
	ldrb    r1, [r5, r1]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r4, r0
	bhi     branch_223b696
	mov     r4, r0
.thumb
branch_223b696: @ 223b696 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x223b69a

.thumb
branch_223b69a: @ 223b69a :thumb
	ldrb    r0, [r5, #0x4]
	bl      Function_223b5b0
	cmp     r0, #0x1
	bne     branch_223b6b2
	ldr     r0, [pc, #0x18] @ 0x223b6c0, (=0xd84)
	ldrh    r0, [r5, r0]
	cmp     r4, r0
	bhi     branch_223b6ae
	mov     r4, r0
.thumb
branch_223b6ae: @ 223b6ae :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x223b6b2

.thumb
branch_223b6b2: @ 223b6b2 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x223b6b6


.align 2


.word 0x6fc @ 0x223b6b8
.word 0x261 @ 0x223b6bc
.word 0xd84 @ 0x223b6c0
.thumb
Function_223b6c4: @ 223b6c4 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_223b6dc
	lsl     r0, r0, #12
	blx     _ffltu
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_223b6ea
@ 0x223b6dc

.thumb
branch_223b6dc: @ 223b6dc :thumb
	lsl     r0, r0, #12
	blx     _ffltu
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_223b6ea: @ 223b6ea :thumb
	blx     _ffix
	blx     FX_Sqrt
	pop     {r3,pc}
@ 0x223b6f4

.thumb
Function_223b6f4: @ 223b6f4 :thumb
	push    {r3-r5,lr}
	cmp     r0, #0x0
	bne     branch_223b712
	mov     r0, #0x7
	add     r3, r2, #0x1
	mul     r0, r1
	add     r0, r3, r0
	cmp     r0, #0x15
	bne     branch_223b70a
	ldr     r0, [pc, #0x40] @ 0x223b748, (=0x139)
	pop     {r3-r5,pc}
@ 0x223b70a

.thumb
branch_223b70a: @ 223b70a :thumb
	cmp     r0, #0x31
	bne     branch_223b712
	ldr     r0, [pc, #0x3c] @ 0x223b74c, (=0x13a)
	pop     {r3-r5,pc}
@ 0x223b712

.thumb
branch_223b712: @ 223b712 :thumb
	cmp     r1, #0x8
	bcc     branch_223b718
	mov     r1, #0x7
.thumb
branch_223b718: @ 223b718 :thumb
	cmp     r2, #0x6
	beq     branch_223b720
	cmp     r2, #0xd
	bne     branch_223b72e
.thumb
branch_223b720: @ 223b720 :thumb
	ldr     r0, [pc, #0x2c] @ 0x223b750, (=0x224125c)
	lsl     r1, r1, #3
	ldrh    r4, [r0, r1]
	ldr     r0, [pc, #0x2c] @ 0x223b754, (=0x224125e)
	ldrh    r0, [r0, r1]
	sub     r5, r0, r4
	b       branch_223b73a
@ 0x223b72e

.thumb
branch_223b72e: @ 223b72e :thumb
	ldr     r0, [pc, #0x28] @ 0x223b758, (=0x2241258)
	lsl     r1, r1, #3
	ldrh    r4, [r0, r1]
	ldr     r0, [pc, #0x24] @ 0x223b75c, (=0x224125a)
	ldrh    r0, [r0, r1]
	sub     r5, r0, r4
.thumb
branch_223b73a: @ 223b73a :thumb
	bl      PRNG
	mov     r1, r5
	blx     _s32_div_f
	add     r0, r4, r1
	pop     {r3-r5,pc}
@ 0x223b748

.word 0x139 @ 0x223b748
.word 0x13a @ 0x223b74c
.word 0x224125c @ 0x223b750
.word 0x224125e @ 0x223b754
.word 0x2241258 @ 0x223b758
.word 0x224125a @ 0x223b75c
.thumb
Function_223b760: @ 223b760 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r2
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r7, r3
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_223b770: @ 223b770 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r2, r4
	bl      Function_223b6f4
	mov     r1, #0x0
	strh    r0, [r5, #0x0]
	cmp     r4, #0x0
	ble     branch_223b796
	lsl     r0, r4, #1
	ldrh    r3, [r6, r0]
	mov     r2, r6
.thumb
branch_223b788: @ 223b788 :thumb
	ldrh    r0, [r2, #0x0]
	cmp     r0, r3
	beq     branch_223b796
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, r4
	blt     branch_223b788
.thumb
branch_223b796: @ 223b796 :thumb
	cmp     r1, r4
	bne     branch_223b79e
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_223b79e: @ 223b79e :thumb
	cmp     r4, r7
	blt     branch_223b770
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223b7a6


.align 2, 0


.thumb
Function_223b7a8: @ 223b7a8 :thumb
	push    {r3,lr}
	cmp     r0, #0x3
	bhi     branch_223b7d2
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223b7ba

Jumppoints_223b7ba:
.hword branch_223b7c2 - Jumppoints_223b7ba - 2
.hword branch_223b7c2 - Jumppoints_223b7ba - 2
.hword branch_223b7c6 - Jumppoints_223b7ba - 2
.hword branch_223b7c6 - Jumppoints_223b7ba - 2
.thumb
branch_223b7c2: @ 223b7c2 :thumb
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x223b7c6

.thumb
branch_223b7c6: @ 223b7c6 :thumb
	cmp     r1, #0x0
	bne     branch_223b7ce
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x223b7ce

.thumb
branch_223b7ce: @ 223b7ce :thumb
	mov     r0, #0x4
	pop     {r3,pc}
@ 0x223b7d2

.thumb
branch_223b7d2: @ 223b7d2 :thumb
	bl      ErrorHandling
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x223b7da


.align 2, 0


.thumb
Function_223b7dc: @ 223b7dc :thumb
	push    {r3,lr}
	cmp     r0, #0x3
	bhi     branch_223b806
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223b7ee

Jumppoints_223b7ee:
.hword branch_223b7f6 - Jumppoints_223b7ee - 2
.hword branch_223b7f6 - Jumppoints_223b7ee - 2
.hword branch_223b7fa - Jumppoints_223b7ee - 2
.hword branch_223b7fa - Jumppoints_223b7ee - 2
.thumb
branch_223b7f6: @ 223b7f6 :thumb
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x223b7fa

.thumb
branch_223b7fa: @ 223b7fa :thumb
	cmp     r1, #0x0
	bne     branch_223b802
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x223b802

.thumb
branch_223b802: @ 223b802 :thumb
	mov     r0, #0x4
	pop     {r3,pc}
@ 0x223b806

.thumb
branch_223b806: @ 223b806 :thumb
	bl      ErrorHandling
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x223b80e


.align 2, 0


.thumb
Function_223b810: @ 223b810 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x4c
	mov     r5, r0
	ldrb    r0, [r5, #0x10]
	mov     r6, r1
	mov     r1, #0x0
	bl      Function_223b7a8
	str     r0, [sp, #0x14]
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x0
	bl      Function_223b7dc
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x2c]
	bl      HealPokemon
	ldrb    r0, [r5, #0x10]
	bl      Function_223b9e4
	mov     r1, r0
	mov     r0, #0xb
	bl      AllocMainGameData
	ldr     r1, [r6, #0xc]
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [r6, #0x10]
	str     r1, [sp, #0x4]
	ldr     r1, [r6, #0x20]
	str     r1, [sp, #0x8]
	ldr     r2, [r6, #0x8]
	ldr     r3, [r6, #0x1c]
	mov     r1, #0x0
	bl      Function_20521b8
	mov     r1, #0x15
	lsl     r0, r1, #4
	str     r1, [r4, r0]
	mov     r0, #0x55
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x4]
	ldr     r1, [sp, #0x14]
	bl      ZeroFillPkmnPartyStructure
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_223b878
	mov     r6, #0x0
	b       branch_223b87a
@ 0x223b878

.thumb
branch_223b878: @ 223b878 :thumb
	mov     r6, #0x2
.thumb
branch_223b87a: @ 223b87a :thumb
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	ble     branch_223b8b2
.thumb
branch_223b88c: @ 223b88c :thumb
	ldr     r0, [r5, #0x28]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, r7
	bl      Function_20775ec
	mov     r0, r4
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_205213c
	ldr     r0, [sp, #0x18]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x14]
	str     r1, [sp, #0x18]
	cmp     r1, r0
	blt     branch_223b88c
.thumb
branch_223b8b2: @ 223b8b2 :thumb
	mov     r0, r7
	bl      free
	mov     r0, r4
	bl      Function_2052894
	ldrb    r1, [r5, #0x11]
	add     r0, sp, #0x1c
	mov     r2, #0xb
	lsl     r1, r1, #1
	add     r1, r5, r1
	ldrh    r1, [r1, #0x30]
	mov     r3, #0xb2
	bl      Function_222dd04
	bl      free
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	add     r1, sp, #0x1c
	mov     r3, #0x1
	bl      Function_222e284
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x0
	bl      Function_223b7dc
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	bl      ZeroFillPkmnPartyStructure
	mov     r7, #0x0
	mov     r6, r4
.thumb
branch_223b8f8: @ 223b8f8 :thumb
	mov     r0, r5
	bl      Function_223bb10
	str     r0, [r6, #0x34]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x34
	cmp     r7, #0x4
	blt     branch_223b8f8
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r7, r0
	ldr     r0, [sp, #0x10]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_223b938
.thumb
branch_223b918: @ 223b918 :thumb
	ldr     r0, [r5, #0x2c]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, r7
	bl      Function_20775ec
	mov     r0, r4
	mov     r1, r7
	mov     r2, #0x1
	bl      Function_205213c
	ldr     r0, [sp, #0x10]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_223b918
.thumb
branch_223b938: @ 223b938 :thumb
	mov     r0, r7
	bl      free
	ldrb    r0, [r5, #0x10]
	cmp     r0, #0x2
	beq     branch_223b948
	cmp     r0, #0x3
	bne     branch_223b9dc
.thumb
branch_223b948: @ 223b948 :thumb
	mov     r0, r4
	bl      Function_2052894
	bl      Function_203608c
	mov     r1, #0x1
	sub     r0, r1, r0
	bl      Function_2032ee8
	mov     r1, #0x1
	lsl     r1, r1, #8
	ldr     r1, [r4, r1]
	bl      CopyTrainerData
	ldrb    r1, [r5, #0x11]
	add     r0, sp, #0x1c
	mov     r2, #0xb
	.hword  0x1dc9 @ add r1, r1, #0x7
	lsl     r1, r1, #1
	add     r1, r5, r1
	ldrh    r1, [r1, #0x30]
	mov     r3, #0xb2
	bl      Function_222dd04
	bl      free
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	add     r1, sp, #0x1c
	mov     r3, #0x3
	bl      Function_222e284
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x0
	bl      Function_223b7dc
	mov     r1, r0
	ldr     r0, [r4, #0x10]
	bl      ZeroFillPkmnPartyStructure
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	ble     branch_223b9d6
	mov     r6, r0
.thumb
branch_223b9b0: @ 223b9b0 :thumb
	ldr     r0, [r5, #0x2c]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, r7
	bl      Function_20775ec
	mov     r0, r4
	mov     r1, r7
	mov     r2, #0x3
	bl      Function_205213c
	ldr     r0, [sp, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x10]
	str     r1, [sp, #0xc]
	cmp     r1, r0
	blt     branch_223b9b0
.thumb
branch_223b9d6: @ 223b9d6 :thumb
	mov     r0, r7
	bl      free
.thumb
branch_223b9dc: @ 223b9dc :thumb
	mov     r0, r4
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x223b9e2


.align 2, 0


.thumb
Function_223b9e4: @ 223b9e4 :thumb
	cmp     r0, #0x3
	bhi     branch_223ba0c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223b9f4

Jumppoints_223b9f4:
.hword branch_223b9fc - Jumppoints_223b9f4 - 2
.hword branch_223ba00 - Jumppoints_223b9f4 - 2
.hword branch_223ba04 - Jumppoints_223b9f4 - 2
.hword branch_223ba08 - Jumppoints_223b9f4 - 2
.thumb
branch_223b9fc: @ 223b9fc :thumb
	mov     r0, #0x81
	bx      lr
@ 0x223ba00

.thumb
branch_223ba00: @ 223ba00 :thumb
	mov     r0, #0x83
	bx      lr
@ 0x223ba04

.thumb
branch_223ba04: @ 223ba04 :thumb
	mov     r0, #0x8f
	bx      lr
@ 0x223ba08

.thumb
branch_223ba08: @ 223ba08 :thumb
	mov     r0, #0x8f
	bx      lr
@ 0x223ba0c

.thumb
branch_223ba0c: @ 223ba0c :thumb
	mov     r0, #0x81
	bx      lr
@ 0x223ba10

.thumb
Function_223ba10: @ 223ba10 :thumb
	mov     r0, #0x32
	bx      lr
@ 0x223ba14

.thumb
Function_223ba14: @ 223ba14 :thumb
	cmp     r0, #0x2
	beq     branch_223ba1c
	cmp     r0, #0x3
	bne     branch_223ba20
.thumb
branch_223ba1c: @ 223ba1c :thumb
	mov     r0, #0x1
	bx      lr
@ 0x223ba20

.thumb
branch_223ba20: @ 223ba20 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223ba24

.thumb
Function_223ba24: @ 223ba24 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	bl      GetNrOfPkmnInParty
	mov     r6, r0
	mov     r4, #0x0
	cmp     r6, #0x0
	ble     branch_223ba7a
.thumb
branch_223ba34: @ 223ba34 :thumb
	mov     r0, r7
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xac
	mov     r2, #0x0
	mov     r5, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_223ba74
	mov     r0, r5
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_223ba66
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0xa3
	add     r2, sp, #0x0
	bl      SetPkmnData
.thumb
branch_223ba66: @ 223ba66 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0xa0
	add     r2, sp, #0x0
	bl      SetPkmnData
.thumb
branch_223ba74: @ 223ba74 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	blt     branch_223ba34
.thumb
branch_223ba7a: @ 223ba7a :thumb
	pop     {r3-r7,pc}
@ 0x223ba7c

.thumb
Function_223ba7c: @ 223ba7c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r0, [r0, #0x4]
	mov     r4, r1
	bl      LoadTrainerDataAdress
	mov     r3, #0x0
	mov     r1, r0
	str     r3, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x4
	bl      Function_2077ee4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x223ba9e


.align 2, 0


.thumb
Function_223baa0: @ 223baa0 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	mov     r5, r1
	mov     r1, r4
	bl      Function_223ba7c
	mov     r0, r5
	mov     r1, r4
	bl      CopyPkmnDataToParty
	pop     {r3-r5,pc}
@ 0x223bab6


.align 2, 0


.thumb
Function_223bab8: @ 223bab8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x2c]
	bl      ZeroFillPkmnPartyStructure_6
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x1
	bl      Function_223b7dc
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_223bb06
	mov     r0, #0xa2
	lsl     r0, r0, #2
	add     r4, r5, r0
.thumb
branch_223bae2: @ 223bae2 :thumb
	mov     r0, r5
	bl      Function_223ba10
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	bl      Function_222df40
	ldr     r1, [r5, #0x2c]
	mov     r0, r5
	mov     r2, r6
	bl      Function_223baa0
	ldr     r0, [sp, #0x0]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x38
	cmp     r7, r0
	blt     branch_223bae2
.thumb
branch_223bb06: @ 223bb06 :thumb
	mov     r0, r6
	bl      free
	pop     {r3-r7,pc}
@ 0x223bb0e


.align 2, 0


.thumb
Function_223bb10: @ 223bb10 :thumb
	push    {r3,lr}
	ldrb    r1, [r0, #0x10]
	cmp     r1, #0x0
	bne     branch_223bb30
	ldrb    r1, [r0, #0x11]
	lsl     r1, r1, #1
	add     r1, r0, r1
	ldrh    r2, [r1, #0x30]
	ldr     r1, [pc, #0x38] @ 0x223bb5c, (=0xfec7)
	add     r1, r2, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	cmp     r1, #0x1
	bhi     branch_223bb30
	mov     r0, #0x7
	pop     {r3,pc}
@ 0x223bb30

.thumb
branch_223bb30: @ 223bb30 :thumb
	bl      Function_223bb60
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r1, #0x7
	cmp     r0, #0x4
	bhi     branch_223bb58
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223bb48

Jumppoints_223bb48:
.hword branch_223bb58 - Jumppoints_223bb48 - 2
.hword branch_223bb52 - Jumppoints_223bb48 - 2
.hword branch_223bb52 - Jumppoints_223bb48 - 2
.hword branch_223bb56 - Jumppoints_223bb48 - 2
.hword branch_223bb56 - Jumppoints_223bb48 - 2
.thumb
branch_223bb52: @ 223bb52 :thumb
	mov     r1, #0x0
	b       branch_223bb58
@ 0x223bb56

.thumb
branch_223bb56: @ 223bb56 :thumb
	mov     r1, #0x1
.thumb
branch_223bb58: @ 223bb58 :thumb
	mov     r0, r1
	pop     {r3,pc}
@ 0x223bb5c

.word 0xfec7 @ 0x223bb5c
.thumb
Function_223bb60: @ 223bb60 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x10]
	ldrh    r4, [r5, #0x16]
	bl      Function_223ba14
	cmp     r0, #0x1
	bne     branch_223bb7c
	ldr     r0, [pc, #0xc] @ 0x223bb80, (=0xa12)
	ldrh    r1, [r5, r0]
	ldrh    r0, [r5, #0x16]
	cmp     r1, r0
	bls     branch_223bb7c
	mov     r4, r1
.thumb
branch_223bb7c: @ 223bb7c :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223bb80

.word 0xa12 @ 0x223bb80
.thumb
Function_223bb84: @ 223bb84 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x48
	mov     r5, r0
	mov     r0, r1
	mov     r4, r2
	bl      Function_223bb60
	mov     r1, r0
	add     r0, sp, #0xc
	bl      Function_223bbc4
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	lsl     r1, r4, #24
	str     r0, [sp, #0x8]
	mov     r0, r5
	lsr     r1, r1, #24
	add     r2, sp, #0xc
	mov     r3, #0xb
	bl      Function_20198c0
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_201c3c0
	add     sp, #0x48
	pop     {r3-r5,pc}
@ 0x223bbc2


.align 2, 0


.thumb
Function_223bbc4: @ 223bbc4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	mov     r0, r1
	bl      Function_223bc24
	mov     r3, #0x0
	add     r4, sp, #0x4
	mov     r1, #0x4
.thumb
branch_223bbd6: @ 223bbd6 :thumb
	strb    r3, [r4, #0x0]
	sub     r2, r1, r3
	strb    r2, [r4, #0x5]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r3, #0x5
	bcc     branch_223bbd6
	mov     r1, #0x60
	mov     r7, #0x0
	mul     r1, r0
	mov     r5, #0x1
	add     r1, #0x10
	mov     r2, r7
	lsl     r5, r5, #10
.thumb
branch_223bbf2: @ 223bbf2 :thumb
	ldr     r4, [sp, #0x0]
	lsl     r6, r2, #1
	mov     r0, #0x0
	add     r3, sp, #0x4
	add     r4, r4, r6
.thumb
branch_223bbfc: @ 223bbfc :thumb
	ldrb    r6, [r3, #0x0]
	add     r6, r6, r1
	strh    r6, [r4, #0x0]
	cmp     r0, #0x5
	bcc     branch_223bc0c
	ldrh    r6, [r4, #0x0]
	orr     r6, r5
	strh    r6, [r4, #0x0]
.thumb
branch_223bc0c: @ 223bc0c :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r0, #0xa
	bcc     branch_223bbfc
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r1, #0x20
	add     r2, #0xa
	cmp     r7, #0x3
	bcc     branch_223bbf2
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223bc24

.thumb
Function_223bc24: @ 223bc24 :thumb
	cmp     r0, #0x8
	bcc     branch_223bc2a
	mov     r0, #0x7
.thumb
branch_223bc2a: @ 223bc2a :thumb
	bx      lr
@ 0x223bc2c

.thumb
Function_223bc2c: @ 223bc2c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r6, r2
	bl      Function_205e630
	mov     r7, r0
	mov     r0, r4
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r5
	mov     r1, r7
	mov     r3, r6
	bl      Function_2030824
	mov     r0, r4
	bl      Function_205e658
	mov     r7, r0
	mov     r0, r4
	bl      Function_205e658
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r5
	mov     r1, r7
	bl      Function_2030698
	add     r1, r0, r6
	ldr     r0, [pc, #0x44] @ 0x223bcb8, (=0x270f)
	cmp     r1, r0
	ble     branch_223bc96
	mov     r0, r4
	bl      Function_205e658
	mov     r6, r0
	mov     r0, r4
	bl      Function_205e658
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r3, [pc, #0x2c] @ 0x223bcb8, (=0x270f)
	mov     r0, r5
	mov     r1, r6
	bl      Function_20306e4
	pop     {r3-r7,pc}

branch_223bc96: @ 223bc96 :thumb
	mov     r0, r4
	bl      Function_205e658
	mov     r7, r0
	mov     r0, r4
	bl      Function_205e658
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r5
	mov     r1, r7
	mov     r3, r6
	bl      Function_2030804
	pop     {r3-r7,pc}
@ 0x223bcb6


.align 2


.word 0x270f @ 0x223bcb8
.thumb
Function_223bcbc: @ 223bcbc :thumb
	push    {r3-r5,lr}
	cmp     r0, #0x0
	bne     branch_223bcdc
	mov     r0, #0x7
	add     r3, r2, #0x1
	mul     r0, r1
	add     r0, r3, r0
	cmp     r0, #0x15
	bne     branch_223bcd2
	ldr     r0, [pc, #0x44] @ 0x223bd14, (=0x137)
	pop     {r3-r5,pc}
@ 0x223bcd2

.thumb
branch_223bcd2: @ 223bcd2 :thumb
	cmp     r0, #0x31
	bne     branch_223bcdc
	mov     r0, #0x4e
	lsl     r0, r0, #2
	pop     {r3-r5,pc}
@ 0x223bcdc

.thumb
branch_223bcdc: @ 223bcdc :thumb
	cmp     r1, #0x8
	bcc     branch_223bce2
	mov     r1, #0x7
.thumb
branch_223bce2: @ 223bce2 :thumb
	cmp     r2, #0x6
	beq     branch_223bcea
	cmp     r2, #0xd
	bne     branch_223bcf8
.thumb
branch_223bcea: @ 223bcea :thumb
	ldr     r0, [pc, #0x2c] @ 0x223bd18, (=0x224129c)
	lsl     r1, r1, #3
	ldrh    r4, [r0, r1]
	ldr     r0, [pc, #0x28] @ 0x223bd1c, (=0x224129e)
	ldrh    r0, [r0, r1]
	sub     r5, r0, r4
	b       branch_223bd04
@ 0x223bcf8

.thumb
branch_223bcf8: @ 223bcf8 :thumb
	ldr     r0, [pc, #0x24] @ 0x223bd20, (=0x2241298)
	lsl     r1, r1, #3
	ldrh    r4, [r0, r1]
	ldr     r0, [pc, #0x24] @ 0x223bd24, (=0x224129a)
	ldrh    r0, [r0, r1]
	sub     r5, r0, r4
.thumb
branch_223bd04: @ 223bd04 :thumb
	bl      PRNG
	mov     r1, r5
	blx     _s32_div_f
	add     r0, r4, r1
	pop     {r3-r5,pc}
@ 0x223bd12


.align 2


.word 0x137 @ 0x223bd14
.word 0x224129c @ 0x223bd18
.word 0x224129e @ 0x223bd1c
.word 0x2241298 @ 0x223bd20
.word 0x224129a @ 0x223bd24
.thumb
Function_223bd28: @ 223bd28 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r2
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r7, r3
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_223bd38: @ 223bd38 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r2, r4
	bl      Function_223bcbc
	mov     r1, #0x0
	strh    r0, [r5, #0x0]
	cmp     r4, #0x0
	ble     branch_223bd5e
	lsl     r0, r4, #1
	ldrh    r3, [r6, r0]
	mov     r2, r6
.thumb
branch_223bd50: @ 223bd50 :thumb
	ldrh    r0, [r2, #0x0]
	cmp     r0, r3
	beq     branch_223bd5e
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, r4
	blt     branch_223bd50
.thumb
branch_223bd5e: @ 223bd5e :thumb
	cmp     r1, r4
	bne     branch_223bd66
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_223bd66: @ 223bd66 :thumb
	cmp     r4, r7
	blt     branch_223bd38
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223bd6e


.align 2, 0


.thumb
Function_223bd70: @ 223bd70 :thumb
	push    {r3,lr}
	cmp     r0, #0x3
	bhi     branch_223bd9a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223bd82

Jumppoints_223bd82:
.hword branch_223bd8a - Jumppoints_223bd82 - 2
.hword branch_223bd8a - Jumppoints_223bd82 - 2
.hword branch_223bd8e - Jumppoints_223bd82 - 2
.hword branch_223bd8e - Jumppoints_223bd82 - 2
.thumb
branch_223bd8a: @ 223bd8a :thumb
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x223bd8e

.thumb
branch_223bd8e: @ 223bd8e :thumb
	cmp     r1, #0x0
	bne     branch_223bd96
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x223bd96

.thumb
branch_223bd96: @ 223bd96 :thumb
	mov     r0, #0x4
	pop     {r3,pc}
@ 0x223bd9a

.thumb
branch_223bd9a: @ 223bd9a :thumb
	bl      ErrorHandling
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x223bda2


.align 2, 0


.thumb
Function_223bda4: @ 223bda4 :thumb
	push    {r3,lr}
	cmp     r0, #0x3
	bhi     branch_223bdce
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223bdb6

Jumppoints_223bdb6:
.hword branch_223bdbe - Jumppoints_223bdb6 - 2
.hword branch_223bdbe - Jumppoints_223bdb6 - 2
.hword branch_223bdc2 - Jumppoints_223bdb6 - 2
.hword branch_223bdc2 - Jumppoints_223bdb6 - 2
.thumb
branch_223bdbe: @ 223bdbe :thumb
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x223bdc2

.thumb
branch_223bdc2: @ 223bdc2 :thumb
	cmp     r1, #0x0
	bne     branch_223bdca
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x223bdca

.thumb
branch_223bdca: @ 223bdca :thumb
	mov     r0, #0x4
	pop     {r3,pc}
@ 0x223bdce

.thumb
branch_223bdce: @ 223bdce :thumb
	bl      ErrorHandling
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x223bdd6


.align 2, 0


.thumb
Function_223bdd8: @ 223bdd8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x54
	mov     r7, r0
	ldrb    r0, [r7, #0x10]
	mov     r5, r1
	mov     r1, #0x0
	bl      Function_223bd70
	str     r0, [sp, #0x14]
	ldrb    r0, [r7, #0x10]
	mov     r1, #0x0
	bl      Function_223bda4
	str     r0, [sp, #0x10]
	ldrb    r0, [r7, #0x10]
	bl      Function_223bfd0
	mov     r1, r0
	mov     r0, #0xb
	bl      AllocMainGameData
	ldr     r1, [r5, #0xc]
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [r5, #0x10]
	str     r1, [sp, #0x4]
	ldr     r1, [r5, #0x20]
	str     r1, [sp, #0x8]
	ldr     r2, [r5, #0x8]
	ldr     r3, [r5, #0x1c]
	mov     r1, #0x0
	bl      Function_20521b8
	mov     r1, #0x15
	lsl     r1, r1, #4
	mov     r2, #0x14
	str     r2, [r4, r1]
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	ldr     r0, [r7, #0x14]
	add     r1, #0x24
	str     r0, [r4, r1]
	ldr     r0, [r7, #0x74]
	ldr     r1, [r7, #0x70]
	str     r0, [sp, #0x18]
	ldrb    r0, [r7, #0x13]
	str     r1, [sp, #0x1c]
	cmp     r0, #0x1b
	bne     branch_223be40
	ldr     r0, [sp, #0x18]
	str     r0, [sp, #0x1c]
	str     r1, [sp, #0x18]
.thumb
branch_223be40: @ 223be40 :thumb
	ldr     r0, [r4, #0x4]
	ldr     r1, [sp, #0x14]
	bl      ZeroFillPkmnPartyStructure
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_223be54
	mov     r5, #0x0
	b       branch_223be56
@ 0x223be54

.thumb
branch_223be54: @ 223be54 :thumb
	mov     r5, #0x2
.thumb
branch_223be56: @ 223be56 :thumb
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	ble     branch_223be8e
.thumb
branch_223be68: @ 223be68 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, r6
	bl      Function_20775ec
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x0
	bl      Function_205213c
	ldr     r0, [sp, #0x20]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x14]
	str     r1, [sp, #0x20]
	cmp     r1, r0
	blt     branch_223be68
.thumb
branch_223be8e: @ 223be8e :thumb
	mov     r0, r6
	bl      free
	mov     r0, r4
	bl      Function_2052894
	ldrb    r1, [r7, #0x11]
	add     r0, sp, #0x24
	mov     r2, #0xb
	lsl     r1, r1, #1
	add     r1, r7, r1
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	mov     r3, #0xb2
	bl      Function_222dd04
	bl      free
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	add     r1, sp, #0x24
	mov     r3, #0x1
	bl      Function_222e284
	ldrb    r0, [r7, #0x10]
	mov     r1, #0x0
	bl      Function_223bda4
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	bl      ZeroFillPkmnPartyStructure
	mov     r6, #0x0
	mov     r5, r4
.thumb
branch_223bed6: @ 223bed6 :thumb
	mov     r0, r7
	bl      Function_223c0d0
	str     r0, [r5, #0x34]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x34
	cmp     r6, #0x4
	blt     branch_223bed6
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r6, r0
	ldr     r0, [sp, #0x10]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_223bf16
.thumb
branch_223bef6: @ 223bef6 :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, r6
	bl      Function_20775ec
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_205213c
	ldr     r0, [sp, #0x10]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_223bef6
.thumb
branch_223bf16: @ 223bf16 :thumb
	mov     r0, r6
	bl      free
	ldrb    r0, [r7, #0x10]
	cmp     r0, #0x2
	beq     branch_223bf26
	cmp     r0, #0x3
	bne     branch_223bfbc
.thumb
branch_223bf26: @ 223bf26 :thumb
	mov     r0, r4
	bl      Function_2052894
	bl      Function_203608c
	mov     r1, #0x1
	sub     r0, r1, r0
	bl      Function_2032ee8
	mov     r1, #0x1
	lsl     r1, r1, #8
	ldr     r1, [r4, r1]
	bl      CopyTrainerData
	ldrb    r1, [r7, #0x11]
	add     r0, sp, #0x24
	mov     r2, #0xb
	.hword  0x1dc9 @ add r1, r1, #0x7
	lsl     r1, r1, #1
	add     r1, r7, r1
	add     r1, #0x78
	ldrh    r1, [r1, #0x0]
	mov     r3, #0xb2
	bl      Function_222dd04
	bl      free
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	add     r1, sp, #0x24
	mov     r3, #0x3
	bl      Function_222e284
	ldrb    r0, [r7, #0x10]
	mov     r1, #0x0
	bl      Function_223bda4
	mov     r1, r0
	ldr     r0, [r4, #0x10]
.thumb
branch_223bf78: @ 223bf78 :thumb
	bl      ZeroFillPkmnPartyStructure
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	ble     branch_223bfb6
	mov     r5, r0
.thumb
branch_223bf90: @ 223bf90 :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, r6
	bl      Function_20775ec
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x3
	bl      Function_205213c
	ldr     r0, [sp, #0xc]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x10]
	str     r1, [sp, #0xc]
	cmp     r1, r0
	blt     branch_223bf90
.thumb
branch_223bfb6: @ 223bfb6 :thumb
	mov     r0, r6
	bl      free
.thumb
branch_223bfbc: @ 223bfbc :thumb
	ldr     r0, [r7, #0x70]
	bl      HealPokemon
	ldr     r0, [r7, #0x74]
	bl      HealPokemon
	mov     r0, r4
	add     sp, #0x54
	pop     {r4-r7,pc}
@ 0x223bfce


.align 2, 0


.thumb
Function_223bfd0: @ 223bfd0 :thumb
	cmp     r0, #0x3
	bhi     branch_223bff8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
.thumb
branch_223bfda: @ 223bfda :thumb
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223bfe0

Jumppoints_223bfe0:
.hword branch_223bfe8 - Jumppoints_223bfe0 - 2
.hword branch_223bfec - Jumppoints_223bfe0 - 2
.hword branch_223bff0 - Jumppoints_223bfe0 - 2
.hword branch_223bff4 - Jumppoints_223bfe0 - 2
.thumb
branch_223bfe8: @ 223bfe8 :thumb
	mov     r0, #0x81
	bx      lr
@ 0x223bfec

.thumb
branch_223bfec: @ 223bfec :thumb
	mov     r0, #0x83
	bx      lr
@ 0x223bff0

.thumb
branch_223bff0: @ 223bff0 :thumb
	mov     r0, #0x8f
	bx      lr
@ 0x223bff4

.thumb
branch_223bff4: @ 223bff4 :thumb
	mov     r0, #0x8f
	bx      lr
@ 0x223bff8

.thumb
branch_223bff8: @ 223bff8 :thumb
	mov     r0, #0x81
	bx      lr
@ 0x223bffc

.thumb
Function_223bffc: @ 223bffc :thumb
	mov     r0, #0x32
	bx      lr
@ 0x223c000

.thumb
Function_223c000: @ 223c000 :thumb
	cmp     r0, #0x2
	beq     branch_223c008
	cmp     r0, #0x3
	bne     branch_223c00c
.thumb
branch_223c008: @ 223c008 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x223c00c

.thumb
branch_223c00c: @ 223c00c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223c010

.thumb
Function_223c010: @ 223c010 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r0, [r0, #0x4]
	mov     r4, r1
	bl      LoadTrainerDataAdress
	mov     r3, #0x0
	mov     r1, r0
	str     r3, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x4
	bl      Function_2077ee4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x223c032


.align 2, 0


.thumb
Function_223c034: @ 223c034 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	mov     r5, r1
	mov     r1, r4
	bl      Function_223c010
	mov     r0, r5
	mov     r1, r4
	bl      CopyPkmnDataToParty
	pop     {r3-r5,pc}
@ 0x223c04a


.align 2, 0


.thumb
Function_223c04c: @ 223c04c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x74]
	bl      ZeroFillPkmnPartyStructure_6
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x1
	bl      Function_223bda4
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_223c0b0
	mov     r0, #0x33
	lsl     r0, r0, #4
	add     r4, r5, r0
.thumb
branch_223c078: @ 223c078 :thumb
	mov     r0, r5
	bl      Function_223bffc
	mov     r2, r0
	mov     r0, r4
	mov     r1, r7
	bl      Function_222df40
	ldr     r1, [r5, #0x74]
	mov     r0, r5
	mov     r2, r7
	bl      Function_223c034
	ldr     r0, [r5, #0x74]
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	mov     r1, #0x6
	add     r2, sp, #0x4
	bl      SetPkmnData
	ldr     r0, [sp, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x38
	cmp     r6, r0
	blt     branch_223c078
.thumb
branch_223c0b0: @ 223c0b0 :thumb
	mov     r0, r7
	bl      free
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223c0ba


.align 2, 0


.thumb
Function_223c0bc: @ 223c0bc :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_223c124
	cmp     r4, #0x1c
	bne     branch_223c0cc
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223c0cc

.thumb
branch_223c0cc: @ 223c0cc :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223c0d0

.thumb
Function_223c0d0: @ 223c0d0 :thumb
	push    {r3,lr}
	ldrb    r1, [r0, #0x10]
	cmp     r1, #0x0
	bne     branch_223c0f2
	ldrb    r1, [r0, #0x11]
	lsl     r1, r1, #1
	add     r1, r0, r1
	add     r1, #0x78
	ldrh    r2, [r1, #0x0]
	ldr     r1, [pc, #0x3c] @ 0x223c120, (=0xfec9)
	add     r1, r2, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	cmp     r1, #0x1
	bhi     branch_223c0f2
	mov     r0, #0x7
	pop     {r3,pc}
@ 0x223c0f2

.thumb
branch_223c0f2: @ 223c0f2 :thumb
	bl      Function_223c124
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r1, #0x7
	cmp     r0, #0x4
	bhi     branch_223c11a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223c10a

Jumppoints_223c10a:
.hword branch_223c11a - Jumppoints_223c10a - 2
.hword branch_223c114 - Jumppoints_223c10a - 2
.hword branch_223c114 - Jumppoints_223c10a - 2
.hword branch_223c118 - Jumppoints_223c10a - 2
.hword branch_223c118 - Jumppoints_223c10a - 2
.thumb
branch_223c114: @ 223c114 :thumb
	mov     r1, #0x0
	b       branch_223c11a
@ 0x223c118

.thumb
branch_223c118: @ 223c118 :thumb
	mov     r1, #0x1
.thumb
branch_223c11a: @ 223c11a :thumb
	mov     r0, r1
	pop     {r3,pc}
@ 0x223c11e


.align 2


.word 0xfec9 @ 0x223c120
.thumb
Function_223c124: @ 223c124 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x10]
	ldrh    r4, [r5, #0x1a]
	bl      Function_223c000
	cmp     r0, #0x1
	bne     branch_223c140
	ldr     r0, [pc, #0xc] @ 0x223c144, (=0xa76)
	ldrh    r1, [r5, r0]
	ldrh    r0, [r5, #0x1a]
	cmp     r1, r0
	bls     branch_223c140
	mov     r4, r1
.thumb
branch_223c140: @ 223c140 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223c144

.word 0xa76 @ 0x223c144
.thumb
Function_223c148: @ 223c148 :thumb
	cmp     r0, #0x9
	bcs     branch_223c150
	mov     r0, #0x0
	bx      lr
@ 0x223c150

.thumb
branch_223c150: @ 223c150 :thumb
	cmp     r0, #0x12
	bcs     branch_223c158
	mov     r0, #0x1
	bx      lr
@ 0x223c158

.thumb
branch_223c158: @ 223c158 :thumb
	cmp     r0, #0x1b
	bcs     branch_223c160
	mov     r0, #0x2
	bx      lr
@ 0x223c160

.thumb
branch_223c160: @ 223c160 :thumb
	mov     r0, #0x3
	bx      lr
@ 0x223c164

.thumb
Function_223c164: @ 223c164 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x5e
	mov     r1, #0x8
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0x8
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r0, r5
	bl      Function_223c188
	str     r0, [r4, #0x4]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223c186


.align 2, 0


.thumb
Function_223c188: @ 223c188 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x5e
	mov     r1, #0xc
	bl      malloc
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0xc
	blx     MI_CpuFill8
	str     r5, [r4, #0x4]
	mov     r0, #0x0
	strh    r0, [r4, #0x8]
	ldr     r0, [pc, #0xc] @ 0x223c1b4, (=0x223c1bd)
	ldr     r2, [pc, #0x10] @ 0x223c1b8, (=0x1368c)
	mov     r1, r4
	bl      AddTaskToTaskList1
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223c1b4

.word 0x223c1bd @ 0x223c1b4
.word 0x1368c @ 0x223c1b8
.thumb
Function_223c1bc: @ 223c1bc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r1
	ldrh    r0, [r4, #0xa]
	cmp     r0, #0x2
	bcs     branch_223c1d0
	.hword  0x1c40 @ add r0, r0, #0x1
	add     sp, #0x14
	strh    r0, [r4, #0xa]
	pop     {r3,r4,pc}
@ 0x223c1d0

.thumb
branch_223c1d0: @ 223c1d0 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0xa]
	ldrh    r1, [r4, #0x8]
	mov     r0, #0x1
	eor     r0, r1
	strh    r0, [r4, #0x8]
	ldrh    r1, [r4, #0x8]
	add     r0, sp, #0xc
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_223c208
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	add     r2, sp, #0xc
	mov     r3, #0xe
	bl      Function_20198c0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	bl      Function_201c3c0
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x223c208

.thumb
Function_223c208: @ 223c208 :thumb
	push    {r4-r7}
	cmp     r1, #0x0
	bne     branch_223c212
	mov     r6, #0xc
	b       branch_223c214
@ 0x223c212

.thumb
branch_223c212: @ 223c212 :thumb
	mov     r6, #0xe
.thumb
branch_223c214: @ 223c214 :thumb
	mov     r1, #0x0
	mov     r3, #0x60
	mov     r4, r1
.thumb
branch_223c21a: @ 223c21a :thumb
	lsl     r5, r4, #1
	mov     r2, #0x0
	add     r5, r0, r5
.thumb
branch_223c220: @ 223c220 :thumb
	add     r7, r6, r2
	add     r7, r3, r7
	strh    r7, [r5, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r2, #0x2
	bcc     branch_223c220
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r3, #0x10
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r1, #0x2
	bcc     branch_223c21a
	pop     {r4-r7}
	bx      lr
@ 0x223c23c

.thumb
Function_223c23c: @ 223c23c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_223c250
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x223c24e


.align 2, 0


.thumb
Function_223c250: @ 223c250 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x223c262


.align 2, 0


.thumb
Function_223c264: @ 223c264 :thumb
	cmp     r0, #0x6
	bhi     branch_223c298
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223c274

Jumppoints_223c274:
.hword branch_223c298 - Jumppoints_223c274 - 2
.hword branch_223c296 - Jumppoints_223c274 - 2
.hword branch_223c282 - Jumppoints_223c274 - 2
.hword branch_223c286 - Jumppoints_223c274 - 2
.hword branch_223c28a - Jumppoints_223c274 - 2
.hword branch_223c28e - Jumppoints_223c274 - 2
.hword branch_223c292 - Jumppoints_223c274 - 2
.thumb
branch_223c282: @ 223c282 :thumb
	mov     r0, #0x73
	bx      lr
@ 0x223c286

.thumb
branch_223c286: @ 223c286 :thumb
	mov     r0, #0x77
	bx      lr
@ 0x223c28a

.thumb
branch_223c28a: @ 223c28a :thumb
	mov     r0, #0x87
	bx      lr
@ 0x223c28e

.thumb
branch_223c28e: @ 223c28e :thumb
	mov     r0, #0x7b
	bx      lr
@ 0x223c292

.thumb
branch_223c292: @ 223c292 :thumb
	mov     r0, #0x8f
	bx      lr
@ 0x223c296

.thumb
branch_223c296: @ 223c296 :thumb
	mov     r0, #0x71
.thumb
branch_223c298: @ 223c298 :thumb
	bx      lr
@ 0x223c29a


.align 2, 0


.thumb
Function_223c29c: @ 223c29c :thumb
	cmp     r0, #0x6
	bhi     branch_223c2d0
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223c2ac

Jumppoints_223c2ac:
.hword branch_223c2d0 - Jumppoints_223c2ac - 2
.hword branch_223c2ce - Jumppoints_223c2ac - 2
.hword branch_223c2ba - Jumppoints_223c2ac - 2
.hword branch_223c2be - Jumppoints_223c2ac - 2
.hword branch_223c2c2 - Jumppoints_223c2ac - 2
.hword branch_223c2c6 - Jumppoints_223c2ac - 2
.hword branch_223c2ca - Jumppoints_223c2ac - 2
.thumb
branch_223c2ba: @ 223c2ba :thumb
	mov     r0, #0x66
	bx      lr
@ 0x223c2be

.thumb
branch_223c2be: @ 223c2be :thumb
	mov     r0, #0x68
	bx      lr
@ 0x223c2c2

.thumb
branch_223c2c2: @ 223c2c2 :thumb
	mov     r0, #0x6c
	bx      lr
@ 0x223c2c6

.thumb
branch_223c2c6: @ 223c2c6 :thumb
	mov     r0, #0x6a
	bx      lr
@ 0x223c2ca

.thumb
branch_223c2ca: @ 223c2ca :thumb
	mov     r0, #0x6e
	bx      lr
@ 0x223c2ce

.thumb
branch_223c2ce: @ 223c2ce :thumb
	mov     r0, #0x64
.thumb
branch_223c2d0: @ 223c2d0 :thumb
	bx      lr
@ 0x223c2d2


.align 2, 0


.thumb
Function_223c2d4: @ 223c2d4 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	bl      Function_209b970
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      LoadTrainerDataAdress
	mov     r7, r0
	mov     r0, #0x0
	add     r4, #0x24
	mov     r1, r0
	ldrb    r5, [r4, #0x0]
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r1, #0x1
	lsl     r1, r1, #26
	ldr     r0, [r1, #0x0]
	ldr     r2, [pc, #0x194] @ 0x223c49c, (=0xffffe0ff)
	and     r0, r2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x194] @ 0x223c4a0, (=0x4001000)
	ldr     r3, [r0, #0x0]
	and     r2, r3
	str     r2, [r0, #0x0]
	ldr     r3, [r1, #0x0]
	ldr     r2, [pc, #0x18c] @ 0x223c4a4, (=0xffff1fff)
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
	mov     r2, #0x9
	mov     r0, #0x3
	mov     r1, #0x5e
	lsl     r2, r2, #16
	bl      Function_2017fc8
	mov     r0, #0x5e
	mov     r1, #0xc4
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0xc4
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r0, r4
	str     r6, [r4, #0x8]
	add     r0, #0xc1
	ldr     r1, [pc, #0x158] @ 0x223c4a8, (=0xffff)
	strb    r5, [r0, #0x0]
	mov     r2, #0x0
	mov     r3, r4
.thumb
branch_223c356: @ 223c356 :thumb
	mov     r0, r3
	add     r0, #0x70
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r1, [r0, #0x0]
	cmp     r2, #0x8
	blt     branch_223c356
	mov     r0, #0x5e
	bl      Function_223cf4c
	str     r0, [r4, #0xc]
	mov     r0, #0x5e
	bl      MallocFill120
	str     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2003858
	mov     r2, #0x2
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	lsl     r2, r2, #8
	mov     r3, #0x5e
	bl      Function_2002f70
	mov     r1, #0x1
	ldr     r0, [r4, #0x4]
	lsl     r2, r1, #9
	mov     r3, #0x5e
	bl      Function_2002f70
	mov     r2, #0x7
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	lsl     r2, r2, #6
	mov     r3, #0x5e
	bl      Function_2002f70
	mov     r2, #0x2
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	lsl     r2, r2, #8
	mov     r3, #0x5e
	bl      Function_2002f70
	mov     r0, #0x5e
	bl      Function_2018340
	str     r0, [r4, #0x0]
	mov     r0, #0x40
	mov     r1, #0x5e
	bl      Function_201dbec
	mov     r0, #0x4
	mov     r1, #0x8
	bl      Function_2017dd4
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_223c948
	mov     r0, r4
	bl      Function_223cb80
	mov     r0, r4
	bl      Function_223cc10
	bl      Function_201e3d8
	mov     r0, #0x4
	bl      Function_201e450
	mov     r0, r4
	bl      Function_223cff4
	mov     r0, #0x5e
	bl      Function_223d5d0
	str     r0, [r4, #0x10]
	mov     r0, r4
	mov     r1, r5
	mov     r2, r7
	bl      Function_223cc74
	ldr     r0, [pc, #0xac] @ 0x223c4ac, (=0x223c721)
	ldr     r2, [pc, #0xac] @ 0x223c4b0, (=0xea60)
	mov     r1, r4
	bl      AddTaskToTaskList1
	mov     r1, r4
	add     r1, #0x94
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x223c4b4, (=0x223c72d)
	ldr     r2, [pc, #0xa4] @ 0x223c4b8, (=0xee48)
	mov     r1, r4
	bl      AddTaskToTaskList1
	mov     r1, r4
	add     r1, #0x98
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x9c] @ 0x223c4bc, (=0x223c739)
	ldr     r2, [pc, #0x9c] @ 0x223c4c0, (=0x13880)
	mov     r1, r4
	bl      AddTaskToTaskList1
	mov     r1, r4
	add     r1, #0x9c
	str     r0, [r1, #0x0]
	bl      Function_201ffd0
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_222ea90
	mov     r1, r0
	lsl     r1, r1, #16
	mov     r0, #0x4
	lsr     r1, r1, #16
	mov     r2, #0x1
	bl      Function_2004550
	mov     r0, #0x1
	bl      Function_2002ae4
	mov     r0, #0x0
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002b20
	ldr     r0, [pc, #0x58] @ 0x223c4c4, (=0x223c6ed)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	ldr     r0, [pc, #0x54] @ 0x223c4c8, (=0x223c71d)
	mov     r1, r4
	mov     r2, #0xa
	bl      AddTaskToTaskList2
	mov     r1, r4
	add     r1, #0xa0
	str     r0, [r1, #0x0]
	mov     r2, r4
	add     r2, #0xc1
	mov     r1, r4
	ldrb    r2, [r2, #0x0]
	mov     r0, r4
	add     r1, #0x90
	bl      Function_222eb8c
	bl      Function_2039734
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x223c49a


.align 2


.word 0xffffe0ff @ 0x223c49c
.word 0x4001000 @ 0x223c4a0
.word 0xffff1fff @ 0x223c4a4
.word 0xffff @ 0x223c4a8
.word 0x223c721 @ 0x223c4ac
.word 0xea60 @ 0x223c4b0
.word 0x223c72d @ 0x223c4b4
.word 0xee48 @ 0x223c4b8
.word 0x223c739 @ 0x223c4bc
.word 0x13880 @ 0x223c4c0
.word 0x223c6ed @ 0x223c4c4
.word 0x223c71d @ 0x223c4c8



.thumb
.globl Function_104_223c4cc
Function_104_223c4cc: @ 223c4cc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Function_209b970
	mov     r2, r4
	add     r2, #0xc1
	mov     r1, r4
	ldrb    r2, [r2, #0x0]
	mov     r0, r4
	add     r1, #0x90
	bl      Function_222eba4
	mov     r0, r4
	bl      Function_223ceec
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2019044
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      Function_2019044
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	bl      Function_2019044
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_2019120
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	bl      Function_223d058
	ldr     r0, [r4, #0x10]
	bl      Function_223d5f0
	bl      Function_201dc3c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_2002fa0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2002fa0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_2002fa0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	bl      Function_2002fa0
	ldr     r0, [r4, #0x4]
	bl      Call_free1
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0xc]
	bl      Function_223cfec
	bl      Function_201e530
	mov     r0, r4
	bl      free
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x74] @ 0x223c614, (=0xffff1fff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x70] @ 0x223c618, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	mov     r0, #0x5e
	bl      Function_201807c
	mov     r0, #0x0
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002ae4
	mov     r0, #0x0
	bl      Function_2002b20
	bl      Function_2039794
	mov     r1, #0x5
	mov     r2, #0x2
	ldr     r0, [pc, #0x40] @ 0x223c61c, (=0x7fff)
	lsl     r1, r1, #24
	lsl     r2, r2, #8
	blx     MIi_CpuClear16
	mov     r2, #0x2
	ldr     r0, [pc, #0x34] @ 0x223c61c, (=0x7fff)
	ldr     r1, [pc, #0x38] @ 0x223c620, (=0x5000200)
	lsl     r2, r2, #8
	blx     MIi_CpuClear16
	mov     r2, #0x2
	ldr     r0, [pc, #0x28] @ 0x223c61c, (=0x7fff)
	ldr     r1, [pc, #0x30] @ 0x223c624, (=0x5000400)
	lsl     r2, r2, #8
	blx     MIi_CpuClear16
	mov     r2, #0x2
	ldr     r0, [pc, #0x1c] @ 0x223c61c, (=0x7fff)
	ldr     r1, [pc, #0x28] @ 0x223c628, (=0x5000600)
	lsl     r2, r2, #8
	blx     MIi_CpuClear16
	ldr     r0, [pc, #0x24] @ 0x223c62c, (=REG_BLDCNT)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x20] @ 0x223c630, (=0x4001050)
	strh    r1, [r0, #0x0]
	pop     {r4,pc}
@ 0x223c612


.align 2


.word 0xffff1fff @ 0x223c614
.word 0x4001000 @ 0x223c618
.word 0x7fff @ 0x223c61c
.word 0x5000200 @ 0x223c620
.word 0x5000400 @ 0x223c624
.word 0x5000600 @ 0x223c628
.word REG_BLDCNT @ 0x223c62c
.word 0x4001050 @ 0x223c630
.thumb
Function_223c634: @ 223c634 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, #0x0
	mov     r7, #0x6
.thumb
branch_223c63c: @ 223c63c :thumb
	ldr     r0, [r6, #0x8]
	mov     r1, r5
	bl      Function_209b9d4
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223c67a
	mov     r1, r7
	bl      Function_63_222bf90
	strb    r0, [r4, #0x12]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	bl      Function_63_222bf90
	strh    r0, [r4, #0xa]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_63_222bf90
	strh    r0, [r4, #0xe]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_63_222bf90
	strh    r0, [r4, #0x10]
	ldr     r0, [r4, #0x4]
	bl      0x222cffc
	strb    r0, [r4, #0x13]
.thumb
branch_223c67a: @ 223c67a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x20
	blt     branch_223c63c
	mov     r0, r6
	bl      Function_223d3b0
	pop     {r3-r7,pc}
@ 0x223c688

.thumb
Function_223c688: @ 223c688 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	bl      Function_209b9cc
	ldr     r7, [pc, #0x50] @ 0x223c6e8, (=0xffff)
	mov     r4, r0
	mov     r6, #0x0
.thumb
branch_223c69a: @ 223c69a :thumb
	ldrh    r1, [r4, #0x0]
	cmp     r1, r7
	beq     branch_223c6aa
	ldrb    r2, [r4, #0x2]
	ldr     r0, [r5, #0x20]
	mov     r3, #0x5e
	bl      0x222cde8
.thumb
branch_223c6aa: @ 223c6aa :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x18
	blt     branch_223c69a
	ldr     r7, [pc, #0x34] @ 0x223c6e8, (=0xffff)
	mov     r4, #0x0
	add     r6, sp, #0x0
.thumb
branch_223c6b8: @ 223c6b8 :thumb
	ldr     r0, [r5, #0x8]
	mov     r1, r4
	bl      Function_209b9d4
	ldrh    r1, [r0, #0xc]
	cmp     r1, r7
	beq     branch_223c6d6
	mov     r1, r6
	bl      Function_223d570
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_223d180
.thumb
branch_223c6d6: @ 223c6d6 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x20
	blt     branch_223c6b8
	mov     r0, r5
	bl      Function_223d498
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x223c6e6


.align 2


.word 0xffff @ 0x223c6e8
.thumb
Function_223c6ec: @ 223c6ec :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_201dcac
	bl      Function_200c800
	ldr     r0, [r4, #0x4]
	bl      Function_2003694
	ldr     r0, [r4, #0x0]
	bl      Function_201c2b8
	ldr     r3, [pc, #0xc] @ 0x223c714, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x223c718, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x223c712


.align 2


.word 0x27e0000 @ 0x223c714
.word 0x3ff8 @ 0x223c718
.thumb
Function_223c71c: @ 223c71c :thumb
	bx      lr
@ 0x223c71e


.align 2, 0


.thumb
Function_223c720: @ 223c720 :thumb
	ldr     r3, [pc, #0x4] @ 0x223c728, (=0x222be85)
	ldr     r0, [r1, #0x14]
	bx      r3
@ 0x223c726


.align 2


.word 0x222be85 @ 0x223c728
.thumb
Function_223c72c: @ 223c72c :thumb
	ldr     r3, [pc, #0x4] @ 0x223c734, (=0x223c8e9)
	mov     r0, r1
	bx      r3
@ 0x223c732


.align 2


.word 0x223c8e9 @ 0x223c734
.thumb
Function_223c738: @ 223c738 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	ldr     r0, [r7, #0x8]
	mov     r1, #0x1f
	bl      Function_209b9d4
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_223c752
	mov     r0, r7
	add     r0, #0x1c
	bl      0x222d160
.thumb
branch_223c752: @ 223c752 :thumb
	mov     r0, r7
	bl      Function_223c798
	ldr     r0, [r7, #0x20]
	bl      0x222cee4
	ldr     r4, [r7, #0x6c]
	mov     r6, #0x0
	mov     r5, r7
.thumb
branch_223c764: @ 223c764 :thumb
	ldr     r0, [r5, #0x3c]
	cmp     r0, #0x0
	beq     branch_223c774
	mov     r1, #0x1
	tst     r1, r4
	beq     branch_223c774
	bl      Function_200d330
.thumb
branch_223c774: @ 223c774 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	lsr     r4, r4, #1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x8
	blt     branch_223c764
	ldr     r0, [r7, #0x38]
	bl      Function_200c7ec
	bl      Function_200c808
	bl      Function_223d6a8
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_20241bc
	pop     {r3-r7,pc}
@ 0x223c796


.align 2, 0


.thumb
Function_223c798: @ 223c798 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	bl      Function_209b970
	mov     r4, r0
	add     r0, #0x24
	ldrb    r0, [r0, #0x0]
	mov     r1, #0xc
	bl      Function_222ea90
	cmp     r0, #0x0
	beq     branch_223c7b6
	cmp     r0, #0x1
	beq     branch_223c7e4
.thumb
branch_223c7b6: @ 223c7b6 :thumb
	ldr     r0, [r5, #0x24]
	cmp     r0, #0x0
	beq     branch_223c7c4
	mov     r1, r5
	add     r1, #0x1c
	bl      0x222d228
.thumb
branch_223c7c4: @ 223c7c4 :thumb
	ldr     r0, [r5, #0x28]
	cmp     r0, #0x0
	beq     branch_223c7ea
	add     r4, #0x24
	ldrb    r0, [r4, #0x0]
	mov     r1, #0xd
	bl      Function_222ea90
	cmp     r0, #0x1
	bne     branch_223c7ea
	ldr     r0, [r5, #0x28]
	add     r5, #0x1c
	mov     r1, r5
	bl      0x222d228
	pop     {r3-r5,pc}
@ 0x223c7e4

.thumb
branch_223c7e4: @ 223c7e4 :thumb
	mov     r0, r5
	bl      Function_223c7ec
.thumb
branch_223c7ea: @ 223c7ea :thumb
	pop     {r3-r5,pc}
@ 0x223c7ec

.thumb
Function_223c7ec: @ 223c7ec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	bl      Function_209b970
	mov     r7, r0
	mov     r0, r5
	add     r0, #0x1c
	bl      0x222d1b0
	mov     r1, #0xaa
	ldsh    r1, [r5, r1]
	add     r0, r1, r0
	lsl     r0, r0, #16
	asr     r4, r0, #16
	mov     r0, r5
	add     r0, #0x1c
	bl      0x222d1b8
	mov     r1, #0xa8
	ldsh    r1, [r5, r1]
	add     r0, r1, r0
	lsl     r0, r0, #16
	asr     r6, r0, #16
	cmp     r4, #0x0
	ble     branch_223c836
	lsl     r0, r4, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	str     r0, [sp, #0x4]
	b       branch_223c846
@ 0x223c836

.thumb
branch_223c836: @ 223c836 :thumb
	lsl     r0, r4, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
	str     r0, [sp, #0x4]
.thumb
branch_223c846: @ 223c846 :thumb
	cmp     r6, #0x0
	ble     branch_223c85e
	lsl     r0, r6, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	str     r0, [sp, #0x0]
	b       branch_223c86e
@ 0x223c85e

.thumb
branch_223c85e: @ 223c85e :thumb
	lsl     r0, r6, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
	str     r0, [sp, #0x0]
.thumb
branch_223c86e: @ 223c86e :thumb
	ldr     r0, [r5, #0x34]
	bl      Function_200c738
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	blx     _ffix
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x4]
	blx     _ffix
	mov     r2, r0
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	bl      Function_200962c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_201c63c
	mov     r1, #0x3
	ldr     r0, [r5, #0x0]
	mov     r2, r1
	mov     r3, r4
	bl      Function_201c63c
	mov     r0, r7
	add     r0, #0x24
	ldrb    r0, [r0, #0x0]
	mov     r1, #0x9
	bl      Function_222ea90
	ldr     r1, [pc, #0x30] @ 0x223c8e4, (=0xffff)
	cmp     r0, r1
	beq     branch_223c8de
	add     r7, #0x24
	ldrb    r0, [r7, #0x0]
	mov     r1, #0xd
	bl      Function_222ea90
	cmp     r0, #0x1
	bne     branch_223c8de
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_201c63c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, r4
	bl      Function_201c63c
branch_223c8de: @ 223c8de :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223c8e2

.align 2
.word 0xffff @ 0x223c8e4



.thumb
Function_223c8e8: @ 223c8e8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x30]
	add     r1, sp, #0x0
	bl      0x222d810
	cmp     r0, #0x1
	bne     branch_223c910
	add     r4, sp, #0x0
.thumb
branch_223c8fc: @ 223c8fc :thumb
	ldr     r0, [r5, #0x14]
	mov     r1, r4
	bl      0x222be70
	ldr     r0, [r5, #0x30]
	mov     r1, r4
	bl      0x222d810
	cmp     r0, #0x1
	beq     branch_223c8fc
.thumb
branch_223c910: @ 223c910 :thumb
	ldr     r0, [r5, #0x2c]
	add     r1, sp, #0x8
	bl      0x222d8d0
	cmp     r0, #0x1
	bne     branch_223c944
	add     r6, sp, #0x0
	add     r4, sp, #0x8
.thumb
branch_223c920: @ 223c920 :thumb
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x14]
	mov     r2, r4
	mov     r3, r6
	bl      0x222ca88
	cmp     r0, #0x1
	bne     branch_223c938
	ldr     r0, [r5, #0x14]
	mov     r1, r6
	bl      0x222be70
.thumb
branch_223c938: @ 223c938 :thumb
	ldr     r0, [r5, #0x2c]
	mov     r1, r4
	bl      0x222d8d0
	cmp     r0, #0x1
	beq     branch_223c920
.thumb
branch_223c944: @ 223c944 :thumb
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223c948

.thumb
Function_223c948: @ 223c948 :thumb
	push    {r3-r7,lr}
	add     sp, #-0xa8
	mov     r7, r1
	mov     r5, r0
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_222ea90
	mov     r4, r0
	bl      Function_201ff00
	ldr     r6, [pc, #0x208] @ 0x223cb68, (=0x224135c)
	add     r3, sp, #0x2c
	mov     r2, #0x5
.thumb
branch_223c964: @ 223c964 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223c964
	add     r0, sp, #0x2c
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
	ldr     r6, [pc, #0x1c0] @ 0x223cb6c, (=0x22412e4)
	add     r3, sp, #0x1c
	mov     r2, r3
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	str     r4, [sp, #0x20]
	bl      SetGraphicsModes
	ldr     r6, [pc, #0x1ac] @ 0x223cb70, (=0x2241384)
	add     r3, sp, #0x54
	mov     r2, #0xa
.thumb
branch_223c9c6: @ 223c9c6 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223c9c6
	ldr     r0, [r6, #0x0]
	cmp     r4, #0x0
	str     r0, [r3, #0x0]
	bne     branch_223c9e4
	mov     r2, #0x0
	add     r1, sp, #0x74
	strb    r2, [r1, #0xd]
	add     r0, sp, #0x94
	strb    r2, [r0, #0x9]
	strb    r2, [r1, #0x10]
	strb    r2, [r0, #0xc]
.thumb
branch_223c9e4: @ 223c9e4 :thumb
	mov     r0, r7
	mov     r1, #0x4
	bl      Function_222ea90
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	add     r0, sp, #0x94
	strb    r6, [r0, #0x8]
	mov     r0, r7
	mov     r1, #0x9
	bl      Function_222ea90
	ldr     r1, [pc, #0x174] @ 0x223cb74, (=0xffff)
	cmp     r0, r1
	beq     branch_223ca06
	add     r0, sp, #0x74
	strb    r6, [r0, #0xc]
.thumb
branch_223ca06: @ 223ca06 :thumb
	cmp     r4, #0x0
	add     r2, sp, #0x54
	bne     branch_223ca90
	mov     r0, r5
	mov     r1, #0x1
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
	add     r2, sp, #0x70
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
	add     r2, sp, #0x8c
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
	b       branch_223cb12
@ 0x223ca90

.thumb
branch_223ca90: @ 223ca90 :thumb
	mov     r0, r5
	mov     r1, #0x1
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
	mov     r1, #0x2
	mov     r0, r5
	add     r2, sp, #0x70
	mov     r3, r1
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
	add     r2, sp, #0x8c
	mov     r3, #0x2
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
.thumb
branch_223cb12: @ 223cb12 :thumb
	ldr     r1, [pc, #0x64] @ 0x223cb78, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	mov     r0, #0x1
	strh    r2, [r1, #0x0]
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r4, [pc, #0x54] @ 0x223cb7c, (=0x2241320)
	add     r3, sp, #0x0
	ldmia   r4!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	str     r0, [r3, #0x0]
	mov     r0, r5
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_2019ebc
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, #0x4
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	add     sp, #0xa8
	pop     {r3-r7,pc}
@ 0x223cb68

.word 0x224135c @ 0x223cb68
.word 0x22412e4 @ 0x223cb6c
.word 0x2241384 @ 0x223cb70
.word 0xffff @ 0x223cb74
.word 0x4000008 @ 0x223cb78
.word 0x2241320 @ 0x223cb7c
.thumb
Function_223cb80: @ 223cb80 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	mov     r1, #0xe
	mov     r2, #0x6
	mov     r3, #0x5e
	bl      Function_2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xd0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	mov     r1, #0xe
	mov     r2, #0x7
	mov     r3, #0x5e
	bl      Function_2003050
	ldr     r0, [r4, #0x8]
	bl      Function_209b970
	ldr     r0, [r0, #0x4]
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x5e
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x38] @ 0x223cc08, (=0x3e2)
	mov     r1, #0x1
	mov     r3, #0xb
	bl      Function_200dd0c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	mov     r2, #0xb0
	mov     r3, #0x20
	bl      GetPaletteAdresses
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x5e
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x1c] @ 0x223cc0c, (=0x3d9)
	mov     r1, #0x1
	mov     r3, #0xc
	bl      Function_200daa4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	mov     r2, #0xc0
	mov     r3, #0x20
	bl      GetPaletteAdresses
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223cc08

.word 0x3e2 @ 0x223cc08
.word 0x3d9 @ 0x223cc0c



.thumb
Function_223cc10: @ 223cc10 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0

	mov     r0, #FrontierBg_Narc
	mov     r1, #0x5e
	bl      LoadFromNARC_8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r1, #0x5e
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r1, #0x7d
	mov     r3, #0x4
	mov     r4, r0
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5e
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x7e
	mov     r3, #0x4
	bl      Function_200710c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x96
	mov     r2, #0xab
	mov     r3, #0x5e
	bl      Function_2003050
	mov     r0, r4
	bl      Call_FS_CloseFile
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x223cc74

.thumb
Function_223cc74: @ 223cc74 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x20
	mov     r1, #0x5e
	mov     r6, r2
	bl      0x222be18
	str     r0, [r5, #0x14]
	mov     r0, #0x10
	mov     r1, r0
	mov     r2, #0x5e
	bl      0x222bce8
	str     r0, [r5, #0x18]
	mov     r0, r5
	add     r0, #0x1c
	bl      0x222d19c
	ldr     r0, [r5, #0x38]
	bl      Function_200d9b0
	mov     r7, r0
	mov     r0, r6
	bl      Function_222e5f0
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x5e
	str     r0, [sp, #0x8]
	ldr     r1, [r5, #0x4]
	mov     r0, r7
	mov     r2, #0x20
	bl      0x222cd2c
	ldr     r3, [pc, #0x21c] @ 0x223cee0, (=0x22412d8)
	str     r0, [r5, #0x20]
	add     r2, sp, #0x20
	mov     r1, #0xb
.thumb
branch_223ccca: @ 223ccca :thumb
	ldrb    r0, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_223ccca
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_222ea90
	add     r1, sp, #0x18
	strb    r0, [r1, #0x10]
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_222ea90
	add     r1, sp, #0x18
	strb    r0, [r1, #0x11]
	mov     r0, r4
	mov     r1, #0xc
	bl      Function_222ea90
	mov     r6, r0
	bne     branch_223cd0c
	ldr     r0, [r5, #0x34]
	bl      Function_200c738
	ldr     r1, [r5, #0x0]
	add     r2, sp, #0x20
	mov     r3, #0x5e
	bl      0x222d1c0
	str     r0, [r5, #0x24]
.thumb
branch_223cd0c: @ 223cd0c :thumb
	mov     r0, r4
	mov     r1, #0x9
	bl      Function_222ea90
	ldr     r1, [pc, #0x1cc] @ 0x223cee4, (=0xffff)
	cmp     r0, r1
	beq     branch_223cd4a
	mov     r0, r4
	mov     r1, #0x9
	bl      Function_222ea90
	add     r1, sp, #0x18
	strb    r0, [r1, #0x11]
	mov     r0, #0x2
	strb    r0, [r1, #0x9]
	mov     r2, #0x1
	mov     r0, #0x8
	strb    r2, [r1, #0xb]
	strb    r0, [r1, #0xc]
	strb    r2, [r1, #0xe]
	cmp     r6, #0x0
	bne     branch_223cd4a
	ldr     r0, [r5, #0x34]
	bl      Function_200c738
	ldr     r1, [r5, #0x0]
	add     r2, sp, #0x20
	mov     r3, #0x5e
	bl      0x222d1c0
	str     r0, [r5, #0x28]
.thumb
branch_223cd4a: @ 223cd4a :thumb
	mov     r0, #0x80
	mov     r1, #0x5e
	bl      0x222d848
	str     r0, [r5, #0x2c]
	mov     r0, #0x80
	mov     r1, #0x5e
	bl      0x222d77c
	str     r0, [r5, #0x30]
	ldr     r0, [r5, #0x18]
	ldr     r1, [pc, #0x184] @ 0x223cee8, (=0x22413d8)
	bl      0x222bd50
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222ea90
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_222ea90

	mov     r1, #0x5e
	str     r0, [sp, #0x10]
	bl      LoadFromNARC_8
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_222ea90
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5e
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r6
	mov     r3, #0x3
	bl      Function_20070e8
	cmp     r7, #0x0
	bne     branch_223cdca
	mov     r0, r4
	mov     r1, #0x8
	bl      Function_222ea90
	mov     r2, r0
	mov     r1, #0x0
	mov     r0, #0x16
	str     r1, [sp, #0x0]
	lsl     r0, r0, #4
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [r5, #0x4]
	ldr     r1, [sp, #0x10]
	mov     r3, #0x5e
	bl      Function_2003050
	b       branch_223ce08
@ 0x223cdca

.thumb
branch_223cdca: @ 223cdca :thumb
	mov     r0, r4
	mov     r1, #0x8
	bl      Function_222ea90
	mov     r1, r0
	mov     r0, r6
	add     r2, sp, #0x1c
	mov     r3, #0x5e
	bl      Function_20071ec
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x14]
	ldr     r0, [r1, #0xc]
	ldr     r1, [r1, #0x8]
	blx     DC_FlushRange
	blx     GX_BeginLoadBGExtPltt
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x6
	mov     r2, #0x2
	ldr     r0, [r0, #0xc]
	lsl     r1, r1, #12
	lsl     r2, r2, #12
	blx     GX_LoadBGExtPltt
	blx     GX_EndLoadBGExtPltt
	ldr     r0, [sp, #0x14]
	bl      free
.thumb
branch_223ce08: @ 223ce08 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	mov     r2, #0x2
	mov     r3, r1
	bl      Function_20038b0
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_222ea90
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5e
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r6
	mov     r3, #0x3
	bl      Function_200710c
	mov     r0, r4
	mov     r1, #0x9
	bl      Function_222ea90
	ldr     r1, [pc, #0x9c] @ 0x223cee4, (=0xffff)
	cmp     r0, r1
	beq     branch_223cece
	mov     r0, r4
	mov     r1, #0xa
	bl      Function_222ea90
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5e
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r6
	mov     r3, #0x2
	bl      Function_20070e8
	mov     r0, r4
	mov     r1, #0x9
	bl      Function_222ea90
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5e
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r6
	mov     r3, #0x2
	bl      Function_200710c
	cmp     r7, #0x0
	beq     branch_223cece
	mov     r0, r4
	mov     r1, #0xb
	bl      Function_222ea90
	mov     r1, r0
	mov     r0, r6
	add     r2, sp, #0x18
	mov     r3, #0x5e
	bl      Function_20071ec
	ldr     r1, [sp, #0x18]
	mov     r4, r0
	ldr     r0, [r1, #0xc]
	ldr     r1, [r1, #0x8]
	blx     DC_FlushRange
	blx     GX_BeginLoadBGExtPltt
	ldr     r0, [sp, #0x18]
	mov     r1, #0x1
	lsl     r1, r1, #14
	ldr     r0, [r0, #0xc]
	lsr     r2, r1, #1
	blx     GX_LoadBGExtPltt
	blx     GX_EndLoadBGExtPltt
	mov     r0, r4
	bl      free
.thumb
branch_223cece: @ 223cece :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	bl      Function_201c3c0
	mov     r0, r6
	bl      Call_FS_CloseFile
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x223cee0

.word 0x22412d8 @ 0x223cee0
.word 0xffff @ 0x223cee4
.word 0x22413d8 @ 0x223cee8
.thumb
Function_223ceec: @ 223ceec :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x8]
	bl      Function_209b9d0
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_223cefa: @ 223cefa :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_223cf0e
	bl      0x222bf08
	ldr     r0, [r5, #0x38]
	cmp     r0, #0x0
	beq     branch_223cf0e
	bl      ErrorHandling
.thumb
branch_223cf0e: @ 223cf0e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x3c
	cmp     r4, #0x20
	blt     branch_223cefa
	ldr     r0, [r6, #0x14]
	bl      0x222be58
	ldr     r0, [r6, #0x18]
	bl      0x222bd30
	ldr     r0, [r6, #0x20]
	bl      0x222cd9c
	ldr     r0, [r6, #0x24]
	cmp     r0, #0x0
	beq     branch_223cf32
	bl      0x222d214
.thumb
branch_223cf32: @ 223cf32 :thumb
	ldr     r0, [r6, #0x28]
	cmp     r0, #0x0
	beq     branch_223cf3c
	bl      0x222d214
.thumb
branch_223cf3c: @ 223cf3c :thumb
	ldr     r0, [r6, #0x2c]
	bl      0x222d880
	ldr     r0, [r6, #0x30]
	bl      0x222d7b4
	pop     {r4-r6,pc}
@ 0x223cf4a


.align 2, 0


.thumb
Function_223cf4c: @ 223cf4c :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, #0x1
	ldr     r1, [pc, #0x10] @ 0x223cf64, (=0x223cf69)
	str     r2, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	mov     r3, r1
	bl      Function_2024220
	add     sp, #0x8
	pop     {r3,pc}
@ 0x223cf64

.word 0x223cf69 @ 0x223cf64
.thumb
Function_223cf68: @ 223cf68 :thumb
	push    {r3,lr}
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r0, [pc, #0x60] @ 0x223cfd4, (=0x4000008)
	mov     r1, #0x3
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strh    r1, [r0, #0x0]
	add     r0, #0x58
	ldrh    r2, [r0, #0x0]
	ldr     r1, [pc, #0x50] @ 0x223cfd8, (=0xffffcffd)
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
	ldr     r2, [pc, #0x40] @ 0x223cfdc, (=0xcffb)
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
	ldr     r2, [pc, #0x1c] @ 0x223cfe0, (=0x7fff)
	mov     r1, r0
	mov     r3, #0x3f
	str     r0, [sp, #0x0]
	blx     G3X_SetClearColor
	ldr     r1, [pc, #0x14] @ 0x223cfe4, (=0xbfff0000)
	ldr     r0, [pc, #0x18] @ 0x223cfe8, (=0x4000580)
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x223cfd4

.word 0x4000008 @ 0x223cfd4
.word 0xffffcffd @ 0x223cfd8
.word 0xcffb @ 0x223cfdc
.word 0x7fff @ 0x223cfe0
.word 0xbfff0000 @ 0x223cfe4
.word 0x4000580 @ 0x223cfe8
.thumb
Function_223cfec: @ 223cfec :thumb
	ldr     r3, [pc, #0x0] @ 0x223cff0, (=Function_20242c4+1)
	bx      r3
@ 0x223cff0

.word Function_20242c4+1 @ 0x223cff0
.thumb
Function_223cff4: @ 223cff4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5e
	bl      Function_200c6e4
	ldr     r1, [pc, #0x48] @ 0x223d048, (=0x224133c)
	ldr     r2, [pc, #0x48] @ 0x223d04c, (=0x22412f4)
	mov     r3, #0x20
	str     r0, [r4, #0x34]
	bl      Function_200c73c
	ldr     r1, [pc, #0x44] @ 0x223d050, (=0x200010)
	mov     r0, #0x1
	bl      Function_200966c
	mov     r0, #0x1
	bl      Function_2009704
	ldr     r0, [r4, #0x34]
	bl      Function_200c704
	str     r0, [r4, #0x38]
	ldr     r0, [r4, #0x34]
	ldr     r1, [r4, #0x38]
	mov     r2, #0x80
	bl      Function_200c7c0
	ldr     r0, [r4, #0x34]
	ldr     r1, [r4, #0x38]
	ldr     r2, [pc, #0x24] @ 0x223d054, (=0x2241308)
	bl      Function_200cb30
	ldr     r0, [r4, #0x34]
	bl      Function_200c738
	mov     r2, #0x2
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      Function_200964c
	pop     {r4,pc}
@ 0x223d046


.align 2


.word 0x224133c @ 0x223d048
.word 0x22412f4 @ 0x223d04c
.word 0x200010 @ 0x223d050
.word 0x2241308 @ 0x223d054
.thumb
Function_223d058: @ 223d058 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_223d060: @ 223d060 :thumb
	ldr     r0, [r4, #0x3c]
	cmp     r0, #0x0
	beq     branch_223d06a
	bl      Function_223d858
.thumb
branch_223d06a: @ 223d06a :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x8
	blt     branch_223d060
	ldr     r7, [pc, #0x70] @ 0x223d0e4, (=0xffff)
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_223d078: @ 223d078 :thumb
	mov     r0, r4
	add     r0, #0x70
	ldrh    r1, [r0, #0x0]
	cmp     r1, r7
	beq     branch_223d088
	ldr     r0, [r5, #0x38]
	bl      Function_223d7ec
.thumb
branch_223d088: @ 223d088 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r6, #0x8
	blt     branch_223d078
	ldr     r7, [pc, #0x54] @ 0x223d0e8, (=0xc350)
	mov     r4, #0x0
	mov     r6, r5
.thumb
branch_223d096: @ 223d096 :thumb
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_223d0ca
	bl      Function_200d0f4
	ldr     r1, [pc, #0x40] @ 0x223d0e8, (=0xc350)
	ldr     r0, [r5, #0x38]
	add     r1, r4, r1
	bl      Function_200d070
	ldr     r1, [pc, #0x38] @ 0x223d0e8, (=0xc350)
	ldr     r0, [r5, #0x38]
	add     r1, r4, r1
	bl      Function_200d080
	ldr     r1, [pc, #0x2c] @ 0x223d0e8, (=0xc350)
	ldr     r0, [r5, #0x38]
	add     r1, r4, r1
	bl      Function_200d090
	ldr     r0, [r5, #0x38]
	add     r1, r4, r7
	bl      Function_200d0a0
.thumb
branch_223d0ca: @ 223d0ca :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0x4
	blt     branch_223d096
	ldr     r0, [r5, #0x34]
	ldr     r1, [r5, #0x38]
	bl      Function_200d0b0
	ldr     r0, [r5, #0x34]
	bl      Function_200c8d4
	pop     {r3-r7,pc}
@ 0x223d0e2


.align 2


.word 0xffff @ 0x223d0e4
.word 0xc350 @ 0x223d0e8
.thumb
Function_223d0ec: @ 223d0ec :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x8]
	mov     r5, r1
	bl      Function_209b9cc
	mov     r7, r0
	ldrh    r3, [r5, #0x0]
	mov     r1, #0x0
	mov     r2, r7
.thumb
branch_223d100: @ 223d100 :thumb
	ldrh    r0, [r2, #0x0]
	cmp     r3, r0
	beq     branch_223d142
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x18
	blt     branch_223d100
	ldr     r0, [pc, #0x34] @ 0x223d144, (=0xffff)
	mov     r4, #0x0
	mov     r2, r7
.thumb
branch_223d114: @ 223d114 :thumb
	ldrh    r1, [r2, #0x0]
	cmp     r1, r0
	beq     branch_223d122
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r4, #0x18
	blt     branch_223d114
.thumb
branch_223d122: @ 223d122 :thumb
	cmp     r4, #0x18
	bne     branch_223d12a
	bl      ErrorHandling
.thumb
branch_223d12a: @ 223d12a :thumb
	ldrh    r0, [r5, #0x0]
	lsl     r2, r4, #2
	add     r1, r7, r2
	strh    r0, [r7, r2]
	ldrh    r0, [r5, #0x2]
	mov     r3, #0x5e
	strh    r0, [r1, #0x2]
	ldrh    r1, [r5, #0x0]
	ldrb    r2, [r5, #0x2]
	ldr     r0, [r6, #0x20]
	bl      0x222cde8
.thumb
branch_223d142: @ 223d142 :thumb
	pop     {r3-r7,pc}
@ 0x223d144

.word 0xffff @ 0x223d144
.thumb
Function_223d148: @ 223d148 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x8]
	mov     r5, r1
	bl      Function_209b9cc
	mov     r7, r0
	mov     r4, #0x0
	mov     r1, r7
.thumb
branch_223d15a: @ 223d15a :thumb
	ldrh    r0, [r1, #0x0]
	cmp     r5, r0
	bne     branch_223d170
	ldr     r0, [r6, #0x20]
	mov     r1, r5
	bl      0x222ce0c
	ldr     r1, [pc, #0x10] @ 0x223d17c, (=0xffff)
	lsl     r0, r4, #2
	strh    r1, [r7, r0]
	pop     {r3-r7,pc}
@ 0x223d170

.thumb
branch_223d170: @ 223d170 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r4, #0x18
	blt     branch_223d15a
	pop     {r3-r7,pc}
@ 0x223d17a


.align 2


.word 0xffff @ 0x223d17c
.thumb
Function_223d180: @ 223d180 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	ldr     r0, [r6, #0x8]
	mov     r5, r1
	mov     r4, r2
	bl      Function_209b9d0
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r4, r1
	bne     branch_223d1b0
	mov     r4, #0x0
.thumb
branch_223d19a: @ 223d19a :thumb
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_223d1a8
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x3c
	cmp     r4, #0x20
	blt     branch_223d19a
.thumb
branch_223d1a8: @ 223d1a8 :thumb
	cmp     r4, #0x20
	bne     branch_223d1b0
	bl      ErrorHandling
.thumb
branch_223d1b0: @ 223d1b0 :thumb
	mov     r0, #0x6
	ldsh    r0, [r5, r0]
	add     r1, sp, #0x8
	strh    r0, [r1, #0x0]
	mov     r0, #0x8
	ldsh    r0, [r5, r0]
	strh    r0, [r1, #0x2]
	ldrh    r0, [r5, #0x4]
	strh    r0, [r1, #0x4]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r1, #0x6]
	ldrb    r0, [r5, #0xa]
	strh    r0, [r1, #0x8]
	ldrh    r0, [r5, #0x0]
	strh    r0, [r1, #0xa]
	ldr     r0, [r6, #0x14]
	add     r1, sp, #0x8
	bl      0x222bec0
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x20]
	ldr     r1, [sp, #0x4]
	mov     r2, #0x0
	mov     r3, #0x5e
	bl      0x222ce44
	ldrb    r1, [r5, #0xb]
	mov     r7, r0
	bl      0x222d008
	str     r5, [sp, #0x0]
	ldr     r0, [r6, #0x8]
	ldr     r2, [sp, #0x4]
	mov     r1, r4
	mov     r3, r7
	bl      Function_223d584
	ldr     r0, [sp, #0x4]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223d200

.thumb
Function_223d200: @ 223d200 :thumb
	push    {r3-r5,lr}
	ldr     r0, [r0, #0x8]
	mov     r5, r1
	bl      Function_209b9d0
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, r4
.thumb
branch_223d210: @ 223d210 :thumb
	ldr     r0, [r2, #0x0]
	cmp     r0, r5
	bne     branch_223d248
	mov     r0, #0x3c
	mov     r5, r1
	mul     r5, r0
	ldr     r0, [r4, r5]
	bl      0x222bf08
	add     r0, r4, r5
	ldr     r0, [r0, #0x4]
	bl      0x222cecc
	add     r0, r4, r5
	ldr     r0, [r0, #0x38]
	cmp     r0, #0x0
	beq     branch_223d236
	bl      ErrorHandling
.thumb
branch_223d236: @ 223d236 :thumb
	add     r0, r4, r5
	mov     r1, #0x0
	mov     r2, #0x3c
	blx     MI_CpuFill8
	ldr     r1, [pc, #0x10] @ 0x223d254, (=0xffff)
	add     r0, r4, r5
	strh    r1, [r0, #0xc]
	pop     {r3-r5,pc}
@ 0x223d248

.thumb
branch_223d248: @ 223d248 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x3c
	cmp     r1, #0x20
	blt     branch_223d210
	pop     {r3-r5,pc}
@ 0x223d252


.align 2


.word 0xffff @ 0x223d254
.thumb
Function_223d258: @ 223d258 :thumb
	push    {r4-r6,lr}
	ldr     r0, [r0, #0x8]
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	bl      Function_209b9d0
	mov     r1, #0x0
	mov     r3, r0
.thumb
branch_223d26a: @ 223d26a :thumb
	ldrh    r2, [r3, #0xc]
	cmp     r5, r2
	bne     branch_223d28c
	cmp     r4, #0x0
	beq     branch_223d27c
	mov     r2, #0x3c
	mul     r2, r1
	ldr     r2, [r0, r2]
	str     r2, [r4, #0x0]
.thumb
branch_223d27c: @ 223d27c :thumb
	cmp     r6, #0x0
	beq     branch_223d298
	mov     r2, #0x3c
	mul     r2, r1
	add     r0, r0, r2
	ldr     r0, [r0, #0x4]
	str     r0, [r6, #0x0]
	pop     {r4-r6,pc}
@ 0x223d28c

.thumb
branch_223d28c: @ 223d28c :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r3, #0x3c
	cmp     r1, #0x20
	blt     branch_223d26a
	bl      ErrorHandling
.thumb
branch_223d298: @ 223d298 :thumb
	pop     {r4-r6,pc}
@ 0x223d29a


.align 2, 0


.thumb
Function_223d29c: @ 223d29c :thumb
	push    {r3-r5,lr}
	ldr     r3, [pc, #0x28] @ 0x223d2c8, (=0xffff)
	mov     r4, #0x0
	mov     r5, r0
.thumb
branch_223d2a4: @ 223d2a4 :thumb
	mov     r2, r5
	add     r2, #0x70
	ldrh    r2, [r2, #0x0]
	cmp     r2, r3
	bne     branch_223d2b8
	lsl     r2, r4, #1
	add     r0, r0, r2
	add     r0, #0x70
	strh    r1, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x223d2b8

.thumb
branch_223d2b8: @ 223d2b8 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x8
	blt     branch_223d2a4
	bl      ErrorHandling
	pop     {r3-r5,pc}
@ 0x223d2c6


.align 2


.word 0xffff @ 0x223d2c8
.thumb
Function_223d2cc: @ 223d2cc :thumb
	push    {r3,r4}
	mov     r3, #0x0
	mov     r4, r0
.thumb
branch_223d2d2: @ 223d2d2 :thumb
	mov     r2, r4
	add     r2, #0x70
	ldrh    r2, [r2, #0x0]
	cmp     r1, r2
	bne     branch_223d2ea
	lsl     r1, r3, #1
	add     r0, r0, r1
	ldr     r2, [pc, #0x14] @ 0x223d2f8, (=0xffff)
	add     r0, #0x70
	strh    r2, [r0, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x223d2ea

.thumb
branch_223d2ea: @ 223d2ea :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r3, #0x8
	blt     branch_223d2d2
	pop     {r3,r4}
	bx      lr
@ 0x223d2f6


.align 2


.word 0xffff @ 0x223d2f8
.thumb
Function_223d2fc: @ 223d2fc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x8
	bcc     branch_223d30e
	bl      ErrorHandling
.thumb
branch_223d30e: @ 223d30e :thumb
	mov     r7, r5
	lsl     r0, r4, #2
	add     r7, #0x3c
	str     r0, [sp, #0x0]
	ldr     r0, [r7, r0]
	cmp     r0, #0x0
	beq     branch_223d320
	bl      ErrorHandling
.thumb
branch_223d320: @ 223d320 :thumb
	ldr     r0, [r5, #0x34]
	ldr     r1, [r5, #0x38]
	mov     r2, r6
	bl      Function_223d828
	ldr     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [r7, r1]
	lsl     r0, r4, #1
	add     r0, r5, r0
	add     r0, #0x5c
	strh    r6, [r0, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_223d378
	ldr     r0, [sp, #0x4]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223d348

.thumb
Function_223d348: @ 223d348 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x8
	bcc     branch_223d356
	bl      ErrorHandling
.thumb
branch_223d356: @ 223d356 :thumb
	lsl     r4, r4, #2
	add     r5, #0x3c
	ldr     r0, [r5, r4]
	cmp     r0, #0x0
	bne     branch_223d364
	bl      ErrorHandling
.thumb
branch_223d364: @ 223d364 :thumb
	ldr     r0, [r5, r4]
	bl      Function_223d858
	mov     r0, #0x0
	str     r0, [r5, r4]
	pop     {r3-r5,pc}
@ 0x223d370

.thumb
Function_223d370: @ 223d370 :thumb
	lsl     r1, r1, #2
	add     r0, r0, r1
	ldr     r0, [r0, #0x3c]
	bx      lr
@ 0x223d378

.thumb
Function_223d378: @ 223d378 :thumb
	push    {r3,r4}
	cmp     r2, #0x1
	bne     branch_223d38e
	mov     r2, #0x1
	ldr     r3, [r0, #0x6c]
	lsl     r2, r1
	mov     r1, r3
	orr     r1, r2
	str     r1, [r0, #0x6c]
	pop     {r3,r4}
	bx      lr
@ 0x223d38e

.thumb
branch_223d38e: @ 223d38e :thumb
	mov     r2, #0x1
	mov     r3, r2
	lsl     r3, r1
	.hword  0x1e91 @ sub r1, r2, #0x2
	ldr     r4, [r0, #0x6c]
	eor     r1, r3
	and     r1, r4
	str     r1, [r0, #0x6c]
	pop     {r3,r4}
	bx      lr
@ 0x223d3a2


.align 2, 0


.thumb
Function_223d3a4: @ 223d3a4 :thumb
	ldr     r0, [r0, #0x6c]
	mov     r2, r0
	lsr     r2, r1
	mov     r0, #0x1
	and     r0, r2
	bx      lr
@ 0x223d3b0

.thumb
Function_223d3b0: @ 223d3b0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	ldr     r0, [r0, #0x8]
	bl      Function_209b9e0
	ldr     r4, [sp, #0x0]
	mov     r6, r0
	ldr     r0, [pc, #0xc0] @ 0x223d484, (=0xffff)
	add     r4, #0x3c
	mov     r3, #0x0
.thumb
branch_223d3c6: @ 223d3c6 :thumb
	lsl     r2, r3, #1
	add     r1, r4, r2
	ldrh    r1, [r1, #0x34]
	cmp     r1, r0
	beq     branch_223d3d4
	strh    r1, [r6, r2]
	.hword  0x1c5b @ add r3, r3, #0x1
.thumb
branch_223d3d4: @ 223d3d4 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r3, #0x8
	blt     branch_223d3c6
	mov     r0, r6
	str     r0, [sp, #0x8]
	add     r0, #0x12
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r5, r6
	str     r0, [sp, #0x4]
	add     r0, #0x10
	mov     r7, #0x0
	add     r5, #0x16
	str     r4, [sp, #0xc]
	str     r0, [sp, #0x4]
.thumb
branch_223d3f2: @ 223d3f2 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223d460
	bl      Function_200d37c
	strb    r0, [r6, #0x15]
	ldr     r0, [r4, #0x0]
	bl      Function_200d3e0
	ldrh    r2, [r5, #0x0]
	ldr     r1, [pc, #0x80] @ 0x223d488, (=0xffffe000)
	and     r1, r2
	ldr     r2, [pc, #0x80] @ 0x223d48c, (=0x1fff)
	and     r0, r2
	orr     r0, r1
	strh    r0, [r5, #0x0]
	lsl     r1, r7, #16
	ldr     r0, [sp, #0x0]
	lsr     r1, r1, #16
	bl      Function_223d3a4
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsl     r0, r0, #31
	ldrh    r2, [r5, #0x0]
	ldr     r1, [pc, #0x68] @ 0x223d490, (=0xffffdfff)
	lsr     r0, r0, #18
	and     r1, r2
	orr     r0, r1
	strh    r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	bl      Function_200d408
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	lsl     r0, r0, #31
	ldrh    r2, [r5, #0x0]
	ldr     r1, [pc, #0x54] @ 0x223d494, (=0xffffbfff)
	lsr     r0, r0, #17
	and     r1, r2
	orr     r0, r1
	strh    r0, [r5, #0x0]
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x4]
	ldrh    r0, [r0, #0x20]
	ldr     r2, [sp, #0x8]
	strb    r0, [r6, #0x14]
	ldr     r0, [r4, #0x0]
	bl      Function_200d550
	mov     r0, #0x2
	ldrh    r1, [r5, #0x0]
	lsl     r0, r0, #14
	orr     r0, r1
	strh    r0, [r5, #0x0]
.thumb
branch_223d460: @ 223d460 :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	add     r6, #0x8
	add     r0, #0x8
	add     r5, #0x8
	str     r0, [sp, #0x4]
	cmp     r7, #0x8
	blt     branch_223d3f2
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223d482

.align 2
.word 0xffff @ 0x223d484
.word 0xffffe000 @ 0x223d488
.word 0x1fff @ 0x223d48c
.word 0xffffdfff @ 0x223d490
.word 0xffffbfff @ 0x223d494



.thumb
Function_223d498: @ 223d498 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	ldr     r0, [r7, #0x8]
	bl      Function_209b9e0
	mov     r5, r0

	mov     r0, #FrontierObj_Narc
	mov     r1, #0x5e
	bl      LoadFromNARC_8
	str     r0, [sp, #0x4]
	mov     r6, #0x0
	mov     r4, r5
branch_223d4b4: @ 223d4b4 :thumb
	ldrh    r1, [r4, #0x0]
	ldr     r0, [pc, #0x98] @ 0x223d550, (=0xffff)
	cmp     r1, r0
	beq     branch_223d4d2
	str     r1, [sp, #0x0]
	ldr     r0, [r7, #0x34]
	ldr     r1, [r7, #0x38]
	ldr     r2, [sp, #0x4]
	ldr     r3, [r7, #0x4]
	bl      Function_223d768
	ldrh    r1, [r4, #0x0]
	mov     r0, r7
	bl      Function_223d29c
.thumb
branch_223d4d2: @ 223d4d2 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r6, #0x8
	blt     branch_223d4b4
	mov     r4, r5
	mov     r6, #0x0
	add     r4, #0x16
.thumb
branch_223d4e0: @ 223d4e0 :thumb
	ldrh    r0, [r4, #0x0]
	lsl     r0, r0, #16
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_223d534
	ldrb    r2, [r5, #0x14]
	lsl     r1, r6, #16
	mov     r0, r7
	lsr     r1, r1, #16
	bl      Function_223d2fc
	mov     r1, #0x10
	mov     r2, #0x12
	ldsh    r1, [r5, r1]
	ldsh    r2, [r5, r2]
	str     r0, [sp, #0x8]
	bl      Function_200d4c4
	ldrh    r1, [r4, #0x0]
	ldr     r0, [sp, #0x8]
	lsl     r1, r1, #17
	lsr     r1, r1, #31
	bl      Function_200d3f4
	ldrh    r2, [r4, #0x0]
	lsl     r1, r6, #16
	mov     r0, r7
	lsl     r2, r2, #18
	lsr     r1, r1, #16
	lsr     r2, r2, #31
	bl      Function_223d378
	ldrb    r1, [r5, #0x15]
	ldr     r0, [sp, #0x8]
	bl      Function_200d364
	ldrh    r1, [r4, #0x0]
	ldr     r0, [sp, #0x8]
	lsl     r1, r1, #19
	lsr     r1, r1, #19
	bl      Function_200d3cc
.thumb
branch_223d534: @ 223d534 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	add     r5, #0x8
	cmp     r6, #0x8
	blt     branch_223d4e0
	ldr     r0, [sp, #0x4]
	bl      Call_FS_CloseFile
	ldr     r0, [r7, #0x8]
	bl      Function_209b9ec
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223d54e


.align 2


.word 0xffff @ 0x223d550
.thumb
Function_223d554: @ 223d554 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x1c
	mov     r6, r1
	mov     r4, r2
	bl      0x222d1b0
	add     r5, #0x1c
	strh    r0, [r4, #0x0]
	mov     r0, r5
	bl      0x222d1b8
	strh    r0, [r6, #0x0]
	pop     {r4-r6,pc}
@ 0x223d570

.thumb
Function_223d570: @ 223d570 :thumb
	add     r0, #0x8
	mov     r3, #0xf
.thumb
branch_223d574: @ 223d574 :thumb
	ldrh    r2, [r0, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r2, [r1, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	.hword  0x1e5b @ sub r3, r3, #0x1
	bne     branch_223d574
	bx      lr
@ 0x223d582


.align 2, 0


.thumb
Function_223d584: @ 223d584 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r4, r3
	bl      Function_209b9d4
	str     r5, [r0, #0x0]
	str     r4, [r0, #0x4]
	ldr     r3, [sp, #0x10]
	add     r0, #0x8
	mov     r2, #0xf
.thumb
branch_223d598: @ 223d598 :thumb
	ldrh    r1, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r1, [r0, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223d598
	pop     {r3-r5,pc}
@ 0x223d5a6


.align 2, 0


.thumb
Function_223d5a8: @ 223d5a8 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_209b9d0
	mov     r2, #0x0
.thumb
branch_223d5b2: @ 223d5b2 :thumb
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_223d5be
	ldrh    r1, [r0, #0xc]
	cmp     r1, r4
	beq     branch_223d5cc
.thumb
branch_223d5be: @ 223d5be :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0x3c
	cmp     r2, #0x20
	blt     branch_223d5b2
	bl      ErrorHandling
	mov     r0, #0x0
.thumb
branch_223d5cc: @ 223d5cc :thumb
	pop     {r4,pc}
@ 0x223d5ce


.align 2, 0


.thumb
Function_223d5d0: @ 223d5d0 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x24
	mov     r5, r0
	bl      malloc
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x24
	blx     MI_CpuFill8
	strh    r5, [r4, #0x20]
	bl      Function_2014000
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223d5ee


.align 2, 0


.thumb
Function_223d5f0: @ 223d5f0 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_223d5f8: @ 223d5f8 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_223d602
	bl      Function_223d708
.thumb
branch_223d602: @ 223d602 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_223d5f8
	mov     r0, r6
	bl      free
	pop     {r4-r6,pc}
@ 0x223d612


.align 2, 0


.thumb
Function_223d614: @ 223d614 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	lsl     r6, r1, #2
	ldr     r0, [r5, r6]
	mov     r7, r2
	str     r3, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_223d62a
	bl      ErrorHandling
.thumb
branch_223d62a: @ 223d62a :thumb
	ldrh    r0, [r5, #0x20]
	mov     r1, #0x12
	lsl     r1, r1, #10
	bl      malloc
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldrh    r0, [r5, #0x20]
	mov     r3, #0x12
	ldr     r1, [pc, #0x44] @ 0x223d684, (=0x223d745)
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x44] @ 0x223d688, (=0x223d721)
	lsl     r3, r3, #10
	bl      Function_2014014
	mov     r4, r0
	bl      Function_2014784
	mov     r2, r0
	mov     r0, #0x1
	mov     r1, #0xe1
	lsl     r0, r0, #12
	lsl     r1, r1, #14
	bl      Function_20206bc
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	bl      Function_2014788

	ldrh    r2, [r5, #0x20]
	mov     r0, #FrontierParticle_Narc
	mov     r1, r7
	bl      Call2_LoadFromNARC_2
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0xa
	mov     r3, #0x1
	bl      Function_20144cc
	str     r4, [r5, r6]
	mov     r0, r4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223d684

.word Function_223d744+1 @ =0x223d745, 0x223d684
.word Function_223d720+1 @ =0x223d721, 0x223d688
.thumb
Function_223d68c: @ 223d68c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	lsl     r4, r1, #2
	ldr     r0, [r5, r4]
	cmp     r0, #0x0
	bne     branch_223d69c
	bl      ErrorHandling
.thumb
branch_223d69c: @ 223d69c :thumb
	ldr     r0, [r5, r4]
	bl      Function_223d708
	mov     r0, #0x0
	str     r0, [r5, r4]
	pop     {r3-r5,pc}
@ 0x223d6a8


.thumb
Function_223d6a8: @ 223d6a8 :thumb
	push    {r3,lr}
	bl      Call_G3X_Reset
	bl      Function_2014680
	cmp     r0, #0x0
	bne     branch_223d6ba
	mov     r0, #0x0
	pop     {r3,pc}

branch_223d6ba: @ 223d6ba :thumb
	bl      Function_201469c
	cmp     r0, #0x0
	ble     branch_223d6c6
	bl      Call_G3X_Reset
branch_223d6c6: @ 223d6c6 :thumb
	bl      Function_20146c0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223d6ce


.align 2, 0
.thumb
Function_223d6d0: @ 223d6d0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	lsl     r4, r1, #2
	ldr     r0, [r5, r4]
	cmp     r0, #0x0
	bne     branch_223d6e0
	bl      ErrorHandling
.thumb
branch_223d6e0: @ 223d6e0 :thumb
	ldr     r0, [r5, r4]
	pop     {r3-r5,pc}
@ 0x223d6e4

.thumb
Function_223d6e4: @ 223d6e4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_223d6ea: @ 223d6ea :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_223d6fc
	bl      Function_2014710
	cmp     r0, #0x0
	ble     branch_223d6fc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223d6fc

.thumb
branch_223d6fc: @ 223d6fc :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_223d6ea
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223d708

.thumb
Function_223d708: @ 223d708 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2014730
	mov     r4, r0
	mov     r0, r5
	bl      Function_201411c
	mov     r0, r4
	bl      free
	pop     {r3-r5,pc}
@ 0x223d720

.thumb
Function_223d720: @ 223d720 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x1c] @ 0x223d740, (=0x2100dec)
	mov     r2, #0x0
	ldr     r3, [r3, #0x0]
	blx     r3
	mov     r4, r0
	bne     branch_223d732
	bl      ErrorHandling
.thumb
branch_223d732: @ 223d732 :thumb
	mov     r0, r4
	bl      Function_20145b4
	lsl     r0, r4, #16
	lsr     r0, r0, #13
	pop     {r4,pc}
@ 0x223d73e


.align 2


.word 0x2100dec @ 0x223d740
.thumb
Function_223d744: @ 223d744 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x1c] @ 0x223d764, (=0x2100df4)
	mov     r2, #0x1
	ldr     r3, [r3, #0x0]
	blx     r3
	mov     r4, r0
	bne     branch_223d756
	bl      ErrorHandling
.thumb
branch_223d756: @ 223d756 :thumb
	mov     r0, r4
	bl      Function_20145f4
	lsl     r0, r4, #16
	lsr     r0, r0, #13
	pop     {r4,pc}
@ 0x223d762


.align 2


.word 0x2100df4 @ 0x223d764
.thumb
Function_223d768: @ 223d768 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r6, r0
	add     r0, sp, #0x20
	ldrh    r0, [r0, #0x10]
	mov     r7, r1
	mov     r5, r2
	str     r3, [sp, #0x18]
	cmp     r0, #0x4
	bcc     branch_223d780
	bl      ErrorHandling
.thumb
branch_223d780: @ 223d780 :thumb
	add     r1, sp, #0x20
	ldrh    r2, [r1, #0x10]
	mov     r1, #0x34
	ldr     r0, [pc, #0x60] @ 0x223d7e8, (=0x22417d8)
	mul     r1, r2
	add     r4, r0, r1
	ldr     r3, [r4, #0x14]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	bl      Function_200cc3c
	ldr     r1, [r4, #0x18]
	mov     r0, #0x0
	str     r5, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r1, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	mov     r1, #0x2
	mov     r2, r6
	mov     r3, r7
	bl      Function_200cdc4
	ldr     r3, [r4, #0x1c]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	bl      Function_200ce24
	ldr     r3, [r4, #0x20]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	mov     r2, r5
	str     r3, [sp, #0x4]
	bl      Function_200ce54
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223d7e6


.align 2


.word 0x22417d8 @ 0x223d7e8
.thumb
Function_223d7ec: @ 223d7ec :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x4
	bcc     branch_223d7fa
	bl      ErrorHandling
.thumb
branch_223d7fa: @ 223d7fa :thumb
	mov     r0, #0x34
	ldr     r1, [pc, #0x24] @ 0x223d824, (=0x22417d8)
	mul     r0, r4
	add     r4, r1, r0
	ldr     r1, [r4, #0x14]
	mov     r0, r5
	bl      Function_200d070
	ldr     r1, [r4, #0x18]
	mov     r0, r5
	bl      Function_200d080
	ldr     r1, [r4, #0x1c]
	mov     r0, r5
	bl      Function_200d090
	ldr     r1, [r4, #0x20]
	mov     r0, r5
	bl      Function_200d0a0
	pop     {r3-r5,pc}
@ 0x223d824

.word 0x22417d8 @ 0x223d824
.thumb
Function_223d828: @ 223d828 :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r5, r0
	mov     r6, r1
	cmp     r4, #0x4
	bcc     branch_223d838
	bl      ErrorHandling
.thumb
branch_223d838: @ 223d838 :thumb
	mov     r2, #0x34
	ldr     r3, [pc, #0x18] @ 0x223d854, (=0x22417d8)
	mul     r2, r4
	mov     r0, r5
	mov     r1, r6
	add     r2, r3, r2
	bl      Function_200ce6c
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_200d324
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x223d854

.word 0x22417d8 @ 0x223d854
.thumb
Function_223d858: @ 223d858 :thumb
	ldr     r3, [pc, #0x0] @ 0x223d85c, (=Function_200d0f4+1)
	bx      r3
@ 0x223d85c

.word Function_200d0f4+1 @ 0x223d85c
.thumb
Function_223d860: @ 223d860 :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	mov     r5, r3
	ldr     r6, [sp, #0x18]
	bl      Function_223d5a8
	mov     r4, r0
	add     r0, #0x26
	mov     r1, #0x0
	mov     r2, #0x10
	blx     MI_CpuFill8
	mov     r0, r4
	add     r0, #0x26
	mov     r2, #0x0
	strb    r7, [r0, #0x0]
	cmp     r6, #0x0
	ble     branch_223d894
	mov     r0, r2
.thumb
branch_223d886: @ 223d886 :thumb
	ldsh    r1, [r5, r0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	strh    r1, [r4, #0x28]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r2, r6
	blt     branch_223d886
.thumb
branch_223d894: @ 223d894 :thumb
	pop     {r3-r7,pc}
@ 0x223d896


.align 2, 0


.thumb
Function_223d898: @ 223d898 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r2, r4
	add     r2, #0x26
	ldrb    r2, [r2, #0x0]
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x18] @ 0x223d8c0, (=0x22418a8)
	ldr     r2, [r2, r3]
	cmp     r2, #0x0
	beq     branch_223d8be
	blx     r2
	cmp     r0, #0x1
	bne     branch_223d8be
	add     r4, #0x26
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x10
	blx     MI_CpuFill8
.thumb
branch_223d8be: @ 223d8be :thumb
	pop     {r4,pc}
@ 0x223d8c0

.word 0x22418a8 @ 0x223d8c0
.thumb
Function_223d8c4: @ 223d8c4 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      Function_209b9d0
	mov     r4, r0
	mov     r5, #0x0
.thumb
branch_223d8d0: @ 223d8d0 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223d8e4
	ldr     r0, [r4, #0x38]
	cmp     r0, #0x0
	bne     branch_223d8e4
	mov     r0, r6
	mov     r1, r4
	bl      Function_223d898
.thumb
branch_223d8e4: @ 223d8e4 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x3c
	cmp     r5, #0x20
	blt     branch_223d8d0
	pop     {r4-r6,pc}
@ 0x223d8ee


.align 2, 0


.thumb
Function_223d8f0: @ 223d8f0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r1
	mov     r4, r6
	add     r4, #0x26
	bl      Function_209b974
	mov     r5, r0
	mov     r0, #0x6
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_223d912
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0x6]
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223d912

.thumb
branch_223d912: @ 223d912 :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x3
	bhi     branch_223d9d4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223d924

Jumppoints_223d924:
.hword branch_223d92c - Jumppoints_223d924 - 2
.hword branch_223d992 - Jumppoints_223d924 - 2
.hword branch_223d992 - Jumppoints_223d924 - 2
.hword branch_223d992 - Jumppoints_223d924 - 2
.thumb
branch_223d92c: @ 223d92c :thumb
	mov     r0, #0x2
	ldsh    r1, [r4, r0]
	cmp     r1, #0x3
	bhi     branch_223d97c
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223d940

Jumppoints_223d940:
.hword branch_223d948 - Jumppoints_223d940 - 2
.hword branch_223d948 - Jumppoints_223d940 - 2
.hword branch_223d960 - Jumppoints_223d940 - 2
.hword branch_223d960 - Jumppoints_223d940 - 2
.thumb
branch_223d948: @ 223d948 :thumb
	mov     r1, #0x4
	ldsh    r1, [r4, r1]
	cmp     r1, #0x0
	bne     branch_223d958
	strh    r0, [r4, #0x8]
	mov     r0, #0x3
	strh    r0, [r4, #0xa]
	b       branch_223d986
@ 0x223d958

.thumb
branch_223d958: @ 223d958 :thumb
	mov     r1, #0x3
	strh    r1, [r4, #0x8]
	strh    r0, [r4, #0xa]
	b       branch_223d986
@ 0x223d960

.thumb
branch_223d960: @ 223d960 :thumb
	mov     r0, #0x4
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223d972
	mov     r0, #0x0
	strh    r0, [r4, #0x8]
	mov     r0, #0x1
	strh    r0, [r4, #0xa]
	b       branch_223d986
@ 0x223d972

.thumb
branch_223d972: @ 223d972 :thumb
	mov     r0, #0x1
	strh    r0, [r4, #0x8]
	mov     r0, #0x0
	strh    r0, [r4, #0xa]
	b       branch_223d986
@ 0x223d97c

.thumb
branch_223d97c: @ 223d97c :thumb
	bl      ErrorHandling
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x223d986

.thumb
branch_223d986: @ 223d986 :thumb
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	strh    r0, [r4, #0xc]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
.thumb
branch_223d992: @ 223d992 :thumb
	ldrb    r3, [r4, #0x1]
	ldr     r1, [r6, #0x0]
	ldrh    r2, [r6, #0xc]
	.hword  0x1c9b @ add r3, r3, #0x2
	lsl     r3, r3, #1
	add     r6, r4, r3
	mov     r3, #0x2
	ldsh    r3, [r6, r3]
	add     r0, sp, #0x0
	bl      Function_2232c80
	ldr     r0, [r5, #0x30]
	add     r1, sp, #0x0
	bl      0x222d7c8
	ldrb    r1, [r4, #0x1]
	mov     r0, #0x2
	ldsh    r2, [r4, r0]
	.hword  0x1c89 @ add r1, r1, #0x2
	lsl     r1, r1, #1
	add     r1, r4, r1
	ldsh    r0, [r1, r0]
	cmp     r2, r0
	bne     branch_223d9ca
	mov     r0, #0x2d
	strh    r0, [r4, #0x6]
	mov     r0, #0x1
	b       branch_223d9da
@ 0x223d9ca

.thumb
branch_223d9ca: @ 223d9ca :thumb
	mov     r0, #0x1e
	strh    r0, [r4, #0x6]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	b       branch_223d9da
@ 0x223d9d4

.thumb
branch_223d9d4: @ 223d9d4 :thumb
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x223d9da

.thumb
branch_223d9da: @ 223d9da :thumb
	strb    r0, [r4, #0x1]
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x223d9e2


.align 2, 0


.thumb
Function_223d9e4: @ 223d9e4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x5e
	mov     r1, #0xc
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0xc
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r0, r5
	bl      Function_223da40
	str     r0, [r4, #0x0]
	mov     r0, r6
	bl      Function_223dbb8
	str     r0, [r4, #0x4]
	mov     r0, #0x9
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x10] @ 0x223da24, (=REG_BLDCNT)
	mov     r1, #0x4
	mov     r2, #0x1f
	mov     r3, #0x8
	blx     G2x_SetBlendAlpha_
	mov     r0, r4
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223da24

.word REG_BLDCNT @ 0x223da24
.thumb
Function_223da28: @ 223da28 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_223db34
	ldr     r0, [r4, #0x4]
	bl      Function_223dc04
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x223da40

.thumb
Function_223da40: @ 223da40 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	ldr     r1, [pc, #0xd4] @ 0x223db1c, (=0x2200c)
	mov     r4, r0
	mov     r0, #0x5e
	bl      malloc
	ldr     r2, [pc, #0xcc] @ 0x223db1c, (=0x2200c)
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x8]
	mov     r1, #0x5e
	str     r4, [r0, #0x4]
	mov     r0, #FrontierBg_Narc
	bl      LoadFromNARC_8
	ldr     r5, [sp, #0x8]
	ldr     r4, [pc, #0xb8] @ 0x223db20, (=0x22418b0)
	str     r0, [sp, #0x4]
	mov     r6, #0x0
	add     r5, #0x8
branch_223da6e: @ 223da6e :thumb
	mov     r0, #0x5e
	str     r0, [sp, #0x0]
	ldrh    r1, [r4, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r2, #0x1
	add     r3, sp, #0x10
	bl      Function_20071d0
	mov     r7, r0
	ldr     r0, [sp, #0x10]
	mov     r2, #0x1
	add     r0, #0xc
	mov     r1, r5
	lsl     r2, r2, #12
	blx     MI_CpuCopy32
	mov     r0, r7
	bl      free
	mov     r0, #0x1
	lsl     r0, r0, #12
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	add     r5, r5, r0
	cmp     r6, #0x2
	blt     branch_223da6e
	ldr     r0, [sp, #0x4]
	bl      Call_FS_CloseFile

	mov     r0, #FrontierBg_Narc
	mov     r1, #0x5e
	bl      LoadFromNARC_8
	mov     r1, #0x5e
	str     r1, [sp, #0x0]
	mov     r1, #0xe
	mov     r2, #0x1
	add     r3, sp, #0xc
	mov     r4, r0
	bl      Function_20071b4
	ldr     r3, [sp, #0xc]
	mov     r5, r0
	ldr     r2, [pc, #0x5c] @ 0x223db24, (=0x2008)
	ldr     r1, [sp, #0x8]
	ldr     r0, [r3, #0x14]
	add     r1, r1, r2
	ldr     r2, [r3, #0x10]
	blx     MI_CpuCopy32
	mov     r0, r5
	bl      free
	mov     r0, #0x5e
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0xf
	mov     r2, #0x1
	add     r3, sp, #0xc
	bl      Function_20071b4
	ldr     r3, [sp, #0xc]
	mov     r5, r0
	ldr     r2, [pc, #0x38] @ 0x223db28, (=0x12008)
	ldr     r1, [sp, #0x8]
	ldr     r0, [r3, #0x14]
	add     r1, r1, r2
	ldr     r2, [r3, #0x10]
	blx     MI_CpuCopy32
	mov     r0, r5
	bl      free
	mov     r0, r4
	bl      Call_FS_CloseFile
	ldr     r0, [pc, #0x24] @ 0x223db2c, (=0x223db49)
	ldr     r1, [sp, #0x8]
	ldr     r2, [pc, #0x24] @ 0x223db30, (=0x1368c)
	bl      AddTaskToTaskList1
	ldr     r1, [sp, #0x8]
	str     r0, [r1, #0x0]
	mov     r0, r1
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223db1a


.align 2


.word 0x2200c @ 0x223db1c
.word 0x22418b0 @ 0x223db20
.word 0x2008 @ 0x223db24
.word 0x12008 @ 0x223db28
.word 0x223db49 @ 0x223db2c
.word 0x1368c @ 0x223db30
.thumb
Function_223db34: @ 223db34 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x223db46


.align 2, 0


.thumb
Function_223db48: @ 223db48 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r3, [pc, #0x5c] @ 0x223dbac, (=0x22008)
	mov     r4, r1
	ldrb    r0, [r4, r3]
	cmp     r0, #0xc
	bcs     branch_223db5e
	.hword  0x1c40 @ add r0, r0, #0x1
	add     sp, #0x4
	strb    r0, [r4, r3]
	pop     {r3,r4,pc}
@ 0x223db5e

.thumb
branch_223db5e: @ 223db5e :thumb
	mov     r0, #0x0
	strb    r0, [r4, r3]
	str     r0, [sp, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	ldrb    r3, [r4, r3]
	ldr     r2, [pc, #0x44] @ 0x223dbb0, (=0x2008)
	ldr     r0, [r4, #0x4]
	add     r2, r4, r2
	lsl     r3, r3, #16
	add     r2, r2, r3
	mov     r3, #0x1
	mov     r1, #0x3
	lsl     r3, r3, #16
	bl      Function_201958c
	ldr     r2, [pc, #0x34] @ 0x223dbb4, (=0x22009)
	mov     r3, r4
	ldrb    r2, [r4, r2]
	add     r3, #0x8
	ldr     r0, [r4, #0x4]
	lsl     r2, r2, #12
	add     r2, r3, r2
	mov     r3, #0x1
	mov     r1, #0x3
	lsl     r3, r3, #12
	bl      Function_2019574
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	bl      Function_201c3c0
	ldr     r1, [pc, #0x14] @ 0x223dbb4, (=0x22009)
	mov     r0, #0x1
	ldrb    r2, [r4, r1]
	eor     r0, r2
	strb    r0, [r4, r1]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223dbaa


.align 2


.word 0x22008 @ 0x223dbac
.word 0x2008 @ 0x223dbb0
.word 0x22009 @ 0x223dbb4
.thumb
Function_223dbb8: @ 223dbb8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x5e
	mov     r1, #0x6c
	bl      malloc
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x6c
	blx     MI_CpuFill8
	mov     r0, r4
	str     r5, [r4, #0x4]
	mov     r1, #0x2
	add     r0, #0x68
	strb    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2003164
	mov     r1, r4
	add     r0, #0xa0
	add     r1, #0x8
	mov     r2, #0x60
	blx     MIi_CpuCopy16
	ldr     r0, [pc, #0xc] @ 0x223dbfc, (=0x223dc19)
	ldr     r2, [pc, #0x10] @ 0x223dc00, (=0x1368d)
	mov     r1, r4
	bl      AddTaskToTaskList1
	str     r0, [r4, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223dbfc

.word 0x223dc19 @ 0x223dbfc
.word 0x1368d @ 0x223dc00
.thumb
Function_223dc04: @ 223dc04 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x223dc16


.align 2, 0


.thumb
Function_223dc18: @ 223dc18 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	mov     r0, r4
	add     r0, #0x69
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x8
	bcs     branch_223dc38
	mov     r0, r4
	add     r0, #0x69
	ldrb    r0, [r0, #0x0]
	add     r4, #0x69
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	pop     {r3,r4,pc}
@ 0x223dc38

.thumb
branch_223dc38: @ 223dc38 :thumb
	mov     r0, r4
	mov     r2, #0x0
	add     r0, #0x69
	strb    r2, [r0, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	add     r1, #0x68
	ldrb    r1, [r1, #0x0]
	mov     r3, r4
	ldr     r0, [r4, #0x4]
	add     r3, #0x8
	lsl     r1, r1, #5
	add     r1, r3, r1
	mov     r3, #0x60
	bl      Function_2002fbc
	mov     r0, r4
	add     r0, #0x68
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x68
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x68
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x3
	bcc     branch_223dc76
	mov     r0, #0x0
	add     r4, #0x68
	strb    r0, [r4, #0x0]
.thumb
branch_223dc76: @ 223dc76 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223dc7a


.align 2, 0


.thumb
Function_223dc7c: @ 223dc7c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r7, r2
	mov     r1, #0x5a
	mov     r2, #0xfa
	str     r3, [sp, #0x0]
	ldr     r0, [pc, #0x98] @ 0x223dd24, (=0x223ddb5)
	lsl     r1, r1, #2
	lsl     r2, r2, #2
	mov     r3, #0x5e
	bl      Function_200679c
	bl      Function_201ced0
	mov     r4, r0
	str     r5, [r4, #0x10]
	ldr     r0, [sp, #0x0]
	str     r7, [r4, #0x14]
	str     r0, [r4, #0x18]
	ldr     r0, [sp, #0x18]
	add     r1, sp, #0x8
	str     r0, [r4, #0x1c]
	ldr     r0, [sp, #0x1c]
	str     r0, [r4, #0x20]
	mov     r0, #0x18
	ldsh    r0, [r1, r0]
	strh    r0, [r4, #0x28]
	mov     r0, #0x1c
	ldsh    r0, [r1, r0]
	mov     r1, #0x5e
	strh    r0, [r4, #0x2a]

	mov     r0, #FieldEncounteffect_Narc
	bl      LoadFromNARC_8
	str     r0, [r4, #0x24]
	ldr     r1, [r4, #0x20]
	cmp     r1, #0x0
	beq     branch_223dcce
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
branch_223dcce: @ 223dcce :thumb
	mov     r0, r4
	sub     r1, r6, #0x1
	add     r0, #0x2c
	strb    r1, [r0, #0x0]
	mov     r0, #0x1
	bl      Function_2019f28
	mov     r2, #0x2
	mov     r1, r0
	mov     r0, #0x0
	lsl     r2, r2, #14
	blx     MIi_CpuClear32
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_201c63c
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_201c63c
	mov     r1, r4
	add     r1, #0x2c
	ldrb    r2, [r1, #0x0]
	mov     r1, #0xc
	ldr     r3, [pc, #0x1c] @ 0x223dd28, (=0x224191c)
	mul     r1, r2
	mov     r0, r4
	add     r1, r3, r1
	bl      Function_223e5a8
	ldr     r0, [pc, #0x14] @ 0x223dd2c, (=0x223dd5d)
	mov     r1, r4
	mov     r2, #0x1
	bl      AddTaskToTaskList3
	str     r0, [r4, #0x34]
	pop     {r3-r7,pc}
@ 0x223dd22


.align 2


.word 0x223ddb5 @ 0x223dd24
.word 0x224191c @ 0x223dd28
.word 0x223dd5d @ 0x223dd2c
.thumb
Function_223dd30: @ 223dd30 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r4, r1
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r5, #0x34]
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r5, #0x24]
	bl      Call_FS_CloseFile
	ldr     r1, [r5, #0xc]
	mov     r0, #0x5e
	bl      Function_2018238
	mov     r0, r4
	bl      Function_20067d0
	pop     {r3-r5,pc}
@ 0x223dd5c

.thumb
Function_223dd5c: @ 223dd5c :thumb
	push    {r3-r6}
	mov     r0, r1
	ldr     r1, [pc, #0x48] @ 0x223ddac, (=0x151)
	.hword  0x1e8a @ sub r2, r1, #0x2
	ldrb    r3, [r0, r2]
	.hword  0x1eca @ sub r2, r1, #0x3
	ldrb    r2, [r0, r2]
	ldrb    r4, [r0, r1]
	lsl     r3, r3, #8
	lsl     r5, r2, #8
	mov     r6, r5
	.hword  0x1e4d @ sub r5, r1, #0x1
	mov     r2, #0xff
	lsl     r2, r2, #8
	and     r3, r2
	ldrb    r5, [r0, r5]
	and     r6, r2
	orr     r3, r4
	orr     r5, r6
	ldr     r6, [pc, #0x2c] @ 0x223ddb0, (=WIN0_X1)
	strh    r5, [r6, #0x0]
	strh    r3, [r6, #0x4]
	add     r3, r1, #0x4
	ldrb    r5, [r0, r3]
	add     r3, r1, #0x2
	ldrb    r4, [r0, r3]
	add     r3, r1, #0x1
	ldrb    r3, [r0, r3]
	.hword  0x1cc9 @ add r1, r1, #0x3
	ldrb    r0, [r0, r1]
	lsl     r3, r3, #8
	and     r3, r2
	orr     r0, r3
	strh    r0, [r6, #0x2]
	lsl     r0, r4, #8
	and     r0, r2
	orr     r0, r5
	strh    r0, [r6, #0x6]
	pop     {r3-r6}
	bx      lr
@ 0x223ddac

.word 0x151 @ 0x223ddac
.word WIN0_X1 @ 0x223ddb0
.thumb
Function_223ddb4: @ 223ddb4 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r3, r4
	add     r3, #0x2c
	ldrb    r6, [r3, #0x0]
	mov     r3, #0xc
	ldr     r2, [pc, #0x1c] @ 0x223dde0, (=0x224191c)
	mul     r3, r6
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x5e
	add     r2, r2, r3
	bl      Function_223dde4
	cmp     r0, #0x1
	bne     branch_223dddc
	mov     r0, r4
	mov     r1, r5
	bl      Function_223dd30
.thumb
branch_223dddc: @ 223dddc :thumb
	pop     {r4-r6,pc}
@ 0x223ddde


.align 2


.word 0x224191c @ 0x223dde0
.thumb
Function_223dde4: @ 223dde4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r4, r0
	mov     r6, r1
	ldr     r1, [r4, #0x0]
	mov     r7, r2
	ldr     r5, [r4, #0xc]
	cmp     r1, #0x12
	bls     branch_223ddf8
	b       branch_223e290
@ 0x223ddf8

.thumb
branch_223ddf8: @ 223ddf8 :thumb
	add     r2, r1, r1
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x223de04

Jumppoints_223de04:
.hword branch_223de2a - Jumppoints_223de04 - 2
.hword branch_223e080 - Jumppoints_223de04 - 2
.hword branch_223e09e - Jumppoints_223de04 - 2
.hword branch_223e0ae - Jumppoints_223de04 - 2
.hword branch_223e0c8 - Jumppoints_223de04 - 2
.hword branch_223e0d8 - Jumppoints_223de04 - 2
.hword branch_223e0e6 - Jumppoints_223de04 - 2
.hword branch_223e0fa - Jumppoints_223de04 - 2
.hword branch_223e116 - Jumppoints_223de04 - 2
.hword branch_223e11c - Jumppoints_223de04 - 2
.hword branch_223e134 - Jumppoints_223de04 - 2
.hword branch_223e140 - Jumppoints_223de04 - 2
.hword branch_223e164 - Jumppoints_223de04 - 2
.hword branch_223e1ea - Jumppoints_223de04 - 2
.hword branch_223e204 - Jumppoints_223de04 - 2
.hword branch_223e218 - Jumppoints_223de04 - 2
.hword branch_223e228 - Jumppoints_223de04 - 2
.hword branch_223e248 - Jumppoints_223de04 - 2
.hword branch_223e258 - Jumppoints_223de04 - 2
.thumb
branch_223de2a: @ 223de2a :thumb
	mov     r0, r6
	mov     r1, #0x94
	bl      malloc
	str     r0, [r4, #0xc]
	mov     r1, #0x0
	mov     r2, #0x94
	blx     Call_FillMemWithValue
	ldr     r5, [r4, #0xc]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x328] @ 0x223e17c, (=0x7d4)
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x1c]
	ldr     r2, [r4, #0x14]
	ldr     r3, [r4, #0x18]
	bl      Function_200cdc4
	mov     r3, #0x59
	mov     r1, r0
	lsl     r3, r3, #2
	mov     r2, #0x1
	lsl     r2, r1
	ldr     r0, [r4, r3]
	mov     r1, #0x5e
	orr     r0, r2
	str     r0, [r4, r3]
	mov     r0, #0x4
	bl      Function_2012744
	str     r0, [r4, #0x30]
	ldr     r2, [pc, #0x304] @ 0x223e180, (=0x26a)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, r6
	bl      LoadFromNARC_9
	ldr     r1, [r7, #0x0]
	str     r0, [sp, #0x20]
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x24]
	ldr     r0, [pc, #0x2f0] @ 0x223e184, (=0x10200)
	mov     r1, r5
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	ldr     r0, [pc, #0x2e0] @ 0x223e17c, (=0x7d4)
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x28
	ldsh    r0, [r4, r0]
	ldr     r2, [sp, #0x24]
	add     r1, #0x7c
	add     r0, #0x74
	str     r0, [sp, #0xc]
	mov     r0, #0x2a
	ldsh    r0, [r4, r0]
	add     r0, #0x58
	str     r0, [sp, #0x10]
	str     r3, [sp, #0x14]
	str     r3, [sp, #0x18]
	mov     r0, r4
	bl      Function_223e29c
	ldr     r0, [r5, #0x7c]
	mov     r1, #0x0
	bl      Function_20129d0
	ldr     r0, [sp, #0x24]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x20]
	bl      Function_200b190
	ldr     r0, [r4, #0x24]
	mov     r1, #0x2
	str     r0, [sp, #0x0]
	ldrb    r0, [r7, #0x4]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x2a0] @ 0x223e188, (=0x7d2)
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x1c]
	ldr     r2, [r4, #0x14]
	ldr     r3, [r4, #0x18]
	bl      Function_200cdc4
	mov     r3, #0x16
	lsl     r3, r3, #4
	str     r0, [r4, r3]
	add     r0, r3, #0x4
	ldr     r2, [r4, r3]
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	lsl     r1, r2
	orr     r1, r0
	add     r0, r3, #0x4
	str     r1, [r4, r0]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x278] @ 0x223e18c, (=0x7da)
	str     r0, [sp, #0x8]
	ldrb    r3, [r7, #0x5]
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x18]
	ldr     r2, [r4, #0x24]
	bl      Function_200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x260] @ 0x223e188, (=0x7d2)
	str     r0, [sp, #0x4]
	ldrb    r3, [r7, #0x6]
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x18]
	ldr     r2, [r4, #0x24]
	bl      Function_200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x24c] @ 0x223e188, (=0x7d2)
	str     r0, [sp, #0x4]
	ldrb    r3, [r7, #0x7]
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x18]
	ldr     r2, [r4, #0x24]
	bl      Function_200ce54
	mov     r0, #0xe
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r2, #0x16
	str     r0, [sp, #0x4]
	lsl     r2, r2, #4
	ldr     r2, [r4, r2]
	ldr     r0, [r4, #0x1c]
	lsl     r2, r2, #20
	mov     r1, #0x2
	lsr     r2, r2, #16
	mov     r3, #0x10
	bl      Function_20039b0
	ldr     r0, [r4, #0x24]
	mov     r1, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x33
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x214] @ 0x223e190, (=0x7d3)
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x1c]
	ldr     r2, [r4, #0x14]
	ldr     r3, [r4, #0x18]
	bl      Function_200cdc4
	mov     r3, r0
	mov     r7, #0x59
	mov     r0, #0x1
	lsl     r7, r7, #2
	mov     r1, r0
	lsl     r1, r3
	ldr     r2, [r4, r7]
	mov     r3, #0x90
	orr     r1, r2
	str     r1, [r4, r7]
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1f0] @ 0x223e194, (=0x7db)
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x18]
	ldr     r2, [r4, #0x24]
	bl      Function_200cc3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1dc] @ 0x223e190, (=0x7d3)
	mov     r3, #0x91
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x18]
	ldr     r2, [r4, #0x24]
	bl      Function_200ce24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c8] @ 0x223e190, (=0x7d3)
	mov     r3, #0x92
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x18]
	ldr     r2, [r4, #0x24]
	bl      Function_200ce54
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x18]
	ldr     r2, [pc, #0x1bc] @ 0x223e198, (=0x22418b4)
	bl      Function_200ce6c
	mov     r1, r5
	add     r1, #0x90
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_200d3f4
	mov     r0, r5
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_200d324
	mov     r0, #0x2a
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_223e01a
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	str     r0, [sp, #0x1c]
	b       branch_223e02a
@ 0x223e01a

.thumb
branch_223e01a: @ 223e01a :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
	str     r0, [sp, #0x1c]
.thumb
branch_223e02a: @ 223e02a :thumb
	mov     r0, #0x28
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_223e044
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_223e052
@ 0x223e044

.thumb
branch_223e044: @ 223e044 :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_223e052: @ 223e052 :thumb
	blx     _ffix
	mov     r7, r0
	ldr     r0, [sp, #0x1c]
	blx     _ffix
	add     r5, #0x14
	mov     r1, r5
	mov     r2, #0x12
	mov     r5, #0x52
	mov     r3, r0
	lsl     r2, r2, #14
	lsl     r5, r5, #12
	str     r6, [sp, #0x0]
	mov     r0, r4
	add     r2, r7, r2
	add     r3, r3, r5
	bl      Function_223e3fc
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e290
@ 0x223e080

.thumb
branch_223e080: @ 223e080 :thumb
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	ldr     r3, [pc, #0x110] @ 0x223e19c, (=0x7fff)
	str     r6, [sp, #0x8]
	mov     r1, r0
	mov     r2, r0
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e290
@ 0x223e09e

.thumb
branch_223e09e: @ 223e09e :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_223e16c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e290
@ 0x223e0ae

.thumb
branch_223e0ae: @ 223e0ae :thumb
	mov     r0, #0x3
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r3, [pc, #0xe4] @ 0x223e19c, (=0x7fff)
	str     r6, [sp, #0x8]
	mov     r2, r1
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e290
@ 0x223e0c8

.thumb
branch_223e0c8: @ 223e0c8 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_223e16c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e290
@ 0x223e0d8

.thumb
branch_223e0d8: @ 223e0d8 :thumb
	mov     r1, #0x0
	bl      Function_223e6f0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e290
@ 0x223e0e6

.thumb
branch_223e0e6: @ 223e0e6 :thumb
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldrb    r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_223e16c
	add     r0, r1, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0xa
	str     r0, [r5, #0x78]
	b       branch_223e290
@ 0x223e0fa

.thumb
branch_223e0fa: @ 223e0fa :thumb
	ldr     r0, [r5, #0x78]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x78]
	bpl     branch_223e16c
	add     r5, #0x14
	mov     r0, r5
	bl      Function_223e4a4
	cmp     r0, #0x1
	bne     branch_223e16c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e290
@ 0x223e116

.thumb
branch_223e116: @ 223e116 :thumb
	add     r0, r1, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e290
@ 0x223e11c

.thumb
branch_223e11c: @ 223e11c :thumb
	mov     r2, #0x56
	lsl     r2, r2, #2
	mov     r1, r5
	add     r2, r4, r2
	bl      Function_223e804
	cmp     r0, #0x1
	bne     branch_223e16c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e290
@ 0x223e134

.thumb
branch_223e134: @ 223e134 :thumb
	mov     r0, #0xa
	str     r0, [r5, #0x78]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e290
@ 0x223e140

.thumb
branch_223e140: @ 223e140 :thumb
	ldr     r0, [r5, #0x78]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x78]
	bpl     branch_223e16c
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	ldr     r3, [pc, #0x48] @ 0x223e19c, (=0x7fff)
	str     r6, [sp, #0x8]
	mov     r2, r1
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e290
@ 0x223e164

.thumb
branch_223e164: @ 223e164 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	bne     branch_223e16e
.thumb
branch_223e16c: @ 223e16c :thumb
	b       branch_223e290
@ 0x223e16e

.thumb
branch_223e16e: @ 223e16e :thumb
	mov     r0, #0x0
	mov     r2, #0x59
	str     r0, [sp, #0x0]
	lsl     r2, r2, #2
	ldr     r3, [r4, r2]
	ldr     r2, [pc, #0x24] @ 0x223e1a0, (=0x3fff)
	b       branch_223e1a4
@ 0x223e17c

.word 0x7d4 @ 0x223e17c
.word 0x26a @ 0x223e180
.word 0x10200 @ 0x223e184
.word 0x7d2 @ 0x223e188
.word 0x7da @ 0x223e18c
.word 0x7d3 @ 0x223e190
.word 0x7db @ 0x223e194
.word 0x22418b4 @ 0x223e198
.word 0x7fff @ 0x223e19c
.word 0x3fff @ 0x223e1a0
.thumb
branch_223e1a4: @ 223e1a4 :thumb
	ldr     r0, [r4, #0x1c]
	eor     r2, r3
	lsl     r2, r2, #16
	mov     r1, #0x2
	lsr     r2, r2, #16
	mov     r3, #0xe
	bl      Function_2003a2c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r2, #0x16
	str     r0, [sp, #0x4]
	lsl     r2, r2, #4
	ldr     r2, [r4, r2]
	ldr     r0, [r4, #0x1c]
	lsl     r2, r2, #20
	mov     r1, #0x2
	lsr     r2, r2, #16
	mov     r3, #0x10
	bl      Function_20039b0
	mov     r0, #0xd
	mvn     r0, r0
	mov     r1, #0x2c
	mov     r2, #0x1
	bl      Function_200ab4c
	ldr     r0, [r5, #0x7c]
	mov     r1, #0x1
	bl      Function_20129d0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e290
@ 0x223e1ea

.thumb
branch_223e1ea: @ 223e1ea :thumb
	mov     r0, #0x3
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r3, [pc, #0xa4] @ 0x223e298, (=0x7fff)
	str     r6, [sp, #0x8]
	mov     r2, r1
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e290
@ 0x223e204

.thumb
branch_223e204: @ 223e204 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_223e290
	mov     r0, #0x1a
	str     r0, [r5, #0x78]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e290
@ 0x223e218

.thumb
branch_223e218: @ 223e218 :thumb
	ldr     r0, [r5, #0x78]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x78]
	bpl     branch_223e290
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e290
@ 0x223e228

.thumb
branch_223e228: @ 223e228 :thumb
	mov     r0, #0xf
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x5e
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x60] @ 0x223e298, (=0x7fff)
	mov     r0, #0x3
	mov     r2, r1
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e290
@ 0x223e248

.thumb
branch_223e248: @ 223e248 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_223e290
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e290
@ 0x223e258

.thumb
branch_223e258: @ 223e258 :thumb
	ldr     r1, [pc, #0x3c] @ 0x223e298, (=0x7fff)
	mov     r0, #0x1
	bl      SetBrightnessWithValue
	ldr     r1, [r4, #0x20]
	cmp     r1, #0x0
	beq     branch_223e26a
	mov     r0, #0x1
	strh    r0, [r1, #0x0]
.thumb
branch_223e26a: @ 223e26a :thumb
	mov     r0, r5
	add     r0, #0x7c
	bl      Function_223e3b8
	ldr     r0, [r4, #0x30]
	bl      Function_20127bc
	mov     r0, r5
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	bl      Function_200d0f4
	add     r5, #0x14
	mov     r0, r5
	bl      Function_223e48c
	add     sp, #0x28
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223e290

.thumb
branch_223e290: @ 223e290 :thumb
	mov     r0, #0x0
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x223e296

.align 2
.word 0x7fff @ 0x223e298



.thumb
Function_223e29c: @ 223e29c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x7c
	mov     r5, r1
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	str     r2, [sp, #0x18]
	str     r3, [sp, #0x1c]
	ldr     r6, [sp, #0x9c]
	ldr     r4, [sp, #0xa8]
	cmp     r0, #0x0
	beq     branch_223e2b6
	bl      ErrorHandling
.thumb
branch_223e2b6: @ 223e2b6 :thumb
	ldr     r0, [r7, #0x10]
	cmp     r4, #0x0
	str     r0, [sp, #0x24]
	ldr     r0, [r7, #0x18]
	str     r0, [sp, #0x20]
	bne     branch_223e2d0
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	add     r2, sp, #0x2c
	add     r3, sp, #0x28
	bl      Function_223e3cc
	b       branch_223e2d8
@ 0x223e2d0

.thumb
branch_223e2d0: @ 223e2d0 :thumb
	ldrh    r0, [r4, #0x12]
	str     r0, [sp, #0x2c]
	ldrh    r0, [r4, #0x10]
	str     r0, [sp, #0x28]
.thumb
branch_223e2d8: @ 223e2d8 :thumb
	cmp     r4, #0x0
	bne     branch_223e316
	add     r0, sp, #0x3c
	bl      Function_201a7a0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x28]
	ldr     r0, [sp, #0x24]
	lsl     r2, r2, #24
	add     r1, sp, #0x3c
	lsr     r2, r2, #24
	mov     r3, #0x2
	bl      Function_201a870
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x90]
	ldr     r1, [sp, #0x1c]
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	str     r3, [sp, #0x10]
	ldr     r2, [sp, #0x18]
	add     r0, sp, #0x3c
	str     r3, [sp, #0x14]
	bl      Function_201d7e0
	b       branch_223e322
@ 0x223e316

.thumb
branch_223e316: @ 223e316 :thumb
	mov     r3, r4
	add     r2, sp, #0x3c
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
.thumb
branch_223e322: @ 223e322 :thumb
	add     r0, sp, #0x3c
	mov     r1, #0x1
	mov     r2, #0x5e
	bl      Function_2012898
	mov     r1, #0x1
	mov     r2, r1
	add     r3, sp, #0x30
	bl      Function_201ed94
	ldr     r0, [sp, #0xa4]
	cmp     r0, #0x1
	bne     branch_223e346
	ldr     r1, [sp, #0x2c]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	sub     r6, r6, r0
.thumb
branch_223e346: @ 223e346 :thumb
	ldr     r0, [r7, #0x30]
	str     r0, [sp, #0x4c]
	add     r0, sp, #0x3c
	str     r0, [sp, #0x50]
	ldr     r0, [sp, #0x20]
	bl      Function_200d9b0
	str     r0, [sp, #0x54]
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x98]
	bl      Function_200d04c
	mov     r1, #0x0
	str     r0, [sp, #0x58]
	ldr     r0, [sp, #0x34]
	str     r1, [sp, #0x5c]
	str     r0, [sp, #0x60]
	ldr     r0, [sp, #0xa0]
	str     r6, [sp, #0x64]
	sub     r0, #0x8
	str     r0, [sp, #0x68]
	mov     r0, #0xb
	str     r0, [sp, #0x70]
	mov     r0, #0x1
	str     r0, [sp, #0x74]
	mov     r0, #0x5e
	str     r0, [sp, #0x78]
	add     r0, sp, #0x4c
	str     r1, [sp, #0x6c]
	bl      Function_20127e8
	ldr     r1, [sp, #0x94]
	mov     r7, r0
	bl      Function_2012ac0
	ldr     r2, [sp, #0xa0]
	mov     r0, r7
	mov     r1, r6
	sub     r2, #0x8
	bl      Function_20128c4
	cmp     r4, #0x0
	bne     branch_223e3a2
	add     r0, sp, #0x3c
	bl      Function_201a8fc
.thumb
branch_223e3a2: @ 223e3a2 :thumb
	str     r7, [r5, #0x0]
	add     r3, sp, #0x30
	ldmia   r3!, {r0,r1}
	add     r2, r5, #0x4
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x2c]
	strh    r0, [r5, #0x10]
	add     sp, #0x7c
	pop     {r4-r7,pc}
@ 0x223e3b8

.thumb
Function_223e3b8: @ 223e3b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2012870
	add     r0, r4, #0x4
	bl      Function_201ee28
	pop     {r4,pc}
@ 0x223e3ca


.align 2, 0


.thumb
Function_223e3cc: @ 223e3cc :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r6, r2
	mov     r0, r1
	mov     r1, r4
	mov     r2, #0x0
	mov     r7, r3
	bl      Function_2002d7c
	mov     r4, r0
	asr     r1, r4, #2
	lsr     r1, r1, #29
	add     r1, r4, r1
	asr     r5, r1, #3
	mov     r1, #0x8
	blx     Function_20bd140
	cmp     r0, #0x0
	beq     branch_223e3f4
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_223e3f4: @ 223e3f4 :thumb
	str     r4, [r6, #0x0]
	str     r5, [r7, #0x0]
	pop     {r3-r7,pc}
@ 0x223e3fa


.align 2, 0


.thumb
Function_223e3fc: @ 223e3fc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r6, r3
	mov     r12, r2
	ldr     r3, [pc, #0x80] @ 0x223e488, (=0x22418e8)
	mov     r7, r0
	mov     r4, r1
	add     r2, sp, #0x0
	mov     r5, #0x6
.thumb
branch_223e40e: @ 223e40e :thumb
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	.hword  0x1e6d @ sub r5, r5, #0x1
	bne     branch_223e40e
	ldr     r0, [r3, #0x0]
	mov     r5, r4
	str     r0, [r2, #0x0]
	mov     r0, r12
	asr     r1, r0, #12
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	asr     r1, r6, #12
	strh    r1, [r0, #0x2]
	mov     r6, #0x0
	strh    r6, [r4, #0x0]
	strh    r6, [r4, #0x2]
	add     r5, #0x14
.thumb
branch_223e430: @ 223e430 :thumb
	ldr     r0, [r7, #0x14]
	ldr     r1, [r7, #0x18]
	add     r2, sp, #0x0
	bl      Function_200ce6c
	mov     r1, #0x0
	str     r0, [r4, #0x4]
	bl      Function_200d3f4
	cmp     r6, #0x3
	beq     branch_223e46a
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	ldr     r0, [r0, #0x0]
	bl      Function_2021cf8
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2021d6c
	mov     r1, #0x2
	lsl     r1, r1, #12
	mov     r0, r5
	lsr     r2, r1, #1
	mov     r3, #0x6
	bl      Function_223e534
	b       branch_223e478
@ 0x223e46a

.thumb
branch_223e46a: @ 223e46a :thumb
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r5
	mov     r2, r1
	mov     r3, #0x6
	bl      Function_223e534
.thumb
branch_223e478: @ 223e478 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x14
	cmp     r6, #0x4
	blt     branch_223e430
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x223e486


.align 2


.word 0x22418e8 @ 0x223e488
.thumb
Function_223e48c: @ 223e48c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_223e492: @ 223e492 :thumb
	ldr     r0, [r5, #0x4]
	bl      Function_200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_223e492
	pop     {r3-r5,pc}
@ 0x223e4a2


.align 2, 0


.thumb
Function_223e4a4: @ 223e4a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r0
	mov     r0, #0x1
	mov     r1, #0x2
	str     r0, [sp, #0x0]
	ldsh    r0, [r7, r1]
	cmp     r0, #0x4
	bge     branch_223e4d2
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldsh    r0, [r7, r0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r7, #0x0]
	ldr     r0, [sp, #0x0]
	ldsh    r0, [r7, r0]
	cmp     r0, #0x0
	bgt     branch_223e4d2
	mov     r0, #0x3
	strh    r0, [r7, #0x0]
	ldsh    r0, [r7, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r7, #0x2]
.thumb
branch_223e4d2: @ 223e4d2 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	ldsh    r0, [r7, r0]
	cmp     r0, #0x0
	ble     branch_223e52e
	mov     r6, r7
	add     r6, #0x14
	mov     r4, r7
	mov     r5, r7
.thumb
branch_223e4e6: @ 223e4e6 :thumb
	mov     r0, r6
	bl      Function_223e544
	ldr     r1, [r4, #0x14]
	str     r0, [sp, #0x8]
	add     r0, sp, #0xc
	mov     r2, r1
	mov     r3, r1
	bl      Function_223e58c
	ldr     r0, [r5, #0x4]
	add     r1, sp, #0xc
	ldr     r0, [r0, #0x0]
	bl      Function_2021c70
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2021cac
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	bne     branch_223e518
	mov     r0, #0x0
	str     r0, [sp, #0x0]
.thumb
branch_223e518: @ 223e518 :thumb
	ldr     r0, [sp, #0x4]
	add     r6, #0x14
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	ldsh    r1, [r7, r0]
	ldr     r0, [sp, #0x4]
	add     r4, #0x14
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r0, r1
	blt     branch_223e4e6
.thumb
branch_223e52e: @ 223e52e :thumb
	ldr     r0, [sp, #0x0]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223e534

.thumb
Function_223e534: @ 223e534 :thumb
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	sub     r1, r2, r1
	str     r1, [r0, #0x8]
	str     r3, [r0, #0x10]
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	bx      lr
@ 0x223e544

.thumb
Function_223e544: @ 223e544 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	lsl     r2, r2, #12
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	ldr     r1, [r4, #0x10]
	lsl     r1, r1, #12
	blx     FX_Div
	ldr     r1, [r4, #0x4]
	add     r0, r0, r1
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, r1
	bgt     branch_223e584
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223e584

.thumb
branch_223e584: @ 223e584 :thumb
	str     r1, [r4, #0xc]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223e58a


.align 2, 0


.thumb
Function_223e58c: @ 223e58c :thumb
	push    {r4}
	add     sp, #-0xc
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	add     r2, sp, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldmia   r2!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r4, #0x0]
	add     sp, #0xc
	pop     {r4}
	bx      lr
@ 0x223e5a8

.thumb
Function_223e5a8: @ 223e5a8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r3, #0x1
	lsl     r3, r3, #26
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r3, #0x0]
	ldr     r0, [pc, #0xf4] @ 0x223e6ac, (=0xffff1fff)
	mov     r2, r3
	and     r1, r0
	mov     r0, #0x6
	lsl     r0, r0, #12
	orr     r0, r1
	str     r0, [r3, #0x0]
	add     r2, #0x48
	ldrh    r6, [r2, #0x0]
	mov     r0, #0x3f
	mov     r1, #0x1f
	bic     r6, r0
	orr     r1, r6
	mov     r7, #0x20
	orr     r1, r7
	strh    r1, [r2, #0x0]
	ldrh    r6, [r2, #0x0]
	ldr     r1, [pc, #0xd4] @ 0x223e6b0, (=0xffffc0ff)
	and     r1, r6
	mov     r6, #0x1f
	lsl     r6, r6, #8
	orr     r6, r1
	lsl     r1, r7, #8
	orr     r1, r6
	strh    r1, [r2, #0x0]
	mov     r1, r3
	add     r1, #0x4a
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	mov     r0, #0x1d
	orr     r0, r2
	orr     r0, r7
	strh    r0, [r1, #0x0]
	mov     r1, r3
	mov     r0, #0x0
	add     r1, #0x40
	strh    r0, [r1, #0x0]
	mov     r1, r3
	add     r1, #0x44
	strh    r0, [r1, #0x0]
	mov     r1, r3
	add     r1, #0x42
	strh    r0, [r1, #0x0]
	add     r3, #0x46
	strh    r0, [r3, #0x0]
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]
	mov     r0, #0xc0
	str     r0, [sp, #0x8]
	ldrb    r2, [r4, #0x8]
	ldr     r0, [r5, #0x1c]
	mov     r1, #0x70
	mov     r3, #0x5e
	bl      Function_2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x5e
	str     r0, [sp, #0xc]
	ldrb    r1, [r4, #0x9]
	ldr     r0, [r5, #0x24]
	ldr     r2, [r5, #0x10]
	mov     r3, #0x1
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x5e
	str     r0, [sp, #0xc]
	ldrb    r1, [r4, #0xa]
	ldr     r0, [r5, #0x24]
	ldr     r2, [r5, #0x10]
	mov     r3, #0x1
	bl      Function_200710c
	mov     r0, r7
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0xc
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2019e2c
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	bl      Function_201c3c0
	ldrb    r1, [r4, #0x8]
	mov     r0, #0x70
	add     r2, sp, #0x10
	mov     r3, #0x5e
	bl      Function_2006f88
	mov     r4, r0
	ldr     r0, [sp, #0x10]
	mov     r1, r5
	mov     r2, r7
	ldr     r0, [r0, #0xc]
	add     r1, #0x40
	add     r2, #0xe0
	blx     MIi_CpuCopy16
	mov     r0, r4
	bl      free
	ldr     r0, [pc, #0x1c] @ 0x223e6b4, (=0x223e6bd)
	ldr     r2, [pc, #0x1c] @ 0x223e6b8, (=0x44c)
	mov     r1, r5
	bl      AddTaskToTaskList1
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223e6aa


.align 2


.word 0xffff1fff @ 0x223e6ac
.word 0xffffc0ff @ 0x223e6b0
.word Function_223e6bc+1 @ =0x223e6bd, 0x223e6b4
.word 0x44c @ 0x223e6b8
.thumb
Function_223e6bc: @ 223e6bc :thumb
	push    {r3,lr}
	ldr     r0, [r1, #0x38]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r1, #0x38]
	bmi     branch_223e6ee
	mov     r2, #0x0
	str     r2, [r1, #0x38]
	ldr     r0, [r1, #0x3c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r1, #0x3c]
	cmp     r0, #0x8
	blt     branch_223e6d6
	str     r2, [r1, #0x3c]
.thumb
branch_223e6d6: @ 223e6d6 :thumb
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r2, r1
	ldr     r0, [r1, #0x1c]
	ldr     r1, [r1, #0x3c]
	add     r2, #0x40
	lsl     r1, r1, #5
	add     r1, r2, r1
	mov     r2, #0x0
	mov     r3, #0xc0
	bl      Function_2002fbc
.thumb
branch_223e6ee: @ 223e6ee :thumb
	pop     {r3,pc}
@ 0x223e6f0

.thumb
Function_223e6f0: @ 223e6f0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x51
	lsl     r1, r1, #2
	add     r4, r0, r1
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x14
	blx     MI_CpuFill8
	cmp     r5, #0x0
	bne     branch_223e71e
	mov     r0, #0x5
	lsl     r0, r0, #12
	str     r0, [r4, #0x0]
	str     r0, [r4, #0x4]
	mov     r2, #0xfa
	ldr     r0, [pc, #0x24] @ 0x223e738, (=0x223e741)
	mov     r1, r4
	lsl     r2, r2, #2
	bl      AddTaskToTaskList1
	pop     {r3-r5,pc}
@ 0x223e71e

.thumb
branch_223e71e: @ 223e71e :thumb
	mov     r0, #0x2e
	lsl     r0, r0, #8
	str     r0, [r4, #0x0]
	mov     r0, #0x72
	lsl     r0, r0, #8
	str     r0, [r4, #0x4]
	mov     r2, #0xfa
	ldr     r0, [pc, #0xc] @ 0x223e73c, (=0x223e7a5)
	mov     r1, r4
	lsl     r2, r2, #2
	bl      AddTaskToTaskList1
	pop     {r3-r5,pc}
@ 0x223e738

.word 0x223e741 @ 0x223e738
.word 0x223e7a5 @ 0x223e73c
.thumb
Function_223e740: @ 223e740 :thumb
	push    {r3,lr}
	ldrb    r2, [r1, #0x9]
	cmp     r2, #0x0
	bne     branch_223e798
	mov     r0, #0x2
	ldr     r2, [r1, #0x0]
	lsl     r0, r0, #10
	sub     r2, r2, r0
	str     r2, [r1, #0x0]
	ldr     r2, [r1, #0x4]
	add     r0, r2, r0
	str     r0, [r1, #0x4]
	mov     r0, #0x2e
	ldr     r2, [r1, #0x0]
	lsl     r0, r0, #8
	cmp     r2, r0
	bgt     branch_223e770
	str     r0, [r1, #0x0]
	mov     r0, #0x72
	lsl     r0, r0, #8
	str     r0, [r1, #0x4]
	ldrb    r0, [r1, #0x9]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r1, #0x9]
.thumb
branch_223e770: @ 223e770 :thumb
	mov     r0, #0x0
	strb    r0, [r1, #0xa]
	ldr     r2, [r1, #0x0]
	asr     r2, r2, #8
	strb    r2, [r1, #0xb]
	mov     r2, #0xff
	strb    r2, [r1, #0xc]
	ldr     r2, [r1, #0x4]
	asr     r2, r2, #8
	strb    r2, [r1, #0xd]
	mov     r2, #0x1
	strb    r2, [r1, #0xe]
	ldr     r2, [r1, #0x0]
	asr     r2, r2, #8
	strb    r2, [r1, #0xf]
	strb    r0, [r1, #0x10]
	ldr     r0, [r1, #0x4]
	asr     r0, r0, #8
	strb    r0, [r1, #0x11]
	pop     {r3,pc}
@ 0x223e798

.thumb
branch_223e798: @ 223e798 :thumb
	mov     r2, #0x1
	strb    r2, [r1, #0x8]
	bl      Call_RemoveTaskFromTaskList
	pop     {r3,pc}
@ 0x223e7a2


.align 2, 0


.thumb
Function_223e7a4: @ 223e7a4 :thumb
	push    {r3,lr}
	ldrb    r2, [r1, #0x9]
	cmp     r2, #0x0
	bne     branch_223e7f8
	mov     r0, #0x2
	ldr     r2, [r1, #0x0]
	lsl     r0, r0, #10
	add     r2, r2, r0
	str     r2, [r1, #0x0]
	ldr     r2, [r1, #0x4]
	sub     r0, r2, r0
	str     r0, [r1, #0x4]
	mov     r0, #0x5
	ldr     r2, [r1, #0x0]
	lsl     r0, r0, #12
	cmp     r2, r0
	blt     branch_223e7d0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	ldrb    r0, [r1, #0x9]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r1, #0x9]
.thumb
branch_223e7d0: @ 223e7d0 :thumb
	mov     r0, #0x0
	strb    r0, [r1, #0xa]
	ldr     r2, [r1, #0x0]
	asr     r2, r2, #8
	strb    r2, [r1, #0xb]
	mov     r2, #0xff
	strb    r2, [r1, #0xc]
	ldr     r2, [r1, #0x4]
	asr     r2, r2, #8
	strb    r2, [r1, #0xd]
	mov     r2, #0x1
	strb    r2, [r1, #0xe]
	ldr     r2, [r1, #0x0]
	asr     r2, r2, #8
	strb    r2, [r1, #0xf]
	strb    r0, [r1, #0x10]
	ldr     r0, [r1, #0x4]
	asr     r0, r0, #8
	strb    r0, [r1, #0x11]
	pop     {r3,pc}
@ 0x223e7f8

.thumb
branch_223e7f8: @ 223e7f8 :thumb
	mov     r2, #0x1
	strb    r2, [r1, #0x8]
	bl      Call_RemoveTaskFromTaskList
	pop     {r3,pc}
@ 0x223e802


.align 2, 0


.thumb
Function_223e804: @ 223e804 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	mov     r3, r0
	ldr     r0, [r4, #0x4]
	mov     r5, r1
	cmp     r0, #0x0
	beq     branch_223e818
	cmp     r0, #0x1
	beq     branch_223e854
	b       branch_223e88c
@ 0x223e818

.thumb
branch_223e818: @ 223e818 :thumb
	mov     r1, #0x28
	ldsh    r2, [r3, r1]
	add     r1, #0xd8
	mov     r0, r5
	add     r1, r2, r1
	mov     r2, #0x2a
	ldsh    r2, [r3, r2]
	add     r0, #0x90
	lsl     r1, r1, #16
	add     r2, #0x50
	lsl     r2, r2, #16
	mov     r3, #0x2
	ldr     r0, [r0, #0x0]
	asr     r1, r1, #16
	asr     r2, r2, #16
	lsl     r3, r3, #20
	bl      Function_200d500
	add     r5, #0x90
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_200d3f4
	mov     r0, #0x1
	lsl     r0, r0, #16
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_223e890
@ 0x223e854

.thumb
branch_223e854: @ 223e854 :thumb
	mov     r0, #0xf
	ldr     r1, [r4, #0x0]
	lsl     r0, r0, #8
	sub     r1, r1, r0
	mov     r0, #0xd
	lsl     r0, r0, #12
	str     r1, [r4, #0x0]
	cmp     r1, r0
	bgt     branch_223e86e
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_223e86e: @ 223e86e :thumb
	mov     r2, #0x2a
	ldsh    r2, [r3, r2]
	ldr     r1, [r4, #0x0]
	add     r5, #0x90
	add     r2, #0x50
	lsl     r1, r1, #8
	lsl     r2, r2, #16
	mov     r3, #0x2
	ldr     r0, [r5, #0x0]
	asr     r1, r1, #16
	asr     r2, r2, #16
	lsl     r3, r3, #20
	bl      Function_200d500
	b       branch_223e890
@ 0x223e88c

.thumb
branch_223e88c: @ 223e88c :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223e890

.thumb
branch_223e890: @ 223e890 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223e894

.thumb
Function_223e894: @ 223e894 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r0, #0xb
	mov     r1, #0x4c
	str     r2, [sp, #0x0]
	mov     r5, r3
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0x4c
	mov     r4, r0
	blx     Call_FillMemWithValue
	ldr     r0, [pc, #0x20] @ 0x223e8d4, (=0x223e8d9)
	mov     r1, r4
	mov     r2, #0x5
	bl      AddTaskToTaskList1
	str     r5, [r4, #0x48]
	cmp     r5, #0x0
	beq     branch_223e8c4
	mov     r0, #0x0
	str     r0, [r5, #0x0]
.thumb
branch_223e8c4: @ 223e8c4 :thumb
	str     r6, [r4, #0xc]
	ldr     r0, [sp, #0x0]
	str     r7, [r4, #0x10]
	str     r0, [r4, #0x14]
	ldr     r0, [sp, #0x18]
	str     r0, [r4, #0x4]
	pop     {r3-r7,pc}
@ 0x223e8d2


.align 2


.word Function_223e8d8+1 @ =0x223e8d9, 0x223e8d4
.thumb
Function_223e8d8: @ 223e8d8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x5
	bhi     branch_223e9be
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223e8f0

Jumppoints_223e8f0:
.hword branch_223e8fc - Jumppoints_223e8f0 - 2
.hword branch_223e934 - Jumppoints_223e8f0 - 2
.hword branch_223e94e - Jumppoints_223e8f0 - 2
.hword branch_223e962 - Jumppoints_223e8f0 - 2
.hword branch_223e97c - Jumppoints_223e8f0 - 2
.hword branch_223e9a0 - Jumppoints_223e8f0 - 2
.thumb
branch_223e8fc: @ 223e8fc :thumb
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x1
	bne     branch_223e916
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r4
	ldr     r2, [r4, #0x14]
	add     r0, #0x30
	mov     r1, #0x0
	mov     r3, #0x2
	bl      Function_223e9ec
	b       branch_223e92c
@ 0x223e916

.thumb
branch_223e916: @ 223e916 :thumb
	cmp     r0, #0x2
	bne     branch_223e92c
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r4
	ldr     r2, [r4, #0x14]
	add     r0, #0x30
	mov     r1, #0x0
	mov     r3, #0x1
	bl      Function_223e9ec
.thumb
branch_223e92c: @ 223e92c :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e9be
@ 0x223e934

.thumb
branch_223e934: @ 223e934 :thumb
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, r4
	ldr     r2, [r4, #0x10]
	ldr     r3, [r4, #0xc]
	add     r0, #0x18
	mov     r1, #0x0
	bl      Function_223e9ec
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e9be
@ 0x223e94e

.thumb
branch_223e94e: @ 223e94e :thumb
	mov     r0, r4
	add     r0, #0x18
	bl      Function_223e9f8
	cmp     r0, #0x0
	beq     branch_223e9be
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e9be
@ 0x223e962

.thumb
branch_223e962: @ 223e962 :thumb
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, r4
	ldr     r1, [r4, #0x10]
	ldr     r3, [r4, #0xc]
	add     r0, #0x18
	mov     r2, #0x0
	bl      Function_223e9ec
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e9be
@ 0x223e97c

.thumb
branch_223e97c: @ 223e97c :thumb
	mov     r0, r4
	add     r0, #0x18
	bl      Function_223e9f8
	cmp     r0, #0x0
	beq     branch_223e9be
	ldr     r0, [r4, #0x8]
	add     r1, r0, #0x1
	str     r1, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	cmp     r1, r0
	bne     branch_223e99a
	mov     r0, #0x5
	str     r0, [r4, #0x0]
	b       branch_223e9be
@ 0x223e99a

.thumb
branch_223e99a: @ 223e99a :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e9be
@ 0x223e9a0

.thumb
branch_223e9a0: @ 223e9a0 :thumb
	mov     r1, #0x0
	str     r1, [r4, #0x0]
	str     r1, [r4, #0x8]
	ldr     r2, [r4, #0x48]
	cmp     r2, #0x0
	beq     branch_223e9b0
	mov     r1, #0x1
	str     r1, [r2, #0x0]
.thumb
branch_223e9b0: @ 223e9b0 :thumb
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	bl      free
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223e9be

.thumb
branch_223e9be: @ 223e9be :thumb
	add     r4, #0x30
	mov     r0, r4
	bl      Function_223e9f8
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223e9ca


.align 2, 0


.thumb
Function_223e9cc: @ 223e9cc :thumb
	push    {r3,lr}
	cmp     r0, #0x1
	bne     branch_223e9da
	ldr     r0, [pc, #0x10] @ 0x223e9e4, (=REG_MASTER_BRIGHT)
	blx     GXx_SetMasterBrightness_
	pop     {r3,pc}
@ 0x223e9da

.thumb
branch_223e9da: @ 223e9da :thumb
	ldr     r0, [pc, #0xc] @ 0x223e9e8, (=REG_MASTER_BRIGHT_SUB)
	blx     GXx_SetMasterBrightness_
	pop     {r3,pc}
@ 0x223e9e2


.align 2


.word REG_MASTER_BRIGHT @ 0x223e9e4
.word REG_MASTER_BRIGHT_SUB @ 0x223e9e8
.thumb
Function_223e9ec: @ 223e9ec :thumb
	push    {r3,lr}
	str     r3, [r0, #0x14]
	ldr     r3, [sp, #0x8]
	bl      Function_223ea28
	pop     {r3,pc}
@ 0x223e9f8

.thumb
Function_223e9f8: @ 223e9f8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_223ea38
	mov     r4, r0
	ldr     r0, [pc, #0xc] @ 0x223ea10, (=0x223ea15)
	mov     r1, r5
	mov     r2, #0xa
	bl      AddTaskToTaskList3
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223ea10

.word 0x223ea15 @ 0x223ea10
.thumb
Function_223ea14: @ 223ea14 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r1, #0x14]
	ldr     r1, [r1, #0x0]
	bl      Function_223e9cc
	mov     r0, r4
	bl      Call_RemoveTaskFromTaskList
	pop     {r4,pc}
@ 0x223ea28

.thumb
Function_223ea28: @ 223ea28 :thumb
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	sub     r1, r2, r1
	str     r1, [r0, #0x8]
	str     r3, [r0, #0x10]
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	bx      lr
@ 0x223ea38

.thumb
Function_223ea38: @ 223ea38 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0xc]
	mul     r0, r1
	ldr     r1, [r4, #0x10]
	blx     _s32_div_f
	ldr     r1, [r4, #0x4]
	add     r0, r0, r1
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, r1
	bgt     branch_223ea5e
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223ea5e

.thumb
branch_223ea5e: @ 223ea5e :thumb
	str     r1, [r4, #0xc]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223ea64

.thumb
Function_223ea64: @ 223ea64 :thumb
	push    {r4,lr}
	mov     r1, #0x30
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0x30
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, r4
	pop     {r4,pc}
@ 0x223ea7a


.align 2, 0
.thumb
Function_223ea7c: @ 223ea7c :thumb
	ldr     r3, [pc, #0x0] @ 0x223ea80, (=free+1)
	bx      r3
@ 0x223ea80

.word free+1 @ 0x223ea80



.thumb
Function_223ea84: @ 223ea84 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x2e
	ldrb    r0, [r0, #0x0]
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r0, #0x0
	beq     branch_223ea9a
	bl      ErrorHandling
.thumb
branch_223ea9a: @ 223ea9a :thumb
	ldr     r3, [sp, #0x1c]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_223ea28
	mov     r0, r5
	ldr     r2, [sp, #0x18]
	ldr     r3, [sp, #0x1c]
	add     r0, #0x14
	mov     r1, r7
	bl      Function_223ea28
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x24]
	str     r0, [r5, #0x28]
	mov     r0, r5
	add     r0, #0x2c
	strb    r1, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [sp, #0x28]
	add     r0, #0x2d
	strb    r1, [r0, #0x0]
	add     r0, sp, #0x2c
	ldrb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x2f
	strb    r1, [r0, #0x0]
	mov     r0, #0x1
	add     r5, #0x2e
	strb    r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x223eada


.align 2, 0


.thumb
Function_223eadc: @ 223eadc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x2e
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_223eaf2
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x223eaf2

.thumb
branch_223eaf2: @ 223eaf2 :thumb
	bl      Function_223ea38
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x14
	bl      Function_223ea38
	mov     r0, r5
	add     r0, #0x2c
	ldrb    r0, [r0, #0x0]
	ldr     r2, [r5, #0x0]
	ldr     r6, [r5, #0x14]
	lsr     r1, r0, #1
	sub     r1, r2, r1
	lsl     r1, r1, #16
	asr     r3, r1, #16
	mov     r1, r5
	add     r1, #0x2d
	ldrb    r2, [r1, #0x0]
	add     r0, r3, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	lsr     r1, r2, #1
	str     r0, [sp, #0x0]
	mov     r0, r5
	sub     r1, r6, r1
	add     r0, #0x2f
	lsl     r1, r1, #16
	ldrb    r0, [r0, #0x0]
	asr     r1, r1, #16
	add     r2, r1, r2
	str     r0, [sp, #0x4]
	lsl     r2, r2, #16
	ldr     r0, [r5, #0x28]
	asr     r2, r2, #16
	bl      Function_223eb44
	mov     r0, r4
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x223eb42


.align 2, 0


.thumb
Function_223eb44: @ 223eb44 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	ldr     r5, [sp, #0x18]
	mov     r4, r1
	cmp     r5, #0x0
	ble     branch_223eb9c
	cmp     r2, #0x0
	ble     branch_223eb9c
	cmp     r3, r5
	beq     branch_223eb9c
	cmp     r4, r2
	beq     branch_223eb9c
	cmp     r3, #0x0
	bge     branch_223eb62
	mov     r3, #0x0
.thumb
branch_223eb62: @ 223eb62 :thumb
	mov     r1, #0x1
	lsl     r1, r1, #8
	cmp     r5, r1
	ble     branch_223eb6c
	mov     r5, r1
.thumb
branch_223eb6c: @ 223eb6c :thumb
	cmp     r4, #0x0
	bge     branch_223eb72
	mov     r4, #0x0
.thumb
branch_223eb72: @ 223eb72 :thumb
	mov     r1, #0x1
	lsl     r1, r1, #8
	cmp     r2, r1
	ble     branch_223eb7c
	mov     r2, r1
.thumb
branch_223eb7c: @ 223eb7c :thumb
	sub     r1, r5, r3
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	str     r1, [sp, #0x0]
	sub     r1, r2, r4
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	str     r1, [sp, #0x4]
	lsl     r2, r3, #16
	add     r1, sp, #0x8
	lsl     r3, r4, #16
	ldrb    r1, [r1, #0x14]
	lsr     r2, r2, #16
	lsr     r3, r3, #16
	bl      Function_201ae78
.thumb
branch_223eb9c: @ 223eb9c :thumb
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223eba0

.thumb
Function_223eba0: @ 223eba0 :thumb
	push    {r3-r7,lr}
	mov     r1, #0x19
	lsl     r1, r1, #4
	mov     r6, r0
	bl      malloc
	mov     r2, #0x19
	mov     r1, #0x0
	lsl     r2, r2, #4
	mov     r7, r0
	blx     Call_FillMemWithValue
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_223ebbc: @ 223ebbc :thumb
	mov     r0, r6
	bl      Function_223ea64
	str     r0, [r5, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x60
	blt     branch_223ebbc
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x223ebd0

.thumb
Function_223ebd0: @ 223ebd0 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_223ebd8: @ 223ebd8 :thumb
	ldr     r0, [r5, #0x4]
	bl      Function_223ea7c
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x60
	blt     branch_223ebd8
	mov     r0, r6
	bl      free
	pop     {r4-r6,pc}
@ 0x223ebee


.align 2, 0


.thumb
Function_223ebf0: @ 223ebf0 :thumb
	push    {r3,r4}
	str     r3, [r0, #0x0]
	ldr     r3, [pc, #0x38] @ 0x223ec30, (=0xfffffff8)
	add     r3, sp
	ldrb    r4, [r3, #0x10]
	mov     r3, #0x63
	lsl     r3, r3, #2
	strb    r4, [r0, r3]
	.hword  0x1edc @ sub r4, r3, #0x3
	strb    r1, [r0, r4]
	.hword  0x1e99 @ sub r1, r3, #0x2
	strb    r2, [r0, r1]
	mov     r2, r3
	mov     r1, #0x0
	sub     r2, #0x8
	strb    r1, [r0, r2]
	.hword  0x1fda @ sub r2, r3, #0x7
	strb    r1, [r0, r2]
	.hword  0x1f9a @ sub r2, r3, #0x6
	strb    r1, [r0, r2]
	.hword  0x1f5a @ sub r2, r3, #0x5
	strb    r1, [r0, r2]
	.hword  0x1f1a @ sub r2, r3, #0x4
	strb    r1, [r0, r2]
	.hword  0x1e5a @ sub r2, r3, #0x1
	strb    r1, [r0, r2]
	mov     r2, #0x1
	add     r1, r3, #0x1
	strb    r2, [r0, r1]
	pop     {r3,r4}
	bx      lr
@ 0x223ec2e


.align 2


.word 0xfffffff8 @ 0x223ec30
.thumb
Function_223ec34: @ 223ec34 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r0, [pc, #0x1fc] @ 0x223ee38, (=0x18d)
	ldrb    r1, [r5, r0]
	cmp     r1, #0x0
	bne     branch_223ec48
	add     sp, #0x1c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x223ec48

.thumb
branch_223ec48: @ 223ec48 :thumb
	mov     r1, r0
	sub     r1, #0x9
	ldrb    r1, [r5, r1]
	cmp     r1, #0x60
	bcs     branch_223ec62
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldsb    r1, [r5, r1]
	.hword  0x1e4a @ sub r2, r1, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strb    r2, [r5, r1]
	ldsb    r1, [r5, r1]
	cmp     r1, #0x0
	ble     branch_223ec64
.thumb
branch_223ec62: @ 223ec62 :thumb
	b       branch_223edde
@ 0x223ec64

.thumb
branch_223ec64: @ 223ec64 :thumb
	.hword  0x1ec1 @ sub r1, r0, #0x3
	ldrb    r2, [r5, r1]
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldr     r3, [pc, #0x1d0] @ 0x223ee3c, (=0x2241970)
	strb    r2, [r5, r1]
	.hword  0x1f81 @ sub r1, r0, #0x6
	ldrb    r1, [r5, r1]
	lsl     r4, r1, #4
	mov     r1, r0
	sub     r1, #0x8
	ldrb    r2, [r5, r1]
	add     r1, r3, r4
	.hword  0x1fc3 @ sub r3, r0, #0x7
	ldrb    r3, [r5, r3]
	.hword  0x1f04 @ sub r4, r0, #0x4
	ldrb    r1, [r2, r1]
	lsl     r3, r3, #4
	add     r3, #0x8
	str     r3, [sp, #0x0]
	ldrb    r4, [r5, r4]
	lsl     r1, r1, #5
	mov     r2, r1
	str     r4, [sp, #0x4]
	ldr     r4, [r5, #0x0]
	add     r2, #0x20
	str     r4, [sp, #0x8]
	mov     r4, #0x20
	str     r4, [sp, #0xc]
	mov     r4, #0x10
	str     r4, [sp, #0x10]
	.hword  0x1e44 @ sub r4, r0, #0x1
	ldrb    r4, [r5, r4]
	sub     r0, #0x9
	str     r4, [sp, #0x14]
	ldrb    r0, [r5, r0]
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x4]
	bl      Function_223ea84
	ldr     r0, [pc, #0x188] @ 0x223ee40, (=0x187)
	mov     r1, #0x1
	ldrb    r2, [r5, r0]
	ldr     r3, [pc, #0x180] @ 0x223ee3c, (=0x2241970)
	eor     r1, r2
	lsl     r4, r1, #4
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldrb    r2, [r5, r1]
	add     r1, r3, r4
	.hword  0x1e43 @ sub r3, r0, #0x1
	ldrb    r4, [r5, r3]
	mov     r3, #0x5
	ldrb    r1, [r2, r1]
	sub     r3, r3, r4
	lsl     r3, r3, #4
	add     r3, #0x8
	str     r3, [sp, #0x0]
	add     r4, r0, #0x2
	ldrb    r4, [r5, r4]
	lsl     r1, r1, #5
	mov     r2, r1
	str     r4, [sp, #0x4]
	ldr     r4, [r5, #0x0]
	add     r2, #0x20
	str     r4, [sp, #0x8]
	mov     r4, #0x20
	str     r4, [sp, #0xc]
	mov     r4, #0x10
	str     r4, [sp, #0x10]
	add     r4, r0, #0x5
	ldrb    r4, [r5, r4]
	.hword  0x1ec0 @ sub r0, r0, #0x3
	str     r4, [sp, #0x14]
	ldrb    r0, [r5, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x4]
	bl      Function_223ea84
	ldr     r0, [pc, #0x138] @ 0x223ee40, (=0x187)
	ldr     r3, [pc, #0x134] @ 0x223ee3c, (=0x2241970)
	ldrb    r1, [r5, r0]
	lsl     r4, r1, #4
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldrb    r2, [r5, r1]
	add     r1, r3, r4
	ldrb    r1, [r2, r1]
	.hword  0x1e42 @ sub r2, r0, #0x1
	ldrb    r2, [r5, r2]
	lsl     r1, r1, #5
	.hword  0x1d92 @ add r2, r2, #0x6
	lsl     r3, r2, #4
	add     r3, #0x8
	str     r3, [sp, #0x0]
	add     r2, r0, #0x2
	ldrb    r2, [r5, r2]
	str     r2, [sp, #0x4]
	ldr     r2, [r5, #0x0]
	str     r2, [sp, #0x8]
	mov     r2, #0x20
	str     r2, [sp, #0xc]
	mov     r2, #0x10
	str     r2, [sp, #0x10]
	add     r2, r0, #0x5
	ldrb    r2, [r5, r2]
	.hword  0x1ec0 @ sub r0, r0, #0x3
	str     r2, [sp, #0x14]
	ldrb    r0, [r5, r0]
	mov     r2, r1
	add     r2, #0x20
	.hword  0x1c80 @ add r0, r0, #0x2
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x4]
	bl      Function_223ea84
	ldr     r0, [pc, #0xf0] @ 0x223ee40, (=0x187)
	mov     r1, #0x1
	ldrb    r2, [r5, r0]
	ldr     r3, [pc, #0xe4] @ 0x223ee3c, (=0x2241970)
	eor     r1, r2
	lsl     r4, r1, #4
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldrb    r2, [r5, r1]
	add     r1, r3, r4
	ldrb    r1, [r2, r1]
	.hword  0x1e42 @ sub r2, r0, #0x1
	ldrb    r3, [r5, r2]
	mov     r2, #0xb
	lsl     r1, r1, #5
	sub     r2, r2, r3
	lsl     r3, r2, #4
	add     r3, #0x8
	str     r3, [sp, #0x0]
	add     r2, r0, #0x2
	ldrb    r2, [r5, r2]
	str     r2, [sp, #0x4]
	ldr     r2, [r5, #0x0]
	str     r2, [sp, #0x8]
	mov     r2, #0x20
	str     r2, [sp, #0xc]
	mov     r2, #0x10
	str     r2, [sp, #0x10]
	add     r2, r0, #0x5
	ldrb    r2, [r5, r2]
	.hword  0x1ec0 @ sub r0, r0, #0x3
	str     r2, [sp, #0x14]
	ldrb    r0, [r5, r0]
	mov     r2, r1
	add     r2, #0x20
	.hword  0x1cc0 @ add r0, r0, #0x3
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x4]
	bl      Function_223ea84
	mov     r1, #0x61
	lsl     r1, r1, #2
	ldrb    r0, [r5, r1]
	.hword  0x1d00 @ add r0, r0, #0x4
	strb    r0, [r5, r1]
	add     r0, r1, #0x1
	ldrb    r0, [r5, r0]
	add     r2, r0, #0x1
	add     r0, r1, #0x1
	strb    r2, [r5, r0]
	ldrb    r0, [r5, r0]
	lsr     r3, r0, #31
	lsl     r2, r0, #29
	sub     r2, r2, r3
	mov     r0, #0x1d
	ror     r2, r0
	add     r0, r3, r2
	bne     branch_223edde
	add     r0, r1, #0x3
	ldrb    r2, [r5, r0]
	mov     r0, #0x1
	eor     r2, r0
	add     r0, r1, #0x3
	strb    r2, [r5, r0]
	add     r0, r1, #0x2
	ldrb    r0, [r5, r0]
	add     r2, r0, #0x1
	add     r0, r1, #0x2
	strb    r2, [r5, r0]
	mov     r2, #0x0
	add     r0, r1, #0x1
	strb    r2, [r5, r0]
.thumb
branch_223edde: @ 223edde :thumb
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldrb    r4, [r5, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldrb    r0, [r5, r0]
	cmp     r4, r0
	bge     branch_223ee14
	lsl     r0, r4, #2
	mov     r7, #0x62
	add     r6, r5, r0
	lsl     r7, r7, #2
.thumb
branch_223edf4: @ 223edf4 :thumb
	ldr     r0, [r6, #0x4]
	bl      Function_223eadc
	str     r0, [sp, #0x18]
	cmp     r0, #0x1
	bne     branch_223ee06
	ldrb    r0, [r5, r7]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, r7]
.thumb
branch_223ee06: @ 223ee06 :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldrb    r0, [r5, r0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, r0
	blt     branch_223edf4
.thumb
branch_223ee14: @ 223ee14 :thumb
	mov     r1, #0x62
	lsl     r1, r1, #2
	ldrb    r0, [r5, r1]
	cmp     r0, #0x60
	bcc     branch_223ee30
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x1
	bne     branch_223ee30
	mov     r2, #0x0
	add     r0, r1, #0x5
	strb    r2, [r5, r0]
	add     sp, #0x1c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x223ee30

.thumb
branch_223ee30: @ 223ee30 :thumb
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223ee36


.align 2


.word 0x18d @ 0x223ee38
.word 0x2241970 @ 0x223ee3c
.word 0x187 @ 0x223ee40
.thumb
Function_223ee44: @ 223ee44 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r0, [pc, #0x200] @ 0x223f04c, (=0x18d)
	ldrb    r1, [r5, r0]
	cmp     r1, #0x0
	bne     branch_223ee58
	add     sp, #0x1c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x223ee58

.thumb
branch_223ee58: @ 223ee58 :thumb
	mov     r1, r0
	sub     r1, #0x9
	ldrb    r1, [r5, r1]
	cmp     r1, #0x60
	bcs     branch_223ee72
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldsb    r1, [r5, r1]
	.hword  0x1e4a @ sub r2, r1, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strb    r2, [r5, r1]
	ldsb    r1, [r5, r1]
	cmp     r1, #0x0
	ble     branch_223ee74
.thumb
branch_223ee72: @ 223ee72 :thumb
	b       branch_223eff4
@ 0x223ee74

.thumb
branch_223ee74: @ 223ee74 :thumb
	.hword  0x1ec1 @ sub r1, r0, #0x3
	ldrb    r2, [r5, r1]
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldr     r4, [pc, #0x1d4] @ 0x223f050, (=0x2241964)
	strb    r2, [r5, r1]
	.hword  0x1f82 @ sub r2, r0, #0x6
	ldrb    r3, [r5, r2]
	mov     r2, #0x6
	mov     r1, r0
	mul     r2, r3
	.hword  0x1fc3 @ sub r3, r0, #0x7
	ldrb    r3, [r5, r3]
	add     r2, r4, r2
	sub     r1, #0x8
	ldrb    r2, [r3, r2]
	ldrb    r1, [r5, r1]
	lsl     r3, r2, #5
	mov     r2, r3
	add     r2, #0x20
	str     r2, [sp, #0x0]
	.hword  0x1f02 @ sub r2, r0, #0x4
	ldrb    r2, [r5, r2]
	lsl     r1, r1, #4
	add     r1, #0x8
	str     r2, [sp, #0x4]
	ldr     r2, [r5, #0x0]
	str     r2, [sp, #0x8]
	mov     r2, #0x10
	str     r2, [sp, #0xc]
	mov     r2, #0x20
	str     r2, [sp, #0x10]
	.hword  0x1e42 @ sub r2, r0, #0x1
	ldrb    r2, [r5, r2]
	sub     r0, #0x9
	str     r2, [sp, #0x14]
	ldrb    r0, [r5, r0]
	mov     r2, r1
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x4]
	bl      Function_223ea84
	ldr     r2, [pc, #0x188] @ 0x223f054, (=0x185)
	mov     r0, #0x7
	ldrb    r1, [r5, r2]
	sub     r0, r0, r1
	lsl     r1, r0, #4
	add     r0, r2, #0x2
	ldrb    r3, [r5, r0]
	mov     r0, #0x1
	add     r1, #0x8
	eor     r3, r0
	mov     r0, #0x6
	mul     r0, r3
	add     r3, r2, #0x1
	ldrb    r3, [r5, r3]
	add     r0, r4, r0
	ldrb    r0, [r3, r0]
	lsl     r3, r0, #5
	mov     r0, r3
	add     r0, #0x20
	str     r0, [sp, #0x0]
	add     r0, r2, #0x4
	ldrb    r0, [r5, r0]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	mov     r0, #0x20
	str     r0, [sp, #0x10]
	add     r0, r2, #0x7
	ldrb    r0, [r5, r0]
	str     r0, [sp, #0x14]
	.hword  0x1e50 @ sub r0, r2, #0x1
	ldrb    r0, [r5, r0]
	mov     r2, r1
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x4]
	bl      Function_223ea84
	ldr     r2, [pc, #0x138] @ 0x223f054, (=0x185)
	ldrb    r0, [r5, r2]
	add     r0, #0x8
	lsl     r1, r0, #4
	add     r0, r2, #0x2
	ldrb    r3, [r5, r0]
	mov     r0, #0x6
	add     r1, #0x8
	mul     r0, r3
	add     r3, r2, #0x1
	ldrb    r3, [r5, r3]
	add     r0, r4, r0
	ldrb    r0, [r3, r0]
	lsl     r3, r0, #5
	mov     r0, r3
	add     r0, #0x20
	str     r0, [sp, #0x0]
	add     r0, r2, #0x4
	ldrb    r0, [r5, r0]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	mov     r0, #0x20
	str     r0, [sp, #0x10]
	add     r0, r2, #0x7
	ldrb    r0, [r5, r0]
	str     r0, [sp, #0x14]
	.hword  0x1e50 @ sub r0, r2, #0x1
	ldrb    r0, [r5, r0]
	mov     r2, r1
	.hword  0x1c80 @ add r0, r0, #0x2
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x4]
	bl      Function_223ea84
	ldr     r2, [pc, #0xec] @ 0x223f054, (=0x185)
	mov     r0, #0xf
	ldrb    r1, [r5, r2]
	sub     r0, r0, r1
	lsl     r1, r0, #4
	add     r0, r2, #0x2
	ldrb    r3, [r5, r0]
	mov     r0, #0x1
	add     r1, #0x8
	eor     r3, r0
	mov     r0, #0x6
	mul     r0, r3
	add     r3, r2, #0x1
	ldrb    r3, [r5, r3]
	add     r0, r4, r0
	ldrb    r0, [r3, r0]
	lsl     r3, r0, #5
	mov     r0, r3
	add     r0, #0x20
	str     r0, [sp, #0x0]
	add     r0, r2, #0x4
	ldrb    r0, [r5, r0]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	mov     r0, #0x20
	str     r0, [sp, #0x10]
	add     r0, r2, #0x7
	ldrb    r0, [r5, r0]
	str     r0, [sp, #0x14]
	.hword  0x1e50 @ sub r0, r2, #0x1
	ldrb    r0, [r5, r0]
	mov     r2, r1
	.hword  0x1cc0 @ add r0, r0, #0x3
	lsl     r0, r0, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x4]
	bl      Function_223ea84
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldrb    r1, [r5, r0]
	.hword  0x1d09 @ add r1, r1, #0x4
	strb    r1, [r5, r0]
	add     r1, r0, #0x2
	ldrb    r1, [r5, r1]
	add     r2, r1, #0x1
	add     r1, r0, #0x2
	strb    r2, [r5, r1]
	.hword  0x1c80 @ add r0, r0, #0x2
	ldrb    r0, [r5, r0]
	mov     r1, #0x6
	blx     _s32_div_f
	cmp     r1, #0x0
	bne     branch_223eff4
	ldr     r1, [pc, #0x7c] @ 0x223f058, (=0x187)
	mov     r0, #0x1
	ldrb    r2, [r5, r1]
	eor     r0, r2
	strb    r0, [r5, r1]
	.hword  0x1e88 @ sub r0, r1, #0x2
	ldrb    r0, [r5, r0]
	add     r2, r0, #0x1
	.hword  0x1e88 @ sub r0, r1, #0x2
	strb    r2, [r5, r0]
	mov     r2, #0x0
	.hword  0x1e48 @ sub r0, r1, #0x1
	strb    r2, [r5, r0]
.thumb
branch_223eff4: @ 223eff4 :thumb
	mov     r0, #0x62
	lsl     r0, r0, #2
	ldrb    r4, [r5, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldrb    r0, [r5, r0]
	cmp     r4, r0
	bge     branch_223f02a
	lsl     r0, r4, #2
	mov     r7, #0x62
	add     r6, r5, r0
	lsl     r7, r7, #2
.thumb
branch_223f00a: @ 223f00a :thumb
	ldr     r0, [r6, #0x4]
	bl      Function_223eadc
	str     r0, [sp, #0x18]
	cmp     r0, #0x1
	bne     branch_223f01c
	ldrb    r0, [r5, r7]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, r7]
.thumb
branch_223f01c: @ 223f01c :thumb
	mov     r0, #0x61
	lsl     r0, r0, #2
	ldrb    r0, [r5, r0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, r0
	blt     branch_223f00a
.thumb
branch_223f02a: @ 223f02a :thumb
	mov     r1, #0x62
	lsl     r1, r1, #2
	ldrb    r0, [r5, r1]
	cmp     r0, #0x60
	bcc     branch_223f046
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x1
	bne     branch_223f046
	mov     r2, #0x0
	add     r0, r1, #0x5
	strb    r2, [r5, r0]
	add     sp, #0x1c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x223f046

.thumb
branch_223f046: @ 223f046 :thumb
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223f04c

.word 0x18d @ 0x223f04c
.word 0x2241964 @ 0x223f050
.word 0x185 @ 0x223f054
.word 0x187 @ 0x223f058
.thumb
Function_223f05c: @ 223f05c :thumb
	ldr     r3, [pc, #0x8] @ 0x223f068, (=AddTaskToTaskList2+1)
	mov     r2, #0x1
	mov     r1, r0
	ldr     r0, [pc, #0x8] @ 0x223f06c, (=0x223f071)
	lsl     r2, r2, #10
	bx      r3
@ 0x223f068

.word AddTaskToTaskList2+1 @ 0x223f068
.word Function_223f070+1 @ =0x223f071, 0x223f06c



.thumb
Function_223f070: @ 223f070 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x2
	bcc     branch_223f084
	ldr     r0, [r4, #0x0]
	bl      Function_2013da4
	mov     r0, #0x0
	str     r0, [r4, #0x8]
.thumb
branch_223f084: @ 223f084 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2013ddc
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x223f092


.align 2, 0


.thumb
Function_223f094: @ 223f094 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_2013be0
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, r4
	bl      Function_223f05c
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x223f0ae


.align 2, 0


.thumb
Function_223f0b0: @ 223f0b0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r4, [sp, #0x20]
	add     r5, sp, #0x10
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
@ 0x223f0d6


.align 2, 0


.thumb
Function_223f0d8: @ 223f0d8 :thumb
	push    {r3,lr}
	ldr     r0, [r1, #0x8]
	cmp     r0, #0x0
	beq     branch_223f0ec
	mov     r0, #0x1
	str     r0, [r1, #0xc]
	ldr     r0, [r1, #0x18]
	ldr     r1, [r1, #0x10]
	blx     r1
	pop     {r3,pc}
@ 0x223f0ec

.thumb
branch_223f0ec: @ 223f0ec :thumb
	bl      Function_2013ba8
	pop     {r3,pc}
@ 0x223f0f2


.align 2, 0


.thumb
Function_223f0f4: @ 223f0f4 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_223f10e
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_223f10e
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x14]
	blx     r1
	mov     r0, #0x0
	str     r0, [r4, #0xc]
.thumb
branch_223f10e: @ 223f10e :thumb
	pop     {r4,pc}
@ 0x223f110

.thumb
Function_223f110: @ 223f110 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r5, #0x0
	bne     branch_223f122
	bl      ErrorHandling
.thumb
branch_223f122: @ 223f122 :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x8]
	mov     r2, #0x0
	str     r2, [r5, #0xc]
	str     r4, [r5, #0x18]
	str     r6, [r5, #0x10]
	ldr     r0, [pc, #0x18] @ 0x223f148, (=0x223f0d9)
	str     r7, [r5, #0x14]
	mov     r1, r5
	bl      AddTaskToTaskList3
	str     r0, [r5, #0x4]
	ldr     r0, [pc, #0x10] @ 0x223f14c, (=0x223f0f5)
	mov     r1, r5
	mov     r2, #0x0
	bl      AddTaskToTaskList2
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x223f148

.word Function_223f0d8+1 @ =0x223f0d9, 0x223f148
.word Function_223f0f4+1 @ =0x223f0f5, 0x223f14c
.thumb
Function_223f150: @ 223f150 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_223f15a
	bl      ErrorHandling
.thumb
branch_223f15a: @ 223f15a :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_223f164
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_223f164: @ 223f164 :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223f16e
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_223f16e: @ 223f16e :thumb
	bl      Function_2013ba8
	pop     {r4,pc}
@ 0x223f174

.thumb
Function_223f174: @ 223f174 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_2013b68
	mov     r5, r0
	bl      Function_2013ba8
	ldr     r1, [pc, #0xc] @ 0x223f194, (=0x3020)
	mov     r0, r5
	ldr     r1, [r4, r1]
	mov     r2, #0x20
	mov     r3, #0x1
	bl      Function_2013bb8
	pop     {r3-r5,pc}
@ 0x223f194

.word 0x3020 @ 0x223f194
.thumb
Function_223f198: @ 223f198 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_2013b94
	mov     r0, r4
	bl      Function_223f174
	pop     {r4,pc}
@ 0x223f1aa


.align 2, 0


.thumb
Function_223f1ac: @ 223f1ac :thumb
	ldr     r3, [pc, #0x0] @ 0x223f1b0, (=0x223f175)
	bx      r3
@ 0x223f1b0

.word Function_223f174+1 @ =0x223f175, 0x223f1b0
.thumb
Function_223f1b4: @ 223f1b4 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r5, r2
	mov     r4, r0
	ldr     r1, [pc, #0x84] @ 0x223f244, (=0x3024)
	mov     r0, r5
	bl      malloc
	ldr     r2, [pc, #0x7c] @ 0x223f244, (=0x3024)
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	blx     Call_FillMemWithValue
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bne     branch_223f1d8
	bl      ErrorHandling
branch_223f1d8: @ 223f1d8 :thumb

	ldr     r1, [sp, #0x0]
	ldr     r3, [pc, #0x6c] @ 0x223f248, (=0x1820)
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	add     r1, #0x20
	add     r2, r2, r3
	bl      Function_2013b10
	ldr     r1, [sp, #0x0]
	cmp     r0, #0x0
	str     r0, [r1, #0x1c]
	bne     branch_223f1f4
	bl      ErrorHandling
.thumb
branch_223f1f4: @ 223f1f4 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x54] @ 0x223f24c, (=0x3020)
	mov     r5, #0x0
	str     r4, [r0, r1]
	mov     r6, r0
.thumb
branch_223f1fe: @ 223f1fe :thumb
	mov     r3, r6
	mov     r4, r7
	add     r3, #0x20
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [pc, #0x30] @ 0x223f248, (=0x1820)
	mov     r3, r7
	add     r4, r6, r0
	ldmia   r3!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r3!, {r0,r1}
	.hword  0x1c6d @ add r5, r5, #0x1
	mov     r6, r2
	stmia   r4!, {r0,r1}
	cmp     r5, #0xc0
	blt     branch_223f1fe
	ldr     r0, [sp, #0x0]
	ldr     r2, [pc, #0x18] @ 0x223f250, (=0x223f199)
	ldr     r3, [pc, #0x18] @ 0x223f254, (=0x223f1ad)
	mov     r1, r0
	bl      Function_223f110
	ldr     r0, [sp, #0x0]
	pop     {r3-r7,pc}
@ 0x223f244

.word 0x3024 @ 0x223f244
.word 0x1820 @ 0x223f248
.word 0x3020 @ 0x223f24c
.word Function_223f198+1 @ =0x223f199, 0x223f250
.word Function_223f1ac+1 @ =0x223f1ad, 0x223f254
.thumb
Function_223f258: @ 223f258 :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_223f262
	bl      ErrorHandling
.thumb
branch_223f262: @ 223f262 :thumb
	mov     r0, r4
	bl      Function_223f150
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_223f272
	bl      Function_2013b40
.thumb
branch_223f272: @ 223f272 :thumb
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x223f27a


.align 2, 0


.thumb
Function_223f27c: @ 223f27c :thumb
	push    {r4,lr}
	mov     r4, r0
	bne     branch_223f286
	bl      ErrorHandling
branch_223f286: @ 223f286 :thumb
	ldr     r0, [r4, #0x1c]
	bl      Function_2013b54
	pop     {r4,pc}



.align 2, 0
Unknown_223f290: @ 0x223f290
.incbin "./baserom/overlay/overlay_0104.bin", 0x115b0, 0x223f65c - 0x223f290


.word Function_2231148+1 @ =0x2231149, 0x223f65c
.word Function_22311bc+1 @ =0x22311bd, 0x223f660
.word Function_22312d8+1 @ =0x22312d9, 0x223f664
.word Function_2231720+1 @ =0x2231721, 0x223f668
.word Function_2231864+1 @ =0x2231865, 0x223f66c
.word Function_22319cc+1 @ =0x22319cd, 0x223f670
.word Function_222fca0+1 @ =0x222fca1, 0x223f674
.word Function_222fca4+1 @ =0x222fca5, 0x223f678
.word Function_222fcb0+1 @ =0x222fcb1, 0x223f67c
.word Function_222fcc4+1 @ =0x222fcc5, 0x223f680
.word Function_222fcf0+1 @ =0x222fcf1, 0x223f684
.word Function_222fd18+1 @ =0x222fd19, 0x223f688
.word Function_222fd6c+1 @ =0x222fd6d, 0x223f68c
.word Function_222fd84+1 @ =0x222fd85, 0x223f690
.word Function_222fd9c+1 @ =0x222fd9d, 0x223f694
.word Function_222fdb8+1 @ =0x222fdb9, 0x223f698
.word Function_222fe30+1 @ =0x222fe31, 0x223f69c
.word Function_222fe48+1 @ =0x222fe49, 0x223f6a0
.word Function_222fe80+1 @ =0x222fe81, 0x223f6a4
.word Function_222fe98+1 @ =0x222fe99, 0x223f6a8
.word Function_222fea4+1 @ =0x222fea5, 0x223f6ac
.word Function_222fedc+1 @ =0x222fedd, 0x223f6b0
.word Function_222ff0c+1 @ =0x222ff0d, 0x223f6b4
.word Function_222ff3c+1 @ =0x222ff3d, 0x223f6b8
.word Function_222ff84+1 @ =0x222ff85, 0x223f6bc
.word Function_222ff90+1 @ =0x222ff91, 0x223f6c0
.word Function_222ffd8+1 @ =0x222ffd9, 0x223f6c4
.word Function_222fffc+1 @ =0x222fffd, 0x223f6c8
.word Function_2230058+1 @ =0x2230059, 0x223f6cc
.word Function_22300b8+1 @ =0x22300b9, 0x223f6d0
.word Function_22300dc+1 @ =0x22300dd, 0x223f6d4
.word Function_2230108+1 @ =0x2230109, 0x223f6d8
.word Function_223014c+1 @ =0x223014d, 0x223f6dc
.word Function_22301a8+1 @ =0x22301a9, 0x223f6e0
.word Function_2230208+1 @ =0x2230209, 0x223f6e4
.word Function_2230234+1 @ =0x2230235, 0x223f6e8
.word Function_2230250+1 @ =0x2230251, 0x223f6ec
.word Function_2230260+1 @ =0x2230261, 0x223f6f0
.word Function_222fde8+1 @ =0x222fde9, 0x223f6f4
.word Function_222fe08+1 @ =0x222fe09, 0x223f6f8
.word Function_22302e8+1 @ =0x22302e9, 0x223f6fc
.word Function_22303a8+1 @ =0x22303a9, 0x223f700
.word Function_22303c8+1 @ =0x22303c9, 0x223f704
.word Function_22304a0+1 @ =0x22304a1, 0x223f708
.word Function_22304c8+1 @ =0x22304c9, 0x223f70c
.word Function_2230508+1 @ =0x2230509, 0x223f710
.word Function_223050c+1 @ =0x223050d, 0x223f714
.word Function_22305b8+1 @ =0x22305b9, 0x223f718
.word Function_22305dc+1 @ =0x22305dd, 0x223f71c
.word Function_2230640+1 @ =0x2230641, 0x223f720
.word Function_223066c+1 @ =0x223066d, 0x223f724
.word Function_2230708+1 @ =0x2230709, 0x223f728
.word Function_2230728+1 @ =0x2230729, 0x223f72c
.word Function_2230760+1 @ =0x2230761, 0x223f730
.word Function_2230790+1 @ =0x2230791, 0x223f734
.word Function_22307d8+1 @ =0x22307d9, 0x223f738
.word Function_2230810+1 @ =0x2230811, 0x223f73c
.word Function_2230830+1 @ =0x2230831, 0x223f740
.word Function_2230910+1 @ =0x2230911, 0x223f744
.word Function_2230fa4+1 @ =0x2230fa5, 0x223f748
.word Function_2230fec+1 @ =0x2230fed, 0x223f74c
.word Function_2230ff8+1 @ =0x2230ff9, 0x223f750
.word Function_223102c+1 @ =0x223102d, 0x223f754
.word Function_2231050+1 @ =0x2231051, 0x223f758
.word Function_2231068+1 @ =0x2231069, 0x223f75c
.word Function_2231090+1 @ =0x2231091, 0x223f760
.word Function_22310e0+1 @ =0x22310e1, 0x223f764
.word Function_22310ec+1 @ =0x22310ed, 0x223f768
.word Function_2231118+1 @ =0x2231119, 0x223f76c
.word Function_2231a28+1 @ =0x2231a29, 0x223f770
.word Function_2231af4+1 @ =0x2231af5, 0x223f774
.word Function_2231b20+1 @ =0x2231b21, 0x223f778
.word Function_2231b54+1 @ =0x2231b55, 0x223f77c
.word Function_2231b74+1 @ =0x2231b75, 0x223f780
.word Function_2231ba8+1 @ =0x2231ba9, 0x223f784
.word Function_2231d1c+1 @ =0x2231d1d, 0x223f788
.word Function_2231d8c+1 @ =0x2231d8d, 0x223f78c
.word Function_2231dac+1 @ =0x2231dad, 0x223f790
.word Function_2231e30+1 @ =0x2231e31, 0x223f794
.word Function_2231e54+1 @ =0x2231e55, 0x223f798
.word Function_2231e80+1 @ =0x2231e81, 0x223f79c
.word Function_2231ea4+1 @ =0x2231ea5, 0x223f7a0
.word Function_2231bd4+1 @ =0x2231bd5, 0x223f7a4
.word Function_2231c44+1 @ =0x2231c45, 0x223f7a8
.word Function_2231c70+1 @ =0x2231c71, 0x223f7ac
.word Function_2231ce4+1 @ =0x2231ce5, 0x223f7b0
.word Function_2236090+1 @ =0x2236091, 0x223f7b4
.word Function_22360a8+1 @ =0x22360a9, 0x223f7b8
.word Function_22360c0+1 @ =0x22360c1, 0x223f7bc
.word Function_22308e0+1 @ =0x22308e1, 0x223f7c0
.word Function_2230900+1 @ =0x2230901, 0x223f7c4
.word Function_2239080+1 @ =0x2239081, 0x223f7c8
.word Function_2239090+1 @ =0x2239091, 0x223f7cc
.word Function_22390a0+1 @ =0x22390a1, 0x223f7d0
.word Function_22390d8+1 @ =0x22390d9, 0x223f7d4
.word Function_22390e8+1 @ =0x22390e9, 0x223f7d8
.word Function_223910c+1 @ =0x223910d, 0x223f7dc
.word Function_223911c+1 @ =0x223911d, 0x223f7e0
.word Function_22332b4+1 @ =0x22332b5, 0x223f7e4
.word Function_22332f4+1 @ =0x22332f5, 0x223f7e8
.word Function_2233310+1 @ =0x2233311, 0x223f7ec
.word Function_2233324+1 @ =0x2233325, 0x223f7f0
.word Function_223338c+1 @ =0x223338d, 0x223f7f4
.word Function_22333b4+1 @ =0x22333b5, 0x223f7f8
.word Function_22333f8+1 @ =0x22333f9, 0x223f7fc
.word Function_223348c+1 @ =0x223348d, 0x223f800
.word Function_22334a0+1 @ =0x22334a1, 0x223f804
.word Function_22334b4+1 @ =0x22334b5, 0x223f808
.word Function_22334c8+1 @ =0x22334c9, 0x223f80c
.word Function_22334dc+1 @ =0x22334dd, 0x223f810
.word Function_22338e0+1 @ =0x22338e1, 0x223f814
.word Function_22338fc+1 @ =0x22338fd, 0x223f818
.word Function_223392c+1 @ =0x223392d, 0x223f81c
.word Function_223397c+1 @ =0x223397d, 0x223f820
.word Function_2230958+1 @ =0x2230959, 0x223f824
.word Function_2230970+1 @ =0x2230971, 0x223f828
.word Function_2230b50+1 @ =0x2230b51, 0x223f82c
.word Function_2230bb0+1 @ =0x2230bb1, 0x223f830
.word Function_2230bbc+1 @ =0x2230bbd, 0x223f834
.word Function_2231ec4+1 @ =0x2231ec5, 0x223f838
.word Function_2230be4+1 @ =0x2230be5, 0x223f83c
.word Function_2230c04+1 @ =0x2230c05, 0x223f840
.word Function_2230c74+1 @ =0x2230c75, 0x223f844
.word Function_2230c88+1 @ =0x2230c89, 0x223f848
.word Function_2234d50+1 @ =0x2234d51, 0x223f84c
.word Function_2230cac+1 @ =0x2230cad, 0x223f850
.word Function_2230cc4+1 @ =0x2230cc5, 0x223f854
.word Function_2230cd4+1 @ =0x2230cd5, 0x223f858
.word Function_2230cf4+1 @ =0x2230cf5, 0x223f85c
.word Function_2230dc4+1 @ =0x2230dc5, 0x223f860
.word Function_2230df0+1 @ =0x2230df1, 0x223f864
.word Function_2230e20+1 @ =0x2230e21, 0x223f868
.word Function_2230e40+1 @ =0x2230e41, 0x223f86c
.word Function_2230eb8+1 @ =0x2230eb9, 0x223f870
.word Function_2230ed8+1 @ =0x2230ed9, 0x223f874
.word Function_2230efc+1 @ =0x2230efd, 0x223f878
.word Function_2230f28+1 @ =0x2230f29, 0x223f87c
.word Function_2230f6c+1 @ =0x2230f6d, 0x223f880
.word Function_2239130+1 @ =0x2239131, 0x223f884
.word Function_22392c0+1 @ =0x22392c1, 0x223f888
.word Function_2239300+1 @ =0x2239301, 0x223f88c
.word Function_2239314+1 @ =0x2239315, 0x223f890
.word Function_2239364+1 @ =0x2239365, 0x223f894
.word Function_223939c+1 @ =0x223939d, 0x223f898
.word Function_2239400+1 @ =0x2239401, 0x223f89c
.word Function_2234838+1 @ =0x2234839, 0x223f8a0
.word Function_223488c+1 @ =0x223488d, 0x223f8a4
.word Function_22348a8+1 @ =0x22348a9, 0x223f8a8
.word Function_22348bc+1 @ =0x22348bd, 0x223f8ac
.word Function_2234994+1 @ =0x2234995, 0x223f8b0
.word Function_22349b8+1 @ =0x22349b9, 0x223f8b4
.word Function_2234a1c+1 @ =0x2234a1d, 0x223f8b8
.word Function_2234c80+1 @ =0x2234c81, 0x223f8bc
.word Function_2234c9c+1 @ =0x2234c9d, 0x223f8c0
.word Function_2234ccc+1 @ =0x2234ccd, 0x223f8c4
.word Function_2234d18+1 @ =0x2234d19, 0x223f8c8
.word Function_2231d10+1 @ =0x2231d11, 0x223f8cc
.word Function_22358e8+1 @ =0x22358e9, 0x223f8d0
.word Function_223594c+1 @ =0x223594d, 0x223f8d4
.word Function_2235968+1 @ =0x2235969, 0x223f8d8
.word Function_223597c+1 @ =0x223597d, 0x223f8dc
.word Function_2235a24+1 @ =0x2235a25, 0x223f8e0
.word Function_2235aac+1 @ =0x2235aad, 0x223f8e4
.word Function_2235ae8+1 @ =0x2235ae9, 0x223f8e8
.word Function_2235b98+1 @ =0x2235b99, 0x223f8ec
.word Function_2235bac+1 @ =0x2235bad, 0x223f8f0
.word Function_2235bc0+1 @ =0x2235bc1, 0x223f8f4
.word Function_2235f9c+1 @ =0x2235f9d, 0x223f8f8
.word Function_2235fb8+1 @ =0x2235fb9, 0x223f8fc
.word Function_2235fe8+1 @ =0x2235fe9, 0x223f900
.word Function_22359d0+1 @ =0x22359d1, 0x223f904
.word Function_2236038+1 @ =0x2236039, 0x223f908
.word Function_22360d8+1 @ =0x22360d9, 0x223f90c
.word Function_2236120+1 @ =0x2236121, 0x223f910
.word Function_2236150+1 @ =0x2236151, 0x223f914
.word Function_223617c+1 @ =0x223617d, 0x223f918
.word Function_22395f0+1 @ =0x22395f1, 0x223f91c
.word Function_2239610+1 @ =0x2239611, 0x223f920
.word Function_2239624+1 @ =0x2239625, 0x223f924
.word Function_2239660+1 @ =0x2239661, 0x223f928
.word Function_22396a4+1 @ =0x22396a5, 0x223f92c
.word Function_22396d4+1 @ =0x22396d5, 0x223f930
.word Function_223971c+1 @ =0x223971d, 0x223f934
.word Function_2239794+1 @ =0x2239795, 0x223f938
.word Function_22397b0+1 @ =0x22397b1, 0x223f93c
.word Function_2239b14+1 @ =0x2239b15, 0x223f940
.word Function_2239bf4+1 @ =0x2239bf5, 0x223f944
.word Function_2239c10+1 @ =0x2239c11, 0x223f948
.word Function_2239c44+1 @ =0x2239c45, 0x223f94c
.word Function_2231ed8+1 @ =0x2231ed9, 0x223f950
.word Function_2237378+1 @ =0x2237379, 0x223f954
.word Function_22373dc+1 @ =0x22373dd, 0x223f958
.word Function_22373f8+1 @ =0x22373f9, 0x223f95c
.word Function_2237460+1 @ =0x2237461, 0x223f960
.word Function_22375f8+1 @ =0x22375f9, 0x223f964
.word Function_2237720+1 @ =0x2237721, 0x223f968
.word Function_2237734+1 @ =0x2237735, 0x223f96c
.word Function_2237748+1 @ =0x2237749, 0x223f970
.word Function_2237cac+1 @ =0x2237cad, 0x223f974
.word Function_2237cc8+1 @ =0x2237cc9, 0x223f978
.word Function_2237cf8+1 @ =0x2237cf9, 0x223f97c
.word Function_223740c+1 @ =0x223740d, 0x223f980
.word Function_2237d48+1 @ =0x2237d49, 0x223f984
.word Function_2237d84+1 @ =0x2237d85, 0x223f988
.word Function_2237d98+1 @ =0x2237d99, 0x223f98c
.word Function_2234d6c+1 @ =0x2234d6d, 0x223f990
.word Function_2231efc+1 @ =0x2231efd, 0x223f994
.word Function_2231f34+1 @ =0x2231f35, 0x223f998
.word Function_2231f44+1 @ =0x2231f45, 0x223f99c
.word Function_2231f5c+1 @ =0x2231f5d, 0x223f9a0

.incbin "./baserom/overlay/overlay_0104.bin", 0x11cc4, 0x2241a38 - 0x223f9a4


.word Function_2238bbc+1 @ =0x2238bbd, 0x2241a38
.word Function_2238c18+1 @ =0x2238c19, 0x2241a3c
.word Function_2238c9c+1 @ =0x2238c9d, 0x2241a40
.word Function_2238d14+1 @ =0x2238d15, 0x2241a44
.word Function_2238d8c+1 @ =0x2238d8d, 0x2241a48
.word Function_2238e08+1 @ =0x2238e09, 0x2241a4c
.word Function_2238e9c+1 @ =0x2238e9d, 0x2241a50
.word Function_2238ef8+1 @ =0x2238ef9, 0x2241a54
.word Function_2238f54+1 @ =0x2238f55, 0x2241a58
.word Function_2238bbc+1 @ =0x2238bbd, 0x2241a5c
.word Function_2238c18+1 @ =0x2238c19, 0x2241a60
.word Function_2238c9c+1 @ =0x2238c9d, 0x2241a64
.word Function_2238d14+1 @ =0x2238d15, 0x2241a68
.word Function_2238d8c+1 @ =0x2238d8d, 0x2241a6c
.word Function_2238e08+1 @ =0x2238e09, 0x2241a70
.word Function_2238e9c+1 @ =0x2238e9d, 0x2241a74
.word Function_2238ef8+1 @ =0x2238ef9, 0x2241a78
.word Function_2238f54+1 @ =0x2238f55, 0x2241a7c
.word Function_2238fac+1 @ =0x2238fad, 0x2241a80
.word Function_2238fb8+1 @ =0x2238fb9, 0x2241a84
.word Function_2238fc0+1 @ =0x2238fc1, 0x2241a88
.word Function_2238fc8+1 @ =0x2238fc9, 0x2241a8c
.word Function_2238fd0+1 @ =0x2238fd1, 0x2241a90
.word Function_2238fd8+1 @ =0x2238fd9, 0x2241a94
.word Function_2238fe4+1 @ =0x2238fe5, 0x2241a98
.word Function_2238ff0+1 @ =0x2238ff1, 0x2241a9c
.word Function_2238ffc+1 @ =0x2238ffd, 0x2241aa0
.word Function_2239004+1 @ =0x2239005, 0x2241aa4
.word Function_2239008+1 @ =0x2239009, 0x2241aa8
.word Function_223900c+1 @ =0x223900d, 0x2241aac
.word Function_2239010+1 @ =0x2239011, 0x2241ab0
.word Function_2239008+1 @ =0x2239009, 0x2241ab4
@ 0x2241ab8


.incbin "./baserom/overlay/overlay_0104.bin", 0x13dd8, 0x2241ac0 - 0x2241ab8


@end 0x2241ac0



