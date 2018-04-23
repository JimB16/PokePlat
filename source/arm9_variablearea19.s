

.thumb
GetSizeOfVarArea19: @ 202d7a8 :thumb
	mov     r0, #VarArea19_Size/4
	lsl     r0, r0, #2
	bx      lr
@ 0x202d7ae


.align 2, 0
.thumb
ClearVarArea19Memory: @ 202d7b0 :thumb
	push    {r4,lr}
	mov     r2, #VarArea19_Size/4
	mov     r4, r0
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     Call_FillMemWithValue

	bl      Function_201d35c
	str     r0, [r4, #VarArea19_0]
	bl      Function_201d35c
	str     r0, [r4, #VarArea19_4]
	mov     r1, #0x0
	mov     r3, r4
	ldr     r0, =0xffff
	str     r1, [r4, #VarArea19_8]
	strh    r0, [r4, #VarArea19_c]
	strh    r0, [r4, #VarArea19_e]

	mov     r0, #0x15
	add     r3, #VarArea19_10
	strb    r0, [r4, #VarArea19_10]
	mov     r2, r1
branch_202d7de: @ 202d7de :thumb
	str     r2, [r3, #0x4]
	strb    r2, [r3, #0x8]
	strb    r2, [r3, #0x9]
	strb    r2, [r3, #0xa]
	strb    r2, [r3, #0xb]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r3, #0x8
	cmp     r1, #0x15
	blt     branch_202d7de

	ldr     r0, =VarArea19_14e
	strb    r2, [r4, r0]
	add     r1, r0, #VarArea19_14f-VarArea19_14e
	strb    r2, [r4, r1]
	add     r1, r0, #VarArea19_150-VarArea19_14e
	strb    r2, [r4, r1]
	.hword  0x1cc0 @ add r0, r0, #0x3 @ VarArea19_151-VarArea19_14e
	strb    r2, [r4, r0]
	pop     {r4,pc}
@ 0x202d802

.align 2
.pool



/* Input
r0: VarArea19
*/
.thumb
Function_202d80c_SetSwarmRNGNrs: @ 202d80c :thumb
	str     r1, [r0, #VarArea19_0]
	str     r1, [r0, #VarArea19_4]
	bx      lr
@ 0x202d812


/* Input
r0: VarArea19
*/
.align 2, 0
.thumb
.globl Function_202d814_GetSwarmRNGNrs
Function_202d814_GetSwarmRNGNrs: @ 202d814 :thumb
	push    {r3,lr}
	cmp     r1, #0x1
	beq     branch_202d820
	cmp     r1, #0x2
	beq     branch_202d824
	b       branch_202d828

branch_202d820: @ 202d820 :thumb
	ldr     r0, [r0, #VarArea19_0]
	pop     {r3,pc}

branch_202d824: @ 202d824 :thumb
	ldr     r0, [r0, #VarArea19_4]
	pop     {r3,pc}

branch_202d828: @ 202d828 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x202d830


/* Input
r0: VarArea19
*/
.thumb
.globl Function_202d830
Function_202d830: @ 202d830 :thumb
	add     r0, #VarArea19_bc
	bx      lr
@ 0x202d834


thumb_func_start LoadVariableAreaAdress_19
LoadVariableAreaAdress_19: @ 202d834 :thumb
	ldr     r3, =LoadVariableAreaAdress+1
	mov     r1, #0x19
	bx      r3
@ 0x202d83a

.align 2
.pool
thumb_func_end LoadVariableAreaAdress_19



/* Input
r0: VarArea19
*/
.thumb
.globl Function_202d840
Function_202d840: @ 202d840 :thumb
	add     r0, #VarArea19_10
	bx      lr
@ 0x202d844


.thumb
.globl Function_202d844
Function_202d844: @ 202d844 :thumb
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x202d848


.thumb
.globl Function_202d848
Function_202d848: @ 202d848 :thumb
	strb    r0, [r1, #0x0]
	bx      lr
@ 0x202d84c


.thumb
.globl Function_202d84c
Function_202d84c: @ 202d84c :thumb
	.hword  0x1d09 @ add r1, r1, #0x4
	lsl     r0, r0, #3
	add     r0, r1, r0
	bx      lr
@ 0x202d854


.thumb
Function_202d854: @ 202d854 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	bl      LoadVariableAreaAdress_19
	mov     r6, r0
	mov     r4, #0x0
	add     r6, #VarArea19_10
	mov     r7, r4
branch_202d864: @ 202d864 :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	mov     r1, r6
	bl      Function_202d84c
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_202d87c
	sub     r1, r1, r5
	str     r1, [r0, #0x0]
	bpl     branch_202d87c
	str     r7, [r0, #0x0]
branch_202d87c: @ 202d87c :thumb

	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x15
	blt     branch_202d864

	pop     {r3-r7,pc}
@ 0x202d884


.thumb
Function_202d884: @ 202d884 :thumb
	push    {r3,lr}
	bl      LoadVariableAreaAdress_19
	ldr     r1, =VarArea19_14e
	mov     r2, #0x1
	strb    r2, [r0, r1]
	pop     {r3,pc}
@ 0x202d892

.align 2
.pool


/* Input
r0: VarArea19
*/
.thumb
.globl Function_202d898
Function_202d898: @ 202d898 :thumb
	ldr     r1, =VarArea19_14e
	ldrb    r0, [r0, r1]
	bx      lr
@ 0x202d89e

.align 2
.pool



/* Input
r0: VarArea19
*/
.thumb
Function_202d8a4: @ 202d8a4 :thumb
	mov     r2, r0
	add     r2, #VarArea19_c8
	ldr     r3, [r2]
	cmp     r3, r1
	beq     branch_202d8b8
	mov     r2, r0
	add     r2, #VarArea19_cc
	str     r3, [r2]
	add     r0, #VarArea19_c8
	str     r1, [r0]
branch_202d8b8: @ 202d8b8 :thumb
	bx      lr
@ 0x202d8ba


/* Input
r0: VarArea19
*/
.align 2, 0
.thumb
Function_202d8bc: @ 202d8bc :thumb
	add     r0, #VarArea19_cc
	ldr     r0, [r0]
	bx      lr
@ 0x202d8c2


.align 2, 0
.thumb
.globl Function_202d8c4
Function_202d8c4: @ 202d8c4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x6
	blo     branch_202d8d2
	bl      ErrorHandling
branch_202d8d2: @ 202d8d2 :thumb

	mov     r0, #0x52
	add     r1, r5, r4
	lsl     r0, r0, #2
	ldrb    r0, [r1, r0]
	pop     {r3-r5,pc}
@ 0x202d8dc


/* Input
r0: VarArea19
*/
.thumb
Function_202d8dc: @ 202d8dc :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x6
	blo     branch_202d8ec
	bl      ErrorHandling
branch_202d8ec: @ 202d8ec :thumb

	mov     r0, #VarArea19_52
	add     r1, r5, r4
	lsl     r0, r0, #2
	strb    r6, [r1, r0]
	pop     {r4-r6,pc}
@ 0x202d8f6


/* Input
r0: VarArea19
*/
.align 2, 0
.thumb
.globl Function_202d8f8
Function_202d8f8: @ 202d8f8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x6
	blo     branch_202d906
	bl      ErrorHandling
branch_202d906: @ 202d906 :thumb

	mov     r0, #0x14
	mul     r0, r4
	add     r0, r5, r0
	add     r0, #VarArea19_e2
	ldrb    r0, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x202d912


.align 2, 0
.thumb
.globl Function_202d914
Function_202d914: @ 202d914 :thumb
	ldr     r2, [r0, #0x0]
	mov     r1, #0x14
	mov     r0, #0x0
branch_202d91a: @ 202d91a :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_202d91a

	bx      lr
@ 0x202d924


/* Input
r0: VarArea19
*/
.thumb
.globl Function_202d924_GetPtrToUnkSwarmStruct
Function_202d924_GetPtrToUnkSwarmStruct: @ 202d924 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x6
	blo     branch_202d932
	bl      ErrorHandling
branch_202d932: @ 202d932 :thumb

	mov     r0, #0x14
	add     r5, #VarArea19_d0
	mul     r0, r4
	add     r0, r5, r0
	pop     {r3-r5,pc}
@ 0x202d93c


.thumb
.globl Function_202d93c_LoadValueFromUnkSwarmStruct
Function_202d93c_LoadValueFromUnkSwarmStruct: @ 202d93c :thumb
	cmp     r1, #0x8
	bhi     branch_202d97c
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1

Jumppoints_202d94c:
.hword branch_202d97c - Jumppoints_202d94c - 2
.hword branch_202d95e - Jumppoints_202d94c - 2
.hword branch_202d962 - Jumppoints_202d94c - 2
.hword branch_202d966 - Jumppoints_202d94c - 2
.hword branch_202d96a - Jumppoints_202d94c - 2
.hword branch_202d96e - Jumppoints_202d94c - 2
.hword branch_202d972 - Jumppoints_202d94c - 2
.hword branch_202d976 - Jumppoints_202d94c - 2
.hword branch_202d97a - Jumppoints_202d94c - 2

branch_202d95e: @ 202d95e :thumb
	ldr     r0, [r0, #0x0]
	bx      lr

branch_202d962: @ 202d962 :thumb
	ldr     r0, [r0, #0x4]
	bx      lr

branch_202d966: @ 202d966 :thumb
	ldr     r0, [r0, #0x8]
	bx      lr

branch_202d96a: @ 202d96a :thumb
	ldrh    r0, [r0, #0xc]
	bx      lr

branch_202d96e: @ 202d96e :thumb
	ldrh    r0, [r0, #0xe]
	bx      lr

branch_202d972: @ 202d972 :thumb
	ldrb    r0, [r0, #0x10]
	bx      lr

branch_202d976: @ 202d976 :thumb
	ldrb    r0, [r0, #0x11]
	bx      lr

branch_202d97a: @ 202d97a :thumb
	ldrb    r0, [r0, #0x12]
branch_202d97c: @ 202d97c :thumb
	bx      lr
@ 0x202d97e


/* Input
r0: dest
r1: StructPosition
r2: value
*/
.align 2, 0
.thumb
.globl Function_202d980_SaveValueInUnkSwarmStruct
Function_202d980_SaveValueInUnkSwarmStruct: @ 202d980 :thumb
	cmp     r1, #0x8
	bhi     branch_202d9c0
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1

Jumppoints_202d990:
.hword branch_202d9c0 - Jumppoints_202d990 - 2
.hword branch_202d9a2 - Jumppoints_202d990 - 2
.hword branch_202d9a6 - Jumppoints_202d990 - 2
.hword branch_202d9aa - Jumppoints_202d990 - 2
.hword branch_202d9ae - Jumppoints_202d990 - 2
.hword branch_202d9b2 - Jumppoints_202d990 - 2
.hword branch_202d9b6 - Jumppoints_202d990 - 2
.hword branch_202d9ba - Jumppoints_202d990 - 2
.hword branch_202d9be - Jumppoints_202d990 - 2

branch_202d9a2: @ 202d9a2 :thumb
	str     r2, [r0, #0x0]
	bx      lr

branch_202d9a6: @ 202d9a6 :thumb
	str     r2, [r0, #0x4]
	bx      lr

branch_202d9aa: @ 202d9aa :thumb
	str     r2, [r0, #0x8]
	bx      lr

branch_202d9ae: @ 202d9ae :thumb
	strh    r2, [r0, #0xc]
	bx      lr

branch_202d9b2: @ 202d9b2 :thumb
	strh    r2, [r0, #0xe]
	bx      lr

branch_202d9b6: @ 202d9b6 :thumb
	strb    r2, [r0, #0x10]
	bx      lr

branch_202d9ba: @ 202d9ba :thumb
	strb    r2, [r0, #0x11]
	bx      lr

branch_202d9be: @ 202d9be :thumb
	strb    r2, [r0, #0x12]
branch_202d9c0: @ 202d9c0 :thumb
	bx      lr
@ 0x202d9c2


/* Input
r0: VarArea19
*/
.align 2, 0
.thumb
Function_202d9c4: @ 202d9c4 :thumb
	mov     r1, #0x15           @ VarArea19_150/16
	lsl     r1, r1, #4
	add     r0, r0, r1
	bx      lr
@ 0x202d9cc


.thumb
.globl Function_202d9cc
Function_202d9cc: @ 202d9cc :thumb
	ldr     r1, [pc, #0x4] @ 0x202d9d4, (=0x14f)
	add     r0, r0, r1
	bx      lr
@ 0x202d9d2

.align 2
.word 0x14f @ 0x202d9d4



.thumb
.globl Function_202d9d8
Function_202d9d8: @ 202d9d8 :thumb
	ldr     r1, [pc, #0xc] @ 0x202d9e8, (=0x14f)
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_202d9e4
	mov     r0, #0x1
	bx      lr

branch_202d9e4: @ 202d9e4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x202d9e8

.word 0x14f @ 0x202d9e8



/* Input
r0: VarArea19
*/
.thumb
.globl Function_202d9ec
Function_202d9ec: @ 202d9ec :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x2
	bls     branch_202d9fa
	bl      ErrorHandling
branch_202d9fa: @ 202d9fa :thumb

	ldr     r0, =VarArea19_151
	strb    r4, [r5, r0]
	pop     {r3-r5,pc}
@ 0x202da00

.pool



.thumb
.globl Function_202da04
Function_202da04: @ 202da04 :thumb
	ldr     r1, [pc, #0x4] @ 0x202da0c, (=0x151)
	ldrb    r0, [r0, r1]
	bx      lr
@ 0x202da0a

.align 2
.word 0x151 @ 0x202da0c



.thumb
.globl Function_202da10_GetMarshEncounterRNG
Function_202da10_GetMarshEncounterRNG: @ 202da10 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r2
	bl      LoadVariableAreaAdress_19
	ldrh    r1, [r0, #VarArea19_c]
	strh    r1, [r5, #0x0]
	ldrh    r0, [r0, #VarArea19_e]
	strh    r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x202da24


.thumb
.globl Function_202da24
Function_202da24: @ 202da24 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      LoadVariableAreaAdress_19
	mov     r4, r0
	cmp     r5, #0x10
	blo     branch_202da36
	bl      ErrorHandling
branch_202da36: @ 202da36 :thumb
	ldrh    r0, [r4, #VarArea19_c]
	strh    r0, [r4, #VarArea19_e]
	strh    r5, [r4, #VarArea19_c]
	pop     {r3-r5,pc}
@ 0x202da3e

