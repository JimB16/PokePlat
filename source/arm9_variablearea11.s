
.thumb
GetSizeOfVarArea11: @ 202b37c :thumb
	mov     r0, #VarArea11_Size/4
	lsl     r0, r0, #2
	bx      lr
@ 0x202b382


/* Input
r0: VarArea11
r1: Source VarArea11_FieldNr
r2: Dest VarArea11_FieldNr
*/
.align 2, 0
.thumb
VarArea11_CopyStruct: @ 202b384 :thumb
	push    {r4,r5}
	mov     r5, r2
	mov     r3, #VarArea11_StructSize
	mov     r2, r1
	mul     r2, r3
	mul     r5, r3
	add     r4, r0, r2
	add     r3, r0, r5
	mov     r2, #0x5
branch_202b396: @ 202b396 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_202b396

	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	pop     {r4,r5}
	bx      lr
@ 0x202b3a6


/* Input
r0: VarArea11
*/
.align 2, 0
.thumb
ClearVarArea11Memory: @ 202b3a8 :thumb
	push    {r4,lr}
	mov     r4, r0

	mov     r2, #VarArea11_Size/4
	mov     r0, #0x0
	mov     r1, r4
	lsl     r2, r2, #2
	blx     MIi_CpuClearFast

	ldr     r0, =0xffff
	mov     r1, #0x0
	mov     r2, r4
branch_202b3be: @ 202b3be :thumb
	strh    r0, [r2, #VarArea11_0]
	strh    r0, [r2, #VarArea11_10]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #VarArea11_StructSize
	cmp     r1, #0x6
	blt     branch_202b3be

	ldr     r0, =RAM_21c079c
	str     r4, [r0, #0x0]
	pop     {r4,pc}
@ 0x202b3d0

.pool


/* Input
r0: VarArea11
*/
.thumb
VarArea11_AllAdvanceRNG: @ 202b3d8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, #0x0
branch_202b3e0: @ 202b3e0 :thumb
	mov     r4, #0x0
	cmp     r6, #0x0
	bls     branch_202b3f4

branch_202b3e6: @ 202b3e6 :thumb
	ldr     r0, [r5, #VarArea11_28]
	bl      ARNG_Step
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r0, [r5, #VarArea11_28]
	cmp     r4, r6
	blo     branch_202b3e6

branch_202b3f4: @ 202b3f4 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #VarArea11_StructSize
	cmp     r7, #0x6
	blo     branch_202b3e0

	pop     {r3-r7,pc}
@ 0x202b3fe


/* Input
r0: VarArea11
r1: VarArea11_FieldNr
*/
.align 2, 0
.thumb
VarArea11_GetRNGNr: @ 202b400 :thumb
	mov     r2, #VarArea11_StructSize
	mul     r2, r1
	add     r0, r0, r2
	ldr     r0, [r0, #VarArea11_24]
	bx      lr
@ 0x202b40a


/* when r1=1 it updates the SwarmRNG
Input
r0: VarArea11
*/
.align 2, 0
.thumb
.globl VarArea11_OneAdvanceRNG
VarArea11_OneAdvanceRNG: @ 202b40c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #VarArea11_StructSize
	mov     r4, r1
	mul     r4, r0
	add     r0, r5, r4
	str     r2, [r0, #VarArea11_24]
	mov     r0, r2
	bl      ARNG_Step
	add     r1, r5, r4
	str     r0, [r1, #VarArea11_28]
	pop     {r3-r5,pc}
@ 0x202b426


/* Input
r0: VarArea11
*/
.align 2, 0
.thumb
.globl Function_202b428_GetSwarmSeed
Function_202b428_GetSwarmSeed: @ 202b428 :thumb
	ldr     r0, [r0, #VarArea11_StructSize+VarArea11_28]
	bx      lr
@ 0x202b42c



/* Input
r0: VarArea11
r1: VarArea11_FieldNr
*/
.thumb
Function_202b42c: @ 202b42c :thumb
	cmp     r2, #0x0
	bne     branch_202b438
	mov     r2, #VarArea11_StructSize
	mul     r2, r1
	add     r0, r0, r2
	bx      lr

branch_202b438: @ 202b438 :thumb
	mov     r2, #VarArea11_StructSize
	mul     r2, r1
	add     r0, r0, r2
	add     r0, #VarArea11_10
	bx      lr
@ 0x202b442


/* Input
r0: VarArea11
r1: VarArea11_FieldNr
*/
.align 2, 0
.thumb
Function_202b444: @ 202b444 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r2, #0x0
	bne     branch_202b45c

	mov     r2, #VarArea11_StructSize
	mul     r2, r1
	add     r1, r4, r2
	mov     r0, r3
	mov     r2, #0x8
	bl      Function_2023df0
	pop     {r4,pc}

branch_202b45c: @ 202b45c :thumb
	mov     r2, #VarArea11_StructSize
	mul     r2, r1
	add     r1, r4, r2
	mov     r0, r3
	add     r1, #VarArea11_10
	mov     r2, #0x8
	bl      Function_2023df0
	pop     {r4,pc}
@ 0x202b46e


/* Input
r0: VarArea11
r1: VarArea11_FieldNr
r2: Value
*/
.align 2, 0
.thumb
VarArea11_Set20: @ 202b470 :thumb
	mov     r3, #VarArea11_StructSize
	mul     r3, r1
	add     r0, r0, r3
	add     r0, #VarArea11_20
	strb    r2, [r0]
	bx      lr
@ 0x202b47c


/* Input
r0: VarArea11
r1: VarArea11_FieldNr
*/
.thumb
VarArea11_Get20: @ 202b47c :thumb
	mov     r2, #VarArea11_StructSize
	mul     r2, r1
	add     r0, r0, r2
	add     r0, #VarArea11_20
	ldrb    r0, [r0]
	bx      lr
@ 0x202b488


/* Input
r0: VarArea11
r1: VarArea11_FieldNr
*/
.thumb
VarArea11_Get21: @ 202b488 :thumb
	mov     r2, #VarArea11_StructSize
	mul     r2, r1
	add     r0, r0, r2
	add     r0, #VarArea11_21
	ldrb    r0, [r0]
	bx      lr
@ 0x202b494


/* Input
r0: VarArea11
r1: VarArea11_FieldNr
r2: Value
*/
.thumb
VarArea11_Set21: @ 202b494 :thumb
	mov     r3, #VarArea11_StructSize
	mul     r3, r1
	add     r0, r0, r3
	add     r0, #VarArea11_21
	strb    r2, [r0]
	bx      lr
@ 0x202b4a0


thumb_func_start LoadVariableAreaAdress_11
LoadVariableAreaAdress_11: @ 202b4a0 :thumb
	ldr     r3, =LoadVariableAreaAdress+1
	mov     r1, #0x11
	bx      r3
@ 0x202b4a6

.align 2
.pool
thumb_func_end LoadVariableAreaAdress_11


/* Input
r0: VarArea11
r1: VarArea11_FieldNr
*/
.thumb
Function_202b4ac: @ 202b4ac :thumb
	push    {r3,lr}
	mov     r2, #VarArea11_StructSize
	mul     r2, r1
	add     r0, r0, r2
	bl      Function_202b510
	cmp     r0, #0x0
	bne     branch_202b4c0

	mov     r0, #0x1
	pop     {r3,pc}

branch_202b4c0: @ 202b4c0 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x202b4c4


/* Input
r0: VarArea11
r1: VarArea11_FieldNr
*/
.thumb
Function_202b4c4: @ 202b4c4 :thumb
	mov     r2, #VarArea11_StructSize
	mov     r3, r0
	mul     r2, r1
	add     r1, r3, r2
	ldr     r3, =Function_202b530+1
	add     r0, #VarArea11_StructSize
	bx      r3
@ 0x202b4d2

.align 2
.pool




/* Input
r0: VarArea11
r1: VarArea11_FieldAddress
*/
.thumb
Function_202b4d8: @ 202b4d8 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	ldrh    r1, [r6, #0x0]
	mov     r5, r0
	ldr     r0, =0xffff
	cmp     r1, r0
	bne     branch_202b4ea

	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_202b4ea: @ 202b4ea :thumb
	mov     r4, #0x0
	mov     r7, #0x8
branch_202b4ee: @ 202b4ee :thumb
	mov     r0, r6
	mov     r1, r5
	mov     r2, r7
	bl      Function_2002238
	cmp     r0, #0x0
	bne     branch_202b500

	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_202b500: @ 202b500 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #VarArea11_StructSize
	cmp     r4, #0x6
	blt     branch_202b4ee

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x202b50c

.pool



/* Input
r0: VarArea11 + Struct * VarArea11_FieldNr
*/
.thumb
.globl Function_202b510
Function_202b510: @ 202b510 :thumb
	ldrh    r2, [r0, #0x0]
	ldr     r1, =0xffff
	cmp     r2, r1
	bne     branch_202b51c

	mov     r0, #0x1
	bx      lr

branch_202b51c: @ 202b51c :thumb
	ldrh    r0, [r0, #0x10]
	cmp     r0, r1
	bne     branch_202b526

	mov     r0, #0x1
	bx      lr

branch_202b526: @ 202b526 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x202b52a

.align 2
.pool



.thumb
.globl Function_202b530
Function_202b530: @ 202b530 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	add     r0, #0x10
	add     r1, #0x10
	mov     r2, #0x8
	bl      Function_2002238
	cmp     r0, #0x0
	beq     branch_202b548

	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_202b548: @ 202b548 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x8
	bl      Function_2002238
	cmp     r0, #0x0
	beq     branch_202b55a

	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_202b55a: @ 202b55a :thumb
	mov     r0, r5
	add     r0, #0x20
	ldrb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_202b56e

	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_202b56e: @ 202b56e :thumb
	mov     r0, r5
	add     r0, #0x21
	ldrb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_202b582

	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_202b582: @ 202b582 :thumb
	ldr     r1, [r5, #0x24]
	ldr     r0, [r4, #0x24]
	cmp     r1, r0
	bne     branch_202b58e

	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_202b58e: @ 202b58e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x202b592


