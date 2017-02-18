
/* Input:
r0: GraphicData
*/
.thumb
Function_2001f5c: @ 2001f5c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0

	ldrb    r0, [r5, #GraphicData_8]
	mov     r1, #0x6
	bl      Function_2002df8_GetLineHeight
	mov     r1, r0
	ldr     r0, [r5, #GraphicData_4]
	bl      Function_201ada4_ClearTextBox

	ldrb    r0, [r5, #GraphicData_19]
	ldrb    r1, [r5, #GraphicData_16]
	ldrb    r7, [r5, #GraphicData_17]
	lsl     r0, r0, #1
	add     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	ldrb    r0, [r5, #GraphicData_9]
	mov     r6, #0x0
	cmp     r0, #0x0
	bls     branch_2001fe4

branch_2001f8a: @ 2001f8a :thumb
	ldrb    r2, [r5, #GraphicData_a]
	mov     r4, #0x0
	cmp     r2, #0x0
	bls     branch_2001fd0

branch_2001f92: @ 2001f92 :thumb
	ldrb    r3, [r5, #GraphicData_b]
	mul     r2, r6
	ldrb    r0, [r5, #GraphicData_1a]
	lsl     r3, r3, #28
	lsr     r3, r3, #28
	add     r0, r0, r3
	ldrb    r1, [r5, #GraphicData_18]
	mul     r0, r4
	add     r2, r4, r2
	add     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]          @ TextInterpreter_dPosY
	mov     r0, #0xff
	str     r0, [sp, #0x4]          @ TextInterpreter_17
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r3, [r5, #GraphicData_0]
	lsl     r2, r2, #3
	ldr     r2, [r3, r2]                    @ TextInterpreter_Pointer
	ldrb    r1, [r5, #GraphicData_8]        @ TextInterpreter_9
	ldr     r0, [r5, #GraphicData_4]        @ TextInterpreter_4
	mov     r3, r7                          @ TextInterpreter_dPosX
	bl      Function_201d738_CallInitTextInterpreter

	add     r0, r4, #0x1
	lsl     r0, r0, #24
	ldrb    r2, [r5, #GraphicData_a]
	lsr     r4, r0, #24
	cmp     r4, r2
	blo     branch_2001f92

branch_2001fd0: @ 2001fd0 :thumb
	ldr     r0, [sp, #0xc]
	add     r0, r7, r0
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	add     r0, r6, #0x1
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	ldrb    r0, [r5, #GraphicData_9]
	cmp     r6, r0
	blo     branch_2001f8a

branch_2001fe4: @ 2001fe4 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2001fe8


.thumb
Function_2001fe8: @ 2001fe8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldrb    r1, [r4, #0xb]
	lsl     r1, r1, #26
	lsr     r1, r1, #30
	cmp     r1, #0x1
	beq     branch_2002012

	ldrb    r3, [r4, #0x15]
	add     r1, sp, #0x0
	add     r1, #0x1
	add     r2, sp, #0x0
	bl      Function_2002018
	add     r3, sp, #0x0
	ldrb    r2, [r3, #0x1]
	ldrb    r3, [r3, #0x0]
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x4]
	bl      Function_2014a58

branch_2002012: @ 2002012 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2002016


.align 2, 0
.thumb
Function_2002018: @ 2002018 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r7, r3
	ldrb    r1, [r5, #0xa]
	mov     r0, r7
	mov     r6, r2
	blx     _s32_div_f
	ldrb    r2, [r5, #0x19]
	ldrb    r1, [r5, #0x16]
	lsl     r2, r2, #1
	add     r1, r1, r2
	mul     r1, r0
	strb    r1, [r4, #0x0]
	ldrb    r1, [r5, #0xa]
	mov     r0, r7
	blx     _s32_div_f
	ldrb    r2, [r5, #0xb]
	ldrb    r3, [r5, #0x1a]
	ldrb    r0, [r5, #0x18]
	lsl     r2, r2, #28
	lsr     r2, r2, #28
	add     r2, r3, r2
	mul     r2, r1
	add     r0, r0, r2
	strb    r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x2002052


.align 2, 0
.thumb
.globl Function_2002054
Function_2002054: @ 2002054 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	ldr     r5, [sp, #0x3c]
	str     r2, [sp, #0xc]
	mov     r7, r0
	str     r1, [sp, #0x8]
	str     r3, [sp, #0x10]

	ldr     r2, =PlMsg_Narc_361
	mov     r0, #0x1
	mov     r1, #PlMsg_Narc
	mov     r3, r5
	bl      LoadFromNARC_9
	mov     r4, r0

	mov     r0, #0x2
	mov     r1, r5
	bl      Function_2013a04

	mov     r1, r4
	mov     r2, #0x29
	mov     r3, #0x0
	mov     r6, r0
	bl      Function_2013a4c

	mov     r3, #0x2a
	mov     r2, r3
	mov     r0, r6
	mov     r1, r4
	sub     r3, #0x2c
	bl      Function_2013a4c

	mov     r0, r4
	bl      Function_200b190

	mov     r0, r5
	mov     r1, #0x1
	str     r6, [sp, #0x14]
	bl      Function_201a778
	mov     r1, r0
	str     r1, [sp, #0x18]

	mov     r0, #0x0
	add     r2, sp, #0x14
	strb    r0, [r2, #0x8]
	mov     r0, #0x1
	strb    r0, [r2, #0x9]
	mov     r0, #0x2
	strb    r0, [r2, #0xa]
	ldrb    r3, [r2, #0xb]
	mov     r0, #0xf
	bic     r3, r0
	strb    r3, [r2, #0xb]
	ldrb    r3, [r2, #0xb]
	mov     r0, #0x30
	bic     r3, r0
	strb    r3, [r2, #0xb]
	ldrb    r3, [r2, #0xb]
	mov     r0, #0xc0
	bic     r3, r0
	strb    r3, [r2, #0xb]
	ldr     r2, [sp, #0x8]
	mov     r0, r7
	bl      Function_201a8d4

	ldr     r0, [sp, #0x18]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	mov     r1, #0x1
	bl      Function_200dc48

	lsl     r0, r5, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	add     r3, sp, #0x28
	ldrb    r3, [r3, #0x10]
	add     r0, sp, #0x14
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_2001b7c

	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x20020fc

.align 2
.pool



.thumb
.globl Function_2002100
Function_2002100: @ 2002100 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, #0x0
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x4]
	bl      Function_2002054
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2002114


.thumb
.globl Function_2002114
Function_2002114: @ 2002114 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2001be0
	mov     r6, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_2002130
	mov     r0, r5
	mov     r1, r4
	bl      Function_2002154
branch_2002130: @ 2002130 :thumb
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x2002134


.thumb
.globl Function_2002134
Function_2002134: @ 2002134 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r2
	bl      Function_2001d44
	mov     r6, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_2002150
	mov     r0, r5
	mov     r1, r4
	bl      Function_2002154
branch_2002150: @ 2002150 :thumb
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x2002154


.thumb
.globl Function_2002154
Function_2002154: @ 2002154 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	mov     r4, r1
	mov     r1, #0x0
	bl      Function_200dc9c
	ldr     r0, [r5, #0x4]
	bl      Function_201a8fc
	ldr     r1, [r5, #0x4]
	mov     r0, r4
	bl      Function_2018238
	ldr     r0, [r5, #0x0]
	bl      Function_2013a3c
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2001bc4
	pop     {r3-r5,pc}
@ 0x2002180


.thumb
.globl Function_2002180
Function_2002180: @ 2002180 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r4, #0x8
	lsl     r1, r1, #16
	str     r4, [sp, #0x0]
	mov     r3, #0x10
	str     r3, [sp, #0x4]
	lsr     r1, r1, #16
	str     r1, [sp, #0x8]
	lsl     r1, r2, #16
	lsr     r1, r1, #16
	str     r1, [sp, #0xc]
	str     r4, [sp, #0x10]
	ldr     r1, =Unknown_20e4c48
	mov     r2, #0x0
	str     r3, [sp, #0x14]
	mov     r3, r2
	bl      Function_201addc
	add     sp, #0x18
	pop     {r4,pc}
@ 0x20021aa

.align 2
.pool



.thumb
.globl Function_20021b0
Function_20021b0: @ 20021b0 :thumb
	ldrh    r3, [r1, #0x0]
	ldr     r2, =0xffff
	cmp     r3, r2
	beq     branch_20021c4

branch_20021b8: @ 20021b8 :thumb
	.hword  0x1c89 @ add r1, r1, #0x2
	strh    r3, [r0, #0x0]
	ldrh    r3, [r1, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r3, r2
	bne     branch_20021b8

branch_20021c4: @ 20021c4 :thumb
	ldr     r1, =0xffff
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x20021ca

.align 2
.pool



.thumb
.globl Function_20021d0
Function_20021d0: @ 20021d0 :thumb
	push    {r4,r5}
	mov     r4, #0x0
	cmp     r2, #0x0
	bls     branch_20021e8

	mov     r5, r0
branch_20021da: @ 20021da :thumb
	ldrh    r3, [r1, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	strh    r3, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, r2
	blo     branch_20021da

branch_20021e8: @ 20021e8 :thumb
	lsl     r1, r2, #1
	add     r0, r0, r1
	pop     {r4,r5}
	bx      lr
@ 0x20021f0


.thumb
Function_20021f0: @ 20021f0 :thumb
	ldrh    r2, [r0, #0x0]
	ldr     r1, =0xffff
	mov     r3, #0x0
	cmp     r2, r1
	beq     branch_2002204

branch_20021fa: @ 20021fa :thumb
	.hword  0x1c80 @ add r0, r0, #0x2
	ldrh    r2, [r0, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, r1
	bne     branch_20021fa

branch_2002204: @ 2002204 :thumb
	mov     r0, r3
	bx      lr
@ 0x2002208

.align 2
.pool



.thumb
Function_200220c: @ 200220c :thumb
	push    {r3,r4}
	ldrh    r4, [r0, #0x0]
	ldrh    r2, [r1, #0x0]
	cmp     r4, r2
	bne     branch_200222e

	ldr     r2, =0xffff
branch_2002218: @ 2002218 :thumb
	cmp     r4, r2
	bne     branch_2002222

	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr

branch_2002222: @ 2002222 :thumb
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1c89 @ add r1, r1, #0x2
	ldrh    r4, [r0, #0x0]
	ldrh    r3, [r1, #0x0]
	cmp     r4, r3
	beq     branch_2002218
branch_200222e: @ 200222e :thumb
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x2002234

.align 2
.pool



.thumb
.globl Function_2002238
Function_2002238: @ 2002238 :thumb
	push    {r3-r6}
	ldrh    r6, [r1, #0x0]
	ldrh    r5, [r0, #0x0]
	cmp     r5, r6
	bne     branch_200226c

	ldr     r3, =0xffff
	mov     r4, r3
branch_2002246: @ 2002246 :thumb
	cmp     r2, #0x0
	bne     branch_2002250

	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr

branch_2002250: @ 2002250 :thumb
	cmp     r5, r4
	bne     branch_200225e

	cmp     r6, r3
	bne     branch_200225e

	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr

branch_200225e: @ 200225e :thumb
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1c89 @ add r1, r1, #0x2
	ldrh    r6, [r1, #0x0]
	ldrh    r5, [r0, #0x0]
	.hword  0x1e52 @ sub r2, r2, #0x1
	cmp     r5, r6
	beq     branch_2002246

branch_200226c: @ 200226c :thumb
	mov     r0, #0x1
	pop     {r3-r6}
	bx      lr
@ 0x2002272

.align 2
.pool



.thumb
Function_2002278: @ 2002278 :thumb
	push    {r3,r4}
	mov     r3, #0x0
	cmp     r2, #0x0
	bls     branch_200228c
	mov     r4, r0
branch_2002282: @ 2002282 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	strh    r1, [r4, #0x0]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r3, r2
	blo     branch_2002282
branch_200228c: @ 200228c :thumb
	lsl     r1, r3, #1
	add     r0, r0, r1
	pop     {r3,r4}
	bx      lr
@ 0x2002294


.thumb
Function_2002294: @ 2002294 :thumb
	ldr     r3, [pc, #0x4] @ 0x200229c, (=Function_2002278+1)
	mov     r2, r1
	ldr     r1, [pc, #0x4] @ 0x20022a0, (=0xffff)
	bx      r3
@ 0x200229c

.word Function_2002278+1 @ 0x200229c
.word 0xffff @ 0x20022a0



.thumb
Function_20022a4: @ 20022a4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	ldr     r0, [pc, #0x70] @ 0x200231c, (=Unknown_20e4ca4)
	lsl     r1, r3, #2
	ldr     r4, [r0, r1]
	mov     r6, r2
	cmp     r4, #0x0
	beq     branch_2002314
branch_20022b6: @ 20022b6 :thumb
	mov     r0, r7
	mov     r1, r4
	blx     _u32_div_f
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r0, r4
	mul     r0, r1
	sub     r7, r7, r0
	cmp     r6, #0x2
	bne     branch_20022e0
	cmp     r1, #0xa
	blo     branch_20022d4
	mov     r0, #0xe2
	b       branch_20022da

branch_20022d4: @ 20022d4 :thumb
	ldr     r0, [pc, #0x48] @ 0x2002320, (=Unknown_20e4c88)
	lsl     r1, r1, #1
	ldrh    r0, [r0, r1]
branch_20022da: @ 20022da :thumb
	strh    r0, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
	b       branch_2002308

branch_20022e0: @ 20022e0 :thumb
	cmp     r1, #0x0
	bne     branch_20022e8
	cmp     r4, #0x1
	bne     branch_20022fe
branch_20022e8: @ 20022e8 :thumb
	mov     r6, #0x2
	cmp     r1, #0xa
	blo     branch_20022f2
	mov     r0, #0xe2
	b       branch_20022f8

branch_20022f2: @ 20022f2 :thumb
	ldr     r0, [pc, #0x2c] @ 0x2002320, (=Unknown_20e4c88)
	lsl     r1, r1, #1
	ldrh    r0, [r0, r1]
branch_20022f8: @ 20022f8 :thumb
	strh    r0, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
	b       branch_2002308

branch_20022fe: @ 20022fe :thumb
	cmp     r6, #0x1
	bne     branch_2002308
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2

branch_2002308: @ 2002308 :thumb
	mov     r0, r4
	mov     r1, #10
	blx     _u32_div_f
	mov     r4, r0
	bne     branch_20022b6
branch_2002314: @ 2002314 :thumb
	ldr     r0, [pc, #0xc] @ 0x2002324, (=0xffff)
	strh    r0, [r5, #0x0]
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x200231c

.word Unknown_20e4ca4 @ 0x200231c
.word Unknown_20e4c88 @ 0x2002320
.word 0xffff @ 0x2002324



/* Input:
r0: Ptr to TextInterpreter

Return:
r0: TextInterpreterReturn
*/
thumb_func_start TextInterpreter
TextInterpreter: @ 2002328 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r0

	mov     r1, r4
	add     r1, #TextInterpreter_28_StateNr
	ldrb    r1, [r1] @ TextInterpreter_28_StateNr

	mov     r6, r4
	add     r6, #TextInterpreter_20
	cmp     r1, #0x6
	bls     branch_200233e
	b       branch_20027a0

branch_200233e: @ 200233e :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x200234a

Jumppoints_200234a:
.hword branch_2002358 - Jumppoints_200234a - 2 @ 0x0 TextInterpreter_28_StateNr_0
.hword branch_20026aa - Jumppoints_200234a - 2 @ 0x1 TextInterpreter_28_StateNr_1
.hword branch_20026c4_endOfParagraph - Jumppoints_200234a - 2 @ 0x2 TextInterpreter_28_StateNr_EndOfParagraph
.hword branch_20026ee_newLineScroll - Jumppoints_200234a - 2 @ 0x3 TextInterpreter_28_StateNr_NewLineScroll
.hword branch_200271e - Jumppoints_200234a - 2 @ 0x4 TextInterpreter_28_StateNr_4
.hword branch_2002774 - Jumppoints_200234a - 2 @ 0x5 TextInterpreter_28_StateNr_5
.hword branch_2002780 - Jumppoints_200234a - 2 @ 0x6 TextInterpreter_28_StateNr_6

branch_2002358: @ 2002358 :thumb
    @ activate fast text (button has to be pressed and hold here)
	ldr     r0, =RAM_21bf67c
	ldr     r1, [r0, #RAM_21bf67c_44_Key]
	mov     r0, #KEY_A|KEY_B
	tst     r0, r1
	beq     branch_200236a

	ldrb    r0, [r6, #TextInterpreter_20_0]
	lsl     r0, r0, #27             @ check for TextInterpreter_20_0_10_activateFastText
	lsr     r0, r0, #31
	bne     branch_200237c_execFastText

branch_200236a: @ 200236a :thumb
	ldr     r0, =RAM_21bf6bc
	ldrh    r0, [r0, #RAM_21bf6bc_22]
	cmp     r0, #0x0
	beq     branch_200239a

	ldr     r0, =RAM_2101d44
	ldrb    r0, [r0, #RAM_2101d44_0]
	lsl     r0, r0, #27             @ RAM_2101d44_0_10
	lsr     r0, r0, #31
	beq     branch_200239a

branch_200237c_execFastText: @ 200237c :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #TextInterpreter_2a
	strb    r1, [r0] @ TextInterpreter_2a

	mov     r0, r4
	add     r0, #TextInterpreter_29
	ldrb    r0, [r0] @ TextInterpreter_29
	lsl     r0, r0, #25                 @ TextInterpreter_29_7f
	lsr     r0, r0, #25
	beq     branch_200239a

	ldr     r1, =RAM_2101d44
	mov     r0, #RAM_2101d44_0_40
	ldrb    r2, [r1, #RAM_2101d44_0]
	orr     r0, r2
	strb    r0, [r1, #RAM_2101d44_0]

branch_200239a: @ 200239a :thumb
	mov     r0, r4
	add     r0, #TextInterpreter_2a
	ldrb    r0, [r0] @ TextInterpreter_2a
	cmp     r0, #0x0
	beq     branch_20023f4

	mov     r0, r4
	add     r0, #TextInterpreter_29
	ldrb    r0, [r0] @ TextInterpreter_29
	lsl     r0, r0, #25         @ TextInterpreter_29_7f
	lsr     r0, r0, #25
	beq     branch_20023f4

	mov     r0, r4
	add     r0, #TextInterpreter_2a
	ldrb    r0, [r0] @ TextInterpreter_2a
	sub     r1, r0, #0x1
	mov     r0, r4
	add     r0, #TextInterpreter_2a
	strb    r1, [r0] @ TextInterpreter_2a

	ldr     r0, =RAM_2101d44
	ldrb    r0, [r0, #RAM_2101d44_0]
	lsl     r1, r0, #31             @ RAM_2101d44_0_1
	lsr     r1, r1, #31
	beq     branch_20023ee

    @ activate fast text (button has to be pressed and hold after that)
	ldr     r1, =RAM_21bf67c
	ldr     r2, [r1, #RAM_21bf67c_48_KeyNewPressed2]
	mov     r1, #KEY_A|KEY_B
	tst     r1, r2
	bne     branch_20023e0_activateFastText

	ldr     r1, =RAM_21bf6bc
	ldrh    r1, [r1, #RAM_21bf6bc_20]
	cmp     r1, #0x0
	beq     branch_20023ee

	lsl     r0, r0, #27
	lsr     r0, r0, #31
	beq     branch_20023ee

branch_20023e0_activateFastText: @ 20023e0 :thumb
	ldrb    r1, [r6, #TextInterpreter_20_0]
	mov     r0, #TextInterpreter_20_0_10_activateFastText
	add     r4, #TextInterpreter_2a
	orr     r0, r1
	strb    r0, [r6, #TextInterpreter_20_0]

	mov     r0, #0x0
	strb    r0, [r4] @ TextInterpreter_2a

branch_20023ee: @ 20023ee :thumb
	add     sp, #0xc
	mov     r0, #0x3
	pop     {r3-r6,pc}


branch_20023f4: @ 20023f4 :thumb
	mov     r0, r4
	add     r0, #TextInterpreter_29
	ldrb    r0, [r0] @ TextInterpreter_29
	lsl     r0, r0, #25         @ TextInterpreter_29_7f
	lsr     r1, r0, #25
	mov     r0, r4
	add     r0, #TextInterpreter_2a
	strb    r1, [r0] @ TextInterpreter_2a

	ldr     r0, [r4, #TextInterpreter_Pointer]
	ldrh    r5, [r0]                        @ load current letter
	.hword  0x1c80 @ add r0, r0, #0x2       @ set counter to next letter
	str     r0, [r4, #TextInterpreter_Pointer]

	mov     r0, #0xf1
	lsl     r0, r0, #8
	cmp     r5, r0                          @ 0xf100
	bne     branch_2002418
	bl      ErrorHandling
branch_2002418: @ 2002418 :thumb

	ldr     r0, =0xf0fd
	cmp     r5, r0                          @ 0xf0fd
	bgt     branch_2002442
	bge     branch_2002476

	ldr     r1, =0x25bd
	cmp     r5, r1                          @ 0x25bd = "\\f"
	bgt     branch_2002438

	sub     r0, r1, #0x1
	cmp     r5, r0                          @ 0x25bc = "\\r" EndOfParagraph
	blt     call_interpret_looksLikeNormalCharacter
	bne     branch_2002430
	b       interpret_endOfParagraph

branch_2002430: @ 2002430 :thumb
	cmp     r5, r1                          @ 0x25bd = "\\f" NewLineScroll
	bne     call_interpret_looksLikeNormalCharacter
	b       interpret_newLineScroll

call_interpret_looksLikeNormalCharacter: @ 2002436 :thumb
	b       interpret_looksLikeNormalCharacter

branch_2002438: @ 2002438 :thumb
	mov     r0, #0xe
	lsl     r0, r0, #12
	cmp     r5, r0                          @ 0xe000 = "\\n" NewLine
	beq     interpret_newLine
	b       interpret_looksLikeNormalCharacter

branch_2002442: @ 2002442 :thumb
	ldr     r0, =TextInterpreter_ControlCommand     @ 0xfffe
	cmp     r5, r0
	bgt     branch_200244c
	beq     interpret_controlCommand
	b       interpret_looksLikeNormalCharacter

branch_200244c: @ 200244c :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0                          @ 0xffff TextInterpreter_EndOfString
	beq     interpret_endOfString
	b       interpret_looksLikeNormalCharacter

interpret_endOfString: @ 2002454 :thumb
	add     sp, #0xc
	mov     r0, #TextInterpreterReturn_EndOfString
	pop     {r3-r6,pc}


interpret_newLine: @ 200245a :thumb
	ldrb    r0, [r4, #TextInterpreter_StartPosX2]
	mov     r1, #0x1
	strh    r0, [r4, #TextInterpreter_dPosX]
	ldrb    r0, [r4, #TextInterpreter_9]
	bl      Function_2002df8_GetLineHeight

	ldrh    r1, [r4, #TextInterpreter_StartPosY]
	ldrh    r2, [r4, #TextInterpreter_dPosY]
	add     sp, #0xc
	add     r0, r1, r0
	add     r0, r2, r0
	strh    r0, [r4, #TextInterpreter_dPosY]

	mov     r0, #TextInterpreterReturn_2
	pop     {r3-r6,pc}


branch_2002476: @ 2002476 :thumb
	ldr     r0, [r4, #TextInterpreter_Pointer]
	add     sp, #0xc
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [r4, #TextInterpreter_Pointer]

	mov     r0, #TextInterpreterReturn_2
	pop     {r3-r6,pc}


interpret_controlCommand: @ 2002482 :thumb
	ldr     r0, [r4, #TextInterpreter_Pointer]
	.hword  0x1e80 @ sub r0, r0, #0x2
	str     r0, [r4, #TextInterpreter_Pointer]

	bl      Function_201d0f0_ReadControlCommandFirstParameter

	lsl     r0, r0, #16
	ldr     r1, =0xfe06
	lsr     r0, r0, #16
	cmp     r0, r1
	bgt     branch_20024ba
	blt     branch_200249a
	b       branch_20025e0

branch_200249a: @ 200249a :thumb r0<0xfe06
	mov     r1, #0x2
	lsl     r1, r1, #8
	sub     r1, r0, r1      @ r1=r0-0x200
	cmp     r1, #0x4
	bhi     branch_20024c4

	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1

Jumppoints_20024b0: @ 0x20024b0
.hword branch_200251c - Jumppoints_20024b0 - 2
.hword branch_2002546 - Jumppoints_20024b0 - 2
.hword branch_2002568 - Jumppoints_20024b0 - 2
.hword branch_2002580 - Jumppoints_20024b0 - 2
.hword branch_200258c - Jumppoints_20024b0 - 2

branch_20024ba: @ 20024ba :thumb
	mov     r1, #0xff
	lsl     r1, r1, #8
	cmp     r0, r1
	bgt     branch_20024c6
	beq     branch_20024ce
branch_20024c4: @ 20024c4 :thumb
	b       branch_2002632

branch_20024c6: @ 20024c6 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	beq     branch_2002598
	b       branch_2002632

branch_20024ce: @ 20024ce :thumb
	ldr     r0, [r4, #TextInterpreter_Pointer]
	mov     r1, #0x0
	bl      Function_201d134_ReadControlCommand
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, #0xff
	bne     branch_20024fe

	ldrb    r0, [r4, #TextInterpreter_15]
	ldrb    r2, [r4, #TextInterpreter_1b]
	sub     r1, r0, #0x1
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	add     r0, #0x64
	strb    r0, [r4, #TextInterpreter_1b]
	cmp     r2, #0x64
	blo     branch_20025ac

	cmp     r2, #0x6b
	bhs     branch_20025ac

	sub     r2, #0x64
	lsl     r0, r2, #16
	lsr     r0, r0, #16
	b       branch_2002506

branch_20024fe: @ 20024fe :thumb
	cmp     r0, #0x64
	blo     branch_2002506

	strb    r0, [r4, #TextInterpreter_1b]
	b       branch_2002632

branch_2002506: @ 2002506 :thumb
	lsl     r1, r0, #1
	add     r0, r1, #0x1
	strb    r0, [r4, #TextInterpreter_15]
	add     r0, r1, #0x2
	strb    r0, [r4, #TextInterpreter_17]
	ldrb    r0, [r4, #TextInterpreter_15]
	ldrb    r1, [r4, #TextInterpreter_16]
	ldrb    r2, [r4, #TextInterpreter_17]
	bl      Function_201d9fc
	b       branch_2002632

branch_200251c: @ 200251c :thumb
	ldr     r0, [r4, #TextInterpreter_Pointer]
	mov     r1, #0x0
	bl      Function_201d134_ReadControlCommand

	lsl     r0, r0, #16
	lsr     r3, r0, #16
	ldrh    r1, [r4, #TextInterpreter_dPosX]
	ldrh    r2, [r4, #TextInterpreter_dPosY]
	mov     r0, r4
	bl      Function_201db8c

	mov     r0, r4
	add     r0, #TextInterpreter_29
	ldrb    r0, [r0] @ TextInterpreter_29
	lsl     r0, r0, #24         @ TextInterpreter_29_80
	lsr     r0, r0, #31
	beq     branch_2002632

	ldr     r0, [r4, #TextInterpreter_4]
	bl      Function_201a954
	b       branch_2002632

branch_2002546: @ 2002546 :thumb
	ldr     r0, [r4, #TextInterpreter_Pointer]
	mov     r1, #0x0
	bl      Function_201d134_ReadControlCommand
	mov     r1, r4
	add     r1, #TextInterpreter_2a
	strb    r0, [r1] @ TextInterpreter_2a
	ldr     r0, [r4, #TextInterpreter_Pointer]
	bl      Function_201d0c8
	str     r0, [r4, #TextInterpreter_Pointer]

	mov     r0, #TextInterpreter_28_StateNr_6
	add     r4, #TextInterpreter_28_StateNr
	strb    r0, [r4] @ TextInterpreter_28_StateNr

	add     sp, #0xc
	mov     r0, #TextInterpreterReturn_3
	pop     {r3-r6,pc}


branch_2002568: @ 2002568 :thumb
	ldr     r0, [r4, #TextInterpreter_Pointer]
	mov     r1, #0x0
	bl      Function_201d134_ReadControlCommand
	strh    r0, [r4, #TextInterpreter_2e]
	ldr     r0, [r4, #TextInterpreter_Pointer]
	bl      Function_201d0c8
	str     r0, [r4, #TextInterpreter_Pointer]

	add     sp, #0xc
	mov     r0, #TextInterpreterReturn_3
	pop     {r3-r6,pc}


branch_2002580: @ 2002580 :thumb
	ldr     r0, [r4, #TextInterpreter_Pointer]
	mov     r1, #0x0
	bl      Function_201d134_ReadControlCommand
	strh    r0, [r4, #TextInterpreter_dPosX]
	b       branch_2002632

branch_200258c: @ 200258c :thumb
	ldr     r0, [r4, #TextInterpreter_Pointer]
	mov     r1, #0x0
	bl      Function_201d134_ReadControlCommand
	strh    r0, [r4, #TextInterpreter_dPosY]
	b       branch_2002632

branch_2002598: @ 2002598 :thumb
	ldr     r0, [r4, #TextInterpreter_Pointer]
	mov     r1, #0x0
	bl      Function_201d134_ReadControlCommand
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, #0x64
	beq     branch_20025ae

	cmp     r0, #0xc8
	beq     branch_20025b6

branch_20025ac: @ 20025ac :thumb
	b       branch_2002632

branch_20025ae: @ 20025ae :thumb
	mov     r0, #0x0
	strh    r0, [r4, #TextInterpreter_18]
	strb    r0, [r4, #TextInterpreter_1a]
	b       branch_2002632

branch_20025b6: @ 20025b6 :thumb
	ldr     r0, =0xfffc
	strh    r0, [r4, #TextInterpreter_18]
	mov     r0, #0x0
	strb    r0, [r4, #TextInterpreter_1a]
	b       branch_2002632
@ 0x20025c0

.pool

branch_20025e0: @ 20025e0 :thumb
	ldr     r0, [r4, #TextInterpreter_Pointer]
	mov     r1, #0x0
	bl      Function_201d134_ReadControlCommand
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r0, #0xfe
	lsl     r0, r0, #8
	cmp     r1, r0
	beq     branch_2002616

	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r1, r0
	bne     branch_2002632

	mov     r0, r4
	mov     r1, #TextInterpreter_28_StateNr_EndOfParagraph
	add     r0, #TextInterpreter_28_StateNr
	strb    r1, [r0] @ TextInterpreter_28_StateNr
	mov     r0, r4
	bl      Function_20027b4
	ldr     r0, [r4, #TextInterpreter_Pointer]
	bl      Function_201d0c8
	str     r0, [r4, #TextInterpreter_Pointer]

	add     sp, #0xc
	mov     r0, #TextInterpreterReturn_3
	pop     {r3-r6,pc}

branch_2002616: @ 2002616 :thumb
	mov     r0, r4
	mov     r1, #TextInterpreter_28_StateNr_NewLineScroll
	add     r0, #TextInterpreter_28_StateNr
	strb    r1, [r0] @ TextInterpreter_28_StateNr
	mov     r0, r4
	bl      Function_20027b4
	ldr     r0, [r4, #TextInterpreter_Pointer]
	bl      Function_201d0c8
	str     r0, [r4, #TextInterpreter_Pointer]

	add     sp, #0xc
	mov     r0, #TextInterpreterReturn_3
	pop     {r3-r6,pc}

branch_2002632: @ 2002632 :thumb
	ldr     r0, [r4, #TextInterpreter_Pointer]
	bl      Function_201d0c8
	str     r0, [r4, #TextInterpreter_Pointer]

	add     sp, #0xc
	mov     r0, #TextInterpreterReturn_2
	pop     {r3-r6,pc}


interpret_endOfParagraph: @ 2002640 :thumb
	mov     r0, r4
	mov     r1, #TextInterpreter_28_StateNr_EndOfParagraph
	add     r0, #TextInterpreter_28_StateNr
	strb    r1, [r0] @ TextInterpreter_28_StateNr

	mov     r0, r4
	bl      Function_20027b4

	add     sp, #0xc
	mov     r0, #TextInterpreterReturn_3
	pop     {r3-r6,pc}


interpret_newLineScroll: @ 2002654 :thumb
	mov     r0, r4
	mov     r1, #TextInterpreter_28_StateNr_NewLineScroll
	add     r0, #TextInterpreter_28_StateNr
	strb    r1, [r0] @ TextInterpreter_28_StateNr
	mov     r0, r4
	bl      Function_20027b4

	add     sp, #0xc
	mov     r0, #TextInterpreterReturn_3
	pop     {r3-r6,pc}


interpret_looksLikeNormalCharacter: @ 2002668 :thumb
	ldrb    r0, [r6, #TextInterpreter_20_0]
	mov     r1, r5
	lsl     r0, r0, #28         @ get TextInterpreter_20_0_f
	lsr     r0, r0, #28
	bl      Function_2002cfc
	mov     r5, r0

	ldrh    r0, [r4, #TextInterpreter_dPosX]
	mov     r2, r5
	mov     r3, r5
	str     r0, [sp, #0x0]
	ldrh    r0, [r4, #TextInterpreter_dPosY]
	add     r2, #0x80
	add     r3, #0x81
	str     r0, [sp, #0x4]
	ldrh    r0, [r4, #TextInterpreter_18]
	mov     r1, r5
	str     r0, [sp, #0x8]
	ldrb    r2, [r2, #0x0]
	ldrb    r3, [r3, #0x0]
	ldr     r0, [r4, #TextInterpreter_4]
	bl      Function_201aed0

	add     r5, #0x80
	ldrb    r1, [r5, #0x0]
	ldrh    r0, [r4, #TextInterpreter_StartPosX]
	ldrh    r2, [r4, #TextInterpreter_dPosX]
	add     sp, #0xc
	add     r0, r1, r0
	add     r0, r2, r0
	strh    r0, [r4, #TextInterpreter_dPosX]

	mov     r0, #TextInterpreterReturn_NormalCharacter
	pop     {r3-r6,pc}


branch_20026aa: @ 20026aa :thumb
	bl      Function_2002aa4_CallNewTextBoxAtButtonPress
	cmp     r0, #0x0
	beq     branch_20026be

	mov     r0, r4
	bl      Function_2002968

	mov     r0, #TextInterpreter_28_StateNr_0
	add     r4, #TextInterpreter_28_StateNr
	strb    r0, [r4] @ TextInterpreter_28_StateNr

branch_20026be: @ 20026be :thumb
	add     sp, #0xc
	mov     r0, #TextInterpreterReturn_3
	pop     {r3-r6,pc}


branch_20026c4_endOfParagraph: @ 20026c4 :thumb
	bl      Function_2002a80_CallNewTextBoxAtButtonPress
	cmp     r0, #0x0
	beq     branch_20026e8

	mov     r0, r4
	bl      Function_2002968

	ldrb    r1, [r4, #TextInterpreter_16]
	ldr     r0, [r4, #TextInterpreter_4]
	bl      Function_201ada4_ClearTextBox

	ldrb    r0, [r4, #TextInterpreter_StartPosX2]
	strh    r0, [r4, #TextInterpreter_dPosX]
	ldrb    r0, [r4, #TextInterpreter_StartPosY2]
	strh    r0, [r4, #TextInterpreter_dPosY]

	mov     r0, #TextInterpreter_28_StateNr_0
	add     r4, #TextInterpreter_28_StateNr
	strb    r0, [r4] @ TextInterpreter_28_StateNr

branch_20026e8: @ 20026e8 :thumb
	add     sp, #0xc
	mov     r0, #TextInterpreterReturn_3
	pop     {r3-r6,pc}


branch_20026ee_newLineScroll: @ 20026ee :thumb
	bl      Function_2002a80_CallNewTextBoxAtButtonPress
	cmp     r0, #0x0
	beq     branch_2002718

	mov     r0, r4
	bl      Function_2002968

	ldrb    r0, [r4, #TextInterpreter_9]
	mov     r1, #0x1
	bl      Function_2002df8_GetLineHeight
	ldrh    r1, [r4, #TextInterpreter_StartPosY]
	add     r1, r1, r0
	mov     r0, r4
	add     r0, #TextInterpreter_2b
	strb    r1, [r0]
	ldrb    r0, [r4, #TextInterpreter_StartPosX2]
	strh    r0, [r4, #TextInterpreter_dPosX]

	mov     r0, #TextInterpreter_28_StateNr_4
	add     r4, #TextInterpreter_28_StateNr
	strb    r0, [r4] @ TextInterpreter_28_StateNr

branch_2002718: @ 2002718 :thumb
	add     sp, #0xc
	mov     r0, #TextInterpreterReturn_3
	pop     {r3-r6,pc}


branch_200271e: @ 200271e :thumb
	add     r0, #TextInterpreter_2b
	ldrb    r2, [r0]
	cmp     r2, #0x0
	beq     branch_2002768

	cmp     r2, #0x4
	ldrb    r5, [r4, #TextInterpreter_16]
	bge     branch_2002740

	lsl     r3, r5, #4
	orr     r3, r5
	lsl     r3, r3, #24
	ldr     r0, [r4, #TextInterpreter_4]
	mov     r1, #0x0
	lsr     r3, r3, #24
	bl      Function_201c04c
	mov     r1, #0x0
	b       branch_200275a

branch_2002740: @ 2002740 :thumb
	lsl     r3, r5, #4
	orr     r3, r5
	lsl     r3, r3, #24
	ldr     r0, [r4, #TextInterpreter_4]
	mov     r1, #0x0
	mov     r2, #0x4
	lsr     r3, r3, #24
	bl      Function_201c04c

	mov     r0, r4
	add     r0, #TextInterpreter_2b
	ldrb    r0, [r0] @ TextInterpreter_2b
	sub     r1, r0, #0x4
branch_200275a: @ 200275a :thumb
	mov     r0, r4
	add     r0, #TextInterpreter_2b
	strb    r1, [r0, #0x0]
	ldr     r0, [r4, #TextInterpreter_4]
	bl      Function_201a954
	b       branch_200276e

branch_2002768: @ 2002768 :thumb
	mov     r0, #TextInterpreter_28_StateNr_0
	add     r4, #TextInterpreter_28_StateNr
	strb    r0, [r4] @ TextInterpreter_28_StateNr

branch_200276e: @ 200276e :thumb
	add     sp, #0xc
	mov     r0, #TextInterpreterReturn_3
	pop     {r3-r6,pc}


branch_2002774: @ 2002774 :thumb
	mov     r0, #TextInterpreter_28_StateNr_0
	add     r4, #TextInterpreter_28_StateNr
	strb    r0, [r4] @ TextInterpreter_28_StateNr

	add     sp, #0xc
	mov     r0, #TextInterpreterReturn_3
	pop     {r3-r6,pc}


branch_2002780: @ 2002780 :thumb
	add     r0, #TextInterpreter_2a
	ldrb    r0, [r0] @ TextInterpreter_2a
	cmp     r0, #0x0
	beq     branch_2002794

	mov     r0, r4
	add     r0, #TextInterpreter_2a
	ldrb    r0, [r0] @ TextInterpreter_2a
	add     r4, #TextInterpreter_2a
	.hword  0x1e40 @ sub r0, r0, #0x1
	b       branch_2002798

branch_2002794: @ 2002794 :thumb
	mov     r0, #TextInterpreter_28_StateNr_0
	add     r4, #TextInterpreter_28_StateNr
branch_2002798: @ 2002798 :thumb
	add     sp, #0xc
	strb    r0, [r4] @ TextInterpreter_28_StateNr

	mov     r0, #TextInterpreterReturn_3
	pop     {r3-r6,pc}


branch_20027a0: @ 20027a0 :thumb
	mov     r0, #TextInterpreterReturn_EndOfString
	add     sp, #0xc
	pop     {r3-r6,pc}
thumb_func_end TextInterpreter


.align 2, 0
.thumb
.globl Function_20027a8
Function_20027a8: @ 20027a8 :thumb
	ldr     r1, =RAM_2101d44
	strh    r0, [r1, #RAM_2101d44_2]
	bx      lr
@ 0x20027ae

.align 2
.pool



/* Input:
r0: TextInterpreter
*/
.thumb
Function_20027b4: @ 20027b4 :thumb
	ldr     r1, =RAM_2101d44
	add     r0, #TextInterpreter_20
	ldrb    r1, [r1, #RAM_2101d44_0]
	lsl     r1, r1, #29             @ RAM_2101d44_0_4
	lsr     r1, r1, #31
	beq     branch_20027ca

	ldrb    r2, [r0, #TextInterpreter_20_2]
	mov     r1, #TextInterpreter_20_2_ff
	bic     r2, r1
	strb    r2, [r0, #TextInterpreter_20_2]
	bx      lr

branch_20027ca: @ 20027ca :thumb
	ldrb    r2, [r0, #TextInterpreter_20_1]
	mov     r1, #TextInterpreter_20_1_20|TextInterpreter_20_1_40
	bic     r2, r1
	strb    r2, [r0, #TextInterpreter_20_1]
	ldrb    r2, [r0, #TextInterpreter_20_1]
	mov     r1, #TextInterpreter_20_1_1f
	bic     r2, r1
	strb    r2, [r0, #TextInterpreter_20_1]
	bx      lr
@ 0x20027dc

.align 2
.pool



/* Input:
r0: Ptr to TextInterpreter
*/
.thumb
Function_20027e0: @ 20027e0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r0
	ldr     r0, =RAM_2101d44
	mov     r4, r5
	ldrb    r0, [r0, #RAM_2101d44_0]
	add     r4, #TextInterpreter_20
	lsl     r0, r0, #29             @ RAM_2101d44_0_4
	lsr     r0, r0, #31
	beq     branch_20027f6
	b       branch_200295c

branch_20027f6: @ 20027f6 :thumb
	ldrb    r0, [r4, #TextInterpreter_20_1]
	lsl     r1, r0, #27
	lsr     r2, r1, #27
	beq     branch_2002814

	mov     r1, #0x1f
	add     r2, #0xff
	bic     r0, r1
	lsl     r1, r2, #24
	lsr     r2, r1, #24
	mov     r1, #0x1f
	and     r1, r2
	orr     r0, r1
	add     sp, #0x2c
	strb    r0, [r4, #TextInterpreter_20_1]
	pop     {r4-r7,pc}

branch_2002814: @ 2002814 :thumb
	ldr     r0, [r5, #TextInterpreter_4]
	bl      Function_201c290
	str     r0, [sp, #0x20]

	ldr     r0, [r5, #TextInterpreter_4]
	bl      Function_201c29c
	str     r0, [sp, #0x24]

	ldr     r0, [r5, #TextInterpreter_4]
	bl      Function_201c2a0
	str     r0, [sp, #0x28]

	ldr     r0, [r5, #TextInterpreter_4]
	bl      Function_201c294
	ldr     r1, =RAM_2101d44
	ldrh    r6, [r1, #RAM_2101d44_2]
	ldr     r1, [sp, #0x28]
	add     r7, r1, #0x2
	ldr     r1, [sp, #0x24]
	mov     r2, r6
	add     r0, r1, r0
	str     r0, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	add     r2, #0x12
	mov     r12, r2
	ldrb    r2, [r4, #TextInterpreter_20_1]
	ldr     r0, [r5, #TextInterpreter_4]
	ldr     r1, [sp, #0x20]
	lsl     r2, r2, #25
	lsr     r3, r2, #30
	ldr     r2, =Unknown_20e4cd0
	ldr     r0, [r0, #0x0]
	ldrb    r2, [r2, r3]
	mov     r3, r12
	lsl     r2, r2, #2
	add     r2, r3, r2
	ldr     r3, [sp, #0x18]
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x20]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x10]
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldrb    r2, [r4, #TextInterpreter_20_1]
	mov     r7, r6
	ldr     r0, [r5, #TextInterpreter_4]
	lsl     r2, r2, #25
	lsr     r3, r2, #30
	ldr     r2, =Unknown_20e4cd0
	add     r7, #0x13
	ldrb    r2, [r2, r3]
	ldr     r3, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	lsl     r2, r2, #2
	add     r2, r7, r2
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [sp, #0x28]
	mov     r7, r6
	.hword  0x1cc0 @ add r0, r0, #0x3
	str     r0, [sp, #0x14]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldrb    r2, [r4, #TextInterpreter_20_1]
	ldr     r0, [r5, #TextInterpreter_4]
	add     r7, #0x14
	lsl     r2, r2, #25
	lsr     r3, r2, #30
	ldr     r2, =Unknown_20e4cd0
	ldr     r0, [r0, #0x0]
	ldrb    r2, [r2, r3]
	ldr     r3, [sp, #0x18]
	ldr     r1, [sp, #0x20]
	lsl     r2, r2, #2
	add     r2, r7, r2
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [sp, #0x14]
	add     r6, #0x15
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldrb    r2, [r4, #TextInterpreter_20_1]
	ldr     r0, [r5, #TextInterpreter_4]
	ldr     r1, [sp, #0x20]
	lsl     r2, r2, #25
	lsr     r3, r2, #30
	ldr     r2, =Unknown_20e4cd0
	ldr     r0, [r0, #0x0]
	ldrb    r2, [r2, r3]
	ldr     r3, [sp, #0x10]
	lsl     r2, r2, #2
	add     r2, r6, r2
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8
	ldr     r0, [r5, #TextInterpreter_4]
	ldr     r1, [sp, #0x20]
	ldr     r0, [r0, #0x0]
	bl      Function_2019448
	ldrb    r1, [r4, #TextInterpreter_20_1]
	mov     r0, #0x1f
	bic     r1, r0
	mov     r0, #0x8
	orr     r0, r1
	strb    r0, [r4, #TextInterpreter_20_1]

	ldrb    r2, [r4, #TextInterpreter_20_1]
	mov     r1, #0x60
	mov     r0, r2
	bic     r0, r1
	lsl     r1, r2, #25
	lsr     r1, r1, #30
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	lsl     r1, r1, #30
	lsr     r1, r1, #25
	orr     r0, r1
	strb    r0, [r4, #TextInterpreter_20_1]
branch_200295c: @ 200295c :thumb
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x2002960

.align 2
.pool



/* Input:
r0: TextInterpreter
*/
.thumb
Function_2002968: @ 2002968 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [r5, #TextInterpreter_4]
	bl      Function_201c290
	str     r0, [sp, #0x10]

	ldr     r0, [r5, #TextInterpreter_4]
	bl      Function_201c29c
	str     r0, [sp, #0x14]

	ldr     r0, [r5, #TextInterpreter_4]
	bl      Function_201c2a0
	mov     r6, r0

	ldr     r0, [r5, #TextInterpreter_4]
	bl      Function_201c294
	ldr     r1, =RAM_2101d44
	add     r7, r6, #0x2
	ldrh    r4, [r1, #RAM_2101d44_2]
	ldr     r1, [sp, #0x14]
	add     r6, r1, r0
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #TextInterpreter_4]
	mov     r2, r4
	add     r2, #0xa
	add     r3, r6, #0x1
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x10]
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8

	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x10
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #TextInterpreter_4]
	add     r4, #0xb
	add     r3, r6, #0x2
	lsl     r2, r4, #16
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x10]
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      Function_2019cb8

	ldr     r0, [r5, #TextInterpreter_4]
	ldr     r1, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	bl      Function_2019448

	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x20029f6

.align 2
.pool



@ Continue to next TextBox
thumb_func_start NewTextBoxAtButtonPress
NewTextBoxAtButtonPress: @ 20029fc :thumb
	push    {r3,lr}
	ldr     r0, =RAM_21bf67c
	ldr     r1, [r0, #RAM_21bf67c_48_KeyNewPressed2]
	mov     r0, #KEY_A|KEY_B
	tst     r0, r1
	bne     branch_2002a1a

	ldr     r0, =RAM_21bf6bc
	ldrh    r0, [r0, #RAM_21bf6bc_20]
	cmp     r0, #0x0
	beq     branch_2002a2e_noNewTextBox

	ldr     r0, =RAM_2101d44
	ldrb    r0, [r0, #RAM_2101d44_0]
	lsl     r0, r0, #27             @ RAM_2101d44_0_10
	lsr     r0, r0, #31
	beq     branch_2002a2e_noNewTextBox

branch_2002a1a: @ 2002a1a :thumb
	ldr     r0, =0x5dc
	bl      Function_2005748
	ldr     r1, =RAM_2101d44
	mov     r0, #RAM_2101d44_0_80
	ldrb    r2, [r1, #RAM_2101d44_0]
	orr     r0, r2
	strb    r0, [r1, #RAM_2101d44_0]

	mov     r0, #0x1
	pop     {r3,pc}

branch_2002a2e_noNewTextBox: @ 2002a2e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2002a32

.align 2
.pool
thumb_func_end NewTextBoxAtButtonPress



.thumb
Function_2002a44_CallNewTextBoxAtButtonPress: @ 2002a44 :thumb
	push    {r4,lr}
	mov     r2, r0
	add     r2, #0x20
	ldrb    r1, [r2, #0x2]
	mov     r4, r1
	cmp     r4, #0x64
	bne     branch_2002a56

	mov     r0, #0x1
	pop     {r4,pc}

branch_2002a56: @ 2002a56 :thumb
	mov     r3, #0xff
	bic     r1, r3
	add     r3, r4, #0x1
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	orr     r1, r3
	strb    r1, [r2, #0x2]
	ldr     r1, =RAM_2101d44
	ldrb    r1, [r1, #RAM_2101d44_0]
	lsl     r1, r1, #26             @ RAM_2101d44_0_20
	lsr     r1, r1, #31
	beq     branch_2002a78

	bl      NewTextBoxAtButtonPress
	pop     {r4,pc}

branch_2002a78: @ 2002a78 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2002a7c

.align 2
.pool



/* Input:
r0: Ptr to TextInterpreter
*/
.thumb
Function_2002a80_CallNewTextBoxAtButtonPress: @ 2002a80 :thumb
	push    {r4,lr}
	ldr     r1, =RAM_2101d44
	mov     r4, r0
	ldrb    r1, [r1, #RAM_2101d44_0]
	lsl     r1, r1, #29             @ RAM_2101d44_0_4
	lsr     r1, r1, #31
	beq     branch_2002a94

	bl      Function_2002a44_CallNewTextBoxAtButtonPress
	pop     {r4,pc}

branch_2002a94: @ 2002a94 :thumb
	bl      Function_20027e0
	mov     r0, r4
	bl      NewTextBoxAtButtonPress
	pop     {r4,pc}
@ 0x2002aa0

.align 2
.pool



.thumb
Function_2002aa4_CallNewTextBoxAtButtonPress: @ 2002aa4 :thumb
	push    {r3,lr}
	ldr     r1, =RAM_2101d44
	ldrb    r1, [r1, #RAM_2101d44_0]
	lsl     r1, r1, #29         @ RAM_2101d44_0_4
	lsr     r1, r1, #31
	beq     branch_2002aba

	bl      Function_2002a44_CallNewTextBoxAtButtonPress
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3,pc}

branch_2002aba: @ 2002aba :thumb
	bl      NewTextBoxAtButtonPress
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3,pc}
@ 0x2002ac4

.align 2
.pool



thumb_func_start Function_2002ac8
Function_2002ac8: @ 2002ac8 :thumb
	ldr     r2, =RAM_2101d44
	mov     r1, #RAM_2101d44_0_1
	ldrb    r3, [r2, #RAM_2101d44_0]
	lsl     r0, r0, #24
	bic     r3, r1
	lsr     r1, r0, #24
	mov     r0, #RAM_2101d44_0_1
	and     r0, r1
	orr     r0, r3
	strb    r0, [r2, #RAM_2101d44_0]
	bx      lr
@ 0x2002ade

.align 2
.pool
thumb_func_end Function_2002ac8



thumb_func_start Function_2002ae4
Function_2002ae4: @ 2002ae4 :thumb
	push    {r3,r4}
	ldr     r1, =RAM_2101d44
	mov     r3, #RAM_2101d44_0_4
	ldrb    r2, [r1, #RAM_2101d44_0]
	mov     r4, #RAM_2101d44_0_1
	bic     r2, r3
	mov     r3, r0
	and     r3, r4
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	lsl     r3, r3, #31
	lsr     r3, r3, #29
	orr     r2, r3
	asr     r0, r0, #1
	and     r0, r4
	strb    r2, [r1, #RAM_2101d44_0]

	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #31
	ldrb    r2, [r1, #RAM_2101d44_0]
	mov     r3, #RAM_2101d44_0_20
	lsr     r0, r0, #26
	bic     r2, r3
	orr     r0, r2
	strb    r0, [r1, #RAM_2101d44_0]
	pop     {r3,r4}
	bx      lr
@ 0x2002b1a

.align 2
.pool
thumb_func_end Function_2002ae4



thumb_func_start Function_2002b20
Function_2002b20: @ 2002b20 :thumb
	ldr     r2, =RAM_2101d44
	lsl     r0, r0, #24
	ldrb    r3, [r2, #RAM_2101d44_0]
	lsr     r0, r0, #24
	mov     r1, #RAM_2101d44_0_10
	lsl     r0, r0, #31
	bic     r3, r1
	lsr     r0, r0, #27
	orr     r0, r3
	strb    r0, [r2, #RAM_2101d44_0]
	bx      lr
@ 0x2002b36

.align 2
.pool
thumb_func_end Function_2002b20



thumb_func_start Function_2002b3c
Function_2002b3c: @ 2002b3c :thumb
	ldr     r0, =RAM_2101d44
	ldrb    r0, [r0, #RAM_2101d44_0]
	lsl     r0, r0, #25             @ RAM_2101d44_0_40
	lsr     r0, r0, #31
	bx      lr
@ 0x2002b46

.align 2
.pool
thumb_func_end Function_2002b3c



thumb_func_start Function_2002b4c
Function_2002b4c: @ 2002b4c :thumb
	ldr     r1, =RAM_2101d44
	mov     r0, #RAM_2101d44_0_40
	ldrb    r2, [r1, #RAM_2101d44_0]
	bic     r2, r0
	strb    r2, [r1, #RAM_2101d44_0]
	bx      lr
@ 0x2002b58

.align 2
.pool
thumb_func_end Function_2002b4c



thumb_func_start Function_2002b5c
Function_2002b5c: @ 2002b5c :thumb
	ldr     r0, =RAM_2101d44
	ldrb    r0, [r0, #RAM_2101d44_0]
	lsl     r0, r0, #24         @ RAM_2101d44_0_80
	lsr     r0, r0, #31
	bx      lr
@ 0x2002b66

.align 2
.pool
thumb_func_end Function_2002b5c



thumb_func_start Function_2002b6c
Function_2002b6c: @ 2002b6c :thumb
	ldr     r1, =RAM_2101d44
	mov     r0, #RAM_2101d44_0_80
	ldrb    r2, [r1, #RAM_2101d44_0]
	bic     r2, r0
	strb    r2, [r1, #RAM_2101d44_0]
	bx      lr
@ 0x2002b78

.align 2
.pool
thumb_func_end Function_2002b6c



.thumb
Function_2002b7c: @ 2002b7c :thumb
	push    {r4,lr}
	ldr     r0, =RAM_2101d4c
	ldr     r4, =RAM_2101d48
	mov     r1, #0x0
	str     r0, [r4] @ RAM_2101d48

	mov     r2, r1
	mov     r0, r1
branch_2002b8a: @ 2002b8a :thumb
	ldr     r3, [r4] @ RAM_2101d48
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r3, r3, r2
	add     r3, #RAM_2101d4c_84
	str     r0, [r3] @ RAM_2101d4c_84
	ldr     r3, [r4] @ RAM_2101d48
	add     r3, r3, r2
	add     r3, #RAM_2101d4c_94
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r0, [r3] @ RAM_2101d4c_94
	cmp     r1, #0x4
	blo     branch_2002b8a

	ldr     r0, =Unknown_20e4ce4
	bl      Function_201d670

	pop     {r4,pc}
@ 0x2002baa

.align 2
.pool



thumb_func_start Function_2002bb8
Function_2002bb8: @ 2002bb8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4

	str     r1, [sp, #0x0]
	lsl     r4, r0, #2
	ldr     r1, =Unknown_20e4cd4
	ldr     r3, =Unknown_20e4cd4+2
	ldrh    r1, [r1, r4]
	ldrh    r3, [r3, r4]
	mov     r0, #0xe
	mov     r2, #0x1
	bl      Function_20232e0
	ldr     r1, =RAM_2101d48
	ldr     r1, [r1]
	add     r1, r1, r4
	add     r1, #RAM_2101d4c_94
	str     r0, [r1]

	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2002bde

.align 2
.pool
thumb_func_end Function_2002bb8



.thumb
.globl Function_2002bec
Function_2002bec: @ 2002bec :thumb
	push    {r3-r5,lr}

	mov     r4, r0
	mov     r5, r1
	cmp     r4, #0x4
	blt     branch_2002bfa
	bl      ErrorHandling
branch_2002bfa: @ 2002bfa :thumb

	ldr     r0, =RAM_2101d48
	lsl     r4, r4, #2
	ldr     r0, [r0]
	add     r0, r0, r4
	add     r0, #RAM_2101d4c_94
	ldr     r0, [r0] @ RAM_2101d4c_94
	cmp     r0, #0x0
	bne     branch_2002c0e
	bl      ErrorHandling
branch_2002c0e: @ 2002c0e :thumb

	ldr     r0, =RAM_2101d48
	mov     r1, #0x0
	ldr     r0, [r0]
	mov     r2, r5
	add     r0, r0, r4
	add     r0, #RAM_2101d4c_94
	ldr     r0, [r0]
	bl      Function_2023330

	pop     {r3-r5,pc}
@ 0x2002c22

.align 2
.pool



.thumb
.globl Function_2002c28
Function_2002c28: @ 2002c28 :thumb
	push    {r4,lr}

	mov     r4, r0
	cmp     r4, #0x4
	blt     branch_2002c34
	bl      ErrorHandling
branch_2002c34: @ 2002c34 :thumb

	ldr     r0, =RAM_2101d48
	lsl     r4, r4, #2
	ldr     r0, [r0]
	add     r0, r0, r4
	add     r0, #RAM_2101d4c_94
	ldr     r0, [r0] @ RAM_2101d4c_94
	cmp     r0, #0x0
	bne     branch_2002c48
	bl      ErrorHandling
branch_2002c48: @ 2002c48 :thumb

	ldr     r0, =RAM_2101d48
	mov     r1, #0x1
	ldr     r0, [r0]
	mov     r2, #0x0
	add     r0, r0, r4
	add     r0, #RAM_2101d4c_94
	ldr     r0, [r0] @ RAM_2101d4c_94
	bl      Function_2023330

	pop     {r4,pc}
@ 0x2002c5c

.align 2
.pool



.thumb
.globl Function_2002c60
Function_2002c60: @ 2002c60 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	cmp     r4, #0x4
	blt     branch_2002c6c
	bl      ErrorHandling
branch_2002c6c: @ 2002c6c :thumb

	ldr     r0, =RAM_2101d48
	lsl     r6, r4, #2
	ldr     r7, [r0]
	add     r0, r7, r6
	add     r0, #RAM_2101d4c_84
	ldr     r0, [r0] @ RAM_2101d4c_84
	mov     r12, r0
	cmp     r0, #0x0
	beq     branch_2002cd0

	ldr     r2, =Unknown_20e4cd4
	mov     r1, #0x0
	ldrh    r0, [r2, r6]
	mov     r3, r7
branch_2002c86: @ 2002c86 :thumb
	cmp     r1, r4
	beq     branch_2002ca6

	ldrh    r5, [r2, #0x0]
	cmp     r5, r0
	bne     branch_2002ca6

	mov     r5, r3
	add     r5, #RAM_2101d4c_94
	ldr     r5, [r5] @ RAM_2101d4c_94
	cmp     r5, #0x0
	beq     branch_2002ca6

	lsl     r0, r1, #2
	add     r2, r7, r0
	add     r2, #RAM_2101d4c_84
	mov     r0, r12
	str     r0, [r2] @ RAM_2101d4c_84
	b       branch_2002cb0

branch_2002ca6: @ 2002ca6 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r1, #0x4
	blo     branch_2002c86

branch_2002cb0: @ 2002cb0 :thumb
	cmp     r1, #0x4
	bne     branch_2002cd0

	ldr     r0, =RAM_2101d48
	lsl     r5, r4, #2
	ldr     r0, [r0]
	add     r0, r0, r5
	add     r0, #RAM_2101d4c_84
	ldr     r0, [r0] @ RAM_2101d4c_84
	bl      free

	ldr     r0, =RAM_2101d48
	mov     r1, #0x0
	ldr     r0, [r0]
	add     r0, r0, r5
	add     r0, #RAM_2101d4c_84
	str     r1, [r0] @ RAM_2101d4c_84

branch_2002cd0: @ 2002cd0 :thumb
	ldr     r0, =RAM_2101d48
	ldr     r0, [r0]
	add     r0, r0, r6
	add     r0, #RAM_2101d4c_94
	ldr     r0, [r0] @ RAM_2101d4c_94
	cmp     r0, #0x0
	beq     branch_2002cf0
	bl      Function_2023318

	ldr     r0, =RAM_2101d48
	mov     r2, #0x0
	ldr     r1, [r0]
	lsl     r0, r4, #2
	add     r0, r1, r0
	add     r0, #RAM_2101d4c_94
	str     r2, [r0] @ RAM_2101d4c_94
branch_2002cf0: @ 2002cf0 :thumb
	pop     {r3-r7,pc}
@ 0x2002cf2

.align 2
.pool



/* Input:
r0: TextInterpreter_20_0_f
*/
.thumb
Function_2002cfc: @ 2002cfc :thumb
	push    {r3,lr}

	ldr     r2, =RAM_2101d48
	lsl     r0, r0, #2
	ldr     r2, [r2] @ RAM_2101d48
	add     r0, r2, r0
	add     r0, #RAM_2101d4c_94
	ldr     r0, [r0] @ RAM_2101d4c_94
	bl      Function_20234a0

	ldr     r0, =RAM_2101d48
	ldr     r0, [r0] @ RAM_2101d48

	pop     {r3,pc}
@ 0x2002d14

.align 2
.pool



/* Input:
r0: [TextInterpreter_9]
r1: Ptr to TextInterpreter

Return:
r0: TextInterpreterReturn
*/
thumb_func_start Call_TextInterpreter
Call_TextInterpreter: @ 2002d18 :thumb
	push    {r4,lr}
	mov     r3, r1

	add     r3, #TextInterpreter_20
	ldrb    r2, [r3, #TextInterpreter_20_1]
	lsl     r2, r2, #24             @ TextInterpreter_20_1_80
	lsr     r2, r2, #31
	bne     branch_2002d40

	ldrb    r2, [r3, #TextInterpreter_20_0]
	mov     r4, #TextInterpreter_20_0_f
	lsl     r0, r0, #24
	bic     r2, r4
	lsr     r4, r0, #24
	mov     r0, #TextInterpreter_20_0_f
	and     r0, r4
	orr     r0, r2
	strb    r0, [r3, #TextInterpreter_20_0]

	ldrb    r2, [r3, #TextInterpreter_20_1]
	mov     r0, #TextInterpreter_20_1_80
	orr     r0, r2
	strb    r0, [r3, #TextInterpreter_20_1]
branch_2002d40: @ 2002d40 :thumb
	mov     r0, r1          @ Ptr to TextInterpreter
	bl      TextInterpreter

	pop     {r4,pc}
thumb_func_end Call_TextInterpreter



.thumb
Function_2002d48: @ 2002d48 :thumb
	push    {r4-r6,lr}

	lsl     r4, r0, #2
	ldr     r0, =RAM_2101d48
	mov     r5, r1
	ldr     r0, [r0]
	mov     r6, r2
	add     r0, r0, r4
	add     r0, #RAM_2101d4c_94
	ldr     r0, [r0] @ RAM_2101d4c_94
	cmp     r0, #0x0
	bne     branch_2002d62
	bl      ErrorHandling
branch_2002d62: @ 2002d62 :thumb

	ldr     r0, =RAM_2101d48
	mov     r1, r5
	ldr     r0, [r0]
	mov     r2, r6
	add     r0, r0, r4
	add     r0, #RAM_2101d4c_94
	ldr     r0, [r0] @ RAM_2101d4c_94
	bl      Function_2023620

	pop     {r4-r6,pc}
@ 0x2002d76

.align 2
.pool



.thumb
.globl Function_2002d7c
Function_2002d7c: @ 2002d7c :thumb
	push    {r4-r6,lr}
	lsl     r4, r0, #2
	ldr     r0, =RAM_2101d48
	mov     r5, r1
	ldr     r0, [r0]
	mov     r6, r2
	add     r0, r0, r4
	add     r0, #RAM_2101d4c_94
	ldr     r0, [r0] @ RAM_2101d4c_94
	cmp     r0, #0x0
	bne     branch_2002d96
	bl      ErrorHandling
branch_2002d96: @ 2002d96 :thumb

	mov     r0, r5
	bl      Function_2023e2c
	mov     r1, r0
	ldr     r0, =RAM_2101d48
	mov     r2, r6
	ldr     r0, [r0]
	add     r0, r0, r4
	add     r0, #RAM_2101d4c_94
	ldr     r0, [r0] @ RAM_2101d4c_94
	bl      Function_2023620
	pop     {r4-r6,pc}
@ 0x2002db0

.pool



.thumb
.globl Function_2002db4
Function_2002db4: @ 2002db4 :thumb
	push    {r4-r6,lr}
	lsl     r4, r0, #2
	ldr     r0, =RAM_2101d48
	mov     r6, r1
	ldr     r0, [r0]
	mov     r5, r2
	add     r0, r0, r4
	add     r0, #RAM_2101d4c_94
	ldr     r0, [r0] @ RAM_2101d4c_94
	cmp     r0, #0x0
	bne     branch_2002dce
	bl      ErrorHandling
branch_2002dce: @ 2002dce :thumb

	mov     r0, r5
	bl      Function_20237e8
	mov     r0, r5
	mov     r1, r6
	bl      Function_2023f10
	mov     r0, r5
	bl      Function_2023e2c
	mov     r1, r0
	ldr     r0, =RAM_2101d48
	ldr     r0, [r0]
	add     r0, r0, r4
	add     r0, #RAM_2101d4c_94
	ldr     r0, [r0] @ RAM_2101d4c_94
	bl      Function_202366c
	pop     {r4-r6,pc}
@ 0x2002df4

.pool



/* Input:
r0: [TextInterpreter_9]
r1:
*/
.thumb
.globl Function_2002df8_GetLineHeight
Function_2002df8_GetLineHeight: @ 2002df8 :thumb
	mov     r2, #0x0
	cmp     r1, #0x7
	bhi     branch_2002e58

	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2002e0a

Jumppoints_2002e0a:
.hword branch_2002e1a - Jumppoints_2002e0a - 2
.hword branch_2002e22 - Jumppoints_2002e0a - 2
.hword branch_2002e2a - Jumppoints_2002e0a - 2
.hword branch_2002e32 - Jumppoints_2002e0a - 2
.hword branch_2002e3a - Jumppoints_2002e0a - 2
.hword branch_2002e42 - Jumppoints_2002e0a - 2
.hword branch_2002e4a - Jumppoints_2002e0a - 2
.hword branch_2002e52 - Jumppoints_2002e0a - 2

branch_2002e1a: @ 2002e1a :thumb
	lsl     r1, r0, #3
	ldr     r0, =Unknown_20e4ce4
	ldrb    r2, [r0, r1]
	b       branch_2002e58

branch_2002e22: @ 2002e22 :thumb
	lsl     r1, r0, #3
	ldr     r0, =Unknown_20e4ce4+1
	ldrb    r2, [r0, r1]
	b       branch_2002e58

branch_2002e2a: @ 2002e2a :thumb
	lsl     r1, r0, #3
	ldr     r0, =Unknown_20e4ce4+2
	ldrb    r2, [r0, r1]
	b       branch_2002e58

branch_2002e32: @ 2002e32 :thumb
	lsl     r1, r0, #3
	ldr     r0, =Unknown_20e4ce4+3
	ldrb    r2, [r0, r1]
	b       branch_2002e58

branch_2002e3a: @ 2002e3a :thumb
	lsl     r1, r0, #3
	ldr     r0, =Unknown_20e4ce4+4
	ldrb    r2, [r0, r1]
	b       branch_2002e58

branch_2002e42: @ 2002e42 :thumb
	lsl     r1, r0, #3
	ldr     r0, =Unknown_20e4ce4+5
	ldrb    r2, [r0, r1]
	b       branch_2002e58

branch_2002e4a: @ 2002e4a :thumb
	lsl     r1, r0, #3
	ldr     r0, =Unknown_20e4ce4+6
	ldrb    r2, [r0, r1]
	b       branch_2002e58

branch_2002e52: @ 2002e52 :thumb
	lsl     r1, r0, #3
	ldr     r0, =Unknown_20e4ce4+7
	ldrb    r2, [r0, r1]
branch_2002e58: @ 2002e58 :thumb
	mov     r0, r2
	bx      lr
@ 0x2002e5c

.align 2
.pool
