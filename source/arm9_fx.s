

.arm
.globl FX_Div
FX_Div: @ 20bcfd0 :arm
	stmfd   sp!, {r3,lr}
	bl      FX_DivAsync
	bl      FX_GetDivResult
	ldmfd   sp!, {r3,pc}
@ FX_Inv


.arm
.globl FX_Inv
FX_Inv: @ 20bcfe0 :arm
	stmfd   sp!, {r3,lr}
	bl      FX_InvAsync
	bl      FX_GetDivResult
	ldmfd   sp!, {r3,pc}
@ FX_Sqrt


.arm
.globl FX_Sqrt
FX_Sqrt: @ 20bcff0 :arm
	stmfd   sp!, {r3,lr}
	cmp     r0, #0x0
	movle   r0, #0x0
	ldmlefd sp!, {r3,pc}
	ldr     r2,  =REG_SQRTCNT
	mov     r1, #0x1
	strh    r1, [r2]
	mov     r1, #0x0
	str     r1, [r2, #0x8]
	str     r0, [r2, #0xc]
	bl      FX_GetSqrtResult
	ldmfd   sp!, {r3,pc}
@ 0x20bd020

.pool



.arm
FX_GetDivResultFx64c: @ 20bd024 :arm
	ldr     r1, =REG_DIVCNT
branch_20bd028: @ 20bd028 :arm
	ldrh    r0, [r1]
	tst     r0, #DIV_BUSY
	bne     branch_20bd028

	ldr     r1, =REG_DIV_RESULT
	ldmia   r1, {r0,r1}
	bx      lr
@ 0x20bd040

.pool



.arm
FX_GetDivResult: @ 20bd048 :arm
	ldr     r1, =REG_DIVCNT
branch_20bd04c: @ 20bd04c :arm
	ldrh    r0, [r1]
	tst     r0, #DIV_BUSY
	bne     branch_20bd04c
    
	ldr     r0, =REG_DIV_RESULT
	ldr     r1, [r0]
	ldr     r0, [r0, #0x4]
	adds    r2, r1, #0x80000
	adc     r1, r0, #0x0
	mov     r0, r2, lsr #20
	orr     r0, r0, r1, lsl #12
	bx      lr
@ 0x20bd078

.pool



.arm
FX_InvAsync: @ 20bd080 :arm
	ldr     r2, =REG_DIVCNT
	mov     r1, #DIV_64_32
	strh    r1, [r2]

	mov     r1, #0x0
	str     r1, [r2, #REG_DIV_NUMER_L-REG_DIVCNT]
	mov     r1, #0x1000
	str     r1, [r2, #REG_DIV_NUMER_H-REG_DIVCNT]

	str     r0, [r2, #REG_DIV_DENOM_L-REG_DIVCNT]
	mov     r0, #0x0
	str     r0, [r2, #REG_DIV_DENOM_H-REG_DIVCNT]

	bx      lr
@ 0x20bd0ac

.pool



.arm
FX_GetSqrtResult: @ 20bd0b0 :arm
	ldr     r1, =REG_SQRTCNT
branch_20bd0b4: @ 20bd0b4 :arm
	ldrh    r0, [r1]
	tst     r0, #SQRT_BUSY
	bne     branch_20bd0b4
    
	ldr     r0, =REG_SQRT_RESULT
	ldr     r0, [r0]
	add     r0, r0, #0x200
	mov     r0, r0, lsr #10

	bx      lr
@ 0x20bd0d4

.pool



.arm
FX_DivAsync: @ 20bd0dc :arm
	ldr     r3, [pc, #0x1c] @ [0x20bd100] (=REG_DIVCNT)
	mov     r2, #DIV_64_32
	strh    r2, [r3]

	mov     r2, #0x0
	str     r2, [r3, #0x10]
	str     r0, [r3, #0x14]
	str     r1, [r3, #0x18]
	str     r2, [r3, #0x1c]

	bx      lr
@ 0x20bd100

.word REG_DIVCNT @ 0x20bd100



.arm
.globl Function_20bd104
Function_20bd104: @ 20bd104 :arm
	ldr     r2, [pc, #0x2c] @ [0x20bd138] (=REG_DIVCNT)
	mov     r3, #0x0
	strh    r3, [r2]
	str     r0, [r2, #0x10]
	str     r1, [r2, #0x18]
	mov     r0, r3
	str     r0, [r2, #0x1c]

branch_20bd120: @ 20bd120 :arm
	ldrh    r0, [r2]
	tst     r0, #2, 18 @ #0x8000
	bne     branch_20bd120

	ldr     r0, [pc, #0x8] @ [0x20bd13c] (=REG_DIV_RESULT)
	ldr     r0, [r0]
	bx      lr
@ 0x20bd138

.word REG_DIVCNT @ 0x20bd138
.word REG_DIV_RESULT @ 0x20bd13c



.arm
.globl Function_20bd140
Function_20bd140: @ 20bd140 :arm
	ldr     r2, [pc, #0x2c] @ [0x20bd174] (=REG_DIVCNT)
	mov     r3, #DIV_32_32
	strh    r3, [r2]

	str     r0, [r2, #0x10]
	str     r1, [r2, #0x18]
	mov     r0, r3
	str     r0, [r2, #0x1c]

branch_20bd15c: @ 20bd15c :arm
	ldrh    r0, [r2]
	tst     r0, #DIV_BUSY
	bne     branch_20bd15c

	ldr     r0, [pc, #0x8] @ [0x20bd178] (=REG_DIVREM_RESULT)
	ldr     r0, [r0]

	bx      lr
@ 0x20bd174

.word REG_DIVCNT @ 0x20bd174
.word REG_DIVREM_RESULT @ 0x20bd178



.arm
.globl VEC_Add
VEC_Add: @ 20bd17c :arm
	ldr     r12, [r0]
	ldr     r3, [r1]
	add     r3, r12, r3
	str     r3, [r2]

	ldr     r12, [r0, #0x4]
	ldr     r3, [r1, #0x4]
	add     r3, r12, r3
	str     r3, [r2, #0x4]

	ldr     r3, [r0, #0x8]
	ldr     r0, [r1, #0x8]
	add     r0, r3, r0
	str     r0, [r2, #0x8]

	bx      lr
@ VEC_Subtract


.arm
.globl VEC_Subtract
VEC_Subtract: @ 20bd1b0 :arm
	ldr     r12, [r0]
	ldr     r3, [r1]
	sub     r3, r12, r3
	str     r3, [r2]

	ldr     r12, [r0, #0x4]
	ldr     r3, [r1, #0x4]
	sub     r3, r12, r3
	str     r3, [r2, #0x4]

	ldr     r3, [r0, #0x8]
	ldr     r0, [r1, #0x8]
	sub     r0, r3, r0
	str     r0, [r2, #0x8]

	bx      lr
@ 0x20bd1e4


.arm
.globl Function_20bd1e4
Function_20bd1e4: @ 20bd1e4 :arm
	ldrsh   r12, [r0]
	ldrsh   r3, [r1]
	add     r3, r12, r3
	strh    r3, [r2]
	ldrsh   r12, [r0, #0x2]
	ldrsh   r3, [r1, #0x2]
	add     r3, r12, r3
	strh    r3, [r2, #0x2]
	ldrsh   r3, [r0, #0x4]
	ldrsh   r0, [r1, #0x4]
	add     r0, r3, r0
	strh    r0, [r2, #0x4]
	bx      lr
@ 0x20bd218


.arm
.globl VEC_DotProduct
VEC_DotProduct: @ 20bd218 :arm
	stmfd   sp!, {r4,lr}

	ldr     r3, [r0, #0x4]
	ldr     r2, [r1, #0x4]
	ldr     r12, [r0]
	smull   r4, lr, r3, r2
	ldr     r2, [r1]
	ldr     r3, [r0, #0x8]
	smlal   r4, lr, r12, r2
	ldr     r0, [r1, #0x8]
	smlal   r4, lr, r3, r0
	adds    r0, r4, #2, 22 @ #0x800
	adc     r1, lr, #0x0
	mov     r0, r0, lsr #12
	orr     r0, r0, r1, lsl #20

	ldmfd   sp!, {r4,pc}
@ 0x20bd254


.arm
VEC_Fx16DotProduct: @ 20bd254 :arm
	stmfd   sp!, {r3-r5,lr}

	ldrsh   lr, [r0, #0x2]
	ldrsh   r12, [r1, #0x2]
	ldrsh   r3, [r0, #0x4]
	ldrsh   r2, [r1, #0x4]
	ldrsh   r5, [r0]
	ldrsh   r4, [r1]
	smulbb  r1, lr, r12
	smulbb  r0, r3, r2
	add     r0, r0, #2, 22 @ #0x800
	smlabb  r1, r5, r4, r1
	adds    r2, r1, r0
	mov     r0, r0, asr #31
	adc     r1, r0, r1, asr #31
	mov     r0, r2, lsr #12
	orr     r0, r0, r1, lsl #20

	ldmfd   sp!, {r3-r5,pc}
@ 0x20bd298


.arm
VEC_CrossProduct: @ 20bd298 :arm
	stmfd   sp!, {r4-r8,lr}
	ldmia   r0, {r5,lr}
	ldr     r6, [r1, #0x8]
	ldr     r0, [r0, #0x8]
	ldmia   r1, {r4,r12}
	smull   r8, r7, lr, r6
	smull   r3, r1, r0, r12
	subs    r3, r8, r3
	sbc     r1, r7, r1
	adds    r3, r3, #2, 22 @ #0x800
	smull   r8, r7, r0, r4
	smull   r6, r0, r5, r6
	adc     r1, r1, #0x0
	subs    r6, r8, r6
	mov     r3, r3, lsr #12
	orr     r3, r3, r1, lsl #20
	sbc     r7, r7, r0
	adds    r0, r6, #2, 22 @ #0x800
	smull   r12, r6, r5, r12
	adc     r5, r7, #0x0
	smull   r4, r1, lr, r4
	mov     r7, r0, lsr #12
	subs    r4, r12, r4
	sbc     r0, r6, r1
	adds    r1, r4, #2, 22 @ #0x800
	str     r3, [r2]
	orr     r7, r7, r5, lsl #20
	adc     r0, r0, #0x0
	mov     r1, r1, lsr #12
	str     r7, [r2, #0x4]
	orr     r1, r1, r0, lsl #20
	str     r1, [r2, #0x8]
	ldmfd   sp!, {r4-r8,pc}
@ 0x20bd31c


.arm
VEC_Fx16CrossProduct: @ 20bd31c :arm
	stmfd   sp!, {r4-r6,lr}
	ldrsh   r4, [r1, #0x4]
	ldrsh   r12, [r0, #0x2]
	ldrsh   lr, [r0]
	ldrsh   r3, [r1, #0x2]
	ldrsh   r6, [r0, #0x4]
	ldrsh   r1, [r1]
	smulbb  r5, r12, r4
	smulbb  r0, r6, r3
	sub     r0, r5, r0
	add     r0, r0, #2, 22 @ #0x800
	mov     r0, r0, asr #12
	smulbb  r5, r6, r1
	smulbb  r4, lr, r4
	sub     r4, r5, r4
	add     r4, r4, #2, 22 @ #0x800
	smulbb  r3, lr, r3
	smulbb  r1, r12, r1
	sub     r1, r3, r1
	add     r1, r1, #2, 22 @ #0x800
	strh    r0, [r2]
	mov     r0, r4, asr #12
	strh    r0, [r2, #0x2]
	mov     r0, r1, asr #12
	strh    r0, [r2, #0x4]
	ldmfd   sp!, {r4-r6,pc}
@ VEC_Mag


.arm
.globl VEC_Mag
VEC_Mag: @ 20bd384 :arm
	ldr     r1, [r0, #0x4]
	ldr     r2, [r0]
	smull   r12, r3, r1, r1
	smlal   r12, r3, r2, r2
	ldr     r0, [r0, #0x8]
	ldr     r2, [pc, #0x3c] @ [0x20bd3dc] (=REG_SQRTCNT)
	smlal   r12, r3, r0, r0
	mov     r1, #0x1
	mov     r0, r3, lsl #2
	strh    r1, [r2]
	mov     r1, r12, lsl #2
	str     r1, [r2, #0x8]
	orr     r0, r0, r12, lsr #30
	str     r0, [r2, #0xc]
branch_20bd3bc: @ 20bd3bc :arm
	ldrh    r0, [r2]
	tst     r0, #0x8000
	bne     branch_20bd3bc
	ldr     r0, [pc, #0x10] @ [0x20bd3e0] (=REG_SQRT_RESULT)
	ldr     r0, [r0]
	add     r0, r0, #0x1
	mov     r0, r0, asr #1
	bx      lr
@ 0x20bd3dc

.word REG_SQRTCNT @ 0x20bd3dc
.word REG_SQRT_RESULT @ 0x20bd3e0



.arm
.globl VEC_Normalize
VEC_Normalize: @ 20bd3e4 :arm
	stmfd   sp!, {r3-r9,lr}
	ldr     r2, [r0, #0x4]
	ldr     r3, [r0]
	smull   r6, r5, r2, r2
	smlal   r6, r5, r3, r3
	ldr     r2, [r0, #0x8]
	ldr     r4, [pc, #0xec] @ [0x20bd4f0] (=REG_DIVCNT)
	smlal   r6, r5, r2, r2
	mov     r3, #DIV_64_64
	strh    r3, [r4]
	mov     r3, #0x0
	str     r3, [r4, #0x10]
	mov     r3, #0x1000000
	str     r3, [r4, #0x14]
	str     r6, [r4, #0x18]
	mov     r2, r5, lsl #2
	str     r5, [r4, #0x1c]
	mov     r3, #0x1
	strh    r3, [r4, #0x30]
	mov     r3, r6, lsl #2
	str     r3, [r4, #0x38]
	orr     r2, r2, r6, lsr #30
	str     r2, [r4, #0x3c]
branch_20bd440: @ 20bd440 :arm
	ldrh    r2, [r4, #0x30]
	tst     r2, #0x8000
	bne     branch_20bd440
	ldr     r2, [pc, #0xa0] @ [0x20bd4f4] (=REG_SQRT_RESULT)
	ldr     r12, [r2]
	sub     r3, r2, #0x34
branch_20bd458: @ 20bd458 :arm
	ldrh    r2, [r3]
	tst     r2, #0x8000
	bne     branch_20bd458
	ldr     r9, [pc, #0x8c] @ [0x20bd4f8] (=REG_DIV_RESULT)
	ldr     r5, [r0]
	ldr     r8, [r9]
	mov     r7, r12, asr #31
	umull   r3, r2, r8, r12
	umull   r6, lr, r3, r5
	mov     r4, r5, asr #31
	mla     r2, r8, r7, r2
	ldr     r7, [r9, #0x4]
	mla     lr, r3, r4, lr
	mla     r2, r7, r12, r2
	mla     lr, r2, r5, lr
	adds    r4, r6, #0x0
	adc     r4, lr, #0x1000
	mov     r4, r4, asr #13
	str     r4, [r1]
	ldr     r12, [r0, #0x4]
	umull   r5, lr, r3, r12
	mov     r4, r12, asr #31
	mla     lr, r3, r4, lr
	mla     lr, r2, r12, lr
	adds    r4, r5, #0x0
	adc     r4, lr, #0x1000
	mov     r4, r4, asr #13
	str     r4, [r1, #0x4]
	ldr     r12, [r0, #0x8]
	umull   r4, lr, r3, r12
	mov     r0, r12, asr #31
	mla     lr, r3, r0, lr
	mla     lr, r2, r12, lr
	adds    r0, r4, #0x0
	adc     r0, lr, #0x1000
	mov     r0, r0, asr #13
	str     r0, [r1, #0x8]
	ldmfd   sp!, {r3-r9,pc}
@ 0x20bd4f0

.word REG_DIVCNT @ 0x20bd4f0
.word REG_SQRT_RESULT @ 0x20bd4f4
.word REG_DIV_RESULT @ 0x20bd4f8



.arm
.globl VEC_Fx16Normalize
VEC_Fx16Normalize: @ 20bd4fc :arm
	stmfd   sp!, {r3-r9,lr}
	ldrsh   r5, [r0]
	ldrsh   r2, [r0, #0x2]
	ldrsh   r3, [r0, #0x4]
	ldr     r4, [pc, #0x108] @ [0x20bd61c] (=REG_DIVCNT)
	smulbb  r6, r2, r2
	smulbb  r8, r5, r5
	mov     r2, #0x2
	strh    r2, [r4]
	mov     r2, #0x0
	str     r2, [r4, #0x10]
	mov     r2, #1, 8 @ #0x1000000
	smulbb  r3, r3, r3
	mov     r5, r6, asr #31
	adds    r7, r8, r6
	adc     r6, r5, r8, asr #31
	adds    r5, r7, r3
	str     r2, [r4, #0x14]
	adc     r3, r6, r3, asr #31
	str     r5, [r4, #0x18]
	mov     r2, r3, lsl #2
	str     r3, [r4, #0x1c]
	mov     r3, #0x1
	strh    r3, [r4, #0x30]
	mov     r3, r5, lsl #2
	str     r3, [r4, #0x38]
	orr     r2, r2, r5, lsr #30
	str     r2, [r4, #0x3c]
branch_20bd56c: @ 20bd56c :arm
	ldrh    r2, [r4, #0x30]
	tst     r2, #2, 18 @ #0x8000
	bne     branch_20bd56c
	ldr     r2, [pc, #0xa0] @ [0x20bd620] (=REG_SQRT_RESULT)
	ldr     r12, [r2]
	sub     r3, r2, #0x34
branch_20bd584: @ 20bd584 :arm
	ldrh    r2, [r3]
	tst     r2, #2, 18 @ #0x8000
	bne     branch_20bd584
	ldr     r9, [pc, #0x8c] @ [0x20bd624] (=REG_DIV_RESULT)
	ldrsh   r5, [r0]
	ldr     r8, [r9]
	mov     r7, r12, asr #31
	umull   r3, r2, r8, r12
	umull   r6, lr, r3, r5
	mov     r4, r5, asr #31
	mla     r2, r8, r7, r2
	ldr     r7, [r9, #0x4]
	mla     lr, r3, r4, lr
	mla     r2, r7, r12, r2
	mla     lr, r2, r5, lr
	adds    r4, r6, #0x0
	adc     r4, lr, #1, 20 @ #0x1000
	mov     r4, r4, asr #13
	strh    r4, [r1]
	ldrsh   r12, [r0, #0x2]
	umull   r5, lr, r3, r12
	mov     r4, r12, asr #31
	mla     lr, r3, r4, lr
	mla     lr, r2, r12, lr
	adds    r4, r5, #0x0
	adc     r4, lr, #1, 20 @ #0x1000
	mov     r4, r4, asr #13
	strh    r4, [r1, #0x2]
	ldrsh   r12, [r0, #0x4]
	umull   r4, lr, r3, r12
	mov     r0, r12, asr #31
	mla     lr, r3, r0, lr
	mla     lr, r2, r12, lr
	adds    r0, r4, #0x0
	adc     r0, lr, #1, 20 @ #0x1000
	mov     r0, r0, asr #13
	strh    r0, [r1, #0x4]
	ldmfd   sp!, {r3-r9,pc}
@ 0x20bd61c

.word REG_DIVCNT @ 0x20bd61c
.word REG_SQRT_RESULT @ 0x20bd620
.word REG_DIV_RESULT @ 0x20bd624



.arm
.globl Function_20bd628
Function_20bd628: @ 20bd628 :arm
	stmfd   sp!, {r4,lr}
	ldr     r4, [r1]
	ldr     lr, [r2]
	smull   r12, r4, r0, r4
	mov     r12, r12, lsr #12
	orr     r12, r12, r4, lsl #20
	add     r4, lr, r12
	str     r4, [r3]
	ldr     r12, [r1, #0x4]
	ldr     r4, [r2, #0x4]
	smull   lr, r12, r0, r12
	mov     lr, lr, lsr #12
	orr     lr, lr, r12, lsl #20
	add     r4, r4, lr
	str     r4, [r3, #0x4]
	ldr     r1, [r1, #0x8]
	ldr     r12, [r2, #0x8]
	smull   r2, r1, r0, r1
	mov     r0, r2, lsr #12
	orr     r0, r0, r1, lsl #20
	add     r0, r12, r0
	str     r0, [r3, #0x8]
	ldmfd   sp!, {r4,pc}
@ 0x20bd684


.arm
Function_20bd684: @ 20bd684 :arm
	stmfd   sp!, {r3-r9,lr}
	mov     lr, #0x0
	cmp     r1, #0x1
	cmpeq   r0, #0x0
	mov     r2, #0x1
	moveq   r1, lr
	ldreq   r0, [pc, #0xb0] @ [0x20bd754] (=0xb504f334)
	ldmeqfd sp!, {r3-r9,pc}
	umull   r3, r12, r0, r0
	mla     r12, r0, r1, r12
	mla     r12, r1, r0, r12
	ldr     r4, [pc, #0xa0] @ [0x20bd758] (=0x2317888)
	ldr     r5, [pc, #0xa0] @ [0x20bd75c] (=0x3c2857c)
	umull   r3, r8, r12, r4
	umull   r3, r7, r12, r5
	mla     r8, r12, lr, r8
	mov     r3, lr
	mla     r7, r12, lr, r7
	mla     r8, r3, r4, r8
	subs    r9, lr, r8
	mla     r7, r3, r5, r7
	umull   r4, r5, r9, r7
	mla     r5, r9, r3, r5
	sbc     r8, r2, #0x0
	mla     r5, r8, r7, r5
	subs    r8, lr, r5
	ldr     r6, [pc, #0x6c] @ [0x20bd760] (=0x7e54b84)
	sbc     r7, r2, #0x0
	umull   r4, r5, r12, r6
	mla     r5, r12, lr, r5
	mla     r5, r3, r6, r5
	umull   r4, r6, r8, r5
	mla     r6, r8, r3, r6
	mla     r6, r7, r5, r6
	subs    r8, lr, r6
	sbc     r7, r2, #0x0
	ldr     r2, [pc, #0x48] @ [0x20bd764] (=0x14abbce6)
	ldr     r6, [pc, #0x48] @ [0x20bd768] (=0xc90fdaa2)
	umull   r4, r5, r12, r2
	mla     r5, r12, lr, r5
	mla     r5, r3, r2, r5
	umull   r2, r4, r8, r5
	mla     r4, r8, r3, r4
	mla     r4, r7, r5, r4
	subs    r6, r6, r4
	umull   r2, r4, r6, r0
	mla     r4, r6, r1, r4
	sbc     r5, lr, #0x0
	mla     r4, r5, r0, r4
	mov     r0, r4
	mov     r1, r3
	ldmfd   sp!, {r3-r9,pc}
@ 0x20bd754

.word 0xb504f334 @ 0x20bd754
.word 0x2317888 @ 0x20bd758
.word 0x3c2857c @ 0x20bd75c
.word 0x7e54b84 @ 0x20bd760
.word 0x14abbce6 @ 0x20bd764
.word 0xc90fdaa2 @ 0x20bd768



.arm
Function_20bd76c: @ 20bd76c :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r12, #0x0
	cmp     r1, #0x1
	cmpeq   r0, #0x0
	mov     r2, #0x1
	moveq   r1, r12
	ldreq   r0, [pc, #0x98] @ [0x20bd824] (=0xb504f334)
	ldmeqfd sp!, {r4-r8,pc}
	umull   r4, r3, r0, r0
	mla     r3, r0, r1, r3
	mla     r3, r1, r0, r3
	ldr     r1, [pc, #0x88] @ [0x20bd828] (=0x2d1e41d)
	ldr     lr, [pc, #0x88] @ [0x20bd82c] (=0x54387ad)
	umull   r0, r6, r3, r1
	umull   r0, r5, r3, lr
	mla     r6, r3, r12, r6
	mov     r0, r12
	mla     r5, r3, r12, r5
	mla     r6, r0, r1, r6
	subs    r8, r12, r6
	mla     r5, r0, lr, r5
	umull   r1, r6, r8, r5
	ldr     r4, [pc, #0x64] @ [0x20bd830] (=0xd28d331)
	mla     r6, r8, r0, r6
	umull   r1, lr, r3, r4
	mla     lr, r3, r12, lr
	sbc     r7, r2, #0x0
	mla     r6, r7, r5, r6
	subs    r6, r12, r6
	mla     lr, r0, r4, lr
	umull   r1, r4, r6, lr
	mla     r4, r6, r0, r4
	sbc     r5, r2, #0x0
	mla     r4, r5, lr, r4
	subs    r6, r12, r4
	ldr     r1, [pc, #0x34] @ [0x20bd834] (=0x4ef4f327)
	sbc     r5, r2, #0x0
	umull   r4, lr, r3, r1
	mla     lr, r3, r12, lr
	mla     lr, r0, r1, lr
	umull   r1, r3, r6, lr
	mla     r3, r6, r0, r3
	mla     r3, r5, lr, r3
	subs    r0, r12, r3
	sbc     r1, r2, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x20bd824

.word 0xb504f334 @ 0x20bd824
.word 0x2d1e41d @ 0x20bd828
.word 0x54387ad @ 0x20bd82c
.word 0xd28d331 @ 0x20bd830
.word 0x4ef4f327 @ 0x20bd834



.arm
.globl Function_20bd838
Function_20bd838: @ 20bd838 :arm
	stmfd   sp!, {r4,lr}
	cmp     r0, #0x0
	bge     branch_20bd858
	rsb     r0, r0, #0x0
	bl      Function_20bd838
	rsbs    r0, r0, #0x0
	rsc     r1, r1, #0x0
	ldmfd   sp!, {r4,pc}

branch_20bd858: @ 20bd858 :arm
	ldr     r1, [pc, #0x6c] @ [0x20bd8cc] (=0x45f306dd)
	mov     r2, #0x1
	umull   r12, lr, r0, r1
	mla     lr, r0, r2, lr
	mov     r0, r0, asr #31
	mla     lr, r0, r1, lr
	mov     r3, #0x0
	mov     r12, r12, lsr #12
	mov     r4, lr, asr #12
	orr     r12, r12, lr, lsl #20
	sub     r0, r3, #0x1
	tst     r4, #0x1
	and     r1, r3, lr, asr #12
	and     r0, r12, r0
	beq     branch_20bd89c
	subs    r0, r3, r0
	sbc     r1, r2, r1
branch_20bd89c: @ 20bd89c :arm
	add     r2, r4, #0x1
	tst     r2, #0x2
	beq     branch_20bd8b0
	bl      Function_20bd76c
	b       branch_20bd8b4

branch_20bd8b0: @ 20bd8b0 :arm
	bl      Function_20bd684
branch_20bd8b4: @ 20bd8b4 :arm
	and     r2, r4, #0x7
	cmp     r2, #0x3
	ldmlefd sp!, {r4,pc}
	rsbs    r0, r0, #0x0
	rsc     r1, r1, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x20bd8cc

.word 0x45f306dd @ 0x20bd8cc



.arm
.globl Function_20bd8d0
Function_20bd8d0: @ 20bd8d0 :arm
	stmfd   sp!, {r4,lr}
	cmp     r0, #0x0
	bge     branch_20bd8e8
	rsb     r0, r0, #0x0
	bl      Function_20bd8d0
	ldmfd   sp!, {r4,pc}

branch_20bd8e8: @ 20bd8e8 :arm
	ldr     r1, [pc, #0x70] @ [0x20bd960] (=0x45f306dd)
	mov     r2, #0x1
	umull   r12, lr, r0, r1
	mla     lr, r0, r2, lr
	mov     r0, r0, asr #31
	mla     lr, r0, r1, lr
	mov     r3, #0x0
	mov     r12, r12, lsr #12
	mov     r4, lr, asr #12
	orr     r12, r12, lr, lsl #20
	sub     r0, r3, #0x1
	tst     r4, #0x1
	and     r1, r3, lr, asr #12
	and     r0, r12, r0
	beq     branch_20bd92c
	subs    r0, r3, r0
	sbc     r1, r2, r1
branch_20bd92c: @ 20bd92c :arm
	add     r2, r4, #0x1
	tst     r2, #0x2
	beq     branch_20bd940
	bl      Function_20bd684
	b       branch_20bd944

branch_20bd940: @ 20bd940 :arm
	bl      Function_20bd76c
branch_20bd944: @ 20bd944 :arm
	add     r2, r4, #0x2
	and     r2, r2, #0x7
	cmp     r2, #0x3
	ldmlefd sp!, {r4,pc}
	rsbs    r0, r0, #0x0
	rsc     r1, r1, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x20bd960

.word 0x45f306dd @ 0x20bd960



.arm
.globl Function_20bd964
Function_20bd964: @ 20bd964 :arm
	stmfd   sp!, {r3,lr}
	cmp     r0, #0x0
	blt     branch_20bd9b8
	cmp     r0, #1, 20 @ #0x1000
	ble     branch_20bd99c
	bl      FX_Inv
	mov     r1, r0, asr #5
	ldr     r0, [pc, #0x94] @ [0x20bda1c] (=Unknown_20fd83c)
	mov     r1, r1, lsl #1
	ldrsh   r0, [r0, r1]
	rsb     r0, r0, #1, 18 @ #0x4000
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	ldmfd   sp!, {r3,pc}

branch_20bd99c: @ 20bd99c :arm
	movge   r0, #2, 20 @ #0x2000
	ldmgefd sp!, {r3,pc}
	mov     r1, r0, asr #5
	ldr     r0, [pc, #0x6c] @ [0x20bda1c] (=Unknown_20fd83c)
	mov     r1, r1, lsl #1
	ldrh    r0, [r0, r1]
	ldmfd   sp!, {r3,pc}

branch_20bd9b8: @ 20bd9b8 :arm
	mov     r1, #1, 20 @ #0x1000
	rsb     r1, r1, #0x0
	cmp     r0, r1
	bge     branch_20bd9f0
	rsb     r0, r0, #0x0
	bl      FX_Inv
	mov     r1, r0, asr #5
	ldr     r0, [pc, #0x40] @ [0x20bda1c] (=Unknown_20fd83c)
	mov     r1, r1, lsl #1
	ldrsh   r0, [r0, r1]
	sub     r0, r0, #1, 18 @ #0x4000
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	ldmfd   sp!, {r3,pc}

branch_20bd9f0: @ 20bd9f0 :arm
	movle   r0, #14, 20 @ #0xe000
	ldmlefd sp!, {r3,pc}
	rsb     r0, r0, #0x0
	mov     r1, r0, asr #5
	ldr     r0, [pc, #0x14] @ [0x20bda1c] (=Unknown_20fd83c)
	mov     r1, r1, lsl #1
	ldrsh   r0, [r0, r1]
	rsb     r0, r0, #0x0
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	ldmfd   sp!, {r3,pc}
@ 0x20bda1c

.word Unknown_20fd83c @ 0x20bda1c



.arm
.globl FX_Atan2Idx
FX_Atan2Idx: @ 20bda20 :arm
	stmfd   sp!, {r4,lr}
	cmp     r0, #0x0
	ble     branch_20bdab4
	cmp     r1, #0x0
	ble     branch_20bda6c
	cmp     r1, r0
	ble     branch_20bda4c
	mov     r2, r0
	mov     r4, #0x0
	mov     r0, #0x1
	b       branch_20bdb64

branch_20bda4c: @ 20bda4c :arm
	bge     branch_20bda64
	mov     r2, r1
	mov     r1, r0
	mov     r4, #1, 18 @ #0x4000
	mov     r0, #0x0
	b       branch_20bdb64

branch_20bda64: @ 20bda64 :arm
	mov     r0, #2, 20 @ #0x2000
	ldmfd   sp!, {r4,pc}

branch_20bda6c: @ 20bda6c :arm
	bge     branch_20bdaac
	rsb     r1, r1, #0x0
	cmp     r1, r0
	bge     branch_20bda90
	mov     r2, r1
	mov     r1, r0
	mov     r4, #1, 18 @ #0x4000
	mov     r0, #0x1
	b       branch_20bdb64

branch_20bda90: @ 20bda90 :arm
	ble     branch_20bdaa4
	mov     r2, r0
	mov     r4, #2, 18 @ #0x8000
	mov     r0, #0x0
	b       branch_20bdb64

branch_20bdaa4: @ 20bdaa4 :arm
	mov     r0, #6, 20 @ #0x6000
	ldmfd   sp!, {r4,pc}

branch_20bdaac: @ 20bdaac :arm
	mov     r0, #1, 18 @ #0x4000
	ldmfd   sp!, {r4,pc}

branch_20bdab4: @ 20bdab4 :arm
	bge     branch_20bdb54
	cmp     r1, #0x0
	rsb     r0, r0, #0x0
	bge     branch_20bdb08
	rsb     r1, r1, #0x0
	cmp     r1, r0
	ble     branch_20bdae4
	mov     r4, #2, 18 @ #0x8000
	mov     r2, r0
	rsb     r4, r4, #0x0
	mov     r0, #0x1
	b       branch_20bdb64

branch_20bdae4: @ 20bdae4 :arm
	bge     branch_20bdb00
	mov     r4, #1, 18 @ #0x4000
	mov     r2, r1
	mov     r1, r0
	rsb     r4, r4, #0x0
	mov     r0, #0x0
	b       branch_20bdb64

branch_20bdb00: @ 20bdb00 :arm
	mov     r0, #10, 20 @ #0xa000
	ldmfd   sp!, {r4,pc}

branch_20bdb08: @ 20bdb08 :arm
	cmp     r1, #0x0
	ble     branch_20bdb4c
	cmp     r1, r0
	bge     branch_20bdb30
	mov     r4, #1, 18 @ #0x4000
	mov     r2, r1
	mov     r1, r0
	rsb     r4, r4, #0x0
	mov     r0, #0x1
	b       branch_20bdb64

branch_20bdb30: @ 20bdb30 :arm
	ble     branch_20bdb44
	mov     r4, #0x0
	mov     r2, r0
	mov     r0, r4
	b       branch_20bdb64

branch_20bdb44: @ 20bdb44 :arm
	mov     r0, #14, 20 @ #0xe000
	ldmfd   sp!, {r4,pc}

branch_20bdb4c: @ 20bdb4c :arm
	mov     r0, #3, 18 @ #0xc000
	ldmfd   sp!, {r4,pc}

branch_20bdb54: @ 20bdb54 :arm
	cmp     r1, #0x0
	movge   r0, #0x0
	movlt   r0, #2, 18 @ #0x8000
	ldmfd   sp!, {r4,pc}

branch_20bdb64: @ 20bdb64 :arm
	cmp     r1, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	cmp     r0, #0x0
	mov     r0, r2
	beq     branch_20bdba0
	bl      FX_Div
	mov     r1, r0, asr #5
	ldr     r0, [pc, #0x38] @ [0x20bdbc4] (=Unknown_20fd83c)
	mov     r1, r1, lsl #1
	ldrsh   r0, [r0, r1]
	add     r0, r4, r0
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	ldmfd   sp!, {r4,pc}

branch_20bdba0: @ 20bdba0 :arm
	bl      FX_Div
	mov     r1, r0, asr #5
	ldr     r0, [pc, #0x14] @ [0x20bdbc4] (=Unknown_20fd83c)
	mov     r1, r1, lsl #1
	ldrsh   r0, [r0, r1]
	sub     r0, r4, r0
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	ldmfd   sp!, {r4,pc}
@ 0x20bdbc4

.word Unknown_20fd83c @ 0x20bdbc4


