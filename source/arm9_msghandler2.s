


.thumb
Function_201d670: @ 201d670 :thumb
	ldr     r1, =Unknown_2100840
	str     r0, [r1] @ Unknown_2100840
	bx      lr
@ 0x201d676

.align 2
.pool



/* Input:
r0: Ptr to ExecuteTextInterpreter
r1: TextInterpreter-Struct
*/
thumb_func_start InitExecuteTextInterpreter
InitExecuteTextInterpreter: @ 201d67c :thumb
	push    {r4-r6,lr}
	ldr     r4, =RAM_21c04e0
	mov     r5, #0x0
branch_201d682: @ 201d682 :thumb
	ldr     r3, [r4, #0x0]
	cmp     r3, #0x0
	bne     branch_201d69c

	ldr     r6, =RAM_21c04e0
	lsl     r4, r5, #2
	bl      AddTaskToTaskList4
	str     r0, [r6, r4]
	ldr     r0, [r6, r4]
	cmp     r0, #0x0
	bne     branch_201d6a4

	mov     r5, #0x8
	b       branch_201d6a4

branch_201d69c: @ 201d69c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x8
	blt     branch_201d682

branch_201d6a4: @ 201d6a4 :thumb
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	pop     {r4-r6,pc}
@ 0x201d6aa

.align 2
.pool
thumb_func_end InitExecuteTextInterpreter



thumb_func_start RemoveTextInterpreterTaskFromTaskList
RemoveTextInterpreterTaskFromTaskList: @ 201d6b0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	cmp     r5, #0x8
	blo     branch_201d6bc
	bl      ErrorHandling
branch_201d6bc: @ 201d6bc :thumb

	ldr     r6, =RAM_21c04e0
	lsl     r4, r5, #2
	ldr     r0, [r6, r4]
	cmp     r0, #0x0
	bne     branch_201d6ca
	bl      ErrorHandling
branch_201d6ca: @ 201d6ca :thumb

	cmp     r5, #0x8
	bhs     branch_201d6f0

	ldr     r0, [r6, r4]
	cmp     r0, #0x0
	beq     branch_201d6f0

	bl      Function_201ced0
	mov     r5, r0
	beq     branch_201d6e6
	bl      Function_201dbd8
	mov     r0, r5
	bl      free

branch_201d6e6: @ 201d6e6 :thumb
	ldr     r0, [r6, r4]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0x0
	str     r0, [r6, r4]
branch_201d6f0: @ 201d6f0 :thumb

	pop     {r4-r6,pc}
@ 0x201d6f2

.align 2
.pool
thumb_func_end RemoveTextInterpreterTaskFromTaskList



.thumb
Function_201d6f8: @ 201d6f8 :thumb
	lsl     r1, r0, #2
	ldr     r0, =RAM_21c04e0
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_201d706

	mov     r0, #0x1
	bx      lr

branch_201d706: @ 201d706 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x201d70a

.align 2
.pool



.thumb
.globl Function_201d710
Function_201d710: @ 201d710 :thumb
	mov     r1, #0x0
	ldr     r2, =RAM_21c04e0
	mov     r0, r1
branch_201d716: @ 201d716 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	stmia   r2!, {r0}
	cmp     r1, #0x8
	blt     branch_201d716

	bx      lr
@ 0x201d720

.align 2
.pool



.thumb
.globl Function_201d724
Function_201d724: @ 201d724 :thumb
	push    {r3,lr}
	bl      Function_201d6f8
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3,pc}
@ 0x201d730


thumb_func_start Call_RemoveTextInterpreterTaskFromTaskList
Call_RemoveTextInterpreterTaskFromTaskList: @ 201d730 :thumb
	ldr     r3, =RemoveTextInterpreterTaskFromTaskList+1
	bx      r3
@ 0x201d734

.align 2
.pool
thumb_func_end Call_RemoveTextInterpreterTaskFromTaskList



/* Input:
r0: TextInterpreter_4
r1: TextInterpreter_9
r2: TextInterpreter_Pointer - Ptr to Msg
r3: TextInterpreter_StartPosX2, TextInterpreter_dPosX
sp+0x0: TextInterpreter_StartPosY2, TextInterpreter_dPosY
sp+0x4: TextInterpreter_17
sp+0x8:
*/
.thumb
.globl Function_201d738_CallInitTextInterpreter
Function_201d738_CallInitTextInterpreter: @ 201d738 :thumb
	push    {lr}
	add     sp, #-0x1c

	str     r2, [sp, #TextInterpreter_Pointer]
	str     r0, [sp, #TextInterpreter_4]

	add     r2, sp, #0x0
	strb    r1, [r2, #TextInterpreter_9]
	ldr     r0, [sp, #0x20]
	strb    r3, [r2, #TextInterpreter_StartPosX2]
	strb    r0, [r2, #TextInterpreter_StartPosY2]
	strh    r3, [r2, #TextInterpreter_dPosX]
	strh    r0, [r2, #TextInterpreter_dPosY]

	ldr     r0, =Unknown_2100840
	lsl     r1, r1, #3
	ldr     r0, [r0] @ Unknown_2100840
	add     r1, r0, r1
	ldrb    r0, [r1, #0x2]
	strh    r0, [r2, #TextInterpreter_StartPosX]
	ldrb    r0, [r1, #0x3]
	strh    r0, [r2, #TextInterpreter_StartPosY]
	ldrb    r0, [r1, #0x4]
	strb    r0, [r2, #TextInterpreter_14]
	ldrb    r0, [r1, #0x5]
	strb    r0, [r2, #TextInterpreter_15]
	ldrb    r0, [r1, #0x6]
	strb    r0, [r2, #TextInterpreter_16]
	ldrb    r0, [r1, #0x7]

	ldr     r1, [sp, #0x24]
	strb    r0, [r2, #TextInterpreter_17]

	mov     r0, #0x0
	strh    r0, [r2, #TextInterpreter_18]
	strb    r0, [r2, #TextInterpreter_1a]
	mov     r0, #0xff
	strb    r0, [r2, #TextInterpreter_1b]

	ldr     r2, [sp, #0x28]
	add     r0, sp, #0x0
	bl      InitTextInterpreter

	add     sp, #0x1c
	pop     {pc}
@ 0x201d786

.align 2
.pool



.thumb
.globl Function_201d78c
Function_201d78c: @ 201d78c :thumb
	push    {lr}
	add     sp, #-0x1c
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	add     r2, sp, #0x0
	strb    r1, [r2, #0x9]
	ldr     r0, [sp, #0x20]
	strb    r3, [r2, #0xa]
	strb    r0, [r2, #0xb]
	strh    r3, [r2, #0xc]
	strh    r0, [r2, #0xe]

	ldr     r0, =Unknown_2100840
	lsl     r1, r1, #3
	ldr     r0, [r0] @ Unknown_2100840
	add     r1, r0, r1
	ldrb    r0, [r1, #0x2]
	strh    r0, [r2, #0x10]
	ldrb    r0, [r1, #0x3]
	strh    r0, [r2, #0x12]
	ldrb    r0, [r1, #0x4]
	ldr     r1, [sp, #0x28]
	strb    r0, [r2, #0x14]
	lsr     r0, r1, #16
	strb    r0, [r2, #0x15]
	lsr     r0, r1, #8
	strb    r0, [r2, #0x17]
	strb    r1, [r2, #0x16]
	mov     r0, #0x0
	strh    r0, [r2, #0x18]
	strb    r0, [r2, #0x1a]
	mov     r0, #0xff
	strb    r0, [r2, #0x1b]
	ldr     r1, [sp, #0x24]
	ldr     r2, [sp, #0x2c]
	add     r0, sp, #0x0
	bl      InitTextInterpreter

	add     sp, #0x1c
	pop     {pc}
@ 0x201d7da

.align 2
.pool



.thumb
.globl Function_201d7e0
Function_201d7e0: @ 201d7e0 :thumb
	push    {lr}
	add     sp, #-0x1c

	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	add     r2, sp, #0x0
	strb    r1, [r2, #0x9]
	ldr     r0, [sp, #0x20]
	strb    r3, [r2, #0xa]
	strb    r0, [r2, #0xb]
	strh    r3, [r2, #0xc]
	strh    r0, [r2, #0xe]
	ldr     r0, [sp, #0x2c]
	strh    r0, [r2, #0x10]
	ldr     r0, [sp, #0x30]
	strh    r0, [r2, #0x12]

	ldr     r0, =Unknown_2100840
	ldr     r3, [r0] @ Unknown_2100840
	lsl     r0, r1, #3
	add     r0, r3, r0
	ldrb    r0, [r0, #0x4]
	ldr     r1, [sp, #0x28]
	strb    r0, [r2, #0x14]
	lsr     r0, r1, #16
	strb    r0, [r2, #0x15]
	lsr     r0, r1, #8
	strb    r0, [r2, #0x17]
	strb    r1, [r2, #0x16]

	mov     r0, #0x0
	strh    r0, [r2, #0x18]
	strb    r0, [r2, #0x1a]

	mov     r0, #0xff
	strb    r0, [r2, #0x1b]

	ldr     r1, [sp, #0x24]
	ldr     r2, [sp, #0x34]
	add     r0, sp, #0x0
	bl      InitTextInterpreter

	add     sp, #0x1c
	pop     {pc}
@ 0x201d82e

.align 2
.pool



/* Input:
r0: Ptr to data for TextInterpreter_Pointer to TextInterpreter_1c
r2: FunctionPtr
*/
thumb_func_start InitTextInterpreter
InitTextInterpreter: @ 201d834 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, =Unknown_2100840
	mov     r6, r1
	ldr     r0, [r0] @ Unknown_2100840
	mov     r5, r2
	cmp     r0, #0x0
	bne     branch_201d848

	mov     r0, #0xff
	pop     {r3-r7,pc}

branch_201d848: @ 201d848 :thumb
	mov     r0, #0x0
	mov     r1, #TextInterpreter_Size
	bl      malloc
	mov     r4, r0

	mov     r1, #0x1
	add     r0, #TextInterpreter_27
	strb    r1, [r0, #TextInterpreter_27_0]

	mov     r0, r4
	mov     r3, #0x0
	add     r0, #TextInterpreter_28_StateNr
	strb    r3, [r0] @ TextInterpreter_28_StateNr

	mov     r0, r4
	add     r0, #TextInterpreter_29
	ldrb    r2, [r0] @ TextInterpreter_29
	mov     r0, #TextInterpreter_29_7f
	bic     r2, r0
	lsl     r0, r6, #24
	lsr     r1, r0, #24
	mov     r0, #TextInterpreter_29_7f
	and     r0, r1
	mov     r1, r2
	orr     r1, r0
	mov     r0, r4
	add     r0, #TextInterpreter_29
	strb    r1, [r0] @ TextInterpreter_29

	mov     r0, r4
	add     r0, #TextInterpreter_2a
	strb    r3, [r0] @ TextInterpreter_2a
	mov     r0, r4
	add     r0, #TextInterpreter_2b
	strb    r3, [r0, #TextInterpreter_2b_0]
	mov     r0, r4
	add     r0, #TextInterpreter_2d
	strb    r3, [r0, #TextInterpreter_2d_0]
	mov     r1, r3
branch_201d890: @ 201d890 :thumb
	add     r0, r4, r3
	add     r0, #0x20
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r1, [r0, #0x0]
	cmp     r3, #0x7
	blt     branch_201d890

	mov     r3, r7
	ldmia   r3!, {r0,r1}
	mov     r2, r4
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]

	ldr     r0, [r4, #TextInterpreter_Pointer]
	bl      Function_2023e2c
	str     r0, [r4, #TextInterpreter_Pointer]

	ldr     r0, =RAM_21c04d8
	str     r5, [r4, #TextInterpreter_1c]
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_201db48
	cmp     r6, #0xff
	beq     branch_201d916

	cmp     r6, #0x0
	beq     branch_201d916

	mov     r0, r4
	add     r0, #TextInterpreter_29
	ldrb    r2, [r0] @ TextInterpreter_29
	mov     r1, #TextInterpreter_29_7f
	mov     r0, r2
	bic     r0, r1
	lsl     r1, r2, #25
	lsr     r1, r1, #25
	add     r1, #0xff
	lsl     r1, r1, #24
	lsr     r2, r1, #24
	mov     r1, #TextInterpreter_29_7f
	and     r1, r2
	orr     r1, r0
	mov     r0, r4
	add     r0, #TextInterpreter_29
	strb    r1, [r0] @ TextInterpreter_29

	mov     r0, r4
	add     r0, #TextInterpreter_29
	ldrb    r1, [r0] @ TextInterpreter_29
	mov     r0, #TextInterpreter_29_80
	mov     r2, #0x1
	orr     r1, r0
	mov     r0, r4
	add     r0, #TextInterpreter_29
	strb    r1, [r0] @ TextInterpreter_29

	ldr     r0, =ExecuteTextInterpreter+1
	mov     r1, r4
	bl      InitExecuteTextInterpreter
	mov     r1, r4
	add     r1, #TextInterpreter_2c
	strb    r0, [r1, #TextInterpreter_2c_0]
	add     r4, #TextInterpreter_2c
	ldrb    r0, [r4, #TextInterpreter_2c_0]
	pop     {r3-r7,pc}

branch_201d916: @ 201d916 :thumb
	mov     r0, r4
	add     r0, #TextInterpreter_29
	ldrb    r1, [r0] @ TextInterpreter_29
	mov     r0, #TextInterpreter_29_7f
	mov     r5, #0x0
	bic     r1, r0
	mov     r0, r4
	add     r0, #TextInterpreter_29
	strb    r1, [r0] @ TextInterpreter_29

	mov     r0, r4
	add     r0, #TextInterpreter_29
	ldrb    r1, [r0] @ TextInterpreter_29
	mov     r0, #TextInterpreter_29_80
	bic     r1, r0
	mov     r0, r4
	add     r0, #TextInterpreter_29
	strb    r1, [r0] @ TextInterpreter_29

	ldrb    r0, [r7, #0x15]
	ldrb    r1, [r7, #0x16]
	ldrb    r2, [r7, #0x17]
	bl      Function_201d9fc
	mov     r7, #0x1
	lsl     r7, r7, #10
branch_201d946: @ 201d946 :thumb
	mov     r0, r4          @ Ptr to TextInterpreter
	bl      Call_Call_TextInterpreter
	cmp     r0, #0x1
	beq     branch_201d956

	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blo     branch_201d946

branch_201d956: @ 201d956 :thumb
	cmp     r6, #0xff
	beq     branch_201d960
	ldr     r0, [r4, #TextInterpreter_4]
	bl      Function_201a954
branch_201d960: @ 201d960 :thumb

	mov     r0, r4
	bl      Function_201dbd8

	mov     r0, r4
	bl      free
	mov     r0, #0x8
	pop     {r3-r7,pc}
@ 0x201d970

.align 2
.pool
thumb_func_end InitTextInterpreter



/* Input:
r1: TextInterpreter
*/
thumb_func_start ExecuteTextInterpreter
ExecuteTextInterpreter: @ 201d97c :thumb @ added as taks to tasklist (callec once per frame?) TODO make it faster BREAKPOINT
	push    {r4,lr}

	ldr     r0, =RAM_21c04d8
	mov     r4, r1
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_201d9e2

	mov     r0, r4
	add     r0, #TextInterpreter_2d
	ldrb    r0, [r0, #TextInterpreter_2d_0]
	cmp     r0, #0x0
	bne     branch_201d9d6

	mov     r0, #0x0
	strh    r0, [r4, #TextInterpreter_2e]

	ldrb    r0, [r4, #TextInterpreter_15]
	ldrb    r1, [r4, #TextInterpreter_16]
	ldrb    r2, [r4, #TextInterpreter_17]
	bl      Function_201d9fc

	mov     r0, r4          @ Ptr to TextInterpreter
	bl      Call_Call_TextInterpreter

	cmp     r0, #TextInterpreterReturn_NormalCharacter
	beq     branch_201d9b4
	cmp     r0, #TextInterpreterReturn_EndOfString
	beq     branch_removeTextInterpreterTask
	cmp     r0, #TextInterpreterReturn_3
	beq     branch_201d9ba

	pop     {r4,pc}

branch_201d9b4: @ 201d9b4 :thumb
	ldr     r0, [r4, #TextInterpreter_4]
	bl      Function_201a954

branch_201d9ba: @ 201d9ba :thumb
	ldr     r2, [r4, #TextInterpreter_1c]
	cmp     r2, #0x0
	beq     branch_201d9e2

	ldrh    r1, [r4, #TextInterpreter_2e]
	mov     r0, r4
	blx     r2
	add     r4, #TextInterpreter_2d
	strb    r0, [r4, #TextInterpreter_2d_0]
	pop     {r4,pc}

branch_removeTextInterpreterTask: @ 201d9cc :thumb
	add     r4, #TextInterpreter_2c
	ldrb    r0, [r4, #TextInterpreter_2c_0]
	bl      RemoveTextInterpreterTaskFromTaskList
	pop     {r4,pc}

branch_201d9d6: @ 201d9d6 :thumb
	ldrh    r1, [r4, #TextInterpreter_2e]
	ldr     r2, [r4, #TextInterpreter_1c]
	mov     r0, r4
	blx     r2
	add     r4, #TextInterpreter_2d
	strb    r0, [r4, #TextInterpreter_2d_0]

branch_201d9e2: @ 201d9e2 :thumb
	pop     {r4,pc}
@ 0x201d9e4

.pool
thumb_func_end ExecuteTextInterpreter


/* Input:
r0: Ptr to TextInterpreter

Return:
r0: TextInterpreterReturn
*/
thumb_func_start Call_Call_TextInterpreter
Call_Call_TextInterpreter: @ 201d9e8 :thumb
	push    {r4,lr}
	mov     r4, r0
branch_201d9ec: @ 201d9ec :thumb
	ldrb    r0, [r4, #TextInterpreter_9]
	mov     r1, r4          @ Ptr to TextInterpreter
	bl      Call_TextInterpreter
	cmp     r0, #TextInterpreterReturn_2
	beq     branch_201d9ec
@    cmp     r0, #TextInterpreterReturn_EndOfString
@	bne     branch_201d9ec

	pop     {r4,pc}
thumb_func_end Call_Call_TextInterpreter
