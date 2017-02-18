

.arm
GX_Init: @ 20bdc08 :arm
	stmfd   sp!, {r4-r6,lr}

	ldr     r2, =REG_POWERCNT
	ldr     r0, =0xfffffdf1
	ldrh    r1, [r2]
	orr     r1, r1, #POWER_SWAP_LCDS
	strh    r1, [r2]

	ldrh    r1, [r2]
	and     r0, r1, r0
	orr     r0, r0, #POWER_2D_A | POWER_3D_CORE | POWER_MATRIX
	orr     r0, r0, #POWER_2D_B
	strh    r0, [r2]

	ldrh    r0, [r2]
	orr     r0, r0, #POWER_LCD
	strh    r0, [r2]

	bl      GX_InitGXState
	ldr     r5, =RAM_21ccb9c
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x0
	bne     branch_20bdc7c
	mvn     r4, #0x2
branch_20bdc58: @ 20bdc58 :arm
	bl      OS_GetLockID
	mov     r6, r0
	cmp     r6, r4
	bne     branch_20bdc6c
	bl      OS_Panic
branch_20bdc6c: @ 20bdc6c :arm
	strh    r6, [r5, #0x2]
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x0
	beq     branch_20bdc58
branch_20bdc7c: @ 20bdc7c :arm
	ldr     r0, =REG_DISPSTAT
	mov     r2, #0x0
	mov     r3, #REG_DISPCNT
	strh    r2, [r0]
	ldr     r0, =Unknown_2101144
	str     r2, [r3]
	ldr     r0, [r0, #0x4]
	sub     r1, r3, #0x4000001
	cmp     r0, r1
	beq     branch_20bdcd4
	add     r1, r3, #0x8
	mov     r3, #0x60
	bl      MI_DmaFill32
	ldr     r1, =REG_MASTER_BRIGHT
	mov     r2, #0x0
	ldr     r0, =Unknown_2101144
	strh    r2, [r1]
	ldr     r0, [r0, #0x4]
	ldr     r1, =REG_DISPCNT_SUB
	mov     r3, #0x70
	bl      MI_DmaFill32
	b       branch_20bdcfc

branch_20bdcd4: @ 20bdcd4 :arm
	mov     r0, r2
	add     r1, r3, #0x8
	mov     r2, #0x60
	bl      MIi_CpuClear32
	ldr     r3, =REG_MASTER_BRIGHT
	mov     r0, #0x0
	ldr     r1, =REG_DISPCNT_SUB
	mov     r2, #0x70
	strh    r0, [r3]
	bl      MIi_CpuClear32
branch_20bdcfc: @ 20bdcfc :arm
	ldr     r0, =REG_BG2PA @ 0x4000020
	mov     r2, #0x100
	strh    r2, [r0]
	strh    r2, [r0, #0x6]
	strh    r2, [r0, #0x10]
	strh    r2, [r0, #0x16]
	add     r1, r0, #0x1000
	ldr     r0, =REG_BG2PD_SUB @ 0x4001026
	strh    r2, [r1]
	strh    r2, [r0]
	strh    r2, [r0, #0xa]
	strh    r2, [r0, #0x10]
	ldmfd   sp!, {r4-r6,pc}
@ 0x20bdd30

.pool



.arm
GX_HBlankIntr: @ 20bdd54 :arm
	ldr     r2, =REG_DISPSTAT
	cmp     r0, #0x0
	ldrh    r0, [r2]
	ldreqh  r1, [r2]
	and     r0, r0, #DISP_HBLANK_IRQ
	biceq   r1, r1, #DISP_HBLANK_IRQ
	streqh  r1, [r2]
	bxeq    lr

	ldrh    r1, [r2]
	orr     r1, r1, #DISP_HBLANK_IRQ
	strh    r1, [r2]
	bx      lr
@ 0x20bdd84

.pool



arm_func_start GX_VBlankIntr
GX_VBlankIntr: @ 20bdd88 :arm
	ldr     r2, =REG_DISPSTAT
	cmp     r0, #0x0
	ldrh    r0, [r2]
	ldreqh  r1, [r2]
	and     r0, r0, #DISP_VBLANK_IRQ
	biceq   r1, r1, #DISP_VBLANK_IRQ
	streqh  r1, [r2]
	bxeq    lr

	ldrh    r1, [r2]
	orr     r1, r1, #DISP_VBLANK_IRQ
	strh    r1, [r2]
	bx      lr
@ 0x20bddb8

.pool
arm_func_end GX_VBlankIntr




arm_func_start GX_DispOff
GX_DispOff: @ 20bddbc :arm
	stmfd   sp!, {r3,lr}

	mov     lr, #REG_DISPCNT
	ldr     r12, [lr]
	ldr     r1, =Unknown_2101144
	and     r2, r12, #0x30000
	mov     r3, #0x0
	ldr     r0, =RAM_21ccb9c
	mov     r2, r2, lsr #16
	strh    r3, [r1]
	strh    r2, [r0]
	bic     r0, r12, #0x30000
	str     r0, [lr]

	ldmfd   sp!, {r3,pc}
@ 0x20bddf0

.pool
arm_func_end GX_DispOff




arm_func_start GX_DispOn
GX_DispOn: @ 20bddf8 :arm
	ldr     r0, =RAM_21ccb9c
	ldr     r1, =Unknown_2101144
	ldrh    r2, [r0]
	mov     r0, #0x1
	strh    r0, [r1]
	mov     r1, #REG_DISPCNT
	cmp     r2, #0x0
	ldreq   r0, [r1]
	orreq   r0, r0, #MODE_0_2D
	streq   r0, [r1]
	bxeq    lr

	ldr     r0, [r1]
	bic     r0, r0, #0x30000
	orr     r0, r0, r2, lsl #16
	str     r0, [r1]
	bx      lr
@ 0x20bde38

.pool
arm_func_end GX_DispOn



/* Input:
r0: value that is Display Mode
r1: value that is BG Mode
r2: value (0;1) that is ENABLE_3D
*/
arm_func_start GX_SetGraphicsMode
GX_SetGraphicsMode: @ 20bde40 :arm
	stmfd   sp!, {r3,lr}
	ldr     r3, =Unknown_2101144
	mov     lr, #REG_DISPCNT
	ldrh    r12, [r3]
	ldr     lr, [lr]
	ldr     r3, =RAM_21ccb9c
	cmp     r12, #0x0
	strh    r0, [r3]

	ldr     r3, =0xfff0fff0
	moveq   r0, #0x0
	and     r3, lr, r3
	orr     r0, r3, r0, lsl #16
	orr     r0, r1, r0 @ BG Mode
	orr     r1, r0, r2, lsl #3 @ ENABLE_3D
	mov     r12, #REG_DISPCNT
	ldr     r0, =RAM_21ccb9c
	str     r1, [r12]
	ldrh    r0, [r0]
	cmp     r0, #0x0
	ldreq   r0, =Unknown_2101144
	moveq   r1, #0x0
	streqh  r1, [r0]
	ldmfd   sp!, {r3,pc}
@ 0x20bde9c

.pool
arm_func_end GX_SetGraphicsMode




arm_func_start GXS_SetGraphicsMode
GXS_SetGraphicsMode: @ 20bdea8 :arm
	ldr     r2, =REG_DISPCNT_SUB
	ldr     r1, [r2]
	bic     r1, r1, #0x7
	orr     r0, r1, r0
	str     r0, [r2]
	bx      lr
@ 0x20bdec0

.pool
arm_func_end GXS_SetGraphicsMode



/* Input:
r0: REG_MASTER_BRIGHT, REG_MASTER_BRIGHT_SUB
r1: 0 = disable
    + = brightness up
    - = brightness down
*/
arm_func_start GXx_SetMasterBrightness_
GXx_SetMasterBrightness_: @ 20bdec4 :arm
	cmp     r1, #0x0
	moveq   r1, #0x0
	streqh  r1, [r0]
	bxeq    lr

	orrgt   r1, r1, #1<<14      @ Up
	strgth  r1, [r0]

	rsble   r1, r1, #0x0
	orrle   r1, r1, #2<<14      @ Down
	strleh  r1, [r0]
	bx      lr
arm_func_end GXx_SetMasterBrightness_


arm_func_start GX_InitGXState
GX_InitGXState: @ 20bdeec :arm
	ldr     r0, =RAM_21ccba0
	mov     r2, #0x0
	strh    r2, [r0]
	strh    r2, [r0, #0x2]
	strh    r2, [r0, #0x4]
	strh    r2, [r0, #0x6]
	strh    r2, [r0, #0x8]
	strh    r2, [r0, #0xa]
	strh    r2, [r0, #0xc]
	strh    r2, [r0, #0xe]
	strh    r2, [r0, #0x10]
	strh    r2, [r0, #0x12]
	strh    r2, [r0, #0x14]
	strh    r2, [r0, #0x16]
	ldr     r1, =VRAM_CR
	strh    r2, [r0, #0x18]
	str     r2, [r1]
	strb    r2, [r1, #0x4]
	strb    r2, [r1, #0x5]
	strb    r2, [r1, #0x6]
	strh    r2, [r1, #0x8]
	bx      lr
@ 0x20bdf44

.pool
arm_func_end GX_InitGXState



arm_func_start GX_VRAMCNT_SetLCDC_
GX_VRAMCNT_SetLCDC_: @ 20bdf4c :arm
	tst     r0, #0x1
	ldrne   r1, =VRAM_A_CR
	movne   r2, #VRAM_ENABLE
	strneb  r2, [r1]

	tst     r0, #0x2
	ldrne   r1, =VRAM_B_CR
	movne   r2, #VRAM_ENABLE
	strneb  r2, [r1]

	tst     r0, #0x4
	ldrne   r1, =VRAM_C_CR
	movne   r2, #VRAM_ENABLE
	strneb  r2, [r1]

	tst     r0, #0x8
	ldrne   r1, =VRAM_D_CR
	movne   r2, #VRAM_ENABLE
	strneb  r2, [r1]

	tst     r0, #0x10
	ldrne   r1, =VRAM_E_CR
	movne   r2, #VRAM_ENABLE
	strneb  r2, [r1]

	tst     r0, #0x20
	ldrne   r1, =VRAM_F_CR
	movne   r2, #VRAM_ENABLE
	strneb  r2, [r1]

	tst     r0, #0x40
	ldrne   r1, =VRAM_G_CR
	movne   r2, #VRAM_ENABLE
	strneb  r2, [r1]

	tst     r0, #0x80
	ldrne   r1, =VRAM_H_CR
	movne   r2, #VRAM_ENABLE
	strneb  r2, [r1]

	tst     r0, #0x100
	ldrne   r0, =VRAM_I_CR
	movne   r1, #VRAM_ENABLE
	strneb  r1, [r0]

	bx      lr
@ 0x20bdfe0

.pool
arm_func_end GX_VRAMCNT_SetLCDC_



arm_func_start GX_SetBankForBG
GX_SetBankForBG: @ 20be004 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, =RAM_21ccba0
	mvn     r12, r0
	ldrh    r3, [r1]
	ldrh    r2, [r1, #0x2]
	cmp     r0, #0x40
	orr     r2, r3, r2
	and     r2, r12, r2
	strh    r2, [r1]
	strh    r0, [r1, #0x2]
	bgt     branch_20be0dc
	cmp     r0, #0x40
	bge     branch_20be258
	cmp     r0, #0x20
	bgt     branch_20be0d0
	cmp     r0, #0x0
	addge   pc, pc, r0, lsl #2
	b       branch_20be264
	b       branch_20be264
	b       branch_20be178
	b       branch_20be144
	b       branch_20be16c
	b       branch_20be11c
	b       branch_20be1b4
	b       branch_20be138
	b       branch_20be160
	b       branch_20be100
	b       branch_20be1cc
	b       branch_20be1e4
	b       branch_20be188
	b       branch_20be110
	b       branch_20be1a8
	b       branch_20be12c
	b       branch_20be154
	b       branch_20be214
	b       branch_20be264
	b       branch_20be264
	b       branch_20be264
	b       branch_20be264
	b       branch_20be264
	b       branch_20be264
	b       branch_20be264
	b       branch_20be264
	b       branch_20be264
	b       branch_20be264
	b       branch_20be264
	b       branch_20be264
	b       branch_20be264
	b       branch_20be264
	b       branch_20be264
	b       branch_20be248

branch_20be0d0: @ 20be0d0 :arm
	cmp     r0, #0x30
	beq     branch_20be208
	b       branch_20be264

branch_20be0dc: @ 20be0dc :arm
	cmp     r0, #0x60
	bgt     branch_20be0f4
	bge     branch_20be23c
	cmp     r0, #0x50
	beq     branch_20be224
	b       branch_20be264

branch_20be0f4: @ 20be0f4 :arm
	cmp     r0, #0x70
	beq     branch_20be1fc
	b       branch_20be264

branch_20be100: @ 20be100 :arm
	ldr     r0, =VRAM_D_CR
	mov     r1, #0x81
	strb    r1, [r0]
	b       branch_20be264

branch_20be110: @ 20be110 :arm
	ldr     r0, =VRAM_D_CR
	mov     r1, #0x89
	strb    r1, [r0]
branch_20be11c: @ 20be11c :arm
	ldr     r0, =VRAM_C_CR
	mov     r1, #0x81
	strb    r1, [r0]
	b       branch_20be264

branch_20be12c: @ 20be12c :arm
	ldr     r0, =VRAM_D_CR
	mov     r1, #0x91
	strb    r1, [r0]
branch_20be138: @ 20be138 :arm
	ldr     r0, =VRAM_C_CR
	mov     r1, #0x89
	strb    r1, [r0]
branch_20be144: @ 20be144 :arm
	ldr     r0, =VRAM_B_CR
	mov     r1, #0x81
	strb    r1, [r0]
	b       branch_20be264

branch_20be154: @ 20be154 :arm
	ldr     r0, =VRAM_D_CR
	mov     r1, #0x99
	strb    r1, [r0]
branch_20be160: @ 20be160 :arm
	ldr     r0, =VRAM_C_CR
	mov     r1, #0x91
	strb    r1, [r0]
branch_20be16c: @ 20be16c :arm
	ldr     r0, =VRAM_B_CR
	mov     r1, #0x89
	strb    r1, [r0]
branch_20be178: @ 20be178 :arm
	ldr     r0, =VRAM_A_CR
	mov     r1, #0x81
	strb    r1, [r0]
	b       branch_20be264

branch_20be188: @ 20be188 :arm
	ldr     r1, =VRAM_A_CR
	mov     r0, #0x81
	strb    r0, [r1]
	mov     r0, #0x89
	strb    r0, [r1, #0x1]
	mov     r0, #0x91
	strb    r0, [r1, #0x3]
	b       branch_20be264

branch_20be1a8: @ 20be1a8 :arm
	ldr     r0, =VRAM_D_CR
	mov     r1, #0x91
	strb    r1, [r0]
branch_20be1b4: @ 20be1b4 :arm
	ldr     r1, =VRAM_A_CR
	mov     r0, #0x81
	strb    r0, [r1]
	mov     r0, #0x89
	strb    r0, [r1, #0x2]
	b       branch_20be264

branch_20be1cc: @ 20be1cc :arm
	ldr     r1, =VRAM_A_CR
	mov     r0, #0x81
	strb    r0, [r1]
	mov     r0, #0x89
	strb    r0, [r1, #0x3]
	b       branch_20be264

branch_20be1e4: @ 20be1e4 :arm
	ldr     r1, =VRAM_B_CR
	mov     r0, #0x81
	strb    r0, [r1]
	mov     r0, #0x89
	strb    r0, [r1, #0x2]
	b       branch_20be264

branch_20be1fc: @ 20be1fc :arm
	ldr     r0, =VRAM_G_CR
	mov     r1, #0x99
	strb    r1, [r0]
branch_20be208: @ 20be208 :arm
	ldr     r0, =VRAM_F_CR
	mov     r1, #0x91
	strb    r1, [r0]
branch_20be214: @ 20be214 :arm
	ldr     r0, =VRAM_E_CR
	mov     r1, #0x81
	strb    r1, [r0]
	b       branch_20be264

branch_20be224: @ 20be224 :arm
	ldr     r1, =VRAM_G_CR
	mov     r0, #0x91
	strb    r0, [r1]
	mov     r0, #0x81
	strb    r0, [r1, #-0x2]
	b       branch_20be264

branch_20be23c: @ 20be23c :arm
	ldr     r0, =VRAM_G_CR
	mov     r1, #0x89
	strb    r1, [r0]
branch_20be248: @ 20be248 :arm
	ldr     r0, =VRAM_F_CR
	mov     r1, #0x81
	strb    r1, [r0]
	b       branch_20be264

branch_20be258: @ 20be258 :arm
	ldr     r0, =VRAM_G_CR
	mov     r1, #0x81
	strb    r1, [r0]
branch_20be264: @ 20be264 :arm
	ldr     r0, =RAM_21ccba0
	ldrh    r0, [r0]
	bl      GX_VRAMCNT_SetLCDC_
	ldmfd   sp!, {r3,pc}
@ 0x20be274

.pool
arm_func_end GX_SetBankForBG



arm_func_start GX_SetBankForOBJ
GX_SetBankForOBJ: @ 20be294 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, [pc, #0x12c] @ [0x20be3cc] (=RAM_21ccba0)
	mvn     r12, r0
	ldrh    r3, [r1]
	ldrh    r2, [r1, #0x4]
	cmp     r0, #0x30
	orr     r2, r3, r2
	and     r2, r12, r2
	strh    r2, [r1]
	strh    r0, [r1, #0x4]
	bgt     branch_20be2fc
	cmp     r0, #0x30
	bge     branch_20be370
	cmp     r0, #0x10
	bgt     branch_20be2f0
	bge     branch_20be37c
	cmp     r0, #0x3
	addls   pc, pc, r0, lsl #2
	b       branch_20be3bc
	b       branch_20be3bc
	b       branch_20be344
	b       branch_20be354
	b       branch_20be338

branch_20be2f0: @ 20be2f0 :arm
	cmp     r0, #0x20
	beq     branch_20be3b0
	b       branch_20be3bc

branch_20be2fc: @ 20be2fc :arm
	cmp     r0, #0x50
	bgt     branch_20be31c
	bge     branch_20be38c
	cmp     r0, #0x40
	ldreq   r0, [pc, #0xbc] @ [0x20be3d0] (=VRAM_G_CR)
	moveq   r1, #0x82
	streqb  r1, [r0]
	b       branch_20be3bc

branch_20be31c: @ 20be31c :arm
	cmp     r0, #0x60
	bgt     branch_20be32c
	beq     branch_20be3a4
	b       branch_20be3bc

branch_20be32c: @ 20be32c :arm
	cmp     r0, #0x70
	beq     branch_20be364
	b       branch_20be3bc

branch_20be338: @ 20be338 :arm
	ldr     r0, [pc, #0x94] @ [0x20be3d4] (=VRAM_B_CR)
	mov     r1, #0x8a
	strb    r1, [r0]
branch_20be344: @ 20be344 :arm
	ldr     r0, [pc, #0x8c] @ [0x20be3d8] (=VRAM_A_CR)
	mov     r1, #0x82
	strb    r1, [r0]
	b       branch_20be3bc

branch_20be354: @ 20be354 :arm
	ldr     r0, [pc, #0x78] @ [0x20be3d4] (=VRAM_B_CR)
	mov     r1, #0x82
	strb    r1, [r0]
	b       branch_20be3bc

branch_20be364: @ 20be364 :arm
	ldr     r0, [pc, #0x64] @ [0x20be3d0] (=VRAM_G_CR)
	mov     r1, #0x9a
	strb    r1, [r0]
branch_20be370: @ 20be370 :arm
	ldr     r0, [pc, #0x64] @ [0x20be3dc] (=VRAM_F_CR)
	mov     r1, #0x92
	strb    r1, [r0]
branch_20be37c: @ 20be37c :arm
	ldr     r0, [pc, #0x5c] @ [0x20be3e0] (=VRAM_E_CR)
	mov     r1, #0x82
	strb    r1, [r0]
	b       branch_20be3bc

branch_20be38c: @ 20be38c :arm
	ldr     r1, [pc, #0x3c] @ [0x20be3d0] (=VRAM_G_CR)
	mov     r0, #0x92
	strb    r0, [r1]
	mov     r0, #0x82
	strb    r0, [r1, #-0x2]
	b       branch_20be3bc

branch_20be3a4: @ 20be3a4 :arm
	ldr     r0, [pc, #0x24] @ [0x20be3d0] (=VRAM_G_CR)
	mov     r1, #0x8a
	strb    r1, [r0]
branch_20be3b0: @ 20be3b0 :arm
	ldr     r0, [pc, #0x24] @ [0x20be3dc] (=VRAM_F_CR)
	mov     r1, #0x82
	strb    r1, [r0]
branch_20be3bc: @ 20be3bc :arm
	ldr     r0, [pc, #0x8] @ [0x20be3cc] (=RAM_21ccba0)
	ldrh    r0, [r0]
	bl      GX_VRAMCNT_SetLCDC_
	ldmfd   sp!, {r3,pc}
@ 0x20be3cc

.word RAM_21ccba0 @ 0x20be3cc
.word VRAM_G_CR @ 0x20be3d0
.word VRAM_B_CR @ 0x20be3d4
.word VRAM_A_CR @ 0x20be3d8
.word VRAM_F_CR @ 0x20be3dc
.word VRAM_E_CR @ 0x20be3e0
arm_func_end GX_SetBankForOBJ



arm_func_start GX_SetBankForBGExtPltt
GX_SetBankForBGExtPltt: @ 20be3e4 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, =RAM_21ccba0
	mvn     r12, r0
	ldrh    r3, [r1]
	ldrh    r2, [r1, #0xe]
	cmp     r0, #0x20
	orr     r2, r3, r2
	and     r2, r12, r2
	strh    r2, [r1]
	strh    r0, [r1, #0xe]
	bgt     branch_20be434
	cmp     r0, #0x20
	bge     branch_20be498
	cmp     r0, #0x0
	bgt     branch_20be428
	beq     branch_20be4b8
	b       branch_20be4c8

branch_20be428: @ 20be428 :arm
	cmp     r0, #0x10
	beq     branch_20be450
	b       branch_20be4c8

branch_20be434: @ 20be434 :arm
	cmp     r0, #0x40
	bgt     branch_20be444
	beq     branch_20be46c
	b       branch_20be4c8

branch_20be444: @ 20be444 :arm
	cmp     r0, #0x60
	beq     branch_20be48c
	b       branch_20be4c8

branch_20be450: @ 20be450 :arm
	mov     r2, #REG_DISPCNT
	ldr     r1, [r2]
	mov     r0, #0x84
	orr     r1, r1, #0x40000000
	str     r1, [r2]
	strb    r0, [r2, #0x244]
	b       branch_20be4c8

branch_20be46c: @ 20be46c :arm
	mov     r2, #REG_DISPCNT
	ldr     r1, [r2]
	ldr     r0, =VRAM_G_CR
	orr     r1, r1, #0x40000000
	str     r1, [r2]
	mov     r1, #0x8c
	strb    r1, [r0]
	b       branch_20be4c8

branch_20be48c: @ 20be48c :arm
	ldr     r0, =VRAM_G_CR
	mov     r1, #0x8c
	strb    r1, [r0]
branch_20be498: @ 20be498 :arm
	ldr     r0, =VRAM_F_CR
	mov     r1, #0x84
	strb    r1, [r0]
	mov     r1, #REG_DISPCNT
	ldr     r0, [r1]
	orr     r0, r0, #0x40000000
	str     r0, [r1]
	b       branch_20be4c8

branch_20be4b8: @ 20be4b8 :arm
	mov     r1, #REG_DISPCNT
	ldr     r0, [r1]
	bic     r0, r0, #0x40000000
	str     r0, [r1]
branch_20be4c8: @ 20be4c8 :arm
	ldr     r0, =RAM_21ccba0
	ldrh    r0, [r0]
	bl      GX_VRAMCNT_SetLCDC_
	ldmfd   sp!, {r3,pc}
@ 0x20be4d8

.pool
arm_func_end GX_SetBankForBGExtPltt



arm_func_start GX_SetBankForOBJExtPltt
GX_SetBankForOBJExtPltt: @ 20be4e4 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, =RAM_21ccba0
	mvn     r12, r0
	ldrh    r3, [r1]
	ldrh    r2, [r1, #0x10]
	cmp     r0, #0x0
	orr     r2, r3, r2
	and     r2, r12, r2
	strh    r2, [r1]
	strh    r0, [r1, #0x10]
	beq     branch_20be564
	cmp     r0, #0x20
	beq     branch_20be524
	cmp     r0, #0x40
	beq     branch_20be544
	b       branch_20be574

branch_20be524: @ 20be524 :arm
	mov     r2, #REG_DISPCNT
	ldr     r1, [r2]
	ldr     r0, =VRAM_F_CR
	orr     r1, r1, #0x80000000
	str     r1, [r2]
	mov     r1, #0x85
	strb    r1, [r0]
	b       branch_20be574

branch_20be544: @ 20be544 :arm
	mov     r2, #REG_DISPCNT
	ldr     r1, [r2]
	ldr     r0, =VRAM_G_CR
	orr     r1, r1, #0x80000000
	str     r1, [r2]
	mov     r1, #0x85
	strb    r1, [r0]
	b       branch_20be574

branch_20be564: @ 20be564 :arm
	mov     r1, #REG_DISPCNT
	ldr     r0, [r1]
	bic     r0, r0, #0x80000000
	str     r0, [r1]
branch_20be574: @ 20be574 :arm
	ldr     r0, =RAM_21ccba0
	ldrh    r0, [r0]
	bl      GX_VRAMCNT_SetLCDC_
	ldmfd   sp!, {r3,pc}
@ 0x20be584

.pool
arm_func_end GX_SetBankForOBJExtPltt



arm_func_start GX_SetBankForTex
GX_SetBankForTex: @ 20be590 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, [pc, #0x1b0] @ [0x20be74c] (=RAM_21ccba0)
	mvn     r12, r0
	ldrh    r3, [r1]
	ldrh    r2, [r1, #0x8]
	cmp     r0, #0x0
	orr     r2, r3, r2
	and     r2, r12, r2
	strh    r2, [r1]
	strh    r0, [r1, #0x8]
	ldr     r2, [pc, #0x190] @ [0x20be750] (=GFX_CONTROL)
	bne     branch_20be5d4
	ldrh    r1, [r2]
	ldr     r0, [pc, #0x188] @ [0x20be754] (=0xcffe)
	and     r0, r1, r0
	strh    r0, [r2]
	b       branch_20be73c

branch_20be5d4: @ 20be5d4 :arm
	ldrh    r1, [r2]
	cmp     r0, #0xf
	bic     r1, r1, #3, 20 @ #0x3000
	orr     r1, r1, #0x1
	strh    r1, [r2]
	addls   pc, pc, r0, lsl #2
	b       branch_20be73c
	b       branch_20be73c
	b       branch_20be730
	b       branch_20be6fc
	b       branch_20be724
	b       branch_20be6d4
	b       branch_20be630
	b       branch_20be6f0
	b       branch_20be718
	b       branch_20be6b8
	b       branch_20be648
	b       branch_20be660
	b       branch_20be678
	b       branch_20be6c8
	b       branch_20be698
	b       branch_20be6e4
	b       branch_20be70c
@ 0x20be630

.arm
branch_20be630: @ 20be630 :arm
	mov     r1, #0x83
	ldr     r0, [pc, #0x11c] @ [0x20be758] (=VRAM_C_CR)
	strb    r1, [r2, #0x1e0]
	mov     r1, #0x8b
	strb    r1, [r0]
	b       branch_20be73c

branch_20be648: @ 20be648 :arm
	mov     r1, #0x83
	ldr     r0, [pc, #0x108] @ [0x20be75c] (=VRAM_D_CR)
	strb    r1, [r2, #0x1e0]
	mov     r1, #0x8b
	strb    r1, [r0]
	b       branch_20be73c

branch_20be660: @ 20be660 :arm
	ldr     r1, [pc, #0xf8] @ [0x20be760] (=VRAM_B_CR)
	mov     r0, #0x83
	strb    r0, [r1]
	mov     r0, #0x8b
	strb    r0, [r1, #0x2]
	b       branch_20be73c

branch_20be678: @ 20be678 :arm
	mov     r0, #0x83
	ldr     r1, [pc, #0xdc] @ [0x20be760] (=VRAM_B_CR)
	strb    r0, [r2, #0x1e0]
	mov     r0, #0x8b
	strb    r0, [r1]
	mov     r0, #0x93
	strb    r0, [r1, #0x2]
	b       branch_20be73c

branch_20be698: @ 20be698 :arm
	mov     r0, #0x83
	ldr     r1, [pc, #0xb4] @ [0x20be758] (=VRAM_C_CR)
	strb    r0, [r2, #0x1e0]
	mov     r0, #0x8b
	strb    r0, [r1]
	mov     r0, #0x93
	strb    r0, [r1, #0x1]
	b       branch_20be73c

branch_20be6b8: @ 20be6b8 :arm
	ldr     r0, [pc, #0x9c] @ [0x20be75c] (=VRAM_D_CR)
	mov     r1, #0x83
	strb    r1, [r0]
	b       branch_20be73c

branch_20be6c8: @ 20be6c8 :arm
	ldr     r0, [pc, #0x8c] @ [0x20be75c] (=VRAM_D_CR)
	mov     r1, #0x8b
	strb    r1, [r0]
branch_20be6d4: @ 20be6d4 :arm
	ldr     r0, [pc, #0x7c] @ [0x20be758] (=VRAM_C_CR)
	mov     r1, #0x83
	strb    r1, [r0]
	b       branch_20be73c

branch_20be6e4: @ 20be6e4 :arm
	ldr     r0, [pc, #0x70] @ [0x20be75c] (=VRAM_D_CR)
	mov     r1, #0x93
	strb    r1, [r0]
branch_20be6f0: @ 20be6f0 :arm
	ldr     r0, [pc, #0x60] @ [0x20be758] (=VRAM_C_CR)
	mov     r1, #0x8b
	strb    r1, [r0]
branch_20be6fc: @ 20be6fc :arm
	ldr     r0, [pc, #0x5c] @ [0x20be760] (=VRAM_B_CR)
	mov     r1, #0x83
	strb    r1, [r0]
	b       branch_20be73c

branch_20be70c: @ 20be70c :arm
	ldr     r0, [pc, #0x48] @ [0x20be75c] (=VRAM_D_CR)
	mov     r1, #0x9b
	strb    r1, [r0]
branch_20be718: @ 20be718 :arm
	ldr     r0, [pc, #0x38] @ [0x20be758] (=VRAM_C_CR)
	mov     r1, #0x93
	strb    r1, [r0]
branch_20be724: @ 20be724 :arm
	ldr     r0, [pc, #0x34] @ [0x20be760] (=VRAM_B_CR)
	mov     r1, #0x8b
	strb    r1, [r0]
branch_20be730: @ 20be730 :arm
	ldr     r0, [pc, #0x2c] @ [0x20be764] (=VRAM_A_CR)
	mov     r1, #0x83
	strb    r1, [r0]
branch_20be73c: @ 20be73c :arm
	ldr     r0, [pc, #0x8] @ [0x20be74c] (=RAM_21ccba0)
	ldrh    r0, [r0]
	bl      GX_VRAMCNT_SetLCDC_
	ldmfd   sp!, {r3,pc}
@ 0x20be74c

.word RAM_21ccba0 @ 0x20be74c
.word GFX_CONTROL @ 0x20be750
.word 0xcffe @ 0x20be754
.word VRAM_C_CR @ 0x20be758
.word VRAM_D_CR @ 0x20be75c
.word VRAM_B_CR @ 0x20be760
.word VRAM_A_CR @ 0x20be764
arm_func_end GX_SetBankForTex



.arm
.globl GX_SetBankForTexPltt
GX_SetBankForTexPltt: @ 20be768 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, =RAM_21ccba0
	mvn     r12, r0
	ldrh    r3, [r1]
	ldrh    r2, [r1, #0xa]
	cmp     r0, #0x30
	orr     r2, r3, r2
	and     r2, r12, r2
	strh    r2, [r1]
	strh    r0, [r1, #0xa]
	bgt     branch_20be7bc
	cmp     r0, #0x30
	bge     branch_20be818
	cmp     r0, #0x10
	bgt     branch_20be7b0
	bge     branch_20be824
	cmp     r0, #0x0
	b       branch_20be830

branch_20be7b0: @ 20be7b0 :arm
	cmp     r0, #0x20
	beq     branch_20be7ec
	b       branch_20be830

branch_20be7bc: @ 20be7bc :arm
	cmp     r0, #0x60
	bgt     branch_20be7d4
	bge     branch_20be7e0
	cmp     r0, #0x40
	beq     branch_20be7fc
	b       branch_20be830

branch_20be7d4: @ 20be7d4 :arm
	cmp     r0, #0x70
	beq     branch_20be80c
	b       branch_20be830

branch_20be7e0: @ 20be7e0 :arm
	ldr     r0, =VRAM_G_CR
	mov     r1, #0x8b
	strb    r1, [r0]
branch_20be7ec: @ 20be7ec :arm
	ldr     r0, =VRAM_F_CR
	mov     r1, #0x83
	strb    r1, [r0]
	b       branch_20be830

branch_20be7fc: @ 20be7fc :arm
	ldr     r0, =VRAM_G_CR
	mov     r1, #0x83
	strb    r1, [r0]
	b       branch_20be830

branch_20be80c: @ 20be80c :arm
	ldr     r0, =VRAM_G_CR
	mov     r1, #0x9b
	strb    r1, [r0]
branch_20be818: @ 20be818 :arm
	ldr     r0, =VRAM_F_CR
	mov     r1, #0x93
	strb    r1, [r0]
branch_20be824: @ 20be824 :arm
	ldr     r0, =VRAM_E_CR
	mov     r1, #0x83
	strb    r1, [r0]
branch_20be830: @ 20be830 :arm
	ldr     r0, =RAM_21ccba0
	ldrh    r0, [r0]
	bl      GX_VRAMCNT_SetLCDC_
	ldmfd   sp!, {r3,pc}
@ 0x20be840

.pool




.arm
.globl GX_SetBankForClearImage
GX_SetBankForClearImage: @ 20be850 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, [pc, #0x110] @ [0x20be96c] (=RAM_21ccba0)
	mvn     r12, r0
	ldrh    r3, [r1]
	ldrh    r2, [r1, #0xc]
	cmp     r0, #0xc
	orr     r2, r3, r2
	and     r2, r12, r2
	strh    r2, [r1]
	strh    r0, [r1, #0xc]
	addls   pc, pc, r0, lsl #2
	b       branch_20be95c
	b       branch_20be90c
	b       branch_20be920
	b       branch_20be8c0
	b       branch_20be8b4
	b       branch_20be940
	b       branch_20be95c
	b       branch_20be95c
	b       branch_20be95c
	b       branch_20be8ec
	b       branch_20be95c
	b       branch_20be95c
	b       branch_20be95c
	b       branch_20be8e0

branch_20be8b4: @ 20be8b4 :arm
	ldr     r0, [pc, #0xb4] @ [0x20be970] (=VRAM_A_CR)
	mov     r1, #0x93
	strb    r1, [r0]
branch_20be8c0: @ 20be8c0 :arm
	ldr     r0, [pc, #0xac] @ [0x20be974] (=VRAM_B_CR)
	mov     r2, #0x9b
	ldr     r1, [pc, #0xa8] @ [0x20be978] (=GFX_CONTROL)
	strb    r2, [r0]
	ldrh    r0, [r1]
	orr     r0, r0, #1, 18 @ #0x4000
	strh    r0, [r1]
	b       branch_20be95c
@ 0x20be8e0

.arm
branch_20be8e0: @ 20be8e0 :arm
	ldr     r0, [pc, #0x94] @ [0x20be97c] (=VRAM_C_CR)
	mov     r1, #0x93
	strb    r1, [r0]
.arm
branch_20be8ec: @ 20be8ec :arm
	ldr     r0, [pc, #0x8c] @ [0x20be980] (=VRAM_D_CR)
	mov     r2, #0x9b
	ldr     r1, [pc, #0x7c] @ [0x20be978] (=GFX_CONTROL)
	strb    r2, [r0]
	ldrh    r0, [r1]
	orr     r0, r0, #1, 18 @ #0x4000
	strh    r0, [r1]
	b       branch_20be95c
@ 0x20be90c

.arm
branch_20be90c: @ 20be90c :arm
	ldr     r1, [pc, #0x64] @ [0x20be978] (=GFX_CONTROL)
	ldrh    r0, [r1]
	bic     r0, r0, #1, 18 @ #0x4000
	strh    r0, [r1]
	b       branch_20be95c
@ 0x20be920

.arm
branch_20be920: @ 20be920 :arm
	ldr     r0, [pc, #0x48] @ [0x20be970] (=VRAM_A_CR)
	mov     r1, #0x9b
	strb    r1, [r0]
	sub     r1, r0, #30, 28 @ #0x1e0
	ldrh    r0, [r1]
	orr     r0, r0, #1, 18 @ #0x4000
	strh    r0, [r1]
	b       branch_20be95c
@ 0x20be940

.arm
branch_20be940: @ 20be940 :arm
	ldr     r0, [pc, #0x34] @ [0x20be97c] (=VRAM_C_CR)
	mov     r2, #0x9b
	ldr     r1, [pc, #0x28] @ [0x20be978] (=GFX_CONTROL)
	strb    r2, [r0]
	ldrh    r0, [r1]
	orr     r0, r0, #1, 18 @ #0x4000
	strh    r0, [r1]
branch_20be95c: @ 20be95c :arm
	ldr     r0, [pc, #0x8] @ [0x20be96c] (=RAM_21ccba0)
	ldrh    r0, [r0]
	bl      GX_VRAMCNT_SetLCDC_
	ldmfd   sp!, {r3,pc}
@ 0x20be96c

.word RAM_21ccba0 @ 0x20be96c
.word VRAM_A_CR @ 0x20be970
.word VRAM_B_CR @ 0x20be974
.word GFX_CONTROL @ 0x20be978
.word VRAM_C_CR @ 0x20be97c
.word VRAM_D_CR @ 0x20be980



.arm
.globl GX_SetBankForARM7
GX_SetBankForARM7: @ 20be984 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, [pc, #0x94] @ [0x20bea24] (=RAM_21ccba0)
	mvn     r12, r0
	ldrh    r3, [r1]
	ldrh    r2, [r1, #0x6]
	cmp     r0, #0x8
	orr     r2, r3, r2
	and     r2, r12, r2
	strh    r2, [r1]
	strh    r0, [r1, #0x6]
	bgt     branch_20be9d8
	cmp     r0, #0x8
	bge     branch_20bea08
	cmp     r0, #0x4
	bgt     branch_20bea14
	cmp     r0, #0x0
	blt     branch_20bea14
	beq     branch_20bea14
	cmp     r0, #0x4
	beq     branch_20be9f8
	b       branch_20bea14
@ 0x20be9d8

.arm
branch_20be9d8: @ 20be9d8 :arm
	cmp     r0, #0xc
	bne     branch_20bea14
	ldr     r1, [pc, #0x40] @ [0x20bea28] (=VRAM_D_CR)
	mov     r0, #0x8a
	strb    r0, [r1]
	mov     r0, #0x82
	strb    r0, [r1, #-0x1]
	b       branch_20bea14
@ 0x20be9f8

.arm
branch_20be9f8: @ 20be9f8 :arm
	ldr     r0, [pc, #0x2c] @ [0x20bea2c] (=VRAM_C_CR)
	mov     r1, #0x82
	strb    r1, [r0]
	b       branch_20bea14
@ 0x20bea08

.arm
branch_20bea08: @ 20bea08 :arm
	ldr     r0, [pc, #0x18] @ [0x20bea28] (=VRAM_D_CR)
	mov     r1, #0x82
	strb    r1, [r0]
.arm
branch_20bea14: @ 20bea14 :arm
	ldr     r0, [pc, #0x8] @ [0x20bea24] (=RAM_21ccba0)
	ldrh    r0, [r0]
	bl      GX_VRAMCNT_SetLCDC_
	ldmfd   sp!, {r3,pc}
@ 0x20bea24

.word RAM_21ccba0 @ 0x20bea24
.word VRAM_D_CR @ 0x20bea28
.word VRAM_C_CR @ 0x20bea2c



.arm
.globl GX_SetBankForLCDC
GX_SetBankForLCDC: @ 20bea30 :arm
	ldr     r1, =RAM_21ccba0
	ldr     r12, =GX_VRAMCNT_SetLCDC_
	ldrh    r2, [r1]
	orr     r2, r2, r0
	strh    r2, [r1]
	bx      r12
@ 0x20bea48

.pool




.arm
.globl GX_SetBankForSubBG
GX_SetBankForSubBG: @ 20bea50 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, =RAM_21ccba0
	mvn     r12, r0
	ldrh    r3, [r1]
	ldrh    r2, [r1, #0x12]
	cmp     r0, #0x80
	orr     r2, r3, r2
	and     r2, r12, r2
	strh    r2, [r1]
	strh    r0, [r1, #0x12]
	bgt     branch_20beaa4
	cmp     r0, #0x80
	bge     branch_20beacc
	cmp     r0, #0x4
	bgt     branch_20bead8
	cmp     r0, #0x0
	blt     branch_20bead8
	beq     branch_20bead8
	cmp     r0, #0x4
	beq     branch_20beab0
	b       branch_20bead8

branch_20beaa4: @ 20beaa4 :arm
	cmp     r0, #6, 26 @ #0x180
	beq     branch_20beac0
	b       branch_20bead8

branch_20beab0: @ 20beab0 :arm
	ldr     r0, =VRAM_C_CR
	mov     r1, #0x84
	strb    r1, [r0]
	b       branch_20bead8

branch_20beac0: @ 20beac0 :arm
	ldr     r0, =VRAM_I_CR
	mov     r1, #0x81
	strb    r1, [r0]
branch_20beacc: @ 20beacc :arm
	ldr     r0, =VRAM_H_CR
	mov     r1, #0x81
	strb    r1, [r0]
branch_20bead8: @ 20bead8 :arm
	ldr     r0, =RAM_21ccba0
	ldrh    r0, [r0]
	bl      GX_VRAMCNT_SetLCDC_
	ldmfd   sp!, {r3,pc}
@ 0x20beae8

.pool




.arm
.globl GX_SetBankForSubOBJ
GX_SetBankForSubOBJ: @ 20beaf8 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, =RAM_21ccba0
	mvn     r12, r0
	ldrh    r3, [r1]
	ldrh    r2, [r1, #0x14]
	cmp     r0, #0x0
	orr     r2, r3, r2
	and     r2, r12, r2
	strh    r2, [r1]
	strh    r0, [r1, #0x14]
	beq     branch_20beb4c
	cmp     r0, #0x8
	beq     branch_20beb40
	cmp     r0, #0x100
	ldreq   r0, =VRAM_I_CR
	moveq   r1, #0x82
	streqb  r1, [r0]
	b       branch_20beb4c

branch_20beb40: @ 20beb40 :arm
	ldr     r0, =VRAM_D_CR
	mov     r1, #0x84
	strb    r1, [r0]
branch_20beb4c: @ 20beb4c :arm
	ldr     r0, =RAM_21ccba0
	ldrh    r0, [r0]
	bl      GX_VRAMCNT_SetLCDC_
	ldmfd   sp!, {r3,pc}
@ 0x20beb5c

.pool




.arm
.globl GX_SetBankForSubBGExtPltt
GX_SetBankForSubBGExtPltt: @ 20beb68 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, =RAM_21ccba0
	mvn     r12, r0
	ldrh    r3, [r1]
	ldrh    r2, [r1, #0x16]
	cmp     r0, #0x0
	orr     r2, r3, r2
	and     r2, r12, r2
	strh    r2, [r1]
	strh    r0, [r1, #0x16]
	beq     branch_20bebbc
	cmp     r0, #0x80
	bne     branch_20bebcc
	ldr     r3, =REG_DISPCNT_SUB
	ldr     r0, =VRAM_H_CR
	ldr     r2, [r3]
	mov     r1, #0x82
	orr     r2, r2, #0x40000000
	str     r2, [r3]
	strb    r1, [r0]
	b       branch_20bebcc

branch_20bebbc: @ 20bebbc :arm
	ldr     r1, =REG_DISPCNT_SUB
	ldr     r0, [r1]
	bic     r0, r0, #0x40000000
	str     r0, [r1]
branch_20bebcc: @ 20bebcc :arm
	ldr     r0, =RAM_21ccba0
	ldrh    r0, [r0]
	bl      GX_VRAMCNT_SetLCDC_
	ldmfd   sp!, {r3,pc}
@ 0x20bebdc

.pool



.arm
.globl GX_SetBankForSubOBJExtPltt
GX_SetBankForSubOBJExtPltt: @ 20bebe8 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, [pc, #0x68] @ [0x20bec5c] (=RAM_21ccba0)
	mvn     r12, r0
	ldrh    r3, [r1]
	ldrh    r2, [r1, #0x18]
	cmp     r0, #0x0
	orr     r2, r3, r2
	and     r2, r12, r2
	strh    r2, [r1]
	strh    r0, [r1, #0x18]
	beq     branch_20bec3c
	cmp     r0, #1, 24 @ #0x100
	bne     branch_20bec4c
	ldr     r3, [pc, #0x3c] @ [0x20bec60] (=REG_DISPCNT_SUB)
	ldr     r0, [pc, #0x3c] @ [0x20bec64] (=VRAM_I_CR)
	ldr     r2, [r3]
	mov     r1, #0x83
	orr     r2, r2, #2, 2 @ #0x80000000
	str     r2, [r3]
	strb    r1, [r0]
	b       branch_20bec4c

branch_20bec3c: @ 20bec3c :arm
	ldr     r1, [pc, #0x1c] @ [0x20bec60] (=REG_DISPCNT_SUB)
	ldr     r0, [r1]
	bic     r0, r0, #2, 2 @ #0x80000000
	str     r0, [r1]
branch_20bec4c: @ 20bec4c :arm
	ldr     r0, [pc, #0x8] @ [0x20bec5c] (=RAM_21ccba0)
	ldrh    r0, [r0]
	bl      GX_VRAMCNT_SetLCDC_
	ldmfd   sp!, {r3,pc}
@ 0x20bec5c

.word RAM_21ccba0 @ 0x20bec5c
.word REG_DISPCNT_SUB @ 0x20bec60
.word VRAM_I_CR @ 0x20bec64



.arm
resetBankForX_: @ 20bec68 :arm
	stmfd   sp!, {r4,lr}
	ldrh    r4, [r0]
	mov     r2, #0x0
	ldr     r1, =RAM_21ccba0
	strh    r2, [r0]
	ldrh    r2, [r1]
	mov     r0, r4
	orr     r2, r2, r4
	strh    r2, [r1]
	bl      GX_VRAMCNT_SetLCDC_
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x20bec98

.pool



.arm
.globl Function_20bec9c
Function_20bec9c: @ 20bec9c :arm
	ldr     r12, =resetBankForX_
	ldr     r0, =RAM_21ccba2
	bx      r12
@ 0x20beca8

.align 2
.pool



.arm
Function_20becb0: @ 20becb0 :arm
	ldr     r12, [pc, #0x4] @ [0x20becbc] (=resetBankForX_)
	ldr     r0, [pc, #0x4] @ [0x20becc0] (=RAM_21ccba4)
	bx      r12
@ 0x20becbc

.word resetBankForX_ @ 0x20becbc
.word RAM_21ccba4 @ 0x20becc0



arm_func_start GX_ResetBankForBGExtPltt
GX_ResetBankForBGExtPltt: @ 20becc4 :arm
	mov     r2, #REG_DISPCNT
	ldr     r1, [r2]
	ldr     r12, =resetBankForX_
	bic     r1, r1, #DISPLAY_BG_EXT_PALETTE
	ldr     r0, =RAM_21ccbae
	str     r1, [r2]
	bx      r12
@ 0x20bece0

.align 2
.pool
arm_func_end GX_ResetBankForBGExtPltt



arm_func_start GX_ResetBankForOBJExtPltt
GX_ResetBankForOBJExtPltt: @ 20bece8 :arm
	mov     r2, #REG_DISPCNT
	ldr     r1, [r2]
	ldr     r12, =resetBankForX_
	bic     r1, r1, #0x80000000
	ldr     r0, =RAM_21ccbb0
	str     r1, [r2]
	bx      r12
@ 0x20bed04

.align 2
.pool
arm_func_end GX_ResetBankForOBJExtPltt



.arm
.globl Function_20bed0c
Function_20bed0c: @ 20bed0c :arm
	ldr     r12, [pc, #0x4] @ [0x20bed18] (=resetBankForX_)
	ldr     r0, [pc, #0x4] @ [0x20bed1c] (=RAM_21ccba8)
	bx      r12
@ 0x20bed18

.word resetBankForX_ @ 0x20bed18
.word RAM_21ccba8 @ 0x20bed1c



.arm
Function_20bed20: @ 20bed20 :arm
	ldr     r12, [pc, #0x4] @ [0x20bed2c] (=resetBankForX_)
	ldr     r0, [pc, #0x4] @ [0x20bed30] (=RAM_21ccbaa)
	bx      r12
@ 0x20bed2c

.word resetBankForX_ @ 0x20bed2c
.word RAM_21ccbaa @ 0x20bed30



Function_20bed34: @ 20bed34 :arm
	ldr     r12, [pc, #0x4] @ [0x20bed40] (=resetBankForX_)
	ldr     r0, [pc, #0x4] @ [0x20bed44] (=RAM_21ccbac)
	bx      r12
@ 0x20bed40

.word resetBankForX_ @ 0x20bed40
.word RAM_21ccbac @ 0x20bed44



.arm
Function_20bed48: @ 20bed48 :arm
	ldr     r12, [pc, #0x4] @ [0x20bed54] (=resetBankForX_)
	ldr     r0, [pc, #0x4] @ [0x20bed58] (=RAM_21ccbb2)
	bx      r12
@ 0x20bed54

.word resetBankForX_ @ 0x20bed54
.word RAM_21ccbb2 @ 0x20bed58



.arm
Function_20bed5c: @ 20bed5c :arm
	ldr     r12, [pc, #0x4] @ [0x20bed68] (=resetBankForX_)
	ldr     r0, [pc, #0x4] @ [0x20bed6c] (=RAM_21ccbb4)
	bx      r12
@ 0x20bed68

.word resetBankForX_ @ 0x20bed68
.word RAM_21ccbb4 @ 0x20bed6c



.arm
GX_ResetBankForSubBGExtPltt: @ 20bed70 :arm
	ldr     r2, [pc, #0x14] @ [0x20bed8c] (=REG_DISPCNT_SUB)
	ldr     r12, [pc, #0x14] @ [0x20bed90] (=resetBankForX_)
	ldr     r1, [r2]
	ldr     r0, [pc, #0x10] @ [0x20bed94] (=RAM_21ccbb6)
	bic     r1, r1, #1, 2 @ #0x40000000
	str     r1, [r2]
	bx      r12
@ 0x20bed8c

.word REG_DISPCNT_SUB @ 0x20bed8c
.word resetBankForX_ @ 0x20bed90
.word RAM_21ccbb6 @ 0x20bed94



.arm
GX_ResetBankForSubOBJExtPltt: @ 20bed98 :arm
	ldr     r2, [pc, #0x14] @ [0x20bedb4] (=REG_DISPCNT_SUB)
	ldr     r12, [pc, #0x14] @ [0x20bedb8] (=resetBankForX_)
	ldr     r1, [r2]
	ldr     r0, [pc, #0x10] @ [0x20bedbc] (=RAM_21ccbb8)
	bic     r1, r1, #2, 2 @ #0x80000000
	str     r1, [r2]
	bx      r12
@ 0x20bedb4

.word REG_DISPCNT_SUB @ 0x20bedb4
.word resetBankForX_ @ 0x20bedb8
.word RAM_21ccbb8 @ 0x20bedbc



.arm
disableBankForX_: @ 20bedc0 :arm
	stmfd   sp!, {r4,lr}
	ldrh    r4, [r0]
	mov     r1, #0x0
	strh    r1, [r0]
	tst     r4, #0x1
	ldrne   r0, [pc, #0x9c] @ [0x20bee78] (=VRAM_A_CR)
	strneb  r1, [r0]
	tst     r4, #0x2
	ldrne   r0, [pc, #0x94] @ [0x20bee7c] (=VRAM_B_CR)
	movne   r1, #0x0
	strneb  r1, [r0]
	tst     r4, #0x4
	ldrne   r0, [pc, #0x88] @ [0x20bee80] (=VRAM_C_CR)
	movne   r1, #0x0
	strneb  r1, [r0]
	tst     r4, #0x8
	ldrne   r0, [pc, #0x7c] @ [0x20bee84] (=VRAM_D_CR)
	movne   r1, #0x0
	strneb  r1, [r0]
	tst     r4, #0x10
	ldrne   r0, [pc, #0x70] @ [0x20bee88] (=VRAM_E_CR)
	movne   r1, #0x0
	strneb  r1, [r0]
	tst     r4, #0x20
	ldrne   r0, [pc, #0x64] @ [0x20bee8c] (=VRAM_F_CR)
	movne   r1, #0x0
	strneb  r1, [r0]
	tst     r4, #0x40
	ldrne   r0, [pc, #0x58] @ [0x20bee90] (=VRAM_G_CR)
	movne   r1, #0x0
	strneb  r1, [r0]
	tst     r4, #0x80
	ldrne   r0, [pc, #0x4c] @ [0x20bee94] (=VRAM_H_CR)
	movne   r1, #0x0
	strneb  r1, [r0]
	tst     r4, #1, 24 @ #0x100
	ldrne   r0, [pc, #0x40] @ [0x20bee98] (=VRAM_I_CR)
	movne   r1, #0x0
	strneb  r1, [r0]
	ldr     r1, [pc, #0x38] @ [0x20bee9c] (=RAM_21ccb9e)
	mov     r0, r4, lsl #16
	ldrh    r1, [r1]
	mov     r0, r0, lsr #16
	bl      OSi_UnlockVram
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x20bee78

.word VRAM_A_CR @ 0x20bee78
.word VRAM_B_CR @ 0x20bee7c
.word VRAM_C_CR @ 0x20bee80
.word VRAM_D_CR @ 0x20bee84
.word VRAM_E_CR @ 0x20bee88
.word VRAM_F_CR @ 0x20bee8c
.word VRAM_G_CR @ 0x20bee90
.word VRAM_H_CR @ 0x20bee94
.word VRAM_I_CR @ 0x20bee98
.word RAM_21ccb9e @ 0x20bee9c



.arm
.globl Function_20beea0
Function_20beea0: @ 20beea0 :arm
	ldr     r12, [pc, #0x4] @ [0x20beeac] (=0x20bedc0)
	ldr     r0, [pc, #0x4] @ [0x20beeb0] (=RAM_21ccba2)
	bx      r12
@ 0x20beeac

.word disableBankForX_ @ =0x20bedc0, 0x20beeac
.word RAM_21ccba2 @ 0x20beeb0



.arm
.globl Function_20beeb4
Function_20beeb4: @ 20beeb4 :arm
	ldr     r12, [pc, #0x4] @ [0x20beec0] (=0x20bedc0)
	ldr     r0, [pc, #0x4] @ [0x20beec4] (=RAM_21ccba4)
	bx      r12
@ 0x20beec0

.word disableBankForX_ @ =0x20bedc0, 0x20beec0
.word RAM_21ccba4 @ 0x20beec4



.arm
.globl Function_20beec8
Function_20beec8: @ 20beec8 :arm
	mov     r2, #1, 6 @ #0x4000000
	ldr     r1, [r2]
	ldr     r12, [pc, #0xc] @ [0x20beee4] (=0x20bedc0)
	bic     r1, r1, #1, 2 @ #0x40000000
	ldr     r0, [pc, #0x8] @ [0x20beee8] (=RAM_21ccbae)
	str     r1, [r2]
	bx      r12
@ 0x20beee4

.word disableBankForX_ @ =0x20bedc0, 0x20beee4
.word RAM_21ccbae @ 0x20beee8



.arm
.globl Function_20beeec
Function_20beeec: @ 20beeec :arm
	mov     r2, #1, 6 @ #0x4000000
	ldr     r1, [r2]
	ldr     r12, [pc, #0xc] @ [0x20bef08] (=0x20bedc0)
	bic     r1, r1, #2, 2 @ #0x80000000
	ldr     r0, [pc, #0x8] @ [0x20bef0c] (=RAM_21ccbb0)
	str     r1, [r2]
	bx      r12
@ 0x20bef08

.word disableBankForX_ @ =0x20bedc0, 0x20bef08
.word RAM_21ccbb0 @ 0x20bef0c



.arm
.globl Function_20bef10
Function_20bef10: @ 20bef10 :arm
	ldr     r12, [pc, #0x4] @ [0x20bef1c] (=0x20bedc0)
	ldr     r0, [pc, #0x4] @ [0x20bef20] (=RAM_21ccba8)
	bx      r12
@ 0x20bef1c

.word disableBankForX_ @ =0x20bedc0, 0x20bef1c
.word RAM_21ccba8 @ 0x20bef20



.arm
.globl Function_20bef24
Function_20bef24: @ 20bef24 :arm
	ldr     r12, [pc, #0x4] @ [0x20bef30] (=0x20bedc0)
	ldr     r0, [pc, #0x4] @ [0x20bef34] (=RAM_21ccbaa)
	bx      r12
@ 0x20bef30

.word disableBankForX_ @ =0x20bedc0, 0x20bef30
.word RAM_21ccbaa @ 0x20bef34



.arm
.globl Function_20bef38
Function_20bef38: @ 20bef38 :arm
	ldr     r12, [pc, #0x4] @ [0x20bef44] (=0x20bedc0)
	ldr     r0, [pc, #0x4] @ [0x20bef48] (=RAM_21ccbac)
	bx      r12
@ 0x20bef44

.word disableBankForX_ @ =0x20bedc0, 0x20bef44
.word RAM_21ccbac @ 0x20bef48



.arm
.globl Function_20bef4c
Function_20bef4c: @ 20bef4c :arm
	ldr     r12, [pc, #0x4] @ [0x20bef58] (=0x20bedc0)
	ldr     r0, [pc, #0x4] @ [0x20bef5c] (=RAM_21ccba6)
	bx      r12
@ 0x20bef58

.word disableBankForX_ @ =0x20bedc0, 0x20bef58
.word RAM_21ccba6 @ 0x20bef5c



.arm
.globl Function_20bef60
Function_20bef60: @ 20bef60 :arm
	ldr     r12, [pc, #0x4] @ [0x20bef6c] (=disableBankForX_)
	ldr     r0, [pc, #0x4] @ [0x20bef70] (=RAM_21ccba0)
	bx      r12
@ 0x20bef6c

.word disableBankForX_ @ 0x20bef6c
.word RAM_21ccba0 @ 0x20bef70



.arm
.globl Function_20bef74
Function_20bef74: @ 20bef74 :arm
	ldr     r12, [pc, #0x4] @ [0x20bef80] (=0x20bedc0)
	ldr     r0, [pc, #0x4] @ [0x20bef84] (=RAM_21ccbb2)
	bx      r12
@ 0x20bef80

.word disableBankForX_ @ =0x20bedc0, 0x20bef80
.word RAM_21ccbb2 @ 0x20bef84



.arm
.globl Function_20bef88
Function_20bef88: @ 20bef88 :arm
	ldr     r12, [pc, #0x4] @ [0x20bef94] (=0x20bedc0)
	ldr     r0, [pc, #0x4] @ [0x20bef98] (=RAM_21ccbb4)
	bx      r12
@ 0x20bef94

.word disableBankForX_ @ =0x20bedc0, 0x20bef94
.word RAM_21ccbb4 @ 0x20bef98



.arm
.globl Function_20bef9c
Function_20bef9c: @ 20bef9c :arm
	ldr     r2, [pc, #0x14] @ [0x20befb8] (=REG_DISPCNT_SUB)
	ldr     r12, [pc, #0x14] @ [0x20befbc] (=0x20bedc0)
	ldr     r1, [r2]
	ldr     r0, [pc, #0x10] @ [0x20befc0] (=RAM_21ccbb6)
	bic     r1, r1, #1, 2 @ #0x40000000
	str     r1, [r2]
	bx      r12
@ 0x20befb8

.word REG_DISPCNT_SUB @ 0x20befb8
.word disableBankForX_ @ =0x20bedc0, 0x20befbc
.word RAM_21ccbb6 @ 0x20befc0



.arm
.globl Function_20befc4
Function_20befc4: @ 20befc4 :arm
	ldr     r2, [pc, #0x14] @ [0x20befe0] (=REG_DISPCNT_SUB)
	ldr     r12, [pc, #0x14] @ [0x20befe4] (=disableBankForX_)
	ldr     r1, [r2]
	ldr     r0, [pc, #0x10] @ [0x20befe8] (=RAM_21ccbb8)
	bic     r1, r1, #2, 2 @ #0x80000000
	str     r1, [r2]
	bx      r12
@ 0x20befe0

.word REG_DISPCNT_SUB @ 0x20befe0
.word disableBankForX_ @ =0x20bedc0, 0x20befe4
.word RAM_21ccbb8 @ 0x20befe8



.arm
GX_GetBankForOBJ: @ 20befec :arm
	ldr     r0, =RAM_21ccba0
	ldrh    r0, [r0, #RAM_21ccba0_4]
	bx      lr
@ 0x20beff8

.pool



.arm
Function_20beffc: @ 20beffc :arm
	ldr     r0, =RAM_21ccba0
	ldrh    r0, [r0, #RAM_21ccba0_10]
	bx      lr
@ 0x20bf008

.pool



.arm
.globl Function_20bf00c
Function_20bf00c: @ 20bf00c :arm
	ldr     r0, =RAM_21ccba0
	ldrh    r0, [r0, #RAM_21ccba0_0]
	bx      lr
@ 0x20bf018

.pool



.arm
GX_GetBankForSubOBJ: @ 20bf01c :arm
	ldr     r0, =RAM_21ccba0
	ldrh    r0, [r0, #RAM_21ccba0_14]
	bx      lr
@ 0x20bf028

.pool



.arm
GX_GetBankForSubOBJExtPltt: @ 20bf02c :arm
	ldr     r0, =RAM_21ccba0
	ldrh    r0, [r0, #RAM_21ccba0_18]
	bx      lr
@ 0x20bf038

.pool



.arm
.globl G2_GetBG0ScrPtr
G2_GetBG0ScrPtr: @ 20bf03c :arm
	ldr     r1, =REG_BG0CNT
	mov     r0, #0x4000000
	ldrh    r1, [r1]
	ldr     r0, [r0]
	and     r0, r0, #14, 6 @ #0x38000000
	mov     r0, r0, lsr #27
	and     r1, r1, #31, 24 @ #0x1f00
	mov     r0, r0, lsl #16
	mov     r1, r1, asr #8
	add     r0, r0, #6, 8 @ #0x6000000
	add     r0, r0, r1, lsl #11
	bx      lr
@ 0x20bf06c

.pool



.arm
.globl G2S_GetBG0ScrPtr
G2S_GetBG0ScrPtr: @ 20bf070 :arm
	ldr     r0, [pc, #0x14] @ [0x20bf08c] (=REG_BG0CNT_SUB)
	ldrh    r0, [r0]
	and     r0, r0, #31, 24 @ #0x1f00
	mov     r0, r0, asr #8
	mov     r0, r0, lsl #11
	add     r0, r0, #98, 12 @ #0x6200000
	bx      lr
@ 0x20bf08c

.word REG_BG0CNT_SUB @ 0x20bf08c



.arm
G2_GetBG1ScrPtr: @ 20bf090 :arm
	ldr     r1, [pc, #0x28] @ [0x20bf0c0] (=REG_BG1CNT)
	mov     r0, #1, 6 @ #0x4000000
	ldrh    r1, [r1]
	ldr     r0, [r0]
	and     r0, r0, #14, 6 @ #0x38000000
	mov     r0, r0, lsr #27
	and     r1, r1, #31, 24 @ #0x1f00
	mov     r0, r0, lsl #16
	mov     r1, r1, asr #8
	add     r0, r0, #6, 8 @ #0x6000000
	add     r0, r0, r1, lsl #11
	bx      lr
@ 0x20bf0c0

.word REG_BG1CNT @ 0x20bf0c0



.arm
G2S_GetBG1ScrPtr: @ 20bf0c4 :arm
	ldr     r0, [pc, #0x14] @ [0x20bf0e0] (=REG_BG1CNT_SUB)
	ldrh    r0, [r0]
	and     r0, r0, #31, 24 @ #0x1f00
	mov     r0, r0, asr #8
	mov     r0, r0, lsl #11
	add     r0, r0, #98, 12 @ #0x6200000
	bx      lr
@ 0x20bf0e0

.word REG_BG1CNT_SUB @ 0x20bf0e0



.arm
G2_GetBG2ScrPtr: @ 20bf0e4 :arm
	mov     r0, #1, 6 @ #0x4000000
	ldr     r1, [r0]
	ldrh    r3, [r0, #0xc]
	ldr     r0, [r0]
	and     r12, r1, #0x7
	and     r0, r0, #14, 6 @ #0x38000000
	mov     r1, r0, lsr #27
	and     r0, r3, #31, 24 @ #0x1f00
	mov     r2, r1, lsl #16
	cmp     r12, #0x6
	mov     r1, r0, lsr #8
	addls   pc, pc, r12, lsl #2
	b       branch_20bf160
	b       branch_20bf134
	b       branch_20bf134
	b       branch_20bf134
	b       branch_20bf134
	b       branch_20bf134
	b       branch_20bf140
	b       branch_20bf158

branch_20bf134: @ 20bf134 :arm
	add     r0, r2, #6, 8 @ #0x6000000
	add     r0, r0, r1, lsl #11
	bx      lr

branch_20bf140: @ 20bf140 :arm
	tst     r3, #0x80
	movne   r0, r1, lsl #14
	addne   r0, r0, #6, 8 @ #0x6000000
	addeq   r0, r2, #6, 8 @ #0x6000000
	addeq   r0, r0, r1, lsl #11
	bx      lr

branch_20bf158: @ 20bf158 :arm
	mov     r0, #6, 8 @ #0x6000000
	bx      lr

branch_20bf160: @ 20bf160 :arm
	mov     r0, #0x0
	bx      lr
@ 0x20bf168


.arm
G2S_GetBG2ScrPtr: @ 20bf168 :arm
	ldr     r1, =REG_DISPCNT_SUB
	ldr     r0, [r1]
	ldrh    r1, [r1, #0xc]
	and     r2, r0, #0x7
	cmp     r2, #0x6
	and     r0, r1, #31, 24 @ #0x1f00
	mov     r0, r0, lsr #8
	addls   pc, pc, r2, lsl #2
	b       branch_20bf1d0
	b       branch_20bf1a8
	b       branch_20bf1a8
	b       branch_20bf1a8
	b       branch_20bf1a8
	b       branch_20bf1a8
	b       branch_20bf1b4
	b       branch_20bf1c8

branch_20bf1a8: @ 20bf1a8 :arm
	mov     r0, r0, lsl #11
	add     r0, r0, #98, 12 @ #0x6200000
	bx      lr

branch_20bf1b4: @ 20bf1b4 :arm
	tst     r1, #0x80
	movne   r0, r0, lsl #14
	moveq   r0, r0, lsl #11
	add     r0, r0, #98, 12 @ #0x6200000
	bx      lr

branch_20bf1c8: @ 20bf1c8 :arm
	mov     r0, #0x0
	bx      lr

branch_20bf1d0: @ 20bf1d0 :arm
	mov     r0, #0x0
	bx      lr
@ 0x20bf1d8

.pool



.arm
G2_GetBG3ScrPtr: @ 20bf1dc :arm
	mov     r0, #1, 6 @ #0x4000000
	ldr     r1, [r0]
	ldrh    r3, [r0, #0xe]
	ldr     r0, [r0]
	and     r12, r1, #0x7
	and     r0, r0, #14, 6 @ #0x38000000
	mov     r1, r0, lsr #27
	and     r0, r3, #31, 24 @ #0x1f00
	mov     r2, r1, lsl #16
	cmp     r12, #0x6
	mov     r1, r0, lsr #8
	addls   pc, pc, r12, lsl #2
	b       branch_20bf258
	b       branch_20bf22c
	b       branch_20bf22c
	b       branch_20bf22c
	b       branch_20bf238
	b       branch_20bf238
	b       branch_20bf238
	b       branch_20bf250

branch_20bf22c: @ 20bf22c :arm
	add     r0, r2, #6, 8 @ #0x6000000
	add     r0, r0, r1, lsl #11
	bx      lr

branch_20bf238: @ 20bf238 :arm
	tst     r3, #0x80
	movne   r0, r1, lsl #14
	addne   r0, r0, #6, 8 @ #0x6000000
	addeq   r0, r2, #6, 8 @ #0x6000000
	addeq   r0, r0, r1, lsl #11
	bx      lr

branch_20bf250: @ 20bf250 :arm
	mov     r0, #0x0
	bx      lr

branch_20bf258: @ 20bf258 :arm
	mov     r0, #0x0
	bx      lr
@ 0x20bf260


.arm
G2S_GetBG3ScrPtr: @ 20bf260 :arm
	ldr     r1, =REG_DISPCNT_SUB
	ldr     r0, [r1]
	ldrh    r1, [r1, #0xe]
	and     r2, r0, #0x7
	cmp     r2, #0x6
	and     r0, r1, #31, 24 @ #0x1f00
	mov     r0, r0, lsr #8
	addls   pc, pc, r2, lsl #2
	b       branch_20bf2c8
	b       branch_20bf2a0
	b       branch_20bf2a0
	b       branch_20bf2a0
	b       branch_20bf2ac
	b       branch_20bf2ac
	b       branch_20bf2ac
	b       branch_20bf2c0

branch_20bf2a0: @ 20bf2a0 :arm
	mov     r0, r0, lsl #11
	add     r0, r0, #98, 12 @ #0x6200000
	bx      lr

branch_20bf2ac: @ 20bf2ac :arm
	tst     r1, #0x80
	movne   r0, r0, lsl #14
	moveq   r0, r0, lsl #11
	add     r0, r0, #98, 12 @ #0x6200000
	bx      lr

branch_20bf2c0: @ 20bf2c0 :arm
	mov     r0, #0x0
	bx      lr

branch_20bf2c8: @ 20bf2c8 :arm
	mov     r0, #0x0
	bx      lr
@ 0x20bf2d0

.pool



.arm
.globl G2_GetBG0CharPtr
G2_GetBG0CharPtr: @ 20bf2d4 :arm
	ldr     r1, =REG_BG0CNT
	mov     r0, #1, 6 @ #0x4000000
	ldrh    r1, [r1]
	ldr     r0, [r0]
	and     r0, r0, #7, 8 @ #0x7000000
	mov     r0, r0, lsr #24
	and     r1, r1, #0x3c
	mov     r0, r0, lsl #16
	mov     r1, r1, asr #2
	add     r0, r0, #6, 8 @ #0x6000000
	add     r0, r0, r1, lsl #14
	bx      lr
@ 0x20bf304

.pool



.arm
G2S_GetBG0CharPtr: @ 20bf308 :arm
	ldr     r0, [pc, #0x14] @ [0x20bf324] (=REG_BG0CNT_SUB)
	ldrh    r0, [r0]
	and     r0, r0, #0x3c
	mov     r0, r0, asr #2
	mov     r0, r0, lsl #14
	add     r0, r0, #98, 12 @ #0x6200000
	bx      lr
@ 0x20bf324

.word REG_BG0CNT_SUB @ 0x20bf324



.arm
G2_GetBG1CharPtr: @ 20bf328 :arm
	ldr     r1, [pc, #0x28] @ [0x20bf358] (=REG_BG1CNT)
	mov     r0, #1, 6 @ #0x4000000
	ldrh    r1, [r1]
	ldr     r0, [r0]
	and     r0, r0, #7, 8 @ #0x7000000
	mov     r0, r0, lsr #24
	and     r1, r1, #0x3c
	mov     r0, r0, lsl #16
	mov     r1, r1, asr #2
	add     r0, r0, #6, 8 @ #0x6000000
	add     r0, r0, r1, lsl #14
	bx      lr
@ 0x20bf358

.word REG_BG1CNT @ 0x20bf358



.arm
G2S_GetBG1CharPtr: @ 20bf35c :arm
	ldr     r0, [pc, #0x14] @ [0x20bf378] (=REG_BG1CNT_SUB)
	ldrh    r0, [r0]
	and     r0, r0, #0x3c
	mov     r0, r0, asr #2
	mov     r0, r0, lsl #14
	add     r0, r0, #98, 12 @ #0x6200000
	bx      lr
@ 0x20bf378

.word REG_BG1CNT_SUB @ 0x20bf378



.arm
G2_GetBG2CharPtr: @ 20bf37c :arm
	mov     r1, #1, 6 @ #0x4000000
	ldr     r0, [r1]
	ldrh    r2, [r1, #0xc]
	and     r0, r0, #0x7
	cmp     r0, #0x5
	blt     branch_20bf39c
	tst     r2, #0x80
	bne     branch_20bf3c4
branch_20bf39c: @ 20bf39c :arm
	mov     r0, #1, 6 @ #0x4000000
	ldr     r1, [r0]
	and     r0, r2, #0x3c
	and     r1, r1, #7, 8 @ #0x7000000
	mov     r1, r1, lsr #24
	mov     r1, r1, lsl #16
	add     r1, r1, #6, 8 @ #0x6000000
	mov     r0, r0, lsr #2
	add     r0, r1, r0, lsl #14
	bx      lr

branch_20bf3c4: @ 20bf3c4 :arm
	mov     r0, #0x0
	bx      lr
@ 0x20bf3cc


.arm
G2S_GetBG2CharPtr: @ 20bf3cc :arm
	ldr     r1, =REG_DISPCNT_SUB
	ldr     r0, [r1]
	ldrh    r1, [r1, #0xc]
	and     r0, r0, #0x7
	cmp     r0, #0x5
	blt     branch_20bf3ec
	tst     r1, #0x80
	bne     branch_20bf400
branch_20bf3ec: @ 20bf3ec :arm
	and     r0, r1, #0x3c
	mov     r0, r0, lsr #2
	mov     r0, r0, lsl #14
	add     r0, r0, #98, 12 @ #0x6200000
	bx      lr

branch_20bf400: @ 20bf400 :arm
	mov     r0, #0x0
	bx      lr
@ 0x20bf408

.pool



.arm
G2_GetBG3CharPtr: @ 20bf40c :arm
	mov     r1, #1, 6 @ #0x4000000
	ldr     r0, [r1]
	ldrh    r2, [r1, #0xe]
	and     r0, r0, #0x7
	cmp     r0, #0x3
	blt     branch_20bf434
	cmp     r0, #0x6
	bge     branch_20bf45c
	tst     r2, #0x80
	bne     branch_20bf45c
branch_20bf434: @ 20bf434 :arm
	mov     r0, #1, 6 @ #0x4000000
	ldr     r1, [r0]
	and     r0, r2, #0x3c
	and     r1, r1, #7, 8 @ #0x7000000
	mov     r1, r1, lsr #24
	mov     r1, r1, lsl #16
	add     r1, r1, #6, 8 @ #0x6000000
	mov     r0, r0, lsr #2
	add     r0, r1, r0, lsl #14
	bx      lr

branch_20bf45c: @ 20bf45c :arm
	mov     r0, #0x0
	bx      lr
@ 0x20bf464


.arm
G2S_GetBG3CharPtr: @ 20bf464 :arm
	ldr     r1, =REG_DISPCNT_SUB
	ldr     r0, [r1]
	ldrh    r1, [r1, #0xe]
	and     r0, r0, #0x7
	cmp     r0, #0x3
	blt     branch_20bf48c
	cmp     r0, #0x6
	bge     branch_20bf4a0
	tst     r1, #0x80
	bne     branch_20bf4a0
branch_20bf48c: @ 20bf48c :arm
	and     r0, r1, #0x3c
	mov     r0, r0, lsr #2
	mov     r0, r0, lsl #14
	add     r0, r0, #98, 12 @ #0x6200000
	bx      lr

branch_20bf4a0: @ 20bf4a0 :arm
	mov     r0, #0x0
	bx      lr
@ 0x20bf4a8

.pool



arm_func_start G2x_SetBGyAffine_
G2x_SetBGyAffine_: @ 20bf4ac :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r4, [r1, #0x4]
	ldr     r5, [r1]
	mov     r12, r4, lsl #12
	mov     r4, r12, asr #16
	mov     r12, r5, lsl #12
	mov     lr, r4, lsl #16
	mov     r5, r12, asr #16
	mov     r4, lr, lsr #16
	mov     r12, r5, lsl #16
	mov     r4, r4, lsl #16
	orr     r4, r4, r12, lsr #16
	str     r4, [r0]
	ldr     r4, [r1, #0xc]
	ldr     r5, [r1, #0x8]
	mov     r12, r4, lsl #12
	mov     r4, r12, asr #16
	mov     r12, r5, lsl #12
	mov     lr, r4, lsl #16
	mov     r6, r12, asr #16
	mov     r5, lr, lsr #16
	ldr     r4, [sp, #0x14]
	mov     r12, r6, lsl #16
	mov     r5, r5, lsl #16
	orr     r5, r5, r12, lsr #16
	str     r5, [r0, #0x4]
	ldr     r6, [sp, #0x10]
	ldr     r12, [r1, #0x4]
	sub     r5, r4, r3
	ldr     r4, [r1, #0xc]
	mul     lr, r12, r5
	mul     r5, r4, r5
	ldr     r12, [r1]
	sub     r6, r6, r2
	ldr     r4, [r1, #0x8]
	mla     r1, r12, r6, lr
	mla     r5, r4, r6, r5
	add     r1, r1, r2, lsl #12
	add     r2, r5, r3, lsl #12
	mov     r1, r1, asr #4
	str     r1, [r0, #0x8]
	mov     r1, r2, asr #4
	str     r1, [r0, #0xc]
	ldmfd   sp!, {r4-r6,pc}
arm_func_end G2x_SetBGyAffine_


arm_func_start G2x_SetBlendAlpha_
G2x_SetBlendAlpha_: @ 20bf55c :arm
	ldr     r12, [sp]
	orr     r1, r1, #0x40
	orr     r2, r1, r2, lsl #8
	orr     r1, r3, r12, lsl #8
	orr     r1, r2, r1, lsl #16
	str     r1, [r0]
	bx      lr
arm_func_end G2x_SetBlendAlpha_


.arm
.globl G2x_SetBlendBrightness_
G2x_SetBlendBrightness_: @ 20bf578 :arm
	cmp     r2, #0x0
	orrge   r1, r1, #0x80
	strgeh  r1, [r0]
	strgeh  r2, [r0, #0x4]
	bxge    lr
	orr     r1, r1, #0xc0
	strh    r1, [r0]
	rsb     r1, r2, #0x0
	strh    r1, [r0, #0x4]
	bx      lr
@ 0x20bf5a0


.arm
.globl Function_20bf5a0
Function_20bf5a0: @ 20bf5a0 :arm
	stmfd   sp!, {r3,lr}
	ldr     lr, [sp, #0x8]
	ldr     r12, [sp, #0xc]
	orr     r3, r3, lr, lsl #8
	strh    r3, [r0, #0x2]
	cmp     r12, #0x0
	bge     branch_20bf5d4
	orr     r1, r1, #0xc0
	orr     r1, r1, r2, lsl #8
	strh    r1, [r0]
	rsb     r1, r12, #0x0
	strh    r1, [r0, #0x4]
	ldmfd   sp!, {r3,pc}

branch_20bf5d4: @ 20bf5d4 :arm
	orr     r1, r1, #0x80
	orr     r1, r1, r2, lsl #8
	strh    r1, [r0]
	strh    r12, [r0, #0x4]
	ldmfd   sp!, {r3,pc}
@ 0x20bf5e8


.arm
.globl Function_20bf5e8
Function_20bf5e8: @ 20bf5e8 :arm
	ldrh    r3, [r0]
	cmp     r1, #0x0
	and     r2, r3, #0xc0
	bge     branch_20bf614
	cmp     r2, #0x80
	biceq   r2, r3, #0xc0
	orreq   r2, r2, #0xc0
	streqh  r2, [r0]
	rsb     r1, r1, #0x0
	strh    r1, [r0, #0x4]
	bx      lr
@ 0x20bf614

.arm
branch_20bf614: @ 20bf614 :arm
	cmp     r2, #0xc0
	biceq   r2, r3, #0xc0
	orreq   r2, r2, #0x80
	streqh  r2, [r0]
	strh    r1, [r0, #0x4]
	bx      lr
@ 0x20bf62c

.arm
Function_20bf62c: @ 20bf62c :arm
	mov     r3, r0
	ldr     r0, [r3]
	mov     r2, #0x16
	str     r2, [r0]
	mov     r0, r1
	ldr     r12, [pc, #0x4] @ [0x20bf64c] (=MI_Copy64B)
	ldr     r1, [r3, #0x4]
	bx      r12
@ 0x20bf64c

.word MI_Copy64B @ =MI_Copy64B, 0x20bf64c



.arm
.globl Function_20bf650
Function_20bf650: @ 20bf650 :arm
	ldr     r1, [r0]
	mov     r2, #0x11
	str     r2, [r1]
	ldr     r1, [r0, #0x4]
	str     r1, [r0]
	add     r1, r1, #0x4
	str     r1, [r0, #0x4]
	bx      lr
@ 0x20bf670


.arm
.globl Function_20bf670
Function_20bf670: @ 20bf670 :arm
	ldr     r2, [r0]
	mov     r3, #0x12
	str     r3, [r2]
	ldr     r2, [r0, #0x4]
	str     r1, [r2]
	ldr     r1, [r0, #0x4]
	add     r1, r1, #0x4
	str     r1, [r0]
	add     r1, r1, #0x4
	str     r1, [r0, #0x4]
	bx      lr
@ 0x20bf69c


.arm
.globl Function_20bf69c
Function_20bf69c: @ 20bf69c :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_20bf62c
	ldr     r0, [r4, #0x4]
	add     r0, r0, #0x40
	str     r0, [r4]
	add     r0, r0, #0x4
	str     r0, [r4, #0x4]
	ldmfd   sp!, {r4,pc}
@ 0x20bf6c0


.arm
.globl Function_20bf6c0
Function_20bf6c0: @ 20bf6c0 :arm
	ldr     r2, [r0]
	mov     r3, #0x20
	str     r3, [r2]
	ldr     r2, [r0, #0x4]
	str     r1, [r2]
	ldr     r1, [r0, #0x4]
	add     r1, r1, #0x4
	str     r1, [r0]
	add     r1, r1, #0x4
	str     r1, [r0, #0x4]
	bx      lr
@ 0x20bf6ec


.arm
.globl Function_20bf6ec
Function_20bf6ec: @ 20bf6ec :arm
	stmfd   sp!, {r4,lr}
	mov     r4, #0x21
	ldr     lr, [r0]
	rsb     r12, r4, #66, 28 @ #0x420
	str     r4, [lr]
	mov     lr, r3, asr #3
	and     r3, r12, r1, asr #3
	mov     r2, r2, asr #3
	mov     r1, r2, lsl #22
	orr     r2, r3, r1, lsr #12
	mov     r12, lr, lsl #22
	ldr     r1, [r0, #0x4]
	orr     r2, r2, r12, lsr #2
	str     r2, [r1]
	ldr     r1, [r0, #0x4]
	add     r1, r1, #0x4
	str     r1, [r0]
	add     r1, r1, #0x4
	str     r1, [r0, #0x4]
	ldmfd   sp!, {r4,pc}
@ 0x20bf73c


.arm
.globl Function_20bf73c
Function_20bf73c: @ 20bf73c :arm
	stmfd   sp!, {r3,lr}
	ldr     r12, [r0]
	mov     r2, r2, lsl #16
	mov     lr, #0x23
	str     lr, [r12]
	mov     r2, r2, lsr #16
	mov     r12, r2, lsl #16
	mov     r2, r3, lsl #16
	mov     r1, r1, lsl #16
	ldr     r3, [r0, #0x4]
	orr     r1, r12, r1, lsr #16
	str     r1, [r3]
	ldr     r1, [r0, #0x4]
	mov     r2, r2, lsr #16
	str     r2, [r1, #0x4]
	ldr     r1, [r0, #0x4]
	add     r1, r1, #0x8
	str     r1, [r0]
	add     r1, r1, #0x4
	str     r1, [r0, #0x4]
	ldmfd   sp!, {r3,pc}
@ 0x20bf790


.arm
.globl Function_20bf790
Function_20bf790: @ 20bf790 :arm
	orr     r1, r1, r2, lsl #4
	ldr     r2, [r0]
	mov     r12, #0x29
	str     r12, [r2]
	orr     r1, r1, r3, lsl #6
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp]
	orr     r1, r2, r1
	orr     r2, r1, r3, lsl #24
	ldr     r12, [sp, #0x4]
	ldr     r1, [r0, #0x4]
	orr     r2, r2, r12, lsl #16
	str     r2, [r1]
	ldr     r1, [r0, #0x4]
	add     r1, r1, #0x4
	str     r1, [r0]
	add     r1, r1, #0x4
	str     r1, [r0, #0x4]
	bx      lr
@ 0x20bf7dc


.arm
.globl Function_20bf7dc
Function_20bf7dc: @ 20bf7dc :arm
	stmfd   sp!, {r3,lr}
	ldr     r12, [r0]
	mov     lr, #0x30
	cmp     r3, #0x0
	movne   r3, #0x1
	str     lr, [r12]
	orr     r2, r1, r2, lsl #16
	moveq   r3, #0x0
	ldr     r1, [r0, #0x4]
	orr     r2, r2, r3, lsl #15
	str     r2, [r1]
	ldr     r1, [r0, #0x4]
	add     r1, r1, #0x4
	str     r1, [r0]
	add     r1, r1, #0x4
	str     r1, [r0, #0x4]
	ldmfd   sp!, {r3,pc}
@ 0x20bf820


.arm
.globl Function_20bf820
Function_20bf820: @ 20bf820 :arm
	stmfd   sp!, {r3,lr}
	ldr     r12, [r0]
	mov     lr, #0x31
	cmp     r3, #0x0
	movne   r3, #0x1
	str     lr, [r12]
	orr     r2, r1, r2, lsl #16
	moveq   r3, #0x0
	ldr     r1, [r0, #0x4]
	orr     r2, r2, r3, lsl #15
	str     r2, [r1]
	ldr     r1, [r0, #0x4]
	add     r1, r1, #0x4
	str     r1, [r0]
	add     r1, r1, #0x4
	str     r1, [r0, #0x4]
	ldmfd   sp!, {r3,pc}
@ 0x20bf864


.arm
.globl Function_20bf864
Function_20bf864: @ 20bf864 :arm
	stmfd   sp!, {r3-r5,lr}
	ldrsh   lr, [sp, #0x10]
	ldr     r12, [pc, #0x48] @ [0x20bf8bc] (=0x3ff)
	mov     r3, r3, asr #3
	and     r12, r12, r2, asr #3
	mov     r2, r3, lsl #22
	mov     lr, lr, asr #3
	ldr     r4, [r0]
	mov     r5, #0x32
	str     r5, [r4]
	mov     r3, lr, lsl #22
	orr     r2, r12, r2, lsr #12
	orr     r3, r2, r3, lsr #2
	ldr     r2, [r0, #0x4]
	orr     r1, r3, r1, lsl #30
	str     r1, [r2]
	ldr     r1, [r0, #0x4]
	add     r1, r1, #0x4
	str     r1, [r0]
	add     r1, r1, #0x4
	str     r1, [r0, #0x4]
	ldmfd   sp!, {r3-r5,pc}
@ 0x20bf8bc

.word 0x3ff @ 0x20bf8bc



.arm
.globl Function_20bf8c0
Function_20bf8c0: @ 20bf8c0 :arm
	ldr     r3, [r0]
	mov     r12, #0x33
	str     r12, [r3]
	ldr     r3, [r0, #0x4]
	orr     r1, r2, r1, lsl #30
	str     r1, [r3]
	ldr     r1, [r0, #0x4]
	add     r1, r1, #0x4
	str     r1, [r0]
	add     r1, r1, #0x4
	str     r1, [r0, #0x4]
	bx      lr
@ 0x20bf8f0


.arm
.globl Function_20bf8f0
Function_20bf8f0: @ 20bf8f0 :arm
	ldr     r2, [r0]
	mov     r3, #0x40
	str     r3, [r2]
	ldr     r2, [r0, #0x4]
	str     r1, [r2]
	ldr     r1, [r0, #0x4]
	add     r1, r1, #0x4
	str     r1, [r0]
	add     r1, r1, #0x4
	str     r1, [r0, #0x4]
	bx      lr
@ 0x20bf91c


.arm
.globl Function_20bf91c
Function_20bf91c: @ 20bf91c :arm
	ldr     r1, [r0]
	mov     r2, #0x41
	str     r2, [r1]
	ldr     r1, [r0, #0x4]
	str     r1, [r0]
	add     r1, r1, #0x4
	str     r1, [r0, #0x4]
	bx      lr
@ 0x20bf93c


.arm
G3_LoadMtx44: @ 20bf93c :arm
	ldr     r1, =GFX_FIFO
	mov     r2, #0x16
	ldr     r12, =GX_SendFifo64B
	str     r2, [r1]
	bx      r12
@ 0x20bf950

.pool



.arm
G3_LoadMtx43: @ 20bf958 :arm
	ldr     r1, [pc, #0xc] @ [0x20bf96c] (=GFX_FIFO)
	mov     r2, #0x17
	ldr     r12, [pc, #0x8] @ [0x20bf970] (=GX_SendFifo48B)
	str     r2, [r1]
	bx      r12
@ 0x20bf96c

.word GFX_FIFO @ 0x20bf96c
.word GX_SendFifo48B @ 0x20bf970



.arm
G3_MultMtx43: @ 20bf974 :arm
	ldr     r1, [pc, #0xc] @ [0x20bf988] (=GFX_FIFO)
	mov     r2, #0x19
	ldr     r12, [pc, #0x8] @ [0x20bf98c] (=GX_SendFifo48B)
	str     r2, [r1]
	bx      r12
@ 0x20bf988

.word GFX_FIFO @ 0x20bf988
.word GX_SendFifo48B @ 0x20bf98c



.arm
G3_MultMtx33: @ 20bf990 :arm
	ldr     r1, [pc, #0xc] @ [0x20bf9a4] (=GFX_FIFO)
	mov     r2, #0x1a
	ldr     r12, [pc, #0x8] @ [0x20bf9a8] (=MI_Copy36B)
	str     r2, [r1]
	bx      r12
@ 0x20bf9a4

.word GFX_FIFO @ 0x20bf9a4
.word MI_Copy36B @ =MI_Copy36B, 0x20bf9a8



.arm
.globl G3X_Init
G3X_Init: @ 20bf9ac :arm
	stmfd   sp!, {r3,lr}

	bl      G3X_ClearFifo

	ldr     r1, [pc, #0xdc] @ [0x20bfa98] (=GFX_END)
	mov     r0, #0x0
	str     r0, [r1]
branch_20bf9c0: @ 20bf9c0 :arm
	ldr     r0, [r1, #0xfc]
	tst     r0, #2, 6 @ #0x8000000
	bne     branch_20bf9c0

	ldr     r0, [pc, #0xc8] @ [0x20bfa9c] (=GFX_CONTROL)
	mov     r2, #0x0
	strh    r2, [r0]
	str     r2, [r1, #0xfc]
	str     r2, [r0, #-0x50]
	ldrh    r12, [r0]
	ldr     r2, [pc, #0xb4] @ [0x20bfaa0] (=0xffffcffd)
	ldr     r3, [pc, #0xb4] @ [0x20bfaa4] (=0xcffb)
	orr     r12, r12, #2, 20 @ #0x2000
	strh    r12, [r0]
	ldrh    r12, [r0]
	orr     r12, r12, #1, 20 @ #0x1000
	strh    r12, [r0]
	ldrh    r12, [r0]
	and     r2, r12, r2
	strh    r2, [r0]
	ldrh    r2, [r0]
	bic     r2, r2, #3, 20 @ #0x3000
	orr     r2, r2, #0x10
	strh    r2, [r0]
	ldrh    r2, [r0]
	and     r2, r2, r3
	strh    r2, [r0]
	ldr     r0, [r1, #0xfc]
	orr     r0, r0, #2, 18 @ #0x8000
	str     r0, [r1, #0xfc]
	ldr     r0, [r1, #0xfc]
	bic     r0, r0, #3, 2 @ #0xc0000000
	orr     r0, r0, #2, 2 @ #0x80000000
	str     r0, [r1, #0xfc]
	bl      G3X_InitMtxStack
	ldr     r1, [pc, #0x58] @ [0x20bfaa8] (=GFX_CLEAR_COLOR)
	mov     r2, #0x0
	ldr     r0, [pc, #0x54] @ [0x20bfaac] (=0x7fff)
	str     r2, [r1]
	strh    r0, [r1, #0x4]
	strh    r2, [r1, #0x6]
	str     r2, [r1, #0x8]
	strh    r2, [r1, #0xc]
	sub     r1, r1, #210, 30 @ #0x348
	ldrh    r0, [r1]
	bic     r0, r0, #0x3
	strh    r0, [r1]
	bl      G3X_InitTable
	ldr     r2, [pc, #0x2c] @ [0x20bfab0] (=0x1f0080)
	ldr     r1, [pc, #0x2c] @ [0x20bfab4] (=GFX_POLY_FORMAT)
	mov     r0, #0x0
	str     r2, [r1]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	ldmfd   sp!, {r3,pc}
@ 0x20bfa98

.word GFX_END @ 0x20bfa98
.word GFX_CONTROL @ 0x20bfa9c
.word 0xffffcffd @ 0x20bfaa0
.word 0xcffb @ 0x20bfaa4
.word GFX_CLEAR_COLOR @ 0x20bfaa8
.word 0x7fff @ 0x20bfaac
.word 0x1f0080 @ 0x20bfab0
.word GFX_POLY_FORMAT @ 0x20bfab4



.arm
.globl G3X_Reset
G3X_Reset: @ 20bfab8 :arm
	stmfd   sp!, {r3,lr}
	ldr     r2, [pc, #0x50] @ [0x20bfb14] (=GFX_STATUS)
branch_20bfac0: @ 20bfac0 :arm
	ldr     r0, [r2]
	tst     r0, #0x8000000
	bne     branch_20bfac0
	ldr     r0, [r2]
	ldr     r1, [pc, #0x40] @ [0x20bfb18] (=GFX_CONTROL)
	orr     r0, r0, #0x8000
	str     r0, [r2]
	ldrh    r0, [r1]
	orr     r0, r0, #0x2000
	strh    r0, [r1]
	ldrh    r0, [r1]
	orr     r0, r0, #0x1000
	strh    r0, [r1]
	bl      G3X_ResetMtxStack
	ldr     r2, [pc, #0x1c] @ [0x20bfb1c] (=0x1f0080)
	ldr     r1, [pc, #0x1c] @ [0x20bfb20] (=GFX_POLY_FORMAT)
	mov     r0, #0x0
	str     r2, [r1]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	ldmfd   sp!, {r3,pc}
@ 0x20bfb14

.word GFX_STATUS @ 0x20bfb14
.word GFX_CONTROL @ 0x20bfb18
.word 0x1f0080 @ 0x20bfb1c
.word GFX_POLY_FORMAT @ 0x20bfb20



.arm
G3X_ClearFifo: @ 20bfb24 :arm
	stmfd   sp!, {r3,lr}

	ldr     r0, =GFX_FIFO
	bl      GXi_NopClearFifo128_

	ldr     r1, =GFX_STATUS
branch_20bfb34: @ 20bfb34 :arm
	ldr     r0, [r1]
	tst     r0, #GFX_BUSY
	bne     branch_20bfb34

	ldmfd   sp!, {r3,pc}
@ 0x20bfb44

.pool



.arm
.globl G3X_InitMtxStack
G3X_InitMtxStack: @ 20bfb4c :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x8
	ldr     r1, =GFX_STATUS
	ldr     r0, [r1]
	orr     r0, r0, #0x8000
	str     r0, [r1]

	add     r4, sp, #0x4
branch_20bfb68: @ 20bfb68 :arm
	mov     r0, r4
	bl      G3X_GetMtxStackLevelPV
	cmp     r0, #0x0
	bne     branch_20bfb68

	add     r4, sp, #0x0
branch_20bfb7c: @ 20bfb7c :arm
	mov     r0, r4
	bl      G3X_GetMtxStackLevelPJ
	cmp     r0, #0x0
	bne     branch_20bfb7c

	ldr     r1, =MATRIX_CONTROL
	mov     r0, #0x3
	str     r0, [r1]
	mov     r0, #0x0
	str     r0, [r1, #0x14]
	str     r0, [r1]

	ldr     r0, [sp]
	mov     r2, #0x0
	cmp     r0, #0x0
	strne   r0, [r1, #0x8]
	ldr     r1, =MATRIX_IDENTITY
	mov     r0, #0x2
	str     r2, [r1]
	str     r0, [r1, #-0x14]
	ldr     r0, [sp, #0x4]
	str     r0, [r1, #-0xc]
	str     r2, [r1]

	add     sp, sp, #0x8
	ldmfd   sp!, {r4,pc}
@ 0x20bfbd8

.pool



.arm
.globl G3X_ResetMtxStack
G3X_ResetMtxStack: @ 20bfbe4 :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x8

	ldr     r1, =GFX_STATUS
	ldr     r0, [r1]
	orr     r0, r0, #0x8000
	str     r0, [r1]
	add     r4, sp, #0x4
branch_20bfc00: @ 20bfc00 :arm
	mov     r0, r4
	bl      G3X_GetMtxStackLevelPV
	cmp     r0, #0x0
	bne     branch_20bfc00
	add     r4, sp, #0x0
branch_20bfc14: @ 20bfc14 :arm
	mov     r0, r4
	bl      G3X_GetMtxStackLevelPJ
	cmp     r0, #0x0
	bne     branch_20bfc14
	ldr     r1, =MATRIX_CONTROL
	mov     r0, #0x3
	str     r0, [r1]
	mov     r0, #0x0
	str     r0, [r1, #0x14]
	str     r0, [r1]
	ldr     r0, [sp]
	ldr     r2, =MATRIX_CONTROL
	cmp     r0, #0x0
	strne   r0, [r1, #0x8]
	mov     r0, #0x2
	str     r0, [r2]
	ldr     r1, [sp, #0x4]
	mov     r0, #0x0
	str     r1, [r2, #0x8]
	str     r0, [r2, #0x14]

	add     sp, sp, #0x8
	ldmfd   sp!, {r4,pc}
@ 0x20bfc6c

.pool



.arm
.globl G3X_SetFog
G3X_SetFog: @ 20bfc74 :arm
	cmp     r0, #0x0
	beq     branch_20bfca8
	ldr     r12, [pc, #0x3c] @ [0x20bfcc0] (=GFX_FOG_OFFSET)
	mov     r0, r1, lsl #6
	strh    r3, [r12]
	sub     r3, r12, #0x2fc
	ldrh    r1, [r3]
	orr     r0, r0, r2, lsl #8
	orr     r0, r0, #0x80
	bic     r1, r1, #0x3f40
	orr     r0, r1, r0
	strh    r0, [r3]
	bx      lr

branch_20bfca8: @ 20bfca8 :arm
	ldr     r2, [pc, #0x14] @ [0x20bfcc4] (=GFX_CONTROL)
	ldr     r0, [pc, #0x14] @ [0x20bfcc8] (=0xcf7f)
	ldrh    r1, [r2]
	and     r0, r1, r0
	strh    r0, [r2]
	bx      lr
@ 0x20bfcc0

.word GFX_FOG_OFFSET @ 0x20bfcc0
.word GFX_CONTROL @ 0x20bfcc4
.word 0xcf7f @ 0x20bfcc8



.arm
G3X_GetClipMtx: @ 20bfccc :arm
	stmfd   sp!, {r3,lr}

	ldr     r2, =GFX_STATUS
	mov     r1, r0
	ldr     r0, [r2]
	tst     r0, #GFX_BUSY
	mvnne   r0, #0x0
	ldmnefd sp!, {r3,pc}
	add     r0, r2, #0x40
	bl      MI_Copy64B
	mov     r0, #0x0

	ldmfd   sp!, {r3,pc}
@ 0x20bfcf8

.pool



.arm
G3X_GetVectorMtx: @ 20bfcfc :arm
	stmfd   sp!, {r3,lr}

	ldr     r2, =GFX_STATUS
	mov     r1, r0
	ldr     r0, [r2]
	tst     r0, #GFX_BUSY
	mvnne   r0, #0x0
	ldmnefd sp!, {r3,pc}
	add     r0, r2, #0x80
	bl      MI_Copy36B
	mov     r0, #0x0

	ldmfd   sp!, {r3,pc}
@ 0x20bfd28

.pool



.arm
.globl SetEdgeTable
SetEdgeTable: @ 20bfd2c :arm
	ldr     r12, =MIi_CpuCopy16
	ldr     r1, =GFX_EDGE_TABLE
	mov     r2, #0x10
	bx      r12
@ 0x20bfd3c

.pool



.arm
.globl Function_20bfd44
Function_20bfd44: @ 20bfd44 :arm
	ldr     r12, [pc, #0x4] @ [0x20bfd50] (=MI_Copy32B)
	ldr     r1, [pc, #0x4] @ [0x20bfd54] (=GFX_FOG_TABLE)
	bx      r12
@ 0x20bfd50

.word MI_Copy32B @ 0x20bfd50
.word GFX_FOG_TABLE @ 0x20bfd54



.arm
.globl G3X_SetClearColor
G3X_SetClearColor: @ 20bfd58 :arm
	ldr     r12, [sp]
	orr     r0, r0, r1, lsl #16
	orr     r1, r0, r3, lsl #24
	cmp     r12, #0x0
	ldr     r0, =GFX_CLEAR_COLOR
	orrne   r1, r1, #0x8000
	str     r1, [r0]
	strh    r2, [r0, #0x4]
	bx      lr
@ 0x20bfd7c

.pool



arm_func_start G3X_InitTable
G3X_InitTable: @ 20bfd80 :arm
	stmfd   sp!, {r3,lr}
	sub     sp, sp, #0x8
	ldr     r0, [pc, #0x80] @ [0x20bfe10] (=Unknown_2101148)
	mvn     r1, #0x0
	ldr     r0, [r0]
	cmp     r0, r1
	ldr     r1, [pc, #0x74] @ [0x20bfe14] (=GFX_EDGE_TABLE)
	beq     branch_20bfdd0
	mov     r2, #0x0
	str     r2, [sp]
	mov     r3, #0x10
	str     r2, [sp, #0x4]
	bl      MI_DmaFill32Async
	ldr     r0, [pc, #0x54] @ [0x20bfe10] (=Unknown_2101148)
	ldr     r1, [pc, #0x58] @ [0x20bfe18] (=GFX_FOG_TABLE)
	ldr     r0, [r0]
	mov     r2, #0x0
	mov     r3, #0x60
	bl      MI_DmaFill32
	b       branch_20bfdec

branch_20bfdd0: @ 20bfdd0 :arm
	mov     r0, #0x0
	mov     r2, #0x10
	bl      MIi_CpuClear32
	ldr     r1, [pc, #0x34] @ [0x20bfe18] (=GFX_FOG_TABLE)
	mov     r0, #0x0
	mov     r2, #0x60
	bl      MIi_CpuClear32
branch_20bfdec: @ 20bfdec :arm
	mov     r2, #0x0
	ldr     r0, [pc, #0x24] @ [0x20bfe1c] (=GFX_SHININESS)
	mov     r1, r2
branch_20bfdf8: @ 20bfdf8 :arm
	add     r2, r2, #0x1
	str     r1, [r0]
	cmp     r2, #0x20
	blt     branch_20bfdf8
	add     sp, sp, #0x8
	ldmfd   sp!, {r3,pc}
@ 0x20bfe10

.word Unknown_2101148 @ 0x20bfe10
.word GFX_EDGE_TABLE @ 0x20bfe14
.word GFX_FOG_TABLE @ 0x20bfe18
.word GFX_SHININESS @ 0x20bfe1c
arm_func_end G3X_InitTable



.arm
G3X_GetMtxStackLevelPV: @ 20bfe20 :arm
	ldr     r2, =GFX_STATUS
	ldr     r1, [r2]
	tst     r1, #0x4000
	mvnne   r0, #0x0
	bxne    lr

	ldr     r1, [r2]
	and     r1, r1, #0x1f00
	mov     r1, r1, lsr #8
	str     r1, [r0]
	mov     r0, #0x0
	bx      lr
@ 0x20bfe4c

.pool



.arm
G3X_GetMtxStackLevelPJ: @ 20bfe50 :arm
	ldr     r2, =GFX_STATUS
	ldr     r1, [r2]
	tst     r1, #0x4000
	mvnne   r0, #0x0
	bxne    lr

	ldr     r1, [r2]
	and     r1, r1, #0x2000
	mov     r1, r1, lsr #13
	str     r1, [r0]
	mov     r0, #0x0
	bx      lr
@ 0x20bfe7c

.pool



.arm
G3X_GetBoxTestResult: @ 20bfe80 :arm
	ldr     r2, =GFX_STATUS
	ldr     r1, [r2]
	tst     r1, #0x1
	mvnne   r0, #0x0
	bxne    lr

	ldr     r1, [r2]
	and     r1, r1, #0x2
	str     r1, [r0]
	mov     r0, #0x0
	bx      lr
@ 0x20bfea8

.pool



.arm
.globl Function_20bfeac
Function_20bfeac: @ 20bfeac :arm
	ldr     r1, [pc, #0x4] @ [0x20bfeb8] (=REG_BGOFFSETS)
	str     r0, [r1]
	bx      lr
@ 0x20bfeb8

.word REG_BGOFFSETS @ 0x20bfeb8



.arm
GXi_NopClearFifo128_: @ 20bfebc :arm
	mov     r1, #0x0
	mov     r2, #0x0
	mov     r3, #0x0
	mov     r12, #0x0
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	stmia   r0, {r1-r3,r12}
	bx      lr
@ 0x20bff50


.arm
G3i_OrthoW_: @ 20bff50 :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x50

	ldr     r12, [sp, #0x58]
	ldr     lr, [sp, #0x5c]
	str     r12, [sp]
	ldr     r4, [sp, #0x68]
	ldr     r12, [sp, #0x60]
	str     lr, [sp, #0x4]
	cmp     r4, #0x0
	addeq   r4, sp, #0x10
	str     r12, [sp, #0x8]
	str     r4, [sp, #0xc]
	bl      MTX_OrthoW
	ldr     r0, [sp, #0x64]
	cmp     r0, #0x0
	addeq   sp, sp, #0x50
	ldmeqfd sp!, {r4,pc}

	ldr     r1, =MATRIX_CONTROL
	mov     r2, #0x0
	mov     r0, r4
	str     r2, [r1]
	bl      G3_LoadMtx44

	add     sp, sp, #0x50
	ldmfd   sp!, {r4,pc}
@ 0x20bffb0

.pool



.arm
G3i_LookAt_: @ 20bffb4 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x30

	ldr     r4, [sp, #0x40]
	mov     r5, r3
	cmp     r4, #0x0
	addeq   r4, sp, #0x0
	mov     r3, r4
	bl      MTX_LookAt
	cmp     r5, #0x0
	addeq   sp, sp, #0x30
	ldmeqfd sp!, {r3-r5,pc}

	ldr     r1, =MATRIX_CONTROL
	mov     r2, #0x2
	mov     r0, r4
	str     r2, [r1]
	bl      G3_LoadMtx43

	add     sp, sp, #0x30
	ldmfd   sp!, {r3-r5,pc}
@ 0x20bfffc

.pool



.arm
G3_RotX: @ 20c0000 :arm
	ldr     r3, =MATRIX_MULT3x3
	mov     r2, #0x1000
	str     r2, [r3]
	mov     r2, #0x0
	str     r2, [r3]
	str     r2, [r3]
	str     r2, [r3]
	str     r1, [r3]
	str     r0, [r3]
	str     r2, [r3]
	rsb     r0, r0, #0x0
	str     r0, [r3]
	str     r1, [r3]
	bx      lr
@ 0x20c0038

.pool



.arm
G3_RotY: @ 20c003c :arm
	ldr     r12, =MATRIX_MULT3x3
	mov     r3, #0x0
	str     r1, [r12]
	str     r3, [r12]
	rsb     r2, r0, #0x0
	str     r2, [r12]
	str     r3, [r12]
	mov     r2, #0x1000
	str     r2, [r12]
	str     r3, [r12]
	str     r0, [r12]
	str     r3, [r12]
	str     r1, [r12]
	bx      lr
@ 0x20c0074

.pool



.arm
.globl G3_RotZ
G3_RotZ: @ 20c0078 :arm
	ldr     r3, =MATRIX_MULT3x3
	mov     r2, #0x0
	str     r1, [r3]
	str     r0, [r3]
	str     r2, [r3]
	rsb     r0, r0, #0x0
	str     r0, [r3]
	str     r1, [r3]
	str     r2, [r3]
	str     r2, [r3]
	str     r2, [r3]
	mov     r0, #0x1000
	str     r0, [r3]
	bx      lr
@ 0x20c00b0

.pool



.arm
.globl GX_LoadBGPltt
GX_LoadBGPltt: @ 20c00b4 :arm
	stmfd   sp!, {r4,lr}
	ldr     r3, =Unknown_2101148
	mov     r4, r0
	ldr     r0, [r3]
	mvn     r12, #0x0
	mov     lr, r1
	mov     r3, r2
	cmp     r0, r12
	beq     branch_20c00f0
	cmp     r3, #0x1c
	bls     branch_20c00f0
	mov     r1, r4
	add     r2, lr, #BG_PALETTE
	bl      MI_DmaCopy16
	ldmfd   sp!, {r4,pc}

branch_20c00f0: @ 20c00f0 :arm
	mov     r0, r4
	mov     r2, r3
	add     r1, lr, #BG_PALETTE
	bl      MIi_CpuCopy16
	ldmfd   sp!, {r4,pc}
@ 0x20c0104

.pool



.arm
.globl GXS_LoadBGPltt
GXS_LoadBGPltt: @ 20c0108 :arm
	stmfd   sp!, {r3,lr}
	ldr     r3, =Unknown_2101148
	mov     lr, r0
	ldr     r0, [r3]
	mvn     r12, #0x0
	mov     r3, r2
	cmp     r0, r12
	beq     branch_20c0144
	cmp     r3, #0x1c
	bls     branch_20c0144
	add     r2, r1, #BG_PALETTE_SUB - BG_PALETTE
	mov     r1, lr
	add     r2, r2, #BG_PALETTE
	bl      MI_DmaCopy16
	ldmfd   sp!, {r3,pc}

branch_20c0144: @ 20c0144 :arm
	add     r1, r1, #BG_PALETTE_SUB - BG_PALETTE
	mov     r0, lr
	mov     r2, r3
	add     r1, r1, #BG_PALETTE
	bl      MIi_CpuCopy16
	ldmfd   sp!, {r3,pc}
@ 0x20c015c

.pool



.arm
.globl GX_LoadOBJPltt
GX_LoadOBJPltt: @ 20c0160 :arm
	stmfd   sp!, {r3,lr}
	ldr     r3, =Unknown_2101148
	mov     lr, r0
	ldr     r0, [r3]
	mvn     r12, #0x0
	mov     r3, r2
	cmp     r0, r12
	beq     branch_20c019c
	cmp     r3, #0x1c
	bls     branch_20c019c
	add     r2, r1, #SPRITE_PALETTE - BG_PALETTE
	mov     r1, lr
	add     r2, r2, #BG_PALETTE
	bl      MI_DmaCopy16
	ldmfd   sp!, {r3,pc}

branch_20c019c: @ 20c019c :arm
	add     r1, r1, #SPRITE_PALETTE - BG_PALETTE
	mov     r0, lr
	mov     r2, r3
	add     r1, r1, #BG_PALETTE
	bl      MIi_CpuCopy16
	ldmfd   sp!, {r3,pc}
@ 0x20c01b4

.pool



arm_func_start GXS_LoadOBJPltt
GXS_LoadOBJPltt: @ 20c01b8 :arm
	stmfd   sp!, {r3,lr}
	ldr     r3, =Unknown_2101148
	mov     lr, r0
	ldr     r0, [r3]
	mvn     r12, #0x0
	mov     r3, r2
	cmp     r0, r12
	beq     branch_20c01f4
	cmp     r3, #0x1c
	bls     branch_20c01f4
	add     r2, r1, #SPRITE_PALETTE_SUB - BG_PALETTE
	mov     r1, lr
	add     r2, r2, #BG_PALETTE
	bl      MI_DmaCopy16
	ldmfd   sp!, {r3,pc}

branch_20c01f4: @ 20c01f4 :arm
	add     r1, r1, #SPRITE_PALETTE_SUB - BG_PALETTE
	mov     r0, lr
	mov     r2, r3
	add     r1, r1, #BG_PALETTE
	bl      MIi_CpuCopy16
	ldmfd   sp!, {r3,pc}
@ 0x20c020c

.pool
arm_func_end GXS_LoadOBJPltt



arm_func_start GX_LoadOAM
GX_LoadOAM: @ 20c0210 :arm
	stmfd   sp!, {r4,lr}

	ldr     r3, =Unknown_2101148
	mov     r4, r0
	ldr     r0, [r3]
	mvn     r12, #0x0
	mov     lr, r1
	mov     r3, r2
	cmp     r0, r12
	beq     branch_20c024c
	cmp     r3, #0x30
	bls     branch_20c024c
	mov     r1, r4
	add     r2, lr, #OAM
	bl      MI_DmaCopy32
	ldmfd   sp!, {r4,pc}

branch_20c024c: @ 20c024c :arm
	mov     r0, r4
	mov     r2, r3
	add     r1, lr, #OAM
	bl      MI_CpuCopy32
	ldmfd   sp!, {r4,pc}
@ 0x20c0260

.pool
arm_func_end GX_LoadOAM



arm_func_start GXS_LoadOAM
GXS_LoadOAM: @ 20c0264 :arm
	stmfd   sp!, {r3,lr}

	ldr     r3, =Unknown_2101148
	mov     lr, r0
	ldr     r0, [r3]
	mvn     r12, #0x0
	mov     r3, r2
	cmp     r0, r12
	beq     branch_20c02a0
	cmp     r3, #0x30
	bls     branch_20c02a0
	add     r2, r1, #OAM_SUB - OAM
	mov     r1, lr
	add     r2, r2, #OAM
	bl      MI_DmaCopy32
	ldmfd   sp!, {r3,pc}

branch_20c02a0: @ 20c02a0 :arm
	add     r1, r1, #OAM_SUB - OAM
	mov     r0, lr
	mov     r2, r3
	add     r1, r1, #OAM
	bl      MI_CpuCopy32
	ldmfd   sp!, {r3,pc}
@ 0x20c02b8

.pool
arm_func_end GXS_LoadOAM



.arm
.globl GX_LoadOBJ
GX_LoadOBJ: @ 20c02bc :arm
	stmfd   sp!, {r4,lr}
	ldr     r3, [pc, #0x48] @ [0x20c0310] (=Unknown_2101148)
	mov     r4, r0
	ldr     r0, [r3]
	mvn     r12, #0x0
	mov     lr, r1
	mov     r3, r2
	cmp     r0, r12
	mov     r12, #0x6400000
	beq     branch_20c02fc
	cmp     r3, #0x30
	bls     branch_20c02fc
	mov     r1, r4
	add     r2, r12, lr
	bl      MI_DmaCopy32
	ldmfd   sp!, {r4,pc}

branch_20c02fc: @ 20c02fc :arm
	mov     r0, r4
	mov     r2, r3
	add     r1, r12, lr
	bl      MI_CpuCopy32
	ldmfd   sp!, {r4,pc}
@ 0x20c0310

.word Unknown_2101148 @ 0x20c0310



.arm
.globl GXS_LoadOBJ
GXS_LoadOBJ: @ 20c0314 :arm
	stmfd   sp!, {r4,lr}
	ldr     r3, [pc, #0x48] @ [0x20c0368] (=Unknown_2101148)
	mov     r4, r0
	ldr     r0, [r3]
	mvn     r12, #0x0
	mov     lr, r1
	mov     r3, r2
	cmp     r0, r12
	mov     r12, #0x6600000
	beq     branch_20c0354
	cmp     r3, #0x30
	bls     branch_20c0354
	mov     r1, r4
	add     r2, r12, lr
	bl      MI_DmaCopy32
	ldmfd   sp!, {r4,pc}

branch_20c0354: @ 20c0354 :arm
	mov     r0, r4
	mov     r2, r3
	add     r1, r12, lr
	bl      MI_CpuCopy32
	ldmfd   sp!, {r4,pc}
@ 0x20c0368

.word Unknown_2101148 @ 0x20c0368



.arm
GX_LoadBG0Scr: @ 20c036c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      G2_GetBG0ScrPtr
	ldr     r1, [pc, #0x40] @ [0x20c03c8] (=Unknown_2101148)
	mov     r12, r0
	ldr     r0, [r1]
	mvn     r1, #0x0
	cmp     r0, r1
	beq     branch_20c03b4
	cmp     r4, #0x1c
	bls     branch_20c03b4
	mov     r1, r6
	mov     r3, r4
	add     r2, r12, r5
	bl      MI_DmaCopy16
	ldmfd   sp!, {r4-r6,pc}

branch_20c03b4: @ 20c03b4 :arm
	mov     r0, r6
	mov     r2, r4
	add     r1, r12, r5
	bl      MIi_CpuCopy16
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c03c8

.word Unknown_2101148 @ 0x20c03c8



arm_func_start GXS_LoadBG0Scr
GXS_LoadBG0Scr: @ 20c03cc :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      G2S_GetBG0ScrPtr
	ldr     r1, [pc, #0x40] @ [0x20c0428] (=Unknown_2101148)
	mov     r12, r0
	ldr     r0, [r1]
	mvn     r1, #0x0
	cmp     r0, r1
	beq     branch_20c0414
	cmp     r4, #0x1c
	bls     branch_20c0414
	mov     r1, r6
	mov     r3, r4
	add     r2, r12, r5
	bl      MI_DmaCopy16
	ldmfd   sp!, {r4-r6,pc}

branch_20c0414: @ 20c0414 :arm
	mov     r0, r6
	mov     r2, r4
	add     r1, r12, r5
	bl      MIi_CpuCopy16
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c0428

.word Unknown_2101148 @ 0x20c0428
arm_func_end GXS_LoadBG0Scr



.arm
.globl GX_LoadBG1Scr
GX_LoadBG1Scr: @ 20c042c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      G2_GetBG1ScrPtr
	ldr     r1, [pc, #0x40] @ [0x20c0488] (=Unknown_2101148)
	mov     r12, r0
	ldr     r0, [r1]
	mvn     r1, #0x0
	cmp     r0, r1
	beq     branch_20c0474
	cmp     r4, #0x1c
	bls     branch_20c0474
	mov     r1, r6
	mov     r3, r4
	add     r2, r12, r5
	bl      MI_DmaCopy16
	ldmfd   sp!, {r4-r6,pc}

branch_20c0474: @ 20c0474 :arm
	mov     r0, r6
	mov     r2, r4
	add     r1, r12, r5
	bl      MIi_CpuCopy16
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c0488

.word Unknown_2101148 @ 0x20c0488



.arm
.globl GXS_LoadBG1Scr
GXS_LoadBG1Scr: @ 20c048c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      G2S_GetBG1ScrPtr
	ldr     r1, [pc, #0x40] @ [0x20c04e8] (=Unknown_2101148)
	mov     r12, r0
	ldr     r0, [r1]
	mvn     r1, #0x0
	cmp     r0, r1
	beq     branch_20c04d4
	cmp     r4, #0x1c
	bls     branch_20c04d4
	mov     r1, r6
	mov     r3, r4
	add     r2, r12, r5
	bl      MI_DmaCopy16
	ldmfd   sp!, {r4-r6,pc}

branch_20c04d4: @ 20c04d4 :arm
	mov     r0, r6
	mov     r2, r4
	add     r1, r12, r5
	bl      MIi_CpuCopy16
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c04e8

.word Unknown_2101148 @ 0x20c04e8



.arm
.globl GX_LoadBG2Scr
GX_LoadBG2Scr: @ 20c04ec :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      G2_GetBG2ScrPtr
	ldr     r1, [pc, #0x40] @ [0x20c0548] (=Unknown_2101148)
	mov     r12, r0
	ldr     r0, [r1]
	mvn     r1, #0x0
	cmp     r0, r1
	beq     branch_20c0534
	cmp     r4, #0x1c
	bls     branch_20c0534
	mov     r1, r6
	mov     r3, r4
	add     r2, r12, r5
	bl      MI_DmaCopy16
	ldmfd   sp!, {r4-r6,pc}

branch_20c0534: @ 20c0534 :arm
	mov     r0, r6
	mov     r2, r4
	add     r1, r12, r5
	bl      MIi_CpuCopy16
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c0548

.word Unknown_2101148 @ 0x20c0548



.arm
GXS_LoadBG2Scr: @ 20c054c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      G2S_GetBG2ScrPtr
	ldr     r1, [pc, #0x40] @ [0x20c05a8] (=Unknown_2101148)
	mov     r12, r0
	ldr     r0, [r1]
	mvn     r1, #0x0
	cmp     r0, r1
	beq     branch_20c0594
	cmp     r4, #0x1c
	bls     branch_20c0594
	mov     r1, r6
	mov     r3, r4
	add     r2, r12, r5
	bl      MI_DmaCopy16
	ldmfd   sp!, {r4-r6,pc}

branch_20c0594: @ 20c0594 :arm
	mov     r0, r6
	mov     r2, r4
	add     r1, r12, r5
	bl      MIi_CpuCopy16
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c05a8

.word Unknown_2101148 @ 0x20c05a8



arm_func_start GX_LoadBG3Scr
GX_LoadBG3Scr: @ 20c05ac :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      G2_GetBG3ScrPtr
	ldr     r1, [pc, #0x40] @ [0x20c0608] (=Unknown_2101148)
	mov     r12, r0
	ldr     r0, [r1]
	mvn     r1, #0x0
	cmp     r0, r1
	beq     branch_20c05f4
	cmp     r4, #0x1c
	bls     branch_20c05f4
	mov     r1, r6
	mov     r3, r4
	add     r2, r12, r5
	bl      MI_DmaCopy16
	ldmfd   sp!, {r4-r6,pc}

branch_20c05f4: @ 20c05f4 :arm
	mov     r0, r6
	mov     r2, r4
	add     r1, r12, r5
	bl      MIi_CpuCopy16
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c0608

.word Unknown_2101148 @ 0x20c0608
arm_func_end GX_LoadBG3Scr



.arm
GXS_LoadBG3Scr: @ 20c060c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      G2S_GetBG3ScrPtr
	ldr     r1, [pc, #0x40] @ [0x20c0668] (=Unknown_2101148)
	mov     r12, r0
	ldr     r0, [r1]
	mvn     r1, #0x0
	cmp     r0, r1
	beq     branch_20c0654
	cmp     r4, #0x1c
	bls     branch_20c0654
	mov     r1, r6
	mov     r3, r4
	add     r2, r12, r5
	bl      MI_DmaCopy16
	ldmfd   sp!, {r4-r6,pc}

branch_20c0654: @ 20c0654 :arm
	mov     r0, r6
	mov     r2, r4
	add     r1, r12, r5
	bl      MIi_CpuCopy16
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c0668

.word Unknown_2101148 @ 0x20c0668



.arm
.globl GX_LoadBG0Char
GX_LoadBG0Char: @ 20c066c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      G2_GetBG0CharPtr
	ldr     r1, [pc, #0x40] @ [0x20c06c8] (=Unknown_2101148)
	mov     r12, r0
	ldr     r0, [r1]
	mvn     r1, #0x0
	cmp     r0, r1
	beq     branch_20c06b4
	cmp     r4, #0x30
	bls     branch_20c06b4
	mov     r1, r6
	mov     r3, r4
	add     r2, r12, r5
	bl      MI_DmaCopy32
	ldmfd   sp!, {r4-r6,pc}

branch_20c06b4: @ 20c06b4 :arm
	mov     r0, r6
	mov     r2, r4
	add     r1, r12, r5
	bl      MI_CpuCopy32
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c06c8

.word Unknown_2101148 @ 0x20c06c8



.arm
.globl GXS_LoadBG0Char
GXS_LoadBG0Char: @ 20c06cc :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      G2S_GetBG0CharPtr
	ldr     r1, [pc, #0x40] @ [0x20c0728] (=Unknown_2101148)
	mov     r12, r0
	ldr     r0, [r1]
	mvn     r1, #0x0
	cmp     r0, r1
	beq     branch_20c0714
	cmp     r4, #0x30
	bls     branch_20c0714
	mov     r1, r6
	mov     r3, r4
	add     r2, r12, r5
	bl      MI_DmaCopy32
	ldmfd   sp!, {r4-r6,pc}

branch_20c0714: @ 20c0714 :arm
	mov     r0, r6
	mov     r2, r4
	add     r1, r12, r5
	bl      MI_CpuCopy32
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c0728

.word Unknown_2101148 @ 0x20c0728



arm_func_start GX_LoadBG1Char
GX_LoadBG1Char: @ 20c072c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      G2_GetBG1CharPtr
	ldr     r1, [pc, #0x40] @ [0x20c0788] (=Unknown_2101148)
	mov     r12, r0
	ldr     r0, [r1]
	mvn     r1, #0x0
	cmp     r0, r1
	beq     branch_20c0774
	cmp     r4, #0x30
	bls     branch_20c0774
	mov     r1, r6
	mov     r3, r4
	add     r2, r12, r5
	bl      MI_DmaCopy32
	ldmfd   sp!, {r4-r6,pc}

branch_20c0774: @ 20c0774 :arm
	mov     r0, r6
	mov     r2, r4
	add     r1, r12, r5
	bl      MI_CpuCopy32
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c0788

.word Unknown_2101148 @ 0x20c0788
arm_func_end GX_LoadBG1Char



arm_func_start GXS_LoadBG1Char
GXS_LoadBG1Char: @ 20c078c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      G2S_GetBG1CharPtr
	ldr     r1, [pc, #0x40] @ [0x20c07e8] (=Unknown_2101148)
	mov     r12, r0
	ldr     r0, [r1]
	mvn     r1, #0x0
	cmp     r0, r1
	beq     branch_20c07d4
	cmp     r4, #0x30
	bls     branch_20c07d4
	mov     r1, r6
	mov     r3, r4
	add     r2, r12, r5
	bl      MI_DmaCopy32
	ldmfd   sp!, {r4-r6,pc}

branch_20c07d4: @ 20c07d4 :arm
	mov     r0, r6
	mov     r2, r4
	add     r1, r12, r5
	bl      MI_CpuCopy32
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c07e8

.word Unknown_2101148 @ 0x20c07e8
arm_func_end GXS_LoadBG1Char



arm_func_start GX_LoadBG2Char
GX_LoadBG2Char: @ 20c07ec :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      G2_GetBG2CharPtr
	ldr     r1, [pc, #0x40] @ [0x20c0848] (=Unknown_2101148)
	mov     r12, r0
	ldr     r0, [r1]
	mvn     r1, #0x0
	cmp     r0, r1
	beq     branch_20c0834
	cmp     r4, #0x30
	bls     branch_20c0834
	mov     r1, r6
	mov     r3, r4
	add     r2, r12, r5
	bl      MI_DmaCopy32
	ldmfd   sp!, {r4-r6,pc}

branch_20c0834: @ 20c0834 :arm
	mov     r0, r6
	mov     r2, r4
	add     r1, r12, r5
	bl      MI_CpuCopy32
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c0848

.word Unknown_2101148 @ 0x20c0848
arm_func_end GX_LoadBG2Char



.arm
GXS_LoadBG2Char: @ 20c084c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      G2S_GetBG2CharPtr
	ldr     r1, [pc, #0x40] @ [0x20c08a8] (=Unknown_2101148)
	mov     r12, r0
	ldr     r0, [r1]
	mvn     r1, #0x0
	cmp     r0, r1
	beq     branch_20c0894
	cmp     r4, #0x30
	bls     branch_20c0894
	mov     r1, r6
	mov     r3, r4
	add     r2, r12, r5
	bl      MI_DmaCopy32
	ldmfd   sp!, {r4-r6,pc}

branch_20c0894: @ 20c0894 :arm
	mov     r0, r6
	mov     r2, r4
	add     r1, r12, r5
	bl      MI_CpuCopy32
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c08a8

.word Unknown_2101148 @ 0x20c08a8



arm_func_start GX_LoadBG3Char
GX_LoadBG3Char: @ 20c08ac :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      G2_GetBG3CharPtr
	ldr     r1, [pc, #0x40] @ [0x20c0908] (=Unknown_2101148)
	mov     r12, r0
	ldr     r0, [r1]
	mvn     r1, #0x0
	cmp     r0, r1
	beq     branch_20c08f4
	cmp     r4, #0x30
	bls     branch_20c08f4
	mov     r1, r6
	mov     r3, r4
	add     r2, r12, r5
	bl      MI_DmaCopy32
	ldmfd   sp!, {r4-r6,pc}

branch_20c08f4: @ 20c08f4 :arm
	mov     r0, r6
	mov     r2, r4
	add     r1, r12, r5
	bl      MI_CpuCopy32
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c0908

.word Unknown_2101148 @ 0x20c0908
arm_func_end GX_LoadBG3Char



.arm
.globl GXS_LoadBG3Char
GXS_LoadBG3Char: @ 20c090c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      G2S_GetBG3CharPtr
	ldr     r1, [pc, #0x40] @ [0x20c0968] (=Unknown_2101148)
	mov     r12, r0
	ldr     r0, [r1]
	mvn     r1, #0x0
	cmp     r0, r1
	beq     branch_20c0954
	cmp     r4, #0x30
	bls     branch_20c0954
	mov     r1, r6
	mov     r3, r4
	add     r2, r12, r5
	bl      MI_DmaCopy32
	ldmfd   sp!, {r4-r6,pc}

branch_20c0954: @ 20c0954 :arm
	mov     r0, r6
	mov     r2, r4
	add     r1, r12, r5
	bl      MI_CpuCopy32
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c0968

.word Unknown_2101148 @ 0x20c0968



arm_func_start GX_BeginLoadBGExtPltt
GX_BeginLoadBGExtPltt: @ 20c096c :arm
	stmfd   sp!, {r3,lr}
	bl      GX_ResetBankForBGExtPltt
	ldr     r1, [pc, #0x80] @ [0x20c09fc] (=RAM_21ccbbc)
	cmp     r0, #0x20
	str     r0, [r1, #0x14]
	bgt     branch_20c09a0
	cmp     r0, #0x20
	bge     branch_20c09e4
	cmp     r0, #0x0
	ldmlefd sp!, {r3,pc}
	cmp     r0, #0x10
	beq     branch_20c09bc
	ldmfd   sp!, {r3,pc}

branch_20c09a0: @ 20c09a0 :arm
	cmp     r0, #0x40
	bgt     branch_20c09b0
	beq     branch_20c09d0
	ldmfd   sp!, {r3,pc}

branch_20c09b0: @ 20c09b0 :arm
	cmp     r0, #0x60
	beq     branch_20c09e4
	ldmfd   sp!, {r3,pc}

branch_20c09bc: @ 20c09bc :arm
	ldr     r2, [pc, #0x3c] @ [0x20c0a00] (=VRAM_E)
	mov     r0, #0x0
	str     r2, [r1, #0x10]
	str     r0, [r1, #0xc]
	ldmfd   sp!, {r3,pc}

branch_20c09d0: @ 20c09d0 :arm
	ldr     r2, [pc, #0x2c] @ [0x20c0a04] (=VRAM_G)
	mov     r0, #0x4000
	str     r2, [r1, #0x10]
	str     r0, [r1, #0xc]
	ldmfd   sp!, {r3,pc}

branch_20c09e4: @ 20c09e4 :arm
	ldr     r2, [pc, #0x1c] @ [0x20c0a08] (=VRAM_F)
	ldr     r0, [pc, #0xc] @ [0x20c09fc] (=RAM_21ccbbc)
	mov     r1, #0x0
	str     r2, [r0, #0x10]
	str     r1, [r0, #0xc]
	ldmfd   sp!, {r3,pc}
@ 0x20c09fc

.word RAM_21ccbbc @ 0x20c09fc
.word VRAM_E @ 0x20c0a00
.word VRAM_G @ 0x20c0a04
.word VRAM_F @ 0x20c0a08
arm_func_end GX_BeginLoadBGExtPltt



arm_func_start GX_LoadBGExtPltt
GX_LoadBGExtPltt: @ 20c0a0c :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x8
	ldr     r12, [pc, #0x58] @ [0x20c0a74] (=RAM_21ccbbc)
	ldr     r3, [pc, #0x58] @ [0x20c0a78] (=Unknown_2101148)
	ldr     lr, [r12, #0x10]
	ldr     r4, [r12, #0xc]
	add     r5, lr, r1
	ldr     lr, [r3]
	mvn     r12, #0x0
	mov     r1, r0
	mov     r3, r2
	cmp     lr, r12
	sub     r4, r5, r4
	beq     branch_20c0a64
	mov     r12, #0x0
	str     r12, [sp]
	mov     r0, lr
	mov     r2, r4
	str     r12, [sp, #0x4]
	bl      MI_DmaCopy32Async
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r5,pc}

branch_20c0a64: @ 20c0a64 :arm
	mov     r1, r4
	bl      MI_CpuCopy32
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c0a74

.word RAM_21ccbbc @ 0x20c0a74
.word Unknown_2101148 @ 0x20c0a78
arm_func_end GX_LoadBGExtPltt



arm_func_start GX_EndLoadBGExtPltt
GX_EndLoadBGExtPltt: @ 20c0a7c :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x34] @ [0x20c0abc] (=Unknown_2101148)
	mvn     r1, #0x0
	ldr     r0, [r0]
	cmp     r0, r1
	beq     branch_20c0a98
	bl      MI_WaitDma
branch_20c0a98: @ 20c0a98 :arm

	ldr     r0, [pc, #0x20] @ [0x20c0ac0] (=RAM_21ccbbc)
	ldr     r0, [r0, #0x14]
	bl      GX_SetBankForBGExtPltt
	ldr     r0, [pc, #0x14] @ [0x20c0ac0] (=RAM_21ccbbc)
	mov     r1, #0x0
	str     r1, [r0, #0x14]
	str     r1, [r0, #0x10]
	str     r1, [r0, #0xc]
	ldmfd   sp!, {r3,pc}
@ 0x20c0abc

.word Unknown_2101148 @ 0x20c0abc
.word RAM_21ccbbc @ 0x20c0ac0
arm_func_end GX_EndLoadBGExtPltt



.arm
GX_BeginLoadOBJExtPltt: @ 20c0ac4 :arm
	stmfd   sp!, {r3,lr}
	bl      GX_ResetBankForOBJExtPltt
	ldr     r1, [pc, #0x2c] @ [0x20c0b00] (=RAM_21ccbbc)
	cmp     r0, #0x0
	str     r0, [r1, #0x8]
	ldmeqfd sp!, {r3,pc}
	cmp     r0, #0x20
	beq     branch_20c0af4
	cmp     r0, #0x40
	ldreq   r0, [pc, #0x14] @ [0x20c0b04] (=VRAM_G)
	streq   r0, [r1, #0x4]
	ldmfd   sp!, {r3,pc}

branch_20c0af4: @ 20c0af4 :arm
	ldr     r0, [pc, #0xc] @ [0x20c0b08] (=VRAM_F)
	str     r0, [r1, #0x4]
	ldmfd   sp!, {r3,pc}
@ 0x20c0b00

.word RAM_21ccbbc @ 0x20c0b00
.word VRAM_G @ 0x20c0b04
.word VRAM_F @ 0x20c0b08



.arm
GX_LoadOBJExtPltt: @ 20c0b0c :arm
	stmfd   sp!, {r4-r6,lr}
	sub     sp, sp, #0x8
	ldr     r3, [pc, #0x54] @ [0x20c0b70] (=Unknown_2101148)
	ldr     lr, [pc, #0x54] @ [0x20c0b74] (=RAM_21ccbbc)
	ldr     r4, [r3]
	mvn     r12, #0x0
	mov     r6, r0
	mov     r5, r1
	mov     r3, r2
	cmp     r4, r12
	ldr     lr, [lr, #0x4]
	beq     branch_20c0b60
	mov     r12, #0x0
	str     r12, [sp]
	mov     r0, r4
	mov     r1, r6
	add     r2, lr, r5
	str     r12, [sp, #0x4]
	bl      MI_DmaCopy32Async
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r6,pc}

branch_20c0b60: @ 20c0b60 :arm
	add     r1, lr, r5
	bl      MI_CpuCopy32
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c0b70

.word Unknown_2101148 @ 0x20c0b70
.word RAM_21ccbbc @ 0x20c0b74



.arm
GX_EndLoadOBJExtPltt: @ 20c0b78 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x30] @ [0x20c0bb4] (=Unknown_2101148)
	mvn     r1, #0x0
	ldr     r0, [r0]
	cmp     r0, r1
	beq     branch_20c0b94
	bl      MI_WaitDma
branch_20c0b94: @ 20c0b94 :arm
	ldr     r0, [pc, #0x1c] @ [0x20c0bb8] (=RAM_21ccbbc)
	ldr     r0, [r0, #0x8]
	bl      GX_SetBankForOBJExtPltt
	ldr     r0, [pc, #0x10] @ [0x20c0bb8] (=RAM_21ccbbc)
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	str     r1, [r0, #0x4]
	ldmfd   sp!, {r3,pc}
@ 0x20c0bb4

.word Unknown_2101148 @ 0x20c0bb4
.word RAM_21ccbbc @ 0x20c0bb8




arm_func_start GXS_BeginLoadBGExtPltt
GXS_BeginLoadBGExtPltt: @ 20c0bbc :arm
	stmfd   sp!, {r3,lr}
	bl      GX_ResetBankForSubBGExtPltt
	ldr     r1, [pc, #0x4] @ [0x20c0bd0] (=RAM_21ccbbc)
	str     r0, [r1]
	ldmfd   sp!, {r3,pc}
@ 0x20c0bd0

.word RAM_21ccbbc @ 0x20c0bd0
arm_func_end GXS_BeginLoadBGExtPltt



arm_func_start GXS_LoadBGExtPltt
GXS_LoadBGExtPltt: @ 20c0bd4 :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x8
	ldr     r3, [pc, #0x50] @ [0x20c0c34] (=Unknown_2101148)
	mvn     r12, #0x0
	ldr     lr, [r3]
	mov     r4, r0
	mov     r3, r2
	cmp     lr, r12
	beq     branch_20c0c20
	add     r2, r1, #0x98000
	mov     r12, #0x0
	str     r12, [sp]
	mov     r0, lr
	mov     r1, r4
	add     r2, r2, #0x6800000
	str     r12, [sp, #0x4]
	bl      MI_DmaCopy32Async
	add     sp, sp, #0x8
	ldmfd   sp!, {r4,pc}

branch_20c0c20: @ 20c0c20 :arm
	add     r1, r1, #0x98000
	add     r1, r1, #0x6800000
	bl      MI_CpuCopy32
	add     sp, sp, #0x8
	ldmfd   sp!, {r4,pc}
@ 0x20c0c34

.word Unknown_2101148 @ 0x20c0c34
arm_func_end GXS_LoadBGExtPltt



arm_func_start GXS_EndLoadBGExtPltt
GXS_EndLoadBGExtPltt: @ 20c0c38 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x2c] @ [0x20c0c70] (=Unknown_2101148)
	mvn     r1, #0x0
	ldr     r0, [r0]
	cmp     r0, r1
	beq     branch_20c0c54
	bl      MI_WaitDma
branch_20c0c54: @ 20c0c54 :arm
	ldr     r0, [pc, #0x18] @ [0x20c0c74] (=RAM_21ccbbc)
	ldr     r0, [r0]
	bl      GX_SetBankForSubBGExtPltt
	ldr     r0, [pc, #0xc] @ [0x20c0c74] (=RAM_21ccbbc)
	mov     r1, #0x0
	str     r1, [r0]
	ldmfd   sp!, {r3,pc}
@ 0x20c0c70

.word Unknown_2101148 @ 0x20c0c70
.word RAM_21ccbbc @ 0x20c0c74
arm_func_end GXS_EndLoadBGExtPltt



.arm
GXS_BeginLoadOBJExtPltt: @ 20c0c78 :arm
	stmfd   sp!, {r3,lr}
	bl      GX_ResetBankForSubOBJExtPltt
	ldr     r1, [pc, #0x4] @ [0x20c0c8c] (=RAM_21ccbbc)
	str     r0, [r1, #0x18]
	ldmfd   sp!, {r3,pc}
@ 0x20c0c8c

.word RAM_21ccbbc @ 0x20c0c8c



.arm
GXS_LoadOBJExtPltt: @ 20c0c90 :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x8
	ldr     r3, [pc, #0x50] @ [0x20c0cf0] (=Unknown_2101148)
	mvn     r12, #0x0
	ldr     lr, [r3]
	mov     r4, r0
	mov     r3, r2
	cmp     lr, r12
	beq     branch_20c0cdc
	add     r2, r1, #0x8a0000
	mov     r12, #0x0
	str     r12, [sp]
	mov     r0, lr
	mov     r1, r4
	add     r2, r2, #0x6000000
	str     r12, [sp, #0x4]
	bl      MI_DmaCopy32Async
	add     sp, sp, #0x8
	ldmfd   sp!, {r4,pc}

branch_20c0cdc: @ 20c0cdc :arm
	add     r1, r1, #0x8a0000
	add     r1, r1, #0x6000000
	bl      MI_CpuCopy32
	add     sp, sp, #0x8
	ldmfd   sp!, {r4,pc}
@ 0x20c0cf0

.word Unknown_2101148 @ 0x20c0cf0



.arm
GXS_EndLoadOBJExtPltt: @ 20c0cf4 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x2c] @ [0x20c0d2c] (=Unknown_2101148)
	mvn     r1, #0x0
	ldr     r0, [r0]
	cmp     r0, r1
	beq     branch_20c0d10
	bl      MI_WaitDma
branch_20c0d10: @ 20c0d10 :arm
	ldr     r0, [pc, #0x18] @ [0x20c0d30] (=RAM_21ccbbc)
	ldr     r0, [r0, #0x18]
	bl      GX_SetBankForSubOBJExtPltt
	ldr     r0, [pc, #0xc] @ [0x20c0d30] (=RAM_21ccbbc)
	mov     r1, #0x0
	str     r1, [r0, #0x18]
	ldmfd   sp!, {r3,pc}
@ 0x20c0d2c

.word Unknown_2101148 @ 0x20c0d2c
.word RAM_21ccbbc @ 0x20c0d30



arm_func_start GX_BeginLoadTex
GX_BeginLoadTex: @ 20c0d34 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_20bed0c
	mov     r1, #0x6
	mul     lr, r0, r1
	ldr     r2, [pc, #0x34] @ [0x20c0d80] (=Unknown_20fd950)
	ldr     r1, [pc, #0x34] @ [0x20c0d84] (=Unknown_20fd952)
	ldrh    r12, [r2, lr]
	ldr     r2, [pc, #0x30] @ [0x20c0d88] (=Unknown_20fd954)
	ldrh    r3, [r1, lr]
	ldr     r1, [pc, #0x2c] @ [0x20c0d8c] (=RAM_21ccbd8)
	ldrh    r2, [r2, lr]
	str     r0, [r1, #0x14]
	mov     r0, r12, lsl #12
	str     r0, [r1, #0x4]
	mov     r0, r3, lsl #12
	str     r0, [r1, #0x18]
	mov     r0, r2, lsl #12
	str     r0, [r1, #0x1c]
	ldmfd   sp!, {r3,pc}
@ 0x20c0d80

.word Unknown_20fd950 @ 0x20c0d80
.word Unknown_20fd952 @ 0x20c0d84
.word Unknown_20fd954 @ 0x20c0d88
.word RAM_21ccbd8 @ 0x20c0d8c
arm_func_end GX_BeginLoadTex



arm_func_start GX_LoadTex
GX_LoadTex: @ 20c0d90 :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #0x8
	ldr     r3, [pc, #0x128] @ [0x20c0ec8] (=RAM_21ccbd8)
	mov     r7, r0
	ldr     r4, [r3, #0x18]
	mov     r12, r1
	cmp     r4, #0x0
	ldreq   r0, [r3, #0x4]
	mov     r6, r2
	addeq   r2, r0, r12
	beq     branch_20c0e7c
	ldr     r2, [r3, #0x1c]
	add     r0, r12, r6
	cmp     r0, r2
	ldrcc   r0, [r3, #0x4]
	addcc   r2, r0, r12
	bcc     branch_20c0e7c
	cmp     r12, r2
	addcs   r0, r4, r12
	subcs   r2, r0, r2
	bcs     branch_20c0e7c
	ldr     r0, [pc, #0xe0] @ [0x20c0ecc] (=Unknown_2101148)
	mvn     r1, #0x0
	ldr     r0, [r0]
	sub     r5, r2, r12
	cmp     r0, r1
	ldr     lr, [r3, #0x4]
	beq     branch_20c0e1c
	cmp     r5, #0x30
	bls     branch_20c0e1c
	mov     r1, r7
	mov     r3, r5
	add     r2, lr, r12
	bl      MI_DmaCopy32
	b       branch_20c0e2c

branch_20c0e1c: @ 20c0e1c :arm
	mov     r0, r7
	mov     r2, r5
	add     r1, lr, r12
	bl      MI_CpuCopy32
branch_20c0e2c: @ 20c0e2c :arm
	ldr     r0, [pc, #0x98] @ [0x20c0ecc] (=Unknown_2101148)
	mvn     r1, #0x0
	ldr     r0, [r0]
	cmp     r0, r1
	beq     branch_20c0e64
	mov     r12, #0x0
	str     r12, [sp]
	mov     r2, r4
	add     r1, r7, r5
	sub     r3, r6, r5
	str     r12, [sp, #0x4]
	bl      MI_DmaCopy32Async
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r7,pc}

branch_20c0e64: @ 20c0e64 :arm
	mov     r1, r4
	add     r0, r7, r5
	sub     r2, r6, r5
	bl      MI_CpuCopy32
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r7,pc}

branch_20c0e7c: @ 20c0e7c :arm
	ldr     r0, [pc, #0x48] @ [0x20c0ecc] (=Unknown_2101148)
	mvn     r1, #0x0
	ldr     r0, [r0]
	cmp     r0, r1
	beq     branch_20c0eb0
	mov     r4, #0x0
	str     r4, [sp]
	mov     r1, r7
	mov     r3, r6
	str     r4, [sp, #0x4]
	bl      MI_DmaCopy32Async
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r7,pc}

branch_20c0eb0: @ 20c0eb0 :arm
	mov     r1, r2
	mov     r0, r7
	mov     r2, r6
	bl      MI_CpuCopy32
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c0ec8

.word RAM_21ccbd8 @ 0x20c0ec8
.word Unknown_2101148 @ 0x20c0ecc
arm_func_end GX_LoadTex



arm_func_start GX_EndLoadTex
GX_EndLoadTex: @ 20c0ed0 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x38] @ [0x20c0f14] (=Unknown_2101148)
	mvn     r1, #0x0
	ldr     r0, [r0]
	cmp     r0, r1
	beq     branch_20c0eec
	bl      MI_WaitDma
branch_20c0eec: @ 20c0eec :arm
	ldr     r0, [pc, #0x24] @ [0x20c0f18] (=RAM_21ccbd8)
	ldr     r0, [r0, #0x14]
	bl      GX_SetBankForTex
	ldr     r0, [pc, #0x18] @ [0x20c0f18] (=RAM_21ccbd8)
	mov     r1, #0x0
	str     r1, [r0, #0x1c]
	str     r1, [r0, #0x18]
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x14]
	ldmfd   sp!, {r3,pc}
@ 0x20c0f14

.word Unknown_2101148 @ 0x20c0f14
.word RAM_21ccbd8 @ 0x20c0f18
arm_func_end GX_EndLoadTex



arm_func_start GX_BeginLoadTexPltt
GX_BeginLoadTexPltt: @ 20c0f1c :arm
	stmfd   sp!, {r3,lr}
	bl      Function_20bed20
	mov     r3, r0, asr #4
	ldr     r1, [pc, #0x18] @ [0x20c0f48] (=RAM_21ccbd8)
	ldr     r2, [pc, #0x18] @ [0x20c0f4c] (=Unknown_20fd940)
	mov     r3, r3, lsl #1
	ldrh    r2, [r2, r3]
	str     r0, [r1, #0xc]
	mov     r0, r2, lsl #12
	str     r0, [r1, #0x8]
	ldmfd   sp!, {r3,pc}
@ 0x20c0f48

.word RAM_21ccbd8 @ 0x20c0f48
.word Unknown_20fd940 @ 0x20c0f4c
arm_func_end GX_BeginLoadTexPltt



arm_func_start GX_LoadTexPltt
GX_LoadTexPltt: @ 20c0f50 :arm
	stmfd   sp!, {r4-r6,lr}
	sub     sp, sp, #0x8
	ldr     r3, [pc, #0x54] @ [0x20c0fb4] (=Unknown_2101148)
	ldr     lr, [pc, #0x54] @ [0x20c0fb8] (=RAM_21ccbd8)
	ldr     r4, [r3]
	mvn     r12, #0x0
	mov     r6, r0
	mov     r5, r1
	mov     r3, r2
	cmp     r4, r12
	ldr     lr, [lr, #0x8]
	beq     branch_20c0fa4
	mov     r12, #0x0
	str     r12, [sp]
	mov     r0, r4
	mov     r1, r6
	add     r2, lr, r5
	str     r12, [sp, #0x4]
	bl      MI_DmaCopy32Async
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r6,pc}

branch_20c0fa4: @ 20c0fa4 :arm
	add     r1, lr, r5
	bl      MI_CpuCopy32
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c0fb4

.word Unknown_2101148 @ 0x20c0fb4
.word RAM_21ccbd8 @ 0x20c0fb8
arm_func_end GX_LoadTexPltt



arm_func_start GX_EndLoadTexPltt
GX_EndLoadTexPltt: @ 20c0fbc :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x30] @ [0x20c0ff8] (=Unknown_2101148)
	mvn     r1, #0x0
	ldr     r0, [r0]
	cmp     r0, r1
	beq     branch_20c0fd8
	bl      MI_WaitDma
branch_20c0fd8: @ 20c0fd8 :arm
	ldr     r0, [pc, #0x1c] @ [0x20c0ffc] (=RAM_21ccbd8)
	ldr     r0, [r0, #0xc]
	bl      GX_SetBankForTexPltt
	ldr     r0, [pc, #0x10] @ [0x20c0ffc] (=RAM_21ccbd8)
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	str     r1, [r0, #0x8]
	ldmfd   sp!, {r3,pc}
@ 0x20c0ff8

.word Unknown_2101148 @ 0x20c0ff8
.word RAM_21ccbd8 @ 0x20c0ffc
arm_func_end GX_EndLoadTexPltt



.arm
GX_BeginLoadClearImage: @ 20c1000 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_20bed34
	ldr     r1, [pc, #0x70] @ [0x20c1080] (=RAM_21ccbd8)
	cmp     r0, #0xc
	str     r0, [r1]
	addls   pc, pc, r0, lsl #2
	ldmfd   sp!, {r3,pc}
	ldmfd   sp!, {r3,pc}
	b       branch_20c1068
	b       branch_20c1050
	b       branch_20c1050
	b       branch_20c1074
	ldmfd   sp!, {r3,pc}
	ldmfd   sp!, {r3,pc}
	ldmfd   sp!, {r3,pc}
	b       branch_20c105c
	ldmfd   sp!, {r3,pc}
	ldmfd   sp!, {r3,pc}
	ldmfd   sp!, {r3,pc}
	b       branch_20c105c

branch_20c1050: @ 20c1050 :arm
	mov     r0, #0x6800000
	str     r0, [r1, #0x10]
	ldmfd   sp!, {r3,pc}

branch_20c105c: @ 20c105c :arm
	ldr     r0, [pc, #0x20] @ [0x20c1084] (=VRAM_C)
	str     r0, [r1, #0x10]
	ldmfd   sp!, {r3,pc}

branch_20c1068: @ 20c1068 :arm
	ldr     r0, [pc, #0x18] @ [0x20c1088] (=0x67e0000)
	str     r0, [r1, #0x10]
	ldmfd   sp!, {r3,pc}

branch_20c1074: @ 20c1074 :arm
	ldr     r0, [pc, #0x10] @ [0x20c108c] (=VRAM_B)
	str     r0, [r1, #0x10]
	ldmfd   sp!, {r3,pc}
@ 0x20c1080

.word RAM_21ccbd8 @ 0x20c1080
.word VRAM_C @ 0x20c1084
.word 0x67e0000 @ 0x20c1088
.word VRAM_B @ 0x20c108c



.arm
GX_LoadClearImageColor: @ 20c1090 :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x8
	ldr     r2, [pc, #0x50] @ [0x20c10f0] (=Unknown_2101148)
	ldr     r12, [pc, #0x50] @ [0x20c10f4] (=RAM_21ccbd8)
	ldr     lr, [r2]
	mvn     r2, #0x0
	mov     r4, r0
	mov     r3, r1
	cmp     lr, r2
	ldr     r2, [r12, #0x10]
	beq     branch_20c10dc
	mov     r12, #0x0
	str     r12, [sp]
	mov     r0, lr
	mov     r1, r4
	str     r12, [sp, #0x4]
	bl      MI_DmaCopy32Async
	add     sp, sp, #0x8
	ldmfd   sp!, {r4,pc}

branch_20c10dc: @ 20c10dc :arm
	mov     r1, r2
	mov     r2, r3
	bl      MI_CpuCopy32
	add     sp, sp, #0x8
	ldmfd   sp!, {r4,pc}
@ 0x20c10f0

.word Unknown_2101148 @ 0x20c10f0
.word RAM_21ccbd8 @ 0x20c10f4



.arm
GX_LoadClearImageDepth: @ 20c10f8 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x8
	ldr     r2, [pc, #0x54] @ [0x20c115c] (=Unknown_2101148)
	ldr     r12, [pc, #0x54] @ [0x20c1160] (=RAM_21ccbd8)
	ldr     lr, [r2]
	mvn     r2, #0x0
	mov     r5, r0
	mov     r3, r1
	cmp     lr, r2
	ldr     r4, [r12, #0x10]
	beq     branch_20c1148
	mov     r12, #0x0
	str     r12, [sp]
	mov     r0, lr
	mov     r1, r5
	add     r2, r4, #0x20000
	str     r12, [sp, #0x4]
	bl      MI_DmaCopy32Async
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r5,pc}

branch_20c1148: @ 20c1148 :arm
	mov     r2, r3
	add     r1, r4, #0x20000
	bl      MI_CpuCopy32
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c115c

.word Unknown_2101148 @ 0x20c115c
.word RAM_21ccbd8 @ 0x20c1160



.arm
Function_20c1164: @ 20c1164 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x30] @ [0x20c11a0] (=Unknown_2101148)
	mvn     r1, #0x0
	ldr     r0, [r0]
	cmp     r0, r1
	beq     branch_20c1180
	bl      MI_WaitDma
branch_20c1180: @ 20c1180 :arm
	ldr     r0, [pc, #0x1c] @ [0x20c11a4] (=RAM_21ccbd8)
	ldr     r0, [r0]
	bl      GX_SetBankForClearImage
	ldr     r0, [pc, #0x10] @ [0x20c11a4] (=RAM_21ccbd8)
	mov     r1, #0x0
	str     r1, [r0]
	str     r1, [r0, #0x10]
	ldmfd   sp!, {r3,pc}
@ 0x20c11a0

.word Unknown_2101148 @ 0x20c11a0
.word RAM_21ccbd8 @ 0x20c11a4



.arm
.globl Function_20c11a8
Function_20c11a8: @ 20c11a8 :arm
	str     r2, [r0, #0xc]
	str     r1, [r0, #0x8]
	str     r1, [r0]
	add     r1, r1, #0x4
	str     r1, [r0, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x10]
	bx      lr
@ 0x20c11c8


.arm
.globl Function_20c11c8
Function_20c11c8: @ 20c11c8 :arm
	ldr     r3, [r0]
	ldr     r2, [r0, #0x8]
	cmp     r2, r3
	moveq   r0, #0x0
	bxeq    lr
	and     r1, r3, #0x3
	cmp     r1, #0x3
	addls   pc, pc, r1, lsl #2
	b       branch_20c123c
	b       branch_20c11fc
	b       branch_20c1204
	b       branch_20c1214
	b       branch_20c1228

branch_20c11fc: @ 20c11fc :arm
	sub     r0, r3, r2
	bx      lr

branch_20c1204: @ 20c1204 :arm
	add     r1, r3, #0x1
	str     r1, [r0]
	mov     r1, #0x0
	strb    r1, [r3]
branch_20c1214: @ 20c1214 :arm
	ldr     r3, [r0]
	mov     r1, #0x0
	add     r2, r3, #0x1
	str     r2, [r0]
	strb    r1, [r3]
branch_20c1228: @ 20c1228 :arm
	ldr     r3, [r0]
	mov     r1, #0x0
	add     r2, r3, #0x1
	str     r2, [r0]
	strb    r1, [r3]
branch_20c123c: @ 20c123c :arm
	ldr     r1, [r0, #0x10]
	cmp     r1, #0x0
	beq     branch_20c1260
	ldr     r3, [r0, #0x4]
	mov     r1, #0x0
	add     r2, r3, #0x4
	str     r2, [r0, #0x4]
	str     r1, [r3]
	str     r1, [r0, #0x10]
branch_20c1260: @ 20c1260 :arm
	ldr     r1, [r0, #0x4]
	str     r1, [r0]
	ldr     r0, [r0, #0x8]
	sub     r0, r1, r0
	bx      lr
@ 0x20c1274


.arm
GX_SendFifo48B: @ 20c1274 :arm
	ldmia   r0!, {r2,r3,r12}
	stmia   r1, {r2,r3,r12}
	ldmia   r0!, {r2,r3,r12}
	stmia   r1, {r2,r3,r12}
	ldmia   r0!, {r2,r3,r12}
	stmia   r1, {r2,r3,r12}
	ldmia   r0!, {r2,r3,r12}
	stmia   r1, {r2,r3,r12}
	bx      lr
@ 0x20c1298


.arm
GX_SendFifo64B: @ 20c1298 :arm
	stmfd   sp!, {r4-r8}

	ldmia   r0!, {r2-r8,r12}
	stmia   r1, {r2-r8,r12}
	ldmia   r0!, {r2-r8,r12}
	stmia   r1, {r2-r8,r12}

	ldmfd   sp!, {r4-r8}
	bx      lr
@ 0x20c12b4

