
.thumb
Function_201378c: @ 201378c :thumb
	push    {r3,lr}

	blx     RTC_Init

	ldr     r3, [pc, #0x28] @ 0x20137bc, (=RAM_21bf5c8)
	mov     r0, #0x0
	mov     r2, r3
	mov     r1, r0
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}

	ldr     r1, [pc, #0x10] @ 0x20137c0, (=RAM_21bf5c8)
	str     r0, [r1, #RAM_21bf5c8_0]
	str     r0, [r1, #RAM_21bf5c8_4]
	str     r0, [r1, #RAM_21bf5c8_8]

	mov     r0, r3
	bl      Function_2013824

	pop     {r3,pc}
@ 0x20137bc

.word RAM_21bf5c8 @ 0x20137bc
.word RAM_21bf5c8 @ 0x20137c0



.thumb
Function_20137c4: @ 20137c4 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x1c] @ 0x20137e4, (=RAM_21bf5c8)
	ldr     r1, [r0, #RAM_21bf5c8_4]
	cmp     r1, #0x0
	bne     branch_20137e2

	ldr     r1, [r0, #RAM_21bf5c8_8]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #RAM_21bf5c8_8]
	cmp     r1, #0xa
	ble     branch_20137e2

	mov     r1, #0x0
	str     r1, [r0, #RAM_21bf5c8_8]

	ldr     r0, [pc, #0x8] @ 0x20137e8, (=RAM_21bf5c8)
	bl      Function_2013824

branch_20137e2: @ 20137e2 :thumb
	pop     {r3,pc}
@ 0x20137e4

.word RAM_21bf5c8 @ 0x20137e4
.word RAM_21bf5c8 @ 0x20137e8



.thumb
Function_20137ec: @ 20137ec :thumb
	push    {r4,lr}
	mov     r4, r1
	str     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_20137fa
	bl      ErrorHandling
branch_20137fa: @ 20137fa :thumb

	mov     r3, r4
	mov     r0, #0x1
	mov     r2, r4
	add     r3, #0x2c
	str     r0, [r4, #0x0]
	ldmia   r3!, {r0,r1}
	add     r2, #0x10
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r3, r4
	add     r3, #0x3c
	mov     r2, r4
	ldmia   r3!, {r0,r1}
	add     r2, #0x20
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2013824


/* Input:
r0: RAM_21bf5c8
*/
.thumb
Function_2013824: @ 2013824 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	str     r0, [r4, #RAM_21bf5c8_4]

	mov     r0, r4
	mov     r1, r4
	ldr     r2, =Function_20137ec+1
	add     r0, #0x2c
	add     r1, #0x3c
	mov     r3, r4
	blx     RTC_GetDateTimeAsync
	str     r0, [r4, #RAM_21bf5c8_c]
	cmp     r0, #0x0
	beq     branch_2013846
	bl      ErrorHandling
branch_2013846: @ 2013846 :thumb

	pop     {r4,pc}
@ 0x2013848

.align 2
.pool



.thumb
Function_201384c: @ 201384c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, =RAM_21bf5c8
	mov     r4, r1
	ldr     r0, [r0, #RAM_21bf5c8_0]
	cmp     r0, #0x1
	beq     branch_201385e
	bl      ErrorHandling
branch_201385e: @ 201385e :thumb

	ldr     r2, =RAM_21bf5d8
	ldmia   r2!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldmia   r2!, {r0,r1}
	ldr     r2, =RAM_21bf5e8
	stmia   r5!, {r0,r1}
	ldmia   r2!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x2013874

.align 2
.pool



.thumb
Function_2013880: @ 2013880 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, =RAM_21bf5c8
	ldr     r0, [r0, #RAM_21bf5c8_0]
	cmp     r0, #0x1
	beq     branch_2013890
	bl      ErrorHandling
branch_2013890: @ 2013890 :thumb

	ldr     r2, =RAM_21bf5e8
	ldmia   r2!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x201389c

.align 2
.pool



.thumb
.globl Function_20138a4
Function_20138a4: @ 20138a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, =RAM_21bf5c8
	ldr     r0, [r0, #RAM_21bf5c8_0]
	cmp     r0, #0x1
	beq     branch_20138b4
	bl      ErrorHandling
branch_20138b4: @ 20138b4 :thumb

	ldr     r2, =RAM_21bf5d8
	ldmia   r2!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r2!, {r0,r1}
	stmia   r4!, {r0,r1}
	pop     {r4,pc}
@ 0x20138c0

.align 2
.pool
