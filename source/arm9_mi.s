

.arm
MI_SetWramBank: @ 20c42c4 :arm
	ldr     r1, =WRAM_CR
	strb    r0, [r1]
	bx      lr
@ 0x20c42d0

.pool



.arm
MI_DmaFill32: @ 20c42d4 :arm
	stmfd   sp!, {r4-r8,lr}
	movs    r4, r3
	mov     r8, r0
	mov     r7, r1
	mov     r6, r2
	ldmeqfd sp!, {r4-r8,pc}
	add     r0, r8, r8, lsl #1
	add     r0, r0, #0x2
	mov     r0, r0, lsl #2
	add     r0, r0, #0xb0
	add     r5, r0, #0x4000000
branch_20c4300: @ 20c4300 :arm
	ldr     r0, [r5]
	tst     r0, #0x80000000
	bne     branch_20c4300
	bl      OS_DisableInterrupts
	mov     r2, r8, lsl #2
	add     r1, r2, #0xe0
	mov     r3, r4, lsr #2
	mov     r4, r0
	add     r12, r2, #0x4000000
	mov     r0, r8
	mov     r2, r7
	add     r1, r1, #0x4000000
	orr     r3, r3, #0x85000000
	str     r6, [r12, #0xe0]
	bl      MIi_DmaSetParams_wait_noInt
	mov     r0, r4
	bl      OS_RestoreInterrupts
branch_20c4344: @ 20c4344 :arm
	ldr     r0, [r5]
	tst     r0, #0x80000000
	bne     branch_20c4344
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c4354


MI_DmaCopy32: @ 20c4354 :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r5, r3
	mov     r6, r2
	mov     r2, r5
	mov     r3, #0x0
	mov     r8, r0
	mov     r7, r1
	bl      MIi_CheckDma0SourceAddress
	cmp     r5, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	add     r0, r8, r8, lsl #1
	add     r0, r0, #0x2
	mov     r0, r0, lsl #2
	add     r0, r0, #0xb0
	add     r4, r0, #0x4000000
branch_20c4390: @ 20c4390 :arm
	ldr     r0, [r4]
	tst     r0, #0x80000000
	bne     branch_20c4390
	mov     r3, r5, lsr #2
	mov     r0, r8
	mov     r1, r7
	mov     r2, r6
	orr     r3, r3, #0x84000000
	bl      PreITCM_MIi_DmaSetParams_wait
branch_20c43b4: @ 20c43b4 :arm
	ldr     r0, [r4]
	tst     r0, #0x80000000
	bne     branch_20c43b4
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c43c4


.globl MI_DmaCopy16
MI_DmaCopy16: @ 20c43c4 :arm
	stmfd   sp!, {r4-r8,lr}
	movs    r5, r3
	mov     r8, r0
	mov     r7, r1
	mov     r6, r2
	ldmeqfd sp!, {r4-r8,pc}
	mov     r2, r5
	mov     r3, #0x0
	bl      MIi_CheckDma0SourceAddress
	add     r0, r8, r8, lsl #1
	add     r0, r0, #0x2
	mov     r0, r0, lsl #2
	add     r0, r0, #0xb0
	add     r4, r0, #0x4000000
branch_20c43fc: @ 20c43fc :arm
	ldr     r0, [r4]
	tst     r0, #0x80000000
	bne     branch_20c43fc
	mov     r3, r5, lsr #1
	mov     r0, r8
	mov     r1, r7
	mov     r2, r6
	orr     r3, r3, #0x80000000
	bl      PreITCM_MIi_DmaSetParams_wait
branch_20c4420: @ 20c4420 :arm
	ldr     r0, [r4]
	tst     r0, #0x80000000
	bne     branch_20c4420
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c4430


.arm
MI_DmaFill32Async: @ 20c4430 :arm
	stmfd   sp!, {r4-r8,lr}
	movs    r4, r3
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	ldr     r8, [sp, #0x18]
	bne     branch_20c4460
	cmp     r8, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	ldr     r0, [sp, #0x1c]
	blx     r8
	ldmfd   sp!, {r4-r8,pc}

branch_20c4460: @ 20c4460 :arm
	bl      MI_WaitDma
	cmp     r8, #0x0
	beq     branch_20c44b8
	ldr     r2, [sp, #0x1c]
	mov     r0, r7
	mov     r1, r8
	bl      OSi_EnterDmaCallback
	bl      OS_DisableInterrupts
	mov     r3, r4, lsr #2
	mov     r2, r7, lsl #2
	add     r1, r2, #0xe0
	add     r2, r2, #1, 6 @ #0x4000000
	str     r5, [r2, #0xe0]
	mov     r4, r0
	mov     r0, r7
	mov     r2, r6
	add     r1, r1, #1, 6 @ #0x4000000
	orr     r3, r3, #197, 8 @ #0xc5000000
	bl      MIi_DmaSetParams_noInt
	mov     r0, r4
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r4-r8,pc}

branch_20c44b8: @ 20c44b8 :arm
	bl      OS_DisableInterrupts
	mov     r2, r7, lsl #2
	add     r1, r2, #0xe0
	mov     r3, r4, lsr #2
	mov     r4, r0
	add     r12, r2, #1, 6 @ #0x4000000
	mov     r0, r7
	mov     r2, r6
	add     r1, r1, #1, 6 @ #0x4000000
	orr     r3, r3, #133, 8 @ #0x85000000
	str     r5, [r12, #0xe0]
	bl      MIi_DmaSetParams_noInt
	mov     r0, r4
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c44f4


.arm
MI_DmaCopy32Async: @ 20c44f4 :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r5, r3
	mov     r6, r2
	mov     r2, r5
	mov     r3, #0x0
	mov     r8, r0
	mov     r7, r1
	ldr     r4, [sp, #0x18]
	bl      MIi_CheckDma0SourceAddress
	cmp     r5, #0x0
	bne     branch_20c4534
	cmp     r4, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	ldr     r0, [sp, #0x1c]
	blx     r4
	ldmfd   sp!, {r4-r8,pc}

branch_20c4534: @ 20c4534 :arm
	mov     r0, r8
	bl      MI_WaitDma
	cmp     r4, #0x0
	beq     branch_20c4570
	ldr     r2, [sp, #0x1c]
	mov     r0, r8
	mov     r1, r4
	bl      OSi_EnterDmaCallback
	mov     r3, r5, lsr #2
	mov     r0, r8
	mov     r1, r7
	mov     r2, r6
	orr     r3, r3, #49, 6 @ #0xc4000000
	bl      PreITCM_MIi_DmaSetParams
	ldmfd   sp!, {r4-r8,pc}

branch_20c4570: @ 20c4570 :arm
	mov     r3, r5, lsr #2
	mov     r0, r8
	mov     r1, r7
	mov     r2, r6
	orr     r3, r3, #33, 6 @ #0x84000000
	bl      PreITCM_MIi_DmaSetParams
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c458c


.arm
MI_WaitDma: @ 20c458c :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      OS_DisableInterrupts

	add     r1, r4, r4, lsl #1
	add     r1, r1, #0x2
	mov     r1, r1, lsl #2
	add     r1, r1, #0xb0
	add     r2, r1, #0x4000000
branch_20c45ac: @ 20c45ac :arm
	ldr     r1, [r2]
	tst     r1, #0x80000000
	bne     branch_20c45ac
	cmp     r4, #0x0
	bne     branch_20c45e8
	mov     r1, #0xc
	mul     r2, r4, r1
	add     r1, r2, #0xb0
	add     r2, r2, #0x4000000
	mov     r3, #0x0
	str     r3, [r2, #0xb0]
	add     r2, r1, #0x4000000
	ldr     r1, =0x81400001
	str     r3, [r2, #0x4]
	str     r1, [r2, #0x8]
branch_20c45e8: @ 20c45e8 :arm
	bl      OS_RestoreInterrupts

	ldmfd   sp!, {r4,pc}
@ 0x20c45f0

.pool




.arm
MI_StopDma: @ 20c45f4 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      OS_DisableInterrupts
	mov     r1, #0x6
	mul     r1, r4, r1
	add     r1, r1, #0x5
	mov     r1, r1, lsl #1
	add     r1, r1, #0x4000000
	ldrh    r2, [r1, #0xb0]
	cmp     r4, #0x0
	bic     r2, r2, #0x3a00
	strh    r2, [r1, #0xb0]
	ldrh    r2, [r1, #0xb0]
	bic     r2, r2, #0x8000
	strh    r2, [r1, #0xb0]
	ldrh    r2, [r1, #0xb0]
	ldrh    r1, [r1, #0xb0]
	bne     branch_20c4664
	mov     r1, #0xc
	mul     r2, r4, r1
	add     r1, r2, #0xb0
	add     r2, r2, #0x4000000
	mov     r3, #0x0
	str     r3, [r2, #0xb0]
	add     r2, r1, #0x4000000
	ldr     r1, =0x81400001
	str     r3, [r2, #0x4]
	str     r1, [r2, #0x8]
branch_20c4664: @ 20c4664 :arm
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r4,pc}
@ 0x20c466c

.pool




.arm
MIi_CheckAnotherAutoDMA: @ 20c4670 :arm
	stmfd   sp!, {r3-r7,lr}
	ldr     r5, =DMA0_CR
	mov     r7, r0
	mov     r6, r1
	mov     r4, #0x0
branch_20c4684: @ 20c4684 :arm
	cmp     r4, r7
	beq     branch_20c46dc
	ldr     r0, [r5]
	tst     r0, #0x80000000
	andne   r0, r0, #0x38000000
	cmpne   r0, r6
	beq     branch_20c46dc
	cmp     r0, #0x8000000
	cmpeq   r6, #0x10000000
	beq     branch_20c46dc
	cmp     r0, #0x10000000
	cmpeq   r6, #0x8000000
	beq     branch_20c46dc
	cmp     r0, #0x18000000
	cmpne   r0, #0x20000000
	cmpne   r0, #0x28000000
	cmpne   r0, #0x30000000
	cmpne   r0, #0x38000000
	cmpne   r0, #0x8000000
	cmpne   r0, #0x10000000
	bne     branch_20c46dc
	bl      OS_Panic
branch_20c46dc: @ 20c46dc :arm
	add     r4, r4, #0x1
	cmp     r4, #0x3
	add     r5, r5, #0xc
	blt     branch_20c4684
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c46f0

.pool





arm_func_start MIi_CheckDma0SourceAddress
MIi_CheckDma0SourceAddress: @ 20c46f4 :arm
	stmfd   sp!, {r3,lr}
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}
	cmp     r3, #0x0
	and     r12, r1, #255, 8 @ #0xff000000
	beq     branch_20c4718
	cmp     r3, #2, 10 @ #0x800000
	subeq   r1, r1, r2
	b       branch_20c471c

branch_20c4718: @ 20c4718 :arm
	add     r1, r1, r2
branch_20c471c: @ 20c471c :arm
	cmp     r12, #1, 6 @ #0x4000000
	and     r0, r1, #255, 8 @ #0xff000000
	beq     branch_20c4740
	cmp     r12, #2, 6 @ #0x8000000
	bcs     branch_20c4740
	cmp     r0, #1, 6 @ #0x4000000
	beq     branch_20c4740
	cmp     r0, #2, 6 @ #0x8000000
	ldmccfd sp!, {r3,pc}
branch_20c4740: @ 20c4740 :arm
	bl      OS_Panic
	ldmfd   sp!, {r3,pc}
arm_func_end MIi_CheckDma0SourceAddress


.arm
MI_HBlankDmaCopy32: @ 20c4748 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r6, r1
	mov     r7, r0
	mov     r4, r3
	mov     r1, #1, 4 @ #0x10000000
	mov     r5, r2
	bl      MIi_CheckAnotherAutoDMA
	mov     r0, r7
	mov     r1, r6
	mov     r2, r4
	mov     r3, #0x0
	bl      MIi_CheckDma0SourceAddress
	cmp     r4, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	mov     r0, r7
	bl      MI_WaitDma
	ldr     r3, [pc, #0x14] @ [0x20c47a4] (=0x96600000)
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	orr     r3, r3, r4, lsr #2
	bl      PreITCM_MIi_DmaSetParams
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c47a4

.word 0x96600000 @ 0x20c47a4



.arm
MI_HBlankDmaCopy16: @ 20c47a8 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r6, r1
	mov     r7, r0
	mov     r4, r3
	mov     r1, #1, 4 @ #0x10000000
	mov     r5, r2
	bl      MIi_CheckAnotherAutoDMA
	mov     r0, r7
	mov     r1, r6
	mov     r2, r4
	mov     r3, #0x0
	bl      MIi_CheckDma0SourceAddress
	cmp     r4, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	mov     r0, r7
	bl      MI_WaitDma
	ldr     r3, [pc, #0x14] @ [0x20c4804] (=0x92600000)
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	orr     r3, r3, r4, lsr #1
	bl      PreITCM_MIi_DmaSetParams
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c4804

.word 0x92600000 @ 0x20c4804



.arm
MI_SendGXCommandAsync: @ 20c4808 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	cmp     r2, #0x0
	bne     branch_20c482c
	cmp     r3, #0x0
	ldmeqfd sp!, {r4,pc}
	ldr     r0, [sp, #0x8]
	blx     r3
	ldmfd   sp!, {r4,pc}

branch_20c482c: @ 20c482c :arm
	ldr     r0, =RAM_21cd000
branch_20c4830: @ 20c4830 :arm
	ldr     r12, [r0]
	cmp     r12, #0x0
	bne     branch_20c4830
	ldr     r12, =GFX_STATUS
branch_20c4840: @ 20c4840 :arm
	ldr     r0, [r12]
	and     r0, r0, #0x7000000
	mov     r0, r0, lsr #24
	tst     r0, #0x2
	beq     branch_20c4840
	ldr     r12, =RAM_21cd000
	mov     r0, #0x1
	str     r0, [r12]
	str     r4, [r12, #0x4]
	str     r1, [r12, #0x8]
	str     r2, [r12, #0xc]
	str     r3, [r12, #0x10]
	ldr     lr, [sp, #0x8]
	mov     r0, r4
	mov     r3, #0x0
	str     lr, [r12, #0x14]
	bl      MIi_CheckDma0SourceAddress

	mov     r0, r4
	bl      MI_WaitDma
	bl      OS_DisableInterrupts

	ldr     r1, =GFX_STATUS
	mov     r4, r0
	ldr     r0, [r1]
	ldr     r1, =RAM_21cd000
	and     r0, r0, #0xc0000000
	mov     r2, r0, lsr #30
	mov     r0, #IRQ_GEOMETRY_FIFO
	str     r2, [r1, #0x18]
	bl      OS_GetIrqFunction

	ldr     r1, =RAM_21cd000
	ldr     r2, =GFX_STATUS
	str     r0, [r1, #0x1c]
	ldr     r0, [r2]
	ldr     r1, =MIi_FIFOCallback
	bic     r0, r0, #0xc0000000
	orr     r3, r0, #0x40000000
	mov     r0, #IRQ_GEOMETRY_FIFO
	str     r3, [r2]
	bl      OS_SetIrqFunction

	mov     r0, #IRQ_GEOMETRY_FIFO
	bl      OS_EnableIrqMask
	bl      MIi_FIFOCallback

	mov     r0, r4
	bl      OS_RestoreInterrupts

	ldmfd   sp!, {r4,pc}
@ 0x20c48f4

.align 2
.pool



.arm
MIi_FIFOCallback: @ 20c4900 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r0, [pc, #0x90] @ [0x20c499c] (=RAM_21cd000)
	ldr     r5, [r0, #0xc]
	cmp     r5, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r0, [pc, #0x80] @ [0x20c499c] (=RAM_21cd000)
	cmp     r5, #118, 30 @ #0x1d8
	ldr     r1, [r0, #0xc]
	movcs   r5, #118, 30 @ #0x1d8
	ldr     r4, [r0, #0x8]
	subs    r1, r1, r5
	str     r1, [r0, #0xc]
	add     r1, r4, r5
	str     r1, [r0, #0x8]
	bne     branch_20c4978
	ldr     r0, [r0, #0x4]
	ldr     r1, [pc, #0x58] @ [0x20c49a0] (=MIi_DMACallback)
	mov     r2, #0x0
	bl      OSi_EnterDmaCallback
	ldr     r0, [pc, #0x48] @ [0x20c499c] (=RAM_21cd000)
	mov     r3, #239, 10 @ #0x3bc00000
	rsb     r3, r3, #0x0
	ldr     r0, [r0, #0x4]
	ldr     r2, [pc, #0x40] @ [0x20c49a4] (=GFX_FIFO)
	mov     r1, r4
	orr     r3, r3, r5, lsr #2
	bl      PreITCM_MIi_DmaSetParams
	mov     r0, #2, 12 @ #0x200000
	bl      OS_ResetRequestIrqMask
	ldmfd   sp!, {r3-r5,pc}

branch_20c4978: @ 20c4978 :arm
	ldr     r3, [pc, #0x28] @ [0x20c49a8] (=0x84400000)
	ldr     r0, [r0, #0x4]
	ldr     r2, [pc, #0x1c] @ [0x20c49a4] (=GFX_FIFO)
	mov     r1, r4
	orr     r3, r3, r5, lsr #2
	bl      PreITCM_MIi_DmaSetParams
	mov     r0, #2, 12 @ #0x200000
	bl      OS_ResetRequestIrqMask
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c499c

.word RAM_21cd000 @ 0x20c499c
.word MIi_DMACallback @ 0x20c49a0
.word GFX_FIFO @ 0x20c49a4
.word 0x84400000 @ 0x20c49a8



.arm
MIi_DMACallback: @ 20c49ac :arm
	stmfd   sp!, {r3,lr}

	mov     r0, #IRQ_GEOMETRY_FIFO
	bl      OS_DisableIrqMask

	ldr     r2, =GFX_STATUS
	ldr     r0, =RAM_21cd000
	ldr     r1, [r2]
	ldr     r3, [r0, #0x18]
	bic     r1, r1, #3, 2 @ #0xc0000000
	orr     r1, r1, r3, lsl #30
	str     r1, [r2]

	ldr     r1, [r0, #0x1c]
	mov     r0, #IRQ_GEOMETRY_FIFO
	bl      OS_SetIrqFunction

	ldr     r0, =RAM_21cd000
	mov     r1, #0x0
	str     r1, [r0]
	ldr     r1, [r0, #0x10]
	ldr     r0, [r0, #0x14]
	cmp     r1, #0x0
	ldmeqfd sp!, {r3,pc}

	blx     r1
	ldmfd   sp!, {r3,pc}
@ 0x20c4a04

.pool



.arm
MI_SendGXCommandAsyncFast: @ 20c4a0c :arm
	stmfd   sp!, {r4-r6,lr}
	movs    r4, r2
	mov     r6, r0
	mov     r5, r1
	bne     branch_20c4a34
	cmp     r3, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	ldr     r0, [sp, #0x10]
	blx     r3
	ldmfd   sp!, {r4-r6,pc}

branch_20c4a34: @ 20c4a34 :arm
	ldr     r0, =RAM_21cd000
branch_20c4a38: @ 20c4a38 :arm
	ldr     r1, [r0]
	cmp     r1, #0x0
	bne     branch_20c4a38
	ldr     r2, =RAM_21cd000
	mov     r0, #0x1
	str     r0, [r2]
	str     r6, [r2, #0x4]
	ldr     r12, [sp, #0x10]
	str     r3, [r2, #0x10]
	mov     r0, r6
	mov     r1, #0x38000000
	str     r12, [r2, #0x14]
	bl      MIi_CheckAnotherAutoDMA

	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      MIi_CheckDma0SourceAddress

	mov     r0, r6
	bl      MI_WaitDma

	mov     r0, r6
	ldr     r1, =MIi_DMAFastCallback
	mov     r2, #0x0
	bl      OSi_EnterDmaCallback

	mov     r0, r6
	mov     r1, r5
	ldr     r2, =GFX_FIFO
	mov     r3, #15, 10 @ #0x3c00000
	rsb     r3, r3, #0x0
	orr     r3, r3, r4, lsr #2
	bl      PreITCM_MIi_DmaSetParams
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c4ab8

.pool



.arm
MIi_DMAFastCallback: @ 20c4ac4 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x1c] @ [0x20c4aec] (=RAM_21cd000)
	mov     r1, #0x0
	str     r1, [r0]
	ldr     r1, [r0, #0x10]
	ldr     r0, [r0, #0x14]
	cmp     r1, #0x0
	ldmeqfd sp!, {r3,pc}
	blx     r1
	ldmfd   sp!, {r3,pc}
@ 0x20c4aec

.word RAM_21cd000 @ 0x20c4aec



.arm
.globl MIi_CpuClear16
MIi_CpuClear16: @ 20c4af0 :arm
	mov     r3, #0x0
branch_20c4af4: @ 20c4af4 :arm
	cmp     r3, r2
	blt     branch_20c4b00
	b       branch_20c4b04

branch_20c4b00: @ 20c4b00 :arm
	strh    r0, [r1, r3]
branch_20c4b04: @ 20c4b04 :arm
	blt     branch_20c4b0c
	b       branch_20c4b10

branch_20c4b0c: @ 20c4b0c :arm
	add     r3, r3, #0x2
branch_20c4b10: @ 20c4b10 :arm
	blt     branch_20c4af4
	bx      lr
@ MIi_CpuCopy16


.arm
.globl MIi_CpuCopy16
MIi_CpuCopy16: @ 20c4b18 :arm
	mov     r12, #0x0
branch_20c4b1c: @ 20c4b1c :arm
	cmp     r12, r2
	blt     branch_20c4b28
	b       branch_20c4b2c

branch_20c4b28: @ 20c4b28 :arm
	ldrh    r3, [r0, r12]
branch_20c4b2c: @ 20c4b2c :arm
	blt     branch_20c4b34
	b       branch_20c4b38

branch_20c4b34: @ 20c4b34 :arm
	strh    r3, [r1, r12]
branch_20c4b38: @ 20c4b38 :arm
	blt     branch_20c4b40
	b       branch_20c4b44

branch_20c4b40: @ 20c4b40 :arm
	add     r12, r12, #0x2
branch_20c4b44: @ 20c4b44 :arm
	blt     branch_20c4b1c
	bx      lr
@ MIi_CpuClear32


.arm
.globl MIi_CpuClear32
MIi_CpuClear32: @ 20c4b4c :arm
	add     r12, r1, r2
branch_20c4b50: @ 20c4b50 :arm
	cmp     r1, r12
	blt     branch_20c4b5c
	b       branch_20c4b60

branch_20c4b5c: @ 20c4b5c :arm
	stmia   r1!, {r0}
branch_20c4b60: @ 20c4b60 :arm
	blt     branch_20c4b50
	bx      lr
@ MI_CpuCopy32


.arm
.globl MI_CpuCopy32
MI_CpuCopy32: @ 20c4b68 :arm
	add     r12, r1, r2
branch_20c4b6c: @ 20c4b6c :arm
	cmp     r1, r12
	blt     branch_20c4b78
	b       branch_20c4b7c

branch_20c4b78: @ 20c4b78 :arm
	ldmia   r0!, {r2}
branch_20c4b7c: @ 20c4b7c :arm
	blt     branch_20c4b84
	b       branch_20c4b88

branch_20c4b84: @ 20c4b84 :arm
	stmia   r1!, {r2}
branch_20c4b88: @ 20c4b88 :arm
	blt     branch_20c4b6c
	bx      lr
@ 0x20c4b90


.arm
MIi_CpuSend32: @ 20c4b90 :arm
	add     r12, r0, r2
branch_20c4b94: @ 20c4b94 :arm
	cmp     r0, r12
	blt     branch_20c4ba0
	b       branch_20c4ba4

branch_20c4ba0: @ 20c4ba0 :arm
	ldmia   r0!, {r2}
branch_20c4ba4: @ 20c4ba4 :arm
	blt     branch_20c4bac
	b       branch_20c4bb0

branch_20c4bac: @ 20c4bac :arm
	str     r2, [r1]
branch_20c4bb0: @ 20c4bb0 :arm
	blt     branch_20c4b94
	bx      lr
@ 0x20c4bb8


/* Input:
r0 = ClearValue
r1 = StartAdress
r2 = Length
*/
.arm
.globl MIi_CpuClearFast
MIi_CpuClearFast: @ 20c4bb8 :arm
	stmfd   sp!, {r4-r9}

	add     r9, r1, r2
	mov     r12, r2, lsr #5
	add     r12, r1, r12, lsl #5
	mov     r2, r0
	mov     r3, r2
	mov     r4, r2
	mov     r5, r2
	mov     r6, r2
	mov     r7, r2
	mov     r8, r2
branch_20c4be4: @ 20c4be4 :arm
	cmp     r1, r12
	blt     branch_20c4bf0
	b       branch_20c4bf4

branch_20c4bf0: @ 20c4bf0 :arm
	stmia   r1!, {r0,r2-r8}
branch_20c4bf4: @ 20c4bf4 :arm
	blt     branch_20c4be4
branch_20c4bf8: @ 20c4bf8 :arm
	cmp     r1, r9
	blt     branch_20c4c04
	b       branch_20c4c08

branch_20c4c04: @ 20c4c04 :arm
	stmia   r1!, {r0}
branch_20c4c08: @ 20c4c08 :arm
	blt     branch_20c4bf8

	ldmfd   sp!, {r4-r9}
	bx      lr
@ 0x20c4c14


.arm
.globl MIi_CpuCopyFast
MIi_CpuCopyFast: @ 20c4c14 :arm
	stmfd   sp!, {r4-r10}
	add     r10, r1, r2
	mov     r12, r2, lsr #5
	add     r12, r1, r12, lsl #5
branch_20c4c24: @ 20c4c24 :arm
	cmp     r1, r12
	blt     branch_20c4c30
	b       branch_20c4c34

branch_20c4c30: @ 20c4c30 :arm
	ldmia   r0!, {r2-r9}
branch_20c4c34: @ 20c4c34 :arm
	blt     branch_20c4c3c
	b       branch_20c4c40

branch_20c4c3c: @ 20c4c3c :arm
	stmia   r1!, {r2-r9}
branch_20c4c40: @ 20c4c40 :arm
	blt     branch_20c4c24
branch_20c4c44: @ 20c4c44 :arm
	cmp     r1, r10
	blt     branch_20c4c50
	b       branch_20c4c54

branch_20c4c50: @ 20c4c50 :arm
	ldmia   r0!, {r2}
branch_20c4c54: @ 20c4c54 :arm
	blt     branch_20c4c5c
	b       branch_20c4c60

branch_20c4c5c: @ 20c4c5c :arm
	stmia   r1!, {r2}
branch_20c4c60: @ 20c4c60 :arm
	blt     branch_20c4c44
	ldmfd   sp!, {r4-r10}
	bx      lr
@ 0x20c4c6c


.arm
MI_Copy32B: @ 20c4c6c :arm
	ldmia   r0!, {r2,r3,r12}
	stmia   r1!, {r2,r3,r12}
	ldmia   r0!, {r2,r3,r12}
	stmia   r1!, {r2,r3,r12}
	ldmia   r0!, {r2,r3}
	stmia   r1!, {r2,r3}
	bx      lr
@ 0x20c4c88


.arm
.globl MI_Copy36B
MI_Copy36B: @ 20c4c88 :arm
	ldmia   r0!, {r2,r3,r12}
	stmia   r1!, {r2,r3,r12}
	ldmia   r0!, {r2,r3,r12}
	stmia   r1!, {r2,r3,r12}
	ldmia   r0!, {r2,r3,r12}
	stmia   r1!, {r2,r3,r12}
	bx      lr
@ 0x20c4ca4


.arm
MI_Copy48B: @ 20c4ca4 :arm
	ldmia   r0!, {r2,r3,r12}
	stmia   r1!, {r2,r3,r12}
	ldmia   r0!, {r2,r3,r12}
	stmia   r1!, {r2,r3,r12}
	ldmia   r0!, {r2,r3,r12}
	stmia   r1!, {r2,r3,r12}
	ldmia   r0!, {r2,r3,r12}
	stmia   r1!, {r2,r3,r12}
	bx      lr
@ 0x20c4cc8


.arm
MI_Copy64B: @ 20c4cc8 :arm
	ldmia   r0!, {r2,r3,r12}
	stmia   r1!, {r2,r3,r12}
	ldmia   r0!, {r2,r3,r12}
	stmia   r1!, {r2,r3,r12}
	ldmia   r0!, {r2,r3,r12}
	stmia   r1!, {r2,r3,r12}
	ldmia   r0!, {r2,r3,r12}
	stmia   r1!, {r2,r3,r12}
	ldmia   r0, {r0,r2,r3,r12}
	stmia   r1!, {r0,r2,r3,r12}
	bx      lr
@ 0x20c4cf4


.arm
.globl MI_CpuFill8
MI_CpuFill8: @ 20c4cf4 :arm
	cmp     r2, #0x0
	beq     branch_20c4d00
	b       branch_20c4d04

branch_20c4d00: @ 20c4d00 :arm
	bx      lr

branch_20c4d04: @ 20c4d04 :arm
	tst     r0, #0x1
	beq     branch_20c4d30
	ldrh    r12, [r0, #-0x1]
	and     r12, r12, #0xff
	orr     r3, r12, r1, lsl #8
	strh    r3, [r0, #-0x1]
	add     r0, r0, #0x1
	subs    r2, r2, #0x1
	beq     branch_20c4d2c
	b       branch_20c4d30

branch_20c4d2c: @ 20c4d2c :arm
	bx      lr

branch_20c4d30: @ 20c4d30 :arm
	cmp     r2, #0x2
	bcc     branch_20c4d88
	orr     r1, r1, r1, lsl #8
	tst     r0, #0x2
	beq     branch_20c4d58
	strh    r1, [r0], #0x2
	subs    r2, r2, #0x2
	beq     branch_20c4d54
	b       branch_20c4d58

branch_20c4d54: @ 20c4d54 :arm
	bx      lr

branch_20c4d58: @ 20c4d58 :arm
	orr     r1, r1, r1, lsl #16
	bics    r3, r2, #0x3
	beq     branch_20c4d78
	sub     r2, r2, r3
	add     r12, r3, r0
branch_20c4d6c: @ 20c4d6c :arm
	str     r1, [r0], #0x4
	cmp     r0, r12
	bcc     branch_20c4d6c
branch_20c4d78: @ 20c4d78 :arm
	tst     r2, #0x2
	bne     branch_20c4d84
	b       branch_20c4d88

branch_20c4d84: @ 20c4d84 :arm
	strh    r1, [r0], #0x2
branch_20c4d88: @ 20c4d88 :arm
	tst     r2, #0x1
	beq     branch_20c4d94
	b       branch_20c4d98

branch_20c4d94: @ 20c4d94 :arm
	bx      lr

branch_20c4d98: @ 20c4d98 :arm
	ldrh    r3, [r0]
	and     r3, r3, #0xff00
	and     r1, r1, #0xff
	orr     r1, r1, r3
	strh    r1, [r0]
	bx      lr
@ 0x20c4db0


.arm
.globl MI_CpuCopy8
MI_CpuCopy8: @ 20c4db0 :arm
	cmp     r2, #0x0
	beq     branch_20c4dbc
	b       branch_20c4dc0

branch_20c4dbc: @ 20c4dbc :arm
	bx      lr

branch_20c4dc0: @ 20c4dc0 :arm
	tst     r1, #0x1
	beq     branch_20c4e18
	ldrh    r12, [r1, #-0x1]
	and     r12, r12, #0xff
	tst     r0, #0x1
	bne     branch_20c4ddc
	b       branch_20c4de0

branch_20c4ddc: @ 20c4ddc :arm
	ldrh    r3, [r0, #-0x1]
branch_20c4de0: @ 20c4de0 :arm
	bne     branch_20c4de8
	b       branch_20c4dec

branch_20c4de8: @ 20c4de8 :arm
	mov     r3, r3, lsr #8
branch_20c4dec: @ 20c4dec :arm
	beq     branch_20c4df4
	b       branch_20c4df8

branch_20c4df4: @ 20c4df4 :arm
	ldrh    r3, [r0]
branch_20c4df8: @ 20c4df8 :arm
	orr     r3, r12, r3, lsl #8
	strh    r3, [r1, #-0x1]
	add     r0, r0, #0x1
	add     r1, r1, #0x1
	subs    r2, r2, #0x1
	beq     branch_20c4e14
	b       branch_20c4e18

branch_20c4e14: @ 20c4e14 :arm
	bx      lr

branch_20c4e18: @ 20c4e18 :arm
	eor     r12, r1, r0
	tst     r12, #0x1
	beq     branch_20c4e74
	bic     r0, r0, #0x1
	ldrh    r12, [r0], #0x2
	mov     r3, r12, lsr #8
	subs    r2, r2, #0x2
	bcc     branch_20c4e50
branch_20c4e38: @ 20c4e38 :arm
	ldrh    r12, [r0], #0x2
	orr     r12, r3, r12, lsl #8
	strh    r12, [r1], #0x2
	mov     r3, r12, lsr #16
	subs    r2, r2, #0x2
	bcs     branch_20c4e38
branch_20c4e50: @ 20c4e50 :arm
	tst     r2, #0x1
	beq     branch_20c4e5c
	b       branch_20c4e60

branch_20c4e5c: @ 20c4e5c :arm
	bx      lr

branch_20c4e60: @ 20c4e60 :arm
	ldrh    r12, [r1]
	and     r12, r12, #0xff00
	orr     r12, r12, r3
	strh    r12, [r1]
	bx      lr

branch_20c4e74: @ 20c4e74 :arm
	tst     r12, #0x2
	beq     branch_20c4ea0
	bics    r3, r2, #0x1
	beq     branch_20c4f04
	sub     r2, r2, r3
	add     r12, r3, r1
branch_20c4e8c: @ 20c4e8c :arm
	ldrh    r3, [r0], #0x2
	strh    r3, [r1], #0x2
	cmp     r1, r12
	bcc     branch_20c4e8c
	b       branch_20c4f04

branch_20c4ea0: @ 20c4ea0 :arm
	cmp     r2, #0x2
	bcc     branch_20c4f04
	tst     r1, #0x2
	beq     branch_20c4ec8
	ldrh    r3, [r0], #0x2
	strh    r3, [r1], #0x2
	subs    r2, r2, #0x2
	beq     branch_20c4ec4
	b       branch_20c4ec8

branch_20c4ec4: @ 20c4ec4 :arm
	bx      lr

branch_20c4ec8: @ 20c4ec8 :arm
	bics    r3, r2, #0x3
	beq     branch_20c4ee8
    
	sub     r2, r2, r3
	add     r12, r3, r1
branch_20c4ed8: @ 20c4ed8 :arm
	ldr     r3, [r0], #0x4
	str     r3, [r1], #0x4
	cmp     r1, r12
	bcc     branch_20c4ed8
branch_20c4ee8: @ 20c4ee8 :arm
	tst     r2, #0x2
	bne     branch_20c4ef4
	b       branch_20c4ef8

branch_20c4ef4: @ 20c4ef4 :arm
	ldrh    r3, [r0], #0x2
branch_20c4ef8: @ 20c4ef8 :arm
	bne     branch_20c4f00
	b       branch_20c4f04

branch_20c4f00: @ 20c4f00 :arm
	strh    r3, [r1], #0x2
branch_20c4f04: @ 20c4f04 :arm
	tst     r2, #0x1
	beq     branch_20c4f10
	b       branch_20c4f14

branch_20c4f10: @ 20c4f10 :arm
	bx      lr

branch_20c4f14: @ 20c4f14 :arm
	ldrh    r2, [r1]
	ldrh    r0, [r0]
	and     r2, r2, #0xff00
	and     r0, r0, #0xff
	orr     r0, r2, r0
	strh    r0, [r1]
	bx      lr
@ 0x20c4f30


.thumb
MI_Zero36B: @ 20c4f30 :thumb
	mov     r1, #0x0
	mov     r2, #0x0
	mov     r3, #0x0
	stmia   r0!, {r1-r3}
	stmia   r0!, {r1-r3}
	stmia   r0!, {r1-r3}
	bx      lr
@ 0x20c4f3e


.align 2, 0
.arm
MI_SwapWord: @ 20c4f40 :arm
	swp     r0, r0, [r1]
	bx      lr
@ 0x20c4f48


.arm
.globl MI_UncompressLZ8
MI_UncompressLZ8: @ 20c4f48 :arm
	stmfd   sp!, {r4-r7,lr}
	ldr     r5, [r0], #0x4
	mov     r2, r5, lsr #8
	mov     r7, #0x0
	tst     r5, #0xf
	bne     branch_20c4f64
	b       branch_20c4f68

branch_20c4f64: @ 20c4f64 :arm
	mov     r7, #0x1
branch_20c4f68: @ 20c4f68 :arm
	cmp     r2, #0x0
	ble     branch_20c5040
	ldrb    lr, [r0], #0x1
	mov     r4, #0x8
branch_20c4f78: @ 20c4f78 :arm
	subs    r4, r4, #0x1
	blt     branch_20c4f68
	tst     lr, #0x80
	bne     branch_20c4f9c
	ldrb    r6, [r0], #0x1
	swpb    r6, r6, [r1]
	add     r1, r1, #0x1
	sub     r2, r2, #0x1
	b       branch_20c5028

branch_20c4f9c: @ 20c4f9c :arm
	ldrb    r5, [r0]
	cmp     r7, #0x0
	beq     branch_20c4fac
	b       branch_20c4fb0

branch_20c4fac: @ 20c4fac :arm
	mov     r6, #0x3
branch_20c4fb0: @ 20c4fb0 :arm
	beq     branch_20c4ff4
	tst     r5, #0xe0
	bne     branch_20c4fc0
	b       branch_20c4fc4

branch_20c4fc0: @ 20c4fc0 :arm
	mov     r6, #0x1
branch_20c4fc4: @ 20c4fc4 :arm
	bne     branch_20c4ff4
	add     r0, r0, #0x1
	and     r6, r5, #0xf
	mov     r6, r6, lsl #4
	tst     r5, #0x10
	beq     branch_20c4fec
	mov     r6, r6, lsl #8
	ldrb    r5, [r0], #0x1
	add     r6, r6, r5, lsl #4
	add     r6, r6, #0x100
branch_20c4fec: @ 20c4fec :arm
	add     r6, r6, #0x11
	ldrb    r5, [r0]
branch_20c4ff4: @ 20c4ff4 :arm
	add     r3, r6, r5, asr #4
	add     r0, r0, #0x1
	and     r5, r5, #0xf
	mov     r12, r5, lsl #8
	ldrb    r6, [r0], #0x1
	orr     r5, r6, r12
	add     r12, r5, #0x1
	sub     r2, r2, r3
branch_20c5014: @ 20c5014 :arm
	ldrb    r5, [r1, -r12]
	swpb    r5, r5, [r1]
	add     r1, r1, #0x1
	subs    r3, r3, #0x1
	bgt     branch_20c5014
branch_20c5028: @ 20c5028 :arm
	cmp     r2, #0x0
	bgt     branch_20c5034
	b       branch_20c5038

branch_20c5034: @ 20c5034 :arm
	mov     lr, lr, lsl #1
branch_20c5038: @ 20c5038 :arm
	bgt     branch_20c4f78
	b       branch_20c4f68

branch_20c5040: @ 20c5040 :arm
	ldmfd   sp!, {r4-r7,lr}
	bx      lr
@ 0x20c5048


.arm
MIi_CardDmaCopy32: @ 20c5048 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r7, r3
	mvn     r1, #0x0
	mov     r4, r2
	bl      MIi_CheckAnotherAutoDMA
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	mov     r3, #0x1000000
	bl      MIi_CheckDma0SourceAddress
	cmp     r7, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	add     r0, r6, r6, lsl #1
	add     r0, r0, #0x2
	mov     r0, r0, lsl #2
	add     r0, r0, #0xb0
	add     r1, r0, #0x4000000
branch_20c5094: @ 20c5094 :arm
	ldr     r0, [r1]
	tst     r0, #0x80000000
	bne     branch_20c5094
	ldr     r3, [pc, #0x10] @ [0x20c50b8] (=0xaf000001)
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      PreITCM_MIi_DmaSetParams
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c50b8

.word 0xaf000001 @ 0x20c50b8



.arm
MI_Init: @ 20c50bc :arm
	stmfd   sp!, {r3,lr}
	mov     r0, #0x3
	bl      MI_SetWramBank

	mov     r0, #0x0
	bl      MI_StopDma
	ldmfd   sp!, {r3,pc}
@ 0x20c50d4

