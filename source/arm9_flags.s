
thumb_func_start GetSizeOfFlagMemory
GetSizeOfFlagMemory: @ 20507cc :thumb
	mov     r0, #FlagMem_Size/4
	lsl     r0, r0, #2
	bx      lr
thumb_func_end GetSizeOfFlagMemory


thumb_func_start ClearFlagMemory
ClearFlagMemory: @ 20507d4 :thumb
	ldr     r3, =Call_FillMemWithValue
	mov     r2, #FlagMem_Size/4
	mov     r1, #0x0
	lsl     r2, r2, #2
	bx      r3
@ 0x20507de

.align 2
.pool
thumb_func_end ClearFlagMemory



thumb_func_start LoadFlagAdress
LoadFlagAdress: @ 20507e4 :thumb
	ldr     r3, =LoadVariableAreaAdress+1
	mov     r1, #0x4
	bx      r3
@ 0x20507ea

.align 2
.pool
thumb_func_end LoadFlagAdress


/* Input:
r0 = Pointer to FlagAdress
r1 = Nr of Flag
*/
thumb_func_start CheckFlag
CheckFlag: @ 20507f0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1

	bl      CalculateFlagByteAddress
	cmp     r0, #0x0
	beq     branch_2050816

	lsr     r3, r4, #31
	lsl     r2, r4, #29
	ldrb    r5, [r0, #0x0]
	sub     r2, r2, r3
	mov     r1, #29
	ror     r2, r1
	mov     r0, #0x1
	add     r1, r3, r2
	mov     r2, r0
	lsl     r2, r1
	mov     r1, r5
	tst     r1, r2
	bne     branch_2050818

branch_2050816: @ 2050816 :thumb
	mov     r0, #0x0
branch_2050818: @ 2050818 :thumb
	pop     {r3-r5,pc}
thumb_func_end CheckFlag


/* Input:
r0 = Pointer to FlagAdress
r1 = Nr of Flag
*/
thumb_func_start SetFlag
SetFlag: @ 205081c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	bl      CalculateFlagByteAddress
	cmp     r0, #0x0
	beq     branch_2050840

	lsr     r5, r4, #31
	lsl     r3, r4, #29
	sub     r3, r3, r5
	mov     r2, #29
	ror     r3, r2

	mov     r6, #0x1
	add     r2, r5, r3
	mov     r3, r6
	ldrb    r1, [r0]
	lsl     r3, r2
	orr     r1, r3
	strb    r1, [r0]
branch_2050840: @ 2050840 :thumb
	pop     {r4-r6,pc}
thumb_func_end SetFlag


/* Input:
r0 = Pointer to FlagAdress
r1 = Nr of Flag
*/
thumb_func_start ClearFlag
ClearFlag: @ 2050844 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	bl      CalculateFlagByteAddress
	cmp     r0, #0x0
	beq     branch_205086c

	lsr     r5, r4, #31
	lsl     r3, r4, #29
	sub     r3, r3, r5
	mov     r2, #0x1d
	ror     r3, r2

	mov     r6, #0x1
	add     r2, r5, r3
	mov     r3, r6
	lsl     r3, r2
	mov     r2, #0xff
	ldrb    r1, [r0, #0x0]
	eor     r2, r3
	and     r1, r2
	strb    r1, [r0, #0x0]
branch_205086c: @ 205086c :thumb
	pop     {r4-r6,pc}
thumb_func_end ClearFlag


/* Input:
r0 = Pointer to FlagAdress
r1 = Nr of Flag
*/
thumb_func_start CalculateFlagByteAddress
CalculateFlagByteAddress: @ 2050870 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	cmp     r1, #0x0
	bne     flagNotZero

	mov     r0, #0x0
	pop     {r3-r5,pc}

flagNotZero: @ 205087c :thumb
	mov     r0, #0x1
	lsl     r0, r0, #14         @ 0x4000
	cmp     r1, r0
	bhs     flagOverEqual4000

	mov     r0, #FlagMem_16c/4
	lsr     r4, r1, #3
	lsl     r0, r0, #2          @ FlagMem_16c (0x16c)
	cmp     r4, r0
	blt     notOverFlagByteLimit
	bl      ErrorHandling
notOverFlagByteLimit: @ 2050892 :thumb

	mov     r0, #FlagMem_240/64
	lsl     r0, r0, #6
	add     r0, r5, r0      @ FlagAdress += FlagMem_240 (0x240)
	add     r0, r0, r4      @ FlagAdress += (FlagNr>>3)
	pop     {r3-r5,pc}

flagOverEqual4000: @ 205089c :thumb
	sub     r1, r1, r0      @ -0x4000 normalize FlagNr
	asr     r0, r1, #2
	lsr     r0, r0, #29
	add     r0, r1, r0      @ FlagNr += (FlagNr&0x1)
	asr     r4, r0, #3      @ FlagNr >>= 3
	cmp     r4, #0x8
	blt     branch_20508ae
	bl      ErrorHandling
branch_20508ae: @ 20508ae :thumb

	ldr     r0, =RAM_21c07f4
	add     r0, r0, r4
	pop     {r3-r5,pc}
@ 0x20508b4

.align 2
.pool
thumb_func_end CalculateFlagByteAddress
