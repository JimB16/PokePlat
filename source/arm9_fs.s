

.arm
FSi_ReleaseCommand: @ 20c666c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	bl      OS_DisableInterrupts

	ldr     r1, [r5]
	mov     r6, r0
	ldr     r0, [r5, #0x4]
	cmp     r1, #0x0
	strne   r0, [r1, #0x4]
	cmp     r0, #0x0
	strne   r1, [r0]
	mov     r0, #0x0
	str     r0, [r5]
	str     r0, [r5, #0x4]
	ldr     r1, [r5, #0xc]
	add     r0, r5, #0x18
	bic     r1, r1, #0x4f
	str     r1, [r5, #0xc]
	str     r4, [r5, #0x14]

	bl      OS_WakeupThread
	mov     r0, r6
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c66c8


.arm
FSi_TranslateCommand: @ 20c66c8 :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r8, r0
	ldr     r0, [r8, #0xc]
	ldr     r5, [r8, #0x8]
	mov     r7, r1
	mov     r1, #0x1
	tst     r0, #0x4
	mov     r6, r1, lsl r7
	moveq   r1, #0x0
	ldr     r0, [r5, #0x1c]
	cmp     r1, #0x0
	orrne   r0, r0, #0x200
	orreq   r0, r0, #0x100
	str     r0, [r5, #0x1c]
	ldr     r0, [r5, #0x58]
	tst     r0, r6
	beq     branch_20c6770
	ldr     r2, [r5, #0x54]
	mov     r0, r8
	mov     r1, r7
	blx     r2
	mov     r4, r0
	cmp     r4, #0x8
	addls   pc, pc, r4, lsl #2
	b       branch_20c6774
	b       branch_20c6750
	b       branch_20c6750
	b       branch_20c6774
	b       branch_20c6774
	b       branch_20c6750
	b       branch_20c6774
	b       branch_20c6774
	b       branch_20c6774
	b       branch_20c6758

branch_20c6750: @ 20c6750 :arm
	str     r4, [r8, #0x14]
	b       branch_20c6774

branch_20c6758: @ 20c6758 :arm
	ldr     r1, [r5, #0x58]
	mvn     r0, r6
	and     r0, r1, r0
	str     r0, [r5, #0x58]
	mov     r4, #0x7
	b       branch_20c6774

branch_20c6770: @ 20c6770 :arm
	mov     r4, #0x7
branch_20c6774: @ 20c6774 :arm
	cmp     r4, #0x7
	bne     branch_20c6790
	ldr     r1, =FSi_Jumptable
	mov     r0, r8
	ldr     r1, [r1, r7, lsl #0x2]
	blx     r1
	mov     r4, r0
branch_20c6790: @ 20c6790 :arm
	cmp     r4, #0x6
	bne     branch_20c6808
	ldr     r0, [r8, #0xc]
	tst     r0, #0x4
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	beq     branch_20c684c
	bl      OS_DisableInterrupts
	ldr     r1, [r5, #0x1c]
	mov     r7, r0
	tst     r1, #0x200
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	beq     branch_20c67f8
	mov     r4, #0x0
	mov     r6, #0x1
branch_20c67d8: @ 20c67d8 :arm
	add     r0, r5, #0xc
	bl      OS_SleepThread
	ldr     r0, [r5, #0x1c]
	tst     r0, #0x200
	movne   r0, r6
	moveq   r0, r4
	cmp     r0, #0x0
	bne     branch_20c67d8
branch_20c67f8: @ 20c67f8 :arm
	mov     r0, r7
	ldr     r4, [r8, #0x14]
	bl      OS_RestoreInterrupts
	b       branch_20c684c

branch_20c6808: @ 20c6808 :arm
	ldr     r0, [r8, #0xc]
	tst     r0, #0x4
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	bne     branch_20c683c
	ldr     r1, [r5, #0x1c]
	mov     r0, r8
	bic     r2, r1, #0x100
	mov     r1, r4
	str     r2, [r5, #0x1c]
	bl      FSi_ReleaseCommand
	b       branch_20c684c

branch_20c683c: @ 20c683c :arm
	ldr     r0, [r5, #0x1c]
	bic     r0, r0, #0x200
	str     r0, [r5, #0x1c]
	str     r4, [r8, #0x14]
branch_20c684c: @ 20c684c :arm
	mov     r0, r4
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c6854

.pool



/* Input:
r0 = Pointer to String1
r1 = Pointer to String2
r2 = length of string
*/
.arm
FSi_StrNICmp: @ 20c6858 :arm
	stmfd   sp!, {r3,lr}
	cmp     r2, #0x0
	mov     lr, #0x0
	bls     branch_20c68a0

branch_20c6868: @ 20c6868 :arm
	ldrb    r12, [r0, lr]           @ Load letter to compare
	ldrb    r3, [r1, lr]
	sub     r12, r12, #0x41
	cmp     r12, #0x19
	sub     r3, r3, #0x41
	addls   r12, r12, #0x20
	cmp     r3, #0x19
	addls   r3, r3, #0x20
	cmp     r12, r3
	subne   r0, r12, r3
	ldmnefd sp!, {r3,pc}            @ If current letter is not equal, return the difference

	add     lr, lr, #0x1
	cmp     lr, r2
	bcc     branch_20c6868

branch_20c68a0: @ 20c68a0 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x20c68a8


.arm
FSi_ReadTable: @ 20c68a8 :arm
	stmfd   sp!, {r3-r9,lr}
	mov     r7, r0
	ldr     r4, [r7]
	mov     r6, r2
	ldr     r2, [r4, #0x1c]
	mov     r0, r4
	orr     r2, r2, #2, 24 @ #0x200
	str     r2, [r4, #0x1c]
	ldr     r2, [r7, #0x4]
	ldr     r5, [r4, #0x50]
	mov     r3, r6
	blx     r5
	cmp     r0, #0x0
	cmpne   r0, #0x1
	beq     branch_20c68f0
	cmp     r0, #0x6
	beq     branch_20c6900
	b       branch_20c6958

branch_20c68f0: @ 20c68f0 :arm
	ldr     r1, [r4, #0x1c]
	bic     r1, r1, #2, 24 @ #0x200
	str     r1, [r4, #0x1c]
	b       branch_20c6958

branch_20c6900: @ 20c6900 :arm
	bl      OS_DisableInterrupts
	ldr     r1, [r4, #0x1c]
	mov     r5, r0
	tst     r1, #2, 24 @ #0x200
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	beq     branch_20c6948
	mov     r8, #0x0
	mov     r9, #0x1
branch_20c6928: @ 20c6928 :arm
	add     r0, r4, #0xc
	bl      OS_SleepThread
	ldr     r0, [r4, #0x1c]
	tst     r0, #2, 24 @ #0x200
	movne   r0, r9
	moveq   r0, r8
	cmp     r0, #0x0
	bne     branch_20c6928
branch_20c6948: @ 20c6948 :arm
	mov     r0, r5
	bl      OS_RestoreInterrupts
	ldr     r0, [r4, #0x24]
	ldr     r0, [r0, #0x14]
branch_20c6958: @ 20c6958 :arm
	ldr     r1, [r7, #0x4]
	add     r1, r1, r6
	str     r1, [r7, #0x4]
	ldmfd   sp!, {r3-r9,pc}
@ 0x20c6968


.arm
FSi_SeekDirDirect: @ 20c6968 :arm
	ldr     r3, [r0, #0xc]
	mov     r2, #0x0
	orr     r3, r3, #0x4
	str     r3, [r0, #0xc]
	ldr     r3, [r0, #0x8]
	ldr     r12, =FSi_TranslateCommand
	str     r3, [r0, #0x30]
	str     r2, [r0, #0x38]
	strh    r2, [r0, #0x36]
	strh    r1, [r0, #0x34]
	mov     r1, #0x2
	bx      r12
@ 0x20c6998

.pool



.arm
Function_20c699c: @ 20c699c :arm
	stmfd   sp!, {r3,lr}
	ldr     r2, [r0, #0x2c]
	ldr     r3, [r0, #0x38]
	ldr     lr, [r0, #0x8]
	ldr     r1, [r0, #0x30]
	add     r12, r2, r3
	str     r12, [r0, #0x2c]
	ldr     r12, [lr, #0x48]
	mov     r0, lr
	blx     r12
	ldmfd   sp!, {r3,pc}
@ 0x20c69c8


.arm
Function_20c69c8: @ 20c69c8 :arm
	stmfd   sp!, {r3,lr}
	ldr     r2, [r0, #0x2c]
	ldr     r3, [r0, #0x38]
	ldr     lr, [r0, #0x8]
	ldr     r1, [r0, #0x30]
	add     r12, r2, r3
	str     r12, [r0, #0x2c]
	ldr     r12, [lr, #0x4c]
	mov     r0, lr
	blx     r12
	ldmfd   sp!, {r3,pc}
@ 0x20c69f4


.arm
FSi_SeekDirCommand: @ 20c69f4 :arm
	stmfd   sp!, {r4-r6,lr}
	sub     sp, sp, #0x10
	mov     r6, r0
	ldr     r4, [r6, #0x8]
	add     r5, r6, #0x30
	str     r4, [sp]
	ldrh    r1, [r5, #0x4]
	ldr     r2, [r4, #0x34]
	add     r0, sp, #0x0
	add     r3, r2, r1, lsl #3
	add     r1, sp, #0x8
	mov     r2, #0x8
	str     r3, [sp, #0x4]
	bl      FSi_ReadTable
	movs    r3, r0
	bne     branch_20c6a7c
	add     r12, r6, #0x20
	ldmia   r5, {r0-r2}
	stmia   r12, {r0-r2}
	ldrh    r0, [r5, #0x6]
	cmp     r0, #0x0
	ldreq   r0, [r5, #0x8]
	cmpeq   r0, #0x0
	bne     branch_20c6a6c
	ldrh    r0, [sp, #0xc]
	strh    r0, [r6, #0x26]
	ldr     r1, [r4, #0x34]
	ldr     r0, [sp, #0x8]
	add     r0, r1, r0
	str     r0, [r6, #0x28]
branch_20c6a6c: @ 20c6a6c :arm
	ldrh    r1, [sp, #0xe]
	ldr     r0, [pc, #0x10] @ [0x20c6a88] (=0xfff)
	and     r0, r1, r0
	str     r0, [r6, #0x2c]
branch_20c6a7c: @ 20c6a7c :arm
	mov     r0, r3
	add     sp, sp, #0x10
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c6a88

.word 0xfff @ 0x20c6a88



.arm
FSi_ReadDirCommand: @ 20c6a8c :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0xc
	mov     r5, r0
	ldr     r4, [r5, #0x30]
	ldr     r1, [r5, #0x8]
	add     r0, sp, #0x4
	str     r1, [sp, #0x4]
	ldr     r3, [r5, #0x28]
	add     r1, sp, #0x0
	mov     r2, #0x1
	str     r3, [sp, #0x8]
	bl      FSi_ReadTable
	cmp     r0, #0x0
	addne   sp, sp, #0xc
	ldmnefd sp!, {r4,r5,pc}
	ldrb    r1, [sp]
	and     r2, r1, #0x7f
	mov     r1, r1, asr #7
	str     r2, [r4, #0x10]
	and     r1, r1, #0x1
	str     r1, [r4, #0xc]
	ldr     r2, [r4, #0x10]
	cmp     r2, #0x0
	addeq   sp, sp, #0xc
	moveq   r0, #0x1
	ldmeqfd sp!, {r4,r5,pc}
	ldr     r1, [r5, #0x34]
	cmp     r1, #0x0
	bne     branch_20c6b2c
	add     r0, sp, #0x4
	add     r1, r4, #0x14
	bl      FSi_ReadTable
	cmp     r0, #0x0
	addne   sp, sp, #0xc
	ldmnefd sp!, {r4,r5,pc}
	ldr     r1, [r4, #0x10]
	mov     r2, #0x0
	add     r1, r4, r1
	strb    r2, [r1, #0x14]
	b       branch_20c6b38

branch_20c6b2c: @ 20c6b2c :arm
	ldr     r1, [sp, #0x8]
	add     r1, r1, r2
	str     r1, [sp, #0x8]
branch_20c6b38: @ 20c6b38 :arm
	ldr     r1, [r4, #0xc]
	cmp     r1, #0x0
	beq     branch_20c6b88
	add     r0, sp, #0x4
	add     r1, sp, #0x2
	mov     r2, #0x2
	bl      FSi_ReadTable
	cmp     r0, #0x0
	addne   sp, sp, #0xc
	ldmnefd sp!, {r4,r5,pc}
	ldr     r2, [r5, #0x8]
	ldr     r1, [pc, #0x48] @ [0x20c6bb4] (=0xfff)
	str     r2, [r4]
	ldrh    r3, [sp, #0x2]
	mov     r2, #0x0
	and     r1, r3, r1
	strh    r1, [r4, #0x4]
	strh    r2, [r4, #0x6]
	str     r2, [r4, #0x8]
	b       branch_20c6ba4

branch_20c6b88: @ 20c6b88 :arm
	ldr     r1, [r5, #0x8]
	str     r1, [r4]
	ldrh    r1, [r5, #0x26]
	str     r1, [r4, #0x4]
	ldrh    r1, [r5, #0x26]
	add     r1, r1, #0x1
	strh    r1, [r5, #0x26]
branch_20c6ba4: @ 20c6ba4 :arm
	ldr     r1, [sp, #0x8]
	str     r1, [r5, #0x28]
	add     sp, sp, #0xc
	ldmfd   sp!, {r4,r5,pc}
@ 0x20c6bb4

.word 0xfff @ 0x20c6bb4



.arm
FSi_FindPathCommand: @ 20c6bb8 :arm
	stmfd   sp!, {r3-r10,lr}
	sub     sp, sp, #0x94
	mov     r9, r0
	ldr     r5, [r9, #0x3c]
	mov     r1, #0x2
	ldr     r6, [r9, #0x40]
	bl      FSi_TranslateCommand
	ldrb    r3, [r5]
	cmp     r3, #0x0
	beq     branch_20c6d70
branch_20c6be0: @ 20c6be0 :arm
	mov     r8, #0x0
	mov     r0, #0x1
	mov     r1, r8
	b       branch_20c6bf4

branch_20c6bf0: @ 20c6bf0 :arm
	add     r8, r8, #0x1
branch_20c6bf4: @ 20c6bf4 :arm
	ldrb    r7, [r5, r8]
	mov     r2, r1
	cmp     r7, #0x0
	cmpne   r7, #0x2f
	cmpne   r7, #0x5c
	movne   r2, r0
	cmp     r2, #0x0
	bne     branch_20c6bf0
	cmp     r7, #0x0
	cmpeq   r6, #0x0
	movne   r7, #0x1
	cmp     r8, #0x0
	addeq   sp, sp, #0x94
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r10,pc}
	cmp     r3, #0x2e
	bne     branch_20c6c88
	cmp     r8, #0x1
	addeq   r5, r5, #0x1
	beq     branch_20c6d54
	ldrb    r0, [r5, #0x1]
	cmp     r8, #0x2
	moveq   r1, #0x1
	movne   r1, #0x0
	cmp     r0, #0x2e
	moveq   r0, #0x1
	movne   r0, #0x0
	tst     r1, r0
	beq     branch_20c6c88
	ldrh    r0, [r9, #0x24]
	cmp     r0, #0x0
	beq     branch_20c6c80
	ldr     r1, [r9, #0x2c]
	mov     r0, r9
	bl      FSi_SeekDirDirect
branch_20c6c80: @ 20c6c80 :arm
	add     r5, r5, #0x2
	b       branch_20c6d54

branch_20c6c88: @ 20c6c88 :arm
	cmp     r8, #0x7f
	addgt   sp, sp, #0x94
	movgt   r0, #0x1
	ldmgtfd sp!, {r3-r10,pc}
	add     r1, sp, #0x0
	mov     r0, #0x0
	str     r1, [r9, #0x30]
	str     r0, [r9, #0x34]
	add     r10, sp, #0x14
	mov     r4, #0x3
branch_20c6cb0: @ 20c6cb0 :arm
	mov     r0, r9
	mov     r1, r4
	bl      FSi_TranslateCommand
	cmp     r0, #0x0
	addne   sp, sp, #0x94
	movne   r0, #0x1
	ldmnefd sp!, {r3-r10,pc}
	ldr     r0, [sp, #0xc]
	cmp     r7, r0
	ldreq   r0, [sp, #0x10]
	cmpeq   r8, r0
	bne     branch_20c6cb0
	mov     r0, r5
	mov     r1, r10
	mov     r2, r8
	bl      FSi_StrNICmp
	cmp     r0, #0x0
	bne     branch_20c6cb0
	cmp     r7, #0x0
	beq     branch_20c6d24
	add     r0, sp, #0x0
	add     r3, r9, #0x30
	ldmia   r0, {r0-r2}
	stmia   r3, {r0-r2}
	mov     r0, r9
	mov     r1, #0x2
	add     r5, r5, r8
	bl      FSi_TranslateCommand
	b       branch_20c6d54
@ 0x20c6d24

.arm
branch_20c6d24: @ 20c6d24 :arm
	cmp     r6, #0x0
	addne   sp, sp, #0x94
	movne   r0, #0x1
	ldmnefd sp!, {r3-r10,pc}
	ldr     r3, [r9, #0x44]
	ldr     r2, [sp]
	ldr     r1, [sp, #0x4]
	add     sp, sp, #0x94
	str     r2, [r3]
	mov     r0, #0x0
	str     r1, [r3, #0x4]
	ldmfd   sp!, {r3-r10,pc}
@ 0x20c6d54

.arm
branch_20c6d54: @ 20c6d54 :arm
	ldrb    r0, [r5]
	cmp     r0, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	ldrb    r3, [r5, r0]!
	cmp     r3, #0x0
	bne     branch_20c6be0
branch_20c6d70: @ 20c6d70 :arm
	cmp     r6, #0x0
	addeq   sp, sp, #0x94
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r10,pc}
	ldr     r3, [r9, #0x44]
	add     r0, r9, #0x20
	ldmia   r0, {r0-r2}
	stmia   r3, {r0-r2}
	mov     r0, #0x0
	add     sp, sp, #0x94
	ldmfd   sp!, {r3-r10,pc}
@ 0x20c6d9c


.arm
FSi_GetPathCommand: @ 20c6d9c :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0xe0
	mov     r10, r0
	ldr     r1, [r10, #0x8]
	add     r0, sp, #0x4
	str     r1, [sp]
	bl      FS_InitFile
	ldr     r0, [r10, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [r10, #0xc]
	tst     r0, #0x20
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	ldrneh  r9, [r10, #0x24]
	movne   r6, #0x10000
	bne     branch_20c6e80
	ldrh    r0, [r10, #0x38]
	ldr     r6, [r10, #0x20]
	cmp     r0, #0x0
	ldrneh  r9, [r10, #0x3a]
	bne     branch_20c6e80
	mov     r7, #0x0
	mov     r8, r7
	mov     r9, #0x10000
	add     r5, sp, #0x4
	mov     r4, #0x3
	add     r11, sp, #0x4c
branch_20c6e0c: @ 20c6e0c :arm
	mov     r0, r5
	mov     r1, r7
	bl      FSi_SeekDirDirect
	mov     r2, #0x1
	cmp     r7, #0x0
	mov     r0, r5
	mov     r1, #0x3
	ldreq   r8, [sp, #0x30]
	str     r11, [sp, #0x34]
	str     r2, [sp, #0x38]
	bl      FSi_TranslateCommand
	cmp     r0, #0x0
	bne     branch_20c6e6c
branch_20c6e40: @ 20c6e40 :arm
	ldr     r0, [sp, #0x58]
	cmp     r0, #0x0
	ldreq   r0, [sp, #0x50]
	cmpeq   r0, r6
	ldreqh  r9, [sp, #0x28]
	beq     branch_20c6e6c
	mov     r0, r5
	mov     r1, r4
	bl      FSi_TranslateCommand
	cmp     r0, #0x0
	beq     branch_20c6e40
branch_20c6e6c: @ 20c6e6c :arm
	cmp     r9, #0x10000
	bne     branch_20c6e80
	add     r7, r7, #0x1
	cmp     r7, r8
	bcc     branch_20c6e0c
branch_20c6e80: @ 20c6e80 :arm
	cmp     r9, #0x10000
	bne     branch_20c6e9c
	mov     r0, #0x0
	strh    r0, [r10, #0x38]
	add     sp, sp, #0xe0
	mov     r0, #0x1
	ldmfd   sp!, {r3-r11,pc}

branch_20c6e9c: @ 20c6e9c :arm
	ldrh    r0, [r10, #0x38]
	cmp     r0, #0x0
	bne     branch_20c6f80
	ldr     r0, [sp]
	mov     r1, #0x0
	ldr     r0, [r0]
	cmp     r0, #0xff
	addls   r8, r1, #0x1
	bls     branch_20c6ecc
	cmp     r0, #0xff00
	addls   r8, r1, #0x2
	addhi   r8, r1, #0x3
branch_20c6ecc: @ 20c6ecc :arm
	cmp     r6, #0x10000
	ldrne   r0, [sp, #0x5c]
	add     r8, r8, #0x2
	addne   r8, r8, r0
	mov     r7, r9
	cmp     r9, #0x0
	beq     branch_20c6f74
	add     r0, sp, #0x4
	mov     r1, r9
	bl      FSi_SeekDirDirect
	add     r5, sp, #0x4
	mov     r4, #0x3
	add     r11, sp, #0x4c
branch_20c6f00: @ 20c6f00 :arm
	ldr     r1, [sp, #0x30]
	mov     r0, r5
	bl      FSi_SeekDirDirect
	mov     r1, #0x1
	str     r1, [sp, #0x38]
	mov     r0, r5
	mov     r1, #0x3
	str     r11, [sp, #0x34]
	bl      FSi_TranslateCommand
	cmp     r0, #0x0
	bne     branch_20c6f68
branch_20c6f2c: @ 20c6f2c :arm
	ldr     r0, [sp, #0x58]
	cmp     r0, #0x0
	beq     branch_20c6f54
	ldrh    r0, [sp, #0x50]
	cmp     r0, r7
	bne     branch_20c6f54
	ldr     r0, [sp, #0x5c]
	add     r0, r0, #0x1
	add     r8, r8, r0
	b       branch_20c6f68

branch_20c6f54: @ 20c6f54 :arm
	mov     r0, r5
	mov     r1, r4
	bl      FSi_TranslateCommand
	cmp     r0, #0x0
	beq     branch_20c6f2c
branch_20c6f68: @ 20c6f68 :arm
	ldrh    r7, [sp, #0x28]
	cmp     r7, #0x0
	bne     branch_20c6f00
branch_20c6f74: @ 20c6f74 :arm
	add     r0, r8, #0x1
	strh    r0, [r10, #0x38]
	strh    r9, [r10, #0x3a]
branch_20c6f80: @ 20c6f80 :arm
	ldr     r5, [r10, #0x30]
	cmp     r5, #0x0
	addeq   sp, sp, #0xe0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r11,pc}
	ldrh    r4, [r10, #0x38]
	ldr     r0, [r10, #0x34]
	cmp     r0, r4
	addcc   sp, sp, #0xe0
	movcc   r0, #0x1
	ldmccfd sp!, {r3-r11,pc}
	ldr     r0, [sp]
	mov     r7, #0x0
	ldr     r0, [r0]
	cmp     r0, #0xff
	movls   r8, #0x1
	bls     branch_20c6fd0
	cmp     r0, #0xff00
	movls   r8, #0x2
	movhi   r8, #0x3
branch_20c6fd0: @ 20c6fd0 :arm
	ldr     r0, [sp]
	mov     r1, r5
	mov     r2, r8
	bl      MI_CpuCopy8
	add     r1, r7, r8
	ldr     r0, [pc, #0x158] @ [0x20c7144] (=Unknown_2101160)
	add     r1, r5, r1
	mov     r2, #0x2
	bl      MI_CpuCopy8
	add     r0, sp, #0x4
	mov     r1, r9
	bl      FSi_SeekDirDirect
	cmp     r6, #0x10000
	beq     branch_20c7080
	add     r3, sp, #0x4c
	mov     r2, #0x0
	add     r0, sp, #0x4
	mov     r1, #0x3
	str     r3, [sp, #0x34]
	str     r2, [sp, #0x38]
	bl      FSi_TranslateCommand
	cmp     r0, #0x0
	bne     branch_20c705c
	add     r8, sp, #0x4
	mov     r7, #0x3
branch_20c7034: @ 20c7034 :arm
	ldr     r0, [sp, #0x58]
	cmp     r0, #0x0
	ldreq   r0, [sp, #0x50]
	cmpeq   r0, r6
	beq     branch_20c705c
	mov     r0, r8
	mov     r1, r7
	bl      FSi_TranslateCommand
	cmp     r0, #0x0
	beq     branch_20c7034
branch_20c705c: @ 20c705c :arm
	ldr     r0, [sp, #0x5c]
	add     r1, r5, r4
	add     r6, r0, #0x1
	add     r0, sp, #0x60
	mov     r2, r6
	sub     r1, r1, r6
	bl      MI_CpuCopy8
	sub     r4, r4, r6
	b       branch_20c7090

branch_20c7080: @ 20c7080 :arm
	add     r0, r5, r4
	mov     r1, #0x0
	strb    r1, [r0, #-0x1]
	sub     r4, r4, #0x1
branch_20c7090: @ 20c7090 :arm
	cmp     r9, #0x0
	beq     branch_20c7138
	add     r10, sp, #0x4
	mov     r6, #0x3
	add     r8, sp, #0x4c
	mov     r7, #0x0
	mov     r11, #0x2f
branch_20c70ac: @ 20c70ac :arm
	ldr     r1, [sp, #0x30]
	mov     r0, r10
	bl      FSi_SeekDirDirect
	add     r1, r5, r4
	str     r8, [sp, #0x34]
	str     r7, [sp, #0x38]
	strb    r11, [r1, #-0x1]
	mov     r0, r10
	mov     r1, #0x3
	sub     r4, r4, #0x1
	bl      FSi_TranslateCommand
	cmp     r0, #0x0
	bne     branch_20c712c
branch_20c70e0: @ 20c70e0 :arm
	ldr     r0, [sp, #0x58]
	cmp     r0, #0x0
	beq     branch_20c7118
	ldrh    r0, [sp, #0x50]
	cmp     r0, r9
	bne     branch_20c7118
	ldr     r9, [sp, #0x5c]
	add     r1, r5, r4
	add     r0, sp, #0x60
	mov     r2, r9
	sub     r1, r1, r9
	bl      MI_CpuCopy8
	sub     r4, r4, r9
	b       branch_20c712c

branch_20c7118: @ 20c7118 :arm
	mov     r0, r10
	mov     r1, r6
	bl      FSi_TranslateCommand
	cmp     r0, #0x0
	beq     branch_20c70e0
branch_20c712c: @ 20c712c :arm
	ldrh    r9, [sp, #0x28]
	cmp     r9, #0x0
	bne     branch_20c70ac
branch_20c7138: @ 20c7138 :arm
	mov     r0, #0x0
	add     sp, sp, #0xe0
	ldmfd   sp!, {r3-r11,pc}
@ 0x20c7144

.word Unknown_2101160 @ 0x20c7144



.arm
FSi_OpenFileFastCommand: @ 20c7148 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x10
	mov     r5, r0
	ldr     r1, [r5, #0x8]
	ldr     r4, [r5, #0x34]
	ldr     r0, [r1, #0x30]
	mov     r2, r4, lsl #3
	cmp     r0, r4, lsl #3
	addls   sp, sp, #0x10
	movls   r0, #0x1
	ldmlsfd sp!, {r3-r5,pc}
	str     r1, [sp]
	ldr     r1, [r1, #0x2c]
	add     r0, sp, #0x0
	add     r3, r1, r2
	add     r1, sp, #0x8
	mov     r2, #0x8
	str     r3, [sp, #0x4]
	bl      FSi_ReadTable
	cmp     r0, #0x0
	addne   sp, sp, #0x10
	ldmnefd sp!, {r3-r5,pc}
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	str     r1, [r5, #0x30]
	ldr     r2, [sp, #0xc]
	mov     r1, #0x7
	str     r2, [r5, #0x34]
	str     r4, [r5, #0x38]
	bl      FSi_TranslateCommand
	add     sp, sp, #0x10
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c71c8


.arm
Function_20c71c8: @ 20c71c8 :arm
	ldr     r1, [r0, #0x30]
	str     r1, [r0, #0x24]
	ldr     r1, [r0, #0x30]
	str     r1, [r0, #0x2c]
	ldr     r1, [r0, #0x34]
	str     r1, [r0, #0x28]
	ldr     r1, [r0, #0x38]
	str     r1, [r0, #0x20]
	mov     r0, #0x0
	bx      lr
@ 0x20c71f0


.arm
Function_20c71f0: @ 20c71f0 :arm
	mov     r0, #0x0
	bx      lr
@ 0x20c71f8


.arm
FSi_GetPackedName: @ 20c71f8 :arm
	stmfd   sp!, {r3,lr}
	cmp     r1, #0x3
	mov     r3, #0x0
	bgt     branch_20c7248
	mov     r12, r3
	cmp     r1, #0x0
	ble     branch_20c7248
	mov     lr, r3
branch_20c7218: @ 20c7218 :arm
	ldrb    r2, [r0, r12]
	cmp     r2, #0x0
	beq     branch_20c7248
	sub     r2, r2, #0x41
	cmp     r2, #0x19
	addls   r2, r2, #0x61
	addhi   r2, r2, #0x41
	add     r12, r12, #0x1
	orr     r3, r3, r2, lsl lr
	cmp     r12, r1
	add     lr, lr, #0x8
	blt     branch_20c7218
branch_20c7248: @ 20c7248 :arm
	mov     r0, r3
	ldmfd   sp!, {r3,pc}
@ Function_20c7250


.arm
Function_20c7250: @ 20c7250 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [r0, #0x28]
	add     r0, r0, r2
	mov     r2, r3
	bl      MI_CpuCopy8
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x20c726c


.arm
Function_20c726c: @ 20c726c :arm
	stmfd   sp!, {r3,lr}
	ldr     r12, [r0, #0x28]
	mov     r0, r1
	add     r1, r12, r2
	mov     r2, r3
	bl      MI_CpuCopy8
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x20c728c


.arm
Function_20c728c: @ 20c728c :arm
	stmfd   sp!, {r3,lr}
	mov     r0, r2
	mov     r2, r3
	bl      MI_CpuCopy8
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x20c72a4


.arm
FSi_NextCommand: @ 20c72a4 :arm
	stmfd   sp!, {r3-r9,lr}
	sub     sp, sp, #0x48
	mov     r6, r0
	bl      OS_DisableInterrupts
	ldr     r1, [r6, #0x1c]
	mov     r4, r0
	tst     r1, #0x20
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	beq     branch_20c7338
	ldr     r0, [r6, #0x1c]
	bic     r0, r0, #0x20
	str     r0, [r6, #0x1c]
	ldr     r0, [r6, #0x24]
	cmp     r0, #0x0
	beq     branch_20c7338
	mov     r8, #0x0
	mov     r9, #0x1
	mov     r7, #0x3
branch_20c72f4: @ 20c72f4 :arm
	ldr     r1, [r0, #0xc]
	ldr     r5, [r0, #0x4]
	tst     r1, #0x2
	movne   r1, r9
	moveq   r1, r8
	cmp     r1, #0x0
	beq     branch_20c732c
	ldr     r1, [r6, #0x24]
	cmp     r1, r0
	mov     r1, r7
	streq   r5, [r6, #0x24]
	bl      FSi_ReleaseCommand
	cmp     r5, #0x0
	ldreq   r5, [r6, #0x24]
branch_20c732c: @ 20c732c :arm
	mov     r0, r5
	cmp     r5, #0x0
	bne     branch_20c72f4
branch_20c7338: @ 20c7338 :arm
	ldr     r0, [r6, #0x1c]
	tst     r0, #0x40
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	bne     branch_20c7428
	ldr     r0, [r6, #0x1c]
	tst     r0, #0x8
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	bne     branch_20c7428
	ldr     r5, [r6, #0x24]
	cmp     r5, #0x0
	beq     branch_20c7428
	ldr     r0, [r6, #0x1c]
	tst     r0, #0x10
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	moveq   r7, #0x1
	movne   r7, #0x0
	cmp     r7, #0x0
	ldrne   r0, [r6, #0x1c]
	orrne   r0, r0, #0x10
	strne   r0, [r6, #0x1c]
	mov     r0, r4
	bl      OS_RestoreInterrupts
	cmp     r7, #0x0
	beq     branch_20c73cc
	ldr     r0, [r6, #0x58]
	tst     r0, #2, 24 @ #0x200
	beq     branch_20c73cc
	ldr     r2, [r6, #0x54]
	mov     r0, r5
	mov     r1, #0x9
	blx     r2
branch_20c73cc: @ 20c73cc :arm
	bl      OS_DisableInterrupts
	ldr     r1, [r5, #0xc]
	mov     r4, r0
	orr     r0, r1, #0x40
	str     r0, [r5, #0xc]
	ldr     r0, [r5, #0xc]
	tst     r0, #0x4
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	beq     branch_20c7414
	add     r0, r5, #0x18
	bl      OS_WakeupThread
	mov     r0, r4
	bl      OS_RestoreInterrupts
	add     sp, sp, #0x48
	mov     r0, #0x0
	ldmfd   sp!, {r3-r9,pc}

branch_20c7414: @ 20c7414 :arm
	mov     r0, r4
	bl      OS_RestoreInterrupts
	add     sp, sp, #0x48
	mov     r0, r5
	ldmfd   sp!, {r3-r9,pc}

branch_20c7428: @ 20c7428 :arm
	ldr     r0, [r6, #0x1c]
	tst     r0, #0x10
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	beq     branch_20c7474
	ldr     r0, [r6, #0x1c]
	bic     r0, r0, #0x10
	str     r0, [r6, #0x1c]
	ldr     r0, [r6, #0x58]
	tst     r0, #1, 22 @ #0x400
	beq     branch_20c7474
	add     r0, sp, #0x0
	bl      FS_InitFile
	str     r6, [sp, #0x8]
	ldr     r2, [r6, #0x54]
	add     r0, sp, #0x0
	mov     r1, #0xa
	blx     r2
branch_20c7474: @ 20c7474 :arm
	ldr     r0, [r6, #0x1c]
	tst     r0, #0x40
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	beq     branch_20c74a4
	ldr     r1, [r6, #0x1c]
	add     r0, r6, #0x14
	bic     r1, r1, #0x40
	orr     r1, r1, #0x8
	str     r1, [r6, #0x1c]
	bl      OS_WakeupThread
branch_20c74a4: @ 20c74a4 :arm
	mov     r0, r4
	bl      OS_RestoreInterrupts
	mov     r0, #0x0
	add     sp, sp, #0x48
	ldmfd   sp!, {r3-r9,pc}
@ 0x20c74b8


.arm
FSi_ExecuteAsyncCommand: @ 20c74b8 :arm
	stmfd   sp!, {r4-r8,lr}
	movs    r6, r0
	ldr     r4, [r6, #0x8]
	ldmeqfd sp!, {r4-r8,pc}

	mov     r7, #0x0
	mov     r8, #0x1
branch_20c74d0: @ 20c74d0 :arm
	bl      OS_DisableInterrupts
	ldr     r1, [r6, #0xc]
	mov     r5, r0
	orr     r0, r1, #0x40
	str     r0, [r6, #0xc]
	ldr     r0, [r6, #0xc]
	tst     r0, #0x4
	movne   r0, r8
	moveq   r0, r7
	cmp     r0, #0x0
	beq     branch_20c7510
	add     r0, r6, #0x18
	bl      OS_WakeupThread
	mov     r0, r5
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r4-r8,pc}

branch_20c7510: @ 20c7510 :arm
	ldr     r1, [r6, #0xc]
	mov     r0, r5
	orr     r1, r1, #0x8
	str     r1, [r6, #0xc]
	bl      OS_RestoreInterrupts
	ldr     r1, [r6, #0x10]
	mov     r0, r6
	bl      FSi_TranslateCommand
	cmp     r0, #0x6
	ldmeqfd sp!, {r4-r8,pc}

	mov     r0, r4
	bl      FSi_NextCommand
	movs    r6, r0
	bne     branch_20c74d0
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c754c


.arm
FSi_ExecuteSyncCommand: @ 20c754c :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x10]
	bl      FSi_TranslateCommand
	mov     r1, r0
	mov     r0, r4
	bl      FSi_ReleaseCommand
	ldr     r0, [r4, #0x8]
	bl      FSi_NextCommand
	cmp     r0, #0x0
	beq     branch_20c757c
	bl      FSi_ExecuteAsyncCommand
branch_20c757c: @ 20c757c :arm
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	moveq   r0, #0x1
	movne   r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x20c7590


.arm
FSi_SendCommand: @ 20c7590 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r6, r0
	ldr     r4, [r6, #0x8]
	mov     r2, #0x1
	str     r1, [r6, #0x10]
	mov     r0, #0x2
	str     r0, [r6, #0x14]
	ldr     r0, [r6, #0xc]
	mov     r7, r2, lsl r1
	orr     r0, r0, #0x1
	str     r0, [r6, #0xc]
	bl      OS_DisableInterrupts

	ldr     r1, [r4, #0x1c]
	mov     r5, r0
	tst     r1, #0x80
	beq     branch_20c75ec
	mov     r0, r6
	mov     r1, #0x3
	bl      FSi_ReleaseCommand

	mov     r0, r5
	bl      OS_RestoreInterrupts

	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}

branch_20c75ec: @ 20c75ec :arm
	tst     r7, #0x1fc
	ldrne   r0, [r6, #0xc]
	orrne   r0, r0, #0x4
	strne   r0, [r6, #0xc]
	ldr     r1, [r6]
	ldr     r2, [r6, #0x4]
	cmp     r1, #0x0
	strne   r2, [r1, #0x4]
	cmp     r2, #0x0
	add     r0, r4, #0x20
	strne   r1, [r2]
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	beq     branch_20c7634
branch_20c7624: @ 20c7624 :arm
	mov     r0, r1
	ldr     r1, [r1, #0x4]
	cmp     r1, #0x0
	bne     branch_20c7624
branch_20c7634: @ 20c7634 :arm

	str     r6, [r0, #0x4]
	str     r0, [r6]
	mov     r1, #0x0
	str     r1, [r6, #0x4]
	ldr     r0, [r4, #0x1c]
	tst     r0, #0x8
	movne   r1, #0x1
	cmp     r1, #0x0
	bne     branch_20c76e4
	ldr     r0, [r4, #0x1c]
	tst     r0, #0x10
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	bne     branch_20c76e4
	ldr     r1, [r4, #0x1c]
	mov     r0, r5
	orr     r1, r1, #0x10
	str     r1, [r4, #0x1c]
	bl      OS_RestoreInterrupts
	ldr     r0, [r4, #0x58]
	tst     r0, #0x200
	beq     branch_20c76a0
	ldr     r2, [r4, #0x54]
	mov     r0, r6
	mov     r1, #0x9
	blx     r2
branch_20c76a0: @ 20c76a0 :arm
	bl      OS_DisableInterrupts
	ldr     r1, [r6, #0xc]
	orr     r1, r1, #0x40
	str     r1, [r6, #0xc]
	ldr     r1, [r6, #0xc]
	tst     r1, #0x4
	movne   r1, #0x1
	moveq   r1, #0x0
	cmp     r1, #0x0
	bne     branch_20c76dc
	bl      OS_RestoreInterrupts
	mov     r0, r6
	bl      FSi_ExecuteAsyncCommand
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}

branch_20c76dc: @ 20c76dc :arm
	bl      OS_RestoreInterrupts
	b       branch_20c7728

branch_20c76e4: @ 20c76e4 :arm
	ldr     r0, [r6, #0xc]
	tst     r0, #0x4
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	bne     branch_20c770c
	mov     r0, r5
	bl      OS_RestoreInterrupts
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}

branch_20c770c: @ 20c770c :arm
	add     r0, r6, #0x18
	bl      OS_SleepThread
	ldr     r0, [r6, #0xc]
	tst     r0, #0x40
	beq     branch_20c770c
	mov     r0, r5
	bl      OS_RestoreInterrupts
branch_20c7728: @ 20c7728 :arm
	mov     r0, r6
	bl      FSi_ExecuteSyncCommand
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c7734


/* Input:
r0: Pointer to ArchiveData
*/
.arm
.globl FS_InitArchive
FS_InitArchive: @ 20c7734 :arm
	stmfd   sp!, {r4,lr}

	mov     r1, #0x0
	mov     r2, #ArchiveData_size
	mov     r4, r0
	bl      MI_CpuFill8

	mov     r0, #0x0
	str     r0, [r4, #ArchiveData_10]
	str     r0, [r4, #ArchiveData_c]
	str     r0, [r4, #ArchiveData_18]
	str     r0, [r4, #ArchiveData_14]

	ldmfd   sp!, {r4,pc}
@ 0x20c7760


.arm
.globl FS_FindArchive
FS_FindArchive: @ 20c7760 :arm
	stmfd   sp!, {r3-r5,lr}
	bl      FSi_GetPackedName
	mov     r4, r0
	bl      OS_DisableInterrupts
	ldr     r1, =RAM_21cec08
	ldr     r5, [r1, #RAM_21cec08_0]
	b       branch_20c7780

branch_20c777c: @ 20c777c :arm
	ldr     r5, [r5, #0x4]
branch_20c7780: @ 20c7780 :arm
	cmp     r5, #0x0
	ldrne   r1, [r5]
	cmpne   r1, r4
	bne     branch_20c777c
	bl      OS_RestoreInterrupts
	mov     r0, r5
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c779c

.pool



/* Input:
r0: Pointer to ArchiveData
*/
.arm
.globl FS_RegisterArchiveName
FS_RegisterArchiveName: @ 20c77a0 :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r6, r1
	mov     r5, r2
	mov     r7, r0
	mov     r8, #0x0
	bl      OS_DisableInterrupts
	mov     r4, r0
	mov     r0, r6
	mov     r1, r5
	bl      FS_FindArchive
	cmp     r0, #0x0
	bne     branch_20c7840
	ldr     r0, =RAM_21cec08
	ldr     r1, [r0, #RAM_21cec08_0]
	cmp     r1, #0x0
	bne     branch_20c77fc
	str     r7, [r0, #RAM_21cec08_0]
	str     r7, [r0, #RAM_21cec08_4]
	mov     r1, r8
	str     r1, [r0, #RAM_21cec08_c]
	strh    r1, [r0, #RAM_21cec08_a]
	strh    r1, [r0, #RAM_21cec08_8]
	b       branch_20c7820

branch_20c77fc: @ 20c77fc :arm
	ldr     r0, [r1, #0x4]
	cmp     r0, #0x0
	beq     branch_20c7818
branch_20c7808: @ 20c7808 :arm
	mov     r1, r0
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	bne     branch_20c7808
branch_20c7818: @ 20c7818 :arm
	str     r7, [r1, #0x4]
	str     r1, [r7, #ArchiveData_8]
branch_20c7820: @ 20c7820 :arm
	mov     r0, r6
	mov     r1, r5
	bl      FSi_GetPackedName
	str     r0, [r7, #ArchiveData_0]
	ldr     r0, [r7, #ArchiveData_1c]
	mov     r8, #0x1
	orr     r0, r0, #0x1
	str     r0, [r7, #ArchiveData_1c]
branch_20c7840: @ 20c7840 :arm
	mov     r0, r4
	bl      OS_RestoreInterrupts
	mov     r0, r8
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c7850

.pool



.arm
.globl Function_20c7854
Function_20c7854: @ 20c7854 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r0, [r4]
	cmp     r0, #0x0
	ldmeqfd sp!, {r4,pc}

	bl      OS_DisableInterrupts
	ldr     r2, [r4, #0x4]
	mov     r3, #0x0
	cmp     r2, #0x0
	ldrne   r1, [r4, #0x8]
	strne   r1, [r2, #0x8]
	ldr     r2, [r4, #0x8]
	cmp     r2, #0x0
	ldrne   r1, [r4, #0x4]
	strne   r1, [r2, #0x4]
	str     r3, [r4]
	str     r3, [r4, #0x8]
	str     r3, [r4, #0x4]
	ldr     r2, [r4, #0x1c]
	ldr     r1, =RAM_21cec08
	bic     r2, r2, #0x1
	str     r2, [r4, #0x1c]
	ldr     r2, [r1, #RAM_21cec08_4]
	cmp     r2, r4
	bne     branch_20c78cc
	ldr     r2, [r1, #RAM_21cec08_0]
	str     r2, [r1, #RAM_21cec08_4]
	str     r3, [r1, #RAM_21cec08_c]
	strh    r3, [r1, #RAM_21cec08_a]
	strh    r3, [r1, #RAM_21cec08_8]
branch_20c78cc: @ 20c78cc :arm
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r4,pc}
@ 0x20c78d4

.pool



/* Input:
r0: Pointer to ArchiveData
*/
.arm
.globl FS_LoadArchive
FS_LoadArchive: @ 20c78d8 :arm
	str     r1, [r0, #ArchiveData_28]
	str     r3, [r0, #ArchiveData_30]
	str     r2, [r0, #ArchiveData_3c]
	ldr     r3, [sp, #0x4]
	str     r2, [r0, #ArchiveData_2c]
	ldr     r12, [sp, #0x8]
	ldr     r1, [sp]
	str     r3, [r0, #ArchiveData_38]
	str     r1, [r0, #ArchiveData_40]
	str     r1, [r0, #ArchiveData_34]
	cmp     r12, #0x0
	ldreq   r12, [pc, #0x34] @ [0x20c7940] (=Function_20c7250)
	ldr     r1, [sp, #0xc]
	str     r12, [r0, #ArchiveData_48]
	cmp     r1, #0x0
	ldreq   r1, [pc, #0x28] @ [0x20c7944] (=Function_20c726c)
	str     r1, [r0, #ArchiveData_4c]
	ldr     r2, [r0, #ArchiveData_48]
	mov     r1, #0x0
	str     r2, [r0, #ArchiveData_50]
	str     r1, [r0, #ArchiveData_44]
	ldr     r1, [r0, #ArchiveData_1c]
	orr     r1, r1, #0x2
	str     r1, [r0, #ArchiveData_1c]
	mov     r0, #0x1
	bx      lr
@ 0x20c7940

.word Function_20c7250 @ 0x20c7940
.word Function_20c726c @ 0x20c7944



.arm
.globl Function_20c7948
Function_20c7948: @ 20c7948 :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r6, r0
	bl      OS_DisableInterrupts
	ldr     r1, [r6, #0x1c]
	mov     r4, r0
	tst     r1, #0x2
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	beq     branch_20c79f8
	mov     r0, r6
	ldr     r1, [r6, #0x1c]
	bl      FS_SuspendArchive
	ldr     r1, [r6, #0x1c]
	mov     r5, r0
	orr     r0, r1, #0x80
	str     r0, [r6, #0x1c]
	ldr     r0, [r6, #0x24]
	cmp     r0, #0x0
	beq     branch_20c79b4
	mov     r7, #0x3
branch_20c799c: @ 20c799c :arm
	ldr     r8, [r0, #0x4]
	mov     r1, r7
	bl      FSi_ReleaseCommand
	mov     r0, r8
	cmp     r8, #0x0
	bne     branch_20c799c
branch_20c79b4: @ 20c79b4 :arm
	mov     r0, #0x0
	str     r0, [r6, #0x24]
	cmp     r5, #0x0
	beq     branch_20c79cc
	mov     r0, r6
	bl      FS_ResumeArchive
branch_20c79cc: @ 20c79cc :arm
	mov     r0, #0x0
	str     r0, [r6, #0x28]
	str     r0, [r6, #0x2c]
	str     r0, [r6, #0x30]
	str     r0, [r6, #0x34]
	str     r0, [r6, #0x38]
	str     r0, [r6, #0x40]
	str     r0, [r6, #0x3c]
	ldr     r0, [r6, #0x1c]
	bic     r0, r0, #0xa2
	str     r0, [r6, #0x1c]
branch_20c79f8: @ 20c79f8 :arm
	mov     r0, r4
	bl      OS_RestoreInterrupts
	mov     r0, #0x1
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c7a08


/* Input:
r0: Pointer to ArchiveData
*/
.arm
.globl FS_LoadArchiveTables
FS_LoadArchiveTables: @ 20c7a08 :arm
	stmfd   sp!, {r4-r7,lr}
	sub     sp, sp, #0x4c
	mov     r7, r0
	ldr     r3, [r7, #ArchiveData_30]
	ldr     r0, [r7, #ArchiveData_38]
	mov     r6, r1
	add     r0, r3, r0
	add     r0, r0, #0x3f
	bic     r4, r0, #0x1f
	cmp     r4, r2
	bhi     branch_20c7b1c
	add     r1, r6, #0x1f
	add     r0, sp, #0x4
	bic     r5, r1, #0x1f
	bl      FS_InitFile
	ldr     r2, [r7, #ArchiveData_2c]
	mvn     r0, #0x0
	str     r0, [sp]
	ldr     r3, [r7, #ArchiveData_30]
	add     r0, sp, #0x4
	mov     r1, r7
	add     r3, r2, r3
	bl      FS_OpenFileDirect
	cmp     r0, #0x0
	beq     branch_20c7a9c
	ldr     r2, [r7, #ArchiveData_30]
	add     r0, sp, #0x4
	mov     r1, r5
	bl      FS_ReadFile
	cmp     r0, #0x0
	bge     branch_20c7a94
	ldr     r2, [r7, #ArchiveData_30]
	mov     r0, r5
	mov     r1, #0x0
	bl      MI_CpuFill8
branch_20c7a94: @ 20c7a94 :arm
	add     r0, sp, #0x4
	bl      FS_CloseFile
branch_20c7a9c: @ 20c7a9c :arm
	str     r5, [r7, #ArchiveData_2c]
	ldr     r12, [r7, #ArchiveData_30]
	ldr     r2, [r7, #ArchiveData_34]
	mvn     r0, #0x0
	str     r0, [sp]
	ldr     r3, [r7, #ArchiveData_38]
	add     r0, sp, #0x4
	mov     r1, r7
	add     r3, r2, r3
	add     r5, r5, r12
	bl      FS_OpenFileDirect
	cmp     r0, #0x0
	beq     branch_20c7b00
	ldr     r2, [r7, #ArchiveData_38]
	add     r0, sp, #0x4
	mov     r1, r5
	bl      FS_ReadFile
	cmp     r0, #0x0
	bge     branch_20c7af8
	ldr     r2, [r7, #ArchiveData_38]
	mov     r0, r5
	mov     r1, #0x0
	bl      MI_CpuFill8
branch_20c7af8: @ 20c7af8 :arm
	add     r0, sp, #0x4
	bl      FS_CloseFile
branch_20c7b00: @ 20c7b00 :arm
	str     r5, [r7, #ArchiveData_34]
	ldr     r0, =Function_20c728c
	str     r6, [r7, #ArchiveData_44]
	str     r0, [r7, #ArchiveData_50]
	ldr     r0, [r7, #ArchiveData_1c]
	orr     r0, r0, #0x4
	str     r0, [r7, #ArchiveData_1c]
branch_20c7b1c: @ 20c7b1c :arm
	mov     r0, r4
	add     sp, sp, #0x4c
	ldmfd   sp!, {r4-r7,pc}
@ 0x20c7b28

.pool



.arm
.globl Function_20c7b2c
Function_20c7b2c: @ 20c7b2c :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x1c]
	mov     r4, #0x0
	tst     r0, #0x2
	movne   r0, #0x1
	moveq   r0, r4
	cmp     r0, #0x0
	beq     branch_20c7bb0
	mov     r0, r5
	bl      FS_SuspendArchive
	ldr     r1, [r5, #0x1c]
	tst     r1, #0x4
	movne   r1, #0x1
	moveq   r1, #0x0
	cmp     r1, #0x0
	beq     branch_20c7ba0
	ldr     r2, [r5, #0x1c]
	mov     r1, #0x0
	bic     r2, r2, #0x4
	str     r2, [r5, #0x1c]
	ldr     r4, [r5, #0x44]
	str     r1, [r5, #0x44]
	ldr     r1, [r5, #0x3c]
	str     r1, [r5, #0x2c]
	ldr     r1, [r5, #0x40]
	str     r1, [r5, #0x34]
	ldr     r1, [r5, #0x48]
	str     r1, [r5, #0x50]
branch_20c7ba0: @ 20c7ba0 :arm
	cmp     r0, #0x0
	beq     branch_20c7bb0
	mov     r0, r5
	bl      FS_ResumeArchive
branch_20c7bb0: @ 20c7bb0 :arm
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c7bb8


.arm
FS_SuspendArchive: @ 20c7bb8 :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r6, r0
	bl      OS_DisableInterrupts
	ldr     r1, [r6, #0x1c]
	mov     r4, r0
	tst     r1, #0x8
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	moveq   r5, #0x1
	movne   r5, #0x0
	cmp     r5, #0x0
	beq     branch_20c7c44
	ldr     r0, [r6, #0x1c]
	tst     r0, #0x10
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	ldr     r0, [r6, #0x1c]
	beq     branch_20c7c3c
	orr     r0, r0, #0x40
	str     r0, [r6, #0x1c]
	mov     r7, #0x0
	mov     r8, #0x1
branch_20c7c18: @ 20c7c18 :arm
	add     r0, r6, #0x14
	bl      OS_SleepThread
	ldr     r0, [r6, #0x1c]
	tst     r0, #0x40
	movne   r0, r8
	moveq   r0, r7
	cmp     r0, #0x0
	bne     branch_20c7c18
	b       branch_20c7c44

branch_20c7c3c: @ 20c7c3c :arm
	orr     r0, r0, #0x8
	str     r0, [r6, #0x1c]
branch_20c7c44: @ 20c7c44 :arm
	mov     r0, r4
	bl      OS_RestoreInterrupts
	mov     r0, r5
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c7c54


.arm
FS_ResumeArchive: @ 20c7c54 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r4, r0
	mov     r5, #0x0
	bl      OS_DisableInterrupts
	ldr     r1, [r4, #0x1c]
	mov     r6, r0
	tst     r1, #0x8
	movne   r0, #0x1
	moveq   r0, r5
	cmp     r0, #0x0
	moveq   r7, #0x1
	movne   r7, #0x0
	cmp     r7, #0x0
	bne     branch_20c7ca4
	ldr     r1, [r4, #0x1c]
	mov     r0, r4
	bic     r1, r1, #0x8
	str     r1, [r4, #0x1c]
	bl      FSi_NextCommand
	mov     r5, r0
branch_20c7ca4: @ 20c7ca4 :arm
	mov     r0, r6
	bl      OS_RestoreInterrupts
	cmp     r5, #0x0
	beq     branch_20c7cbc
	mov     r0, r5
	bl      FSi_ExecuteAsyncCommand
branch_20c7cbc: @ 20c7cbc :arm
	mov     r0, r7
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c7cc4


/* Input:
r0: Pointer to ArchiveData
*/
.arm
.globl FS_SetArchiveProc
FS_SetArchiveProc: @ 20c7cc4 :arm
	cmp     r2, #0x0
	moveq   r1, #0x0
	beq     branch_20c7cd8
	cmp     r1, #0x0
	moveq   r2, #0x0
branch_20c7cd8: @ 20c7cd8 :arm
	str     r1, [r0, #ArchiveData_54]
	str     r2, [r0, #ArchiveData_58]
	bx      lr
@ 0x20c7ce4


.arm
FS_NotifyArchiveAsyncEnd: @ 20c7ce4 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	mov     r6, r1
	tst     r0, #0x100
	movne   r0, #0x1
	moveq   r0, #0x0
	cmp     r0, #0x0
	beq     branch_20c7d38
	ldr     r1, [r4, #0x1c]
	ldr     r0, [r4, #0x24]
	bic     r2, r1, #0x100
	mov     r1, r6
	str     r2, [r4, #0x1c]
	bl      FSi_ReleaseCommand
	mov     r0, r4
	bl      FSi_NextCommand
	cmp     r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	bl      FSi_ExecuteAsyncCommand
	ldmfd   sp!, {r4-r6,pc}

branch_20c7d38: @ 20c7d38 :arm
	ldr     r5, [r4, #0x24]
	bl      OS_DisableInterrupts
	str     r6, [r5, #0x14]
	ldr     r1, [r4, #0x1c]
	mov     r5, r0
	bic     r1, r1, #0x200
	add     r0, r4, #0xc
	str     r1, [r4, #0x1c]
	bl      OS_WakeupThread
	mov     r0, r5
	bl      OS_RestoreInterrupts
	ldmfd   sp!, {r4-r6,pc}
@ 0x20c7d68


arm_func_start FS_Init
FS_Init: @ 20c7d68 :arm
	stmfd   sp!, {r3,lr}

	ldr     r1, =RomInitialized
	ldr     r2, [r1]
	cmp     r2, #0x0
	ldmnefd sp!, {r3,pc}

	mov     r2, #0x1
	str     r2, [r1]
	bl      FSi_InitRom
	ldmfd   sp!, {r3,pc}
@ 0x20c7d8c

.pool
arm_func_end FS_Init



.arm
FS_IsAvailable: @ 20c7d90 :arm
	ldr     r0, =RomInitialized
	ldr     r0, [r0]
	bx      lr
@ 0x20c7d9c

.pool



.arm
.globl FS_InitFile
FS_InitFile: @ 20c7da0 :arm
	mov     r2, #0x0
	str     r2, [r0]
	str     r2, [r0, #0x4]
	str     r2, [r0, #0x1c]
	str     r2, [r0, #0x18]
	str     r2, [r0, #0x8]
	mov     r1, #0xe
	str     r1, [r0, #0x10]
	str     r2, [r0, #0xc]
	bx      lr
@ 0x20c7dc8


.arm
FSi_FindPath: @ 20c7dc8 :arm
	stmfd   sp!, {r3-r8,lr}
	sub     sp, sp, #0xc
	mov     r7, r1
	ldrb    r1, [r7]
	mov     r8, r0
	mov     r6, r2
	cmp     r1, #0x2f
	mov     r5, r3
	cmpne   r1, #0x5c
	bne     branch_20c7e14
	ldr     r0, =RAM_21cec0c
	mov     r1, #0x0
	ldr     r0, [r0]
	strh    r1, [sp, #0x4]
	str     r0, [sp]
	str     r1, [sp, #0x8]
	strh    r1, [sp, #0x6]
	add     r7, r7, #0x1
	b       branch_20c7eb8

branch_20c7e14: @ 20c7e14 :arm
	ldr     r0, =RAM_21cec0c
	add     r3, sp, #0x0
	ldmia   r0, {r0-r2}
	stmia   r3, {r0-r2}
	mov     r4, #0x0
branch_20c7e28: @ 20c7e28 :arm
	ldrb    r0, [r7, r4]
	cmp     r0, #0x0
	cmpne   r0, #0x2f
	cmpne   r0, #0x5c
	beq     branch_20c7eb8
	cmp     r0, #0x3a
	bne     branch_20c7eac
	mov     r0, r7
	mov     r1, r4
	bl      FS_FindArchive
	cmp     r0, #0x0
	addeq   sp, sp, #0xc
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r8,pc}

	ldr     r1, [r0, #0x1c]
	tst     r1, #0x2
	movne   r1, #0x1
	moveq   r1, #0x0
	cmp     r1, #0x0
	addeq   sp, sp, #0xc
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r8,pc}
	mov     r1, #0x0
	str     r0, [sp]
	str     r1, [sp, #0x8]
	strh    r1, [sp, #0x6]
	strh    r1, [sp, #0x4]
	add     r0, r4, #0x1
	ldrb    r0, [r7, r0]!
	cmp     r0, #0x2f
	cmpne   r0, #0x5c
	addeq   r7, r7, #0x1
	b       branch_20c7eb8

branch_20c7eac: @ 20c7eac :arm
	add     r4, r4, #0x1
	cmp     r4, #0x3
	ble     branch_20c7e28
branch_20c7eb8: @ 20c7eb8 :arm
	ldr     r1, [sp]
	add     r0, sp, #0x0
	str     r1, [r8, #0x8]
	str     r7, [r8, #0x3c]
	add     r3, r8, #0x30
	ldmia   r0, {r0-r2}
	stmia   r3, {r0-r2}
	cmp     r5, #0x0
	moveq   r0, #0x0
	streq   r0, [r8, #0x40]
	streq   r6, [r8, #0x44]
	beq     branch_20c7ef4
	mov     r0, #0x1
	str     r0, [r8, #0x40]
	str     r5, [r8, #0x44]
branch_20c7ef4: @ 20c7ef4 :arm
	mov     r0, r8
	mov     r1, #0x4
	bl      FSi_SendCommand
	add     sp, sp, #0xc
	ldmfd   sp!, {r3-r8,pc}
@ 0x20c7f08

.pool



.arm
FSi_ReadFileCore: @ 20c7f0c :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	ldr     r4, [r7, #0x2c]
	ldr     r0, [r7, #0x28]
	mov     r6, r2
	str     r1, [r7, #0x30]
	sub     r0, r0, r4
	cmp     r6, r0
	movgt   r6, r0
	cmp     r6, #0x0
	movlt   r6, #0x0
	str     r2, [r7, #0x34]
	mov     r5, r3
	str     r6, [r7, #0x38]
	cmp     r5, #0x0
	ldreq   r0, [r7, #0xc]
	mov     r1, #0x0
	orreq   r0, r0, #0x4
	streq   r0, [r7, #0xc]

	mov     r0, r7
	bl      FSi_SendCommand
	cmp     r5, #0x0
	bne     branch_20c7f80

	mov     r0, r7
	bl      FS_WaitAsync
	cmp     r0, #0x0
	ldrne   r0, [r7, #0x2c]
	subne   r6, r0, r4
	mvneq   r6, #0x0
branch_20c7f80: @ 20c7f80 :arm
	mov     r0, r6
	ldmfd   sp!, {r3-r7,pc}
@ 0x20c7f88


.arm
FS_ConvertPathToFileID: @ 20c7f88 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x48
	mov     r5, r0
	add     r0, sp, #0x0
	mov     r4, r1
	bl      FS_InitFile
	add     r0, sp, #0x0
	mov     r1, r4
	mov     r2, r5
	mov     r3, #0x0
	bl      FSi_FindPath
	cmp     r0, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	add     sp, sp, #0x48
	ldmfd   sp!, {r3-r5,pc}
@ 0x20c7fc8


arm_func_start FS_OpenFileDirect
FS_OpenFileDirect: @ 20c7fc8 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	str     r1, [r4, #0x8]
	ldr     r12, [sp, #0x8]
	mov     r1, #0x7
	str     r12, [r4, #0x38]
	str     r2, [r4, #0x30]
	str     r3, [r4, #0x34]
	bl      FSi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	ldr     r1, [r4, #0xc]
	mov     r0, #0x1
	orr     r1, r1, #0x10
	bic     r1, r1, #0x20
	str     r1, [r4, #0xc]
	ldmfd   sp!, {r4,pc}
arm_func_end FS_OpenFileDirect


.arm
FS_OpenFileFast: @ 20c8010 :arm
	stmfd   sp!, {r0-r3}
	stmfd   sp!, {r4,lr}
	ldr     r1, [sp, #0xc]
	mov     r4, r0
	cmp     r1, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,lr}
	addeq   sp, sp, #0x10
	bxeq    lr
	str     r1, [r4, #0x8]
	str     r1, [r4, #0x30]
	ldr     r2, [sp, #0x10]
	mov     r1, #0x6
	str     r2, [r4, #0x34]
	bl      FSi_SendCommand
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,lr}
	addeq   sp, sp, #0x10
	bxeq    lr
	ldr     r1, [r4, #0xc]
	mov     r0, #0x1
	orr     r1, r1, #0x10
	bic     r1, r1, #0x20
	str     r1, [r4, #0xc]
	ldmfd   sp!, {r4,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x20c8080


arm_func_start FS_OpenFile
FS_OpenFile: @ 20c8080 :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x8
	mov     r4, r0
	add     r0, sp, #0x0
	bl      FS_ConvertPathToFileID
	cmp     r0, #0x0
	beq     branch_20c80bc
	add     r1, sp, #0x0
	mov     r0, r4
	ldmia   r1, {r1,r2}
	bl      FS_OpenFileFast
	cmp     r0, #0x0
	addne   sp, sp, #0x8
	movne   r0, #0x1
	ldmnefd sp!, {r4,pc}
branch_20c80bc: @ 20c80bc :arm
	mov     r0, #0x0
	add     sp, sp, #0x8
	ldmfd   sp!, {r4,pc}
arm_func_end FS_OpenFile


arm_func_start FS_CloseFile
FS_CloseFile: @ 20c80c8 :arm
	stmfd   sp!, {r4,lr}
	mov     r1, #0x8
	mov     r4, r0
	bl      FSi_SendCommand
	cmp     r0, #0x0
	mov     r0, #0x0
	ldmeqfd sp!, {r4,pc}

	str     r0, [r4, #0x8]
	mov     r0, #0xe
	str     r0, [r4, #0x10]
	ldr     r1, [r4, #0xc]
	mov     r0, #0x1
	bic     r1, r1, #0x30
	str     r1, [r4, #0xc]
	ldmfd   sp!, {r4,pc}
arm_func_end FS_CloseFile


.arm
FS_WaitAsync: @ 20c8104 :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r6, r0
	mov     r5, #0x0
	bl      OS_DisableInterrupts

	ldr     r1, [r6, #0xc]
	mov     r4, r0
	tst     r1, #0x1
	movne   r0, #0x1
	moveq   r0, r5
	cmp     r0, #0x0
	beq     branch_20c8194
	ldr     r0, [r6, #0xc]
	tst     r0, #0x44
	moveq   r5, #0x1
	movne   r5, #0x0
	cmp     r5, #0x0
	beq     branch_20c816c
	ldr     r0, [r6, #0xc]
	orr     r0, r0, #0x4
	str     r0, [r6, #0xc]
branch_20c8154: @ 20c8154 :arm
	add     r0, r6, #0x18
	bl      OS_SleepThread
	ldr     r0, [r6, #0xc]
	tst     r0, #0x40
	beq     branch_20c8154
	b       branch_20c8194

branch_20c816c: @ 20c816c :arm
	mov     r7, #0x0
	mov     r8, #0x1
branch_20c8174: @ 20c8174 :arm
	add     r0, r6, #0x18
	bl      OS_SleepThread
	ldr     r0, [r6, #0xc]
	tst     r0, #0x1
	movne   r0, r8
	moveq   r0, r7
	cmp     r0, #0x0
	bne     branch_20c8174
branch_20c8194: @ 20c8194 :arm
	mov     r0, r4
	bl      OS_RestoreInterrupts
	cmp     r5, #0x0
	beq     branch_20c81b0
	mov     r0, r6
	bl      FSi_ExecuteSyncCommand
	ldmfd   sp!, {r4-r8,pc}

branch_20c81b0: @ 20c81b0 :arm
	ldr     r0, [r6, #0x14]
	cmp     r0, #0x0
	moveq   r0, #0x1
	movne   r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x20c81c4


.arm
FS_ReadFileAsync: @ 20c81c4 :arm
	ldr     r12, =FSi_ReadFileCore
	mov     r3, #0x1
	bx      r12
@ 0x20c81d0

.pool



arm_func_start FS_ReadFile
FS_ReadFile: @ 20c81d4 :arm
	ldr     r12, =FSi_ReadFileCore
	mov     r3, #0x0
	bx      r12
@ 0x20c81e0

.pool
arm_func_end FS_ReadFile



arm_func_start FS_SeekFile
FS_SeekFile: @ 20c81e4 :arm
	cmp     r2, #0x0
	beq     branch_20c8200
	cmp     r2, #0x1
	beq     branch_20c820c
	cmp     r2, #0x2
	beq     branch_20c8218
	b       branch_20c8224

branch_20c8200: @ 20c8200 :arm
	ldr     r2, [r0, #0x24]
	add     r1, r1, r2
	b       branch_20c822c

branch_20c820c: @ 20c820c :arm
	ldr     r2, [r0, #0x2c]
	add     r1, r1, r2
	b       branch_20c822c

branch_20c8218: @ 20c8218 :arm
	ldr     r2, [r0, #0x28]
	add     r1, r1, r2
	b       branch_20c822c

branch_20c8224: @ 20c8224 :arm
	mov     r0, #0x0
	bx      lr

branch_20c822c: @ 20c822c :arm
	ldr     r2, [r0, #0x24]
	cmp     r1, r2
	movlt   r1, r2
	ldr     r2, [r0, #0x28]
	cmp     r1, r2
	movgt   r1, r2
	str     r1, [r0, #0x2c]
	mov     r0, #0x1
	bx      lr
arm_func_end FS_SeekFile


arm_func_start FS_ChangeDir
FS_ChangeDir: @ 20c8250 :arm
	stmfd   sp!, {r3,r4,lr}
	sub     sp, sp, #0x54
	mov     r4, r0
	add     r0, sp, #0xc
	bl      FS_InitFile
	add     r0, sp, #0xc
	add     r3, sp, #0x0
	mov     r1, r4
	mov     r2, #0x0
	bl      FSi_FindPath
	cmp     r0, #0x0
	addeq   sp, sp, #0x54
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,r4,pc}

	ldr     r3, =RAM_21cec0c
	add     r0, sp, #0x0
	ldmia   r0, {r0-r2}
	stmia   r3, {r0-r2}
	mov     r0, #0x1
	add     sp, sp, #0x54
	ldmfd   sp!, {r3,r4,pc}
@ 0x20c82a4

.pool
arm_func_end FS_ChangeDir



.arm
FSi_OnRomReadDone: @ 20c82a8 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_20cd9cc
	cmp     r0, #0x0
	movne   r1, #0x5
	moveq   r1, #0x0
	mov     r0, r4
	bl      FS_NotifyArchiveAsyncEnd
	ldmfd   sp!, {r4,pc}
@ 0x20c82cc

