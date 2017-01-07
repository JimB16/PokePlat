

.arm
.globl WM_Init
WM_Init: @ 20cdb18 :arm
	stmfd   sp!, {r3,lr}
	mov     r2, #0xf00
	bl      WmInitCore
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}
	ldr     r1, =RAM_21cf6a0
	mov     r2, #0x0
	ldr     r1, [r1, #0x4]
	strh    r2, [r1, #0x16]
	ldmfd   sp!, {r3,pc}
@ 0x20cdb40

.pool



.arm
WmInitCore: @ 20cdb44 :arm
	stmfd   sp!, {r4-r10,lr}
	mov     r6, r0
	mov     r4, r1
	mov     r7, r2
	bl      OS_DisableInterrupts
	ldr     r1, [pc, #0x1b4] @ [0x20cdd14] (=RAM_21cf6a0)
	mov     r5, r0
	ldrh    r1, [r1]
	cmp     r1, #0x0
	beq     branch_20cdb78
	bl      OS_RestoreInterrupts
	mov     r0, #0x3
	ldmfd   sp!, {r4-r10,pc}

branch_20cdb78: @ 20cdb78 :arm
	cmp     r6, #0x0
	bne     branch_20cdb8c
	bl      OS_RestoreInterrupts
	mov     r0, #0x6
	ldmfd   sp!, {r4-r10,pc}

branch_20cdb8c: @ 20cdb8c :arm
	cmp     r4, #0x3
	bls     branch_20cdba0
	bl      OS_RestoreInterrupts
	mov     r0, #0x6
	ldmfd   sp!, {r4-r10,pc}

branch_20cdba0: @ 20cdba0 :arm
	tst     r6, #0x1f
	beq     branch_20cdbb4
	bl      OS_RestoreInterrupts
	mov     r0, #0x6
	ldmfd   sp!, {r4-r10,pc}

branch_20cdbb4: @ 20cdbb4 :arm
	bl      Function_20c6350
	mov     r0, #0xa
	mov     r1, #0x1
	bl      PXI_IsCallbackReady
	cmp     r0, #0x0
	bne     branch_20cdbdc
	mov     r0, r5
	bl      OS_RestoreInterrupts
	mov     r0, #0x4
	ldmfd   sp!, {r4-r10,pc}

branch_20cdbdc: @ 20cdbdc :arm
	mov     r0, r6
	mov     r1, r7
	bl      DC_InvalidateRange
	mov     r0, r4
	mov     r1, r6
	mov     r3, r7
	mov     r2, #0x0
	bl      MI_DmaFill32
	ldr     r0, [pc, #0x110] @ [0x20cdd14] (=RAM_21cf6a0)
	add     r1, r6, #2, 24 @ #0x200
	str     r6, [r0, #0x4]
	str     r1, [r6]
	ldr     r2, [r0, #0x4]
	ldr     r1, [r2]
	add     r1, r1, #3, 24 @ #0x300
	str     r1, [r2, #0x4]
	ldr     r2, [r0, #0x4]
	ldr     r1, [r2, #0x4]
	add     r1, r1, #2, 22 @ #0x800
	str     r1, [r2, #0xc]
	ldr     r1, [r0, #0x4]
	ldr     r0, [r1, #0xc]
	add     r0, r0, #1, 24 @ #0x100
	str     r0, [r1, #0x10]
	bl      WmClearFifoRecvFlag
	ldr     r1, [pc, #0xcc] @ [0x20cdd14] (=RAM_21cf6a0)
	mov     r3, #0x0
	ldr     r0, [r1, #0x4]
	mov     r2, r3
	strh    r4, [r0, #0x14]
	ldr     r0, [r1, #0x4]
	str     r3, [r0, #0x14c]
	ldr     r0, [r1, #0x4]
	add     r0, r0, #0x100
	strh    r3, [r0, #0x50]
	b       branch_20cdc88

branch_20cdc6c: @ 20cdc6c :arm
	ldr     r0, [r1, #0x4]
	add     r0, r0, r3, lsl #2
	str     r2, [r0, #0xcc]
	ldr     r0, [r1, #0x4]
	add     r0, r0, r3, lsl #2
	str     r2, [r0, #0x10c]
	add     r3, r3, #0x1
branch_20cdc88: @ 20cdc88 :arm
	cmp     r3, #0x10
	blt     branch_20cdc6c
	ldr     r0, [pc, #0x80] @ [0x20cdd18] (=RAM_21cf6a8)
	ldr     r1, [pc, #0x80] @ [0x20cdd1c] (=RAM_21cf6c8)
	mov     r2, #0xa
	bl      OS_InitMessageQueue
	mov     r6, #0x0
	mov     r4, #2, 18 @ #0x8000
	ldr     r10, [pc, #0x70] @ [0x20cdd20] (=RAM_21cf740)
	mov     r9, #0x2
	ldr     r8, [pc, #0x60] @ [0x20cdd18] (=RAM_21cf6a8)
	mov     r7, #0x1
	b       branch_20cdce4

branch_20cdcbc: @ 20cdcbc :arm
	mov     r2, r6, lsl #8
	mov     r1, r9
	add     r0, r10, r6, lsl #8
	strh    r4, [r10, r2]
	bl      DC_StoreRange
	mov     r0, r8
	mov     r2, r7
	add     r1, r10, r6, lsl #8
	bl      OS_SendMessage
	add     r6, r6, #0x1
branch_20cdce4: @ 20cdce4 :arm
	cmp     r6, #0xa
	blt     branch_20cdcbc
	ldr     r1, [pc, #0x30] @ [0x20cdd24] (=WmReceiveFifo)
	mov     r0, #0xa
	bl      PXI_SetFifoRecvCallback
	ldr     r1, [pc, #0x14] @ [0x20cdd14] (=RAM_21cf6a0)
	mov     r2, #0x1
	mov     r0, r5
	strh    r2, [r1]
	bl      OS_RestoreInterrupts
	mov     r0, #0x0
	ldmfd   sp!, {r4-r10,pc}
@ 0x20cdd14

.word RAM_21cf6a0 @ 0x20cdd14
.word RAM_21cf6a8 @ 0x20cdd18
.word RAM_21cf6c8 @ 0x20cdd1c
.word RAM_21cf740 @ 0x20cdd20
.word WmReceiveFifo @ 0x20cdd24



.globl WM_Finish
WM_Finish: @ 20cdd28 :arm
	stmfd   sp!, {r4,lr}
	bl      OS_DisableInterrupts
	mov     r4, r0
	bl      WMi_CheckInitialized
	cmp     r0, #0x0
	beq     branch_20cdd50
	mov     r0, r4
	bl      OS_RestoreInterrupts
	mov     r0, #0x3
	ldmfd   sp!, {r4,pc}

branch_20cdd50: @ 20cdd50 :arm
	mov     r0, #0x1
	mov     r1, #0x0
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	ldmnefd sp!, {r4,pc}
	bl      WmClearFifoRecvFlag
	mov     r0, #0xa
	mov     r1, #0x0
	bl      PXI_SetFifoRecvCallback
	ldr     r1, =RAM_21cf6a0
	mov     r2, #0x0
	str     r2, [r1, #0x4]
	mov     r0, r4
	strh    r2, [r1]
	bl      OS_RestoreInterrupts
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x20cdd94

.pool



.arm
WMi_SetCallbackTable: @ 20cdd98 :arm
	ldr     r2, [pc, #0xc] @ [0x20cddac] (=RAM_21cf6a0)
	ldr     r2, [r2, #0x4]
	add     r0, r2, r0, lsl #2
	str     r1, [r0, #0x18]
	bx      lr
@ 0x20cddac

.word RAM_21cf6a0 @ 0x20cddac



.arm
WmGetCommandBuffer4Arm7: @ 20cddb0 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x48] @ [0x20cde04] (=RAM_21cf6a8)
	add     r1, sp, #0x0
	mov     r2, #0x0
	bl      OS_ReceiveMessage
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,pc}
	ldr     r0, [sp]
	mov     r1, #0x2
	bl      DC_InvalidateRange
	ldr     r1, [sp]
	ldrh    r0, [r1]
	tst     r0, #2, 18 @ #0x8000
	movne   r0, r1
	ldmnefd sp!, {r3,pc}
	ldr     r0, [pc, #0xc] @ [0x20cde04] (=RAM_21cf6a8)
	mov     r2, #0x1
	bl      OS_JamMessage
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x20cde04

.word RAM_21cf6a8 @ 0x20cde04



.arm
WMi_SendCommand: @ 20cde08 :arm
	stmfd   sp!, {r0-r3}
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	bl      WmGetCommandBuffer4Arm7
	movs    r4, r0
	moveq   r0, #0x8
	ldmeqfd sp!, {r3-r5,lr}
	addeq   sp, sp, #0x10
	bxeq    lr
	strh    r5, [r4]
	ldrh    r5, [sp, #0x14]
	add     r0, sp, #0x14
	bic     r0, r0, #0x3
	mov     r3, #0x0
	cmp     r5, #0x0
	add     r2, r0, #0x4
	ble     branch_20cde68
branch_20cde4c: @ 20cde4c :arm
	add     r2, r2, #0x4
	ldr     r1, [r2, #-0x4]
	add     r0, r4, r3, lsl #2
	add     r3, r3, #0x1
	str     r1, [r0, #0x4]
	cmp     r3, r5
	blt     branch_20cde4c
branch_20cde68: @ 20cde68 :arm
	mov     r0, r4
	mov     r1, #1, 24 @ #0x100
	bl      DC_StoreRange
	mov     r1, r4
	mov     r0, #0xa
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	mov     r5, r0
	ldr     r0, [pc, #0x20] @ [0x20cdeb0] (=RAM_21cf6a8)
	mov     r1, r4
	mov     r2, #0x1
	bl      OS_SendMessage
	cmp     r5, #0x0
	movlt   r0, #0x8
	movge   r0, #0x2
	ldmfd   sp!, {r3-r5,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x20cdeb0

.word RAM_21cf6a8 @ 0x20cdeb0



.arm
WMi_SendCommandDirect: @ 20cdeb4 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r4, r1
	bl      WmGetCommandBuffer4Arm7
	movs    r5, r0
	moveq   r0, #0x8
	ldmeqfd sp!, {r4-r6,pc}
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      MI_CpuCopy8
	mov     r0, r5
	mov     r1, r4
	bl      DC_StoreRange
	mov     r1, r5
	mov     r0, #0xa
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ [0x20cdf20] (=RAM_21cf6a8)
	mov     r1, r5
	mov     r2, #0x1
	bl      OS_SendMessage
	cmp     r4, #0x0
	movlt   r0, #0x8
	movge   r0, #0x2
	ldmfd   sp!, {r4-r6,pc}
@ 0x20cdf20

.word RAM_21cf6a8 @ 0x20cdf20


.arm
Function_20cdf24: @ 20cdf24 :arm
	ldr     r0, [pc, #0x4] @ [0x20cdf30] (=RAM_21cf6a0)
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x20cdf30

.word RAM_21cf6a0 @ 0x20cdf30



.arm
WMi_CheckInitialized: @ 20cdf34 :arm
	ldr     r0, [pc, #0x10] @ [0x20cdf4c] (=RAM_21cf6a0)
	ldrh    r0, [r0]
	cmp     r0, #0x0
	movne   r0, #0x0
	moveq   r0, #0x3
	bx      lr
@ 0x20cdf4c

.word RAM_21cf6a0 @ 0x20cdf4c



.arm
WMi_CheckIdle: @ 20cdf50 :arm
	stmfd   sp!, {r3,lr}
	bl      WMi_CheckInitialized
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}
	ldr     r0, [pc, #0x2c] @ [0x20cdf94] (=RAM_21cf6a0)
	mov     r1, #0x2
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0, #0x4]
	bl      DC_InvalidateRange
	ldr     r0, [pc, #0x18] @ [0x20cdf94] (=RAM_21cf6a0)
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0, #0x4]
	ldrh    r0, [r0]
	cmp     r0, #0x1
	movls   r0, #0x3
	movhi   r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x20cdf94

.word RAM_21cf6a0 @ 0x20cdf94



.arm
WMi_CheckStateEx: @ 20cdf98 :arm
	stmfd   sp!, {r0-r3}
	stmfd   sp!, {r3,lr}
	bl      WMi_CheckInitialized
	cmp     r0, #0x0
	ldmnefd sp!, {r3,lr}
	addne   sp, sp, #0x10
	bxne    lr
	ldr     r0, [pc, #0x6c] @ [0x20ce028] (=RAM_21cf6a0)
	mov     r1, #0x2
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0, #0x4]
	bl      DC_InvalidateRange
	ldr     r0, [pc, #0x58] @ [0x20ce028] (=RAM_21cf6a0)
	ldr     r3, [sp, #0x8]
	ldr     r0, [r0, #0x4]
	add     r1, sp, #0x8
	ldr     r2, [r0, #0x4]
	bic     r0, r1, #0x3
	add     r12, r0, #0x4
	ldrh    lr, [r2]
	cmp     r3, #0x0
	mov     r0, #0x3
	ldmeqfd sp!, {r3,lr}
	addeq   sp, sp, #0x10
	bxeq    lr
	mov     r1, #0x0
branch_20ce000: @ 20ce000 :arm
	add     r12, r12, #0x4
	ldr     r2, [r12, #-0x4]
	cmp     r2, lr
	moveq   r0, r1
	subs    r3, r3, #0x1
	str     r3, [sp, #0x8]
	bne     branch_20ce000
	ldmfd   sp!, {r3,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x20ce028

.word RAM_21cf6a0 @ 0x20ce028



.arm
WmReceiveFifo: @ 20ce02c :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x8
	ldr     r0, [pc, #0x388] @ [0x20ce3c4] (=RAM_21cf6a0)
	cmp     r2, #0x0
	ldr     r4, [r0, #0x4]
	mov     r10, r1
	addne   sp, sp, #0x8
	ldmnefd sp!, {r3-r11,pc}
	ldr     r0, [r4, #0x10]
	mov     r1, #1, 24 @ #0x100
	bl      DC_InvalidateRange
	ldrh    r0, [r4, #0x16]
	cmp     r0, #0x0
	bne     branch_20ce070
	ldr     r0, [r4, #0x4]
	mov     r1, #2, 22 @ #0x800
	bl      DC_InvalidateRange
branch_20ce070: @ 20ce070 :arm
	ldr     r0, [r4, #0x10]
	cmp     r10, r0
	beq     branch_20ce088
	mov     r0, r10
	mov     r1, #1, 24 @ #0x100
	bl      DC_InvalidateRange
branch_20ce088: @ 20ce088 :arm
	ldrh    r0, [r10]
	cmp     r0, #0x2c
	bcc     branch_20ce140
	cmp     r0, #0x80
	bne     branch_20ce0c4
	ldrh    r0, [r10, #0x2]
	cmp     r0, #0x13
	bne     branch_20ce0ac
	bl      OS_Panic
branch_20ce0ac: @ 20ce0ac :arm
	ldr     r1, [r4, #0xc8]
	cmp     r1, #0x0
	beq     branch_20ce384
	mov     r0, r10
	blx     r1
	b       branch_20ce384

branch_20ce0c4: @ 20ce0c4 :arm
	cmp     r0, #0x82
	bne     branch_20ce118
	ldrh    r0, [r10, #0x6]
	add     r1, r4, r0, lsl #2
	ldr     r0, [r1, #0xcc]
	cmp     r0, #0x0
	beq     branch_20ce384
	ldr     r0, [r1, #0x10c]
	str     r0, [r10, #0x1c]
	ldr     r0, [r4, #0x14c]
	strh    r0, [r10, #0x22]
	ldr     r1, [r4, #0x4]
	ldr     r0, [r10, #0x8]
	ldrh    r1, [r1, #0x72]
	bl      DC_InvalidateRange
	ldrh    r1, [r10, #0x6]
	mov     r0, r10
	add     r1, r4, r1, lsl #2
	ldr     r1, [r1, #0xcc]
	blx     r1
	b       branch_20ce384

branch_20ce118: @ 20ce118 :arm
	cmp     r0, #0x81
	bne     branch_20ce384
	mov     r0, #0xf
	strh    r0, [r10]
	ldr     r1, [r10, #0x1c]
	cmp     r1, #0x0
	beq     branch_20ce384
	mov     r0, r10
	blx     r1
	b       branch_20ce384

branch_20ce140: @ 20ce140 :arm
	cmp     r0, #0xe
	bne     branch_20ce180
	ldrh    r0, [r10, #0x4]
	add     r0, r0, #0xf5
	add     r0, r0, #255, 24 @ #0xff00
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	cmp     r0, #0x1
	bhi     branch_20ce180
	ldrh    r0, [r10, #0x2]
	cmp     r0, #0x0
	bne     branch_20ce180
	ldr     r1, [r4, #0x4]
	ldr     r0, [r10, #0x8]
	ldrh    r1, [r1, #0x72]
	bl      DC_InvalidateRange
branch_20ce180: @ 20ce180 :arm
	ldrh    r1, [r10]
	cmp     r1, #0x2
	ldreqh  r0, [r10, #0x2]
	cmpeq   r0, #0x0
	add     r0, r4, r1, lsl #2
	bne     branch_20ce1bc
	ldr     r4, [r0, #0x18]
	bl      WM_Finish
	cmp     r4, #0x0
	addeq   sp, sp, #0x8
	ldmeqfd sp!, {r3-r11,pc}
	mov     r0, r10
	blx     r4
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r11,pc}

branch_20ce1bc: @ 20ce1bc :arm
	ldr     r1, [r0, #0x18]
	cmp     r1, #0x0
	beq     branch_20ce1e4
	mov     r0, r10
	blx     r1
	ldr     r0, [pc, #0x1ec] @ [0x20ce3c4] (=RAM_21cf6a0)
	ldrh    r0, [r0]
	cmp     r0, #0x0
	addeq   sp, sp, #0x8
	ldmeqfd sp!, {r3-r11,pc}
branch_20ce1e4: @ 20ce1e4 :arm
	ldrh    r0, [r10]
	cmp     r0, #0x8
	cmpne   r0, #0xc
	bne     branch_20ce384
	cmp     r0, #0x8
	bne     branch_20ce228
	add     r0, r10, #0xa
	str     r0, [sp]
	ldrh    r5, [r10, #0x8]
	ldrh    r6, [r10, #0x10]
	ldrh    r0, [r10, #0x12]
	add     r11, r10, #0x14
	mov     r7, #0x0
	str     r0, [sp, #0x4]
	ldrh    r8, [r10, #0x2c]
	ldrh    r9, [r10, #0x2e]
	b       branch_20ce258

branch_20ce228: @ 20ce228 :arm
	cmp     r0, #0xc
	bne     branch_20ce258
	ldrh    r5, [r10, #0x8]
	ldrh    r7, [r10, #0xa]
	ldrh    r0, [r10, #0xc]
	mov     r6, #0x0
	mov     r11, r6
	str     r0, [sp, #0x4]
	add     r0, r10, #0x10
	ldrh    r8, [r10, #0x16]
	ldrh    r9, [r10, #0x18]
	str     r0, [sp]
branch_20ce258: @ 20ce258 :arm
	cmp     r5, #0x7
	cmpne   r5, #0x9
	cmpne   r5, #0x1a
	bne     branch_20ce384
	cmp     r5, #0x7
	ldreq   r1, [r4, #0x14c]
	mov     r0, #0x1
	orreq   r0, r1, r0, lsl r6
	mvnne   r0, r0, lsl r6
	ldrne   r1, [r4, #0x14c]
	add     r3, r4, #1, 24 @ #0x100
	andne   r0, r1, r0
	str     r0, [r4, #0x14c]
	ldr     r0, [pc, #0x134] @ [0x20ce3c8] (=RAM_21cf6f0)
	mov     r1, #0x0
	mov     r2, #0x44
	strh    r7, [r3, #0x50]
	bl      MI_CpuFill8
	ldr     r12, [pc, #0x11c] @ [0x20ce3c4] (=RAM_21cf6a0)
	mov     r1, #0x82
	strh    r1, [r12, #0x50]
	mov     r1, #0x0
	strh    r1, [r12, #0x52]
	strh    r5, [r12, #0x54]
	str     r1, [r12, #0x58]
	str     r1, [r12, #0x5c]
	strh    r1, [r12, #0x60]
	strh    r6, [r12, #0x62]
	strh    r7, [r12, #0x70]
	ldr     r2, [r4, #0x14c]
	ldr     r1, [pc, #0xf4] @ [0x20ce3cc] (=0xffff)
	strh    r2, [r12, #0x72]
	strh    r1, [r12, #0x6a]
	ldr     r3, [sp, #0x4]
	ldr     r0, [sp]
	ldr     r1, [pc, #0xe4] @ [0x20ce3d0] (=RAM_21cf704)
	mov     r2, #0x6
	strh    r3, [r12, #0x8c]
	bl      MI_CpuCopy8
	cmp     r11, #0x0
	mov     r2, #0x18
	beq     branch_20ce310
	ldr     r1, [pc, #0xcc] @ [0x20ce3d4] (=RAM_21cf714)
	mov     r0, r11
	bl      MIi_CpuCopy16
	b       branch_20ce31c

branch_20ce310: @ 20ce310 :arm
	ldr     r1, [pc, #0xbc] @ [0x20ce3d4] (=RAM_21cf714)
	mov     r0, #0x0
	bl      MIi_CpuClear16
branch_20ce31c: @ 20ce31c :arm
	cmp     r7, #0x0
	moveq   r1, r8
	movne   r1, r9
	cmp     r7, #0x0
	ldr     r0, [pc, #0x90] @ [0x20ce3c4] (=RAM_21cf6a0)
	ldr     r7, [pc, #0x8c] @ [0x20ce3c4] (=RAM_21cf6a0)
	strh    r1, [r0, #0x90]
	movne   r9, r8
	ldr     r5, [pc, #0x84] @ [0x20ce3c8] (=RAM_21cf6f0)
	mov     r6, #0x0
	strh    r9, [r7, #0x92]
branch_20ce348: @ 20ce348 :arm
	strh    r6, [r7, #0x56]
	add     r2, r4, r6, lsl #2
	ldr     r0, [r2, #0xcc]
	cmp     r0, #0x0
	beq     branch_20ce370
	ldr     r1, [r2, #0x10c]
	mov     r0, r5
	str     r1, [r7, #0x6c]
	ldr     r1, [r2, #0xcc]
	blx     r1
branch_20ce370: @ 20ce370 :arm
	add     r0, r6, #0x1
	mov     r0, r0, lsl #16
	mov     r6, r0, lsr #16
	cmp     r6, #0x10
	bcc     branch_20ce348
branch_20ce384: @ 20ce384 :arm
	ldr     r0, [r4, #0x10]
	mov     r1, #1, 24 @ #0x100
	bl      DC_InvalidateRange
	bl      WmClearFifoRecvFlag
	ldr     r0, [r4, #0x10]
	cmp     r10, r0
	addeq   sp, sp, #0x8
	ldmeqfd sp!, {r3-r11,pc}
	ldrh    r2, [r10]
	mov     r0, r10
	mov     r1, #1, 24 @ #0x100
	orr     r2, r2, #2, 18 @ #0x8000
	strh    r2, [r10]
	bl      DC_StoreRange
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r11,pc}
@ 0x20ce3c4

.word RAM_21cf6a0 @ 0x20ce3c4
.word RAM_21cf6f0 @ 0x20ce3c8
.word 0xffff @ 0x20ce3cc
.word RAM_21cf704 @ 0x20ce3d0
.word RAM_21cf714 @ 0x20ce3d4



.arm
WmClearFifoRecvFlag: @ 20ce3d8 :arm
	ldr     r1, [pc, #0x10] @ [0x20ce3f0] (=RAM_27fff96)
	ldrh    r0, [r1]
	tst     r0, #0x1
	bicne   r0, r0, #0x1
	strneh  r0, [r1]
	bx      lr
@ 0x20ce3f0

.word RAM_27fff96 @ 0x20ce3f0



.arm
.globl WMi_GetStatusAddress
WMi_GetStatusAddress: @ 20ce3f4 :arm
	stmfd   sp!, {r3,lr}
	bl      WMi_CheckInitialized
	cmp     r0, #0x0
	movne   r0, #0x0
	ldreq   r0, [pc, #0x8] @ [0x20ce414] (=RAM_21cf6a0)
	ldreq   r0, [r0, #0x4]
	ldreq   r0, [r0, #0x4]
	ldmfd   sp!, {r3,pc}
@ 0x20ce414

.word RAM_21cf6a0 @ 0x20ce414



.arm
WM_GetAID: @ 20ce418 :arm
	stmfd   sp!, {r4,lr}
	bl      OS_DisableInterrupts
	ldr     r1, [pc, #0x1c] @ [0x20ce444] (=RAM_21cf6a0)
	ldr     r1, [r1, #0x4]
	cmp     r1, #0x0
	addne   r1, r1, #0x100
	ldrneh  r4, [r1, #0x50]
	moveq   r4, #0x0
	bl      OS_RestoreInterrupts
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x20ce444

.word RAM_21cf6a0 @ 0x20ce444



.arm
WM_GetConnectedAIDs: @ 20ce448 :arm
	stmfd   sp!, {r4,lr}
	bl      OS_DisableInterrupts
	ldr     r1, [pc, #0x1c] @ [0x20ce474] (=RAM_21cf6a0)
	ldr     r1, [r1, #0x4]
	cmp     r1, #0x0
	ldrne   r4, [r1, #0x14c]
	moveq   r4, #0x0
	bl      OS_RestoreInterrupts
	mov     r0, r4, lsl #16
	mov     r0, r0, lsr #16
	ldmfd   sp!, {r4,pc}
@ 0x20ce474

.word RAM_21cf6a0 @ 0x20ce474



.arm
.globl WM_SetIndCallback
WM_SetIndCallback: @ 20ce478 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	bl      OS_DisableInterrupts
	mov     r5, r0
	bl      WMi_CheckInitialized
	movs    r4, r0
	beq     branch_20ce4a4
	mov     r0, r5
	bl      OS_RestoreInterrupts
	mov     r0, r4
	ldmfd   sp!, {r4-r6,pc}

branch_20ce4a4: @ 20ce4a4 :arm
	bl      Function_20cdf24
	str     r6, [r0, #0xc8]
	mov     r0, r5
	bl      OS_RestoreInterrupts
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x20ce4bc


.arm
.globl WM_SetPortCallback
WM_SetPortCallback: @ 20ce4bc :arm
	stmfd   sp!, {r3-r8,lr}
	sub     sp, sp, #0x44
	movs    r5, r1
	mov     r6, r0
	mov     r4, r2
	beq     branch_20ce524
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x44
	bl      MI_CpuFill8
	mov     r3, #0x0
	ldr     r1, [pc, #0xa0] @ [0x20ce590] (=0xffff)
	mov     r7, #0x82
	mov     r2, #0x19
	add     r0, sp, #0x14
	strh    r7, [sp]
	strh    r3, [sp, #0x2]
	strh    r2, [sp, #0x4]
	strh    r6, [sp, #0x6]
	str     r3, [sp, #0x8]
	str     r3, [sp, #0xc]
	strh    r3, [sp, #0x10]
	strh    r1, [sp, #0x1a]
	str     r4, [sp, #0x1c]
	strh    r3, [sp, #0x12]
	bl      OS_GetMacAddress
branch_20ce524: @ 20ce524 :arm
	bl      OS_DisableInterrupts
	mov     r8, r0
	bl      WMi_CheckInitialized
	movs    r7, r0
	beq     branch_20ce54c
	mov     r0, r8
	bl      OS_RestoreInterrupts
	add     sp, sp, #0x44
	mov     r0, r7
	ldmfd   sp!, {r3-r8,pc}

branch_20ce54c: @ 20ce54c :arm
	bl      Function_20cdf24
	add     r0, r0, r6, lsl #2
	str     r5, [r0, #0xcc]
	str     r4, [r0, #0x10c]
	cmp     r5, #0x0
	beq     branch_20ce57c
	bl      WM_GetConnectedAIDs
	strh    r0, [sp, #0x22]
	bl      WM_GetAID
	strh    r0, [sp, #0x20]
	add     r0, sp, #0x0
	blx     r5
branch_20ce57c: @ 20ce57c :arm
	mov     r0, r8
	bl      OS_RestoreInterrupts
	mov     r0, #0x0
	add     sp, sp, #0x44
	ldmfd   sp!, {r3-r8,pc}
@ 0x20ce590

.word 0xffff @ 0x20ce590



.arm
Function_20ce594: @ 20ce594 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	bl      Function_20cdf24
	mov     r4, r0
	bl      WMi_CheckInitialized
	cmp     r0, #0x0
	ldmnefd sp!, {r3-r5,pc}
	cmp     r5, #0x0
	moveq   r0, #0x6
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r0, [r4, #0x4]
	mov     r1, #125, 28 @ #0x7d0
	bl      DC_InvalidateRange
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	mov     r2, #125, 28 @ #0x7d0
	bl      MIi_CpuCopyFast
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x20ce5e0


.arm
WM_GetMPSendBufferSize: @ 20ce5e0 :arm
	stmfd   sp!, {r4,lr}
	bl      Function_20cdf24
	mov     r4, r0
	mov     r0, #0x2
	mov     r1, #0x7
	mov     r2, #0x8
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	movne   r0, #0x0
	ldmnefd sp!, {r4,pc}
	ldr     r0, [r4, #0x4]
	mov     r1, #0x4
	add     r0, r0, #0xc
	bl      DC_InvalidateRange
	ldr     r1, [r4, #0x4]
	ldr     r0, [r1, #0xc]
	cmp     r0, #0x1
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	add     r0, r1, #0x3c
	mov     r1, #0x4
	bl      DC_InvalidateRange
	ldr     r0, [r4, #0x4]
	ldrh    r0, [r0, #0x3c]
	add     r0, r0, #0x1f
	bic     r0, r0, #0x1f
	ldmfd   sp!, {r4,pc}
@ 0x20ce64c


.arm
WM_GetMPReceiveBufferSize: @ 20ce64c :arm
	stmfd   sp!, {r3-r5,lr}
	bl      Function_20cdf24
	mov     r4, r0
	mov     r0, #0x2
	mov     r1, #0x7
	mov     r2, #0x8
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	movne   r0, #0x0
	ldmnefd sp!, {r3-r5,pc}
	ldr     r0, [r4, #0x4]
	mov     r1, #0x4
	add     r0, r0, #0xc
	bl      DC_InvalidateRange
	ldr     r1, [r4, #0x4]
	ldr     r0, [r1, #0xc]
	cmp     r0, #0x1
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	add     r0, r1, #98, 30 @ #0x188
	mov     r1, #0x2
	bl      DC_InvalidateRange
	ldr     r1, [r4, #0x4]
	add     r0, r1, #1, 24 @ #0x100
	ldrh    r0, [r0, #0x88]
	cmp     r0, #0x0
	moveq   r5, #0x1
	add     r0, r1, #0x3e
	mov     r1, #0x2
	movne   r5, #0x0
	bl      DC_InvalidateRange
	ldr     r0, [r4, #0x4]
	cmp     r5, #0x1
	ldrh    r5, [r0, #0x3e]
	addne   r0, r5, #0x51
	bicne   r0, r0, #0x1f
	movne   r0, r0, lsl #1
	ldmnefd sp!, {r3-r5,pc}
	add     r0, r0, #0xf8
	mov     r1, #0x2
	bl      DC_InvalidateRange
	ldr     r0, [r4, #0x4]
	add     r1, r5, #0xc
	ldrh    r0, [r0, #0xf8]
	mul     r0, r1, r0
	add     r0, r0, #0x29
	bic     r0, r0, #0x1f
	mov     r0, r0, lsl #1
	ldmfd   sp!, {r3-r5,pc}
@ 0x20ce710


.arm
.globl WM_ReadMPData
WM_ReadMPData: @ 20ce710 :arm
	stmfd   sp!, {r3-r6,lr}
	sub     sp, sp, #0x3c
	mov     r5, r0
	mov     r4, r1
	bl      Function_20cdf24
	mov     r6, r0
	bl      WMi_CheckInitialized
	cmp     r0, #0x0
	addne   sp, sp, #0x3c
	movne   r0, #0x0
	ldmnefd sp!, {r3-r6,pc}
	cmp     r4, #0x1
	bcc     branch_20ce74c
	cmp     r4, #0xf
	bls     branch_20ce758
.arm
branch_20ce74c: @ 20ce74c :arm
	add     sp, sp, #0x3c
	mov     r0, #0x0
	ldmfd   sp!, {r3-r6,pc}
@ 0x20ce758

.arm
branch_20ce758: @ 20ce758 :arm
	ldr     r0, [r6, #0x4]
	mov     r1, #0x2
	add     r0, r0, #0x82
	add     r0, r0, #1, 24 @ #0x100
	bl      DC_InvalidateRange
	ldr     r0, [r6, #0x4]
	mov     r1, #0x1
	add     r0, r0, #1, 24 @ #0x100
	ldrh    r0, [r0, #0x82]
	tst     r0, r1, lsl r4
	addeq   sp, sp, #0x3c
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r6,pc}
	ldrh    r0, [r5, #0x4]
	cmp     r0, #0x0
	addeq   sp, sp, #0x3c
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r6,pc}
	add     r0, r5, #0xa
	str     r0, [sp]
	mov     r3, #0x0
	add     r2, sp, #0x0
.arm
branch_20ce7b0: @ 20ce7b0 :arm
	ldr     r0, [r2, r3, lsl #0x2]
	ldrh    r1, [r0, #0x4]
	cmp     r4, r1
	addeq   sp, sp, #0x3c
	ldmeqfd sp!, {r3-r6,pc}
	add     r3, r3, #0x1
	add     r0, r2, r3, lsl #2
	ldrh    r1, [r5, #0x6]
	ldr     r0, [r0, #-0x4]
	add     r0, r1, r0
	str     r0, [r2, r3, lsl #0x2]
	ldrh    r0, [r5, #0x4]
	cmp     r3, r0
	blt     branch_20ce7b0
	mov     r0, #0x0
	add     sp, sp, #0x3c
	ldmfd   sp!, {r3-r6,pc}
@ 0x20ce7f4


.arm
.globl WM_GetAllowedChannel
WM_GetAllowedChannel: @ 20ce7f4 :arm
	stmfd   sp!, {r3,lr}
	bl      WMi_CheckInitialized
	cmp     r0, #0x0
	movne   r0, #2, 18 @ #0x8000
	ldreq   r0, [pc, #0x4] @ [0x20ce810] (=RAM_27ffcfa)
	ldreqh  r0, [r0]
	ldmfd   sp!, {r3,pc}
@ 0x20ce810

.word RAM_27ffcfa @ 0x20ce810



.arm
.globl WM_GetLinkLevel
WM_GetLinkLevel: @ 20ce814 :arm
	stmfd   sp!, {r4,lr}
	bl      Function_20cdf24
	mov     r4, r0
	bl      WMi_CheckInitialized
	cmp     r0, #0x0
	movne   r0, #0x0
	ldmnefd sp!, {r4,pc}
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      DC_InvalidateRange
	ldr     r1, [r4, #0x4]
	ldrh    r0, [r1]
	cmp     r0, #0x9
	beq     branch_20ce85c
	cmp     r0, #0xa
	cmpne   r0, #0xb
	beq     branch_20ce884
	b       branch_20ce89c

branch_20ce85c: @ 20ce85c :arm
	add     r0, r1, #0x82
	add     r0, r0, #1, 24 @ #0x100
	mov     r1, #0x2
	bl      DC_InvalidateRange
	ldr     r1, [r4, #0x4]
	add     r0, r1, #1, 24 @ #0x100
	ldrh    r0, [r0, #0x82]
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
branch_20ce884: @ 20ce884 :arm
	add     r0, r1, #0xbc
	mov     r1, #0x2
	bl      DC_InvalidateRange
	ldr     r0, [r4, #0x4]
	ldrh    r0, [r0, #0xbc]
	ldmfd   sp!, {r4,pc}

branch_20ce89c: @ 20ce89c :arm
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x20ce8a4


.arm
.globl WM_GetDispersionBeaconPeriod
WM_GetDispersionBeaconPeriod: @ 20ce8a4 :arm
	stmfd   sp!, {r3,lr}
	sub     sp, sp, #0x8
	add     r0, sp, #0x0
	bl      OS_GetMacAddress
	mov     r2, #0x0
	add     r3, sp, #0x0
	mov     r1, r2
branch_20ce8c0: @ 20ce8c0 :arm
	ldrb    r0, [r3], #0x1
	add     r2, r2, #0x1
	cmp     r2, #0x6
	add     r0, r1, r0
	mov     r0, r0, lsl #16
	mov     r1, r0, lsr #16
	blt     branch_20ce8c0
	ldr     r0, [pc, #0x48] @ [0x20ce92c] (=RAM_27ffc3c)
	ldr     r12, [pc, #0x48] @ [0x20ce930] (=0x66666667)
	ldr     r0, [r0]
	mov     r3, #0x14
	add     r0, r1, r0
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	rsb     r0, r0, r0, lsl #3
	mov     r0, r0, lsl #16
	mov     r2, r0, lsr #16
	mov     r1, r2, lsr #31
	smull   r2, lr, r12, r2
	add     lr, r1, lr, asr #3
	smull   r1, r2, r3, lr
	rsb     lr, r1, r0, lsr #16
	add     r0, lr, #0xc8
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	add     sp, sp, #0x8
	ldmfd   sp!, {r3,pc}
@ 0x20ce92c

.word RAM_27ffc3c @ 0x20ce92c
.word 0x66666667 @ 0x20ce930



.arm
.globl WM_GetDispersionScanPeriod
WM_GetDispersionScanPeriod: @ 20ce934 :arm
	stmfd   sp!, {r3,lr}
	sub     sp, sp, #0x8
	add     r0, sp, #0x0
	bl      OS_GetMacAddress
	mov     r1, #0x0
	add     r3, sp, #0x0
	mov     r2, r1
branch_20ce950: @ 20ce950 :arm
	ldrb    r0, [r3], #0x1
	add     r1, r1, #0x1
	cmp     r1, #0x6
	add     r0, r2, r0
	mov     r0, r0, lsl #16
	mov     r2, r0, lsr #16
	blt     branch_20ce950
	ldr     r0, [pc, #0x4c] @ [0x20ce9c0] (=RAM_27ffc3c)
	mov     r1, #0xd
	ldr     r0, [r0]
	ldr     r3, [pc, #0x44] @ [0x20ce9c4] (=0x66666667)
	add     r0, r2, r0
	mov     r0, r0, lsl #16
	mov     r2, r0, lsr #16
	mul     r0, r2, r1
	mov     r0, r0, lsl #16
	mov     r2, r0, lsr #16
	mov     r1, r2, lsr #31
	smull   r2, r12, r3, r2
	add     r12, r1, r12, asr #2
	mov     r3, #0xa
	smull   r1, r2, r3, r12
	rsb     r12, r1, r0, lsr #16
	add     r0, r12, #0x1e
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	add     sp, sp, #0x8
	ldmfd   sp!, {r3,pc}
@ 0x20ce9c0

.word RAM_27ffc3c @ 0x20ce9c0
.word 0x66666667 @ 0x20ce9c4



.arm
WM_GetOtherElements: @ 20ce9c8 :arm
	stmfd   sp!, {r3-r6,lr}
	sub     sp, sp, #0x84
	ldrh    r2, [r1, #0x3c]
	mov     lr, r0
	cmp     r2, #0x0
	beq     branch_20cea10
	mov     r0, #0x0
	add     r5, sp, #0x0
	strb    r0, [sp]
	mov     r4, #0x8
branch_20ce9f0: @ 20ce9f0 :arm
	ldmia   r5!, {r0-r3}
	stmia   lr!, {r0-r3}
	subs    r4, r4, #0x1
	bne     branch_20ce9f0
	ldr     r0, [r5]
	add     sp, sp, #0x84
	str     r0, [lr]
	ldmfd   sp!, {r3-r6,pc}
@ 0x20cea10

.arm
branch_20cea10: @ 20cea10 :arm
	ldrh    r0, [r1, #0x3e]
	strb    r0, [sp]
	ands    r0, r0, #0xff
	bne     branch_20cea48
	add     r5, sp, #0x0
	mov     r4, #0x8
.arm
branch_20cea28: @ 20cea28 :arm
	ldmia   r5!, {r0-r3}
	stmia   lr!, {r0-r3}
	subs    r4, r4, #0x1
	bne     branch_20cea28
	ldr     r0, [r5]
	add     sp, sp, #0x84
	str     r0, [lr]
	ldmfd   sp!, {r3-r6,pc}
@ 0x20cea48

.arm
branch_20cea48: @ 20cea48 :arm
	cmp     r0, #0x10
	movhi   r0, #0x10
	strhib  r0, [sp]
	ldrh    r2, [r1]
	ldrb    r0, [sp]
	mov     r3, #0x0
	mov     r2, r2, lsl #1
	sub     r4, r2, #0x40
	cmp     r0, #0x0
	add     r0, r1, #0x40
	mov     r2, r3
	and     r1, r4, #0xff
	ble     branch_20ceaf8
	add     r12, sp, #0x0
.arm
branch_20cea80: @ 20cea80 :arm
	ldrb    r5, [r0]
	add     r6, r12, r2, lsl #3
	add     r4, r0, #0x2
	strb    r5, [r6, #0x4]
	ldrb    r5, [r0, #0x1]
	strb    r5, [r6, #0x5]
	str     r4, [r6, #0x8]
	ldrb    r4, [r6, #0x5]
	add     r4, r4, #0x2
	and     r5, r4, #0xff
	add     r3, r3, r5
	and     r3, r3, #0xff
	cmp     r3, r1
	bls     branch_20ceae4
	mov     r0, #0x0
	strb    r0, [sp]
	mov     r4, #0x8
.arm
branch_20ceac4: @ 20ceac4 :arm
	ldmia   r12!, {r0-r3}
	stmia   lr!, {r0-r3}
	subs    r4, r4, #0x1
	bne     branch_20ceac4
	ldr     r0, [r12]
	add     sp, sp, #0x84
	str     r0, [lr]
	ldmfd   sp!, {r3-r6,pc}
@ 0x20ceae4

.arm
branch_20ceae4: @ 20ceae4 :arm
	ldrb    r4, [sp]
	add     r2, r2, #0x1
	add     r0, r0, r5
	cmp     r2, r4
	blt     branch_20cea80
.arm
branch_20ceaf8: @ 20ceaf8 :arm
	add     r4, sp, #0x0
	mov     r12, #0x8
.arm
branch_20ceb00: @ 20ceb00 :arm
	ldmia   r4!, {r0-r3}
	stmia   lr!, {r0-r3}
	subs    r12, r12, #0x1
	bne     branch_20ceb00
	ldr     r0, [r4]
	str     r0, [lr]
	add     sp, sp, #0x84
	ldmfd   sp!, {r3-r6,pc}
@ 0x20ceb20


.arm
.globl WM_GetNextTgid
WM_GetNextTgid: @ 20ceb20 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0xc
	ldr     r0, [pc, #0x60] @ [0x20ceb90] (=0x2101484)
	ldr     r0, [r0]
	cmp     r0, #1, 16 @ #0x10000
	bne     branch_20ceb68
	bl      RTC_Init
	add     r0, sp, #0x0
	bl      RTC_GetTime
	cmp     r0, #0x0
	bne     branch_20ceb68
	ldr     r2, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	ldr     r1, [pc, #0x34] @ [0x20ceb90] (=0x2101484)
	add     r0, r2, r0, lsl #8
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	str     r0, [r1]
.arm
branch_20ceb68: @ 20ceb68 :arm
	ldr     r1, [pc, #0x20] @ [0x20ceb90] (=0x2101484)
	ldr     r0, [r1]
	add     r0, r0, #0x1
	mov     r0, r0, lsl #16
	mov     r2, r0, lsr #16
	mov     r0, r2, lsl #16
	str     r2, [r1]
	mov     r0, r0, lsr #16
	add     sp, sp, #0xc
	ldmfd   sp!, {pc}
@ 0x20ceb90

.word Unknown_2101484 @ 0x20ceb90



.arm
.globl Function_20ceb94
Function_20ceb94: @ 20ceb94 :arm
	ldr     r12, [pc, #0x4] @ [0x20ceba0] (=WMi_EnableEx)
	mov     r1, #0x0
	bx      r12
@ 0x20ceba0

.word WMi_EnableEx @ 0x20ceba0



.arm
WMi_EnableEx: @ 20ceba4 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x8
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x1
	mov     r1, #0x0
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	addne   sp, sp, #0x8
	ldmnefd sp!, {r3-r5,pc}
	mov     r1, r5
	mov     r0, #0x3
	bl      WMi_SetCallbackTable
	bl      Function_20cdf24
	mov     r3, r0
	ldr     r1, [r3, #0x10]
	mov     r0, #0x3
	stmea   sp, {r1,r4}
	mov     r1, #0x4
	ldmia   r3, {r2,r3}
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r5,pc}
@ 0x20cec08


.arm
.globl Function_20cec08
Function_20cec08: @ 20cec08 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, r0
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	ldmnefd sp!, {r4,pc}
	mov     r1, r4
	mov     r0, #0x4
	bl      WMi_SetCallbackTable
	mov     r0, #0x4
	mov     r1, #0x0
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmfd   sp!, {r4,pc}
@ 0x20cec48


.arm
.globl Function_20cec48
Function_20cec48: @ 20cec48 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, r0
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	ldmnefd sp!, {r4,pc}
	mov     r1, r4
	mov     r0, #0x5
	bl      WMi_SetCallbackTable
	mov     r0, #0x5
	mov     r1, #0x0
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmfd   sp!, {r4,pc}
@ 0x20cec88


.arm
.globl Function_20cec88
Function_20cec88: @ 20cec88 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, #0x2
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	ldmnefd sp!, {r4,pc}
	mov     r1, r4
	mov     r0, #0x6
	bl      WMi_SetCallbackTable
	mov     r0, #0x6
	mov     r1, #0x0
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmfd   sp!, {r4,pc}
@ 0x20cecc8


.arm
.globl Function_20cecc8
Function_20cecc8: @ 20cecc8 :arm
	ldr     r12, [pc, #0x4] @ [0x20cecd4] (=Function_20cecf0)
	mov     r3, #0x0
	bx      r12
@ 0x20cecd4

.word Function_20cecf0 @ 0x20cecd4



.arm
WM_InitializeForListening: @ 20cecd8 :arm
	ldr     r12, [pc, #0xc] @ [0x20cecec] (=Function_20cecf0)
	cmp     r3, #0x0
	mov     r3, #0x1
	orreq   r3, r3, #0x2
	bx      r12
@ 0x20cecec

.word Function_20cecf0 @ 0x20cecec



.arm
Function_20cecf0: @ 20cecf0 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x8
	mov     r5, r1
	mov     r1, r2
	mov     r4, r3
	bl      WM_Init
	cmp     r0, #0x0
	addne   sp, sp, #0x8
	ldmnefd sp!, {r3-r5,pc}
	mov     r1, r5
	mov     r0, #0x0
	bl      WMi_SetCallbackTable
	bl      Function_20cdf24
	mov     r3, r0
	ldr     r1, [r3, #0x10]
	mov     r0, #0x0
	stmea   sp, {r1,r4}
	mov     r1, #0x4
	ldmia   r3, {r2,r3}
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r5,pc}
@ 0x20ced50


.arm
.globl WM_Reset
WM_Reset: @ 20ced50 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      WMi_CheckIdle
	cmp     r0, #0x0
	ldmnefd sp!, {r4,pc}
	mov     r1, r4
	mov     r0, #0x1
	bl      WMi_SetCallbackTable
	mov     r0, #0x1
	mov     r1, #0x0
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmfd   sp!, {r4,pc}
@ 0x20ced88


.arm
.globl WM_End
WM_End: @ 20ced88 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, #0x2
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	ldmnefd sp!, {r4,pc}
	mov     r1, r4
	mov     r0, #0x2
	bl      WMi_SetCallbackTable
	mov     r0, #0x2
	mov     r1, #0x0
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmfd   sp!, {r4,pc}
@ 0x20cedc8


.arm
.globl WMi_StartParentEx
WMi_StartParentEx: @ 20cedc8 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x1
	mov     r1, #0x2
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	ldmnefd sp!, {r3-r5,pc}
	cmp     r4, #0x0
	moveq   r0, #0x6
	ldmeqfd sp!, {r3-r5,pc}
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_20cee10
	ldr     r0, [r4]
	cmp     r0, #0x0
	moveq   r0, #0x6
	ldmeqfd sp!, {r3-r5,pc}
branch_20cee10: @ 20cee10 :arm
	ldrh    r1, [r4, #0x14]
	ldrh    r0, [r4, #0x34]
	cmp     r1, #0x0
	movne   r2, #0x2a
	moveq   r2, #0x0
	add     r0, r0, r2
	cmp     r0, #2, 24 @ #0x200
	bgt     branch_20cee4c
	ldrh    r0, [r4, #0x36]
	cmp     r1, #0x0
	movne   r1, #0x6
	moveq   r1, #0x0
	add     r0, r0, r1
	cmp     r0, #2, 24 @ #0x200
	ble     branch_20cee54
branch_20cee4c: @ 20cee4c :arm
	mov     r0, #0x6
	ldmfd   sp!, {r3-r5,pc}

branch_20cee54: @ 20cee54 :arm
	mov     r0, r4
	bl      WmCheckParentParameter
	mov     r1, r5
	mov     r0, #0x7
	bl      WMi_SetCallbackTable
	mov     r0, r4
	mov     r1, #0x40
	bl      DC_StoreRange
	ldrh    r1, [r4, #0x4]
	cmp     r1, #0x0
	beq     branch_20cee88
	ldr     r0, [r4]
	bl      DC_StoreRange
branch_20cee88: @ 20cee88 :arm
	mov     r2, r4
	mov     r0, #0x7
	mov     r1, #0x1
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmfd   sp!, {r3-r5,pc}
@ 0x20ceea4


.arm
WmCheckParentParameter: @ 20ceea4 :arm
	ldrh    r1, [r0, #0x4]
	cmp     r1, #0x70
	movhi   r0, #0x0
	bxhi    lr
	ldrh    r1, [r0, #0x18]
	cmp     r1, #0xa
	bcc     branch_20ceec8
	cmp     r1, #250, 30 @ #0x3e8
	bls     branch_20ceed0
.arm
branch_20ceec8: @ 20ceec8 :arm
	mov     r0, #0x0
	bx      lr
@ 0x20ceed0

.arm
branch_20ceed0: @ 20ceed0 :arm
	ldrh    r0, [r0, #0x32]
	cmp     r0, #0x1
	bcc     branch_20ceee4
	cmp     r0, #0xe
	bls     branch_20ceeec
.arm
branch_20ceee4: @ 20ceee4 :arm
	mov     r0, #0x0
	bx      lr
@ 0x20ceeec

.arm
branch_20ceeec: @ 20ceeec :arm
	mov     r0, #0x1
	bx      lr
@ 0x20ceef4


.arm
WMi_StartParentEx_0: @ 20ceef4 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x1
	mov     r1, #0x2
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	ldmnefd sp!, {r3-r5,pc}
	bl      Function_20cdf24
	add     r1, r0, #1, 24 @ #0x100
	mov     r2, #0x0
	strh    r2, [r1, #0x50]
	str     r2, [r0, #0x14c]
	mov     r1, r5
	mov     r0, #0x8
	bl      WMi_SetCallbackTable
	mov     r2, r4
	mov     r0, #0x8
	mov     r1, #0x1
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmfd   sp!, {r3-r5,pc}
@ 0x20cef50


.arm
.globl WM_StartParent_9
WM_StartParent_9: @ 20cef50 :arm
	ldr     r12, [pc, #0x4] @ [0x20cef5c] (=0x20ceef4)
	mov     r1, #0x1
	bx      r12
@ 0x20cef5c

.word WMi_StartParentEx_0 @ 0x20cef5c



.arm
WM_EndParent: @ 20cef60 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, #0x7
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	ldmnefd sp!, {r4,pc}
	mov     r1, r4
	mov     r0, #0x9
	bl      WMi_SetCallbackTable
	mov     r0, #0x9
	mov     r1, #0x0
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmfd   sp!, {r4,pc}
@ 0x20cefa0


.arm
.globl WM_StartScan
WM_StartScan: @ 20cefa0 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x10
	mov     r5, r0
	mov     r0, #0x3
	mov     r4, r1
	mov     r2, r0
	mov     r1, #0x2
	mov     r3, #0x5
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	addne   sp, sp, #0x10
	ldmnefd sp!, {r3-r5,pc}
	cmp     r4, #0x0
	addeq   sp, sp, #0x10
	moveq   r0, #0x6
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r0, [r4]
	cmp     r0, #0x0
	addeq   sp, sp, #0x10
	moveq   r0, #0x6
	ldmeqfd sp!, {r3-r5,pc}
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x1
	bcc     branch_20cf008
	cmp     r0, #0xe
	bls     branch_20cf014
branch_20cf008: @ 20cf008 :arm
	add     sp, sp, #0x10
	mov     r0, #0x6
	ldmfd   sp!, {r3-r5,pc}

branch_20cf014: @ 20cf014 :arm
	mov     r1, r5
	mov     r0, #0xa
	bl      WMi_SetCallbackTable
	mov     r0, #0xa
	strh    r0, [sp]
	ldrh    r2, [r4, #0x4]
	add     r0, sp, #0x0
	mov     r1, #0x10
	strh    r2, [sp, #0x2]
	ldr     r2, [r4]
	str     r2, [sp, #0x4]
	ldrh    r2, [r4, #0x6]
	strh    r2, [sp, #0x8]
	ldrb    r2, [r4, #0x8]
	strb    r2, [sp, #0xa]
	ldrb    r2, [r4, #0x9]
	strb    r2, [sp, #0xb]
	ldrb    r2, [r4, #0xa]
	strb    r2, [sp, #0xc]
	ldrb    r2, [r4, #0xb]
	strb    r2, [sp, #0xd]
	ldrb    r2, [r4, #0xc]
	strb    r2, [sp, #0xe]
	ldrb    r2, [r4, #0xd]
	strb    r2, [sp, #0xf]
	bl      WMi_SendCommandDirect
	cmp     r0, #0x0
	moveq   r0, #0x2
	add     sp, sp, #0x10
	ldmfd   sp!, {r3-r5,pc}
@ 0x20cf08c



.arm
.globl WM_StartScanEx
WM_StartScanEx: @ 20cf08c :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x3c
	mov     r5, r0
	mov     r0, #0x3
	mov     r4, r1
	mov     r2, r0
	mov     r1, #0x2
	mov     r3, #0x5
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	addne   sp, sp, #0x3c
	ldmnefd sp!, {r4,r5,pc}
	cmp     r4, #0x0
	addeq   sp, sp, #0x3c
	moveq   r0, #0x6
	ldmeqfd sp!, {r4,r5,pc}
	ldr     r0, [r4]
	cmp     r0, #0x0
	addeq   sp, sp, #0x3c
	moveq   r0, #0x6
	ldmeqfd sp!, {r4,r5,pc}
	ldrh    r0, [r4, #0x4]
	cmp     r0, #1, 22 @ #0x400
	addhi   sp, sp, #0x3c
	movhi   r0, #0x6
	ldmhifd sp!, {r4,r5,pc}
	ldrh    r0, [r4, #0x12]
	cmp     r0, #0x20
	addhi   sp, sp, #0x3c
	movhi   r0, #0x6
	ldmhifd sp!, {r4,r5,pc}
	ldrh    r0, [r4, #0x10]
	cmp     r0, #0x0
	cmpne   r0, #0x1
	cmpne   r0, #0x2
	cmpne   r0, #0x3
	addne   sp, sp, #0x3c
	movne   r0, #0x6
	ldmnefd sp!, {r4,r5,pc}
	add     r0, r0, #0xfe
	add     r0, r0, #255, 24 @ #0xff00
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	cmp     r0, #0x1
	bhi     branch_20cf154
	ldrh    r0, [r4, #0x34]
	cmp     r0, #0x20
	addhi   sp, sp, #0x3c
	movhi   r0, #0x6
	ldmhifd sp!, {r4,r5,pc}
.arm
branch_20cf154: @ 20cf154 :arm
	mov     r1, r5
	mov     r0, #0x26
	bl      WMi_SetCallbackTable
	mov     r0, #0x26
	strh    r0, [sp]
	ldrh    r2, [r4, #0x6]
	add     r1, sp, #0xc
	add     r0, r4, #0xa
	strh    r2, [sp, #0x2]
	ldr     r3, [r4]
	mov     r2, #0x6
	str     r3, [sp, #0x4]
	ldrh    r3, [r4, #0x4]
	strh    r3, [sp, #0x8]
	ldrh    r3, [r4, #0x8]
	strh    r3, [sp, #0xa]
	bl      MI_CpuCopy8
	ldrh    r2, [r4, #0x10]
	add     r1, sp, #0x16
	add     r0, r4, #0x14
	strh    r2, [sp, #0x12]
	ldrh    r3, [r4, #0x34]
	mov     r2, #0x20
	strh    r3, [sp, #0x36]
	ldrh    r3, [r4, #0x12]
	strh    r3, [sp, #0x14]
	bl      MI_CpuCopy8
	add     r0, sp, #0x0
	mov     r1, #0x3c
	bl      WMi_SendCommandDirect
	cmp     r0, #0x0
	moveq   r0, #0x2
	add     sp, sp, #0x3c
	ldmfd   sp!, {r4,r5,pc}
@ 0x20cf1dc


.arm
.globl WM_EndScan
WM_EndScan: @ 20cf1dc :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, #0x5
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	ldmnefd sp!, {r4,pc}
	mov     r1, r4
	mov     r0, #0xb
	bl      WMi_SetCallbackTable
	mov     r0, #0xb
	mov     r1, #0x0
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmfd   sp!, {r4,pc}
@ 0x20cf21c


.arm
.globl WM_StartConnectEx
WM_StartConnectEx: @ 20cf21c :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #0x28
	mov     r7, r0
	mov     r6, r1
	mov     r0, #0x1
	mov     r1, #0x2
	mov     r5, r2
	mov     r4, r3
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	addne   sp, sp, #0x28
	ldmnefd sp!, {r3-r7,pc}
	cmp     r6, #0x0
	addeq   sp, sp, #0x28
	moveq   r0, #0x6
	ldmeqfd sp!, {r3-r7,pc}
	ldrh    r1, [r6]
	mov     r0, r6
	mov     r1, r1, lsl #1
	bl      DC_StoreRange
	bl      Function_20cdf24
	add     r1, r0, #1, 24 @ #0x100
	mov     r2, #0x0
	strh    r2, [r1, #0x50]
	str     r2, [r0, #0x14c]
	mov     r1, r7
	mov     r0, #0xc
	bl      WMi_SetCallbackTable
	mov     r0, #0xc
	strh    r0, [sp]
	str     r6, [sp, #0x4]
	cmp     r5, #0x0
	mov     r2, #0x18
	beq     branch_20cf2b4
	add     r1, sp, #0x8
	mov     r0, r5
	bl      MI_CpuCopy8
	b       branch_20cf2c0

branch_20cf2b4: @ 20cf2b4 :arm
	add     r0, sp, #0x8
	mov     r1, #0x0
	bl      MI_CpuFill8
branch_20cf2c0: @ 20cf2c0 :arm
	ldrh    r2, [sp, #0x40]
	add     r0, sp, #0x0
	mov     r1, #0x28
	str     r4, [sp, #0x20]
	strh    r2, [sp, #0x26]
	bl      WMi_SendCommandDirect
	cmp     r0, #0x0
	moveq   r0, #0x2
	add     sp, sp, #0x28
	ldmfd   sp!, {r3-r7,pc}
@ 0x20cf2e8


.arm
.globl WM_Disconnect
WM_Disconnect: @ 20cf2e8 :arm
	stmfd   sp!, {r4-r6,lr}
	sub     sp, sp, #0x8
	mov     r5, r0
	mov     r4, r1
	bl      Function_20cdf24
	mov     r1, #0xa
	mov     r6, r0
	str     r1, [sp]
	mov     r12, #0xb
	mov     r0, #0x5
	mov     r1, #0x7
	mov     r2, #0x9
	mov     r3, #0x8
	str     r12, [sp, #0x4]
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	addne   sp, sp, #0x8
	ldmnefd sp!, {r4-r6,pc}
	ldr     r1, [r6, #0x4]
	ldrh    r0, [r1]
	cmp     r0, #0x7
	cmpne   r0, #0x9
	bne     branch_20cf394
	cmp     r4, #0x1
	bcc     branch_20cf354
	cmp     r4, #0xf
	bls     branch_20cf360
branch_20cf354: @ 20cf354 :arm
	add     sp, sp, #0x8
	mov     r0, #0x6
	ldmfd   sp!, {r4-r6,pc}

branch_20cf360: @ 20cf360 :arm
	add     r0, r1, #0x82
	add     r0, r0, #1, 24 @ #0x100
	mov     r1, #0x2
	bl      DC_InvalidateRange
	ldr     r0, [r6, #0x4]
	mov     r1, #0x1
	add     r0, r0, #0x100
	ldrh    r0, [r0, #0x82]
	tst     r0, r1, lsl r4
	bne     branch_20cf3a4
	add     sp, sp, #0x8
	mov     r0, #0x7
	ldmfd   sp!, {r4-r6,pc}

branch_20cf394: @ 20cf394 :arm
	cmp     r4, #0x0
	addne   sp, sp, #0x8
	movne   r0, #0x6
	ldmnefd sp!, {r4-r6,pc}
branch_20cf3a4: @ 20cf3a4 :arm
	mov     r1, r5
	mov     r0, #0xd
	bl      WMi_SetCallbackTable
	mov     r1, #0x1
	mov     r2, r1, lsl r4
	mov     r0, #0xd
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r6,pc}
@ 0x20cf3d0


.arm
WMi_StartMP: @ 20cf3d0 :arm
	stmfd   sp!, {r3-r9,lr}
	sub     sp, sp, #0x40
	mov     r8, r0
	mov     r7, r1
	mov     r6, r2
	mov     r5, r3
	bl      Function_20cdf24
	ldr     r4, [r0, #0x4]
	mov     r0, #0x2
	mov     r1, #0x7
	mov     r2, #0x8
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	addne   sp, sp, #0x40
	ldmnefd sp!, {r3-r9,pc}
	add     r0, r4, #98, 30 @ #0x188
	mov     r1, #0x2
	bl      DC_InvalidateRange
	add     r0, r4, #0xc6
	mov     r1, #0x2
	bl      DC_InvalidateRange
	add     r0, r4, #1, 24 @ #0x100
	ldrh    r0, [r0, #0x88]
	cmp     r0, #0x0
	ldrneh  r0, [r4, #0xc6]
	cmpne   r0, #0x1
	addne   sp, sp, #0x40
	movne   r0, #0x3
	ldmnefd sp!, {r3-r9,pc}
	add     r0, r4, #0xc
	mov     r1, #0x4
	bl      DC_InvalidateRange
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x1
	addeq   sp, sp, #0x40
	moveq   r0, #0x3
	ldmeqfd sp!, {r3-r9,pc}
	tst     r6, #0x3f
	addne   sp, sp, #0x40
	movne   r0, #0x6
	ldmnefd sp!, {r3-r9,pc}
	ldrh    r9, [sp, #0x60]
	tst     r9, #0x1f
	addne   sp, sp, #0x40
	movne   r0, #0x6
	ldmnefd sp!, {r3-r9,pc}
	add     r0, r4, #0x9c
	mov     r1, #0x2
	bl      DC_InvalidateRange
	ldrh    r0, [r4, #0x9c]
	cmp     r0, #0x0
	bne     branch_20cf4c8
	bl      WM_GetMPReceiveBufferSize
	cmp     r6, r0
	addlt   sp, sp, #0x40
	movlt   r0, #0x6
	ldmltfd sp!, {r3-r9,pc}
	bl      WM_GetMPSendBufferSize
	cmp     r9, r0
	addlt   sp, sp, #0x40
	movlt   r0, #0x6
	ldmltfd sp!, {r3-r9,pc}
branch_20cf4c8: @ 20cf4c8 :arm
	mov     r1, r8
	mov     r0, #0xe
	bl      WMi_SetCallbackTable
	add     r1, sp, #0x0
	mov     r0, #0x0
	mov     r2, #0x40
	bl      MIi_CpuClear32
	mov     r4, r6, lsr #1
	ldrh    r3, [sp, #0x60]
	mov     r6, #0xe
	add     r1, sp, #0x14
	mov     r0, #0x0
	mov     r2, #0x1c
	strh    r6, [sp]
	str     r7, [sp, #0x4]
	str     r4, [sp, #0x8]
	str     r5, [sp, #0xc]
	str     r3, [sp, #0x10]
	bl      MIi_CpuClear32
	ldr     r0, [sp, #0x64]
	add     r1, sp, #0x30
	mov     r2, #0x10
	bl      MI_CpuCopy32
	add     r0, sp, #0x0
	mov     r1, #0x40
	bl      WMi_SendCommandDirect
	cmp     r0, #0x0
	moveq   r0, #0x2
	add     sp, sp, #0x40
	ldmfd   sp!, {r3-r9,pc}
@ 0x20cf540


.arm
WM_StartMPEx: @ 20cf540 :arm
	stmfd   sp!, {r4-r8,lr}
	sub     sp, sp, #0x18
	mov     r7, r1
	mov     r8, r0
	mov     r6, r2
	add     r1, sp, #0x8
	mov     r0, #0x0
	mov     r2, #0x10
	mov     r5, r3
	ldr     r4, [sp, #0x34]
	bl      MIi_CpuClear32
	ldr     r1, [sp, #0x48]
	ldrh    r12, [sp, #0x38]
	ldr     r0, [sp, #0x44]
	ldr     lr, [pc, #0x60] @ [0x20cf5e0] (=0x1e03)
	ldr     r3, [sp, #0x3c]
	ldr     r2, [sp, #0x40]
	strb    r1, [sp, #0x16]
	cmp     r0, #0x0
	cmpne   r4, #0x0
	strb    r3, [sp, #0x14]
	strb    r2, [sp, #0x15]
	ldrh    r1, [sp, #0x30]
	str     lr, [sp, #0x8]
	orrne   r0, lr, #0x4
	strne   r0, [sp, #0x8]
	strh    r12, [sp, #0x12]
	strh    r4, [sp, #0xc]
	strh    r4, [sp, #0xe]
	strneh  r4, [sp, #0x10]
	str     r1, [sp]
	add     r4, sp, #0x8
	mov     r0, r8
	mov     r1, r7
	mov     r2, r6
	mov     r3, r5
	str     r4, [sp, #0x4]
	bl      WMi_StartMP
	add     sp, sp, #0x18
	ldmfd   sp!, {r4-r8,pc}
@ 0x20cf5e0

.word 0x1e03 @ 0x20cf5e0



.arm
.globl WM_StartMP
WM_StartMP: @ 20cf5e4 :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #0x18
	mov     r6, r1
	mov     r7, r0
	mov     r5, r2
	add     r1, sp, #0x8
	mov     r0, #0x0
	mov     r2, #0x10
	mov     r4, r3
	bl      MIi_CpuClear32
	ldrh    r12, [sp, #0x34]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	ldrh    lr, [sp, #0x30]
	strh    r12, [sp, #0xc]
	strh    r12, [sp, #0xe]
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	mov     r3, r4
	add     r12, sp, #0x8
	str     lr, [sp]
	str     r12, [sp, #0x4]
	bl      WMi_StartMP
	add     sp, sp, #0x18
	ldmfd   sp!, {r3-r7,pc}
@ 0x20cf64c


.arm
.globl WM_SetMPDataToPortEx
WM_SetMPDataToPortEx: @ 20cf64c :arm
	stmfd   sp!, {r4-r9,lr}
	sub     sp, sp, #0x14
	mov     r9, r0
	mov     r8, r1
	mov     r7, r2
	mov     r6, r3
	mov     r4, #0x1
	bl      Function_20cdf24
	ldr     r5, [r0, #0x4]
	mov     r0, #0x2
	mov     r1, #0x9
	mov     r2, #0xa
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	addne   sp, sp, #0x14
	ldmnefd sp!, {r4-r9,pc}
	add     r0, r5, #98, 30 @ #0x188
	mov     r1, #0x2
	bl      DC_InvalidateRange
	add     r0, r5, #1, 24 @ #0x100
	ldrh    r0, [r0, #0x88]
	cmp     r0, #0x0
	bne     branch_20cf6cc
	add     r0, r5, #0x82
	add     r0, r0, #1, 24 @ #0x100
	mov     r1, #0x2
	bl      DC_InvalidateRange
	add     r2, r5, #1, 24 @ #0x100
	add     r0, r5, #0x86
	mov     r1, #0x2
	ldrh    r4, [r2, #0x82]
	bl      DC_InvalidateRange
.arm
branch_20cf6cc: @ 20cf6cc :arm
	cmp     r7, #0x0
	addeq   sp, sp, #0x14
	moveq   r0, #0x6
	ldmeqfd sp!, {r4-r9,pc}
	cmp     r4, #0x0
	addeq   sp, sp, #0x14
	moveq   r0, #0x7
	ldmeqfd sp!, {r4-r9,pc}
	add     r0, r5, #0x7c
	mov     r1, #0x2
	bl      DC_InvalidateRange
	ldr     r0, [r5, #0x7c]
	cmp     r7, r0
	addeq   sp, sp, #0x14
	moveq   r0, #0x6
	ldmeqfd sp!, {r4-r9,pc}
	cmp     r6, #2, 24 @ #0x200
	addhi   sp, sp, #0x14
	movhi   r0, #0x6
	ldmhifd sp!, {r4-r9,pc}
	cmp     r6, #0x0
	addeq   sp, sp, #0x14
	moveq   r0, #0x6
	ldmeqfd sp!, {r4-r9,pc}
	mov     r0, r7
	mov     r1, r6
	bl      DC_StoreRange
	ldrh    r2, [sp, #0x30]
	ldrh    r1, [sp, #0x34]
	ldrh    r0, [sp, #0x38]
	str     r2, [sp]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r9, [sp, #0xc]
	mov     r2, r7
	mov     r3, r6
	mov     r0, #0xf
	mov     r1, #0x7
	str     r8, [sp, #0x10]
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	add     sp, sp, #0x14
	ldmfd   sp!, {r4-r9,pc}
@ 0x20cf77c


.arm
WM_EndMP: @ 20cf77c :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	bl      Function_20cdf24
	mov     r4, r0
	mov     r0, #0x2
	mov     r1, #0x9
	mov     r2, #0xa
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	ldmnefd sp!, {r3-r5,pc}
	ldr     r0, [r4, #0x4]
	mov     r1, #0x4
	add     r0, r0, #0xc
	bl      DC_InvalidateRange
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x0
	moveq   r0, #0x3
	ldmeqfd sp!, {r3-r5,pc}
	mov     r1, r5
	mov     r0, #0x10
	bl      WMi_SetCallbackTable
	mov     r0, #0x10
	mov     r1, #0x0
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmfd   sp!, {r3-r5,pc}
@ 0x20cf7ec


.arm
.globl Function_20cf7ec
Function_20cf7ec: @ 20cf7ec :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	bl      Function_20cdf24
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, #0x8
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	ldmnefd sp!, {r3-r7,pc}
	ldr     r0, [r4, #0x4]
	mov     r1, #0x4
	add     r0, r0, #0x10
	bl      DC_InvalidateRange
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x1
	moveq   r0, #0x3
	ldmeqfd sp!, {r3-r7,pc}
	cmp     r5, #0x10
	movcc   r0, #0x6
	ldmccfd sp!, {r3-r7,pc}
	cmp     r6, #0x0
	moveq   r0, #0x6
	ldmeqfd sp!, {r3-r7,pc}
	mov     r0, r6
	mov     r1, r5
	bl      DC_StoreRange
	mov     r1, r7
	mov     r0, #0x11
	bl      WMi_SetCallbackTable
	mov     r2, r6
	mov     r3, r5
	mov     r0, #0x11
	mov     r1, #0x2
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmfd   sp!, {r3-r7,pc}
@ 0x20cf88c


.arm
.globl WM_SetDCFData
WM_SetDCFData: @ 20cf88c :arm
	stmfd   sp!, {r4-r8,lr}
	sub     sp, sp, #0x10
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bl      Function_20cdf24
	mov     r8, r0
	mov     r0, #0x1
	mov     r1, #0xb
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	addne   sp, sp, #0x10
	ldmnefd sp!, {r4-r8,pc}
	ldr     r0, [r8, #0x4]
	mov     r1, #0x4
	add     r0, r0, #0x10
	bl      DC_InvalidateRange
	ldr     r0, [r8, #0x4]
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x0
	addeq   sp, sp, #0x10
	moveq   r0, #0x3
	ldmeqfd sp!, {r4-r8,pc}
	ldr     r0, [pc, #0x60] @ [0x20cf954] (=0x5e4)
	cmp     r4, r0
	addhi   sp, sp, #0x10
	movhi   r0, #0x6
	ldmhifd sp!, {r4-r8,pc}
	mov     r0, r5
	mov     r1, r4
	bl      DC_StoreRange
	mov     r1, r7
	mov     r0, #0x12
	bl      WMi_SetCallbackTable
	add     r1, sp, #0x8
	mov     r0, r6
	mov     r2, #0x6
	bl      MI_CpuCopy8
	str     r5, [sp]
	str     r4, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0xc]
	mov     r0, #0x12
	mov     r1, #0x4
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	add     sp, sp, #0x10
	ldmfd   sp!, {r4-r8,pc}
@ 0x20cf954

.word 0x5e4 @ 0x20cf954



.arm
.globl Function_20cf958
Function_20cf958: @ 20cf958 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	bl      Function_20cdf24
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, #0xb
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	ldmnefd sp!, {r3-r5,pc}
	ldr     r0, [r4, #0x4]
	mov     r1, #0x4
	add     r0, r0, #0x10
	bl      DC_InvalidateRange
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x0
	moveq   r0, #0x3
	ldmeqfd sp!, {r3-r5,pc}
	mov     r1, r5
	mov     r0, #0x13
	bl      WMi_SetCallbackTable
	mov     r0, #0x13
	mov     r1, #0x0
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmfd   sp!, {r3-r5,pc}
@ 0x20cf9c4


.arm
WM_StartDataSharing: @ 20cf9c4 :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0xc
	mov     r10, r0
	mov     r7, r1
	mov     r6, r2
	mov     r0, #0x2
	mov     r1, #0x9
	mov     r2, #0xa
	mov     r5, r3
	mov     r8, #0x1
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	addne   sp, sp, #0xc
	ldmnefd sp!, {r4-r11,pc}
	cmp     r10, #0x0
	addeq   sp, sp, #0xc
	moveq   r0, #0x6
	ldmeqfd sp!, {r4-r11,pc}
	cmp     r7, #0x10
	addcs   sp, sp, #0xc
	movcs   r0, #0x6
	ldmcsfd sp!, {r4-r11,pc}
	cmp     r6, #0x0
	addeq   sp, sp, #0xc
	moveq   r0, #0x6
	ldmeqfd sp!, {r4-r11,pc}
	bl      WM_GetAID
	movs    r4, r0
	bne     branch_20cfa40
	bl      WM_GetConnectedAIDs
	mov     r8, r0
.arm
branch_20cfa40: @ 20cfa40 :arm
	mov     r1, r10
	mov     r0, #0x0
	mov     r2, #130, 28 @ #0x820
	bl      MIi_CpuClearFast
	add     r0, r10, #2, 22 @ #0x800
	mov     r2, #0x0
	strh    r2, [r0, #0x8]
	strh    r2, [r0, #0xa]
	strh    r2, [r0, #0xc]
	strh    r5, [r0, #0x10]
	strh    r7, [r0, #0x16]
	strh    r2, [r0, #0xe]
	mov     r0, #0x1
	ldr     r1, [sp, #0x30]
	orr     r0, r6, r0, lsl r4
	cmp     r1, #0x0
	mov     r0, r0, lsl #16
	movne   r2, #0x1
	add     r1, r10, #2, 22 @ #0x800
	strh    r2, [r1, #0x18]
	mov     r0, r0, lsr #16
	strh    r0, [r1, #0xe]
	bl      Function_20d2fe4
	add     r3, r10, #2, 22 @ #0x800
	mul     r1, r5, r0
	strh    r0, [r3, #0x12]
	strh    r1, [r3, #0x14]
	ldrh    r0, [r3, #0x14]
	cmp     r0, #127, 30 @ #0x1fc
	bls     branch_20cfacc
	mov     r0, #0x0
	strh    r0, [r3, #0xe]
	add     sp, sp, #0xc
	mov     r0, #0x6
	ldmfd   sp!, {r4-r11,pc}
@ 0x20cfacc

.arm
branch_20cfacc: @ 20cfacc :arm
	add     r0, r0, #0x4
	strh    r0, [r3, #0x14]
	mov     r0, #0x1
	strh    r0, [r3, #0x1c]
	cmp     r4, #0x0
	bne     branch_20cfbe4
	orr     r4, r8, #0x1
	mov     r2, #0x0
.arm
branch_20cfaec: @ 20cfaec :arm
	ldrh    r1, [r3, #0xe]
	mov     r0, r2, lsl #9
	add     r2, r2, #0x1
	and     r1, r1, r4
	strh    r1, [r10, r0]
	cmp     r2, #0x4
	blt     branch_20cfaec
	ldr     r1, [pc, #0xf8] @ [0x20cfc08] (=0x20d0080)
	mov     r0, r7
	mov     r2, r10
	bl      WM_SetPortCallback
	mov     r7, r10
	mov     r9, #0x0
	add     r4, r10, #2, 22 @ #0x800
	mov     r6, #0x1
	ldr     r11, [pc, #0xdc] @ [0x20cfc0c] (=0x20cffa8)
	ldr     r5, [pc, #0xdc] @ [0x20cfc10] (=0xffff)
	b       branch_20cfbc8
@ 0x20cfb34

.arm
branch_20cfb34: @ 20cfb34 :arm
	ldrh    r2, [r4, #0x8]
	mov     r0, r11
	mov     r1, r10
	add     r2, r2, #0x1
	and     r2, r2, #0x3
	strh    r2, [r4, #0x8]
	ldrh    r3, [r4, #0xe]
	mov     r2, r7
	and     r3, r3, r8
	mov     r3, r3, lsl #16
	mov     r3, r3, lsr #16
	str     r3, [sp]
	ldrh    r3, [r4, #0x16]
	stmfa   sp, {r3,r6}
	ldrh    r3, [r4, #0x14]
	bl      WM_SetMPDataToPortEx
	cmp     r0, #0x7
	bne     branch_20cfb9c
	add     r0, r10, r9, lsl #1
	add     r0, r0, #2, 22 @ #0x800
	strh    r5, [r0]
	ldrh    r0, [r4, #0xa]
	add     r0, r0, #0x1
	and     r0, r0, #0x3
	strh    r0, [r4, #0xa]
	b       branch_20cfbc0
@ 0x20cfb9c

.arm
branch_20cfb9c: @ 20cfb9c :arm
	cmp     r0, #0x0
	cmpne   r0, #0x2
	beq     branch_20cfbc0
	add     r0, r10, #2, 22 @ #0x800
	mov     r1, #0x5
	strh    r1, [r0, #0x1c]
	add     sp, sp, #0xc
	mov     r0, #0x1
	ldmfd   sp!, {r4-r11,pc}
@ 0x20cfbc0

.arm
branch_20cfbc0: @ 20cfbc0 :arm
	add     r7, r7, #2, 24 @ #0x200
	add     r9, r9, #0x1
.arm
branch_20cfbc8: @ 20cfbc8 :arm
	ldrh    r0, [r4, #0x18]
	cmp     r0, #0x1
	movne   r0, #0x1
	moveq   r0, #0x2
	cmp     r9, r0
	blt     branch_20cfb34
	b       branch_20cfbfc
@ 0x20cfbe4

.arm
branch_20cfbe4: @ 20cfbe4 :arm
	ldr     r1, [pc, #0x28] @ [0x20cfc14] (=0x20d01ac)
	mov     r4, #0x3
	mov     r0, r7
	mov     r2, r10
	strh    r4, [r3, #0xa]
	bl      WM_SetPortCallback
.arm
branch_20cfbfc: @ 20cfbfc :arm
	mov     r0, #0x0
	add     sp, sp, #0xc
	ldmfd   sp!, {r4-r11,pc}
@ 0x20cfc08

.word Function_20d0080 @ 0x20cfc08
.word Function_20cffa8 @ 0x20cfc0c
.word 0xffff @ 0x20cfc10
.word Function_20d01ac @ 0x20cfc14



.arm
Function_20cfc18: @ 20cfc18 :arm
	stmfd   sp!, {r4,lr}
	movs    r4, r0
	moveq   r0, #0x6
	ldmeqfd sp!, {r4,pc}
	add     r0, r4, #2, 22 @ #0x800
	ldrh    r1, [r0, #0xe]
	cmp     r1, #0x0
	moveq   r0, #0x3
	ldmeqfd sp!, {r4,pc}
	ldrh    r0, [r0, #0x16]
	mov     r1, #0x0
	mov     r2, r1
	bl      WM_SetPortCallback
	add     r1, r4, #2, 22 @ #0x800
	mov     r0, #0x0
	strh    r0, [r1, #0xe]
	strh    r0, [r1, #0x1c]
	ldmfd   sp!, {r4,pc}
@ 0x20cfc60


.arm
WM_StepDataSharing: @ 20cfc60 :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0xc
	mov     r10, r0
	mov     r9, r1
	mov     r8, r2
	mov     r0, #0x2
	mov     r1, #0x9
	mov     r2, #0xa
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	addne   sp, sp, #0xc
	ldmnefd sp!, {r4-r11,pc}
	cmp     r10, #0x0
	addeq   sp, sp, #0xc
	moveq   r0, #0x6
	ldmeqfd sp!, {r4-r11,pc}
	cmp     r9, #0x0
	addeq   sp, sp, #0xc
	moveq   r0, #0x6
	ldmeqfd sp!, {r4-r11,pc}
	cmp     r8, #0x0
	addeq   sp, sp, #0xc
	moveq   r0, #0x6
	ldmeqfd sp!, {r4-r11,pc}
	bl      WM_GetAID
	movs    r5, r0
	bne     branch_20cfcd4
	bl      WM_GetConnectedAIDs
	mov     r4, r0
.arm
branch_20cfcd4: @ 20cfcd4 :arm
	add     r0, r10, #2, 22 @ #0x800
	ldrh    r0, [r0, #0x1c]
	cmp     r0, #0x5
	addeq   sp, sp, #0xc
	moveq   r0, #0x1
	ldmeqfd sp!, {r4-r11,pc}
	cmp     r0, #0x1
	cmpne   r0, #0x4
	addne   sp, sp, #0xc
	movne   r0, #0x3
	ldmnefd sp!, {r4-r11,pc}
	cmp     r5, #0x0
	mov     r7, #0x5
	bne     branch_20cfe98
	mov     r5, #0x0
	mov     r11, r5
	cmp     r0, #0x4
	bne     branch_20cfdbc
	add     r12, r10, #2, 22 @ #0x800
	mov     r2, #0x1
	strh    r2, [r12, #0x1c]
	ldrh    r3, [r12, #0xe]
	ldrh    r1, [r12, #0x8]
	ldr     r0, [pc, #0x268] @ [0x20cffa0] (=0x20cffa8)
	and     r3, r3, r4
	mov     r3, r3, lsl #16
	mov     r3, r3, lsr #16
	str     r3, [sp]
	ldrh    r3, [r12, #0x16]
	add     r1, r1, #0x3
	and     r6, r1, #0x3
	str     r3, [sp, #0x4]
	str     r2, [sp, #0x8]
	ldrh    r3, [r12, #0x14]
	mov     r1, r10
	add     r2, r10, r6, lsl #9
	bl      WM_SetMPDataToPortEx
	cmp     r0, #0x7
	bne     branch_20cfd98
	add     r0, r10, r6, lsl #1
	ldr     r1, [pc, #0x228] @ [0x20cffa4] (=0xffff)
	add     r0, r0, #2, 22 @ #0x800
	strh    r1, [r0]
	add     r0, r10, #2, 22 @ #0x800
	ldrh    r1, [r0, #0xa]
	add     r1, r1, #0x1
	and     r1, r1, #0x3
	strh    r1, [r0, #0xa]
	b       branch_20cfdbc
@ 0x20cfd98

.arm
branch_20cfd98: @ 20cfd98 :arm
	cmp     r0, #0x0
	cmpne   r0, #0x2
	beq     branch_20cfdbc
	add     r0, r10, #2, 22 @ #0x800
	mov     r1, r7
	strh    r1, [r0, #0x1c]
	add     sp, sp, #0xc
	mov     r0, #0x1
	ldmfd   sp!, {r4-r11,pc}
@ 0x20cfdbc

.arm
branch_20cfdbc: @ 20cfdbc :arm
	add     r0, r10, #2, 22 @ #0x800
	ldrh    r2, [r0, #0xc]
	ldrh    r1, [r0, #0xa]
	cmp     r2, r1
	beq     branch_20cfe54
	mov     r5, r2, lsl #9
	ldrh    r3, [r10, r5]
	mov     r1, r8
	mov     r2, #2, 24 @ #0x200
	orr     r3, r3, #0x1
	strh    r3, [r10, r5]
	ldrh    r0, [r0, #0xc]
	add     r0, r10, r0, lsl #9
	bl      MIi_CpuCopy16
	add     r1, r10, #2, 22 @ #0x800
	ldrh    r0, [r1, #0xc]
	mov     r5, #0x1
	mov     r7, #0x0
	add     r0, r10, r0, lsl #1
	add     r0, r0, #2, 22 @ #0x800
	ldrh    r0, [r0]
	strh    r0, [r1, #0x1a]
	ldrh    r0, [r1, #0xc]
	add     r0, r0, #0x1
	and     r0, r0, #0x3
	strh    r0, [r1, #0xc]
	ldrh    r0, [r1, #0x18]
	cmp     r0, #0x0
	bne     branch_20cfe50
	cmp     r4, #0x0
	beq     branch_20cfe50
	ldrh    r0, [r1, #0x8]
	mov     r0, r0, lsl #9
	ldrh    r0, [r10, r0]
	cmp     r0, #0x1
	moveq   r11, r5
	beq     branch_20cfe54
.arm
branch_20cfe50: @ 20cfe50 :arm
	mov     r11, #0x0
.arm
branch_20cfe54: @ 20cfe54 :arm
	mov     r0, r10
	mov     r1, #0x0
	bl      WmDataSharingSendDataSet
	cmp     r5, #0x0
	beq     branch_20cff94
	mov     r0, r10
	mov     r2, r9
	mov     r1, #0x0
	bl      WmDataSharingReceiveData
	add     r0, r10, #2, 22 @ #0x800
	ldrh    r0, [r0, #0x18]
	cmp     r0, #0x0
	bne     branch_20cff94
	mov     r0, r10
	mov     r1, r11
	bl      WmDataSharingSendDataSet
	b       branch_20cff94
@ 0x20cfe98

.arm
branch_20cfe98: @ 20cfe98 :arm
	cmp     r0, #0x4
	mov     r0, #0x0
	add     r1, r10, #2, 22 @ #0x800
	moveq   r0, #0x1
	streqh  r0, [r1, #0x1c]
	beq     branch_20cff18
	ldrh    r2, [r1, #0xc]
	ldrh    r1, [r1, #0x8]
	cmp     r2, r1
	beq     branch_20cff18
	mov     r2, r2, lsl #9
	ldrh    r1, [r10, r2]
	tst     r1, #0x1
	orreq   r1, r1, #0x1
	streqh  r1, [r10, r2]
	beq     branch_20cff18
	mov     r1, r8
	add     r0, r10, r2
	mov     r2, #2, 24 @ #0x200
	bl      MIi_CpuCopy16
	add     r2, r10, #2, 22 @ #0x800
	ldrh    r1, [r2, #0xc]
	mov     r0, #0x1
	mov     r7, #0x0
	add     r1, r10, r1, lsl #1
	add     r1, r1, #2, 22 @ #0x800
	ldrh    r1, [r1]
	strh    r1, [r2, #0x1a]
	ldrh    r1, [r2, #0xc]
	add     r1, r1, #0x1
	and     r1, r1, #0x3
	strh    r1, [r2, #0xc]
.arm
branch_20cff18: @ 20cff18 :arm
	cmp     r0, #0x0
	beq     branch_20cff94
	add     r0, r10, #2, 22 @ #0x800
	ldrh    r1, [r0, #0xa]
	ldrh    r2, [r0, #0x10]
	mov     r0, r9
	add     r6, r10, r1, lsl #9
	add     r1, r6, #0x20
	bl      MIi_CpuCopy16
	add     r3, r10, #2, 22 @ #0x800
	ldrh    r1, [r3, #0xe]
	mov     r4, #0x1
	ldr     r0, [pc, #0x50] @ [0x20cffa0] (=0x20cffa8)
	str     r1, [sp]
	ldrh    r5, [r3, #0x16]
	mov     r1, r10
	add     r2, r6, #0x20
	str     r5, [sp, #0x4]
	str     r4, [sp, #0x8]
	ldrh    r3, [r3, #0x10]
	bl      WM_SetMPDataToPortEx
	add     r1, r10, #2, 22 @ #0x800
	ldrh    r2, [r1, #0xa]
	cmp     r0, #0x2
	cmpne   r0, #0x0
	add     r2, r2, #0x1
	and     r2, r2, #0x3
	strh    r2, [r1, #0xa]
	movne   r0, #0x5
	strneh  r0, [r1, #0x1c]
	movne   r7, r4
.arm
branch_20cff94: @ 20cff94 :arm
	mov     r0, r7
	add     sp, sp, #0xc
	ldmfd   sp!, {r4-r11,pc}
@ 0x20cffa0

.word Function_20cffa8 @ 0x20cffa0
.word 0xffff @ 0x20cffa4



.arm
Function_20cffa8: @ 20cffa8 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	bl      Function_20cdf24
	ldrh    r2, [r5, #0xa]
	ldr     r1, [pc, #0xb8] @ [0x20d0078] (=0x20d0080)
	add     r0, r0, r2, lsl #2
	ldr     r2, [r0, #0xcc]
	ldr     r4, [r0, #0x10c]
	cmp     r2, r1
	ldrne   r0, [pc, #0xa8] @ [0x20d007c] (=0x20d01ac)
	cmpne   r2, r0
	ldmnefd sp!, {r3-r5,pc}
	cmp     r4, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r0, [r5, #0x20]
	cmp     r4, r0
	ldmnefd sp!, {r3-r5,pc}
	bl      WM_GetAID
	ldrh    r1, [r5, #0x2]
	cmp     r1, #0x0
	bne     branch_20d0034
	cmp     r0, #0x0
	ldmnefd sp!, {r3-r5,pc}
	add     r1, r4, #2, 22 @ #0x800
	ldrh    r0, [r1, #0xa]
	ldrh    r2, [r5, #0x1a]
	add     r0, r4, r0, lsl #1
	mov     r2, r2, asr #1
	add     r0, r0, #2, 22 @ #0x800
	strh    r2, [r0]
	ldrh    r0, [r1, #0xa]
	add     r0, r0, #0x1
	and     r0, r0, #0x3
	strh    r0, [r1, #0xa]
	ldmfd   sp!, {r3-r5,pc}
@ 0x20d0034

.arm
branch_20d0034: @ 20d0034 :arm
	cmp     r1, #0xa
	bne     branch_20d0068
	cmp     r0, #0x0
	beq     branch_20d0058
	add     r0, r4, #2, 22 @ #0x800
	ldrh    r1, [r0, #0xa]
	add     r1, r1, #0x3
	and     r1, r1, #0x3
	strh    r1, [r0, #0xa]
.arm
branch_20d0058: @ 20d0058 :arm
	add     r0, r4, #2, 22 @ #0x800
	mov     r1, #0x4
	strh    r1, [r0, #0x1c]
	ldmfd   sp!, {r3-r5,pc}
@ 0x20d0068

.arm
branch_20d0068: @ 20d0068 :arm
	add     r0, r4, #2, 22 @ #0x800
	mov     r1, #0x5
	strh    r1, [r0, #0x1c]
	ldmfd   sp!, {r3-r5,pc}
@ 0x20d0078

.word Function_20d0080 @ 0x20d0078
.word Function_20d01ac @ 0x20d007c



.arm
Function_20d0080: @ 20d0080 :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r4, [r0, #0x1c]
	cmp     r4, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	ldrh    r1, [r0, #0x2]
	cmp     r1, #0x0
	bne     branch_20d019c
	ldrh    r1, [r0, #0x4]
	cmp     r1, #0x15
	bgt     branch_20d00cc
	bge     branch_20d00ec
	cmp     r1, #0x9
	ldmgtfd sp!, {r4-r6,pc}
	cmp     r1, #0x7
	ldmltfd sp!, {r4-r6,pc}
	beq     branch_20d010c
	cmp     r1, #0x9
	beq     branch_20d011c
	ldmfd   sp!, {r4-r6,pc}
@ 0x20d00cc

.arm
branch_20d00cc: @ 20d00cc :arm
	cmp     r1, #0x1a
	ldmgtfd sp!, {r4-r6,pc}
	cmp     r1, #0x19
	ldmltfd sp!, {r4-r6,pc}
	ldmeqfd sp!, {r4-r6,pc}
	cmp     r1, #0x1a
	beq     branch_20d011c
	ldmfd   sp!, {r4-r6,pc}
@ 0x20d00ec

.arm
branch_20d00ec: @ 20d00ec :arm
	ldrh    r1, [r0, #0x12]
	ldr     r2, [r0, #0xc]
	mov     r0, r4
	bl      WmDataSharingReceiveData
	mov     r0, r4
	mov     r1, #0x0
	bl      WmDataSharingSendDataSet
	ldmfd   sp!, {r4-r6,pc}
@ 0x20d010c

.arm
branch_20d010c: @ 20d010c :arm
	mov     r0, r4
	mov     r1, #0x0
	bl      WmDataSharingSendDataSet
	ldmfd   sp!, {r4-r6,pc}
@ 0x20d011c

.arm
branch_20d011c: @ 20d011c :arm
	ldrh    r5, [r0, #0x12]
	mov     r6, #0x1
	bl      OS_DisableInterrupts
	add     r1, r4, #2, 22 @ #0x800
	ldrh    lr, [r1, #0x8]
	mvn     r12, r6, lsl r5
	mov     r3, lr, lsl #9
	ldrh    r2, [r4, r3]
	and     r2, r2, r12
	strh    r2, [r4, r3]
	ldrh    r1, [r1, #0x18]
	cmp     r1, #0x1
	bne     branch_20d016c
	add     r1, lr, #0x1
	and     r1, r1, #0x3
	mov     r1, r1, lsl #16
	mov     r2, r1, lsr #7
	ldrh    r1, [r4, r2]
	and     r1, r1, r12
	strh    r1, [r4, r2]
.arm
branch_20d016c: @ 20d016c :arm
	bl      OS_RestoreInterrupts
	mov     r0, r4
	mov     r1, #0x0
	bl      WmDataSharingSendDataSet
	add     r0, r4, #2, 22 @ #0x800
	ldrh    r0, [r0, #0x18]
	cmp     r0, #0x1
	ldmnefd sp!, {r4-r6,pc}
	mov     r0, r4
	mov     r1, #0x0
	bl      WmDataSharingSendDataSet
	ldmfd   sp!, {r4-r6,pc}
@ 0x20d019c

.arm
branch_20d019c: @ 20d019c :arm
	add     r0, r4, #2, 22 @ #0x800
	mov     r1, #0x5
	strh    r1, [r0, #0x1c]
	ldmfd   sp!, {r4-r6,pc}
@ 0x20d01ac


.arm
Function_20d01ac: @ 20d01ac :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r8, r0
	ldr     r4, [r8, #0x1c]
	cmp     r4, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	ldrh    r0, [r8, #0x2]
	cmp     r0, #0x0
	bne     branch_20d0290
	ldrh    r0, [r8, #0x4]
	cmp     r0, #0x15
	bgt     branch_20d01f4
	bge     branch_20d020c
	cmp     r0, #0x9
	ldmgtfd sp!, {r4-r8,pc}
	cmp     r0, #0x7
	ldmltfd sp!, {r4-r8,pc}
	cmpne   r0, #0x9
	ldmfd   sp!, {r4-r8,pc}
@ 0x20d01f4

.arm
branch_20d01f4: @ 20d01f4 :arm
	cmp     r0, #0x1a
	ldmgtfd sp!, {r4-r8,pc}
	cmp     r0, #0x19
	ldmltfd sp!, {r4-r8,pc}
	cmpne   r0, #0x1a
	ldmfd   sp!, {r4-r8,pc}
@ 0x20d020c

.arm
branch_20d020c: @ 20d020c :arm
	ldr     r7, [r8, #0xc]
	ldrh    r5, [r8, #0x10]
	ldrh    r6, [r7]
	bl      WM_GetAID
	add     r1, r4, #2, 22 @ #0x800
	ldrh    r1, [r1, #0x14]
	cmp     r5, r1
	beq     branch_20d0234
	cmp     r5, #2, 24 @ #0x200
	movhi   r5, #2, 24 @ #0x200
.arm
branch_20d0234: @ 20d0234 :arm
	cmp     r5, #0x4
	ldmccfd sp!, {r4-r8,pc}
	mov     r1, #0x1
	tst     r6, r1, lsl r0
	ldmeqfd sp!, {r4-r8,pc}
	add     r0, r4, #2, 22 @ #0x800
	ldrh    r1, [r0, #0x8]
	mov     r0, r7
	mov     r2, r5
	add     r1, r4, r1, lsl #9
	bl      MIi_CpuCopy16
	add     r1, r4, #2, 22 @ #0x800
	ldrh    r0, [r1, #0x8]
	ldrh    r2, [r8, #0x1a]
	add     r0, r4, r0, lsl #1
	mov     r2, r2, asr #1
	add     r0, r0, #2, 22 @ #0x800
	strh    r2, [r0]
	ldrh    r0, [r1, #0x8]
	add     r0, r0, #0x1
	and     r0, r0, #0x3
	strh    r0, [r1, #0x8]
	ldmfd   sp!, {r4-r8,pc}
@ 0x20d0290

.arm
branch_20d0290: @ 20d0290 :arm
	add     r0, r4, #2, 22 @ #0x800
	mov     r1, #0x5
	strh    r1, [r0, #0x1c]
	ldmfd   sp!, {r4-r8,pc}
@ 0x20d02a0


.arm
WmDataSharingReceiveData: @ 20d02a0 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r6, r0
	mov     r3, r1
	mov     r1, #0x1
	mov     r4, r1, lsl r3
	add     r0, r6, #2, 22 @ #0x800
	ldrh    r1, [r0, #0xe]
	mov     r7, r4, lsl #16
	mov     r5, r2
	tst     r1, r7, lsr #16
	ldmeqfd sp!, {r3-r7,pc}
	ldrh    r4, [r0, #0x8]
	mov     r2, r4, lsl #9
	ldrh    r2, [r6, r2]
	tst     r2, r7, lsr #16
	bne     branch_20d0304
	ldrh    r0, [r0, #0x18]
	cmp     r0, #0x1
	ldmnefd sp!, {r3-r7,pc}
	add     r0, r4, #0x1
	and     r4, r0, #0x3
	mov     r0, r4, lsl #9
	ldrh    r0, [r6, r0]
	tst     r0, r7, lsr #16
	ldmeqfd sp!, {r3-r7,pc}
.arm
branch_20d0304: @ 20d0304 :arm
	add     r2, r6, r4, lsl #9
	mov     r0, r6
	add     r2, r2, #0x4
	bl      WmGetSharedDataAddress
	mov     r1, r0
	add     r0, r6, #2, 22 @ #0x800
	cmp     r5, #0x0
	ldrh    r2, [r0, #0x10]
	beq     branch_20d0334
	mov     r0, r5
	bl      MIi_CpuCopy16
	b       branch_20d033c
@ 0x20d0334

.arm
branch_20d0334: @ 20d0334 :arm
	mov     r0, #0x0
	bl      MIi_CpuClear16
.arm
branch_20d033c: @ 20d033c :arm
	bl      OS_DisableInterrupts
	mov     r4, r4, lsl #9
	ldrh    r3, [r6, r4]
	mvn     r1, r7, lsr #16
	add     r2, r6, #0x2
	and     r1, r3, r1
	strh    r1, [r6, r4]
	ldrh    r1, [r2, r4]
	orr     r1, r1, r7, lsr #16
	strh    r1, [r2, r4]
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r3-r7,pc}
@ 0x20d036c


.arm
WmDataSharingSendDataSet: @ 20d036c :arm
	stmfd   sp!, {r3-r10,lr}
	sub     sp, sp, #0xc
	mov     r10, r0
	mov     r9, r1
	bl      OS_DisableInterrupts
	add     r1, r10, #2, 22 @ #0x800
	ldrh    r1, [r1, #0x8]
	mov     r4, r0
	mov     r1, r1, lsl #9
	ldrh    r1, [r10, r1]
	cmp     r1, #0x0
	bne     branch_20d04ac
	bl      WM_GetConnectedAIDs
	add     r1, r10, #2, 22 @ #0x800
	ldrh    r6, [r1, #0x8]
	ldrh    r1, [r1, #0x18]
	mov     r7, r0
	add     r0, r6, #0x1
	and     r5, r0, #0x3
	cmp     r1, #0x1
	addeq   r0, r5, #0x1
	andeq   r8, r0, #0x3
	movne   r8, r5
	add     r1, r10, r8, lsl #9
	mov     r0, #0x0
	mov     r2, #2, 24 @ #0x200
	bl      MIi_CpuClear16
	add     r0, r10, #2, 22 @ #0x800
	ldrh    r3, [r0, #0xe]
	orr     r2, r7, #0x1
	mov     r1, r8, lsl #9
	and     r2, r3, r2
	strh    r2, [r10, r1]
	strh    r5, [r0, #0x8]
	ldrh    r0, [r0, #0xe]
	mov     r1, r6, lsl #9
	cmp     r9, #0x1
	strh    r0, [r10, r1]
	ldreqh  r0, [r10, r1]
	biceq   r0, r0, #0x1
	streqh  r0, [r10, r1]
	mov     r0, r4
	bl      OS_RestoreInterrupts
	add     r3, r10, #2, 22 @ #0x800
	ldrh    r1, [r3, #0xe]
	mov     r4, #0x1
	ldr     r0, [pc, #0x8c] @ [0x20d04b8] (=0x20cffa8)
	and     r1, r1, r7
	mov     r1, r1, lsl #16
	mov     r1, r1, lsr #16
	str     r1, [sp]
	ldrh    r5, [r3, #0x16]
	mov     r1, r10
	add     r2, r10, r6, lsl #9
	str     r5, [sp, #0x4]
	str     r4, [sp, #0x8]
	ldrh    r3, [r3, #0x14]
	bl      WM_SetMPDataToPortEx
	cmp     r0, #0x7
	bne     branch_20d0488
	add     r0, r10, r6, lsl #1
	ldr     r1, [pc, #0x54] @ [0x20d04bc] (=0xffff)
	add     r0, r0, #2, 22 @ #0x800
	strh    r1, [r0]
	add     r0, r10, #2, 22 @ #0x800
	ldrh    r1, [r0, #0xa]
	add     sp, sp, #0xc
	add     r1, r1, #0x1
	and     r1, r1, #0x3
	strh    r1, [r0, #0xa]
	ldmfd   sp!, {r3-r10,pc}
@ 0x20d0488

.arm
branch_20d0488: @ 20d0488 :arm
	cmp     r0, #0x0
	cmpne   r0, #0x2
	addeq   sp, sp, #0xc
	ldmeqfd sp!, {r3-r10,pc}
	add     r0, r10, #2, 22 @ #0x800
	mov     r1, #0x5
	strh    r1, [r0, #0x1c]
	add     sp, sp, #0xc
	ldmfd   sp!, {r3-r10,pc}
@ 0x20d04ac

.arm
branch_20d04ac: @ 20d04ac :arm
	bl      OS_RestoreInterrupts
	add     sp, sp, #0xc
	ldmfd   sp!, {r3-r10,pc}
@ 0x20d04b8

.word Function_20cffa8 @ 0x20d04b8
.word 0xffff @ 0x20d04bc



.arm
Function_20d04c0: @ 20d04c0 :arm
	stmfd   sp!, {r3,lr}
	mov     lr, r1
	mov     r3, r2
	cmp     r0, #0x0
	ldrh    r1, [lr]
	ldrh    r12, [lr, #0x2]
	mov     r2, #0x1
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,pc}
	cmp     lr, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,pc}
	tst     r1, r2, lsl r3
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,pc}
	tst     r12, r2, lsl r3
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,pc}
	add     r2, lr, #0x4
	bl      WmGetSharedDataAddress
	ldmfd   sp!, {r3,pc}
@ 0x20d0514


.arm
WmGetSharedDataAddress: @ 20d0514 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r12, #0x1
	mov     r3, r12, lsl r3
	sub     r3, r3, #0x1
	mov     r5, r0
	and     r0, r1, r3
	mov     r4, r2
	bl      Function_20d2fe4
	add     r1, r5, #2, 22 @ #0x800
	ldrh    r1, [r1, #0x10]
	mla     r0, r1, r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x20d0544


.arm
Function_20d0544: @ 20d0544 :arm
	stmfd   sp!, {r3,lr}
	mov     r12, #0x1
	rsb     r2, r12, #1, 16 @ #0x10000
	mov     r3, #0x2
	str     r12, [sp]
	bl      WM_StartDataSharing
	ldmfd   sp!, {r3,pc}
@ 0x20d0560

.arm
Function_20d0560: @ 20d0560 :arm
	ldr     r12, [pc, #0x0] @ [0x20d0568] (=0x20cfc18)
	bx      r12
@ 0x20d0568

.word Function_20cfc18 @ =0x20cfc18, 0x20d0568
.arm
Function_20d056c: @ 20d056c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      WMi_CheckIdle
	cmp     r0, #0x0
	ldmnefd sp!, {r4-r6,pc}
	cmp     r5, #0x3
	movhi   r0, #0x6
	ldmhifd sp!, {r4-r6,pc}
	cmp     r5, #0x0
	beq     branch_20d05b4
	cmp     r4, #0x0
	moveq   r0, #0x6
	ldmeqfd sp!, {r4-r6,pc}
	mov     r0, r4
	mov     r1, #0x50
	bl      DC_StoreRange
.arm
branch_20d05b4: @ 20d05b4 :arm
	mov     r1, r6
	mov     r0, #0x14
	bl      WMi_SetCallbackTable
	mov     r2, r5
	mov     r3, r4
	mov     r0, #0x14
	mov     r1, #0x2
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmfd   sp!, {r4-r6,pc}
@ 0x20d05e0

.arm
.globl Function_20d05e0
Function_20d05e0: @ 20d05e0 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bl      WMi_CheckIdle
	cmp     r0, #0x0
	ldmnefd sp!, {r3-r7,pc}
	cmp     r6, #0x3
	movhi   r0, #0x6
	ldmhifd sp!, {r3-r7,pc}
	cmp     r6, #0x0
	beq     branch_20d062c
	cmp     r4, #0x0
	moveq   r0, #0x6
	ldmeqfd sp!, {r3-r7,pc}
	mov     r0, r4
	mov     r1, #0x50
	bl      DC_StoreRange
.arm
branch_20d062c: @ 20d062c :arm
	mov     r1, r7
	mov     r0, #0x27
	bl      WMi_SetCallbackTable
	mov     r2, r6
	mov     r3, r4
	mov     r0, #0x27
	mov     r1, #0x3
	str     r5, [sp]
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmfd   sp!, {r3-r7,pc}
@ 0x20d065c


.arm
WM_SetGameInfo: @ 20d065c :arm
	stmfd   sp!, {r4-r7,lr}
	sub     sp, sp, #0xc
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r0, #0x2
	mov     r1, #0x7
	mov     r2, #0x9
	mov     r4, r3
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	addne   sp, sp, #0xc
	ldmnefd sp!, {r4-r7,pc}
	cmp     r6, #0x0
	addeq   sp, sp, #0xc
	moveq   r0, #0x6
	ldmeqfd sp!, {r4-r7,pc}
	cmp     r5, #0x70
	addhi   sp, sp, #0xc
	movhi   r0, #0x6
	ldmhifd sp!, {r4-r7,pc}
	ldr     r1, [pc, #0x58] @ [0x20d0710] (=RAM_21d0140)
	mov     r0, r6
	mov     r2, r5
	bl      MIi_CpuCopy16
	ldr     r0, [pc, #0x48] @ [0x20d0710] (=RAM_21d0140)
	mov     r1, r5
	bl      DC_StoreRange
	mov     r1, r7
	mov     r0, #0x18
	bl      WMi_SetCallbackTable
	ldrh    r0, [sp, #0x20]
	str     r4, [sp]
	ldrb    r1, [sp, #0x24]
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x20] @ [0x20d0710] (=RAM_21d0140)
	str     r1, [sp, #0x8]
	mov     r3, r5
	mov     r0, #0x18
	mov     r1, #0x5
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	add     sp, sp, #0xc
	ldmfd   sp!, {r4-r7,pc}
@ 0x20d0710

.word RAM_21d0140 @ 0x20d0710



.arm
.globl Function_20d0714
Function_20d0714: @ 20d0714 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      WMi_CheckIdle
	cmp     r0, #0x0
	ldmnefd sp!, {r3-r5,pc}
	cmp     r4, #0x0
	cmpne   r4, #0x1
	movne   r0, #0x6
	ldmnefd sp!, {r3-r5,pc}
	mov     r1, r5
	mov     r0, #0x19
	bl      WMi_SetCallbackTable
	mov     r2, r4
	mov     r0, #0x19
	mov     r1, #0x1
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmfd   sp!, {r3-r5,pc}
@ 0x20d0764


.arm
.globl WM_SetLifeTime
WM_SetLifeTime: @ 20d0764 :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #0x8
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bl      WMi_CheckIdle
	cmp     r0, #0x0
	addne   sp, sp, #0x8
	ldmnefd sp!, {r3-r7,pc}
	mov     r1, r7
	mov     r0, #0x1d
	bl      WMi_SetCallbackTable
	ldrh    r12, [sp, #0x20]
	mov     r2, r6
	mov     r3, r5
	mov     r0, #0x1d
	mov     r1, #0x4
	stmea   sp, {r4,r12}
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r7,pc}
@ 0x20d07c4


.arm
.globl WM_MeasureChannel
WM_MeasureChannel: @ 20d07c4 :arm
	stmfd   sp!, {r4-r7,lr}
	sub     sp, sp, #0xc
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bl      Function_20cdf24
	mov     r0, #0x1
	mov     r1, #0x2
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	addne   sp, sp, #0xc
	ldmnefd sp!, {r4-r7,pc}
	mov     r1, r7
	mov     r0, #0x1e
	bl      WMi_SetCallbackTable
	ldrh    r2, [sp, #0x20]
	mov     r3, #0x1e
	add     r0, sp, #0x0
	mov     r1, #0xa
	strh    r3, [sp]
	strh    r6, [sp, #0x2]
	strh    r5, [sp, #0x4]
	strh    r4, [sp, #0x6]
	strh    r2, [sp, #0x8]
	bl      WMi_SendCommandDirect
	cmp     r0, #0x0
	moveq   r0, #0x2
	add     sp, sp, #0xc
	ldmfd   sp!, {r4-r7,pc}
@ 0x20d083c


.arm
WM_SetEntry: @ 20d083c :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x2
	mov     r1, #0x7
	mov     r2, #0x9
	bl      WMi_CheckStateEx
	cmp     r0, #0x0
	ldmnefd sp!, {r3-r5,pc}
	mov     r1, r5
	mov     r0, #0x21
	bl      WMi_SetCallbackTable
	mov     r2, r4
	mov     r0, #0x21
	mov     r1, #0x1
	bl      WMi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmfd   sp!, {r3-r5,pc}
@ 0x20d0888

