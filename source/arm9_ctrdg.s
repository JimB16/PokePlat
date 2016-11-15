

.arm
Function_20d0888: @ 20d0888 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, [pc, #0x20] @ [0x20d08b4] (=RAM_21d01c4)
	mov     r3, #0x0
	ldr     r2, [pc, #0x1c] @ [0x20d08b8] (=0x5000001)
	add     r0, sp, #0x0
	str     r3, [sp]
	blx     Bios_CpuSet
	bl      OS_GetLockID
	ldr     r1, [pc, #0xc] @ [0x20d08bc] (=RAM_21d01c0)
	strh    r0, [r1, #0x6]
	ldmfd   sp!, {r3,pc}
@ 0x20d08b4

.word RAM_21d01c4 @ 0x20d08b4
.word 0x5000001 @ 0x20d08b8
.word RAM_21d01c0 @ 0x20d08bc



.arm
Function_20d08c0: @ 20d08c0 :arm
	stmfd   sp!, {r3,lr}
	bl      CTRDG_IsExisting
	cmp     r0, #0x0
	beq     branch_20d08e0
	bl      CTRDGi_IsAgbCartridgeAtInit
	cmp     r0, #0x0
	movne   r0, #0x1
	ldmnefd sp!, {r3,pc}
branch_20d08e0: @ 20d08e0 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x20d08e8


.arm
CTRDG_IsOptionCartridge: @ 20d08e8 :arm
	stmfd   sp!, {r3,lr}
	bl      CTRDG_IsExisting
	cmp     r0, #0x0
	beq     branch_20d0908
	bl      CTRDGi_IsAgbCartridgeAtInit
	cmp     r0, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r3,pc}
branch_20d0908: @ 20d0908 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x20d0910


.arm
CTRDGi_IsAgbCartridgeAtInit: @ 20d0910 :arm
	ldr     r0, [pc, #0xc] @ [0x20d0924] (=RAM_27ffc30)
	ldrb    r0, [r0, #0x5]
	mov     r0, r0, lsl #31
	mov     r0, r0, lsr #31
	bx      lr
@ 0x20d0924

.word RAM_27ffc30 @ 0x20d0924



.arm
Function_20d0928: @ 20d0928 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, #0x0
	bl      CTRDG_IsExisting
	cmp     r0, #0x0
	beq     branch_20d0944
	bl      Function_20d094c
	mov     r4, r0
branch_20d0944: @ 20d0944 :arm
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x20d094c


.arm
Function_20d094c: @ 20d094c :arm
	stmfd   sp!, {r4,lr}
	mov     r4, #0x0
	bl      CTRDGi_IsAgbCartridgeAtInit
	cmp     r0, #0x0
	ldrne   r0, [pc, #0x8] @ [0x20d096c] (=RAM_27ffc30)
	ldrne   r4, [r0, #0x8]
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x20d096c

.word RAM_27ffc30 @ 0x20d096c



.arm
Function_20d0970: @ 20d0970 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, #0x0
	bl      CTRDG_IsExisting
	cmp     r0, #0x0
	beq     branch_20d098c
	bl      Function_20d0994
	mov     r4, r0
branch_20d098c: @ 20d098c :arm
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x20d0994


.arm
Function_20d0994: @ 20d0994 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, #0x0
	bl      CTRDGi_IsAgbCartridgeAtInit
	cmp     r0, #0x0
	ldrne   r0, [pc, #0x8] @ [0x20d09b4] (=RAM_27ffc30)
	ldrneh  r4, [r0, #0x6]
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x20d09b4

.word RAM_27ffc30 @ 0x20d09b4



.arm
CTRDG_IsPulledOut: @ 20d09b8 :arm
	stmfd   sp!, {r3,lr}
	ldr     r2, [pc, #0x38] @ [0x20d09fc] (=RAM_27ffc30)
	ldr     r0, [pc, #0x38] @ [0x20d0a00] (=0xffff)
	ldrh    r1, [r2]
	cmp     r1, r0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,pc}
	ldrb    r0, [r2, #0x5]
	mov     r0, r0, lsl #30
	movs    r0, r0, lsr #31
	bne     branch_20d09e8
	bl      CTRDG_IsExisting
branch_20d09e8: @ 20d09e8 :arm
	ldr     r0, [pc, #0xc] @ [0x20d09fc] (=RAM_27ffc30)
	ldrb    r0, [r0, #0x5]
	mov     r0, r0, lsl #30
	mov     r0, r0, lsr #31
	ldmfd   sp!, {r3,pc}
@ 0x20d09fc

.word RAM_27ffc30 @ 0x20d09fc
.word 0xffff @ 0x20d0a00



.arm
CTRDG_IsExisting: @ 20d0a04 :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x10
	ldr     r2, [pc, #0xf0] @ [0x20d0b04] (=RAM_27ffc30)
	mov     r4, #0x1
	ldrh    r1, [r2]
	rsb     r0, r4, #1, 16 @ #0x10000
	cmp     r1, r0
	addeq   sp, sp, #0x10
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	ldrb    r0, [r2, #0x5]
	mov     r0, r0, lsl #30
	mov     r0, r0, lsr #31
	cmp     r0, #0x1
	addeq   sp, sp, #0x10
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	ldr     r0, [pc, #0xb8] @ [0x20d0b08] (=RAM_21d01c0)
	add     r1, sp, #0x8
	ldrh    r0, [r0, #0x6]
	bl      CTRDGi_LockByProcessor
	add     r0, sp, #0x0
	bl      CTRDGi_ChangeLatestAccessCycle
	mov     r0, #2, 6 @ #0x8000000
	ldrb    r2, [r0, #0xb2]
	cmp     r2, #0x96
	bne     branch_20d0a84
	ldr     r1, [pc, #0x8c] @ [0x20d0b04] (=RAM_27ffc30)
	ldrh    r0, [r0, #0xbe]
	ldrh    r1, [r1]
	cmp     r1, r0
	bne     branch_20d0acc
.arm
branch_20d0a84: @ 20d0a84 :arm
	cmp     r2, #0x96
	beq     branch_20d0aa4
	ldr     r1, [pc, #0x70] @ [0x20d0b04] (=RAM_27ffc30)
	ldr     r0, [pc, #0x74] @ [0x20d0b0c] (=0x801fffe)
	ldrh    r1, [r1]
	ldrh    r0, [r0]
	cmp     r1, r0
	bne     branch_20d0acc
.arm
branch_20d0aa4: @ 20d0aa4 :arm
	ldr     r2, [pc, #0x58] @ [0x20d0b04] (=RAM_27ffc30)
	mov     r0, #2, 6 @ #0x8000000
	ldr     r1, [r2, #0x8]
	ldr     r0, [r0, #0xac]
	cmp     r1, r0
	beq     branch_20d0ae0
	ldrb    r0, [r2, #0x5]
	mov     r0, r0, lsl #31
	movs    r0, r0, lsr #31
	beq     branch_20d0ae0
.arm
branch_20d0acc: @ 20d0acc :arm
	ldr     r1, [pc, #0x30] @ [0x20d0b04] (=RAM_27ffc30)
	mov     r4, #0x0
	ldrb    r0, [r1, #0x5]
	orr     r0, r0, #0x2
	strb    r0, [r1, #0x5]
.arm
branch_20d0ae0: @ 20d0ae0 :arm
	add     r0, sp, #0x0
	bl      CTRDGi_RestoreAccessCycle
	ldr     r0, [pc, #0x18] @ [0x20d0b08] (=RAM_21d01c0)
	add     r1, sp, #0x8
	ldrh    r0, [r0, #0x6]
	bl      CTRDGi_UnlockByProcessor
	mov     r0, r4
	add     sp, sp, #0x10
	ldmfd   sp!, {r4,pc}
@ 0x20d0b04

.word RAM_27ffc30 @ 0x20d0b04
.word RAM_21d01c0 @ 0x20d0b08
.word 0x801fffe @ 0x20d0b0c



.arm
CTRDGi_ChangeLatestAccessCycle: @ 20d0b10 :arm
	ldr     r2, [pc, #0x3c] @ [0x20d0b54] (=REG_EXMEMCNT)
	ldrh    r1, [r2]
	and     r1, r1, #0xc
	mov     r1, r1, asr #2
	str     r1, [r0]
	ldrh    r1, [r2]
	and     r1, r1, #0x10
	mov     r1, r1, asr #4
	str     r1, [r0, #0x4]
	ldrh    r0, [r2]
	bic     r0, r0, #0xc
	orr     r0, r0, #0xc
	strh    r0, [r2]
	ldrh    r0, [r2]
	bic     r0, r0, #0x10
	strh    r0, [r2]
	bx      lr
@ 0x20d0b54

.word REG_EXMEMCNT @ 0x20d0b54



.arm
CTRDGi_RestoreAccessCycle: @ 20d0b58 :arm
	ldr     r3, [pc, #0x28] @ [0x20d0b88] (=REG_EXMEMCNT)
	ldr     r2, [r0]
	ldrh    r1, [r3]
	bic     r1, r1, #0xc
	orr     r1, r1, r2, lsl #2
	strh    r1, [r3]
	ldrh    r1, [r3]
	ldr     r2, [r0, #0x4]
	bic     r0, r1, #0x10
	orr     r0, r0, r2, lsl #4
	strh    r0, [r3]
	bx      lr
@ 0x20d0b88

.word REG_EXMEMCNT @ 0x20d0b88



.arm
CTRDGi_LockByProcessor: @ 20d0b8c :arm
	stmfd   sp!, {r3-r7,lr}
	ldr     r5, [pc, #0x4c] @ [0x20d0be4] (=RAM_27fffe8)
	mov     r7, r0
	mov     r6, r1
	mov     r4, #0x1
branch_20d0ba0: @ 20d0ba0 :arm
	bl      OS_DisableInterrupts
	str     r0, [r6, #0x4]
	mov     r0, r5
	bl      OS_ReadOwnerOfLockWord
	ands    r0, r0, #0x40
	str     r0, [r6]
	ldmnefd sp!, {r3-r7,pc}
	mov     r0, r7
	bl      OS_TryLockCartridge
	cmp     r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r0, [r6, #0x4]
	bl      OS_RestoreInterrupts
	mov     r0, r4
	blx     Bios_WaitByLoop
	b       branch_20d0ba0
@ 0x20d0be0

	ldmfd   sp!, {r3-r7,pc}


.word RAM_27fffe8 @ 0x20d0be4



.arm
CTRDGi_UnlockByProcessor: @ 20d0be8 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r1
	ldr     r1, [r4]
	cmp     r1, #0x0
	bne     branch_20d0c00
	bl      Call_OS_UnlockCartridge
branch_20d0c00: @ 20d0c00 :arm
	ldr     r0, [r4, #0x4]
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r4,pc}
@ 0x20d0c0c


.arm
CTRDGi_SendtoPxi: @ 20d0c0c :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r1, r7
	mov     r0, #0xd
	mov     r2, #0x0
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	mov     r6, #0x1
	mov     r5, #0xd
	mov     r4, #0x0
.arm
branch_20d0c38: @ 20d0c38 :arm
	mov     r0, r6
	blx     Bios_WaitByLoop
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	bl      PXI_SendWordByFifo
	cmp     r0, #0x0
	bne     branch_20d0c38
	ldmfd   sp!, {r3-r7,pc}
@ 0x20d0c5c


.arm
Function_20d0c5c: @ 20d0c5c :arm
	stmfd   sp!, {r3,lr}
	mov     lr, r1
	mov     r3, r2
	cmp     lr, #2, 6 @ #0x8000000
	bcc     branch_20d0c94
	ldr     r2, [pc, #0x38] @ [0x20d0cb0] (=0xa010000)
	cmp     lr, r2
	bcs     branch_20d0c94
	mov     r12, #0x1
	mov     r2, r0
	mov     r0, #0x0
	str     r12, [sp]
	bl      Function_20d0d04
	ldmfd   sp!, {r3,pc}
@ 0x20d0c94

.arm
branch_20d0c94: @ 20d0c94 :arm
	mov     r12, #0x1
	mov     r1, r0
	mov     r2, lr
	mov     r0, #0x0
	str     r12, [sp]
	bl      Function_20d0d04
	ldmfd   sp!, {r3,pc}
@ 0x20d0cb0

.word 0xa010000 @ 0x20d0cb0
.arm
Function_20d0cb4: @ 20d0cb4 :arm
	stmfd   sp!, {r3,lr}
	mov     lr, r1
	mov     r3, r2
	mov     r12, #0x11
	mov     r1, r0
	mov     r2, lr
	mov     r0, #0x0
	str     r12, [sp]
	bl      Function_20d0d04
	ldmfd   sp!, {r3,pc}
@ 0x20d0cdc

.arm
Function_20d0cdc: @ 20d0cdc :arm
	stmfd   sp!, {r3,lr}
	mov     lr, r1
	mov     r3, r2
	mov     r12, #0x21
	mov     r1, r0
	mov     r2, lr
	mov     r0, #0x0
	str     r12, [sp]
	bl      Function_20d0d04
	ldmfd   sp!, {r3,pc}
@ 0x20d0d04

.arm
Function_20d0d04: @ 20d0d04 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bl      CTRDG_IsExisting
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	bl      Function_20d0f90
	ldr     r0, [pc, #0x108] @ [0x20d0e3c] (=RAM_21d01c0)
	ldrh    r0, [r0, #0x6]
	bl      OS_LockCartridge
	ldr     r0, [sp, #0x18]
	tst     r0, #0x1
	bne     branch_20d0d58
	mov     r0, r7
	bl      MI_StopDma
	mov     r0, r5
	mov     r1, r4
	bl      DC_FlushRange
.arm
branch_20d0d58: @ 20d0d58 :arm
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x11
	bhi     branch_20d0d88
	cmp     r0, #0x10
	bcc     branch_20d0d7c
	beq     branch_20d0da4
	cmp     r0, #0x11
	beq     branch_20d0dd4
	b       branch_20d0e1c
@ 0x20d0d7c

.arm
branch_20d0d7c: @ 20d0d7c :arm
	cmp     r0, #0x1
	beq     branch_20d0dfc
	b       branch_20d0e1c
@ 0x20d0d88

.arm
branch_20d0d88: @ 20d0d88 :arm
	cmp     r0, #0x20
	bhi     branch_20d0d98
	beq     branch_20d0dbc
	b       branch_20d0e1c
@ 0x20d0d98

.arm
branch_20d0d98: @ 20d0d98 :arm
	cmp     r0, #0x21
	beq     branch_20d0de8
	b       branch_20d0e1c
@ 0x20d0da4

.arm
branch_20d0da4: @ 20d0da4 :arm
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	mov     r3, r4
	bl      MI_DmaCopy16
	b       branch_20d0e1c
@ 0x20d0dbc

.arm
branch_20d0dbc: @ 20d0dbc :arm
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	mov     r3, r4
	bl      MI_DmaCopy32
	b       branch_20d0e1c
@ 0x20d0dd4

.arm
branch_20d0dd4: @ 20d0dd4 :arm
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      MIi_CpuCopy16
	b       branch_20d0e1c
@ 0x20d0de8

.arm
branch_20d0de8: @ 20d0de8 :arm
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      MI_CpuCopy32
	b       branch_20d0e1c
@ 0x20d0dfc

.arm
branch_20d0dfc: @ 20d0dfc :arm
	cmp     r4, #0x0
	mov     r1, #0x0
	bls     branch_20d0e1c
.arm
branch_20d0e08: @ 20d0e08 :arm
	ldrb    r0, [r6], #0x1
	add     r1, r1, #0x1
	cmp     r1, r4
	strb    r0, [r5], #0x1
	bcc     branch_20d0e08
.arm
branch_20d0e1c: @ 20d0e1c :arm
	ldr     r0, [pc, #0x18] @ [0x20d0e3c] (=RAM_21d01c0)
	ldrh    r0, [r0, #0x6]
	bl      Call_OS_UnlockCartridge
	bl      CTRDG_IsExisting
	cmp     r0, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x20d0e3c

.word RAM_21d01c0 @ 0x20d0e3c
.arm
Function_20d0e40: @ 20d0e40 :arm
	ldr     r12, [pc, #0xc] @ [0x20d0e54] (=0x20d0e58)
	mov     r2, r1
	mov     r1, #0x0
	mov     r3, #0x41
	bx      r12
@ 0x20d0e54

.word Function_20d0e58 @ 0x20d0e54



.arm
Function_20d0e58: @ 20d0e58 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bl      CTRDG_IsExisting
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	bl      Function_20d0f90
	ldr     r0, [pc, #0xac] @ [0x20d0f34] (=RAM_21d01c0)
	ldrh    r0, [r0, #0x6]
	bl      OS_LockCartridge
	cmp     r4, #0x21
	bhi     branch_20d0ec4
	bcs     branch_20d0ef0
	cmp     r4, #0x11
	bhi     branch_20d0eb8
	cmp     r4, #0x10
	bcc     branch_20d0f14
	beq     branch_20d0f10
	cmp     r4, #0x11
	beq     branch_20d0ee0
	b       branch_20d0f14
@ 0x20d0eb8

.arm
branch_20d0eb8: @ 20d0eb8 :arm
	cmp     r4, #0x20
	streqh  r6, [r7]
	b       branch_20d0f14
@ 0x20d0ec4

.arm
branch_20d0ec4: @ 20d0ec4 :arm
	cmp     r4, #0x40
	bhi     branch_20d0ed4
	streq   r6, [r7]
	b       branch_20d0f14
@ 0x20d0ed4

.arm
branch_20d0ed4: @ 20d0ed4 :arm
	cmp     r4, #0x41
	beq     branch_20d0f00
	b       branch_20d0f14
@ 0x20d0ee0

.arm
branch_20d0ee0: @ 20d0ee0 :arm
	cmp     r5, #0x0
	ldrneb  r0, [r7]
	strneb  r0, [r5]
	b       branch_20d0f14
@ 0x20d0ef0

.arm
branch_20d0ef0: @ 20d0ef0 :arm
	cmp     r5, #0x0
	ldrneh  r0, [r7]
	strneh  r0, [r5]
	b       branch_20d0f14
@ 0x20d0f00

.arm
branch_20d0f00: @ 20d0f00 :arm
	cmp     r5, #0x0
	ldrne   r0, [r7]
	strne   r0, [r5]
	b       branch_20d0f14
@ 0x20d0f10

.arm
branch_20d0f10: @ 20d0f10 :arm
	strb    r6, [r7]
.arm
branch_20d0f14: @ 20d0f14 :arm
	ldr     r0, [pc, #0x18] @ [0x20d0f34] (=RAM_21d01c0)
	ldrh    r0, [r0, #0x6]
	bl      Call_OS_UnlockCartridge
	bl      CTRDG_IsExisting
	cmp     r0, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x20d0f34

.word RAM_21d01c0 @ 0x20d0f34



.arm
Function_20d0f38: @ 20d0f38 :arm
	ldr     r0, [pc, #0x4] @ [0x20d0f44] (=RAM_21d01c0)
	ldr     r0, [r0]
	bx      lr
@ 0x20d0f44

.word RAM_21d01c0 @ 0x20d0f44



.arm
CTRDG_Enable: @ 20d0f48 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	bl      OS_DisableInterrupts
	ldr     r1, [pc, #0x30] @ [0x20d0f8c] (=RAM_21d01c0)
	mov     r4, r0
	str     r5, [r1]
	bl      CTRDG_IsOptionCartridge
	cmp     r0, #0x0
	bne     branch_20d0f80
	cmp     r5, #0x0
	movne   r1, #1, 20 @ #0x1000
	moveq   r1, #5, 20 @ #0x5000
	mov     r0, #15, 20 @ #0xf000
	bl      OS_SetDPermissionsForProtectionRegion
branch_20d0f80: @ 20d0f80 :arm
	mov     r0, r4
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r3-r5,pc}
@ 0x20d0f8c

.word RAM_21d01c0 @ 0x20d0f8c



.arm
Function_20d0f90: @ 20d0f90 :arm
	stmfd   sp!, {r3,lr}
	bl      CTRDG_IsOptionCartridge
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}
	bl      Function_20d0f38
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}
	bl      OS_Panic
	ldmfd   sp!, {r3,pc}
@ 0x20d0fb4


.arm
CTRDG_Init: @ 20d0fb4 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r0, [pc, #0x94] @ [0x20d1054] (=RAM_21d01e0)
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	ldmnefd sp!, {r3-r5,pc}
	mov     r1, #0x1
	str     r1, [r0, #0x8]
	bl      Function_20d0888
	ldr     r0, [pc, #0x78] @ [0x20d1054] (=RAM_21d01e0)
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	bl      Function_20c6350
	mov     r5, #0xd
	mov     r4, #0x1
branch_20d0fec: @ 20d0fec :arm
	mov     r0, r5
	mov     r1, r4
	bl      PXI_IsCallbackReady
	cmp     r0, #0x0
	beq     branch_20d0fec
	ldr     r1, [pc, #0x50] @ [0x20d1058] (=Function_20d125c)
	mov     r0, #0xd
	bl      PXI_SetFifoRecvCallback
	bl      CTRDGi_InitModuleInfo
	mov     r0, #0xd
	mov     r1, #0x0
	bl      PXI_SetFifoRecvCallback
	ldr     r1, [pc, #0x38] @ [0x20d105c] (=Function_20d1288)
	mov     r0, #0xd
	bl      PXI_SetFifoRecvCallback
	ldr     r1, [pc, #0x24] @ [0x20d1054] (=RAM_21d01e0)
	mov     r2, #0x0
	ldr     r0, [pc, #0x28] @ [0x20d1060] (=RAM_21d02c0)
	str     r2, [r1, #0x18]
	bl      CTRDGi_InitTaskThread
	ldr     r1, [pc, #0x20] @ [0x20d1064] (=Function_20d12f8)
	mov     r0, #0x11
	bl      PXI_SetFifoRecvCallback
	mov     r0, #0x0
	bl      CTRDG_Enable
	ldmfd   sp!, {r3-r5,pc}
@ 0x20d1054

.word RAM_21d01e0 @ 0x20d1054
.word Function_20d125c @ 0x20d1058
.word Function_20d1288 @ 0x20d105c
.word RAM_21d02c0 @ 0x20d1060
.word Function_20d12f8 @ 0x20d1064



.arm
CTRDGi_InitModuleInfo: @ 20d1068 :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #0x10
	ldr     r0, [pc, #0x1b8] @ [0x20d1230] (=RAM_21d01e0)
	ldr     r1, [r0]
	cmp     r1, #0x0
	addne   sp, sp, #0x10
	ldmnefd sp!, {r3-r7,pc}
	ldr     r1, [pc, #0x1a8] @ [0x20d1234] (=HALT_CR)
	mov     r2, #0x1
	ldrh    r1, [r1]
	str     r2, [r0]
	tst     r1, #0x1
	addeq   sp, sp, #0x10
	ldmeqfd sp!, {r3-r7,pc}
	mov     r0, #1, 14 @ #0x40000
	bl      OS_SetIrqMask
	ldr     r3, [pc, #0x188] @ [0x20d1238] (=REG_IME)
	mov     r2, #0x1
	ldrh    r5, [r3]
	ldr     r1, [pc, #0x180] @ [0x20d123c] (=RAM_21d01c4)
	mov     r4, r0
	strh    r2, [r3]
	ldrh    r0, [r1, #0x2]
	add     r1, sp, #0x8
	bl      CTRDGi_LockByProcessor
	ldr     r1, [pc, #0x16c] @ [0x20d1240] (=REG_EXMEMCNT)
	add     r0, sp, #0x0
	ldrh    r1, [r1]
	and     r1, r1, #ARM7_MAIN_RAM_PRIORITY
	mov     r6, r1, asr #15
	bl      CTRDGi_ChangeLatestAccessCycle
	ldr     r3, [pc, #0x154] @ [0x20d1240] (=REG_EXMEMCNT)
	ldr     r0, [pc, #0x154] @ [0x20d1244] (=RAM_21d0200)
	ldrh    r2, [r3]
	add     r0, r0, #0x80
	mov     r1, #0x40
	bic     r2, r2, #ARM7_MAIN_RAM_PRIORITY
	strh    r2, [r3]
	bl      DC_InvalidateRange
	ldr     r2, [pc, #0x138] @ [0x20d1244] (=RAM_21d0200)
	ldr     r1, [pc, #0x138] @ [0x20d1248] (=0x8000080)
	mov     r0, #0x1
	mov     r3, #0x40
	add     r2, r2, #0x80
	bl      MI_DmaCopy16

	ldr     r2, [pc, #0x11c] @ [0x20d1240] (=REG_EXMEMCNT)
	add     r0, sp, #0x0
	ldrh    r1, [r2]
	bic     r1, r1, #ARM7_MAIN_RAM_PRIORITY
	orr     r1, r1, r6, lsl #15
	strh    r1, [r2]

	bl      CTRDGi_RestoreAccessCycle
	ldr     r0, [pc, #0xfc] @ [0x20d123c] (=RAM_21d01c4)
	add     r1, sp, #0x8
	ldrh    r0, [r0, #0x2]
	bl      CTRDGi_UnlockByProcessor
	ldr     r1, [pc, #0xfc] @ [0x20d124c] (=RAM_27fff9b)
	ldrb    r0, [r1]
	cmp     r0, #0x0
	bne     branch_20d1164
	ldrb    r0, [r1, #-0x1]
	cmp     r0, #0x0
	bne     branch_20d11c8
branch_20d1164: @ 20d1164 :arm
	ldr     r3, [pc, #0xd8] @ [0x20d1244] (=RAM_21d0200)
	ldr     r6, [pc, #0xe0] @ [0x20d1250] (=RAM_27ffc30)
	ldrh    r0, [r3, #0xbe]
	mov     r2, #0x0
	strh    r0, [r6]
	b       branch_20d1190

branch_20d117c: @ 20d117c :arm
	add     r0, r3, r2
	ldrb    r1, [r0, #0xb5]
	add     r0, r6, r2
	add     r2, r2, #0x1
	strb    r1, [r0, #0x2]
branch_20d1190: @ 20d1190 :arm
	cmp     r2, #0x3
	blt     branch_20d117c
	ldrh    r0, [r3, #0xb0]
	strh    r0, [r6, #0x6]
	ldr     r0, [r3, #0xac]
	str     r0, [r6, #0x8]
	bl      CTRDG_IsExisting
	cmp     r0, #0x0
	movne   r2, #0x1
	ldr     r1, [pc, #0x90] @ [0x20d124c] (=RAM_27fff9b)
	moveq   r2, #0x0
	mov     r0, #0x1
	strb    r2, [r1]
	strb    r0, [r1, #-0x1]
.arm
branch_20d11c8: @ 20d11c8 :arm
	ldr     r0, [pc, #0x84] @ [0x20d1254] (=0xffff0020)
	ldr     r1, [pc, #0x84] @ [0x20d1258] (=RAM_21d0204)
	mov     r2, #0x9c
	bl      MI_CpuCopy32
	bl      DC_FlushAll
	ldr     r0, [pc, #0x60] @ [0x20d1244] (=RAM_21d0200)
	add     r0, r0, #254, 8 @ #0xfe000000
	mov     r0, r0, lsr #5
	mov     r0, r0, lsl #6
	orr     r0, r0, #0x1
	bl      CTRDGi_SendtoPxi
	mov     r7, #0x1
	ldr     r6, [pc, #0x3c] @ [0x20d123c] (=RAM_21d01c4)
	b       branch_20d1208
@ 0x20d1200

.arm
branch_20d1200: @ 20d1200 :arm
	mov     r0, r7
	blx     Bios_WaitByLoop
.arm
branch_20d1208: @ 20d1208 :arm
	ldrh    r0, [r6]
	cmp     r0, #0x1
	bne     branch_20d1200
	ldr     r2, [pc, #0x1c] @ [0x20d1238] (=REG_IME)
	mov     r0, r4
	ldrh    r1, [r2]
	strh    r5, [r2]
	bl      OS_SetIrqMask
	add     sp, sp, #0x10
	ldmfd   sp!, {r3-r7,pc}
@ 0x20d1230

.word RAM_21d01e0 @ 0x20d1230
.word HALT_CR @ 0x20d1234
.word REG_IME @ 0x20d1238
.word RAM_21d01c4 @ 0x20d123c
.word REG_EXMEMCNT @ 0x20d1240
.word RAM_21d0200 @ 0x20d1244
.word 0x8000080 @ 0x20d1248
.word RAM_27fff9b @ 0x20d124c
.word RAM_27ffc30 @ 0x20d1250
.word 0xffff0020 @ 0x20d1254
.word RAM_21d0204 @ 0x20d1258



.arm
Function_20d125c: @ 20d125c :arm
	stmfd   sp!, {r3,lr}
	and     r0, r1, #0x3f
	cmp     r0, #0x1
	bne     branch_20d127c
	ldr     r0, [pc, #0x10] @ [0x20d1284] (=RAM_21d01c4)
	mov     r1, #0x1
	strh    r1, [r0]
	ldmfd   sp!, {r3,pc}
@ 0x20d127c

.arm
branch_20d127c: @ 20d127c :arm
	bl      OS_Panic
	ldmfd   sp!, {r3,pc}
@ 0x20d1284

.word RAM_21d01c4 @ 0x20d1284
.arm
Function_20d1288: @ 20d1288 :arm
	stmfd   sp!, {r3,lr}
	and     r0, r1, #0x3f
	cmp     r0, #0x11
	bne     branch_20d12d8
	ldr     r0, [pc, #0x40] @ [0x20d12e0] (=RAM_21d01e0)
	ldr     r1, [r0, #0xc]
	cmp     r1, #0x0
	ldmnefd sp!, {r3,pc}
	ldr     r1, [r0, #0x18]
	mov     r0, #0x0
	cmp     r1, #0x0
	beq     branch_20d12bc
	blx     r1
.arm
branch_20d12bc: @ 20d12bc :arm
	cmp     r0, #0x0
	beq     branch_20d12c8
	bl      Function_20d12e4
.arm
branch_20d12c8: @ 20d12c8 :arm
	ldr     r0, [pc, #0x10] @ [0x20d12e0] (=RAM_21d01e0)
	mov     r1, #0x1
	str     r1, [r0, #0xc]
	ldmfd   sp!, {r3,pc}
@ 0x20d12d8

.arm
branch_20d12d8: @ 20d12d8 :arm
	bl      OS_Panic
	ldmfd   sp!, {r3,pc}
@ 0x20d12e0

.word RAM_21d01e0 @ 0x20d12e0



.arm
Function_20d12e4: @ 20d12e4 :arm
	stmfd   sp!, {r3,lr}
	mov     r0, #0x2
	bl      CTRDGi_SendtoPxi
	bl      OS_Panic
	ldmfd   sp!, {r3,pc}
@ 0x20d12f8


.arm
Function_20d12f8: @ 20d12f8 :arm
	ldr     r0, [pc, #0x8] @ [0x20d1308] (=RAM_21d01e0)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	bx      lr
@ 0x20d1308

.word RAM_21d01e0 @ 0x20d1308



.arm
Function_20d130c: @ 20d130c :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	cmp     r7, #0x1
	mov     r0, #0x1
	bhi     branch_20d145c
	bl      OS_GetLockID
	ldr     r1, [pc, #0x14c] @ [0x20d1478] (=RAM_21d03ac)
	strh    r0, [r1]
	ldrh    r0, [r1]
	bl      OS_LockCartridge
	ldr     r4, [pc, #0x140] @ [0x20d147c] (=REG_EXMEMCNT)
	ldr     r1, [pc, #0x140] @ [0x20d1480] (=Unknown_20fe53c)
	ldrh    r3, [r4]
	ldrh    r2, [r4]
	ldr     r0, [pc, #0x138] @ [0x20d1484] (=0x210148c)
	and     r6, r3, #0x3
	bic     r2, r2, #0x3
	orr     r2, r2, #0x3
	strh    r2, [r4]
	str     r1, [r0]
	bl      Function_20d14e8
	ldr     r2, [pc, #0x114] @ [0x20d147c] (=REG_EXMEMCNT)
	mov     r4, r0
	ldrh    r1, [r2]
	cmp     r7, #0x0
	ldreq   r5, [pc, #0x110] @ [0x20d1488] (=Unknown_20fe54c)
	bic     r1, r1, #0x3
	orr     r1, r1, r6
	cmp     r7, #0x1
	ldr     r0, [pc, #0xf0] @ [0x20d1478] (=RAM_21d03ac)
	strh    r1, [r2]
	ldrh    r0, [r0]
	ldreq   r5, [pc, #0xf8] @ [0x20d148c] (=Unknown_20fe540)
	bl      OS_UnlockCartridge
	ldr     r3, [r5]
	mov     r0, #0x1
	ldrh    r1, [r3, #0x38]
	cmp     r1, #0x0
	beq     branch_20d13cc
	and     r2, r4, #0xff
branch_20d13ac: @ 20d13ac :arm
	ldrh    r1, [r3, #0x38]
	cmp     r2, r1
	moveq   r0, #0x0
	beq     branch_20d13cc
	ldr     r3, [r5, #0x4]!
	ldrh    r1, [r3, #0x38]
	cmp     r1, #0x0
	bne     branch_20d13ac
.arm
branch_20d13cc: @ 20d13cc :arm
	ldr     r2, [r3]
	ldr     r1, [pc, #0xb8] @ [0x20d1490] (=RAM_21d03b0)
	ldr     r3, [pc, #0xb8] @ [0x20d1494] (=RAM_21d03c4)
	str     r2, [r1]
	ldr     r1, [r5]
	ldr     r2, [pc, #0xb0] @ [0x20d1498] (=RAM_21d03bc)
	ldr     r4, [r1, #0x4]
	ldr     r1, [pc, #0xac] @ [0x20d149c] (=RAM_21d03b4)
	str     r4, [r3]
	ldr     r3, [r5]
	ldr     r6, [pc, #0xa4] @ [0x20d14a0] (=RAM_21d03b8)
	ldr     r3, [r3, #0x8]
	ldr     r4, [pc, #0xa0] @ [0x20d14a4] (=RAM_21d03c0)
	str     r3, [r2]
	ldr     r2, [r5]
	ldr     r3, [pc, #0x98] @ [0x20d14a8] (=RAM_21d03dc)
	ldr     r7, [r2, #0xc]
	ldr     r2, [pc, #0x6c] @ [0x20d1484] (=0x210148c)
	str     r7, [r1]
	ldr     r7, [r5]
	ldr     r1, [pc, #0x88] @ [0x20d14ac] (=0x2101488)
	ldr     r7, [r7, #0x10]
	str     r7, [r6]
	ldr     r6, [r5]
	ldr     r6, [r6, #0x14]
	str     r6, [r4]
	ldr     r4, [r5]
	ldr     r4, [r4, #0x18]
	str     r4, [r3]
	ldr     r3, [r5]
	ldr     r3, [r3, #0x1c]
	str     r3, [r2]
	ldr     r2, [r5]
	add     r2, r2, #0x20
	str     r2, [r1]
	ldmfd   sp!, {r3-r7,pc}
@ 0x20d145c

.arm
branch_20d145c: @ 20d145c :arm
	cmp     r7, #0x2
	ldmnefd sp!, {r3-r7,pc}
	bl      OS_GetLockID
	ldr     r1, [pc, #0x40] @ [0x20d14b0] (=RAM_21d03e0)
	strh    r0, [r1]
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x20d1478

.word RAM_21d03ac @ 0x20d1478
.word REG_EXMEMCNT @ 0x20d147c
.word Unknown_20fe53c @ 0x20d1480
.word Unknown_210148c @ 0x20d1484
.word Unknown_20fe54c @ 0x20d1488
.word Unknown_20fe540 @ 0x20d148c
.word RAM_21d03b0 @ 0x20d1490
.word RAM_21d03c4 @ 0x20d1494
.word RAM_21d03bc @ 0x20d1498
.word RAM_21d03b4 @ 0x20d149c
.word RAM_21d03b8 @ 0x20d14a0
.word RAM_21d03c0 @ 0x20d14a4
.word RAM_21d03dc @ 0x20d14a8
.word Unknown_2101488 @ 0x20d14ac
.word RAM_21d03e0 @ 0x20d14b0



.arm
CTRDGi_SetFlashBankMx: @ 20d14b4 :arm
	ldr     r3, [pc, #0x24] @ [0x20d14e0] (=0xa005555)
	mov     r2, #0xaa
	ldr     r1, [pc, #0x20] @ [0x20d14e4] (=0xa002aaa)
	strb    r2, [r3]
	mov     r2, #0x55
	strb    r2, [r1]
	mov     r1, #0xb0
	strb    r1, [r3]
	mov     r1, #10, 8 @ #0xa000000
	strb    r0, [r1]
	bx      lr
@ 0x20d14e0

.word 0xa005555 @ 0x20d14e0
.word 0xa002aaa @ 0x20d14e4



.arm
Function_20d14e8: @ 20d14e8 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r5, [pc, #0xec] @ [0x20d15e0] (=REG_IME)
	mov     r0, #0x0
	ldrh    r2, [r5]
	ldr     r1, [pc, #0xe4] @ [0x20d15e4] (=RAM_21d03ac)
	ldr     r4, [pc, #0xe4] @ [0x20d15e8] (=0xa005555)
	strh    r0, [r5]
	str     r2, [r1, #0x1c]
	mov     r3, #0xaa
	ldr     r2, [pc, #0xd8] @ [0x20d15ec] (=0xa002aaa)
	strb    r3, [r4]
	mov     r3, #0x55
	strb    r3, [r2]
	mov     r2, #0x90
	strb    r2, [r4]
	ldrh    r2, [r5]
	ldr     r1, [r1, #0x1c]
	strh    r1, [r5]
	bl      Function_20d15f4
	ldr     r4, [pc, #0xa8] @ [0x20d15e4] (=RAM_21d03ac)
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	bne     branch_20d1554
branch_20d1544: @ 20d1544 :arm
	bl      Function_20d163c
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	beq     branch_20d1544
branch_20d1554: @ 20d1554 :arm
	ldr     r0, [pc, #0x94] @ [0x20d15f0] (=0xa000001)
	bl      Function_20d1698
	mov     r4, r0, lsl #24
	mov     r0, #10, 8 @ #0xa000000
	bl      Function_20d1698
	ldr     r12, [pc, #0x70] @ [0x20d15e0] (=REG_IME)
	orr     r4, r0, r4, lsr #16
	ldrh    r2, [r12]
	mov     r0, #0x0
	ldr     r1, [pc, #0x64] @ [0x20d15e4] (=RAM_21d03ac)
	strh    r0, [r12]
	ldr     r5, [pc, #0x60] @ [0x20d15e8] (=0xa005555)
	str     r2, [r1, #0x1c]
	mov     r3, #0xaa
	ldr     r2, [pc, #0x58] @ [0x20d15ec] (=0xa002aaa)
	strb    r3, [r5]
	mov     r3, #0x55
	strb    r3, [r2]
	mov     r2, #0xf0
	strb    r2, [r5]
	strb    r2, [r5]
	ldrh    r2, [r12]
	ldr     r1, [r1, #0x1c]
	strh    r1, [r12]
	bl      Function_20d15f4
	ldr     r5, [pc, #0x24] @ [0x20d15e4] (=RAM_21d03ac)
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x0
	bne     branch_20d15d8
branch_20d15c8: @ 20d15c8 :arm
	bl      Function_20d163c
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x0
	beq     branch_20d15c8
branch_20d15d8: @ 20d15d8 :arm
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x20d15e0

.word REG_IME @ 0x20d15e0
.word RAM_21d03ac @ 0x20d15e4
.word 0xa005555 @ 0x20d15e8
.word 0xa002aaa @ 0x20d15ec
.word 0xa000001 @ 0x20d15f0



.arm
Function_20d15f4: @ 20d15f4 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1, [pc, #0x34] @ [0x20d1634] (=0x2101488)
	ldr     r2, [pc, #0x34] @ [0x20d1638] (=RAM_21d03ac)
	mov     r3, #0x0
	ldr     r1, [r1, #0x4]
	strh    r3, [r2, #0x2]
	mov     r0, r0, lsl #1
	ldrh    r1, [r1, r0]
	mov     r0, r3
	str     r1, [r2, #0x20]
	str     r0, [r2, #0x24]
	bl      OS_GetTick
	ldr     r2, [pc, #0xc] @ [0x20d1638] (=RAM_21d03ac)
	str     r0, [r2, #0x28]
	str     r1, [r2, #0x2c]
	ldmfd   sp!, {r3,pc}
@ 0x20d1634

.word Unknown_2101488 @ 0x20d1634
.word RAM_21d03ac @ 0x20d1638



.arm
Function_20d163c: @ 20d163c :arm
	stmfd   sp!, {r3,lr}
	bl      OS_GetTick
	ldr     r3, [pc, #0x44] @ [0x20d1690] (=RAM_21d03ac)
	ldr     r2, [pc, #0x44] @ [0x20d1694] (=0x82ea)
	ldr     r12, [r3, #0x28]
	ldr     r3, [r3, #0x2c]
	subs    r12, r0, r12
	sbc     r0, r1, r3
	mov     r1, r0, lsl #6
	orr     r1, r1, r12, lsr #26
	mov     r0, r12, lsl #6
	mov     r3, #0x0
	bl      _ll_udiv
	ldr     r2, [pc, #0x18] @ [0x20d1690] (=RAM_21d03ac)
	ldr     r3, [r2, #0x24]
	ldr     r12, [r2, #0x20]
	cmp     r3, r1
	cmpeq   r12, r0
	movls   r0, #0x1
	strlsh  r0, [r2, #0x2]
	ldmfd   sp!, {r3,pc}
@ 0x20d1690

.word RAM_21d03ac @ 0x20d1690
.word 0x82ea @ 0x20d1694



.arm
Function_20d1698: @ 20d1698 :arm
	ldrb    r0, [r0]
	bx      lr
@ 0x20d16a0


.arm
Function_20d16a0: @ 20d16a0 :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r4, r0
	mov     r8, r1
	mov     r7, r2
	mov     r6, #0x0
	bl      Function_20d15f4
	ldr     r5, [pc, #0x64] @ [0x20d1724] (=RAM_21d03ac)
branch_20d16bc: @ 20d16bc :arm
	mov     r0, r8
	bl      Function_20d1698
	cmp     r0, r7
	beq     branch_20d1710
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x0
	beq     branch_20d16bc
	mov     r0, r8
	bl      Function_20d1698
	cmp     r7, r0
	beq     branch_20d1710
	ldr     r0, [pc, #0x38] @ [0x20d1728] (=0x2101488)
	ldr     r0, [r0]
	ldrh    r0, [r0, #0x18]
	cmp     r0, #0xc2
	ldreq   r0, [pc, #0x2c] @ [0x20d172c] (=0xa005555)
	moveq   r1, #0xf0
	streqb  r1, [r0]
	orr     r0, r4, #3, 18 @ #0xc000
	mov     r0, r0, lsl #16
	mov     r6, r0, lsr #16
branch_20d1710: @ 20d1710 :arm
	bl      CTRDG_IsExisting
	cmp     r0, #0x0
	moveq   r6, #1, 20 @ #0x1000
	mov     r0, r6
	ldmfd   sp!, {r4-r8,pc}
@ 0x20d1724

.word RAM_21d03ac @ 0x20d1724
.word Unknown_2101488 @ 0x20d1728
.word 0xa005555 @ 0x20d172c



.arm
Function_20d1730: @ 20d1730 :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r8, r0
	mov     r7, r1
	mov     r6, r2
	mov     r5, #0x0
	bl      Function_20d15f4
	ldr     r4, [pc, #0x8c] @ [0x20d17dc] (=RAM_21d03ac)
branch_20d174c: @ 20d174c :arm
	bl      Function_20d163c
	mov     r0, r7
	bl      Function_20d1698
	cmp     r0, r6
	beq     branch_20d17c8
	tst     r0, #0x20
	beq     branch_20d1794
	mov     r0, r7
	bl      Function_20d1698
	cmp     r6, r0
	beq     branch_20d17c8
	orr     r0, r8, #10, 20 @ #0xa000
	mov     r0, r0, lsl #16
	ldr     r1, [pc, #0x58] @ [0x20d17e0] (=0xa005555)
	mov     r2, #0xf0
	strb    r2, [r1]
	mov     r5, r0, lsr #16
	b       branch_20d17c8
@ 0x20d1794

.arm
branch_20d1794: @ 20d1794 :arm
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	beq     branch_20d174c
	mov     r0, r7
	bl      Function_20d1698
	cmp     r6, r0
	beq     branch_20d17c8
	orr     r0, r8, #3, 18 @ #0xc000
	mov     r0, r0, lsl #16
	ldr     r1, [pc, #0x20] @ [0x20d17e0] (=0xa005555)
	mov     r2, #0xf0
	strb    r2, [r1]
	mov     r5, r0, lsr #16
.arm
branch_20d17c8: @ 20d17c8 :arm
	bl      CTRDG_IsExisting
	cmp     r0, #0x0
	moveq   r5, #1, 20 @ #0x1000
	mov     r0, r5
	ldmfd   sp!, {r4-r8,pc}
@ 0x20d17dc

.word RAM_21d03ac @ 0x20d17dc
.word 0xa005555 @ 0x20d17e0



.arm
CTRDGi_ReadAgbFlashCore: @ 20d17e4 :arm
	stmfd   sp!, {r3-r8,lr}
	sub     sp, sp, #0x24
	mov     r5, r0
	ldmia   r5!, {r0-r3}
	add     r4, sp, #0x0
	stmia   r4!, {r0-r3}
	ldmia   r5!, {r0-r3}
	stmia   r4!, {r0-r3}
	ldr     r0, [pc, #0xc0] @ [0x20d18cc] (=RAM_21d03ac)
	ldr     r1, [r5]
	ldrh    r0, [r0]
	str     r1, [r4]
	ldrh    r5, [sp, #0x20]
	ldr     r6, [sp, #0x14]
	ldr     r7, [sp, #0x1c]
	ldr     r8, [sp, #0x18]
	bl      OS_LockCartridge
	ldr     r3, [pc, #0xa0] @ [0x20d18d0] (=REG_EXMEMCNT)
	ldr     r0, [pc, #0xa0] @ [0x20d18d4] (=0x2101488)
	ldrh    r2, [r3]
	ldrh    r1, [r3]
	and     r4, r2, #0x3
	bic     r1, r1, #0x3
	orr     r1, r1, #0x3
	strh    r1, [r3]
	ldr     r0, [r0]
	ldr     r0, [r0]
	cmp     r0, #2, 16 @ #0x20000
	bne     branch_20d1868
	mov     r0, r5, lsl #12
	mov     r0, r0, lsr #16
	bl      CTRDGi_SetFlashBankMx
	and     r5, r5, #0xf
.arm
branch_20d1868: @ 20d1868 :arm
	ldr     r0, [pc, #0x64] @ [0x20d18d4] (=0x2101488)
	cmp     r8, #0x0
	ldr     r0, [r0]
	sub     r8, r8, #0x1
	ldrh    r0, [r0, #0x8]
	mov     r0, r5, lsl r0
	add     r0, r0, #10, 8 @ #0xa000000
	add     r1, r6, r0
	beq     branch_20d18a0
.arm
branch_20d188c: @ 20d188c :arm
	ldrb    r0, [r1], #0x1
	cmp     r8, #0x0
	sub     r8, r8, #0x1
	strb    r0, [r7], #0x1
	bne     branch_20d188c
.arm
branch_20d18a0: @ 20d18a0 :arm
	ldr     r2, [pc, #0x28] @ [0x20d18d0] (=REG_EXMEMCNT)
	ldr     r0, [pc, #0x20] @ [0x20d18cc] (=RAM_21d03ac)
	ldrh    r1, [r2]
	bic     r1, r1, #0x3
	orr     r1, r1, r4
	strh    r1, [r2]
	ldrh    r0, [r0]
	bl      OS_UnlockCartridge
	mov     r0, #0x0
	add     sp, sp, #0x24
	ldmfd   sp!, {r3-r8,pc}
@ 0x20d18cc

.word RAM_21d03ac @ 0x20d18cc
.word REG_EXMEMCNT @ 0x20d18d0
.word Unknown_2101488 @ 0x20d18d4



.arm
CTRDGi_VerifyFlashSectorCore: @ 20d18d8 :arm
	cmp     r2, #0x0
	sub     r2, r2, #0x1
	beq     branch_20d1904
branch_20d18e4: @ 20d18e4 :arm
	ldrb    r12, [r1], #0x1
	ldrb    r3, [r0], #0x1
	cmp     r12, r3
	subne   r0, r1, #0x1
	bxne    lr
	cmp     r2, #0x0
	sub     r2, r2, #0x1
	bne     branch_20d18e4
.arm
branch_20d1904: @ 20d1904 :arm
	mov     r0, #0x0
	bx      lr
@ 0x20d190c


.arm
CTRDGi_VerifyAgbFlashCore: @ 20d190c :arm
	stmfd   sp!, {r4-r7,lr}
	sub     sp, sp, #0x24
	mov     r5, r0
	ldmia   r5!, {r0-r3}
	add     r4, sp, #0x0
	stmia   r4!, {r0-r3}
	ldmia   r5!, {r0-r3}
	stmia   r4!, {r0-r3}
	ldr     r0, [pc, #0xa8] @ [0x20d19dc] (=RAM_21d03ac)
	ldr     r1, [r5]
	ldrh    r0, [r0]
	str     r1, [r4]
	ldrh    r5, [sp, #0x20]
	ldr     r6, [sp, #0xc]
	ldr     r7, [sp, #0x18]
	bl      OS_LockCartridge
	ldr     r3, [pc, #0x8c] @ [0x20d19e0] (=REG_EXMEMCNT)
	ldr     r0, [pc, #0x8c] @ [0x20d19e4] (=0x2101488)
	ldrh    r2, [r3]
	ldrh    r1, [r3]
	and     r4, r2, #0x3
	bic     r1, r1, #0x3
	orr     r1, r1, #0x3
	strh    r1, [r3]
	ldr     r0, [r0]
	ldr     r0, [r0]
	cmp     r0, #2, 16 @ #0x20000
	bne     branch_20d198c
	mov     r0, r5, lsl #12
	mov     r0, r0, lsr #16
	bl      CTRDGi_SetFlashBankMx
	and     r5, r5, #0xf
.arm
branch_20d198c: @ 20d198c :arm
	ldr     r1, [pc, #0x50] @ [0x20d19e4] (=0x2101488)
	mov     r0, r6
	ldr     r1, [r1]
	mov     r2, r7
	ldrh    r1, [r1, #0x8]
	mov     r1, r5, lsl r1
	add     r1, r1, #10, 8 @ #0xa000000
	bl      CTRDGi_VerifyFlashSectorCore
	ldr     r3, [pc, #0x2c] @ [0x20d19e0] (=REG_EXMEMCNT)
	ldr     r1, [pc, #0x24] @ [0x20d19dc] (=RAM_21d03ac)
	ldrh    r2, [r3]
	mov     r5, r0
	bic     r0, r2, #0x3
	orr     r0, r0, r4
	strh    r0, [r3]
	ldrh    r0, [r1]
	bl      OS_UnlockCartridge
	mov     r0, r5
	add     sp, sp, #0x24
	ldmfd   sp!, {r4-r7,pc}
@ 0x20d19dc

.word RAM_21d03ac @ 0x20d19dc
.word REG_EXMEMCNT @ 0x20d19e0
.word Unknown_2101488 @ 0x20d19e4



.arm
CTRDGi_WriteAndVerifyAgbFlashSectorCore: @ 20d19e8 :arm
	stmfd   sp!, {r4-r7,lr}
	sub     sp, sp, #0x24
	mov     r4, r0
	ldmia   r4!, {r0-r3}
	add     r12, sp, #0x0
	stmia   r12!, {r0-r3}
	ldmia   r4!, {r0-r3}
	stmia   r12!, {r0-r3}
	ldr     r0, [r4]
	mov     r4, #0x0
	str     r0, [r12]
	ldrh    r5, [sp, #0x20]
	ldr     r6, [sp, #0xc]
	ldr     r7, [sp, #0x18]
.arm
branch_20d1a20: @ 20d1a20 :arm
	mov     r0, r5
	mov     r1, r6
	bl      CTRDG_WriteAgbFlashSector
	cmp     r0, #0x0
	bne     branch_20d1a50
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      CTRDG_VerifyAgbFlash
	cmp     r0, #0x0
	addeq   sp, sp, #0x24
	ldmeqfd sp!, {r4-r7,pc}
.arm
branch_20d1a50: @ 20d1a50 :arm
	add     r1, r4, #0x1
	mov     r1, r1, lsl #16
	mov     r4, r1, lsr #16
	cmp     r4, #0x3
	bcc     branch_20d1a20
	add     sp, sp, #0x24
	ldmfd   sp!, {r4-r7,pc}
@ 0x20d1a6c


.arm
CTRDG_ReadAgbFlash: @ 20d1a6c :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	strh    r0, [sp, #0x20]
	add     r0, sp, #0x0
	str     r1, [sp, #0x14]
	str     r2, [sp, #0x1c]
	str     r3, [sp, #0x18]
	bl      CTRDGi_ReadAgbFlashCore
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d1a94


.arm
CTRDG_WriteAgbFlashSector: @ 20d1a94 :arm
	stmfd   sp!, {r3,lr}
	ldr     r2, [pc, #0x8] @ [0x20d1aa8] (=RAM_21d03ac)
	ldr     r2, [r2, #0x4]
	blx     r2
	ldmfd   sp!, {r3,pc}
@ 0x20d1aa8

.word RAM_21d03ac @ 0x20d1aa8



.arm
CTRDG_VerifyAgbFlash: @ 20d1aac :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	strh    r0, [sp, #0x20]
	add     r0, sp, #0x0
	str     r1, [sp, #0xc]
	str     r2, [sp, #0x18]
	bl      CTRDGi_VerifyAgbFlashCore
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d1ad0


.arm
CTRDG_WriteAndVerifyAgbFlashAsync: @ 20d1ad0 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	str     r1, [sp, #0xc]
	strh    r0, [sp, #0x20]
	str     r2, [sp, #0x18]
	ldr     r1, [pc, #0x10] @ [0x20d1afc] (=0x20d19e8)
	add     r0, sp, #0x0
	mov     r2, r3
	bl      CTRDGi_SetTask
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d1afc

.word CTRDGi_WriteAndVerifyAgbFlashSectorCore @ =0x20d19e8, 0x20d1afc



.arm
Function_20d1b00: @ 20d1b00 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r0, [pc, #0xc0] @ [0x20d1bcc] (=RAM_21d03ac)
	ldrh    r0, [r0]
	bl      OS_LockCartridge
	ldr     r0, [pc, #0xb8] @ [0x20d1bd0] (=REG_EXMEMCNT)
	ldr     r1, [pc, #0xb8] @ [0x20d1bd4] (=0x2101488)
	ldrh    r3, [r0]
	ldr     r2, [r1]
	ldrh    r1, [r0]
	ldr     r4, [r2, #0x10]
	mov     r2, #0x0
	bic     r1, r1, #0x3
	orr     r1, r1, r4
	strh    r1, [r0]
	ldrh    r4, [r0, #0x4]
	ldr     r1, [pc, #0x94] @ [0x20d1bd8] (=RAM_21d03c8)
	ldr     lr, [pc, #0x94] @ [0x20d1bdc] (=0xa005555)
	strh    r2, [r0, #0x4]
	str     r4, [r1]
	mov     r5, #0xaa
	ldr     r4, [pc, #0x88] @ [0x20d1be0] (=0xa002aaa)
	strb    r5, [lr]
	mov     r12, #0x55
	strb    r12, [r4]
	mov     r2, #0x80
	strb    r2, [lr]
	strb    r5, [lr]
	strb    r12, [r4]
	mov     r2, #0x10
	strb    r2, [lr]
	ldrh    r2, [r0, #0x4]
	ldr     r2, [r1]
	ldr     r1, [pc, #0x5c] @ [0x20d1be4] (=RAM_21d03dc)
	strh    r2, [r0, #0x4]
	ldr     r4, [r1]
	mov     r0, #0x3
	mov     r1, #10, 8 @ #0xa000000
	mov     r2, #0xff
	and     r5, r3, #0x3
	blx     r4
	ldr     r3, [pc, #0x28] @ [0x20d1bd0] (=REG_EXMEMCNT)
	ldr     r1, [pc, #0x20] @ [0x20d1bcc] (=RAM_21d03ac)
	ldrh    r2, [r3]
	mov     r4, r0
	bic     r0, r2, #0x3
	orr     r0, r0, r5
	strh    r0, [r3]
	ldrh    r0, [r1]
	bl      OS_UnlockCartridge
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x20d1bcc

.word RAM_21d03ac @ 0x20d1bcc
.word REG_EXMEMCNT @ 0x20d1bd0
.word Unknown_2101488 @ 0x20d1bd4
.word RAM_21d03c8 @ 0x20d1bd8
.word 0xa005555 @ 0x20d1bdc
.word 0xa002aaa @ 0x20d1be0
.word RAM_21d03dc @ 0x20d1be4



.arm
CTRDGi_EraseFlashSectorCoreAT: @ 20d1be8 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x24
	mov     r5, r0
	ldmia   r5!, {r0-r3}
	add     r4, sp, #0x0
	stmia   r4!, {r0-r3}
	ldmia   r5!, {r0-r3}
	stmia   r4!, {r0-r3}
	ldr     r1, [r5]
	ldr     r0, [pc, #0xe0] @ [0x20d1cf4] (=RAM_21d03ac)
	str     r1, [r4]
	ldrh    r1, [sp, #0x20]
	ldrh    r0, [r0]
	mov     r1, r1, lsl #7
	add     r5, r1, #10, 8 @ #0xa000000
	bl      OS_LockCartridge
	ldr     r12, [pc, #0xc8] @ [0x20d1cf8] (=REG_EXMEMCNT)
	ldr     r1, [pc, #0xc8] @ [0x20d1cfc] (=0x2101488)
	ldrh    r0, [r12]
	ldr     r1, [r1]
	ldrh    r2, [r12]
	ldr     r3, [r1, #0x10]
	mov     r1, #0x0
	bic     r2, r2, #0x3
	orr     r2, r2, r3
	strh    r2, [r12]
	ldrh    r3, [r12, #0x4]
	ldr     r4, [pc, #0xa4] @ [0x20d1d00] (=0xa005555)
	mov     r2, #0xaa
	strh    r1, [r12, #0x4]
	strb    r2, [r4]
	ldr     r1, [pc, #0x98] @ [0x20d1d04] (=0xa002aaa)
	mov     r2, #0x55
	strb    r2, [r1]
	mov     r1, #0xa0
	strb    r1, [r4]
	and     r4, r0, #0x3
	mov     r0, #0x80
	mov     r2, #0xff
.arm
branch_20d1c84: @ 20d1c84 :arm
	strb    r2, [r5], #0x1
	subs    r0, r0, #0x1
	bne     branch_20d1c84
	ldr     lr, [pc, #0x70] @ [0x20d1d08] (=REG_IME)
	ldr     r12, [pc, #0x70] @ [0x20d1d0c] (=RAM_21d03dc)
	ldrh    r0, [lr]
	sub     r1, r5, #0x1
	strh    r3, [lr]
	ldr     r3, [r12]
	mov     r0, #0x1
	blx     r3
	movs    r5, r0
	beq     branch_20d1cc8
	and     r0, r5, #255, 24 @ #0xff00
	orr     r0, r0, #0x2
	mov     r0, r0, lsl #16
	mov     r5, r0, lsr #16
.arm
branch_20d1cc8: @ 20d1cc8 :arm
	ldr     r2, [pc, #0x28] @ [0x20d1cf8] (=REG_EXMEMCNT)
	ldr     r0, [pc, #0x20] @ [0x20d1cf4] (=RAM_21d03ac)
	ldrh    r1, [r2]
	bic     r1, r1, #0x3
	orr     r1, r1, r4
	strh    r1, [r2]
	ldrh    r0, [r0]
	bl      OS_UnlockCartridge
	mov     r0, r5
	add     sp, sp, #0x24
	ldmfd   sp!, {r4,r5,pc}
@ 0x20d1cf4

.word RAM_21d03ac @ 0x20d1cf4
.word REG_EXMEMCNT @ 0x20d1cf8
.word Unknown_2101488 @ 0x20d1cfc
.word 0xa005555 @ 0x20d1d00
.word 0xa002aaa @ 0x20d1d04
.word REG_IME @ 0x20d1d08
.word RAM_21d03dc @ 0x20d1d0c



.arm
CTRDGi_EraseFlash4KBCoreAT: @ 20d1d10 :arm
	stmfd   sp!, {r4-r7,lr}
	sub     sp, sp, #0x24
	mov     r5, r0
	ldmia   r5!, {r0-r3}
	add     r4, sp, #0x0
	stmia   r4!, {r0-r3}
	ldmia   r5!, {r0-r3}
	stmia   r4!, {r0-r3}
	ldr     r0, [r5]
	str     r0, [r4]
	ldrh    r0, [sp, #0x20]
	cmp     r0, #0x10
	addcs   sp, sp, #0x24
	ldrcs   r0, [pc, #0x68] @ [0x20d1db4] (=0x80ff)
	ldmcsfd sp!, {r4-r7,pc}
	mov     r0, r0, lsl #21
	mov     r6, r0, lsr #16
	mov     r5, #0x0
	mov     r4, #0x2
.arm
branch_20d1d5c: @ 20d1d5c :arm
	mov     r7, r4
.arm
branch_20d1d60: @ 20d1d60 :arm
	mov     r0, r6
	bl      CTRDGi_EraseFlashSectorAT
	cmp     r0, #0x0
	beq     branch_20d1d80
	sub     r1, r7, #0x1
	mov     r1, r1, lsl #16
	movs    r7, r1, lsr #16
	bne     branch_20d1d60
.arm
branch_20d1d80: @ 20d1d80 :arm
	add     r1, r6, #0x1
	mov     r1, r1, lsl #16
	cmp     r0, #0x0
	mov     r6, r1, lsr #16
	addne   sp, sp, #0x24
	ldmnefd sp!, {r4-r7,pc}
	add     r1, r5, #0x1
	mov     r1, r1, lsl #16
	mov     r5, r1, lsr #16
	cmp     r5, #0x20
	bcc     branch_20d1d5c
	add     sp, sp, #0x24
	ldmfd   sp!, {r4-r7,pc}
@ 0x20d1db4

.word 0x80ff @ 0x20d1db4



.arm
CTRDGi_WriteFlashSectorCoreAT: @ 20d1db8 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x24
	mov     r5, r0
	ldmia   r5!, {r0-r3}
	add     r4, sp, #0x0
	stmia   r4!, {r0-r3}
	ldmia   r5!, {r0-r3}
	stmia   r4!, {r0-r3}
	ldr     r0, [pc, #0xd8] @ [0x20d1eb8] (=RAM_21d03ac)
	ldr     r1, [r5]
	ldrh    r0, [r0]
	str     r1, [r4]
	ldr     r5, [sp, #0xc]
	bl      OS_LockCartridge
	ldr     r1, [pc, #0xc4] @ [0x20d1ebc] (=REG_EXMEMCNT)
	ldr     r2, [pc, #0xc4] @ [0x20d1ec0] (=0x2101488)
	ldrh    r0, [r1]
	ldr     r3, [r2]
	ldrh    r2, [r1]
	ldr     r4, [r3, #0x10]
	mov     r3, #0x0
	bic     r2, r2, #0x3
	orr     r2, r2, r4
	strh    r2, [r1]
	ldrh    r12, [sp, #0x20]
	ldrh    r2, [r1, #0x4]
	ldr     r4, [pc, #0x9c] @ [0x20d1ec4] (=0xa005555)
	mov     r12, r12, lsl #7
	strh    r3, [r1, #0x4]
	mov     r3, #0xaa
	strb    r3, [r4]
	ldr     r1, [pc, #0x8c] @ [0x20d1ec8] (=0xa002aaa)
	mov     r3, #0x55
	strb    r3, [r1]
	mov     r1, #0xa0
	strb    r1, [r4]
	and     r4, r0, #0x3
	add     lr, r12, #10, 8 @ #0xa000000
	mov     r1, #0x80
.arm
branch_20d1e54: @ 20d1e54 :arm
	ldrb    r0, [r5], #0x1
	subs    r1, r1, #0x1
	strb    r0, [lr], #0x1
	bne     branch_20d1e54
	ldr     r12, [pc, #0x60] @ [0x20d1ecc] (=REG_IME)
	ldr     r3, [pc, #0x60] @ [0x20d1ed0] (=RAM_21d03dc)
	ldrh    r0, [r12]
	sub     r1, lr, #0x1
	mov     r0, #0x1
	strh    r2, [r12]
	ldrb    r2, [r5, #-0x1]
	ldr     r3, [r3]
	blx     r3
	ldr     r3, [pc, #0x2c] @ [0x20d1ebc] (=REG_EXMEMCNT)
	ldr     r1, [pc, #0x24] @ [0x20d1eb8] (=RAM_21d03ac)
	ldrh    r2, [r3]
	mov     r5, r0
	bic     r0, r2, #0x3
	orr     r0, r0, r4
	strh    r0, [r3]
	ldrh    r0, [r1]
	bl      OS_UnlockCartridge
	mov     r0, r5
	add     sp, sp, #0x24
	ldmfd   sp!, {r4,r5,pc}
@ 0x20d1eb8

.word RAM_21d03ac @ 0x20d1eb8
.word REG_EXMEMCNT @ 0x20d1ebc
.word Unknown_2101488 @ 0x20d1ec0
.word 0xa005555 @ 0x20d1ec4
.word 0xa002aaa @ 0x20d1ec8
.word REG_IME @ 0x20d1ecc
.word RAM_21d03dc @ 0x20d1ed0



.arm
CTRDGi_WriteFlash4KBCoreAT: @ 20d1ed4 :arm
	stmfd   sp!, {r3-r8,lr}
	sub     sp, sp, #0x24
	mov     r5, r0
	ldmia   r5!, {r0-r3}
	add     r4, sp, #0x0
	stmia   r4!, {r0-r3}
	ldmia   r5!, {r0-r3}
	stmia   r4!, {r0-r3}
	ldr     r0, [r5]
	str     r0, [r4]
	ldrh    r0, [sp, #0x20]
	ldr     r6, [sp, #0xc]
	cmp     r0, #0x10
	addcs   sp, sp, #0x24
	ldrcs   r0, [pc, #0x7c] @ [0x20d1f90] (=0x80ff)
	ldmcsfd sp!, {r3-r8,pc}
	ldr     r7, [pc, #0x78] @ [0x20d1f94] (=RAM_21d03a8)
	mov     r0, r0, lsl #21
	mov     r1, #1, 20 @ #0x1000
	strh    r1, [r7]
	mov     r5, r0, lsr #16
	mov     r4, #0x2
.arm
branch_20d1f2c: @ 20d1f2c :arm
	mov     r8, r4
.arm
branch_20d1f30: @ 20d1f30 :arm
	mov     r0, r5
	mov     r1, r6
	bl      CTRDGi_WriteFlashSectorAT
	cmp     r0, #0x0
	beq     branch_20d1f54
	sub     r1, r8, #0x1
	mov     r1, r1, lsl #16
	movs    r8, r1, lsr #16
	bne     branch_20d1f30
.arm
branch_20d1f54: @ 20d1f54 :arm
	cmp     r0, #0x0
	addne   sp, sp, #0x24
	ldmnefd sp!, {r3-r8,pc}
	ldrh    r2, [r7]
	add     r1, r5, #0x1
	mov     r1, r1, lsl #16
	sub     r2, r2, #0x80
	strh    r2, [r7]
	ldrh    r2, [r7]
	add     r6, r6, #0x80
	mov     r5, r1, lsr #16
	cmp     r2, #0x0
	bne     branch_20d1f2c
	add     sp, sp, #0x24
	ldmfd   sp!, {r3-r8,pc}
@ 0x20d1f90

.word 0x80ff @ 0x20d1f90
.word RAM_21d03a8 @ 0x20d1f94



.arm
Function_20d1f98: @ 20d1f98 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	add     r0, sp, #0x0
	bl      Function_20d1b00
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d1fb8


.arm
CTRDGi_EraseFlash4KBAT: @ 20d1fb8 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	strh    r0, [sp, #0x20]
	add     r0, sp, #0x0
	bl      CTRDGi_EraseFlash4KBCoreAT
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d1fdc


.arm
CTRDGi_WriteFlash4KBAT: @ 20d1fdc :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	strh    r0, [sp, #0x20]
	add     r0, sp, #0x0
	str     r1, [sp, #0xc]
	bl      CTRDGi_WriteFlash4KBCoreAT
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d2004


.arm
Function_20d2004: @ 20d2004 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	ldr     r1, [pc, #0x10] @ [0x20d2024] (=0x20d1b00)
	mov     r2, r0
	add     r0, sp, #0x0
	bl      CTRDGi_SetTask
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d2024

.word Function_20d1b00 @ =0x20d1b00, 0x20d2024



.arm
CTRDGi_EraseFlash4KBAsyncAT: @ 20d2028 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	mov     r2, r1
	strh    r0, [sp, #0x20]
	ldr     r1, [pc, #0xc] @ [0x20d204c] (=0x20d1d10)
	add     r0, sp, #0x0
	bl      CTRDGi_SetTask
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d204c

.word CTRDGi_EraseFlash4KBCoreAT @ =0x20d1d10, 0x20d204c



.arm
CTRDGi_WriteFlash4KBAsyncAT: @ 20d2050 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	str     r1, [sp, #0xc]
	strh    r0, [sp, #0x20]
	ldr     r1, [pc, #0xc] @ [0x20d2074] (=0x20d1ed4)
	add     r0, sp, #0x0
	bl      CTRDGi_SetTask
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d2074

.word CTRDGi_WriteFlash4KBCoreAT @ =0x20d1ed4, 0x20d2074



.arm
CTRDGi_EraseFlashSectorAT: @ 20d2078 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	strh    r0, [sp, #0x20]
	add     r0, sp, #0x0
	bl      CTRDGi_EraseFlashSectorCoreAT
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d209c


.arm
CTRDGi_WriteFlashSectorAT: @ 20d209c :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	strh    r0, [sp, #0x20]
	add     r0, sp, #0x0
	str     r1, [sp, #0xc]
	bl      CTRDGi_WriteFlashSectorCoreAT
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d20c4


.arm
CTRDGi_EraseFlashSectorAsyncAT: @ 20d20c4 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	mov     r2, r1
	strh    r0, [sp, #0x20]
	ldr     r1, [pc, #0xc] @ [0x20d20e8] (=0x20d1be8)
	add     r0, sp, #0x0
	bl      CTRDGi_SetTask
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d20e8

.word CTRDGi_EraseFlashSectorCoreAT @ =0x20d1be8, 0x20d20e8



.arm
CTRDGi_WriteFlashSectorAsyncAT: @ 20d20ec :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	str     r1, [sp, #0xc]
	strh    r0, [sp, #0x20]
	ldr     r1, [pc, #0xc] @ [0x20d2110] (=0x20d1db8)
	add     r0, sp, #0x0
	bl      CTRDGi_SetTask
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d2110

.word CTRDGi_WriteFlashSectorCoreAT @ =0x20d1db8, 0x20d2110



.arm
Function_20d2114: @ 20d2114 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r0, [pc, #0xc0] @ [0x20d21e0] (=RAM_21d03ac)
	ldrh    r0, [r0]
	bl      OS_LockCartridge
	ldr     r0, [pc, #0xb8] @ [0x20d21e4] (=REG_EXMEMCNT)
	ldr     r1, [pc, #0xb8] @ [0x20d21e8] (=0x2101488)
	ldrh    r3, [r0]
	ldr     r2, [r1]
	ldrh    r1, [r0]
	ldr     r4, [r2, #0x10]
	mov     r2, #0x0
	bic     r1, r1, #0x3
	orr     r1, r1, r4
	strh    r1, [r0]
	ldrh    r4, [r0, #0x4]
	ldr     r1, [pc, #0x94] @ [0x20d21ec] (=RAM_21d03c8)
	ldr     lr, [pc, #0x94] @ [0x20d21f0] (=0xa005555)
	strh    r2, [r0, #0x4]
	str     r4, [r1]
	mov     r5, #0xaa
	ldr     r4, [pc, #0x88] @ [0x20d21f4] (=0xa002aaa)
	strb    r5, [lr]
	mov     r12, #0x55
	strb    r12, [r4]
	mov     r2, #0x80
	strb    r2, [lr]
	strb    r5, [lr]
	strb    r12, [r4]
	mov     r2, #0x10
	strb    r2, [lr]
	ldrh    r2, [r0, #0x4]
	ldr     r2, [r1]
	ldr     r1, [pc, #0x5c] @ [0x20d21f8] (=RAM_21d03dc)
	strh    r2, [r0, #0x4]
	ldr     r4, [r1]
	mov     r0, #0x3
	mov     r1, #10, 8 @ #0xa000000
	mov     r2, #0xff
	and     r5, r3, #0x3
	blx     r4
	ldr     r3, [pc, #0x28] @ [0x20d21e4] (=REG_EXMEMCNT)
	ldr     r1, [pc, #0x20] @ [0x20d21e0] (=RAM_21d03ac)
	ldrh    r2, [r3]
	mov     r4, r0
	bic     r0, r2, #0x3
	orr     r0, r0, r5
	strh    r0, [r3]
	ldrh    r0, [r1]
	bl      OS_UnlockCartridge
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x20d21e0

.word RAM_21d03ac @ 0x20d21e0
.word REG_EXMEMCNT @ 0x20d21e4
.word Unknown_2101488 @ 0x20d21e8
.word RAM_21d03c8 @ 0x20d21ec
.word 0xa005555 @ 0x20d21f0
.word 0xa002aaa @ 0x20d21f4
.word RAM_21d03dc @ 0x20d21f8



.arm
CTRDGi_EraseFlashSectorCoreLE: @ 20d21fc :arm
	stmfd   sp!, {r3-r6,lr}
	sub     sp, sp, #0x24
	mov     r5, r0
	ldmia   r5!, {r0-r3}
	add     r4, sp, #0x0
	stmia   r4!, {r0-r3}
	ldmia   r5!, {r0-r3}
	stmia   r4!, {r0-r3}
	ldr     r0, [r5]
	str     r0, [r4]
	ldrh    r4, [sp, #0x20]
	cmp     r4, #0x10
	addcs   sp, sp, #0x24
	ldrcs   r0, [pc, #0xd8] @ [0x20d2310] (=0x80ff)
	ldmcsfd sp!, {r3-r6,pc}
	ldr     r0, [pc, #0xd4] @ [0x20d2314] (=RAM_21d03ac)
	ldrh    r0, [r0]
	bl      OS_LockCartridge
	ldr     r0, [pc, #0xcc] @ [0x20d2318] (=REG_EXMEMCNT)
	ldr     r1, [pc, #0xcc] @ [0x20d231c] (=0x2101488)
	ldrh    r3, [r0]
	ldr     r5, [r1]
	ldrh    r2, [r0]
	ldr     r6, [r5, #0x10]
	mov     r5, #0x0
	bic     r2, r2, #0x3
	orr     r2, r2, r6
	strh    r2, [r0]
	ldr     r2, [r1]
	ldrh    r1, [r0, #0x4]
	ldrh    r12, [r2, #0x8]
	ldr     r2, [pc, #0xa0] @ [0x20d2320] (=RAM_21d03c8)
	ldr     lr, [pc, #0xa0] @ [0x20d2324] (=0xa005555)
	strh    r5, [r0, #0x4]
	mov     r6, r4, lsl r12
	str     r1, [r2]
	mov     r5, #0xaa
	ldr     r4, [pc, #0x90] @ [0x20d2328] (=0xa002aaa)
	strb    r5, [lr]
	mov     r12, #0x55
	strb    r12, [r4]
	mov     r1, #0x80
	strb    r1, [lr]
	strb    r5, [lr]
	strb    r12, [r4]
	add     r1, r6, #10, 8 @ #0xa000000
	mov     r4, #0x30
	strb    r4, [r1]
	ldrh    r4, [r0, #0x4]
	ldr     r4, [r2]
	ldr     r2, [pc, #0x60] @ [0x20d232c] (=RAM_21d03dc)
	strh    r4, [r0, #0x4]
	ldr     r4, [r2]
	mov     r0, #0x2
	mov     r2, #0xff
	and     r5, r3, #0x3
	blx     r4
	ldr     r3, [pc, #0x30] @ [0x20d2318] (=REG_EXMEMCNT)
	ldr     r1, [pc, #0x28] @ [0x20d2314] (=RAM_21d03ac)
	ldrh    r2, [r3]
	mov     r4, r0
	bic     r0, r2, #0x3
	orr     r0, r0, r5
	strh    r0, [r3]
	ldrh    r0, [r1]
	bl      OS_UnlockCartridge
	mov     r0, r4
	add     sp, sp, #0x24
	ldmfd   sp!, {r3-r6,pc}
@ 0x20d2310

.word 0x80ff @ 0x20d2310
.word RAM_21d03ac @ 0x20d2314
.word REG_EXMEMCNT @ 0x20d2318
.word Unknown_2101488 @ 0x20d231c
.word RAM_21d03c8 @ 0x20d2320
.word 0xa005555 @ 0x20d2324
.word 0xa002aaa @ 0x20d2328
.word RAM_21d03dc @ 0x20d232c



.arm
Function_20d2330: @ 20d2330 :arm
	stmfd   sp!, {r3,lr}
	ldr     r12, [pc, #0x3c] @ [0x20d2378] (=0xa005555)
	mov     r3, #0xaa
	ldr     r2, [pc, #0x38] @ [0x20d237c] (=0xa002aaa)
	strb    r3, [r12]
	mov     r3, #0x55
	mov     lr, r0
	strb    r3, [r2]
	mov     r0, #0xa0
	strb    r0, [r12]
	ldrb    r2, [lr]
	ldr     r3, [pc, #0x1c] @ [0x20d2380] (=RAM_21d03dc)
	mov     r0, #0x1
	strb    r2, [r1]
	ldrb    r2, [lr]
	ldr     r3, [r3]
	blx     r3
	ldmfd   sp!, {r3,pc}
@ 0x20d2378

.word 0xa005555 @ 0x20d2378
.word 0xa002aaa @ 0x20d237c
.word RAM_21d03dc @ 0x20d2380



.arm
CTRDGi_WriteFlashSectorCoreLE: @ 20d2384 :arm
	stmfd   sp!, {r4-r9,lr}
	sub     sp, sp, #0x24
	mov     r5, r0
	ldmia   r5!, {r0-r3}
	add     r4, sp, #0x0
	stmia   r4!, {r0-r3}
	ldmia   r5!, {r0-r3}
	stmia   r4!, {r0-r3}
	ldr     r0, [r5]
	str     r0, [r4]
	ldrh    r8, [sp, #0x20]
	ldr     r5, [sp, #0xc]
	cmp     r8, #0x10
	addcs   sp, sp, #0x24
	ldrcs   r0, [pc, #0x170] @ [0x20d2534] (=0x80ff)
	ldmcsfd sp!, {r4-r9,pc}
	ldr     r0, [pc, #0x16c] @ [0x20d2538] (=0x2101488)
	ldr     r6, [pc, #0x16c] @ [0x20d253c] (=Function_20d2554)
	ldr     r0, [r0]
	mov     r9, #0x0
	ldrh    r0, [r0, #0x8]
	mov     r0, r8, lsl r0
	add     r7, r0, #10, 8 @ #0xa000000
.arm
branch_20d23e0: @ 20d23e0 :arm
	mov     r0, r8
	bl      CTRDGi_EraseFlashSectorLE
	movs    r4, r0
	bne     branch_20d2408
	mov     r0, r7
	mov     r1, r6
	bl      CTRDGi_VerifyFlashErase
	mov     r0, r0, lsl #16
	movs    r4, r0, lsr #16
	beq     branch_20d2428
.arm
branch_20d2408: @ 20d2408 :arm
	add     r0, r9, #0x1
	mov     r0, r0, lsl #16
	cmp     r9, #0x50
	mov     r9, r0, lsr #16
	bne     branch_20d23e0
	add     sp, sp, #0x24
	mov     r0, r4
	ldmfd   sp!, {r4-r9,pc}
@ 0x20d2428

.arm
branch_20d2428: @ 20d2428 :arm
	mov     r6, #0x1
	cmp     r9, #0x0
	movne   r6, #0x6
	cmp     r6, #0x1
	mov     r9, #0x1
	bcc     branch_20d245c
.arm
branch_20d2440: @ 20d2440 :arm
	mov     r0, r8
	bl      CTRDGi_EraseFlashSectorLE
	add     r0, r9, #0x1
	mov     r0, r0, lsl #16
	cmp     r6, r0, lsr #16
	mov     r9, r0, lsr #16
	bcs     branch_20d2440
.arm
branch_20d245c: @ 20d245c :arm
	ldr     r0, [pc, #0xdc] @ [0x20d2540] (=RAM_21d03ac)
	ldrh    r0, [r0]
	bl      OS_LockCartridge
	ldr     r1, [pc, #0xd4] @ [0x20d2544] (=REG_EXMEMCNT)
	ldr     r2, [pc, #0xc4] @ [0x20d2538] (=0x2101488)
	ldrh    r0, [r1]
	ldr     r6, [r2]
	ldrh    r3, [r1]
	ldr     r8, [r6, #0x10]
	ldr     r6, [pc, #0xc0] @ [0x20d2548] (=RAM_21d03a8)
	bic     r3, r3, #0x3
	orr     r3, r3, r8
	strh    r3, [r1]
	ldr     r2, [r2]
	mov     r3, #0x0
	ldr     r8, [r2, #0x4]
	ldr     r2, [pc, #0xa8] @ [0x20d254c] (=RAM_21d03c8)
	strh    r8, [r6]
	ldrh    r9, [r1, #0x4]
	and     r8, r0, #0x3
	strh    r3, [r1, #0x4]
	ldrh    r0, [r6]
	str     r9, [r2]
	cmp     r0, #0x0
	beq     branch_20d24f4
.arm
branch_20d24c0: @ 20d24c0 :arm
	mov     r0, r5
	mov     r1, r7
	bl      Function_20d2330
	movs    r4, r0
	bne     branch_20d24f4
	ldrh    r0, [r6]
	add     r5, r5, #0x1
	add     r7, r7, #0x1
	sub     r0, r0, #0x1
	strh    r0, [r6]
	ldrh    r0, [r6]
	cmp     r0, #0x0
	bne     branch_20d24c0
.arm
branch_20d24f4: @ 20d24f4 :arm
	ldr     r3, [pc, #0x54] @ [0x20d2550] (=REG_IME)
	ldr     r0, [pc, #0x4c] @ [0x20d254c] (=RAM_21d03c8)
	ldrh    r1, [r3]
	ldr     r0, [r0]
	sub     r2, r3, #0x4
	strh    r0, [r3]
	ldrh    r1, [r2]
	ldr     r0, [pc, #0x28] @ [0x20d2540] (=RAM_21d03ac)
	bic     r1, r1, #0x3
	orr     r1, r1, r8
	strh    r1, [r2]
	ldrh    r0, [r0]
	bl      OS_UnlockCartridge
	mov     r0, r4
	add     sp, sp, #0x24
	ldmfd   sp!, {r4-r9,pc}
@ 0x20d2534

.word 0x80ff @ 0x20d2534
.word Unknown_2101488 @ 0x20d2538
.word Function_20d2554 @ 0x20d253c
.word RAM_21d03ac @ 0x20d2540
.word REG_EXMEMCNT @ 0x20d2544
.word RAM_21d03a8 @ 0x20d2548
.word RAM_21d03c8 @ 0x20d254c
.word REG_IME @ 0x20d2550



.arm
Function_20d2554: @ 20d2554 :arm
	ldr     r1, [pc, #0x28] @ [0x20d2584] (=0x2101488)
	ldr     r1, [r1]
	ldr     r2, [r1, #0x4]
	cmp     r2, #0x0
	beq     branch_20d257c
branch_20d2568: @ 20d2568 :arm
	ldrb    r1, [r0], #0x1
	cmp     r1, #0xff
	bne     branch_20d257c
	subs    r2, r2, #0x1
	bne     branch_20d2568
branch_20d257c: @ 20d257c :arm
	mov     r0, r2
	bx      lr
@ 0x20d2584

.word Unknown_2101488 @ 0x20d2584



.arm
CTRDGi_VerifyFlashErase: @ 20d2588 :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r2, [pc, #0x70] @ [0x20d2604] (=RAM_21d03ac)
	mov     r5, r0
	ldrh    r0, [r2]
	mov     r4, r1
	bl      OS_LockCartridge
	ldr     r12, [pc, #0x60] @ [0x20d2608] (=REG_EXMEMCNT)
	ldr     r0, [pc, #0x60] @ [0x20d260c] (=0x2101488)
	ldrh    r3, [r12]
	ldr     r0, [r0]
	ldrh    r1, [r12]
	ldr     r2, [r0, #0x10]
	mov     r0, r5
	bic     r1, r1, #0x3
	orr     r1, r1, r2
	strh    r1, [r12]
	and     r6, r3, #0x3
	mov     r5, #0x0
	blx     r4
	cmp     r0, #0x0
	ldr     r2, [pc, #0x28] @ [0x20d2608] (=REG_EXMEMCNT)
	ldr     r0, [pc, #0x20] @ [0x20d2604] (=RAM_21d03ac)
	ldrh    r1, [r2]
	ldrne   r5, [pc, #0x24] @ [0x20d2610] (=0x8004)
	bic     r1, r1, #0x3
	orr     r1, r1, r6
	strh    r1, [r2]
	ldrh    r0, [r0]
	bl      OS_UnlockCartridge
	mov     r0, r5
	ldmfd   sp!, {r4-r6,pc}
@ 0x20d2604

.word RAM_21d03ac @ 0x20d2604
.word REG_EXMEMCNT @ 0x20d2608
.word Unknown_2101488 @ 0x20d260c
.word 0x8004 @ 0x20d2610



.arm
Function_20d2614: @ 20d2614 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	add     r0, sp, #0x0
	bl      Function_20d2114
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d2634


.arm
CTRDGi_EraseFlashSectorLE: @ 20d2634 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	strh    r0, [sp, #0x20]
	add     r0, sp, #0x0
	bl      CTRDGi_EraseFlashSectorCoreLE
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d2658


.arm
CTRDGi_WriteFlashSectorLE: @ 20d2658 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	strh    r0, [sp, #0x20]
	add     r0, sp, #0x0
	str     r1, [sp, #0xc]
	bl      CTRDGi_WriteFlashSectorCoreLE
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d2680


.arm
Function_20d2680: @ 20d2680 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	ldr     r1, [pc, #0x10] @ [0x20d26a0] (=0x20d2114)
	mov     r2, r0
	add     r0, sp, #0x0
	bl      CTRDGi_SetTask
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d26a0

.word Function_20d2114 @ =0x20d2114, 0x20d26a0



.arm
CTRDGi_EraseFlashSectorAsyncLE: @ 20d26a4 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	mov     r2, r1
	strh    r0, [sp, #0x20]
	ldr     r1, [pc, #0xc] @ [0x20d26c8] (=0x20d21fc)
	add     r0, sp, #0x0
	bl      CTRDGi_SetTask
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d26c8

.word CTRDGi_EraseFlashSectorCoreLE @ =0x20d21fc, 0x20d26c8



.arm
CTRDGi_WriteFlashSectorAsyncLE: @ 20d26cc :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	str     r1, [sp, #0xc]
	strh    r0, [sp, #0x20]
	ldr     r1, [pc, #0xc] @ [0x20d26f0] (=0x20d2384)
	add     r0, sp, #0x0
	bl      CTRDGi_SetTask
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d26f0

.word CTRDGi_WriteFlashSectorCoreLE @ =0x20d2384, 0x20d26f0



.arm
Function_20d26f4: @ 20d26f4 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r0, [pc, #0xc0] @ [0x20d27c0] (=RAM_21d03ac)
	ldrh    r0, [r0]
	bl      OS_LockCartridge
	ldr     r0, [pc, #0xb8] @ [0x20d27c4] (=REG_EXMEMCNT)
	ldr     r1, [pc, #0xb8] @ [0x20d27c8] (=0x2101488)
	ldrh    r3, [r0]
	ldr     r2, [r1]
	ldrh    r1, [r0]
	ldr     r4, [r2, #0x10]
	mov     r2, #0x0
	bic     r1, r1, #0x3
	orr     r1, r1, r4
	strh    r1, [r0]
	ldrh    r4, [r0, #0x4]
	ldr     r1, [pc, #0x94] @ [0x20d27cc] (=RAM_21d03c8)
	ldr     lr, [pc, #0x94] @ [0x20d27d0] (=0xa005555)
	strh    r2, [r0, #0x4]
	str     r4, [r1]
	mov     r5, #0xaa
	ldr     r4, [pc, #0x88] @ [0x20d27d4] (=0xa002aaa)
	strb    r5, [lr]
	mov     r12, #0x55
	strb    r12, [r4]
	mov     r2, #0x80
	strb    r2, [lr]
	strb    r5, [lr]
	strb    r12, [r4]
	mov     r2, #0x10
	strb    r2, [lr]
	ldrh    r2, [r0, #0x4]
	ldr     r2, [r1]
	ldr     r1, [pc, #0x5c] @ [0x20d27d8] (=RAM_21d03dc)
	strh    r2, [r0, #0x4]
	ldr     r4, [r1]
	mov     r0, #0x3
	mov     r1, #10, 8 @ #0xa000000
	mov     r2, #0xff
	and     r5, r3, #0x3
	blx     r4
	ldr     r3, [pc, #0x28] @ [0x20d27c4] (=REG_EXMEMCNT)
	ldr     r1, [pc, #0x20] @ [0x20d27c0] (=RAM_21d03ac)
	ldrh    r2, [r3]
	mov     r4, r0
	bic     r0, r2, #0x3
	orr     r0, r0, r5
	strh    r0, [r3]
	ldrh    r0, [r1]
	bl      OS_UnlockCartridge
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x20d27c0

.word RAM_21d03ac @ 0x20d27c0
.word REG_EXMEMCNT @ 0x20d27c4
.word Unknown_2101488 @ 0x20d27c8
.word RAM_21d03c8 @ 0x20d27cc
.word 0xa005555 @ 0x20d27d0
.word 0xa002aaa @ 0x20d27d4
.word RAM_21d03dc @ 0x20d27d8



.arm
CTRDGi_EraseFlashSectorCoreMX: @ 20d27dc :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x28
	mov     r5, r0
	ldmia   r5!, {r0-r3}
	add     r4, sp, #0x4
	stmia   r4!, {r0-r3}
	ldmia   r5!, {r0-r3}
	stmia   r4!, {r0-r3}
	ldr     r0, [pc, #0x140] @ [0x20d2944] (=0x2101488)
	ldr     r1, [r5]
	ldr     r0, [r0]
	str     r1, [r4]
	ldrh    r4, [sp, #0x24]
	ldrh    r0, [r0, #0xa]
	cmp     r4, r0
	addcs   sp, sp, #0x28
	ldrcs   r0, [pc, #0x124] @ [0x20d2948] (=0x80ff)
	ldmcsfd sp!, {r3-r11,pc}
	ldr     r0, [pc, #0x120] @ [0x20d294c] (=RAM_21d03ac)
	ldrh    r0, [r0]
	bl      OS_LockCartridge
	ldr     r5, [pc, #0x118] @ [0x20d2950] (=REG_EXMEMCNT)
	ldr     r0, [pc, #0x108] @ [0x20d2944] (=0x2101488)
	ldrh    r3, [r5]
	ldr     r2, [r0]
	ldrh    r1, [r5]
	mov     r0, r4, lsl #12
	ldr     r2, [r2, #0x10]
	bic     r1, r1, #0x3
	orr     r1, r1, r2
	strh    r1, [r5]
	and     r1, r3, #0x3
	mov     r0, r0, lsr #16
	str     r1, [sp]
	bl      CTRDGi_SetFlashBankMx
	and     r10, r4, #0xf
	mov     r8, #0x0
	add     r7, r5, #0x4
	ldr     r5, [pc, #0xd8] @ [0x20d2954] (=0xa005555)
	ldr     r4, [pc, #0xd8] @ [0x20d2958] (=RAM_21d03c8)
	mov     r11, r8
	mov     r6, #0xaa
.arm
branch_20d2884: @ 20d2884 :arm
	ldr     r0, [pc, #0xb8] @ [0x20d2944] (=0x2101488)
	ldrh    r3, [r7]
	ldr     r0, [r0]
	mov     r9, #0x55
	ldrh    r1, [r0, #0x8]
	mov     r0, #0x2
	mov     r2, #0xff
	strh    r11, [r7]
	str     r3, [r4]
	ldr     r3, [pc, #0xac] @ [0x20d295c] (=0xa002aaa)
	strb    r6, [r5]
	strb    r9, [r3]
	mov     r3, #0x80
	strb    r3, [r5]
	mov     r1, r10, lsl r1
	ldr     r3, [pc, #0x94] @ [0x20d295c] (=0xa002aaa)
	strb    r6, [r5]
	strb    r9, [r3]
	add     r1, r1, #10, 8 @ #0xa000000
	mov     r3, #0x30
	strb    r3, [r1]
	ldrh    r3, [r7]
	ldr     r3, [r4]
	strh    r3, [r7]
	ldr     r3, [pc, #0x74] @ [0x20d2960] (=RAM_21d03dc)
	ldr     r3, [r3]
	blx     r3
	mov     r9, r0
	tst     r9, #10, 20 @ #0xa000
	beq     branch_20d2914
	cmp     r8, #0x0
	bne     branch_20d2914
	add     r0, r8, #0x1
	mov     r0, r0, lsl #16
	mov     r8, r0, lsr #16
	b       branch_20d2884
@ 0x20d2914

.arm
branch_20d2914: @ 20d2914 :arm
	ldr     r2, [pc, #0x34] @ [0x20d2950] (=REG_EXMEMCNT)
	ldr     r1, [pc, #0x2c] @ [0x20d294c] (=RAM_21d03ac)
	ldrh    r0, [r2]
	bic     r3, r0, #0x3
	ldr     r0, [sp]
	orr     r0, r3, r0
	strh    r0, [r2]
	ldrh    r0, [r1]
	bl      OS_UnlockCartridge
	mov     r0, r9
	add     sp, sp, #0x28
	ldmfd   sp!, {r3-r11,pc}
@ 0x20d2944

.word Unknown_2101488 @ 0x20d2944
.word 0x80ff @ 0x20d2948
.word RAM_21d03ac @ 0x20d294c
.word REG_EXMEMCNT @ 0x20d2950
.word 0xa005555 @ 0x20d2954
.word RAM_21d03c8 @ 0x20d2958
.word 0xa002aaa @ 0x20d295c
.word RAM_21d03dc @ 0x20d2960



.arm
Function_20d2964: @ 20d2964 :arm
	stmfd   sp!, {r3,lr}
	ldr     r12, [pc, #0x3c] @ [0x20d29ac] (=0xa005555)
	mov     r3, #0xaa
	ldr     r2, [pc, #0x38] @ [0x20d29b0] (=0xa002aaa)
	strb    r3, [r12]
	mov     r3, #0x55
	mov     lr, r0
	strb    r3, [r2]
	mov     r0, #0xa0
	strb    r0, [r12]
	ldrb    r2, [lr]
	ldr     r3, [pc, #0x1c] @ [0x20d29b4] (=RAM_21d03dc)
	mov     r0, #0x1
	strb    r2, [r1]
	ldrb    r2, [lr]
	ldr     r3, [r3]
	blx     r3
	ldmfd   sp!, {r3,pc}
@ 0x20d29ac

.word 0xa005555 @ 0x20d29ac
.word 0xa002aaa @ 0x20d29b0
.word RAM_21d03dc @ 0x20d29b4



.arm
CTRDGi_WriteFlashSectorCoreMX: @ 20d29b8 :arm
	stmfd   sp!, {r3-r8,lr}
	sub     sp, sp, #0x24
	mov     r5, r0
	ldmia   r5!, {r0-r3}
	add     r4, sp, #0x0
	stmia   r4!, {r0-r3}
	ldmia   r5!, {r0-r3}
	stmia   r4!, {r0-r3}
	ldr     r0, [pc, #0x134] @ [0x20d2b14] (=0x2101488)
	ldr     r1, [r5]
	ldr     r0, [r0]
	str     r1, [r4]
	ldrh    r4, [sp, #0x20]
	ldrh    r0, [r0, #0xa]
	ldr     r7, [sp, #0xc]
	cmp     r4, r0
	addcs   sp, sp, #0x24
	ldrcs   r0, [pc, #0x114] @ [0x20d2b18] (=0x80ff)
	ldmcsfd sp!, {r3-r8,pc}
	mov     r0, r4
	bl      CTRDGi_EraseFlashSectorMX
	movs    r6, r0
	addne   sp, sp, #0x24
	ldmnefd sp!, {r3-r8,pc}
	ldr     r0, [pc, #0xfc] @ [0x20d2b1c] (=RAM_21d03ac)
	ldrh    r0, [r0]
	bl      OS_LockCartridge
	ldr     r5, [pc, #0xf4] @ [0x20d2b20] (=REG_EXMEMCNT)
	ldr     r0, [pc, #0xe4] @ [0x20d2b14] (=0x2101488)
	ldrh    r3, [r5]
	ldr     r2, [r0]
	ldrh    r1, [r5]
	mov     r0, r4, lsl #12
	ldr     r2, [r2, #0x10]
	bic     r1, r1, #0x3
	orr     r1, r1, r2
	strh    r1, [r5]
	mov     r0, r0, lsr #16
	and     r5, r3, #0x3
	bl      CTRDGi_SetFlashBankMx
	ldr     r0, [pc, #0xb4] @ [0x20d2b14] (=0x2101488)
	ldr     r8, [pc, #0xc0] @ [0x20d2b24] (=RAM_21d03a8)
	ldr     r2, [r0]
	ldr     r1, [pc, #0xbc] @ [0x20d2b28] (=REG_IME)
	ldr     r0, [r2, #0x4]
	and     r4, r4, #0xf
	strh    r0, [r8]
	ldrh    r3, [r2, #0x8]
	ldrh    r2, [r1]
	mov     r0, #0x0
	mov     r3, r4, lsl r3
	strh    r0, [r1]
	ldrh    r1, [r8]
	ldr     r0, [pc, #0x98] @ [0x20d2b2c] (=RAM_21d03c8)
	add     r4, r3, #10, 8 @ #0xa000000
	str     r2, [r0]
	cmp     r1, #0x0
	beq     branch_20d2ad4
.arm
branch_20d2aa0: @ 20d2aa0 :arm
	mov     r0, r7
	mov     r1, r4
	bl      Function_20d2964
	movs    r6, r0
	bne     branch_20d2ad4
	ldrh    r0, [r8]
	add     r7, r7, #0x1
	add     r4, r4, #0x1
	sub     r0, r0, #0x1
	strh    r0, [r8]
	ldrh    r0, [r8]
	cmp     r0, #0x0
	bne     branch_20d2aa0
.arm
branch_20d2ad4: @ 20d2ad4 :arm
	ldr     r3, [pc, #0x4c] @ [0x20d2b28] (=REG_IME)
	ldr     r0, [pc, #0x4c] @ [0x20d2b2c] (=RAM_21d03c8)
	ldrh    r1, [r3]
	ldr     r0, [r0]
	sub     r2, r3, #0x4
	strh    r0, [r3]
	ldrh    r1, [r2]
	ldr     r0, [pc, #0x24] @ [0x20d2b1c] (=RAM_21d03ac)
	bic     r1, r1, #0x3
	orr     r1, r1, r5
	strh    r1, [r2]
	ldrh    r0, [r0]
	bl      OS_UnlockCartridge
	mov     r0, r6
	add     sp, sp, #0x24
	ldmfd   sp!, {r3-r8,pc}
@ 0x20d2b14

.word Unknown_2101488 @ 0x20d2b14
.word 0x80ff @ 0x20d2b18
.word RAM_21d03ac @ 0x20d2b1c
.word REG_EXMEMCNT @ 0x20d2b20
.word RAM_21d03a8 @ 0x20d2b24
.word REG_IME @ 0x20d2b28
.word RAM_21d03c8 @ 0x20d2b2c



.arm
Function_20d2b30: @ 20d2b30 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	add     r0, sp, #0x0
	bl      Function_20d26f4
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d2b50


.arm
CTRDGi_EraseFlashSectorMX: @ 20d2b50 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	strh    r0, [sp, #0x20]
	add     r0, sp, #0x0
	bl      CTRDGi_EraseFlashSectorCoreMX
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d2b74


.arm
CTRDGi_WriteFlashSectorMX: @ 20d2b74 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	strh    r0, [sp, #0x20]
	add     r0, sp, #0x0
	str     r1, [sp, #0xc]
	bl      CTRDGi_WriteFlashSectorCoreMX
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d2b9c


.arm
Function_20d2b9c: @ 20d2b9c :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	ldr     r1, [pc, #0x10] @ [0x20d2bbc] (=0x20d26f4)
	mov     r2, r0
	add     r0, sp, #0x0
	bl      CTRDGi_SetTask
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d2bbc

.word Function_20d26f4 @ =0x20d26f4, 0x20d2bbc



.arm
CTRDGi_EraseFlashSectorAsyncMX: @ 20d2bc0 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	mov     r2, r1
	strh    r0, [sp, #0x20]
	ldr     r1, [pc, #0xc] @ [0x20d2be4] (=0x20d27dc)
	add     r0, sp, #0x0
	bl      CTRDGi_SetTask
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d2be4

.word CTRDGi_EraseFlashSectorCoreMX @ =0x20d27dc, 0x20d2be4



.arm
CTRDGi_WriteFlashSectorAsyncMX: @ 20d2be8 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	str     r1, [sp, #0xc]
	strh    r0, [sp, #0x20]
	ldr     r1, [pc, #0xc] @ [0x20d2c0c] (=0x20d29b8)
	add     r0, sp, #0x0
	bl      CTRDGi_SetTask
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d2c0c

.word CTRDGi_WriteFlashSectorCoreMX @ =0x20d29b8, 0x20d2c0c



.arm
CTRDGi_WriteFlashSectorCoreMX5: @ 20d2c10 :arm
	stmfd   sp!, {r3-r8,lr}
	sub     sp, sp, #0x24
	mov     r5, r0
	ldmia   r5!, {r0-r3}
	add     r4, sp, #0x0
	stmia   r4!, {r0-r3}
	ldmia   r5!, {r0-r3}
	stmia   r4!, {r0-r3}
	ldr     r0, [pc, #0xf4] @ [0x20d2d2c] (=0x2101488)
	ldr     r1, [r5]
	ldr     r0, [r0]
	str     r1, [r4]
	ldrh    r4, [sp, #0x20]
	ldrh    r0, [r0, #0xa]
	ldr     r7, [sp, #0xc]
	cmp     r4, r0
	addcs   sp, sp, #0x24
	ldrcs   r0, [pc, #0xd4] @ [0x20d2d30] (=0x80ff)
	ldmcsfd sp!, {r3-r8,pc}
	mov     r0, r4
	bl      CTRDGi_EraseFlashSectorLE
	movs    r6, r0
	addne   sp, sp, #0x24
	ldmnefd sp!, {r3-r8,pc}
	ldr     r0, [pc, #0xbc] @ [0x20d2d34] (=RAM_21d03ac)
	ldrh    r0, [r0]
	bl      OS_LockCartridge
	ldr     r5, [pc, #0xb4] @ [0x20d2d38] (=REG_EXMEMCNT)
	ldr     r0, [pc, #0xa4] @ [0x20d2d2c] (=0x2101488)
	ldrh    r3, [r5]
	ldr     r2, [r0]
	ldrh    r1, [r5]
	ldr     r2, [r2, #0x10]
	ldr     r8, [pc, #0xa0] @ [0x20d2d3c] (=RAM_21d03a8)
	bic     r1, r1, #0x3
	orr     r1, r1, r2
	strh    r1, [r5]
	ldr     r1, [r0]
	and     r5, r3, #0x3
	ldr     r0, [r1, #0x4]
	strh    r0, [r8]
	ldrh    r1, [r1, #0x8]
	ldrh    r0, [r8]
	mov     r1, r4, lsl r1
	cmp     r0, #0x0
	add     r4, r1, #10, 8 @ #0xa000000
	beq     branch_20d2d00
.arm
branch_20d2ccc: @ 20d2ccc :arm
	mov     r0, r7
	mov     r1, r4
	bl      Function_20d2330
	movs    r6, r0
	bne     branch_20d2d00
	ldrh    r0, [r8]
	add     r7, r7, #0x1
	add     r4, r4, #0x1
	sub     r0, r0, #0x1
	strh    r0, [r8]
	ldrh    r0, [r8]
	cmp     r0, #0x0
	bne     branch_20d2ccc
.arm
branch_20d2d00: @ 20d2d00 :arm
	ldr     r2, [pc, #0x30] @ [0x20d2d38] (=REG_EXMEMCNT)
	ldr     r0, [pc, #0x28] @ [0x20d2d34] (=RAM_21d03ac)
	ldrh    r1, [r2]
	bic     r1, r1, #0x3
	orr     r1, r1, r5
	strh    r1, [r2]
	ldrh    r0, [r0]
	bl      OS_UnlockCartridge
	mov     r0, r6
	add     sp, sp, #0x24
	ldmfd   sp!, {r3-r8,pc}
@ 0x20d2d2c

.word Unknown_2101488 @ 0x20d2d2c
.word 0x80ff @ 0x20d2d30
.word RAM_21d03ac @ 0x20d2d34
.word REG_EXMEMCNT @ 0x20d2d38
.word RAM_21d03a8 @ 0x20d2d3c



.arm
CTRDGi_WriteFlashSectorMX5: @ 20d2d40 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	strh    r0, [sp, #0x20]
	add     r0, sp, #0x0
	str     r1, [sp, #0xc]
	bl      CTRDGi_WriteFlashSectorCoreMX5
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d2d68


.arm
CTRDGi_WriteFlashSectorAsyncMX5: @ 20d2d68 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	str     r1, [sp, #0xc]
	strh    r0, [sp, #0x20]
	ldr     r1, [pc, #0xc] @ [0x20d2d8c] (=0x20d2c10)
	add     r0, sp, #0x0
	bl      CTRDGi_SetTask
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x20d2d8c

.word CTRDGi_WriteFlashSectorCoreMX5 @ =0x20d2c10, 0x20d2d8c



.arm
CTRDGi_InitTaskThread: @ 20d2d90 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x8
	mov     r5, r0
	bl      OS_DisableInterrupts
	ldr     r1, [pc, #0x64] @ [0x20d2e0c] (=RAM_21d03e8)
	mov     r4, r0
	ldr     r0, [r1]
	cmp     r0, #0x0
	bne     branch_20d2dfc
	add     r0, r5, #0xc4
	str     r5, [r1]
	bl      CTRDGi_InitTaskInfo_1
	ldr     r0, [pc, #0x48] @ [0x20d2e10] (=RAM_21d03ec)
	bl      CTRDGi_InitTaskInfo_1
	mov     r0, #0x0
	str     r0, [r5, #0xc0]
	mov     r2, #1, 22 @ #0x400
	ldr     r1, [pc, #0x38] @ [0x20d2e14] (=CTRDGi_TaskThread)
	ldr     r3, [pc, #0x38] @ [0x20d2e18] (=RAM_21d0810)
	mov     r0, r5
	str     r2, [sp]
	mov     r2, #0x14
	str     r2, [sp, #0x4]
	mov     r2, r5
	bl      OS_CreateThread
	mov     r0, r5
	bl      OS_WakeupThreadDirect
branch_20d2dfc: @ 20d2dfc :arm
	mov     r0, r4
	bl      OS_RestoreInterrupts
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r5,pc}
@ 0x20d2e0c

.word RAM_21d03e8 @ 0x20d2e0c
.word RAM_21d03ec @ 0x20d2e10
.word CTRDGi_TaskThread @ 0x20d2e14
.word RAM_21d0810 @ 0x20d2e18



.arm
Function_20d2e1c: @ 20d2e1c :arm
	ldr     r0, [pc, #0x10] @ [0x20d2e34] (=RAM_21d03e8)
	ldr     r0, [r0]
	cmp     r0, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	bx      lr
@ 0x20d2e34

.word RAM_21d03e8 @ 0x20d2e34



.arm
CTRDGi_InitTaskInfo_1: @ 20d2e38 :arm
	ldr     r12, [pc, #0x8] @ [0x20d2e48] (=MI_CpuFill8)
	mov     r1, #0x0
	mov     r2, #0x24
	bx      r12
@ 0x20d2e48

.word MI_CpuFill8 @ =MI_CpuFill8, 0x20d2e48



.arm
CTRDGi_TaskThread: @ 20d2e4c :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0x24
	mov     r4, #0x0
	mov     r8, r0
	add     r6, sp, #0x0
	mov     r10, r4
	mov     r9, r4
	mov     r5, r4
	mov     r11, #0x24
branch_20d2e70: @ 20d2e70 :arm
	mov     r0, r6
	mov     r1, r5
	mov     r2, r11
	bl      MI_CpuFill8
	bl      OS_DisableInterrupts
	ldr     r1, [r8, #0xc0]
	mov     r7, r0
	cmp     r1, #0x0
	bne     branch_20d2ea8
branch_20d2e94: @ 20d2e94 :arm
	mov     r0, r4
	bl      OS_SleepThread
	ldr     r0, [r8, #0xc0]
	cmp     r0, #0x0
	beq     branch_20d2e94
branch_20d2ea8: @ 20d2ea8 :arm
	ldr     lr, [r8, #0xc0]
	add     r12, sp, #0x0
	ldmia   lr!, {r0-r3}
	stmia   r12!, {r0-r3}
	ldmia   lr!, {r0-r3}
	stmia   r12!, {r0-r3}
	ldr     r1, [lr]
	mov     r0, r7
	str     r1, [r12]
	bl      OS_RestoreInterrupts
	ldr     r1, [sp]
	cmp     r1, #0x0
	beq     branch_20d2ee8
	mov     r0, r6
	blx     r1
	str     r0, [sp, #0x8]
branch_20d2ee8: @ 20d2ee8 :arm
	bl      OS_DisableInterrupts
	ldr     r2, [sp, #0x4]
	ldr     r1, [pc, #0x40] @ [0x20d2f38] (=RAM_21d03e8)
	mov     r7, r0
	strb    r10, [r1, #0x26]
	cmp     r2, #0x0
	beq     branch_20d2f0c
	mov     r0, r6
	blx     r2
branch_20d2f0c: @ 20d2f0c :arm
	ldr     r0, [pc, #0x24] @ [0x20d2f38] (=RAM_21d03e8)
	ldr     r0, [r0]
	cmp     r0, #0x0
	beq     branch_20d2f2c
	mov     r0, r7
	str     r9, [r8, #0xc0]
	bl      OS_RestoreInterrupts
	b       branch_20d2e70

branch_20d2f2c: @ 20d2f2c :arm
	bl      OS_ExitThread
	add     sp, sp, #0x24
	ldmfd   sp!, {r4-r11,pc}
@ 0x20d2f38

.word RAM_21d03e8 @ 0x20d2f38



.arm
CTRDGi_SetTask: @ 20d2f3c :arm
	stmfd   sp!, {r3-r7,lr}
	ldr     r3, [pc, #0x94] @ [0x20d2fdc] (=RAM_21d03e8)
	mov     r7, r0
	mov     r5, r1
	mov     r6, r2
	ldr     r4, [r3]
	bl      Function_20d2e1c
	cmp     r0, #0x0
	bne     branch_20d2f64
	bl      OS_Panic
branch_20d2f64: @ 20d2f64 :arm
	ldr     r0, [pc, #0x70] @ [0x20d2fdc] (=RAM_21d03e8)
	ldrb    r0, [r0, #0x26]
	cmp     r0, #0x0
	beq     branch_20d2f78
	bl      OS_Panic
branch_20d2f78: @ 20d2f78 :arm
	bl      OS_DisableInterrupts
	mov     r1, #0x1
	strb    r1, [r7, #0x22]
	str     r5, [r7]
	add     r1, r4, #0xc4
	cmp     r7, r1
	mov     r5, r0
	ldreq   r0, [pc, #0x40] @ [0x20d2fdc] (=RAM_21d03e8)
	str     r6, [r7, #0x4]
	moveq   r1, #0x0
	streq   r1, [r0]
	ldr     r12, [pc, #0x34] @ [0x20d2fe0] (=RAM_21d03ec)
	ldmia   r7!, {r0-r3}
	mov     r6, r12
	stmia   r12!, {r0-r3}
	ldmia   r7!, {r0-r3}
	stmia   r12!, {r0-r3}
	ldr     r1, [r7]
	mov     r0, r4
	str     r1, [r12]
	str     r6, [r4, #0xc0]
	bl      OS_WakeupThreadDirect
	mov     r0, r5
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r3-r7,pc}
@ 0x20d2fdc

.word RAM_21d03e8 @ 0x20d2fdc
.word RAM_21d03ec @ 0x20d2fe0


