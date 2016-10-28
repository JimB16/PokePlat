

.arm
CARD_ReadRomAsync: @ 20c82cc :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0xc

	ldr     r12, =FSi_OnRomReadDone
	mov     lr, r1
	str     r12, [sp]
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	ldr     r0, =RAM_21cec1c
	str     r1, [sp, #0x8]
	mov     r1, r2
	ldr     r0, [r0, #RAM_21cec1c_4]
	mov     r2, lr
	bl      CARDi_ReadRom
	mov     r0, #0x6

	add     sp, sp, #0xc
	ldmfd   sp!, {pc}
@ 0x20c830c

.pool



.arm
Function_20c8314: @ 20c8314 :arm
	mov     r0, #0x1
	bx      lr
@ 0x20c831c


.arm
FSi_RomArchiveProc: @ 20c831c :arm
	stmfd   sp!, {r3,lr}
	cmp     r1, #0x1
	beq     branch_20c8374
	cmp     r1, #0x9
	beq     branch_20c833c
	cmp     r1, #0xa
	beq     branch_20c8358
	b       branch_20c837c

branch_20c833c: @ 20c833c :arm
	ldr     r0, =RAM_21cec1c
	ldr     r0, [r0, #RAM_21cec1c_0]
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	bl      CARD_LockRom
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}

branch_20c8358: @ 20c8358 :arm
	ldr     r0, =RAM_21cec1c
	ldr     r0, [r0, #RAM_21cec1c_0]
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	bl      CARD_UnlockRom
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}

branch_20c8374: @ 20c8374 :arm
	mov     r0, #0x4
	ldmfd   sp!, {r3,pc}

branch_20c837c: @ 20c837c :arm
	mov     r0, #0x8
	ldmfd   sp!, {r3,pc}
@ 0x20c8384

.pool



.arm
Function_20c8388: @ 20c8388 :arm
	mov     r0, #0x1
	bx      lr
@ 0x20c8390


.arm
FSi_EmptyArchiveProc: @ 20c8390 :arm
	mov     r0, #0x4
	bx      lr
@ 0x20c8398


.arm
FSi_InitRom: @ 20c8398 :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x10

	ldr     r1, [pc, #0x110] @ [0x20c84b8] (=RAM_21cec1c)
	str     r0, [r1, #RAM_21cec1c_4]
	bl      OS_GetLockID

	ldr     r1, [pc, #0x104] @ [0x20c84b8] (=RAM_21cec1c)
	mov     r2, #0x0
	str     r0, [r1, #RAM_21cec1c_0]
	str     r2, [r1, #RAM_21cec1c_8]
	str     r2, [r1, #RAM_21cec1c_c]
	str     r2, [r1, #RAM_21cec1c_10]
	str     r2, [r1, #RAM_21cec1c_14]

	bl      CARD_Init

	ldr     r0, [pc, #0xe8] @ [0x20c84bc] (=ArchiveData)
	bl      FS_InitArchive

	ldr     r0, [pc, #0xe0] @ [0x20c84bc] (=ArchiveData)
	ldr     r1, [pc, #0xe0] @ [0x20c84c0] (=Unknown_2101164)
	mov     r2, #0x3
	bl      FS_RegisterArchiveName

	ldr     r4, [pc, #0xd8] @ [0x20c84c4] (=RAM_27ffc40)
	ldrh    r0, [r4]
	cmp     r0, #0x2
	bne     branch_20c8450
	ldr     r3, [pc, #0xbc] @ [0x20c84b8] (=RAM_21cec1c)
	mvn     r2, #0x0
	str     r2, [r3, #RAM_21cec1c_8]
	mov     r12, #0x0
	str     r12, [r3, #RAM_21cec1c_c]
	str     r2, [r3, #RAM_21cec1c_10]
	ldr     r0, [pc, #0xa8] @ [0x20c84bc] (=ArchiveData)
	ldr     r1, [pc, #0xb0] @ [0x20c84c8] (=FSi_EmptyArchiveProc)
	str     r12, [r3, #RAM_21cec1c_14]
	bl      FS_SetArchiveProc
	mov     r1, #0x0
	str     r1, [sp]
	ldr     r0, [pc, #0xa0] @ [0x20c84cc] (=Function_20c8388)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r12, [pc, #0x98] @ [0x20c84d0] (=Function_20c8314)
	ldr     r0, [pc, #0x80] @ [0x20c84bc] (=ArchiveData)
	mov     r2, r1
	mov     r3, r1
	str     r12, [sp, #0xc]
	bl      FS_LoadArchive
	add     sp, sp, #0x10
	ldmfd   sp!, {r4,pc}

branch_20c8450: @ 20c8450 :arm
	ldr     r0, [pc, #0x64] @ [0x20c84bc] (=ArchiveData)
	ldr     r1, [pc, #0x78] @ [0x20c84d4] (=FSi_RomArchiveProc)
	ldr     r2, [pc, #0x78] @ [0x20c84d8] (=0x602)
	bl      FS_SetArchiveProc
	ldr     r1, [r4, #0x200]
	mvn     r0, #0x0
	cmp     r1, r0
	cmpne   r1, #0x0
	ldrne   r2, [r4, #0x208]
	cmpne   r2, r0
	cmpne   r2, #0x0
	addeq   sp, sp, #0x10
	ldmeqfd sp!, {r4,pc}
	str     r1, [sp]
	ldr     r0, [r4, #0x204]
	ldr     r1, [pc, #0x48] @ [0x20c84dc] (=CARD_ReadRomAsync)
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x34] @ [0x20c84d0] (=Function_20c8314)
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r3, [r4, #0x20c]
	ldr     r0, [pc, #0x10] @ [0x20c84bc] (=ArchiveData)
	mov     r1, #0x0
	bl      FS_LoadArchive
	add     sp, sp, #0x10
	ldmfd   sp!, {r4,pc}
@ 0x20c84b8

.word RAM_21cec1c @ 0x20c84b8
.word ArchiveData @ 0x20c84bc
.word Unknown_2101164 @ 0x20c84c0
.word RAM_27ffc40 @ 0x20c84c4
.word FSi_EmptyArchiveProc @ 0x20c84c8
.word Function_20c8388 @ 0x20c84cc
.word Function_20c8314 @ 0x20c84d0
.word FSi_RomArchiveProc @ 0x20c84d4
.word 0x602 @ 0x20c84d8
.word CARD_ReadRomAsync @ 0x20c84dc



.arm
FS_SetDefaultDMA: @ 20c84e0 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	bl      OS_DisableInterrupts
	mov     r4, r0

	ldr     r1, =RAM_21cec1c
	ldr     r0, =ArchiveData
	ldr     r5, [r1, #RAM_21cec1c_4]
	bl      FS_SuspendArchive
	ldr     r1, =RAM_21cec1c
	cmp     r0, #0x0
	str     r6, [r1, #RAM_21cec1c_4]
	beq     branch_20c8518
	ldr     r0, =ArchiveData
	bl      FS_ResumeArchive
branch_20c8518: @ 20c8518 :arm

	mov     r0, r4
	bl      OS_RestoreInterrupts
	mov     r0, r5
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c8528

.pool



.arm
FS_TryLoadTable: @ 20c8530 :arm
	ldr     r12, =FS_LoadArchiveTables
	mov     r3, r0
	mov     r2, r1
	ldr     r0, =ArchiveData
	mov     r1, r3
	bx      r12
@ 0x20c8548

.pool



.arm
FSi_GetOverlayBinarySize: @ 20c8550 :arm
	ldr     r1, [r0, #0x1c]
	mov     r2, r1, lsr #24
	tst     r2, #0x1
	movne   r0, r1, lsl #8
	movne   r0, r0, lsr #8
	ldreq   r0, [r0, #0x8]
	bx      lr
@ 0x20c856c


.arm
FS_ClearOverlayImage: @ 20c856c :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r1, [r0, #0xc]
	ldmib   r0, {r4,r5}
	add     r6, r5, r1
	mov     r0, r4
	mov     r1, r6
	bl      IC_InvalidateRange
	mov     r0, r4
	mov     r1, r6
	bl      DC_InvalidateRange
	add     r0, r4, r5
	sub     r2, r6, r5
	mov     r1, #0x0
	bl      MI_CpuFill8
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c85a8


.arm
FS_GetOverlayFileID: @ 20c85a8 :arm
	sub     sp, sp, #0x8
	ldr     r1, [r1, #0x18]
	ldr     r2, =ArchiveData
	str     r1, [sp, #0x4]
	str     r2, [r0]
	str     r2, [sp]
	str     r1, [r0, #0x4]
	add     sp, sp, #0x8
	bx      lr
@ 0x20c85cc

.pool



.arm
FSi_LoadOverlayInfoCore: @ 20c85d0 :arm
	stmfd   sp!, {r4-r9,lr}
	sub     sp, sp, #0x54
	movs    r9, r1
	ldreq   r7, [sp, #0x74]
	ldreq   r6, [sp, #0x70]
	ldrne   r7, [sp, #0x7c]
	ldrne   r6, [sp, #0x78]
	cmp     r7, r2, lsl #5
	mov     r4, r0
	mov     r8, r3
	mov     r5, r2, lsl #5
	addls   sp, sp, #0x54
	movls   r0, #0x0
	ldmlsfd sp!, {r4-r9,pc}
	add     r0, sp, #0xc
	bl      FS_InitFile
	mvn     r12, #0x0
	add     r0, sp, #0xc
	mov     r1, r8
	add     r2, r6, r5
	add     r3, r6, r7
	str     r12, [sp]
	bl      FS_OpenFileDirect
	cmp     r0, #0x0
	addeq   sp, sp, #0x54
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r9,pc}
	add     r0, sp, #0xc
	mov     r1, r4
	mov     r2, #0x20
	bl      FS_ReadFile
	cmp     r0, #0x20
	add     r0, sp, #0xc
	beq     branch_20c8668
	bl      FS_CloseFile
	add     sp, sp, #0x54
	mov     r0, #0x0
	ldmfd   sp!, {r4-r9,pc}

branch_20c8668: @ 20c8668 :arm
	bl      FS_CloseFile
	add     r0, sp, #0x4
	mov     r1, r4
	str     r9, [r4, #0x20]
	bl      FS_GetOverlayFileID
	add     r1, sp, #0x4
	add     r0, sp, #0xc
	ldmia   r1, {r1,r2}
	bl      FS_OpenFileFast
	cmp     r0, #0x0
	addeq   sp, sp, #0x54
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r9,pc}
	ldr     r1, [sp, #0x30]
	add     r0, sp, #0xc
	str     r1, [r4, #0x24]
	ldr     r2, [sp, #0x34]
	ldr     r1, [sp, #0x30]
	sub     r1, r2, r1
	str     r1, [r4, #0x28]
	bl      FS_CloseFile
	mov     r0, #0x1
	add     sp, sp, #0x54
	ldmfd   sp!, {r4-r9,pc}
@ 0x20c86c8


.arm
FS_LoadOverlayInfo: @ 20c86c8 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x60
	movs    r4, r1
	mov     r5, r0
	ldreq   r0, [pc, #0xd4] @ [0x20c87b4] (=RAM_21cec24)
	ldrne   r0, [pc, #0xd4] @ [0x20c87b8] (=RAM_21cec2c)
	ldr     r12, [r0]
	cmp     r12, #0x0
	beq     branch_20c8778
	ldr     r0, [r0, #0x4]
	mov     r3, r2, lsl #5
	cmp     r0, r2, lsl #5
	addls   sp, sp, #0x60
	movls   r0, #0x0
	ldmlsfd sp!, {r3-r5,pc}
	mov     r1, r5
	add     r0, r12, r3
	mov     r2, #0x20
	bl      MI_CpuCopy8
	add     r0, sp, #0x18
	str     r4, [r5, #0x20]
	bl      FS_InitFile
	add     r0, sp, #0x10
	mov     r1, r5
	bl      FS_GetOverlayFileID
	add     r1, sp, #0x10
	add     r0, sp, #0x18
	ldmia   r1, {r1,r2}
	bl      FS_OpenFileFast
	cmp     r0, #0x0
	addeq   sp, sp, #0x60
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r1, [sp, #0x3c]
	add     r0, sp, #0x18
	str     r1, [r5, #0x24]
	ldr     r2, [sp, #0x40]
	ldr     r1, [sp, #0x3c]
	sub     r1, r2, r1
	str     r1, [r5, #0x28]
	bl      FS_CloseFile
	add     sp, sp, #0x60
	mov     r0, #0x1
	ldmfd   sp!, {r3-r5,pc}

branch_20c8778: @ 20c8778 :arm
	ldr     r12, [pc, #0x3c] @ [0x20c87bc] (=RAM_27ffe50)
	ldr     r3, [pc, #0x3c] @ [0x20c87c0] (=ArchiveData)
	ldr     r1, [r12]
	mov     r0, r5
	str     r1, [sp]
	ldr     r5, [r12, #0x4]
	mov     r1, r4
	str     r5, [sp, #0x4]
	ldr     r4, [r12, #0x8]
	str     r4, [sp, #0x8]
	ldr     r4, [r12, #0xc]
	str     r4, [sp, #0xc]
	bl      FSi_LoadOverlayInfoCore
	add     sp, sp, #0x60
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c87b4

.word RAM_21cec24 @ 0x20c87b4
.word RAM_21cec2c @ 0x20c87b8
.word RAM_27ffe50 @ 0x20c87bc
.word ArchiveData @ 0x20c87c0



.arm
FS_LoadOverlayImageAsync: @ 20c87c4 :arm
	stmfd   sp!, {r4-r6,lr}
	sub     sp, sp, #0x8
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	bl      FS_InitFile
	add     r0, sp, #0x0
	mov     r1, r6
	bl      FS_GetOverlayFileID
	add     r1, sp, #0x0
	mov     r0, r5
	ldmia   r1, {r1,r2}
	bl      FS_OpenFileFast
	cmp     r0, #0x0
	addeq   sp, sp, #0x8
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	mov     r0, r6
	bl      FSi_GetOverlayBinarySize
	mov     r4, r0
	mov     r0, r6
	bl      FS_ClearOverlayImage
	ldr     r1, [r6, #0x4]
	mov     r0, r5
	mov     r2, r4
	bl      FS_ReadFileAsync
	cmp     r4, r0
	addeq   sp, sp, #0x8
	moveq   r0, #0x1
	ldmeqfd sp!, {r4-r6,pc}
	mov     r0, r5
	bl      FS_CloseFile
	mov     r0, #0x0
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c8850


.arm
FS_LoadOverlayImage: @ 20c8850 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x50
	mov     r5, r0

	add     r0, sp, #0x8
	bl      FS_InitFile
	add     r0, sp, #0x0
	mov     r1, r5
	bl      FS_GetOverlayFileID
	add     r1, sp, #0x0
	add     r0, sp, #0x8
	ldmia   r1, {r1,r2}
	bl      FS_OpenFileFast
	cmp     r0, #0x0
	addeq   sp, sp, #0x50
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	mov     r0, r5
	bl      FSi_GetOverlayBinarySize
	mov     r4, r0
	mov     r0, r5
	bl      FS_ClearOverlayImage
	ldr     r1, [r5, #0x4]
	add     r0, sp, #0x8
	mov     r2, r4
	bl      FS_ReadFile
	cmp     r4, r0
	add     r0, sp, #0x8
	beq     branch_20c88d0
	bl      FS_CloseFile

	add     sp, sp, #0x50
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}

branch_20c88d0: @ 20c88d0 :arm
	bl      FS_CloseFile
	mov     r0, #0x1

	add     sp, sp, #0x50
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c88e0


.arm
FSi_CompareDigest: @ 20c88e0 :arm
	stmfd   sp!, {r4-r6,lr}
	sub     sp, sp, #0x58
	mov     r4, r0
	mov     r6, r1
	mov     r5, r2
	add     r0, sp, #0x44
	mov     r1, #0x0
	mov     r2, #0x14
	bl      MI_CpuFill8
	ldr     r2, [pc, #0x64] @ [0x20c8970] (=Unknown_2101168)
	add     r1, sp, #0x4
	ldmia   r2, {r0,r2}
	bl      MI_CpuCopy8
	ldr     r3, [pc, #0x54] @ [0x20c8970] (=Unknown_2101168)
	mov     r1, r6
	ldr     r12, [r3, #0x4]
	mov     r2, r5
	add     r0, sp, #0x44
	add     r3, sp, #0x4
	str     r12, [sp]
	bl      DGT_Hash2CalcHmac
	add     r3, sp, #0x44
	mov     r2, #0x0
branch_20c893c: @ 20c893c :arm
	ldr     r1, [r3]
	ldr     r0, [r4, r2]
	cmp     r1, r0
	bne     branch_20c895c
	add     r2, r2, #0x4
	cmp     r2, #0x14
	add     r3, r3, #0x4
	bcc     branch_20c893c
branch_20c895c: @ 20c895c :arm
	cmp     r2, #0x14
	moveq   r0, #0x1
	movne   r0, #0x0
	add     sp, sp, #0x58
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c8970

.word Unknown_2101168 @ 0x20c8970



.arm
FS_StartOverlay: @ 20c8974 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	bl      FSi_GetOverlayBinarySize
	ldr     r1, [pc, #0xd0] @ [0x20c8a58] (=RAM_27ffc40)
	mov     r4, r0
	ldrh    r0, [r1]
	cmp     r0, #0x2
	bne     branch_20c8a04
	ldr     r1, [r5, #0x1c]
	mov     r0, #0x0
	mov     r1, r1, lsr #24
	tst     r1, #0x2
	beq     branch_20c89e4
	ldr     r1, [pc, #0xac] @ [0x20c8a5c] (=RAM_2101d14)
	ldr     r3, [pc, #0xac] @ [0x20c8a60] (=RAM_2101d14)
	ldr     r2, [pc, #0xac] @ [0x20c8a64] (=0x66666667)
	sub     r12, r1, r3
	smull   r1, lr, r2, r12
	mov     r1, r12, lsr #31
	ldr     r2, [r5]
	add     lr, r1, lr, asr #3
	cmp     r2, lr
	bcs     branch_20c89e4
	mov     r0, #0x14
	mla     r0, r2, r0, r3
	ldr     r1, [r5, #0x4]
	mov     r2, r4
	bl      FSi_CompareDigest
branch_20c89e4: @ 20c89e4 :arm
	cmp     r0, #0x0
	bne     branch_20c8a04
	ldr     r0, [r5, #0x4]
	mov     r2, r4
	mov     r1, #0x0
	bl      MI_CpuFill8
	bl      OS_Panic
	ldmfd   sp!, {r3-r5,pc}

branch_20c8a04: @ 20c8a04 :arm
	ldr     r0, [r5, #0x1c]
	mov     r0, r0, lsr #24
	tst     r0, #0x1
	beq     branch_20c8a20
	ldr     r0, [r5, #0x4]
	add     r0, r0, r4
	bl      Function_2000970
branch_20c8a20: @ 20c8a20 :arm
	ldmib   r5, {r0,r1}
	bl      DC_FlushRange
	ldr     r4, [r5, #0x10]
	ldr     r5, [r5, #0x14]
	cmp     r4, r5
	ldmcsfd sp!, {r3-r5,pc}
branch_20c8a38: @ 20c8a38 :arm
	ldr     r0, [r4]
	cmp     r0, #0x0
	beq     branch_20c8a48
	blx     r0
branch_20c8a48: @ 20c8a48 :arm
	add     r4, r4, #0x4
	cmp     r4, r5
	bcc     branch_20c8a38
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c8a58

.word RAM_27ffc40 @ 0x20c8a58
.word RAM_2101d14 @ 0x20c8a5c
.word RAM_2101d14 @ 0x20c8a60
.word 0x66666667 @ 0x20c8a64



.arm
FS_EndOverlay: @ 20c8a68 :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r11, r0
branch_20c8a70: @ 20c8a70 :arm
	ldr     r1, [r11, #0x8]
	ldr     r0, [r11, #0xc]
	mov     r4, #0x0
	ldr     r6, [r11, #0x4]
	add     r0, r1, r0
	mov     r5, r4
	add     r7, r6, r0
	bl      OS_DisableInterrupts
	ldr     r1, [pc, #0xbc] @ [0x20c8b54] (=RAM_21d0d68)
	mov     r12, r4
	ldr     lr, [r1]
	mov     r8, lr
	cmp     lr, #0x0
	beq     branch_20c8b1c
	mov     r2, r4
.arm
branch_20c8aac: @ 20c8aac :arm
	ldr     r10, [r8, #0x8]
	ldr     r9, [r8]
	cmp     r10, #0x0
	ldr     r3, [r8, #0x4]
	bne     branch_20c8ad0
	cmp     r3, r6
	bcc     branch_20c8ad0
	cmp     r3, r7
	bcc     branch_20c8ae0
.arm
branch_20c8ad0: @ 20c8ad0 :arm
	cmp     r10, r6
	bcc     branch_20c8b0c
	cmp     r10, r7
	bcs     branch_20c8b0c
.arm
branch_20c8ae0: @ 20c8ae0 :arm
	cmp     r5, #0x0
	strne   r8, [r5]
	moveq   r4, r8
	cmp     lr, r8
	streq   r9, [r1]
	moveq   lr, r9
	str     r2, [r8]
	cmp     r12, #0x0
	mov     r5, r8
	strne   r9, [r12]
	b       branch_20c8b10
@ 0x20c8b0c

.arm
branch_20c8b0c: @ 20c8b0c :arm
	mov     r12, r8
.arm
branch_20c8b10: @ 20c8b10 :arm
	mov     r8, r9
	cmp     r9, #0x0
	bne     branch_20c8aac
.arm
branch_20c8b1c: @ 20c8b1c :arm
	bl      OS_RestoreInterrupts
	cmp     r4, #0x0
	ldmeqfd sp!, {r3-r11,pc}
.arm
branch_20c8b28: @ 20c8b28 :arm
	ldr     r1, [r4, #0x4]
	ldr     r5, [r4]
	cmp     r1, #0x0
	beq     branch_20c8b40
	ldr     r0, [r4, #0x8]
	blx     r1
branch_20c8b40: @ 20c8b40 :arm
	mov     r4, r5
	cmp     r5, #0x0
	bne     branch_20c8b28
	b       branch_20c8a70
@ 0x20c8b50

.arm
Function_20c8b50: @ 20c8b50 :arm
	ldmfd   sp!, {r3-r11,pc}
@ 0x20c8b54


.word RAM_21d0d68 @ 0x20c8b54



.arm
FS_UnloadOverlayImage: @ 20c8b58 :arm
	stmfd   sp!, {r3,lr}
	bl      FS_EndOverlay
	mov     r0, #0x1
	ldmfd   sp!, {r3,pc}
@ 0x20c8b68


FS_LoadOverlay: @ 20c8b68 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x2c

	mov     r3, r0
	mov     r2, r1
	add     r0, sp, #0x0
	mov     r1, r3
	bl      FS_LoadOverlayInfo
	cmp     r0, #0x0
	beq     branch_20c8b9c
	add     r0, sp, #0x0
	bl      FS_LoadOverlayImage
	cmp     r0, #0x0
	bne     branch_20c8ba8
branch_20c8b9c: @ 20c8b9c :arm
	add     sp, sp, #0x2c
	mov     r0, #0x0
	ldmfd   sp!, {pc}

branch_20c8ba8: @ 20c8ba8 :arm
	add     r0, sp, #0x0
	bl      FS_StartOverlay
	mov     r0, #0x1

	add     sp, sp, #0x2c
	ldmfd   sp!, {pc}
@ 0x20c8bbc


FS_UnloadOverlay: @ 20c8bbc :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x2c
	mov     r3, r0
	mov     r2, r1
	add     r0, sp, #0x0
	mov     r1, r3
	bl      FS_LoadOverlayInfo
	cmp     r0, #0x0
	beq     branch_20c8bf0
	add     r0, sp, #0x0
	bl      FS_UnloadOverlayImage
	cmp     r0, #0x0
	bne     branch_20c8bfc
branch_20c8bf0: @ 20c8bf0 :arm
	add     sp, sp, #0x2c
	mov     r0, #0x0
	ldmfd   sp!, {pc}

branch_20c8bfc: @ 20c8bfc :arm
	mov     r0, #0x1
	add     sp, sp, #0x2c
	ldmfd   sp!, {pc}
@ 0x20c8c08


.globl DGT_Hash1Reset
DGT_Hash1Reset: @ 20c8c08 :arm
	ldr     r2, [pc, #0x28] @ [0x20c8c38] (=0x67452301)
	ldr     r1, [pc, #0x28] @ [0x20c8c3c] (=0xefcdab89)
	str     r2, [r0]
	ldr     r2, [pc, #0x24] @ [0x20c8c40] (=0x98badcfe)
	str     r1, [r0, #0x4]
	ldr     r1, [pc, #0x20] @ [0x20c8c44] (=0x10325476)
	str     r2, [r0, #0x8]
	str     r1, [r0, #0xc]
	mov     r1, #0x0
	str     r1, [r0, #0x10]
	str     r1, [r0, #0x14]
	bx      lr
@ 0x20c8c38

.word 0x67452301 @ 0x20c8c38
.word 0xefcdab89 @ 0x20c8c3c
.word 0x98badcfe @ 0x20c8c40
.word 0x10325476 @ 0x20c8c44



.arm
.globl DGT_Hash1SetSource
DGT_Hash1SetSource: @ 20c8c48 :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r6, r0
	ldr     r3, [r6, #0x10]
	mov     r4, r2
	and     r12, r3, #0x3f
	ldr     r0, [r6, #0x14]
	adds    r3, r3, r4
	str     r3, [r6, #0x10]
	adc     r0, r0, #0x0
	rsb     r7, r12, #0x40
	mov     r5, r1
	str     r0, [r6, #0x14]
	cmp     r7, r4
	bls     branch_20c8c9c
	cmp     r4, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	add     r1, r6, #0x18
	mov     r0, r5
	add     r1, r1, r12
	bl      MI_CpuCopy8
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c8c9c

.arm
branch_20c8c9c: @ 20c8c9c :arm
	add     r1, r6, #0x18
	mov     r0, r5
	mov     r2, r7
	add     r1, r1, r12
	bl      MI_CpuCopy8
	mov     r0, r6
	bl      ProcessBlock
	sub     r4, r4, r7
	mov     r8, r4, lsr #6
	cmp     r8, #0x0
	add     r7, r5, r7
	ble     branch_20c8cf8
	mov     r5, #0x40
.arm
branch_20c8cd0: @ 20c8cd0 :arm
	mov     r0, r7
	mov     r2, r5
	add     r1, r6, #0x18
	bl      MI_CpuCopy8
	mov     r0, r6
	add     r7, r7, #0x40
	bl      ProcessBlock
	sub     r8, r8, #0x1
	cmp     r8, #0x0
	bgt     branch_20c8cd0
.arm
branch_20c8cf8: @ 20c8cf8 :arm
	ands    r2, r4, #0x3f
	ldmeqfd sp!, {r4-r8,pc}
	mov     r0, r7
	add     r1, r6, #0x18
	bl      MI_CpuCopy8
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c8d10


.arm
.globl DGT_Hash1GetDigest_R
DGT_Hash1GetDigest_R: @ 20c8d10 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x14]
	ldr     r3, [r4, #0x10]
	mov     r5, r0
	mov     r6, r1, lsl #3
	ldr     r1, [pc, #0x94] @ [0x20c8dc4] (=Unknown_2101170)
	mov     r0, r4
	mov     r2, #0x1
	orr     r6, r6, r3, lsr #29
	mov     r7, r3, lsl #3
	bl      DGT_Hash1SetSource
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	and     r3, r0, #0x3f
	rsb     r2, r3, #0x40
	cmp     r2, #0x8
	bcs     branch_20c8d74
	add     r0, r4, #0x18
	add     r0, r0, r3
	bl      MI_CpuFill8
	mov     r0, r4
	bl      ProcessBlock
	mov     r3, #0x0
	mov     r2, #0x40
.arm
branch_20c8d74: @ 20c8d74 :arm
	cmp     r2, #0x8
	bls     branch_20c8d90
	add     r0, r4, #0x18
	add     r0, r0, r3
	sub     r2, r2, #0x8
	mov     r1, #0x0
	bl      MI_CpuFill8
.arm
branch_20c8d90: @ 20c8d90 :arm
	str     r7, [r4, #0x50]
	mov     r0, r4
	str     r6, [r4, #0x54]
	bl      ProcessBlock
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x10
	bl      MI_CpuCopy8
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x58
	bl      MI_CpuFill8
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c8dc4

.word Unknown_2101170 @ 0x20c8dc4



.arm
ProcessBlock: @ 20c8dc8 :arm
	stmfd   sp!, {r3-r11,lr}
	ldmia   r0, {r2,r3,r12,lr}
	add     r4, r0, #0x18
	ldr     r5, [pc, #0x398] @ [0x20c9174] (=Unknown_2101234)
	mov     r7, r4
	mov     r8, #0x0
branch_20c8de0: @ 20c8de0 :arm
	mvn     r1, r3
	and     r6, r3, r12
	and     r1, r1, lr
	orr     r1, r6, r1
	ldr     r6, [r7]
	add     r1, r2, r1
	ldr     r2, [r5]
	add     r1, r6, r1
	add     r2, r2, r1
	mov     r1, r2, lsr #25
	orr     r1, r1, r2, lsl #7
	add     r2, r3, r1
	mvn     r1, r2
	and     r6, r2, r3
	and     r1, r1, r12
	orr     r1, r6, r1
	ldr     r6, [r7, #0x4]
	add     r1, lr, r1
	ldr     r9, [r5, #0x4]
	add     r1, r6, r1
	add     r6, r9, r1
	mov     r1, r6, lsr #20
	orr     r1, r1, r6, lsl #12
	add     lr, r2, r1
	mvn     r1, lr
	and     r6, lr, r2
	and     r1, r1, r3
	orr     r1, r6, r1
	ldr     r9, [r7, #0x8]
	add     r6, r12, r1
	ldr     r1, [r7, #0xc]
	add     r9, r9, r6
	ldr     r10, [r5, #0x8]
	ldr     r6, [r5, #0xc]
	add     r10, r10, r9
	mov     r9, r10, lsr #15
	orr     r9, r9, r10, lsl #17
	add     r12, lr, r9
	add     r5, r5, #0x10
	add     r7, r7, #0x10
	and     r10, r12, lr
	mvn     r9, r12
	and     r9, r9, r2
	orr     r9, r10, r9
	add     r3, r3, r9
	add     r1, r1, r3
	add     r3, r6, r1
	mov     r1, r3, lsr #10
	orr     r1, r1, r3, lsl #22
	add     r3, r12, r1
	add     r8, r8, #0x1
	cmp     r8, #0x4
	blt     branch_20c8de0
	ldr     r1, [pc, #0x2bc] @ [0x20c9178] (=Unknown_2101174)
	mov     r6, #0x0
.arm
branch_20c8ebc: @ 20c8ebc :arm
	mvn     r7, lr
	ldr     r9, [r1]
	and     r8, r3, lr
	and     r7, r12, r7
	orr     r7, r8, r7
	ldr     r8, [r4, r9, lsl #0x2]
	add     r2, r2, r7
	ldr     r7, [r5]
	add     r2, r8, r2
	add     r7, r7, r2
	mov     r2, r7, lsr #27
	orr     r2, r2, r7, lsl #5
	add     r2, r3, r2
	mvn     r8, r12
	ldr     r7, [r1, #0x4]
	and     r9, r2, r12
	and     r8, r3, r8
	orr     r10, r9, r8
	mvn     r8, r3
	ldr     r9, [r1, #0x8]
	ldr     r11, [r4, r7, lsl #0x2]
	add     r7, lr, r10
	add     r7, r11, r7
	ldr     r10, [r5, #0x4]
	ldr     r9, [r4, r9, lsl #0x2]
	add     r10, r10, r7
	ldr     r7, [r1, #0xc]
	and     r8, r2, r8
	ldr     r7, [r4, r7, lsl #0x2]
	mov     r11, r10, lsr #23
	orr     r10, r11, r10, lsl #9
	add     lr, r2, r10
	ldr     r10, [r5, #0x8]
	and     r11, lr, r3
	orr     r8, r11, r8
	add     r8, r12, r8
	add     r8, r9, r8
	add     r9, r10, r8
	mov     r8, r9, lsr #18
	orr     r8, r8, r9, lsl #14
	add     r12, lr, r8
	mvn     r8, r2
	and     r9, lr, r8
	ldr     r8, [r5, #0xc]
	add     r5, r5, #0x10
	add     r1, r1, #0x10
	and     r10, r12, r2
	orr     r9, r10, r9
	add     r3, r3, r9
	add     r3, r7, r3
	add     r7, r8, r3
	mov     r3, r7, lsr #12
	orr     r3, r3, r7, lsl #20
	add     r3, r12, r3
	add     r6, r6, #0x1
	cmp     r6, #0x4
	blt     branch_20c8ebc
	mov     r6, #0x0
.arm
branch_20c8fa4: @ 20c8fa4 :arm
	ldr     r8, [r1]
	eor     r7, r3, r12
	eor     r7, lr, r7
	ldr     r8, [r4, r8, lsl #0x2]
	add     r2, r2, r7
	ldr     r7, [r5]
	add     r2, r8, r2
	add     r7, r7, r2
	mov     r2, r7, lsr #28
	orr     r2, r2, r7, lsl #4
	add     r2, r3, r2
	ldr     r8, [r1, #0x4]
	eor     r7, r2, r3
	eor     r7, r12, r7
	ldr     r8, [r4, r8, lsl #0x2]
	add     r7, lr, r7
	ldr     r9, [r1, #0x8]
	ldr     r10, [r5, #0x4]
	add     r7, r8, r7
	add     r8, r10, r7
	mov     r7, r8, lsr #21
	orr     r7, r7, r8, lsl #11
	add     lr, r2, r7
	eor     r8, lr, r2
	ldr     r7, [r1, #0xc]
	ldr     r9, [r4, r9, lsl #0x2]
	eor     r8, r3, r8
	add     r8, r12, r8
	add     r9, r9, r8
	ldr     r10, [r5, #0x8]
	ldr     r8, [r4, r7, lsl #0x2]
	add     r9, r10, r9
	mov     r7, r9, lsr #16
	orr     r7, r7, r9, lsl #16
	add     r12, lr, r7
	eor     r7, r12, lr
	eor     r7, r2, r7
	add     r3, r3, r7
	add     r3, r8, r3
	ldr     r7, [r5, #0xc]
	add     r5, r5, #0x10
	add     r7, r7, r3
	add     r1, r1, #0x10
	mov     r3, r7, lsr #9
	orr     r3, r3, r7, lsl #23
	add     r3, r12, r3
	add     r6, r6, #0x1
	cmp     r6, #0x4
	blt     branch_20c8fa4
	mov     r8, #0x0
.arm
branch_20c906c: @ 20c906c :arm
	mvn     r6, lr
	ldr     r7, [r1]
	orr     r6, r3, r6
	eor     r6, r12, r6
	ldr     r7, [r4, r7, lsl #0x2]
	add     r2, r2, r6
	ldr     r6, [r5]
	add     r2, r7, r2
	add     r6, r6, r2
	mov     r2, r6, lsr #26
	orr     r2, r2, r6, lsl #6
	add     r2, r3, r2
	mvn     r6, r12
	ldr     r9, [r1, #0x4]
	orr     r6, r2, r6
	eor     r7, r3, r6
	ldr     r6, [r1, #0x8]
	ldr     r9, [r4, r9, lsl #0x2]
	add     r7, lr, r7
	ldr     r10, [r5, #0x4]
	add     r7, r9, r7
	add     r9, r10, r7
	mov     r7, r9, lsr #22
	orr     r9, r7, r9, lsl #10
	ldr     r7, [r1, #0xc]
	add     lr, r2, r9
	mvn     r9, r3
	ldr     r6, [r4, r6, lsl #0x2]
	orr     r9, lr, r9
	eor     r9, r2, r9
	add     r9, r12, r9
	add     r9, r6, r9
	ldr     r10, [r5, #0x8]
	ldr     r6, [r4, r7, lsl #0x2]
	add     r9, r10, r9
	mov     r7, r9, lsr #17
	orr     r9, r7, r9, lsl #15
	ldr     r7, [r5, #0xc]
	add     r12, lr, r9
	add     r5, r5, #0x10
	add     r1, r1, #0x10
	mvn     r9, r2
	orr     r9, r12, r9
	eor     r9, lr, r9
	add     r3, r3, r9
	add     r3, r6, r3
	add     r6, r7, r3
	mov     r3, r6, lsr #11
	orr     r3, r3, r6, lsl #21
	add     r3, r12, r3
	add     r8, r8, #0x1
	cmp     r8, #0x4
	blt     branch_20c906c
	ldr     r1, [r0]
	add     r1, r1, r2
	str     r1, [r0]
	ldr     r1, [r0, #0x4]
	add     r1, r1, r3
	str     r1, [r0, #0x4]
	ldr     r1, [r0, #0x8]
	add     r1, r1, r12
	str     r1, [r0, #0x8]
	ldr     r1, [r0, #0xc]
	add     r1, r1, lr
	str     r1, [r0, #0xc]
	ldmfd   sp!, {r3-r11,pc}
@ 0x20c9174

.word Unknown_2101234 @ 0x20c9174
.word Unknown_2101174 @ 0x20c9178



.arm
DGT_Hash2Reset: @ 20c917c :arm
	ldr     r1, [pc, #0x34] @ [0x20c91b8] (=0x67452301)
	ldr     r2, [pc, #0x34] @ [0x20c91bc] (=0xefcdab89)
	str     r1, [r0]
	ldr     r1, [pc, #0x30] @ [0x20c91c0] (=0x98badcfe)
	str     r2, [r0, #0x4]
	ldr     r2, [pc, #0x2c] @ [0x20c91c4] (=0x10325476)
	str     r1, [r0, #0x8]
	ldr     r1, [pc, #0x28] @ [0x20c91c8] (=0xc3d2e1f0)
	str     r2, [r0, #0xc]
	str     r1, [r0, #0x10]
	mov     r1, #0x0
	str     r1, [r0, #0x14]
	str     r1, [r0, #0x18]
	str     r1, [r0, #0x1c]
	bx      lr
@ 0x20c91b8

.word 0x67452301 @ 0x20c91b8
.word 0xefcdab89 @ 0x20c91bc
.word 0x98badcfe @ 0x20c91c0
.word 0x10325476 @ 0x20c91c4
.word 0xc3d2e1f0 @ 0x20c91c8



.arm
DGT_Hash2SetSource: @ 20c91cc :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r10, r0
	movs    r8, r2
	mov     r9, r1
	add     r6, r10, #0x20
	ldmeqfd sp!, {r3-r11,pc}
	ldr     r0, [r10, #0x14]
	add     r1, r0, r8, lsl #3
	cmp     r1, r0
	ldrcc   r0, [r10, #0x18]
	addcc   r0, r0, #0x1
	strcc   r0, [r10, #0x18]
	ldr     r0, [r10, #0x18]
	add     r0, r0, r8, lsr #29
	str     r0, [r10, #0x18]
	str     r1, [r10, #0x14]
	ldr     r1, [r10, #0x1c]
	cmp     r1, #0x0
	beq     branch_20c9284
	add     r0, r1, r8
	cmp     r0, #0x40
	bcc     branch_20c9264
	rsb     r4, r1, #0x40
	mov     r0, r9
	mov     r2, r4
	add     r1, r6, r1
	bl      MI_CpuCopy8
	ldr     r1, [pc, #0xdc] @ [0x20c931c] (=0x2101338)
	mov     r0, r10
	ldr     r3, [r1]
	mov     r1, r6
	mov     r2, #0x40
	sub     r8, r8, r4
	add     r9, r9, r4
	blx     r3
	mov     r0, #0x0
	str     r0, [r10, #0x1c]
	b       branch_20c9284

branch_20c9264: @ 20c9264 :arm
	mov     r0, r9
	mov     r2, r8
	add     r1, r6, r1
	bl      MI_CpuCopy8
	ldr     r0, [r10, #0x1c]
	add     r0, r0, r8
	str     r0, [r10, #0x1c]
	ldmfd   sp!, {r3-r11,pc}

branch_20c9284: @ 20c9284 :arm
	cmp     r8, #0x40
	bcc     branch_20c92fc
	bic     r7, r8, #0x3f
	tst     r9, #0x3
	sub     r8, r8, r7
	bne     branch_20c92bc
	ldr     r1, [pc, #0x78] @ [0x20c931c] (=Unknown_2101338)
	mov     r0, r10
	ldr     r3, [r1]
	mov     r1, r9
	mov     r2, r7
	blx     r3
	add     r9, r9, r7
	b       branch_20c92fc

branch_20c92bc: @ 20c92bc :arm
	mov     r5, #0x40
	ldr     r4, [pc, #0x54] @ [0x20c931c] (=Unknown_2101338)
	mov     r11, r5
branch_20c92c8: @ 20c92c8 :arm
	mov     r0, r9
	mov     r1, r6
	mov     r2, r5
	bl      MI_CpuCopy8
	ldr     r3, [r4]
	mov     r0, r10
	mov     r1, r6
	add     r9, r9, #0x40
	mov     r2, r11
	blx     r3
	sub     r7, r7, #0x40
	cmp     r7, #0x0
	bgt     branch_20c92c8
branch_20c92fc: @ 20c92fc :arm
	str     r8, [r10, #0x1c]
	cmp     r8, #0x0
	ldmeqfd sp!, {r3-r11,pc}
	mov     r0, r9
	mov     r1, r6
	mov     r2, r8
	bl      MI_CpuCopy8
	ldmfd   sp!, {r3-r11,pc}
@ 0x20c931c

.word Unknown_2101338 @ 0x20c931c



.arm
DGT_Hash2GetDigest: @ 20c9320 :arm
	stmfd   sp!, {r0-r3}
	stmfd   sp!, {r4-r6,lr}
	ldr     r0, [sp, #0x10]
	mov     r6, r1
	ldr     r3, [r0, #0x1c]
	add     r4, r0, #0x20
	tst     r3, #0x3
	mov     r2, r3, asr #2
	moveq   r0, #0x0
	streq   r0, [r4, r2, lsl #0x2]
	ldr     r1, [sp, #0x10]
	mov     r0, #0x80
	add     r5, r1, #0x20
	strb    r0, [r5, r3]
	add     r3, r3, #0x1
	tst     r3, #0x3
	beq     branch_20c9378
	mov     r0, #0x0
.arm
branch_20c9368: @ 20c9368 :arm
	strb    r0, [r5, r3]
	add     r3, r3, #0x1
	tst     r3, #0x3
	bne     branch_20c9368
.arm
branch_20c9378: @ 20c9378 :arm
	ldr     r0, [sp, #0x10]
	add     r2, r2, #0x1
	ldr     r0, [r0, #0x1c]
	cmp     r0, #0x38
	blt     branch_20c93c4
	cmp     r2, #0x10
	bge     branch_20c93a8
	mov     r0, #0x0
.arm
branch_20c9398: @ 20c9398 :arm
	str     r0, [r4, r2, lsl #0x2]
	add     r2, r2, #0x1
	cmp     r2, #0x10
	blt     branch_20c9398
.arm
branch_20c93a8: @ 20c93a8 :arm
	ldr     r1, [pc, #0x168] @ [0x20c9518] (=0x2101338)
	ldr     r0, [sp, #0x10]
	ldr     r3, [r1]
	mov     r1, r4
	mov     r2, #0x40
	blx     r3
	mov     r2, #0x0
.arm
branch_20c93c4: @ 20c93c4 :arm
	cmp     r2, #0xe
	bge     branch_20c93e0
	mov     r0, #0x0
.arm
branch_20c93d0: @ 20c93d0 :arm
	str     r0, [r4, r2, lsl #0x2]
	add     r2, r2, #0x1
	cmp     r2, #0xe
	blt     branch_20c93d0
.arm
branch_20c93e0: @ 20c93e0 :arm
	ldr     r0, [sp, #0x10]
	ldr     r3, [pc, #0x12c] @ [0x20c9518] (=0x2101338)
	ldr     r2, [r0, #0x14]
	mov     r1, r4
	strb    r2, [r5, #0x3f]
	mov     r0, r2, lsr #8
	strb    r0, [r5, #0x3e]
	mov     r0, r2, lsr #16
	strb    r0, [r5, #0x3d]
	mov     r0, r2, lsr #24
	strb    r0, [r5, #0x3c]
	ldr     r0, [sp, #0x10]
	mov     r2, #0x40
	ldr     r4, [r0, #0x18]
	strb    r4, [r5, #0x3b]
	mov     r0, r4, lsr #8
	strb    r0, [r5, #0x3a]
	mov     r0, r4, lsr #16
	strb    r0, [r5, #0x39]
	mov     r0, r4, lsr #24
	strb    r0, [r5, #0x38]
	ldr     r0, [sp, #0x10]
	ldr     r3, [r3]
	blx     r3
	ldr     r0, [sp, #0x10]
	ldr     r1, [r0]
	mov     r0, r1, lsr #24
	strb    r0, [r6]
	mov     r0, r1, lsr #16
	strb    r0, [r6, #0x1]
	mov     r0, r1, lsr #8
	strb    r0, [r6, #0x2]
	strb    r1, [r6, #0x3]
	ldr     r0, [sp, #0x10]
	ldr     r1, [r0, #0x4]
	mov     r0, r1, lsr #24
	strb    r0, [r6, #0x4]
	mov     r0, r1, lsr #16
	strb    r0, [r6, #0x5]
	mov     r0, r1, lsr #8
	strb    r0, [r6, #0x6]
	strb    r1, [r6, #0x7]
	ldr     r0, [sp, #0x10]
	ldr     r1, [r0, #0x8]
	mov     r0, r1, lsr #24
	strb    r0, [r6, #0x8]
	mov     r0, r1, lsr #16
	strb    r0, [r6, #0x9]
	mov     r0, r1, lsr #8
	strb    r0, [r6, #0xa]
	strb    r1, [r6, #0xb]
	ldr     r0, [sp, #0x10]
	ldr     r1, [r0, #0xc]
	mov     r0, r1, lsr #24
	strb    r0, [r6, #0xc]
	mov     r0, r1, lsr #16
	strb    r0, [r6, #0xd]
	mov     r0, r1, lsr #8
	strb    r0, [r6, #0xe]
	strb    r1, [r6, #0xf]
	ldr     r0, [sp, #0x10]
	ldr     r1, [r0, #0x10]
	mov     r0, r1, lsr #24
	strb    r0, [r6, #0x10]
	mov     r0, r1, lsr #16
	strb    r0, [r6, #0x11]
	mov     r0, r1, lsr #8
	strb    r0, [r6, #0x12]
	strb    r1, [r6, #0x13]
	ldr     r3, [sp, #0x10]
	mov     r0, #0x0
	add     r1, sp, #0x10
	mov     r2, #0x4
	str     r0, [r3, #0x1c]
	bl      MIi_CpuClear32
	ldmfd   sp!, {r4-r6,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x20c9518

.word Unknown_2101338 @ 0x20c9518



.arm
DGT_Hash2CalcHmac: @ 20c951c :arm
	stmfd   sp!, {r4-r8,lr}
	sub     sp, sp, #0xa0
	ldr     lr, [pc, #0x74] @ [0x20c95a0] (=Unknown_20fe4e8)
	add     r12, sp, #0x8
	mov     r8, r0
	mov     r7, r1
	mov     r6, r2
	mov     r5, r3
	mov     r4, r12
	ldmia   lr!, {r0-r3}
	stmia   r12!, {r0-r3}
	ldmia   lr, {r0-r2}
	stmia   r12, {r0-r2}
	add     lr, sp, #0x38
	add     r12, sp, #0x24
	str     lr, [sp, #0x10]
	ldr     lr, [pc, #0x40] @ [0x20c95a4] (=DGT_Hash2Reset)
	str     r12, [sp, #0x14]
	ldr     r12, [pc, #0x3c] @ [0x20c95a8] (=DGT_Hash2SetSource)
	str     lr, [sp, #0x18]
	ldr     lr, [pc, #0x38] @ [0x20c95ac] (=DGT_Hash2GetDigest)
	str     r12, [sp, #0x1c]
	ldr     r12, [sp, #0xb8]
	str     lr, [sp, #0x20]
	str     r12, [sp]
	mov     r3, r5
	mov     r0, r8
	mov     r1, r7
	mov     r2, r6
	str     r4, [sp, #0x4]
	bl      HmacCalc
	add     sp, sp, #0xa0
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c95a0

.word Unknown_20fe4e8 @ 0x20c95a0
.word DGT_Hash2Reset @ 0x20c95a4
.word DGT_Hash2SetSource @ 0x20c95a8
.word DGT_Hash2GetDigest @ 0x20c95ac



.arm
HmacCalc: @ 20c95b0 :arm
	stmfd   sp!, {r3-r9,lr}
	sub     sp, sp, #0xc0
	ldr     r5, [sp, #0xe0]
	ldr     r4, [sp, #0xe4]
	mov     r8, r1
	movs    r9, r0
	mov     r7, r2
	cmpne   r8, #0x0
	mov     r6, r3
	cmpne   r7, #0x0
	cmpne   r6, #0x0
	cmpne   r5, #0x0
	cmpne   r4, #0x0
	addeq   sp, sp, #0xc0
	ldmeqfd sp!, {r3-r9,pc}
	ldr     r0, [r4, #0x4]
	cmp     r5, r0
	ble     branch_20c9630
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x10]
	blx     r1
	ldr     r0, [r4, #0x8]
	ldr     r3, [r4, #0x14]
	mov     r1, r6
	mov     r2, r5
	blx     r3
	ldr     r0, [r4, #0x8]
	ldr     r2, [r4, #0x18]
	add     r1, sp, #0x80
	blx     r2
	ldr     r5, [r4]
	add     r6, sp, #0x80
.arm
branch_20c9630: @ 20c9630 :arm
	cmp     r5, #0x0
	mov     r2, #0x0
	ble     branch_20c9658
	add     r1, sp, #0x40
.arm
branch_20c9640: @ 20c9640 :arm
	ldrb    r0, [r6, r2]
	add     r2, r2, #0x1
	cmp     r2, r5
	eor     r0, r0, #0x36
	strb    r0, [r1], #0x1
	blt     branch_20c9640
.arm
branch_20c9658: @ 20c9658 :arm
	ldr     r0, [r4, #0x4]
	cmp     r2, r0
	bge     branch_20c9684
	add     r0, sp, #0x40
	add     r3, r0, r2
	mov     r1, #0x36
.arm
branch_20c9670: @ 20c9670 :arm
	strb    r1, [r3], #0x1
	ldr     r0, [r4, #0x4]
	add     r2, r2, #0x1
	cmp     r2, r0
	blt     branch_20c9670
.arm
branch_20c9684: @ 20c9684 :arm
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x10]
	blx     r1
	ldr     r0, [r4, #0x8]
	ldr     r2, [r4, #0x4]
	ldr     r3, [r4, #0x14]
	add     r1, sp, #0x40
	blx     r3
	ldr     r0, [r4, #0x8]
	ldr     r3, [r4, #0x14]
	mov     r1, r8
	mov     r2, r7
	blx     r3
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	ldr     r2, [r4, #0x18]
	blx     r2
	cmp     r5, #0x0
	mov     r3, #0x0
	ble     branch_20c96f0
	add     r1, sp, #0x0
.arm
branch_20c96d8: @ 20c96d8 :arm
	ldrb    r0, [r6, r3]
	add     r3, r3, #0x1
	cmp     r3, r5
	eor     r0, r0, #0x5c
	strb    r0, [r1], #0x1
	blt     branch_20c96d8
.arm
branch_20c96f0: @ 20c96f0 :arm
	ldr     r0, [r4, #0x4]
	cmp     r3, r0
	bge     branch_20c971c
	add     r0, sp, #0x0
	add     r2, r0, r3
	mov     r1, #0x5c
.arm
branch_20c9708: @ 20c9708 :arm
	strb    r1, [r2], #0x1
	ldr     r0, [r4, #0x4]
	add     r3, r3, #0x1
	cmp     r3, r0
	blt     branch_20c9708
.arm
branch_20c971c: @ 20c971c :arm
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x10]
	blx     r1
	ldr     r0, [r4, #0x8]
	ldr     r2, [r4, #0x4]
	ldr     r3, [r4, #0x14]
	add     r1, sp, #0x0
	blx     r3
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	ldr     r2, [r4]
	ldr     r3, [r4, #0x14]
	blx     r3
	ldr     r0, [r4, #0x8]
	ldr     r2, [r4, #0x18]
	mov     r1, r9
	blx     r2
	add     sp, sp, #0xc0
	ldmfd   sp!, {r3-r9,pc}
@ 0x20c9768

.word 0xff00ff @ 0x20c9768
.word 0x5a827999 @ 0x20c976c
.word 0x6ed9eba1 @ 0x20c9770
.word 0x8f1bbcdc @ 0x20c9774
.word 0xca62c1d6 @ 0x20c9778



.arm
Function_20c977c: @ 20c977c :arm
	stmfd   sp!, {r4-r12,lr}
	ldmia   r0, {r3,r9-r12}
	sub     sp, sp, #0x84
	str     r2, [sp, #0x80]
branch_20c978c: @ 20c978c :arm
	ldr     r8, [pc, #-0x28] @ [0x20c976c] (=0x5a827999)
	ldr     r7, [pc, #-0x30] @ [0x20c9768] (=0xff00ff)
	mov     r6, sp
	mov     r5, #0x0
branch_20c979c: @ 20c979c :arm
	ldr     r4, [r1], #0x4
	add     r2, r8, r12
	add     r2, r2, r3, ror #27
	and     lr, r4, r7
	and     r4, r7, r4, ror #24
	orr     r4, r4, lr, ror #8
	str     r4, [r6, #0x40]
	str     r4, [r6], #0x4
	add     r2, r2, r4
	eor     r4, r10, r11
	and     r4, r4, r9
	eor     r4, r4, r11
	add     r2, r2, r4
	mov     r9, r9, ror #2
	mov     r12, r11
	mov     r11, r10
	mov     r10, r9
	mov     r9, r3
	mov     r3, r2
	add     r5, r5, #0x4
	cmp     r5, #0x40
	blt     branch_20c979c
	mov     r7, #0x0
	mov     r6, sp
branch_20c97fc: @ 20c97fc :arm
	ldr     r2, [r6]
	ldr     r5, [r6, #0x8]
	ldr     r4, [r6, #0x20]
	ldr     lr, [r6, #0x34]
	eor     r2, r2, r5
	eor     r4, r4, lr
	eor     r2, r2, r4
	mov     r2, r2, ror #31
	str     r2, [r6, #0x40]
	str     r2, [r6], #0x4
	add     r2, r2, r12
	add     r2, r2, r8
	add     r2, r2, r3, ror #27
	eor     r4, r10, r11
	and     r4, r4, r9
	eor     r4, r4, r11
	add     r2, r2, r4
	mov     r9, r9, ror #2
	mov     r12, r11
	mov     r11, r10
	mov     r10, r9
	mov     r9, r3
	mov     r3, r2
	add     r7, r7, #0x4
	cmp     r7, #0x10
	blt     branch_20c97fc
	ldr     r8, [pc, #-0xfc] @ [0x20c9770] (=0x6ed9eba1)
	mov     r7, #0x0
branch_20c986c: @ 20c986c :arm
	ldr     r2, [r6]
	ldr     r4, [r6, #0x8]
	ldr     lr, [r6, #0x20]
	ldr     r5, [r6, #0x34]
	eor     r2, r2, r4
	eor     lr, lr, r5
	eor     r2, r2, lr
	mov     r2, r2, ror #31
	str     r2, [r6, #0x40]
	str     r2, [r6], #0x4
	add     r2, r2, r12
	add     r2, r2, r8
	add     r2, r2, r3, ror #27
	eor     lr, r9, r10
	eor     lr, lr, r11
	add     r2, r2, lr
	mov     r9, r9, ror #2
	mov     r12, r11
	mov     r11, r10
	mov     r10, r9
	mov     r9, r3
	mov     r3, r2
	add     r7, r7, #0x1
	cmp     r7, #0xc
	moveq   r6, sp
	cmp     r7, #0x14
	blt     branch_20c986c
	ldr     r8, [pc, #-0x16c] @ [0x20c9774] (=0x8f1bbcdc)
	mov     r7, #0x0
branch_20c98e0: @ 20c98e0 :arm
	ldr     r2, [r6]
	ldr     lr, [r6, #0x8]
	ldr     r5, [r6, #0x20]
	ldr     r4, [r6, #0x34]
	eor     r2, r2, lr
	eor     r5, r5, r4
	eor     r2, r2, r5
	mov     r2, r2, ror #31
	str     r2, [r6, #0x40]
	str     r2, [r6], #0x4
	add     r2, r2, r12
	add     r2, r2, r8
	add     r2, r2, r3, ror #27
	orr     r5, r9, r10
	and     r5, r5, r11
	and     r4, r9, r10
	orr     r5, r5, r4
	add     r2, r2, r5
	mov     r9, r9, ror #2
	mov     r12, r11
	mov     r11, r10
	mov     r10, r9
	mov     r9, r3
	mov     r3, r2
	add     r7, r7, #0x1
	cmp     r7, #0x8
	moveq   r6, sp
	cmp     r7, #0x14
	blt     branch_20c98e0
	ldr     r8, [pc, #-0x1e4] @ [0x20c9778] (=0xca62c1d6)
	mov     r7, #0x0
branch_20c995c: @ 20c995c :arm
	ldr     r2, [r6]
	ldr     r5, [r6, #0x8]
	ldr     r4, [r6, #0x20]
	ldr     lr, [r6, #0x34]
	eor     r2, r2, r5
	eor     r4, r4, lr
	eor     r2, r2, r4
	mov     r2, r2, ror #31
	str     r2, [r6, #0x40]
	str     r2, [r6], #0x4
	add     r2, r2, r12
	add     r2, r2, r8
	add     r2, r2, r3, ror #27
	eor     r4, r9, r10
	eor     r4, r4, r11
	add     r2, r2, r4
	mov     r9, r9, ror #2
	mov     r12, r11
	mov     r11, r10
	mov     r10, r9
	mov     r9, r3
	mov     r3, r2
	add     r7, r7, #0x1
	cmp     r7, #0x4
	moveq   r6, sp
	cmp     r7, #0x14
	blt     branch_20c995c
	ldmia   r0, {r2,r4,r6,r7,lr}
	add     r3, r3, r2
	add     r9, r9, r4
	add     r10, r10, r6
	add     r11, r11, r7
	add     r12, r12, lr
	stmia   r0, {r3,r9-r12}
	ldr     lr, [sp, #0x80]
	subs    lr, lr, #0x40
	str     lr, [sp, #0x80]
	bgt     branch_20c978c
	add     sp, sp, #0x84
	ldmfd   sp!, {r4-r12,pc}
@ 0x20c99fc


.arm
CP_SaveContext: @ 20c99fc :arm
	ldr     r1, =REG_DIV_NUMER
	stmfd   sp!, {r4}
	ldmia   r1, {r2-r4,r12}
	stmia   r0!, {r2-r4,r12}
	ldrh    r12, [r1, #-0x10]
	add     r1, r1, #0x28
	ldmia   r1, {r2,r3}
	stmia   r0!, {r2,r3}
	and     r12, r12, #0x3
	ldrh    r2, [r1, #-0x8]
	strh    r12, [r0]
	and     r2, r2, #0x1
	strh    r2, [r0, #0x2]
	ldmfd   sp!, {r4}
	bx      lr
@ 0x20c9a38

.pool



.arm
CPi_RestoreContext: @ 20c9a3c :arm
	stmfd   sp!, {r4}
	ldr     r1, =REG_DIV_NUMER
	ldmia   r0, {r2-r4,r12}
	stmia   r1, {r2-r4,r12}
	ldrh    r2, [r0, #0x18]
	ldrh    r3, [r0, #0x1a]
	strh    r2, [r1, #-0x10]
	strh    r3, [r1, #0x20]
	add     r0, r0, #0x10
	add     r1, r1, #0x28
	ldmia   r0, {r2,r3}
	stmia   r1, {r2,r3}
	ldmfd   sp!, {r4}
	bx      lr
@ 0x20c9a74

.pool



.arm
TPi_TpCallback: @ 20c9a78 :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #0x8
	mov     r0, r1, lsl #16
	mov     r3, r0, lsr #16
	and     r0, r3, #127, 24 @ #0x7f00
	mov     r0, r0, lsl #8
	cmp     r2, #0x0
	mov     r0, r0, lsr #16
	beq     branch_20c9ad4
	ldr     r1, [pc, #0x24c] @ [0x20c9cf0] (=RAM_21cec90)
	mov     r2, #0x1
	ldrh    r3, [r1, #0x38]
	orr     r2, r3, r2, lsl r0
	strh    r2, [r1, #0x38]
	ldr     r3, [r1, #0x4]
	cmp     r3, #0x0
	addeq   sp, sp, #0x8
	ldmeqfd sp!, {r3-r7,pc}
	mov     r1, #0x4
	mov     r2, #0x0
	blx     r3
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r7,pc}

branch_20c9ad4: @ 20c9ad4 :arm
	cmp     r0, #0x10
	bne     branch_20c9b8c
	ldr     r1, [pc, #0x20c] @ [0x20c9cf0] (=RAM_21cec90)
	ldrh    r2, [r1, #0x10]
	add     r2, r2, #0x1
	strh    r2, [r1, #0x10]
	ldrh    r3, [r1, #0x10]
	ldrh    r2, [r1, #0x18]
	cmp     r3, r2
	movcs   r2, #0x0
	strcsh  r2, [r1, #0x10]
	ldr     r2, [pc, #0x1ec] @ [0x20c9cf4] (=RAM_27fffaa)
	ldr     r1, [pc, #0x1e4] @ [0x20c9cf0] (=RAM_21cec90)
	ldrh    r3, [r2]
	ldrh    r2, [r2, #0x2]
	ldrh    lr, [r1, #0x10]
	strh    r3, [sp, #0x4]
	strh    r2, [sp, #0x6]
	ldr     r5, [sp, #0x4]
	ldr     r7, [r1, #0x14]
	mov     r2, r5, lsl #7
	mov     r3, r2, lsr #31
	mov     r4, r5, lsl #8
	mov     r2, r5, lsl #5
	mov     r12, r5, lsl #20
	mov     r2, r2, lsr #30
	mov     r6, lr, lsl #3
	mov     r5, r12, lsr #20
	strh    r5, [r7, r6]
	add     r5, r7, lr, lsl #3
	mov     r4, r4, lsr #20
	strh    r4, [r5, #0x2]
	and     r3, r3, #0xff
	strh    r3, [r5, #0x4]
	and     r2, r2, #0xff
	strh    r2, [r5, #0x6]
	ldr     r3, [r1, #0x4]
	cmp     r3, #0x0
	addeq   sp, sp, #0x8
	ldmeqfd sp!, {r3-r7,pc}
	ldrh    r2, [r1, #0x10]
	mov     r1, #0x0
	and     r2, r2, #0xff
	blx     r3
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r7,pc}

branch_20c9b8c: @ 20c9b8c :arm
	tst     r1, #1, 8 @ #0x1000000
	addeq   sp, sp, #0x8
	ldmeqfd sp!, {r3-r7,pc}
	and     r1, r3, #0xff
	cmp     r1, #0x4
	addls   pc, pc, r1, lsl #2
	b       branch_20c9ce4
	b       branch_20c9bbc
	b       branch_20c9ce4
	b       branch_20c9c90
	b       branch_20c9c98
	b       branch_20c9c88

branch_20c9bbc: @ 20c9bbc :arm
	cmp     r0, #0x0
	beq     branch_20c9be0
	cmp     r0, #0x1
	beq     branch_20c9c40
	cmp     r0, #0x2
	ldreq   r1, [pc, #0x118] @ [0x20c9cf0] (=RAM_21cec90)
	moveq   r2, #0x0
	streqh  r2, [r1, #0x36]
	b       branch_20c9c4c

branch_20c9be0: @ 20c9be0 :arm
	ldr     r2, [pc, #0x10c] @ [0x20c9cf4] (=RAM_27fffaa)
	ldr     r1, [pc, #0x104] @ [0x20c9cf0] (=RAM_21cec90)
	ldrh    r4, [r2]
	ldrh    r3, [r2, #0x2]
	mov     r2, #0x0
	strh    r4, [sp]
	strh    r3, [sp, #0x2]
	ldr     r4, [sp]
	mov     r3, r4, lsl #20
	mov     r5, r3, lsr #20
	mov     lr, r4, lsl #8
	mov     r3, r4, lsl #7
	mov     r12, r3, lsr #31
	mov     r3, r4, lsl #5
	mov     r3, r3, lsr #30
	strh    r5, [r1, #0x8]
	mov     lr, lr, lsr #20
	strh    lr, [r1, #0xa]
	and     r12, r12, #0xff
	strh    r12, [r1, #0xc]
	and     r3, r3, #0xff
	strh    r3, [r1, #0xe]
	strh    r2, [r1, #0x36]
	b       branch_20c9c4c

branch_20c9c40: @ 20c9c40 :arm
	ldr     r1, [pc, #0xa8] @ [0x20c9cf0] (=RAM_21cec90)
	mov     r2, #0x2
	strh    r2, [r1, #0x36]
branch_20c9c4c: @ 20c9c4c :arm
	ldr     r1, [pc, #0x9c] @ [0x20c9cf0] (=RAM_21cec90)
	mov     r2, #0x1
	ldrh    r3, [r1, #0x3a]
	mvn     r2, r2, lsl r0
	and     r2, r3, r2
	strh    r2, [r1, #0x3a]
	ldr     r3, [r1, #0x4]
	cmp     r3, #0x0
	addeq   sp, sp, #0x8
	ldmeqfd sp!, {r3-r7,pc}
	mov     r1, #0x0
	mov     r2, r1
	blx     r3
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c9c88

.arm
branch_20c9c88: @ 20c9c88 :arm
	mov     r4, #0x3
	b       branch_20c9c9c
@ 0x20c9c90

.arm
branch_20c9c90: @ 20c9c90 :arm
	mov     r4, #0x1
	b       branch_20c9c9c
@ 0x20c9c98

.arm
branch_20c9c98: @ 20c9c98 :arm
	mov     r4, #0x2
.arm
branch_20c9c9c: @ 20c9c9c :arm
	ldr     r1, [pc, #0x4c] @ [0x20c9cf0] (=RAM_21cec90)
	mov     r12, #0x1
	ldrh    r3, [r1, #0x38]
	mvn     r2, r12, lsl r0
	orr     r3, r3, r12, lsl r0
	strh    r3, [r1, #0x38]
	ldrh    r3, [r1, #0x3a]
	and     r2, r3, r2
	strh    r2, [r1, #0x3a]
	ldr     r3, [r1, #0x4]
	cmp     r3, #0x0
	addeq   sp, sp, #0x8
	ldmeqfd sp!, {r3-r7,pc}
	and     r1, r4, #0xff
	mov     r2, #0x0
	blx     r3
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c9ce4

.arm
branch_20c9ce4: @ 20c9ce4 :arm
	bl      OS_Panic
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c9cf0

.word RAM_21cec90 @ 0x20c9cf0
.word RAM_27fffaa @ 0x20c9cf4



.arm
TP_Init: @ 20c9cf8 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r0, [pc, #0x64] @ [0x20c9d68] (=RAM_21cec90)
	ldrh    r1, [r0]
	cmp     r1, #0x0
	ldmnefd sp!, {r3-r5,pc}
	mov     r1, #0x1
	strh    r1, [r0]
	bl      Function_20c6350
	ldr     r0, [pc, #0x48] @ [0x20c9d68] (=RAM_21cec90)
	mov     r1, #0x0
	strh    r1, [r0, #0x10]
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x14]
	strh    r1, [r0, #0x36]
	strh    r1, [r0, #0x34]
	strh    r1, [r0, #0x3a]
	strh    r1, [r0, #0x38]
	mov     r5, #0x6
	mov     r4, #0x1
.arm
branch_20c9d44: @ 20c9d44 :arm
	mov     r0, r5
	mov     r1, r4
	bl      PXI_IsCallbackReady
	cmp     r0, #0x0
	beq     branch_20c9d44
	ldr     r1, [pc, #0xc] @ [0x20c9d6c] (=TPi_TpCallback)
	mov     r0, #0x6
	bl      PXI_SetFifoRecvCallback
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c9d68

.word RAM_21cec90 @ 0x20c9d68
.word TPi_TpCallback @ 0x20c9d6c



.arm
TP_GetUserInfo: @ 20c9d70 :arm
	stmfd   sp!, {r3-r6,lr}
	sub     sp, sp, #0x14
	ldr     r12, [pc, #0x80] @ [0x20c9e00] (=RAM_27ffc80)
	mov     r4, r0
	ldrh    r1, [r12, #0x58]
	ldrh    r2, [r12, #0x5a]
	ldrh    r0, [r12, #0x5e]
	cmp     r1, #0x0
	ldrh    lr, [r12, #0x60]
	cmpeq   r0, #0x0
	cmpeq   r2, #0x0
	ldrb    r3, [r12, #0x5c]
	ldrb    r5, [r12, #0x5d]
	ldrb    r6, [r12, #0x62]
	ldrb    r12, [r12, #0x63]
	cmpeq   lr, #0x0
	beq     branch_20c9dd4
	str     r5, [sp]
	stmfa   sp, {r0,lr}
	str     r6, [sp, #0xc]
	mov     r0, r4
	str     r12, [sp, #0x10]
	bl      TP_CalcCalibrateParam
	cmp     r0, #0x0
	beq     branch_20c9df4
.arm
branch_20c9dd4: @ 20c9dd4 :arm
	mov     r0, #0x0
	strh    r0, [r4]
	strh    r0, [r4, #0x2]
	strh    r0, [r4, #0x4]
	strh    r0, [r4, #0x6]
	add     sp, sp, #0x14
	mov     r0, #0x1
	ldmfd   sp!, {r3-r6,pc}

branch_20c9df4: @ 20c9df4 :arm
	mov     r0, #0x1
	add     sp, sp, #0x14
	ldmfd   sp!, {r3-r6,pc}
@ 0x20c9e00

.word RAM_27ffc80 @ 0x20c9e00



.arm
TP_SetCalibrateParam: @ 20c9e04 :arm
	stmfd   sp!, {r4,lr}
	movs    r4, r0
	bne     branch_20c9e20
	ldr     r0, [pc, #0x108] @ [0x20c9f20] (=RAM_21cec90)
	mov     r1, #0x0
	strh    r1, [r0, #0x34]
	ldmfd   sp!, {r4,pc}

branch_20c9e20: @ 20c9e20 :arm
	bl      OS_DisableInterrupts
	ldrsh   r2, [r4, #0x4]
	cmp     r2, #0x0
	beq     branch_20c9e84
	ldr     r3, [pc, #0xec] @ [0x20c9f24] (=REG_DIVCNT)
	mov     r1, #DIV_32_32
	strh    r1, [r3]
	mov     r1, #0x10000000
	str     r1, [r3, #0x10]
	str     r2, [r3, #0x18]
	mov     r1, #0x0
	str     r1, [r3, #0x1c]
	ldrsh   r2, [r4]
	ldr     r1, [pc, #0xc4] @ [0x20c9f20] (=RAM_21cec90)
	str     r2, [r1, #0x1c]
	ldrsh   r2, [r4, #0x4]
	str     r2, [r1, #0x20]

branch_20c9e64: @ 20c9e64 :arm
	ldrh    r1, [r3]
	tst     r1, #DIV_BUSY
	bne     branch_20c9e64

	ldr     r2, [pc, #0xb0] @ [0x20c9f28] (=REG_DIV_RESULT)
	ldr     r1, [pc, #0xa4] @ [0x20c9f20] (=RAM_21cec90)
	ldr     r2, [r2]
	str     r2, [r1, #0x24]
	b       branch_20c9e98

branch_20c9e84: @ 20c9e84 :arm
	ldr     r1, [pc, #0x94] @ [0x20c9f20] (=RAM_21cec90)
	mov     r2, #0x0
	str     r2, [r1, #0x1c]
	str     r2, [r1, #0x20]
	str     r2, [r1, #0x24]
branch_20c9e98: @ 20c9e98 :arm
	ldrsh   r2, [r4, #0x6]
	cmp     r2, #0x0
	beq     branch_20c9ef8
	ldr     r3, [pc, #0x78] @ [0x20c9f24] (=REG_DIVCNT)
	mov     r1, #DIV_32_32
	strh    r1, [r3]
	mov     r1, #1, 4 @ #0x10000000
	str     r1, [r3, #0x10]
	str     r2, [r3, #0x18]
	mov     r1, #0x0
	str     r1, [r3, #0x1c]
	ldrsh   r2, [r4, #0x2]
	ldr     r1, [pc, #0x50] @ [0x20c9f20] (=RAM_21cec90)
	str     r2, [r1, #0x28]
	ldrsh   r2, [r4, #0x6]
	str     r2, [r1, #0x2c]

branch_20c9ed8: @ 20c9ed8 :arm
	ldrh    r1, [r3]
	tst     r1, #DIV_BUSY
	bne     branch_20c9ed8

	ldr     r2, [pc, #0x3c] @ [0x20c9f28] (=REG_DIV_RESULT)
	ldr     r1, [pc, #0x30] @ [0x20c9f20] (=RAM_21cec90)
	ldr     r2, [r2]
	str     r2, [r1, #0x30]
	b       branch_20c9f0c

branch_20c9ef8: @ 20c9ef8 :arm
	ldr     r1, [pc, #0x20] @ [0x20c9f20] (=RAM_21cec90)
	mov     r2, #0x0
	str     r2, [r1, #0x28]
	str     r2, [r1, #0x2c]
	str     r2, [r1, #0x30]
branch_20c9f0c: @ 20c9f0c :arm
	bl      OS_RestoreInterrupts
	ldr     r0, [pc, #0x8] @ [0x20c9f20] (=RAM_21cec90)
	mov     r1, #0x1
	strh    r1, [r0, #0x34]
	ldmfd   sp!, {r4,pc}
@ 0x20c9f20

.word RAM_21cec90 @ 0x20c9f20
.word REG_DIVCNT @ 0x20c9f24
.word REG_DIV_RESULT @ 0x20c9f28



.arm
TP_RequestSamplingAsync: @ 20c9f2c :arm
	stmfd   sp!, {r4,lr}
	bl      OS_DisableInterrupts
	mov     r4, r0
	mov     r0, #0x6
	mov     r1, #3, 8 @ #0x3000000
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	movge   r0, #0x1
	movlt   r0, #0x0
	cmp     r0, #0x0
	bne     branch_20c9f94
	mov     r0, r4
	bl      OS_RestoreInterrupts
	ldr     r0, [pc, #0x50] @ [0x20c9fbc] (=RAM_21cec90)
	ldrh    r1, [r0, #0x38]
	orr     r1, r1, #0x1
	strh    r1, [r0, #0x38]
	ldr     r3, [r0, #0x4]
	cmp     r3, #0x0
	ldmeqfd sp!, {r4,pc}
	mov     r0, #0x0
	mov     r2, r0
	mov     r1, #0x4
	blx     r3
	ldmfd   sp!, {r4,pc}

branch_20c9f94: @ 20c9f94 :arm
	ldr     r1, [pc, #0x20] @ [0x20c9fbc] (=RAM_21cec90)
	mov     r0, r4
	ldrh    r2, [r1, #0x3a]
	orr     r2, r2, #0x1
	strh    r2, [r1, #0x3a]
	ldrh    r2, [r1, #0x38]
	bic     r2, r2, #0x1
	strh    r2, [r1, #0x38]
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r4,pc}
@ 0x20c9fbc

.word RAM_21cec90 @ 0x20c9fbc



.arm
TP_WaitRawResult: @ 20c9fc0 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	bl      TP_WaitBusy
	ldr     r1, [pc, #0x34] @ [0x20ca00c] (=RAM_21cec90)
	ldrh    r0, [r1, #0x38]
	tst     r0, #0x1
	movne   r0, #0x1
	ldmnefd sp!, {r4,pc}
	ldrh    r3, [r1, #0x8]
	ldrh    r2, [r1, #0xa]
	mov     r0, #0x0
	strh    r3, [r4]
	strh    r2, [r4, #0x2]
	ldrh    r2, [r1, #0xc]
	ldrh    r1, [r1, #0xe]
	strh    r2, [r4, #0x4]
	strh    r1, [r4, #0x6]
	ldmfd   sp!, {r4,pc}
@ 0x20ca00c

.word RAM_21cec90 @ 0x20ca00c



.arm
TP_RequestAutoSamplingStartAsync: @ 20ca010 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r12, [pc, #0xf0] @ [0x20ca10c] (=RAM_21cec90)
	mov     lr, #0x0
	str     r2, [r12, #0x14]
	mov     r5, r1
	strh    lr, [r12, #0x10]
	strh    r5, [r12, #0x12]
	mov     r4, r0
	strh    r3, [r12, #0x18]
	cmp     r3, #0x0
	bls     branch_20ca058
	mov     r1, lr
.arm
branch_20ca040: @ 20ca040 :arm
	ldr     r0, [r12, #0x14]
	add     r0, r0, lr, lsl #3
	add     lr, lr, #0x1
	strh    r1, [r0, #0x4]
	cmp     lr, r3
	bcc     branch_20ca040
.arm
branch_20ca058: @ 20ca058 :arm
	bl      OS_DisableInterrupts
	and     r1, r5, #0xff
	orr     r1, r1, #1, 24 @ #0x100
	mov     r5, r0
	orr     r1, r1, #2, 8 @ #0x2000000
	mov     r0, #0x6
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	movlt   r0, #0x0
	blt     branch_20ca0a4
	orr     r1, r4, #1, 16 @ #0x10000
	orr     r1, r1, #1, 8 @ #0x1000000
	mov     r0, #0x6
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	movlt   r0, #0x0
	movge   r0, #0x1
.arm
branch_20ca0a4: @ 20ca0a4 :arm
	tst     r0, #0xff
	bne     branch_20ca0e4
	mov     r0, r5
	bl      OS_RestoreInterrupts
	ldr     r0, [pc, #0x50] @ [0x20ca10c] (=RAM_21cec90)
	ldrh    r1, [r0, #0x38]
	orr     r1, r1, #0x2
	strh    r1, [r0, #0x38]
	ldr     r3, [r0, #0x4]
	cmp     r3, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	mov     r0, #0x1
	mov     r1, #0x4
	mov     r2, #0x0
	blx     r3
	ldmfd   sp!, {r3-r5,pc}
@ 0x20ca0e4

.arm
branch_20ca0e4: @ 20ca0e4 :arm
	ldr     r1, [pc, #0x20] @ [0x20ca10c] (=RAM_21cec90)
	mov     r0, r5
	ldrh    r2, [r1, #0x3a]
	orr     r2, r2, #0x2
	strh    r2, [r1, #0x3a]
	ldrh    r2, [r1, #0x38]
	bic     r2, r2, #0x2
	strh    r2, [r1, #0x38]
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r3-r5,pc}
@ 0x20ca10c

.word RAM_21cec90 @ 0x20ca10c



.arm
TP_RequestAutoSamplingStopAsync: @ 20ca110 :arm
	stmfd   sp!, {r4,lr}
	bl      OS_DisableInterrupts
	mov     r4, r0
	ldr     r1, [pc, #0x7c] @ [0x20ca1a0] (=0x3000200)
	mov     r0, #0x6
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	movge   r0, #0x1
	movlt   r0, #0x0
	cmp     r0, #0x0
	bne     branch_20ca178
	mov     r0, r4
	bl      OS_RestoreInterrupts
	ldr     r0, [pc, #0x54] @ [0x20ca1a4] (=RAM_21cec90)
	ldrh    r1, [r0, #0x38]
	orr     r1, r1, #0x4
	strh    r1, [r0, #0x38]
	ldr     r3, [r0, #0x4]
	cmp     r3, #0x0
	ldmeqfd sp!, {r4,pc}
	mov     r0, #0x2
	mov     r1, #0x4
	mov     r2, #0x0
	blx     r3
	ldmfd   sp!, {r4,pc}
@ 0x20ca178

.arm
branch_20ca178: @ 20ca178 :arm
	ldr     r1, [pc, #0x24] @ [0x20ca1a4] (=RAM_21cec90)
	mov     r0, r4
	ldrh    r2, [r1, #0x3a]
	orr     r2, r2, #0x4
	strh    r2, [r1, #0x3a]
	ldrh    r2, [r1, #0x38]
	bic     r2, r2, #0x4
	strh    r2, [r1, #0x38]
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r4,pc}
@ 0x20ca1a0

.word 0x3000200 @ 0x20ca1a0
.word RAM_21cec90 @ 0x20ca1a4



.arm
TP_GetLatestRawPointInAuto: @ 20ca1a8 :arm
	stmfd   sp!, {r4,lr}
	ldr     r12, [pc, #0x134] @ [0x20ca2e8] (=RAM_21cec90)
	mov     r1, #0x3
	strh    r1, [r0, #0x6]
	ldrh    r1, [r12, #0x12]
	ldrh    r2, [r12, #0x10]
	cmp     r1, #0x1
	ldrneh  r1, [r12, #0x18]
	cmpne   r1, #0x1
	bne     branch_20ca204
	ldr     r1, [pc, #0x110] @ [0x20ca2e8] (=RAM_21cec90)
	mov     r12, r2, lsl #3
	ldr     r1, [r1, #0x14]
	add     r3, r1, r2, lsl #3
	ldrh    r2, [r1, r12]
	ldrh    r1, [r3, #0x2]
	strh    r2, [r0]
	strh    r1, [r0, #0x2]
	ldrh    r2, [r3, #0x4]
	ldrh    r1, [r3, #0x6]
	strh    r2, [r0, #0x4]
	strh    r1, [r0, #0x6]
	ldmfd   sp!, {r4,pc}
@ 0x20ca204

.arm
branch_20ca204: @ 20ca204 :arm
	mov     r1, #0x0
	b       branch_20ca2c4
@ 0x20ca20c

.arm
branch_20ca20c: @ 20ca20c :arm
	subs    lr, r2, r1
	ldr     r3, [r12, #0x14]
	addmi   lr, lr, r4
	add     r3, r3, lr, lsl #3
	ldrh    lr, [r3, #0x4]
	cmp     lr, #0x0
	bne     branch_20ca24c
	ldrh    r2, [r3]
	ldrh    r1, [r3, #0x2]
	strh    r2, [r0]
	strh    r1, [r0, #0x2]
	ldrh    r2, [r3, #0x4]
	ldrh    r1, [r3, #0x6]
	strh    r2, [r0, #0x4]
	strh    r1, [r0, #0x6]
	ldmfd   sp!, {r4,pc}
@ 0x20ca24c

.arm
branch_20ca24c: @ 20ca24c :arm
	ldrh    lr, [r0, #0x6]
	tst     lr, #0x1
	beq     branch_20ca27c
	ldrh    lr, [r3, #0x6]
	tst     lr, #0x1
	bne     branch_20ca27c
	ldrh    lr, [r3]
	cmp     r1, #0x0
	strh    lr, [r0]
	ldrneh  lr, [r0, #0x6]
	bicne   lr, lr, #0x1
	strneh  lr, [r0, #0x6]
.arm
branch_20ca27c: @ 20ca27c :arm
	ldrh    lr, [r0, #0x6]
	tst     lr, #0x2
	beq     branch_20ca2ac
	ldrh    lr, [r3, #0x6]
	tst     lr, #0x2
	bne     branch_20ca2ac
	ldrh    r3, [r3, #0x2]
	cmp     r1, #0x0
	strh    r3, [r0, #0x2]
	ldrneh  r3, [r0, #0x6]
	bicne   r3, r3, #0x2
	strneh  r3, [r0, #0x6]
.arm
branch_20ca2ac: @ 20ca2ac :arm
	ldrh    r3, [r0, #0x6]
	cmp     r3, #0x0
	moveq   r1, #0x1
	streqh  r1, [r0, #0x4]
	ldmeqfd sp!, {r4,pc}
	add     r1, r1, #0x1
.arm
branch_20ca2c4: @ 20ca2c4 :arm
	ldrh    r3, [r12, #0x12]
	cmp     r1, r3
	ldrlth  r4, [r12, #0x18]
	sublt   r3, r4, #0x1
	cmplt   r1, r3
	blt     branch_20ca20c
	mov     r1, #0x1
	strh    r1, [r0, #0x4]
	ldmfd   sp!, {r4,pc}
@ 0x20ca2e8

.word RAM_21cec90 @ 0x20ca2e8



.arm
Function_20ca2ec: @ 20ca2ec :arm
	ldr     r0, [pc, #0x4] @ [0x20ca2f8] (=RAM_21cec90)
	ldrh    r0, [r0, #0x10]
	bx      lr
@ 0x20ca2f8

.word RAM_21cec90 @ 0x20ca2f8



.arm
TP_CalcCalibrateParam: @ 20ca2fc :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r9, r1
	mov     r8, r2
	cmp     r9, #1, 20 @ #0x1000
	cmpcc   r8, #1, 20 @ #0x1000
	ldrcch  r4, [sp, #0x2c]
	mov     r7, r3
	mov     r10, r0
	cmpcc   r4, #1, 20 @ #0x1000
	ldrcch  r3, [sp, #0x30]
	cmpcc   r3, #1, 20 @ #0x1000
	movcs   r0, #0x1
	ldmcsfd sp!, {r3-r11,pc}
	cmp     r7, #1, 24 @ #0x100
	ldrcch  r2, [sp, #0x34]
	cmpcc   r2, #1, 24 @ #0x100
	ldrcch  r1, [sp, #0x28]
	cmpcc   r1, #0xc0
	ldrcch  r0, [sp, #0x38]
	cmpcc   r0, #0xc0
	movcs   r0, #0x1
	ldmcsfd sp!, {r3-r11,pc}
	cmp     r7, r2
	cmpne   r1, r0
	cmpne   r9, r4
	cmpne   r8, r3
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r11,pc}
	bl      OS_DisableInterrupts
	ldrh    lr, [sp, #0x2c]
	ldrh    r12, [sp, #0x34]
	ldr     r3, =REG_DIVCNT
	sub     r1, r9, lr
	mov     r2, #DIV_32_32
	ldrh    r4, [sp, #0x38]
	ldrh    r5, [sp, #0x28]
	ldrh    r6, [sp, #0x30]
	strh    r2, [r3]
	mov     r1, r1, lsl #8
	str     r1, [r3, #REG_DIV_NUMER_L-REG_DIVCNT]
	sub     r1, r7, r12
	str     r1, [r3, #REG_DIV_DENOM_L-REG_DIVCNT]
	mov     r1, r2
	sub     r2, r5, r4
	str     r1, [r3, #REG_DIV_DENOM_H-REG_DIVCNT]
	sub     r1, r8, r6
	str     r2, [sp]

branch_20ca3b8: @ 20ca3b8 :arm
	ldrh    r2, [r3]
	tst     r2, #DIV_BUSY
	bne     branch_20ca3b8

	mov     r11, r1, lsl #8
	ldr     r1, =REG_DIV_RESULT
	ldr     r2, [r1]
	mov     r1, #0x0
	strh    r1, [r3]
	ldr     r1, =REG_DIV_RESULT
	cmp     r2, #0x8000
	str     r11, [r1, #REG_DIV_NUMER-REG_DIV_RESULT]
	sub     r3, r1, #0x8
	ldr     r1, [sp]
	mov     r11, #0x0
	stmia   r3, {r1,r11}
	bge     branch_20ca408
	mov     r1, r11
	sub     r1, r1, #0x8000
	cmp     r2, r1
	bge     branch_20ca414
branch_20ca408: @ 20ca408 :arm
	bl      OS_RestoreInterrupts
	mov     r0, #0x1
	ldmfd   sp!, {r3-r11,pc}

branch_20ca414: @ 20ca414 :arm
	strh    r2, [r10, #0x4]
	ldrsh   r2, [r10, #0x4]
	add     r1, r7, r12
	add     r3, r9, lr
	mul     r1, r2, r1
	rsb     r1, r1, r3, lsl #8
	mov     r1, r1, lsl #9
	mov     r2, r1, asr #16
	cmp     r2, #0x8000
	bge     branch_20ca44c
	mov     r1, r11
	sub     r1, r1, #2, 18 @ #0x8000
	cmp     r2, r1
	bge     branch_20ca458
branch_20ca44c: @ 20ca44c :arm
	bl      OS_RestoreInterrupts
	mov     r0, #0x1
	ldmfd   sp!, {r3-r11,pc}

branch_20ca458: @ 20ca458 :arm
	ldr     r1,  =REG_DIV_RESULT
	strh    r2, [r10]
	sub     r2, r1, #0x20
branch_20ca464: @ 20ca464 :arm
	ldrh    r1, [r2]
	tst     r1, #0x8000
	bne     branch_20ca464
	ldr     r1,  =REG_DIV_RESULT
	ldr     r7, [r1]
	bl      OS_RestoreInterrupts
	cmp     r7, #0x8000
	bge     branch_20ca494
	mov     r1, #0x8000
	rsb     r1, r1, #0x0
	cmp     r7, r1
	bge     branch_20ca49c
branch_20ca494: @ 20ca494 :arm
	mov     r0, #0x1
	ldmfd   sp!, {r3-r11,pc}
@ 0x20ca49c

branch_20ca49c: @ 20ca49c :arm
	strh    r7, [r10, #0x6]
	ldrsh   r2, [r10, #0x6]
	add     r0, r5, r4
	add     r3, r8, r6
	mul     r0, r2, r0
	rsb     r0, r0, r3, lsl #8
	mov     r0, r0, lsl #9
	mov     r0, r0, asr #16
	cmp     r0, #0x8000
	bge     branch_20ca4cc
	cmp     r0, r1
	bge     branch_20ca4d4
branch_20ca4cc: @ 20ca4cc :arm
	mov     r0, #0x1
	ldmfd   sp!, {r3-r11,pc}

branch_20ca4d4: @ 20ca4d4 :arm
	strh    r0, [r10, #0x2]
	mov     r0, #0x0
	ldmfd   sp!, {r3-r11,pc}
@ 0x20ca4e0

.pool



.arm
TP_GetCalibratedPoint: @ 20ca4e8 :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r2, [pc, #0x110] @ [0x20ca604] (=RAM_21cec90)
	ldrh    r2, [r2, #0x34]
	cmp     r2, #0x0
	bne     branch_20ca520
	ldrh    r3, [r1]
	ldrh    r2, [r1, #0x2]
	strh    r3, [r0]
	strh    r2, [r0, #0x2]
	ldrh    r2, [r1, #0x4]
	ldrh    r1, [r1, #0x6]
	strh    r2, [r0, #0x4]
	strh    r1, [r0, #0x6]
	ldmfd   sp!, {r4-r6,pc}

branch_20ca520: @ 20ca520 :arm
	ldrh    r3, [r1, #0x4]
	ldr     r2, [pc, #0xdc] @ [0x20ca608] (=RAM_21cecac)
	strh    r3, [r0, #0x4]
	ldrh    r3, [r1, #0x6]
	strh    r3, [r0, #0x6]
	ldrh    r3, [r1, #0x4]
	cmp     r3, #0x0
	bne     branch_20ca550
	mov     r1, #0x0
	strh    r1, [r0]
	strh    r1, [r0, #0x2]
	ldmfd   sp!, {r4-r6,pc}

branch_20ca550: @ 20ca550 :arm
	ldrh    r4, [r1]
	ldr     r3, [r2]
	ldr     lr, [r2, #0x8]
	mov     r4, r4, lsl #2
	subs    r12, r4, r3
	mov     r3, r3, asr #31
	rsc     r3, r3, r4, asr #31
	umull   r6, r5, lr, r12
	mla     r5, lr, r3, r5
	mov     r3, lr, asr #31
	mla     r5, r3, r12, r5
	mov     r3, r6, lsr #22
	orr     r3, r3, r5, lsl #10
	strh    r3, [r0]
	ldrsh   r3, [r0]
	cmp     r3, #0x0
	movlt   r3, #0x0
	strlth  r3, [r0]
	blt     branch_20ca5a8
	cmp     r3, #0xff
	movgt   r3, #0xff
	strgth  r3, [r0]
branch_20ca5a8: @ 20ca5a8 :arm
	ldrh    r3, [r1, #0x2]
	ldr     r1, [r2, #0xc]
	ldr     r12, [r2, #0x14]
	mov     r2, r3, lsl #2
	subs    r3, r2, r1
	mov     r1, r1, asr #31
	rsc     r1, r1, r2, asr #31
	umull   r4, lr, r12, r3
	mla     lr, r12, r1, lr
	mov     r1, r12, asr #31
	mla     lr, r1, r3, lr
	mov     r1, r4, lsr #22
	orr     r1, r1, lr, lsl #10
	strh    r1, [r0, #0x2]
	ldrsh   r1, [r0, #0x2]
	cmp     r1, #0x0
	movlt   r1, #0x0
	strlth  r1, [r0, #0x2]
	ldmltfd sp!, {r4-r6,pc}
	cmp     r1, #0xbf
	movgt   r1, #0xbf
	strgth  r1, [r0, #0x2]
	ldmfd   sp!, {r4-r6,pc}
@ 0x20ca604

.word RAM_21cec90 @ 0x20ca604
.word RAM_21cecac @ 0x20ca608



.arm
TP_WaitBusy: @ 20ca60c :arm
	ldr     r1, [pc, #0xc] @ [0x20ca620] (=RAM_21cec90)
branch_20ca610: @ 20ca610 :arm
	ldrh    r2, [r1, #0x3a]
	tst     r2, r0
	bne     branch_20ca610

	bx      lr
@ 0x20ca620

.word RAM_21cec90 @ 0x20ca620



.arm
TP_CheckError: @ 20ca624 :arm
	ldr     r1, [pc, #0x8] @ [0x20ca634] (=RAM_21cec90)
	ldrh    r1, [r1, #0x38]
	and     r0, r1, r0
	bx      lr
@ 0x20ca634

.word RAM_21cec90 @ 0x20ca634



.arm
.globl MIC_Init
MIC_Init: @ 20ca638 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r0, [pc, #0x58] @ [0x20ca69c] (=RAM_21ceccc)
	ldrh    r1, [r0]
	cmp     r1, #0x0
	ldmnefd sp!, {r3-r5,pc}
	mov     r1, #0x1
	strh    r1, [r0]
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x8]
	bl      Function_20c6350
	mov     r5, #0x9
	mov     r4, #0x1
branch_20ca66c: @ 20ca66c :arm
	mov     r0, r5
	mov     r1, r4
	bl      PXI_IsCallbackReady
	cmp     r0, #0x0
	beq     branch_20ca66c
	ldr     r2, [pc, #0x18] @ [0x20ca6a0] (=RAM_27fff90)
	mov     r3, #0x0
	ldr     r1, [pc, #0x14] @ [0x20ca6a4] (=Function_20ca968)
	mov     r0, #0x9
	str     r3, [r2]
	bl      PXI_SetFifoRecvCallback
	ldmfd   sp!, {r3-r5,pc}
@ 0x20ca69c

.word RAM_21ceccc @ 0x20ca69c
.word RAM_27fff90 @ 0x20ca6a0
.word Function_20ca968 @ 0x20ca6a4



.arm
MIC_DoSamplingAsync: @ 20ca6a8 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r1
	cmp     r0, #0x6
	mov     r6, r2
	mov     r5, r3
	movge   r0, #0x2
	ldmgefd sp!, {r3-r7,pc}
	cmp     r0, #0x3
	addls   pc, pc, r0, lsl #2
	b       branch_20ca700
	b       branch_20ca6e0
	b       branch_20ca6e8
	b       branch_20ca6f0
	b       branch_20ca6f8
@ 0x20ca6e0

.arm
branch_20ca6e0: @ 20ca6e0 :arm
	mov     r4, #0x0
	b       branch_20ca708
@ 0x20ca6e8

.arm
branch_20ca6e8: @ 20ca6e8 :arm
	mov     r4, #0x1
	b       branch_20ca708
@ 0x20ca6f0

.arm
branch_20ca6f0: @ 20ca6f0 :arm
	mov     r4, #0x2
	b       branch_20ca708
@ 0x20ca6f8

.arm
branch_20ca6f8: @ 20ca6f8 :arm
	mov     r4, #0x3
	b       branch_20ca708
@ 0x20ca700

.arm
branch_20ca700: @ 20ca700 :arm
	mov     r0, #0x2
	ldmfd   sp!, {r3-r7,pc}
@ 0x20ca708

.arm
branch_20ca708: @ 20ca708 :arm
	bl      OS_DisableInterrupts
	ldr     r1, [pc, #0x48] @ [0x20ca75c] (=RAM_21ceccc)
	ldr     r2, [r1, #0x4]
	cmp     r2, #0x0
	beq     branch_20ca728
	bl      OS_RestoreInterrupts
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x20ca728

.arm
branch_20ca728: @ 20ca728 :arm
	mov     r2, #0x1
	str     r2, [r1, #0x4]
	bl      OS_RestoreInterrupts
	ldr     r1, [pc, #0x20] @ [0x20ca75c] (=RAM_21ceccc)
	mov     r0, r4
	str     r6, [r1, #0x8]
	str     r5, [r1, #0xc]
	str     r7, [r1, #0x1c]
	bl      MicDoSampling
	cmp     r0, #0x0
	movne   r0, #0x0
	moveq   r0, #0x3
	ldmfd   sp!, {r3-r7,pc}
@ 0x20ca75c

.word RAM_21ceccc @ 0x20ca75c



.arm
.globl MIC_StartAutoSamplingAsync
MIC_StartAutoSamplingAsync: @ 20ca760 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [r7, #0x4]
	mov     r6, r1
	tst     r0, #0x1f
	mov     r5, r2
	movne   r0, #0x2
	ldmnefd sp!, {r3-r7,pc}
	ldr     r0, [r7, #0x8]
	tst     r0, #0x1f
	movne   r0, #0x2
	ldmnefd sp!, {r3-r7,pc}
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r0, [r7, #0xc]
	cmp     r0, #1, 22 @ #0x400
	movcc   r0, #0x2
	ldmccfd sp!, {r3-r7,pc}
	ldr     r0, [r7]
	cmp     r0, #0x5
	addls   pc, pc, r0, lsl #2
	b       branch_20ca804
	b       branch_20ca7d4
	b       branch_20ca7dc
	b       branch_20ca7e4
	b       branch_20ca7ec
	b       branch_20ca7f4
	b       branch_20ca7fc

branch_20ca7d4: @ 20ca7d4 :arm
	mov     r1, #0x0
	b       branch_20ca80c

branch_20ca7dc: @ 20ca7dc :arm
	mov     r1, #0x1
	b       branch_20ca80c

branch_20ca7e4: @ 20ca7e4 :arm
	mov     r1, #0x2
	b       branch_20ca80c
@ 0x20ca7ec

.arm
branch_20ca7ec: @ 20ca7ec :arm
	mov     r1, #0x3
	b       branch_20ca80c
@ 0x20ca7f4

.arm
branch_20ca7f4: @ 20ca7f4 :arm
	mov     r1, #0x5
	b       branch_20ca80c
@ 0x20ca7fc

.arm
branch_20ca7fc: @ 20ca7fc :arm
	mov     r1, #0x7
	b       branch_20ca80c
@ 0x20ca804

.arm
branch_20ca804: @ 20ca804 :arm
	mov     r0, #0x2
	ldmfd   sp!, {r3-r7,pc}
@ 0x20ca80c

.arm
branch_20ca80c: @ 20ca80c :arm
	ldr     r0, [r7, #0x10]
	cmp     r0, #0x0
	orrne   r0, r1, #0x10
	andne   r0, r0, #0xff
	andeq   r0, r1, #0xff
	and     r4, r0, #0xff
	bl      OS_DisableInterrupts
	ldr     r1, [pc, #0x58] @ [0x20ca888] (=RAM_21ceccc)
	ldr     r2, [r1, #0x4]
	cmp     r2, #0x0
	beq     branch_20ca844
	bl      OS_RestoreInterrupts
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x20ca844

.arm
branch_20ca844: @ 20ca844 :arm
	mov     r2, #0x1
	str     r2, [r1, #0x4]
	bl      OS_RestoreInterrupts
	ldr     r0, [pc, #0x30] @ [0x20ca888] (=RAM_21ceccc)
	mov     r3, r4
	str     r6, [r0, #0x8]
	str     r5, [r0, #0xc]
	ldr     r1, [r7, #0x14]
	str     r1, [r0, #0x14]
	ldr     r1, [r7, #0x18]
	str     r1, [r0, #0x18]
	ldmib   r7, {r0-r2}
	bl      MicStartAutoSampling
	cmp     r0, #0x0
	movne   r0, #0x0
	moveq   r0, #0x3
	ldmfd   sp!, {r3-r7,pc}
@ 0x20ca888

.word RAM_21ceccc @ 0x20ca888



.arm
MIC_StartAutoSampling: @ 20ca88c :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, [pc, #0x24] @ [0x20ca8bc] (=Function_20cabe4)
	mov     r2, #0x0
	bl      MIC_StartAutoSamplingAsync
	ldr     r1, [pc, #0x1c] @ [0x20ca8c0] (=RAM_21ceccc)
	cmp     r0, #0x0
	str     r0, [r1, #0x10]
	bne     branch_20ca8b0
	bl      Function_20cabf4
branch_20ca8b0: @ 20ca8b0 :arm
	ldr     r0, [pc, #0x8] @ [0x20ca8c0] (=RAM_21ceccc)
	ldr     r0, [r0, #0x10]
	ldmfd   sp!, {r3,pc}
@ 0x20ca8bc

.word Function_20cabe4 @ 0x20ca8bc
.word RAM_21ceccc @ 0x20ca8c0



.arm
MIC_StopAutoSamplingAsync: @ 20ca8c4 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      OS_DisableInterrupts
	ldr     r1, [pc, #0x40] @ [0x20ca91c] (=RAM_21ceccc)
	ldr     r2, [r1, #0x4]
	cmp     r2, #0x0
	beq     branch_20ca8f0
	bl      OS_RestoreInterrupts
	mov     r0, #0x1
	ldmfd   sp!, {r3-r5,pc}

branch_20ca8f0: @ 20ca8f0 :arm
	mov     r2, #0x1
	str     r2, [r1, #0x4]
	bl      OS_RestoreInterrupts
	ldr     r0, [pc, #0x18] @ [0x20ca91c] (=RAM_21ceccc)
	str     r5, [r0, #0x8]
	str     r4, [r0, #0xc]
	bl      MicStopAutoSampling
	cmp     r0, #0x0
	movne   r0, #0x0
	moveq   r0, #0x3
	ldmfd   sp!, {r3-r5,pc}
@ 0x20ca91c

.word RAM_21ceccc @ 0x20ca91c



.arm
.globl MIC_StopAutoSampling
MIC_StopAutoSampling: @ 20ca920 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x24] @ [0x20ca950] (=Function_20cabe4)
	mov     r1, #0x0
	bl      MIC_StopAutoSamplingAsync
	ldr     r1, [pc, #0x1c] @ [0x20ca954] (=RAM_21ceccc)
	cmp     r0, #0x0
	str     r0, [r1, #0x10]
	bne     branch_20ca944
	bl      Function_20cabf4
branch_20ca944: @ 20ca944 :arm
	ldr     r0, [pc, #0x8] @ [0x20ca954] (=RAM_21ceccc)
	ldr     r0, [r0, #0x10]
	ldmfd   sp!, {r3,pc}
@ 0x20ca950

.word Function_20cabe4 @ 0x20ca950
.word RAM_21ceccc @ 0x20ca954



.arm
.globl Function_20ca958
Function_20ca958: @ 20ca958 :arm
	ldr     r0, [pc, #0x4] @ [0x20ca964] (=RAM_27fff90)
	ldr     r0, [r0]
	bx      lr
@ 0x20ca964

.word RAM_27fff90 @ 0x20ca964



.arm
Function_20ca968: @ 20ca968 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r1
	cmp     r2, #0x0
	beq     branch_20ca9b0
	ldr     r0, [pc, #0x108] @ [0x20caa88] (=RAM_21ceccc)
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	movne   r1, #0x0
	strne   r1, [r0, #0x4]
	ldr     r0, [pc, #0xf4] @ [0x20caa88] (=RAM_21ceccc)
	ldr     r2, [r0, #0x8]
	cmp     r2, #0x0
	beq     branch_20ca9b0
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	ldr     r1, [r0, #0xc]
	mov     r0, #0x6
	blx     r2
branch_20ca9b0: @ 20ca9b0 :arm
	and     r0, r4, #127, 24 @ #0x7f00
	and     r1, r4, #0xff
	mov     r0, r0, lsl #8
	cmp     r1, #0x4
	mov     r2, r0, lsr #16
	addls   pc, pc, r1, lsl #2
	b       branch_20caa08
	b       branch_20ca9e0
	b       branch_20ca9e8
	b       branch_20ca9f0
	b       branch_20ca9f8
	b       branch_20caa00

branch_20ca9e0: @ 20ca9e0 :arm
	mov     r0, #0x0
	b       branch_20caa0c

branch_20ca9e8: @ 20ca9e8 :arm
	mov     r0, #0x4
	b       branch_20caa0c
@ 0x20ca9f0

.arm
branch_20ca9f0: @ 20ca9f0 :arm
	mov     r0, #0x2
	b       branch_20caa0c
@ 0x20ca9f8

.arm
branch_20ca9f8: @ 20ca9f8 :arm
	mov     r0, #0x5
	b       branch_20caa0c
@ 0x20caa00

.arm
branch_20caa00: @ 20caa00 :arm
	mov     r0, #0x1
	b       branch_20caa0c
@ 0x20caa08

.arm
branch_20caa08: @ 20caa08 :arm
	mov     r0, #0x6
.arm
branch_20caa0c: @ 20caa0c :arm
	cmp     r2, #0x51
	bne     branch_20caa30
	ldr     r1, [pc, #0x6c] @ [0x20caa88] (=RAM_21ceccc)
	ldr     r2, [r1, #0x14]
	cmp     r2, #0x0
	ldmeqfd sp!, {r4,pc}
	ldr     r1, [r1, #0x18]
	blx     r2
	ldmfd   sp!, {r4,pc}
@ 0x20caa30

.arm
branch_20caa30: @ 20caa30 :arm
	cmp     r2, #0x40
	bne     branch_20caa50
	ldr     r1, [pc, #0x48] @ [0x20caa88] (=RAM_21ceccc)
	ldr     r2, [r1, #0x1c]
	cmp     r2, #0x0
	ldrne   r1, [pc, #0x40] @ [0x20caa8c] (=RAM_27fff94)
	ldrneh  r1, [r1]
	strneh  r1, [r2]
.arm
branch_20caa50: @ 20caa50 :arm
	ldr     r1, [pc, #0x30] @ [0x20caa88] (=RAM_21ceccc)
	ldr     r2, [r1, #0x4]
	cmp     r2, #0x0
	movne   r2, #0x0
	strne   r2, [r1, #0x4]
	ldr     r1, [pc, #0x1c] @ [0x20caa88] (=RAM_21ceccc)
	ldr     r3, [r1, #0x8]
	cmp     r3, #0x0
	ldmeqfd sp!, {r4,pc}
	mov     r2, #0x0
	str     r2, [r1, #0x8]
	ldr     r1, [r1, #0xc]
	blx     r3
	ldmfd   sp!, {r4,pc}
@ 0x20caa88

.word RAM_21ceccc @ 0x20caa88
.word RAM_27fff94 @ 0x20caa8c



.arm
MicDoSampling: @ 20caa90 :arm
	stmfd   sp!, {r3,lr}
	orr     r1, r0, #1, 18 @ #0x4000
	orr     r1, r1, #3, 8 @ #0x3000000
	mov     r0, #0x9
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	movge   r0, #0x1
	movlt   r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x20caab8


.arm
MicStartAutoSampling: @ 20caab8 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r5, r1
	orr     r1, r3, #65, 24 @ #0x4100
	mov     r6, r0
	mov     r4, r2
	orr     r1, r1, #2, 8 @ #0x2000000
	mov     r0, #0x9
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	movlt   r0, #0x0
	ldmltfd sp!, {r4-r6,pc}
	mov     r0, r6, lsr #16
	orr     r1, r0, #1, 16 @ #0x10000
	mov     r0, #0x9
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	movlt   r0, #0x0
	ldmltfd sp!, {r4-r6,pc}
	mov     r0, r6, lsl #16
	mov     r0, r0, lsr #16
	orr     r1, r0, #2, 16 @ #0x20000
	mov     r0, #0x9
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	movlt   r0, #0x0
	ldmltfd sp!, {r4-r6,pc}
	mov     r0, r5, lsr #16
	orr     r1, r0, #3, 16 @ #0x30000
	mov     r0, #0x9
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	movlt   r0, #0x0
	ldmltfd sp!, {r4-r6,pc}
	mov     r0, r5, lsl #16
	mov     r0, r0, lsr #16
	orr     r1, r0, #1, 14 @ #0x40000
	mov     r0, #0x9
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	movlt   r0, #0x0
	ldmltfd sp!, {r4-r6,pc}
	mov     r0, r4, lsr #16
	orr     r1, r0, #5, 16 @ #0x50000
	mov     r0, #0x9
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	movlt   r0, #0x0
	ldmltfd sp!, {r4-r6,pc}
	ldr     r1, [pc, #0x20] @ [0x20cabb8] (=0x1060000)
	mov     r0, r4, lsl #16
	orr     r1, r1, r0, lsr #16
	mov     r0, #0x9
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	movge   r0, #0x1
	movlt   r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x20cabb8

.word 0x1060000 @ 0x20cabb8



.arm
MicStopAutoSampling: @ 20cabbc :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, [pc, #0x18] @ [0x20cabe0] (=0x3004200)
	mov     r0, #0x9
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	movge   r0, #0x1
	movlt   r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x20cabe0

.word 0x3004200 @ 0x20cabe0



.arm
Function_20cabe4: @ 20cabe4 :arm
	ldr     r1, [pc, #0x4] @ [0x20cabf0] (=RAM_21ceccc)
	str     r0, [r1, #0x10]
	bx      lr
@ 0x20cabf0

.word RAM_21ceccc @ 0x20cabf0



.arm
Function_20cabf4: @ 20cabf4 :arm
	ldr     r12, [pc, #0xc] @ [0x20cac08] (=RAM_21cecd0)
branch_20cabf8: @ 20cabf8 :arm
	ldr     r0, [r12]
	cmp     r0, #0x1
	beq     branch_20cabf8
	bx      lr
@ 0x20cac08

.word RAM_21cecd0 @ 0x20cac08



.arm
PMi_Lock: @ 20cac0c :arm
	stmfd   sp!, {r3,lr}
	bl      OS_DisableInterrupts
	ldr     r1, [pc, #0x28] @ [0x20cac44] (=RAM_21cecec)
	ldr     r2, [r1, #0x1c]
	cmp     r2, #0x0
	beq     branch_20cac30
	bl      OS_RestoreInterrupts
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}

branch_20cac30: @ 20cac30 :arm
	mov     r2, #0x1
	str     r2, [r1, #0x1c]
	bl      OS_RestoreInterrupts
	mov     r0, #0x1
	ldmfd   sp!, {r3,pc}
@ 0x20cac44

.word RAM_21cecec @ 0x20cac44



.arm
PMi_WaitBusy: @ 20cac48 :arm
	stmfd   sp!, {r4,lr}
	ldr     r0, [pc, #0x2c] @ [0x20cac80] (=RAM_21cecec)
	ldr     r4, [pc, #0x2c] @ [0x20cac84] (=RAM_21ced08)
	ldr     r0, [r0, #0x1c]
	cmp     r0, #0x0
	ldmeqfd sp!, {r4,pc}
branch_20cac60: @ 20cac60 :arm
	bl      OS_GetCpsrIrq
	cmp     r0, #0x80
	bne     branch_20cac70
	bl      PXIi_HandlerRecvFifoNotEmpty
branch_20cac70: @ 20cac70 :arm
	ldr     r0, [r4]
	cmp     r0, #0x0
	bne     branch_20cac60
	ldmfd   sp!, {r4,pc}
@ 0x20cac80

.word RAM_21cecec @ 0x20cac80
.word RAM_21ced08 @ 0x20cac84



.arm
Function_20cac88: @ 20cac88 :arm
	str     r0, [r1]
	bx      lr
@ 0x20cac90


.arm
Function_20cac90: @ 20cac90 :arm
	stmfd   sp!, {r3,lr}
	ldr     r2, [pc, #0x30] @ [0x20caccc] (=RAM_21cecec)
	ldr     r1, [r2, #0x1c]
	ldr     r12, [r2, #0x20]
	cmp     r1, #0x0
	ldr     r1, [r2, #0x24]
	movne   r3, #0x0
	strne   r3, [r2, #0x1c]
	cmp     r12, #0x0
	ldmeqfd sp!, {r3,pc}
	ldr     r2, [pc, #0xc] @ [0x20caccc] (=RAM_21cecec)
	mov     r3, #0x0
	str     r3, [r2, #0x20]
	blx     r12
	ldmfd   sp!, {r3,pc}
@ 0x20caccc

.word RAM_21cecec @ 0x20caccc



.arm
.globl PM_Init
PM_Init: @ 20cacd0 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r0, [pc, #0x84] @ [0x20cad60] (=RAM_21cecec)
	ldrh    r1, [r0]
	cmp     r1, #0x0
	ldmnefd sp!, {r3-r5,pc}
	mov     r1, #0x1
	strh    r1, [r0]
	mov     r1, #0x0
	str     r1, [r0, #0x1c]
	str     r1, [r0, #0x20]
	bl      Function_20c6350
	mov     r5, #0x8
	mov     r4, #0x1
.arm
branch_20cad04: @ 20cad04 :arm
	mov     r0, r5
	mov     r1, r4
	bl      PXI_IsCallbackReady
	cmp     r0, #0x0
	beq     branch_20cad04
	ldr     r1, [pc, #0x44] @ [0x20cad64] (=Function_20cad74)
	mov     r0, #0x8
	bl      PXI_SetFifoRecvCallback
	mov     r3, #0x0
	ldr     r0, [pc, #0x38] @ [0x20cad68] (=RAM_21ced30)
	mov     r2, r3
.arm
branch_20cad30: @ 20cad30 :arm
	mov     r1, r3, lsl #3
	add     r3, r3, #0x1
	strh    r2, [r0, r1]
	cmp     r3, #0x5
	blt     branch_20cad30
	ldr     r0, [pc, #0x20] @ [0x20cad6c] (=RAM_21ced18)
	bl      OS_InitMutex
	ldr     r1, [pc, #0x1c] @ [0x20cad70] (=RAM_27ffc3c)
	ldr     r0, [pc, #0x8] @ [0x20cad60] (=RAM_21cecec)
	ldr     r1, [r1]
	str     r1, [r0, #0x10]
	ldmfd   sp!, {r3-r5,pc}
@ 0x20cad60

.word RAM_21cecec @ 0x20cad60
.word Function_20cad74 @ 0x20cad64
.word RAM_21ced30 @ 0x20cad68
.word RAM_21ced18 @ 0x20cad6c
.word RAM_27ffc3c @ 0x20cad70



.arm
Function_20cad74: @ 20cad74 :arm
	stmfd   sp!, {r3,lr}
	cmp     r2, #0x0
	beq     branch_20cad8c
	mov     r0, #0x2
	bl      Function_20cac90
	ldmfd   sp!, {r3,pc}
@ 0x20cad8c

.arm
branch_20cad8c: @ 20cad8c :arm
	and     r0, r1, #127, 24 @ #0x7f00
	mov     r0, r0, lsl #8
	mov     r2, r0, lsr #16
	and     r0, r1, #0xff
	cmp     r2, #0x70
	bcc     branch_20caddc
	cmp     r2, #0x74
	bhi     branch_20caddc
	ldr     r1, [pc, #0x7c] @ [0x20cae30] (=RAM_21ced34)
	sub     r2, r2, #0x70
	ldr     r1, [r1, r2, lsl #0x3]
	and     r0, r0, #0xff
	cmp     r1, #0x0
	strneh  r0, [r1]
	mov     r1, r2, lsl #3
	ldr     r0, [pc, #0x64] @ [0x20cae34] (=RAM_21ced30)
	mov     r2, #0x1
	strh    r2, [r0, r1]
	mov     r0, #0x0
	b       branch_20cae28
@ 0x20caddc

.arm
branch_20caddc: @ 20caddc :arm
	cmp     r2, #0x60
	bne     branch_20cadf4
	ldr     r1, [pc, #0x4c] @ [0x20cae38] (=RAM_21cecec)
	mov     r2, #0x1
	str     r2, [r1, #0x4]
	b       branch_20cae28
@ 0x20cadf4

.arm
branch_20cadf4: @ 20cadf4 :arm
	cmp     r2, #0x62
	bne     branch_20cae0c
	ldr     r1, [pc, #0x34] @ [0x20cae38] (=RAM_21cecec)
	mov     r2, #0x1
	str     r2, [r1, #0x8]
	b       branch_20cae28
@ 0x20cae0c

.arm
branch_20cae0c: @ 20cae0c :arm
	cmp     r2, #0x67
	bne     branch_20cae28
	ldr     r1, [pc, #0x1c] @ [0x20cae38] (=RAM_21cecec)
	ldr     r1, [r1, #0x28]
	cmp     r1, #0x0
	strne   r0, [r1]
	mov     r0, #0x0
branch_20cae28: @ 20cae28 :arm
	bl      Function_20cac90
	ldmfd   sp!, {r3,pc}
@ 0x20cae30

.word RAM_21ced34 @ 0x20cae30
.word RAM_21ced30 @ 0x20cae34
.word RAM_21cecec @ 0x20cae38



.arm
PMi_SendSleepStart: @ 20cae3c :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      PMi_Lock
	cmp     r0, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r1, [pc, #0x64] @ [0x20caec4] (=RAM_21cecec)
	mov     r2, #0x0
	ldr     r0, [pc, #0x60] @ [0x20caec8] (=0x3006000)
	str     r2, [r1, #0x4]
	bl      PMi_SendPxiData
	ldr     r0, [pc, #0x50] @ [0x20caec4] (=RAM_21cecec)
.arm
branch_20cae70: @ 20cae70 :arm
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	beq     branch_20cae70
	ldr     r12, [pc, #0x40] @ [0x20caec4] (=RAM_21cecec)
	mov     r0, #0x0
	str     r0, [r12, #0x4]
	mov     r2, r0
	mov     r1, #0x2
	mov     r3, #0x1
	str     r0, [r12, #0x8]
	bl      PMi_SetLCDPower
	and     r0, r5, #0xff
	orr     r0, r0, #97, 24 @ #0x6100
	orr     r0, r0, #2, 8 @ #0x2000000
	bl      PMi_SendPxiData
	ldr     r1, [pc, #0x18] @ [0x20caecc] (=0x1010000)
	mov     r0, r4, lsl #16
	orr     r0, r1, r0, lsr #16
	bl      PMi_SendPxiData
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x20caec4

.word RAM_21cecec @ 0x20caec4
.word 0x3006000 @ 0x20caec8
.word 0x1010000 @ 0x20caecc



.arm
PM_SendUtilityCommandAsync: @ 20caed0 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      PMi_Lock
	cmp     r0, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r4-r6,pc}
	mov     r0, r6, lsr #16
	and     r0, r0, #0xff
	ldr     r1, [pc, #0x28] @ [0x20caf28] (=RAM_21cecec)
	orr     r0, r0, #99, 24 @ #0x6300
	str     r5, [r1, #0x20]
	orr     r0, r0, #2, 8 @ #0x2000000
	str     r4, [r1, #0x24]
	bl      PMi_SendPxiData
	ldr     r1, [pc, #0x14] @ [0x20caf2c] (=0x1010000)
	mov     r0, r6, lsl #16
	orr     r0, r1, r0, lsr #16
	bl      PMi_SendPxiData
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x20caf28

.word RAM_21cecec @ 0x20caf28
.word 0x1010000 @ 0x20caf2c



.arm
PMi_ReadRegisterAsync: @ 20caf30 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r7, r2
	mov     r6, r3
	bl      PMi_Lock
	cmp     r0, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r1, [pc, #0x34] @ [0x20caf90] (=RAM_21cecec)
	and     r0, r5, #0xff
	str     r7, [r1, #0x20]
	orr     r0, r0, #101, 24 @ #0x6500
	ldr     r2, [pc, #0x28] @ [0x20caf94] (=RAM_21ced30)
	str     r6, [r1, #0x24]
	mov     r3, r5, lsl #3
	mov     r12, #0x0
	ldr     r1, [pc, #0x1c] @ [0x20caf98] (=RAM_21ced34)
	strh    r12, [r2, r3]
	orr     r0, r0, #3, 8 @ #0x3000000
	str     r4, [r1, r5, lsl #0x3]
	bl      PMi_SendPxiData
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x20caf90

.word RAM_21cecec @ 0x20caf90
.word RAM_21ced30 @ 0x20caf94
.word RAM_21ced34 @ 0x20caf98



.arm
PMi_ReadRegister: @ 20caf9c :arm
	stmfd   sp!, {r3,lr}
	ldr     r2, [pc, #0x18] @ [0x20cafc0] (=Function_20cac88)
	add     r3, sp, #0x0
	bl      PMi_ReadRegisterAsync
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}
	bl      PMi_WaitBusy
	ldr     r0, [sp]
	ldmfd   sp!, {r3,pc}
@ 0x20cafc0

.word Function_20cac88 @ 0x20cafc0



.arm
PMi_WriteRegisterAsync: @ 20cafc4 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bl      PMi_Lock
	cmp     r0, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r7,pc}
	and     r0, r7, #0xff
	ldr     r1, [pc, #0x28] @ [0x20cb01c] (=RAM_21cecec)
	orr     r0, r0, #25, 22 @ #0x6400
	str     r5, [r1, #0x20]
	orr     r0, r0, #2, 8 @ #0x2000000
	str     r4, [r1, #0x24]
	bl      PMi_SendPxiData
	ldr     r1, [pc, #0x14] @ [0x20cb020] (=0x1010000)
	mov     r0, r6, lsl #16
	orr     r0, r1, r0, lsr #16
	bl      PMi_SendPxiData
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x20cb01c

.word RAM_21cecec @ 0x20cb01c
.word 0x1010000 @ 0x20cb020



.arm
PMi_WriteRegister: @ 20cb024 :arm
	stmfd   sp!, {r3,lr}
	ldr     r2, [pc, #0x18] @ [0x20cb048] (=Function_20cac88)
	add     r3, sp, #0x0
	bl      PMi_WriteRegisterAsync
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}
	bl      PMi_WaitBusy
	ldr     r0, [sp]
	ldmfd   sp!, {r3,pc}
@ 0x20cb048

.word Function_20cac88 @ 0x20cb048



.arm
PMi_SetLEDAsync: @ 20cb04c :arm
	stmfd   sp!, {r3,lr}
	cmp     r0, #0x1
	beq     branch_20cb06c
	cmp     r0, #0x2
	beq     branch_20cb07c
	cmp     r0, #0x3
	beq     branch_20cb074
	b       branch_20cb084

branch_20cb06c: @ 20cb06c :arm
	mov     r0, #0x1
	b       branch_20cb088

branch_20cb074: @ 20cb074 :arm
	mov     r0, #0x2
	b       branch_20cb088

branch_20cb07c: @ 20cb07c :arm
	mov     r0, #0x3
	b       branch_20cb088

branch_20cb084: @ 20cb084 :arm
	mov     r0, #0x0
branch_20cb088: @ 20cb088 :arm
	cmp     r0, #0x0
	ldreq   r0, [pc, #0x8] @ [0x20cb09c] (=0xffff)
	ldmeqfd sp!, {r3,pc}
	bl      PM_SendUtilityCommandAsync
	ldmfd   sp!, {r3,pc}
@ 0x20cb09c

.word 0xffff @ 0x20cb09c



.arm
PMi_SetLED: @ 20cb0a0 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, [pc, #0x18] @ [0x20cb0c4] (=Function_20cac88)
	add     r2, sp, #0x0
	bl      PMi_SetLEDAsync
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}
	bl      PMi_WaitBusy
	ldr     r0, [sp]
	ldmfd   sp!, {r3,pc}
@ 0x20cb0c4

.word Function_20cac88 @ 0x20cb0c4



.arm
PM_SetBackLightAsync: @ 20cb0c8 :arm
	stmfd   sp!, {r3,lr}
	cmp     r0, #0x0
	mov     r12, #0x0
	bne     branch_20cb0ec
	cmp     r1, #0x1
	moveq   r12, #0x6
	cmp     r1, #0x0
	moveq   r12, #0x7
	b       branch_20cb120
@ 0x20cb0ec

.arm
branch_20cb0ec: @ 20cb0ec :arm
	cmp     r0, #0x1
	bne     branch_20cb108
	cmp     r1, #0x1
	moveq   r12, #0x4
	cmp     r1, #0x0
	moveq   r12, #0x5
	b       branch_20cb120
@ 0x20cb108

.arm
branch_20cb108: @ 20cb108 :arm
	cmp     r0, #0x2
	bne     branch_20cb120
	cmp     r1, #0x1
	moveq   r12, #0x8
	cmp     r1, #0x0
	moveq   r12, #0x9
.arm
branch_20cb120: @ 20cb120 :arm
	cmp     r12, #0x0
	ldreq   r0, [pc, #0x14] @ [0x20cb140] (=0xffff)
	ldmeqfd sp!, {r3,pc}
	mov     r1, r2
	mov     r0, r12
	mov     r2, r3
	bl      PM_SendUtilityCommandAsync
	ldmfd   sp!, {r3,pc}
@ 0x20cb140

.word 0xffff @ 0x20cb140



.arm
PM_SetBackLight: @ 20cb144 :arm
	stmfd   sp!, {r3,lr}
	ldr     r2, [pc, #0x18] @ [0x20cb168] (=Function_20cac88)
	add     r3, sp, #0x0
	bl      PM_SetBackLightAsync
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}
	bl      PMi_WaitBusy
	ldr     r0, [sp]
	ldmfd   sp!, {r3,pc}
@ 0x20cb168

.word Function_20cac88 @ 0x20cb168



.arm
PM_ForceToPowerOffAsync: @ 20cb16c :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #0x8
	mov     r7, r0
	ldr     r0, [pc, #0x94] @ [0x20cb214] (=0x996a00)
	mov     r6, r1
	bl      OS_SpinWait
	bl      PM_GetLCDPower
	cmp     r0, #0x1
	beq     branch_20cb1fc
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	bl      PM_GetBackLight
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_20cb1b4
	mov     r0, #0x0
	mov     r1, r0
	bl      PM_SetBackLight
.arm
branch_20cb1b4: @ 20cb1b4 :arm
	ldr     r0, [sp]
	cmp     r0, #0x0
	beq     branch_20cb1cc
	mov     r0, #0x1
	mov     r1, #0x0
	bl      PM_SetBackLight
.arm
branch_20cb1cc: @ 20cb1cc :arm
	mov     r0, #0x1
	bl      PM_SetLCDPower
	cmp     r0, #0x0
	bne     branch_20cb1fc
	ldr     r5, [pc, #0x30] @ [0x20cb214] (=0x996a00)
	mov     r4, #0x1
.arm
branch_20cb1e4: @ 20cb1e4 :arm
	mov     r0, r5
	bl      OS_SpinWait
	mov     r0, r4
	bl      PM_SetLCDPower
	cmp     r0, #0x0
	beq     branch_20cb1e4
.arm
branch_20cb1fc: @ 20cb1fc :arm
	mov     r1, r7
	mov     r2, r6
	mov     r0, #0xe
	bl      PM_SendUtilityCommandAsync
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r7,pc}
@ 0x20cb214

.word 0x996a00 @ 0x20cb214



.arm
PM_ForceToPowerOff: @ 20cb218 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x18] @ [0x20cb23c] (=Function_20cac88)
	add     r1, sp, #0x0
	bl      PM_ForceToPowerOffAsync
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}
	bl      PMi_WaitBusy
	ldr     r0, [sp]
	ldmfd   sp!, {r3,pc}
@ 0x20cb23c

.word Function_20cac88 @ 0x20cb23c



.arm
.globl PM_SetAmp
PM_SetAmp: @ 20cb240 :arm
	ldr     r1, [pc, #0x8] @ [0x20cb250] (=RAM_21cecec)
	ldr     r12, [pc, #0x8] @ [0x20cb254] (=PMi_SetAmp)
	str     r0, [r1, #0x14]
	bx      r12
@ 0x20cb250

.word RAM_21cecec @ 0x20cb250
.word PMi_SetAmp @ =0x20cb258, 0x20cb254



.arm
PMi_SetAmp: @ 20cb258 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      PM_GetLCDPower
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	mov     r0, r4, lsl #16
	mov     r1, r0, lsr #16
	mov     r0, #0x2
	bl      PMi_WriteRegister
	ldmfd   sp!, {r4,pc}
@ 0x20cb284


.globl PM_SetAmpGain
PM_SetAmpGain: @ 20cb284 :arm
	ldr     r12, =PMi_WriteRegister
	mov     r0, r0, lsl #16
	mov     r1, r0, lsr #16
	mov     r0, #0x3
	bx      r12
@ 0x20cb298

.pool




.arm
PM_GetBackLight: @ 20cb29c :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	add     r1, sp, #0x0
	mov     r0, #0x0
	bl      PMi_ReadRegister
	cmp     r0, #0x0
	ldmnefd sp!, {r3-r5,pc}
	cmp     r5, #0x0
	beq     branch_20cb2d8
	ldrh    r1, [sp]
	tst     r1, #0x8
	movne   r1, #0x1
	moveq   r1, #0x0
	str     r1, [r5]
branch_20cb2d8: @ 20cb2d8 :arm
	cmp     r4, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	ldrh    r1, [sp]
	tst     r1, #0x4
	movne   r1, #0x1
	moveq   r1, #0x0
	str     r1, [r4]
	ldmfd   sp!, {r3-r5,pc}
@ 0x20cb2f8


PMi_SendPxiData: @ 20cb2f8 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, #0x8
	mov     r4, #0x0
branch_20cb308: @ 20cb308 :arm
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	bne     branch_20cb308
	ldmfd   sp!, {r4-r6,pc}
@ 0x20cb324


PM_GoSleepMode: @ 20cb324 :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x18
	ldr     r3, =RAM_21cecec
	mov     r10, r0
	ldr     r0, [r3, #0xc]
	mov     r9, r1
	mov     r11, r2
	mov     r4, #0x0
	bl      PMi_ExecuteList
	ldr     r1, =REG_IME
	mov     r0, r4
	ldrh    r8, [r1]
	strh    r0, [r1]
	bl      OS_DisableInterrupts
	str     r0, [sp, #0x8]
	ldr     r0, =0x3fffff
	bl      OS_DisableIrqMask
	str     r0, [sp, #0x4]
	bl      Function_20c3808
	cmp     r0, #0x0
	movne   r0, #0x8
	moveq   r0, r4
	orr     r0, r0, #1, 14 @ #0x40000
	bl      OS_SetIrqMask
	ldr     r0, [sp, #0x8]
	bl      OS_RestoreInterrupts
	ldr     r2, =REG_IME
	mov     r0, #0x1
	ldrh    r1, [r2]
	tst     r10, #0x8
	strh    r0, [r2]
	beq     branch_20cb3b4
	ldr     r0, =RAM_27ffc40
	ldrh    r0, [r0]
	cmp     r0, #0x2
	biceq   r10, r10, #0x8
branch_20cb3b4: @ 20cb3b4 :arm
	tst     r10, #0x10
	beq     branch_20cb3c8
	bl      CTRDG_IsExisting
	cmp     r0, #0x0
	biceq   r10, r10, #0x10
branch_20cb3c8: @ 20cb3c8 :arm
	mov     r1, #REG_DISPCNT
	add     r0, r1, #REG_DISPCNT_SUB-REG_DISPCNT
	ldr     r5, [r1]
	ldr     r6, [r0]
	bl      PM_GetLCDPower
	str     r0, [sp]
	add     r0, sp, #0x14
	add     r1, sp, #0x10
	bl      PM_GetBackLight
	mov     r0, #0x2
	mov     r1, #0x0
	bl      PM_SetBackLight
	ldr     r2, =RAM_27ffc3c
	ldr     r0, [r2]
	str     r0, [sp, #0xc]
branch_20cb404: @ 20cb404 :arm
	ldr     r1, [r2]
	ldr     r0, [sp, #0xc]
	cmp     r0, r1
	beq     branch_20cb404
	ldr     r0, [r2]
	mov     r2, #REG_DISPCNT
	str     r0, [sp, #0xc]
	ldr     r0, [r2]
	add     r1, r2, #REG_DISPCNT_SUB-REG_DISPCNT
	bic     r0, r0, #3, 16 @ #0x30000
	str     r0, [r2]
	ldr     r0, [r1]
	bic     r0, r0, #1, 16 @ #0x10000
	str     r0, [r1]
	ldr     r2, =RAM_27ffc3c
branch_20cb440: @ 20cb440 :arm
	ldr     r1, [r2]
	ldr     r0, [sp, #0xc]
	cmp     r0, r1
	beq     branch_20cb440
	ldr     r0, [r2]
	str     r0, [sp, #0xc]
	ldr     r2, =RAM_27ffc3c
branch_20cb45c: @ 20cb45c :arm
	ldr     r1, [r2]
	ldr     r0, [sp, #0xc]
	cmp     r0, r1
	beq     branch_20cb45c
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x10]
	orr     r0, r10, r0, lsl #5
	orr     r0, r0, r1, lsl #6
	mov     r0, r0, lsl #16
	mov     r7, r0, lsr #16
	orr     r0, r9, r11
	mov     r0, r0, lsl #16
	mov     r9, r0, lsr #16
branch_20cb490: @ 20cb490 :arm
	mov     r0, r7
	mov     r1, r9
	bl      PMi_SendSleepStart
	cmp     r0, #0x0
	bne     branch_20cb490
	bl      OS_Halt
	tst     r10, #0x8
	beq     branch_20cb4c0
	ldr     r0, =REG_IF
	ldr     r0, [r0]
	tst     r0, #0x100000
	movne   r4, #0x1
branch_20cb4c0: @ 20cb4c0 :arm
	cmp     r4, #0x0
	bne     branch_20cb500
	ldr     r0, [sp]
	cmp     r0, #0x1
	mov     r0, #0x1
	bne     branch_20cb4ec
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      PMi_SetLCDPower
	b       branch_20cb4f0

branch_20cb4ec: @ 20cb4ec :arm
	bl      PMi_SetLED
branch_20cb4f0: @ 20cb4f0 :arm
	mov     r0, #REG_DISPCNT
	str     r5, [r0]
	add     r0, r0, #REG_DISPCNT_SUB-REG_DISPCNT
	str     r6, [r0]
branch_20cb500: @ 20cb500 :arm
	ldr     r0, =0x708100
	bl      OS_SpinWait
	bl      OS_DisableInterrupts
	ldr     r0, [sp, #0x4]
	bl      OS_SetIrqMask
	ldr     r0, [sp, #0x8]
	bl      OS_RestoreInterrupts
	ldr     r1, =REG_IME
	cmp     r4, #0x0
	ldrh    r0, [r1]
	strh    r8, [r1]
	beq     branch_20cb534
	bl      PM_ForceToPowerOff
branch_20cb534: @ 20cb534 :arm
	ldr     r0, =RAM_21cecec
	ldr     r0, [r0, #0x18]
	bl      PMi_ExecuteList
	add     sp, sp, #0x18
	ldmfd   sp!, {r3-r11,pc}
@ 0x20cb548

.pool



.arm
PMi_SetLCDPower: @ 20cb564 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r1
	mov     r4, r3
	cmp     r0, #0x0
	beq     branch_20cb5f4
	cmp     r0, #0x1
	bne     branch_20cb648
	cmp     r2, #0x0
	bne     branch_20cb5a8
	ldr     r1, [pc, #0xc0] @ [0x20cb650] (=RAM_27ffc3c)
	ldr     r0, [pc, #0xc0] @ [0x20cb654] (=RAM_21cecec)
	ldr     r1, [r1]
	ldr     r0, [r0, #0x10]
	sub     r0, r1, r0
	cmp     r0, #0x7
	movls   r0, #0x0
	ldmlsfd sp!, {r3-r5,pc}
branch_20cb5a8: @ 20cb5a8 :arm
	cmp     r5, #0x0
	beq     branch_20cb5d4
	cmp     r4, #0x0
	beq     branch_20cb5c4
	mov     r0, r5
	bl      PMi_SetLED
	b       branch_20cb5d4

branch_20cb5c4: @ 20cb5c4 :arm
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      PMi_SetLEDAsync
branch_20cb5d4: @ 20cb5d4 :arm
	ldr     r2, [pc, #0x7c] @ [0x20cb658] (=REG_POWERCNT)
	ldr     r0, [pc, #0x74] @ [0x20cb654] (=RAM_21cecec)
	ldrh    r1, [r2]
	orr     r1, r1, #0x1
	strh    r1, [r2]
	ldr     r0, [r0, #0x14]
	bl      PMi_SetAmp
	b       branch_20cb648

branch_20cb5f4: @ 20cb5f4 :arm
	mov     r0, #0x0
	bl      PMi_SetAmp
	ldr     r3, [pc, #0x54] @ [0x20cb658] (=REG_POWERCNT)
	ldr     r1, [pc, #0x48] @ [0x20cb650] (=RAM_27ffc3c)
	ldrh    r2, [r3]
	ldr     r0, [pc, #0x44] @ [0x20cb654] (=RAM_21cecec)
	cmp     r5, #0x0
	bic     r2, r2, #POWER_LCD
	strh    r2, [r3]
	ldr     r1, [r1]
	str     r1, [r0, #0x10]
	beq     branch_20cb648
	cmp     r4, #0x0
	beq     branch_20cb638
	mov     r0, r5
	bl      PMi_SetLED
	b       branch_20cb648

branch_20cb638: @ 20cb638 :arm
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      PMi_SetLEDAsync
branch_20cb648: @ 20cb648 :arm
	mov     r0, #0x1
	ldmfd   sp!, {r3-r5,pc}
@ 0x20cb650

.word RAM_27ffc3c @ 0x20cb650
.word RAM_21cecec @ 0x20cb654
.word REG_POWERCNT @ 0x20cb658



.arm
PM_SetLCDPower: @ 20cb65c :arm
	ldr     r12, =PMi_SetLCDPower
	mov     r1, #0x0
	cmp     r0, #0x1
	movne   r0, #0x0
	mov     r2, r1
	mov     r3, #0x1
	bx      r12
@ 0x20cb678

.pool



.arm
PM_GetLCDPower: @ 20cb67c :arm
	ldr     r0, =REG_POWERCNT
	ldrh    r0, [r0]
	tst     r0, #POWER_LCD
	movne   r0, #0x1
	moveq   r0, #0x0
	bx      lr
@ 0x20cb694

.pool



.arm
Function_20cb698: @ 20cb698 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      PMi_Lock
	cmp     r0, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r4-r6,pc}
	and     r0, r6, #0xff
	ldr     r1, [pc, #0x18] @ [0x20cb6dc] (=RAM_21cecec)
	orr     r0, r0, #102, 24 @ #0x6600
	str     r5, [r1, #0x20]
	orr     r0, r0, #3, 8 @ #0x3000000
	str     r4, [r1, #0x24]
	bl      PMi_SendPxiData
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x20cb6dc

.word RAM_21cecec @ 0x20cb6dc
.arm
Function_20cb6e0: @ 20cb6e0 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, [pc, #0x18] @ [0x20cb704] (=0x20cac88)
	add     r2, sp, #0x0
	bl      Function_20cb698
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}
	bl      PMi_WaitBusy
	ldr     r0, [sp]
	ldmfd   sp!, {r3,pc}
@ 0x20cb704

.word Function_20cac88 @ 0x20cb704



.arm
Function_20cb708: @ 20cb708 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      PMi_Lock
	cmp     r0, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r4-r6,pc}
	ldr     r1, [pc, #0x18] @ [0x20cb748] (=RAM_21cecec)
	ldr     r0, [pc, #0x18] @ [0x20cb74c] (=0x3006700)
	str     r5, [r1, #0x20]
	str     r4, [r1, #0x24]
	str     r6, [r1, #0x28]
	bl      PMi_SendPxiData
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x20cb748

.word RAM_21cecec @ 0x20cb748
.word 0x3006700 @ 0x20cb74c



.arm
Function_20cb750: @ 20cb750 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, [pc, #0x18] @ [0x20cb774] (=0x20cac88)
	add     r2, sp, #0x0
	bl      Function_20cb708
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}
	bl      PMi_WaitBusy
	ldr     r0, [sp]
	ldmfd   sp!, {r3,pc}
@ 0x20cb774

.word Function_20cac88 @ 0x20cb774



.arm
Function_20cb778: @ 20cb778 :arm
	cmp     r0, #0x0
	ldrne   r2, [r0]
	strne   r2, [r1, #0x8]
	strne   r1, [r0]
	bx      lr
@ 0x20cb78c


.arm
Function_20cb78c: @ 20cb78c :arm
	cmp     r0, #0x0
	bxeq    lr
	ldr     r2, [r0]
	cmp     r2, #0x0
	bne     branch_20cb7b0
	mov     r2, #0x0
	str     r2, [r1, #0x8]
	str     r1, [r0]
	bx      lr

branch_20cb7b0: @ 20cb7b0 :arm
	ldr     r0, [r2, #0x8]
	cmp     r0, #0x0
	beq     branch_20cb7cc
branch_20cb7bc: @ 20cb7bc :arm
	mov     r2, r0
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	bne     branch_20cb7bc
branch_20cb7cc: @ 20cb7cc :arm
	str     r0, [r1, #0x8]
	str     r1, [r2, #0x8]
	bx      lr
@ 0x20cb7d8


.arm
Function_20cb7d8: @ 20cb7d8 :arm
	cmp     r0, #0x0
	ldrne   r2, [r0]
	movne   r3, r2
	cmpne   r2, #0x0
	bxeq    lr
branch_20cb7ec: @ 20cb7ec :arm
	cmp     r2, r1
	bne     branch_20cb80c
	cmp     r2, r3
	ldreq   r1, [r2, #0x8]
	streq   r1, [r0]
	ldrne   r0, [r2, #0x8]
	strne   r0, [r3, #0x8]
	bx      lr

branch_20cb80c: @ 20cb80c :arm
	mov     r3, r2
	ldr     r2, [r2, #0x8]
	cmp     r2, #0x0
	bne     branch_20cb7ec
	bx      lr
@ 0x20cb820


.arm
PMi_ExecuteList: @ 20cb820 :arm
	stmfd   sp!, {r4,lr}
	movs    r4, r0
	ldmeqfd sp!, {r4,pc}
branch_20cb82c: @ 20cb82c :arm
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4]
	blx     r1
	ldr     r4, [r4, #0x8]
	cmp     r4, #0x0
	bne     branch_20cb82c
	ldmfd   sp!, {r4,pc}
@ 0x20cb848


.arm
Function_20cb848: @ 20cb848 :arm
	ldr     r12, [pc, #0x8] @ [0x20cb858] (=Function_20cb778)
	mov     r1, r0
	ldr     r0, [pc, #0x4] @ [0x20cb85c] (=RAM_21cecf8)
	bx      r12
@ 0x20cb858

.word Function_20cb778 @ 0x20cb858
.word RAM_21cecf8 @ 0x20cb85c



.arm
Function_20cb860: @ 20cb860 :arm
	ldr     r12, [pc, #0x8] @ [0x20cb870] (=Function_20cb78c)
	mov     r1, r0
	ldr     r0, [pc, #0x4] @ [0x20cb874] (=RAM_21ced04)
	bx      r12
@ 0x20cb870

.word Function_20cb78c @ 0x20cb870
.word RAM_21ced04 @ 0x20cb874



.arm
Function_20cb878: @ 20cb878 :arm
	ldr     r12, [pc, #0x8] @ [0x20cb888] (=Function_20cb7d8)
	mov     r1, r0
	ldr     r0, [pc, #0x4] @ [0x20cb88c] (=RAM_21cecf8)
	bx      r12
@ 0x20cb888

.word Function_20cb7d8 @ 0x20cb888
.word RAM_21cecf8 @ 0x20cb88c



.arm
Function_20cb890: @ 20cb890 :arm
	ldr     r12, [pc, #0x8] @ [0x20cb8a0] (=Function_20cb7d8)
	mov     r1, r0
	ldr     r0, [pc, #0x4] @ [0x20cb8a4] (=RAM_21ced04)
	bx      r12
@ 0x20cb8a0

.word Function_20cb7d8 @ 0x20cb8a0
.word RAM_21ced04 @ 0x20cb8a4



.arm
RTC_Init: @ 20cb8a8 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r0, [pc, #0x58] @ [0x20cb90c] (=RAM_21ced58)
	ldrh    r1, [r0]
	cmp     r1, #0x0
	ldmnefd sp!, {r3-r5,pc}
	mov     r1, #0x1
	strh    r1, [r0]
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	str     r1, [r0, #0x10]
	str     r1, [r0, #0x28]
	str     r1, [r0, #0x14]
	str     r1, [r0, #0x18]
	bl      Function_20c6350
	mov     r5, #0x5
	mov     r4, #0x1
branch_20cb8e8: @ 20cb8e8 :arm
	mov     r0, r5
	mov     r1, r4
	bl      PXI_IsCallbackReady
	cmp     r0, #0x0
	beq     branch_20cb8e8
	ldr     r1, [pc, #0xc] @ [0x20cb910] (=Function_20cbb1c)
	mov     r0, #0x5
	bl      PXI_SetFifoRecvCallback
	ldmfd   sp!, {r3-r5,pc}
@ 0x20cb90c

.word RAM_21ced58 @ 0x20cb90c
.word Function_20cbb1c @ 0x20cb910



.arm
RTC_GetDateAsync: @ 20cb914 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      OS_DisableInterrupts
	ldr     r1, [pc, #0x50] @ [0x20cb980] (=RAM_21ced58)
	ldr     r2, [r1, #0xc]
	cmp     r2, #0x0
	beq     branch_20cb944
	bl      OS_RestoreInterrupts
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,pc}

branch_20cb944: @ 20cb944 :arm
	mov     r2, #0x1
	str     r2, [r1, #0xc]
	bl      OS_RestoreInterrupts
	ldr     r0, [pc, #0x28] @ [0x20cb980] (=RAM_21ced58)
	mov     r1, #0x0
	str     r1, [r0, #0x20]
	str     r1, [r0, #0x24]
	str     r6, [r0, #0x14]
	str     r5, [r0, #0x10]
	str     r4, [r0, #0x1c]
	bl      RTCi_ReadRawDateAsync
	cmp     r0, #0x0
	movne   r0, #0x0
	moveq   r0, #0x3
	ldmfd   sp!, {r4-r6,pc}
@ 0x20cb980

.word RAM_21ced58 @ 0x20cb980



.arm
.globl RTC_GetDate
RTC_GetDate: @ 20cb984 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, [pc, #0x24] @ [0x20cb9b4] (=Function_20cc0dc)
	mov     r2, #0x0
	bl      RTC_GetDateAsync
	ldr     r1, [pc, #0x1c] @ [0x20cb9b8] (=RAM_21ced58)
	cmp     r0, #0x0
	str     r0, [r1, #0x2c]
	bne     branch_20cb9a8
	bl      Function_20cc0ec
branch_20cb9a8: @ 20cb9a8 :arm
	ldr     r0, [pc, #0x8] @ [0x20cb9b8] (=RAM_21ced58)
	ldr     r0, [r0, #0x2c]
	ldmfd   sp!, {r3,pc}
@ 0x20cb9b4

.word Function_20cc0dc @ 0x20cb9b4
.word RAM_21ced58 @ 0x20cb9b8



.arm
RTC_GetTimeAsync: @ 20cb9bc :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      OS_DisableInterrupts
	ldr     r1, [pc, #0x54] @ [0x20cba2c] (=RAM_21ced58)
	ldr     r2, [r1, #0xc]
	cmp     r2, #0x0
	beq     branch_20cb9ec
	bl      OS_RestoreInterrupts
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,pc}
@ 0x20cb9ec

.arm
branch_20cb9ec: @ 20cb9ec :arm
	mov     r2, #0x1
	str     r2, [r1, #0xc]
	bl      OS_RestoreInterrupts
	ldr     r0, [pc, #0x2c] @ [0x20cba2c] (=RAM_21ced58)
	mov     r1, #0x1
	str     r1, [r0, #0x20]
	mov     r1, #0x0
	str     r1, [r0, #0x24]
	str     r6, [r0, #0x14]
	str     r5, [r0, #0x10]
	str     r4, [r0, #0x1c]
	bl      RTCi_ReadRawTimeAsync
	cmp     r0, #0x0
	movne   r0, #0x0
	moveq   r0, #0x3
	ldmfd   sp!, {r4-r6,pc}
@ 0x20cba2c

.word RAM_21ced58 @ 0x20cba2c



.arm
.globl RTC_GetTime
RTC_GetTime: @ 20cba30 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, [pc, #0x24] @ [0x20cba60] (=Function_20cc0dc)
	mov     r2, #0x0
	bl      RTC_GetTimeAsync
	ldr     r1, [pc, #0x1c] @ [0x20cba64] (=RAM_21ced58)
	cmp     r0, #0x0
	str     r0, [r1, #0x2c]
	bne     branch_20cba54
	bl      Function_20cc0ec
branch_20cba54: @ 20cba54 :arm
	ldr     r0, [pc, #0x8] @ [0x20cba64] (=RAM_21ced58)
	ldr     r0, [r0, #0x2c]
	ldmfd   sp!, {r3,pc}
@ 0x20cba60

.word Function_20cc0dc @ 0x20cba60
.word RAM_21ced58 @ 0x20cba64



.arm
RTC_GetDateTimeAsync: @ 20cba68 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bl      OS_DisableInterrupts
	ldr     r1, [pc, #0x58] @ [0x20cbae0] (=RAM_21ced58)
	ldr     r2, [r1, #0xc]
	cmp     r2, #0x0
	beq     branch_20cba9c
	bl      OS_RestoreInterrupts
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x20cba9c

.arm
branch_20cba9c: @ 20cba9c :arm
	mov     r2, #0x1
	str     r2, [r1, #0xc]
	bl      OS_RestoreInterrupts
	ldr     r0, [pc, #0x30] @ [0x20cbae0] (=RAM_21ced58)
	mov     r1, #0x2
	str     r1, [r0, #0x20]
	mov     r1, #0x0
	str     r1, [r0, #0x24]
	str     r7, [r0, #0x14]
	str     r6, [r0, #0x18]
	str     r5, [r0, #0x10]
	str     r4, [r0, #0x1c]
	bl      RTCi_ReadRawDateTimeAsync
	cmp     r0, #0x0
	movne   r0, #0x0
	moveq   r0, #0x3
	ldmfd   sp!, {r3-r7,pc}
@ 0x20cbae0

.word RAM_21ced58 @ 0x20cbae0



.arm
.globl Function_20cbae4
Function_20cbae4: @ 20cbae4 :arm
	stmfd   sp!, {r3,lr}
	ldr     r2, [pc, #0x24] @ [0x20cbb14] (=0x20cc0dc)
	mov     r3, #0x0
	bl      RTC_GetDateTimeAsync
	ldr     r1, [pc, #0x1c] @ [0x20cbb18] (=RAM_21ced58)
	cmp     r0, #0x0
	str     r0, [r1, #0x2c]
	bne     branch_20cbb08
	bl      Function_20cc0ec
branch_20cbb08: @ 20cbb08 :arm
	ldr     r0, [pc, #0x8] @ [0x20cbb18] (=RAM_21ced58)
	ldr     r0, [r0, #0x2c]
	ldmfd   sp!, {r3,pc}
@ 0x20cbb14

.word Function_20cc0dc @ 0x20cbb14
.word RAM_21ced58 @ 0x20cbb18



.arm
Function_20cbb1c: @ 20cbb1c :arm
	stmfd   sp!, {r3-r5,lr}
	cmp     r2, #0x0
	beq     branch_20cbb78
	ldr     r0, [pc, #0x52c] @ [0x20cc05c] (=RAM_21ced58)
	ldr     r1, [r0, #0x24]
	cmp     r1, #0x0
	movne   r1, #0x0
	strne   r1, [r0, #0x24]
	ldr     r0, [pc, #0x518] @ [0x20cc05c] (=RAM_21ced58)
	ldr     r1, [r0, #0xc]
	cmp     r1, #0x0
	movne   r1, #0x0
	strne   r1, [r0, #0xc]
	ldr     r0, [pc, #0x504] @ [0x20cc05c] (=RAM_21ced58)
	ldr     r2, [r0, #0x10]
	cmp     r2, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	mov     r1, #0x0
	str     r1, [r0, #0x10]
	ldr     r1, [r0, #0x1c]
	mov     r0, #0x6
	blx     r2
	ldmfd   sp!, {r3-r5,pc}

branch_20cbb78: @ 20cbb78 :arm
	and     r0, r1, #127, 24 @ #0x7f00
	mov     r0, r0, lsr #8
	and     r0, r0, #0xff
	cmp     r0, #0x30
	and     r2, r1, #0xff
	bne     branch_20cbba8
	ldr     r0, [pc, #0x4c4] @ [0x20cc05c] (=RAM_21ced58)
	ldr     r0, [r0, #0x28]
	cmp     r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	blx     r0
	ldmfd   sp!, {r3-r5,pc}

branch_20cbba8: @ 20cbba8 :arm
	cmp     r2, #0x0
	bne     branch_20cbfcc
	ldr     r0, [pc, #0x4a4] @ [0x20cc05c] (=RAM_21ced58)
	mov     r4, #0x0
	ldr     r1, [r0, #0x20]
	cmp     r1, #0xf
	addls   pc, pc, r1, lsl #2
	b       branch_20cbfb8
	b       branch_20cbc08
	b       branch_20cbc64
	b       branch_20cbcb4
	b       branch_20cc014
	b       branch_20cc014
	b       branch_20cc014
	b       branch_20cbd5c
	b       branch_20cbd8c
	b       branch_20cbdb0
	b       branch_20cbe58
	b       branch_20cbf0c
	b       branch_20cc014
	b       branch_20cc014
	b       branch_20cc014
	b       branch_20cc014
	b       branch_20cc014

branch_20cbc08: @ 20cbc08 :arm
	ldr     r1, [pc, #0x450] @ [0x20cc060] (=RAM_27ffde8)
	ldr     r5, [r0, #0x14]
	ldr     r0, [r1]
	mov     r0, r0, lsl #24
	mov     r0, r0, lsr #24
	bl      Function_20cc06c
	ldr     r1, [pc, #0x438] @ [0x20cc060] (=RAM_27ffde8)
	str     r0, [r5]
	ldr     r0, [r1]
	mov     r0, r0, lsl #19
	mov     r0, r0, lsr #27
	bl      Function_20cc06c
	ldr     r1, [pc, #0x420] @ [0x20cc060] (=RAM_27ffde8)
	str     r0, [r5, #0x4]
	ldr     r0, [r1]
	mov     r0, r0, lsl #10
	mov     r0, r0, lsr #26
	bl      Function_20cc06c
	str     r0, [r5, #0x8]
	mov     r0, r5
	bl      Function_20cc488
	str     r0, [r5, #0xc]
	b       branch_20cc014
@ 0x20cbc64

.arm
branch_20cbc64: @ 20cbc64 :arm
	ldr     r1, [pc, #0x3f8] @ [0x20cc064] (=RAM_27ffdec)
	ldr     r5, [r0, #0x14]
	ldr     r0, [r1]
	mov     r0, r0, lsl #26
	mov     r0, r0, lsr #26
	bl      Function_20cc06c
	ldr     r1, [pc, #0x3e0] @ [0x20cc064] (=RAM_27ffdec)
	str     r0, [r5]
	ldr     r0, [r1]
	mov     r0, r0, lsl #17
	mov     r0, r0, lsr #25
	bl      Function_20cc06c
	ldr     r1, [pc, #0x3c8] @ [0x20cc064] (=RAM_27ffdec)
	str     r0, [r5, #0x4]
	ldr     r0, [r1]
	mov     r0, r0, lsl #9
	mov     r0, r0, lsr #25
	bl      Function_20cc06c
	str     r0, [r5, #0x8]
	b       branch_20cc014
@ 0x20cbcb4

.arm
branch_20cbcb4: @ 20cbcb4 :arm
	ldr     r1, [pc, #0x3a4] @ [0x20cc060] (=RAM_27ffde8)
	ldr     r5, [r0, #0x14]
	ldr     r0, [r1]
	and     r0, r0, #0xff
	bl      Function_20cc06c
	ldr     r1, [pc, #0x390] @ [0x20cc060] (=RAM_27ffde8)
	str     r0, [r5]
	ldr     r0, [r1]
	mov     r0, r0, lsl #19
	mov     r0, r0, lsr #27
	bl      Function_20cc06c
	ldr     r1, [pc, #0x378] @ [0x20cc060] (=RAM_27ffde8)
	str     r0, [r5, #0x4]
	ldr     r0, [r1]
	mov     r0, r0, lsl #10
	mov     r0, r0, lsr #26
	bl      Function_20cc06c
	str     r0, [r5, #0x8]
	mov     r0, r5
	bl      Function_20cc488
	ldr     r1, [pc, #0x358] @ [0x20cc064] (=RAM_27ffdec)
	str     r0, [r5, #0xc]
	ldr     r0, [r1]
	ldr     r1, [pc, #0x344] @ [0x20cc05c] (=RAM_21ced58)
	mov     r0, r0, lsl #26
	mov     r0, r0, lsr #26
	ldr     r5, [r1, #0x18]
	bl      Function_20cc06c
	ldr     r1, [pc, #0x338] @ [0x20cc064] (=RAM_27ffdec)
	str     r0, [r5]
	ldr     r0, [r1]
	mov     r0, r0, lsl #17
	mov     r0, r0, lsr #25
	bl      Function_20cc06c
	ldr     r1, [pc, #0x320] @ [0x20cc064] (=RAM_27ffdec)
	str     r0, [r5, #0x4]
	ldr     r0, [r1]
	mov     r0, r0, lsl #9
	mov     r0, r0, lsr #25
	bl      Function_20cc06c
	str     r0, [r5, #0x8]
	b       branch_20cc014
@ 0x20cbd5c

.arm
branch_20cbd5c: @ 20cbd5c :arm
	ldr     r1, [pc, #0x304] @ [0x20cc068] (=RAM_27ffdea)
	ldr     r2, [r0, #0x14]
	ldrh    r0, [r1]
	mov     r0, r0, lsl #28
	mov     r0, r0, lsr #28
	cmp     r0, #0x4
	bne     branch_20cbd84
	mov     r0, #0x1
	str     r0, [r2]
	b       branch_20cc014
@ 0x20cbd84

.arm
branch_20cbd84: @ 20cbd84 :arm
	str     r4, [r2]
	b       branch_20cc014
@ 0x20cbd8c

.arm
branch_20cbd8c: @ 20cbd8c :arm
	ldr     r1, [pc, #0x2d4] @ [0x20cc068] (=RAM_27ffdea)
	ldr     r2, [r0, #0x14]
	ldrh    r0, [r1]
	mov     r0, r0, lsl #25
	movs    r0, r0, lsr #31
	movne   r0, #0x1
	strne   r0, [r2]
	streq   r4, [r2]
	b       branch_20cc014
@ 0x20cbdb0

.arm
branch_20cbdb0: @ 20cbdb0 :arm
	ldr     r1, [pc, #0x2ac] @ [0x20cc064] (=RAM_27ffdec)
	ldr     r5, [r0, #0x14]
	ldr     r0, [r1]
	mov     r0, r0, lsl #29
	mov     r0, r0, lsr #29
	str     r0, [r5]
	ldr     r0, [r1]
	mov     r0, r0, lsl #18
	mov     r0, r0, lsr #26
	bl      Function_20cc06c
	ldr     r1, [pc, #0x284] @ [0x20cc064] (=RAM_27ffdec)
	str     r0, [r5, #0x4]
	ldr     r0, [r1]
	mov     r0, r0, lsl #9
	mov     r0, r0, lsr #25
	bl      Function_20cc06c
	str     r0, [r5, #0x8]
	mov     r1, r4
	ldr     r0, [pc, #0x264] @ [0x20cc064] (=RAM_27ffdec)
	str     r1, [r5, #0xc]
	ldr     r0, [r0]
	mov     r0, r0, lsl #24
	movs    r0, r0, lsr #31
	ldrne   r0, [r5, #0xc]
	addne   r0, r0, #0x1
	strne   r0, [r5, #0xc]
	ldr     r0, [pc, #0x244] @ [0x20cc064] (=RAM_27ffdec)
	ldr     r0, [r0]
	mov     r0, r0, lsl #16
	movs    r0, r0, lsr #31
	ldrne   r0, [r5, #0xc]
	addne   r0, r0, #0x2
	strne   r0, [r5, #0xc]
	ldr     r0, [pc, #0x228] @ [0x20cc064] (=RAM_27ffdec)
	ldr     r0, [r0]
	mov     r0, r0, lsl #8
	movs    r0, r0, lsr #31
	beq     branch_20cc014
	ldr     r0, [r5, #0xc]
	add     r0, r0, #0x4
	str     r0, [r5, #0xc]
	b       branch_20cc014
@ 0x20cbe58

.arm
branch_20cbe58: @ 20cbe58 :arm
	ldr     r3, [r0, #0x24]
	cmp     r3, #0x0
	bne     branch_20cbf04
	ldr     r1, [r0, #0x14]
	ldr     r2, [pc, #0x1f8] @ [0x20cc068] (=RAM_27ffdea)
	ldr     r1, [r1]
	cmp     r1, #0x1
	ldrh    r1, [r2]
	bne     branch_20cbec4
	mov     r1, r1, lsl #28
	mov     r1, r1, lsr #28
	cmp     r1, #0x4
	beq     branch_20cc014
	add     r1, r3, #0x1
	str     r1, [r0, #0x24]
	ldrh    r0, [r2]
	bic     r0, r0, #0xf
	orr     r0, r0, #0x4
	strh    r0, [r2]
	bl      Function_20cc134
	cmp     r0, #0x0
	bne     branch_20cc014
	ldr     r0, [pc, #0x1a4] @ [0x20cc05c] (=RAM_21ced58)
	mov     r1, r4
	str     r1, [r0, #0x24]
	mov     r4, #0x3
	b       branch_20cc014
@ 0x20cbec4

.arm
branch_20cbec4: @ 20cbec4 :arm
	mov     r1, r1, lsl #28
	movs    r1, r1, lsr #28
	beq     branch_20cc014
	add     r1, r3, #0x1
	str     r1, [r0, #0x24]
	ldrh    r0, [r2]
	bic     r0, r0, #0xf
	strh    r0, [r2]
	bl      Function_20cc134
	cmp     r0, #0x0
	bne     branch_20cc014
	ldr     r0, [pc, #0x164] @ [0x20cc05c] (=RAM_21ced58)
	mov     r1, r4
	str     r1, [r0, #0x24]
	mov     r4, #0x3
	b       branch_20cc014
@ 0x20cbf04

.arm
branch_20cbf04: @ 20cbf04 :arm
	str     r4, [r0, #0x24]
	b       branch_20cc014
@ 0x20cbf0c

.arm
branch_20cbf0c: @ 20cbf0c :arm
	ldr     r3, [r0, #0x24]
	cmp     r3, #0x0
	bne     branch_20cbfb0
	ldr     r1, [r0, #0x14]
	ldr     r2, [pc, #0x144] @ [0x20cc068] (=RAM_27ffdea)
	ldr     r1, [r1]
	cmp     r1, #0x1
	ldrh    r1, [r2]
	bne     branch_20cbf70
	mov     r1, r1, lsl #25
	movs    r1, r1, lsr #31
	bne     branch_20cc014
	add     r1, r3, #0x1
	str     r1, [r0, #0x24]
	ldrh    r0, [r2]
	orr     r0, r0, #0x40
	strh    r0, [r2]
	bl      Function_20cc134
	cmp     r0, #0x0
	bne     branch_20cc014
	ldr     r0, [pc, #0xf8] @ [0x20cc05c] (=RAM_21ced58)
	mov     r1, r4
	str     r1, [r0, #0x24]
	mov     r4, #0x3
	b       branch_20cc014
@ 0x20cbf70

.arm
branch_20cbf70: @ 20cbf70 :arm
	mov     r1, r1, lsl #25
	movs    r1, r1, lsr #31
	beq     branch_20cc014
	add     r1, r3, #0x1
	str     r1, [r0, #0x24]
	ldrh    r0, [r2]
	bic     r0, r0, #0x40
	strh    r0, [r2]
	bl      Function_20cc134
	cmp     r0, #0x0
	bne     branch_20cc014
	ldr     r0, [pc, #0xb8] @ [0x20cc05c] (=RAM_21ced58)
	mov     r1, r4
	str     r1, [r0, #0x24]
	mov     r4, #0x3
	b       branch_20cc014
@ 0x20cbfb0

.arm
branch_20cbfb0: @ 20cbfb0 :arm
	str     r4, [r0, #0x24]
	b       branch_20cc014
@ 0x20cbfb8

.arm
branch_20cbfb8: @ 20cbfb8 :arm
	ldr     r0, [pc, #0x9c] @ [0x20cc05c] (=RAM_21ced58)
	mov     r1, #0x0
	str     r1, [r0, #0x24]
	mov     r4, #0x4
	b       branch_20cc014
@ 0x20cbfcc

.arm
branch_20cbfcc: @ 20cbfcc :arm
	ldr     r0, [pc, #0x88] @ [0x20cc05c] (=RAM_21ced58)
	mov     r1, #0x0
	str     r1, [r0, #0x24]
	cmp     r2, #0x4
	addls   pc, pc, r2, lsl #2
	b       branch_20cc010
@ 0x20cbfe4

.arm
Function_20cbfe4: @ 20cbfe4 :arm
	b       branch_20cc010
@ 0x20cbfe8

.arm
Function_20cbfe8: @ 20cbfe8 :arm
	b       branch_20cbff8
@ 0x20cbfec

.arm
Function_20cbfec: @ 20cbfec :arm
	b       branch_20cc000
@ 0x20cbff0

.arm
Function_20cbff0: @ 20cbff0 :arm
	b       branch_20cc008
@ 0x20cbff4

.arm
Function_20cbff4: @ 20cbff4 :arm
	b       branch_20cc010
@ 0x20cbff8

.arm
branch_20cbff8: @ 20cbff8 :arm
	mov     r4, #0x4
	b       branch_20cc014
@ 0x20cc000

.arm
branch_20cc000: @ 20cc000 :arm
	mov     r4, #0x5
	b       branch_20cc014
@ 0x20cc008

.arm
branch_20cc008: @ 20cc008 :arm
	mov     r4, #0x1
	b       branch_20cc014
@ 0x20cc010

.arm
branch_20cc010: @ 20cc010 :arm
	mov     r4, #0x6
.arm
branch_20cc014: @ 20cc014 :arm
	ldr     r0, [pc, #0x40] @ [0x20cc05c] (=RAM_21ced58)
	ldr     r1, [r0, #0x24]
	cmp     r1, #0x0
	ldmnefd sp!, {r3-r5,pc}
	ldr     r1, [r0, #0xc]
	cmp     r1, #0x0
	movne   r1, #0x0
	strne   r1, [r0, #0xc]
	ldr     r0, [pc, #0x20] @ [0x20cc05c] (=RAM_21ced58)
	ldr     r2, [r0, #0x10]
	cmp     r2, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	mov     r1, #0x0
	str     r1, [r0, #0x10]
	ldr     r1, [r0, #0x1c]
	mov     r0, r4
	blx     r2
	ldmfd   sp!, {r3-r5,pc}
@ 0x20cc05c

.word RAM_21ced58 @ 0x20cc05c
.word RAM_27ffde8 @ 0x20cc060
.word RAM_27ffdec @ 0x20cc064
.word RAM_27ffdea @ 0x20cc068



.arm
Function_20cc06c: @ 20cc06c :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r12, #0x0
	mov     r2, r12
	mov     r3, r12
.arm
branch_20cc07c: @ 20cc07c :arm
	mov     r1, r0, lsr r3
	and     r1, r1, #0xf
	cmp     r1, #0xa
	movcs   r0, #0x0
	ldmcsfd sp!, {r3-r5,pc}
	add     r2, r2, #0x1
	cmp     r2, #0x8
	add     r3, r3, #0x4
	blt     branch_20cc07c
	mov     r5, #0x0
	mov     r4, r5
	mov     lr, #0x1
	mov     r2, #0xa
.arm
branch_20cc0b0: @ 20cc0b0 :arm
	mov     r1, r0, lsr r4
	and     r3, r1, #0xf
	mul     r1, lr, r2
	mla     r12, lr, r3, r12
	add     r5, r5, #0x1
	mov     lr, r1
	cmp     r5, #0x8
	add     r4, r4, #0x4
	blt     branch_20cc0b0
	mov     r0, r12
	ldmfd   sp!, {r3-r5,pc}
@ 0x20cc0dc


.arm
Function_20cc0dc: @ 20cc0dc :arm
	ldr     r1, [pc, #0x4] @ [0x20cc0e8] (=RAM_21ced58)
	str     r0, [r1, #0x2c]
	bx      lr
@ 0x20cc0e8

.word RAM_21ced58 @ 0x20cc0e8


.arm
Function_20cc0ec: @ 20cc0ec :arm
	ldr     r12, [pc, #0xc] @ [0x20cc100] (=RAM_21ced64)
branch_20cc0f0: @ 20cc0f0 :arm
	ldr     r0, [r12]
	cmp     r0, #0x1
	beq     branch_20cc0f0
	bx      lr
@ 0x20cc100

.word RAM_21ced64 @ 0x20cc100



.arm
RTCi_ReadRawDateTimeAsync: @ 20cc104 :arm
	ldr     r12, [pc, #0x4] @ [0x20cc110] (=Function_20cc144)
	mov     r0, #0x10
	bx      r12
@ 0x20cc110

.word Function_20cc144 @ 0x20cc110



.arm
RTCi_ReadRawDateAsync: @ 20cc114 :arm
	ldr     r12, [pc, #0x4] @ [0x20cc120] (=Function_20cc144)
	mov     r0, #0x11
	bx      r12
@ 0x20cc120

.word Function_20cc144 @ 0x20cc120



.arm
RTCi_ReadRawTimeAsync: @ 20cc124 :arm
	ldr     r12, [pc, #0x4] @ [0x20cc130] (=Function_20cc144)
	mov     r0, #0x12
	bx      r12
@ 0x20cc130

.word Function_20cc144 @ 0x20cc130



.arm
Function_20cc134: @ 20cc134 :arm
	ldr     r12, [pc, #0x4] @ [0x20cc140] (=Function_20cc144)
	mov     r0, #0x27
	bx      r12
@ 0x20cc140

.word Function_20cc144 @ 0x20cc140


.arm
Function_20cc144: @ 20cc144 :arm
	stmfd   sp!, {r3,lr}
	mov     r0, r0, lsl #8
	and     r1, r0, #0x7f00
	mov     r0, #0x5
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	movge   r0, #0x1
	movlt   r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x20cc16c


.arm
RTC_ConvertDateToDay: @ 20cc16c :arm
	ldr     r3, [r0]
	cmp     r3, #0x64
	bcs     branch_20cc1bc
	ldr     r2, [r0, #0x4]
	cmp     r2, #0x1
	bcc     branch_20cc1bc
	cmp     r2, #0xc
	bhi     branch_20cc1bc
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x1
	bcc     branch_20cc1bc
	cmp     r1, #0x1f
	bhi     branch_20cc1bc
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x7
	bge     branch_20cc1bc
	cmp     r2, #0x1
	bcc     branch_20cc1bc
	cmp     r2, #0xc
	bls     branch_20cc1c4
.arm
branch_20cc1bc: @ 20cc1bc :arm
	mvn     r0, #0x0
	bx      lr
@ 0x20cc1c4

.arm
branch_20cc1c4: @ 20cc1c4 :arm
	ldr     r0, [pc, #0x2c] @ [0x20cc1f8] (=0x210144c)
	sub     r1, r1, #0x1
	ldr     r0, [r0, r2, lsl #0x2]
	cmp     r2, #0x3
	add     r2, r1, r0
	bcc     branch_20cc1e4
	tst     r3, #0x3
	addeq   r2, r2, #0x1
branch_20cc1e4: @ 20cc1e4 :arm
	ldr     r0, [pc, #0x10] @ [0x20cc1fc] (=0x16d)
	add     r1, r3, #0x3
	mla     r0, r3, r0, r2
	add     r0, r0, r1, lsr #2
	bx      lr
@ 0x20cc1f8

.word Unknown_210144c @ 0x20cc1f8
.word 0x16d @ 0x20cc1fc



.arm
RTCi_ConvertTimeToSecond: @ 20cc200 :arm
	mov     r1, #0x3c
	ldmia   r0, {r2,r3}
	mla     r3, r2, r1, r3
	ldr     r0, [r0, #0x8]
	mla     r0, r3, r1, r0
	bx      lr
@ 0x20cc218


.arm
.globl RTC_ConvertDateTimeToSecond
RTC_ConvertDateTimeToSecond: @ 20cc218 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r1
	bl      RTC_ConvertDateToDay
	mov     r4, r0
	mvn     r0, #0x0
	cmp     r4, r0
	moveq   r1, r0
	ldmeqfd sp!, {r3-r5,pc}
	mov     r0, r5
	bl      RTCi_ConvertTimeToSecond
	mvn     r2, #0x0
	cmp     r0, r2
	moveq   r1, r2
	beq     branch_20cc270
	ldr     r1, [pc, #0x20] @ [0x20cc278] (=0x15180)
	mov     r2, #0x0
	umull   r12, r3, r4, r1
	mla     r3, r4, r2, r3
	mov     r2, r4, asr #31
	mla     r3, r2, r1, r3
	adds    r2, r0, r12
	adc     r1, r3, r0, asr #31
branch_20cc270: @ 20cc270 :arm
	mov     r0, r2
	ldmfd   sp!, {r3-r5,pc}
@ 0x20cc278

.word 0x15180 @ 0x20cc278



.arm
RTC_ConvertDayToDate: @ 20cc27c :arm
	stmfd   sp!, {r4,lr}
	ldr     r2, [pc, #0xe4] @ [0x20cc36c] (=0x8eac)
	cmp     r1, #0x0
	movlt   r1, #0x0
	cmp     r1, r2
	movgt   r1, r2
	ldr     r3, [pc, #0xd4] @ [0x20cc370] (=0x92492493)
	add     lr, r1, #0x6
	smull   r2, r4, r3, lr
	add     r4, lr, r4
	mov     r2, lr, lsr #31
	add     r4, r2, r4, asr #2
	mov     r12, #0x7
	smull   r2, r3, r12, r4
	sub     r4, lr, r2
	ldr     r2, [pc, #0xb4] @ [0x20cc374] (=0x16d)
	str     r4, [r0, #0xc]
	mov     r3, #0x0
.arm
branch_20cc2c4: @ 20cc2c4 :arm
	tst     r3, #0x3
	addeq   r12, r2, #0x1
	movne   r12, r2
	mov     r4, r1
	subs    r1, r1, r12
	movmi   r1, r4
	bmi     branch_20cc2ec
	add     r3, r3, #0x1
	cmp     r3, #0x63
	bcc     branch_20cc2c4
.arm
branch_20cc2ec: @ 20cc2ec :arm
	ldr     r2, [pc, #0x80] @ [0x20cc374] (=0x16d)
	str     r3, [r0]
	cmp     r1, r2
	movgt   r1, r2
	tst     r3, #0x3
	bne     branch_20cc330
	cmp     r1, #0x3c
	bge     branch_20cc32c
	cmp     r1, #0x1f
	movlt   r2, #0x1
	subge   r1, r1, #0x1f
	movge   r2, #0x2
	str     r2, [r0, #0x4]
	add     r1, r1, #0x1
	str     r1, [r0, #0x8]
	ldmfd   sp!, {r4,pc}
@ 0x20cc32c

.arm
branch_20cc32c: @ 20cc32c :arm
	sub     r1, r1, #0x1
.arm
branch_20cc330: @ 20cc330 :arm
	ldr     r3, [pc, #0x40] @ [0x20cc378] (=0x2101450)
	mov     r4, #0xb
.arm
branch_20cc338: @ 20cc338 :arm
	ldr     r2, [r3, r4, lsl #0x2]
	cmp     r1, r2
	blt     branch_20cc360
	add     r2, r4, #0x1
	str     r2, [r0, #0x4]
	ldr     r2, [r3, r4, lsl #0x2]
	sub     r1, r1, r2
	add     r1, r1, #0x1
	str     r1, [r0, #0x8]
	ldmfd   sp!, {r4,pc}

branch_20cc360: @ 20cc360 :arm
	subs    r4, r4, #0x1
	bpl     branch_20cc338
	ldmfd   sp!, {r4,pc}
@ 0x20cc36c

.word 0x8eac @ 0x20cc36c
.word 0x92492493 @ 0x20cc370
.word 0x16d @ 0x20cc374
.word Unknown_2101450 @ 0x20cc378



.arm
RTCi_ConvertSecondToTime: @ 20cc37c :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r2, [pc, #0x6c] @ [0x20cc3f4] (=0x1517f)
	cmp     r1, #0x0
	movlt   r1, #0x0
	cmp     r1, r2
	movgt   r1, r2
	ldr     lr, [pc, #0x5c] @ [0x20cc3f8] (=0x88888889)
	mov     r12, r1, lsr #31
	smull   r3, r2, lr, r1
	smull   r3, r6, lr, r1
	add     r2, r1, r2
	add     r2, r12, r2, asr #5
	smull   r3, r5, lr, r2
	smull   r3, r4, lr, r2
	add     r6, r1, r6
	add     r6, r12, r6, asr #5
	mov     lr, #0x3c
	smull   r3, r12, lr, r6
	sub     r6, r1, r3
	add     r5, r2, r5
	mov     r12, r2, lsr #31
	add     r5, r12, r5, asr #5
	smull   r1, r3, lr, r5
	add     r4, r2, r4
	str     r6, [r0, #0x8]
	sub     r5, r2, r1
	str     r5, [r0, #0x4]
	add     r4, r12, r4, asr #5
	str     r4, [r0]
	ldmfd   sp!, {r4-r6,pc}
@ 0x20cc3f4

.word 0x1517f @ 0x20cc3f4
.word 0x88888889 @ 0x20cc3f8



.arm
.globl RTC_ConvertSecondToDateTime
RTC_ConvertSecondToDateTime: @ 20cc3fc :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r5, r2
	mov     r4, r3
	subs    r2, r5, #0x0
	sbcs    r2, r4, #0x0
	mov     r2, #0x0
	mov     r7, r0
	mov     r6, r1
	movlt   r5, r2
	movlt   r4, r2
	blt     branch_20cc43c
	ldr     r1, [pc, #0x50] @ [0x20cc480] (=0xbc19137f)
	subs    r0, r1, r5
	sbcs    r0, r2, r4
	movlt   r5, r1
	movlt   r4, r2
branch_20cc43c: @ 20cc43c :arm
	ldr     r2, [pc, #0x40] @ [0x20cc484] (=0x15180)
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      _ll_mod
	mov     r1, r0
	mov     r0, r6
	bl      RTCi_ConvertSecondToTime
	ldr     r2, [pc, #0x20] @ [0x20cc484] (=0x15180)
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      _ll_sdiv
	mov     r1, r0
	mov     r0, r7
	bl      RTC_ConvertDayToDate
	ldmfd   sp!, {r3-r7,pc}
@ 0x20cc480

.word 0xbc19137f @ 0x20cc480
.word 0x15180 @ 0x20cc484 = 24*60*60



.arm
Function_20cc488: @ 20cc488 :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r1, [r0, #0x4]
	ldr     r2, [r0]
	sub     r1, r1, #0x2
	cmp     r1, #0x1
	add     r12, r2, #125, 28 @ #0x7d0
	sublt   r12, r12, #0x1
	ldr     r6, [pc, #0x8c] @ [0x20cc538] (=0x51eb851f)
	ldr     lr, [r0, #0x8]
	smull   r3, r2, r6, r12
	smull   r4, r3, r6, r12
	mov     r5, r12, lsr #31
	add     r3, r5, r3, asr #5
	add     r2, r5, r2, asr #5
	mov     r5, #0x64
	smull   r2, r4, r5, r2
	sub     r2, r12, r2
	addlt   r1, r1, #0xc
	mov     r0, #0x1a
	mul     r0, r1, r0
	sub     r1, r0, #0x2
	ldr     r0, [pc, #0x58] @ [0x20cc53c] (=0x66666667)
	mov     r5, r1, lsr #31
	smull   r1, r12, r0, r1
	add     r12, r5, r12, asr #2
	mov     r4, r2, asr #1
	add     r0, lr, r12
	add     r1, r2, r4, lsr #30
	add     r2, r2, r0
	mov     r6, r3, asr #1
	add     r0, r3, r6, lsr #30
	add     r1, r2, r1, asr #2
	add     r1, r1, r0, asr #2
	add     r0, r3, r3, lsl #2
	add     r4, r1, r0
	ldr     r3, [pc, #0x24] @ [0x20cc540] (=0x92492493)
	mov     r1, r4, lsr #31
	smull   r2, r0, r3, r4
	add     r0, r4, r0
	add     r0, r1, r0, asr #2
	mov     r2, #0x7
	smull   r0, r1, r2, r0
	sub     r0, r4, r0
	ldmfd   sp!, {r4-r6,pc}
@ 0x20cc538

.word 0x51eb851f @ 0x20cc538
.word 0x66666667 @ 0x20cc53c
.word 0x92492493 @ 0x20cc540



.arm
CARDi_SetTask: @ 20cc544 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r4, [pc, #0x2c] @ [0x20cc57c] (=RAM_21cee20)
	mov     r5, r0
	ldr     r1, [r4, #0x108]
	add     r0, r4, #0x44
	bl      OS_SetThreadPriority
	ldr     r1, [r4, #0x114]
	add     r0, r4, #0x44
	orr     r1, r1, #0x8
	str     r0, [r4, #0x104]
	str     r5, [r4, #0x40]
	str     r1, [r4, #0x114]
	bl      OS_WakeupThreadDirect
	ldmfd   sp!, {r3-r5,pc}
@ 0x20cc57c

.word RAM_21cee20 @ 0x20cc57c



.arm
CARDi_LockResource: @ 20cc580 :arm
	stmfd   sp!, {r4-r8,lr}
	ldr     r4, [pc, #0x74] @ [0x20cc600] (=RAM_21cee20)
	mov     r8, r0
	mov     r7, r1
	bl      OS_DisableInterrupts
	ldr     r1, [r4, #0x8]
	mov     r5, r0
	cmp     r1, r8
	bne     branch_20cc5b8
	ldr     r0, [r4, #0x18]
	cmp     r0, r7
	beq     branch_20cc5dc
	bl      OS_Panic
	b       branch_20cc5dc
@ 0x20cc5b8

.arm
branch_20cc5b8: @ 20cc5b8 :arm
	mvn     r6, #0x2
	b       branch_20cc5c8
@ 0x20cc5c0

.arm
branch_20cc5c0: @ 20cc5c0 :arm
	add     r0, r4, #0x10
	bl      OS_SleepThread
.arm
branch_20cc5c8: @ 20cc5c8 :arm
	ldr     r0, [r4, #0x8]
	cmp     r0, r6
	bne     branch_20cc5c0
	str     r8, [r4, #0x8]
	str     r7, [r4, #0x18]
.arm
branch_20cc5dc: @ 20cc5dc :arm
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4]
	add     r2, r0, #0x1
	mov     r0, r5
	str     r2, [r4, #0xc]
	mov     r2, #0x0
	str     r2, [r1]
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r4-r8,pc}
@ 0x20cc600

.word RAM_21cee20 @ 0x20cc600



.arm
CARDi_UnlockResource: @ 20cc604 :arm
	stmfd   sp!, {r3-r7,lr}
	ldr     r4, [pc, #0x7c] @ [0x20cc68c] (=RAM_21cee20)
	mov     r7, r0
	mov     r6, r1
	bl      OS_DisableInterrupts
	ldr     r1, [r4, #0x8]
	mov     r5, r0
	cmp     r1, r7
	bne     branch_20cc634
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	bne     branch_20cc63c
.arm
branch_20cc634: @ 20cc634 :arm
	bl      OS_Panic
	b       branch_20cc674
@ 0x20cc63c

.arm
branch_20cc63c: @ 20cc63c :arm
	ldr     r0, [r4, #0x18]
	cmp     r0, r6
	beq     branch_20cc64c
	bl      OS_Panic
.arm
branch_20cc64c: @ 20cc64c :arm
	ldr     r0, [r4, #0xc]
	subs    r0, r0, #0x1
	str     r0, [r4, #0xc]
	bne     branch_20cc674
	mvn     r2, #0x2
	mov     r1, #0x0
	add     r0, r4, #0x10
	str     r2, [r4, #0x8]
	str     r1, [r4, #0x18]
	bl      OS_WakeupThread
.arm
branch_20cc674: @ 20cc674 :arm
	ldr     r1, [r4]
	mov     r2, #0x0
	mov     r0, r5
	str     r2, [r1]
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r3-r7,pc}
@ 0x20cc68c

.word RAM_21cee20 @ 0x20cc68c



.arm
CARDi_InitCommon: @ 20cc690 :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x8
	ldr     r4, [pc, #0xe4] @ [0x20cc784] (=RAM_21cee20)

	ldr     r1, [pc, #0xe4] @ [0x20cc788] (=RAM_21cedc0)
	mvn     r2, #0x2
	mov     r0, #0x0
	str     r2, [r4, #0x8]
	mov     r2, #0x60
	str     r0, [r4, #0xc]
	str     r0, [r4, #0x18]
	str     r1, [r4]
	bl      MIi_CpuClearFast

	ldr     r0, [pc, #0xc0] @ [0x20cc788] (=RAM_21cedc0)
	mov     r1, #0x60
	bl      DC_FlushRange

	mvn     r1, #0x0
	ldr     r0, [pc, #0xb4] @ [0x20cc78c] (=RAM_27ffc40)
	str     r1, [r4, #0x118]
	str     r1, [r4, #0x11c]
	ldrh    r0, [r0]
	cmp     r0, #0x2
	moveq   r0, #0x1
	movne   r0, #0x0
	cmp     r0, #0x0
	bne     branch_20cc704
	ldr     r0, [pc, #0x94] @ [0x20cc790] (=RAM_27ffe00)
	mov     r2, #22, 28 @ #0x160
	sub     r1, r0, #14, 26 @ #0x380
	bl      MI_CpuCopy8
branch_20cc704: @ 20cc704 :arm
	mov     r2, #0x0
	mov     r0, #0x4
	str     r0, [r4, #0x108]
	str     r2, [r4, #0x14]
	str     r2, [r4, #0x10]
	str     r2, [r4, #0x110]
	str     r2, [r4, #0x10c]
	mov     r0, #1, 22 @ #0x400
	str     r0, [sp]

	ldr     r12, [r4, #0x108]
	ldr     r1, [pc, #0x60] @ [0x20cc794] (=Function_20cd7a8)
	ldr     r3, [pc, #0x60] @ [0x20cc798] (=RAM_21cf440)
	add     r0, r4, #0x44
	str     r12, [sp, #0x4]
	bl      OS_CreateThread

	add     r0, r4, #0x44
	bl      OS_WakeupThreadDirect

	ldr     r1, [pc, #0x4c] @ [0x20cc79c] (=Function_20cd774)
	mov     r0, #0xb
	bl      PXI_SetFifoRecvCallback

	ldr     r0, [pc, #0x30] @ [0x20cc78c] (=RAM_27ffc40)
	ldrh    r0, [r0]
	cmp     r0, #0x2
	moveq   r0, #0x1
	movne   r0, #0x0
	cmp     r0, #0x0
	addne   sp, sp, #0x8
	ldmnefd sp!, {r4,pc}

	mov     r0, #0x1
	bl      Function_20cc7c8
	add     sp, sp, #0x8
	ldmfd   sp!, {r4,pc}
@ 0x20cc784

.word RAM_21cee20 @ 0x20cc784
.word RAM_21cedc0 @ 0x20cc788
.word RAM_27ffc40 @ 0x20cc78c
.word RAM_27ffe00 @ 0x20cc790
.word Function_20cd7a8 @ 0x20cc794
.word RAM_21cf440 @ 0x20cc798
.word Function_20cd774 @ 0x20cc79c



.arm
Function_20cc7a0: @ 20cc7a0 :arm
	ldr     r0, [pc, #0x4] @ [0x20cc7ac] (=RAM_21ceda0)
	ldr     r0, [r0]
	bx      lr
@ 0x20cc7ac

.word RAM_21ceda0 @ 0x20cc7ac



.arm
CARD_CheckEnabled: @ 20cc7b0 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_20cc7a0
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}
	bl      OS_Panic
	ldmfd   sp!, {r3,pc}
@ 0x20cc7c8


.arm
Function_20cc7c8: @ 20cc7c8 :arm
	ldr     r1, [pc, #0x4] @ [0x20cc7d4] (=RAM_21ceda0)
	str     r0, [r1]
	bx      lr
@ 0x20cc7d4

.word RAM_21ceda0 @ 0x20cc7d4



.arm
CARDi_WaitAsync: @ 20cc7d8 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r4, [pc, #0x3c] @ [0x20cc820] (=RAM_21cee20)
	bl      OS_DisableInterrupts
	mov     r5, r0
	b       branch_20cc7f4

branch_20cc7ec: @ 20cc7ec :arm
	add     r0, r4, #67, 30 @ #0x10c
	bl      OS_SleepThread
branch_20cc7f4: @ 20cc7f4 :arm
	ldr     r0, [r4, #0x114]
	tst     r0, #0x4
	bne     branch_20cc7ec
	mov     r0, r5
	bl      OS_RestoreInterrupts
	ldr     r0, [r4]
	ldr     r0, [r0]
	cmp     r0, #0x0
	moveq   r0, #0x1
	movne   r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x20cc820

.word RAM_21cee20 @ 0x20cc820



.arm
Function_20cc824: @ 20cc824 :arm
	ldr     r0, [pc, #0x10] @ [0x20cc83c] (=RAM_21cee20)
	ldr     r0, [r0, #0x114]
	tst     r0, #0x4
	moveq   r0, #0x1
	movne   r0, #0x0
	bx      lr
@ 0x20cc83c

.word RAM_21cee20 @ 0x20cc83c



.arm
CARD_GetResultCode_0: @ 20cc840 :arm
	ldr     r0, [pc, #0x8] @ [0x20cc850] (=RAM_21cee20)
	ldr     r0, [r0]
	ldr     r0, [r0]
	bx      lr
@ 0x20cc850

.word RAM_21cee20 @ 0x20cc850



.arm
CARD_LockRom: @ 20cc854 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	bl      CARDi_LockResource
	mov     r0, r4
	bl      OS_LockCard
	ldmfd   sp!, {r4,pc}
@ 0x20cc870


.arm
CARD_UnlockRom: @ 20cc870 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      OS_UnlockCard
	mov     r0, r4
	mov     r1, #0x1
	bl      CARDi_UnlockResource
	ldmfd   sp!, {r4,pc}
@ 0x20cc88c


.arm
CARD_LockBackup_9: @ 20cc88c :arm
	ldr     r12, =CARDi_LockResource
	mov     r1, #0x2
	bx      r12
@ 0x20cc898

.pool



.arm
CARD_UnlockBackup: @ 20cc89c :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0

	bl      Function_20cd050
	cmp     r0, #0x0
	bne     branch_20cc8b4
	bl      Call_CARDi_WaitAsync
branch_20cc8b4: @ 20cc8b4 :arm

	mov     r0, r4
	mov     r1, #0x2
	bl      CARDi_UnlockResource

	ldmfd   sp!, {r4,pc}
@ 0x20cc8c4


.arm
CARD_SetCacheFlushThreshold: @ 20cc8c4 :arm
	ldr     r2, [pc, #0x8] @ [0x20cc8d4] (=RAM_21ceda0)
	str     r0, [r2, #0x198]
	str     r1, [r2, #0x19c]
	bx      lr
@ 0x20cc8d4

.word RAM_21ceda0 @ 0x20cc8d4



.arm
CARDi_IdentifyBackupCore: @ 20cc8d8 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r1, [pc, #0x31c] @ [0x20ccc00] (=RAM_21cee20)
	mov     r5, r0
	ldr     r4, [r1]
	mov     r1, #0x0
	add     r0, r4, #0x18
	mov     r2, #0x48
	bl      MI_CpuFill8
	ldr     r0, [pc, #0x304] @ [0x20ccc04] (=0x203f)
	str     r5, [r4, #0x4]
	str     r0, [r4, #0x58]
	cmp     r5, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	mov     r0, r5, asr #8
	and     r0, r0, #0xff
	mov     r3, #0x1
	mov     r12, r3, lsl r0
	and     r2, r5, #0xff
	mov     r1, r5, asr #16
	str     r12, [r4, #0x18]
	mov     r0, #0xff
	strb    r0, [r4, #0x54]
	cmp     r2, #0x1
	and     r0, r1, #0xff
	bne     branch_20cc9d8
	cmp     r12, #2, 24 @ #0x200
	beq     branch_20cc958
	cmp     r12, #2, 20 @ #0x2000
	beq     branch_20cc978
	cmp     r12, #1, 16 @ #0x10000
	beq     branch_20cc99c
	b       branch_20ccbe0

branch_20cc958: @ 20cc958 :arm
	mov     r0, #0x10
	str     r0, [r4, #0x24]
	str     r3, [r4, #0x28]
	mov     r0, #0x5
	str     r0, [r4, #0x2c]
	mov     r0, #0xf0
	strb    r0, [r4, #0x54]
	b       branch_20cc9bc

branch_20cc978: @ 20cc978 :arm
	mov     r0, #0x20
	str     r0, [r4, #0x24]
	mov     r0, #0x2
	str     r0, [r4, #0x28]
	mov     r0, #0x5
	str     r0, [r4, #0x2c]
	mov     r0, #0x0
	strb    r0, [r4, #0x54]
	b       branch_20cc9bc

branch_20cc99c: @ 20cc99c :arm
	mov     r0, #0x80
	str     r0, [r4, #0x24]
	mov     r0, #0x2
	str     r0, [r4, #0x28]
	mov     r0, #0xa
	str     r0, [r4, #0x2c]
	mov     r0, #0x0
	strb    r0, [r4, #0x54]
branch_20cc9bc: @ 20cc9bc :arm
	ldr     r0, [r4, #0x24]
	str     r0, [r4, #0x1c]
	ldr     r0, [r4, #0x58]
	orr     r0, r0, #0x40
	orr     r0, r0, #67, 24 @ #0x4300
	str     r0, [r4, #0x58]
	ldmfd   sp!, {r3-r5,pc}

branch_20cc9d8: @ 20cc9d8 :arm
	cmp     r2, #0x2
	bne     branch_20ccba0
	cmp     r12, #1, 12 @ #0x100000
	bhi     branch_20cca08
	bcs     branch_20cca2c
	cmp     r12, #1, 14 @ #0x40000
	bhi     branch_20cc9fc
	beq     branch_20cca2c
	b       branch_20ccbe0

branch_20cc9fc: @ 20cc9fc :arm
	cmp     r12, #2, 14 @ #0x80000
	beq     branch_20cca2c
	b       branch_20ccbe0

branch_20cca08: @ 20cca08 :arm
	cmp     r12, #1, 10 @ #0x400000
	bhi     branch_20cca20
	bcs     branch_20ccaa4
	cmp     r12, #2, 12 @ #0x200000
	beq     branch_20cca58
	b       branch_20ccbe0

branch_20cca20: @ 20cca20 :arm
	cmp     r12, #2, 10 @ #0x800000
	beq     branch_20ccaf4
	b       branch_20ccbe0

branch_20cca2c: @ 20cca2c :arm
	mov     r0, #0x19
	str     r0, [r4, #0x30]
	mov     r1, #75, 30 @ #0x12c
	str     r1, [r4, #0x34]
	ldr     r0, [pc, #0x1c4] @ [0x20ccc08] (=0x1388)
	str     r1, [r4, #0x50]
	str     r0, [r4, #0x40]
	ldr     r0, [r4, #0x58]
	orr     r0, r0, #18, 26 @ #0x480
	str     r0, [r4, #0x58]
	b       branch_20ccb70

branch_20cca58: @ 20cca58 :arm
	mov     r0, #0x17
	str     r0, [r4, #0x30]
	mov     r1, #75, 30 @ #0x12c
	str     r1, [r4, #0x34]
	mov     r1, #125, 30 @ #0x1f4
	ldr     r0, [pc, #0x194] @ [0x20ccc08] (=0x1388)
	str     r1, [r4, #0x40]
	str     r0, [r4, #0x44]
	mov     r1, r0, lsl #1
	ldr     r0, [pc, #0x188] @ [0x20ccc0c] (=0xea60)
	str     r1, [r4, #0x38]
	str     r0, [r4, #0x3c]
	mov     r0, #0x0
	strb    r0, [r4, #0x54]
	ldr     r0, [r4, #0x58]
	orr     r0, r0, #0x80
	orr     r0, r0, #21, 22 @ #0x5400
	str     r0, [r4, #0x58]
	b       branch_20ccb70

branch_20ccaa4: @ 20ccaa4 :arm
	mov     r0, #150, 30 @ #0x258
	str     r0, [r4, #0x40]
	add     r0, r0, #150, 28 @ #0x960
	str     r0, [r4, #0x44]
	mov     r0, #0x46
	str     r0, [r4, #0x48]
	mov     r0, #0x96
	str     r0, [r4, #0x4c]
	ldr     r1, [pc, #0x144] @ [0x20ccc10] (=0x59d8)
	ldr     r0, [pc, #0x144] @ [0x20ccc14] (=0xc3500)
	str     r1, [r4, #0x38]
	str     r0, [r4, #0x3c]
	mov     r0, #0x0
	strb    r0, [r4, #0x54]
	mov     r0, #1, 20 @ #0x1000
	str     r0, [r4, #0x20]
	ldr     r0, [r4, #0x58]
	orr     r0, r0, #13, 20 @ #0xd000
	str     r0, [r4, #0x58]
	b       branch_20ccb70
@ 0x20ccaf4

.arm
branch_20ccaf4: @ 20ccaf4 :arm
	cmp     r0, #0x0
	bne     branch_20ccb34
	mov     r0, #250, 30 @ #0x3e8
	str     r0, [r4, #0x40]
	add     r0, r0, #125, 28 @ #0x7d0
	str     r0, [r4, #0x44]
	ldr     r1, [pc, #0x104] @ [0x20ccc18] (=0x109a0)
	ldr     r0, [pc, #0x104] @ [0x20ccc1c] (=0x27100)
	str     r1, [r4, #0x38]
	str     r0, [r4, #0x3c]
	mov     r0, #0x0
	strb    r0, [r4, #0x54]
	ldr     r0, [r4, #0x58]
	orr     r0, r0, #5, 20 @ #0x5000
	str     r0, [r4, #0x58]
	b       branch_20ccb70
@ 0x20ccb34

.arm
branch_20ccb34: @ 20ccb34 :arm
	cmp     r0, #0x1
	bne     branch_20ccb70
	mov     r0, #250, 30 @ #0x3e8
	str     r0, [r4, #0x40]
	add     r0, r0, #125, 28 @ #0x7d0
	str     r0, [r4, #0x44]
	ldr     r1, [pc, #0xc4] @ [0x20ccc18] (=0x109a0)
	ldr     r0, [pc, #0xc4] @ [0x20ccc1c] (=0x27100)
	str     r1, [r4, #0x38]
	str     r0, [r4, #0x3c]
	mov     r0, #0x84
	strb    r0, [r4, #0x54]
	ldr     r0, [r4, #0x58]
	orr     r0, r0, #5, 20 @ #0x5000
	str     r0, [r4, #0x58]
.arm
branch_20ccb70: @ 20ccb70 :arm
	mov     r0, #1, 16 @ #0x10000
	str     r0, [r4, #0x1c]
	mov     r0, #1, 24 @ #0x100
	str     r0, [r4, #0x24]
	mov     r0, #0x3
	str     r0, [r4, #0x28]
	mov     r0, #0x5
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x58]
	orr     r0, r0, #45, 26 @ #0xb40
	str     r0, [r4, #0x58]
	ldmfd   sp!, {r3-r5,pc}
@ 0x20ccba0

.arm
branch_20ccba0: @ 20ccba0 :arm
	cmp     r2, #0x3
	bne     branch_20ccbe0
	cmp     r12, #2, 20 @ #0x2000
	cmpne   r12, #2, 18 @ #0x8000
	bne     branch_20ccbe0
	str     r12, [r4, #0x24]
	str     r12, [r4, #0x1c]
	mov     r0, #0x2
	str     r0, [r4, #0x28]
	mov     r0, #0x0
	strb    r0, [r4, #0x54]
	ldr     r0, [r4, #0x58]
	orr     r0, r0, #0x40
	orr     r0, r0, #67, 24 @ #0x4300
	str     r0, [r4, #0x58]
	ldmfd   sp!, {r3-r5,pc}
@ 0x20ccbe0

.arm
branch_20ccbe0: @ 20ccbe0 :arm
	mov     r1, #0x0
	str     r1, [r4, #0x4]
	str     r1, [r4, #0x18]
	ldr     r0, [pc, #0xc] @ [0x20ccc00] (=RAM_21cee20)
	mov     r1, #0x3
	ldr     r0, [r0]
	str     r1, [r0]
	ldmfd   sp!, {r3-r5,pc}
@ 0x20ccc00

.word RAM_21cee20 @ 0x20ccc00
.word 0x203f @ 0x20ccc04
.word 0x1388 @ 0x20ccc08
.word 0xea60 @ 0x20ccc0c
.word 0x59d8 @ 0x20ccc10
.word 0xc3500 @ 0x20ccc14
.word 0x109a0 @ 0x20ccc18
.word 0x27100 @ 0x20ccc1c



.arm
CARDi_RequestStreamCommandCore: @ 20ccc20 :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r9, r0
	ldr     r7, [r9, #0x2c]
	ldr     r0, [pc, #0x1d4] @ [0x20cce08] (=Unknown_2000bfc)
	ldr     r4, [r9, #0x34]
	ldr     r10, [r9, #0x30]
	mov     r5, #1, 24 @ #0x100
	bl      Function_2000b9c
	cmp     r7, #0xb
	bne     branch_20ccc54
	bl      CARD_GetBackupSectorSize
	mov     r5, r0
	b       branch_20ccc64
@ 0x20ccc54

.arm
branch_20ccc54: @ 20ccc54 :arm
	cmp     r7, #0xf
	ldreq   r0, [pc, #0x1ac] @ [0x20cce0c] (=RAM_21cee20)
	ldreq   r0, [r0]
	ldreq   r5, [r0, #0x20]
.arm
branch_20ccc64: @ 20ccc64 :arm
	add     r6, r9, #18, 28 @ #0x120
	mov     r11, #0x9
.arm
branch_20ccc6c: @ 20ccc6c :arm
	ldr     r8, [r9, #0x24]
	ldr     r0, [r9]
	cmp     r5, r8
	movcc   r8, r5
	str     r8, [r0, #0x14]
	ldr     r0, [r9, #0x114]
	tst     r0, #0x40
	beq     branch_20ccca8
	ldr     r0, [r9, #0x114]
	mov     r1, #0x7
	bic     r0, r0, #0x40
	str     r0, [r9, #0x114]
	ldr     r0, [r9]
	str     r1, [r0]
	b       branch_20ccdb4
@ 0x20ccca8

.arm
branch_20ccca8: @ 20ccca8 :arm
	cmp     r4, #0x3
	addls   pc, pc, r4, lsl #2
	b       branch_20ccd38
@ 0x20cccb4

.arm
Function_20cccb4: @ 20cccb4 :arm
	b       branch_20cccc4
@ 0x20cccb8

.arm
Function_20cccb8: @ 20cccb8 :arm
	b       branch_20ccce8
@ 0x20cccbc

.arm
Function_20cccbc: @ 20cccbc :arm
	b       branch_20ccce8
@ 0x20cccc0

.arm
Function_20cccc0: @ 20cccc0 :arm
	b       branch_20ccd20
@ 0x20cccc4

.arm
branch_20cccc4: @ 20cccc4 :arm
	mov     r0, r6
	mov     r1, r8
	bl      DC_InvalidateRange
	ldr     r1, [r9, #0x1c]
	ldr     r0, [r9]
	str     r1, [r0, #0xc]
	ldr     r0, [r9]
	str     r6, [r0, #0x10]
	b       branch_20ccd38
@ 0x20ccce8

.arm
branch_20ccce8: @ 20ccce8 :arm
	ldr     r0, [r9, #0x1c]
	mov     r1, r6
	mov     r2, r8
	bl      MI_CpuCopy8
	mov     r0, r6
	mov     r1, r8
	bl      DC_FlushRange
	bl      DC_WaitWriteBufferEmpty
	ldr     r0, [r9]
	str     r6, [r0, #0xc]
	ldr     r1, [r9, #0x20]
	ldr     r0, [r9]
	str     r1, [r0, #0x10]
	b       branch_20ccd38
@ 0x20ccd20

.arm
branch_20ccd20: @ 20ccd20 :arm
	ldr     r1, [r9, #0x1c]
	ldr     r0, [r9]
	str     r1, [r0, #0xc]
	ldr     r1, [r9, #0x20]
	ldr     r0, [r9]
	str     r1, [r0, #0x10]
.arm
branch_20ccd38: @ 20ccd38 :arm
	mov     r0, r9
	mov     r1, r7
	mov     r2, r10
	bl      CARDi_Request
	cmp     r0, #0x0
	beq     branch_20ccdb4
	cmp     r4, #0x2
	bne     branch_20ccd74
	mov     r0, r9
	mov     r1, r11
	mov     r2, #0x1
	bl      CARDi_Request
	cmp     r0, #0x0
	beq     branch_20ccdb4
	b       branch_20ccd8c
@ 0x20ccd74

.arm
branch_20ccd74: @ 20ccd74 :arm
	cmp     r4, #0x0
	bne     branch_20ccd8c
	ldr     r1, [r9, #0x20]
	mov     r0, r6
	mov     r2, r8
	bl      MI_CpuCopy8
.arm
branch_20ccd8c: @ 20ccd8c :arm
	ldr     r0, [r9, #0x1c]
	add     r0, r0, r8
	str     r0, [r9, #0x1c]
	ldr     r0, [r9, #0x20]
	add     r0, r0, r8
	str     r0, [r9, #0x20]
	ldr     r0, [r9, #0x24]
	subs    r0, r0, r8
	str     r0, [r9, #0x24]
	bne     branch_20ccc6c
.arm
branch_20ccdb4: @ 20ccdb4 :arm
	ldr     r6, [r9, #0x38]
	ldr     r5, [r9, #0x3c]
	bl      OS_DisableInterrupts
	ldr     r1, [r9, #0x114]
	mov     r4, r0
	bic     r0, r1, #0x4c
	str     r0, [r9, #0x114]
	add     r0, r9, #67, 30 @ #0x10c
	bl      OS_WakeupThread
	ldr     r0, [r9, #0x114]
	tst     r0, #0x10
	beq     branch_20ccdec
	add     r0, r9, #0x44
	bl      OS_WakeupThreadDirect
.arm
branch_20ccdec: @ 20ccdec :arm
	mov     r0, r4
	bl      OS_RestoreInterrupts
	cmp     r6, #0x0
	ldmeqfd sp!, {r3-r11,pc}
	mov     r0, r5
	blx     r6
	ldmfd   sp!, {r3-r11,pc}
@ 0x20cce08

.word Unknown_2000bfc @ 0x20cce08
.word RAM_21cee20 @ 0x20cce0c



.arm
CARDi_RequestStreamCommand: @ 20cce10 :arm
	stmfd   sp!, {r3-r9,lr}
	mov     r9, r0
	ldr     r4, [pc, #0xc8] @ [0x20ccee8] (=RAM_21cee20)
	ldr     r0, [pc, #0xc8] @ [0x20cceec] (=Unknown_2000bfc)
	mov     r8, r1
	mov     r7, r2
	mov     r6, r3
	bl      Function_2000b9c
	bl      OS_DisableInterrupts
	ldr     r1, [r4, #0x114]
	mov     r5, r0
	tst     r1, #0x4
	beq     branch_20cce58
.arm
branch_20cce44: @ 20cce44 :arm
	add     r0, r4, #67, 30 @ #0x10c
	bl      OS_SleepThread
	ldr     r0, [r4, #0x114]
	tst     r0, #0x4
	bne     branch_20cce44
.arm
branch_20cce58: @ 20cce58 :arm
	ldr     r0, [r4, #0x114]
	ldr     r1, [sp, #0x20]
	orr     r2, r0, #0x4
	mov     r0, r5
	str     r2, [r4, #0x114]
	str     r6, [r4, #0x38]
	str     r1, [r4, #0x3c]
	bl      OS_RestoreInterrupts
	ldr     r3, [sp, #0x28]
	ldr     r2, [sp, #0x2c]
	ldr     r1, [sp, #0x30]
	ldr     r0, [sp, #0x24]
	str     r9, [r4, #0x1c]
	str     r8, [r4, #0x20]
	str     r7, [r4, #0x24]
	str     r3, [r4, #0x2c]
	str     r2, [r4, #0x30]
	str     r1, [r4, #0x34]
	cmp     r0, #0x0
	beq     branch_20cceb8
	ldr     r0, [pc, #0x40] @ [0x20ccef0] (=CARDi_RequestStreamCommandCore)
	bl      CARDi_SetTask
	mov     r0, #0x1
	ldmfd   sp!, {r3-r9,pc}
@ 0x20cceb8

.arm
branch_20cceb8: @ 20cceb8 :arm
	ldr     r0, [pc, #0x34] @ [0x20ccef4] (=RAM_21ccc80)
	ldr     r1, [pc, #0x24] @ [0x20ccee8] (=RAM_21cee20)
	ldr     r2, [r0, #0x4]
	mov     r0, r4
	str     r2, [r1, #0x104]
	bl      CARDi_RequestStreamCommandCore
	ldr     r0, [r4]
	ldr     r0, [r0]
	cmp     r0, #0x0
	moveq   r0, #0x1
	movne   r0, #0x0
	ldmfd   sp!, {r3-r9,pc}
@ 0x20ccee8

.word RAM_21cee20 @ 0x20ccee8
.word Unknown_2000bfc @ 0x20cceec
.word CARDi_RequestStreamCommandCore @ =0x20ccc20, 0x20ccef0
.word RAM_21ccc80 @ 0x20ccef4



.arm
CARD_GetBackupSectorSize: @ 20ccef8 :arm
	ldr     r0, [pc, #0x8] @ [0x20ccf08] (=RAM_21cee20)
	ldr     r0, [r0]
	ldr     r0, [r0, #0x1c]
	bx      lr
@ 0x20ccf08

.word RAM_21cee20 @ 0x20ccf08



.arm
CARD_IdentifyBackup: @ 20ccf0c :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x11c] @ [0x20cd038] (=Unknown_2000bfc)
	ldr     r4, [pc, #0x11c] @ [0x20cd03c] (=RAM_21cee20)
	bl      Function_2000b9c
	cmp     r6, #0x0
	bne     branch_20ccf2c
	bl      OS_Panic
.arm
branch_20ccf2c: @ 20ccf2c :arm
	bl      CARD_CheckEnabled
	bl      OS_DisableInterrupts
	ldr     r1, [r4, #0x114]
	mov     r5, r0
	tst     r1, #0x4
	beq     branch_20ccf58
.arm
branch_20ccf44: @ 20ccf44 :arm
	add     r0, r4, #67, 30 @ #0x10c
	bl      OS_SleepThread
	ldr     r0, [r4, #0x114]
	tst     r0, #0x4
	bne     branch_20ccf44
.arm
branch_20ccf58: @ 20ccf58 :arm
	ldr     r0, [r4, #0x114]
	mov     r1, #0x0
	orr     r2, r0, #0x4
	mov     r0, r5
	str     r2, [r4, #0x114]
	str     r1, [r4, #0x38]
	str     r1, [r4, #0x3c]
	bl      OS_RestoreInterrupts
	mov     r0, r6
	bl      CARDi_IdentifyBackupCore
	ldr     r0, [pc, #0xb8] @ [0x20cd040] (=RAM_21ccc80)
	ldr     r1, [pc, #0xb0] @ [0x20cd03c] (=RAM_21cee20)
	ldr     r2, [r0, #0x4]
	mov     r0, r4
	str     r2, [r1, #0x104]
	mov     r1, #0x2
	mov     r2, #0x1
	bl      CARDi_Request
	ldr     r0, [r4]
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	ldr     r0, [r4]
	add     r1, r4, #18, 28 @ #0x120
	str     r1, [r0, #0x10]
	ldr     r1, [r4]
	mov     r2, #0x1
	mov     r0, r4
	str     r2, [r1, #0x14]
	mov     r1, #0x6
	bl      CARDi_Request
	ldr     r7, [r4, #0x38]
	ldr     r6, [r4, #0x3c]
	bl      OS_DisableInterrupts
	mov     r5, r0
	ldr     r1, [r4, #0x114]
	add     r0, r4, #67, 30 @ #0x10c
	bic     r1, r1, #0x4c
	str     r1, [r4, #0x114]
	bl      OS_WakeupThread
	ldr     r0, [r4, #0x114]
	tst     r0, #0x10
	beq     branch_20cd008
	add     r0, r4, #0x44
	bl      OS_WakeupThreadDirect
.arm
branch_20cd008: @ 20cd008 :arm
	mov     r0, r5
	bl      OS_RestoreInterrupts
	cmp     r7, #0x0
	beq     branch_20cd020
	mov     r0, r6
	blx     r7
.arm
branch_20cd020: @ 20cd020 :arm
	ldr     r0, [r4]
	ldr     r0, [r0]
	cmp     r0, #0x0
	moveq   r0, #0x1
	movne   r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x20cd038

.word Unknown_2000bfc @ 0x20cd038
.word RAM_21cee20 @ 0x20cd03c
.word RAM_21ccc80 @ 0x20cd040



.arm
Call_CARDi_WaitAsync: @ 20cd044 :arm
	ldr     r12, [pc, #0x0] @ [0x20cd04c] (=CARDi_WaitAsync)
	bx      r12
@ 0x20cd04c

.word CARDi_WaitAsync @ 0x20cd04c



.arm
Function_20cd050: @ 20cd050 :arm
	ldr     r12, [pc, #0x0] @ [0x20cd058] (=Function_20cc824)
	bx      r12
@ 0x20cd058

.word Function_20cc824 @ 0x20cd058



.arm
CARD_CancelBackupAsync: @ 20cd05c :arm
	stmfd   sp!, {r3,lr}
	bl      OS_DisableInterrupts
	ldr     r1, [pc, #0x10] @ [0x20cd07c] (=RAM_21cee20)
	ldr     r2, [r1, #0x114]
	orr     r2, r2, #0x40
	str     r2, [r1, #0x114]
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r3,pc}
@ 0x20cd07c

.word RAM_21cee20 @ 0x20cd07c



.arm
CARDi_ReadFromCache: @ 20cd080 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r4, [pc, #0x7c] @ [0x20cd108] (=RAM_21cee20)
	mov     r1, #2, 24 @ #0x200
	ldr     r3, [r4, #0x1c]
	rsb     r1, r1, #0x0
	ldr     r2, [r0, #0x8]
	and     r3, r3, r1
	cmp     r3, r2
	bne     branch_20cd0f4
	ldr     r2, [r4, #0x1c]
	ldr     r1, [r4, #0x24]
	sub     r3, r2, r3
	rsb     r5, r3, #2, 24 @ #0x200
	cmp     r5, r1
	movhi   r5, r1
	add     r0, r0, #0x20
	ldr     r1, [r4, #0x20]
	mov     r2, r5
	add     r0, r0, r3
	bl      MI_CpuCopy8
	ldr     r2, [r4, #0x1c]
	ldr     r1, [r4, #0x20]
	ldr     r0, [r4, #0x24]
	add     r2, r2, r5
	add     r1, r1, r5
	sub     r0, r0, r5
	str     r2, [r4, #0x1c]
	str     r1, [r4, #0x20]
	str     r0, [r4, #0x24]
branch_20cd0f4: @ 20cd0f4 :arm
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x20cd108

.word RAM_21cee20 @ 0x20cd108



.arm
CARDi_SetRomOpReadPage1: @ 20cd10c :arm
	ldr     r3, [pc, #0x50] @ [0x20cd164] (=REG_ROMCTRL)
branch_20cd110: @ 20cd110 :arm
	ldr     r2, [r3]
	tst     r2, #2, 2 @ #0x80000000
	bne     branch_20cd110
	ldr     r3, [pc, #0x44] @ [0x20cd168] (=REG_AUXSPICNTH)
	mov     r2, #0xc0
	strb    r2, [r3]
	mov     r2, r0, lsr #24
	strb    r2, [r3, #0x7]
	mov     r2, r0, lsr #16
	strb    r2, [r3, #0x8]
	mov     r2, r0, lsr #8
	strb    r2, [r3, #0x9]
	strb    r0, [r3, #0xa]
	mov     r0, r1, lsr #24
	strb    r0, [r3, #0xb]
	mov     r0, r1, lsr #16
	strb    r0, [r3, #0xc]
	mov     r0, r1, lsr #8
	strb    r0, [r3, #0xd]
	strb    r1, [r3, #0xe]
	bx      lr
@ 0x20cd164

.word REG_ROMCTRL @ 0x20cd164
.word REG_AUXSPICNTH @ 0x20cd168



.arm
CARDi_SetCardDma: @ 20cd16c :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r4, [pc, #0x38] @ [0x20cd1b0] (=RAM_21cee20)
	ldr     r1, [pc, #0x38] @ [0x20cd1b4] (=CARD_DATA_RD)
	ldr     r0, [r4, #0x28]
	ldr     r2, [r4, #0x20]
	mov     r3, #2, 24 @ #0x200
	ldr     r5, [pc, #0x2c] @ [0x20cd1b8] (=RAM_21cf460)
	bl      MIi_CardDmaCopy32
	ldr     r1, [r4, #0x1c]
	mov     r0, r1, lsr #8
	orr     r0, r0, #183, 8 @ #0xb7000000
	mov     r1, r1, lsl #24
	bl      CARDi_SetRomOpReadPage1
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x10] @ [0x20cd1bc] (=REG_ROMCTRL)
	str     r1, [r0]
	ldmfd   sp!, {r3-r5,pc}
@ 0x20cd1b0

.word RAM_21cee20 @ 0x20cd1b0
.word CARD_DATA_RD @ 0x20cd1b4
.word RAM_21cf460 @ 0x20cd1b8
.word REG_ROMCTRL @ 0x20cd1bc



.arm
CARDi_OnReadCard: @ 20cd1c0 :arm
	stmfd   sp!, {r3-r7,lr}
	ldr     r0, [pc, #0xc0] @ [0x20cd28c] (=RAM_21cee20)
	ldr     r0, [r0, #0x28]
	bl      MI_StopDma
	ldr     r3, [pc, #0xb4] @ [0x20cd28c] (=RAM_21cee20)
	ldr     r0, [r3, #0x24]
	ldr     r2, [r3, #0x1c]
	ldr     r1, [r3, #0x20]
	subs    r0, r0, #2, 24 @ #0x200
	str     r0, [r3, #0x24]
	movne   r0, #0x1
	add     r2, r2, #2, 24 @ #0x200
	add     r1, r1, #2, 24 @ #0x200
	moveq   r0, #0x0
	str     r2, [r3, #0x1c]
	str     r1, [r3, #0x20]
	cmp     r0, #0x0
	bne     branch_20cd284
	mov     r0, #2, 14 @ #0x80000
	bl      OS_DisableIrqMask
	mov     r0, #2, 14 @ #0x80000
	bl      OS_ResetRequestIrqMask
	ldr     r4, [pc, #0x6c] @ [0x20cd28c] (=RAM_21cee20)
	bl      CARDi_ReadRomIDCore
	bl      CARDi_CheckPulledOutCore
	ldr     r0, [r4]
	mov     r1, #0x0
	str     r1, [r0]
	ldr     r5, [r4, #0x38]
	ldr     r6, [r4, #0x3c]
	bl      OS_DisableInterrupts
	ldr     r1, [r4, #0x114]
	mov     r7, r0
	bic     r0, r1, #0x4c
	str     r0, [r4, #0x114]
	add     r0, r4, #67, 30 @ #0x10c
	bl      OS_WakeupThread
	ldr     r0, [r4, #0x114]
	tst     r0, #0x10
	beq     branch_20cd268
	add     r0, r4, #0x44
	bl      OS_WakeupThreadDirect
.arm
branch_20cd268: @ 20cd268 :arm
	mov     r0, r7
	bl      OS_RestoreInterrupts
	cmp     r5, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	mov     r0, r6
	blx     r5
	ldmfd   sp!, {r3-r7,pc}
@ 0x20cd284

.arm
branch_20cd284: @ 20cd284 :arm
	bl      CARDi_SetCardDma
	ldmfd   sp!, {r3-r7,pc}
@ 0x20cd28c

.word RAM_21cee20 @ 0x20cd28c



.arm
CARDi_TryReadCardDma: @ 20cd290 :arm
	stmfd   sp!, {r3-r11,lr}
	ldr     r4, [pc, #0x16c] @ [0x20cd408] (=RAM_21cee20)
	mov     r6, #0x0
	ldr     r9, [r4, #0x20]
	mov     r11, r0
	mov     r7, r6
	mov     r8, r6
	mov     r1, r6
	ands    r10, r9, #0x1f
	ldr     r5, [r4, #0x24]
	bne     branch_20cd2c8
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x3
	movls   r1, #0x1
branch_20cd2c8: @ 20cd2c8 :arm
	cmp     r1, #0x0
	beq     branch_20cd31c
	bl      OS_GetDTCMAddress
	ldr     r1, [pc, #0x130] @ [0x20cd40c] (=OS_IrqHandler)
	add     r3, r9, r5
	cmp     r3, r1
	mov     r1, #0x1
	mov     r2, #0x0
	bls     branch_20cd2f4
	cmp     r9, #2, 8 @ #0x2000000
	movcc   r2, r1
.arm
branch_20cd2f4: @ 20cd2f4 :arm
	cmp     r2, #0x0
	bne     branch_20cd314
	cmp     r0, r3
	bcs     branch_20cd310
	add     r0, r0, #1, 18 @ #0x4000
	cmp     r0, r9
	bhi     branch_20cd314
.arm
branch_20cd310: @ 20cd310 :arm
	mov     r1, #0x0
.arm
branch_20cd314: @ 20cd314 :arm
	cmp     r1, #0x0
	moveq   r8, #0x1
.arm
branch_20cd31c: @ 20cd31c :arm
	cmp     r8, #0x0
	beq     branch_20cd338
	ldr     r1, [r4, #0x1c]
	ldr     r0, [pc, #0xe0] @ [0x20cd410] (=0x1ff)
	orr     r1, r1, r5
	tst     r1, r0
	moveq   r7, #0x1
.arm
branch_20cd338: @ 20cd338 :arm
	ldr     r0, [pc, #0xd4] @ [0x20cd414] (=0x2101480)
	cmp     r7, #0x0
	ldr     r0, [r0]
	cmpne   r5, #0x0
	ldr     r0, [r0, #0x60]
	movne   r6, #0x1
	bic     r0, r0, #7, 8 @ #0x7000000
	orr     r0, r0, #161, 8 @ #0xa1000000
	cmp     r6, #0x0
	str     r0, [r11, #0x4]
	beq     branch_20cd400
	bl      OS_DisableInterrupts
	ldr     r1, [r4, #0x118]
	mov     r7, r0
	cmp     r5, r1
	bcs     branch_20cd388
	mov     r0, r9
	mov     r1, r5
	bl      IC_InvalidateRange
	b       branch_20cd38c
@ 0x20cd388

.arm
branch_20cd388: @ 20cd388 :arm
	bl      IC_InvalidateAll
.arm
branch_20cd38c: @ 20cd38c :arm
	ldr     r0, [r4, #0x11c]
	cmp     r5, r0
	bcs     branch_20cd3d4
	cmp     r10, #0x0
	beq     branch_20cd3c0
	sub     r9, r9, r10
	mov     r0, r9
	mov     r1, #0x20
	bl      DC_StoreRange
	add     r0, r9, r5
	mov     r1, #0x20
	bl      DC_StoreRange
	add     r5, r5, #0x20
.arm
branch_20cd3c0: @ 20cd3c0 :arm
	mov     r0, r9
	mov     r1, r5
	bl      DC_InvalidateRange
	bl      DC_WaitWriteBufferEmpty
	b       branch_20cd3d8

branch_20cd3d4: @ 20cd3d4 :arm
	bl      DC_FlushAll
branch_20cd3d8: @ 20cd3d8 :arm
	ldr     r1, [pc, #0x38] @ [0x20cd418] (=CARDi_OnReadCard)
	mov     r0, #IRQ_CARD
	bl      OS_SetIrqFunction
	mov     r0, #IRQ_CARD
	bl      OS_ResetRequestIrqMask
	mov     r0, #IRQ_CARD
	bl      OS_EnableIrqMask
	mov     r0, r7
	bl      OS_RestoreInterrupts
	bl      CARDi_SetCardDma

branch_20cd400: @ 20cd400 :arm
	mov     r0, r6
	ldmfd   sp!, {r3-r11,pc}
@ 0x20cd408

.word RAM_21cee20 @ 0x20cd408
.word OS_IrqHandler @ 0x20cd40c
.word 0x1ff @ 0x20cd410
.word Unknown_2101480 @ 0x20cd414
.word CARDi_OnReadCard @ 0x20cd418



.arm
Function_20cd41c: @ 20cd41c :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r4, [pc, #0xd8] @ [0x20cd500] (=RAM_21cee20)
	mov     r6, r0
branch_20cd428: @ 20cd428 :arm
	mov     r0, #0x200
	ldr     r1, [r4, #0x1c]
	rsb     r0, r0, #0x0
	and     r2, r1, r0
	cmp     r2, r1
	bne     branch_20cd458
	ldr     r5, [r4, #0x20]
	tst     r5, #0x3
	bne     branch_20cd458
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x200
	bcs     branch_20cd460
branch_20cd458: @ 20cd458 :arm
	str     r2, [r6, #0x8]
	add     r5, r6, #0x20
branch_20cd460: @ 20cd460 :arm
	mov     r0, r2, lsr #8
	orr     r0, r0, #0xb7000000
	mov     r1, r2, lsl #24
	bl      CARDi_SetRomOpReadPage1
	mov     r12, #0x0
	ldr     r0, [r6, #0x4]
	ldr     r2, [pc, #0x84] @ [0x20cd504] (=REG_ROMCTRL)
	mov     lr, r12
	str     r0, [r2]
	ldr     r1, [pc, #0x7c] @ [0x20cd508] (=CARD_DATA_RD)
branch_20cd488: @ 20cd488 :arm
	ldr     r3, [r2]
	tst     r3, #0x800000
	beq     branch_20cd4a8
	ldr     r0, [r1]
	cmp     lr, #2, 24 @ #0x200
	strcc   r0, [r5, r12, lsl #0x2]
	addcc   lr, lr, #0x4
	addcc   r12, r12, #0x1
branch_20cd4a8: @ 20cd4a8 :arm
	tst     r3, #0x80000000
	bne     branch_20cd488
	ldr     r0, [r4, #0x20]
	cmp     r5, r0
	bne     branch_20cd4ec
	ldr     r0, [pc, #0x3c] @ [0x20cd500] (=RAM_21cee20)
	ldr     r1, [r0, #0x1c]
	add     r1, r1, #0x200
	str     r1, [r0, #0x1c]
	ldr     r1, [r0, #0x20]
	add     r1, r1, #0x200
	str     r1, [r0, #0x20]
	ldr     r1, [r0, #0x24]
	subs    r1, r1, #0x200
	str     r1, [r0, #0x24]
	ldmeqfd sp!, {r4-r6,pc}
	b       branch_20cd428

branch_20cd4ec: @ 20cd4ec :arm
	mov     r0, r6
	bl      CARDi_ReadFromCache
	cmp     r0, #0x0
	bne     branch_20cd428
	ldmfd   sp!, {r4-r6,pc}
@ 0x20cd500

.word RAM_21cee20 @ 0x20cd500
.word REG_ROMCTRL @ 0x20cd504
.word CARD_DATA_RD @ 0x20cd508



.arm
CARDi_ReadRomIDCore: @ 20cd50c :arm
	stmfd   sp!, {r3,lr}
	mov     r0, #0xb8000000
	mov     r1, #0x0
	bl      CARDi_SetRomOpReadPage1
	ldr     r1, =Unknown_2101480
	mov     r0, #0x2000
	ldr     r1, [r1]
	rsb     r0, r0, #0x0
	ldr     r2, [r1, #0x60]
	ldr     r1, =REG_ROMCTRL
	bic     r2, r2, #0x7000000
	orr     r2, r2, #0xa7000000
	and     r0, r2, r0
	str     r0, [r1]
branch_20cd544: @ 20cd544 :arm
	ldr     r0, [r1]
	tst     r0, #1<<23
	beq     branch_20cd544
	ldr     r0, =CARD_DATA_RD
	ldr     r0, [r0]
	ldmfd   sp!, {r3,pc}
@ 0x20cd55c

.pool



.arm
CARDi_ReadRomSyncCore: @ 20cd568 :arm
	stmfd   sp!, {r3-r7,lr}
	ldr     r4, =RAM_21cf460
	mov     r0, r4
	bl      CARDi_ReadFromCache
	cmp     r0, #0x0
	beq     branch_20cd58c
	ldr     r1, [r4]
	mov     r0, r4
	blx     r1
branch_20cd58c: @ 20cd58c :arm
	ldr     r4, =RAM_21cee20
	bl      CARDi_ReadRomIDCore
	bl      CARDi_CheckPulledOutCore
	ldr     r0, [r4]
	mov     r1, #0x0
	str     r1, [r0]
	ldr     r5, [r4, #0x38]
	ldr     r6, [r4, #0x3c]
	bl      OS_DisableInterrupts
	ldr     r1, [r4, #0x114]
	mov     r7, r0
	bic     r0, r1, #0x4c
	str     r0, [r4, #0x114]
	add     r0, r4, #0x10c
	bl      OS_WakeupThread
	ldr     r0, [r4, #0x114]
	tst     r0, #0x10
	beq     branch_20cd5dc
	add     r0, r4, #0x44
	bl      OS_WakeupThreadDirect
branch_20cd5dc: @ 20cd5dc :arm
	mov     r0, r7
	bl      OS_RestoreInterrupts
	cmp     r5, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	mov     r0, r6
	blx     r5
	ldmfd   sp!, {r3-r7,pc}
@ 0x20cd5f8

.pool



.arm
CARDi_ReadRom: @ 20cd600 :arm
	stmfd   sp!, {r4-r10,lr}
	mov     r10, r0
	mov     r9, r1
	mov     r8, r2
	mov     r7, r3
	ldr     r4, [pc, #0xc8] @ [0x20cd6e4] (=RAM_21cf460)
	ldr     r5, [pc, #0xc8] @ [0x20cd6e8] (=RAM_21cee20)
	bl      CARD_CheckEnabled
	bl      OS_DisableInterrupts
	mov     r6, r0
	b       branch_20cd634

branch_20cd62c: @ 20cd62c :arm
	add     r0, r5, #0x10c
	bl      OS_SleepThread
branch_20cd634: @ 20cd634 :arm
	ldr     r0, [r5, #0x114]
	tst     r0, #0x4
	bne     branch_20cd62c
	ldr     r0, [r5, #0x114]
	ldr     r2, [sp, #0x20]
	ldr     r1, [sp, #0x24]
	orr     r3, r0, #0x4
	mov     r0, r6
	str     r3, [r5, #0x114]
	str     r2, [r5, #0x38]
	str     r1, [r5, #0x3c]
	bl      OS_RestoreInterrupts
	ldr     r0, [pc, #0x80] @ [0x20cd6ec] (=RAM_21cf440)
	str     r10, [r5, #0x28]
	ldr     r0, [r0]
	str     r8, [r5, #0x20]
	add     r0, r9, r0
	str     r0, [r5, #0x1c]
	str     r7, [r5, #0x24]
	cmp     r10, #0x3
	bhi     branch_20cd690
	mov     r0, r10
	bl      MI_StopDma
branch_20cd690: @ 20cd690 :arm
	mov     r0, r4
	bl      CARDi_TryReadCardDma
	cmp     r0, #0x0
	beq     branch_20cd6b4
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x0
	ldmnefd sp!, {r4-r10,pc}
	bl      Function_20cd75c
	ldmfd   sp!, {r4-r10,pc}

branch_20cd6b4: @ 20cd6b4 :arm
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x0
	beq     branch_20cd6cc
	ldr     r0, [pc, #0x28] @ [0x20cd6f0] (=CARDi_ReadRomSyncCore)
	bl      CARDi_SetTask
	ldmfd   sp!, {r4-r10,pc}

branch_20cd6cc: @ 20cd6cc :arm
	ldr     r1, [pc, #0x20] @ [0x20cd6f4] (=RAM_21ccc80)
	mov     r0, r5
	ldr     r1, [r1, #0x4]
	str     r1, [r5, #0x104]
	bl      CARDi_ReadRomSyncCore
	ldmfd   sp!, {r4-r10,pc}
@ 0x20cd6e4

.word RAM_21cf460 @ 0x20cd6e4
.word RAM_21cee20 @ 0x20cd6e8
.word RAM_21cf440 @ 0x20cd6ec
.word CARDi_ReadRomSyncCore @ =0x20cd568, 0x20cd6f0
.word RAM_21ccc80 @ 0x20cd6f4



.arm
CARD_Init: @ 20cd6f8 :arm
	stmfd   sp!, {r3,lr}
	ldr     r12, =RAM_21cee20
	ldr     r0, [r12, #0x114]
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}

	mov     r2, #0x0
	ldr     r0, =RAM_21cf440
	sub     r1, r2, #0x1
	mov     r3, #0x1
	str     r3, [r12, #0x114]
	str     r2, [r12, #0x24]
	str     r2, [r12, #0x20]
	str     r2, [r12, #0x1c]
	str     r1, [r12, #0x28]
	str     r2, [r12, #0x38]
	str     r2, [r12, #0x3c]
	str     r2, [r0]
	bl      CARDi_InitCommon
	bl      CARDi_GetRomAccessor
	ldr     r1, =RAM_21cf440
	str     r0, [r1, #0x20]
	bl      CARD_InitPulledOutCallback
	ldmfd   sp!, {r3,pc}
@ 0x20cd754

.pool



.arm
Function_20cd75c: @ 20cd75c :arm
	ldr     r12, [pc, #0x0] @ [0x20cd764] (=CARDi_WaitAsync)
	bx      r12
@ 0x20cd764

.word CARDi_WaitAsync @ 0x20cd764



.arm
CARDi_GetRomAccessor: @ 20cd768 :arm
	ldr     r0, [pc, #0x0] @ [0x20cd770] (=Function_20cd41c)
	bx      lr
@ 0x20cd770

.word Function_20cd41c @ 0x20cd770



.arm
Function_20cd774: @ 20cd774 :arm
	stmfd   sp!, {r3,lr}

	cmp     r0, #0xb
	ldmnefd sp!, {r3,pc}

	cmp     r2, #0x0
	ldmeqfd sp!, {r3,pc}

	ldr     r2, =RAM_21cee20
	ldr     r1, [r2, #0x114]
	ldr     r0, [r2, #0x104]
	bic     r1, r1, #0x20
	str     r1, [r2, #0x114]
	bl      OS_WakeupThreadDirect
	ldmfd   sp!, {r3,pc}
@ 0x20cd7a4

.pool



.arm
Function_20cd7a8: @ 20cd7a8 :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r5, =RAM_21cee20
	mov     r4, #0x0
branch_20cd7b4: @ 20cd7b4 :arm
	bl      OS_DisableInterrupts
	ldr     r1, [r5, #0x114]
	mov     r6, r0
	tst     r1, #0x8
	bne     branch_20cd7dc
branch_20cd7c8: @ 20cd7c8 :arm
	mov     r0, r4
	bl      OS_SleepThread
	ldr     r0, [r5, #0x114]
	tst     r0, #0x8
	beq     branch_20cd7c8
branch_20cd7dc: @ 20cd7dc :arm
	mov     r0, r6
	bl      OS_RestoreInterrupts
	ldr     r1, [r5, #0x40]
	mov     r0, r5
	blx     r1
	b       branch_20cd7b4
@ 0x20cd7f4

.pool



.arm
CARDi_Request: @ 20cd7f8 :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r10, r0
	ldr     r0, [r10, #0x114]
	mov     r9, r1
	str     r2, [sp]
	tst     r0, #0x2
	bne     branch_20cd86c
	ldr     r1, [r10, #0x114]
	mov     r0, #0xb
	orr     r2, r1, #0x2
	mov     r1, #0x1
	str     r2, [r10, #0x114]
	bl      PXI_IsCallbackReady
	cmp     r0, #0x0
	bne     branch_20cd85c
	mov     r6, #0x64
	mov     r5, #0xb
	mov     r4, #0x1
branch_20cd840: @ 20cd840 :arm
	mov     r0, r6
	bl      OS_SpinWait
	mov     r0, r5
	mov     r1, r4
	bl      PXI_IsCallbackReady
	cmp     r0, #0x0
	beq     branch_20cd840
branch_20cd85c: @ 20cd85c :arm
	mov     r0, r10
	mov     r1, #0x0
	mov     r2, #0x1
	bl      CARDi_Request
branch_20cd86c: @ 20cd86c :arm
	ldr     r0, [r10]
	mov     r1, #0x60
	bl      DC_FlushRange
	bl      DC_WaitWriteBufferEmpty
	mov     r7, #0xb
	mov     r6, #0x1
	mov     r5, r7
	mov     r4, r6
	mov     r11, #0x0
branch_20cd890: @ 20cd890 :arm
	str     r9, [r10, #0x4]
	ldr     r0, [r10, #0x114]
	orr     r0, r0, #0x20
	str     r0, [r10, #0x114]
branch_20cd8a0: @ 20cd8a0 :arm
	mov     r0, r7
	mov     r1, r9
	mov     r2, r6
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	blt     branch_20cd8a0
	cmp     r9, #0x0
	bne     branch_20cd8dc
	ldr     r8, [r10]
branch_20cd8c4: @ 20cd8c4 :arm
	mov     r0, r5
	mov     r1, r8
	mov     r2, r4
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	blt     branch_20cd8c4
branch_20cd8dc: @ 20cd8dc :arm
	bl      OS_DisableInterrupts
	ldr     r1, [r10, #0x114]
	mov     r8, r0
	tst     r1, #0x20
	beq     branch_20cd904
branch_20cd8f0: @ 20cd8f0 :arm
	mov     r0, r11
	bl      OS_SleepThread
	ldr     r0, [r10, #0x114]
	tst     r0, #0x20
	bne     branch_20cd8f0
branch_20cd904: @ 20cd904 :arm
	mov     r0, r8
	bl      OS_RestoreInterrupts
	ldr     r0, [r10]
	mov     r1, #0x60
	bl      DC_InvalidateRange
	ldr     r0, [r10]
	ldr     r1, [r0]
	cmp     r1, #0x4
	bne     branch_20cd93c
	ldr     r0, [sp]
	sub     r0, r0, #0x1
	str     r0, [sp]
	cmp     r0, #0x0
	bgt     branch_20cd890
branch_20cd93c: @ 20cd93c :arm
	cmp     r1, #0x0
	moveq   r0, #0x1
	movne   r0, #0x0
	ldmfd   sp!, {r3-r11,pc}
@ 0x20cd94c


.arm
CARD_InitPulledOutCallback: @ 20cd94c :arm
	stmfd   sp!, {r3,lr}

	bl      Function_20c6350
	ldr     r1, =CARDi_PulledOutCallback
	mov     r0, #0xe
	bl      PXI_SetFifoRecvCallback
	ldr     r0, =RAM_21cf680
	mov     r1, #0x0
	str     r1, [r0, #0x4]

	ldmfd   sp!, {r3,pc}
@ 0x20cd970

.pool



.arm
CARDi_PulledOutCallback: @ 20cd978 :arm
	stmfd   sp!, {r3,lr}

	and     r0, r1, #0x3f
	cmp     r0, #0x11
	bne     branch_20cd9c0
	ldr     r1, =RAM_21cf680
	ldr     r0, [r1]
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}

	mov     r0, #0x1
	str     r0, [r1]
	ldr     r1, [r1, #0x4]
	cmp     r1, #0x0
	beq     branch_20cd9b0
	blx     r1
branch_20cd9b0: @ 20cd9b0 :arm
	cmp     r0, #0x0
	ldmeqfd sp!, {r3,pc}

	bl      CARD_TerminateForPulledOut
	ldmfd   sp!, {r3,pc}

branch_20cd9c0: @ 20cd9c0 :arm
	bl      OS_Panic
	ldmfd   sp!, {r3,pc}
@ 0x20cd9c8

.pool



.arm
Function_20cd9cc: @ 20cd9cc :arm
	ldr     r0, =RAM_21cf680
	ldr     r0, [r0]
	bx      lr
@ 0x20cd9d8

.pool



.arm
CARD_TerminateForPulledOut: @ 20cd9dc :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r0, #0x0
	mov     r5, #0x1
	bl      MI_StopDma
	mov     r0, r5
	bl      MI_StopDma
	mov     r0, #0x2
	bl      MI_StopDma
	mov     r0, #0x3
	bl      MI_StopDma
	ldr     r0, =RAM_27fffa8
	ldrh    r0, [r0]
	and     r0, r0, #0x8000
	movs    r0, r0, asr #15
	beq     branch_20cda44
	bl      PM_ForceToPowerOff
	cmp     r0, #0x4
	bne     branch_20cda3c
	ldr     r4, =0xa3a47
branch_20cda28: @ 20cda28 :arm
	mov     r0, r4
	bl      OS_SpinWait
	bl      PM_ForceToPowerOff
	cmp     r0, #0x4
	beq     branch_20cda28
branch_20cda3c: @ 20cda3c :arm
	cmp     r0, #0x0
	moveq   r5, #0x0
branch_20cda44: @ 20cda44 :arm
	cmp     r5, #0x0
	beq     branch_20cda58
	mov     r0, #0x1
	mov     r1, r0
	bl      CARDi_SendtoPxi
branch_20cda58: @ 20cda58 :arm
	bl      OS_Panic
	ldmfd   sp!, {r3-r5,pc}
@ 0x20cda60

.pool



.arm
CARDi_CheckPulledOutCore: @ 20cda68 :arm
	stmfd   sp!, {r3,r4,lr}
	sub     sp, sp, #0x4

	ldr     r2, =RAM_27ffc10
	ldrh    r1, [r2]
	cmp     r1, #0x0
	subeq   r1, r2, #0x410
	subne   r1, r2, #0x10
	ldr     r1, [r1]
	str     r1, [sp]
	ldr     r1, [sp]
	cmp     r0, r1
	addeq   sp, sp, #0x4
	ldmeqfd sp!, {r3,r4,pc}

	bl      OS_DisableInterrupts
	mov     r4, r0
	mov     r0, #0xe
	mov     r1, #0x11
	mov     r2, #0x0
	bl      CARDi_PulledOutCallback
	mov     r0, r4
	bl      OS_RestoreInterrupts
	add     sp, sp, #0x4
	ldmfd   sp!, {r3,r4,pc}
@ 0x20cdac4

.pool



.arm
CARDi_SendtoPxi: @ 20cdac8 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r1, r7
	mov     r0, #0xe
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	mov     r5, #0xe
	mov     r4, #0x0
branch_20cdaf4: @ 20cdaf4 :arm
	mov     r0, r6
	blx     Bios_WaitByLoop
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	bne     branch_20cdaf4
	ldmfd   sp!, {r3-r7,pc}
@ 0x20cdb18

