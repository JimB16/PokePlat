

.thumb
MTX_Rot22_: @ 20bb464 :thumb
	str     r2, [r0, #0x0]
	str     r1, [r0, #0x4]
	neg     r1, r1
	str     r1, [r0, #0x8]
	str     r2, [r0, #0xc]
	bx      lr
@ 0x20bb470


.arm
MTX_ScaleApply22: @ 20bb470 :arm
	stmfd   sp!, {r3,lr}
	ldr     r12, [r0]
	smull   lr, r12, r2, r12
	mov     lr, lr, lsr #12
	orr     lr, lr, r12, lsl #20
	str     lr, [r1]
	ldr     r12, [r0, #0x4]
	smull   lr, r12, r2, r12
	mov     r2, lr, lsr #12
	orr     r2, r2, r12, lsl #20
	str     r2, [r1, #0x4]
	ldr     r2, [r0, #0x8]
	smull   r12, r2, r3, r2
	mov     r12, r12, lsr #12
	orr     r12, r12, r2, lsl #20
	str     r12, [r1, #0x8]
	ldr     r0, [r0, #0xc]
	smull   r2, r0, r3, r0
	mov     r2, r2, lsr #12
	orr     r2, r2, r0, lsl #20
	str     r2, [r1, #0xc]
	ldmfd   sp!, {r3,pc}
@ 0x20bb4c8


.arm
.globl MTX_Identity33_
MTX_Identity33_: @ 20bb4c8 :arm
	mov     r2, #0x1000
	str     r2, [r0, #0x20]
	mov     r3, #0x0
	stmia   r0!, {r2,r3}
	mov     r1, #0x0
	stmia   r0!, {r1,r3}
	stmia   r0!, {r2,r3}
	stmia   r0!, {r1,r3}
	bx      lr
@ 0x20bb4ec


.arm
MTX_ScaleApply33: @ 20bb4ec :arm
	stmfd   sp!, {r4,lr}
	ldr     r4, [r0]
	ldr     r12, [sp, #0x8]
	smull   lr, r4, r2, r4
	mov     lr, lr, lsr #12
	orr     lr, lr, r4, lsl #20
	str     lr, [r1]
	ldr     r4, [r0, #0x4]
	smull   lr, r4, r2, r4
	mov     lr, lr, lsr #12
	orr     lr, lr, r4, lsl #20
	str     lr, [r1, #0x4]
	ldr     lr, [r0, #0x8]
	smull   r4, lr, r2, lr
	mov     r2, r4, lsr #12
	orr     r2, r2, lr, lsl #20
	str     r2, [r1, #0x8]
	ldr     r2, [r0, #0xc]
	smull   lr, r2, r3, r2
	mov     lr, lr, lsr #12
	orr     lr, lr, r2, lsl #20
	str     lr, [r1, #0xc]
	ldr     r2, [r0, #0x10]
	smull   lr, r2, r3, r2
	mov     lr, lr, lsr #12
	orr     lr, lr, r2, lsl #20
	str     lr, [r1, #0x10]
	ldr     r2, [r0, #0x14]
	smull   lr, r2, r3, r2
	mov     r3, lr, lsr #12
	orr     r3, r3, r2, lsl #20
	str     r3, [r1, #0x14]
	ldr     r2, [r0, #0x18]
	smull   r3, r2, r12, r2
	mov     r3, r3, lsr #12
	orr     r3, r3, r2, lsl #20
	str     r3, [r1, #0x18]
	ldr     r2, [r0, #0x1c]
	smull   r3, r2, r12, r2
	mov     r3, r3, lsr #12
	orr     r3, r3, r2, lsl #20
	str     r3, [r1, #0x1c]
	ldr     r0, [r0, #0x20]
	smull   r2, r0, r12, r0
	mov     r2, r2, lsr #12
	orr     r2, r2, r0, lsl #20
	str     r2, [r1, #0x20]
	ldmfd   sp!, {r4,pc}
@ 0x20bb5ac


.thumb
.globl MTX_RotX33_
MTX_RotX33_: @ 20bb5ac :thumb
	mov     r3, #0x1
	lsl     r3, r3, #12
	str     r3, [r0, #0x0]
	mov     r3, #0x0
	str     r3, [r0, #0x4]
	str     r3, [r0, #0x8]
	str     r3, [r0, #0xc]
	str     r2, [r0, #0x10]
	str     r1, [r0, #0x14]
	str     r3, [r0, #0x18]
	neg     r1, r1
	str     r1, [r0, #0x1c]
	str     r2, [r0, #0x20]
	bx      lr
@ 0x20bb5c8


.thumb
.globl MTX_RotY33_
MTX_RotY33_: @ 20bb5c8 :thumb
	str     r2, [r0, #0x0]
	str     r2, [r0, #0x20]
	mov     r3, #0x0
	str     r3, [r0, #0x4]
	str     r3, [r0, #0xc]
	str     r3, [r0, #0x14]
	str     r3, [r0, #0x1c]
	neg     r2, r1
	mov     r3, #0x1
	lsl     r3, r3, #12
	str     r1, [r0, #0x18]
	str     r2, [r0, #0x8]
	str     r3, [r0, #0x10]
	bx      lr
@ 0x20bb5e4


.thumb
.globl MTX_RotZ33_
MTX_RotZ33_: @ 20bb5e4 :thumb
	stmia   r0!, {r2}
	mov     r3, #0x0
	stmia   r0!, {r1,r3}
	neg     r1, r1
	stmia   r0!, {r1,r2}
	mov     r1, #0x1
	lsl     r1, r1, #12
	str     r3, [r0, #0x0]
	str     r3, [r0, #0x4]
	str     r3, [r0, #0x8]
	str     r1, [r0, #0xc]
	bx      lr
@ 0x20bb5fc


.arm
MTX_Inverse33: @ 20bb5fc :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x50
	mov     r10, r0
	ldr     r0, [r10, #0x14]
	cmp     r10, r1
	addeq   r9, sp, #0x2c
	ldr     r3, [r10, #0x18]
	ldr     r2, [r10, #0xc]
	ldr     r6, [r10, #0x20]
	str     r1, [sp]
	movne   r9, r1
	smull   r11, r8, r2, r6
	smull   r7, r1, r0, r3
	subs    r7, r11, r7
	sbc     r12, r8, r1
	ldr     r4, [r10, #0x10]
	ldr     r5, [r10, #0x1c]
	adds    r1, r7, #0x800
	smull   r11, r8, r4, r6
	smull   r7, r6, r0, r5
	adc     r0, r12, #0x0
	subs    r7, r11, r7
	sbc     r6, r8, r6
	mov     r8, r1, lsr #12
	orr     r8, r8, r0, lsl #20
	smull   r1, r0, r2, r5
	adds    r7, r7, #0x800
	smull   r5, r3, r4, r3
	adc     r2, r6, #0x0
	mov     r7, r7, lsr #12
	orr     r7, r7, r2, lsl #20
	subs    r1, r1, r5
	sbc     r5, r0, r3
	ldr     r2, [r10]
	adds    r6, r1, #0x800
	ldr     r11, [r10, #0x4]
	smull   r4, r3, r2, r7
	smull   r1, r0, r11, r8
	adc     r2, r5, #0x0
	mov     r6, r6, lsr #12
	orr     r6, r6, r2, lsl #20
	subs    r2, r4, r1
	ldr     r1, [r10, #0x8]
	sbc     r0, r3, r0
	smlal   r2, r0, r1, r6
	adds    r1, r2, #0x800
	adc     r2, r0, #0x0
	mov     r0, r1, lsr #12
	mov     r1, r8, asr #31
	str     r1, [sp, #0x4]
	mov     r1, r7, asr #31
	str     r1, [sp, #0x8]
	mov     r1, r6, asr #31
	str     r1, [sp, #0xc]
	orrs    r0, r0, r2, lsl #20
	mov     r1, #0x0
	addeq   sp, sp, #0x50
	subeq   r0, r1, #0x1
	ldmeqfd sp!, {r3-r11,pc}

	bl      FX_InvAsync
	ldr     r1, [r10, #0x8]
	ldr     r2, [r10, #0x1c]
	ldr     r11, [r10, #0x10]
	smull   r0, r4, r2, r1
	smull   r3, r2, r11, r1
	ldr     r5, [r10, #0x18]
	str     r2, [sp, #0x18]
	str     r3, [sp, #0x14]
	smull   r3, r2, r5, r1
	str     r2, [sp, #0x20]
	ldr     r2, [r10, #0x20]
	str     r3, [sp, #0x1c]
	str     r2, [sp, #0x10]
	ldr     r5, [sp, #0x10]
	ldmia   r10, {r3,lr}
	smull   r12, r5, lr, r5
	subs    r0, r12, r0
	ldr     r2, [r10, #0xc]
	sbc     r4, r5, r4
	smull   r1, r5, r2, r1
	str     r5, [sp, #0x28]
	mov     r5, r0, lsr #12
	ldr     r11, [r10, #0x14]
	orr     r5, r5, r4, lsl #20
	smull   r4, r2, lr, r11
	ldr     r0, [sp, #0x14]
	subs    r4, r4, r0
	ldr     r0, [sp, #0x18]
	mov     r4, r4, lsr #12
	sbc     r0, r2, r0
	orr     r4, r4, r0, lsl #20
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0x1c]
	smull   r12, r0, r3, r0
	subs    r2, r12, r2
	ldr     r12, [sp, #0x20]
	sbc     r0, r0, r12
	smull   r12, r11, r3, r11
	ldr     r3, [sp, #0x28]
	subs    r1, r12, r1
	sbc     r3, r11, r3
	mov     r11, r2, lsr #12
	orr     r11, r11, r0, lsl #20
	mov     r0, r1, lsr #12
	orr     r0, r0, r3, lsl #20
	str     r0, [sp, #0x24]
	bl      FX_GetDivResult
	smull   r2, r1, r0, r5
	mov     r2, r2, lsr #12
	orr     r2, r2, r1, lsl #20
	rsb     lr, r2, #0x0
	smull   r2, r1, r0, r4
	mov     r4, r2, lsr #12
	orr     r4, r4, r1, lsl #20
	smull   r2, r1, r0, r11
	mov     r3, r2, lsr #12
	orr     r3, r3, r1, lsl #20
	ldr     r1, [sp, #0x24]
	umull   r11, r5, r0, r7
	smull   r2, r1, r0, r1
	mov     r2, r2, lsr #12
	orr     r2, r2, r1, lsl #20
	ldr     r1, [sp, #0x8]
	mov     r12, r0, asr #31
	mla     r5, r0, r1, r5
	mla     r5, r12, r7, r5
	mov     r1, r11, lsr #12
	orr     r1, r1, r5, lsl #20
	stmia   r9, {r1,lr}
	str     r4, [r9, #0x8]
	ldr     r1, [sp, #0x4]
	umull   r5, r4, r0, r8
	mla     r4, r0, r1, r4
	mla     r4, r12, r8, r4
	mov     r1, r5, lsr #12
	orr     r1, r1, r4, lsl #20
	rsb     r1, r1, #0x0
	str     r1, [r9, #0xc]
	ldr     r1, [sp, #0xc]
	rsb     r2, r2, #0x0
	str     r3, [r9, #0x10]
	str     r2, [r9, #0x14]
	umull   r3, r2, r0, r6
	mla     r2, r0, r1, r2
	mla     r2, r12, r6, r2
	mov     r1, r3, lsr #12
	orr     r1, r1, r2, lsl #20
	str     r1, [r9, #0x18]
	ldr     r3, [r10]
	ldr     r1, [r10, #0x1c]
	ldr     r2, [r10, #0x18]
	smull   r5, r4, r3, r1
	ldr     r1, [r10, #0x4]
	smull   r3, r1, r2, r1
	subs    r2, r5, r3
	sbc     r1, r4, r1
	mov     r2, r2, lsr #12
	orr     r2, r2, r1, lsl #20
	smull   r2, r1, r0, r2
	mov     r2, r2, lsr #12
	orr     r2, r2, r1, lsl #20
	rsb     r1, r2, #0x0
	str     r1, [r9, #0x1c]
	ldr     r4, [r10]
	ldr     r3, [r10, #0x10]
	ldr     r2, [r10, #0xc]
	ldr     r1, [r10, #0x4]
	smull   r6, r5, r4, r3
	smull   r3, r1, r2, r1
	subs    r2, r6, r3
	sbc     r1, r5, r1
	mov     r2, r2, lsr #12
	orr     r2, r2, r1, lsl #20
	mov     r1, r2, asr #31
	umull   r4, r3, r0, r2
	mla     r3, r0, r1, r3
	add     r0, sp, #0x2c
	mla     r3, r12, r2, r3
	mov     r1, r4, lsr #12
	orr     r1, r1, r3, lsl #20
	str     r1, [r9, #0x20]
	cmp     r9, r0
	bne     branch_20bb8e0
	ldr     r1, [sp]
	bl      MI_Copy36B
branch_20bb8e0: @ 20bb8e0 :arm
	mov     r0, #0x0
	add     sp, sp, #0x50
	ldmfd   sp!, {r3-r11,pc}
@ 0x20bb8ec


.arm
.globl MTX_Concat33
MTX_Concat33: @ 20bb8ec :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x40
	mov     r12, r2
	ldr     r3, [r0, #0x4]
	ldr     r2, [r1, #0xc]
	cmp     r12, r1
	smull   r7, r5, r3, r2
	ldr     r6, [r0]
	ldr     r4, [r1]
	addeq   r10, sp, #0x1c
	smlal   r7, r5, r6, r4
	ldr     r2, [r0, #0x8]
	ldr     r4, [r1, #0x18]
	movne   r10, r12
	smlal   r7, r5, r2, r4
	mov     r4, r7, lsr #12
	orr     r4, r4, r5, lsl #20
	str     r4, [r10]
	ldr     r4, [r1, #0x10]
	ldr     r5, [r1, #0x4]
	smull   r8, r7, r3, r4
	smlal   r8, r7, r6, r5
	ldr     r4, [r1, #0x1c]
	smlal   r8, r7, r2, r4
	mov     r4, r8, lsr #12
	orr     r4, r4, r7, lsl #20
	str     r4, [r10, #0x4]
	ldr     r4, [r1, #0x14]
	ldr     r5, [r1, #0x8]
	smull   r8, r7, r3, r4
	smlal   r8, r7, r6, r5
	ldr     r3, [r1, #0x20]
	smlal   r8, r7, r2, r3
	mov     r2, r8, lsr #12
	orr     r2, r2, r7, lsl #20
	str     r2, [r10, #0x8]
	ldr     r9, [r0, #0x10]
	ldr     r2, [r0, #0xc]
	smull   r7, r6, r9, r4
	smlal   r7, r6, r2, r5
	ldr     r4, [r0, #0x14]
	smlal   r7, r6, r4, r3
	mov     r3, r7, lsr #12
	orr     r3, r3, r6, lsl #20
	str     r3, [r10, #0x14]
	ldr     r3, [r1, #0x10]
	ldr     r5, [r1, #0x4]
	smull   r7, r6, r9, r3
	smlal   r7, r6, r2, r5
	ldr     r5, [r1, #0x1c]
	mov     r3, r9, asr #31
	smlal   r7, r6, r4, r5
	str     r3, [sp]
	mov     r3, r7, lsr #12
	orr     r3, r3, r6, lsl #20
	str     r3, [r10, #0x10]
	mov     r3, r2, asr #31
	str     r3, [sp, #0x4]
	mov     r3, r4, asr #31
	ldr     r8, [r1, #0xc]
	str     r3, [sp, #0x8]
	mov     r3, r8, asr #31
	str     r3, [sp, #0x18]
	ldr     r7, [r1]
	ldr     r6, [r1, #0x18]
	mov     r3, r7, asr #31
	str     r3, [sp, #0xc]
	umull   r3, r5, r4, r6
	mov     r11, r6, asr #31
	str     r3, [sp, #0x10]
	mla     r5, r4, r11, r5
	ldr     r3, [sp, #0x8]
	add     lr, sp, #0x1c
	mla     r5, r3, r6, r5
	umull   r3, r4, r2, r7
	str     r3, [sp, #0x14]
	ldr     r3, [sp, #0xc]
	mla     r4, r2, r3, r4
	ldr     r2, [sp, #0x4]
	umull   r3, r11, r9, r8
	mla     r4, r2, r7, r4
	ldr     r2, [sp, #0x14]
	adds    r3, r2, r3
	ldr     r2, [sp, #0x18]
	mla     r11, r9, r2, r11
	ldr     r2, [sp]
	mla     r11, r2, r8, r11
	adc     r4, r4, r11
	ldr     r2, [sp, #0x10]
	ldr     r11, [sp, #0x18]
	adds    r3, r2, r3
	adc     r2, r5, r4
	mov     r3, r3, lsr #12
	orr     r3, r3, r2, lsl #20
	str     r3, [r10, #0xc]
	ldr     r2, [r0, #0x1c]
	ldr     r5, [r0, #0x18]
	ldr     r4, [r0, #0x20]
	umull   r3, r0, r2, r8
	mla     r0, r2, r11, r0
	mov     r9, r2, asr #31
	mla     r0, r9, r8, r0
	smlal   r3, r0, r5, r7
	smlal   r3, r0, r4, r6
	mov     r3, r3, lsr #12
	orr     r3, r3, r0, lsl #20
	str     r3, [r10, #0x18]
	ldr     r0, [r1, #0x10]
	ldr     r3, [r1, #0x4]
	smull   r7, r0, r2, r0
	cmp     r10, lr
	smlal   r7, r0, r5, r3
	ldr     r6, [r1, #0x1c]
	addne   sp, sp, #0x40
	smlal   r7, r0, r4, r6
	mov     r3, r7, lsr #12
	orr     r3, r3, r0, lsl #20
	str     r3, [r10, #0x1c]
	ldr     r0, [r1, #0x14]
	ldr     r6, [r1, #0x20]
	ldr     r3, [r1, #0x8]
	smull   r1, r0, r2, r0
	smlal   r1, r0, r5, r3
	smlal   r1, r0, r4, r6
	mov     r1, r1, lsr #12
	orr     r1, r1, r0, lsl #20
	str     r1, [r10, #0x20]
	ldmnefd sp!, {r3-r11,pc}
	ldmia   lr!, {r0-r3}
	stmia   r12!, {r0-r3}
	ldmia   lr!, {r0-r3}
	stmia   r12!, {r0-r3}
	ldr     r0, [lr]
	str     r0, [r12]
	add     sp, sp, #0x40
	ldmfd   sp!, {r3-r11,pc}
@ 0x20bbb0c


.arm
MTX_MultVec33: @ 20bbb0c :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r4, [r1, #0xc]
	ldmia   r0, {r3,r12}
	smull   r6, r5, r12, r4
	ldr     r4, [r1]
	ldr     r0, [r0, #0x8]
	smlal   r6, r5, r3, r4
	ldr     r4, [r1, #0x18]
	smlal   r6, r5, r0, r4
	mov     r4, r6, lsr #12
	orr     r4, r4, r5, lsl #20
	str     r4, [r2]
	ldr     r4, [r1, #0x10]
	ldr     r5, [r1, #0x4]
	smull   r6, lr, r12, r4
	smlal   r6, lr, r3, r5
	ldr     r4, [r1, #0x1c]
	smlal   r6, lr, r0, r4
	mov     r4, r6, lsr #12
	orr     r4, r4, lr, lsl #20
	str     r4, [r2, #0x4]
	ldr     lr, [r1, #0x14]
	ldr     r4, [r1, #0x8]
	smull   r5, lr, r12, lr
	smlal   r5, lr, r3, r4
	ldr     r1, [r1, #0x20]
	smlal   r5, lr, r0, r1
	mov     r0, r5, lsr #12
	orr     r0, r0, lr, lsl #20
	str     r0, [r2, #0x8]
	ldmfd   sp!, {r4-r6,pc}
@ 0x20bbb88


.arm
MTX_Identity43_: @ 20bbb88 :arm
	mov     r2, #0x1000
	mov     r3, #0x0
	stmia   r0!, {r2,r3}
	mov     r1, #0x0
	stmia   r0!, {r1,r3}
	stmia   r0!, {r2,r3}
	stmia   r0!, {r1,r3}
	stmia   r0!, {r2,r3}
	stmia   r0!, {r1,r3}
	bx      lr
@ 0x20bbbb0


.arm
MTX_Copy43To44_: @ 20bbbb0 :arm
	stmfd   sp!, {r4}
	mov     r12, #0x0
	ldmia   r0!, {r2-r4}
	stmia   r1!, {r2-r4,r12}
	ldmia   r0!, {r2-r4}
	stmia   r1!, {r2-r4,r12}
	ldmia   r0!, {r2-r4}
	stmia   r1!, {r2-r4,r12}
	mov     r12, #0x1000
	ldmia   r0!, {r2-r4}
	stmia   r1!, {r2-r4,r12}
	ldmfd   sp!, {r4}
	bx      lr
@ 0x20bbbe4


.thumb
MTX_Scale43_: @ 20bbbe4 :thumb
	stmia   r0!, {r1}
	mov     r1, #0x0
	str     r3, [r0, #0x1c]
	mov     r3, #0x0
	stmia   r0!, {r1,r3}
	stmia   r0!, {r1-r3}
	mov     r2, #0x0
	stmia   r0!, {r1,r3}
	add     r0, #0x4
	stmia   r0!, {r1-r3}
	bx      lr
@ 0x20bbbfa


.align 2, 0
.arm
MTX_ScaleApply43: @ 20bbbfc :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r12, [sp, #0x10]
	mov     r5, r0
	str     r12, [sp]
	mov     r4, r1
	bl      MTX_ScaleApply33
	ldr     r0, [r5, #0x24]
	str     r0, [r4, #0x24]
	ldr     r0, [r5, #0x28]
	str     r0, [r4, #0x28]
	ldr     r0, [r5, #0x2c]
	str     r0, [r4, #0x2c]
	ldmfd   sp!, {r3-r5,pc}
@ 0x20bbc30


.thumb
.globl Function_20bbc30
Function_20bbc30: @ 20bbc30 :thumb
	str     r1, [r0, #0x14]
	neg     r1, r1
	str     r1, [r0, #0x1c]
	mov     r1, #0x1
	lsl     r1, r1, #12
	stmia   r0!, {r1}
	mov     r3, #0x0
	mov     r1, #0x0
	stmia   r0!, {r1,r3}
	stmia   r0!, {r1,r2}
	str     r1, [r0, #0x4]
	add     r0, #0xc
	stmia   r0!, {r2,r3}
	stmia   r0!, {r1,r3}
	bx      lr
@ 0x20bbc4e


.align 2, 0
.thumb
.globl Function_20bbc50
Function_20bbc50: @ 20bbc50 :thumb
	str     r1, [r0, #0x18]
	mov     r3, #0x0
	stmia   r0!, {r2,r3}
	neg     r1, r1
	stmia   r0!, {r1,r3}
	mov     r1, #0x1
	lsl     r1, r1, #12
	stmia   r0!, {r1,r3}
	add     r0, #0x4
	mov     r1, #0x0
	stmia   r0!, {r1-r3}
	stmia   r0!, {r1,r3}
	bx      lr
@ 0x20bbc6a


.align 2, 0
.arm
MTX_Inverse43: @ 20bbc6c :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0x5c
	mov     r10, r0
	ldr     r0, [r10, #0x14]
	cmp     r10, r1
	addeq   r9, sp, #0x2c
	ldr     r3, [r10, #0x18]
	ldr     r2, [r10, #0xc]
	ldr     r6, [r10, #0x20]
	str     r1, [sp]
	movne   r9, r1
	smull   r11, r8, r2, r6
	smull   r7, r1, r0, r3
	subs    r7, r11, r7
	sbc     r12, r8, r1
	ldr     r4, [r10, #0x10]
	ldr     r5, [r10, #0x1c]
	adds    r1, r7, #0x800
	smull   r11, r8, r4, r6
	smull   r7, r6, r0, r5
	adc     r0, r12, #0x0
	subs    r7, r11, r7
	sbc     r6, r8, r6
	mov     r8, r1, lsr #12
	orr     r8, r8, r0, lsl #20
	smull   r1, r0, r2, r5
	adds    r7, r7, #0x800
	smull   r5, r3, r4, r3
	adc     r2, r6, #0x0
	mov     r7, r7, lsr #12
	orr     r7, r7, r2, lsl #20
	subs    r1, r1, r5
	sbc     r5, r0, r3
	ldr     r2, [r10]
	adds    r6, r1, #0x800
	ldr     r11, [r10, #0x4]
	smull   r4, r3, r2, r7
	smull   r1, r0, r11, r8
	adc     r2, r5, #0x0
	mov     r6, r6, lsr #12
	orr     r6, r6, r2, lsl #20
	subs    r2, r4, r1
	ldr     r1, [r10, #0x8]
	sbc     r0, r3, r0
	smlal   r2, r0, r1, r6
	adds    r1, r2, #0x800
	adc     r2, r0, #0x0
	mov     r0, r1, lsr #12
	mov     r1, r8, asr #31
	str     r1, [sp, #0x4]
	mov     r1, r7, asr #31
	str     r1, [sp, #0x8]
	mov     r1, r6, asr #31
	str     r1, [sp, #0xc]
	orrs    r0, r0, r2, lsl #20
	mov     r1, #0x0
	addeq   sp, sp, #0x5c
	subeq   r0, r1, #0x1
	ldmeqfd sp!, {r4-r11,pc}

	bl      FX_InvAsync
	ldr     r1, [r10, #0x8]
	ldr     r2, [r10, #0x1c]
	ldr     r11, [r10, #0x10]
	smull   r0, r4, r2, r1
	smull   r3, r2, r11, r1
	ldr     r5, [r10, #0x18]
	str     r2, [sp, #0x18]
	str     r3, [sp, #0x14]
	smull   r3, r2, r5, r1
	str     r2, [sp, #0x20]
	ldr     r2, [r10, #0x20]
	str     r3, [sp, #0x1c]
	str     r2, [sp, #0x10]
	ldr     r5, [sp, #0x10]
	ldmia   r10, {r3,lr}
	smull   r12, r5, lr, r5
	subs    r0, r12, r0
	ldr     r2, [r10, #0xc]
	sbc     r4, r5, r4
	smull   r1, r5, r2, r1
	str     r5, [sp, #0x28]
	mov     r5, r0, lsr #12
	ldr     r11, [r10, #0x14]
	orr     r5, r5, r4, lsl #20
	smull   r4, r2, lr, r11
	ldr     r0, [sp, #0x14]
	subs    r4, r4, r0
	ldr     r0, [sp, #0x18]
	mov     r4, r4, lsr #12
	sbc     r0, r2, r0
	orr     r4, r4, r0, lsl #20
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0x1c]
	smull   r12, r0, r3, r0
	subs    r2, r12, r2
	ldr     r12, [sp, #0x20]
	sbc     r0, r0, r12
	smull   r12, r11, r3, r11
	ldr     r3, [sp, #0x28]
	subs    r1, r12, r1
	sbc     r3, r11, r3
	mov     r11, r2, lsr #12
	orr     r11, r11, r0, lsl #20
	mov     r0, r1, lsr #12
	orr     r0, r0, r3, lsl #20
	str     r0, [sp, #0x24]
	bl      FX_GetDivResult
	smull   r2, r1, r0, r5
	mov     r2, r2, lsr #12
	orr     r2, r2, r1, lsl #20
	rsb     lr, r2, #0x0
	smull   r2, r1, r0, r4
	mov     r4, r2, lsr #12
	orr     r4, r4, r1, lsl #20
	smull   r2, r1, r0, r11
	mov     r3, r2, lsr #12
	orr     r3, r3, r1, lsl #20
	ldr     r1, [sp, #0x24]
	umull   r11, r5, r0, r7
	smull   r2, r1, r0, r1
	mov     r2, r2, lsr #12
	orr     r2, r2, r1, lsl #20
	ldr     r1, [sp, #0x8]
	mov     r12, r0, asr #31
	mla     r5, r0, r1, r5
	mla     r5, r12, r7, r5
	mov     r1, r11, lsr #12
	orr     r1, r1, r5, lsl #20
	stmia   r9, {r1,lr}
	str     r4, [r9, #0x8]
	ldr     r1, [sp, #0x4]
	umull   r5, r4, r0, r8
	mla     r4, r0, r1, r4
	mla     r4, r12, r8, r4
	mov     r1, r5, lsr #12
	orr     r1, r1, r4, lsl #20
	rsb     r1, r1, #0x0
	str     r1, [r9, #0xc]
	ldr     r1, [sp, #0xc]
	rsb     r2, r2, #0x0
	str     r3, [r9, #0x10]
	str     r2, [r9, #0x14]
	umull   r3, r2, r0, r6
	mla     r2, r0, r1, r2
	mla     r2, r12, r6, r2
	mov     r1, r3, lsr #12
	orr     r1, r1, r2, lsl #20
	str     r1, [r9, #0x18]
	ldr     r3, [r10]
	ldr     r1, [r10, #0x1c]
	ldr     r2, [r10, #0x18]
	smull   r5, r4, r3, r1
	ldr     r1, [r10, #0x4]
	smull   r3, r1, r2, r1
	subs    r2, r5, r3
	sbc     r1, r4, r1
	mov     r2, r2, lsr #12
	orr     r2, r2, r1, lsl #20
	smull   r2, r1, r0, r2
	mov     r2, r2, lsr #12
	orr     r2, r2, r1, lsl #20
	rsb     r1, r2, #0x0
	str     r1, [r9, #0x1c]
	ldr     r4, [r10]
	ldr     r3, [r10, #0x10]
	ldr     r2, [r10, #0xc]
	ldr     r1, [r10, #0x4]
	smull   r6, r5, r4, r3
	smull   r3, r1, r2, r1
	subs    r2, r6, r3
	sbc     r1, r5, r1
	mov     r2, r2, lsr #12
	orr     r2, r2, r1, lsl #20
	mov     r1, r2, asr #31
	umull   r4, r3, r0, r2
	mla     r3, r0, r1, r3
	mla     r3, r12, r2, r3
	mov     r0, r4, lsr #12
	orr     r0, r0, r3, lsl #20
	str     r0, [r9, #0x20]
	ldr     r1, [r9, #0xc]
	ldr     r0, [r10, #0x28]
	ldr     r2, [r9]
	smull   r5, r4, r1, r0
	ldr     r0, [r10, #0x24]
	ldr     r3, [r9, #0x18]
	smlal   r5, r4, r2, r0
	ldr     r1, [r10, #0x2c]
	add     r0, sp, #0x2c
	smlal   r5, r4, r3, r1
	mov     r1, r5, lsr #12
	orr     r1, r1, r4, lsl #20
	rsb     r1, r1, #0x0
	str     r1, [r9, #0x24]
	ldr     r2, [r9, #0x10]
	ldr     r1, [r10, #0x28]
	ldr     r3, [r9, #0x4]
	smull   r5, r4, r2, r1
	ldr     r1, [r10, #0x24]
	ldr     r2, [r9, #0x1c]
	smlal   r5, r4, r3, r1
	ldr     r1, [r10, #0x2c]
	cmp     r9, r0
	smlal   r5, r4, r2, r1
	mov     r1, r5, lsr #12
	orr     r1, r1, r4, lsl #20
	rsb     r1, r1, #0x0
	str     r1, [r9, #0x28]
	ldr     r2, [r9, #0x14]
	ldr     r1, [r10, #0x28]
	ldr     r3, [r9, #0x8]
	smull   r6, r5, r2, r1
	ldr     r1, [r10, #0x24]
	ldr     r4, [r9, #0x20]
	smlal   r6, r5, r3, r1
	ldr     r2, [r10, #0x2c]
	smlal   r6, r5, r4, r2
	mov     r1, r6, lsr #12
	orr     r1, r1, r5, lsl #20
	rsb     r1, r1, #0x0
	str     r1, [r9, #0x2c]
	bne     branch_20bbfec
	ldr     r1, [sp]
	bl      MI_Copy48B
branch_20bbfec: @ 20bbfec :arm
	mov     r0, #0x0
	add     sp, sp, #0x5c
	ldmfd   sp!, {r4-r11,pc}
@ 0x20bbff8


.arm
MTX_Concat43: @ 20bbff8 :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0x4c
	mov     r12, r2
	ldr     r2, [r0, #0x4]
	ldr     r3, [r1, #0xc]
	cmp     r12, r1
	smull   r7, r4, r2, r3
	ldr     r6, [r0]
	ldr     r3, [r1]
	addeq   r10, sp, #0x1c
	smlal   r7, r4, r6, r3
	ldr     r5, [r0, #0x8]
	ldr     r3, [r1, #0x18]
	movne   r10, r12
	smlal   r7, r4, r5, r3
	mov     r3, r7, lsr #12
	orr     r3, r3, r4, lsl #20
	str     r3, [r10]
	ldr     r3, [r1, #0x10]
	ldr     r4, [r1, #0x4]
	smull   r8, r7, r2, r3
	smlal   r8, r7, r6, r4
	ldr     r3, [r1, #0x1c]
	smlal   r8, r7, r5, r3
	mov     r3, r8, lsr #12
	orr     r3, r3, r7, lsl #20
	str     r3, [r10, #0x4]
	ldr     r3, [r1, #0x14]
	ldr     r4, [r1, #0x8]
	smull   r8, r7, r2, r3
	smlal   r8, r7, r6, r4
	ldr     r2, [r1, #0x20]
	smlal   r8, r7, r5, r2
	mov     r5, r8, lsr #12
	orr     r5, r5, r7, lsl #20
	str     r5, [r10, #0x8]
	ldr     r8, [r0, #0x10]
	ldr     r9, [r0, #0xc]
	smull   r5, r3, r8, r3
	smlal   r5, r3, r9, r4
	ldr     r7, [r0, #0x14]
	mov     r6, r9, asr #31
	smlal   r5, r3, r7, r2
	mov     r2, r5, lsr #12
	orr     r2, r2, r3, lsl #20
	str     r2, [r10, #0x14]
	ldr     r2, [r1, #0x10]
	ldr     r3, [r1, #0x4]
	smull   r5, r4, r8, r2
	smlal   r5, r4, r9, r3
	ldr     r3, [r1, #0x1c]
	mov     r2, r8, asr #31
	smlal   r5, r4, r7, r3
	str     r2, [sp, #0x14]
	mov     r2, r5, lsr #12
	orr     r2, r2, r4, lsl #20
	str     r2, [r10, #0x10]
	mov     r2, r7, asr #31
	ldr     r5, [r1]
	str     r2, [sp]
	ldr     r4, [r1, #0xc]
	ldr     lr, [r1, #0x18]
	mov     r2, r4, asr #31
	str     r2, [sp, #0x4]
	mov     r2, r5, asr #31
	str     r2, [sp, #0x8]
	umull   r2, r3, r7, lr
	mov     r11, lr, asr #31
	mla     r3, r7, r11, r3
	str     r2, [sp, #0xc]
	ldr     r2, [sp]
	ldr     r7, [sp, #0x8]
	mla     r3, r2, lr, r3
	umull   r11, r2, r9, r5
	mla     r2, r9, r7, r2
	mla     r2, r6, r5, r2
	ldr     r6, [sp, #0x4]
	umull   r9, r7, r8, r4
	mla     r7, r8, r6, r7
	ldr     r8, [sp, #0x14]
	adds    r6, r11, r9
	mla     r7, r8, r4, r7
	adc     r7, r2, r7
	ldr     r2, [sp, #0xc]
	adds    r6, r2, r6
	adc     r2, r3, r7
	mov     r3, r6, lsr #12
	orr     r3, r3, r2, lsl #20
	str     r3, [r10, #0xc]
	ldr     r3, [r0, #0x1c]
	ldr     r6, [r0, #0x18]
	smull   r7, r4, r3, r4
	smlal   r7, r4, r6, r5
	ldr     r2, [r0, #0x20]
	smlal   r7, r4, r2, lr
	mov     r5, r7, lsr #12
	orr     r5, r5, r4, lsl #20
	str     r5, [r10, #0x18]
	ldr     r4, [r1, #0x10]
	ldr     r5, [r1, #0x4]
	smull   r8, r4, r3, r4
	smlal   r8, r4, r6, r5
	ldr     r7, [r1, #0x1c]
	smlal   r8, r4, r2, r7
	mov     r5, r8, lsr #12
	orr     r5, r5, r4, lsl #20
	str     r5, [r10, #0x1c]
	ldr     r5, [r1, #0x14]
	ldr     r4, [r1, #0x8]
	smull   r8, r7, r3, r5
	smlal   r8, r7, r6, r4
	ldr     r3, [r1, #0x20]
	smlal   r8, r7, r2, r3
	mov     r2, r8, lsr #12
	orr     r2, r2, r7, lsl #20
	str     r2, [r10, #0x20]
	ldr     r2, [r0, #0x28]
	ldr     r9, [r0, #0x24]
	ldr     r7, [r0, #0x2c]
	smull   r5, r0, r2, r5
	smlal   r5, r0, r9, r4
	smlal   r5, r0, r7, r3
	mov     r3, r5, lsr #12
	orr     r3, r3, r0, lsl #20
	mov     r0, r7, asr #31
	str     r0, [sp, #0x18]
	ldr     r0, [r1, #0x2c]
	mov     r11, r2, asr #31
	adds    r0, r0, r3
	str     r0, [r10, #0x2c]
	ldr     r3, [r1, #0x10]
	ldr     r4, [r1, #0x4]
	smull   r6, r3, r2, r3
	smlal   r6, r3, r9, r4
	ldr     r5, [r1, #0x1c]
	ldr     r0, [r1, #0x28]
	smlal   r6, r3, r7, r5
	mov     r4, r6, lsr #12
	orr     r4, r4, r3, lsl #20
	adds    r0, r0, r4
	mov     r8, r9, asr #31
	str     r0, [r10, #0x28]
	ldr     r4, [r1]
	ldr     r3, [r1, #0xc]
	umull   r0, r5, r9, r4
	mov     lr, r4, asr #31
	mla     r5, r9, lr, r5
	mov     r9, r3, asr #31
	str     r0, [sp, #0x10]
	mla     r5, r8, r4, r5
	umull   r8, r0, r2, r3
	mla     r0, r2, r9, r0
	ldr     r4, [sp, #0x10]
	mla     r0, r11, r3, r0
	adds    r4, r4, r8
	adc     r2, r5, r0
	ldr     r6, [r1, #0x18]
	ldr     r8, [r1, #0x24]
	mov     r1, r6, asr #31
	umull   r5, r3, r7, r6
	mla     r3, r7, r1, r3
	adds    r1, r5, r4
	ldr     r0, [sp, #0x18]
	mov     r1, r1, lsr #12
	mla     r3, r0, r6, r3
	adc     r0, r3, r2
	orr     r1, r1, r0, lsl #20
	adds    r0, r8, r1
	add     r4, sp, #0x1c
	cmp     r10, r4
	addne   sp, sp, #0x4c
	str     r0, [r10, #0x24]
	ldmnefd sp!, {r4-r11,pc}
	ldmia   r4!, {r0-r3}
	stmia   r12!, {r0-r3}
	ldmia   r4!, {r0-r3}
	stmia   r12!, {r0-r3}
	ldmia   r4, {r0-r3}
	stmia   r12, {r0-r3}
	add     sp, sp, #0x4c
	ldmfd   sp!, {r4-r11,pc}
@ 0x20bc2cc


.arm
.globl MTX_MultVec43
MTX_MultVec43: @ 20bc2cc :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r4, [r1, #0xc]
	ldmia   r0, {r3,r12}
	smull   r6, r5, r12, r4
	ldr     r4, [r1]
	ldr     r0, [r0, #0x8]
	smlal   r6, r5, r3, r4
	ldr     r4, [r1, #0x18]
	smlal   r6, r5, r0, r4
	mov     r6, r6, lsr #12
	orr     r6, r6, r5, lsl #20
	str     r6, [r2]
	ldr     r4, [r1, #0x24]
	add     r4, r6, r4
	str     r4, [r2]
	ldr     r4, [r1, #0x10]
	ldr     r5, [r1, #0x4]
	smull   r6, lr, r12, r4
	smlal   r6, lr, r3, r5
	ldr     r4, [r1, #0x1c]
	smlal   r6, lr, r0, r4
	mov     r5, r6, lsr #12
	orr     r5, r5, lr, lsl #20
	str     r5, [r2, #0x4]
	ldr     r4, [r1, #0x28]
	add     r4, r5, r4
	str     r4, [r2, #0x4]
	ldr     lr, [r1, #0x14]
	ldr     r4, [r1, #0x8]
	smull   r5, lr, r12, lr
	smlal   r5, lr, r3, r4
	ldr     r3, [r1, #0x20]
	smlal   r5, lr, r0, r3
	mov     r3, r5, lsr #12
	orr     r3, r3, lr, lsl #20
	str     r3, [r2, #0x8]
	ldr     r0, [r1, #0x2c]
	add     r0, r3, r0
	str     r0, [r2, #0x8]
	ldmfd   sp!, {r4-r6,pc}
@ 0x20bc36c


.arm
MTX_LookAt: @ 20bc36c :arm
	stmfd   sp!, {r3-r6,lr}
	sub     sp, sp, #0x24
	mov     r6, r0
	ldr     r5, [r6]
	ldr     r4, [r2]
	add     r0, sp, #0x18
	sub     r4, r5, r4
	str     r4, [sp, #0x18]
	ldr     r12, [r6, #0x4]
	ldr     r4, [r2, #0x4]
	mov     r5, r1
	sub     r1, r12, r4
	str     r1, [sp, #0x1c]
	ldr     r4, [r6, #0x8]
	ldr     r2, [r2, #0x8]
	mov     r1, r0
	sub     r2, r4, r2
	mov     r4, r3
	str     r2, [sp, #0x20]
	bl      VEC_Normalize
	add     r1, sp, #0x18
	add     r2, sp, #0xc
	mov     r0, r5
	bl      VEC_CrossProduct
	add     r0, sp, #0xc
	mov     r1, r0
	bl      VEC_Normalize
	add     r0, sp, #0x18
	add     r1, sp, #0xc
	add     r2, sp, #0x0
	bl      VEC_CrossProduct
	ldr     r1, [sp, #0xc]
	mov     r0, r6
	str     r1, [r4]
	ldr     r2, [sp]
	add     r1, sp, #0xc
	str     r2, [r4, #0x4]
	ldr     r2, [sp, #0x18]
	str     r2, [r4, #0x8]
	ldr     r2, [sp, #0x10]
	str     r2, [r4, #0xc]
	ldr     r2, [sp, #0x4]
	str     r2, [r4, #0x10]
	ldr     r2, [sp, #0x1c]
	str     r2, [r4, #0x14]
	ldr     r2, [sp, #0x14]
	str     r2, [r4, #0x18]
	ldr     r2, [sp, #0x8]
	str     r2, [r4, #0x1c]
	ldr     r2, [sp, #0x20]
	str     r2, [r4, #0x20]
	bl      VEC_DotProduct
	rsb     r0, r0, #0x0
	str     r0, [r4, #0x24]
	mov     r0, r6
	add     r1, sp, #0x0
	bl      VEC_DotProduct
	rsb     r0, r0, #0x0
	str     r0, [r4, #0x28]
	mov     r0, r6
	add     r1, sp, #0x18
	bl      VEC_DotProduct
	rsb     r0, r0, #0x0
	str     r0, [r4, #0x2c]
	add     sp, sp, #0x24
	ldmfd   sp!, {r3-r6,pc}
@ 0x20bc474


.arm
MTX_Identity44_: @ 20bc474 :arm
	mov     r2, #0x1000
	mov     r3, #0x0
	stmia   r0!, {r2,r3}
	mov     r1, #0x0
	stmia   r0!, {r1,r3}
	stmia   r0!, {r1-r3}
	stmia   r0!, {r1,r3}
	stmia   r0!, {r1-r3}
	stmia   r0!, {r1,r3}
	stmia   r0!, {r1,r2}
	bx      lr
@ 0x20bc4a0


.arm
MTX_Copy44To43_: @ 20bc4a0 :arm
	ldmia   r0!, {r2,r3,r12}
	add     r0, r0, #0x4
	stmia   r1!, {r2,r3,r12}
	ldmia   r0!, {r2,r3,r12}
	add     r0, r0, #0x4
	stmia   r1!, {r2,r3,r12}
	ldmia   r0!, {r2,r3,r12}
	add     r0, r0, #0x4
	stmia   r1!, {r2,r3,r12}
	ldmia   r0!, {r2,r3,r12}
	add     r0, r0, #0x4
	stmia   r1!, {r2,r3,r12}
	bx      lr
@ 0x20bc4d4


.arm
Function_20bc4d4: @ 20bc4d4 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	cmp     r7, r6
	beq     branch_20bc4f4
	bl      MI_Copy48B
branch_20bc4f4: @ 20bc4f4 :arm
	ldr     r0, [r7, #0x10]
	ldr     r1, [r7]
	smull   r3, r2, r4, r0
	smlal   r3, r2, r5, r1
	ldr     r0, [sp, #0x18]
	ldr     r1, [r7, #0x20]
	ldr     r12, [r7, #0x30]
	smlal   r3, r2, r0, r1
	mov     r1, r3, lsr #12
	orr     r1, r1, r2, lsl #20
	add     r1, r12, r1
	str     r1, [r6, #0x30]
	ldr     r1, [r7, #0x14]
	ldr     r2, [r7, #0x4]
	smull   r12, r3, r4, r1
	smlal   r12, r3, r5, r2
	ldr     r1, [r7, #0x24]
	ldr     r2, [r7, #0x34]
	smlal   r12, r3, r0, r1
	mov     r1, r12, lsr #12
	orr     r1, r1, r3, lsl #20
	add     r1, r2, r1
	str     r1, [r6, #0x34]
	ldr     r1, [r7, #0x18]
	ldr     r2, [r7, #0x8]
	smull   r12, r3, r4, r1
	smlal   r12, r3, r5, r2
	ldr     r1, [r7, #0x28]
	ldr     r2, [r7, #0x38]
	smlal   r12, r3, r0, r1
	mov     r1, r12, lsr #12
	orr     r1, r1, r3, lsl #20
	add     r1, r2, r1
	str     r1, [r6, #0x38]
	ldr     r1, [r7, #0x1c]
	ldr     r2, [r7, #0xc]
	smull   r12, r3, r4, r1
	smlal   r12, r3, r5, r2
	ldr     r1, [r7, #0x2c]
	ldr     r2, [r7, #0x3c]
	smlal   r12, r3, r0, r1
	mov     r0, r12, lsr #12
	orr     r0, r0, r3, lsl #20
	add     r0, r2, r0
	str     r0, [r6, #0x3c]
	ldmfd   sp!, {r3-r7,pc}
@ 0x20bc5ac


.thumb
Function_20bc5ac: @ 20bc5ac :thumb
	str     r2, [r0, #0x14]
	str     r2, [r0, #0x28]
	str     r1, [r0, #0x18]
	neg     r1, r1
	str     r1, [r0, #0x24]
	mov     r1, #0x1
	mov     r2, #0x0
	lsl     r1, r1, #12
	mov     r3, #0x0
	stmia   r0!, {r1-r3}
	stmia   r0!, {r2,r3}
	add     r0, #0x8
	stmia   r0!, {r2,r3}
	add     r0, #0x8
	stmia   r0!, {r2,r3}
	stmia   r0!, {r2,r3}
	str     r1, [r0, #0x0]
	bx      lr
@ 0x20bc5d0


.thumb
Function_20bc5d0: @ 20bc5d0 :thumb
	str     r2, [r0, #0x0]
	str     r2, [r0, #0x28]
	str     r1, [r0, #0x20]
	neg     r1, r1
	str     r1, [r0, #0x8]
	mov     r3, #0x1
	mov     r1, #0x0
	lsl     r3, r3, #12
	mov     r2, #0x0
	str     r2, [r0, #0x4]
	add     r0, #0xc
	stmia   r0!, {r1-r3}
	stmia   r0!, {r1,r2}
	str     r2, [r0, #0x4]
	add     r0, #0xc
	stmia   r0!, {r1,r2}
	stmia   r0!, {r1-r3}
	bx      lr
@ 0x20bc5f4


.thumb
Function_20bc5f4: @ 20bc5f4 :thumb
	str     r2, [r0, #0x0]
	str     r2, [r0, #0x14]
	str     r1, [r0, #0x4]
	neg     r1, r1
	str     r1, [r0, #0x10]
	mov     r3, #0x1
	mov     r1, #0x0
	lsl     r3, r3, #12
	mov     r2, #0x0
	add     r0, #0x8
	stmia   r0!, {r1,r2}
	add     r0, #0x8
	stmia   r0!, {r1,r2}
	stmia   r0!, {r1-r3}
	stmia   r0!, {r1,r2}
	stmia   r0!, {r1-r3}
	bx      lr
@ 0x20bc616


.align 2, 0
.arm
MTX_Concat44: @ 20bc618 :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0xe8
	cmp     r2, r1
	addeq   r10, sp, #0xa8
	str     r2, [sp]
	movne   r10, r2
	ldr     r4, [r0, #0x4]
	ldr     r2, [r1, #0x10]
	ldr     r5, [r0]
	smull   r8, r7, r4, r2
	ldr     r2, [r1]
	ldr     r3, [r0, #0x8]
	smlal   r8, r7, r5, r2
	ldr     r6, [r1, #0x20]
	ldr     r2, [r0, #0xc]
	smlal   r8, r7, r3, r6
	ldr     r6, [r1, #0x30]
	smlal   r8, r7, r2, r6
	mov     r6, r8, lsr #12
	orr     r6, r6, r7, lsl #20
	str     r6, [r10]
	ldr     r6, [r1, #0x14]
	ldr     r7, [r1, #0x4]
	smull   r9, r8, r4, r6
	smlal   r9, r8, r5, r7
	ldr     r6, [r1, #0x24]
	ldr     r7, [r1, #0x34]
	smlal   r9, r8, r3, r6
	smlal   r9, r8, r2, r7
	mov     r6, r9, lsr #12
	orr     r6, r6, r8, lsl #20
	str     r6, [r10, #0x4]
	ldr     r6, [r1, #0x1c]
	ldr     r7, [r1, #0xc]
	smull   r9, r8, r4, r6
	smlal   r9, r8, r5, r7
	ldr     r6, [r1, #0x2c]
	ldr     r7, [r1, #0x3c]
	smlal   r9, r8, r3, r6
	smlal   r9, r8, r2, r7
	mov     r6, r9, lsr #12
	orr     r6, r6, r8, lsl #20
	str     r6, [r10, #0xc]
	ldr     r11, [r1, #0x18]
	ldr     r12, [r1, #0x8]
	smull   r7, r6, r4, r11
	ldr     r8, [r1, #0x38]
	smlal   r7, r6, r5, r12
	ldr     r9, [r1, #0x28]
	mov     lr, r8, asr #31
	smlal   r7, r6, r3, r9
	smlal   r7, r6, r2, r8
	mov     r2, r7, lsr #12
	orr     r2, r2, r6, lsl #20
	str     r2, [r10, #0x8]
	mov     r2, r11, asr #31
	str     r2, [sp, #0x4]
	mov     r2, r12, asr #31
	str     r2, [sp, #0x8]
	mov     r2, r9, asr #31
	str     r2, [sp, #0x8c]
	ldr     r6, [r0, #0x14]
	ldr     r7, [r0, #0x10]
	mov     r2, r6, asr #31
	str     r2, [sp, #0xc]
	mov     r2, r7, asr #31
	ldr     r5, [r0, #0x18]
	str     r2, [sp, #0x10]
	mov     r2, r5, asr #31
	ldr     r4, [r0, #0x1c]
	str     r2, [sp, #0x14]
	mov     r2, r4, asr #31
	str     r2, [sp, #0x18]
	umull   r2, r3, r4, r8
	str     r2, [sp, #0x1c]
	mla     r3, r4, lr, r3
	ldr     r2, [sp, #0x18]
	mla     r3, r2, r8, r3
	umull   r8, r2, r5, r9
	str     r8, [sp, #0x20]
	ldr     r8, [sp, #0x8c]
	mla     r2, r5, r8, r2
	ldr     r8, [sp, #0x14]
	mla     r2, r8, r9, r2
	ldr     r8, [sp, #0x8]
	umull   lr, r9, r7, r12
	mla     r9, r7, r8, r9
	ldr     r8, [sp, #0x10]
	mla     r9, r8, r12, r9
	umull   r12, r8, r6, r11
	adds    lr, lr, r12
	ldr     r12, [sp, #0x4]
	mla     r8, r6, r12, r8
	ldr     r12, [sp, #0xc]
	mla     r8, r12, r11, r8
	adc     r9, r9, r8
	ldr     r8, [sp, #0x20]
	adds    r11, r8, lr
	adc     r8, r2, r9
	ldr     r2, [sp, #0x1c]
	adds    r9, r2, r11
	adc     r2, r3, r8
	mov     r3, r9, lsr #12
	orr     r3, r3, r2, lsl #20
	str     r3, [r10, #0x18]
	ldr     r2, [r1, #0x14]
	ldr     r3, [r1, #0x4]
	smull   r11, r2, r6, r2
	smlal   r11, r2, r7, r3
	ldr     r8, [r1, #0x24]
	ldr     r9, [r1, #0x34]
	smlal   r11, r2, r5, r8
	smlal   r11, r2, r4, r9
	mov     r3, r11, lsr #12
	orr     r3, r3, r2, lsl #20
	str     r3, [r10, #0x14]
	ldr     r2, [r1, #0x1c]
	ldr     r3, [r1, #0xc]
	smull   r11, r2, r6, r2
	smlal   r11, r2, r7, r3
	ldr     r8, [r1, #0x2c]
	ldr     r9, [r1, #0x3c]
	smlal   r11, r2, r5, r8
	smlal   r11, r2, r4, r9
	mov     r3, r11, lsr #12
	orr     r3, r3, r2, lsl #20
	str     r3, [r10, #0x1c]
	ldr     r9, [r1, #0x10]
	ldr     r11, [r1, #0x30]
	smull   r12, r8, r6, r9
	ldr     r3, [r1]
	ldr     r2, [r1, #0x20]
	smlal   r12, r8, r7, r3
	smlal   r12, r8, r5, r2
	smlal   r12, r8, r4, r11
	mov     r4, r12, lsr #12
	orr     r4, r4, r8, lsl #20
	str     r4, [r10, #0x10]
	mov     r4, r3, asr #31
	mov     r5, r9, asr #31
	str     r4, [sp, #0x28]
	mov     r4, r2, asr #31
	str     r5, [sp, #0x24]
	ldr     r7, [r0, #0x24]
	str     r4, [sp, #0x2c]
	mov     r4, r7, asr #31
	ldr     r8, [r0, #0x20]
	ldr     r6, [r0, #0x28]
	ldr     r5, [r0, #0x2c]
	mov     lr, r11, asr #31
	str     r4, [sp, #0x90]
	mov     r4, r8, asr #31
	str     r4, [sp, #0x30]
	mov     r4, r6, asr #31
	str     r4, [sp, #0x34]
	mov     r4, r5, asr #31
	str     r4, [sp, #0x38]
	umull   r12, r4, r5, r11
	str     r12, [sp, #0x3c]
	mla     r4, r5, lr, r4
	ldr     r12, [sp, #0x38]
	mla     r4, r12, r11, r4
	umull   r11, lr, r6, r2
	str     r11, [sp, #0x40]
	ldr     r11, [sp, #0x2c]
	mla     lr, r6, r11, lr
	ldr     r11, [sp, #0x34]
	mla     lr, r11, r2, lr
	umull   r2, r12, r8, r3
	str     r2, [sp, #0x44]
	ldr     r2, [sp, #0x28]
	mla     r12, r8, r2, r12
	ldr     r2, [sp, #0x30]
	mla     r12, r2, r3, r12
	umull   r3, r11, r7, r9
	ldr     r2, [sp, #0x44]
	adds    r3, r2, r3
	ldr     r2, [sp, #0x24]
	mla     r11, r7, r2, r11
	ldr     r2, [sp, #0x90]
	mla     r11, r2, r9, r11
	ldr     r2, [sp, #0x40]
	adc     r9, r12, r11
	adds    r11, r2, r3
	ldr     r2, [sp, #0x3c]
	adc     r3, lr, r9
	adds    r9, r2, r11
	adc     r2, r4, r3
	mov     r3, r9, lsr #12
	orr     r3, r3, r2, lsl #20
	str     r3, [r10, #0x20]
	ldr     r2, [r1, #0x14]
	ldr     lr, [r1, #0x4]
	str     r2, [sp, #0x48]
	ldr     r3, [sp, #0x48]
	mov     r2, r2, asr #31
	umull   r12, r11, r7, r3
	mla     r11, r7, r2, r11
	ldr     r2, [sp, #0x90]
	ldr     r4, [r1, #0x24]
	mla     r11, r2, r3, r11
	smlal   r12, r11, r8, lr
	smlal   r12, r11, r6, r4
	ldr     r9, [r1, #0x34]
	smlal   r12, r11, r5, r9
	mov     r2, r12, lsr #12
	orr     r2, r2, r11, lsl #20
	str     r2, [r10, #0x24]
	ldr     r2, [r1, #0x1c]
	ldr     lr, [r1, #0xc]
	str     r2, [sp, #0x4c]
	ldr     r3, [sp, #0x4c]
	mov     r2, r2, asr #31
	umull   r12, r11, r7, r3
	mla     r11, r7, r2, r11
	ldr     r2, [sp, #0x90]
	ldr     r4, [r1, #0x2c]
	mla     r11, r2, r3, r11
	smlal   r12, r11, r8, lr
	smlal   r12, r11, r6, r4
	ldr     r9, [r1, #0x3c]
	smlal   r12, r11, r5, r9
	mov     r2, r12, lsr #12
	orr     r2, r2, r11, lsl #20
	str     r2, [r10, #0x2c]
	ldr     r11, [r1, #0x18]
	ldr     r3, [r1, #0x38]
	mov     r12, r11, asr #31
	str     r3, [sp, #0x50]
	umull   r4, r3, r7, r11
	mla     r3, r7, r12, r3
	ldr     r7, [sp, #0x90]
	ldr     r2, [r1, #0x8]
	mla     r3, r7, r11, r3
	smlal   r4, r3, r8, r2
	ldr     r9, [r1, #0x28]
	smlal   r4, r3, r6, r9
	ldr     r6, [sp, #0x50]
	smlal   r4, r3, r5, r6
	mov     r4, r4, lsr #12
	orr     r4, r4, r3, lsl #20
	str     r4, [r10, #0x28]
	ldr     r4, [r0, #0x34]
	ldr     r3, [r0, #0x30]
	smull   r6, r5, r4, r11
	smlal   r6, r5, r3, r2
	mov     r2, r4, asr #31
	str     r2, [sp, #0x54]
	mov     r2, r3, asr #31
	str     r2, [sp, #0x58]
	ldr     r2, [r0, #0x38]
	ldr     r12, [r0, #0x3c]
	smlal   r6, r5, r2, r9
	ldr     r0, [sp, #0x50]
	smlal   r6, r5, r12, r0
	mov     r0, r6, lsr #12
	orr     r0, r0, r5, lsl #20
	str     r0, [r10, #0x38]
	mov     r0, r2, asr #31
	str     r0, [sp, #0x5c]
	mov     r0, r12, asr #31
	str     r0, [sp, #0x60]
	ldr     r8, [r1, #0x24]
	ldr     r7, [r1, #0x4]
	mov     r0, r8, asr #31
	ldr     r9, [r1, #0x34]
	str     r0, [sp, #0x98]
	mov     r0, r7, asr #31
	ldr     r6, [r1, #0x14]
	str     r0, [sp, #0x6c]
	mov     r0, r6, asr #31
	str     r0, [sp, #0x70]
	umull   r0, r11, r12, r9
	mov     lr, r9, asr #31
	str     r0, [sp, #0x64]
	mla     r11, r12, lr, r11
	ldr     r0, [sp, #0x60]
	add     r5, sp, #0xa8
	mla     r11, r0, r9, r11
	umull   r0, r9, r2, r8
	str     r0, [sp, #0x94]
	ldr     r0, [sp, #0x98]
	mla     r9, r2, r0, r9
	ldr     r0, [sp, #0x5c]
	mla     r9, r0, r8, r9
	umull   r0, r8, r3, r7
	str     r0, [sp, #0x68]
	ldr     r0, [sp, #0x6c]
	mla     r8, r3, r0, r8
	ldr     r0, [sp, #0x58]
	mla     r8, r0, r7, r8
	umull   r7, lr, r4, r6
	ldr     r0, [sp, #0x68]
	adds    r7, r0, r7
	ldr     r0, [sp, #0x70]
	mla     lr, r4, r0, lr
	ldr     r0, [sp, #0x54]
	mla     lr, r0, r6, lr
	ldr     r0, [sp, #0x94]
	adc     r6, r8, lr
	adds    r7, r0, r7
	ldr     r0, [sp, #0x64]
	adc     r6, r9, r6
	adds    r7, r0, r7
	adc     r0, r11, r6
	mov     r6, r7, lsr #12
	orr     r6, r6, r0, lsl #20
	str     r6, [r10, #0x34]
	ldr     r8, [r1, #0x20]
	ldr     r9, [r1, #0x30]
	mov     r0, r8, asr #31
	ldr     r7, [r1]
	str     r0, [sp, #0xa0]
	mov     r0, r7, asr #31
	ldr     r6, [r1, #0x10]
	str     r0, [sp, #0x7c]
	mov     r0, r6, asr #31
	str     r0, [sp, #0x80]
	umull   r0, r11, r12, r9
	mov     lr, r9, asr #31
	str     r0, [sp, #0x74]
	mla     r11, r12, lr, r11
	ldr     r0, [sp, #0x60]
	mla     r11, r0, r9, r11
	umull   r0, r9, r2, r8
	str     r0, [sp, #0x9c]
	ldr     r0, [sp, #0xa0]
	mla     r9, r2, r0, r9
	ldr     r0, [sp, #0x5c]
	mla     r9, r0, r8, r9
	umull   r0, r8, r3, r7
	str     r0, [sp, #0x78]
	ldr     r0, [sp, #0x7c]
	mla     r8, r3, r0, r8
	ldr     r0, [sp, #0x58]
	mla     r8, r0, r7, r8
	umull   r7, lr, r4, r6
	ldr     r0, [sp, #0x78]
	adds    r7, r0, r7
	ldr     r0, [sp, #0x80]
	mla     lr, r4, r0, lr
	ldr     r0, [sp, #0x54]
	mla     lr, r0, r6, lr
	ldr     r0, [sp, #0x9c]
	adc     r6, r8, lr
	adds    r7, r0, r7
	ldr     r0, [sp, #0x74]
	adc     r6, r9, r6
	adds    r7, r0, r7
	adc     r0, r11, r6
	mov     r6, r7, lsr #12
	orr     r6, r6, r0, lsl #20
	str     r6, [r10, #0x30]
	ldr     r8, [r1, #0x3c]
	ldr     r6, [r1, #0xc]
	mov     r0, r8, asr #31
	str     r0, [sp, #0x84]
	ldr     r7, [r1, #0x2c]
	ldr     r11, [sp, #0x84]
	mov     r0, r7, asr #31
	str     r0, [sp, #0x88]
	ldr     r0, [r1, #0x1c]
	mov     lr, r6, asr #31
	mov     r1, r0, asr #31
	str     r1, [sp, #0xa4]
	umull   r9, r1, r12, r8
	mla     r1, r12, r11, r1
	ldr     r11, [sp, #0x60]
	mla     r1, r11, r8, r1
	ldr     r8, [sp, #0x88]
	umull   r12, r11, r2, r7
	mla     r11, r2, r8, r11
	ldr     r2, [sp, #0x5c]
	ldr     r8, [sp, #0xa4]
	mla     r11, r2, r7, r11
	umull   r7, r2, r3, r6
	mla     r2, r3, lr, r2
	ldr     r3, [sp, #0x58]
	mla     r2, r3, r6, r2
	umull   r6, r3, r4, r0
	mla     r3, r4, r8, r3
	ldr     r4, [sp, #0x54]
	mla     r3, r4, r0, r3
	adds    r4, r7, r6
	adc     r0, r2, r3
	adds    r2, r12, r4
	adc     r0, r11, r0
	adds    r2, r9, r2
	adc     r0, r1, r0
	mov     r1, r2, lsr #12
	orr     r1, r1, r0, lsl #20
	cmp     r10, r5
	addne   sp, sp, #0xe8
	str     r1, [r10, #0x3c]
	ldmnefd sp!, {r3-r11,pc}
	ldr     r4, [sp]
	ldmia   r5!, {r0-r3}
	stmia   r4!, {r0-r3}
	str     r4, [sp]
	ldmia   r5!, {r0-r3}
	stmia   r4!, {r0-r3}
	str     r4, [sp]
	ldmia   r5!, {r0-r3}
	stmia   r4!, {r0-r3}
	ldmia   r5, {r0-r3}
	stmia   r4, {r0-r3}
	str     r4, [sp]
	add     sp, sp, #0xe8
	ldmfd   sp!, {r3-r11,pc}
@ 0x20bcc7c


.arm
MTX_PerspectiveW: @ 20bcc7c :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, r4
	mov     r8, r2
	mov     r7, r3
	ldr     r6, [sp, #0x1c]
	ldr     r5, [sp, #0x20]
	bl      FX_Div
	ldr     r1, [sp, #0x18]
	ldr     r2, [pc, #0x118] @ [0x20bcdc4] (=REG_DIV_NUMER)
	mov     r3, #0x0
	str     r3, [r2]
	mov     r3, #0x1000
	str     r3, [r2, #0x4]
	sub     r1, r7, r1
	str     r1, [r2, #0x8]
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [r2, #0xc]
	cmp     r6, #0x1000
	beq     branch_20bcce4
	mul     r1, r4, r6
	mov     r0, r1, asr #11
	add     r0, r1, r0, lsr #20
	mov     r4, r0, asr #12
branch_20bcce4: @ 20bcce4 :arm
	mov     r1, #0x0
	str     r1, [r5, #0x4]
	str     r1, [r5, #0x8]
	str     r1, [r5, #0xc]
	str     r1, [r5, #0x10]
	str     r4, [r5, #0x14]
	str     r1, [r5, #0x18]
	str     r1, [r5, #0x1c]
	str     r1, [r5, #0x20]
	str     r1, [r5, #0x24]
	rsb     r0, r6, #0x0
	str     r0, [r5, #0x2c]
	str     r1, [r5, #0x30]
	str     r1, [r5, #0x34]
	str     r1, [r5, #0x3c]
	bl      FX_GetDivResultFx64c
	ldr     r2, [pc, #0x98] @ [0x20bcdc4] (=REG_DIV_NUMER)
	mov     r3, #0x0
	stmia   r2, {r3,r4,r8}
	str     r3, [r2, #0xc]
	cmp     r6, #0x1000
	beq     branch_20bcd60
	mov     r2, r6, asr #31
	umull   r4, r3, r0, r6
	mla     r3, r0, r2, r3
	mla     r3, r1, r6, r3
	mov     r0, r4
	mov     r1, r3
	mov     r2, #0x1000
	mov     r3, #0x0
	bl      _ll_sdiv
branch_20bcd60: @ 20bcd60 :arm
	ldr     r4, [sp, #0x18]
	mov     r2, r7, lsl #1
	add     r6, r4, r7
	mov     r3, r6, asr #31
	umull   r8, r7, r0, r6
	mla     r7, r0, r3, r7
	smull   r4, r3, r2, r4
	mla     r7, r1, r6, r7
	adds    r2, r8, #0x80000000
	adc     r7, r7, #0x0
	adds    r4, r4, #0x800
	adc     r2, r3, #0x0
	mov     r3, r4, lsr #12
	orr     r3, r3, r2, lsl #20
	umull   r6, r4, r0, r3
	mov     r2, r3, asr #31
	mla     r4, r0, r2, r4
	mla     r4, r1, r3, r4
	adds    r0, r6, #0x80000000
	str     r7, [r5, #0x28]
	adc     r0, r4, #0x0
	str     r0, [r5, #0x38]
	bl      FX_GetDivResult
	str     r0, [r5]
	ldmfd   sp!, {r4-r8,pc}
@ 0x20bcdc4

.word REG_DIV_NUMER @ 0x20bcdc4



.arm
MTX_OrthoW: @ 20bcdc8 :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x8
	str     r2, [sp]
	mov     r10, r0
	ldr     r0, [sp]
	mov     r2, r3
	sub     r0, r2, r0
	ldr     r8, [sp, #0x3c]
	str     r3, [sp, #0x4]
	mov     r11, r1
	ldr     r9, [sp, #0x38]
	bl      FX_InvAsync
	mov     r0, #0x0
	str     r0, [r8, #0x4]
	str     r0, [r8, #0x8]
	str     r0, [r8, #0xc]
	str     r0, [r8, #0x10]
	str     r0, [r8, #0x18]
	str     r0, [r8, #0x1c]
	str     r0, [r8, #0x20]
	str     r0, [r8, #0x24]
	str     r0, [r8, #0x2c]
	str     r9, [r8, #0x3c]
	bl      FX_GetDivResultFx64c
	mov     r6, r1
	mov     r4, r0
	ldr     r1, [pc, #0x194] @ [0x20bcfcc] (=REG_DIV_NUMER)
	mov     r3, #0x0
	mov     r2, #0x1000
	str     r3, [r1]
	sub     r0, r10, r11
	str     r2, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, r3
	cmp     r9, #0x1000
	str     r0, [r1, #0xc]
	beq     branch_20bce78
	mov     r5, r9, asr #31
	umull   r0, r1, r4, r9
	mla     r1, r4, r5, r1
	mla     r1, r6, r9, r1
	bl      _ll_sdiv
	mov     r4, r0
	mov     r6, r1
branch_20bce78: @ 20bce78 :arm
	mov     r1, r6, lsl #13
	mov     r0, #0x80000000
	orr     r1, r1, r4, lsr #19
	adds    r0, r0, r4, lsl #13
	adc     r0, r1, #0x0
	str     r0, [r8]
	bl      FX_GetDivResultFx64c
	mov     r5, r0
	mov     r7, r1
	mov     r3, #0x0
	ldr     r12, [pc, #0x124] @ [0x20bcfcc] (=REG_DIV_NUMER)
	ldr     r1, [sp, #0x30]
	ldr     r0, [sp, #0x34]
	str     r3, [r12]
	mov     r2, #0x1000
	str     r2, [r12, #0x4]
	sub     r0, r1, r0
	mov     lr, r3
	str     r0, [r12, #0x8]
	cmp     r9, #0x1000
	str     lr, [r12, #0xc]
	beq     branch_20bceec
	mov     r12, r9, asr #31
	umull   r0, r1, r5, r9
	mla     r1, r5, r12, r1
	mla     r1, r7, r9, r1
	bl      _ll_sdiv
	mov     r5, r0
	mov     r7, r1
branch_20bceec: @ 20bceec :arm
	mov     r1, r7, lsl #13
	mov     r0, #0x80000000
	orr     r1, r1, r5, lsr #19
	adds    r0, r0, r5, lsl #13
	adc     r0, r1, #0x0
	str     r0, [r8, #0x14]
	bl      FX_GetDivResultFx64c
	cmp     r9, #1, 20 @ #0x1000
	beq     branch_20bcf34
	mov     r2, r9, asr #31
	umull   r12, r3, r0, r9
	mla     r3, r0, r2, r3
	mla     r3, r1, r9, r3
	mov     r0, r12
	mov     r1, r3
	mov     r2, #0x1000
	mov     r3, #0x0
	bl      _ll_sdiv
branch_20bcf34: @ 20bcf34 :arm
	ldr     r3, [sp, #0x4]
	ldr     r2, [sp]
	add     r2, r3, r2
	rsb     r12, r2, #0x0
	add     r2, r10, r11
	rsb     r3, r2, #0x0
	ldr     r10, [sp, #0x34]
	ldr     r2, [sp, #0x30]
	mov     r9, r12, asr #31
	add     r2, r10, r2
	umull   r11, r10, r4, r12
	mla     r10, r4, r9, r10
	mov     r4, #0x80000000
	mla     r10, r6, r12, r10
	adds    r4, r4, r0, lsl #13
	mov     r9, r1, lsl #13
	mov     r6, r3, asr #31
	umull   r12, r4, r5, r3
	mla     r4, r5, r6, r4
	orr     r9, r9, r0, lsr #19
	mla     r4, r7, r3, r4
	adc     r3, r9, #0x0
	str     r3, [r8, #0x28]
	adds    r3, r11, #0x80000000
	adc     r7, r10, #0x0
	adds    r3, r12, #0x80000000
	mov     r3, r2, asr #31
	umull   r6, r5, r0, r2
	mla     r5, r0, r3, r5
	adc     r3, r4, #0x0
	str     r7, [r8, #0x30]
	mla     r5, r1, r2, r5
	adds    r0, r6, #0x80000000
	str     r3, [r8, #0x34]
	adc     r0, r5, #0x0
	str     r0, [r8, #0x38]
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r11,pc}
@ 0x20bcfcc

.word REG_DIV_NUMER @ 0x20bcfcc


