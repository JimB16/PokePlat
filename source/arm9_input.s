
thumb_func_start InitInputVariables
InitInputVariables: @ 2017af4 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	ldr     r0, =RAM_21bf67c
	mov     r2, #0x0
	str     r2, [r0, #RAM_21bf67c_34]
	str     r2, [r0, #RAM_21bf67c_38_KeyOldPressed]
	str     r2, [r0, #RAM_21bf67c_3c_KeyNewPressed]
	str     r2, [r0, #RAM_21bf67c_40_KeyNewPressed]
	str     r2, [r0, #RAM_21bf67c_44_Key]
	str     r2, [r0, #RAM_21bf67c_48_KeyNewPressed2]
	str     r2, [r0, #RAM_21bf67c_4c]
	str     r2, [r0, #RAM_21bf67c_50_InputDelayCounter]
	mov     r1, #0x4
	str     r1, [r0, #RAM_21bf67c_54]
	mov     r1, #0x8
	str     r1, [r0, #RAM_21bf67c_58_InputDelay]

	ldr     r0, =RAM_21bf6bc
	strh    r2, [r0, #RAM_21bf6bc_1c]
	strh    r2, [r0, #RAM_21bf6bc_1e]
	strh    r2, [r0, #RAM_21bf6bc_20]
	strh    r2, [r0, #RAM_21bf6bc_22]

	ldr     r0, =RAM_21bf6dc
	strb    r2, [r0, #RAM_21bf6dc_4]
	blx     TP_Init
	add     r0, sp, #0x0
	blx     TP_GetUserInfo
	cmp     r0, #0x1
	add     r0, sp, #0x0
	bne     branch_2017b3a

	blx     TP_SetCalibrateParam
	add     sp, #0x8
	pop     {r3,pc}

branch_2017b3a: @ 2017b3a :thumb
	ldr     r1, =0x2ae
	strh    r1, [r0, #0x0]
	ldr     r1, =0x58c
	strh    r1, [r0, #0x2]
	ldr     r1, =0xe25
	strh    r1, [r0, #0x4]
	ldr     r1, =0x1208
	strh    r1, [r0, #0x6]
	add     r0, sp, #0x0
	blx     TP_SetCalibrateParam
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2017b54

.align 2
.pool
thumb_func_end InitInputVariables



.thumb
.globl Function_2017b70
Function_2017b70: @ 2017b70 :thumb
	ldr     r1, =RAM_21bf6dc
	strb    r0, [r1, #RAM_21bf6dc_6]
	bx      lr
@ 0x2017b76

.align 2
.pool



.thumb
.globl Function_2017b7c
Function_2017b7c: @ 2017b7c :thumb
	ldr     r1, =RAM_21bf6dc
	ldrb    r2, [r1, #RAM_21bf6dc_7]
	orr     r0, r2
	strb    r0, [r1, #RAM_21bf6dc_7]
	bx      lr
@ 0x2017b86

.align 2
.pool



.thumb
.globl Function_2017b8c
Function_2017b8c: @ 2017b8c :thumb
	ldr     r1, =RAM_21bf6dc
	mvn     r0, r0
	ldrb    r2, [r1, #RAM_21bf6dc_7]
	and     r0, r2
	strb    r0, [r1, #RAM_21bf6dc_7]
	bx      lr
@ 0x2017b98

.pool



thumb_func_start UpdateInput
UpdateInput: @ 2017b9c :thumb
	push    {r4,lr}
	add     sp, #-0x10

	ldr     r2, =RAM_27fffa8_Input
	mov     r0, #0x2
	ldrh    r1, [r2]
	lsl     r0, r0, #14
	and     r0, r1
	asr     r0, r0, #15
	beq     branch_2017bc2

	ldr     r0, =RAM_21bf67c
	mov     r1, #0x0
	str     r1, [r0, #RAM_21bf67c_48_KeyNewPressed2]
	str     r1, [r0, #RAM_21bf67c_44_Key]
	str     r1, [r0, #RAM_21bf67c_4c]

	ldr     r0, =RAM_21bf6bc
	add     sp, #0x10
	strh    r1, [r0, #RAM_21bf6bc_20]
	strh    r1, [r0, #RAM_21bf6bc_22]
	pop     {r4,pc}

branch_2017bc2: @ 2017bc2 :thumb
	ldr     r0, =REG_KEYINPUT
	ldrh    r1, [r0]    @ REG_KEYINPUT
	ldrh    r0, [r2]    @ RAM_27fffa8_Input
	orr     r1, r0
	ldr     r0, =0x2fff
	eor     r1, r0      @ 1=Pressed, 0=Released
	and     r0, r1

	ldr     r1, =RAM_21bf67c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	ldr     r2, [r1, #RAM_21bf67c_38_KeyOldPressed]
	mov     r3, r0
	eor     r3, r2
	and     r3, r0
	str     r3, [r1, #RAM_21bf67c_3c_KeyNewPressed]
	str     r3, [r1, #RAM_21bf67c_40_KeyNewPressed]

	cmp     r0, #0x0
	beq     branch_2017bfa_NoButtonPressed
	cmp     r2, r0
	bne     branch_2017bfa_NoButtonPressed

	ldr     r2, [r1, #RAM_21bf67c_50_InputDelayCounter]
	.hword  0x1e52 @ sub r2, r2, #0x1
	str     r2, [r1, #RAM_21bf67c_50_InputDelayCounter]
	bne     branch_2017c00

	str     r0, [r1, #RAM_21bf67c_40_KeyNewPressed]
	ldr     r2, [r1, #RAM_21bf67c_54]
	str     r2, [r1, #RAM_21bf67c_50_InputDelayCounter]
	b       branch_2017c00

@ Reset Input Timer
branch_2017bfa_NoButtonPressed: @ 2017bfa :thumb
	ldr     r1, =RAM_21bf67c
	ldr     r2, [r1, #RAM_21bf67c_58_InputDelay]
	str     r2, [r1, #RAM_21bf67c_50_InputDelayCounter]

branch_2017c00: @ 2017c00 :thumb
	ldr     r1, =RAM_21bf67c
	str     r0, [r1, #RAM_21bf67c_38_KeyOldPressed]

	ldr     r2, [r1, #RAM_21bf67c_3c_KeyNewPressed]
	str     r2, [r1, #RAM_21bf67c_48_KeyNewPressed2]

	str     r0, [r1, #RAM_21bf67c_44_Key]

	ldr     r0, [r1, #RAM_21bf67c_40_KeyNewPressed]
	str     r0, [r1, #RAM_21bf67c_4c]
	bl      Function_2017ca0


	ldr     r0, =RAM_21bf6dc
	ldrb    r0, [r0, #RAM_21bf6dc_4]
	cmp     r0, #0x0
	bne     branch_2017c2c
	add     r4, sp, #0x8
branch_2017c1c: @ 2017c1c :thumb
	blx     TP_RequestSamplingAsync
	mov     r0, r4
	blx     TP_WaitRawResult
	cmp     r0, #0x0
	bne     branch_2017c1c
	b       branch_2017c32

branch_2017c2c: @ 2017c2c :thumb
	add     r0, sp, #0x8
	blx     TP_GetLatestRawPointInAuto
branch_2017c32: @ 2017c32 :thumb
	add     r0, sp, #0x0
	add     r1, sp, #0x8
	blx     TP_GetCalibratedPoint
	add     r1, sp, #0x0
	ldrh    r3, [r1, #0x6]
	cmp     r3, #0x0
	bne     branch_2017c4e
	ldrh    r2, [r1, #0x0]
	ldr     r0, =RAM_21bf6bc
	strh    r2, [r0, #RAM_21bf6bc_1c]
	ldrh    r1, [r1, #0x2]
	strh    r1, [r0, #RAM_21bf6bc_1e]
	b       branch_2017c72

branch_2017c4e: @ 2017c4e :thumb
	ldr     r0, =RAM_21bf6bc
	ldrh    r2, [r0, #RAM_21bf6bc_22]
	cmp     r2, #0x0
	beq     branch_2017c6e
	cmp     r3, #0x1
	beq     branch_2017c62
	cmp     r3, #0x2
	beq     branch_2017c68
	cmp     r3, #0x3
	b       branch_2017c72

branch_2017c62: @ 2017c62 :thumb
	ldrh    r1, [r1, #0x2]
	strh    r1, [r0, #RAM_21bf6bc_1e]
	b       branch_2017c72

branch_2017c68: @ 2017c68 :thumb
	ldrh    r1, [r1, #0x0]
	strh    r1, [r0, #RAM_21bf6bc_1c]
	b       branch_2017c72

branch_2017c6e: @ 2017c6e :thumb
	mov     r0, #0x0
	strh    r0, [r1, #0x4]
branch_2017c72: @ 2017c72 :thumb
	add     r0, sp, #0x0
	ldrh    r2, [r0, #0x4]
	ldr     r0, =RAM_21bf6bc
	ldrh    r1, [r0, #RAM_21bf6bc_22]
	eor     r1, r2
	and     r1, r2
	strh    r1, [r0, #RAM_21bf6bc_20]
	strh    r2, [r0, #RAM_21bf6bc_22]

	add     sp, #0x10
	pop     {r4,pc}
@ 0x2017c86

.align 2
.pool
thumb_func_end UpdateInput



.thumb
Function_2017ca0: @ 2017ca0 :thumb
	ldr     r0, =RAM_21bf67c
	ldr     r1, [r0, #RAM_21bf67c_34]
	cmp     r1, #0x3
	bls     branch_2017caa
	b       branch_2017dc4

branch_2017caa: @ 2017caa :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2017cb6

Jumppoints_2017cb6:
.hword branch_2017dc4 - Jumppoints_2017cb6 - 2
.hword branch_2017cbe - Jumppoints_2017cb6 - 2
.hword branch_2017cf4 - Jumppoints_2017cb6 - 2
.hword branch_2017d7a - Jumppoints_2017cb6 - 2

.thumb
branch_2017cbe: @ 2017cbe :thumb
	ldr     r2, [r0, #RAM_21bf67c_48_KeyNewPressed2]
	mov     r1, #0x8
	mov     r3, r2
	tst     r3, r1
	beq     branch_2017cce
	lsl     r1, r1, #7
	orr     r1, r2
	str     r1, [r0, #RAM_21bf67c_48_KeyNewPressed2]
branch_2017cce: @ 2017cce :thumb

	ldr     r1, =RAM_21bf67c
	mov     r0, #0x8
	ldr     r2, [r1, #RAM_21bf67c_44_Key]
	mov     r3, r2
	tst     r3, r0
	beq     branch_2017ce0
	lsl     r0, r0, #7
	orr     r0, r2
	str     r0, [r1, #RAM_21bf67c_44_Key]
branch_2017ce0: @ 2017ce0 :thumb

	ldr     r1, =RAM_21bf67c
	mov     r0, #0x8
	ldr     r2, [r1, #RAM_21bf67c_4c]
	mov     r3, r2
	tst     r3, r0
	beq     branch_2017dc4

	lsl     r0, r0, #7
	orr     r0, r2
	str     r0, [r1, #RAM_21bf67c_4c]
	bx      lr

branch_2017cf4: @ 2017cf4 :thumb
	ldr     r3, [r0, #RAM_21bf67c_48_KeyNewPressed2]
	mov     r0, #0x1
	lsl     r0, r0, #10
	mov     r2, r3
	mov     r1, #0x0
	tst     r2, r0
	beq     branch_2017d06
	lsl     r0, r0, #1
	orr     r1, r0
branch_2017d06: @ 2017d06 :thumb

	mov     r0, #0x2
	lsl     r0, r0, #10
	mov     r2, r3
	tst     r2, r0
	beq     branch_2017d14
	lsr     r0, r0, #1
	orr     r1, r0
branch_2017d14: @ 2017d14 :thumb

	ldr     r2, =RAM_21bf67c
	ldr     r0, =0xf3ff
	ldr     r3, [r2, #RAM_21bf67c_48_KeyNewPressed2]
	and     r0, r3
	orr     r0, r1
	str     r0, [r2, #RAM_21bf67c_48_KeyNewPressed2]
	ldr     r3, [r2, #RAM_21bf67c_44_Key]
	mov     r1, #0x1
	lsl     r1, r1, #10
	mov     r2, r3
	mov     r0, #0x0
	tst     r2, r1
	beq     branch_2017d32
	lsl     r1, r1, #1
	orr     r0, r1
branch_2017d32: @ 2017d32 :thumb

	mov     r1, #0x2
	lsl     r1, r1, #10
	mov     r2, r3
	tst     r2, r1
	beq     branch_2017d40
	lsr     r1, r1, #1
	orr     r0, r1
branch_2017d40: @ 2017d40 :thumb

	ldr     r2, =RAM_21bf67c
	ldr     r1, =0xf3ff
	ldr     r3, [r2, #RAM_21bf67c_44_Key]
	and     r1, r3
	orr     r0, r1
	str     r0, [r2, #RAM_21bf67c_44_Key]
	ldr     r3, [r2, #RAM_21bf67c_4c]
	mov     r1, #0x1
	lsl     r1, r1, #10
	mov     r2, r3
	mov     r0, #0x0
	tst     r2, r1
	beq     branch_2017d5e
	lsl     r1, r1, #1
	orr     r0, r1
branch_2017d5e: @ 2017d5e :thumb

	mov     r1, #0x2
	lsl     r1, r1, #10
	mov     r2, r3
	tst     r2, r1
	beq     branch_2017d6c
	lsr     r1, r1, #1
	orr     r0, r1
branch_2017d6c: @ 2017d6c :thumb

	ldr     r2, =RAM_21bf67c
	ldr     r1, =0xf3ff
	ldr     r3, [r2, #RAM_21bf67c_4c]
	and     r1, r3
	orr     r0, r1
	str     r0, [r2, #RAM_21bf67c_4c]
	bx      lr

branch_2017d7a: @ 2017d7a :thumb
	mov     r1, #0x2
	ldr     r2, [r0, #RAM_21bf67c_48_KeyNewPressed2]
	lsl     r1, r1, #8
	tst     r1, r2
	beq     branch_2017d8a
	mov     r1, #0x1
	orr     r1, r2
	str     r1, [r0, #RAM_21bf67c_48_KeyNewPressed2]
branch_2017d8a: @ 2017d8a :thumb

	ldr     r1, =RAM_21bf67c
	mov     r0, #0x2
	ldr     r2, [r1, #RAM_21bf67c_44_Key]
	lsl     r0, r0, #8
	tst     r0, r2
	beq     branch_2017d9c
	mov     r0, #0x1
	orr     r0, r2
	str     r0, [r1, #RAM_21bf67c_44_Key]
branch_2017d9c: @ 2017d9c :thumb

	ldr     r1, =RAM_21bf67c
	mov     r0, #0x2
	ldr     r2, [r1, #RAM_21bf67c_4c]
	lsl     r0, r0, #8
	tst     r0, r2
	beq     branch_2017dae
	mov     r0, #0x1
	orr     r0, r2
	str     r0, [r1, #RAM_21bf67c_4c]
branch_2017dae: @ 2017dae :thumb

	ldr     r1, =RAM_21bf67c
	ldr     r0, =0xfcff
	ldr     r2, [r1, #RAM_21bf67c_48_KeyNewPressed2]
	and     r2, r0
	str     r2, [r1, #RAM_21bf67c_48_KeyNewPressed2]
	ldr     r2, [r1, #RAM_21bf67c_44_Key]
	and     r2, r0
	str     r2, [r1, #RAM_21bf67c_44_Key]
	ldr     r2, [r1, #RAM_21bf67c_4c]
	and     r0, r2
	str     r0, [r1, #RAM_21bf67c_4c]
branch_2017dc4: @ 2017dc4 :thumb
	bx      lr
@ 0x2017dc6

.align 2
.pool



.thumb
.globl Function_2017dd4
Function_2017dd4: @ 2017dd4 :thumb
	ldr     r2, =RAM_21bf67c
	str     r0, [r2, #RAM_21bf67c_54]
	str     r1, [r2, #RAM_21bf67c_58_InputDelay]
	bx      lr
@ 0x2017ddc

.pool
