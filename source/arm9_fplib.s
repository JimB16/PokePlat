/*
The software floating-point library, fplib
http://www.keil.com/support/man/docs/armlib/armlib_chr1358938941317.htm
*/


.arm
.globl _dadd
_dadd: @ 20dfc6c :arm
	stmfd   sp!, {r4,lr}
	eors    r12, r1, r3
	eormi   r3, r3, #0x80000000
	bmi     __dsub_start
__dadd_start: @ 20dfc7c :arm
	subs    r12, r0, r2
	sbcs    lr, r1, r3
	bcs     branch_20dfc98
	adds    r2, r2, r12
	adc     r3, r3, lr
	subs    r0, r0, r12
	sbc     r1, r1, lr
branch_20dfc98: @ 20dfc98 :arm
	mov     lr, #0x80000000
	mov     r12, r1, lsr #20
	orr     r1, lr, r1, lsl #11
	orr     r1, r1, r0, lsr #21
	mov     r0, r0, lsl #11
	movs    r4, r12, lsl #21
	cmnne   r4, #0x200000
	beq     branch_20dfd94
	mov     r4, r3, lsr #20
	orr     r3, lr, r3, lsl #11
	orr     r3, r3, r2, lsr #21
	mov     r2, r2, lsl #11
	movs    lr, r4, lsl #21
	beq     branch_20dfddc
branch_20dfcd0: @ 20dfcd0 :arm
	subs    r4, r12, r4
	beq     branch_20dfd28
	cmp     r4, #0x20
	ble     branch_20dfd0c
	cmp     r4, #0x38
	movge   r4, #0x3f
	sub     r4, r4, #0x20
	rsb     lr, r4, #0x20
	orrs    lr, r2, r3, lsl lr
	mov     r2, r3, lsr r4
	orrne   r2, r2, #0x1
	adds    r0, r0, r2
	adcs    r1, r1, #0x0
	bcc     branch_20dfd50
	b       branch_20dfd34

branch_20dfd0c: @ 20dfd0c :arm
	rsb     lr, r4, #0x20
	movs    lr, r2, lsl lr
	rsb     lr, r4, #0x20
	mov     r2, r2, lsr r4
	orr     r2, r2, r3, lsl lr
	mov     r3, r3, lsr r4
	orrne   r2, r2, #0x1
branch_20dfd28: @ 20dfd28 :arm
	adds    r0, r0, r2
	adcs    r1, r1, r3
	bcc     branch_20dfd50
branch_20dfd34: @ 20dfd34 :arm
	add     r12, r12, #0x1
	and     r4, r0, #0x1
	movs    r1, r1, rrx
	orr     r0, r4, r0, rrx
	mov     lr, r12, lsl #21
	cmn     lr, #0x200000
	beq     branch_20dff60
branch_20dfd50: @ 20dfd50 :arm
	movs    r2, r0, lsl #21
	mov     r0, r0, lsr #11
	orr     r0, r0, r1, lsl #21
	add     r1, r1, r1
	mov     r1, r1, lsr #12
	orr     r1, r1, r12, lsl #20
	tst     r2, #0x80000000
	ldmeqfd sp!, {r4,lr}
	bxeq    lr
	movs    r2, r2, lsl #1
	andeqs  r2, r0, #0x1
	ldmeqfd sp!, {r4,lr}
	bxeq    lr
	adds    r0, r0, #0x1
	adc     r1, r1, #0x0
	ldmfd   sp!, {r4,lr}
	bx      lr

branch_20dfd94: @ 20dfd94 :arm
	cmp     r12, #0x800
	movge   lr, #0x80000000
	movlt   lr, #0x0
	bics    r12, r12, #0x800
	beq     branch_20dfe00
	orrs    r4, r0, r1, lsl #1
	bne     branch_20dff3c
	mov     r4, r3, lsr #20
	mov     r3, r3, lsl #11
	orr     r3, r3, r2, lsr #21
	mov     r2, r2, lsl #11
	movs    r4, r4, lsl #21
	beq     branch_20dff28
	cmn     r4, #0x200000
	bne     branch_20dff28
	orrs    r4, r2, r3, lsl #1
	beq     branch_20dff28
	b       branch_20dff3c

branch_20dfddc: @ 20dfddc :arm
	cmp     r4, #0x800
	movge   lr, #0x80000000
	movlt   lr, #0x0
	bic     r12, r12, #0x800
	bics    r4, r4, #0x800
	beq     branch_20dfe6c
	orrs    r4, r2, r3, lsl #1
	bne     branch_20dff3c
	b       branch_20dff28

branch_20dfe00: @ 20dfe00 :arm
	orrs    r4, r0, r1, lsl #1
	beq     branch_20dfe40
	mov     r12, #0x1
	bic     r1, r1, #0x80000000
	mov     r4, r3, lsr #20
	mov     r3, r3, lsl #11
	orr     r3, r3, r2, lsr #21
	mov     r2, r2, lsl #11
	movs    r4, r4, lsl #21
	cmnne   r4, #0x200000
	mov     r4, r4, lsr #21
	orr     r4, r4, lr, lsr #20
	beq     branch_20dfddc
	orr     r3, r3, #0x80000000
	orr     r12, r12, lr, lsr #20
	b       branch_20dfcd0

branch_20dfe40: @ 20dfe40 :arm
	mov     r12, r3, lsr #20
	mov     r1, r3, lsl #11
	orr     r1, r1, r2, lsr #21
	mov     r0, r2, lsl #11
	movs    r4, r12, lsl #21
	beq     branch_20dfef4
	cmn     r4, #0x200000
	bne     branch_20dfef4
	orrs    r4, r0, r1, lsl #1
	beq     branch_20dff28
	b       branch_20dff40

branch_20dfe6c: @ 20dfe6c :arm
	orrs    r4, r2, r3, lsl #1
	beq     branch_20dff04
	mov     r4, #0x1
	bic     r3, r3, #0x80000000
	cmp     r1, #0x0
	bpl     branch_20dfe90
	orr     r12, r12, lr, lsr #20
	orr     r4, r4, lr, lsr #20
	b       branch_20dfcd0

branch_20dfe90: @ 20dfe90 :arm
	adds    r0, r0, r2
	adcs    r1, r1, r3
	bcc     branch_20dfeb0
	add     r12, r12, #0x1
	and     r4, r0, #0x1
	movs    r1, r1, rrx
	mov     r0, r0, rrx
	orr     r0, r0, r4
branch_20dfeb0: @ 20dfeb0 :arm
	cmp     r1, #0x0
	subges  r12, r12, #0x1
	movs    r2, r0, lsl #21
	mov     r0, r0, lsr #11
	orr     r0, r0, r1, lsl #21
	add     r1, r1, r1
	orr     r1, lr, r1, lsr #12
	orr     r1, r1, r12, lsl #20
	ldmeqfd sp!, {r4,lr}
	bxeq    lr

	tst     r2, #0x80000000
	ldmeqfd sp!, {r4,lr}
	bxeq    lr
	movs    r2, r2, lsl #1
	andeqs  r2, r0, #0x1
	ldmeqfd sp!, {r4,lr}
	bxeq    lr

branch_20dfef4: @ 20dfef4 :arm
	mov     r1, r3
	mov     r0, r2
	ldmfd   sp!, {r4,lr}
	bx      lr

branch_20dff04: @ 20dff04 :arm
	cmp     r1, #0x0
	subges  r12, r12, #0x1
	mov     r0, r0, lsr #11
	orr     r0, r0, r1, lsl #21
	add     r1, r1, r1
	orr     r1, lr, r1, lsr #12
	orr     r1, r1, r12, lsl #20
	ldmfd   sp!, {r4,lr}
	bx      lr

branch_20dff28: @ 20dff28 :arm
	ldr     r1, =0x7ff00000
	orr     r1, lr, r1
	mov     r0, #0x0
	ldmfd   sp!, {r4,lr}
	bx      lr

branch_20dff3c: @ 20dff3c :arm
	mov     r1, r3
branch_20dff40: @ 20dff40 :arm
	mvn     r0, #0x0
	bic     r1, r0, #0x80000000
	ldmfd   sp!, {r4,lr}
	bx      lr
@ 0x20dff50


.arm
Function_20dff50: @ 20dff50 :arm
	mvn     r0, #0x0
	bic     r1, r0, #0x80000000
	ldmfd   sp!, {r4,lr}
	bx      lr
@ 0x20dff60


.arm
branch_20dff60: @ 20dff60 :arm
	cmp     r12, #0x800
	movge   lr, #0x80000000
	movlt   lr, #0x0
	ldr     r1, =0x7ff00000
	orr     r1, lr, r1
	mov     r0, #0x0
	ldmfd   sp!, {r4,lr}
	bx      lr
@ 0x20dff80

.pool



.arm
.globl _d2f
_d2f: @ 20dff84 :arm
	and     r2, r1, #0x80000000
	mov     r12, r1, lsr #20
	bics    r12, r12, #0x800
	beq     branch_20dfffc
	mov     r3, r12, lsl #21
	cmn     r3, #0x200000
	bcs     branch_20dffe0
	subs    r12, r12, #0x380
	bls     branch_20e000c
	cmp     r12, #0xff
	bge     branch_20e007c
	mov     r1, r1, lsl #12
	orr     r3, r2, r1, lsr #9
	orr     r3, r3, r0, lsr #29
	movs    r1, r0, lsl #3
	orr     r0, r3, r12, lsl #23
	bxeq    lr
	tst     r1, #0x80000000
	bxeq    lr
	movs    r1, r1, lsl #1
	andeqs  r1, r0, #0x1
	addne   r0, r0, #0x1
	bx      lr

branch_20dffe0: @ 20dffe0 :arm
	orrs    r3, r0, r1, lsl #12
	bne     branch_20dfff4
	mov     r0, #0xff000000
	orr     r0, r2, r0, lsr #1
	bx      lr

branch_20dfff4: @ 20dfff4 :arm
	mvn     r0, #0x80000000
	bx      lr

branch_20dfffc: @ 20dfffc :arm
	orrs    r3, r0, r1, lsl #12
	bne     branch_20e0074
	mov     r0, r2
	bx      lr

branch_20e000c: @ 20e000c :arm
	cmn     r12, #0x17
	beq     branch_20e0060
	bmi     branch_20e0074
	mov     r1, r1, lsl #11
	orr     r1, r1, #0x80000000
	mov     r3, r1, lsr #8
	orr     r3, r3, r0, lsr #29
	rsb     r12, r12, #0x1
	movs    r1, r0, lsl #3
	orr     r0, r2, r3, lsr r12
	rsb     r12, r12, #0x20
	mov     r3, r3, lsl r12
	orrne   r3, r3, #0x1
	movs    r1, r3
	bxeq    lr
	tst     r1, #0x80000000
	bxeq    lr
	movs    r1, r1, lsl #1
	andeqs  r1, r0, #0x1
	addne   r0, r0, #0x1
	bx      lr

branch_20e0060: @ 20e0060 :arm
	orr     r0, r0, r1, lsl #12
	movs    r1, r0
	mov     r0, r2
	addne   r0, r0, #0x1
	bx      lr

branch_20e0074: @ 20e0074 :arm
	mov     r0, r2
	bx      lr

branch_20e007c: @ 20e007c :arm
	mov     r0, #0xff000000
	orr     r0, r2, r0, lsr #1
	bx      lr
@ 0x20e0088


@ Converts from double to int
.arm
.globl _dfix
_dfix: @ 20e0088 :arm
	bic     r3, r1, #0x80000000
	ldr     r2, =0x41e
	subs    r2, r2, r3, lsr #20
	ble     branch_20e00c4
	cmp     r2, #0x20
	bge     branch_20e00bc
	mov     r3, r1, lsl #11
	orr     r3, r3, #0x80000000
	orr     r3, r3, r0, lsr #21
	cmp     r1, #0x0
	mov     r0, r3, lsr r2
	rsbmi   r0, r0, #0x0
	bx      lr

branch_20e00bc: @ 20e00bc :arm
	mov     r0, #0x0
	bx      lr

branch_20e00c4: @ 20e00c4 :arm
	mvn     r0, r1, asr #31
	add     r0, r0, #0x80000000
	bx      lr
@ 0x20e00d0

.pool



.arm
_dfixu: @ 20e00d4 :arm
	tst     r1, #0x80000000
	bne     branch_20e010c
	ldr     r2, =0x41e
	subs    r2, r2, r1, lsr #20
	blt     branch_20e0120
	cmp     r2, #0x20
	bge     branch_20e0104
	mov     r3, r1, lsl #11
	orr     r3, r3, #0x80000000
	orr     r3, r3, r0, lsr #21
	mov     r0, r3, lsr r2
	bx      lr

branch_20e0104: @ 20e0104 :arm
	mov     r0, #0x0
	bx      lr

branch_20e010c: @ 20e010c :arm
	cmn     r1, #0x100000
	cmpeq   r0, #0x0
	movls   r0, #0x0
	mvnhi   r0, #0x0
	bx      lr

branch_20e0120: @ 20e0120 :arm
	mvn     r0, #0x0
	bx      lr
@ 0x20e0128

.pool



.arm
_ll_ufrom_d: @ 20e012c :arm
	tst     r1, #0x80000000
	bne     branch_20e0190
	ldr     r2, =0x43e
	subs    r2, r2, r1, lsr #20
	blt     branch_20e01a8
	cmp     r2, #0x40
	bge     branch_20e0184
	mov     r12, r1, lsl #11
	orr     r12, r12, #0x80000000
	orr     r12, r12, r0, lsr #21
	cmp     r2, #0x20
	ble     branch_20e016c
	sub     r2, r2, #0x20
	mov     r1, #0x0
	mov     r0, r12, lsr r2
	bx      lr

branch_20e016c: @ 20e016c :arm
	mov     r3, r0, lsl #11
	mov     r1, r12, lsr r2
	mov     r0, r3, lsr r2
	rsb     r2, r2, #0x20
	orr     r0, r0, r12, lsl r2
	bx      lr

branch_20e0184: @ 20e0184 :arm
	mov     r1, #0x0
	mov     r0, #0x0
	bx      lr

branch_20e0190: @ 20e0190 :arm
	cmn     r1, #0x100000
	cmpeq   r0, #0x0
	bhi     branch_20e01a8
	mov     r1, #0x0
	mov     r0, #0x0
	bx      lr

branch_20e01a8: @ 20e01a8 :arm
	mvn     r1, #0x0
	mvn     r0, #0x0
	bx      lr
@ 0x20e01b4

.pool



.arm
.globl _dflt
_dflt: @ 20e01b8 :arm
	ands    r2, r0, #0x80000000
	rsbmi   r0, r0, #0x0
	cmp     r0, #0x0
	mov     r1, #0x0
	bxeq    lr
	mov     r3, #0x400
	add     r3, r3, #0x1e
	clz     r12, r0
	movs    r0, r0, lsl r12
	sub     r3, r3, r12
	movs    r1, r0
	mov     r0, r1, lsl #21
	add     r1, r1, r1
	orr     r1, r2, r1, lsr #12
	orr     r1, r1, r3, lsl #20
	bx      lr
@ 0x20e01f8


.arm
_dfltu: @ 20e01f8 :arm
	cmp     r0, #0x0
	mov     r1, #0x0
	bxeq    lr
	mov     r3, #0x400
	add     r3, r3, #0x1e
	bmi     branch_20e021c
	clz     r12, r0
	movs    r0, r0, lsl r12
	sub     r3, r3, r12
branch_20e021c: @ 20e021c :arm
	mov     r1, r0
	mov     r0, r1, lsl #21
	add     r1, r1, r1
	mov     r1, r1, lsr #12
	orr     r1, r1, r3, lsl #20
	bx      lr
@ 0x20e0234


.arm
.globl Function_20e0234
Function_20e0234: @ 20e0234 :arm
	stmfd   sp!, {r4-r7,lr}
	eor     lr, r1, r3
	and     lr, lr, #0x80000000
	mov     r12, r1, lsr #20
	mov     r1, r1, lsl #11
	orr     r1, r1, r0, lsr #21
	mov     r0, r0, lsl #11
	movs    r6, r12, lsl #21
	cmnne   r6, #0x200000
	beq     branch_20e033c
	orr     r1, r1, #0x80000000
	bic     r12, r12, #0x800
	mov     r4, r3, lsr #20
	mov     r3, r3, lsl #11
	orr     r3, r3, r2, lsr #21
	mov     r2, r2, lsl #11
	movs    r5, r4, lsl #21
	cmnne   r5, #0x200000
	beq     branch_20e0384
	orr     r3, r3, #0x80000000
	bic     r4, r4, #0x800
branch_20e0288: @ 20e0288 :arm
	add     r12, r4, r12
	umull   r5, r4, r0, r2
	umull   r7, r6, r0, r3
	adds    r4, r7, r4
	adc     r6, r6, #0x0
	umull   r7, r0, r1, r2
	adds    r4, r7, r4
	adcs    r0, r0, r6
	umull   r7, r2, r1, r3
	adc     r1, r2, #0x0
	adds    r0, r0, r7
	adc     r1, r1, #0x0
	orrs    r4, r4, r5
	orrne   r0, r0, #0x1
	cmp     r1, #0x0
	blt     branch_20e02d4
	sub     r12, r12, #0x1
	adds    r0, r0, r0
	adc     r1, r1, r1
branch_20e02d4: @ 20e02d4 :arm
	add     r12, r12, #0x2
	subs    r12, r12, #0x400
	bmi     branch_20e0470
	beq     branch_20e0470
	mov     r6, r12, lsl #20
	cmn     r6, #0x100000
	bmi     branch_20e0570
	movs    r2, r0, lsl #21
	mov     r0, r0, lsr #11
	orr     r0, r0, r1, lsl #21
	add     r1, r1, r1
	orr     r1, lr, r1, lsr #12
	orr     r1, r1, r12, lsl #20
	ldmeqfd sp!, {r4-r7,lr}
	bxeq    lr

	tst     r2, #0x80000000
	ldmeqfd sp!, {r4-r7,lr}
	bxeq    lr

	movs    r2, r2, lsl #1
	andeqs  r2, r0, #0x1
	ldmeqfd sp!, {r4-r7,lr}
	bxeq    lr

	adds    r0, r0, #0x1
	adc     r1, r1, #0x0
	ldmfd   sp!, {r4-r7,lr}
	bx      lr

branch_20e033c: @ 20e033c :arm
	bics    r12, r12, #0x800
	beq     branch_20e0398
	orrs    r6, r0, r1, lsl #1
	bne     branch_20e0524
	mov     r4, r3, lsr #20
	mov     r3, r3, lsl #11
	orr     r3, r3, r2, lsr #21
	mov     r2, r2, lsl #11
	movs    r5, r4, lsl #21
	beq     branch_20e0378
	cmn     r5, #0x200000
	bne     branch_20e0510
	orrs    r5, r2, r3, lsl #1
	beq     branch_20e0510
	b       branch_20e0524

branch_20e0378: @ 20e0378 :arm
	orrs    r5, r3, r2
	beq     branch_20e0538
	b       branch_20e0510

branch_20e0384: @ 20e0384 :arm
	bics    r4, r4, #0x800
	beq     branch_20e042c
	orrs    r6, r2, r3, lsl #1
	bne     branch_20e0524
	b       branch_20e0510

branch_20e0398: @ 20e0398 :arm
	orrs    r6, r0, r1, lsl #1
	beq     branch_20e0400
	mov     r12, #0x1
	cmp     r1, #0x0
	bne     branch_20e03bc
	sub     r12, r12, #0x20
	movs    r1, r0
	mov     r0, #0x0
	bmi     branch_20e03d8
branch_20e03bc: @ 20e03bc :arm
	clz     r6, r1
	movs    r1, r1, lsl r6
	rsb     r6, r6, #0x20
	orr     r1, r1, r0, lsr r6
	rsb     r6, r6, #0x20
	mov     r0, r0, lsl r6
	sub     r12, r12, r6
branch_20e03d8: @ 20e03d8 :arm
	mov     r4, r3, lsr #20
	mov     r3, r3, lsl #11
	orr     r3, r3, r2, lsr #21
	mov     r2, r2, lsl #11
	movs    r5, r4, lsl #21
	cmnne   r5, #0x200000
	beq     branch_20e0384
	orr     r3, r3, #0x80000000
	bic     r4, r4, #0x800
	b       branch_20e0288

branch_20e0400: @ 20e0400 :arm
	mov     r4, r3, lsr #20
	mov     r3, r3, lsl #11
	orr     r3, r3, r2, lsr #21
	mov     r2, r2, lsl #11
	movs    r5, r4, lsl #21
	beq     branch_20e0584
	cmn     r5, #0x200000
	bne     branch_20e0584
	orrs    r6, r2, r3, lsl #1
	beq     branch_20e0538
	b       branch_20e0524

branch_20e042c: @ 20e042c :arm
	orrs    r5, r2, r3, lsl #1
	beq     branch_20e0584
	mov     r4, #0x1
	cmp     r3, #0x0
	bne     branch_20e0450
	sub     r4, r4, #0x20
	movs    r3, r2
	mov     r2, #0x0
	bmi     branch_20e0288
branch_20e0450: @ 20e0450 :arm
	clz     r6, r3
	movs    r3, r3, lsl r6
	rsb     r6, r6, #0x20
	orr     r3, r3, r2, lsr r6
	rsb     r6, r6, #0x20
	mov     r2, r2, lsl r6
	sub     r4, r4, r6
	b       branch_20e0288

branch_20e0470: @ 20e0470 :arm
	cmn     r12, #0x34
	beq     branch_20e0508
	bmi     branch_20e0560
	mov     r2, r1
	mov     r3, r0
	add     r4, r12, #0x34
	cmp     r4, #0x20
	movge   r2, r3
	movge   r3, #0x0
	subge   r4, r4, #0x20
	rsb     r5, r4, #0x20
	mov     r2, r2, lsl r4
	orr     r2, r2, r3, lsr r5
	movs    r3, r3, lsl r4
	orrne   r2, r2, #0x1
	rsb     r12, r12, #0xc
	cmp     r12, #0x20
	movge   r0, r1
	movge   r1, #0x0
	subge   r12, r12, #0x20
	rsb     r4, r12, #0x20
	mov     r0, r0, lsr r12
	orr     r0, r0, r1, lsl r4
	orr     r1, lr, r1, lsr r12
	cmp     r2, #0x0
	ldmeqfd sp!, {r4-r7,lr}
	bxeq    lr

	tst     r2, #0x80000000
	ldmeqfd sp!, {r4-r7,lr}
	bxeq    lr

	movs    r2, r2, lsl #1
	andeqs  r2, r0, #0x1
	ldmeqfd sp!, {r4-r7,lr}
	bxeq    lr

	adds    r0, r0, #0x1
	adc     r1, r1, #0x0
	ldmfd   sp!, {r4-r7,lr}
	bx      lr

branch_20e0508: @ 20e0508 :arm
	orr     r0, r0, r1, lsl #1
	b       branch_20e0548

branch_20e0510: @ 20e0510 :arm
	ldr     r1, =0x7ff00000
	orr     r1, lr, r1
	mov     r0, #0x0
	ldmfd   sp!, {r4-r7,lr}
	bx      lr

branch_20e0524: @ 20e0524 :arm
	mov     r1, r3
	mvn     r0, #0x0
	bic     r1, r0, #0x80000000
	ldmfd   sp!, {r4-r7,lr}
	bx      lr

branch_20e0538: @ 20e0538 :arm
	mvn     r0, #0x0
	bic     r1, r0, #0x80000000
	ldmfd   sp!, {r4-r7,lr}
	bx      lr

branch_20e0548: @ 20e0548 :arm
	movs    r2, r0
	mov     r1, lr
	mov     r0, #0x0
	addne   r0, r0, #0x1
	ldmfd   sp!, {r4-r7,lr}
	bx      lr

branch_20e0560: @ 20e0560 :arm
	mov     r1, lr
	mov     r0, #0x0
	ldmfd   sp!, {r4-r7,lr}
	bx      lr

branch_20e0570: @ 20e0570 :arm
	ldr     r1, =0x7ff00000
	orr     r1, lr, r1
	mov     r0, #0x0
	ldmfd   sp!, {r4-r7,lr}
	bx      lr

branch_20e0584: @ 20e0584 :arm
	mov     r1, lr
	mov     r0, #0x0
	ldmfd   sp!, {r4-r7,lr}
	bx      lr
@ 0x20e0594

.pool



.arm
_dsqrt: @ 20e0598 :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r2, [pc, #0x184] @ [0x20e0728] (=0x7ff00000)
	cmp     r1, r2
	bcs     branch_20e06e4
	movs    r12, r1, lsr #20
	beq     branch_20e0690
	bic     r1, r1, r2
	orr     r1, r1, #1, 12 @ #0x100000
branch_20e05b8: @ 20e05b8 :arm
	movs    r12, r12, asr #1
	bcs     branch_20e05cc
	sub     r12, r12, #0x1
	movs    r0, r0, lsl #1
	adc     r1, r1, r1
branch_20e05cc: @ 20e05cc :arm
	movs    r3, r0, lsl #1
	adc     r1, r1, r1
	mov     r2, #0x0
	mov     r4, #0x0
	mov     lr, #2, 12 @ #0x200000
branch_20e05e0: @ 20e05e0 :arm
	add     r6, r4, lr
	cmp     r6, r1
	addle   r4, r6, lr
	suble   r1, r1, r6
	addle   r2, r2, lr
	movs    r3, r3, lsl #1
	adc     r1, r1, r1
	movs    lr, lr, lsr #1
	bne     branch_20e05e0
	mov     r0, #0x0
	mov     r5, #0x0
	cmp     r1, r4
	cmpeq   r3, #2, 2 @ #0x80000000
	bcc     branch_20e0628
	subs    r3, r3, #2, 2 @ #0x80000000
	sbc     r1, r1, r4
	add     r4, r4, #0x1
	mov     r0, #2, 2 @ #0x80000000
branch_20e0628: @ 20e0628 :arm
	movs    r3, r3, lsl #1
	adc     r1, r1, r1
	mov     lr, #1, 2 @ #0x40000000
branch_20e0634: @ 20e0634 :arm
	add     r6, r5, lr
	cmp     r4, r1
	cmpeq   r6, r3
	bhi     branch_20e0654
	add     r5, r6, lr
	subs    r3, r3, r6
	sbc     r1, r1, r4
	add     r0, r0, lr
branch_20e0654: @ 20e0654 :arm
	movs    r3, r3, lsl #1
	adc     r1, r1, r1
	movs    lr, lr, lsr #1
	bne     branch_20e0634
	orrs    r1, r1, r3
	biceq   r0, r0, #0x1
	movs    r1, r2, lsr #1
	movs    r0, r0, rrx
	adcs    r0, r0, #0x0
	adc     r1, r1, #0x0
	add     r1, r1, #2, 4 @ #0x20000000
	sub     r1, r1, #1, 12 @ #0x100000
	add     r1, r1, r12, lsl #20
	ldmfd   sp!, {r4-r6,lr}
	bx      lr

branch_20e0690: @ 20e0690 :arm
	cmp     r1, #0x0
	bne     branch_20e06c0
	cmp     r0, #0x0
	ldmeqfd sp!, {r4-r6,lr}
	bxeq    lr
	mvn     r12, #0x13
	clz     r5, r0
	movs    r0, r0, lsl r5
	sub     r12, r12, r5
	mov     r1, r0, lsr #11
	mov     r0, r0, lsl #21
	b       branch_20e05b8

branch_20e06c0: @ 20e06c0 :arm
	clz     r2, r1
	movs    r1, r1, lsl r2
	rsb     r2, r2, #0x2b
	mov     r1, r1, lsr #11
	orr     r1, r1, r0, lsr r2
	rsb     r2, r2, #0x20
	mov     r0, r0, lsl r2
	rsb     r12, r2, #0x1
	b       branch_20e05b8

branch_20e06e4: @ 20e06e4 :arm
	tst     r1, #2, 2 @ #0x80000000
	beq     branch_20e0700
	bics    r3, r1, #2, 2 @ #0x80000000
	cmpeq   r0, #0x0
	ldmeqfd sp!, {r4-r6,lr}
	bxeq    lr
	b       branch_20e070c

branch_20e0700: @ 20e0700 :arm
	orrs    r2, r0, r1, lsl #12
	ldmeqfd sp!, {r4-r6,lr}
	bxeq    lr
branch_20e070c: @ 20e070c :arm
	ldr     r2, [pc, #0x18] @ [0x20e072c] (=0x7ff80000)
	orr     r1, r1, r2
	ldr     r3, [pc, #0x14] @ [0x20e0730] (=RAM_21d0d40)
	mov     r4, #0x21
	str     r4, [r3]
	ldmfd   sp!, {r4-r6,lr}
	bx      lr
@ 0x20e0728

.word 0x7ff00000 @ 0x20e0728
.word 0x7ff80000 @ 0x20e072c
.word RAM_21d0d40 @ 0x20e0730


.arm
_drsb: @ 20e0734 :arm
	eor     r1, r1, r3
	eor     r3, r1, r3
	eor     r1, r1, r3
	eor     r0, r0, r2
	eor     r2, r0, r2
	eor     r0, r0, r2

.globl _dsub
_dsub: @ 20e074c :arm
	stmfd   sp!, {r4,lr}
	eors    r12, r1, r3
	eormi   r3, r3, #2, 2 @ #0x80000000
	bmi     __dadd_start
__dsub_start: @ 20e075c :arm
	subs    r12, r0, r2
	sbcs    lr, r1, r3
	bcs     branch_20e077c
	eor     lr, lr, #2, 2 @ #0x80000000
	adds    r2, r2, r12
	adc     r3, r3, lr
	subs    r0, r0, r12
	sbc     r1, r1, lr
branch_20e077c: @ 20e077c :arm
	mov     lr, #2, 2 @ #0x80000000
	mov     r12, r1, lsr #20
	orr     r1, lr, r1, lsl #11
	orr     r1, r1, r0, lsr #21
	mov     r0, r0, lsl #11
	movs    r4, r12, lsl #21
	cmnne   r4, #2, 12 @ #0x200000
	beq     branch_20e0980
	mov     r4, r3, lsr #20
	orr     r3, lr, r3, lsl #11
	orr     r3, r3, r2, lsr #21
	mov     r2, r2, lsl #11
	movs    lr, r4, lsl #21
	beq     branch_20e09c8
branch_20e07b4: @ 20e07b4 :arm
	subs    r4, r12, r4
	beq     branch_20e085c
	cmp     r4, #0x20
	ble     branch_20e07f0
	cmp     r4, #0x38
	movge   r4, #0x3f
	sub     r4, r4, #0x20
	rsb     lr, r4, #0x20
	orrs    lr, r2, r3, lsl lr
	mov     r2, r3, lsr r4
	orrne   r2, r2, #0x1
	subs    r0, r0, r2
	sbcs    r1, r1, #0x0
	bmi     branch_20e0818
	b       branch_20e0908

branch_20e07f0: @ 20e07f0 :arm
	rsb     lr, r4, #0x20
	movs    lr, r2, lsl lr
	rsb     lr, r4, #0x20
	mov     r2, r2, lsr r4
	orr     r2, r2, r3, lsl lr
	mov     r3, r3, lsr r4
	orrne   r2, r2, #0x1
	subs    r0, r0, r2
	sbcs    r1, r1, r3
	bpl     branch_20e0908
branch_20e0818: @ 20e0818 :arm
	movs    r2, r0, lsl #21
	mov     r0, r0, lsr #11
	orr     r0, r0, r1, lsl #21
	add     r1, r1, r1
	mov     r1, r1, lsr #12
	orr     r1, r1, r12, lsl #20
	tst     r2, #2, 2 @ #0x80000000
	ldmeqfd sp!, {r4,lr}
	bxeq    lr
	movs    r2, r2, lsl #1
	andeqs  r2, r0, #0x1
	ldmeqfd sp!, {r4,lr}
	bxeq    lr
	adds    r0, r0, #0x1
	adc     r1, r1, #0x0
	ldmfd   sp!, {r4,lr}
	bx      lr

branch_20e085c: @ 20e085c :arm
	subs    r0, r0, r2
	sbc     r1, r1, r3
	orrs    lr, r1, r0
	beq     branch_20e0aec
	mov     lr, r12, lsl #20
	and     lr, lr, #2, 2 @ #0x80000000
	bic     r12, r12, #2, 22 @ #0x800
	cmp     r1, #0x0
	bmi     branch_20e08e4
	bne     branch_20e0894
	sub     r12, r12, #0x20
	movs    r1, r0
	mov     r0, #0x0
	bmi     branch_20e08b0
branch_20e0894: @ 20e0894 :arm
	clz     r4, r1
	movs    r1, r1, lsl r4
	rsb     r4, r4, #0x20
	orr     r1, r1, r0, lsr r4
	rsb     r4, r4, #0x20
	mov     r0, r0, lsl r4
	sub     r12, r12, r4
branch_20e08b0: @ 20e08b0 :arm
	cmp     r12, #0x0
	bgt     branch_20e08ec
	rsb     r12, r12, #0xc
	cmp     r12, #0x20
	movge   r0, r1
	movge   r1, #0x0
	subge   r12, r12, #0x20
	rsb     r4, r12, #0x20
	mov     r0, r0, lsr r12
	orr     r0, r0, r1, lsl r4
	orr     r1, lr, r1, lsr r12
	ldmfd   sp!, {r4,lr}
	bx      lr

branch_20e08e4: @ 20e08e4 :arm
	cmp     r1, #0x0
	subges  r12, r12, #0x1
branch_20e08ec: @ 20e08ec :arm
	mov     r0, r0, lsr #11
	orr     r0, r0, r1, lsl #21
	add     r1, r1, r1
	orr     r1, lr, r1, lsr #12
	orr     r1, r1, r12, lsl #20
	ldmfd   sp!, {r4,lr}
	bx      lr

branch_20e0908: @ 20e0908 :arm
	mov     lr, r12, lsl #20
	and     lr, lr, #2, 2 @ #0x80000000
	bic     r12, r12, #2, 22 @ #0x800
	cmp     r1, #0x0
	bne     branch_20e092c
	sub     r12, r12, #0x20
	movs    r1, r0
	mov     r0, #0x0
	bmi     branch_20e0948
branch_20e092c: @ 20e092c :arm
	clz     r4, r1
	movs    r1, r1, lsl r4
	rsb     r4, r4, #0x20
	orr     r1, r1, r0, lsr r4
	rsb     r4, r4, #0x20
	mov     r0, r0, lsl r4
	sub     r12, r12, r4
branch_20e0948: @ 20e0948 :arm
	cmp     r12, #0x0
	orrgt   r12, r12, lr, lsr #20
	bgt     branch_20e0818
	rsb     r12, r12, #0xc
	cmp     r12, #0x20
	movge   r0, r1
	movge   r1, #0x0
	subge   r12, r12, #0x20
	rsb     r4, r12, #0x20
	mov     r0, r0, lsr r12
	orr     r0, r0, r1, lsl r4
	orr     r1, lr, r1, lsr r12
	ldmfd   sp!, {r4,lr}
	bx      lr

branch_20e0980: @ 20e0980 :arm
	cmp     r12, #2, 22 @ #0x800
	movge   lr, #2, 2 @ #0x80000000
	movlt   lr, #0x0
	bics    r12, r12, #2, 22 @ #0x800
	beq     branch_20e09ec
	orrs    r4, r0, r1, lsl #1
	bne     branch_20e0ac8
	mov     r4, r3, lsr #20
	mov     r3, r3, lsl #11
	orr     r3, r3, r2, lsr #21
	mov     r2, r2, lsl #11
	movs    r4, r4, lsl #21
	beq     branch_20e0ab4
	cmn     r4, #2, 12 @ #0x200000
	bne     branch_20e0ab4
	orrs    r4, r2, r3, lsl #1
	beq     branch_20e0adc
	b       branch_20e0ac8

branch_20e09c8: @ 20e09c8 :arm
	cmp     r4, #2, 22 @ #0x800
	movge   lr, #2, 2 @ #0x80000000
	movlt   lr, #0x0
	bic     r12, r12, #2, 22 @ #0x800
	bics    r4, r4, #2, 22 @ #0x800
	beq     branch_20e0a64
	orrs    r4, r2, r3, lsl #1
	bne     branch_20e0ac8
	b       branch_20e0ab4

branch_20e09ec: @ 20e09ec :arm
	orrs    r4, r0, r1, lsl #1
	beq     branch_20e0a2c
	mov     r12, #0x1
	bic     r1, r1, #2, 2 @ #0x80000000
	mov     r4, r3, lsr #20
	mov     r3, r3, lsl #11
	orr     r3, r3, r2, lsr #21
	mov     r2, r2, lsl #11
	movs    r4, r4, lsl #21
	cmnne   r4, #2, 12 @ #0x200000
	mov     r4, r4, lsr #21
	orr     r4, r4, lr, lsr #20
	beq     branch_20e09c8
	orr     r3, r3, #2, 2 @ #0x80000000
	orr     r12, r12, lr, lsr #20
	b       branch_20e07b4

branch_20e0a2c: @ 20e0a2c :arm
	mov     r12, r3, lsr #20
	mov     r1, r3, lsl #11
	orr     r1, r1, r2, lsr #21
	mov     r0, r2, lsl #11
	movs    r4, r12, lsl #21
	beq     branch_20e0a58
	cmn     r4, #2, 12 @ #0x200000
	bne     branch_20e0a80
	orrs    r4, r0, r1, lsl #1
	bne     branch_20e0acc
	b       branch_20e0ab4

branch_20e0a58: @ 20e0a58 :arm
	orrs    r4, r0, r1, lsl #1
	beq     branch_20e0aec
	b       branch_20e0a80

branch_20e0a64: @ 20e0a64 :arm
	orrs    r4, r2, r3, lsl #1
	beq     branch_20e0a90
	mov     r4, #0x1
	bic     r3, r3, #2, 2 @ #0x80000000
	orr     r12, r12, lr, lsr #20
	orr     r4, r4, lr, lsr #20
	b       branch_20e07b4

branch_20e0a80: @ 20e0a80 :arm
	mov     r1, r3
	mov     r0, r2
	ldmfd   sp!, {r4,lr}
	bx      lr

branch_20e0a90: @ 20e0a90 :arm
	cmp     r1, #0x0
	subges  r12, r12, #0x1
	mov     r0, r0, lsr #11
	orr     r0, r0, r1, lsl #21
	add     r1, r1, r1
	orr     r1, lr, r1, lsr #12
	orr     r1, r1, r12, lsl #20
	ldmfd   sp!, {r4,lr}
	bx      lr

branch_20e0ab4: @ 20e0ab4 :arm
	ldr     r1, [pc, #0x40] @ [0x20e0afc] (=0x7ff00000)
	orr     r1, lr, r1
	mov     r0, #0x0
	ldmfd   sp!, {r4,lr}
	bx      lr

branch_20e0ac8: @ 20e0ac8 :arm
	mov     r1, r3
branch_20e0acc: @ 20e0acc :arm
	mvn     r0, #0x0
	bic     r1, r0, #2, 2 @ #0x80000000
	ldmfd   sp!, {r4,lr}
	bx      lr

branch_20e0adc: @ 20e0adc :arm
	mvn     r0, #0x0
	bic     r1, r0, #2, 2 @ #0x80000000
	ldmfd   sp!, {r4,lr}
	bx      lr

branch_20e0aec: @ 20e0aec :arm
	mov     r1, #0x0
	mov     r0, #0x0
	ldmfd   sp!, {r4,lr}
	bx      lr
@ 0x20e0afc

.word 0x7ff00000 @ 0x20e0afc



.arm
.globl _fadd
_fadd: @ 20e0b00 :arm
	eors    r2, r0, r1
	eormi   r1, r1, #2, 2 @ #0x80000000
	bmi     __fsub_start
__fadd_start: @ 20e0b0c :arm
	subs    r12, r0, r1
	subcc   r0, r0, r12
	addcc   r1, r1, r12
	mov     r2, #2, 2 @ #0x80000000
	mov     r3, r0, lsr #23
	orr     r0, r2, r0, lsl #8
	ands    r12, r3, #0xff
	cmpne   r12, #0xff
	beq     branch_20e0ba0
	mov     r12, r1, lsr #23
	orr     r1, r2, r1, lsl #8
	ands    r2, r12, #0xff
	beq     branch_20e0be0
branch_20e0b40: @ 20e0b40 :arm
	subs    r12, r3, r12
	beq     branch_20e0b58
	rsb     r2, r12, #0x20
	movs    r2, r1, lsl r2
	mov     r1, r1, lsr r12
	orrne   r1, r1, #0x1
branch_20e0b58: @ 20e0b58 :arm
	adds    r0, r0, r1
	bcc     branch_20e0b78
	and     r1, r0, #0x1
	orr     r0, r1, r0, rrx
	add     r3, r3, #0x1
	and     r2, r3, #0xff
	cmp     r2, #0xff
	beq     branch_20e0ce8
branch_20e0b78: @ 20e0b78 :arm
	ands    r1, r0, #0xff
	add     r0, r0, r0
	mov     r0, r0, lsr #9
	orr     r0, r0, r3, lsl #23
	tst     r1, #0x80
	bxeq    lr
	ands    r1, r1, #0x7f
	andeqs  r1, r0, #0x1
	addne   r0, r0, #0x1
	bx      lr

branch_20e0ba0: @ 20e0ba0 :arm
	cmp     r3, #1, 24 @ #0x100
	movge   r2, #2, 2 @ #0x80000000
	movlt   r2, #0x0
	ands    r3, r3, #0xff
	beq     branch_20e0c04
	movs    r0, r0, lsl #1
	bne     branch_20e0d14
	mov     r12, r1, lsr #23
	mov     r1, r1, lsl #9
	ands    r12, r12, #0xff
	beq     branch_20e0d08
	cmp     r12, #0xff
	blt     branch_20e0d08
	cmp     r1, #0x0
	beq     branch_20e0d08
	b       branch_20e0d14

branch_20e0be0: @ 20e0be0 :arm
	cmp     r3, #1, 24 @ #0x100
	movge   r2, #2, 2 @ #0x80000000
	movlt   r2, #0x0
	and     r3, r3, #0xff
	ands    r12, r12, #0xff
	beq     branch_20e0c60
branch_20e0bf8: @ 20e0bf8 :arm
	movs    r1, r1, lsl #1
	bne     branch_20e0d14
	b       branch_20e0d08

branch_20e0c04: @ 20e0c04 :arm
	movs    r0, r0, lsl #1
	beq     branch_20e0c3c
	mov     r3, #0x1
	mov     r0, r0, lsr #1
	mov     r12, r1, lsr #23
	mov     r1, r1, lsl #8
	ands    r12, r12, #0xff
	beq     branch_20e0c60
	cmp     r12, #0xff
	beq     branch_20e0bf8
	orr     r1, r1, #2, 2 @ #0x80000000
	orr     r3, r3, r2, lsr #23
	orr     r12, r12, r2, lsr #23
	b       branch_20e0b40

branch_20e0c3c: @ 20e0c3c :arm
	mov     r3, r1, lsr #23
	mov     r0, r1, lsl #9
	ands    r3, r3, #0xff
	beq     branch_20e0cc8
	cmp     r3, #0xff
	blt     branch_20e0cc8
	cmp     r0, #0x0
	beq     branch_20e0d08
	b       branch_20e0d00

branch_20e0c60: @ 20e0c60 :arm
	movs    r1, r1, lsl #1
	beq     branch_20e0cd0
	mov     r1, r1, lsr #1
	mov     r12, #0x1
	orr     r3, r3, r2, lsr #23
	orr     r12, r12, r2, lsr #23
	cmp     r0, #0x0
	bmi     branch_20e0b40
	adds    r0, r0, r1
	bcc     branch_20e0c94
	and     r1, r0, #0x1
	orr     r0, r1, r0, rrx
	add     r12, r12, #0x1
branch_20e0c94: @ 20e0c94 :arm
	cmp     r0, #0x0
	subge   r12, r12, #0x1
	ands    r1, r0, #0xff
	add     r0, r0, r0
	mov     r0, r0, lsr #9
	orr     r0, r0, r12, lsl #23
	bxeq    lr
	tst     r1, #0x80
	bxeq    lr
	ands    r1, r1, #0x7f
	andeqs  r1, r0, #0x1
	addne   r0, r0, #0x1
	bx      lr

branch_20e0cc8: @ 20e0cc8 :arm
	mov     r0, r1
	bx      lr

branch_20e0cd0: @ 20e0cd0 :arm
	cmp     r0, #0x0
	subges  r3, r3, #0x1
	add     r0, r0, r0
	orr     r0, r2, r0, lsr #9
	orr     r0, r0, r3, lsl #23
	bx      lr

branch_20e0ce8: @ 20e0ce8 :arm
	cmp     r3, #1, 24 @ #0x100
	movge   r2, #2, 2 @ #0x80000000
	movlt   r2, #0x0
	mov     r0, #255, 8 @ #0xff000000
	orr     r0, r2, r0, lsr #1
	bx      lr

branch_20e0d00: @ 20e0d00 :arm
	mvn     r0, #2, 2 @ #0x80000000
	bx      lr

branch_20e0d08: @ 20e0d08 :arm
	mov     r0, #255, 8 @ #0xff000000
	orr     r0, r2, r0, lsr #1
	bx      lr

branch_20e0d14: @ 20e0d14 :arm
	mvn     r0, #2, 2 @ #0x80000000
	bx      lr
@ 0x20e0d1c


.arm
Function_20e0d1c: @ 20e0d1c :arm
	mvn     r0, #2, 2 @ #0x80000000
	bx      lr
@ 0x20e0d24


.arm
Function_20e0d24: @ 20e0d24 :arm
	mov     r12, #2, 12 @ #0x200000
	cmn     r12, r1, lsl #1
	bcs     branch_20e0d98
	cmn     r12, r3, lsl #1
	bcs     branch_20e0dac
branch_20e0d38: @ 20e0d38 :arm
	orrs    r12, r3, r1
	bmi     branch_20e0d68
	cmp     r1, r3
	cmpeq   r0, r2
	movcs   r0, #0x1
	movcc   r0, #0x0
	bx      lr
@ 0x20e0d54

.arm
branch_20e0d54: @ 20e0d54 :arm
	mov     r0, #0x0
	mrs     r12, CPSR
	bic     r12, r12, #2, 4 @ #0x20000000
	msr     CPSR_f, r12
	bx      lr
@ 0x20e0d68

.arm
branch_20e0d68: @ 20e0d68 :arm
	orr     r12, r0, r12, lsl #1
	orrs    r12, r12, r2
	moveq   r0, #0x1
	mrs     r12, CPSR
	orr     r12, r12, #2, 4 @ #0x20000000
	msr     CPSR_f, r12
	bxeq    lr
	cmp     r3, r1
	cmpeq   r2, r0
	movcs   r0, #0x1
	movcc   r0, #0x0
	bx      lr
@ 0x20e0d98

.arm
branch_20e0d98: @ 20e0d98 :arm
	bne     branch_20e0d54
	cmp     r0, #0x0
	bhi     branch_20e0d54
	cmn     r12, r3, lsl #1
	bcc     branch_20e0d38
.arm
branch_20e0dac: @ 20e0dac :arm
	bne     branch_20e0d54
	cmp     r2, #0x0
	bhi     branch_20e0d54
	b       branch_20e0d38
@ 0x20e0dbc


.arm
Function_20e0dbc: @ 20e0dbc :arm
	mov     r12, #2, 12 @ #0x200000
	cmn     r12, r1, lsl #1
	bcs     branch_20e0e30
	cmn     r12, r3, lsl #1
	bcs     branch_20e0e44
.arm
branch_20e0dd0: @ 20e0dd0 :arm
	orrs    r12, r3, r1
	bmi     branch_20e0e00
	cmp     r1, r3
	cmpeq   r0, r2
	movhi   r0, #0x1
	movls   r0, #0x0
	bx      lr

branch_20e0dec: @ 20e0dec :arm
	mov     r0, #0x0
	mrs     r12, CPSR
	bic     r12, r12, #2, 4 @ #0x20000000
	msr     CPSR_f, r12
	bx      lr

branch_20e0e00: @ 20e0e00 :arm
	orr     r12, r0, r12, lsl #1
	orrs    r12, r12, r2
	moveq   r0, #0x0
	mrs     r12, CPSR
	bic     r12, r12, #2, 4 @ #0x20000000
	msr     CPSR_f, r12
	bxeq    lr
	cmp     r3, r1
	cmpeq   r2, r0
	movhi   r0, #0x1
	movls   r0, #0x0
	bx      lr
@ 0x20e0e30

.arm
branch_20e0e30: @ 20e0e30 :arm
	bne     branch_20e0dec
	cmp     r0, #0x0
	bhi     branch_20e0dec
	cmn     r12, r3, lsl #1
	bcc     branch_20e0dd0
.arm
branch_20e0e44: @ 20e0e44 :arm
	bne     branch_20e0dec
	cmp     r2, #0x0
	bhi     branch_20e0dec
	b       branch_20e0dd0
@ 0x20e0e54


.arm
.globl Function_20e0e54
Function_20e0e54: @ 20e0e54 :arm
	mov     r12, #2, 12 @ #0x200000
	cmn     r12, r1, lsl #1
	bcs     branch_20e0ed4
	cmn     r12, r3, lsl #1
	bcs     branch_20e0ee8
.arm
branch_20e0e68: @ 20e0e68 :arm
	orrs    r12, r3, r1
	bmi     branch_20e0e9c
	cmp     r1, r3
	cmpeq   r0, r2
	movls   r0, #0x1
	movhi   r0, #0x0
	bx      lr
@ 0x20e0e84

.arm
branch_20e0e84: @ 20e0e84 :arm
	mov     r0, #0x0
	mrs     r12, CPSR
	bic     r12, r12, #1, 2 @ #0x40000000
	orr     r12, r12, #2, 4 @ #0x20000000
	msr     CPSR_f, r12
	bx      lr
@ 0x20e0e9c

.arm
branch_20e0e9c: @ 20e0e9c :arm
	orr     r12, r0, r12, lsl #1
	orrs    r12, r12, r2
	moveq   r0, #0x1
	bne     branch_20e0ec0
	mrs     r12, CPSR
	bic     r12, r12, #2, 4 @ #0x20000000
	orr     r12, r12, #1, 2 @ #0x40000000
	msr     CPSR_f, r12
	bxeq    lr
.arm
branch_20e0ec0: @ 20e0ec0 :arm
	cmp     r3, r1
	cmpeq   r2, r0
	movls   r0, #0x1
	movhi   r0, #0x0
	bx      lr
@ 0x20e0ed4

.arm
branch_20e0ed4: @ 20e0ed4 :arm
	bne     branch_20e0e84
	cmp     r0, #0x0
	bhi     branch_20e0e84
	cmn     r12, r3, lsl #1
	bcc     branch_20e0e68
.arm
branch_20e0ee8: @ 20e0ee8 :arm
	bne     branch_20e0e84
	cmp     r2, #0x0
	bhi     branch_20e0e84
	b       branch_20e0e68
@ 0x20e0ef8


.arm
Function_20e0ef8: @ 20e0ef8 :arm
	mov     r12, #2, 12 @ #0x200000
	cmn     r12, r1, lsl #1
	bcs     branch_20e0f70
	cmn     r12, r3, lsl #1
	bcs     branch_20e0f84
branch_20e0f0c: @ 20e0f0c :arm
	orrs    r12, r3, r1
	bmi     branch_20e0f3c
	cmp     r1, r3
	cmpeq   r0, r2
	movcc   r0, #0x1
	movcs   r0, #0x0
	bx      lr

branch_20e0f28: @ 20e0f28 :arm
	mov     r0, #0x0
	mrs     r12, CPSR
	orr     r12, r12, #2, 4 @ #0x20000000
	msr     CPSR_f, r12
	bx      lr

branch_20e0f3c: @ 20e0f3c :arm
	orr     r12, r0, r12, lsl #1
	orrs    r12, r12, r2
	moveq   r0, #0x0
	bne     branch_20e0f5c
	mrs     r12, CPSR
	orr     r12, r12, #2, 4 @ #0x20000000
	msr     CPSR_f, r12
	bxeq    lr
branch_20e0f5c: @ 20e0f5c :arm
	cmp     r3, r1
	cmpeq   r2, r0
	movcc   r0, #0x1
	movcs   r0, #0x0
	bx      lr

branch_20e0f70: @ 20e0f70 :arm
	bne     branch_20e0f28
	cmp     r0, #0x0
	bhi     branch_20e0f28
	cmn     r12, r3, lsl #1
	bcc     branch_20e0f0c
branch_20e0f84: @ 20e0f84 :arm
	bne     branch_20e0f28
	cmp     r2, #0x0
	bhi     branch_20e0f28
	b       branch_20e0f0c
@ 0x20e0f94


.arm
Function_20e0f94: @ 20e0f94 :arm
	mov     r12, #2, 12 @ #0x200000
	cmn     r12, r1, lsl #1
	bcs     branch_20e0ffc
	cmn     r12, r3, lsl #1
	bcs     branch_20e1010
.arm
branch_20e0fa8: @ 20e0fa8 :arm
	orrs    r12, r3, r1
	bmi     branch_20e0fd8
	cmp     r1, r3
	cmpeq   r0, r2
	moveq   r0, #0x1
	movne   r0, #0x0
	bx      lr
@ 0x20e0fc4

.arm
branch_20e0fc4: @ 20e0fc4 :arm
	mov     r0, #0x0
	mrs     r12, CPSR
	bic     r12, r12, #1, 2 @ #0x40000000
	msr     CPSR_f, r12
	bx      lr
@ 0x20e0fd8

.arm
branch_20e0fd8: @ 20e0fd8 :arm
	orr     r12, r0, r12, lsl #1
	orrs    r12, r12, r2
	moveq   r0, #0x1
	bxeq    lr
	cmp     r3, r1
	cmpeq   r2, r0
	moveq   r0, #0x1
	movne   r0, #0x0
	bx      lr
@ 0x20e0ffc

.arm
branch_20e0ffc: @ 20e0ffc :arm
	bne     branch_20e0fc4
	cmp     r0, #0x0
	bhi     branch_20e0fc4
	cmn     r12, r3, lsl #1
	bcc     branch_20e0fa8
.arm
branch_20e1010: @ 20e1010 :arm
	bne     branch_20e0fc4
	cmp     r2, #0x0
	bhi     branch_20e0fc4
	b       branch_20e0fa8
@ 0x20e1020



.arm
Function_20e1020: @ 20e1020 :arm
	mov     r12, #2, 12 @ #0x200000
	cmn     r12, r1, lsl #1
	bcs     branch_20e1088
	cmn     r12, r3, lsl #1
	bcs     branch_20e109c
.arm
branch_20e1034: @ 20e1034 :arm
	orrs    r12, r3, r1
	bmi     branch_20e1064
	cmp     r1, r3
	cmpeq   r0, r2
	movne   r0, #0x1
	moveq   r0, #0x0
	bx      lr
@ 0x20e1050

.arm
branch_20e1050: @ 20e1050 :arm
	mov     r0, #0x1
	mrs     r12, CPSR
	bic     r12, r12, #1, 2 @ #0x40000000
	msr     CPSR_f, r12
	bx      lr
@ 0x20e1064

.arm
branch_20e1064: @ 20e1064 :arm
	orr     r12, r0, r12, lsl #1
	orrs    r12, r12, r2
	moveq   r0, #0x0
	bxeq    lr
	cmp     r3, r1
	cmpeq   r2, r0
	movne   r0, #0x1
	moveq   r0, #0x0
	bx      lr
@ 0x20e1088

.arm
branch_20e1088: @ 20e1088 :arm
	bne     branch_20e1050
	cmp     r0, #0x0
	bhi     branch_20e1050
	cmn     r12, r3, lsl #1
	bcc     branch_20e1034
.arm
branch_20e109c: @ 20e109c :arm
	bne     branch_20e1050
	cmp     r2, #0x0
	bhi     branch_20e1050
	b       branch_20e1034
@ 0x20e10ac


.arm
Function_20e10ac: @ 20e10ac :arm
	mov     r3, #255, 8 @ #0xff000000
	cmp     r3, r0, lsl #1
	cmpcs   r3, r1, lsl #1
	bcc     branch_20e10f4
	cmp     r0, #0x0
	bicmi   r0, r0, #2, 2 @ #0x80000000
	rsbmi   r0, r0, #0x0
	cmp     r1, #0x0
	bicmi   r1, r1, #2, 2 @ #0x80000000
	rsbmi   r1, r1, #0x0
	cmp     r0, r1
	movge   r0, #0x1
	movlt   r0, #0x0
	mrs     r12, CPSR
	biclt   r12, r12, #2, 4 @ #0x20000000
	orrge   r12, r12, #2, 4 @ #0x20000000
	msr     CPSR_f, r12
	bx      lr

branch_20e10f4: @ 20e10f4 :arm
	mov     r0, #0x0
	mrs     r12, CPSR
	bic     r12, r12, #2, 4 @ #0x20000000
	msr     CPSR_f, r12
	bx      lr
@ 0x20e1108


.arm
.globl Function_20e1108
Function_20e1108: @ 20e1108 :arm
	mov     r3, #255, 8 @ #0xff000000
	cmp     r3, r0, lsl #1
	cmpcs   r3, r1, lsl #1
	bcc     branch_20e1150
	cmp     r0, #0x0
	bicmi   r0, r0, #2, 2 @ #0x80000000
	rsbmi   r0, r0, #0x0
	cmp     r1, #0x0
	bicmi   r1, r1, #2, 2 @ #0x80000000
	rsbmi   r1, r1, #0x0
	cmp     r0, r1
	movgt   r0, #0x1
	movle   r0, #0x0
	mrs     r12, CPSR
	bicle   r12, r12, #2, 4 @ #0x20000000
	orrgt   r12, r12, #2, 4 @ #0x20000000
	msr     CPSR_f, r12
	bx      lr

branch_20e1150: @ 20e1150 :arm
	mov     r0, #0x0
	mrs     r12, CPSR
	bic     r12, r12, #2, 4 @ #0x20000000
	msr     CPSR_f, r12
	bx      lr
@ 0x20e1164


.arm
Function_20e1164: @ 20e1164 :arm
	mov     r3, #255, 8 @ #0xff000000
	cmp     r3, r0, lsl #1
	cmpcs   r3, r1, lsl #1
	bcc     branch_20e11b4
	cmp     r0, #0x0
	bicmi   r0, r0, #2, 2 @ #0x80000000
	rsbmi   r0, r0, #0x0
	cmp     r1, #0x0
	bicmi   r1, r1, #2, 2 @ #0x80000000
	rsbmi   r1, r1, #0x0
	cmp     r0, r1
	movle   r0, #0x1
	movgt   r0, #0x0
	mrs     r12, CPSR
	orrgt   r12, r12, #2, 4 @ #0x20000000
	bicgt   r12, r12, #1, 2 @ #0x40000000
	bicle   r12, r12, #2, 4 @ #0x20000000
	orrle   r12, r12, #1, 2 @ #0x40000000
	msr     CPSR_f, r12
	bx      lr

branch_20e11b4: @ 20e11b4 :arm
	mov     r0, #0x0
	mrs     r12, CPSR
	bic     r12, r12, #1, 2 @ #0x40000000
	orr     r12, r12, #2, 4 @ #0x20000000
	msr     CPSR_f, r12
	bx      lr
@ 0x20e11cc


.arm
.globl Function_20e11cc
Function_20e11cc: @ 20e11cc :arm
	mov     r3, #255, 8 @ #0xff000000
	cmp     r3, r0, lsl #1
	cmpcs   r3, r1, lsl #1
	bcc     branch_20e1214
	cmp     r0, #0x0
	bicmi   r0, r0, #2, 2 @ #0x80000000
	rsbmi   r0, r0, #0x0
	cmp     r1, #0x0
	bicmi   r1, r1, #2, 2 @ #0x80000000
	rsbmi   r1, r1, #0x0
	cmp     r0, r1
	movlt   r0, #0x1
	movge   r0, #0x0
	mrs     r12, CPSR
	orrge   r12, r12, #2, 4 @ #0x20000000
	biclt   r12, r12, #2, 4 @ #0x20000000
	msr     CPSR_f, r12
	bx      lr

branch_20e1214: @ 20e1214 :arm
	mov     r0, #0x0
	mrs     r12, CPSR
	orr     r12, r12, #2, 4 @ #0x20000000
	msr     CPSR_f, r12
	bx      lr
@ 0x20e1228


.arm
Function_20e1228: @ 20e1228 :arm
	mov     r3, #255, 8 @ #0xff000000
	cmp     r3, r0, lsl #1
	bcc     branch_20e127c
	cmp     r3, r1, lsl #1
	bcc     branch_20e127c
	orr     r3, r0, r1
	movs    r3, r3, lsl #1
	moveq   r0, #0x1
	bne     branch_20e125c
	mrs     r12, CPSR
	orr     r12, r12, #1, 2 @ #0x40000000
	msr     CPSR_f, r12
	bx      lr
@ 0x20e125c

.arm
branch_20e125c: @ 20e125c :arm
	cmp     r0, r1
	moveq   r0, #0x1
	movne   r0, #0x0
	mrs     r12, CPSR
	orreq   r12, r12, #1, 2 @ #0x40000000
	bicne   r12, r12, #1, 2 @ #0x40000000
	msr     CPSR_f, r12
	bx      lr
@ 0x20e127c

.arm
branch_20e127c: @ 20e127c :arm
	mov     r0, #0x0
	mrs     r12, CPSR
	bic     r12, r12, #1, 2 @ #0x40000000
	msr     CPSR_f, r12
	bx      lr
@ 0x20e1290

.arm
Function_20e1290: @ 20e1290 :arm
	mov     r3, #255, 8 @ #0xff000000
	cmp     r3, r0, lsl #1
	bcc     branch_20e12e4
	cmp     r3, r1, lsl #1
	bcc     branch_20e12e4
	orr     r3, r0, r1
	movs    r3, r3, lsl #1
	moveq   r0, #0x0
	bne     branch_20e12c4
	mrs     r12, CPSR
	orr     r12, r12, #1, 2 @ #0x40000000
	msr     CPSR_f, r12
	bx      lr
@ 0x20e12c4

.arm
branch_20e12c4: @ 20e12c4 :arm
	cmp     r0, r1
	movne   r0, #0x1
	moveq   r0, #0x0
	mrs     r12, CPSR
	bicne   r12, r12, #1, 2 @ #0x40000000
	orreq   r12, r12, #1, 2 @ #0x40000000
	msr     CPSR_f, r12
	bx      lr

branch_20e12e4: @ 20e12e4 :arm
	mov     r0, #0x1
	mrs     r12, CPSR
	bic     r12, r12, #1, 2 @ #0x40000000
	msr     CPSR_f, r12
	bx      lr
@ 0x20e12f8


.arm
_frdiv: @ 20e12f8 :arm
	eor     r0, r0, r1
	eor     r1, r0, r1
	eor     r0, r0, r1

.globl _fdiv
_fdiv: @ 20e1304 :arm
	stmfd   sp!, {lr}
	mov     r12, #0xff
	ands    r3, r12, r0, lsr #23
	cmpne   r3, #0xff
	beq     branch_20e14d8
	ands    r12, r12, r1, lsr #23
	cmpne   r12, #0xff
	beq     branch_20e1514
	orr     r1, r1, #0x800000
	orr     r0, r0, #0x800000
	bic     r2, r0, #0xff000000
	bic     lr, r1, #0xff000000
branch_20e1334: @ 20e1334 :arm
	cmp     r2, lr
	movcc   r2, r2, lsl #1
	subcc   r3, r3, #0x1
	teq     r0, r1
	sub     r0, pc, #0x94
	ldrb    r1, [r0, lr, lsr #0xf]
	rsb     lr, lr, #0x0
	mov     r0, lr, asr #1
	mul     r0, r1, r0
	add     r0, r0, #2, 2 @ #0x80000000
	mov     r0, r0, lsr #6
	mul     r0, r1, r0
	mov     r0, r0, lsr #14
	mul     r1, lr, r0
	sub     r12, r3, r12
	mov     r1, r1, lsr #12
	mul     r1, r0, r1
	mov     r0, r0, lsl #14
	add     r0, r0, r1, lsr #15
	umull   r1, r0, r2, r0
	mov     r3, r0
	orrmi   r0, r0, #2, 2 @ #0x80000000
	adds    r12, r12, #0x7e
	bmi     branch_20e15dc
	cmp     r12, #0xfe
	bge     branch_20e1690
	add     r0, r0, r12, lsl #23
	mov     r12, r1, lsr #28
	cmp     r12, #0x7
	beq     branch_20e14b8
	add     r0, r0, r1, lsr #31
	ldmfd   sp!, {lr}
	bx      lr
@ 0x20e13b8


.incbin "./baserom/arm9.bin", 0xe13b8, 0x20e14b8 - 0x20e13b8


.arm
branch_20e14b8: @ 20e14b8 :arm
	mov     r1, r3, lsl #1
	add     r1, r1, #0x1
	rsb     lr, lr, #0x0
	mul     r1, lr, r1
	cmp     r1, r2, lsl #24
	addmi   r0, r0, #0x1
	ldmfd   sp!, {lr}
	bx      lr
@ 0x20e14d8

.arm
branch_20e14d8: @ 20e14d8 :arm
	eor     lr, r0, r1
	and     lr, lr, #2, 2 @ #0x80000000
	cmp     r3, #0x0
	beq     branch_20e1530
	movs    r0, r0, lsl #9
	bne     branch_20e1678
	mov     r12, r1, lsr #23
	mov     r1, r1, lsl #9
	ands    r12, r12, #0xff
	beq     branch_20e1668
	cmp     r12, #0xff
	blt     branch_20e1668
	cmp     r1, #0x0
	beq     branch_20e1684
	b       branch_20e1660
@ 0x20e1514

.arm
branch_20e1514: @ 20e1514 :arm
	eor     lr, r0, r1
	and     lr, lr, #2, 2 @ #0x80000000
	cmp     r12, #0x0
	beq     branch_20e1594
.arm
branch_20e1524: @ 20e1524 :arm
	movs    r1, r1, lsl #9
	bne     branch_20e1660
	b       branch_20e16b0
@ 0x20e1530

.arm
branch_20e1530: @ 20e1530 :arm
	movs    r2, r0, lsl #9
	beq     branch_20e1564
	clz     r3, r2
	movs    r2, r2, lsl r3
	rsb     r3, r3, #0x0
	mov     r2, r2, lsr #8
	ands    r12, r12, r1, lsr #23
	beq     branch_20e15bc
	cmp     r12, #0xff
	beq     branch_20e1524
	orr     r1, r1, #2, 10 @ #0x800000
	bic     lr, r1, #255, 8 @ #0xff000000
	b       branch_20e1334
@ 0x20e1564

.arm
branch_20e1564: @ 20e1564 :arm
	mov     r12, r1, lsr #23
	mov     r1, r1, lsl #9
	ands    r12, r12, #0xff
	beq     branch_20e1588
	cmp     r12, #0xff
	blt     branch_20e16b0
	cmp     r1, #0x0
	beq     branch_20e16b0
	b       branch_20e1660
@ 0x20e1588

.arm
branch_20e1588: @ 20e1588 :arm
	cmp     r1, #0x0
	beq     branch_20e1684
	b       branch_20e16b0
@ 0x20e1594

.arm
branch_20e1594: @ 20e1594 :arm
	movs    r12, r1, lsl #9
	beq     branch_20e1668
	mov     lr, r12
	clz     r12, lr
	movs    lr, lr, lsl r12
	rsb     r12, r12, #0x0
	mov     lr, lr, lsr #8
	orr     r0, r0, #2, 10 @ #0x800000
	bic     r2, r0, #255, 8 @ #0xff000000
	b       branch_20e1334
@ 0x20e15bc

.arm
branch_20e15bc: @ 20e15bc :arm
	movs    r12, r1, lsl #9
	beq     branch_20e1668
	mov     lr, r12
	clz     r12, lr
	movs    lr, lr, lsl r12
	rsb     r12, r12, #0x0
	mov     lr, lr, lsr #8
	b       branch_20e1334
@ 0x20e15dc

.arm
branch_20e15dc: @ 20e15dc :arm
	and     r0, r0, #2, 2 @ #0x80000000
	cmn     r12, #0x18
	beq     branch_20e1650
	bmi     branch_20e16a8
	add     r1, r12, #0x17
	mov     r2, r2, lsl r1
	rsb     r12, r12, #0x0
	mov     r3, r3, lsr r12
	orr     r0, r0, r3
	rsb     lr, lr, #0x0
	mul     r1, lr, r3
	cmp     r1, r2
	ldmeqfd sp!, {lr}
	bxeq    lr
	add     r1, r1, lr
	cmp     r1, r2
	beq     branch_20e1644
	addmi   r0, r0, #0x1
	subpl   r1, r1, lr
	add     r1, lr, r1, lsl #1
	cmp     r1, r2, lsl #1
	and     r3, r0, #0x1
	addmi   r0, r0, #0x1
	addeq   r0, r0, r3
	ldmfd   sp!, {lr}
	bx      lr
@ 0x20e1644

.arm
branch_20e1644: @ 20e1644 :arm
	add     r0, r0, #0x1
	ldmfd   sp!, {lr}
	bx      lr
@ 0x20e1650

.arm
branch_20e1650: @ 20e1650 :arm
	cmn     r2, lr
	addne   r0, r0, #0x1
	ldmfd   sp!, {lr}
	bx      lr
@ 0x20e1660

.arm
branch_20e1660: @ 20e1660 :arm
	mov     r0, r1
	b       branch_20e1678
@ 0x20e1668

.arm
branch_20e1668: @ 20e1668 :arm
	mov     r0, #255, 8 @ #0xff000000
	orr     r0, lr, r0, lsr #1
	ldmfd   sp!, {lr}
	bx      lr
@ 0x20e1678

.arm
branch_20e1678: @ 20e1678 :arm
	mvn     r0, #2, 2 @ #0x80000000
	ldmfd   sp!, {lr}
	bx      lr
@ 0x20e1684

.arm
branch_20e1684: @ 20e1684 :arm
	mvn     r0, #2, 2 @ #0x80000000
	ldmfd   sp!, {lr}
	bx      lr
@ 0x20e1690

.arm
branch_20e1690: @ 20e1690 :arm
	tst     r0, #2, 2 @ #0x80000000
	mov     r0, #255, 8 @ #0xff000000
	movne   r0, r0, asr #1
	moveq   r0, r0, lsr #1
	ldmfd   sp!, {lr}
	bx      lr

branch_20e16a8: @ 20e16a8 :arm
	ldmfd   sp!, {lr}
	bx      lr

branch_20e16b0: @ 20e16b0 :arm
	mov     r0, lr
	ldmfd   sp!, {lr}
	bx      lr
@ 0x20e16bc


.arm
.globl _f2d
_f2d: @ 20e16bc :arm
	and     r2, r0, #2, 2 @ #0x80000000
	mov     r12, r0, lsr #23
	mov     r3, r0, lsl #9
	ands    r12, r12, #0xff
	beq     branch_20e16ec
	cmp     r12, #0xff
	beq     branch_20e1718
branch_20e16d8: @ 20e16d8 :arm
	add     r12, r12, #14, 26 @ #0x380
	mov     r0, r3, lsl #20
	orr     r1, r2, r3, lsr #12
	orr     r1, r1, r12, lsl #20
	bx      lr

branch_20e16ec: @ 20e16ec :arm
	cmp     r3, #0x0
	bne     branch_20e1700
	mov     r1, r2
	mov     r0, #0x0
	bx      lr

branch_20e1700: @ 20e1700 :arm
	mov     r3, r3, lsr #1
	clz     r12, r3
	movs    r3, r3, lsl r12
	rsb     r12, r12, #0x1
	add     r3, r3, r3
	b       branch_20e16d8

branch_20e1718: @ 20e1718 :arm
	cmp     r3, #0x0
	bhi     branch_20e1730
	ldr     r1, [pc, #0x14] @ [0x20e173c] (=0x7ff00000)
	orr     r1, r1, r2
	mov     r0, #0x0
	bx      lr

branch_20e1730: @ 20e1730 :arm
	mvn     r0, #0x0
	bic     r1, r0, #2, 2 @ #0x80000000
	bx      lr
@ 0x20e173c

.word 0x7ff00000 @ 0x20e173c



.arm
.globl _ffix
_ffix: @ 20e1740 :arm
	bic     r1, r0, #0x80000000
	mov     r2, #0x9e
	subs    r2, r2, r1, lsr #23
	ble     branch_20e1768
	mov     r1, r1, lsl #8
	orr     r1, r1, #0x80000000
	cmp     r0, #0x0
	mov     r0, r1, lsr r2
	rsbmi   r0, r0, #0x0
	bx      lr

branch_20e1768: @ 20e1768 :arm
	mvn     r0, r0, asr #31
	add     r0, r0, #0x80000000
	bx      lr
@ 0x20e1774


.arm
_ffixu: @ 20e1774 :arm
	tst     r0, #2, 2 @ #0x80000000
	bne     branch_20e1798
	mov     r1, #0x9e
	subs    r1, r1, r0, lsr #23
	blt     branch_20e17ac
	mov     r2, r0, lsl #8
	orr     r0, r2, #2, 2 @ #0x80000000
	mov     r0, r0, lsr r1
	bx      lr

branch_20e1798: @ 20e1798 :arm
	mov     r2, #255, 8 @ #0xff000000
	cmp     r2, r0, lsl #1
	movcs   r0, #0x0
	mvncc   r0, #0x0
	bx      lr

branch_20e17ac: @ 20e17ac :arm
	mvn     r0, #0x0
	bx      lr
@ 0x20e17b4


.arm
.globl _fflt
_fflt: @ 20e17b4 :arm
	ands    r2, r0, #0x80000000
	rsbmi   r0, r0, #0x0
	cmp     r0, #0x0
branch_20e17c0: @ 20e17c0 :arm
	bxeq    lr
	clz     r3, r0
	movs    r0, r0, lsl r3
	rsb     r3, r3, #0x9e
	ands    r1, r0, #0xff
	add     r0, r0, r0
	orr     r0, r2, r0, lsr #9
	orr     r0, r0, r3, lsl #23
	bxeq    lr
	tst     r1, #0x80
	bxeq    lr
	ands    r3, r1, #0x7f
	andeqs  r3, r0, #0x1
	addne   r0, r0, #0x1
	bx      lr
@ 0x20e17fc


.arm
_ffltu: @ 20e17fc :arm
	cmp     r0, #0x0
	bxeq    lr
	mov     r3, #0x9e
	bmi     branch_20e1818
	clz     r12, r0
	movs    r0, r0, lsl r12
	sub     r3, r3, r12
branch_20e1818: @ 20e1818 :arm
	ands    r2, r0, #0xff
	add     r0, r0, r0
	mov     r0, r0, lsr #9
	orr     r0, r0, r3, lsl #23
	bxeq    lr
	tst     r2, #0x80
	bxeq    lr
	ands    r1, r2, #0x7f
	andeqs  r1, r0, #0x1
	addne   r0, r0, #0x1
	bx      lr
@ 0x20e1844


.arm
_ll_sto_f: @ 20e1844 :arm
	ands    r2, r1, #2, 2 @ #0x80000000
	beq     branch_20e1854
	rsbs    r0, r0, #0x0
	rsc     r1, r1, #0x0
branch_20e1854: @ 20e1854 :arm
	cmp     r1, #0x0
	bne     branch_20e1864
	movs    r0, r0
	b       branch_20e17c0

branch_20e1864: @ 20e1864 :arm
	clz     r3, r1
	movs    r1, r1, lsl r3
	rsb     r3, r3, #0x20
	orr     r1, r1, r0, lsr r3
	rsb     r12, r3, #0x20
	movs    r0, r0, lsl r12
	orrne   r1, r1, #0x1
	add     r3, r3, #0x9e
	ands    r12, r1, #0xff
	add     r0, r1, r1
	orr     r0, r2, r0, lsr #9
	orr     r0, r0, r3, lsl #23
	bxeq    lr
	tst     r12, #0x80
	bxeq    lr
	ands    r3, r12, #0x7f
	andeqs  r3, r0, #0x1
	addne   r0, r0, #0x1
	bx      lr
@ 0x20e18b0


.arm
.globl _fmul
_fmul: @ 20e18b0 :arm
	eor     r2, r0, r1
	and     r2, r2, #0x80000000
	mov     r12, #0xff
	ands    r3, r12, r0, lsr #23
	mov     r0, r0, lsl #8
	cmpne   r3, #0xff
	beq     branch_20e192c
	orr     r0, r0, #0x80000000
	ands    r12, r12, r1, lsr #23
	mov     r1, r1, lsl #8
	cmpne   r12, #0xff
	beq     branch_20e196c
	orr     r1, r1, #0x80000000
branch_20e18e4: @ 20e18e4 :arm
	add     r12, r3, r12
	umull   r1, r3, r0, r1
	movs    r0, r3
	addpl   r0, r0, r0
	subpl   r12, r12, #0x1
	subs    r12, r12, #0x7f
	bmi     branch_20e19f8
	cmp     r12, #0xfe
	bge     branch_20e1a64
	ands    r3, r0, #0xff
	orr     r0, r2, r0, lsr #8
	add     r0, r0, r12, lsl #23
	tst     r3, #0x80
	bxeq    lr
	orrs    r1, r1, r3, lsl #25
	andeqs  r3, r0, #0x1
	addne   r0, r0, #0x1
	bx      lr

branch_20e192c: @ 20e192c :arm
	cmp     r3, #0x0
	beq     branch_20e1980
	movs    r0, r0, lsl #1
	bne     branch_20e1a54
	mov     r12, r1, lsr #23
	mov     r1, r1, lsl #9
	ands    r12, r12, #0xff
	beq     branch_20e1960
	cmp     r12, #0xff
	blt     branch_20e1a48
	cmp     r1, #0x0
	beq     branch_20e1a48
	b       branch_20e1a54

branch_20e1960: @ 20e1960 :arm
	cmp     r1, #0x0
	beq     branch_20e1a5c
	b       branch_20e1a48

branch_20e196c: @ 20e196c :arm
	cmp     r12, #0x0
	beq     branch_20e19dc
branch_20e1974: @ 20e1974 :arm
	movs    r1, r1, lsl #1
	bne     branch_20e1a54
	b       branch_20e1a48

branch_20e1980: @ 20e1980 :arm
	movs    r0, r0, lsl #1
	beq     branch_20e19b8
	mov     r0, r0, lsr #1
	clz     r3, r0
	movs    r0, r0, lsl r3
	rsb     r3, r3, #0x1
	mov     r12, r1, lsr #23
	mov     r1, r1, lsl #8
	ands    r12, r12, #0xff
	beq     branch_20e19dc
	cmp     r12, #0xff
	beq     branch_20e1974
	orr     r1, r1, #0x80000000
	b       branch_20e18e4

branch_20e19b8: @ 20e19b8 :arm
	mov     r12, r1, lsr #23
	mov     r1, r1, lsl #9
	ands    r12, r12, #0xff
	beq     branch_20e1a88
	cmp     r12, #0xff
	blt     branch_20e1a88
	cmp     r1, #0x0
	beq     branch_20e1a5c
	b       branch_20e1a54

branch_20e19dc: @ 20e19dc :arm
	movs    r1, r1, lsl #1
	beq     branch_20e1a88
	mov     r1, r1, lsr #1
	clz     r12, r1
	movs    r1, r1, lsl r12
	rsb     r12, r12, #0x1
	b       branch_20e18e4

branch_20e19f8: @ 20e19f8 :arm
	cmn     r12, #0x18
	beq     branch_20e1a40
	bmi     branch_20e1a80
	cmp     r1, #0x0
	orrne   r0, r0, #0x1
	mov     r3, r0
	mov     r0, r0, lsr #8
	rsb     r12, r12, #0x0
	orr     r0, r2, r0, lsr r12
	rsb     r12, r12, #0x18
	movs    r1, r3, lsl r12
	bxeq    lr
	tst     r1, #0x80000000
	bxeq    lr
	movs    r1, r1, lsl #1
	andeqs  r1, r0, #0x1
	addne   r0, r0, #0x1
	bx      lr

branch_20e1a40: @ 20e1a40 :arm
	mov     r0, r0, lsl #1
	b       branch_20e1a70

branch_20e1a48: @ 20e1a48 :arm
	mov     r0, #0xff000000
	orr     r0, r2, r0, lsr #1
	bx      lr

branch_20e1a54: @ 20e1a54 :arm
	mvn     r0, #0x80000000
	bx      lr

branch_20e1a5c: @ 20e1a5c :arm
	mvn     r0, #0x80000000
	bx      lr

branch_20e1a64: @ 20e1a64 :arm
	mov     r0, #0xff000000
	orr     r0, r2, r0, lsr #1
	bx      lr

branch_20e1a70: @ 20e1a70 :arm
	movs    r1, r0
	mov     r0, r2
	addne   r0, r0, #0x1
	bx      lr

branch_20e1a80: @ 20e1a80 :arm
	mov     r0, r2
	bx      lr

branch_20e1a88: @ 20e1a88 :arm
	mov     r0, r2
	bx      lr
@ 0x20e1a90


.arm
_frsb: @ 20e1a90 :arm
	eor     r0, r0, r1
	eor     r1, r0, r1
	eor     r0, r0, r1

.globl _fsub
_fsub: @ 20e1a9c :arm
	eors    r2, r0, r1
	eormi   r1, r1, #2, 2 @ #0x80000000
	bmi     __fadd_start
__fsub_start: @ 20e1aa8 :arm
	subs    r12, r0, r1
	eorcc   r12, r12, #2, 2 @ #0x80000000
	subcc   r0, r0, r12
	addcc   r1, r1, r12
	mov     r2, #2, 2 @ #0x80000000
	mov     r3, r0, lsr #23
	orr     r0, r2, r0, lsl #8
	ands    r12, r3, #0xff
	cmpne   r12, #0xff
	beq     branch_20e1bc4
	mov     r12, r1, lsr #23
	orr     r1, r2, r1, lsl #8
	ands    r2, r12, #0xff
	beq     branch_20e1c04
branch_20e1ae0: @ 20e1ae0 :arm
	subs    r12, r3, r12
	beq     branch_20e1b28
	rsb     r2, r12, #0x20
	movs    r2, r1, lsl r2
	mov     r1, r1, lsr r12
	orrne   r1, r1, #0x1
	subs    r0, r0, r1
	bpl     branch_20e1b6c
	ands    r1, r0, #0xff
	add     r0, r0, r0
	mov     r0, r0, lsr #9
	orr     r0, r0, r3, lsl #23
	tst     r1, #0x80
	bxeq    lr
	ands    r1, r1, #0x7f
	andeqs  r1, r0, #0x1
	addne   r0, r0, #0x1
	bx      lr

branch_20e1b28: @ 20e1b28 :arm
	subs    r0, r0, r1
	beq     branch_20e1cd0
	mov     r2, r3, lsl #23
	and     r2, r2, #2, 2 @ #0x80000000
	bic     r3, r3, #1, 24 @ #0x100
	clz     r12, r0
	movs    r0, r0, lsl r12
	sub     r3, r3, r12
	cmp     r3, #0x0
	bgt     branch_20e1b5c
	rsb     r3, r3, #0x9
	orr     r0, r2, r0, lsr r3
	bx      lr

branch_20e1b5c: @ 20e1b5c :arm
	add     r0, r0, r0
	orr     r0, r2, r0, lsr #9
	orr     r0, r0, r3, lsl #23
	bx      lr

branch_20e1b6c: @ 20e1b6c :arm
	mov     r2, r3, lsl #23
	and     r2, r2, #2, 2 @ #0x80000000
	bic     r3, r3, #1, 24 @ #0x100
	clz     r12, r0
	movs    r0, r0, lsl r12
	sub     r3, r3, r12
	cmp     r3, #0x0
	bgt     branch_20e1b98
	rsb     r3, r3, #0x9
	orr     r0, r2, r0, lsr r3
	bx      lr

branch_20e1b98: @ 20e1b98 :arm
	ands    r1, r0, #0xff
	add     r0, r0, r0
	orr     r0, r2, r0, lsr #9
	orr     r0, r0, r3, lsl #23
	bxeq    lr
	tst     r1, #0x80
	bxeq    lr
	ands    r1, r1, #0x7f
	andeqs  r1, r0, #0x1
	addne   r0, r0, #0x1
	bx      lr

branch_20e1bc4: @ 20e1bc4 :arm
	cmp     r3, #1, 24 @ #0x100
	movge   r2, #2, 2 @ #0x80000000
	movlt   r2, #0x0
	ands    r3, r3, #0xff
	beq     branch_20e1c2c
	movs    r0, r0, lsl #1
	bne     branch_20e1d04
	mov     r12, r1, lsr #23
	mov     r1, r1, lsl #9
	ands    r12, r12, #0xff
	beq     branch_20e1cf8
	cmp     r12, #0xff
	blt     branch_20e1cf8
	cmp     r1, #0x0
	beq     branch_20e1d0c
	b       branch_20e1d04

branch_20e1c04: @ 20e1c04 :arm
	cmp     r12, #1, 24 @ #0x100
	movge   r2, #2, 2 @ #0x80000000
	movlt   r2, #0x0
	and     r3, r3, #0xff
	ands    r12, r12, #0xff
	beq     branch_20e1c94
branch_20e1c1c: @ 20e1c1c :arm
	eor     r2, r2, #2, 2 @ #0x80000000
	movs    r1, r1, lsl #1
	bne     branch_20e1d04
	b       branch_20e1cf8

branch_20e1c2c: @ 20e1c2c :arm
	movs    r0, r0, lsl #1
	beq     branch_20e1c64
	mov     r0, r0, lsr #1
	mov     r3, #0x1
	mov     r12, r1, lsr #23
	mov     r1, r1, lsl #8
	ands    r12, r12, #0xff
	beq     branch_20e1c94
	cmp     r12, #0xff
	beq     branch_20e1c1c
	orr     r1, r1, #2, 2 @ #0x80000000
	orr     r3, r3, r2, lsr #23
	orr     r12, r12, r2, lsr #23
	b       branch_20e1ae0

branch_20e1c64: @ 20e1c64 :arm
	mov     r3, r1, lsr #23
	mov     r0, r1, lsl #9
	ands    r2, r3, #0xff
	beq     branch_20e1c88
	cmp     r2, #0xff
	blt     branch_20e1cb0
	cmp     r0, #0x0
	bne     branch_20e1cf0
	b       branch_20e1cf8

branch_20e1c88: @ 20e1c88 :arm
	cmp     r0, #0x0
	beq     branch_20e1cd0
	b       branch_20e1cb0

branch_20e1c94: @ 20e1c94 :arm
	movs    r1, r1, lsl #1
	beq     branch_20e1cb8
	mov     r1, r1, lsr #1
	mov     r12, #0x1
	orr     r12, r12, r2, lsr #23
	orr     r3, r3, r2, lsr #23
	b       branch_20e1ae0

branch_20e1cb0: @ 20e1cb0 :arm
	mov     r0, r1
	bx      lr

branch_20e1cb8: @ 20e1cb8 :arm
	cmp     r0, #0x0
	subges  r3, r3, #0x1
	add     r0, r0, r0
	orr     r0, r2, r0, lsr #9
	orr     r0, r0, r3, lsl #23
	bx      lr

branch_20e1cd0: @ 20e1cd0 :arm
	mov     r0, #0x0
	bx      lr
@ 0x20e1cd8


.arm
Function_20e1cd8: @ 20e1cd8 :arm
	cmp     r0, #0x0
	subges  r3, r3, #0x1
	add     r0, r0, r0
	mov     r0, r0, lsr #9
	orr     r0, r0, r3, lsl #23
	bx      lr
@ 0x20e1cf0


.arm
branch_20e1cf0: @ 20e1cf0 :arm
	mvn     r0, #2, 2 @ #0x80000000
	bx      lr

branch_20e1cf8: @ 20e1cf8 :arm
	mov     r0, #255, 8 @ #0xff000000
	orr     r0, r2, r0, lsr #1
	bx      lr

branch_20e1d04: @ 20e1d04 :arm
	mvn     r0, #2, 2 @ #0x80000000
	bx      lr

branch_20e1d0c: @ 20e1d0c :arm
	mvn     r0, #2, 2 @ #0x80000000
	bx      lr
@ 0x20e1d14


.arm
_ll_mod: @ 20e1d14 :arm
	stmfd   sp!, {r4-r7,r11,r12,lr}
	mov     r4, r1
	orr     r4, r4, #0x1
	b       branch_20e1d34
@ 0x20e1d24


.arm
_ll_sdiv: @ 20e1d24 :arm
	stmfd   sp!, {r4-r7,r11,r12,lr}
	eor     r4, r1, r3
	mov     r4, r4, asr #1
	mov     r4, r4, lsl #1
branch_20e1d34: @ 20e1d34 :arm
	orrs    r5, r3, r2
	bne     branch_20e1d44
	ldmfd   sp!, {r4-r7,r11,r12,lr}
	bx      lr

branch_20e1d44: @ 20e1d44 :arm
	mov     r5, r0, lsr #31
	add     r5, r5, r1
	mov     r6, r2, lsr #31
	add     r6, r6, r3
	orrs    r6, r5, r6
	bne     branch_20e1d78
	mov     r1, r2
	bl      _s32_div_f
	ands    r4, r4, #0x1
	movne   r0, r1
	mov     r1, r0, asr #31
	ldmfd   sp!, {r4-r7,r11,r12,lr}
	bx      lr

branch_20e1d78: @ 20e1d78 :arm
	cmp     r1, #0x0
	bge     branch_20e1d88
	rsbs    r0, r0, #0x0
	rsc     r1, r1, #0x0
branch_20e1d88: @ 20e1d88 :arm
	cmp     r3, #0x0
	bge     branch_20e1d98
	rsbs    r2, r2, #0x0
	rsc     r3, r3, #0x0
branch_20e1d98: @ 20e1d98 :arm
	orrs    r5, r1, r0
	beq     branch_20e1ebc
	mov     r5, #0x0
	mov     r6, #0x1
	cmp     r3, #0x0
	bmi     branch_20e1dc4
branch_20e1db0: @ 20e1db0 :arm
	add     r5, r5, #0x1
	adds    r2, r2, r2
	adcs    r3, r3, r3
	bpl     branch_20e1db0
	add     r6, r6, r5
branch_20e1dc4: @ 20e1dc4 :arm
	cmp     r1, #0x0
	blt     branch_20e1de4
branch_20e1dcc: @ 20e1dcc :arm
	cmp     r6, #0x1
	beq     branch_20e1de4
	sub     r6, r6, #0x1
	adds    r0, r0, r0
	adcs    r1, r1, r1
	bpl     branch_20e1dcc
branch_20e1de4: @ 20e1de4 :arm
	mov     r7, #0x0
	mov     r12, #0x0
	mov     r11, #0x0
	b       branch_20e1e0c

branch_20e1df4: @ 20e1df4 :arm
	orr     r12, r12, #0x1
	subs    r6, r6, #0x1
	beq     branch_20e1e64
	adds    r0, r0, r0
	adcs    r1, r1, r1
	adcs    r7, r7, r7
branch_20e1e0c: @ 20e1e0c :arm
	subs    r0, r0, r2
	sbcs    r1, r1, r3
	sbcs    r7, r7, #0x0
	adds    r12, r12, r12
	adc     r11, r11, r11
	cmp     r7, #0x0
	bge     branch_20e1df4
branch_20e1e28: @ 20e1e28 :arm
	subs    r6, r6, #0x1
	beq     branch_20e1e5c
	adds    r0, r0, r0
	adcs    r1, r1, r1
	adc     r7, r7, r7
	adds    r0, r0, r2
	adcs    r1, r1, r3
	adc     r7, r7, #0x0
	adds    r12, r12, r12
	adc     r11, r11, r11
	cmp     r7, #0x0
	bge     branch_20e1df4
	b       branch_20e1e28

branch_20e1e5c: @ 20e1e5c :arm
	adds    r0, r0, r2
	adc     r1, r1, r3
branch_20e1e64: @ 20e1e64 :arm
	ands    r7, r4, #0x1
	moveq   r0, r12
	moveq   r1, r11
	beq     branch_20e1e9c
	subs    r7, r5, #0x20
	movge   r0, r1, lsr r7
	bge     branch_20e1ec0
	rsb     r7, r5, #0x20
	mov     r0, r0, lsr r5
	orr     r0, r0, r1, lsl r7
	mov     r1, r1, lsr r5
	b       branch_20e1e9c
@ 0x20e1e94


.arm
Function_20e1e94: @ 20e1e94 :arm
	mov     r0, r1, lsr r7
	mov     r1, #0x0


.arm
branch_20e1e9c: @ 20e1e9c :arm
	cmp     r4, #0x0
	blt     branch_20e1eac
	ldmfd   sp!, {r4-r7,r11,r12,lr}
	bx      lr

branch_20e1eac: @ 20e1eac :arm
	rsbs    r0, r0, #0x0
	rsc     r1, r1, #0x0
	ldmfd   sp!, {r4-r7,r11,r12,lr}
	bx      lr

branch_20e1ebc: @ 20e1ebc :arm
	mov     r0, #0x0
branch_20e1ec0: @ 20e1ec0 :arm
	mov     r1, #0x0
	cmp     r4, #0x0
	blt     branch_20e1eac
	ldmfd   sp!, {r4-r7,r11,r12,lr}
	bx      lr
@ 0x20e1ed4


.arm
.globl _ll_udiv
_ll_udiv: @ 20e1ed4 :arm
	stmfd   sp!, {r4-r7,r11,r12,lr}
	mov     r4, #0x0
	b       branch_20e1ee8
@ 0x20e1ee0


.arm
_ull_mod: @ 20e1ee0 :arm
	stmfd   sp!, {r4-r7,r11,r12,lr}
	mov     r4, #0x1
branch_20e1ee8: @ 20e1ee8 :arm
	orrs    r5, r3, r2
	bne     branch_20e1ef8
	ldmfd   sp!, {r4-r7,r11,r12,lr}
	bx      lr

branch_20e1ef8: @ 20e1ef8 :arm
	orrs    r5, r1, r3
	bne     branch_20e1d98
	mov     r1, r2
	bl      _u32_div_not_0_f
	cmp     r4, #0x0
	movne   r0, r1
	mov     r1, #0x0
	ldmfd   sp!, {r4-r7,r11,r12,lr}
	bx      lr
@ 0x20e1f1c


.arm
.globl _ll_mul
_ll_mul: @ 20e1f1c :arm
	stmfd   sp!, {r4,r5,lr}
	umull   r5, r4, r0, r2
	mla     r4, r0, r3, r4
	mla     r4, r2, r1, r4
	mov     r1, r4
	mov     r0, r5
	ldmfd   sp!, {r4,r5,lr}
	bx      lr
@ 0x20e1f3c


.arm
_ll_shl: @ 20e1f3c :arm
	ands    r2, r2, #0x3f
	bxeq    lr
	subs    r3, r2, #0x20
	bge     branch_20e1f60
	rsb     r3, r2, #0x20
	mov     r1, r1, lsl r2
	orr     r1, r1, r0, lsr r3
	mov     r0, r0, lsl r2
	bx      lr

branch_20e1f60: @ 20e1f60 :arm
	mov     r1, r0, lsl r3
	mov     r0, #0x0
	bx      lr
@ 0x20e1f6c


.arm
.globl _s32_div_f
_s32_div_f: @ 20e1f6c :arm Division
	eor     r12, r0, r1
	and     r12, r12, #0x80000000
	cmp     r0, #0x0
	rsblt   r0, r0, #0x0
	addlt   r12, r12, #0x1
	cmp     r1, #0x0
	rsblt   r1, r1, #0x0
	beq     branch_20e2164
	cmp     r0, r1
	movcc   r1, r0
	movcc   r0, #0x0
	bcc     branch_20e2164
	mov     r2, #0x1c
	mov     r3, r0, lsr #4
	cmp     r1, r3, lsr #12
	suble   r2, r2, #0x10
	movle   r3, r3, lsr #16
	cmp     r1, r3, lsr #4
	suble   r2, r2, #0x8
	movle   r3, r3, lsr #8
	cmp     r1, r3
	suble   r2, r2, #0x4
	movle   r3, r3, lsr #4
	mov     r0, r0, lsl r2
	rsb     r1, r1, #0x0
	adds    r0, r0, r0
	add     r2, r2, r2, lsl #1
	add     pc, pc, r2, lsl #2
	mov     r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	mov     r1, r3
branch_20e2164: @ 20e2164 :arm
	ands    r3, r12, #0x80000000
	rsbne   r0, r0, #0x0
	ands    r3, r12, #0x1
	rsbne   r1, r1, #0x0
	bx      lr
@ 0x20e2178


.arm
.globl _u32_div_f
_u32_div_f: @ 20e2178 :arm
	cmp     r1, #0x0
	bxeq    lr
_u32_div_not_0_f: @ 20e2180 :arm
	cmp     r0, r1
	movcc   r1, r0
	movcc   r0, #0x0
	bxcc    lr
	mov     r2, #0x1c
	mov     r3, r0, lsr #4
	cmp     r1, r3, lsr #12
	suble   r2, r2, #0x10
	movle   r3, r3, lsr #16
	cmp     r1, r3, lsr #4
	suble   r2, r2, #0x8
	movle   r3, r3, lsr #8
	cmp     r1, r3
	suble   r2, r2, #0x4
	movle   r3, r3, lsr #4
	mov     r0, r0, lsl r2
	rsb     r1, r1, #0x0
	adds    r0, r0, r0
	add     r2, r2, r2, lsl #1
	add     pc, pc, r2, lsl #2
	mov     r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	adcs    r3, r1, r3, lsl #1
	subcc   r3, r3, r1
	adcs    r0, r0, r0
	mov     r1, r3
	bx      lr
@ 0x20e235c


.arm
_drdiv: @ 20e235c :arm
	eor     r1, r1, r3
	eor     r3, r1, r3
	eor     r1, r1, r3
	eor     r0, r0, r2
	eor     r2, r0, r2
	eor     r0, r0, r2

arm_func_start _ddiv
_ddiv: @ 20e2374 :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     lr, [pc, #0x534] @ [0x20e28b4] (=0xffe)
	eor     r4, r1, r3
	ands    r12, lr, r1, lsr #19
	cmpne   r12, lr
	beq     branch_20e2720
	bic     r1, r1, lr, lsl #20
	orr     r1, r1, #1, 12 @ #0x100000
	add     r12, r12, r4, lsr #31
branch_20e2398: @ 20e2398 :arm
	ands    r4, lr, r3, lsr #19
	cmpne   r4, lr
	beq     branch_20e27b8
	bic     r3, r3, lr, lsl #20
	orr     r3, r3, #1, 12 @ #0x100000
branch_20e23ac: @ 20e23ac :arm
	sub     r12, r12, r4
	cmp     r1, r3
	cmpeq   r0, r2
	bcs     branch_20e23c8
	adds    r0, r0, r0
	adc     r1, r1, r1
	sub     r12, r12, #0x2
branch_20e23c8: @ 20e23c8 :arm
	sub     r4, pc, #0x24
	ldrb    lr, [r4, r3, lsr #0xc]
	rsbs    r2, r2, #0x0
	rsc     r3, r3, #0x0
	mov     r4, #2, 4 @ #0x20000000
	mla     r5, lr, r3, r4
	mov     r6, r3, lsl #10
	mov     r5, r5, lsr #7
	mul     lr, r5, lr
	orr     r6, r6, r2, lsr #22
	mov     lr, lr, lsr #13
	mul     r5, lr, r6
	mov     r6, r1, lsl #10
	orr     r6, r6, r0, lsr #22
	mov     r5, r5, lsr #16
	mul     r5, lr, r5
	mov     lr, lr, lsl #14
	add     lr, lr, r5, lsr #16
	umull   r5, r6, lr, r6
	umull   r4, r5, r6, r2
	mla     r5, r3, r6, r5
	mov     r4, r4, lsr #26
	orr     r4, r4, r5, lsl #6
	add     r4, r4, r0, lsl #2
	umull   lr, r5, r4, lr
	mov     r4, #0x0
	adds    r5, r5, r6, lsl #24
	adc     r4, r4, r6, lsr #8
	cmp     r12, #2, 22 @ #0x800
	bge     branch_20e25ac
	add     r12, r12, #127, 28 @ #0x7f0
	adds    r12, r12, #0xc
	bmi     branch_20e25c4
	orr     r1, r4, r12, lsl #31
	bic     r12, r12, #0x1
	add     r1, r1, r12, lsl #19
	tst     lr, #2, 2 @ #0x80000000
	bne     branch_20e249c
	rsbs    r2, r2, #0x0
	mov     r4, r4, lsl #1
	add     r4, r4, r5, lsr #31
	mul     lr, r2, r4
	mov     r6, #0x0
	mov     r4, r5, lsl #1
	orr     r4, r4, #0x1
	umlal   r6, lr, r4, r2
	rsc     r3, r3, #0x0
	mla     lr, r4, r3, lr
	cmp     lr, r0, lsl #21
	bmi     branch_20e249c
	mov     r0, r5
	ldmfd   sp!, {r4-r6,lr}
	bx      lr

branch_20e249c: @ 20e249c :arm
	adds    r0, r5, #0x1
	adc     r1, r1, #0x0
	ldmfd   sp!, {r4-r6,lr}
	bx      lr


.incbin "./baserom/arm9.bin", 0xe24ac, 0x20e25ac - 0x20e24ac


.arm
branch_20e25ac: @ 20e25ac :arm
	movs    r1, r12, lsl #31
	orr     r1, r1, #127, 8 @ #0x7f000000
	orr     r1, r1, #15, 12 @ #0xf00000
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,lr}
	bx      lr

branch_20e25c4: @ 20e25c4 :arm
	mvn     r6, r12, asr #1
	cmp     r6, #0x34
	bgt     branch_20e2710
	beq     branch_20e26ec
	cmp     r6, #0x14
	bge     branch_20e260c
	rsb     r6, r6, #0x13
	mov     lr, r0, lsl r6
	rsb     r6, r6, #0x14
	mov     r0, r5, lsr r6
	rsb     r6, r6, #0x20
	orr     r0, r0, r4, lsl r6
	rsb     r6, r6, #0x20
	mov     r4, r4, lsr r6
	orr     r1, r4, r12, lsl #31
	mov     r12, lr
	mov     lr, #0x0
	b       branch_20e263c

branch_20e260c: @ 20e260c :arm
	rsb     r6, r6, #0x33
	mov     lr, r1, lsl r6
	mov     r1, r12, lsl #31
	rsb     r6, r6, #0x20
	orr     r12, lr, r0, lsr r6
	rsb     r6, r6, #0x20
	mov     lr, r0, lsl r6
	mov     r5, r5, lsr #21
	orr     r5, r5, r4, lsl #11
	rsb     r6, r6, #0x1f
	mov     r0, r5, lsr r6
	mov     r4, #0x0
branch_20e263c: @ 20e263c :arm
	rsbs    r2, r2, #0x0
	mul     r4, r2, r4
	mov     r5, #0x0
	umlal   r5, r4, r2, r0
	rsc     r3, r3, #0x0
	mla     r4, r0, r3, r4
	cmp     r4, r12
	cmpeq   r5, lr
	ldmeqfd sp!, {r4-r6,lr}
	bxeq    lr

	adds    r5, r5, r2
	adc     r4, r4, r3
	cmp     r4, r12
	bmi     branch_20e26e0
	bne     branch_20e2684
	cmp     r5, lr
	beq     branch_20e26d0
	bcc     branch_20e26e0
branch_20e2684: @ 20e2684 :arm
	subs    r5, r5, r2
	sbc     r4, r4, r3
branch_20e268c: @ 20e268c :arm
	adds    r5, r5, r5
	adc     r4, r4, r4
	adds    r5, r5, r2
	adc     r4, r4, r3
	adds    lr, lr, lr
	adc     r12, r12, r12
	cmp     r4, r12
	bmi     branch_20e26d0
	ldmnefd sp!, {r4-r6,lr}
	bxne    lr

	cmp     r5, lr
	bcc     branch_20e26d0
	ldmnefd sp!, {r4-r6,lr}
	bxne    lr
	tst     r0, #0x1
	ldmeqfd sp!, {r4-r6,lr}
	bxeq    lr

branch_20e26d0: @ 20e26d0 :arm
	adds    r0, r0, #0x1
	adc     r1, r1, #0x0
	ldmfd   sp!, {r4-r6,lr}
	bx      lr

branch_20e26e0: @ 20e26e0 :arm
	adds    r0, r0, #0x1
	adc     r1, r1, #0x0
	b       branch_20e268c

branch_20e26ec: @ 20e26ec :arm
	rsbs    r2, r2, #0x0
	rsc     r3, r3, #0x0
	cmp     r1, r3
	cmpeq   r0, r2
	mov     r1, r12, lsl #31
	mov     r0, #0x0
	movne   r0, #0x1
	ldmfd   sp!, {r4-r6,lr}
	bx      lr

branch_20e2710: @ 20e2710 :arm
	mov     r1, r12, lsl #31
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,lr}
	bx      lr

branch_20e2720: @ 20e2720 :arm
	orrs    r5, r0, r1, lsl #1
	beq     branch_20e2844
	cmp     r12, lr
	beq     branch_20e2788
	movs    r1, r1, lsl #12
	beq     branch_20e2764
	clz     r5, r1
	movs    r1, r1, lsl r5
	sub     r12, r12, r5
	add     r5, r12, #0x1f
	mov     r1, r1, lsr #11
	orr     r1, r1, r0, lsr r5
	rsb     r5, r5, #0x20
	mov     r0, r0, lsl r5
	mov     r12, r12, lsl #1
	orr     r12, r12, r4, lsr #31
	b       branch_20e2398

branch_20e2764: @ 20e2764 :arm
	mvn     r12, #0x13
	clz     r5, r0
	movs    r0, r0, lsl r5
	sub     r12, r12, r5
	mov     r1, r0, lsr #11
	mov     r0, r0, lsl #21
	mov     r12, r12, lsl #1
	orr     r12, r12, r4, lsr #31
	b       branch_20e2398

branch_20e2788: @ 20e2788 :arm
	orrs    r5, r0, r1, lsl #12
	bne     branch_20e286c
	bic     r5, r3, #0x80000000
	cmp     r5, lr, lsl #19
	bcs     branch_20e27ac
	and     r5, r3, #0x80000000
	eor     r1, r5, r1
	ldmfd   sp!, {r4-r6,lr}
	bx      lr

branch_20e27ac: @ 20e27ac :arm
	orrs    r5, r2, r3, lsl #12
	bne     branch_20e288c
	b       branch_20e28a4

branch_20e27b8: @ 20e27b8 :arm
	orrs    r5, r2, r3, lsl #1
	beq     branch_20e2830
	cmp     r4, lr
	beq     branch_20e2818
	movs    r3, r3, lsl #12
	beq     branch_20e27f8
	clz     r5, r3
	movs    r3, r3, lsl r5
	sub     r4, r4, r5
	add     r5, r4, #0x1f
	mov     r3, r3, lsr #11
	orr     r3, r3, r2, lsr r5
	rsb     r5, r5, #0x20
	mov     r2, r2, lsl r5
	mov     r4, r4, lsl #1
	b       branch_20e23ac

branch_20e27f8: @ 20e27f8 :arm
	mvn     r4, #0x13
	clz     r5, r2
	movs    r2, r2, lsl r5
	sub     r4, r4, r5
	mov     r3, r2, lsr #11
	mov     r2, r2, lsl #21
	mov     r4, r4, lsl #1
	b       branch_20e23ac

branch_20e2818: @ 20e2818 :arm
	orrs    r5, r2, r3, lsl #12
	bne     branch_20e288c
	mov     r1, r12, lsl #31
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,lr}
	bx      lr

branch_20e2830: @ 20e2830 :arm
	mov     r1, r12, lsl #31
	orr     r1, r1, lr, lsl #19
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,lr}
	bx      lr

branch_20e2844: @ 20e2844 :arm
	orrs    r5, r2, r3, lsl #1
	beq     branch_20e28a4
	bic     r5, r3, #0x80000000
	cmp     r5, lr, lsl #19
	cmpeq   r2, #0x0
	bhi     branch_20e288c
	eor     r1, r1, r3
	and     r1, r1, #0x80000000
	ldmfd   sp!, {r4-r6,lr}
	bx      lr

branch_20e286c: @ 20e286c :arm
	tst     r1, #0x80000
	beq     branch_20e28a4
	bic     r5, r3, #0x80000000
	cmp     r5, lr, lsl #19
	cmpeq   r2, #0x0
	bhi     branch_20e288c
	ldmfd   sp!, {r4-r6,lr}
	bx      lr

branch_20e288c: @ 20e288c :arm
	tst     r3, #0x80000
	beq     branch_20e28a4
	mov     r1, r3
	mov     r0, r2
	ldmfd   sp!, {r4-r6,lr}
	bx      lr

branch_20e28a4: @ 20e28a4 :arm
	orr     r1, r1, #0x7f000000
	orr     r1, r1, #0xf80000
	ldmfd   sp!, {r4-r6,lr}
	bx      lr
@ 0x20e28b4

.word 0xffe @ 0x20e28b4
arm_func_end _ddiv
