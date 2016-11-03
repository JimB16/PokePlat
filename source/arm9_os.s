

.arm
OS_WaitIrq: @ 20c12b4 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1

	bl      OS_DisableInterrupts

	cmp     r5, #0x0
	beq     noInterruptsToWaitFor
	ldr     r1, [pc, #0x4c] @ [0x20c1320] (=RAM_27e0000)
	mvn     r2, r4
	add     r1, r1, #0x3000
	ldr     r3, [r1, #0xff8]
	and     r2, r3, r2
	str     r2, [r1, #0xff8]
noInterruptsToWaitFor: @ 20c12e4 :arm

	bl      OS_RestoreInterrupts

	ldr     r1, [pc, #0x30] @ [0x20c1320] (=RAM_27e0000)
	add     r0, r1, #0x3000
	ldr     r0, [r0, #0xff8]
	tst     r4, r0
	ldmnefd sp!, {r4-r6,pc}

	add     r0, r1, #254, 30 @ #0x3f8
	ldr     r5, [pc, #0x1c] @ [0x20c1324] (=RAM_27e0060)
	add     r6, r0, #15, 22 @ #0x3c00
waitForInterrupt: @ 20c1308 :arm
	mov     r0, r5
	bl      OS_SleepThread
	ldr     r0, [r6]
	tst     r4, r0
	beq     waitForInterrupt

	ldmfd   sp!, {r4-r6,pc}
@ 0x20c1320

.word RAM_27e0000 @ 0x20c1320
.word RAM_27e0060 @ 0x20c1324



arm_func_start OS_IrqDummy
OS_IrqDummy: @ 20c1328 :arm
	bx      lr
arm_func_end OS_IrqDummy


.arm
OSi_IrqCallback: @ 20c132c :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r1, #0xc
	mul     r5, r0, r1
	ldr     r2, [pc, #0x60] @ [0x20c13a0] (=RAM_21ccbf8)
	ldr     r3, [pc, #0x60] @ [0x20c13a4] (=Unknown_210114c)
	mov     r4, r0, lsl #1
	ldr     r1, [r2, r5]
	mov     r0, #0x0
	ldrh    r3, [r3, r4]
	mov     r4, #0x1
	str     r0, [r2, r5]
	cmp     r1, #0x0
	mov     r4, r4, lsl r3
	beq     branch_20c1370
	ldr     r0, [pc, #0x3c] @ [0x20c13a8] (=RAM_21ccc00)
	ldr     r0, [r0, r5]
	blx     r1
branch_20c1370: @ 20c1370 :arm
	ldr     r0, [pc, #0x34] @ [0x20c13ac] (=RAM_27e0000)
	ldr     r1, [pc, #0x34] @ [0x20c13b0] (=RAM_21ccbfc)
	add     r0, r0, #3, 20 @ #0x3000
	ldr     r2, [r0, #0xff8]
	ldr     r1, [r1, r5]
	orr     r2, r2, r4
	str     r2, [r0, #0xff8]
	cmp     r1, #0x0
	ldmnefd sp!, {r3-r5,pc}
	mov     r0, r4
	bl      OS_DisableIrqMask
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c13a0

.word RAM_21ccbf8 @ 0x20c13a0
.word Unknown_210114c @ 0x20c13a4
.word RAM_21ccc00 @ 0x20c13a8
.word RAM_27e0000 @ 0x20c13ac
.word RAM_21ccbfc @ 0x20c13b0



.arm
OSi_IrqDma0: @ 20c13b4 :arm
	ldr     r12, =OSi_IrqCallback
	mov     r0, #0x0
	bx      r12
@ 0x20c13c0

.pool



.arm
OSi_IrqDma1: @ 20c13c4 :arm
	ldr     r12, =OSi_IrqCallback
	mov     r0, #0x1
	bx      r12
@ 0x20c13d0

.pool



.arm
OSi_IrqDma2: @ 20c13d4 :arm
	ldr     r12, =OSi_IrqCallback
	mov     r0, #0x2
	bx      r12
@ 0x20c13e0

.pool



.arm
OSi_IrqDma3: @ 20c13e4 :arm
	ldr     r12, =OSi_IrqCallback
	mov     r0, #0x3
	bx      r12
@ 0x20c13f0

.pool



.arm
OSi_IrqTimer0: @ 20c13f4 :arm
	ldr     r12, =OSi_IrqCallback
	mov     r0, #0x4
	bx      r12
@ 0x20c1400

.pool



.arm
OSi_IrqTimer1: @ 20c1404 :arm
	ldr     r12, =OSi_IrqCallback
	mov     r0, #0x5
	bx      r12
@ 0x20c1410

.pool



.arm
OSi_IrqTimer2: @ 20c1414 :arm
	ldr     r12, =OSi_IrqCallback
	mov     r0, #0x6
	bx      r12
@ 0x20c1420

.pool



.arm
OSi_IrqTimer3: @ 20c1424 :arm
	ldr     r12, =OSi_IrqCallback
	mov     r0, #0x7
	bx      r12
@ 0x20c1430

.pool



.arm
OS_InitIrqTable: @ 20c1434 :arm
	ldr     r0, =RAM_27e0060
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	str     r1, [r0]
	bx      lr
@ 0x20c1448

.pool



.arm
OS_SetIrqFunction: @ 20c144c :arm
	stmfd   sp!, {r3-r9,lr}

	mov     r8, #0x0
	mov     r2, #0xc
	ldr     r4, =RAM_27e0000
	ldr     r6, =RAM_21ccbf8
	mov     r7, r8
	mov     lr, r8
	mov     r12, #0x1
	mov     r3, r2
branch_20c1470: @ 20c1470 :arm
	tst     r0, #0x1
	beq     branch_20c14b8
	mov     r9, r7
	cmp     r8, #0x8
	blt     branch_20c1494
	cmp     r8, #0xb
	suble   r5, r8, #0x8
	mlale   r9, r5, r3, r6
	ble     branch_20c14b0
branch_20c1494: @ 20c1494 :arm
	cmp     r8, #0x3
	blt     branch_20c14ac
	cmp     r8, #0x6
	addle   r5, r8, #0x1
	mlale   r9, r5, r2, r6
	ble     branch_20c14b0
branch_20c14ac: @ 20c14ac :arm
	str     r1, [r4, r8, lsl #0x2]
branch_20c14b0: @ 20c14b0 :arm
	cmp     r9, #0x0
	stmneia r9, {r1,r12,lr}
branch_20c14b8: @ 20c14b8 :arm
	add     r8, r8, #0x1
	cmp     r8, #0x16
	mov     r0, r0, lsr #1
	blt     branch_20c1470

	ldmfd   sp!, {r3-r9,pc}
@ 0x20c14cc

.pool



.arm
OS_GetIrqFunction: @ 20c14d4 :arm
	ldr     r2, =RAM_27e0000
	mov     r1, #0x0
branch_20c14dc: @ 20c14dc :arm
	tst     r0, #0x1
	beq     branch_20c153c
	cmp     r1, #0x8
	blt     branch_20c150c
	cmp     r1, #0xb
	bgt     branch_20c150c
	sub     r1, r1, #0x8
	mov     r0, #0xc
	mul     r2, r1, r0
	ldr     r0, =RAM_21ccbf8
	ldr     r0, [r0, r2]
	bx      lr

branch_20c150c: @ 20c150c :arm
	cmp     r1, #0x3
	blt     branch_20c1534
	cmp     r1, #0x6
	bgt     branch_20c1534
	add     r1, r1, #0x1
	mov     r0, #0xc
	mul     r2, r1, r0
	ldr     r0, =RAM_21ccbf8
	ldr     r0, [r0, r2]
	bx      lr

branch_20c1534: @ 20c1534 :arm
	ldr     r0, [r2]
	bx      lr

branch_20c153c: @ 20c153c :arm
	add     r1, r1, #0x1
	cmp     r1, #0x16
	mov     r0, r0, lsr #1
	add     r2, r2, #0x4
	blt     branch_20c14dc
	mov     r0, #0x0
	bx      lr
@ 0x20c1558

.pool



.arm
OSi_EnterDmaCallback: @ 20c1560 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r3, #0xc
	mul     r6, r0, r3
	ldr     r12, [pc, #0x28] @ [0x20c159c] (=RAM_21ccbf8)
	add     r4, r0, #0x8
	mov     r5, #0x1
	mov     r0, r5, lsl r4
	ldr     r3, [pc, #0x1c] @ [0x20c15a0] (=RAM_21ccc00)
	str     r1, [r12, r6]
	str     r2, [r3, r6]
	bl      OS_EnableIrqMask
	and     r1, r0, r5, lsl r4
	ldr     r0, [pc, #0xc] @ [0x20c15a4] (=RAM_21ccbfc)
	str     r1, [r0, r6]
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c159c

.word RAM_21ccbf8 @ 0x20c159c
.word RAM_21ccc00 @ 0x20c15a0
.word RAM_21ccbfc @ 0x20c15a4



.arm
OSi_EnterTimerCallback: @ 20c15a8 :arm
	stmfd   sp!, {r4,lr}
	mov     r3, #0xc
	mul     r4, r0, r3
	ldr     r12, [pc, #0x28] @ [0x20c15e4] (=RAM_21ccc28)
	add     r0, r0, #0x3
	mov     r3, #0x1
	mov     r0, r3, lsl r0
	ldr     r3, [pc, #0x1c] @ [0x20c15e8] (=RAM_21ccc30)
	str     r1, [r12, r4]
	str     r2, [r3, r4]
	bl      OS_EnableIrqMask
	ldr     r0, [pc, #0x10] @ [0x20c15ec] (=RAM_21ccc2c)
	mov     r1, #0x1
	str     r1, [r0, r4]
	ldmfd   sp!, {r4,pc}
@ 0x20c15e4

.word RAM_21ccc28 @ 0x20c15e4
.word RAM_21ccc30 @ 0x20c15e8
.word RAM_21ccc2c @ 0x20c15ec



.arm
OS_SetIrqMask: @ 20c15f0 :arm
	ldr     r3, =REG_IME
	mov     r1, #0x0
	ldrh    r2, [r3]
	strh    r1, [r3]
	ldr     r1, [r3, #0x8]
	str     r0, [r3, #0x8]
	ldrh    r0, [r3]
	mov     r0, r1
	strh    r2, [r3]
	bx      lr
@ 0x20c1618

.pool



.arm
OS_EnableIrqMask: @ 20c161c :arm
	ldr     r3, =REG_IME
	mov     r1, #0x0
	ldrh    r2, [r3]
	strh    r1, [r3]
	ldr     r1, [r3, #0x8]
	orr     r0, r1, r0
	str     r0, [r3, #0x8]
	ldrh    r0, [r3]
	mov     r0, r1
	strh    r2, [r3]
	bx      lr
@ 0x20c1648

.pool



.arm
OS_DisableIrqMask: @ 20c164c :arm
	ldr     r12, =REG_IME
	mov     r2, #0x0
	ldrh    r3, [r12]
	mvn     r1, r0
	strh    r2, [r12]
	ldr     r0, [r12, #0x8]
	and     r1, r0, r1
	str     r1, [r12, #0x8]
	ldrh    r1, [r12]
	strh    r3, [r12]
	bx      lr
@ 0x20c1678

.pool



.arm
OS_ResetRequestIrqMask: @ 20c167c :arm
	ldr     r3, =REG_IME
	mov     r1, #0x0
	ldrh    r2, [r3]
	strh    r1, [r3]
	ldr     r1, [r3, #0xc]
	str     r0, [r3, #0xc]
	ldrh    r0, [r3]
	mov     r0, r1
	strh    r2, [r3]
	bx      lr
@ 0x20c16a4

.pool



.arm
OS_SetIrqStackChecker: @ 20c16a8 :arm
	ldr     r12, [pc, #0x1c] @ [0x20c16cc] (=RAM_27e0000)
	ldr     r3, [pc, #0x1c] @ [0x20c16d0] (=0xfddb597d)
	add     r0, r12, #0x3000
	ldr     r2, [pc, #0x18] @ [0x20c16d4] (=0x7bf9dd5b)
	ldr     r1, [pc, #0x18] @ [0x20c16d8] (=0x800)
	str     r3, [r0, #0xf7c]
	add     r0, r12, #0x3f80
	str     r2, [r0, -r1]
	bx      lr
@ 0x20c16cc

.word RAM_27e0000 @ 0x20c16cc
.word 0xfddb597d @ 0x20c16d0
.word 0x7bf9dd5b @ 0x20c16d4
.word 0x800 @ 0x20c16d8



.arm
OS_InitLock: @ 20c16dc :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r3, [pc, #0xb0] @ [0x20c1798] (=RAM_21ccc58)
	ldr     r0, [r3]
	cmp     r0, #0x0
	ldmnefd sp!, {r3-r5,pc}
	ldr     r1, [pc, #0xa4] @ [0x20c179c] (=RAM_27ffff0)
	mov     r4, #0x1
	mov     r2, #0x0
	mov     r0, #0x7e
	str     r4, [r3]
	str     r2, [r1]
	bl      OS_LockByWord
	ldr     r5, [pc, #0x88] @ [0x20c179c] (=RAM_27ffff0)
	ldrh    r0, [r5, #0x6]
	cmp     r0, #0x0
	beq     branch_20c1734
	mov     r4, #1, 22 @ #0x400
branch_20c1720: @ 20c1720 :arm
	mov     r0, r4
	blx     Bios_WaitByLoop
	ldrh    r0, [r5, #0x6]
	cmp     r0, #0x0
	bne     branch_20c1720
branch_20c1734: @ 20c1734 :arm
	ldr     r12, [pc, #0x64] @ [0x20c17a0] (=RAM_27fffb0)
	mvn     r0, #0x0
	str     r0, [r12]
	mov     r3, r0, lsl #16
	add     r1, r12, #0x10
	mov     r0, #0x0
	mov     r2, #0x28
	str     r3, [r12, #0x4]
	bl      MIi_CpuClear32

	ldr     r12, [pc, #0x44] @ [0x20c17a4] (=REG_EXMEMCNT)
	ldr     r1, [pc, #0x38] @ [0x20c179c] (=RAM_27ffff0)
	ldrh    r3, [r12]
	mov     r0, #0x7e
	mov     r2, #0x0
	orr     r3, r3, #ARM7_OWNS_CARD
	strh    r3, [r12]
	ldrh    r3, [r12]
	orr     r3, r3, #ARM7_OWNS_ROM
	strh    r3, [r12]

	bl      OS_UnlockByWord
	ldr     r1, [pc, #0x10] @ [0x20c179c] (=RAM_27ffff0)
	mov     r0, #0x7f
	mov     r2, #0x0
	bl      OS_LockByWord
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c1798

.word RAM_21ccc58 @ 0x20c1798
.word RAM_27ffff0 @ 0x20c179c
.word RAM_27fffb0 @ 0x20c17a0
.word REG_EXMEMCNT @ 0x20c17a4



.arm
OSi_DoLockByWord: @ 20c17a8 :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r8, r0
	mov     r7, r1
	mov     r6, r2
	mov     r5, r3
	bl      OSi_DoTryLockByWord
	cmp     r0, #0x0
	ldmlefd sp!, {r4-r8,pc}
	mov     r4, #1, 22 @ #0x400
branch_20c17cc: @ 20c17cc :arm
	mov     r0, r4
	blx     Bios_WaitByLoop
	mov     r0, r8
	mov     r1, r7
	mov     r2, r6
	mov     r3, r5
	bl      OSi_DoTryLockByWord
	cmp     r0, #0x0
	bgt     branch_20c17cc
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c17f4


.arm
OS_LockByWord: @ 20c17f4 :arm
	ldr     r12, =OSi_DoLockByWord
	mov     r3, #0x0
	bx      r12
@ 0x20c1800

.pool



.arm
OSi_DoUnlockByWord: @ 20c1804 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r1
	ldrh    r1, [r7, #0x4]
	mov     r6, r2
	mov     r5, r3
	cmp     r0, r1
	mvnne   r0, #0x1
	ldmnefd sp!, {r3-r7,pc}
	cmp     r5, #0x0
	beq     branch_20c1834
	bl      OS_DisableInterrupts_IrqAndFiq
	b       branch_20c1838

branch_20c1834: @ 20c1834 :arm
	bl      OS_DisableInterrupts
branch_20c1838: @ 20c1838 :arm
	mov     r4, r0
	mov     r0, #0x0
	strh    r0, [r7, #0x4]
	cmp     r6, #0x0
	beq     branch_20c1850
	blx     r6
branch_20c1850: @ 20c1850 :arm
	mov     r0, #0x0
	str     r0, [r7]
	cmp     r5, #0x0
	mov     r0, r4
	beq     branch_20c186c
	bl      OS_RestoreInterrupts_IrqAndFiq
	b       branch_20c1870

branch_20c186c: @ 20c186c :arm
	bl      OS_RestoreInterrupts
branch_20c1870: @ 20c1870 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c1878


.arm
OS_UnlockByWord: @ 20c1878 :arm
	ldr     r12, [pc, #0x4] @ [0x20c1884] (=OSi_DoUnlockByWord)
	mov     r3, #0x0
	bx      r12
@ 0x20c1884

.word OSi_DoUnlockByWord @ 0x20c1884



.arm
OSi_DoTryLockByWord: @ 20c1888 :arm
	stmfd   sp!, {r3-r9,lr}
	movs    r6, r3
	mov     r9, r0
	mov     r8, r1
	mov     r7, r2
	beq     branch_20c18a8
	bl      OS_DisableInterrupts_IrqAndFiq
	b       branch_20c18ac

branch_20c18a8: @ 20c18a8 :arm
	bl      OS_DisableInterrupts
branch_20c18ac: @ 20c18ac :arm
	mov     r5, r0
	mov     r0, r9
	mov     r1, r8
	bl      MI_SwapWord
	movs    r4, r0
	bne     branch_20c18d4
	cmp     r7, #0x0
	beq     branch_20c18d0
	blx     r7
branch_20c18d0: @ 20c18d0 :arm
	strh    r9, [r8, #0x4]
branch_20c18d4: @ 20c18d4 :arm
	cmp     r6, #0x0
	mov     r0, r5
	beq     branch_20c18e8
	bl      OS_RestoreInterrupts_IrqAndFiq
	b       branch_20c18ec

branch_20c18e8: @ 20c18e8 :arm
	bl      OS_RestoreInterrupts
branch_20c18ec: @ 20c18ec :arm
	mov     r0, r4
	ldmfd   sp!, {r3-r9,pc}
@ 0x20c18f4


.arm
OS_LockCartridge: @ 20c18f4 :arm
	ldr     r12, [pc, #0xc] @ [0x20c1908] (=OSi_DoLockByWord)
	ldr     r1, [pc, #0xc] @ [0x20c190c] (=RAM_27fffe8)
	ldr     r2, [pc, #0xc] @ [0x20c1910] (=OSi_AllocateCartridgeBus)
	mov     r3, #0x1
	bx      r12
@ 0x20c1908

.word OSi_DoLockByWord @ 0x20c1908
.word RAM_27fffe8 @ 0x20c190c
.word OSi_AllocateCartridgeBus @ 0x20c1910



.arm
OS_UnlockCartridge: @ 20c1914 :arm
	ldr     r12, [pc, #0xc] @ [0x20c1928] (=OSi_DoUnlockByWord)
	ldr     r1, [pc, #0xc] @ [0x20c192c] (=RAM_27fffe8)
	ldr     r2, [pc, #0xc] @ [0x20c1930] (=OSi_FreeCartridgeBus)
	mov     r3, #0x1
	bx      r12
@ 0x20c1928

.word OSi_DoUnlockByWord @ 0x20c1928
.word RAM_27fffe8 @ 0x20c192c
.word OSi_FreeCartridgeBus @ 0x20c1930



.arm
Call_OS_UnlockCartridge: @ 20c1934 :arm
	ldr     r1, [pc, #0x0] @ [0x20c193c] (=OS_UnlockCartridge)
	bx      r1
@ 0x20c193c

.word OS_UnlockCartridge @ 0x20c193c



.arm
OS_TryLockCartridge: @ 20c1940 :arm
	ldr     r12, [pc, #0xc] @ [0x20c1954] (=OSi_DoTryLockByWord)
	ldr     r1, [pc, #0xc] @ [0x20c1958] (=RAM_27fffe8)
	ldr     r2, [pc, #0xc] @ [0x20c195c] (=OSi_AllocateCartridgeBus)
	mov     r3, #0x1
	bx      r12
@ 0x20c1954

.word OSi_DoTryLockByWord @ 0x20c1954
.word RAM_27fffe8 @ 0x20c1958
.word OSi_AllocateCartridgeBus @ 0x20c195c



.arm
OSi_AllocateCartridgeBus: @ 20c1960 :arm
	ldr     r1, =REG_EXMEMCNT
	ldrh    r0, [r1]
	bic     r0, r0, #ARM7_OWNS_ROM
	strh    r0, [r1]
	bx      lr
@ 0x20c1974

.pool



.arm
OSi_FreeCartridgeBus: @ 20c1978 :arm
	ldr     r1, =REG_EXMEMCNT
	ldrh    r0, [r1]
	orr     r0, r0, #ARM7_OWNS_ROM
	strh    r0, [r1]
	bx      lr
@ 0x20c198c

.pool



.arm
OS_LockCard: @ 20c1990 :arm
	ldr     r12, [pc, #0x8] @ [0x20c19a0] (=OS_LockByWord)
	ldr     r1, [pc, #0x8] @ [0x20c19a4] (=RAM_27fffe0)
	ldr     r2, [pc, #0x8] @ [0x20c19a8] (=OSi_AllocateCardBus)
	bx      r12
@ 0x20c19a0

.word OS_LockByWord @ 0x20c19a0
.word RAM_27fffe0 @ 0x20c19a4
.word OSi_AllocateCardBus @ 0x20c19a8



.arm
OS_UnlockCard: @ 20c19ac :arm
	ldr     r12, [pc, #0x8] @ [0x20c19bc] (=OS_UnlockByWord)
	ldr     r1, [pc, #0x8] @ [0x20c19c0] (=RAM_27fffe0)
	ldr     r2, [pc, #0x8] @ [0x20c19c4] (=OSi_FreeCardBus)
	bx      r12
@ 0x20c19bc

.word OS_UnlockByWord @ 0x20c19bc
.word RAM_27fffe0 @ 0x20c19c0
.word OSi_FreeCardBus @ 0x20c19c4



.arm
OSi_AllocateCardBus: @ 20c19c8 :arm
	ldr     r1, =REG_EXMEMCNT
	ldrh    r0, [r1]
	bic     r0, r0, #ARM7_OWNS_CARD
	strh    r0, [r1]
	bx      lr
@ 0x20c19dc

.pool



.arm
OSi_FreeCardBus: @ 20c19e0 :arm
	ldr     r1, =REG_EXMEMCNT
	ldrh    r0, [r1]
	orr     r0, r0, #ARM7_OWNS_CARD
	strh    r0, [r1]
	bx      lr
@ 0x20c19f4

.pool



.arm
OS_ReadOwnerOfLockWord: @ 20c19f8 :arm
	ldrh    r0, [r0, #0x4]
	bx      lr
@ 0x20c1a00


.arm
OS_GetLockID: @ 20c1a00 :arm
	ldr     r3, [pc, #0x58] @ [0x20c1a60] (=RAM_27fffb0)
	ldr     r1, [r3]
	clz     r2, r1
	cmp     r2, #0x20
	bne     branch_20c1a18
	b       branch_20c1a1c

branch_20c1a18: @ 20c1a18 :arm
	mov     r0, #0x40
branch_20c1a1c: @ 20c1a1c :arm
	bne     branch_20c1a44
	add     r3, r3, #0x4
	ldr     r1, [r3]
	clz     r2, r1
	cmp     r2, #0x20
	ldr     r0, [pc, #0x2c] @ [0x20c1a64] (=0xfffffffd)
	beq     branch_20c1a3c
	b       branch_20c1a40

branch_20c1a3c: @ 20c1a3c :arm
	bx      lr

branch_20c1a40: @ 20c1a40 :arm
	mov     r0, #0x60
branch_20c1a44: @ 20c1a44 :arm
	add     r0, r0, r2
	mov     r1, #2, 2 @ #0x80000000
	mov     r1, r1, lsr r2
	ldr     r2, [r3]
	bic     r2, r2, r1
	str     r2, [r3]
	bx      lr
@ 0x20c1a60

.word RAM_27fffb0 @ 0x20c1a60
.word 0xfffffffd @ 0x20c1a64



.arm
OS_ReleaseLockID: @ 20c1a68 :arm
	ldr     r3, [pc, #0x3c] @ [0x20c1aac] (=RAM_27fffb0)
	cmp     r0, #0x60
	bpl     branch_20c1a78
	b       branch_20c1a7c

branch_20c1a78: @ 20c1a78 :arm
	add     r3, r3, #0x4
branch_20c1a7c: @ 20c1a7c :arm
	bpl     branch_20c1a84
	b       branch_20c1a88

branch_20c1a84: @ 20c1a84 :arm
	sub     r0, r0, #0x60
branch_20c1a88: @ 20c1a88 :arm
	bmi     branch_20c1a90
	b       branch_20c1a94

branch_20c1a90: @ 20c1a90 :arm
	sub     r0, r0, #0x40
branch_20c1a94: @ 20c1a94 :arm
	mov     r1, #2, 2 @ #0x80000000
	mov     r1, r1, lsr r0
	ldr     r2, [r3]
	orr     r2, r2, r1
	str     r2, [r3]
	bx      lr
@ 0x20c1aac

.word RAM_27fffb0 @ 0x20c1aac



.arm
.globl Function_20c1ab0
Function_20c1ab0: @ 20c1ab0 :arm
	stmfd   sp!, {r0-r3}
Function_20c1ab4: @ 20c1ab4 :arm
	stmfd   sp!, {r3,lr}
	add     r2, sp, #0xc
	bic     r2, r2, #0x3
	ldr     r1, [sp, #0xc]
	add     r2, r2, #0x4
	bl      Function_20c1ad8
	ldmfd   sp!, {r3,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x20c1ad8


.arm
Function_20c1ad8: @ 20c1ad8 :arm
	ldr     r12, [pc, #0xc] @ [0x20c1aec] (=0x20c1b18)
	mov     r3, r2
	mov     r2, r1
	mvn     r1, #2, 2 @ #0x80000000
	bx      r12
@ 0x20c1aec

.word OS_VSNPrintf @ =0x20c1b18, 0x20c1aec



arm_func_start OS_SNPrintf
OS_SNPrintf: @ 20c1af0 :arm
	stmfd   sp!, {r0-r3}
	stmfd   sp!, {r3,lr}
	add     r3, sp, #0x10
	bic     r3, r3, #0x3
	ldr     r2, [sp, #0x10]
	add     r3, r3, #0x4
	bl      OS_VSNPrintf
	ldmfd   sp!, {r3,lr}
	add     sp, sp, #0x10
	bx      lr
arm_func_end OS_SNPrintf


.arm
OS_VSNPrintf: @ 20c1b18 :arm
	ldr     r12, [pc, #0x0] @ [0x20c1b20] (=Function_20d3524)
	bx      r12
@ 0x20c1b20

.word Function_20d3524 @ 0x20c1b20



.arm
OSi_GetUnusedThreadId: @ 20c1b24 :arm
	ldr     r1, =ThreadLinkedList
	ldr     r0, [r1, #ThreadLinkedList_ID]
	add     r0, r0, #0x1
	str     r0, [r1, #ThreadLinkedList_ID]
	bx      lr
@ 0x20c1b38

.pool



.arm
OSi_InsertLinkToQueue: @ 20c1b3c :arm
	ldr     r12, [r0]
	b       branch_20c1b50

branch_20c1b44: @ 20c1b44 :arm
	cmp     r12, r1
	bxeq    lr

	ldr     r12, [r12, #0x80]
branch_20c1b50: @ 20c1b50 :arm
	cmp     r12, #0x0
	beq     branch_20c1b68
	ldr     r3, [r12, #0x70]
	ldr     r2, [r1, #0x70]
	cmp     r3, r2
	bls     branch_20c1b44

branch_20c1b68: @ 20c1b68 :arm
	cmp     r12, #0x0
	bne     branch_20c1b94
	ldr     r2, [r0, #0x4]
	cmp     r2, #0x0
	streq   r1, [r0]
	strne   r1, [r2, #0x80]
	str     r2, [r1, #0x7c]
	mov     r2, #0x0
	str     r2, [r1, #0x80]
	str     r1, [r0, #0x4]
	bx      lr

branch_20c1b94: @ 20c1b94 :arm
	ldr     r2, [r12, #0x7c]
	cmp     r2, #0x0
	streq   r1, [r0]
	strne   r1, [r2, #0x80]
	str     r2, [r1, #0x7c]
	str     r12, [r1, #0x80]
	str     r1, [r12, #0x7c]
	bx      lr
@ 0x20c1bb4


.arm
OSi_RemoveLinkFromQueue: @ 20c1bb4 :arm
	ldr     r2, [r0]
	cmp     r2, #0x0
	beq     branch_20c1be0
	ldr     r1, [r2, #0x80]
	str     r1, [r0]
	cmp     r1, #0x0
	movne   r0, #0x0
	strne   r0, [r1, #0x7c]
	moveq   r1, #0x0
	streq   r1, [r0, #0x4]
	streq   r1, [r2, #0x78]
branch_20c1be0: @ 20c1be0 :arm
	mov     r0, r2

	bx      lr
@ 0x20c1be8


.arm
OSi_RemoveSpecifiedLinkFromQueue: @ 20c1be8 :arm
	ldr     r12, [r0]
	mov     r2, r12
	cmp     r12, #0x0
	beq     branch_20c1c34
branch_20c1bf8: @ 20c1bf8 :arm
	cmp     r2, r1
	ldr     r3, [r2, #0x80]
	bne     branch_20c1c28
	cmp     r12, r2
	ldr     r12, [r2, #0x7c]
	streq   r3, [r0]
	strne   r3, [r12, #0x80]
	ldr     r1, [r0, #0x4]
	cmp     r1, r2
	streq   r12, [r0, #0x4]
	strne   r12, [r3, #0x7c]
	b       branch_20c1c34

branch_20c1c28: @ 20c1c28 :arm
	mov     r2, r3
	cmp     r3, #0x0
	bne     branch_20c1bf8
branch_20c1c34: @ 20c1c34 :arm
	mov     r0, r2
	bx      lr
@ 0x20c1c3c


.arm
OSi_RemoveMutexLinkFromQueue: @ 20c1c3c :arm
	ldr     r2, [r0]
	cmp     r2, #0x0
	beq     branch_20c1c64
	ldr     r1, [r2, #0x10]
	str     r1, [r0]
	cmp     r1, #0x0
	movne   r0, #0x0
	strne   r0, [r1, #0x14]
	moveq   r1, #0x0
	streq   r1, [r0, #0x4]
branch_20c1c64: @ 20c1c64 :arm
	mov     r0, r2
	bx      lr
@ 0x20c1c6c


/* Input:
r0 = Adr of Thread to insert
*/
.arm
OSi_InsertThreadToList: @ 20c1c6c :arm
	stmfd   sp!, {r3,lr}

	ldr     r1, =ThreadLinkedList
	mov     r12, #0x0
	ldr     lr, [r1, #ThreadLinkedList_FirstNode]
	mov     r3, lr
	b       branch_20c1c8c

branch_20c1c84: @ 20c1c84 :arm
	mov     r12, r3
	ldr     r3, [r3, #Thread_Next]
branch_20c1c8c: @ 20c1c8c :arm
	cmp     r3, #0x0
	beq     branch_20c1ca4
	ldr     r2, [r3, #Thread_Priority]
	ldr     r1, [r0, #Thread_Priority]
	cmp     r2, r1
	bcc     branch_20c1c84

branch_20c1ca4: @ 20c1ca4 :arm
	cmp     r12, #0x0
	ldrne   r1, [r12, #Thread_Next]
	strne   r1, [r0, #Thread_Next]
	strne   r0, [r12, #Thread_Next]
	ldmnefd sp!, {r3,pc}

	ldr     r1, =ThreadLinkedList
	str     lr, [r0, #Thread_Next]
	str     r0, [r1, #ThreadLinkedList_FirstNode]
	ldmfd   sp!, {r3,pc}
@ 0x20c1cc8

.pool



/* Input:
r0 = Adr of Thread to remove
*/
.arm
OSi_RemoveThreadFromList: @ 20c1ccc :arm
	ldr     r1, =ThreadLinkedList
	mov     r2, #0x0
	ldr     r1, [r1, #ThreadLinkedList_FirstNode]
	b       branch_20c1ce4

branch_20c1cdc: @ 20c1cdc :arm
	mov     r2, r1
	ldr     r1, [r1, #Thread_Next]
branch_20c1ce4: @ 20c1ce4 :arm
	cmp     r1, #0x0
	cmpne   r1, r0
	bne     branch_20c1cdc

	cmp     r2, #0x0
	ldrne   r0, [r0, #Thread_Next]
	strne   r0, [r2, #Thread_Next]
	bxne    lr

	ldr     r1, [r0, #Thread_Next]
	ldr     r0, =ThreadLinkedList
	str     r1, [r0, #ThreadLinkedList_FirstNode]
	bx      lr
@ 0x20c1d10

.pool



.arm
OSi_RescheduleThread: @ 20c1d14 :arm
	stmfd   sp!, {r4-r6,lr}

	ldr     r0, =ThreadLinkedList
	ldr     r1, [r0, #ThreadLinkedList_Scheduler]
	cmp     r1, #0x0
	ldmnefd sp!, {r4-r6,pc}

	ldrh    r0, [r0, #ThreadLinkedList_26]
	ldr     r4, =RAM_21ccc80
	cmp     r0, #0x0
	bne     branch_20c1d44
	bl      OS_GetProcMode
	cmp     r0, #0x12
	bne     branch_20c1d50
branch_20c1d44: @ 20c1d44 :arm
	mov     r0, #0x1
	strh    r0, [r4, #ThreadLinkedList_24-ThreadLinkedList_24]
	ldmfd   sp!, {r4-r6,pc}

branch_20c1d50: @ 20c1d50 :arm
	ldr     r0, =ThreadLinkedList
	ldr     r0, [r0, #ThreadLinkedList_8]
	ldr     r6, [r0]
	bl      OS_SelectThread
	mov     r5, r0
	cmp     r6, r5
	cmpne   r5, #0x0
	ldmeqfd sp!, {r4-r6,pc}

	ldr     r0, [r6, #0x64]
	cmp     r0, #0x2
	beq     branch_20c1d8c
	mov     r0, r6
	bl      OS_SaveContext
	cmp     r0, #0x0
	ldmnefd sp!, {r4-r6,pc}

branch_20c1d8c: @ 20c1d8c :arm
	ldr     r0, =ThreadLinkedList
	ldr     r2, [r0, #ThreadLinkedList_0]
	cmp     r2, #0x0
	beq     branch_20c1da8
	mov     r0, r6
	mov     r1, r5
	blx     r2
branch_20c1da8: @ 20c1da8 :arm

	ldr     r2, [r4, #ThreadLinkedList_24_c]
	cmp     r2, #0x0
	beq     branch_20c1dc0
	mov     r0, r6
	mov     r1, r5
	blx     r2
branch_20c1dc0: @ 20c1dc0 :arm

	ldr     r1, =ThreadLinkedList
	mov     r0, r5
	str     r5, [r1, #ThreadLinkedList_28]
	bl      OS_LoadContext
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c1dd4

.pool



.arm
OS_InitThread: @ 20c1ddc :arm
	stmfd   sp!, {r3,lr}
	sub     sp, sp, #0x8

	ldr     r0, [pc, #0x100] @ [0x20c1eec] (=ThreadLinkedList)
	ldr     r1, [r0, #ThreadLinkedList_c]
	cmp     r1, #0x0
	addne   sp, sp, #0x8
	ldmnefd sp!, {r3,pc}

	mov     r2, #0x1
	ldr     r1, [pc, #0xec] @ [0x20c1ef0] (=RAM_21ccc84)
	str     r2, [r0, #ThreadLinkedList_c]
	str     r1, [r0, #ThreadLinkedList_8]
	mov     r1, #0x10
	str     r1, [r0, #0x164]
	mov     r3, #0x0
	str     r3, [r0, #0x160]
	str     r2, [r0, #0x158]
	str     r3, [r0, #0x15c]
	ldr     r2, [pc, #0xcc] @ [0x20c1ef4] (=0x0)
	ldr     r1, [pc, #0xcc] @ [0x20c1ef8] (=RAM_21ccd50)
	str     r3, [r0, #0x168]
	str     r1, [r0, #ThreadLinkedList_FirstNode]
	str     r1, [r0, #ThreadLinkedList_28]
	cmp     r2, #0x0
	ldrle   r0, [pc, #0xbc] @ [0x20c1efc] (=RAM_27e0080)
	ble     branch_20c1e50
	ldr     r1, [pc, #0xb8] @ [0x20c1f00] (=RAM_27e0000)
	ldr     r0, [pc, #0xb8] @ [0x20c1f04] (=0x800)
	add     r1, r1, #254, 26 @ #0x3f80
	sub     r0, r1, r0
branch_20c1e50: @ 20c1e50 :arm
	ldr     r1, [pc, #0xa8] @ [0x20c1f00] (=RAM_27e0000)
	sub     r12, r0, r2
	add     r2, r1, #0x3f80
	ldr     r0, [pc, #0xa0] @ [0x20c1f04] (=0x800)
	ldr     r1, [pc, #0x84] @ [0x20c1eec] (=ThreadLinkedList)
	sub     r3, r2, r0
	str     r3, [r1, #0x188]
	str     r12, [r1, #0x184]
	mov     r0, #0x0
	ldr     r2, [pc, #0x8c] @ [0x20c1f08] (=0xfddb597d)
	str     r0, [r1, #0x18c]
	str     r2, [r3, #-0x4]
	ldr     r2, [r1, #0x184]
	ldr     r12, [pc, #0x80] @ [0x20c1f0c] (=0x7bf9dd5b)
	ldr     r3, [pc, #0x80] @ [0x20c1f10] (=RAM_21ccc80)
	str     r12, [r2]
	str     r0, [r1, #0x194]
	str     r0, [r1, #0x190]
	strh    r0, [r1, #ThreadLinkedList_24]
	ldr     r2, [pc, #0x70] @ [0x20c1f14] (=RAM_27fffa0)
	strh    r0, [r1, #ThreadLinkedList_26]
	str     r3, [r2]
	bl      OS_SetSwitchThreadCallback
	mov     r2, #0xc8
	str     r2, [sp]
	mov     r12, #0x1f
	ldr     r0, [pc, #0x58] @ [0x20c1f18] (=RAM_21ccc90)
	ldr     r1, [pc, #0x58] @ [0x20c1f1c] (=ThreadDummy)
	ldr     r3, [pc, #0x58] @ [0x20c1f20] (=RAM_21cced8)
	mov     r2, #0x0
	str     r12, [sp, #0x4]
	bl      OS_CreateThread
	ldr     r0, [pc, #0x14] @ [0x20c1eec] (=ThreadLinkedList)
	mov     r1, #0x20
	str     r1, [r0, #0xa4]
	mov     r1, #0x1
	str     r1, [r0, #0x98]

	add     sp, sp, #0x8
	ldmfd   sp!, {r3,pc}
@ 0x20c1eec

.word ThreadLinkedList @ 0x20c1eec
.word RAM_21ccc84 @ 0x20c1ef0
.word 0x0 @ 0x20c1ef4
.word RAM_21ccd50 @ 0x20c1ef8
.word RAM_27e0080 @ 0x20c1efc
.word RAM_27e0000 @ 0x20c1f00
.word 0x800 @ 0x20c1f04
.word 0xfddb597d @ 0x20c1f08
.word 0x7bf9dd5b @ 0x20c1f0c
.word RAM_21ccc80 @ 0x20c1f10
.word RAM_27fffa0 @ 0x20c1f14
.word RAM_21ccc90 @ 0x20c1f18
.word ThreadDummy @ 0x20c1f1c
.word RAM_21cced8 @ 0x20c1f20



.arm
Function_20c1f24: @ 20c1f24 :arm
	ldr     r0, [pc, #0x4] @ [0x20c1f30] (=RAM_21ccc68)
	ldr     r0, [r0]
	bx      lr

.word RAM_21ccc68 @ 0x20c1f30



/* Input:
r0 = Adr of Thread to Create
r1 = Adr of Function
*/
arm_func_start OS_CreateThread
OS_CreateThread: @ 20c1f34 :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r8, r0
	mov     r5, r1
	mov     r7, r2
	mov     r6, r3

	bl      OS_DisableInterrupts
	mov     r4, r0

	bl      OSi_GetUnusedThreadId
	ldr     r2, [sp, #0x1c]
	mov     r1, #0x0
	str     r2, [r8, #Thread_Priority]
	str     r0, [r8, #Thread_ID]
	str     r1, [r8, #Thread_Active]

	mov     r0, r8
	str     r1, [r8, #Thread_74]
	bl      OSi_InsertThreadToList

	ldr     r0, [sp, #0x18]
	mov     r1, r5
	str     r6, [r8, #Thread_94]
	sub     r5, r6, r0
	sub     r2, r6, #0x4
	mov     r12, #0x0
	str     r5, [r8, #Thread_90]
	str     r12, [r8, #Thread_98]
	ldr     r6, =0xfddb597d
	ldr     r0, [r8, #Thread_94]
	ldr     r3, =0x7bf9dd5b
	str     r6, [r0, #-0x4]
	ldr     r0, [r8, #Thread_90]
	str     r3, [r0]
	str     r12, [r8, #Thread_a0]
	mov     r0, r8
	str     r12, [r8, #Thread_9c]
	bl      OS_InitContext

	ldr     r2, =OS_ExitThread
	str     r7, [r8, #Thread_4]
	str     r2, [r8, #Thread_3c]
	ldr     r2, [sp, #0x18]
	add     r1, r5, #0x4
	mov     r0, #0x0
	sub     r2, r2, #0x8
	bl      MIi_CpuClear32

	mov     r1, #0x0
	str     r1, [r8, #Thread_84]
	str     r1, [r8, #Thread_88]
	mov     r0, r8
	str     r1, [r8, #Thread_8c]
	bl      OS_SetThreadDestructor_0

	mov     r0, #0x0
	str     r0, [r8, #Thread_78]
	str     r0, [r8, #Thread_80]
	add     r1, r8, #Thread_a4
	mov     r2, #0xc
	str     r0, [r8, #Thread_7c]
	bl      MIi_CpuClear32

	mov     r1, #0x0
	mov     r0, r4
	str     r1, [r8, #Thread_b0]
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c2024

.pool
arm_func_end OS_CreateThread



.arm
OS_ExitThread: @ 20c2030 :arm
	stmfd   sp!, {r3,lr}
	bl      OS_DisableInterrupts

	ldr     r0, =ThreadLinkedList
	mov     r1, #0x0
	ldr     r0, [r0, #ThreadLinkedList_28]
	bl      OSi_ExitThread_ArgSpecified

	ldmfd   sp!, {r3,pc}
@ 0x20c204c

.pool



.arm
OSi_ExitThread_ArgSpecified: @ 20c2050 :arm
	stmfd   sp!, {r3-r5,lr}

	ldr     r2, =ThreadLinkedList
	mov     r5, r0
	ldr     r2, [r2, #ThreadLinkedList_1c]
	mov     r4, r1
	cmp     r2, #0x0
	beq     branch_20c2098
	ldr     r1, =OSi_ExitThread
	bl      OS_InitContext
	str     r4, [r5, #0x4]
	ldr     r1, [r5]
	mov     r0, r5
	orr     r1, r1, #0x80
	str     r1, [r5]
	mov     r1, #0x1
	str     r1, [r5, #0x64]
	bl      OS_LoadContext
	ldmfd   sp!, {r3-r5,pc}

branch_20c2098: @ 20c2098 :arm
	mov     r0, r4
	bl      OSi_ExitThread
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c20a4

.pool



.arm
OSi_ExitThread: @ 20c20ac :arm
	stmfd   sp!, {r3,lr}

	ldr     r1, =ThreadLinkedList
	ldr     r1, [r1, #ThreadLinkedList_8]
	ldr     r3, [r1]
	ldr     r2, [r3, #Thread_Destructor]
	cmp     r2, #0x0
	beq     branch_20c20d8
	mov     r1, #0x0
	str     r1, [r3, #Thread_Destructor]
	blx     r2
	bl      OS_DisableInterrupts
branch_20c20d8: @ 20c20d8 :arm
	bl      OSi_ExitThread_Destroy

	ldmfd   sp!, {r3,pc}
@ 0x20c20e0

.pool



.arm
OSi_ExitThread_Destroy: @ 20c20e4 :arm
	stmfd   sp!, {r4,lr}

    ldr     r0, =ThreadLinkedList
	ldr     r0, [r0, #ThreadLinkedList_8]
	ldr     r4, [r0]
	bl      OS_DisableScheduler
	mov     r0, r4
	bl      OSi_UnlockAllMutex
	ldr     r0, [r4, #0x78]
	cmp     r0, #0x0
	beq     branch_20c2114
	mov     r1, r4
	bl      OSi_RemoveSpecifiedLinkFromQueue
branch_20c2114: @ 20c2114 :arm
	mov     r0, r4
	bl      OSi_RemoveThreadFromList
	mov     r1, #0x2
	add     r0, r4, #0x9c
	str     r1, [r4, #0x64]
	bl      OS_WakeupThread
	bl      OS_EnableScheduler
	bl      OS_RescheduleThread
	bl      OS_Panic
	ldmfd   sp!, {r4,pc}
@ 0x20c213c

.pool



.arm
.globl Function_20c2140
Function_20c2140: @ 20c2140 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	bl      OS_DisableInterrupts
	ldr     r1, [pc, #0x64] @ [0x20c21b8] (=ThreadLinkedList)
	mov     r4, r0
	ldr     r0, [r1, #0x28]
	cmp     r0, r5
	bne     branch_20c2164
	bl      OSi_ExitThread_Destroy
branch_20c2164: @ 20c2164 :arm
	bl      OS_DisableScheduler
	mov     r0, r5
	bl      OSi_UnlockAllMutex
	mov     r0, r5
	bl      Function_20c21bc
	ldr     r0, [r5, #0x78]
	cmp     r0, #0x0
	beq     branch_20c218c
	mov     r1, r5
	bl      OSi_RemoveSpecifiedLinkFromQueue
branch_20c218c: @ 20c218c :arm
	mov     r0, r5
	bl      OSi_RemoveThreadFromList
	mov     r1, #0x2
	add     r0, r5, #0x9c
	str     r1, [r5, #0x64]
	bl      OS_WakeupThread
	bl      OS_EnableScheduler
	mov     r0, r4
	bl      OS_RestoreInterrupts
	bl      OS_RescheduleThread
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c21b8

.word ThreadLinkedList @ 0x20c21b8



.arm
Function_20c21bc: @ 20c21bc :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [r0, #0xb0]
	cmp     r0, #0x0
	ldmeqfd sp!, {r3,pc}
	bl      Function_20c3bb4
	ldmfd   sp!, {r3,pc}
@ 0x20c21d4


.arm
.globl Function_20c21d4
Function_20c21d4: @ 20c21d4 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	bl      OS_DisableInterrupts

	ldr     r1, [r5, #0x64]
	mov     r4, r0
	cmp     r1, #0x2
	beq     branch_20c21f8
	add     r0, r5, #0x9c
	bl      OS_SleepThread
branch_20c21f8: @ 20c21f8 :arm

	mov     r0, r4
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c2204


.arm
.globl Function_20c2204
Function_20c2204: @ 20c2204 :arm
	ldr     r0, [r0, #0x64]
	cmp     r0, #0x2
	moveq   r0, #0x1
	movne   r0, #0x0
	bx      lr
@ 0x20c2218


arm_func_start OS_SleepThread
OS_SleepThread: @ 20c2218 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0

	bl      OS_DisableInterrupts

	ldr     r1, =ThreadLinkedList
	mov     r4, r0
	ldr     r0, [r1, #ThreadLinkedList_8]
	cmp     r6, #0x0
	ldr     r5, [r0]
	beq     branch_20c224c

	mov     r0, r6
	mov     r1, r5
	str     r6, [r5, #Thread_78]
	bl      OSi_InsertLinkToQueue
branch_20c224c: @ 20c224c :arm

	mov     r0, #0x0
	str     r0, [r5, #Thread_Active]
	bl      OSi_RescheduleThread

	mov     r0, r4
	bl      OS_RestoreInterrupts

	ldmfd   sp!, {r4-r6,pc}
@ 0x20c2264

.pool
arm_func_end OS_SleepThread



arm_func_start OS_WakeupThread
OS_WakeupThread: @ 20c2268 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	bl      OS_DisableInterrupts

	ldr     r1, [r7, #Thread_0]
	mov     r6, r0
	cmp     r1, #0x0
	beq     branch_20c22c4
	beq     branch_20c22b4
	mov     r5, #0x1
	mov     r4, #0x0
branch_20c2290: @ 20c2290 :arm
	mov     r0, r7
	bl      OSi_RemoveLinkFromQueue
	str     r5, [r0, #Thread_Active]
	str     r4, [r0, #Thread_78]
	str     r4, [r0, #Thread_80]
	str     r4, [r0, #Thread_7c]
	ldr     r0, [r7]
	cmp     r0, #0x0
	bne     branch_20c2290
branch_20c22b4: @ 20c22b4 :arm
	mov     r0, #0x0
	str     r0, [r7, #Thread_4]
	str     r0, [r7, #Thread_0]
	bl      OSi_RescheduleThread
branch_20c22c4: @ 20c22c4 :arm

	mov     r0, r6
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r3-r7,pc}
arm_func_end OS_WakeupThread


arm_func_start OS_WakeupThreadDirect
OS_WakeupThreadDirect: @ 20c22d0 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	bl      OS_DisableInterrupts

	mov     r1, #0x1
	mov     r4, r0
	str     r1, [r5, #Thread_Active]
	bl      OSi_RescheduleThread

	mov     r0, r4
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r3-r5,pc}
arm_func_end OS_WakeupThreadDirect


.arm
OS_SelectThread: @ 20c22f8 :arm
	ldr     r0, =ThreadLinkedList
	ldr     r0, [r0, #ThreadLinkedList_FirstNode]
	b       branch_20c2308

branch_20c2304: @ 20c2304 :arm
	ldr     r0, [r0, #Thread_Next]
branch_20c2308: @ 20c2308 :arm
	cmp     r0, #0x0
	ldrne   r1, [r0, #Thread_Active]
	cmpne   r1, #0x1
	bne     branch_20c2304

	bx      lr
@ 0x20c231c

.pool



arm_func_start OS_RescheduleThread
OS_RescheduleThread: @ 20c2320 :arm
	stmfd   sp!, {r4,lr}
	bl      OS_DisableInterrupts
	mov     r4, r0

	bl      OSi_RescheduleThread

	mov     r0, r4
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r4,pc}
arm_func_end OS_RescheduleThread


.arm
.globl Function_20c233c
Function_20c233c: @ 20c233c :arm
	stmfd   sp!, {r4-r8,lr}

	ldr     r0, =ThreadLinkedList
	mov     r4, #0x0
	mov     r5, r4
	mov     r6, r4
	ldr     r8, [r0, #ThreadLinkedList_28]
	bl      OS_DisableInterrupts

	ldr     r1, =ThreadLinkedList
	mov     r7, r0
	ldr     r1, [r1, #ThreadLinkedList_FirstNode]
	mov     r0, r4
	cmp     r1, #0x0
	beq     branch_20c239c
	ldr     r2, [r8, #Thread_Priority]
branch_20c2374: @ 20c2374 :arm
	cmp     r1, r8
	moveq   r4, r0
	ldr     r0, [r1, #Thread_Priority]
	cmp     r2, r0
	moveq   r5, r1
	mov     r0, r1
	ldr     r1, [r1, #Thread_Next]
	addeq   r6, r6, #0x1
	cmp     r1, #0x0
	bne     branch_20c2374
branch_20c239c: @ 20c239c :arm
	cmp     r6, #0x1
	ble     branch_20c23ac
	cmp     r5, r8
	bne     branch_20c23b8
branch_20c23ac: @ 20c23ac :arm

	mov     r0, r7
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r4-r8,pc}

branch_20c23b8: @ 20c23b8 :arm
	cmp     r4, #0x0
	ldrne   r0, [r8, #Thread_Next]
	strne   r0, [r4, #Thread_Next]
	bne     branch_20c23d4
	ldr     r1, [r8, #Thread_Next]
	ldr     r0, =ThreadLinkedList
	str     r1, [r0, #0x2c]
branch_20c23d4: @ 20c23d4 :arm
	ldr     r0, [r5, #Thread_Next]
	str     r0, [r8, #Thread_Next]
	str     r8, [r5, #Thread_Next]
	bl      OSi_RescheduleThread

	mov     r0, r7
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c23f0

.pool



/* Input:
r0 = Adr of Thread
r1 = Priority
*/
arm_func_start OS_SetThreadPriority
OS_SetThreadPriority: @ 20c23f4 :arm
	stmfd   sp!, {r4-r8,lr}

	ldr     r2, =ThreadLinkedList
	mov     r7, r0
	mov     r6, r1
	ldr     r8, [r2, #ThreadLinkedList_FirstNode]
	mov     r4, #0x0
	bl      OS_DisableInterrupts
	mov     r5, r0
	b       branch_20c2420

branch_20c2418: @ 20c2418 :arm
	mov     r4, r8
	ldr     r8, [r8, #Thread_Next]
branch_20c2420: @ 20c2420 :arm
	cmp     r8, #0x0
	cmpne   r8, r7
	bne     branch_20c2418

	cmp     r8, #0x0
	ldrne   r0, =RAM_21ccc90
	cmpne   r8, r0
	bne     branch_20c244c
	mov     r0, r5
	bl      OS_RestoreInterrupts
	mov     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}

branch_20c244c: @ 20c244c :arm
	ldr     r0, [r8, #Thread_Priority]
	cmp     r0, r6
	beq     branch_20c2484
	cmp     r4, #0x0
	ldrne   r0, [r7, #Thread_Next]
	strne   r0, [r4, #Thread_Next]
	bne     branch_20c2474
	ldr     r1, [r7, #Thread_Next]
	ldr     r0, =ThreadLinkedList
	str     r1, [r0, #ThreadLinkedList_FirstNode]
branch_20c2474: @ 20c2474 :arm
	mov     r0, r7
	str     r6, [r7, #Thread_Priority]
	bl      OSi_InsertThreadToList
	bl      OSi_RescheduleThread
branch_20c2484: @ 20c2484 :arm

	mov     r0, r5
	bl      OS_RestoreInterrupts
	mov     r0, #0x1
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c2494

.pool
arm_func_end OS_SetThreadPriority



.arm
.globl Function_20c249c
Function_20c249c: @ 20c249c :arm
	ldr     r0, [r0, #0x70]
	bx      lr
@ 0x20c24a4


arm_func_start OS_Sleep
OS_Sleep: @ 20c24a4 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x34
	mov     r4, r0

	add     r0, sp, #0x8
	bl      OS_CreateAlarm
	ldr     r0, =ThreadLinkedList
	ldr     r0, [r0, #ThreadLinkedList_8]
	ldr     r0, [r0]
	str     r0, [sp, #0x4]
	bl      OS_DisableInterrupts

	ldr     r1, =0x82ea
	mov     r2, #0x0
	umull   r5, r3, r4, r1
	mla     r3, r4, r2, r3
	mla     r3, r2, r1, r3
	mov     r1, r5, lsr #6
	mov     r4, r0
	ldr     r5, [sp, #0x4]
	add     r0, sp, #0x8
	add     r2, sp, #0x4
	str     r0, [r5, #0xb0]
	str     r2, [sp]
	mov     r2, r3, lsr #6
	orr     r1, r1, r3, lsl #26
	ldr     r3, =Function_20c254c
	bl      OS_SetAlarm

	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_20c2530
	mov     r5, #0x0
branch_20c251c: @ 20c251c :arm
	mov     r0, r5
	bl      OS_SleepThread
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_20c251c
branch_20c2530: @ 20c2530 :arm

	mov     r0, r4
	bl      OS_RestoreInterrupts
	add     sp, sp, #0x34
	ldmfd   sp!, {r4,r5,pc}
@ 0x20c2540

.pool
arm_func_end OS_Sleep



.arm
Function_20c254c: @ 20c254c :arm
	ldr     r2, [r0]
	mov     r1, #0x0
	str     r1, [r0]
	ldr     r12, =OS_WakeupThreadDirect
	mov     r0, r2
	str     r1, [r2, #0xb0]
	bx      r12
@ 0x20c2568

.pool



.arm
OS_SetSwitchThreadCallback: @ 20c256c :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	bl      OS_DisableInterrupts

	ldr     r1, =ThreadLinkedList
	ldr     r4, [r1, #ThreadLinkedList_30]
	str     r5, [r1, #ThreadLinkedList_30]

	bl      OS_RestoreInterrupts
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c2590

.pool



.arm
ThreadDummy: @ 20c2594 :arm
	stmfd   sp!, {r3,lr}
	bl      OS_EnableInterrupts

branch_20c259c: @ 20c259c :arm
	bl      OS_Halt
	b       branch_20c259c
@ 0x20c25a4


arm_func_start OS_DisableScheduler
OS_DisableScheduler: @ 20c25a4 :arm
	stmfd   sp!, {r4,lr}
	bl      OS_DisableInterrupts

	ldr     r2, =ThreadLinkedList
	mvn     r1, #0x0
	ldr     r3, [r2, #ThreadLinkedList_Scheduler]
	cmp     r3, r1
	addcc   r1, r3, #0x1
	movcc   r4, r3
	strcc   r1, [r2, #ThreadLinkedList_Scheduler]

	bl      OS_RestoreInterrupts
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x20c25d4

.pool
arm_func_end OS_DisableScheduler



arm_func_start OS_EnableScheduler
OS_EnableScheduler: @ 20c25d8 :arm
	stmfd   sp!, {r4,lr}
	bl      OS_DisableInterrupts

	ldr     r1, =ThreadLinkedList
	mov     r4, #0x0
	ldr     r3, [r1, #ThreadLinkedList_Scheduler]
	cmp     r3, #0x0
	subne   r2, r3, #0x1
	movne   r4, r3
	strne   r2, [r1, #ThreadLinkedList_Scheduler]

	bl      OS_RestoreInterrupts
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x20c2608

.pool
arm_func_end OS_EnableScheduler



.arm
OS_SetThreadDestructor_0: @ 20c260c :arm
	str     r1, [r0, #Thread_Destructor]
	bx      lr
@ 0x20c2614


.arm
OS_InitContext: @ 20c2614 :arm
	add     r1, r1, #0x4
	str     r1, [r0, #Thread_40]
	str     r2, [r0, #Thread_44]
	sub     r2, r2, #0x40
	tst     r2, #0x4
	bne     branch_20c2630
	b       branch_20c2634

branch_20c2630: @ 20c2630 :arm
	sub     r2, r2, #0x4
branch_20c2634: @ 20c2634 :arm
	str     r2, [r0, #Thread_38]
	ands    r1, r1, #0x1
	bne     branch_20c2644
	b       branch_20c2648

branch_20c2644: @ 20c2644 :arm
	mov     r1, #0x3f
branch_20c2648: @ 20c2648 :arm
	beq     branch_20c2650
	b       branch_20c2654

branch_20c2650: @ 20c2650 :arm
	mov     r1, #0x1f
branch_20c2654: @ 20c2654 :arm
	str     r1, [r0, #Thread_0]
	mov     r1, #0x0
	str     r1, [r0, #Thread_4]
	str     r1, [r0, #Thread_8]
	str     r1, [r0, #Thread_c]
	str     r1, [r0, #Thread_10]
	str     r1, [r0, #Thread_14]
	str     r1, [r0, #Thread_18]
	str     r1, [r0, #Thread_1c]
	str     r1, [r0, #Thread_20]
	str     r1, [r0, #Thread_24]
	str     r1, [r0, #Thread_28]
	str     r1, [r0, #Thread_2c]
	str     r1, [r0, #Thread_30]
	str     r1, [r0, #Thread_34]
	str     r1, [r0, #Thread_3c]
	bx      lr
@ 0x20c2698


.arm
OS_SaveContext: @ 20c2698 :arm
	stmfd   sp!, {r0,lr}
	add     r0, r0, #0x48
	ldr     r1, =CP_SaveContext
	blx     r1
	ldmfd   sp!, {r0,lr}
	add     r1, r0, #0x0
	mrs     r2, CPSR
	str     r2, [r1], #0x4
	mov     r0, #0xd3
	msr     CPSR_c, r0
	str     sp, [r1, #0x40]
	msr     CPSR_c, r2
	mov     r0, #0x1
	stmia   r1, {r0-lr}
	add     r0, pc, #0x8
	str     r0, [r1, #0x3c]
	mov     r0, #0x0
	bx      lr
@ 0x20c26e0

.pool



.arm
OS_LoadContext: @ 20c26e4 :arm
	stmfd   sp!, {r0,lr}
	add     r0, r0, #0x48
	ldr     r1, [pc, #0x30] @ [0x20c2724] (=0x20c9a3c)
	blx     r1
	ldmfd   sp!, {r0,lr}
	mrs     r1, CPSR
	bic     r1, r1, #0x1f
	orr     r1, r1, #0xd3
	msr     CPSR_c, r1
	ldr     r1, [r0], #0x4
	msr     SPSR_fsxc, r1
	ldr     sp, [r0, #0x40]
	ldr     lr, [r0, #0x3c]
	ldmia   r0, {r0-lr}^
	mov     r0, r0
	subs    pc, lr, #0x4
	andeq   r9, r12, #60, 20 @ #0x3c000
Function_20c2728: @ 20c2728 :arm
	mov     r0, #0x0
	bx      lr
@ 0x20c2730


.arm
OS_GetConsoleType: @ 20c2730 :arm
	ldr     r0, [pc, #0x8] @ [0x20c2740] (=0x82000001)
	ldr     r1, [pc, #0x8] @ [0x20c2744] (=Unknown_210115c)
	str     r0, [r1]
	bx      lr
@ 0x20c2740

.word 0x82000001 @ 0x20c2740
.word Unknown_210115c @ 0x20c2744



arm_func_start OS_InitMessageQueue
OS_InitMessageQueue: @ 20c2748 :arm
	mov     r3, #0x0
	str     r3, [r0, #0x4]
	str     r3, [r0]
	str     r3, [r0, #0xc]
	str     r3, [r0, #0x8]
	str     r1, [r0, #0x10]
	str     r2, [r0, #0x14]
	str     r3, [r0, #0x18]
	str     r3, [r0, #0x1c]
	bx      lr
arm_func_end OS_InitMessageQueue


arm_func_start OS_SendMessage
OS_SendMessage: @ 20c2770 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r7, r2
	bl      OS_DisableInterrupts

	ldr     r2, [r5, #0x1c]
	ldr     r1, [r5, #0x14]
	mov     r6, r0
	cmp     r1, r2
	bgt     branch_20c27cc
	and     r7, r7, #0x1
branch_20c279c: @ 20c279c :arm
	cmp     r7, #0x0
	bne     branch_20c27b4
	mov     r0, r6
	bl      OS_RestoreInterrupts
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}

branch_20c27b4: @ 20c27b4 :arm
	mov     r0, r5
	bl      OS_SleepThread
	ldr     r2, [r5, #0x1c]
	ldr     r1, [r5, #0x14]
	cmp     r1, r2
	ble     branch_20c279c
branch_20c27cc: @ 20c27cc :arm
	ldr     r0, [r5, #0x18]
	add     r0, r0, r2
	bl      _s32_div_f
	ldr     r2, [r5, #0x10]
	add     r0, r5, #0x8
	str     r4, [r2, r1, lsl #0x2]
	ldr     r1, [r5, #0x1c]
	add     r1, r1, #0x1
	str     r1, [r5, #0x1c]
	bl      OS_WakeupThread
	mov     r0, r6
	bl      OS_RestoreInterrupts
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
arm_func_end OS_SendMessage


arm_func_start OS_ReceiveMessage
OS_ReceiveMessage: @ 20c2804 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r7, r2
	bl      OS_DisableInterrupts
	ldr     r1, [r6, #0x1c]
	mov     r4, r0
	cmp     r1, #0x0
	bne     branch_20c2858
	and     r7, r7, #0x1
branch_20c282c: @ 20c282c :arm
	cmp     r7, #0x0
	bne     branch_20c2844
	mov     r0, r4
	bl      OS_RestoreInterrupts
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}

branch_20c2844: @ 20c2844 :arm
	add     r0, r6, #0x8
	bl      OS_SleepThread
	ldr     r0, [r6, #0x1c]
	cmp     r0, #0x0
	beq     branch_20c282c
branch_20c2858: @ 20c2858 :arm
	cmp     r5, #0x0
	beq     branch_20c2870
	ldr     r1, [r6, #0x10]
	ldr     r0, [r6, #0x18]
	ldr     r0, [r1, r0, lsl #0x2]
	str     r0, [r5]
branch_20c2870: @ 20c2870 :arm
	ldr     r0, [r6, #0x18]
	ldr     r1, [r6, #0x14]
	add     r0, r0, #0x1
	bl      _s32_div_f
	str     r1, [r6, #0x18]
	ldr     r1, [r6, #0x1c]
	mov     r0, r6
	sub     r1, r1, #0x1
	str     r1, [r6, #0x1c]
	bl      OS_WakeupThread
	mov     r0, r4
	bl      OS_RestoreInterrupts
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
arm_func_end OS_ReceiveMessage


.arm
OS_JamMessage: @ 20c28a8 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r7, r2
	bl      OS_DisableInterrupts
	ldr     r1, [r6, #0x14]
	ldr     r2, [r6, #0x1c]
	mov     r4, r0
	cmp     r1, r2
	bgt     branch_20c2904
	and     r7, r7, #0x1
branch_20c28d4: @ 20c28d4 :arm
	cmp     r7, #0x0
	bne     branch_20c28ec
	mov     r0, r4
	bl      OS_RestoreInterrupts
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}

branch_20c28ec: @ 20c28ec :arm
	mov     r0, r6
	bl      OS_SleepThread
	ldr     r1, [r6, #0x14]
	ldr     r0, [r6, #0x1c]
	cmp     r1, r0
	ble     branch_20c28d4
branch_20c2904: @ 20c2904 :arm
	ldr     r0, [r6, #0x18]
	add     r0, r0, r1
	sub     r0, r0, #0x1
	bl      _s32_div_f
	str     r1, [r6, #0x18]
	ldr     r0, [r6, #0x10]
	str     r5, [r0, r1, lsl #0x2]
	ldr     r1, [r6, #0x1c]
	add     r0, r6, #0x8
	add     r1, r1, #0x1
	str     r1, [r6, #0x1c]
	bl      OS_WakeupThread
	mov     r0, r4
	bl      OS_RestoreInterrupts
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c2944


.arm
.globl Function_20c2944
Function_20c2944: @ 20c2944 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r7, r2
	bl      OS_DisableInterrupts
	ldr     r1, [r6, #0x1c]
	mov     r4, r0
	cmp     r1, #0x0
	bne     branch_20c2998
	and     r7, r7, #0x1
branch_20c296c: @ 20c296c :arm
	cmp     r7, #0x0
	bne     branch_20c2984
	mov     r0, r4
	bl      OS_RestoreInterrupts
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}

branch_20c2984: @ 20c2984 :arm
	add     r0, r6, #0x8
	bl      OS_SleepThread
	ldr     r0, [r6, #0x1c]
	cmp     r0, #0x0
	beq     branch_20c296c
branch_20c2998: @ 20c2998 :arm
	cmp     r5, #0x0
	beq     branch_20c29b0
	ldr     r1, [r6, #0x10]
	ldr     r0, [r6, #0x18]
	ldr     r0, [r1, r0, lsl #0x2]
	str     r0, [r5]
branch_20c29b0: @ 20c29b0 :arm
	mov     r0, r4
	bl      OS_RestoreInterrupts
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c29c0


arm_func_start OS_InitMutex
OS_InitMutex: @ 20c29c0 :arm
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	str     r1, [r0]
	str     r1, [r0, #0x8]
	str     r1, [r0, #0xc]
	bx      lr
arm_func_end OS_InitMutex


arm_func_start OS_LockMutex
OS_LockMutex: @ 20c29d8 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r5, r0
	bl      OS_DisableInterrupts
	ldr     r1, =RAM_21ccc80
	mov     r4, r0
	ldr     r7, [r1, #0x4]
	mov     r6, #0x0
branch_20c29f4: @ 20c29f4 :arm
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	bne     branch_20c2a20
	str     r7, [r5, #0x8]
	ldr     r1, [r5, #0xc]
	mov     r0, r7
	add     r2, r1, #0x1
	mov     r1, r5
	str     r2, [r5, #0xc]
	bl      OSi_EnqueueTail
	b       branch_20c2a4c

branch_20c2a20: @ 20c2a20 :arm
	cmp     r0, r7
	bne     branch_20c2a38
	ldr     r0, [r5, #0xc]
	add     r0, r0, #0x1
	str     r0, [r5, #0xc]
	b       branch_20c2a4c

branch_20c2a38: @ 20c2a38 :arm
	mov     r0, r5
	str     r5, [r7, #0x84]
	bl      OS_SleepThread
	str     r6, [r7, #0x84]
	b       branch_20c29f4

branch_20c2a4c: @ 20c2a4c :arm
	mov     r0, r4
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c2a58

.pool
arm_func_end OS_LockMutex



arm_func_start OS_UnlockMutex
OS_UnlockMutex: @ 20c2a5c :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	bl      OS_DisableInterrupts
	ldr     r1, =RAM_21ccc80
	mov     r4, r0
	ldr     r0, [r1, #0x4]
	ldr     r1, [r5, #0x8]
	cmp     r1, r0
	bne     branch_20c2aa8
	ldr     r1, [r5, #0xc]
	subs    r1, r1, #0x1
	str     r1, [r5, #0xc]
	bne     branch_20c2aa8
	mov     r1, r5
	bl      OSi_DequeueItem
	mov     r1, #0x0
	mov     r0, r5
	str     r1, [r5, #0x8]
	bl      OS_WakeupThread
branch_20c2aa8: @ 20c2aa8 :arm
	mov     r0, r4
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c2ab4

.pool
arm_func_end OS_UnlockMutex



arm_func_start OSi_UnlockAllMutex
OSi_UnlockAllMutex: @ 20c2ab8 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x88]
	cmp     r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	mov     r4, #0x0
branch_20c2ad0: @ 20c2ad0 :arm
	add     r0, r5, #0x88
	bl      OSi_RemoveMutexLinkFromQueue
	str     r4, [r0, #0xc]
	str     r4, [r0, #0x8]
	bl      OS_WakeupThread
	ldr     r0, [r5, #0x88]
	cmp     r0, #0x0
	bne     branch_20c2ad0
	ldmfd   sp!, {r3-r5,pc}
arm_func_end OSi_UnlockAllMutex


arm_func_start OS_TryLockMutex
OS_TryLockMutex: @ 20c2af4 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r5, r0
	bl      OS_DisableInterrupts
	ldr     r2, [r5, #0x8]
	ldr     r1, =RAM_21ccc80
	mov     r4, r0
	cmp     r2, #0x0
	ldr     r0, [r1, #0x4]
	bne     branch_20c2b38
	str     r0, [r5, #0x8]
	ldr     r2, [r5, #0xc]
	mov     r1, r5
	add     r2, r2, #0x1
	str     r2, [r5, #0xc]
	bl      OSi_EnqueueTail
	mov     r6, #0x1
	b       branch_20c2b54

branch_20c2b38: @ 20c2b38 :arm
	cmp     r2, r0
	movne   r6, #0x0
	bne     branch_20c2b54
	ldr     r0, [r5, #0xc]
	mov     r6, #0x1
	add     r0, r0, #0x1
	str     r0, [r5, #0xc]
branch_20c2b54: @ 20c2b54 :arm
	mov     r0, r4
	bl      OS_RestoreInterrupts
	mov     r0, r6
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c2b64

.pool
arm_func_end OS_TryLockMutex



arm_func_start OSi_EnqueueTail
OSi_EnqueueTail: @ 20c2b68 :arm
	ldr     r2, [r0, #0x8c]
	cmp     r2, #0x0
	streq   r1, [r0, #0x88]
	strne   r1, [r2, #0x10]
	str     r2, [r1, #0x14]
	mov     r2, #0x0
	str     r2, [r1, #0x10]
	str     r1, [r0, #0x8c]
	bx      lr
arm_func_end OSi_EnqueueTail


arm_func_start OSi_DequeueItem
OSi_DequeueItem: @ 20c2b8c :arm
	ldr     r2, [r1, #0x10]
	ldr     r1, [r1, #0x14]
	cmp     r2, #0x0
	streq   r1, [r0, #0x8c]
	strne   r1, [r2, #0x14]
	cmp     r1, #0x0
	streq   r2, [r0, #0x88]
	strne   r2, [r1, #0x10]
	bx      lr
arm_func_end OSi_DequeueItem


arm_func_start DC_InvalidateAll
DC_InvalidateAll: @ 20c2bb0 :arm
	mov     r0, #0x0
	mcr     p15, 0, r0, c7, c6, 0
	bx      lr
arm_func_end DC_InvalidateAll


arm_func_start DC_StoreAll
DC_StoreAll: @ 20c2bbc :arm
	mov     r1, #0x0
branch_20c2bc0: @ 20c2bc0 :arm
	mov     r0, #0x0
branch_20c2bc4: @ 20c2bc4 :arm
	orr     r2, r1, r0
	mcr     p15, 0, r2, c7, c10, 2
	add     r0, r0, #0x20
	cmp     r0, #0x400
	blt     branch_20c2bc4
	add     r1, r1, #0x40000000
	cmp     r1, #0x0
	bne     branch_20c2bc0
	bx      lr
arm_func_end DC_StoreAll


arm_func_start DC_FlushAll
DC_FlushAll: @ 20c2be8 :arm
	mov     r12, #0x0
	mov     r1, #0x0
branch_20c2bf0: @ 20c2bf0 :arm
	mov     r0, #0x0
branch_20c2bf4: @ 20c2bf4 :arm
	orr     r2, r1, r0
	mcr     p15, 0, r12, c7, c10, 4
	mcr     p15, 0, r2, c7, c14, 2
	add     r0, r0, #0x20
	cmp     r0, #0x400
	blt     branch_20c2bf4
	add     r1, r1, #0x40000000
	cmp     r1, #0x0
	bne     branch_20c2bf0
	bx      lr
arm_func_end DC_FlushAll


.arm
.globl DC_InvalidateRange
DC_InvalidateRange: @ 20c2c1c :arm
	add     r1, r1, r0
	bic     r0, r0, #0x1f

branch_20c2c24: @ 20c2c24 :arm
	mcr     p15, 0, r0, c7, c6, 1
	add     r0, r0, #0x20
	cmp     r0, r1
	blt     branch_20c2c24

	bx      lr
@ 0x20c2c38


.arm
DC_StoreRange: @ 20c2c38 :arm
	add     r1, r1, r0
	bic     r0, r0, #0x1f

branch_20c2c40: @ 20c2c40 :arm
	mcr     p15, 0, r0, c7, c10, 1
	add     r0, r0, #0x20
	cmp     r0, r1
	blt     branch_20c2c40

	bx      lr
@ 0x20c2c54


.arm
.globl DC_FlushRange
DC_FlushRange: @ 20c2c54 :arm
	mov     r12, #0x0
	add     r1, r1, r0
	bic     r0, r0, #0x1f

branch_20c2c60: @ 20c2c60 :arm
	mcr     p15, 0, r12, c7, c10, 4
	mcr     p15, 0, r0, c7, c14, 1
	add     r0, r0, #0x20
	cmp     r0, r1
	blt     branch_20c2c60

	bx      lr
@ 0x20c2c78


.arm
DC_WaitWriteBufferEmpty: @ 20c2c78 :arm
	mov     r0, #0x0
	mcr     p15, 0, r0, c7, c10, 4
	bx      lr
@ 0x20c2c84


.arm
IC_InvalidateAll: @ 20c2c84 :arm
	mov     r0, #0x0
	mcr     p15, 0, r0, c7, c5, 0
	bx      lr
@ 0x20c2c90


.arm
IC_InvalidateRange: @ 20c2c90 :arm
	add     r1, r1, r0
	bic     r0, r0, #0x1f
branch_20c2c98: @ 20c2c98 :arm
	mcr     p15, 0, r0, c7, c5, 1
	add     r0, r0, #0x20
	cmp     r0, r1
	blt     branch_20c2c98
	bx      lr
@ 0x20c2cac


.arm
OSi_WaitVCount0: @ 20c2cac :arm
	mov     r12, #0x4000000
	ldr     r1, [r12, #0x208]
	str     r12, [r12, #0x208]
branch_20c2cb8: @ 20c2cb8 :arm
	ldrh    r0, [r12, #0x6]
	cmp     r0, #0x0
	bne     branch_20c2cb8

	str     r1, [r12, #0x208]
	bx      lr
@ 0x20c2ccc


.arm
OS_Init: @ 20c2ccc :arm
	stmfd   sp!, {r3,lr}

	bl      OS_InitArena
	bl      Function_20c6350
	bl      OS_InitLock
	bl      OS_InitArenaEx
	bl      OS_InitIrqTable
	bl      OS_SetIrqStackChecker
	bl      OS_InitException
	bl      MI_Init
	bl      OS_InitVAlarm
	bl      OSi_InitVramExclusive
	bl      OS_InitThread
	bl      OS_InitReset
	bl      CTRDG_Init
	bl      CARD_Init
	bl      PM_Init
	bl      OSi_WaitVCount0

	ldmfd   sp!, {r3,pc}
@ 0x20c2d14


.arm
OS_InitArena: @ 20c2d14 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, =RAM_21cced8
	ldr     r0, [r1]
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}
	mov     r2, #0x1
	mov     r0, #0x0
	str     r2, [r1]
	bl      OS_GetInitArenaHi
	mov     r1, r0
	mov     r0, #0x0
	bl      OS_SetArenaHi
	mov     r0, #0x0
	bl      OS_GetInitArenaLo
	mov     r1, r0
	mov     r0, #0x0
	bl      OS_SetArenaLo
	mov     r0, #0x2
	mov     r1, #0x0
	bl      OS_SetArenaLo
	mov     r0, #0x2
	mov     r1, #0x0
	bl      OS_SetArenaHi
	mov     r0, #0x3
	bl      OS_GetInitArenaHi
	mov     r1, r0
	mov     r0, #0x3
	bl      OS_SetArenaHi
	mov     r0, #0x3
	bl      OS_GetInitArenaLo
	mov     r1, r0
	mov     r0, #0x3
	bl      OS_SetArenaLo
	mov     r0, #0x4
	bl      OS_GetInitArenaHi
	mov     r1, r0
	mov     r0, #0x4
	bl      OS_SetArenaHi
	mov     r0, #0x4
	bl      OS_GetInitArenaLo
	mov     r1, r0
	mov     r0, #0x4
	bl      OS_SetArenaLo
	mov     r0, #0x5
	bl      OS_GetInitArenaHi
	mov     r1, r0
	mov     r0, #0x5
	bl      OS_SetArenaHi
	mov     r0, #0x5
	bl      OS_GetInitArenaLo
	mov     r1, r0
	mov     r0, #0x5
	bl      OS_SetArenaLo
	mov     r0, #0x6
	bl      OS_GetInitArenaHi
	mov     r1, r0
	mov     r0, #0x6
	bl      OS_SetArenaHi
	mov     r0, #0x6
	bl      OS_GetInitArenaLo
	mov     r1, r0
	mov     r0, #0x6
	bl      OS_SetArenaLo
	ldmfd   sp!, {r3,pc}
@ 0x20c2e14

.pool



.arm
OS_InitArenaEx: @ 20c2e18 :arm
	stmfd   sp!, {r3,lr}
	mov     r0, #0x2
	bl      OS_GetInitArenaHi
	mov     r1, r0
	mov     r0, #0x2
	bl      OS_SetArenaHi
	mov     r0, #0x2
	bl      OS_GetInitArenaLo
	mov     r1, r0
	mov     r0, #0x2
	bl      OS_SetArenaLo
	ldr     r0, [pc, #0x2c] @ [0x20c2e78] (=RAM_21cced8)
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_20c2e64
	bl      OS_GetConsoleType
	and     r0, r0, #0x3
	cmp     r0, #0x1
	ldmnefd sp!, {r3,pc}

branch_20c2e64: @ 20c2e64 :arm
	ldr     r0, [pc, #0x10] @ [0x20c2e7c] (=0x200002b)
	bl      OS_SetProtectionRegion1
	ldr     r0, [pc, #0xc] @ [0x20c2e80] (=0x23e0021)
	bl      OS_SetProtectionRegion2
	ldmfd   sp!, {r3,pc}
@ 0x20c2e78

.word RAM_21cced8 @ 0x20c2e78
.word 0x200002b @ 0x20c2e7c
.word 0x23e0021 @ 0x20c2e80



.arm
OS_GetArenaHi: @ 20c2e84 :arm
	mov     r0, r0, lsl #2
	add     r0, r0, #0x2700000
	add     r0, r0, #0xff000
	ldr     r0, [r0, #0xdc4]
	bx      lr
@ 0x20c2e98


.arm
OS_GetArenaLo: @ 20c2e98 :arm
	mov     r0, r0, lsl #2
	add     r0, r0, #39, 12 @ #0x2700000
	add     r0, r0, #255, 20 @ #0xff000
	ldr     r0, [r0, #0xda0]
	bx      lr
@ 0x20c2eac


.arm
OS_GetInitArenaHi: @ 20c2eac :arm
	stmfd   sp!, {r3,lr}
	cmp     r0, #0x6
	addls   pc, pc, r0, lsl #2
	b       branch_20c2f68
	b       branch_20c2ed8
	b       branch_20c2f68
	b       branch_20c2ee0
	b       branch_20c2f10
	b       branch_20c2f18
	b       branch_20c2f58
	b       branch_20c2f60

branch_20c2ed8: @ 20c2ed8 :arm
	ldr     r0, [pc, #0x90] @ [0x20c2f70] (=0x23e0000)
	ldmfd   sp!, {r3,pc}

branch_20c2ee0: @ 20c2ee0 :arm
	ldr     r0, [pc, #0x8c] @ [0x20c2f74] (=RAM_21cced8)
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_20c2f00
	bl      OS_GetConsoleType
	and     r0, r0, #0x3
	cmp     r0, #0x1
	bne     branch_20c2f08
branch_20c2f00: @ 20c2f00 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}

branch_20c2f08: @ 20c2f08 :arm
	mov     r0, #0x2700000
	ldmfd   sp!, {r3,pc}

branch_20c2f10: @ 20c2f10 :arm
	mov     r0, #0x2000000
	ldmfd   sp!, {r3,pc}

branch_20c2f18: @ 20c2f18 :arm
	ldr     r0, [pc, #0x58] @ [0x20c2f78] (=RAM_27e0000)
	ldr     r1, [pc, #0x58] @ [0x20c2f7c] (=0x0)
	ldr     r2, [pc, #0x58] @ [0x20c2f80] (=0x800)
	add     r3, r0, #254, 26 @ #0x3f80
	cmp     r1, #0x0
	sub     r2, r3, r2
	bne     branch_20c2f44
	ldr     r1, [pc, #0x48] @ [0x20c2f84] (=RAM_27e0080)
	cmp     r0, r1
	movcc   r0, r1
	ldmfd   sp!, {r3,pc}

branch_20c2f44: @ 20c2f44 :arm
	cmp     r1, #0x0
	ldrlt   r0, [pc, #0x34] @ [0x20c2f84] (=RAM_27e0080)
	sublt   r0, r0, r1
	subge   r0, r2, r1
	ldmfd   sp!, {r3,pc}

branch_20c2f58: @ 20c2f58 :arm
	ldr     r0, [pc, #0x28] @ [0x20c2f88] (=RAM_27ff680)
	ldmfd   sp!, {r3,pc}

branch_20c2f60: @ 20c2f60 :arm
	ldr     r0, [pc, #0x24] @ [0x20c2f8c] (=0x37f8000)
	ldmfd   sp!, {r3,pc}

branch_20c2f68: @ 20c2f68 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x20c2f70

.word 0x23e0000 @ 0x20c2f70
.word RAM_21cced8 @ 0x20c2f74
.word RAM_27e0000 @ 0x20c2f78
.word 0x0 @ 0x20c2f7c
.word 0x800 @ 0x20c2f80
.word RAM_27e0080 @ 0x20c2f84
.word RAM_27ff680 @ 0x20c2f88
.word 0x37f8000 @ 0x20c2f8c



.arm
OS_GetInitArenaLo: @ 20c2f90 :arm
	stmfd   sp!, {r3,lr}
	cmp     r0, #0x6
	addls   pc, pc, r0, lsl #2
	b       branch_20c3014
	b       branch_20c2fbc
	b       branch_20c3014
	b       branch_20c2fc4
   	b       branch_20c2ff4
	b       branch_20c2ffc
	b       branch_20c3004
	b       branch_20c300c

branch_20c2fbc: @ 20c2fbc :arm
	ldr     r0, [pc, #0x58] @ [0x20c301c] (=0x2270bc0)
	ldmfd   sp!, {r3,pc}

branch_20c2fc4: @ 20c2fc4 :arm
	ldr     r0, [pc, #0x54] @ [0x20c3020] (=RAM_21cced8)
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_20c2fe4
	bl      OS_GetConsoleType
	and     r0, r0, #0x3
	cmp     r0, #0x1
	bne     branch_20c2fec
branch_20c2fe4: @ 20c2fe4 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}

branch_20c2fec: @ 20c2fec :arm
	ldr     r0, [pc, #0x30] @ [0x20c3024] (=0x23e0000)
	ldmfd   sp!, {r3,pc}

branch_20c2ff4: @ 20c2ff4 :arm
	ldr     r0, [pc, #0x2c] @ [0x20c3028] (=0x1ff8680)
	ldmfd   sp!, {r3,pc}

branch_20c2ffc: @ 20c2ffc :arm
	ldr     r0, [pc, #0x28] @ [0x20c302c] (=RAM_27e0080)
	ldmfd   sp!, {r3,pc}

branch_20c3004: @ 20c3004 :arm
	ldr     r0, [pc, #0x24] @ [0x20c3030] (=RAM_27ff000)
	ldmfd   sp!, {r3,pc}

branch_20c300c: @ 20c300c :arm
	ldr     r0, [pc, #0x20] @ [0x20c3034] (=0x37f8000)
	ldmfd   sp!, {r3,pc}

branch_20c3014: @ 20c3014 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x20c301c

.word 0x2270bc0 @ 0x20c301c
.word RAM_21cced8 @ 0x20c3020
.word 0x23e0000 @ 0x20c3024
.word 0x1ff8680 @ 0x20c3028
.word RAM_27e0080 @ 0x20c302c
.word RAM_27ff000 @ 0x20c3030
.word 0x37f8000 @ 0x20c3034



.arm
OS_SetArenaHi: @ 20c3038 :arm
	mov     r0, r0, lsl #2
	add     r0, r0, #39, 12 @ #0x2700000
	add     r0, r0, #255, 20 @ #0xff000
	str     r1, [r0, #0xdc4]
	bx      lr
@ 0x20c304c


.arm
OS_SetArenaLo: @ 20c304c :arm
	mov     r0, r0, lsl #2
	add     r0, r0, #39, 12 @ #0x2700000
	add     r0, r0, #255, 20 @ #0xff000
	str     r1, [r0, #0xda0]
	bx      lr
@ 0x20c3060


.arm
OS_AllocFromArenaLo: @ 20c3060 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	bl      OS_GetArenaLo
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	add     r0, r0, r5
	sub     r1, r5, #0x1
	mvn     r2, r1
	sub     r0, r0, #0x1
	and     r4, r2, r0
	add     r0, r4, r6
	add     r0, r0, r5
	sub     r1, r0, #0x1
	mov     r0, r7
	and     r5, r2, r1
	bl      OS_GetArenaHi
	cmp     r5, r0
	movhi   r0, #0x0
	ldmhifd sp!, {r3-r7,pc}
	mov     r0, r7
	mov     r1, r5
	bl      OS_SetArenaLo
	mov     r0, r4
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c30cc


.arm
OS_AllocFromArenaHi: @ 20c30cc :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r4, r0
	mov     r6, r1
	mov     r5, r2
	bl      OS_GetArenaHi
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	sub     r1, r5, #0x1
	mvn     r2, r1
	and     r0, r0, r2
	sub     r1, r0, r6
	mov     r0, r4
	and     r5, r1, r2
	bl      OS_GetArenaLo
	cmp     r5, r0
	movcc   r0, #0x0
	ldmccfd sp!, {r4-r6,pc}
	mov     r0, r4
	mov     r1, r5
	bl      OS_SetArenaHi
	mov     r0, r5
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c3128


.arm
DLAddFront: @ 20c3128 :arm
	str     r0, [r1, #0x4]
	mov     r2, #0x0
	str     r2, [r1]
	cmp     r0, #0x0
	strne   r1, [r0]
	mov     r0, r1
	bx      lr
@ 0x20c3144


.arm
DLExtract: @ 20c3144 :arm
	ldr     r3, [r1, #0x4]
	cmp     r3, #0x0
	ldrne   r2, [r1]
	strne   r2, [r3]
	ldr     r2, [r1]
	cmp     r2, #0x0
	ldreq   r0, [r1, #0x4]
	ldrne   r1, [r1, #0x4]
	strne   r1, [r2, #0x4]
	bx      lr
@ 0x20c316c


.arm
DLInsert: @ 20c316c :arm
	stmfd   sp!, {r3,lr}
	mov     lr, r0
	cmp     r0, #0x0
	mov     r12, #0x0
	beq     branch_20c3198
branch_20c3180: @ 20c3180 :arm
	cmp     r1, lr
	bls     branch_20c3198
	mov     r12, lr
	ldr     lr, [lr, #0x4]
	cmp     lr, #0x0
	bne     branch_20c3180
branch_20c3198: @ 20c3198 :arm
	stmia   r1, {r12,lr}
	cmp     lr, #0x0
	beq     branch_20c31d4
	str     r1, [lr]
	ldr     r3, [r1, #0x8]
	add     r2, r1, r3
	cmp     r2, lr
	bne     branch_20c31d4
	ldr     r2, [lr, #0x8]
	add     r2, r3, r2
	str     r2, [r1, #0x8]
	ldr     lr, [lr, #0x4]
	str     lr, [r1, #0x4]
	cmp     lr, #0x0
	strne   r1, [lr]
branch_20c31d4: @ 20c31d4 :arm
	cmp     r12, #0x0
	beq     branch_20c320c
	str     r1, [r12, #0x4]
	ldr     r2, [r12, #0x8]
	add     r3, r12, r2
	cmp     r3, r1
	ldmnefd sp!, {r3,pc}
	ldr     r1, [r1, #0x8]
	cmp     lr, #0x0
	add     r1, r2, r1
	str     r1, [r12, #0x8]
	str     lr, [r12, #0x4]
	strne   r12, [lr]
	ldmfd   sp!, {r3,pc}

branch_20c320c: @ 20c320c :arm
	mov     r0, r1
	ldmfd   sp!, {r3,pc}
@ 0x20c3214


.arm
OS_AllocFromHeap: @ 20c3214 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r4, r0
	mov     r5, r1
	mov     r7, r2
	bl      OS_DisableInterrupts
	ldr     r1, =RAM_21ccee0
	mov     r6, r0
	ldr     r1, [r1, r4, lsl #0x2]
	cmp     r1, #0x0
	bne     branch_20c3248
	bl      OS_RestoreInterrupts
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}

branch_20c3248: @ 20c3248 :arm
	cmp     r5, #0x0
	ldrlt   r5, [r1]
	ldr     r1, [r1, #0x10]
	mov     r0, #0xc
	mla     r4, r5, r0, r1
	ldr     r0, [r4, #0x4]
	add     r1, r7, #0x3f
	mov     r5, r0
	cmp     r0, #0x0
	bic     r7, r1, #0x1f
	beq     branch_20c328c
branch_20c3274: @ 20c3274 :arm
	ldr     r1, [r5, #0x8]
	cmp     r7, r1
	ble     branch_20c328c
	ldr     r5, [r5, #0x4]
	cmp     r5, #0x0
	bne     branch_20c3274
branch_20c328c: @ 20c328c :arm
	cmp     r5, #0x0
	bne     branch_20c32a4
	mov     r0, r6
	bl      OS_RestoreInterrupts
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}

branch_20c32a4: @ 20c32a4 :arm
	ldr     r1, [r5, #0x8]
	sub     r1, r1, r7
	cmp     r1, #0x40
	bcs     branch_20c32c4
	mov     r1, r5
	bl      DLExtract
	str     r0, [r4, #0x4]
	b       branch_20c32f8

branch_20c32c4: @ 20c32c4 :arm
	str     r7, [r5, #0x8]
	add     r2, r5, r7
	str     r1, [r2, #0x8]
	ldr     r0, [r5]
	str     r0, [r5, r7]
	ldr     r0, [r5, #0x4]
	str     r0, [r2, #0x4]
	cmp     r0, #0x0
	strne   r2, [r0]
	ldr     r0, [r2]
	cmp     r0, #0x0
	strne   r2, [r0, #0x4]
	streq   r2, [r4, #0x4]
branch_20c32f8: @ 20c32f8 :arm
	ldr     r0, [r4, #0x8]
	mov     r1, r5
	bl      DLAddFront
	str     r0, [r4, #0x8]
	mov     r0, r6
	bl      OS_RestoreInterrupts
	add     r0, r5, #0x20
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c3318

.pool



.arm
OS_FreeToHeap: @ 20c331c :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	bl      OS_DisableInterrupts
	ldr     r1, =RAM_21ccee0
	mov     r4, r0
	ldr     r0, [r1, r7, lsl #0x2]
	cmp     r6, #0x0
	ldrlt   r6, [r0]
	ldr     r1, [r0, #0x10]
	mov     r0, #0xc
	mla     r7, r6, r0, r1
	sub     r5, r5, #0x20
	ldr     r0, [r7, #0x8]
	mov     r1, r5
	bl      DLExtract
	str     r0, [r7, #0x8]
	ldr     r0, [r7, #0x4]
	mov     r1, r5
	bl      DLInsert
	str     r0, [r7, #0x4]
	mov     r0, r4
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c3380

.pool



.arm
Function_20c3384: @ 20c3384 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	bl      OS_DisableInterrupts
	ldr     r1, =RAM_21ccee0
	ldr     r1, [r1, r4, lsl #0x2]
	ldr     r4, [r1]
	str     r5, [r1]
	bl      OS_RestoreInterrupts
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c33b0

.pool



.arm
Function_20c33b4: @ 20c33b4 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	bl      OS_DisableInterrupts
	ldr     r2, =RAM_21ccee0
	mov     r1, #0xc
	str     r5, [r2, r7, lsl #0x2]
	add     r2, r5, #0x14
	str     r2, [r5, #0x10]
	mul     r1, r6, r1
	str     r6, [r5, #0x4]
	cmp     r6, #0x0
	mov     lr, #0x0
	ble     branch_20c3428
	mov     r6, lr
	mvn     r12, #0x0
	mov     r3, lr
branch_20c3400: @ 20c3400 :arm
	ldr     r2, [r5, #0x10]
	add     lr, lr, #0x1
	str     r12, [r2, r6]
	add     r2, r2, r6
	str     r3, [r2, #0x8]
	str     r3, [r2, #0x4]
	ldr     r2, [r5, #0x4]
	add     r6, r6, #0xc
	cmp     lr, r2
	blt     branch_20c3400
branch_20c3428: @ 20c3428 :arm
	mvn     r2, #0x0
	str     r2, [r5]
	ldr     r3, [r5, #0x10]
	bic     r2, r4, #0x1f
	add     r1, r3, r1
	add     r1, r1, #0x1f
	bic     r1, r1, #0x1f
	str     r1, [r5, #0x8]
	str     r2, [r5, #0xc]
	bl      OS_RestoreInterrupts
	ldr     r0, [r5, #0x8]
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c3458

.pool



.arm
Function_20c345c: @ 20c345c :arm
	ldr     r1, =RAM_21ccee0
	mov     r2, #0x0
	str     r2, [r1, r0, lsl #0x2]
	bx      lr
@ 0x20c346c

.pool



.arm
Function_20c3470: @ 20c3470 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r4, r0
	mov     r6, r1
	mov     r5, r2
	bl      OS_DisableInterrupts
	ldr     r2, =RAM_21ccee0
	add     r1, r6, #0x1f
	ldr     r2, [r2, r4, lsl #0x2]
	bic     r6, r1, #0x1f
	ldr     r12, [r2, #0x4]
	bic     r5, r5, #0x1f
	cmp     r12, #0x0
	mov     r4, #0x0
	ble     branch_20c34f8
	ldr     r3, [r2, #0x10]
branch_20c34ac: @ 20c34ac :arm
	ldr     r1, [r3]
	cmp     r1, #0x0
	bge     branch_20c34e8
	sub     r1, r5, r6
	str     r1, [r3]
	mov     r2, #0x0
	str     r2, [r6]
	str     r2, [r6, #0x4]
	ldr     r1, [r3]
	str     r1, [r6, #0x8]
	str     r6, [r3, #0x4]
	str     r2, [r3, #0x8]
	bl      OS_RestoreInterrupts
	mov     r0, r4
	ldmfd   sp!, {r4-r6,pc}

branch_20c34e8: @ 20c34e8 :arm
	add     r4, r4, #0x1
	cmp     r4, r12
	add     r3, r3, #0xc
	blt     branch_20c34ac
branch_20c34f8: @ 20c34f8 :arm
	bl      OS_RestoreInterrupts
	mvn     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c3504

.pool



.arm
OS_GetDTCMAddress: @ 20c3508 :arm
	mrc     p15, 0, r0, c9, c1, 0           @ C9,C1,0 - Data TCM Size/Base (R/W)
	ldr     r1, =0xfffff000
	and     r0, r0, r1
	bx      lr
@ 0x20c3518

.pool



.arm
OS_EnableProtectionUnit: @ 20c351c :arm
	mrc     p15, 0, r0, c1, c0, 0           @ C1,C0,0 - Control Register (R/W, or R=Fixed)
	orr     r0, r0, #0x1
	mcr     p15, 0, r0, c1, c0, 0
	bx      lr
@ 0x20c352c


.arm
OS_DisableProtectionUnit: @ 20c352c :arm
	mrc     p15, 0, r0, c1, c0, 0           @ C1,C0,0 - Control Register (R/W, or R=Fixed)
	bic     r0, r0, #0x1
	mcr     p15, 0, r0, c1, c0, 0
	bx      lr
@ 0x20c353c


.arm
OS_SetDPermissionsForProtectionRegion: @ 20c353c :arm
	mrc     p15, 0, r2, c5, c0, 2           @ C5,C0,2 - Extended Access Permission Data/Unified Protection Region (R/W)
	bic     r2, r2, r0
	orr     r2, r2, r1
	mcr     p15, 0, r2, c5, c0, 2
	bx      lr
@ 0x20c3550


.arm
OS_SetProtectionRegion1: @ 20c3550 :arm
	mcr     p15, 0, r0, c6, c1, 0           @ C6,C0..C7,0 - Protection Unit Data/Unified Region 0..7 (R/W)
	bx      lr
@ 0x20c3558


.arm
OS_SetProtectionRegion2: @ 20c3558 :arm
	mcr     p15, 0, r0, c6, c2, 0           @ C6,C0..C7,0 - Protection Unit Data/Unified Region 0..7 (R/W)
	bx      lr
@ 0x20c3560


.arm
OS_InitException: @ 20c3560 :arm
	ldr     r0, =RAM_27ffd9c
	ldr     r1, [r0]
	cmp     r1, #0x2600000
	bcc     branch_20c3580
	cmp     r1, #0x2800000
	ldrcc   r0, =RAM_21ccf04
	strcc   r1, [r0]
	bcc     branch_20c358c
branch_20c3580: @ 20c3580 :arm
	ldr     r0, =RAM_21ccf04
	mov     r1, #0x0
	str     r1, [r0]
branch_20c358c: @ 20c358c :arm
	ldr     r0, =RAM_21ccf04
	ldr     r0, [r0]
	cmp     r0, #0x0
	bne     branch_20c35b0
	ldr     r2, =Function_20c35d0
	ldr     r1, =RAM_27ffd9c
	ldr     r0, =RAM_27e3000
	str     r2, [r1]
	str     r2, [r0, #0xfdc]
branch_20c35b0: @ 20c35b0 :arm
	ldr     r0, =RAM_21ccf04
	mov     r1, #0x0
	str     r1, [r0, #0x8]

	bx      lr
@ 0x20c35c0

.pool



.arm
Function_20c35d0: @ 20c35d0 :arm
	ldr     r12, [pc, #0x74] @ [0x20c364c] (=RAM_21ccf04)
	ldr     r12, [r12]
	cmp     r12, #0x0
	bne     branch_20c35e4
	b       branch_20c35e8

branch_20c35e4: @ 20c35e4 :arm
	mov     lr, pc
branch_20c35e8: @ 20c35e8 :arm
	bne     branch_20c35f0
	b       branch_20c35f4

branch_20c35f0: @ 20c35f0 :arm
	bx      r12

branch_20c35f4: @ 20c35f4 :arm
	ldr     r12, [pc, #0x54] @ [0x20c3650] (=0x2000000)
	stmdb   r12!, {r0-r3,sp,lr}
	and     r0, sp, #0x1
	mov     sp, r12
	mrs     r1, CPSR
	and     r1, r1, #0x1f
	teq     r1, #0x17
	bne     branch_20c361c
	bl      Function_20c3654
	b       branch_20c3628

branch_20c361c: @ 20c361c :arm
	teq     r1, #0x1b
	bne     branch_20c3628
	bl      Function_20c3654
branch_20c3628: @ 20c3628 :arm
	ldr     r12, [pc, #0x1c] @ [0x20c364c] (=RAM_21ccf04)
	ldr     r12, [r12]
	cmp     r12, #0x0
branch_20c3634: @ 20c3634 :arm
	beq     branch_20c3634
branch_20c3638: @ 20c3638 :arm
	mov     r0, r0
	b       branch_20c3638
@ 0x20c3640


.arm
Function_20c3640: @ 20c3640 :arm
	ldmfd   sp!, {r0-r3,r12,lr}
	mov     sp, r12
	bx      lr
@ 0x20c364c


.word RAM_21ccf04 @ 0x20c364c
.word 0x2000000 @ 0x20c3650



.arm
Function_20c3654: @ 20c3654 :arm
	stmfd   sp!, {r0,lr}
	bl      Function_20c3668
	bl      Function_20c36f8
	ldmfd   sp!, {r0,lr}
	bx      lr
@ 0x20c3668


.arm
Function_20c3668: @ 20c3668 :arm
	ldr     r1, =RAM_21ccf30
	mrs     r2, CPSR
	str     r2, [r1, #0x74]
	str     r0, [r1, #0x6c]
	ldr     r0, [r12]
	str     r0, [r1, #0x4]
	ldr     r0, [r12, #0x4]
	str     r0, [r1, #0x8]
	ldr     r0, [r12, #0x8]
	str     r0, [r1, #0xc]
	ldr     r0, [r12, #0xc]
	str     r0, [r1, #0x10]
	ldr     r2, [r12, #0x10]
	bic     r2, r2, #0x1
	add     r0, r1, #0x14
	stmia   r0, {r4-r11}
	str     r12, [r1, #0x70]
	ldr     r0, [r2]
	str     r0, [r1, #0x64]
	ldr     r3, [r2, #0x4]
	str     r3, [r1]
	ldr     r0, [r2, #0x8]
	str     r0, [r1, #0x34]
	ldr     r0, [r2, #0xc]
	str     r0, [r1, #0x40]
	mrs     r0, CPSR
	orr     r3, r3, #0x80
	bic     r3, r3, #0x20
	msr     CPSR_fsxc, r3
	str     sp, [r1, #0x38]
	str     lr, [r1, #0x3c]
	mrs     r2, SPSR
	str     r2, [r1, #0x7c]
	msr     CPSR_fsxc, r0
	bx      lr
@ 0x20c36f4

.pool



.arm
Function_20c36f8: @ 20c36f8 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x58] @ [0x20c375c] (=RAM_21ccf04)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	ldmeqfd sp!, {r3,pc}
	mrs     r2, CPSR
	mov     r0, sp
	ldr     r1, [pc, #0x44] @ [0x20c3760] (=0x9f)
	msr     CPSR_fsxc, r1
	mov     r1, sp
	mov     sp, r0
	stmfd   sp!, {r1,r2}
	bl      OS_EnableProtectionUnit
	ldr     r0, [pc, #0x30] @ [0x20c3764] (=RAM_21ccf30)
	ldr     r1, [pc, #0x30] @ [0x20c3768] (=RAM_21ccf08)
	ldr     r1, [r1]
	ldr     r12, [pc, #0x2c] @ [0x20c376c] (=RAM_21ccf0c)
	ldr     r12, [r12]
	ldr     lr, [pc, #0x28] @ [0x20c3770] (=Function_20c3748)
	bx      r12
@ Function_20c3748


.arm
Function_20c3748: @ 20c3748 :arm
	bl      OS_DisableProtectionUnit
	ldmfd   sp!, {r1,r2}
	mov     sp, r1
	msr     CPSR_fsxc, r2
	ldmfd   sp!, {r3,pc}
@ 0x20c375c

.word RAM_21ccf04 @ 0x20c375c
.word 0x9f @ 0x20c3760
.word RAM_21ccf30 @ 0x20c3764
.word RAM_21ccf08 @ 0x20c3768
.word RAM_21ccf0c @ 0x20c376c
.word Function_20c3748 @ 0x20c3770



.arm
OSi_SetTimerReserved: @ 20c3774 :arm
	ldr     r1, =RAM_21ccfb0
	mov     r2, #0x1
	ldrh    r3, [r1]
	orr     r0, r3, r2, lsl r0
	strh    r0, [r1]
	bx      lr
@ 0x20c378c

.pool



.arm
.globl OS_InitTick
OS_InitTick: @ 20c3790 :arm
	stmfd   sp!, {r3,lr}

	ldr     r1, =RAM_21ccfb4
	ldrh    r0, [r1]
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}

	mov     r2, #0x1
	mov     r0, #0x0
	strh    r2, [r1]
	bl      OSi_SetTimerReserved

	ldr     r0, =RAM_21ccfb4
	mov     r2, #0x0
	str     r2, [r0, #0x8]
	ldr     r3, =TIMER0_CR
	str     r2, [r0, #0xc]
	strh    r2, [r3]
	ldr     r1, =Function_20c3818
	strh    r2, [r3, #-0x2]
	mov     r2, #0xc1
	mov     r0, #IRQ_TIMER0
	strh    r2, [r3]
	bl      OS_SetIrqFunction

	mov     r0, #IRQ_TIMER0
	bl      OS_EnableIrqMask

	ldr     r0, =RAM_21ccfb4
	mov     r1, #0x0
	str     r1, [r0, #0x4]

	ldmfd   sp!, {r3,pc}
@ 0x20c37fc

.pool



.arm
.globl Function_20c3808
Function_20c3808: @ 20c3808 :arm
	ldr     r0, =RAM_21ccfb4
	ldrh    r0, [r0]
	bx      lr
@ 0x20c3814

.pool



.arm
Function_20c3818: @ 20c3818 :arm
	ldr     r0, =RAM_21ccfb4
	mov     r3, #0x0
	ldr     r2, [r0, #0x8]
	ldr     r1, [r0, #0xc]
	adds    r2, r2, #0x1
	str     r2, [r0, #0x8]
	adc     r1, r1, #0x0
	str     r1, [r0, #0xc]
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	beq     branch_20c385c
	ldr     r2, =TIMER0_CR
	mov     r1, #0xc1
	strh    r3, [r2]
	strh    r3, [r2, #-0x2]
	strh    r1, [r2]
	str     r3, [r0, #0x4]
branch_20c385c: @ 20c385c :arm
	ldr     r12, =OSi_EnterTimerCallback
	mov     r0, #0x0
	ldr     r1, =Function_20c3818
	mov     r2, r0
	bx      r12
@ 0x20c3870

.pool



.arm
.globl OS_GetTick
OS_GetTick: @ 20c3880 :arm
	stmfd   sp!, {lr}

    sub     sp, sp, #0xc
	bl      OS_DisableInterrupts
	ldr     lr, =TIMER0_DATA
	ldr     r2, =0xffff
	ldrh    r12, [lr]
	ldr     r3, =RAM_21ccfb4
	sub     r1, r2, #0x10000
	strh    r12, [sp]
	ldr     r12, [r3, #0x8]
	ldr     r3, [r3, #0xc]
	and     r12, r12, r1
	and     r1, r3, r2
	str     r12, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r1, [lr, #0x114]
	tst     r1, #0x8
	beq     branch_20c38ec
	ldrh    r1, [sp]
	tst     r1, #0x8000
	bne     branch_20c38ec
	ldr     r2, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	adds    r2, r2, #0x1
	adc     r1, r1, #0x0
	str     r2, [sp, #0x4]
	str     r1, [sp, #0x8]
branch_20c38ec: @ 20c38ec :arm
	bl      OS_RestoreInterrupts
	ldr     r2, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	ldrh    r0, [sp]
	mov     r1, r1, lsl #16
	orr     r1, r1, r2, lsr #16
	orr     r1, r1, r0, asr #31
	orr     r0, r0, r2, lsl #16
	add     sp, sp, #0xc
	ldmfd   sp!, {pc}
@ 0x20c3914

.pool



.arm
.globl OS_GetTickLo
OS_GetTickLo: @ 20c3920 :arm
	ldr     r0, =TIMER0_DATA
	ldrh    r0, [r0]
	bx      lr
@ 0x20c392c

.pool



.arm
OSi_SetTimer: @ 20c3930 :arm
	stmfd   sp!, {r3-r5,lr}

	mov     r4, r0
	bl      OS_GetTick
	ldr     r3, =TIMER1_CR
	mov     r2, #0x0
	strh    r2, [r3]
	ldr     r12, [r4, #0xc]
	ldr     r3, [r4, #0x10]
	subs    r5, r12, r0
	sbc     r4, r3, r1
	ldr     r1, =Function_20c3c3c
	mov     r0, #0x1
	bl      OSi_EnterTimerCallback
	subs    r0, r5, #0x0
	mov     r3, #0x0
	sbcs    r0, r4, #0x0
	ldrlt   r3, =0xfffe
	blt     branch_20c3990
	subs    r0, r5, #0x10000
	sbcs    r0, r4, r3
	bge     branch_20c3990
	mvn     r0, r5
	mov     r0, r0, lsl #16
	mov     r3, r0, lsr #16
branch_20c3990: @ 20c3990 :arm
	ldr     r2, =TIMER1_DATA
	mov     r1, #0xc1
	strh    r3, [r2]
	mov     r0, #0x10
	strh    r1, [r2, #0x2]
	bl      OS_EnableIrqMask

	ldmfd   sp!, {r3-r5,pc}
@ 0x20c39ac

.pool



.arm
.globl Function_20c39bc
Function_20c39bc: @ 20c39bc :arm
	stmfd   sp!, {r3,lr}

	ldr     r1, =RAM_21ccfc4
	ldrh    r0, [r1]
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}

	mov     r0, #0x1
	strh    r0, [r1]
	bl      OSi_SetTimerReserved

	ldr     r1, =RAM_21ccfc4
	mov     r2, #0x0
	str     r2, [r1, #0x4]
	mov     r0, #0x10
	str     r2, [r1, #0x8]
	bl      OS_DisableIrqMask

	ldmfd   sp!, {r3,pc}
@ 0x20c39f8

.pool



.arm
.globl Function_20c39fc
Function_20c39fc: @ 20c39fc :arm
	ldr     r0, =RAM_21ccfc4
	ldrh    r0, [r0]
	bx      lr
@ 0x20c3a08

.pool



.arm
.globl OS_CreateAlarm
OS_CreateAlarm: @ 20c3a0c :arm
	mov     r1, #0x0
	str     r1, [r0]
	str     r1, [r0, #0x8]
	bx      lr
@ 0x20c3a1c


.arm
OSi_InsertAlarm: @ 20c3a1c :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r8, r0
	ldr     r0, [r8, #0x20]
	ldr     r3, [r8, #0x1c]
	cmp     r0, #0x0
	mov     r7, r1
	mov     r6, r2
	cmpeq   r3, #0x0
	beq     branch_20c3a90
	bl      OS_GetTick
	ldr     r6, [r8, #0x28]
	ldr     r7, [r8, #0x24]
	cmp     r6, r1
	cmpeq   r7, r0
	bcs     branch_20c3a90
	ldr     r5, [r8, #0x1c]
	ldr     r4, [r8, #0x20]
	subs    r0, r0, r7
	mov     r2, r5
	mov     r3, r4
	sbc     r1, r1, r6
	bl      _ll_udiv
	adds    r2, r0, #0x1
	adc     r0, r1, #0x0
	umull   r3, r1, r5, r2
	mla     r1, r5, r0, r1
	mla     r1, r4, r2, r1
	adds    r7, r7, r3
	adc     r6, r6, r1
branch_20c3a90: @ 20c3a90 :arm
	str     r7, [r8, #0xc]
	ldr     r0, =RAM_21ccfc4
	str     r6, [r8, #0x10]
	ldr     r5, [r0, #0x4]
	cmp     r5, #0x0
	beq     branch_20c3b0c
	mov     r2, #0x0
	mov     r1, r2
branch_20c3ab0: @ 20c3ab0 :arm
	ldr     r3, [r5, #0xc]
	ldr     r0, [r5, #0x10]
	subs    r4, r7, r3
	sbc     r3, r6, r0
	subs    r0, r4, r1
	sbcs    r0, r3, r2
	bge     branch_20c3b00
	ldr     r0, [r5, #0x14]
	str     r0, [r8, #0x14]
	str     r8, [r5, #0x14]
	str     r5, [r8, #0x18]
	ldr     r0, [r8, #0x14]
	cmp     r0, #0x0
	strne   r8, [r0, #0x18]
	ldmnefd sp!, {r4-r8,pc}

	ldr     r1, =RAM_21ccfc4
	mov     r0, r8
	str     r8, [r1, #0x4]
	bl      OSi_SetTimer
	ldmfd   sp!, {r4-r8,pc}

branch_20c3b00: @ 20c3b00 :arm
	ldr     r5, [r5, #0x18]
	cmp     r5, #0x0
	bne     branch_20c3ab0
branch_20c3b0c: @ 20c3b0c :arm
	ldr     r1, =RAM_21ccfc4
	mov     r0, #0x0
	str     r0, [r8, #0x18]
	ldr     r0, [r1, #0x8]
	str     r8, [r1, #0x8]
	str     r0, [r8, #0x14]
	cmp     r0, #0x0
	strne   r8, [r0, #0x18]
	ldmnefd sp!, {r4-r8,pc}

	str     r8, [r1, #0x8]
	mov     r0, r8
	str     r8, [r1, #0x4]
	bl      OSi_SetTimer
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c3b44

.pool



.arm
.globl OS_SetAlarm
OS_SetAlarm: @ 20c3b48 :arm
	stmfd   sp!, {r3-r7,lr}
	movs    r6, r0
	mov     r5, r1
	mov     r4, r2
	mov     r7, r3
	beq     branch_20c3b6c
	ldr     r0, [r6]
	cmp     r0, #0x0
	beq     branch_20c3b70
branch_20c3b6c: @ 20c3b6c :arm
	bl      OS_Panic
branch_20c3b70: @ 20c3b70 :arm
	bl      OS_DisableInterrupts
	mov     r1, #0x0
	str     r1, [r6, #0x1c]
	str     r1, [r6, #0x20]
	str     r7, [r6]
	ldr     r1, [sp, #0x18]
	mov     r7, r0
	str     r1, [r6, #0x4]
	bl      OS_GetTick
	adds    r3, r5, r0
	adc     r2, r4, r1
	mov     r0, r6
	mov     r1, r3
	bl      OSi_InsertAlarm
	mov     r0, r7
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c3bb4


.arm
.globl Function_20c3bb4
Function_20c3bb4: @ 20c3bb4 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	bl      OS_DisableInterrupts
	ldr     r1, [r5]
	mov     r4, r0
	cmp     r1, #0x0
	bne     branch_20c3bd8
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r3-r5,pc}

branch_20c3bd8: @ 20c3bd8 :arm
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x0
	ldrne   r1, [r5, #0x14]
	strne   r1, [r0, #0x14]
	bne     branch_20c3bf8
	ldr     r2, [r5, #0x14]
	ldr     r1, =RAM_21ccfc4
	str     r2, [r1, #0x8]
branch_20c3bf8: @ 20c3bf8 :arm
	ldr     r1, [r5, #0x14]
	cmp     r1, #0x0
	strne   r0, [r1, #0x18]
	bne     branch_20c3c1c
	ldr     r1, =RAM_21ccfc4
	cmp     r0, #0x0
	str     r0, [r1, #0x4]
	beq     branch_20c3c1c
	bl      OSi_SetTimer
branch_20c3c1c: @ 20c3c1c :arm
	mov     r1, #0x0
	str     r1, [r5]
	str     r1, [r5, #0x1c]
	mov     r0, r4
	str     r1, [r5, #0x20]
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c3c38

.pool



.arm
Function_20c3c3c: @ 20c3c3c :arm
	stmfd   sp!, {r0,lr}
	bl      Function_20c3c4c
	ldmfd   sp!, {r0,lr}
	bx      lr
@ 0x20c3c4c


.arm
Function_20c3c4c: @ 20c3c4c :arm
	stmfd   sp!, {r3-r5,lr}

	ldr     r1, =TIMER1_CR
	mov     r2, #0x0
	mov     r0, #0x10
	strh    r2, [r1]
	bl      OS_DisableIrqMask
	ldr     r0, =RAM_27e0000
	add     r0, r0, #3, 20 @ #0x3000
	ldr     r1, [r0, #0xff8]
	orr     r1, r1, #0x10
	str     r1, [r0, #0xff8]
	bl      OS_GetTick
	ldr     r2, =RAM_21ccfc4
	ldr     r4, [r2, #0x4]
	cmp     r4, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r3, [r4, #0x10]
	ldr     r12, [r4, #0xc]
	cmp     r1, r3
	cmpeq   r0, r12
	bcs     branch_20c3cac
	mov     r0, r4
	bl      OSi_SetTimer
	ldmfd   sp!, {r3-r5,pc}

branch_20c3cac: @ 20c3cac :arm
	ldr     r1, [r4, #0x18]
	mov     r0, #0x0
	str     r1, [r2, #0x4]
	cmp     r1, #0x0
	streq   r0, [r2, #0x8]
	strne   r0, [r1, #0x14]
	ldr     r0, [r4, #0x20]
	ldr     r1, [r4, #0x1c]
	cmp     r0, #0x0
	ldr     r5, [r4]
	mov     r0, #0x0
	cmpeq   r1, #0x0
	streq   r0, [r4]
	cmp     r5, #0x0
	beq     branch_20c3cf0
	ldr     r0, [r4, #0x4]
	blx     r5
branch_20c3cf0: @ 20c3cf0 :arm
	ldr     r0, [r4, #0x20]
	ldr     r1, [r4, #0x1c]
	cmp     r0, #0x0
	cmpeq   r1, #0x0
	mov     r1, #0x0
	beq     branch_20c3d18
	mov     r0, r4
	mov     r2, r1
	str     r5, [r4]
	bl      OSi_InsertAlarm
branch_20c3d18: @ 20c3d18 :arm
	ldr     r0, =RAM_21ccfc4
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}

	bl      OSi_SetTimer
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c3d30

.pool



.arm
OS_InitVAlarm: @ 20c3d3c :arm
	stmfd   sp!, {r3,lr}

	ldr     r1, =RAM_21ccfd0
	ldrh    r0, [r1]
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}

	mov     r0, #0x1
	strh    r0, [r1]
	mov     r2, #0x0
	str     r2, [r1, #0xc]
	mov     r0, #0x4
	str     r2, [r1, #0x10]
	bl      OS_DisableIrqMask

	ldr     r0, =RAM_21ccfd0
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	str     r1, [r0, #0x4]

	ldmfd   sp!, {r3,pc}
@ 0x20c3d80

.pool



.arm
OS_EnableInterrupts: @ 20c3d84 :arm
	mrs     r0, CPSR
	bic     r1, r0, #0x80
	msr     CPSR_c, r1
	and     r0, r0, #0x80
	bx      lr
@ 0x20c3d98


.arm
.globl OS_DisableInterrupts
OS_DisableInterrupts: @ 20c3d98 :arm
	mrs     r0, CPSR
	orr     r1, r0, #0x80
	msr     CPSR_c, r1
	and     r0, r0, #0x80
	bx      lr
@ 0x20c3dac


.arm
.globl OS_RestoreInterrupts
OS_RestoreInterrupts: @ 20c3dac :arm
	mrs     r1, CPSR
	bic     r2, r1, #0x80
	orr     r2, r2, r0
	msr     CPSR_c, r2
	and     r0, r1, #0x80
	bx      lr
@ 0x20c3dc4


.arm
OS_DisableInterrupts_IrqAndFiq: @ 20c3dc4 :arm
	mrs     r0, CPSR
	orr     r1, r0, #0xc0
	msr     CPSR_c, r1
	and     r0, r0, #0xc0
	bx      lr
@ 0x20c3dd8


.arm
OS_RestoreInterrupts_IrqAndFiq: @ 20c3dd8 :arm
	mrs     r1, CPSR
	bic     r2, r1, #0xc0
	orr     r2, r2, r0
	msr     CPSR_c, r2
	and     r0, r1, #0xc0
	bx      lr
@ 0x20c3df0


.arm
OS_GetCpsrIrq: @ 20c3df0 :arm
	mrs     r0, CPSR
	and     r0, r0, #0x80
	bx      lr
@ 0x20c3dfc


.arm
.globl OS_GetProcMode
OS_GetProcMode: @ 20c3dfc :arm
	mrs     r0, CPSR
	and     r0, r0, #0x1f
	bx      lr
@ 0x20c3e08


.arm
OS_SpinWait: @ 20c3e08 :arm
	subs    r0, r0, #0x4
	bcs     OS_SpinWait
	bx      lr
@ 0x20c3e14


.arm
Function_20c3e14: @ 20c3e14 :arm
	stmfd   sp!, {r3,lr}
	mov     r0, #0x1
	blx     Bios_WaitByLoop
	mov     r0, #0x1
	mov     r1, r0
	bl      OS_WaitIrq
	ldmfd   sp!, {r3,pc}
@ 0x20c3e30


.arm
OS_InitReset: @ 20c3e30 :arm
	stmfd   sp!, {r3-r5,lr}

	ldr     r0, =RAM_21ccfe4
	ldrh    r1, [r0, #0x2]
	cmp     r1, #0x0
	ldmnefd sp!, {r3-r5,pc}

	mov     r1, #0x1
	strh    r1, [r0, #0x2]
	bl      Function_20c6350
	mov     r5, #0xc
	mov     r4, #0x1
branch_20c3e58: @ 20c3e58 :arm
	mov     r0, r5
	mov     r1, r4
	bl      PXI_IsCallbackReady
	cmp     r0, #0x0
	beq     branch_20c3e58

	ldr     r1, =OSi_CommonCallback
	mov     r0, #0xc
	bl      PXI_SetFifoRecvCallback

	ldmfd   sp!, {r3-r5,pc}
@ 0x20c3e7c

.pool



.arm
OSi_CommonCallback: @ 20c3e84 :arm
	stmfd   sp!, {r3,lr}
	and     r0, r1, #0x7f00
	mov     r0, r0, lsl #8
	mov     r0, r0, lsr #16
	cmp     r0, #0x10
	bne     branch_20c3eac
	ldr     r0, =RAM_21ccfe4
	mov     r1, #0x1
	strh    r1, [r0]
	ldmfd   sp!, {r3,pc}

branch_20c3eac: @ 20c3eac :arm
	bl      OS_Panic
	ldmfd   sp!, {r3,pc}
@ 0x20c3eb4

.pool



.arm
OSi_SendToPxi: @ 20c3eb8 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0, lsl #8
	mov     r5, #0xc
	mov     r4, #0x0
branch_20c3ec8: @ 20c3ec8 :arm
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	bne     branch_20c3ec8
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c3ee4


.arm
OS_ResetSystem: @ 20c3ee4 :arm
	stmfd   sp!, {r4,lr}
	ldr     r1, [pc, #0x84] @ [0x20c3f74] (=RAM_27ffc40)
	mov     r4, r0
	ldrh    r0, [r1]
	cmp     r0, #0x2
	moveq   r0, #0x1
	movne   r0, #0x0
	cmp     r0, #0x0
	beq     branch_20c3f0c
	bl      OS_Panic
branch_20c3f0c: @ 20c3f0c :arm
	bl      OS_GetLockID
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	bl      CARD_LockRom
	ldr     r0, [pc, #0x54] @ [0x20c3f78] (=0x0)
	bl      MI_StopDma
	ldr     r0, [pc, #0x50] @ [0x20c3f7c] (=0x1)
	bl      MI_StopDma
	ldr     r0, [pc, #0x4c] @ [0x20c3f80] (=0x2)
	bl      MI_StopDma
	ldr     r0, [pc, #0x48] @ [0x20c3f84] (=0x3)
	bl      MI_StopDma
	ldr     r0, [pc, #0x44] @ [0x20c3f88] (=0x40000)
	bl      OS_SetIrqMask
	ldr     r0, [pc, #0x40] @ [0x20c3f8c] (=0xffffffff)
	bl      OS_ResetRequestIrqMask
	ldr     r1, [pc, #0x3c] @ [0x20c3f90] (=RAM_27ffc20)
	ldr     r0, [pc, #0x3c] @ [0x20c3f94] (=0x10)
	str     r4, [r1]
	bl      OSi_SendToPxi
	ldr     r0, [pc, #0x34] @ [0x20c3f98] (=RAM_27e3f80)
	ldr     r1, [pc, #0x34] @ [0x20c3f9c] (=0x800)
	sub     r0, r0, r1
	mov     sp, r0
	bl      OSi_DoResetSystem
	ldmfd   sp!, {r4,pc}
@ 0x20c3f74

.word RAM_27ffc40 @ 0x20c3f74
.word 0x0 @ 0x20c3f78
.word 0x1 @ 0x20c3f7c
.word 0x2 @ 0x20c3f80
.word 0x3 @ 0x20c3f84
.word 0x40000 @ 0x20c3f88
.word 0xffffffff @ 0x20c3f8c
.word RAM_27ffc20 @ 0x20c3f90
.word 0x10 @ 0x20c3f94
.word RAM_27e3f80 @ 0x20c3f98
.word 0x800 @ 0x20c3f9c



.arm
.globl OS_GetMacAddress
OS_GetMacAddress: @ 20c3fa0 :arm
	ldr     r12, =MI_CpuCopy8
	mov     r1, r0
	ldr     r0, =RAM_27ffcf4
	mov     r2, #0x6
	bx      r12
@ 0x20c3fb4

.pool



.arm
.globl OS_GetOwnerInfo
OS_GetOwnerInfo: @ 20c3fbc :arm
	stmfd   sp!, {r4,lr}

	ldr     r12, =RAM_27ffc80
	mov     r4, r0
	ldrh    r2, [r12, #0x64]
	add     r0, r12, #0x6
	add     r1, r4, #0x4
	mov     r2, r2, lsl #29
	mov     r2, r2, lsr #29
	strb    r2, [r4]
	ldrb    r3, [r12, #0x2]
	mov     r2, #0x14
	mov     r3, r3, lsl #28
	mov     r3, r3, lsr #28
	strb    r3, [r4, #0x1]
	ldrb    r3, [r12, #0x3]
	strb    r3, [r4, #0x2]
	ldrb    r3, [r12, #0x4]
	strb    r3, [r4, #0x3]
	ldrb    r3, [r12, #0x1a]
	strh    r3, [r4, #0x1a]
	ldrb    r3, [r12, #0x50]
	strh    r3, [r4, #0x52]
	bl      MIi_CpuCopy16

	ldr     r0, =RAM_27ffc80
	add     r1, r4, #0x1c
	add     r0, r0, #0x1c
	mov     r2, #0x34
	bl      MIi_CpuCopy16

	mov     r0, #0x0
	strh    r0, [r4, #0x18]
	strh    r0, [r4, #0x50]

	ldmfd   sp!, {r4,pc}
@ 0x20c403c

.pool



.arm
OS_GetOwnerRtcOffset: @ 20c4040 :arm
	ldr     r1, =RAM_27ffc80
	ldr     r0, [r1, #0x68]
	ldr     r1, [r1, #0x6c]
	bx      lr
@ 0x20c4050

.pool



.arm
Function_20c4054: @ 20c4054 :arm
	clz     r0, r0
	bx      lr
@ 0x20c405c


.arm
OSi_InitVramExclusive: @ 20c405c :arm
	ldr     r0, =RAM_21ccfe8
	mov     r3, #0x0
	str     r3, [r0]
	ldr     r0, =RAM_21ccfec
	mov     r2, r3
branch_20c4070: @ 20c4070 :arm
	mov     r1, r3, lsl #1
	add     r3, r3, #0x1
	strh    r2, [r0, r1]
	cmp     r3, #0x9
	blt     branch_20c4070
	bx      lr
@ 0x20c4088

.pool



.arm
OSi_TryLockVram: @ 20c4090 :arm
	stmfd   sp!, {r3-r9,lr}
	mov     r7, r0
	mov     r8, r1
	bl      OS_DisableInterrupts
	ldr     r1, =RAM_21ccfe8
	mov     r6, r0
	ldr     r0, [r1]
	ldr     r9, =RAM_21ccfec
	and     r5, r7, r0
	mov     r4, #0x1
branch_20c40b8: @ 20c40b8 :arm
	mov     r0, r5
	bl      Function_20c4054
	rsbs    r1, r0, #0x1f
	bmi     branch_20c40f0
	mov     r0, r1, lsl #1
	ldrh    r0, [r9, r0]
	mvn     r1, r4, lsl r1
	cmp     r8, r0
	and     r5, r5, r1
	beq     branch_20c40b8
	mov     r0, r6
	bl      OS_RestoreInterrupts
	mov     r0, #0x0
	ldmfd   sp!, {r3-r9,pc}

branch_20c40f0: @ 20c40f0 :arm
	ldr     r0, =0x1ff
	ldr     r4, =RAM_21ccfec
	ldr     r9, =RAM_21ccfe8
	and     r7, r7, r0
	mov     r5, #0x1
branch_20c4104: @ 20c4104 :arm
	mov     r0, r7
	bl      Function_20c4054
	rsbs    r1, r0, #0x1f
	bmi     branch_20c4134
	ldr     r0, [r9]
	mvn     r2, r5, lsl r1
	orr     r0, r0, r5, lsl r1
	mov     r1, r1, lsl #1
	strh    r8, [r4, r1]
	str     r0, [r9]
	and     r7, r7, r2
	b       branch_20c4104

branch_20c4134: @ 20c4134 :arm
	mov     r0, r6
	bl      OS_RestoreInterrupts
	mov     r0, #0x1
	ldmfd   sp!, {r3-r9,pc}
@ 0x20c4144

.pool



.arm
OSi_UnlockVram: @ 20c4150 :arm
	stmfd   sp!, {r4-r10,lr}

	mov     r5, r0
	mov     r10, r1
	bl      OS_DisableInterrupts
	ldr     r4, =RAM_21ccfe8
	ldr     r1, =0x1ff
	ldr     r2, [r4]
	mov     r9, r0
	and     r0, r5, r2
	ldr     r6, =RAM_21ccfec
	and     r8, r0, r1
	mov     r7, #0x1
	mov     r5, #0x0
branch_20c4184: @ 20c4184 :arm
	mov     r0, r8
	bl      Function_20c4054
	rsbs    r2, r0, #0x1f
	bmi     branch_20c41c0
	mov     r1, r2, lsl #1
	ldrh    r0, [r6, r1]
	mvn     r2, r7, lsl r2
	cmp     r10, r0
	and     r8, r8, r2
	bne     branch_20c4184
	ldr     r0, [r4]
	strh    r5, [r6, r1]
	and     r0, r0, r2
	str     r0, [r4]
	b       branch_20c4184

branch_20c41c0: @ 20c41c0 :arm
	mov     r0, r9
	bl      OS_RestoreInterrupts

	ldmfd   sp!, {r4-r10,pc}
@ 0x20c41cc

.pool



.arm
.globl OS_GetLowEntropyData
OS_GetLowEntropyData: @ 20c41d8 :arm
	stmfd   sp!, {r4-r6,lr}

	ldr     r1, =REG_VCOUNT
	mov     r5, r0
	ldrh    r6, [r1]
	ldr     r4, =RAM_27ffc00
	bl      OS_GetTickLo
	orr     r0, r0, r6, lsl #16
	str     r0, [r5]
	ldr     r1, =RAM_21ccfbc
	ldrh    r12, [r4, #0xf8]
	ldr     r3, [r1]
	ldr     r2, [r1, #0x4]
	mov     r0, r4
	eor     r2, r3, r12, lsl #16
	str     r2, [r5, #0x4]
	ldr     r2, [r1]
	ldr     r3, [r0, #0x3c]
	ldr     r2, [r1, #0x4]
	ldr     r1, [r4, #0xf4]
	ldr     r12, =GFX_STATUS
	eor     r1, r2, r1
	eor     r2, r3, r1
	str     r2, [r5, #0x8]
	ldr     r1, [r12]
	eor     r1, r2, r1
	str     r1, [r5, #0x8]
	ldr     r2, [r0, #0x1e8]
	add     r1, r0, #0x300
	str     r2, [r5, #0xc]
	ldr     r3, [r0, #0x1ec]
	sub     r2, r12, #0x4d0
	str     r3, [r5, #0x10]
	ldr     r3, [r0, #0x390]
	ldrh    r4, [r1, #0x94]
	add     r0, r0, #0x3a8
	eor     r3, r3, r4, lsl #16
	str     r3, [r5, #0x14]
	ldrh    r4, [r1, #0xaa]
	ldrh    r3, [r1, #0xac]
	orr     r3, r3, r4, lsl #16
	str     r3, [r5, #0x18]
	ldrh    r2, [r2]
	ldrh    r0, [r0]
	ldrh    r1, [r1, #0x98]
	orr     r0, r2, r0
	orr     r0, r0, r1, lsl #16
	str     r0, [r5, #0x1c]

	ldmfd   sp!, {r4-r6,pc}
@ 0x20c4298

.pool




.arm
.globl OS_Panic
OS_Panic: @ 20c42a8 :arm
	stmfd   sp!, {r3,lr}
branch_20c42ac: @ 20c42ac :arm
	bl      OS_DisableInterrupts
	bl      OS_Halt
	b       branch_20c42ac
@ 0x20c42b8


.arm
OS_Halt: @ 20c42b8 :arm
	mov     r0, #0x0
	mcr     p15, 0, r0, c7, c0, 4
	bx      lr
@ 0x20c42c4


