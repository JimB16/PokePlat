
/* Input:
r1: =JumpTable_ScriptHandler
r2: Nr of ScriptCmds

Return:
r0: Ptr to ScriptHandler-Struct
*/
thumb_func_start InitScriptHandler
InitScriptHandler: @ 203e724 :thumb
	push    {r3,r4}

	mov     r3, #0x0 @ ScriptHandler_StateOff
	strb    r3, [r0, #ScriptHandler_State]
	str     r3, [r0, #ScriptHandler_Pointer]
	strb    r3, [r0, #ScriptHandler_0]
	str     r3, [r0, #ScriptHandler_PtrToFct]
	str     r1, [r0, #ScriptHandler_PtrToJumpTable]
	str     r2, [r0, #ScriptHandler_NrOfCmds]

	mov     r1, r0
	mov     r4, r3
branch_203e738: @ 203e738 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	str     r4, [r1, #ScriptHandler_64]
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r3, #0x4
	blo     branch_203e738

	mov     r2, r0
	mov     r1, #0x0
branch_203e746: @ 203e746 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r1, [r2, #ScriptHandler_c]
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r4, #0x14
	blo     branch_203e746

	str     r1, [r0, #ScriptHandler_74]
	pop     {r3,r4}

	bx      lr
thumb_func_end InitScriptHandler


.align 2, 0
.thumb
Function_203e758: @ 203e758 :thumb
	str     r1, [r0, #0x8]
	mov     r1, #0x1
	strb    r1, [r0, #0x1]
	mov     r0, r1
	bx      lr
@ 0x203e762


/* Input:
r0: Ptr to ScriptHandler-Struct
r1: Address of Function
*/
thumb_func_start ScriptHandler_AddFunction
ScriptHandler_AddFunction: @ 203e764 :thumb
	mov     r2, #ScriptHandler_StateExecFct
	strb    r2, [r0, #ScriptHandler_State]
	str     r1, [r0, #ScriptHandler_PtrToFct]
	bx      lr
thumb_func_end ScriptHandler_AddFunction


/* Gets called when ScriptCmd_End is reached
Input:
r0: Ptr to ScriptHandler-Struct
*/
thumb_func_start EndScripthandling
EndScripthandling: @ 203e76c :thumb
	mov     r1, #0x0 @ ScriptHandler_StateOff
	strb    r1, [r0, #ScriptHandler_State]
	str     r1, [r0, #ScriptHandler_Pointer]
	bx      lr
thumb_func_end EndScripthandling


.thumb
Function_203e774: @ 203e774 :thumb
	str     r1, [r0, #0x74]
	bx      lr
@ 0x203e778


/* Input:
r0: Ptr to ScriptHandler-Struct
*/
thumb_func_start ScriptHandler
ScriptHandler: @ 203e778 :thumb
	push    {r4,lr}

	mov     r4, r0
	ldrb    r1, [r4, #ScriptHandler_State]
	cmp     r1, #ScriptHandler_StateOff
	bne     branch_203e786
	mov     r0, #0x0

	pop     {r4,pc}

branch_203e786: @ 203e786 :thumb
	beq     branch_203e792
	cmp     r1, #ScriptHandler_StateOn
	beq     branch_203e7ae
	cmp     r1, #ScriptHandler_StateExecFct
	beq     branch_203e796
	b       branch_203e7e0

branch_203e792: @ 203e792 :thumb
	mov     r0, #0x0

	pop     {r4,pc}

branch_203e796: @ 203e796 :thumb
	ldr     r1, [r4, #ScriptHandler_PtrToFct]
	cmp     r1, #0x0
	beq     branch_203e7aa
	blx     r1
	cmp     r0, #0x1
	bne     branch_203e7a6
	mov     r0, #ScriptHandler_StateOn
	strb    r0, [r4, #ScriptHandler_State]
branch_203e7a6: @ 203e7a6 :thumb
	mov     r0, #0x1

	pop     {r4,pc}

branch_203e7aa: @ 203e7aa :thumb
	mov     r0, #ScriptHandler_StateOn
	strb    r0, [r4, #ScriptHandler_State]
branch_203e7ae: @ 203e7ae :thumb
	ldr     r0, [r4, #ScriptHandler_Pointer]
	cmp     r0, #0x0
	bne     branch_LoadScriptCmd
	mov     r0, #ScriptHandler_StateOff
	strb    r0, [r4, #ScriptHandler_State]

	pop     {r4,pc}

branch_LoadScriptCmd: @ 203e7ba :thumb
	mov     r0, r4
	bl      ScriptHandler_LoadHWord             @ Load current ScriptCmd
	mov     r1, r0
	ldr     r0, [r4, #ScriptHandler_NrOfCmds]   @ =Nr of ScriptCmds (initialised in InitScriptHandler)
	cmp     r1, r0                              @ Is ScriptCmd Nr allowed (lower than maximum Nr of ScriptCmds)
	blo     branch_ExecuteScriptCmd

	bl      ErrorHandling @ ErrorHandling

	mov     r0, #ScriptHandler_StateOff
	strb    r0, [r4, #ScriptHandler_State]

	pop     {r4,pc}

branch_ExecuteScriptCmd: @ 203e7d2 :thumb
	ldr     r2, [r4, #ScriptHandler_PtrToJumpTable]         @ =JumpTable_Scripthandler (initialised in InitScriptHandler)
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	mov     r0, r4
	blx     r1                                  @ Call the ScriptCmd

	cmp     r0, #0x1
	bne     branch_203e7ae
branch_203e7e0: @ 203e7e0 :thumb
	mov     r0, #0x1

	pop     {r4,pc}
thumb_func_end ScriptHandler


/* Input:
r0: Ptr to ScriptHandler
r1: [ScriptHandler_Pointer]
*/
thumb_func_start ScriptHandler_PushPointerOnStack
ScriptHandler_PushPointerOnStack: @ 203e7e4 :thumb
	ldrb    r3, [r0, #ScriptHandler_0]
	add     r2, r3, #0x1
	cmp     r2, #ScriptHandler_MaxStackDepth
	blt     branch_203e7f0
	mov     r0, #0x1
	bx      lr

branch_203e7f0: @ 203e7f0 :thumb
	lsl     r2, r3, #2
	add     r2, r0, r2
	str     r1, [r2, #ScriptHandler_Stack_c]
	ldrb    r1, [r0, #ScriptHandler_0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #ScriptHandler_0]
	mov     r0, #0x0
	bx      lr
thumb_func_end ScriptHandler_PushPointerOnStack


/* Input:
r0: Ptr to ScriptHandler
*/
thumb_func_start ScriptHandler_PullPointerFromStack
ScriptHandler_PullPointerFromStack: @ 203e800 :thumb
	ldrb    r1, [r0, #ScriptHandler_0]
	cmp     r1, #0x0
	bne     branch_203e80a
	mov     r0, #0x0
	bx      lr

branch_203e80a: @ 203e80a :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r0, #ScriptHandler_0]
	ldrb    r1, [r0, #ScriptHandler_0]
	lsl     r1, r1, #2
	add     r0, r0, r1
	ldr     r0, [r0, #ScriptHandler_Stack_c]
	bx      lr
thumb_func_end ScriptHandler_PullPointerFromStack


/* saves current Pointer for the ScriptHandler
Input:
r0: Ptr to ScriptHandler-Struct
*/
thumb_func_start SetScriptHandlerPointer
SetScriptHandlerPointer: @ 203e818 :thumb
	str     r1, [r0, #ScriptHandler_Pointer]
	bx      lr
thumb_func_end SetScriptHandlerPointer


/* Input:
r0: Ptr to ScriptHandler
r1: Ptr to ScriptAdr
*/
thumb_func_start ScriptHandler_BranchLink
ScriptHandler_BranchLink: @ 203e81c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #ScriptHandler_Pointer]
	bl      ScriptHandler_PushPointerOnStack
	str     r4, [r5, #ScriptHandler_Pointer]
	pop     {r3-r5,pc}
thumb_func_end ScriptHandler_BranchLink


thumb_func_start ScriptHandler_ReturnFromCall
ScriptHandler_ReturnFromCall: @ 203e82c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_PullPointerFromStack
	str     r0, [r4, #ScriptHandler_Pointer]
	pop     {r4,pc}
thumb_func_end ScriptHandler_ReturnFromCall


/* Input:
r0: Ptr to ScriptHandler-Struct
*/
thumb_func_start ScriptHandler_LoadHWord
ScriptHandler_LoadHWord: @ 203e838 :thumb
	ldr     r1, [r0, #ScriptHandler_Pointer]
	add     r3, r1, #0x1
	str     r3, [r0, #ScriptHandler_Pointer]
	ldrb    r2, [r1, #0x0]

	add     r1, r3, #0x1
	str     r1, [r0, #ScriptHandler_Pointer]
	ldrb    r0, [r3, #0x0]

	lsl     r0, r0, #8
	add     r0, r2, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
thumb_func_end ScriptHandler_LoadHWord


/* Input:
r0: Ptr to ScriptHandler-Struct
*/
thumb_func_start ScriptHandler_LoadWord
ScriptHandler_LoadWord: @ 203e850 :thumb
	push    {r4,r5}
	ldr     r1, [r0, #ScriptHandler_Pointer]
	add     r2, r1, #0x1
	str     r2, [r0, #ScriptHandler_Pointer]
	ldrb    r3, [r1, #0x0]

	add     r1, r2, #0x1
	add     r5, r1, #0x1
	str     r1, [r0, #ScriptHandler_Pointer]
	ldrb    r2, [r2, #0x0]

	add     r4, r5, #0x1
	str     r5, [r0, #ScriptHandler_Pointer]
	ldrb    r1, [r1, #0x0]

	str     r4, [r0, #ScriptHandler_Pointer]
	ldrb    r0, [r5, #0x0]

	mov     r4, #0x0
	add     r0, r4, r0
	lsl     r0, r0, #8
	add     r0, r0, r1
	lsl     r0, r0, #8
	add     r0, r0, r2
	lsl     r0, r0, #8
	add     r0, r0, r3
	pop     {r4,r5}
	bx      lr
thumb_func_end ScriptHandler_LoadWord


.thumb
.globl Function_203e880
Function_203e880: @ 203e880 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	bl      Function_203ea28
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_203ea68
	ldr     r1, [pc, #0xc] @ 0x203e8ac, (=Function_203e950+1)
	mov     r0, r5
	mov     r2, r4
	bl      Function_2050904
	pop     {r3-r7,pc}
@ 0x203e8aa

.align 2
.word Function_203e950+1 @ 0x203e8ac



.thumb
.globl Function_203e8b0
Function_203e8b0: @ 203e8b0 :thumb
	push    {r4-r6,lr}
	ldr     r0, [r0, #0x10]
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	bl      Function_2050a64
	ldr     r2, [sp, #0x1c]
	mov     r1, #0x1c
	mov     r3, r2
	add     r0, #0x50
	mul     r3, r1
	add     r1, r0, r3
	str     r4, [r0, r3]
	ldr     r0, [sp, #0x10]
	str     r6, [r1, #0x4]
	str     r0, [r1, #0x8]
	ldr     r0, [sp, #0x14]
	str     r0, [r1, #0xc]
	ldr     r0, [sp, #0x18]
	str     r0, [r1, #0x10]
	str     r5, [r1, #0x14]
	pop     {r4-r6,pc}
@ 0x203e8de


.align 2, 0
.thumb
.globl Function_203e8e0
Function_203e8e0: @ 203e8e0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r7, r1
	str     r2, [sp, #0x4]
	mov     r5, r3
	bl      LoadOverWorldDataAdress
	str     r0, [sp, #0x8]
	bl      Function_203ea28
	mov     r4, r0
	ldr     r0, [sp, #0x8]
	ldr     r3, [sp, #0x4]
	mov     r1, r4
	mov     r2, r7
	str     r5, [sp, #0x0]
	bl      Function_203ea68
	ldr     r1, [pc, #0xc] @ 0x203e914, (=Function_203e950+1)
	mov     r0, r6
	mov     r2, r4
	bl      Function_2050944
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x203e914

.word Function_203e950+1 @ 0x203e914



.thumb
Function_203e918: @ 203e918 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	bl      LoadOverWorldDataAdress
	str     r0, [sp, #0x4]
	bl      Function_203ea28
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_203ea68
	ldr     r1, [pc, #0xc] @ 0x203e94c, (=Function_203e950+1)
	mov     r0, r5
	mov     r2, r4
	bl      Function_2050924
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x203e94c

.word Function_203e950+1 @ 0x203e94c



.thumb
Function_203e950: @ 203e950 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_2050a64
	mov     r4, r0
	mov     r0, r5
	bl      LoadOverWorldDataAdress
	ldrb    r1, [r4, #0x4]
	str     r0, [sp, #0x0]
	cmp     r1, #0x0
	beq     branch_203e970
	cmp     r1, #0x1
	beq     branch_203e9a6
	b       branch_203ea22

branch_203e970: @ 203e970 :thumb
	ldrh    r1, [r4, #0xa]
	bl      Function_203eab8
	str     r0, [r4, #0x38]
	mov     r0, #0x1
	strb    r0, [r4, #0x9]
	mov     r0, #0x8
	mov     r1, #0x40
	mov     r2, #0xb
	bl      Function_200b368
	str     r0, [r4, #0x40]
	mov     r0, #0x1
	lsl     r0, r0, #10
	mov     r1, #0xb
	bl      Function_2023790
	str     r0, [r4, #0x44]
	mov     r0, #0x1
	lsl     r0, r0, #10
	mov     r1, #0xb
	bl      Function_2023790
	str     r0, [r4, #0x48]
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x4]
branch_203e9a6: @ 203e9a6 :thumb
	mov     r0, #0x0
	mov     r7, r4
	str     r0, [sp, #0x4]
	mov     r5, r4
	add     r7, #0x9
branch_203e9b0: @ 203e9b0 :thumb
	ldr     r6, [r5, #0x38]
	cmp     r6, #0x0
	beq     branch_203e9da

	mov     r0, r6
	bl      ScriptHandler
	cmp     r0, #0x0
	bne     branch_203e9da
	mov     r0, r6
	bl      Function_203ea50
	ldrb    r0, [r4, #0x9]
	cmp     r0, #0x0
	bne     branch_203e9d0
	bl      ErrorHandling
branch_203e9d0: @ 203e9d0 :thumb

	mov     r0, #0x0
	str     r0, [r5, #0x38]
	ldrb    r0, [r7, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r7, #0x0]
branch_203e9da: @ 203e9da :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x2
	blt     branch_203e9b0
	ldrb    r0, [r4, #0x9]
	cmp     r0, #0x0
	bne     branch_203ea22
	mov     r0, r4
	add     r0, #0xa4
	ldr     r5, [r0, #0x0]
	ldr     r0, [r4, #0x40]
	bl      Function_200b3f0
	ldr     r0, [r4, #0x44]
	bl      Function_20237bc
	ldr     r0, [r4, #0x48]
	bl      Function_20237bc
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      free
	cmp     r5, #0x0
	beq     branch_203ea1c
	ldr     r0, [sp, #0x0]
	blx     r5
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_203ea1c: @ 203ea1c :thumb
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_203ea22: @ 203ea22 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x203ea28


.thumb
Function_203ea28: @ 203ea28 :thumb
	push    {r4,lr}

	mov     r0, #0xb
	mov     r1, #0xdc
	bl      malloc
	mov     r4, r0
	bne     branch_203ea3a
	bl      ErrorHandling
branch_203ea3a: @ 203ea3a :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0xdc
	blx     Call_FillMemWithValue
	ldr     r0, [pc, #0x4] @ 0x203ea4c, (=0x3643f)
	str     r0, [r4, #0x0]
	mov     r0, r4

	pop     {r4,pc}
@ 0x203ea4c

.word 0x3643f @ 0x203ea4c



.thumb
Function_203ea50: @ 203ea50 :thumb
	push    {r4,lr}

	mov     r4, r0
	ldr     r0, [r4, #0x78]
	bl      Function_200b190
	ldr     r0, [r4, #0x7c]
	bl      free
	mov     r0, r4
	bl      free

	pop     {r4,pc}
@ 0x203ea68


.thumb
Function_203ea68: @ 203ea68 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x36
	mov     r4, r2
	mov     r6, r3
	bl      Function_203ef60
	str     r0, [sp, #0x0]
	ldr     r0, [r7, #0x3c]
	bl      GetSpriteFaceDirection
	str     r0, [r5, #0x28]
	str     r6, [r5, #0x2c]
	ldr     r0, [sp, #0x18]
	strh    r4, [r5, #0xa]
	str     r0, [r5, #0x34]
	cmp     r6, #0x0
	beq     branch_203ea9a
	mov     r0, r6
	bl      GetSpriteID
	ldr     r1, [sp, #0x0]
	strh    r0, [r1, #0x0]
branch_203ea9a: @ 203ea9a :thumb
	mov     r0, #0x7d
	lsl     r0, r0, #6
	cmp     r4, r0
	blo     branch_203eab0
	ldr     r0, [pc, #0x10] @ 0x203eab4, (=0x225f)
	cmp     r4, r0
	bhi     branch_203eab0
	mov     r0, r5
	mov     r1, r4
	bl      Function_203f404
branch_203eab0: @ 203eab0 :thumb

	pop     {r3-r7,pc}
@ 0x203eab2

.align 2
.word 0x225f @ 0x203eab4



/* Input:
r0: OverWorldDataAdress
*/
.thumb
Function_203eab8: @ 203eab8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1

	mov     r0, #0xb
	mov     r1, #ScriptHandler_Size
	bl      malloc
	mov     r4, r0          @ Ptr to ScriptHandler-Struct
	bne     branch_203eace
	bl      ErrorHandling
branch_203eace: @ 203eace :thumb

	ldr     r2, =NrOfScriptCmds                @ load Nr of ScriptCmds
	ldr     r1, =JumpTable_ScriptHandler
	ldr     r2, [r2]
	mov     r0, r4
	bl      InitScriptHandler

	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, #0x0
	bl      Function_203eaf4

	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x203eaea

.align 2
.pool



/* Input:
r0: OverWorldDataAdress
r1: ScriptHandler-Struct
*/
.thumb
Function_203eaf4: @ 203eaf4 :thumb
	push    {r4-r6,lr}

	mov     r4, r1
	mov     r3, r4
	mov     r5, r0
	add     r3, #ScriptHandler_80
	str     r5, [r3]
	bl      Function_203eb20
	mov     r6, r0

	ldr     r1, [r4, #ScriptHandler_7c]
	mov     r0, r4
	bl      Function_203e758

	mov     r0, r4
	mov     r1, r6
	bl      Function_203f0e4

	ldr     r1, [r5, #OverWorldData_10]
	mov     r0, r4
	bl      Function_203e774

	pop     {r4-r6,pc}
@ 0x203eb20


.thumb
Function_203eb20: @ 203eb20 :thumb
	push    {r3-r5,lr}
	ldr     r3, [pc, #0x2e4] @ 0x203ee08, (=0x28fa)
	mov     r4, r2
	cmp     r4, r3
	blo     branch_203eb3e
	ldr     r2, [pc, #0x2e0] @ 0x203ee0c, (=0x1f3)
	mov     r3, r2
	add     r3, #0x2a
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x2d0] @ 0x203ee08, (=0x28fa)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203eb3e: @ 203eb3e :thumb
	mov     r2, r3
	sub     r2, #0x28
	cmp     r4, r2
	blo     branch_203eb5a
	mov     r2, #0x7d
	lsl     r2, r2, #2
	mov     r3, #0x10
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x2bc] @ 0x203ee10, (=0x28d2)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203eb5a: @ 203eb5a :thumb
	mov     r2, r3
	sub     r2, #0x5a
	cmp     r4, r2
	blo     branch_203eb76
	mov     r2, #0x19
	lsl     r2, r2, #4
	mov     r3, #0xcb
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x2a4] @ 0x203ee14, (=0x28a0)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203eb76: @ 203eb76 :thumb
	sub     r3, #0xbe
	cmp     r4, r3
	blo     branch_203eb90
	mov     r3, #0x8a
	ldr     r2, [pc, #0x298] @ 0x203ee18, (=0x41b)
	lsl     r3, r3, #2
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x294] @ 0x203ee1c, (=0x283c)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203eb90: @ 203eb90 :thumb
	ldr     r3, [pc, #0x28c] @ 0x203ee20, (=0x27d8)
	cmp     r4, r3
	blo     branch_203ebaa
	ldr     r2, [pc, #0x28c] @ 0x203ee24, (=0x197)
	mov     r3, r2
	sub     r3, #0x1c
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x27c] @ 0x203ee20, (=0x27d8)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ebaa: @ 203ebaa :thumb
	mov     r2, r3
	sub     r2, #0x32
	cmp     r4, r2
	blo     branch_203ebc4
	ldr     r2, [pc, #0x274] @ 0x203ee28, (=0x45c)
	ldr     r3, [pc, #0x274] @ 0x203ee2c, (=0x26d)
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x274] @ 0x203ee30, (=0x27a6)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ebc4: @ 203ebc4 :thumb
	mov     r2, r3
	sub     r2, #0x64
	cmp     r4, r2
	blo     branch_203ebde
	ldr     r2, [pc, #0x264] @ 0x203ee34, (=0x45b)
	ldr     r3, [pc, #0x268] @ 0x203ee38, (=0x26e)
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x264] @ 0x203ee3c, (=0x2774)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ebde: @ 203ebde :thumb
	mov     r2, r3
	sub     r2, #0xc8
	cmp     r4, r2
	blo     branch_203ebfa
	ldr     r2, [pc, #0x258] @ 0x203ee40, (=0x199)
	mov     r3, r2
	sub     r3, #0x1c
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x250] @ 0x203ee44, (=0x2710)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ebfa: @ 203ebfa :thumb
	sub     r3, #0xfa
	cmp     r4, r3
	blo     branch_203ec14
	ldr     r2, [pc, #0x244] @ 0x203ee48, (=0x19b)
	mov     r3, r2
	sub     r3, #0x1c
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x240] @ 0x203ee4c, (=0x26de)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ec14: @ 203ec14 :thumb
	ldr     r3, [pc, #0x238] @ 0x203ee50, (=0x26ac)
	cmp     r4, r3
	blo     branch_203ec2c
	ldr     r2, [pc, #0x238] @ 0x203ee54, (=0x18d)
	mov     r3, #0xd5
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x22c] @ 0x203ee50, (=0x26ac)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ec2c: @ 203ec2c :thumb
	mov     r2, r3
	sub     r2, #0x64
	cmp     r4, r2
	blo     branch_203ec46
	mov     r2, #0xd4
	mov     r3, #0xd9
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x218] @ 0x203ee58, (=0x2648)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ec46: @ 203ec46 :thumb
	sub     r3, #0xc8
	cmp     r4, r3
	blo     branch_203ec5e
	ldr     r2, [pc, #0x20c] @ 0x203ee5c, (=0x1a6)
	add     r3, r2, #0x7
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x208] @ 0x203ee60, (=0x25e4)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ec5e: @ 203ec5e :thumb
	mov     r3, #0x96
	lsl     r3, r3, #6
	cmp     r4, r3
	blo     branch_203ec7c
	mov     r2, #0x67
	lsl     r2, r2, #2
	mov     r3, #0xd5
	bl      LoadScriptsAndMsgs
	mov     r0, #0x96
	lsl     r0, r0, #6
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ec7c: @ 203ec7c :thumb
	mov     r2, r3
	sub     r2, #0x64
	cmp     r4, r2
	blo     branch_203ec98
	ldr     r2, [pc, #0x1dc] @ 0x203ee64, (=0x1f5)
	mov     r3, r2
	add     r3, #0x2e
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x1d8] @ 0x203ee68, (=0x251c)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ec98: @ 203ec98 :thumb
	sub     r3, #0xc8
	cmp     r4, r3
	blo     branch_203ecb0
	ldr     r2, [pc, #0x1cc] @ 0x203ee6c, (=0x1aa)
	add     r3, r2, #0x6
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x1c8] @ 0x203ee70, (=0x24b8)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ecb0: @ 203ecb0 :thumb
	ldr     r3, [pc, #0x1c0] @ 0x203ee74, (=0x2454)
	cmp     r4, r3
	blo     branch_203ecca
	ldr     r2, [pc, #0x1c0] @ 0x203ee78, (=0x196)
	mov     r3, r2
	sub     r3, #0x20
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x1b0] @ 0x203ee74, (=0x2454)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ecca: @ 203ecca :thumb
	mov     r2, r3
	sub     r2, #0x64
	cmp     r4, r2
	blo     branch_203ece4
	ldr     r2, [pc, #0x1a8] @ 0x203ee7c, (=0x1a7)
	add     r3, r2, #0x7
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x1a4] @ 0x203ee80, (=0x23f0)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ece4: @ 203ece4 :thumb
	sub     r3, #0xc8
	cmp     r4, r3
	blo     branch_203ecfc
	mov     r2, #0x0
	mov     r3, #0xb
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x190] @ 0x203ee84, (=0x238c)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ecfc: @ 203ecfc :thumb
	ldr     r3, [pc, #0x188] @ 0x203ee88, (=0x2328)
	cmp     r4, r3
	blo     branch_203ed14
	mov     r2, #0xd5
	mov     r3, #0xdd
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x17c] @ 0x203ee88, (=0x2328)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ed14: @ 203ed14 :thumb
	mov     r2, r3
	sub     r2, #0x1e
	cmp     r4, r2
	blo     branch_203ed2e
	ldr     r2, [pc, #0x16c] @ 0x203ee8c, (=0x1a9)
	mov     r3, #0x7
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x168] @ 0x203ee90, (=0x230a)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ed2e: @ 203ed2e :thumb
	mov     r2, r3
	sub     r2, #0x32
	cmp     r4, r2
	blo     branch_203ed4a
	ldr     r2, [pc, #0x15c] @ 0x203ee94, (=0x1f2)
	mov     r3, r2
	add     r3, #0x29
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x154] @ 0x203ee98, (=0x22f6)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ed4a: @ 203ed4a :thumb
	mov     r2, r3
	sub     r2, #0x64
	cmp     r4, r2
	blo     branch_203ed66
	mov     r2, #0x6a
	lsl     r2, r2, #2
	add     r3, r2, #0x7
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x13c] @ 0x203ee9c, (=0x22c4)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ed66: @ 203ed66 :thumb
	sub     r3, #0xc8
	cmp     r4, r3
	blo     branch_203ed80
	ldr     r2, [pc, #0x130] @ 0x203eea0, (=0x1f1)
	mov     r3, r2
	add     r3, #0x29
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0x12c] @ 0x203eea4, (=0x2260)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203ed80: @ 203ed80 :thumb
	mov     r2, #0x7d
	lsl     r2, r2, #6
	cmp     r4, r2
	blo     branch_203eda0
	mov     r2, #0x66
	lsl     r2, r2, #2
	mov     r3, r2
	sub     r3, #0x1c
	bl      LoadScriptsAndMsgs
	mov     r0, #0x7d
	lsl     r0, r0, #6
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203eda0: @ 203eda0 :thumb
	ldr     r3, [pc, #0x104] @ 0x203eea8, (=0x1b58)
	cmp     r4, r3
	blo     branch_203edbc
	mov     r2, #0x65
	lsl     r2, r2, #2
	mov     r3, r2
	sub     r3, #0x23
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0xf4] @ 0x203eea8, (=0x1b58)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203edbc: @ 203edbc :thumb
	ldr     r5, [pc, #0xec] @ 0x203eeac, (=0x1388)
	cmp     r4, r5
	blo     branch_203edd4
	ldr     r2, [pc, #0xec] @ 0x203eeb0, (=0x45a)
	mov     r3, #0xd5
	bl      LoadScriptsAndMsgs
	mov     r0, r5
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203edd4: @ 203edd4 :thumb
	ldr     r3, [pc, #0xdc] @ 0x203eeb4, (=0xbb8)
	cmp     r4, r3
	blo     branch_203edec
	ldr     r2, [pc, #0xd4] @ 0x203eeb0, (=0x45a)
	mov     r3, #0xd5
	bl      LoadScriptsAndMsgs
	ldr     r0, [pc, #0xd0] @ 0x203eeb4, (=0xbb8)
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203edec: @ 203edec :thumb
	sub     r3, #0xc8
	cmp     r4, r3
	blo     branch_203eebc
	ldr     r2, [pc, #0xc4] @ 0x203eeb8, (=0x19d)
	mov     r3, r2
	sub     r3, #0x10
	bl      LoadScriptsAndMsgs
	mov     r0, #0xaf
	lsl     r0, r0, #4
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a
@ 0x203ee08

.word 0x28fa @ 0x203ee08
.word 0x1f3 @ 0x203ee0c
.word 0x28d2 @ 0x203ee10
.word 0x28a0 @ 0x203ee14
.word 0x41b @ 0x203ee18
.word 0x283c @ 0x203ee1c
.word 0x27d8 @ 0x203ee20
.word 0x197 @ 0x203ee24
.word 0x45c @ 0x203ee28
.word 0x26d @ 0x203ee2c
.word 0x27a6 @ 0x203ee30
.word 0x45b @ 0x203ee34
.word 0x26e @ 0x203ee38
.word 0x2774 @ 0x203ee3c
.word 0x199 @ 0x203ee40
.word 0x2710 @ 0x203ee44
.word 0x19b @ 0x203ee48
.word 0x26de @ 0x203ee4c
.word 0x26ac @ 0x203ee50
.word 0x18d @ 0x203ee54
.word 0x2648 @ 0x203ee58
.word 0x1a6 @ 0x203ee5c
.word 0x25e4 @ 0x203ee60
.word 0x1f5 @ 0x203ee64
.word 0x251c @ 0x203ee68
.word 0x1aa @ 0x203ee6c
.word 0x24b8 @ 0x203ee70
.word 0x2454 @ 0x203ee74
.word 0x196 @ 0x203ee78
.word 0x1a7 @ 0x203ee7c
.word 0x23f0 @ 0x203ee80
.word 0x238c @ 0x203ee84
.word 0x2328 @ 0x203ee88
.word 0x1a9 @ 0x203ee8c
.word 0x230a @ 0x203ee90
.word 0x1f2 @ 0x203ee94
.word 0x22f6 @ 0x203ee98
.word 0x22c4 @ 0x203ee9c
.word 0x1f1 @ 0x203eea0
.word 0x2260 @ 0x203eea4
.word 0x1b58 @ 0x203eea8
.word 0x1388 @ 0x203eeac
.word 0x45a @ 0x203eeb0
.word 0xbb8 @ 0x203eeb4
.word 0x19d @ 0x203eeb8



.thumb
branch_203eebc: @ 203eebc :thumb
	lsr     r3, r5, #1
	cmp     r4, r3
	blo     branch_203eed4
	mov     r2, #0x1
	mov     r3, #0x11
	bl      LoadScriptsAndMsgs
	lsr     r0, r5, #1
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203eed4: @ 203eed4 :thumb
	lsr     r2, r2, #2
	cmp     r4, r2
	blo     branch_203eeee
	mov     r2, #0xd3
	mov     r3, #0xd5
	bl      LoadScriptsAndMsgs
	mov     r0, #0x7d
	lsl     r0, r0, #4
	sub     r0, r4, r0
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203eeee: @ 203eeee :thumb
	cmp     r4, #0x1
	blo     branch_203eefe
	bl      LoadMapLevelScriptsAndMsgs
	sub     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_203ef0a

branch_203eefe: @ 203eefe :thumb
	ldr     r2, [pc, #0x10] @ 0x203ef10, (=0x192)
	mov     r3, r2
	sub     r3, #0x2f
	bl      LoadScriptsAndMsgs
	mov     r4, #0x0
branch_203ef0a: @ 203ef0a :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x203ef0e

.align 2
.word 0x192 @ 0x203ef10



thumb_func_start LoadScriptsAndMsgs
LoadScriptsAndMsgs: @ 203ef14 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, r2
	mov     r4, r3
	mov     r0, #0xa                @ fielddata/script/scr_seq.narc
	mov     r2, #0xb
	bl      LoadFromNARC_2
	str     r0, [r5, #0x7c]

	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r2, r4
	mov     r3, #0xb
	bl      Function_200b144
	str     r0, [r5, #0x78]

	pop     {r3-r5,pc}
thumb_func_end LoadScriptsAndMsgs


thumb_func_start LoadMapLevelScriptsAndMsgs
LoadMapLevelScriptsAndMsgs: @ 203ef38 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	ldr     r0, [r5, #0x1c]
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	bl      LoadMapLevelScripts
	str     r0, [r4, #0x7c]

	ldr     r0, [r5, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      Call_GetMapTexts
	mov     r2, r0
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0xb
	bl      Function_200b144
	str     r0, [r4, #0x78]

	pop     {r3-r5,pc}
thumb_func_end LoadMapLevelScriptsAndMsgs


.thumb
Function_203ef60: @ 203ef60 :thumb
	push    {r3,lr}
	cmp     r1, #0x36
	bls     branch_203ef68
	b       branch_203f090

branch_203ef68: @ 203ef68 :thumb
	add     r2, r1, r1
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x203ef74

Jumppoints_203ef74:
.hword branch_203efe2 - Jumppoints_203ef74 - 2 @ 0x0
.hword branch_203efe6 - Jumppoints_203ef74 - 2 @ 0x1
.hword branch_203efea - Jumppoints_203ef74 - 2 @ 0x2
.hword branch_203efee - Jumppoints_203ef74 - 2 @ 0x3
.hword branch_203eff2 - Jumppoints_203ef74 - 2 @ 0x4
.hword branch_203eff6 - Jumppoints_203ef74 - 2 @ 0x5
.hword branch_203effa - Jumppoints_203ef74 - 2 @ 0x6
.hword branch_203effe - Jumppoints_203ef74 - 2 @ 0x7
.hword branch_203f002 - Jumppoints_203ef74 - 2 @ 0x8
.hword branch_203f006 - Jumppoints_203ef74 - 2 @ 0x9
.hword branch_203f00a - Jumppoints_203ef74 - 2 @ 0xa
.hword branch_203f00e - Jumppoints_203ef74 - 2 @ 0xb
.hword branch_203f012 - Jumppoints_203ef74 - 2 @ 0xc
.hword branch_203f016 - Jumppoints_203ef74 - 2 @ 0xd
.hword branch_203f01a - Jumppoints_203ef74 - 2 @ 0xe
.hword branch_203f01e - Jumppoints_203ef74 - 2 @ 0xf
.hword branch_203f022 - Jumppoints_203ef74 - 2 @ 0x10
.hword branch_203f026 - Jumppoints_203ef74 - 2 @ 0x11
.hword branch_203f02a - Jumppoints_203ef74 - 2 @ 0x12
.hword branch_203f02e - Jumppoints_203ef74 - 2 @ 0x13
.hword branch_203f032 - Jumppoints_203ef74 - 2 @ 0x14
.hword branch_203f036 - Jumppoints_203ef74 - 2 @ 0x15
.hword branch_203f03a - Jumppoints_203ef74 - 2 @ 0x16
.hword branch_203f03e - Jumppoints_203ef74 - 2 @ 0x17
.hword branch_203f042 - Jumppoints_203ef74 - 2 @ 0x18
.hword branch_203f046 - Jumppoints_203ef74 - 2 @ 0x19
.hword branch_203f04a - Jumppoints_203ef74 - 2 @ 0x1a
.hword branch_203f04e - Jumppoints_203ef74 - 2 @ 0x1b
.hword branch_203f052 - Jumppoints_203ef74 - 2 @ 0x1c
.hword branch_203f056 - Jumppoints_203ef74 - 2 @ 0x1d
.hword branch_203f05a - Jumppoints_203ef74 - 2 @ 0x1e
.hword branch_203f05e - Jumppoints_203ef74 - 2 @ 0x1f
.hword branch_203f062 - Jumppoints_203ef74 - 2 @ 0x20
.hword branch_203f066 - Jumppoints_203ef74 - 2 @ 0x21
.hword branch_203f06a - Jumppoints_203ef74 - 2 @ 0x22
.hword branch_203f06e - Jumppoints_203ef74 - 2 @ 0x23
.hword branch_203f072 - Jumppoints_203ef74 - 2 @ 0x24
.hword branch_203f076 - Jumppoints_203ef74 - 2 @ 0x25
.hword branch_203f07a - Jumppoints_203ef74 - 2 @ 0x26
.hword branch_203f07e - Jumppoints_203ef74 - 2 @ 0x27
.hword branch_203f082 - Jumppoints_203ef74 - 2 @ 0x28
.hword branch_203f086 - Jumppoints_203ef74 - 2 @ 0x29
.hword branch_203f086 - Jumppoints_203ef74 - 2 @ 0x2a
.hword branch_203f086 - Jumppoints_203ef74 - 2 @ 0x2b
.hword branch_203f086 - Jumppoints_203ef74 - 2 @ 0x2c
.hword branch_203f086 - Jumppoints_203ef74 - 2 @ 0x2d
.hword branch_203f086 - Jumppoints_203ef74 - 2 @ 0x2e
.hword branch_203f086 - Jumppoints_203ef74 - 2 @ 0x2f
.hword branch_203f086 - Jumppoints_203ef74 - 2 @ 0x30
.hword branch_203f086 - Jumppoints_203ef74 - 2 @ 0x31
.hword branch_203f086 - Jumppoints_203ef74 - 2 @ 0x32
.hword branch_203f086 - Jumppoints_203ef74 - 2 @ 0x33
.hword branch_203f086 - Jumppoints_203ef74 - 2 @ 0x34
.hword branch_203f086 - Jumppoints_203ef74 - 2 @ 0x35
.hword branch_203f086 - Jumppoints_203ef74 - 2 @ 0x36

branch_203efe2: @ 203efe2 :thumb
	add     r0, #0x10
	pop     {r3,pc}

branch_203efe6: @ 203efe6 :thumb
	add     r0, #0x14
	pop     {r3,pc}

branch_203efea: @ 203efea :thumb
	add     r0, #0x24
	pop     {r3,pc}

branch_203efee: @ 203efee :thumb
	.hword  0x1d40 @ add r0, r0, #0x5
	pop     {r3,pc}

branch_203eff2: @ 203eff2 :thumb
	.hword  0x1d80 @ add r0, r0, #0x6
	pop     {r3,pc}

branch_203eff6: @ 203eff6 :thumb
	.hword  0x1dc0 @ add r0, r0, #0x7
	pop     {r3,pc}

branch_203effa: @ 203effa :thumb
	add     r0, #0x8
	pop     {r3,pc}

branch_203effe: @ 203effe :thumb
	add     r0, #0x9
	pop     {r3,pc}

branch_203f002: @ 203f002 :thumb
	add     r0, #0xa
	pop     {r3,pc}

branch_203f006: @ 203f006 :thumb
	add     r0, #0x28
	pop     {r3,pc}

branch_203f00a: @ 203f00a :thumb
	add     r0, #0x2c
	pop     {r3,pc}

branch_203f00e: @ 203f00e :thumb
	add     r0, #0x30
	pop     {r3,pc}

branch_203f012: @ 203f012 :thumb
	add     r0, #0x34
	pop     {r3,pc}

branch_203f016: @ 203f016 :thumb
	add     r0, #0x38
	pop     {r3,pc}

branch_203f01a: @ 203f01a :thumb
	add     r0, #0x3c
	pop     {r3,pc}

branch_203f01e: @ 203f01e :thumb
	add     r0, #0x40
	pop     {r3,pc}

branch_203f022: @ 203f022 :thumb
	add     r0, #0x44
	pop     {r3,pc}

branch_203f026: @ 203f026 :thumb
	add     r0, #0x48
	pop     {r3,pc}

branch_203f02a: @ 203f02a :thumb
	add     r0, #0x4c
	pop     {r3,pc}

branch_203f02e: @ 203f02e :thumb
	add     r0, #0xa8
	pop     {r3,pc}

branch_203f032: @ 203f032 :thumb
	add     r0, #0xac
	pop     {r3,pc}

branch_203f036: @ 203f036 :thumb
	add     r0, #0xb0
	pop     {r3,pc}

branch_203f03a: @ 203f03a :thumb
	add     r0, #0xb4
	pop     {r3,pc}

branch_203f03e: @ 203f03e :thumb
	add     r0, #0xc
	pop     {r3,pc}

branch_203f042: @ 203f042 :thumb
	add     r0, #0x50
	pop     {r3,pc}

branch_203f046: @ 203f046 :thumb
	add     r0, #0x54
	pop     {r3,pc}

branch_203f04a: @ 203f04a :thumb
	add     r0, #0x58
	pop     {r3,pc}

branch_203f04e: @ 203f04e :thumb
	add     r0, #0x5c
	pop     {r3,pc}

branch_203f052: @ 203f052 :thumb
	add     r0, #0x60
	pop     {r3,pc}

branch_203f056: @ 203f056 :thumb
	add     r0, #0x64
	pop     {r3,pc}

branch_203f05a: @ 203f05a :thumb
	add     r0, #0x68
	pop     {r3,pc}

branch_203f05e: @ 203f05e :thumb
	add     r0, #0x6c
	pop     {r3,pc}

branch_203f062: @ 203f062 :thumb
	add     r0, #0x70
	pop     {r3,pc}

branch_203f066: @ 203f066 :thumb
	add     r0, #0x74
	pop     {r3,pc}

branch_203f06a: @ 203f06a :thumb
	add     r0, #0x78
	pop     {r3,pc}

branch_203f06e: @ 203f06e :thumb
	add     r0, #0x7c
	pop     {r3,pc}

branch_203f072: @ 203f072 :thumb
	add     r0, #0x80
	pop     {r3,pc}

branch_203f076: @ 203f076 :thumb
	add     r0, #0x84
	pop     {r3,pc}

branch_203f07a: @ 203f07a :thumb
	add     r0, #0xb8
	pop     {r3,pc}

branch_203f07e: @ 203f07e :thumb
	add     r0, #0xc8
	pop     {r3,pc}

branch_203f082: @ 203f082 :thumb
	add     r0, #0xd8
	pop     {r3,pc}

branch_203f086: @ 203f086 :thumb
	sub     r1, #0x29
	add     r0, #0x88
	lsl     r1, r1, #1
	add     r0, r0, r1
	pop     {r3,pc}

branch_203f090: @ 203f090 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203f098


/* Input:
r0: OverWorldData
*/
thumb_func_start ScriptHandler_ExitStandard
ScriptHandler_ExitStandard: @ 203f098 :thumb
	push    {r3-r5,lr}

	ldr     r0, [r0, #OverWorldData_10]
	mov     r5, r1
	bl      Function_2050a64

	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x14] @ 0x203f0bc, (=0x3643f)
	cmp     r1, r0
	beq     branch_203f0b0
	bl      ErrorHandling
branch_203f0b0: @ 203f0b0 :thumb

	mov     r0, r4
	mov     r1, r5
	bl      Function_203ef60

	pop     {r3-r5,pc}
@ 0x203f0ba

.align 2
.word 0x3643f @ 0x203f0bc
thumb_func_end ScriptHandler_ExitStandard



thumb_func_start ShowMenu
ShowMenu: @ 203f0c0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	bl      Function_2050a64
	mov     r4, r0

	mov     r0, r5
	bl      Function_203a9c8
	cmp     r0, #0x1
	bne     branch_203f0dc
	ldr     r0, =Function_203ab00+1
	add     r4, #0xa4
	str     r0, [r4, #0x0]
branch_203f0dc: @ 203f0dc :thumb

	pop     {r3-r5,pc}
@ 0x203f0de

.align 2
.pool
thumb_func_end ShowMenu



.thumb
Function_203f0e4: @ 203f0e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [r4, #0x8]
	lsl     r1, r1, #2
	add     r1, r2, r1
	str     r1, [r4, #0x8]
	bl      ScriptHandler_LoadWord
	ldr     r1, [r4, #0x8]
	add     r0, r1, r0
	str     r0, [r4, #0x8]
	pop     {r4,pc}
@ 0x203f0fc


thumb_func_start LoadMapLevelScripts
LoadMapLevelScripts: @ 203f0fc :thumb
	push    {r3,lr}
	bl      GetMapScripts
	mov     r1, r0
	mov     r0, #0xa            @ fielddata/script/scr_seq.narc
	mov     r2, #0xb
	bl      LoadFromNARC_2
	pop     {r3,pc}
thumb_func_end LoadMapLevelScripts


thumb_func_start Call_GetMapTexts
Call_GetMapTexts: @ 203f110 :thumb
	ldr     r3, =GetMapTexts+1
	bx      r3
@ 0x203f114

.align 2
.pool
thumb_func_end Call_GetMapTexts



/* Input:
r0: Ptr to OverWorldData
*/
thumb_func_start ScriptHandler_CheckLoadParameter
ScriptHandler_CheckLoadParameter: @ 203f118 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #OverWorldData_c]
	mov     r4, r1
	bl      LoadFlagAdress
	mov     r1, #0x1
	lsl     r1, r1, #14     @ 0x4000
	cmp     r4, r1
	bhs     branch_203f130

	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_203f130: @ 203f130 :thumb
	lsl     r1, r1, #1      @ 0x8000
	cmp     r4, r1
	bhs     branch_203f13e
	mov     r1, r4
	bl      Function_20508b8
	pop     {r3-r5,pc}

branch_203f13e: @ 203f13e :thumb
	ldr     r1, =0x7fd7
	mov     r0, r5
	sub     r1, r4, r1
	bl      ScriptHandler_ExitStandard
	pop     {r3-r5,pc}
@ 0x203f14a

.align 2
.pool
thumb_func_end ScriptHandler_CheckLoadParameter



/* Input:
r0: Ptr to OverWorldData
*/
thumb_func_start ScriptHandler_CheckSaveParameter
ScriptHandler_CheckSaveParameter: @ 203f150 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      ScriptHandler_CheckLoadParameter
	cmp     r0, #0x0
	beq     branch_203f15e
	ldrh    r4, [r0, #0x0]
branch_203f15e: @ 203f15e :thumb

	mov     r0, r4
	pop     {r4,pc}
thumb_func_end ScriptHandler_CheckSaveParameter


.align 2, 0
.thumb
Function_203f164: @ 203f164 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x10
	blo     branch_203f172
	bl      ErrorHandling
branch_203f172: @ 203f172 :thumb

	ldr     r1, [pc, #0x10] @ 0x203f184, (=0x4020)
	mov     r0, r5
	add     r1, r4, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      ScriptHandler_CheckSaveParameter
	pop     {r3-r5,pc}
@ 0x203f182

.align 2
.word 0x4020 @ 0x203f184




/* Input:
r0 = Ptr to OverWorldData
r1 = FlagNr
*/
thumb_func_start LoadFlagAdressAndCheckFlag
LoadFlagAdressAndCheckFlag: @ 203f188 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #OverWorldData_c]
	mov     r4, r1
	bl      LoadFlagAdress

	mov     r1, r4
	bl      CheckFlag
	pop     {r4,pc}
thumb_func_end LoadFlagAdressAndCheckFlag


/* LoadFlagAdressAndSetFlag
Input:
r0 = Ptr to OverWorldData
r1 = FlagNr
*/
thumb_func_start LoadFlagAdressAndSetFlag
LoadFlagAdressAndSetFlag: @ 203f19c :thumb
	push    {r4,lr}
	ldr     r0, [r0, #OverWorldData_c]
	mov     r4, r1
	bl      LoadFlagAdress

	mov     r1, r4
	bl      SetFlag
	pop     {r4,pc}
thumb_func_end LoadFlagAdressAndSetFlag


thumb_func_start LoadFlagAdressAndClearFlag
LoadFlagAdressAndClearFlag: @ 203f1b0 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #OverWorldData_c]
	mov     r4, r1
	bl      LoadFlagAdress

	mov     r1, r4
	bl      ClearFlag
	pop     {r4,pc}
thumb_func_end LoadFlagAdressAndClearFlag


.align 2, 0
.thumb
Function_203f1c4: @ 203f1c4 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #OverWorldData_c]
	bl      LoadFlagAdress
	mov     r1, #0x1
	mov     r4, r0
	bl      CalculateFlagByteAddress
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x1]
	strb    r1, [r0, #0x2]
	strb    r1, [r0, #0x3]
	strb    r1, [r0, #0x4]
	strb    r1, [r0, #0x5]
	strb    r1, [r0, #0x6]
	strb    r1, [r0, #0x7]

	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #14
	bl      Function_20508b8
	mov     r1, #0x0
	mov     r2, #0x40
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x203f1fa


.align 2, 0
.thumb
Function_203f1fc: @ 203f1fc :thumb
	push    {r3,lr}
	ldr     r0, [r0, #OverWorldData_c]
	bl      LoadFlagAdress
	mov     r1, #0xaa
	lsl     r1, r1, #4
	bl      CalculateFlagByteAddress
	mov     r2, #0x18
	mov     r1, #0x0
branch_203f210: @ 203f210 :thumb
	strb    r1, [r0, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_203f210
	pop     {r3,pc}
@ 0x203f21a


.align 2, 0
.thumb
Function_203f21c: @ 203f21c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x29
	mov     r6, r2
	mov     r7, r3
	bl      ScriptHandler_ExitStandard
	strh    r4, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x2a
	bl      ScriptHandler_ExitStandard
	strh    r6, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x2b
	bl      ScriptHandler_ExitStandard
	strh    r7, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x2c
	bl      ScriptHandler_ExitStandard
	add     r1, sp, #0x8
	ldrh    r1, [r1, #0x10]
	strh    r1, [r0, #0x0]
	pop     {r3-r7,pc}
@ 0x203f252


/* Input:
r0: Nr of SpriteScript
*/
thumb_func_start NormalizeSpriteScriptNr
NormalizeSpriteScriptNr: @ 203f254 :thumb
	ldr     r1, =5000
	cmp     r0, r1
	bhs     branch_203f264
	ldr     r1, =2999
	sub     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr

branch_203f264: @ 203f264 :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
	sub     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x203f26e

.align 2
.pool
thumb_func_end NormalizeSpriteScriptNr



.thumb
Function_203f278: @ 203f278 :thumb
	ldr     r1, [pc, #0xc] @ 0x203f288, (=0x1388)
	cmp     r0, r1
	blo     branch_203f282
	mov     r0, #0x1
	bx      lr

branch_203f282: @ 203f282 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203f286

.align 2
.word 0x1388 @ 0x203f288



.thumb
.globl Function_203f28c
Function_203f28c: @ 203f28c :thumb
	push    {r3,lr}
	mov     r1, #TRAINERDATA_BATTLETYPE2
	bl      GetNPCTrainerData
	cmp     r0, #0x0
	beq     branch_203f29c
	mov     r0, #0x1
	pop     {r3,pc}

branch_203f29c: @ 203f29c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203f2a0


thumb_func_start CheckFlag550
CheckFlag550: @ 203f2a0 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #OverWorldData_c]
	mov     r4, r1
	bl      LoadFlagAdress
	mov     r1, #0x55
	lsl     r1, r1, #4
	add     r1, r4, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      CheckFlag
	pop     {r4,pc}
thumb_func_end CheckFlag550


thumb_func_start SetFlag550
SetFlag550: @ 203f2bc :thumb
	push    {r4,lr}
	ldr     r0, [r0, #OverWorldData_c]
	mov     r4, r1
	bl      LoadFlagAdress
	mov     r1, #0x55
	lsl     r1, r1, #4
	add     r1, r4, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      SetFlag
	pop     {r4,pc}
thumb_func_end SetFlag550


thumb_func_start ClearFlag550
ClearFlag550: @ 203f2d8 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0xc]
	mov     r4, r1
	bl      LoadFlagAdress
	mov     r1, #0x55
	lsl     r1, r1, #4
	add     r1, r4, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      ClearFlag
	pop     {r4,pc}
thumb_func_end ClearFlag550


