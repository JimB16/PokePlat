

.thumb
ScriptCmd_Nop: @ 203f6c4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203f6c8


.thumb
ScriptCmd_Nop1: @ 203f6c8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x203f6cc


.thumb
ScriptCmd_End: @ 203f6cc :thumb
	push    {r3,lr}
	bl      EndScripthandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203f6d6


thumb_func_start ScriptCmd_Return2
ScriptCmd_Return2: @ 203f6d8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0

	mov     r1, r5
	add     r1, #ScriptHandler_OverWorldData
	ldr     r6, [r1]
	bl      ScriptHandler_LoadHWord
	mov     r7, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r4, r0

	mov     r0, r6
	mov     r1, r4
	bl      ScriptHandler_CheckLoadParameter
	strh    r7, [r0]

	ldr     r1, =Function_203f70c+1
	mov     r0, r5
	str     r4, [r5, #ScriptHandler_64]
	bl      ScriptHandler_AddFunction

	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x203f708

.pool
thumb_func_end ScriptCmd_Return2



.thumb
Function_203f70c: @ 203f70c :thumb
	push    {r3,lr}
	mov     r1, r0
	ldr     r1, [r1, #ScriptHandler_64]
	add     r0, #ScriptHandler_OverWorldData
	lsl     r1, r1, #16
	ldr     r0, [r0]
	lsr     r1, r1, #16
	bl      ScriptHandler_CheckLoadParameter
	ldrh    r1, [r0, #0x0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r0, #0x0]
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_203f72e
	mov     r0, #0x1
	pop     {r3,pc}

branch_203f72e: @ 203f72e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203f732


.align 2, 0
.thumb
ScriptCmd_StoreFurniture: @ 203f734 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r4]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203f74a


.align 2, 0
.thumb
Function_203f74c: @ 203f74c :thumb
	ldr     r1, [r0, #ScriptHandler_Pointer]
	add     r2, r1, #0x1
	str     r2, [r0, #ScriptHandler_Pointer]
	ldrb    r3, [r1, #0x0]
	add     r1, r2, #0x1
	str     r1, [r0, #ScriptHandler_Pointer]
	ldrb    r2, [r2, #0x0]
	lsl     r1, r3, #2
	add     r0, r0, r1
	str     r2, [r0, #0x64]

	mov     r0, #0x0
	bx      lr
@ 0x203f764


.thumb
Function_203f764: @ 203f764 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r2, [r4, #ScriptHandler_Pointer]
	add     r1, r2, #0x1
	str     r1, [r4, #ScriptHandler_Pointer]
	ldrb    r5, [r2, #0x0]
	bl      ScriptHandler_LoadWord
	lsl     r1, r5, #2
	add     r1, r4, r1
	str     r0, [r1, #0x64]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203f77e


.align 2, 0
.thumb
Function_203f780: @ 203f780 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #ScriptHandler_Pointer]
	add     r1, r2, #0x1
	str     r1, [r5, #ScriptHandler_Pointer]
	ldrb    r4, [r2, #0x0]
	bl      ScriptHandler_LoadWord
	ldrb    r1, [r0, #0x0]
	lsl     r0, r4, #2
	add     r0, r5, r0
	str     r1, [r0, #0x64]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203f79c


.thumb
Function_203f79c: @ 203f79c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadWord
	ldr     r2, [r4, #ScriptHandler_Pointer]
	add     r1, r2, #0x1
	str     r1, [r4, #ScriptHandler_Pointer]
	ldrb    r1, [r2, #0x0]
	strb    r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203f7b2


.align 2, 0
.thumb
Function_203f7b4: @ 203f7b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadWord
	ldr     r2, [r4, #ScriptHandler_Pointer]
	add     r1, r2, #0x1
	str     r1, [r4, #ScriptHandler_Pointer]
	ldrb    r1, [r2, #0x0]
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x64]
	strb    r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203f7d0


.thumb
Function_203f7d0: @ 203f7d0 :thumb
	ldr     r1, [r0, #ScriptHandler_Pointer]
	add     r2, r1, #0x1
	str     r2, [r0, #ScriptHandler_Pointer]
	ldrb    r3, [r1, #0x0]
	add     r1, r2, #0x1
	str     r1, [r0, #ScriptHandler_Pointer]
	ldrb    r1, [r2, #0x0]
	lsl     r1, r1, #2
	add     r1, r0, r1
	ldr     r2, [r1, #0x64]
	lsl     r1, r3, #2
	add     r0, r0, r1
	str     r2, [r0, #0x64]

	mov     r0, #0x0
	bx      lr
@ 0x203f7ee


.align 2, 0
.thumb
Function_203f7f0: @ 203f7f0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadWord
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadWord
	ldrb    r0, [r0, #0x0]
	strb    r0, [r4, #0x0]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203f808


/* Input:
r0 = Value_1
r1 = Value_2

Compare unsigned values r0 and r1:
if(r0 < r1) return 0;
else if(r0 == r1) return 1;
else return 2;
*/
.thumb
CompareValues: @ 203f808 :thumb
	cmp     r0, r1
	bhs     branch_203f810
	mov     r0, #0x0
	bx      lr

branch_203f810: @ 203f810 :thumb
	cmp     r0, r1
	bne     branch_203f818
	mov     r0, #0x1
	bx      lr

branch_203f818: @ 203f818 :thumb
	mov     r0, #0x2
	bx      lr
@ 0x203f81c


.thumb
Function_203f81c: @ 203f81c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	add     r1, r0, #0x1
	str     r1, [r4, #0x8]
	ldrb    r0, [r0, #0x0]
	add     r2, r1, #0x1
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x64]
	str     r2, [r4, #0x8]
	ldrb    r1, [r1, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x64]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      CompareValues
	strb    r0, [r4, #0x2]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203f84c


.thumb
Function_203f84c: @ 203f84c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	add     r1, r0, #0x1
	str     r1, [r4, #0x8]
	ldrb    r0, [r0, #0x0]
	add     r2, r1, #0x1
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x64]
	str     r2, [r4, #0x8]
	ldrb    r1, [r1, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      CompareValues
	strb    r0, [r4, #0x2]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203f872


.align 2, 0
.thumb
Function_203f874: @ 203f874 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r2, [r4, #0x8]
	add     r1, r2, #0x1
	str     r1, [r4, #0x8]
	ldrb    r1, [r2, #0x0]
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x64]
	lsl     r1, r1, #24
	lsr     r5, r1, #24
	bl      ScriptHandler_LoadWord
	ldrb    r1, [r0, #0x0]
	mov     r0, r5
	bl      CompareValues
	strb    r0, [r4, #0x2]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203f89c


.thumb
Function_203f89c: @ 203f89c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadWord
	ldr     r2, [r4, #0x8]
	ldrb    r0, [r0, #0x0]
	add     r1, r2, #0x1
	str     r1, [r4, #0x8]
	ldrb    r1, [r2, #0x0]
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r1, [r1, #0x64]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      CompareValues
	strb    r0, [r4, #0x2]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203f8c2


.align 2, 0
.thumb
Function_203f8c4: @ 203f8c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadWord
	ldr     r2, [r4, #0x8]
	ldrb    r0, [r0, #0x0]
	add     r1, r2, #0x1
	str     r1, [r4, #0x8]
	ldrb    r1, [r2, #0x0]
	bl      CompareValues
	strb    r0, [r4, #0x2]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203f8e0


.thumb
Function_203f8e0: @ 203f8e0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadWord
	ldrb    r4, [r0, #0x0]
	mov     r0, r5
	bl      ScriptHandler_LoadWord
	ldrb    r1, [r0, #0x0]
	mov     r0, r4
	bl      CompareValues
	strb    r0, [r5, #0x2]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203f8fe


.align 2, 0
.thumb
ScriptCmd_If: @ 203f900 :thumb
	push    {r3-r5,lr}
	mov     r4, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckLoadParameter
	ldrh    r5, [r0, #0x0]

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0

	mov     r0, r5
	bl      CompareValues
	strb    r0, [r4, #ScriptHandler_2]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203f92a


thumb_func_start ScriptCmd_If2
ScriptCmd_If2: @ 203f92c :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r1, r0

	ldrh    r0, [r4, #0x0]
	ldrh    r1, [r1, #0x0]
	bl      CompareValues
	strb    r0, [r5, #ScriptHandler_2]

	mov     r0, #0x0
	pop     {r3-r5,pc}
thumb_func_end ScriptCmd_If2


.thumb
Function_203f964: @ 203f964 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	add     r0, #ScriptHandler_OverWorldData
	ldr     r5, [r0]
	mov     r1, #0x7
	mov     r0, r5
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0

	mov     r0, r5
	mov     r1, #0xe
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0

	mov     r0, r7
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	bl      AllocInitScriptHandler
	str     r0, [r6, #0x0]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x203f99a


thumb_func_start ScriptCmd_CallStandard
ScriptCmd_CallStandard: @ 203f99c :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	add     r0, #ScriptHandler_OverWorldData
	ldr     r5, [r0]

	mov     r1, #0x5
	mov     r0, r5
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0

	mov     r0, r5
	mov     r1, #0x7
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0

	mov     r0, r5
	mov     r1, #0xe
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r7, r0

	ldr     r0, [sp, #0x0]
	bl      ScriptHandler_LoadHWord

	mov     r1, r0
	mov     r0, #0x1
	strb    r0, [r6, #0x0]
	mov     r0, r5
	bl      AllocInitScriptHandler
	str     r0, [r7, #0x0]

	ldrb    r0, [r4, #0x0]
	ldr     r1, =Function_203f9ec+1
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]

	ldr     r0, [sp, #0x0]
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x203f9e8

.align 2
.pool
thumb_func_end ScriptCmd_CallStandard



.thumb
Function_203f9ec: @ 203f9ec :thumb
	push    {r3,lr}
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	mov     r1, #0x5
	bl      ScriptHandler_GetSomeScriptAddresses
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_203fa02
	mov     r0, #0x1
	pop     {r3,pc}

branch_203fa02: @ 203fa02 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203fa06


thumb_func_start ScriptCmd_ExitStandard
ScriptCmd_ExitStandard: @ 203fa08 :thumb
	push    {r3,lr}
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	mov     r1, #0x5
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, #0x0
	strb    r1, [r0, #0x0]

	mov     r0, r1
	pop     {r3,pc}
thumb_func_end ScriptCmd_ExitStandard


thumb_func_start ScriptCmd_Jump
ScriptCmd_Jump: @ 203fa1c :thumb
	push    {r4,lr}
	mov     r4, r0

	bl      ScriptHandler_LoadWord
	mov     r2, r0

	ldr     r1, [r4, #ScriptHandler_Pointer]
	mov     r0, r4
	add     r1, r1, r2
	bl      SetScriptHandlerPointer

	mov     r0, #0x0
	pop     {r4,pc}
thumb_func_end ScriptCmd_Jump


.thumb
Function_203fa34: @ 203fa34 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadWord
	mov     r7, r0
	ldr     r0, [r6, #0x0]
	bl      GetSpriteID
	cmp     r4, r0
	bne     branch_203fa68
	ldr     r1, [r5, #0x8]
	mov     r0, r5
	add     r1, r1, r7
	bl      SetScriptHandlerPointer
branch_203fa68: @ 203fa68 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x203fa6c


.thumb
Function_203fa6c: @ 203fa6c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x74]
	bl      Function_2050a6c
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	ldrb    r4, [r1, #0x0]
	mov     r0, r5
	bl      ScriptHandler_LoadWord
	mov     r2, r0
	cmp     r6, r4
	bne     branch_203fa96
	ldr     r1, [r5, #0x8]
	mov     r0, r5
	add     r1, r1, r2
	bl      SetScriptHandlerPointer
branch_203fa96: @ 203fa96 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x203fa9a


.align 2, 0
.thumb
Function_203fa9c: @ 203fa9c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x9
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	ldrb    r4, [r1, #0x0]
	mov     r0, r5
	bl      ScriptHandler_LoadWord
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	cmp     r0, r4
	bne     branch_203facc
	ldr     r1, [r5, #0x8]
	mov     r0, r5
	add     r1, r1, r2
	bl      SetScriptHandlerPointer
branch_203facc: @ 203facc :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x203fad0


.thumb
ScriptCmd_Call: @ 203fad0 :thumb
	push    {r4,lr}
	mov     r4, r0

	bl      ScriptHandler_LoadWord
	mov     r2, r0

	ldr     r1, [r4, #ScriptHandler_Pointer]
	mov     r0, r4
	add     r1, r1, r2
	bl      ScriptHandler_BranchLink

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203fae8


.thumb
ScriptCmd_Return: @ 203fae8 :thumb
	push    {r3,lr}
	bl      ScriptHandler_ReturnFromCall

	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203faf2


.align 2, 0
.thumb
ScriptCmd_CompareLastResultJump: @ 203faf4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	ldr     r2, [r5, #ScriptHandler_Pointer]
	add     r1, r2, #0x1
	str     r1, [r5, #ScriptHandler_Pointer]
	ldrb    r4, [r2]

	bl      ScriptHandler_LoadWord
	mov     r1, r0

	lsl     r0, r4, #1
	add     r3, r4, r0
	ldr     r0, [pc, #0x18] @ 0x203fb24, (=Unknown_20eaba6)
	ldrb    r2, [r5, #ScriptHandler_2]
	add     r0, r0, r3
	ldrb    r0, [r2, r0]
	cmp     r0, #0x1
	bne     branch_203fb20
	ldr     r2, [r5, #ScriptHandler_Pointer]
	mov     r0, r5
	add     r1, r2, r1
	bl      SetScriptHandlerPointer
branch_203fb20: @ 203fb20 :thumb

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fb24

.word Unknown_20eaba6 @ 0x203fb24



.thumb
ScriptCmd_CompareLastResultCall: @ 203fb28 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	ldr     r2, [r5, #ScriptHandler_Pointer]
	add     r1, r2, #0x1
	str     r1, [r5, #ScriptHandler_Pointer]
	ldrb    r4, [r2]
	bl      ScriptHandler_LoadWord
	mov     r1, r0

	lsl     r0, r4, #1
	add     r3, r4, r0
	ldr     r0, [pc, #0x18] @ 0x203fb58, (=Unknown_20eaba6)
	ldrb    r2, [r5, #ScriptHandler_2]
	add     r0, r0, r3
	ldrb    r0, [r2, r0]
	cmp     r0, #0x1
	bne     branch_203fb54
	ldr     r2, [r5, #ScriptHandler_Pointer]
	mov     r0, r5
	add     r1, r2, r1
	bl      ScriptHandler_BranchLink
branch_203fb54: @ 203fb54 :thumb

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fb58

.word Unknown_20eaba6 @ 0x203fb58



.thumb
ScriptCmd_SetFlag: @ 203fb5c :thumb
	push    {r4,lr}
	mov     r1, r0
	add     r1, #ScriptHandler_OverWorldData
	ldr     r4, [r1]

	bl      ScriptHandler_LoadHWord
	mov     r1, r0  @ Nr of Flag
	mov     r0, r4  @ Ptr to OverWorldData
	bl      LoadFlagAdressAndSetFlag

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203fb74


.thumb
ScriptCmd_ClearFlag: @ 203fb74 :thumb
	push    {r4,lr}

	mov     r1, r0
	add     r1, #ScriptHandler_OverWorldData
	ldr     r4, [r1]
	bl      ScriptHandler_LoadHWord

	mov     r1, r0
	mov     r0, r4
	bl      LoadFlagAdressAndClearFlag

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x203fb8c


.thumb
ScriptCmd_CheckFlag: @ 203fb8c :thumb
	push    {r3-r5,lr}
	mov     r4, r0

	mov     r1, r4
	add     r1, #ScriptHandler_OverWorldData
	ldr     r5, [r1]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	bl      LoadFlagAdressAndCheckFlag
	strb    r0, [r4, #0x2]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fba8


.thumb
Function_203fba8: @ 203fba8 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #ScriptHandler_OverWorldData
	ldr     r5, [r1]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0

	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord

	add     r4, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r4]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	ldrh    r1, [r6, #0x0]
	mov     r0, r5
	bl      LoadFlagAdressAndCheckFlag
	strh    r0, [r4, #0x0]

	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x203fbe4


.thumb
Function_203fbe4: @ 203fbe4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #ScriptHandler_OverWorldData
	ldr     r4, [r1]
	bl      ScriptHandler_LoadHWord
	add     r5, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r5]
	bl      ScriptHandler_CheckLoadParameter
	mov     r1, r0
	ldrh    r1, [r1, #0x0]
	mov     r0, r4
	bl      LoadFlagAdressAndSetFlag

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fc0a


.align 2, 0
.thumb
ScriptCmd_SetTrainerId: @ 203fc0c :thumb
	push    {r3-r5,lr}
	mov     r4, r0

	mov     r1, r4
	add     r1, #ScriptHandler_OverWorldData
	ldr     r5, [r1]
	bl      ScriptHandler_LoadHWord
	add     r4, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r4]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0

	mov     r0, r5
	bl      SetFlag550

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fc30


.thumb
Function_203fc30: @ 203fc30 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #ScriptHandler_OverWorldData
	ldr     r5, [r1]
	bl      ScriptHandler_LoadHWord
	add     r4, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r4]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r5
	bl      ClearFlag550
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fc54


.thumb
ScriptCmd_ClearTrainerId: @ 203fc54 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	mov     r1, r5
	add     r1, #ScriptHandler_OverWorldData
	ldr     r4, [r1]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter

	mov     r1, r0
	mov     r0, r4
	bl      CheckFlag550
	strb    r0, [r5, #0x2]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fc7c


.thumb
ScriptCmd_AddValue: @ 203fc7c :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r5]
	bl      ScriptHandler_CheckSaveParameter

	ldrh    r1, [r4, #0x0]
	add     r0, r1, r0
	strh    r0, [r4, #0x0]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fcac


.thumb
ScriptCmd_SubValue: @ 203fcac :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord

	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord

	add     r5, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r5]
	bl      ScriptHandler_CheckSaveParameter

	ldrh    r1, [r4, #0x0]
	sub     r0, r1, r0
	strh    r0, [r4, #0x0]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fcdc


.thumb
ScriptCmd_SetVar: @ 203fcdc :thumb
	push    {r3-r5,lr}
	mov     r4, r0

	bl      ScriptHandler_LoadHWord

	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord

	strh    r0, [r5, #0x0]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fcfe


.align 2, 0
.thumb
ScriptCmd_CopyVar: @ 203fd00 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r5]
	bl      ScriptHandler_CheckLoadParameter

	ldrh    r0, [r0, #0x0]
	strh    r0, [r4, #0x0]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fd2e


.align 2, 0
.thumb
Function_203fd30: @ 203fd30 :thumb
	push    {r3-r5,lr}
	mov     r4, r0

	bl      ScriptHandler_LoadHWord

	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord

	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter

	strh    r0, [r5, #0x0]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x203fd5c


.thumb
ScriptCmd_Message2: @ 203fd5c :thumb
	push    {r3,lr}
	ldr     r2, [r0, #ScriptHandler_Pointer]
	add     r1, r2, #0x1
	str     r1, [r0, #ScriptHandler_Pointer]
	ldrb    r2, [r2, #0x0]

	ldr     r1, [r0, #ScriptHandler_78]
	bl      Function_5_21dd498

	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203fd70


.thumb
Function_203fd70: @ 203fd70 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, #0x1
	mov     r1, #PlMsg_Narc
	mov     r2, r5
	mov     r3, #0x20
	bl      LoadFromNARC_9
	mov     r5, r0
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	bl      Function_5_21dd498
	mov     r0, r5
	bl      Function_200b190
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x203fdbc


.thumb
ScriptCmd_CopyFurniture: @ 203fdbc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, #0x1
	mov     r1, #PlMsg_Narc
	mov     r2, r5
	mov     r3, #0x20
	bl      LoadFromNARC_9
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	mov     r3, #0x1
	bl      Function_5_21dd444_InitMsgData
	mov     r0, r5
	bl      Function_200b190
	ldr     r1, [pc, #0xc] @ 0x203fe1c, (=MessageLoop+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x203fe1a

.align 2
.word MessageLoop+1 @ 0x203fe1c



.thumb
Function_203fe20: @ 203fe20 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_5_21dd4cc
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x203fe5e


.align 2, 0
.thumb
Function_203fe60: @ 203fe60 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_5_21dd4cc
	ldr     r1, [pc, #0xc] @ 0x203fea8, (=MessageLoop+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x203fea6

.align 2
.word MessageLoop+1 @ 0x203fea8



.thumb
ScriptCmd_SetBCastleFunctionId: @ 203feac :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r2, [r5, #0x8]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	mov     r1, r5
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldrb    r3, [r2, #0x0]
	add     r1, #0xac
	ldr     r2, [r1, #0x0]
	cmp     r2, #0x0
	bne     branch_203fece
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_203fece: @ 203fece :thumb
	lsl     r1, r3, #4
	add     r1, r3, r1
	add     r2, #0x90
	lsl     r1, r1, #4
	add     r4, r2, r1
	ldrh    r1, [r2, r1]
	ldr     r2, [pc, #0x4c] @ 0x203ff28, (=0xffff)
	cmp     r1, r2
	bne     branch_203ff06

	ldr     r2, [pc, #0x48] @ 0x203ff2c, (=0x265)
	mov     r0, #0x1
	mov     r1, #PlMsg_Narc
	mov     r3, #0x20
	bl      LoadFromNARC_9
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldrh    r2, [r4, #0x2]
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x1
	bl      Function_5_21dd444_InitMsgData
	mov     r0, r6
	bl      Function_200b190
	b       branch_203ff18

branch_203ff06: @ 203ff06 :thumb
	mov     r2, #0x6
	ldsh    r2, [r4, r2]
	str     r2, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	ldrh    r2, [r4, #0x2]
	ldrh    r3, [r4, #0x4]
	bl      Function_5_21dd4cc
branch_203ff18: @ 203ff18 :thumb
	ldr     r1, [pc, #0x14] @ 0x203ff30, (=MessageLoop+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x203ff26

.align 2
.word 0xffff @ 0x203ff28
.word 0x265 @ 0x203ff2c
.word MessageLoop+1 @ 0x203ff30



.thumb
ScriptCmd_BCastleFunctReturn: @ 203ff34 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r2, [r5, #0x8]
	ldr     r6, [r1, #0x0]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r4, [r2, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	ldr     r1, [r5, #0x8]
	mov     r2, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	ldrb    r3, [r1, #0x0]
	mov     r1, #0x0
	add     r0, sp, #0x4
	strb    r1, [r0, #0x0]
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0xc]
	mov     r1, r7
	bl      Function_204aee8
	mov     r6, r0
	add     r2, sp, #0x4
	ldrb    r2, [r2, #0x0]
	mov     r0, r5
	mov     r1, r6
	add     r2, r4, r2
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	mov     r3, #0x1
	bl      Function_5_21dd530
	mov     r0, r6
	bl      Function_200b3f0
	ldr     r1, [pc, #0xc] @ 0x203ffa8, (=MessageLoop+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x203ffa6

.align 2
.word MessageLoop+1 @ 0x203ffa8



.thumb
ScriptCmd_UnownMessageBox: @ 203ffac :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8

	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	add     r0, sp, #0x4
	mov     r1, r5
	bl      Function_5_21dd42c
	mov     r1, #0x3
	add     r0, sp, #0x4
	strb    r1, [r0, #0x2]
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	ldr     r1, [r5, #0x78]
	mov     r0, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_5_21dd444_InitMsgData
	ldr     r1, [pc, #0xc] @ 0x203ffe4, (=MessageLoop+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1

	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x203ffe4

.word MessageLoop+1 @ 0x203ffe4



thumb_func_start ScriptCmd_Message
ScriptCmd_Message: @ 203ffe8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0

	ldr     r2, [r4, #ScriptHandler_Pointer]
	mov     r3, #0x1
	add     r1, r2, #0x1
	str     r1, [r4, #ScriptHandler_Pointer]

	mov     r1, #0x0
	str     r1, [sp, #0x0]

	ldrb    r2, [r2, #0x0]
	ldr     r1, [r4, #ScriptHandler_78]
	bl      Function_5_21dd444_InitMsgData

	ldr     r1, =MessageLoop+1
	mov     r0, r4
	bl      ScriptHandler_AddFunction

	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2040010

.align 2
.pool
thumb_func_end ScriptCmd_Message



thumb_func_start MessageLoop
MessageLoop: @ 2040014 :thumb
	push    {r3,lr}

	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0] @ ScriptHandler_OverWorldData
	mov     r1, #0x3
	bl      ScriptHandler_GetSomeScriptAddresses

	ldrb    r0, [r0, #0x0]
	bl      Function_205da04

	pop     {r3,pc}
thumb_func_end MessageLoop


.thumb
ScriptCmd_Message3: @ 2040028 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	lsl     r2, r2, #24
	ldr     r1, [r4, #0x78]
	mov     r0, r4
	lsr     r2, r2, #24
	mov     r3, #0x1
	bl      Function_5_21dd444_InitMsgData
	ldr     r1, [pc, #0xc] @ 0x2040060, (=MessageLoop+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2040060

.word MessageLoop+1 @ 0x2040060



.thumb
Function_2040064: @ 2040064 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	add     r0, sp, #0x4
	mov     r1, r5
	bl      Function_5_21dd42c
	lsl     r2, r4, #24
	mov     r3, #0x1
	add     r0, sp, #0x4
	strb    r3, [r0, #0x1]
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	ldr     r1, [r5, #0x78]
	mov     r0, r5
	lsr     r2, r2, #24
	bl      Function_5_21dd444_InitMsgData
	ldr     r1, [pc, #0xc] @ 0x20400a8, (=MessageLoop+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x20400a8

.word MessageLoop+1 @ 0x20400a8



.thumb
ScriptCmd_Message4: @ 20400ac :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	lsl     r2, r2, #24
	ldr     r1, [r4, #0x78]
	mov     r0, r4
	lsr     r2, r2, #24
	bl      Function_5_21dd444_InitMsgData
	ldr     r1, [pc, #0xc] @ 0x20400e4, (=MessageLoop+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x20400e2

.align 2
.word MessageLoop+1 @ 0x20400e4



.thumb
Function_20400e8: @ 20400e8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      GetSpriteTrainer
	lsl     r0, r0, #24
	lsr     r2, r0, #24
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x78]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_5_21dd444_InitMsgData
	ldr     r1, [pc, #0xc] @ 0x2040120, (=MessageLoop+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x204011e

.align 2
.word MessageLoop+1 @ 0x2040120



.thumb
ScriptCmd_Message5: @ 2040124 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r1, [r5, #0x8]
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	ldrb    r4, [r1, #0x0]
	bl      Function_2035e38
	cmp     r0, #0x0
	bne     branch_204014c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r1, [r5, #0x78]
	mov     r0, r5
	mov     r2, r4
	mov     r3, #0x1
	bl      Function_5_21dd444_InitMsgData
	b       branch_204016c

branch_204014c: @ 204014c :thumb
	add     r0, sp, #0x4
	mov     r1, r5
	bl      Function_5_21dd42c
	mov     r1, #0x1
	add     r0, sp, #0x4
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x1]
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	ldr     r1, [r5, #0x78]
	mov     r0, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_5_21dd444_InitMsgData
branch_204016c: @ 204016c :thumb
	ldr     r1, [pc, #0xc] @ 0x204017c, (=MessageLoop+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x204017a

.align 2
.word MessageLoop+1 @ 0x204017c



.thumb
Function_2040180: @ 2040180 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x8] @ 0x204018c, (=Function_2040190+1)
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x204018c

.word Function_2040190+1 @ 0x204018c



.thumb
Function_2040190: @ 2040190 :thumb
	ldr     r0, [pc, #0x10] @ 0x20401a4, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_204019e
	mov     r0, #0x1
	bx      lr

branch_204019e: @ 204019e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x20401a2

.align 2
.word RAM_21bf67c @ 0x20401a4



.thumb
ScriptCmd_SetSaveData: @ 20401a8 :thumb
	push    {r4,lr}
	mov     r4, r0

	bl      ScriptHandler_LoadHWord

	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [r4, #0x64]

	ldr     r1, [pc, #0xc] @ 0x20401cc, (=Function_20401d0+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction

	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20401ca

.align 2
.word Function_20401d0+1 @ 0x20401cc



.thumb
Function_20401d0: @ 20401d0 :thumb
	ldr     r1, [pc, #0x1c] @ 0x20401f0, (=RAM_21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x3
	tst     r1, r2
	beq     branch_20401de
	mov     r0, #0x1
	bx      lr

branch_20401de: @ 20401de :thumb
	ldr     r1, [r0, #0x64]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0x64]
	bne     branch_20401ea
	mov     r0, #0x1
	bx      lr

branch_20401ea: @ 20401ea :thumb
	mov     r0, #0x0
	bx      lr
@ 0x20401ee

.align 2
.word RAM_21bf67c @ 0x20401f0



.thumb
ScriptCmd_WaitButton: @ 20401f4 :thumb
	push    {r3,lr}
	ldr     r1, =WaitButton+1
	bl      ScriptHandler_AddFunction

	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2040200

.align 2
.pool



thumb_func_start WaitButton
WaitButton: @ 2040204 :thumb
	push    {r4,lr}
	ldr     r1, =RAM_21bf67c
	ldr     r2, [r1, #RAM_21bf67c_48_KeyNewPressed2]
	mov     r1, #0x3
	mov     r3, r2
	tst     r3, r1
	beq     branch_2040216
	mov     r0, #0x1
	pop     {r4,pc}

branch_2040216: @ 2040216 :thumb
	mov     r3, #0x40
	tst     r3, r2
	beq     branch_204022a
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x3c]
	bl      Function_205ea84
	b       branch_204027a

branch_204022a: @ 204022a :thumb
	mov     r3, #0x80
	tst     r3, r2
	beq     branch_204023e
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x3c]
	bl      Function_205ea84
	b       branch_204027a

branch_204023e: @ 204023e :thumb
	mov     r3, #0x20
	tst     r3, r2
	beq     branch_2040252
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x3c]
	bl      Function_205ea84
	b       branch_204027a

branch_2040252: @ 2040252 :thumb
	mov     r3, #0x10
	mov     r4, r2
	tst     r4, r3
	beq     branch_2040266
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205ea84
	b       branch_204027a

branch_2040266: @ 2040266 :thumb
	lsl     r1, r3, #6
	tst     r1, r2
	beq     branch_2040276
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ShowMenu
	b       branch_204027a

branch_2040276: @ 2040276 :thumb
	mov     r0, #0x0
	pop     {r4,pc}

branch_204027a: @ 204027a :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x204027e

.align 2
.pool
thumb_func_end WaitButton



.thumb
Function_2040284: @ 2040284 :thumb
	push    {r3,lr}

	ldr     r1, [pc, #0x8] @ 0x2040290, (=Function_2040294+1)
	bl      ScriptHandler_AddFunction

	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2040290

.word Function_2040294+1 @ 0x2040290



.thumb
Function_2040294: @ 2040294 :thumb
	ldr     r0, =RAM_21bf67c
	ldr     r1, [r0, #RAM_21bf67c_48_KeyNewPressed2]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_20402a2
	mov     r0, #0x1
	bx      lr

branch_20402a2: @ 20402a2 :thumb
	mov     r0, #0xf0
	tst     r0, r1
	beq     branch_20402ac
	mov     r0, #0x1
	bx      lr

branch_20402ac: @ 20402ac :thumb
	mov     r0, #0x0
	bx      lr
@ 0x20402b0

.align 2
.pool



.thumb
Function_20402b4: @ 20402b4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	mov     r1, #0x6
	mov     r0, r4
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	mov     r2, #0x3
	bl      Function_205d8f4
	mov     r0, r4
	mov     r1, #0x1
	bl      ScriptHandler_GetSomeScriptAddresses
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPlayerDataAdress
	mov     r1, r0
	mov     r0, r4
	bl      Function_205d944
	mov     r0, #0x1
	strb    r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20402fc


.thumb
ScriptCmd_CloseMsgOnKeyPress: @ 20402fc :thumb
	push    {r3-r5,lr}
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	mov     r1, #0x1
	mov     r0, r4
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x6
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_200e084
	mov     r0, r5
	bl      Function_201a8fc
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x204032a


thumb_func_start ScriptCmd_FreezeMsgBox
ScriptCmd_FreezeMsgBox: @ 204032c :thumb
	push    {r3-r5,lr}
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	mov     r1, #0x1
	mov     r0, r4
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x6
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      Function_201a8fc
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	pop     {r3-r5,pc}
thumb_func_end ScriptCmd_FreezeMsgBox


.align 2, 0
.thumb
Function_2040354: @ 2040354 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	mov     r1, #0x31
	mov     r0, r4
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x2d
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0x32
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x33
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x2e
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x34
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r2, [r5, #0x8]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r1, [r2, #0x0]
	strh    r1, [r6, #0x0]
	ldr     r2, [r5, #0x8]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r1, [r2, #0x0]
	strh    r1, [r7, #0x0]
	ldr     r2, [r5, #0x8]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r2, [r2, #0x0]
	ldr     r1, [sp, #0x0]
	strh    r2, [r1, #0x0]
	ldr     r2, [r5, #0x8]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r2, [r2, #0x0]
	ldr     r1, [sp, #0x4]
	strh    r2, [r1, #0x0]
	ldr     r2, [r5, #0x8]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r2, [r2, #0x0]
	ldr     r1, [sp, #0x8]
	strh    r2, [r1, #0x0]
	ldr     r2, [r5, #0x8]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r1, [r2, #0x0]
	strh    r1, [r0, #0x0]
	ldr     r1, [pc, #0xc] @ 0x20403e8, (=Function_20403ec+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x20403e8

.word Function_20403ec+1 @ 0x20403e8



.thumb
Function_20403ec: @ 20403ec :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	mov     r1, #0x31
	mov     r0, r4
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0x32
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x33
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x34
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x2d
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x2e
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r5, r0
	ldrh    r0, [r6, #0x0]
	cmp     r0, #0x0
	bne     branch_2040442
	ldrh    r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_2040442
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}

branch_2040442: @ 2040442 :thumb
	ldrh    r3, [r7, #0x0]
	cmp     r3, #0x0
	beq     branch_2040464
	ldr     r0, [sp, #0x8]
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x8]
	bne     branch_204045c
	mov     r1, #0x3
	mov     r2, #0x1
	bl      Function_2019184
	b       branch_2040464

branch_204045c: @ 204045c :thumb
	mov     r1, #0x3
	mov     r2, #0x2
	bl      Function_2019184
branch_2040464: @ 2040464 :thumb
	ldr     r0, [sp, #0x4]
	ldrh    r3, [r0, #0x0]
	cmp     r3, #0x0
	beq     branch_2040488
	ldr     r0, [sp, #0x0]
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x8]
	bne     branch_2040480
	mov     r1, #0x3
	mov     r2, #0x4
	bl      Function_2019184
	b       branch_2040488

branch_2040480: @ 2040480 :thumb
	mov     r1, #0x3
	mov     r2, #0x5
	bl      Function_2019184
branch_2040488: @ 2040488 :thumb
	ldrh    r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_2040492
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r6, #0x0]
branch_2040492: @ 2040492 :thumb
	ldrh    r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_204049c
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r5, #0x0]
branch_204049c: @ 204049c :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x20404a2


.align 2, 0
.thumb
ScriptCmd_CallMsgBox: @ 20404a4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	mov     r1, #0x11
	mov     r0, r4
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x18]
	mov     r0, r4
	mov     r1, #0x10
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x8]
	add     r1, r0, #0x1
	str     r1, [r5, #0x8]
	ldrb    r0, [r0, #0x0]
	str     r0, [sp, #0xc]
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	ldrb    r0, [r1, #0x0]
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	cmp     r6, #0x0
	bne     branch_2040504
	mov     r0, r4
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_20629d8
	lsl     r0, r0, #16
	lsr     r6, r0, #16
branch_2040504: @ 2040504 :thumb
	ldr     r0, [r4, #0x64]
	ldr     r1, [sp, #0x10]
	mov     r2, r6
	bl      Function_5_21e1b38
	ldr     r0, [r4, #0x64]
	mov     r1, #0x1
	bl      Function_5_21e1b40
	mov     r0, r4
	bl      Function_5_21e1b68
	ldr     r2, [sp, #0x18]
	ldr     r0, [r5, #0x78]
	ldr     r1, [sp, #0xc]
	ldr     r2, [r2, #0x0]
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x18]
	ldr     r0, [r0, #0x0]
	ldr     r1, [r7, #0x0]
	ldr     r2, [r2, #0x0]
	bl      Function_200c388
	ldr     r0, [r4, #0x64]
	bl      Function_5_21e1b50
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r2, [r7, #0x0]
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	mov     r0, #0x1
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2040552


thumb_func_start ScriptCmd_ColorMsgBox
ScriptCmd_ColorMsgBox: @ 2040554 :thumb
	push    {r3-r5,lr}
	mov     r1, r0
	add     r1, #ScriptHandler_OverWorldData
	ldr     r2, [r0, #ScriptHandler_Pointer]
	ldr     r4, [r1]
	add     r1, r2, #0x1
	str     r1, [r0, #ScriptHandler_Pointer]
	ldrb    r5, [r2, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r2, r0
	ldr     r0, [r4, #OverWorldData_64]
	mov     r1, r5
	bl      Function_5_21e1b38
	ldr     r0, [r4, #OverWorldData_64]
	mov     r1, #0x1
	bl      Function_5_21e1b40

	mov     r0, #0x1
	pop     {r3-r5,pc}
thumb_func_end ScriptCmd_ColorMsgBox


.align 2, 0
.thumb
ScriptCmd_TypeMsgBox: @ 2040580 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #0x80
	ldr     r2, [r0, #0x8]
	ldr     r3, [r1, #0x0]
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	ldrb    r1, [r2, #0x0]
	ldr     r0, [r3, #0x64]
	bl      Function_5_21e1b40
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x204059a


.align 2, 0
.thumb
ScriptCmd_NoMapMsgBox: @ 204059c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x64]
	bl      Function_5_21e1b58
	cmp     r0, #0x1
	bne     branch_20405b2
	mov     r0, #0x0
	pop     {r4,pc}

branch_20405b2: @ 20405b2 :thumb
	ldr     r1, [pc, #0xc] @ 0x20405c0, (=Function_20405c4+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20405be

.align 2
.word Function_20405c4+1 @ 0x20405c0



.thumb
Function_20405c4: @ 20405c4 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x64]
	bl      Function_5_21e1b58
	cmp     r0, #0x1
	bne     branch_20405d8
	mov     r0, #0x1
	pop     {r3,pc}

branch_20405d8: @ 20405d8 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20405dc


.thumb
ScriptCmd_CallTextMsgBox: @ 20405dc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	mov     r1, #0x3
	mov     r0, r4
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x11
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x10
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	str     r0, [sp, #0x8]
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	ldrb    r0, [r1, #0x0]
	str     r0, [sp, #0x0]

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	str     r0, [sp, #0xc]

	ldr     r0, [r5, #0x78]
	ldr     r1, [sp, #0x0]
	ldr     r2, [r6, #0x0]
	bl      Function_200b1b8_CallMsgDecrypt

	ldr     r0, [sp, #0x8]
	ldr     r1, [r7, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r2, [r6, #0x0]
	bl      Function_200c388

	ldr     r0, [r4, #0x64]
	bl      Function_5_21e1b50
	mov     r4, r0

	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPlayerDataAdress
	mov     r2, r0
	ldr     r1, [r7, #0x0]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_205d994
	ldr     r1, [sp, #0x4]
	strb    r0, [r1, #0x0]
	ldr     r0, [sp, #0xc]
	ldr     r1, [pc, #0xc] @ 0x204066c, (=Function_2040670+1)
	str     r0, [r5, #0x64]
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x204066c

.word Function_2040670+1 @ 0x204066c



.thumb
Function_2040670: @ 2040670 :thumb
	push    {r3-r7,lr}
	mov     r7, r0

	add     r0, #0x80
	ldr     r5, [r0, #0x0]

	mov     r1, #0x3
	mov     r0, r5
	bl      ScriptHandler_GetSomeScriptAddresses

	ldr     r1, [r7, #0x64]
	mov     r6, r0
	lsl     r1, r1, #16
	mov     r0, r5
	lsr     r1, r1, #16
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	ldr     r0, [r5, #0x64]
	bl      Function_5_21e1b54

	ldrb    r0, [r6, #0x0]
	ldr     r5, [pc, #0x70] @ 0x204070c, (=0xffff)
	bl      Function_205da04
	cmp     r0, #0x1
	bne     branch_20406aa
	mov     r0, #0x2
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_20406aa: @ 20406aa :thumb
	ldr     r0, [pc, #0x64] @ 0x2040710, (=RAM_21bf67c)
	mov     r1, #0x40
	ldr     r0, [r0, #RAM_21bf67c_48_KeyNewPressed2]
	tst     r1, r0
	beq     branch_20406b8
	mov     r5, #0x0
	b       branch_20406d4

branch_20406b8: @ 20406b8 :thumb
	mov     r1, #0x80
	tst     r1, r0
	beq     branch_20406c2
	mov     r5, #0x1
	b       branch_20406d4

branch_20406c2: @ 20406c2 :thumb
	mov     r1, #0x20
	tst     r1, r0
	beq     branch_20406cc
	mov     r5, #0x2
	b       branch_20406d4

branch_20406cc: @ 20406cc :thumb
	mov     r1, #0x10
	tst     r1, r0
	beq     branch_20406d4
	mov     r5, #0x3
branch_20406d4: @ 20406d4 :thumb
	ldr     r1, [pc, #0x34] @ 0x204070c, (=0xffff)
	cmp     r5, r1
	beq     branch_20406f4
	ldrb    r0, [r6, #0x0]
	bl      Call_RemoveTextInterpreterTaskFromTaskList
	add     r7, #0x80
	ldr     r0, [r7, #0x0]
	mov     r1, r5
	ldr     r0, [r0, #0x3c]
	bl      Function_205ea84
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_20406f4: @ 20406f4 :thumb
	mov     r1, #0x1
	lsl     r1, r1, #10
	tst     r0, r1
	beq     branch_2040708
	ldrb    r0, [r6, #0x0]
	bl      Call_RemoveTextInterpreterTaskFromTaskList
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	pop     {r3-r7,pc}

branch_2040708: @ 2040708 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204070c

.word 0xffff @ 0x204070c
.word RAM_21bf67c @ 0x2040710



.thumb
ScriptCmd_StoreMenuStatus: @ 2040714 :thumb
	push    {r4,lr}
	mov     r4, r0

	bl      ScriptHandler_LoadHWord
	str     r0, [r4, #0x64]

	ldr     r1, [pc, #0xc] @ 0x204072c, (=Function_2040730+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction

	mov     r0, #0x1
	pop     {r4,pc}
@ 0x204072a

.align 2
.word Function_2040730+1 @ 0x204072c



.thumb
Function_2040730: @ 2040730 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x64]
	add     r0, #0x80
	lsl     r1, r1, #16
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #16
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	ldr     r0, [pc, #0x64] @ 0x20407ac, (=RAM_21bf67c)
	ldr     r1, [pc, #0x68] @ 0x20407b0, (=0xffff)
	ldr     r2, [r0, #RAM_21bf67c_48_KeyNewPressed2]
	mov     r0, #0x3
	mov     r3, r2
	tst     r3, r0
	beq     branch_204075a
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_204075a: @ 204075a :thumb
	mov     r3, #0x40
	tst     r3, r2
	beq     branch_2040764
	mov     r1, #0x0
	b       branch_2040780

branch_2040764: @ 2040764 :thumb
	mov     r3, #0x80
	tst     r3, r2
	beq     branch_204076e
	mov     r1, #0x1
	b       branch_2040780

branch_204076e: @ 204076e :thumb
	mov     r3, #0x20
	tst     r3, r2
	beq     branch_2040778
	mov     r1, #0x2
	b       branch_2040780

branch_2040778: @ 2040778 :thumb
	mov     r3, #0x10
	tst     r3, r2
	beq     branch_2040780
	mov     r1, r0
branch_2040780: @ 2040780 :thumb
	ldr     r0, [pc, #0x2c] @ 0x20407b0, (=0xffff)
	cmp     r1, r0
	beq     branch_2040798
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205ea84
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_2040798: @ 2040798 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #10
	tst     r0, r2
	beq     branch_20407a6
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	pop     {r3-r5,pc}

branch_20407a6: @ 20407a6 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20407aa

.align 2
.word RAM_21bf67c @ 0x20407ac
.word 0xffff @ 0x20407b0



thumb_func_start ScriptCmd_ShowMenu
ScriptCmd_ShowMenu: @ 20407b4 :thumb
	push    {r3,lr}

	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ShowMenu

	mov     r0, #0x0
	pop     {r3,pc}
thumb_func_end ScriptCmd_ShowMenu


thumb_func_start ScriptCmd_YesNoBox
ScriptCmd_YesNoBox: @ 20407c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0

	add     r0, #ScriptHandler_OverWorldData
	ldr     r4, [r0]
	mov     r1, #0x2
	mov     r0, r4
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r7, r0

	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]

	ldr     r0, [r4, #0x8]
	ldr     r2, [pc, #0x2c] @ 0x2040818, (=0x3d9)
	mov     r1, #0x3
	mov     r3, #0xb
	bl      Function_200daa4

	mov     r0, #0x4
	str     r0, [sp, #0x0]

	ldr     r0, [r4, #0x8]
	ldr     r1, [pc, #0x20] @ 0x204081c, (=Unknown_20eab84)
	ldr     r2, [pc, #0x18] @ 0x2040818, (=0x3d9)
	mov     r3, #0xb
	bl      Function_2002100
	str     r0, [r6, #0x0]

	ldr     r1, [pc, #0x18] @ 0x2040820, (=Function_2040824+1)
	mov     r0, r5
	str     r7, [r5, #ScriptHandler_64]
	bl      ScriptHandler_AddFunction

	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2040816

.align 2
.word 0x3d9 @ 0x2040818
.word Unknown_20eab84 @ 0x204081c
.word Function_2040824+1 @ 0x2040820
thumb_func_end ScriptCmd_YesNoBox



.thumb
Function_2040824: @ 2040824 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r6, [r0, #0x0]
	mov     r1, #0x2
	mov     r0, r6
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x64]
	mov     r4, r0
	lsl     r1, r1, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_2040858
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_2040858: @ 2040858 :thumb
	cmp     r0, #0x0
	bne     branch_2040860
	mov     r0, #0x0
	b       branch_2040862

branch_2040860: @ 2040860 :thumb
	mov     r0, #0x1
branch_2040862: @ 2040862 :thumb
	strh    r0, [r5, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2040868


.thumb
ScriptCmd_ShowSavingClock: @ 2040868 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      ScriptHandler_GetSomeScriptAddresses
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x12
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r5, r0
	ldr     r1, [pc, #0xc] @ 0x2040894, (=0x3e2)
	mov     r0, r4
	bl      Function_200e7fc
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2040892

.align 2
.word 0x3e2 @ 0x2040894



.thumb
ScriptCmd_HideSavingClock: @ 2040898 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x12
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      Function_200eba0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20408ae


.align 2, 0
.thumb
ScriptCmd_Multi: @ 20408b0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r0
	add     r0, #0x80
	ldr     r6, [r0, #0x0]
	mov     r1, #0x0
	mov     r0, r6
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x1c]
	mov     r0, r6
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x8]
	add     r1, r0, #0x1
	str     r1, [r5, #0x8]
	ldrb    r0, [r0, #0x0]
	add     r2, r1, #0x1
	str     r0, [sp, #0x18]
	str     r2, [r5, #0x8]
	ldrb    r0, [r1, #0x0]
	add     r1, r2, #0x1
	str     r0, [sp, #0x14]
	str     r1, [r5, #0x8]
	ldrb    r7, [r2, #0x0]
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	str     r0, [sp, #0x24]
	ldr     r1, [sp, #0x24]
	mov     r0, r6
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x28]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [sp, #0x28]
	str     r4, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x20]
	mov     r3, r7
	ldr     r1, [r1, #0x0]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x14]
	mov     r0, r6
	bl      Function_5_21dc150
	ldr     r1, [sp, #0x1c]
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x24]
	str     r0, [r5, #0x64]
	mov     r0, #0x1
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x2040936


.align 2, 0
.thumb
ScriptCmd_Multi2: @ 2040938 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r0
	add     r0, #0x80
	ldr     r6, [r0, #0x0]
	mov     r1, #0x0
	mov     r0, r6
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x1c]
	mov     r0, r6
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x8]
	add     r1, r0, #0x1
	str     r1, [r5, #0x8]
	ldrb    r0, [r0, #0x0]
	add     r2, r1, #0x1
	str     r0, [sp, #0x18]
	str     r2, [r5, #0x8]
	ldrb    r0, [r1, #0x0]
	add     r1, r2, #0x1
	str     r0, [sp, #0x14]
	str     r1, [r5, #0x8]
	ldrb    r7, [r2, #0x0]
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	str     r0, [sp, #0x24]
	ldr     r1, [sp, #0x24]
	mov     r0, r6
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x28]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [sp, #0x28]
	str     r4, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x20]
	mov     r3, r7
	ldr     r1, [r1, #0x0]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x78]
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x14]
	mov     r0, r6
	bl      Function_5_21dc150
	ldr     r1, [sp, #0x1c]
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x24]
	str     r0, [r5, #0x64]
	mov     r0, #0x1
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x20409be


.align 2, 0
.thumb
ScriptCmd_TextScriptMulti: @ 20409c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r4, #0x8]
	add     r3, r1, #0x1
	str     r3, [r4, #0x8]
	ldrb    r1, [r1, #0x0]
	add     r2, r3, #0x1
	str     r2, [r4, #0x8]
	ldrb    r2, [r3, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_5_21dc1a4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x20409e6


.align 2, 0
.thumb
ScriptCmd_ChoiceMulti: @ 20409e8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r6
	bl      Function_5_21dc1a4
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2040a2a


.align 2, 0
.thumb
ScriptCmd_CloseMulti: @ 2040a2c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      Function_5_21dc1ac
	ldr     r1, [pc, #0x8] @ 0x2040a4c, (=Function_2040a50+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2040a4c

.word Function_2040a50+1 @ 0x2040a4c



.thumb
Function_2040a50: @ 2040a50 :thumb
	push    {r3,lr}
	mov     r1, r0
	ldr     r1, [r1, #0x64]
	add     r0, #0x80
	lsl     r1, r1, #16
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #16
	bl      ScriptHandler_CheckLoadParameter
	ldrh    r1, [r0, #0x0]
	ldr     r0, [pc, #0xc] @ 0x2040a74, (=0xeeee)
	cmp     r1, r0
	beq     branch_2040a6e
	mov     r0, #0x1
	pop     {r3,pc}

branch_2040a6e: @ 2040a6e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2040a72

.align 2
.word 0xeeee @ 0x2040a74



.thumb
ScriptCmd_CloseMultiUnion: @ 2040a78 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      Function_5_21dc1ac
	ldr     r1, [pc, #0x8] @ 0x2040a98, (=Function_2040a9c+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2040a98

.word Function_2040a9c+1 @ 0x2040a98



.thumb
Function_2040a9c: @ 2040a9c :thumb
	push    {r4-r6,lr}
	mov     r1, r0
	add     r0, #0x80
	ldr     r1, [r1, #0x64]
	ldr     r5, [r0, #0x0]
	lsl     r1, r1, #16
	mov     r0, r5
	lsr     r1, r1, #16
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	ldrh    r1, [r4, #0x0]
	ldr     r0, [pc, #0x24] @ 0x2040ae4, (=0xeeee)
	cmp     r1, r0
	bne     branch_2040ae0
	ldr     r0, [r5, #0x7c]
	bl      Function_205b9e8
	cmp     r0, #0x0
	beq     branch_2040adc
	mov     r0, #0x8
	strh    r0, [r4, #0x0]
	ldr     r0, [r6, #0x0]
	bl      Function_5_21dc424
	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_2040adc: @ 2040adc :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_2040ae0: @ 2040ae0 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2040ae4

.word 0xeeee @ 0x2040ae4



.thumb
ScriptCmd_Multi3: @ 2040ae8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r0
	add     r0, #0x80
	ldr     r6, [r0, #0x0]
	mov     r1, #0x0
	mov     r0, r6
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x1c]
	mov     r0, r6
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x8]
	add     r1, r0, #0x1
	str     r1, [r5, #0x8]
	ldrb    r0, [r0, #0x0]
	add     r2, r1, #0x1
	str     r0, [sp, #0x18]
	str     r2, [r5, #0x8]
	ldrb    r0, [r1, #0x0]
	add     r1, r2, #0x1
	str     r0, [sp, #0x14]
	str     r1, [r5, #0x8]
	ldrb    r7, [r2, #0x0]
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	str     r0, [sp, #0x24]
	ldr     r1, [sp, #0x24]
	mov     r0, r6
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x28]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [sp, #0x28]
	str     r4, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x20]
	mov     r3, r7
	ldr     r1, [r1, #0x0]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x14]
	mov     r0, r6
	bl      Function_5_21dc48c
	ldr     r1, [sp, #0x1c]
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x24]
	str     r0, [r5, #0x64]
	mov     r0, #0x1
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x2040b6e


.align 2, 0
.thumb
ScriptCmd_Multi4: @ 2040b70 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r0
	add     r0, #0x80
	ldr     r6, [r0, #0x0]
	mov     r1, #0x0
	mov     r0, r6
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x1c]
	mov     r0, r6
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x8]
	add     r1, r0, #0x1
	str     r1, [r5, #0x8]
	ldrb    r0, [r0, #0x0]
	add     r2, r1, #0x1
	str     r0, [sp, #0x18]
	str     r2, [r5, #0x8]
	ldrb    r0, [r1, #0x0]
	add     r1, r2, #0x1
	str     r0, [sp, #0x14]
	str     r1, [r5, #0x8]
	ldrb    r7, [r2, #0x0]
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	str     r0, [sp, #0x24]
	ldr     r1, [sp, #0x24]
	mov     r0, r6
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x28]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [sp, #0x28]
	str     r4, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r1, [sp, #0x20]
	mov     r3, r7
	ldr     r1, [r1, #0x0]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x78]
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x14]
	mov     r0, r6
	bl      Function_5_21dc48c
	ldr     r1, [sp, #0x1c]
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x24]
	str     r0, [r5, #0x64]
	mov     r0, #0x1
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x2040bf6


.align 2, 0
.thumb
ScriptCmd_TxtMsgScrpMulti: @ 2040bf8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r3, r0
	lsl     r1, r6, #24
	lsl     r2, r7, #24
	lsl     r3, r3, #24
	ldr     r0, [r4, #0x0]
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_5_21dc4b0
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2040c58


.thumb
ScriptCmd_CloseMulti4: @ 2040c58 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      Function_5_21dc4b8
	ldr     r1, [pc, #0x8] @ 0x2040c78, (=Function_2040a50+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2040c78

.word Function_2040a50+1 @ 0x2040c78



.thumb
Function_2040c7c: @ 2040c7c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_5_21dc528
	ldr     r1, [pc, #0xc] @ 0x2040cb4, (=Function_2040a50+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2040cb2

.align 2
.word Function_2040a50+1 @ 0x2040cb4



.thumb
Function_2040cb8: @ 2040cb8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r6
	bl      Function_5_21dc600
	ldr     r1, [pc, #0x8] @ 0x2040d04, (=Function_2040a50+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2040d04

.word Function_2040a50+1 @ 0x2040d04



.thumb
ScriptCmd_Multirow: @ 2040d08 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r2, [r4, #0x8]
	add     r1, r2, #0x1
	str     r1, [r4, #0x8]
	ldrb    r1, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_5_21dcd94
	ldr     r1, [pc, #0x8] @ 0x2040d30, (=Function_2040a50+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2040d30

.word Function_2040a50+1 @ 0x2040d30



.thumb
ScriptCmd_33a: @ 2040d34 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r2, [r4, #0x8]
	add     r1, r2, #0x1
	str     r1, [r4, #0x8]
	ldrb    r1, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_5_21dd3f4
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2040d54


.thumb
ScriptCmd_33b: @ 2040d54 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r2, [r4, #0x8]
	add     r1, r2, #0x1
	str     r1, [r4, #0x8]
	ldrb    r1, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_5_21dd410
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2040d74


/* ApplyMovement a, adr
*/
thumb_func_start ScriptCmd_ApplyMovement
ScriptCmd_ApplyMovement: @ 2040d74 :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, r5
	bl      ScriptHandler_LoadWord
	mov     r4, r0          @ Adr to movement code

	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	mov     r1, r6
	bl      GetAdressOfSpriteID_Extended
	cmp     r0, #0x0
	bne     branch_2040daa

	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_2040daa: @ 2040daa :thumb
	ldr     r1, [r5, #ScriptHandler_Pointer]
	add     r1, r1, r4
	bl      Malloc_MovementScript
	mov     r4, r0

	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	mov     r1, #0x4
	bl      ScriptHandler_GetSomeScriptAddresses

	ldrb    r1, [r0, #0x0]
	add     r5, #ScriptHandler_OverWorldData
	mov     r2, #0x0
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x0]

	ldr     r0, [r5]
	mov     r1, r4
	bl      StartMovementScriptHandler

	mov     r0, #0x0
	pop     {r4-r6,pc}
thumb_func_end ScriptCmd_ApplyMovement


thumb_func_start ScriptCmd_ApplyMovement2
ScriptCmd_ApplyMovement2: @ 2040dd8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]

	mov     r0, r5
	bl      ScriptHandler_LoadHWord

	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0

	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	mov     r1, r4
	bl      GetAdressOfSpriteID_Extended
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_2040e2e
	bl      ErrorHandling
branch_2040e2e: @ 2040e2e :thumb

	mov     r0, #0x4
	mov     r1, r0
	add     r1, #0xfc
	bl      malloc
	mov     r4, r0

	ldr     r0, [sp, #0x4]
	bl      LoadSpritePositionX
	lsl     r0, r0, #16
	lsr     r6, r0, #16

	ldr     r0, [sp, #0x4]
	bl      LoadSpritePositionY
	lsl     r0, r0, #16
	ldr     r2, [sp, #0x0]
	lsr     r0, r0, #16
	mov     r1, #0x0

	cmp     r6, r2
	bhs     branch_2040e64
	mov     r2, #0xf
	strh    r2, [r4, #0x0]
	ldr     r2, [sp, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	sub     r2, r2, r6
	strh    r2, [r4, #0x2]
	b       branch_2040e74

branch_2040e64: @ 2040e64 :thumb
	cmp     r6, r2
	bls     branch_2040e74
	mov     r2, #0xe
	strh    r2, [r4, #0x0]
	ldr     r2, [sp, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	sub     r2, r6, r2
	strh    r2, [r4, #0x2]
branch_2040e74: @ 2040e74 :thumb

	cmp     r0, r7
	bhs     branch_2040e88
	lsl     r2, r1, #2
	mov     r3, #0xc
	strh    r3, [r4, r2]
	sub     r3, r7, r0
	add     r0, r4, r2
	strh    r3, [r0, #0x2]
	.hword  0x1c49 @ add r1, r1, #0x1
	b       branch_2040e9a

branch_2040e88: @ 2040e88 :thumb
	cmp     r0, r7
	bls     branch_2040e9a
	lsl     r2, r1, #2
	mov     r3, #0xd
	strh    r3, [r4, r2]
	sub     r3, r0, r7
	add     r0, r4, r2
	strh    r3, [r0, #0x2]
	.hword  0x1c49 @ add r1, r1, #0x1
branch_2040e9a: @ 2040e9a :thumb

	lsl     r2, r1, #2
	mov     r0, #0xfe
	strh    r0, [r4, r2]
	mov     r1, #0x0
	add     r0, r4, r2
	strh    r1, [r0, #0x2]
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	bl      Malloc_MovementScript
	mov     r6, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	mov     r1, #0x4
	bl      ScriptHandler_GetSomeScriptAddresses
	ldrb    r1, [r0]

	add     r5, #ScriptHandler_OverWorldData
	mov     r2, r4
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x0]
	ldr     r0, [r5]
	mov     r1, r6
	bl      StartMovementScriptHandler

	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
thumb_func_end ScriptCmd_ApplyMovement2


/* Input:
r0: OverWorldData
r1: SpriteID
*/
thumb_func_start GetAdressOfSpriteID_Extended
GetAdressOfSpriteID_Extended: @ 2040ed4 :thumb
	push    {r3,lr}
	cmp     r1, #0xf2
	bne     branch_2040ee4
	ldr     r0, [r0, #OverWorldData_SpriteList]
	mov     r1, #0x30
	bl      GetSpriteAdrWithMovementNr
	pop     {r3,pc}

branch_2040ee4: @ 2040ee4 :thumb
	cmp     r1, #0xf1
	bne     branch_2040ef2
	mov     r1, #0xb
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	pop     {r3,pc}

branch_2040ef2: @ 2040ef2 :thumb
	ldr     r0, [r0, #OverWorldData_SpriteList]
	bl      GetAdressOfSpriteID
	pop     {r3,pc}
thumb_func_end GetAdressOfSpriteID_Extended


thumb_func_start ScriptCmd_WaitMovement
ScriptCmd_WaitMovement: @ 2040efc :thumb
	push    {r3,lr}
	ldr     r1, =WaitMovement+1
	bl      ScriptHandler_AddFunction

	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2040f08

.align 2
.pool
thumb_func_end ScriptCmd_WaitMovement


.thumb
WaitMovement: @ 2040f0c :thumb
	push    {r3,lr}
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	mov     r1, #0x4
	bl      ScriptHandler_GetSomeScriptAddresses
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2040f22
	mov     r0, #0x1
	pop     {r3,pc}

branch_2040f22: @ 2040f22 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2040f26


/* Input:
r0: Ptr to OverWorldData
r1: Ptr to MovementScript-Struct
r2: 0 or Ptr to Struct with size 0x100
*/
thumb_func_start StartMovementScriptHandler
StartMovementScriptHandler: @ 2040f28 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1

	mov     r0, #0x4
	mov     r1, #0x10
	mov     r7, r2
	bl      malloc
	mov     r4, r0
	bne     branch_2040f42

	bl      ErrorHandling
	pop     {r3-r7,pc}

branch_2040f42: @ 2040f42 :thumb
	str     r5, [r4, #0xc]
	str     r6, [r4, #0x4]
	ldr     r0, =MovementScript_TaskHandler+1
	mov     r1, r4
	mov     r2, #0x0
	str     r7, [r4, #0x8]
	bl      AddTaskToTaskList1
	str     r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x2040f56

.align 2
.pool
thumb_func_end StartMovementScriptHandler



.thumb
MovementScript_TaskHandler: @ 2040f5c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r0, [r5, #0xc] @ Ptr to OverWorldData
	mov     r1, #0x4
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	ldr     r0, [r5, #0x4]
	bl      Function_206574c
	cmp     r0, #0x1
	bne     branch_2040fa0

	ldr     r0, [r5, #0x4]
	bl      Function_2065758
	ldr     r0, [r5, #0x0]
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_2040f8a
	bl      free
branch_2040f8a: @ 2040f8a :thumb

	mov     r0, r5
	bl      free
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2040f9c

	bl      ErrorHandling
	pop     {r3-r5,pc}

branch_2040f9c: @ 2040f9c :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x0]
branch_2040fa0: @ 2040fa0 :thumb
	pop     {r3-r5,pc}
@ 0x2040fa2


thumb_func_start ScriptCmd_LockAll
ScriptCmd_LockAll: @ 2040fa4 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	mov     r1, #0xa
	mov     r0, r5
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2040ff6
	ldr     r0, [r5, #0x38]
	bl      Function_2062c48
	ldr     r0, [r5, #0x38]
	mov     r1, #0x30
	bl      GetSpriteAdrWithMovementNr
	mov     r4, r0
	beq     branch_2040ffc
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	bl      Function_206a984
	cmp     r0, #0x1
	bne     branch_2040ffc
	mov     r0, r4
	bl      CheckSpriteFlag_2
	cmp     r0, #0x0
	beq     branch_2040ffc
	mov     r0, r4
	bl      UnsetSpriteFlag_Lock
	ldr     r1, [pc, #0x14] @ 0x2041000, (=Function_20410cc+1)
	mov     r0, r6
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_2040ff6: @ 2040ff6 :thumb
	mov     r0, r6
	bl      Function_20410f4
branch_2040ffc: @ 2040ffc :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2041000

.word Function_20410cc+1 @ 0x2041000
thumb_func_end ScriptCmd_LockAll



.thumb
Function_2041004: @ 2041004 :thumb
	push    {r4-r6,lr}
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	mov     r1, #0xa
	mov     r0, r4
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r5, r0
	ldr     r0, [r4, #0x3c]
	bl      Function_205eb3c
	ldr     r1, [pc, #0xac] @ 0x20410c8, (=RAM_21c07e0)
	mov     r6, r0
	ldrb    r2, [r1, #0x0]
	mov     r1, #0x1
	tst     r1, r2
	beq     branch_204103e
	bl      Function_2065684
	cmp     r0, #0x1
	bne     branch_204103e
	mov     r0, r6
	bl      SetSpriteFlag_Lock
	ldr     r1, [pc, #0x90] @ 0x20410c8, (=RAM_21c07e0)
	mov     r0, #0xfe
	ldrb    r2, [r1, #0x0]
	and     r0, r2
	strb    r0, [r1, #0x0]
branch_204103e: @ 204103e :thumb
	ldr     r0, [pc, #0x88] @ 0x20410c8, (=RAM_21c07e0)
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_2041062
	ldr     r0, [r5, #0x0]
	bl      CheckSpriteFlag_2
	cmp     r0, #0x0
	bne     branch_2041062
	ldr     r0, [r5, #0x0]
	bl      SetSpriteFlag_Lock
	ldr     r1, [pc, #0x6c] @ 0x20410c8, (=RAM_21c07e0)
	mov     r0, #0xfb
	ldrb    r2, [r1, #0x0]
	and     r0, r2
	strb    r0, [r1, #0x0]
branch_2041062: @ 2041062 :thumb
	ldr     r0, [pc, #0x64] @ 0x20410c8, (=RAM_21c07e0)
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_204108e
	ldr     r0, [r4, #0x38]
	mov     r1, #0x30
	bl      GetSpriteAdrWithMovementNr
	mov     r4, r0
	bl      CheckSpriteFlag_2
	cmp     r0, #0x0
	bne     branch_204108e
	mov     r0, r4
	bl      SetSpriteFlag_Lock
	ldr     r1, [pc, #0x40] @ 0x20410c8, (=RAM_21c07e0)
	mov     r0, #0xfd
	ldrb    r2, [r1, #0x0]
	and     r0, r2
	strb    r0, [r1, #0x0]
branch_204108e: @ 204108e :thumb
	ldr     r0, [pc, #0x38] @ 0x20410c8, (=RAM_21c07e0)
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x8
	tst     r0, r1
	beq     branch_20410b8
	ldr     r0, [r5, #0x0]
	bl      Function_2069eb8
	mov     r4, r0
	bl      CheckSpriteFlag_2
	cmp     r0, #0x0
	bne     branch_20410b8
	mov     r0, r4
	bl      SetSpriteFlag_Lock
	ldr     r1, [pc, #0x18] @ 0x20410c8, (=RAM_21c07e0)
	mov     r0, #0xf7
	ldrb    r2, [r1, #0x0]
	and     r0, r2
	strb    r0, [r1, #0x0]
branch_20410b8: @ 20410b8 :thumb
	ldr     r0, [pc, #0xc] @ 0x20410c8, (=RAM_21c07e0)
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_20410c4
	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_20410c4: @ 20410c4 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20410c8

.word RAM_21c07e0 @ 0x20410c8



.thumb
Function_20410cc: @ 20410cc :thumb
	push    {r4,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x30
	ldr     r0, [r0, #0x38]
	bl      GetSpriteAdrWithMovementNr
	mov     r4, r0
	bl      CheckSpriteFlag_2
	cmp     r0, #0x0
	bne     branch_20410ee
	mov     r0, r4
	bl      SetSpriteFlag_Lock
	mov     r0, #0x1
	pop     {r4,pc}

branch_20410ee: @ 20410ee :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x20410f2


.align 2, 0
.thumb
Function_20410f4: @ 20410f4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	mov     r1, #0xa
	mov     r0, r4
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r5, r0
	ldr     r0, [r4, #0x3c]
	bl      Function_205eb3c
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x38]
	mov     r1, #0x30
	bl      GetSpriteAdrWithMovementNr
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	bl      Function_2069eb8
	mov     r6, r0
	ldr     r0, [r4, #0x38]
	ldr     r1, [pc, #0x94] @ 0x20411bc, (=RAM_21c07e0)
	mov     r2, #0x0
	strb    r2, [r1, #0x0]
	bl      Function_2062c48
	ldr     r0, [sp, #0x4]
	bl      Function_2065684
	cmp     r0, #0x0
	bne     branch_2041148
	ldr     r1, [pc, #0x80] @ 0x20411bc, (=RAM_21c07e0)
	mov     r0, #0x1
	ldrb    r2, [r1, #0x0]
	orr     r0, r2
	strb    r0, [r1, #0x0]
	ldr     r0, [sp, #0x4]
	bl      UnsetSpriteFlag_Lock
branch_2041148: @ 2041148 :thumb
	ldr     r0, [r5, #0x0]
	bl      CheckSpriteFlag_2
	cmp     r0, #0x0
	beq     branch_2041162
	ldr     r1, [pc, #0x68] @ 0x20411bc, (=RAM_21c07e0)
	mov     r0, #0x4
	ldrb    r2, [r1, #0x0]
	orr     r0, r2
	strb    r0, [r1, #0x0]
	ldr     r0, [r5, #0x0]
	bl      UnsetSpriteFlag_Lock
branch_2041162: @ 2041162 :thumb
	cmp     r7, #0x0
	beq     branch_204118e
	ldr     r0, [r4, #0xc]
	bl      LoadFlagAdress
	bl      Function_206a984
	cmp     r0, #0x1
	bne     branch_204118e
	mov     r0, r7
	bl      CheckSpriteFlag_2
	cmp     r0, #0x0
	beq     branch_204118e
	ldr     r1, [pc, #0x3c] @ 0x20411bc, (=RAM_21c07e0)
	mov     r0, #0x2
	ldrb    r2, [r1, #0x0]
	orr     r0, r2
	strb    r0, [r1, #0x0]
	mov     r0, r7
	bl      UnsetSpriteFlag_Lock
branch_204118e: @ 204118e :thumb
	cmp     r6, #0x0
	beq     branch_20411ac
	mov     r0, r6
	bl      CheckSpriteFlag_2
	cmp     r0, #0x0
	beq     branch_20411ac
	ldr     r1, [pc, #0x1c] @ 0x20411bc, (=RAM_21c07e0)
	mov     r0, #0x8
	ldrb    r2, [r1, #0x0]
	orr     r0, r2
	strb    r0, [r1, #0x0]
	mov     r0, r6
	bl      UnsetSpriteFlag_Lock
branch_20411ac: @ 20411ac :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x10] @ 0x20411c0, (=Function_2041004+1)
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20411ba

.align 2
.word RAM_21c07e0 @ 0x20411bc
.word Function_2041004+1 @ 0x20411c0



.thumb
ScriptCmd_ReleaseAll: @ 20411c4 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x38]
	bl      Sprite_ReleaseAll

	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20411d4


.thumb
ScriptCmd_Lock: @ 20411d4 :thumb
	push    {r4,lr}
	mov     r1, r0
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	ldr     r0, [r4, #0x38]
	bl      GetAdressOfSpriteID
	bl      SetSpriteFlag_Lock

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x20411f0


.thumb
ScriptCmd_Release: @ 20411f0 :thumb
	push    {r4,lr}

	mov     r1, r0
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0

	ldr     r0, [r4, #0x38]
	bl      GetAdressOfSpriteID
	bl      UnsetSpriteFlag_Lock

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204120c


.thumb
ScriptCmd_AddPeople: @ 204120c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	mov     r0, r5
	bl      Function_203a4b4
	mov     r6, r0

	mov     r0, r5
	bl      Function_203a4bc
	str     r0, [sp, #0x0]

	ldr     r3, [r5, #0x1c]
	ldr     r0, [r5, #0x38]
	ldr     r3, [r3, #0x0]
	mov     r1, r4
	mov     r2, r6
	bl      Sprite_AddPeople
	cmp     r0, #0x0
	bne     branch_204124e
	bl      ErrorHandling
branch_204124e: @ 204124e :thumb

	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2041254


.thumb
ScriptCmd_RemovePeople: @ 2041254 :thumb
	push    {r3-r5,lr}
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0

	ldr     r0, [r5, #0x38]
	bl      GetAdressOfSpriteID
	cmp     r0, #0x0
	bne     branch_204127e
	bl      ErrorHandling
	b       branch_2041282

branch_204127e: @ 204127e :thumb
	bl      Sprite_RemovePeople
branch_2041282: @ 2041282 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2041286


.align 2, 0
.thumb
ScriptCmd_LockCam: @ 2041288 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xb
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	mov     r1, #0x2
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #12
	str     r1, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	ldr     r1, [r0, #0x1c]
	mov     r2, r7
	ldr     r1, [r1, #0x0]
	str     r1, [sp, #0x8]
	ldr     r0, [r0, #0x38]
	mov     r1, r6
	bl      InitSpriteStruct
	str     r0, [r4, #0x0]
	bl      Function_20642f8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2062d64
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_2062d80
	ldr     r0, [r4, #0x0]
	bl      GetSpriteAdr70
	mov     r1, r5
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	mov     r4, r0
	ldr     r1, [r1, #0x28]
	bl      Function_5_21e931c
	add     r5, #0x80
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	ldr     r1, [r1, #0x24]
	bl      Function_2020690
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x204131e


.align 2, 0
.thumb
ScriptCmd_ZoomCam: @ 2041320 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xb
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      Function_2061af4
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xff
	ldr     r0, [r0, #0x38]
	bl      GetAdressOfSpriteID
	bl      GetSpriteAdr70
	mov     r1, r5
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	mov     r4, r0
	ldr     r1, [r1, #0x28]
	bl      Function_5_21e931c
	add     r5, #0x80
	ldr     r1, [r5, #0x0]
	mov     r0, r4
	ldr     r1, [r1, #0x24]
	bl      Function_2020690
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2041364


.thumb
Function_2041364: @ 2041364 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xb
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, #0x2
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #12
	str     r1, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	ldr     r1, [r0, #0x1c]
	mov     r2, r7
	ldr     r1, [r1, #0x0]
	str     r1, [sp, #0x8]
	ldr     r0, [r0, #0x38]
	mov     r1, r6
	bl      InitSpriteStruct
	str     r0, [r4, #0x0]
	bl      Function_20642f8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2062d64
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_2062d80
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x20413d8


.thumb
Function_20413d8: @ 20413d8 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xb
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      Function_2061af4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20413ee


.align 2, 0
.thumb
ScriptCmd_FacePlayer: @ 20413f0 :thumb
	push    {r3-r5,lr}

	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	ldr     r0, [r5, #0x3c]
	bl      GetSpriteFaceDirection
	bl      GetOppositeFaceDirection
	mov     r4, r0

	mov     r0, r5
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2041414

	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_2041414: @ 2041414 :thumb
	mov     r1, r4
	bl      Function_5_21ecdfc

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204141e


.align 2, 0
.thumb
ScriptCmd_CheckSpritePosition: @ 2041420 :thumb
	push    {r4-r6,lr}
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionX
	strh    r0, [r6, #0x0]

	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionY
	strh    r0, [r4, #0x0]

	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2041462


thumb_func_start ScriptCmd_CheckIdSpritePosition
ScriptCmd_CheckIdSpritePosition: @ 2041464 :thumb
	push    {r4-r6,lr}
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	ldr     r0, [r5, #0x38]
	bl      GetAdressOfSpriteID
	mov     r5, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	mov     r0, r5
	bl      LoadSpritePositionX
	strh    r0, [r6, #0x0]

	mov     r0, r5
	bl      LoadSpritePositionY
	strh    r0, [r4, #0x0]

	mov     r0, #0x0
	pop     {r4-r6,pc}
thumb_func_end ScriptCmd_CheckIdSpritePosition


.align 2, 0
.thumb
ScriptCmd_CheckFacePosition: @ 20414c4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80

	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      GetSpriteFaceDirection
	strh    r0, [r4, #0x0]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20414ea


.align 2, 0
.thumb
ScriptCmd_CheckPersonPosition: @ 20414ec :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	cmp     r7, #0x0
	beq     branch_2041542
	lsl     r0, r7, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_2041550

branch_2041542: @ 2041542 :thumb
	lsl     r0, r7, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
branch_2041550: @ 2041550 :thumb
	blx     _ffix
	str     r0, [sp, #0x0]
	cmp     r6, #0x0
	beq     branch_204156c
	lsl     r0, r6, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_204157a

branch_204156c: @ 204156c :thumb
	lsl     r0, r6, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
branch_204157a: @ 204157a :thumb
	blx     _ffix
	str     r0, [sp, #0x4]
	cmp     r4, #0x0
	beq     branch_2041596
	lsl     r0, r4, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_20415a4

branch_2041596: @ 2041596 :thumb
	lsl     r0, r4, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
branch_20415a4: @ 20415a4 :thumb
	blx     _ffix
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	add     r1, sp, #0x0
	bl      Function_20630ac
	add     r5, #0x80
	ldr     r1, [r5, #0x0]
	add     r0, sp, #0x0
	ldr     r1, [r1, #0x24]
	bl      Function_2020990
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x20415ce


.align 2, 0
.thumb
ScriptCmd_ContinueFollow: @ 20415d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0

	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x38]
	bl      GetAdressOfSpriteID
	ldr     r2, [r4, #0x8]
	add     r1, r2, #0x1
	str     r1, [r4, #0x8]
	ldrb    r1, [r2, #0x0]
	bl      UnSetSpriteFlag_Follow

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2041602


.align 2, 0
.thumb
ScriptCmd_FollowHero: @ 2041604 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x38]
	bl      GetAdressOfSpriteID
	mov     r5, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteFollowHero

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204163a


.align 2, 0
.thumb
ScriptCmd_CheckFollowBattle: @ 204163c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	mov     r0, #0x0
	strh    r0, [r4, #0x0]

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x38]
	bl      GetAdressOfSpriteID
	cmp     r0, #0x0
	beq     branch_204167e
	bl      GetSpriteMovement
	strh    r0, [r4, #0x0]
branch_204167e: @ 204167e :thumb

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2041682


.align 2, 0
.thumb
ScriptCmd_StopFollowHero: @ 2041684 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x30
	ldr     r0, [r0, #0x38]
	bl      GetSpriteAdrWithMovementNr
	mov     r1, #0xfe
	bl      Function_20633c8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204169c


.thumb
ScriptCmd_StoreSealNum: @ 204169c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_15
	bl      Function_202cba8
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20416c6


.align 2, 0
.thumb
ScriptCmd_CheckPokemonParty: @ 20416c8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0

	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0

	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0

	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_15

	mov     r1, r6
	bl      Function_202cbc8
	strh    r0, [r4, #0x0]

	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2041708


.thumb
ScriptCmd_StorePokemonParty: @ 2041708 :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0

	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0

	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter

	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_15
	lsl     r2, r4, #16
	mov     r1, r6
	asr     r2, r2, #16
	bl      Function_202cae0
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204174a


/* Input:
r0: Ptr to ScriptHandler-Struct
*/
thumb_func_start ScriptCmd_SetPokemonPartyStored
ScriptCmd_SetPokemonPartyStored: @ 204174c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #ScriptHandler_OverWorldData
	mov     r4, r0
	ldr     r0, [r5]
	ldr     r0, [r0, #OverWorldData_VariableAreaAdress]
	bl      LoadPokePartyAdress
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	bl      Function_2076af8
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
thumb_func_end ScriptCmd_SetPokemonPartyStored


.thumb
ScriptCmd_ChoosePokemonMenu: @ 2041790 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, r5
	add     r1, #0x80
	mov     r4, r0
	ldr     r1, [r1, #0x0]
	mov     r0, #0x20
	bl      Function_203d3c0
	str     r0, [r4, #0x0]
	ldr     r1, [pc, #0xc] @ 0x20417bc, (=Function_2041d60+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x20417ba

.align 2
.word Function_2041d60+1 @ 0x20417bc



.thumb
ScriptCmd_ChooseTradePokemon: @ 20417c0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, r5
	add     r1, #0x80
	mov     r4, r0
	ldr     r1, [r1, #0x0]
	mov     r0, #0x20
	bl      Function_203d3e4
	str     r0, [r4, #0x0]
	ldr     r1, [pc, #0xc] @ 0x20417ec, (=Function_2041d60+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x20417ea

.align 2
.word Function_2041d60+1 @ 0x20417ec



.thumb
ScriptCmd_ChoosePokemonMenu2: @ 20417f0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x20
	ldr     r0, [r0, #0x10]
	bl      Function_203d50c
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2041812


.align 2, 0
.thumb
ScriptCmd_StorePokemonMenu2: @ 2041814 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2041840
	bl      ErrorHandling
branch_2041840: @ 2041840 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_203d408
	strh    r0, [r5, #0x0]
	ldrh    r0, [r5, #0x0]
	cmp     r0, #0x7
	bne     branch_2041852
	mov     r0, #0xff
	strh    r0, [r5, #0x0]
branch_2041852: @ 2041852 :thumb
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x204185e


.align 2, 0
.thumb
ScriptCmd_2d0: @ 2041860 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	ldr     r7, [r4, #0x0]
	cmp     r7, #0x0
	bne     branch_20418a0
	bl      ErrorHandling
branch_20418a0: @ 20418a0 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_203d408
	cmp     r0, #0x7
	bne     branch_20418b0
	mov     r0, #0xff
	strh    r0, [r5, #0x0]
	b       branch_20418d2

branch_20418b0: @ 20418b0 :thumb
	cmp     r0, #0x6
	bne     branch_20418d2
	mov     r0, r7
	add     r0, #0x2c
	ldrb    r0, [r0, #0x0]
	add     r7, #0x2d
	strh    r0, [r5, #0x0]
	ldrh    r0, [r5, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r5, #0x0]
	ldrb    r0, [r7, #0x0]
	strh    r0, [r6, #0x0]
	ldrh    r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_20418d2
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r6, #0x0]
branch_20418d2: @ 20418d2 :thumb
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x20418de


.align 2, 0
.thumb
ScriptCmd_2d4: @ 20418e0 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r7, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	ldr     r4, [r6, #0x0]
	cmp     r4, #0x0
	bne     branch_2041934
	bl      ErrorHandling
branch_2041934: @ 2041934 :thumb
	ldr     r0, [r6, #0x0]
	bl      Function_203d408
	cmp     r0, #0x7
	bne     branch_2041944
	mov     r0, #0xff
	strh    r0, [r5, #0x0]
	b       branch_2041978

branch_2041944: @ 2041944 :thumb
	cmp     r0, #0x6
	bne     branch_2041978
	mov     r0, r4
	add     r0, #0x2c
	ldrb    r0, [r0, #0x0]
	strh    r0, [r5, #0x0]
	ldrh    r0, [r5, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r5, #0x0]
	mov     r0, r4
	add     r0, #0x2d
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r4, #0x2e
	strh    r1, [r0, #0x0]
	ldrh    r0, [r0, #0x0]
	sub     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	strh    r1, [r0, #0x0]
	ldrb    r0, [r4, #0x0]
	strh    r0, [r7, #0x0]
	ldrh    r0, [r7, #0x0]
	cmp     r0, #0x0
	beq     branch_2041978
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r7, #0x0]
branch_2041978: @ 2041978 :thumb
	ldr     r0, [r6, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x2041984


.thumb
ScriptCmd_2db: @ 2041984 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r7, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	ldr     r4, [r6, #0x0]
	cmp     r4, #0x0
	bne     branch_20419d8
	bl      ErrorHandling
branch_20419d8: @ 20419d8 :thumb
	ldr     r0, [r6, #0x0]
	bl      Function_203d408
	cmp     r0, #0x7
	bne     branch_20419e8
	mov     r0, #0xff
	strh    r0, [r5, #0x0]
	b       branch_2041a1c

branch_20419e8: @ 20419e8 :thumb
	cmp     r0, #0x6
	bne     branch_2041a1c
	mov     r0, r4
	add     r0, #0x2c
	ldrb    r0, [r0, #0x0]
	strh    r0, [r5, #0x0]
	ldrh    r0, [r5, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r5, #0x0]
	mov     r0, r4
	add     r0, #0x2d
	ldrb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	add     r4, #0x2e
	strh    r1, [r0, #0x0]
	ldrh    r0, [r0, #0x0]
	sub     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	strh    r1, [r0, #0x0]
	ldrb    r0, [r4, #0x0]
	strh    r0, [r7, #0x0]
	ldrh    r0, [r7, #0x0]
	cmp     r0, #0x0
	beq     branch_2041a1c
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r7, #0x0]
branch_2041a1c: @ 2041a1c :thumb
	ldr     r0, [r6, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	pop     {r3-r7,pc}
@ 0x2041a28

.thumb
ScriptCmd_ChsPokeContest: @ 2041a28 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x8]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]
	mov     r1, r5
	str     r6, [sp, #0x4]
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r0, #0x20
	mov     r3, r7
	bl      Function_203d578
	str     r0, [r4, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2041aac, (=Function_2041d60+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2041aac

.word Function_2041d60+1 @ 0x2041aac



.thumb
ScriptCmd_StorePokeContest: @ 2041ab0 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2041af0
	bl      ErrorHandling
branch_2041af0: @ 2041af0 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_203d408
	strh    r0, [r6, #0x0]
	ldrh    r0, [r6, #0x0]
	cmp     r0, #0x7
	bne     branch_2041b02
	mov     r0, #0xff
	strh    r0, [r6, #0x0]
branch_2041b02: @ 2041b02 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_203d438
	strh    r0, [r5, #0x0]
	ldrh    r0, [r5, #0x0]
	cmp     r0, #0x1
	bne     branch_2041b14
	mov     r0, #0x1
	b       branch_2041b16

branch_2041b14: @ 2041b14 :thumb
	mov     r0, #0x0
branch_2041b16: @ 2041b16 :thumb
	strh    r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2041b24

.thumb
ScriptCmd_ShowPokeInfo: @ 2041b24 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r5
	add     r1, #0x80
	mov     r2, r0
	ldr     r1, [r1, #0x0]
	mov     r0, #0x20
	bl      Function_203d5c8
	str     r0, [r4, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2041b64, (=Function_2041d60+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2041b62

.align 2
.word Function_2041d60+1 @ 0x2041b64



.thumb
ScriptCmd_StorePokeMove: @ 2041b68 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2041b94
	bl      ErrorHandling
branch_2041b94: @ 2041b94 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_203d440
	strh    r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x2041ba8

.thumb
Function_2041ba8: @ 2041ba8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r5
	add     r1, #0x80
	mov     r3, r0
	ldr     r1, [r1, #0x0]
	mov     r0, #0x20
	mov     r2, r6
	bl      Function_203e63c
	str     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2041bfc, (=Function_2041d60+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2041bfc

.word Function_2041d60+1 @ 0x2041bfc



.thumb
Function_2041c00: @ 2041c00 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2041c2c
	bl      ErrorHandling
branch_2041c2c: @ 2041c2c :thumb
	ldr     r0, [r4, #0x0]
	ldrb    r0, [r0, #0x16]
	strh    r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2041c40

.thumb
Function_2041c40: @ 2041c40 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	mov     r2, r7
	bl      Function_5_21dbd98
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2041c8a


.align 2, 0
.thumb
Function_2041c8c: @ 2041c8c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_6
	bl      GetVariableAreaAdress_6_66
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2041cb6


.align 2, 0
.thumb
Function_2041cb8: @ 2041cb8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2041cbc

.thumb
Function_2041cbc: @ 2041cbc :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2041cc0

.thumb
Function_2041cc0: @ 2041cc0 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2041cc4

.thumb
Function_2041cc4: @ 2041cc4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2041cc8


.thumb
Function_2041cc8: @ 2041cc8 :thumb
	push    {r3-r5,lr}
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	mov     r1, #0x13
	mov     r0, r5
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      Function_20509b4
	cmp     r0, #0x0
	beq     branch_2041ce6
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_2041ce6: @ 2041ce6 :thumb
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2041cf4


.thumb
Function_2041cf4: @ 2041cf4 :thumb
	push    {r4-r6,lr}
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	mov     r1, #0x13
	mov     r0, r5
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	ldr     r6, [r4, #0x0]
	bl      Function_20509b4
	cmp     r0, #0x0
	beq     branch_2041d14
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_2041d14: @ 2041d14 :thumb
	ldr     r0, [r6, #0x8]
	cmp     r0, #0x1
	bne     branch_2041d2c
	mov     r0, #0xb
	bl      Function_202bcfc
	add     r5, #0x9c
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	mov     r2, #0x1
	bl      Function_202b758
branch_2041d2c: @ 2041d2c :thumb
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2041d3a


.align 2, 0
.thumb
Function_2041d3c: @ 2041d3c :thumb
	push    {r4,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_209c238
	cmp     r0, #0x0
	bne     branch_2041d58
	mov     r0, #0x0
	pop     {r4,pc}

branch_2041d58: @ 2041d58 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2041d60


.thumb
Function_2041d60: @ 2041d60 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_20509b4
	cmp     r0, #0x0
	bne     branch_2041d72
	mov     r0, #0x1
	pop     {r3,pc}

branch_2041d72: @ 2041d72 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2041d76


.align 2, 0
.thumb
ScriptCmd_CallEnd: @ 2041d78 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x10]
	bl      Function_2055868
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2041d88

.thumb
ScriptCmd_PreWfc: @ 2041d88 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x10]
	bl      Function_2055820
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2041d98

.thumb
Function_2041d98: @ 2041d98 :thumb
	push    {r3-r5,lr}
	ldr     r0, [r0, #0xc]
	mov     r5, r1
	mov     r4, r2
	bl      LoadVariableAreaAdress_e
	cmp     r5, #0x0
	bne     branch_2041db6
	mov     r1, r4
	bl      Function_2029d10
	cmp     r0, #0x0
	bne     branch_2041dc4
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_2041db6: @ 2041db6 :thumb
	mov     r1, r4
	bl      Function_2029d2c
	cmp     r0, #0x0
	bne     branch_2041dc4
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_2041dc4: @ 2041dc4 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2041dc8

.thumb
Function_2041dc8: @ 2041dc8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0xc]
	mov     r4, r2
	mov     r6, r3
	bl      LoadVariableAreaAdress_e
	mov     r7, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_2041d98
	cmp     r0, #0x0
	bne     branch_2041dec
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_2041dec: @ 2041dec :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0xc
	bl      malloc
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x1]
	strb    r1, [r0, #0x2]
	strb    r1, [r0, #0x3]
	strb    r1, [r0, #0x4]
	strb    r1, [r0, #0x5]
	strb    r1, [r0, #0x6]
	strb    r1, [r0, #0x7]
	strb    r1, [r0, #0x8]
	strb    r1, [r0, #0x9]
	strb    r1, [r0, #0xa]
	strb    r1, [r0, #0xb]
	str     r7, [r0, #0x0]
	str     r4, [r0, #0x8]
	str     r6, [r0, #0x4]
	pop     {r3-r7,pc}
@ 0x2041e16


.align 2, 0
.thumb
Function_2041e18: @ 2041e18 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_5_21eaf50
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2041e26


.align 2, 0
.thumb
ScriptCmd_Wfc_: @ 2041e28 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x74]
	bl      Function_207ddc0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2041e34

.thumb
Function_2041e34: @ 2041e34 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	ldr     r1, [r4, #0x0]
	ldr     r1, [r1, #0x4]
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2041e64

.thumb
ScriptCmd_StorePokeColosseumLost: @ 2041e64 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	bl      Function_203608c
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2041e82


.align 2, 0
.thumb
ScriptCmd_PokemonPicture: @ 2041e84 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x40] @ 0x2041f10, (=0x3d9)
	ldr     r0, [r0, #0x8]
	mov     r1, #0x3
	mov     r3, #0xb
	bl      Function_200daa4
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x2041f10, (=0x3d9)
	mov     r1, #0x3
	str     r0, [sp, #0x4]
	lsl     r0, r7, #24
	str     r4, [sp, #0x8]
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	mov     r0, #0x4
	str     r0, [sp, #0x10]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r2, #0xa
	ldr     r0, [r0, #0x8]
	mov     r3, #0x5
	bl      Function_200ebf0
	add     r5, #0x80
	str     r0, [r6, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      Function_20451b4
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2041f10

.word 0x3d9 @ 0x2041f10



.thumb
ScriptCmd_PokemonPartyPicture: @ 2041f14 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x48] @ 0x2041fa8, (=0x3d9)
	ldr     r0, [r0, #0x8]
	mov     r1, #0x3
	mov     r3, #0xb
	bl      Function_200daa4
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2041fa8, (=0x3d9)
	mov     r1, #0x3
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [sp, #0xc]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r2, #0xa
	ldr     r0, [r0, #0x8]
	mov     r3, #0x5
	bl      Function_200ec48
	str     r0, [r6, #0x0]
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r0
	add     r5, #0x80
	lsl     r1, r1, #16
	ldr     r0, [r5, #0x0]
	lsr     r1, r1, #16
	bl      Function_20451b4
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2041fa8

.word 0x3d9 @ 0x2041fa8



.thumb
ScriptCmd_HidePicture: @ 2041fac :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	strb    r1, [r0, #0x0]
	mov     r0, r1
	pop     {r3,pc}
@ 0x2041fc2


.align 2, 0
.thumb
ScriptCmd_ActLearning: @ 2041fc4 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	strb    r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2041fda


.align 2, 0
.thumb
ScriptCmd_SetSoundLearning: @ 2041fdc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	str     r0, [r4, #0x64]
	ldr     r1, [pc, #0xc] @ 0x2041ff4, (=Function_2041ff8+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2041ff2

.align 2
.word Function_2041ff8+1 @ 0x2041ff4



.thumb
Function_2041ff8: @ 2041ff8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	ldr     r1, [r5, #0x64]
	add     r0, #0x80
	lsl     r1, r1, #16
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #16
	bl      ScriptHandler_CheckLoadParameter
	ldr     r0, [r4, #0x0]
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x3
	beq     branch_2042024
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_2042024: @ 2042024 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2042028


.thumb
Function_2042028: @ 2042028 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, r6
	bl      ScriptHandler_CheckLoadParameter
	mov     r2, r0
	ldr     r0, [r5, #0x74]
	ldr     r1, [r4, #0x0]
	bl      Function_5_21db888
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x204205a


.align 2, 0
.thumb
Function_204205c: @ 204205c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_204209c
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	bl      Function_2071cb4
	cmp     r0, #0x0
	beq     branch_2042092
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, #0x0]
	bl      Function_8_224c5dc
	cmp     r0, #0x0
	bne     branch_204209c

branch_2042092: @ 2042092 :thumb
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	bl      Function_5_21dbed4
branch_204209c: @ 204209c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20420a0

.thumb
ScriptCmd_Interview: @ 20420a0 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x74]
	bl      Function_209acf4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20420ac

.thumb
Function_20420ac: @ 20420ac :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r1, r0
	ldr     r0, [r4, #0x74]
	bl      Function_209b344
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20420cc

.thumb
ScriptCmd_DressPokemon: @ 20420cc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	ldr     r2, [r5, #0x0]
	mov     r1, r6
	str     r0, [sp, #0x0]
	ldr     r0, [r2, #0x10]
	ldr     r2, [r2, #0xc]
	mov     r3, r4
	bl      Function_203dac0
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2042122


.align 2, 0
.thumb
ScriptCmd_DisplayDressedPokemon: @ 2042124 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r1, r5
	add     r1, #0x80
	mov     r6, r0
	ldr     r1, [r1, #0x0]
	mov     r0, #0xb
	mov     r2, #0x0
	mov     r3, r7
	bl      Function_2041dc8
	str     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_204216c
	mov     r0, #0x1
	strh    r0, [r6, #0x0]
	pop     {r3-r7,pc}

branch_204216c: @ 204216c :thumb
	mov     r0, #0x0
	strh    r0, [r6, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, #0x0]
	bl      Function_203db24
	ldr     r1, [pc, #0x8] @ 0x2042188, (=Function_2041cc8+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2042188

.word Function_2041cc8+1 @ 0x2042188



.thumb
ScriptCmd_DisplayContestPokemon: @ 204218c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r1, r5
	add     r1, #0x80
	mov     r6, r0
	ldr     r1, [r1, #0x0]
	mov     r0, #0xb
	mov     r2, #0x1
	mov     r3, r7
	bl      Function_2041dc8
	str     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_20421d4
	mov     r0, #0x1
	strh    r0, [r6, #0x0]
	pop     {r3-r7,pc}

branch_20421d4: @ 20421d4 :thumb
	mov     r0, #0x0
	strh    r0, [r6, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, #0x0]
	bl      Function_203db24
	ldr     r1, [pc, #0x8] @ 0x20421f0, (=Function_2041cc8+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x20421f0

.word Function_2041cc8+1 @ 0x20421f0



.thumb
ScriptCmd_CheckDress: @ 20421f4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	mov     r2, r6
	bl      Function_2041d98
	cmp     r0, #0x1
	bne     branch_2042228
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	pop     {r4-r6,pc}

branch_2042228: @ 2042228 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2042230

.thumb
ScriptCmd_CheckContestWin: @ 2042230 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	mov     r2, r6
	bl      Function_2041d98
	cmp     r0, #0x1
	bne     branch_2042264
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	pop     {r4-r6,pc}

branch_2042264: @ 2042264 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x204226c

.thumb
ScriptCmd_StorePhotoName: @ 204226c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_e
	mov     r1, #0x0
	bl      Function_2029ca8
	mov     r1, r4
	bl      Function_202a0a0
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x204229c

.thumb
ScriptCmd_Geonet: @ 204229c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203e224
	ldr     r1, [pc, #0x8] @ 0x20422b4, (=Function_2041d60+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20422b4

.word Function_2041d60+1 @ 0x20422b4



.thumb
Function_20422b8: @ 20422b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203e704
	ldr     r1, [pc, #0x8] @ 0x20422d0, (=Function_2041d60+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20422d0

.word Function_2041d60+1 @ 0x20422d0



.thumb
ScriptCmd_OpenBallCapsule: @ 20422d4 :thumb
	push    {r3,lr}
	mov     r1, r0
	ldr     r0, [r1, #0x74]
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0xc]
	bl      Function_20980dc
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20422e8

.thumb
ScriptCmd_OpenSinnohMaps: @ 20422e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, #0x5
	mov     r4, r0
	mov     r0, #0xb
	lsl     r1, r1, #6
	bl      malloc
	str     r0, [r4, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, #0x0]
	mov     r2, #0x2
	bl      Function_206b70c
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, #0x0]
	bl      Function_203d884
	ldr     r1, [pc, #0xc] @ 0x204232c, (=Function_2041cc8+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x204232a

.align 2
.word Function_2041cc8+1 @ 0x204232c



.thumb
ScriptCmd_BerryPoffin: @ 2042330 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r2, #0xb
	bl      Function_2099674
	str     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2042364, (=Function_2041cc8+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2042364

.word Function_2041cc8+1 @ 0x2042364



.thumb
ScriptCmd_SetvarBTowerChs: @ 2042368 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdressItemList
	mov     r1, #0x4
	bl      Function_207d69c
	cmp     r0, #0x0
	bne     branch_204239c
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_204239c: @ 204239c :thumb
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_10
	bl      Function_202ac98
	cmp     r0, #0x64
	blo     branch_20423b6
	mov     r0, #0x2
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_20423b6: @ 20423b6 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x20423bc

.thumb
ScriptCmd_BattleRoomResult: @ 20423bc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, #0xb
	mov     r1, #0x8
	bl      malloc
	mov     r1, #0x0
	mov     r2, #0x8
	str     r0, [r6, #0x0]
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x0]
	strh    r7, [r4, #0x4]
	strh    r0, [r4, #0x6]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	str     r0, [r4, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r1, [r6, #0x0]
	bl      Function_203d9d8
	ldr     r1, [pc, #0x8] @ 0x2042430, (=Function_2041cc8+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2042430

.word Function_2041cc8+1 @ 0x2042430



.thumb
ScriptCmd_OpenPCFunction: @ 2042434 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, #0xb
	mov     r1, #0xc
	bl      malloc
	mov     r1, r5
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0xc]
	str     r1, [r0, #0x0]
	ldr     r2, [r5, #0x8]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r1, [r2, #0x0]
	str     r1, [r0, #0x4]
	str     r0, [r4, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, #0x0]
	bl      Function_203d754
	ldr     r1, [pc, #0xc] @ 0x204247c, (=Function_2041cf4+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x204247a

.align 2
.word Function_2041cf4+1 @ 0x204247c



.thumb
ScriptCmd_DrawUnion: @ 2042480 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203ddfc
	ldr     r1, [pc, #0x8] @ 0x2042498, (=Function_2041d60+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2042498

.word Function_2041d60+1 @ 0x2042498
.thumb
ScriptCmd_TrainerCaseUnion: @ 204249c :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_2072204
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20424aa


.align 2, 0


.thumb
ScriptCmd_TradeUnion: @ 20424ac :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x10]
	bl      Function_203dddc
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20424bc

.thumb
ScriptCmd_RecordMixingUnion: @ 20424bc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203de34
	str     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x20424e4, (=Function_2041cc8+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x20424e4

.word Function_2041cc8+1 @ 0x20424e4
.thumb
ScriptCmd_EndGame: @ 20424e8 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x10]
	bl      Function_2052e58
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20424f8

.thumb
ScriptCmd_HallFameAnm: @ 20424f8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203e244
	str     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2042520, (=Function_2041cc8+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2042520

.word Function_2041cc8+1 @ 0x2042520



.thumb
Function_2042524: @ 2042524 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	add     r0, #0x80
	ldr     r0, [r0, #0x0]

	mov     r1, #0x4
	ldr     r0, [r0, #0xc]
	add     r2, sp, #0x0
	bl      Function_202444c
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter

	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r1, [sp, #0x0]
	cmp     r1, #0x2
	bne     branch_2042556
	mov     r1, #0x1
	strh    r1, [r0, #0x0]
branch_2042556: @ 2042556 :thumb
	mov     r0, r4
	bl      free
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2042560


.thumb
ScriptCmd_StoreWfcStatus: @ 2042560 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_2039074
	cmp     r0, #0x0
	beq     branch_20425b4
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, r6
	bl      Function_203e0fc
	ldr     r1, [pc, #0x10] @ 0x20425bc, (=Function_2041d60+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	b       branch_20425b8
@ 0x20425b4

.thumb
branch_20425b4: @ 20425b4 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
.thumb
branch_20425b8: @ 20425b8 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x20425bc

.word Function_2041d60+1 @ 0x20425bc
.thumb
ScriptCmd_StartWfc: @ 20425c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r1, r0
	ldr     r0, [r4, #0x74]
	bl      Function_207dde0
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20425e0


thumb_func_start ScriptCmd_ChooseStarter
ScriptCmd_ChooseStarter: @ 20425e0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0

	mov     r0, #0xb
	mov     r1, #0x8
	bl      malloc
	str     r0, [r4, #0x0]
	mov     r6, r0

	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	ldr     r0, [r0, #0xc]
	bl      LoadPlayerDataAdress
	str     r0, [r6, #0x4]

	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	ldr     r1, [r4, #0x0]
	bl      OverWorldData_InitChooseScreen

	ldr     r1, =Function_2041d60+1
	mov     r0, r5
	bl      ScriptHandler_AddFunction

	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2042622

.align 2
.pool
thumb_func_end ScriptCmd_ChooseStarter



thumb_func_start ScriptCmd_BattleStarter
ScriptCmd_BattleStarter: @ 2042628 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	add     r5, #ScriptHandler_OverWorldData
	mov     r4, r0
	ldr     r0, [r5]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress

	ldr     r1, [r4, #0x0]
	ldr     r1, [r1, #0x0]
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_206b044

	ldr     r0, [r4, #0x0]
	bl      free

	mov     r0, #0x0
	pop     {r3-r5,pc}
thumb_func_end ScriptCmd_BattleStarter


.thumb
ScriptCmd_OpenBerryPouch: @ 2042658 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x8]
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	ldrb    r0, [r1, #0x0]
	cmp     r0, #0x0
	beq     branch_204266c
	mov     r0, #0x1
	b       branch_204266e

branch_204266c: @ 204266c :thumb
	mov     r0, #0x0
branch_204266e: @ 204266e :thumb
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_204268a
	bl      ErrorHandling
branch_204268a: @ 204268a :thumb

	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	bl      Function_203d264
	str     r0, [r6, #0x0]
	ldr     r1, [pc, #0x8] @ 0x20426a4, (=Function_2041d60+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x20426a4

.word Function_2041d60+1 @ 0x20426a4



.thumb
Function_20426a8: @ 20426a8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter

	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_20426d4
	bl      ErrorHandling
branch_20426d4: @ 20426d4 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_203d2c4
	strh    r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x20426e8


.thumb
ScriptCmd_ChoosePlayerName: @ 20426e8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x74]
	mov     r2, r1
	mov     r3, #0x7
	bl      Function_203dfe8
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2042716


.align 2, 0
.thumb
ScriptCmd_ChoosePokemonName: @ 2042718 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	ldr     r0, [r4, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x75
	add     r2, sp, #0xc
	mov     r7, r0
	bl      GetPkmnData
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r7
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r2, r0
	str     r6, [sp, #0x0]
	add     r0, sp, #0xc
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	ldr     r0, [r5, #0x74]
	mov     r1, #0x1
	mov     r3, #0xa
	bl      Function_203dfe8
	mov     r0, #0x1
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2042784

.thumb
ScriptCmd_ThankNameInsert: @ 2042784 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	str     r2, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x74]
	mov     r1, #0x6
	mov     r3, #0xa
	bl      Function_203dfe8
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x20427b2


.align 2, 0
.thumb
ScriptCmd_SpinTradeUnion: @ 20427b4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0

	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_209c1ec
	str     r0, [r4, #0x0]

	ldr     r1, [pc, #0x8] @ 0x20427dc, (=Function_2041d3c+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction

	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x20427dc

.word Function_2041d3c+1 @ 0x20427dc



.thumb
ScriptCmd_CheckVersionGame: @ 20427e0 :thumb
	push    {r3-r5,lr}
	mov     r4, r0

	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	bl      Function_205be38
	mov     r5, r0

	bl      Function_2025fd4
	cmp     r5, r0
	bne     branch_2042806
	mov     r0, #0x0
	b       branch_2042808

branch_2042806: @ 2042806 :thumb
	mov     r0, #0x1
branch_2042808: @ 2042808 :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204280e


.align 2, 0
.thumb
ScriptCmd_PhraseBox1W: @ 2042810 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r2, r0
	ldr     r0, [pc, #0x14] @ 0x2042864, (=0xffff)
	add     r5, #0x80
	strh    r0, [r2, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x10]
	mov     r3, #0x0
	bl      Function_203d80c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2042862

.align 2
.word 0xffff @ 0x2042864



.thumb
ScriptCmd_PhraseBox2W: @ 2042868 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r3, r0
	ldr     r0, [pc, #0x14] @ 0x20428d0, (=0xffff)
	add     r5, #0x80
	strh    r0, [r4, #0x0]
	strh    r0, [r3, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	ldr     r0, [r0, #0x10]
	mov     r2, r4
	bl      Function_203d80c
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x20428d0

.word 0xffff @ 0x20428d0
.thumb
ScriptCmd_SetvarPhraseBox1W: @ 20428d4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r6
	bl      Function_200be48
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2042916


.align 2, 0


.thumb
ScriptCmd_FadeScreen: @ 2042918 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	str     r4, [sp, #0x0]
	mov     r3, r0
	str     r6, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r7
	mov     r2, r7
	bl      Function_200f174
	mov     r0, #0x0
	bl      Function_200f32c
	mov     r0, #0x1
	bl      Function_200f32c
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2042960

.thumb
ScriptCmd_ResetScreen: @ 2042960 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x8] @ 0x204296c, (=Function_2042970+1)
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x204296c

.word Function_2042970+1 @ 0x204296c



.thumb
Function_2042970: @ 2042970 :thumb
	push    {r3,lr}
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_204297e
	mov     r0, #0x1
	pop     {r3,pc}

branch_204297e: @ 204297e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2042982


thumb_func_start ScriptCmd_Warp
ScriptCmd_Warp: @ 2042984 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]

	mov     r2, #0x0
	ldr     r0, [r5, #ScriptHandler_74]
	mov     r1, r6
	mvn     r2, r2
	mov     r3, r7
	bl      WarpPlayer

	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
thumb_func_start ScriptCmd_Warp


.thumb
ScriptCmd_BattlePokeColosseum: @ 20429f4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	str     r4, [sp, #0x0]
	mov     r2, #0x0
	add     r5, #0x80
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	ldr     r0, [r0, #0x10]
	mvn     r2, r2
	mov     r3, r7
	bl      Function_2054800
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2042a50

.thumb
ScriptCmd_WarpLastElevator: @ 2042a50 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x10]
	bl      Function_2054864
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2042a60

.thumb
Function_2042a60: @ 2042a60 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_6
	bl      AddVariableAreaAdress_6_MapData2
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	ldr     r1, [r5, #0x0]
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2042a8c

.thumb
ScriptCmd_CheckEffectHm: @ 2042a8c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	ldr     r1, [r4, #0x0]
	ldr     r1, [r1, #0x1c]
	ldr     r1, [r1, #0x0]
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2042aae


.align 2, 0
.thumb
ScriptCmd_RockClimbAnimation: @ 2042ab0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      GetSpriteFaceDirection
	mov     r1, r0
	ldr     r0, [r5, #0x74]
	mov     r2, r4
	bl      Function_5_21e0734
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2042ae0


.thumb
ScriptCmd_SurfAnimation: @ 2042ae0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bl      Function_2069434
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205f16c
	cmp     r0, #0x1
	bne     branch_2042b0e
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      GetSpriteFaceDirection
	b       branch_2042b1a
@ 0x2042b0e

.thumb
branch_2042b0e: @ 2042b0e :thumb
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205ea94
.thumb
branch_2042b1a: @ 2042b1a :thumb
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r5, #0x74]
	mov     r1, r4
	bl      Function_5_21e00ec
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2042b3c


.thumb
ScriptCmd_WaterfallAnimation: @ 2042b3c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      GetSpriteFaceDirection
	mov     r1, r0
	ldr     r0, [r5, #0x74]
	mov     r2, r4
	bl      Function_5_21e0998
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2042b6c


.thumb
ScriptCmd_FlyAnimation: @ 2042b6c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	.hword  0x1e92 @ sub r2, r2, #0x2
	mov     r3, r6
	bl      Function_2053ab4
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2042bb8

.thumb
ScriptCmd_FlashAnimation: @ 2042bb8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_6
	mov     r5, r0
	mov     r1, #0x0
	bl      SetVariableAreaAdress_6_66
	mov     r0, r5
	bl      GetVariableAreaAdress_6_66
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0, #0xc]
	bl      Function_5_21d5f7c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2042be6


.align 2, 0
.thumb
ScriptCmd_DefogAnimation: @ 2042be8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_6
	mov     r5, r0
	mov     r1, #0x0
	bl      SetVariableAreaAdress_6_66
	mov     r0, r5
	bl      GetVariableAreaAdress_6_66
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0, #0xc]
	bl      Function_5_21d5f7c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2042c16


.align 2, 0
.thumb
ScriptCmd_PrepareHMEffect: @ 2042c18 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb98
	mov     r3, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	mov     r2, r6
	bl      Function_6_2243f88
	str     r0, [r4, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2042c7c, (=Function_2042c80+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2042c7a

.align 2
.word Function_2042c80+1 @ 0x2042c7c



.thumb
Function_2042c80: @ 2042c80 :thumb
	push    {r4,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Function_6_2243fbc
	cmp     r0, #0x1
	bne     branch_2042ca2
	ldr     r0, [r4, #0x0]
	bl      Function_6_2243fc8
	mov     r0, #0x1
	pop     {r4,pc}

branch_2042ca2: @ 2042ca2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2042ca6


.align 2, 0
.thumb
ScriptCmd_Tuxedo: @ 2042ca8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x74]
	bl      Function_5_21e0dd4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2042cb4


.thumb
ScriptCmd_CheckBike: @ 2042cb4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0

	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb74
	cmp     r0, #0x1
	bne     branch_2042cdc
	mov     r0, #0x1
	b       branch_2042cde

branch_2042cdc: @ 2042cdc :thumb
	mov     r0, #0x0
branch_2042cde: @ 2042cde :thumb
	strh    r0, [r4, #0x0]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2042ce4

.thumb
ScriptCmd_RideBike: @ 2042ce4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x8]
	add     r0, r1, #0x1
	str     r0, [r4, #0x8]
	ldrb    r0, [r1, #0x0]
	cmp     r0, #0x1
	bne     branch_2042d2c
	mov     r0, r4
	add     r0, #0x80
	mov     r1, #0x12
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #6
	bl      Function_20553f0
	mov     r0, r4
	add     r0, #0x80
	mov     r1, #0x12
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #6
	mov     r2, #0x1
	bl      Function_2055554
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x3c]
	bl      Function_5_21dfb54
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_5_21dfb5c
	b       branch_2042d6c

branch_2042d2c: @ 2042d2c :thumb
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x3c]
	bl      Function_5_21dfb54
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_5_21dfb5c
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_20553f0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r1, [r0, #0x1c]
	ldr     r1, [r1, #0x0]
	bl      Function_2055428
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	mov     r2, #0x1
	bl      Function_2055554
branch_2042d6c: @ 2042d6c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2042d70


.thumb
ScriptCmd_BikeRide: @ 2042d70 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2042d80, (=0x4a5)
	bl      Function_20553f0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2042d80

.word 0x4a5 @ 0x2042d80



.thumb
ScriptCmd_RideBike2: @ 2042d84 :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x8]
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldrb    r1, [r2, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205efc4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2042d9c


.thumb
ScriptCmd_CheckGivePokeHeroAnimation: @ 2042d9c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb74
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2042dc2


.align 2, 0
.thumb
ScriptCmd_GivePokeHeroAnimation: @ 2042dc4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb84
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2042ddc


.thumb
ScriptCmd_StopGivePokeHeroAnimation: @ 2042ddc :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_5_21dfb5c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2042dec


.thumb
ScriptCmd_CheckSwarmPoke: @ 2042dec :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	ldr     r0, [r0, #OverWorldData_VariableAreaAdress]
	bl      LoadVariableAreaAdress_19
	mov     r5, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord

	add     r4, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r4]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	mov     r0, r5
	mov     r1, #0x2
	bl      Function_202d814_GetSwarmRNGNrs
	mov     r1, r6
	mov     r2, r4
	bl      Function_6_224322c_CheckSwarmPoke

	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2042e36


.align 2, 0
.thumb
ScriptCmd_StoreStarter: @ 2042e38 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #ScriptHandler_OverWorldData
	mov     r4, r0
	ldr     r0, [r5]
	ldr     r0, [r0, #OverWorldData_VariableAreaAdress]
	bl      LoadFlagAdress
	bl      Function_206b054
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2042e62


.align 2, 0
.thumb
ScriptCmd_EndTrainerBattle: @ 2042e64 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	mov     r1, #0x8
	mov     r0, r4
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r0, r4
	mov     r1, #0x10
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x6
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r0, r4
	mov     r1, #0x3
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	ldr     r2, [r6, #0x0]
	mov     r3, #0xb
	bl      LoadNPCTrainerTbl_2
	mov     r0, r4
	mov     r1, #0x1
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	mov     r1, #0x1
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPlayerDataAdress
	mov     r2, r0
	ldr     r1, [r6, #0x0]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_205d994
	strb    r0, [r7, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2042f00, (=MessageLoop+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2042f00

.word MessageLoop+1 @ 0x2042f00



.thumb
ScriptCmd_ChooseFriend: @ 2042f04 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r6, r0
	ldr     r2, [sp, #0x0]
	ldr     r3, [sp, #0x4]
	mov     r0, r4
	mov     r1, r7
	bl      Function_7_224b414
	ldr     r1, [pc, #0x10] @ 0x2042f70, (=Function_2042f74+1)
	mov     r0, r5
	str     r6, [r5, #0x64]
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2042f6e

.align 2
.word Function_2042f74+1 @ 0x2042f70



.thumb
Function_2042f74: @ 2042f74 :thumb
	push    {r4,lr}
	mov     r1, r0
	ldr     r1, [r1, #0x64]
	add     r0, #0x80
	lsl     r1, r1, #16
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #16
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	bl      Function_7_224b460
	cmp     r0, #0x0
	bne     branch_2042f94
	mov     r0, #0x0
	pop     {r4,pc}

branch_2042f94: @ 2042f94 :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2042f9a


.align 2, 0
.thumb
ScriptCmd_WirelessBattleWait: @ 2042f9c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r6, r0
	ldr     r2, [sp, #0x0]
	ldr     r3, [sp, #0x4]
	mov     r0, r4
	mov     r1, r7
	bl      Function_7_224b47c
	ldr     r1, [pc, #0x10] @ 0x2043008, (=Function_204300c+1)
	mov     r0, r5
	str     r6, [r5, #0x64]
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2043006

.align 2
.word Function_204300c+1 @ 0x2043008



.thumb
Function_204300c: @ 204300c :thumb
	push    {r4,lr}
	mov     r1, r0
	ldr     r1, [r1, #0x64]
	add     r0, #0x80
	lsl     r1, r1, #16
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #16
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	bl      Function_7_224b4c8
	cmp     r0, #0x0
	bne     branch_204302c
	mov     r0, #0x0
	pop     {r4,pc}

branch_204302c: @ 204302c :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2043032


.align 2, 0
.thumb
Function_2043034: @ 2043034 :thumb
	push    {r3,lr}
	bl      ScriptHandler_LoadHWord
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x204303e


.align 2, 0
.thumb
Function_2043040: @ 2043040 :thumb
	push    {r3,lr}
	bl      ScriptHandler_LoadHWord
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x204304a


.align 2, 0
.thumb
Function_204304c: @ 204304c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	add     r5, #0x80
	ldr     r4, [r6, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x10]
	add     r1, #0x2c
	mov     r2, #0x5
	bl      Function_205167c
	mov     r0, r4
	bl      free
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x204307c


.thumb
ScriptCmd_PokemonContest: @ 204307c :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2043080


.thumb
ScriptCmd_WarpMapElevator: @ 2043080 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0xc]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r4, #0x80
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_6
	add     r1, sp, #0x0
	bl      CopyToVariableAreaAdress_6_3c
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x20430fe


.align 2, 0
.thumb
ScriptCmd_CheckFloor: @ 2043100 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_6
	bl      AddVariableAreaAdress_6_MapData3
	ldr     r0, [r0, #0x0]
	bl      Function_5_21dccc8
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2043130


.thumb
ScriptCmd_StartLift: @ 2043130 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	str     r0, [sp, #0x8]
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r7, r0
	ldr     r0, [r5, #0x8]
	add     r1, r0, #0x1
	str     r1, [r5, #0x8]
	ldrb    r6, [r0, #0x0]
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0xc]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	ldr     r1, [r7, #0x0]
	ldr     r3, [sp, #0xc]
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	mov     r1, r6
	mov     r2, r4
	bl      Function_5_21dcb24
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x204318e


.align 2, 0
.thumb
ScriptCmd_StoreSinPokemonSeen: @ 2043190 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokedexDataAdress
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0

	mov     r0, r4
	bl      Function_2026eac
	strh    r0, [r5, #0x0]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20431be


.align 2, 0
.thumb
Function_20431c0: @ 20431c0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokedexDataAdress
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      Function_2026e64
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20431ee


thumb_func_start ScriptCmd_StoreTotPokemonSeen
ScriptCmd_StoreTotPokemonSeen: @ 20431f0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokedexDataAdress
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0

	mov     r0, r4
	bl      GetNrOfPkmnSeen
	strh    r0, [r5, #0x0]

	mov     r0, #0x0
	pop     {r3-r5,pc}
thumb_func_end ScriptCmd_StoreTotPokemonSeen


.align 2, 0
.thumb
ScriptCmd_StoreNatPokemonSeen: @ 2043220 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokedexDataAdress
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      Function_2026dd0
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204324e


.align 2, 0
.thumb
Function_2043250: @ 2043250 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2043254


.thumb
ScriptCmd_SetVarTextPokedex: @ 2043254 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokedexDataAdress
	mov     r7, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	ldr     r1, [r5, #0x8]
	str     r0, [sp, #0x0]
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r6, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	cmp     r6, #0x0
	bne     branch_20432ba
	mov     r0, r7
	bl      Function_2026f58
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x2
	mov     r2, #0xa
	bl      Function_206af3c
	mov     r1, r0
	lsl     r1, r1, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      Function_205e078
	b       branch_20432d4
@ 0x20432ba

.thumb
branch_20432ba: @ 20432ba :thumb
	mov     r0, r7
	bl      Function_2026f20
	mov     r5, r0
	ldr     r0, [sp, #0x0]
	bl      GetGender
	mov     r1, r0
	lsl     r1, r1, #16
	mov     r0, r5
	lsr     r1, r1, #16
	bl      Function_205e0e4
.thumb
branch_20432d4: @ 20432d4 :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20432da


.align 2, 0


.thumb
ScriptCmd_WildBattle: @ 20432dc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x17
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	lsl     r2, r2, #24
	ldr     r0, [r5, #0x74]
	mov     r1, r6
	lsr     r2, r2, #24
	mov     r3, r4
	bl      Function_2051270
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x204332e


.align 2, 0


.thumb
ScriptCmd_WildBattle2: @ 2043330 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x17
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	lsl     r2, r2, #24
	ldr     r0, [r5, #0x74]
	mov     r1, r6
	lsr     r2, r2, #24
	mov     r3, r4
	bl      Function_2051270
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2043382


.align 2, 0


.thumb
Function_2043384: @ 2043384 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x17
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	lsl     r2, r2, #24
	ldr     r0, [r5, #0x74]
	mov     r1, r6
	lsr     r2, r2, #24
	mov     r3, r4
	bl      Function_2051abc
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x20433d6


.align 2, 0


.thumb
Function_20433d8: @ 20433d8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x17
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	lsl     r2, r2, #24
	ldr     r0, [r5, #0x74]
	mov     r1, r6
	lsr     r2, r2, #24
	mov     r3, r4
	bl      Function_20512e4
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x204342a


.align 2, 0


.thumb
ScriptCmd_StarterBattle: @ 204342c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x17
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	ldr     r0, [r5, #0x74]
	mov     r2, #0xb
	mov     r3, r4
	bl      Function_2051480
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x204345e


.align 2, 0


.thumb
ScriptCmd_ExplanationBattle: @ 2043460 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x74]
	bl      Function_2051590
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x204346c


.thumb
ScriptCmd_HoneyTreeBattle: @ 204346c :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_5_21efbdc
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204347a


.align 2, 0
.thumb
ScriptCmd_CheckIfHoneySlathered: @ 204347c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      Function_5_21efb94
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20434a2


.align 2, 0
.thumb
ScriptCmd_RandomBattle: @ 20434a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x17
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, r0
	ldr     r0, [r4, #0x74]
	bl      Function_205120c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20434be


thumb_func_start ScriptCmd_StopRandomBattle
ScriptCmd_StopRandomBattle: @ 20434c0 :thumb
	push    {r3,lr}
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      StopRandomBattle
	mov     r0, #0x0
	pop     {r3,pc}
thumb_func_end ScriptCmd_StopRandomBattle


.align 2, 0
.thumb
ScriptCmd_WriteAutograph: @ 20434d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203e0d0
	ldr     r1, [pc, #0x8] @ 0x20434e8, (=Function_2041d60+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20434e8

.word Function_2041d60+1 @ 0x20434e8



.thumb
ScriptCmd_StoreSaveData: @ 20434ec :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r5, [r1, #0xc]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      Function_20247e0
	cmp     r0, #0x0
	beq     branch_2043518
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	b       branch_204353c

branch_2043518: @ 2043518 :thumb
	mov     r0, r5
	bl      Function_20247c0
	cmp     r0, #0x0
	bne     branch_2043528
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_204353c

branch_2043528: @ 2043528 :thumb
	mov     r0, r5
	bl      Function_2024800
	cmp     r0, #0x0
	beq     branch_2043538
	mov     r0, #0x2
	strh    r0, [r4, #0x0]
	b       branch_204353c

branch_2043538: @ 2043538 :thumb
	mov     r0, #0x3
	strh    r0, [r4, #0x0]
branch_204353c: @ 204353c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2043540

.thumb
ScriptCmd_CheckSaveData: @ 2043540 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      Function_5_21e200c
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2043566


.align 2, 0
.thumb
ScriptCmd_2d6: @ 2043568 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_2025340
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2043578


.thumb
ScriptCmd_2d7: @ 2043578 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0

	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_20247c8
	strh    r0, [r4, #0x0]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204359e


thumb_func_start ScriptCmd_GivePoketch
ScriptCmd_GivePoketch: @ 20435a0 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #ScriptHandler_74]
	bl      Function_5_21ddbc8

	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end ScriptCmd_GivePoketch


.thumb
ScriptCmd_CheckPoketchApp: @ 20435ac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_5
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      Function_20567e0
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20435da


.align 2, 0
.thumb
ScriptCmd_ActivatePoketchApp: @ 20435dc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdress_5
	mov     r1, r5
	bl      Function_20567f0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2043606


.align 2, 0
.thumb
ScriptCmd_StorePoketchApp: @ 2043608 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_5
	mov     r1, r6
	bl      Function_20567e8
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2043648


.thumb
ScriptCmd_FriendBT: @ 2043648 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [r4, #0x64]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_20364f0
	ldr     r1, [pc, #0xc] @ 0x2043674, (=Function_2043678+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2043672

.align 2
.word Function_2043678+1 @ 0x2043674



.thumb
Function_2043678: @ 2043678 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2035e18
	cmp     r0, #0x2
	bge     branch_2043688
	mov     r0, #0x1
	pop     {r4,pc}

branch_2043688: @ 2043688 :thumb
	ldr     r0, [r4, #0x64]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_2036540
	pop     {r4,pc}
@ 0x2043694


.thumb
ScriptCmd_FriendBT2: @ 2043694 :thumb
	push    {r3,lr}
	bl      Function_20365f4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204369e


.align 2, 0
.thumb
Function_20436a0: @ 20436a0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_205bc50
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20436ce


.align 2, 0
.thumb
Function_20436d0: @ 20436d0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, r0
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r0, [r0, #0x7c]
	bl      Function_205bf44
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2043706


.align 2, 0
.thumb
ScriptCmd_OpenUnionFunction2: @ 2043708 :thumb
	push    {r4,lr}
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	cmp     r4, #0x5
	beq     branch_2043728
	cmp     r4, #0x7
	beq     branch_2043728
	cmp     r4, #0x9
	beq     branch_2043728
	cmp     r4, #0x6
	beq     branch_2043728
	cmp     r4, #0xc
	beq     branch_2043728
	cmp     r4, #0xa
	bne     branch_204372e
branch_2043728: @ 2043728 :thumb
	bl      Function_2036bc8
	b       branch_2043736

branch_204372e: @ 204372e :thumb
	cmp     r4, #0xb
	bne     branch_2043736
	bl      Function_2036bd8
branch_2043736: @ 2043736 :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2043744
	mov     r0, r4
	bl      Function_205bea8
branch_2043744: @ 2043744 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2043748


.thumb
ScriptCmd_SetUnionFunctionId: @ 2043748 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r7, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	add     r5, #0x80
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	bl      GetOverWorldData_VariableAreaAdresses
	bl      Function_2014ec4
	mov     r5, r0
	cmp     r4, #0x0
	bne     branch_204379e
	ldr     r0, [r7, #0x0]
	bl      GetSpriteID
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	b       branch_20437a0

branch_204379e: @ 204379e :thumb
	mov     r2, #0x0
branch_20437a0: @ 20437a0 :thumb
	str     r5, [sp, #0x0]
	ldr     r0, [r6, #0x0]
	ldr     r3, [sp, #0x4]
	mov     r1, r4
	bl      Function_205c040
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20437b2


.align 2, 0
.thumb
ScriptCmd_CloseUnionFunction: @ 20437b4 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_2099514
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20437c2


.align 2, 0
.thumb
ScriptCmd_CloseUnionFunction2: @ 20437c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_205c2b0
	bl      Function_2036ac4
	ldr     r1, [pc, #0x8] @ 0x20437e4, (=Function_20437e8+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20437e4

.word Function_20437e8+1 @ 0x20437e4



.thumb
Function_20437e8: @ 20437e8 :thumb
	push    {r3,lr}
	bl      Function_2035e18
	cmp     r0, #0x2
	bge     branch_20437f6
	mov     r0, #0x1
	pop     {r3,pc}

branch_20437f6: @ 20437f6 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20437fa


.align 2, 0
.thumb
ScriptCmd_SetvarUnionMessage: @ 20437fc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r7, r0
	ldr     r0, [r4, #0x0]
	bl      GetSpriteID
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	ldr     r2, [sp, #0x0]
	ldr     r0, [r0, #0x7c]
	ldr     r3, [r7, #0x0]
	bl      Function_205bcf4
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2043852


.align 2, 0
.thumb
ScriptCmd_CheckBattleUnion: @ 2043854 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x7c]
	bl      Function_205ba7c
	strh    r0, [r4, #0x0]
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_204388e
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      free
branch_204388e: @ 204388e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2043892


.align 2, 0
.thumb
ScriptCmd_StoreYourDecisionUnion: @ 2043894 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	mov     r1, #0xa
	mov     r0, r5
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	ldr     r0, [r6, #0x0]
	bl      GetSpriteID
	mov     r1, r0
	ldr     r0, [r5, #0x7c]
	bl      Function_205b780
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20438cc

.thumb
ScriptCmd_CheckOtherDecisionUnion2: @ 20438cc :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	mov     r1, #0xa
	mov     r0, r5
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	ldr     r0, [r6, #0x0]
	bl      GetSpriteID
	mov     r1, r0
	ldr     r0, [r5, #0x7c]
	mov     r2, r7
	bl      Function_205b804
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204391a


.align 2, 0


.thumb
ScriptCmd_StoreOtherDecisionUnion: @ 204391c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	str     r0, [r4, #0x64]
	ldr     r1, [pc, #0xc] @ 0x2043934, (=Function_2043938+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2043932

.align 2
.word Function_2043938+1 @ 0x2043934



.thumb
Function_2043938: @ 2043938 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	ldr     r0, [r5, #0x7c]
	bl      Function_205b8d8
	ldr     r1, [r6, #0x64]
	mov     r4, r0
	lsl     r1, r1, #16
	mov     r0, r5
	lsr     r1, r1, #16
	bl      ScriptHandler_CheckLoadParameter
	cmp     r4, #0x0
	bne     branch_204395c
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_204395c: @ 204395c :thumb
	strh    r4, [r0, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2043962


.align 2, 0
.thumb
Function_2043964: @ 2043964 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r1, [r0, #0x0]
	ldr     r0, [r1, #0x38]
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	bl      Function_205c820
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2043978


.thumb
ScriptCmd_StartUnion: @ 2043978 :thumb
	push    {r3,lr}
	mov     r0, #0x4
	bl      Function_205bea8
	bl      Function_2036ba0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2043988


.thumb
ScriptCmd_LinkClosed: @ 2043988 :thumb
	push    {r3,lr}
	bl      Function_2036bd8
	bl      Function_2036ac4
	mov     r0, #0x0
	bl      Function_205bea8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204399c


.thumb
ScriptCmd_CheckOtherDecisionUnion: @ 204399c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r4, #0x7c]
	mov     r1, r6
	bl      Function_205b930
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20439d6


.align 2, 0
.thumb
ScriptCmd_StoreYourDecisionUnion2: @ 20439d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	str     r0, [r4, #0x64]
	ldr     r1, [pc, #0xc] @ 0x20439f0, (=Function_20439f4+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20439ee

.align 2
.word Function_20439f4+1 @ 0x20439f0



.thumb
Function_20439f4: @ 20439f4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x64]
	add     r0, #0x80
	lsl     r1, r1, #16
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #16
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x7c]
	bl      Function_205b8dc
	cmp     r0, #0x1
	blo     branch_2043a28
	add     r5, #0x80
	strh    r0, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x7c]
	bl      Function_205c154
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_2043a28: @ 2043a28 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x2043a2e


.align 2, 0
.thumb
ScriptCmd_StoreOtherDecisionUnion2: @ 2043a30 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	str     r0, [r4, #0x64]
	ldr     r1, [pc, #0xc] @ 0x2043a48, (=Function_2043a4c+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2043a46

.align 2
.word Function_2043a4c+1 @ 0x2043a48



.thumb
Function_2043a4c: @ 2043a4c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x64]
	add     r0, #0x80
	lsl     r1, r1, #16
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #16
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x7c]
	bl      Function_205b91c
	ldr     r1, [pc, #0x20] @ 0x2043a90, (=RAM_21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x2
	tst     r1, r2
	beq     branch_2043a82
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	mov     r1, #0x8
	ldr     r0, [r0, #0x7c]
	bl      Function_205b9ec
branch_2043a82: @ 2043a82 :thumb
	cmp     r0, #0x0
	beq     branch_2043a8c
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_2043a8c: @ 2043a8c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2043a90

.word RAM_21bf67c @ 0x2043a90



.thumb
ScriptCmd_UnionRoom: @ 2043a94 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x10]
	bl      Function_2054708
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2043aa4


.thumb
ScriptCmd_OpenWiFiSprite: @ 2043aa4 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      GetTrainerID
	mov     r6, r0
	mov     r0, r5
	bl      GetGender
	mov     r1, r0
	ldr     r2, [r4, #0x0]
	mov     r0, r6
	bl      Function_205c980
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2043ade


.align 2, 0
.thumb
ScriptCmd_StoreWiFiSprite: @ 2043ae0 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      GetTrainerID
	mov     r6, r0
	mov     r0, r5
	bl      GetGender
	mov     r1, r0
	mov     r0, r6
	mov     r2, r7
	bl      Function_205c9bc
	strh    r0, [r4, #0x0]
	mov     r0, r5
	bl      GetGender
	ldrh    r1, [r4, #0x0]
	mov     r2, #0x2
	bl      Function_205ca14
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2043b46


.align 2, 0
.thumb
Function_2043b48: @ 2043b48 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      GetTrainerID
	mov     r6, r0
	mov     r0, r5
	bl      GetGender
	mov     r1, r0
	mov     r0, r6
	mov     r2, r7
	bl      Function_205c9bc
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2043b9e


.align 2, 0
.thumb
ScriptCmd_ActWiFiSprite: @ 2043ba0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      Function_2025f90
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2043bd2


.align 2, 0
.thumb
ScriptCmd_DefeatGoPokecenter: @ 2043bd4 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x74]
	bl      Function_2052c5c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2043be0


.thumb
ScriptCmd_ActBike: @ 2043be0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_6
	mov     r1, r4
	bl      SetVariableAreaAdress_6_68
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2043c0a


/* CheckGender a
*/
.align 2, 0
.thumb
ScriptCmd_CheckGender: @ 2043c0c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress

	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0

	mov     r0, r4
	bl      GetGender
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2043c3c


.thumb
ScriptCmd_HealPokemon: @ 2043c3c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x74]
	bl      LoadOverWorldDataAdress
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	bl      HealPokemon
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2043c52


.align 2, 0
.thumb
ScriptCmd_DeactWireless: @ 2043c54 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2043c58


.thumb
ScriptCmd_DeleteEntry: @ 2043c58 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_205987c
	ldr     r1, [pc, #0x8] @ 0x2043c6c, (=Function_2043c70+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2043c6c

.word Function_2043c70+1 @ 0x2043c6c



.thumb
Function_2043c70: @ 2043c70 :thumb
	push    {r3,lr}
	bl      Function_2036780
	cmp     r0, #0x1
	beq     branch_2043c86
	bl      Function_2033e1c
	cmp     r0, #0x1
	beq     branch_2043c86
	mov     r0, #0x1
	pop     {r3,pc}

branch_2043c86: @ 2043c86 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2043c8a


.align 2, 0
.thumb
Function_2043c8c: @ 2043c8c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_20598a0
	ldr     r1, [pc, #0x8] @ 0x2043ca0, (=Function_2043c70+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2043ca0

.word Function_2043c70+1 @ 0x2043ca0



.thumb
Function_2043ca4: @ 2043ca4 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_20597b4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2043cb2


.align 2, 0
.thumb
ScriptCmd_UndergroundId: @ 2043cb4 :thumb
	push    {r3,lr}
	bl      ScriptHandler_LoadHWord
	bl      Function_20593f4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2043cc2


.align 2, 0
.thumb
Function_2043cc4: @ 2043cc4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0

	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdressItemList
	mov     r1, r6
	bl      Function_207d69c
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2043d04


thumb_func_start ScriptCmd_ChangeOverworldPosition
ScriptCmd_ChangeOverworldPosition: @ 2043d04 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r3, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	mov     r2, r6
	bl      SetOverworldPosition

	mov     r0, #0x0
	pop     {r4-r6,pc}
thumb_func_end ScriptCmd_ChangeOverworldPosition


.align 2, 0
.thumb
ScriptCmd_SetOwPosition: @ 2043d54 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x8]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	ldr     r0, [r0, #0x38]
	bl      GetAdressOfSpriteID
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	mov     r5, r0
	mov     r1, r7
	str     r4, [sp, #0x0]
	bl      Function_2063340
	mov     r0, r5
	bl      Function_20642f8
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2043de2


.align 2, 0
.thumb
ScriptCmd_SetOverworldMovement: @ 2043de4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      Function_203a52c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2043e1c


.thumb
ScriptCmd_ReleaseOverworld: @ 2043e1c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      Function_203a4fc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2043e54


.thumb
ScriptCmd_SetTilePassable: @ 2043e54 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r3, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	mov     r2, r6
	bl      Function_203a55c
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2043ea2


.align 2, 0
.thumb
ScriptCmd_SetTileLocked: @ 2043ea4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r3, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	mov     r2, r6
	bl      Function_203a594
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2043ef2


.align 2, 0
.thumb
ScriptCmd_SetOverworldsFollow: @ 2043ef4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	ldr     r0, [r0, #0x38]
	bl      GetAdressOfSpriteID
	mov     r5, r0
	bne     branch_2043f32
	bl      ErrorHandling
branch_2043f32: @ 2043f32 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_5_21ecdfc
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2043f3e


.align 2, 0
.thumb
Function_2043f40: @ 2043f40 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xc
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x0
	beq     branch_2043f68
	strh    r0, [r1, #0x0]
branch_2043f68: @ 2043f68 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2043f6c


.thumb
ScriptCmd_PrepareDoorAnimation: @ 2043f6c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	lsl     r1, r4, #5
	ldr     r3, [r5, #0x8]
	mov     r2, r0
	add     r0, r3, #0x1
	str     r0, [r5, #0x8]
	add     r5, #0x80
	lsl     r4, r6, #5
	ldrb    r3, [r3, #0x0]
	ldr     r0, [r5, #0x0]
	add     r1, r7, r1
	add     r2, r2, r4
	bl      Function_5_21d4bf4
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2043fc2


.align 2, 0
.thumb
ScriptCmd_WaitAction: @ 2043fc4 :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x8]
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	add     r0, #0x80
	ldrb    r1, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_5_21d4d48
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2043fda


.align 2, 0
.thumb
ScriptCmd_WaitClose: @ 2043fdc :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x8]
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	add     r0, #0x80
	ldrb    r1, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_5_21d4d68
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2043ff2


.align 2, 0
.thumb
ScriptCmd_OpenDoor: @ 2043ff4 :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x8]
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	add     r0, #0x80
	ldrb    r1, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_5_21d4c88
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204400a


.align 2, 0
.thumb
ScriptCmd_CloseDoor: @ 204400c :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x8]
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	add     r0, #0x80
	ldrb    r1, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_5_21d4cec
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2044022


.align 2, 0
.thumb
ScriptCmd_PastoriaCityFunction: @ 2044024 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_2071b10
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2044032


.align 2, 0
.thumb
ScriptCmd_PastoriaCityFunction2: @ 2044034 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_8_224997c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2044042


.align 2, 0
.thumb
ScriptCmd_HearthromeGymFunction: @ 2044044 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_2071c18
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2044052


.align 2, 0
.thumb
ScriptCmd_HearthromeGymFunction2: @ 2044054 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_8_2249fb8
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2044062


.align 2, 0
.thumb
ScriptCmd_CanalaveGymFunction: @ 2044064 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_2071b30
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2044072


.align 2, 0
.thumb
ScriptCmd_VeilstoneGymFunction: @ 2044074 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_2071bf8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2044082


.align 2, 0
.thumb
ScriptCmd_SunishoreGymFunction: @ 2044084 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #0x80
	ldr     r2, [r0, #0x8]
	ldr     r3, [r1, #0x0]
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	ldrb    r1, [r2, #0x0]
	mov     r0, r3
	bl      Function_2071b6c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204409e


.align 2, 0
.thumb
ScriptCmd_SunishoreGymFunction2: @ 20440a0 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #0x80
	ldr     r2, [r0, #0x8]
	ldr     r3, [r1, #0x0]
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	ldrb    r1, [r2, #0x0]
	mov     r0, r3
	bl      Function_8_224ad34
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20440ba


.align 2, 0
.thumb
ScriptCmd_EternaGymAnimation: @ 20440bc :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_2071bd0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20440ca


.align 2, 0
.thumb
Function_20440cc: @ 20440cc :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_2071c34
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20440da


.align 2, 0
.thumb
Function_20440dc: @ 20440dc :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_2071c5c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20440ea


.align 2, 0
.thumb
Function_20440ec: @ 20440ec :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [r4, #0x3c]
	bl      Function_205eb3c
	mov     r4, r0
	bl      LoadSpritePositionX
	strh    r0, [r6, #0x0]
	mov     r0, r4
	bl      LoadSpritePositionZ
	lsr     r1, r0, #31
	add     r1, r0, r1
	asr     r0, r1, #1
	strh    r0, [r7, #0x0]
	mov     r0, r4
	bl      LoadSpritePositionY
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2044156


.align 2, 0
.thumb
ScriptCmd_EggAnimation: @ 2044158 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203e2fc
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2044166


.align 2, 0
.thumb
ScriptCmd_UndergroundFunction: @ 2044168 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	str     r0, [r5, #0x64]
	ldr     r0, [r6, #0x0]
	bl      GetSpriteID
	mov     r1, r5
	add     r1, #0x80
	mov     r2, r0
	ldr     r1, [r1, #0x0]
	mov     r0, r7
	bl      Function_23_2252c98
	str     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x20441c4, (=Function_20441c8+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x20441c4

.word Function_20441c8+1 @ 0x20441c4



.thumb
Function_20441c8: @ 20441c8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	ldr     r1, [r5, #0x64]
	add     r0, #0x80
	lsl     r1, r1, #16
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #16
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_23_2252c70
	strh    r0, [r5, #0x0]
	ldrh    r1, [r5, #0x0]
	ldr     r0, [pc, #0xc] @ 0x2044204, (=0xfffe)
	cmp     r1, r0
	beq     branch_20441fe
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_20441fe: @ 20441fe :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2044202

.align 2
.word 0xfffe @ 0x2044204



.thumb
ScriptCmd_UndergroundFunction2: @ 2044208 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	bl      Function_23_2252c9c
	strb    r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x204423c, (=Function_2044240+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x204423c

.word Function_2044240+1 @ 0x204423c



.thumb
Function_2044240: @ 2044240 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	bl      ScriptHandler_GetSomeScriptAddresses
	ldrb    r0, [r0, #0x0]
	bl      Function_205da04
	pop     {r3,pc}
@ 0x2044254


.thumb
ScriptCmd_UndergroundStart: @ 2044254 :thumb
	push    {r3,lr}
	bl      Function_23_2252cd4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204425e


.align 2, 0
.thumb
Function_2044260: @ 2044260 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r2, [r4, #0x8]
	add     r1, r2, #0x1
	str     r1, [r4, #0x8]
	ldrb    r5, [r2, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r5
	bl      Function_23_2252ce0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2044286


.align 2, 0
.thumb
Function_2044288: @ 2044288 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r2, [r4, #0x8]
	add     r1, r2, #0x1
	str     r1, [r4, #0x8]
	ldrb    r5, [r2, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r5
	bl      Function_23_2252cf4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20442ae


.align 2, 0
.thumb
ScriptCmd_WaitFor: @ 20442b0 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x20442b4


.thumb
ScriptCmd_AddPeople2: @ 20442b4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	ldr     r0, [r5, #0x38]
	bl      GetAdressOfSpriteID
	mov     r4, r0
	bne     branch_20442dc
	bl      ErrorHandling
branch_20442dc: @ 20442dc :thumb

	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2062d64

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20442e8


.thumb
ScriptCmd_RemovePeople2: @ 20442e8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	ldr     r0, [r5, #0x38]
	bl      GetAdressOfSpriteID
	mov     r4, r0
	bne     branch_2044310
	bl      ErrorHandling
branch_2044310: @ 2044310 :thumb

	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2062d64

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204431c


.thumb
ScriptCmd_Mailbox: @ 204431c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x74]
	bl      Function_20736d8
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2044328


.thumb
ScriptCmd_CheckMail: @ 2044328 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdress_f
	mov     r1, #0x0
	bl      Function_2028494
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2044354


.thumb
ScriptCmd_ShowRecordList: @ 2044354 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	ldr     r0, [r4, #0x74]
	bl      Function_20703fc
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2044374


.thumb
ScriptCmd_CheckTime: @ 2044374 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2055ba8
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2044398


.thumb
ScriptCmd_CheckIdPlayer: @ 2044398 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	bl      PRNG
	mov     r1, r5
	blx     _s32_div_f
	strh    r1, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x20443d0


.thumb
ScriptCmd_RandomTextStored: @ 20443d0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	bl      PRNG
	mov     r1, r5
	blx     _s32_div_f
	strh    r1, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2044408


.thumb
ScriptCmd_CopyPokemonHeight: @ 2044408 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r4
	bl      Function_5_21ee920
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2044442


.align 2, 0
.thumb
ScriptCmd_SetVariablePokemonHeight: @ 2044444 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r5
	bl      Function_5_21ee9bc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2044468


.thumb
ScriptCmd_ComparePokemonHeight: @ 2044468 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	lsl     r1, r6, #24
	lsl     r2, r7, #24
	mov     r3, r0
	mov     r0, r4
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_5_21eea84
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20444bc


.thumb
ScriptCmd_CheckPokemonHeight: @ 20444bc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	lsl     r1, r6, #24
	lsl     r2, r7, #24
	mov     r3, r0
	mov     r0, r4
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_5_21eea54
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2044510


.thumb
ScriptCmd_ShowMoveInfo: @ 2044510 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x82
	lsl     r1, r1, #8
	bl      Function_206b0c4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2044528


.thumb
Function_2044528: @ 2044528 :thumb
	push    {r4,lr}
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	ldr     r0, [r4, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x1
	bl      Function_206af2c
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdress_12
	mov     r1, #0x1
	bl      Function_202b634
	mov     r1, r4
	add     r1, #0x9c
	str     r0, [r1, #0x0]
	mov     r0, r4
	bl      Function_2053494
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2044556


.align 2, 0
.thumb
ScriptCmd_DeActivateLeader: @ 2044558 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r5, r0
	mov     r0, r7
	sub     r0, #0x10
	cmp     r0, #0x18
	bhi     branch_2044654
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x20445da

Jumppoints_20445da:
.hword branch_204460c - Jumppoints_20445da - 2
.hword branch_2044618 - Jumppoints_20445da - 2
.hword branch_2044624 - Jumppoints_20445da - 2
.hword branch_2044632 - Jumppoints_20445da - 2
.hword branch_2044654 - Jumppoints_20445da - 2
.hword branch_2044632 - Jumppoints_20445da - 2
.hword branch_2044632 - Jumppoints_20445da - 2
.hword branch_2044632 - Jumppoints_20445da - 2
.hword branch_2044632 - Jumppoints_20445da - 2
.hword branch_2044632 - Jumppoints_20445da - 2
.hword branch_2044632 - Jumppoints_20445da - 2
.hword branch_2044654 - Jumppoints_20445da - 2
.hword branch_2044654 - Jumppoints_20445da - 2
.hword branch_2044654 - Jumppoints_20445da - 2
.hword branch_2044654 - Jumppoints_20445da - 2
.hword branch_2044654 - Jumppoints_20445da - 2
.hword branch_2044654 - Jumppoints_20445da - 2
.hword branch_2044654 - Jumppoints_20445da - 2
.hword branch_2044654 - Jumppoints_20445da - 2
.hword branch_2044654 - Jumppoints_20445da - 2
.hword branch_2044646 - Jumppoints_20445da - 2
.hword branch_2044646 - Jumppoints_20445da - 2
.hword branch_2044646 - Jumppoints_20445da - 2
.hword branch_2044646 - Jumppoints_20445da - 2
.hword branch_2044646 - Jumppoints_20445da - 2

.thumb
branch_204460c: @ 204460c :thumb
	mov     r0, #0x4
	mov     r6, #0x1
	bl      Function_202bdd4
	str     r0, [r5, #0x0]
	b       branch_2044658

branch_2044618: @ 2044618 :thumb
	mov     r0, #0x4
	mov     r6, #0x1
	bl      Function_202bde0
	str     r0, [r5, #0x0]
	b       branch_2044658

branch_2044624: @ 2044624 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x4
	mov     r6, #0x1
	bl      Function_202bdec
	str     r0, [r5, #0x0]
	b       branch_2044658

branch_2044632: @ 2044632 :thumb
	sub     r7, #0x13
	lsl     r0, r7, #24
	ldr     r1, [sp, #0x0]
	lsr     r0, r0, #24
	mov     r2, #0x4
	mov     r6, #0x1
	bl      Function_202be00
	str     r0, [r5, #0x0]
	b       branch_2044658

branch_2044646: @ 2044646 :thumb
	mov     r0, #0x4
	mov     r1, r7
	mov     r6, #0x1
	bl      Function_202be2c
	str     r0, [r5, #0x0]
	b       branch_2044658

branch_2044654: @ 2044654 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_2044658: @ 2044658 :thumb
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	ldr     r1, [r5, #0x0]
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	mov     r2, r6
	bl      Function_202b758
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x204466c


.thumb
Function_204466c: @ 204466c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2044670


.thumb
ScriptCmd_GiveAccessories3: @ 2044670 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_e
	bl      Function_2029d04
	mov     r1, r4
	mov     r2, r6
	bl      Function_2029e2c
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20446b4


.thumb
ScriptCmd_CheckAccessories3: @ 20446b4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_e
	bl      Function_2029d04
	mov     r1, r6
	mov     r2, r7
	bl      Function_2029d50
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204470e


.align 2, 0
.thumb
Function_2044710: @ 2044710 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_e
	bl      Function_2029d04
	mov     r1, r7
	bl      Function_2029d94
	cmp     r6, r0
	bhi     branch_204476a
	mov     r0, #0x1
	b       branch_204476c

branch_204476a: @ 204476a :thumb
	mov     r0, #0x0
branch_204476c: @ 204476c :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2044772


.align 2, 0
.thumb
ScriptCmd_GiveAccessories2: @ 2044774 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_e
	bl      Function_2029d04
	mov     r1, r4
	bl      Function_2029efc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20447a2


.align 2, 0
.thumb
ScriptCmd_CheckAccessories2: @ 20447a4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_e
	bl      Function_2029d04
	mov     r1, r6
	bl      Function_2029d80
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20447e8


.thumb
ScriptCmd_CheckSinnohPokedex: @ 20447e8 :thumb
	push    {r3-r5,lr}

	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokedexDataAdress
	mov     r5, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord

	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter

	mov     r4, r0
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	mov     r0, r5
	bl      IsSinPokedexComplete

	cmp     r0, #0x1
	bne     branch_204481c
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
branch_204481c: @ 204481c :thumb
	mov     r0, #0x0

	pop     {r3-r5,pc}
@ 0x2044820


.thumb
ScriptCmd_CheckNationalPokedex: @ 2044820 :thumb
	push    {r3-r5,lr}

	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokedexDataAdress
	mov     r5, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord

	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter

	mov     r4, r0
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	mov     r0, r5
	bl      IsNatPokedexComplete

	cmp     r0, #0x1
	bne     branch_2044854
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
branch_2044854: @ 2044854 :thumb
	mov     r0, #0x0

	pop     {r3-r5,pc}
@ 0x2044858


.thumb
ScriptCmd_ShowSinnohSheet: @ 2044858 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x20
	mov     r2, #0x0
	bl      Function_203e53c
	str     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2044884, (=Function_2041cc8+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2044884

.word Function_2041cc8+1 @ 0x2044884



.thumb
ScriptCmd_ShowNationalSheet: @ 2044888 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x20
	mov     r2, #0x1
	bl      Function_203e53c
	str     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x20448b4, (=Function_2041cc8+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x20448b4

.word Function_2041cc8+1 @ 0x20448b4



.thumb
Function_20448b8: @ 20448b8 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_6_22475b0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20448c8


.thumb
ScriptCmd_StoreTrophyPokemon: @ 20448c8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_6_2247624
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20448ee


.align 2, 0
.thumb
Function_20448f0: @ 20448f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2044906


.align 2, 0
.thumb
ScriptCmd_RandomEvent: @ 2044908 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_14
	mov     r1, r4
	bl      Function_202cf28
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2044926


.align 2, 0
.thumb
Function_2044928: @ 2044928 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, r6
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_14
	mov     r1, r7
	bl      Function_202cfb8
	ldr     r1, [pc, #0xc] @ 0x204497c, (=0xffff0000)
	and     r1, r0
	lsr     r1, r1, #16
	strh    r1, [r4, #0x0]
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204497c

.word 0xffff0000 @ 0x204497c



.thumb
Function_2044980: @ 2044980 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	ldr     r1, [r5, #0x8]
	add     r2, r1, #0x1
	str     r2, [r5, #0x8]
	lsl     r2, r4, #16
	mov     r4, r2
	orr     r4, r0
	ldrb    r0, [r1, #0x0]
	cmp     r0, #0x0
	beq     branch_20449b4
	cmp     r0, #0x1
	beq     branch_20449c8
	cmp     r0, #0x2
	beq     branch_20449dc
	b       branch_20449ee

branch_20449b4: @ 20449b4 :thumb
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_14
	mov     r1, r6
	mov     r2, r4
	bl      Function_202cf70
	b       branch_20449ee

branch_20449c8: @ 20449c8 :thumb
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_14
	mov     r1, r6
	mov     r2, r4
	bl      Function_202ce90
	b       branch_20449ee

branch_20449dc: @ 20449dc :thumb
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_14
	mov     r1, r6
	mov     r2, r4
	bl      Function_202ced0
branch_20449ee: @ 20449ee :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20449f2


.align 2, 0
.thumb
Function_20449f4: @ 20449f4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_14
	mov     r1, r4
	mov     r2, r6
	bl      Function_202cf70
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2044a28


.thumb
Function_2044a28: @ 2044a28 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadWord
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_14
	mov     r1, r4
	mov     r2, r6
	bl      Function_202cf70
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2044a50


.thumb
ScriptCmd_GreatMarshFunction: @ 2044a50 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_6
	mov     r7, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_202440c
	ldr     r1, [r5, #0x8]
	str     r0, [sp, #0x4]
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	ldrb    r4, [r1, #0x0]
	mov     r0, r7
	bl      AddVariableAreaAdress_6_98
	mov     r6, r0
	mov     r0, r7
	bl      AddVariableAreaAdress_6_96
	mov     r7, r0
	cmp     r4, #0x0
	beq     branch_2044aa0
	cmp     r4, #0x1
	beq     branch_2044ab6
	b       branch_2044ae2

branch_2044aa0: @ 2044aa0 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_206ae3c
	ldr     r0, [sp, #0x4]
	bl      Function_206d000
	mov     r0, #0x1e
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	strh    r0, [r7, #0x0]
	b       branch_2044ae2

branch_2044ab6: @ 2044ab6 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_206ae4c
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_206d720
	mov     r0, #0x4
	bl      Function_202bde0
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	mov     r2, #0x1
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bl      Function_202b758
	mov     r0, #0x0
	strh    r0, [r6, #0x0]
	strh    r0, [r7, #0x0]
branch_2044ae2: @ 2044ae2 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2044ae8


.thumb
ScriptCmd_GreatMarshBynocule: @ 2044ae8 :thumb
	push    {r3,lr}

	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      GreatMarshBynocule

	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2044af6


.align 2, 0
.thumb
ScriptCmd_SetvarMtCoronet: @ 2044af8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x8]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r4, [r2, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	bl      Function_6_2243004
	strh    r0, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2044b26


.align 2, 0
.thumb
Function_2044b28: @ 2044b28 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_2071cd0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2044b36


.align 2, 0
.thumb
ScriptCmd_CheckQuicTrineCoordinates: @ 2044b38 :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord

	mov     r1, #0x0
	mov     r6, r0
	mov     r0, #0x41
	mov     r2, r1
	bl      Function_2004550
	add     r5, #0x80

	ldrh    r1, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r2, r6
	bl      Function_6_2242b58
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2044b70


.thumb
ScriptCmd_SetvarQuickTrainCoordinates: @ 2044b70 :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r6, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0

	ldr     r0, [r5, #0x0]
	mov     r1, r6
	bl      Function_6_2242c3c
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2044b9e


.align 2, 0
.thumb
ScriptCmd_MoveTrainAnimation: @ 2044ba0 :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x8]
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldrb    r1, [r2, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      Function_205ed2c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2044bb8


.thumb
ScriptCmd_RandomHallowes: @ 2044bb8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0

	mov     r0, r4
	bl      Function_206b354
	strh    r0, [r5, #0x0]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2044be6


.align 2, 0
.thumb
ScriptCmd_ChsRSPoke: @ 2044be8 :thumb
	push    {r3-r7,lr}
	mov     r4, r0

	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokedexDataAdress
	mov     r7, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]

	mov     r0, r7
	bl      Function_2026eac
	mov     r4, r0
	bl      PRNG
	mov     r1, r4
	blx     _s32_div_f
	lsl     r0, r1, #16
	lsr     r6, r0, #16
	ldr     r0, [sp, #0x0]
	mov     r1, #0x19
	strh    r1, [r0, #0x0]
	mov     r4, #0x1
	mov     r5, #0x0
branch_2044c2a: @ 2044c2a :thumb
	mov     r0, r7
	mov     r1, r4
	bl      WasPkmnSeen
	cmp     r0, #0x1
	bne     branch_2044c50

	mov     r0, r4
	bl      Function_20775a4
	cmp     r0, #0x0
	beq     branch_2044c50

	cmp     r5, r6
	bne     branch_2044c4a

	ldr     r0, [sp, #0x0]
	strh    r4, [r0, #0x0]
	b       branch_2044c5c

branch_2044c4a: @ 2044c4a :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
branch_2044c50: @ 2044c50 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldr     r0, [pc, #0x8] @ 0x2044c60, (=NrOfPkmn)
	cmp     r4, r0
	bls     branch_2044c2a
branch_2044c5c: @ 2044c5c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2044c60

.word NrOfPkmn @ 0x2044c60



.thumb
ScriptCmd_SetSPoke: @ 2044c64 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, r4
	bl      Function_206b270
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2044c8e


.align 2, 0
.thumb
ScriptCmd_CheckSPoke: @ 2044c90 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b260
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2044cba


.align 2, 0
.thumb
Function_2044cbc: @ 2044cbc :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_202d884
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2044ccc


.thumb
ScriptCmd_ActSwarmPoke: @ 2044ccc :thumb
	push    {r3,lr}
	ldr     r2, [r0, #ScriptHandler_Pointer]
	add     r1, r2, #0x1
	str     r1, [r0, #ScriptHandler_Pointer]

	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	ldrb    r1, [r2, #0x0]
	ldr     r0, [r0, #OverWorldData_VariableAreaAdress]
	bl      ActSwarmPoke

	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2044ce4


.thumb
ScriptCmd_SetTradeId: @ 2044ce4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r4, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	ldrb    r1, [r1, #0x0]
	mov     r0, #0xb
	bl      Function_6_2246184
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2044d08


.thumb
Function_2044d08: @ 2044d08 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_6_2246224
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2044d36


.align 2, 0
.thumb
ScriptCmd_CheckPokemonTrade: @ 2044d38 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_6_224622c
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2044d66


.align 2, 0
.thumb
ScriptCmd_TradeChosenPokemon: @ 2044d68 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r5, #0x74]
	ldr     r1, [r4, #0x0]
	mov     r3, #0xb
	bl      Function_206c740
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2044d9a


.align 2, 0
.thumb
ScriptCmd_StopTrade: @ 2044d9c :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      Function_6_2246204
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2044db2


.align 2, 0
.thumb
ScriptCmd_22b: @ 2044db4 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokedexDataAdress
	bl      Function_2027508
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2044dc8


.thumb
ScriptCmd_CloseOakAssistantEvent: @ 2044dc8 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokedexDataAdress
	bl      Function_20274b0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2044ddc


.thumb
ScriptCmd_CheckNatPokedexStatus: @ 2044ddc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x8]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r4, [r2, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, #0x0
	strh    r0, [r6, #0x0]
	cmp     r4, #0x1
	bne     branch_2044e22
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokedexDataAdress
	bl      Function_2027454
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	bl      Function_2025ff8
	b       branch_2044e3c

branch_2044e22: @ 2044e22 :thumb
	cmp     r4, #0x2
	bne     branch_2044e38
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokedexDataAdress
	bl      Function_2027474
	strh    r0, [r6, #0x0]
	b       branch_2044e3c

branch_2044e38: @ 2044e38 :thumb
	bl      ErrorHandling
branch_2044e3c: @ 2044e3c :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2044e40


.thumb
ScriptCmd_CheckHappyRibbon: @ 2044e40 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r5, r0
	mov     r1, #0xd
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0xe
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0xf
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x10
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x11
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, #0x12
	mov     r2, #0x0
	bl      GetPkmnData
	add     r1, r4, r6
	add     r2, r7, r1
	ldr     r1, [sp, #0x4]
	add     r2, r1, r2
	ldr     r1, [sp, #0x8]
	add     r1, r1, r2
	add     r1, r0, r1
	ldr     r0, [sp, #0x0]
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2044eda


.align 2, 0
.thumb
ScriptCmd_CheckPokemart: @ 2044edc :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	add     r0, sp, #0x0
	bl      Function_20138a4
	ldr     r0, [sp, #0xc]
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2044f02


.align 2, 0
.thumb
ScriptCmd_DecideRules: @ 2044f04 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r1, r0
	ldr     r0, [r4, #0x74]
	bl      Function_7_224be7c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2044f24


.thumb
ScriptCmd_CheckFootStep: @ 2044f24 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r7
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r7, r0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	mov     r0, r7
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r0, r5
	bl      Function_5_21f0e90
	strh    r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_5_21f0e84
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2044fa2


.align 2, 0
.thumb
ScriptCmd_HealPokemonAnimation: @ 2044fa4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	add     r4, #0x80
	lsl     r1, r1, #24
	ldr     r0, [r4, #0x0]
	lsr     r1, r1, #24
	bl      Function_6_2246c24
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2044fca


.align 2, 0
.thumb
ScriptCmd_StoreElevatorDirection: @ 2044fcc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	add     r5, #0x80
	lsl     r1, r4, #24
	lsl     r2, r2, #24
	ldr     r0, [r5, #0x0]
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_6_2246f00
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x204500a


.align 2, 0
.thumb
ScriptCmd_ShipAnimation: @ 204500c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r1, [r5, #0x8]
	add     r2, r1, #0x1
	str     r2, [r5, #0x8]
	ldrb    r7, [r1, #0x0]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r6, [r2, #0x0]
	bl      ScriptHandler_LoadHWord
	str     r0, [sp, #0x8]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	str     r4, [sp, #0x0]
	add     r5, #0x80
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	ldr     r3, [sp, #0x8]
	mov     r1, r7
	mov     r2, r6
	bl      Function_206c784
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x204504c


.thumb
ScriptCmd_StoreMtCoronet: @ 204504c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r1, #0xc
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2045066


.align 2, 0
.thumb
ScriptCmd_CheckPhraseBoxInput2: @ 2045068 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	add     r0, #0x80
	ldr     r6, [r0, #0x0]
	mov     r0, r6
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	str     r0, [sp, #0x8]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	ldr     r0, [r6, #0xc]
	bl      LoadVariableAreaAdress_25
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0xc]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x10]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	mov     r1, r7
	bl      Function_6_22479d0
	mov     r5, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	beq     branch_2045106
	cmp     r5, #0x7
	ble     branch_2045110
branch_2045106: @ 2045106 :thumb
	mov     r0, #0xff
	strh    r0, [r4, #0x0]
	add     sp, #0x14
	mov     r0, #0x0
	pop     {r4-r7,pc}

branch_2045110: @ 2045110 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_2079cfc
	cmp     r0, #0x0
	beq     branch_2045120
	mov     r0, #0x0
	b       branch_204512a

branch_2045120: @ 2045120 :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_2079cd8
	add     r0, r5, #0x1
branch_204512a: @ 204512a :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2045132


.align 2, 0
.thumb
ScriptCmd_StoreUndTime: @ 2045134 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r4, [r1, #0xc]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      Function_20298a0
	bl      Function_20295b8
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045160


.thumb
ScriptCmd_PreparePcAnimation: @ 2045160 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #0x80
	ldr     r2, [r0, #0x8]
	ldr     r3, [r1, #0x0]
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	ldrb    r1, [r2, #0x0]
	mov     r0, r3
	bl      Function_6_2247078
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204517a


.align 2, 0
.thumb
ScriptCmd_OpenPcAnimation: @ 204517c :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #0x80
	ldr     r2, [r0, #0x8]
	ldr     r3, [r1, #0x0]
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	ldrb    r1, [r2, #0x0]
	mov     r0, r3
	bl      Function_6_22470e8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2045196


.align 2, 0
.thumb
ScriptCmd_ClosePcAnimation: @ 2045198 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #0x80
	ldr     r2, [r0, #0x8]
	ldr     r3, [r1, #0x0]
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	ldrb    r1, [r2, #0x0]
	mov     r0, r3
	bl      Function_6_22470f4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20451b2


.align 2, 0
.thumb
Function_20451b4: @ 20451b4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r0, [r0, #0xc]
	mov     r5, r1
	bl      LoadPokedexDataAdress
	mov     r6, r0
	mov     r0, #0x20
	bl      AllocPkmnData
	mov     r4, r0
	bl      ClearCompletePkmnDataStructure
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x32
	mov     r3, #0x20
	bl      InitPkmnData
	mov     r0, r6
	mov     r1, r4
	bl      Function_20272a4
	mov     r0, r4
	bl      free
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x20451f6


.align 2, 0
.thumb
Function_20451f8: @ 20451f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_20451b4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204521a


.align 2, 0
.thumb
ScriptCmd_CheckBoxesNumber: @ 204521c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_25
	bl      Function_2079a50
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	mov     r0, #0x87
	lsl     r0, r0, #2
	sub     r0, r0, r1
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045250


.thumb
ScriptCmd_RetSprtSave: @ 2045250 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x16
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, #0x0
	add     r5, #0x80
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	bl      Function_5_21e1000
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2045272


.align 2, 0
.thumb
ScriptCmd_ElevLgAnimation: @ 2045274 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x16
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      Function_5_21e100c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x204528a


.align 2, 0
.thumb
ScriptCmd_CheckElevLgAnm: @ 204528c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	add     r4, #0x80
	lsl     r1, r1, #24
	ldr     r0, [r4, #0x0]
	lsr     r1, r1, #24
	bl      Function_6_2247d30
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20452b2


.align 2, 0
.thumb
ScriptCmd_ElevIrAnm: @ 20452b4 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_20716d4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20452c2


.align 2, 0


.thumb
ScriptCmd_StopElevAnm: @ 20452c4 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_207183c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20452d2


.align 2, 0


.thumb
ScriptCmd_CheckElevPosition: @ 20452d4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	bl      Function_2071818
	cmp     r0, #0x0
	beq     branch_20452fa
	mov     r0, #0x1
	b       branch_20452fc
@ 0x20452fa

.thumb
branch_20452fa: @ 20452fa :thumb
	mov     r0, #0x0
.thumb
branch_20452fc: @ 20452fc :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045302


.align 2, 0
.thumb
ScriptCmd_GalactAnimation: @ 2045304 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_6_2247f5c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2045312


.align 2, 0
.thumb
ScriptCmd_GalactAnimation2: @ 2045314 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_6_2247fbc
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2045322


.align 2, 0


.thumb
ScriptCmd_MainEvent: @ 2045324 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_14
	mov     r1, r4
	bl      Function_202cfec
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045342


.align 2, 0
.thumb
ScriptCmd_ActDeoxisFormChange: @ 2045344 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #ScriptHandler_OverWorldData
	mov     r4, r0
	ldr     r0, [r5]
	ldr     r0, [r0, #OverWorldData_VariableAreaAdress]
	bl      LoadPokePartyAdress
	mov     r1, r6
	bl      IsFirstPkmnInPartyWantedSpecies
	strh    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2045384


.thumb
ScriptCmd_ChangeFormDeoxis: @ 2045384 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r1, sp, #0x4
	strh    r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	str     r0, [sp, #0x0]
	bl      GetNrOfPkmnInParty
	add     r4, #0x80
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokedexDataAdress
	mov     r7, r0
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_20453fa
.thumb
branch_20453c4: @ 20453c4 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	ldr     r1, [pc, #0x28] @ 0x2045400, (=0x182)
	cmp     r0, r1
	bne     branch_20453f4
	mov     r0, r4
	mov     r1, #0x70
	add     r2, sp, #0x4
	bl      SetPkmnData
	mov     r0, r4
	bl      Function_207418c
	mov     r0, r7
	mov     r1, r4
	bl      Function_202736c
.thumb
branch_20453f4: @ 20453f4 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r6
	blt     branch_20453c4
.thumb
branch_20453fa: @ 20453fa :thumb
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2045400

.word 0x182 @ 0x2045400
.thumb
ScriptCmd_CheckCoombeEvent: @ 2045404 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	str     r0, [sp, #0x8]
	bl      GetNrOfPkmnInParty
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0xc]
	mov     r4, r0
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_2045488
.thumb
branch_204543c: @ 204543c :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r6, r0
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r7, r0
	mov     r0, r6
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r5, r0
	mov     r0, r6
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x54] @ 0x20454bc, (=0x19f)
	cmp     r7, r1
	bne     branch_2045480
	cmp     r0, #0x0
	bne     branch_2045480
	cmp     r5, #0x0
	bne     branch_2045478
	mov     r0, #0x1
	str     r0, [sp, #0x10]
.thumb
branch_2045478: @ 2045478 :thumb
	cmp     r5, #0x1
	bne     branch_2045480
	mov     r0, #0x1
	str     r0, [sp, #0xc]
.thumb
branch_2045480: @ 2045480 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_204543c
.thumb
branch_2045488: @ 2045488 :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x1
	bne     branch_204549c
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x1
	bne     branch_204549c
	ldr     r0, [sp, #0x0]
	mov     r1, #0x2
	strh    r1, [r0, #0x0]
	b       branch_20454b6
@ 0x204549c

.thumb
branch_204549c: @ 204549c :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_20454b0
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	bne     branch_20454b0
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	b       branch_20454b6
@ 0x20454b0

.thumb
branch_20454b0: @ 20454b0 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	strh    r1, [r0, #0x0]
.thumb
branch_20454b6: @ 20454b6 :thumb
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x20454bc

.word 0x19f @ 0x20454bc
.thumb
ScriptCmd_ActContestMap: @ 20454c0 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206ae0c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20454d4

.thumb
Function_20454d4: @ 20454d4 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206ae1c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20454e8

.thumb
ScriptCmd_Pokecasino: @ 20454e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x10]
	bl      Function_203e414
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x204550c

.thumb
ScriptCmd_CheckTime2: @ 204550c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2055bdc
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045530

.thumb
ScriptCmd_RegigigasAnimation: @ 2045530 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0xc]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x8]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, r7
	ldr     r0, [r0, #0x38]
	bl      GetAdressOfSpriteID
	mov     r7, r0
	bne     branch_20455ae
	bl      ErrorHandling
.thumb
branch_20455ae: @ 20455ae :thumb
	str     r6, [sp, #0x0]
	str     r4, [sp, #0x4]
	ldr     r0, [r5, #0x74]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x8]
	mov     r1, r7
	bl      Function_205e318
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x20455c4

.thumb
ScriptCmd_CresseliaAnimation: @ 20455c4 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, r5
	ldr     r0, [r0, #0x38]
	bl      GetAdressOfSpriteID
	mov     r5, r0
	bne     branch_2045618
	bl      ErrorHandling
.thumb
branch_2045618: @ 2045618 :thumb
	ldr     r0, [r4, #0x74]
	mov     r1, r5
	mov     r2, r7
	mov     r3, r6
	bl      Function_205e3f4
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2045628

.thumb
ScriptCmd_CheckRegi: @ 2045628 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_205e1f8
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204564e


.align 2, 0


.thumb
ScriptCmd_CheckMassage: @ 2045650 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_e
	bl      Function_2029d04
	mov     r6, #0x0
	mov     r7, r0
	mov     r4, r6
	add     r5, sp, #0x4
.thumb
branch_204567e: @ 204567e :thumb
	mov     r1, r4
	mov     r0, r7
	add     r1, #0x22
	mov     r2, #0x1
	bl      Function_2029d50
	cmp     r0, #0x1
	bne     branch_2045694
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_2045694: @ 2045694 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x10
	blt     branch_204567e
	cmp     r6, #0x0
	bne     branch_20456ac
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x40] @ 0x20456e4, (=0xffff)
	add     sp, #0x24
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x20456ac

.thumb
branch_20456ac: @ 20456ac :thumb
	bl      PRNG
	mov     r1, r6
	blx     _s32_div_f
	mov     r4, #0x0
	add     r2, sp, #0x4
.thumb
branch_20456ba: @ 20456ba :thumb
	ldrh    r0, [r2, #0x0]
	cmp     r0, #0x1
	bne     branch_20456c6
	cmp     r1, #0x0
	beq     branch_20456ce
	.hword  0x1e49 @ sub r1, r1, #0x1
.thumb
branch_20456c6: @ 20456c6 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r4, #0x10
	blt     branch_20456ba
.thumb
branch_20456ce: @ 20456ce :thumb
	cmp     r4, #0x10
	blt     branch_20456d6
	bl      ErrorHandling
branch_20456d6: @ 20456d6 :thumb
	ldr     r0, [sp, #0x0]
	add     r4, #0x22
	strh    r4, [r0, #0x0]
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x20456e2

.align 2
.word 0xffff @ 0x20456e4



.thumb
ScriptCmd_CheckPCatchingShow: @ 20456e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	ldr     r1, =RAM_21bf6dc
	ldrb    r1, [r1, #RAM_21bf6dc_6]
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2045704

.align 2
.pool



.thumb
Function_2045708: @ 2045708 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x0
	bl      Function_206b364
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204571e


.align 2, 0
.thumb
ScriptCmd_ShayminAnimation: @ 2045720 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldrb    r4, [r1, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	cmp     r4, #0x0
	beq     branch_2045754
	mov     r1, r6
	bl      Function_206b1b0
	b       branch_204575a

branch_2045754: @ 2045754 :thumb
	mov     r1, r6
	bl      Function_206b1d8
branch_204575a: @ 204575a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204575e


.align 2, 0
.thumb
ScriptCmd_SetvarAccessories2: @ 2045760 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200c01c
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2045796


.align 2, 0
.thumb
ScriptCmd_CheckRecordCasino: @ 2045798 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      Function_206b394
	cmp     r0, #0xa
	blo     branch_20457c8
	mov     r0, #0x1
	b       branch_20457ca
@ 0x20457c8

.thumb
branch_20457c8: @ 20457c8 :thumb
	mov     r0, #0x0
.thumb
branch_20457ca: @ 20457ca :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20457d0

.thumb
ScriptCmd_SrtRandomNum: @ 20457d0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b314
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20457fa


.align 2, 0


.thumb
Function_20457fc: @ 20457fc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_e
	bl      Function_2029d04
	mov     r1, r4
	mov     r2, r6
	bl      Function_2029ea0
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2045840

.thumb
ScriptCmd_LeagueCastleView: @ 2045840 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_2050568
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x204584e


.align 2, 0


.thumb
Function_2045850: @ 2045850 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_206b334
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2045860

.thumb
Function_2045860: @ 2045860 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_2014ec4
	bl      Function_2014ee4
	cmp     r0, #0x20
	bne     branch_20458b2
	ldr     r0, [pc, #0x1c] @ 0x20458c8, (=0xffff)
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20458b2

.thumb
branch_20458b2: @ 20458b2 :thumb
	strh    r0, [r4, #0x0]
	bl      Function_2014f64
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r7
	bl      Function_200be48
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20458c6

.align 2
.word 0xffff @ 0x20458c8



.thumb
Function_20458cc: @ 20458cc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_2014ec4
	bl      Function_2014f48
	cmp     r0, #0x1
	bne     branch_20458f8
	mov     r0, #0x1
	b       branch_20458fa
@ 0x20458f8

.thumb
branch_20458f8: @ 20458f8 :thumb
	mov     r0, #0x0
.thumb
branch_20458fa: @ 20458fa :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045900

.thumb
ScriptCmd_CheckFirstTimeVShop: @ 2045900 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      Function_206b3dc
	cmp     r0, #0x5
	blo     branch_2045930
	mov     r0, #0x1
	b       branch_2045932
@ 0x2045930

.thumb
branch_2045930: @ 2045930 :thumb
	mov     r0, #0x0
.thumb
branch_2045932: @ 2045932 :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045938

.thumb
Function_2045938: @ 2045938 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	ldr     r6, [r4, #0x0]
	mov     r5, r0
	ldr     r0, [r6, #0xc]
	bl      LoadVariableAreaAdress_0
	mov     r7, r0
	bl      Function_2025d5c
	mov     r4, r0
	mov     r0, r6
	bl      Function_2055bb8
	cmp     r4, r0
	bne     branch_2045982
	mov     r0, r7
	bl      Function_2025d60
	mov     r4, r0
	mov     r0, r6
	bl      Function_2055bc4
	cmp     r4, r0
	bne     branch_2045982
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	b       branch_2045986
@ 0x2045982

.thumb
branch_2045982: @ 2045982 :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
.thumb
branch_2045986: @ 2045986 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204598a


.align 2, 0


.thumb
ScriptCmd_CheckRuinManiac: @ 204598c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokedexDataAdress
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      Function_20270dc
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20459ba


.align 2, 0
.thumb
ScriptCmd_CheckTurnBack: @ 20459bc :thumb
	push    {r3-r7,lr}
	mov     r6, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0

	mov     r0, r6
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter

	mov     r1, r6
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r2, [r1, #0x1c]
	ldr     r1, [r2, #0x8]
	lsl     r1, r1, #16
	lsr     r5, r1, #16
	ldr     r1, [r2, #0xc]
	lsl     r1, r1, #16
	lsr     r4, r1, #16
	cmp     r7, #0x3
	blo     branch_2045a00
	ldr     r7, [pc, #0x7c] @ 0x2045a7c, (=0x10e)
	b       branch_2045a36

branch_2045a00: @ 2045a00 :thumb
	cmp     r0, #0x1e
	blo     branch_2045a0a
	mov     r7, #0x43
	lsl     r7, r7, #2
	b       branch_2045a36

branch_2045a0a: @ 2045a0a :thumb
	bl      PRNG
	mov     r1, #100
	blx     _s32_div_f
	cmp     r1, #25
	bge     branch_2045a1c
	ldr     r7, [pc, #0x64] @ 0x2045a80, (=0x10d)
	b       branch_2045a36

branch_2045a1c: @ 2045a1c :thumb
	bl      PRNG
	mov     r1, #0x6
	blx     _s32_div_f
	lsl     r0, r1, #16
	lsr     r1, r0, #16
	mov     r0, #0x6
	mul     r0, r7
	add     r0, r1, r0
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x50] @ 0x2045a84, (=Unknown_20eabfc)
	ldrh    r7, [r0, r1]
branch_2045a36: @ 2045a36 :thumb
	cmp     r5, #0xb
	bne     branch_2045a4e
	cmp     r4, #0x1
	bne     branch_2045a42
	mov     r4, #0x0
	b       branch_2045a58

branch_2045a42: @ 2045a42 :thumb
	cmp     r4, #0x14
	bne     branch_2045a4a
	mov     r4, #0x2
	b       branch_2045a58

branch_2045a4a: @ 2045a4a :thumb
	mov     r4, #0x5
	b       branch_2045a58

branch_2045a4e: @ 2045a4e :thumb
	cmp     r5, #0x14
	bne     branch_2045a56
	mov     r4, #0x1
	b       branch_2045a58

branch_2045a56: @ 2045a56 :thumb
	mov     r4, #0x3
branch_2045a58: @ 2045a58 :thumb
	mov     r5, #0x0
branch_2045a5a: @ 2045a5a :thumb
	cmp     r5, r4
	beq     branch_2045a6c
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, r5
	mov     r2, r7
	bl      Function_203a574
branch_2045a6c: @ 2045a6c :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, #0x4
	blo     branch_2045a5a
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2045a7a

.align 2
.word 0x10e @ 0x2045a7c
.word 0x10d @ 0x2045a80
.word Unknown_20eabfc @ 0x2045a84



.thumb
ScriptCmd_CheckUgPeopleNum: @ 2045a88 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      Function_206b3ec
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045ab6


.align 2, 0
.thumb
ScriptCmd_CheckUgFossilNum: @ 2045ab8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      Function_206b40c
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045ae6


.align 2, 0
.thumb
ScriptCmd_CheckUgTrapsNum: @ 2045ae8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      Function_206b42c
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045b16


.align 2, 0
.thumb
ScriptCmd_CheckPoffinItem: @ 2045b18 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0

	mov     r6, #0x0
	add     r4, sp, #0x4
branch_2045b34: @ 2045b34 :thumb
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	strb    r0, [r4, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r6, #0x5
	blt     branch_2045b34

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	mov     r0, #0x4
	bl      Function_202a93c
	lsl     r2, r4, #24
	add     r1, sp, #0x4
	lsr     r2, r2, #24
	mov     r3, #0x0
	str     r0, [sp, #0x0]
	bl      Function_202a9e4
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_10
	ldr     r1, [sp, #0x0]
	bl      Function_202ab74
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	bl      free
	ldr     r0, [pc, #0x10] @ 0x2045ba4, (=0xffff)
	cmp     r4, r0
	bne     branch_2045b9c
	strh    r0, [r7, #0x0]
	b       branch_2045b9e

branch_2045b9c: @ 2045b9c :thumb
	strh    r6, [r7, #0x0]
branch_2045b9e: @ 2045b9e :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2045ba4

.word 0xffff @ 0x2045ba4



.thumb
ScriptCmd_CheckPoffinCaseStatus: @ 2045ba8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_10
	bl      Function_202ab54
	ldr     r1, [pc, #0x10] @ 0x2045be0, (=0xffff)
	cmp     r0, r1
	bne     branch_2045bd6
	mov     r0, #0x0
	b       branch_2045bd8

branch_2045bd6: @ 2045bd6 :thumb
	mov     r0, #0x1
branch_2045bd8: @ 2045bd8 :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045bde

.align 2
.word 0xffff @ 0x2045be0



.thumb
Function_2045be4: @ 2045be4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_10
	bl      Function_202acc0
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045c0e


.align 2, 0
.thumb
Function_2045c10: @ 2045c10 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x8]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r4, [r2, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r5, r0
	cmp     r4, #0x4
	bls     branch_2045c42
	bl      ErrorHandling
branch_2045c42: @ 2045c42 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_206b16c
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2045c50


.thumb
ScriptCmd_CheckFirstTimeChampion: @ 2045c50 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x20
	ldr     r0, [r0, #0xc]
	add     r2, sp, #0x0
	bl      Function_202444c
	ldr     r1, [sp, #0x0]
	mov     r4, r0
	cmp     r1, #0x0
	bne     branch_2045c88
	mov     r1, #0x0
	strh    r1, [r5, #0x0]
	bl      free
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2045c88

.thumb
branch_2045c88: @ 2045c88 :thumb
	cmp     r1, #0x1
	bne     branch_2045c9e
	mov     r1, #0x0
	bl      Function_202e174
	strh    r0, [r5, #0x0]
	mov     r0, r4
	bl      free
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2045c9e

.thumb
branch_2045c9e: @ 2045c9e :thumb
	cmp     r1, #0x2
	bne     branch_2045cae
	mov     r1, #0x0
	strh    r1, [r5, #0x0]
	bl      free
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2045cae

.thumb
branch_2045cae: @ 2045cae :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2045cb6


.align 2, 0
.thumb
ScriptCmd_ChoosePokeDCare: @ 2045cb8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, r5
	add     r1, #0x80
	mov     r4, r0
	ldr     r1, [r1, #0x0]
	mov     r0, #0x20
	mov     r2, r6
	bl      Function_203d410
	str     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2045cf8, (=Function_2041d60+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2045cf8

.word Function_2041d60+1 @ 0x2045cf8



.thumb
ScriptCmd_StorePokeDCare: @ 2045cfc :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2045d3c
	bl      ErrorHandling
.thumb
branch_2045d3c: @ 2045d3c :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_203d408
	strh    r0, [r6, #0x0]
	ldrh    r0, [r6, #0x0]
	cmp     r0, #0x7
	bne     branch_2045d4e
	mov     r0, #0xff
	strh    r0, [r6, #0x0]
.thumb
branch_2045d4e: @ 2045d4e :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_203d438
	strh    r0, [r5, #0x0]
	ldrh    r0, [r5, #0x0]
	cmp     r0, #0x1
	bne     branch_2045d60
	mov     r0, #0x1
	b       branch_2045d62
@ 0x2045d60

.thumb
branch_2045d60: @ 2045d60 :thumb
	mov     r0, #0x0
.thumb
branch_2045d62: @ 2045d62 :thumb
	strh    r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2045d70

.thumb
Function_2045d70: @ 2045d70 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r2, [r5, #0x8]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r4, [r2, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	cmp     r4, #0x64
	bls     branch_2045d92
	mov     r4, #0x64
.thumb
branch_2045d92: @ 2045d92 :thumb
	bl      PRNG
	mov     r1, #0x65
	blx     _s32_div_f
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	cmp     r0, r4
	bgt     branch_2045da8
	mov     r0, #0x1
	b       branch_2045daa
@ 0x2045da8

.thumb
branch_2045da8: @ 2045da8 :thumb
	mov     r0, #0x0
.thumb
branch_2045daa: @ 2045daa :thumb
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045db0

.thumb
ScriptCmd_HiddenMachineEffect: @ 2045db0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	cmp     r4, #0x0
	beq     branch_2045dec
	cmp     r4, #0x1
	beq     branch_2045df6
	cmp     r4, #0x2
	beq     branch_2045e00
	b       branch_2045e0a
@ 0x2045dec

.thumb
branch_2045dec: @ 2045dec :thumb
	mov     r2, #0x0
	mov     r3, #0x20
	bl      Function_6_224899c
	b       branch_2045e0e
@ 0x2045df6

.thumb
branch_2045df6: @ 2045df6 :thumb
	mov     r2, #0x1
	mov     r3, #0x20
	bl      Function_6_224899c
	b       branch_2045e0e
@ 0x2045e00

.thumb
branch_2045e00: @ 2045e00 :thumb
	mov     r2, #0x2
	mov     r3, #0x20
	bl      Function_6_224899c
	b       branch_2045e0e
@ 0x2045e0a

.thumb
branch_2045e0a: @ 2045e0a :thumb
	bl      ErrorHandling
.thumb
branch_2045e0e: @ 2045e0e :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2045e12


.align 2, 0


.thumb
ScriptCmd_CheckMasterRank: @ 2045e14 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      Function_206b374
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045e42


.align 2, 0


.thumb
ScriptCmd_CameraBumpEffect: @ 2045e44 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	cmp     r0, #0x0
	bne     branch_2045e68
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x10]
	bl      Function_6_223e384
	b       branch_2045e72

branch_2045e68: @ 2045e68 :thumb
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x10]
	bl      Function_6_223e4ec
branch_2045e72: @ 2045e72 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2045e76


.align 2, 0
.thumb
ScriptCmd_StoreActHeroFriendCode: @ 2045e78 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_2039074
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045e9e


.align 2, 0


.thumb
ScriptCmd_StoreActOtherFriendCode: @ 2045ea0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_1d
	bl      Function_202af94
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045eca


.align 2, 0


.thumb
Function_2045ecc: @ 2045ecc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_c
	ldr     r1, [pc, #0x10] @ 0x2045f00, (=0xff79)
	add     r1, r4, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	cmp     r1, #0x1
	bhi     branch_2045efc
	bl      Function_2028828
.thumb
branch_2045efc: @ 2045efc :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045f00

.word 0xff79 @ 0x2045f00



.thumb
ScriptCmd_CheckPlate: @ 2045f04 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r1, [pc, #0x14] @ 0x2045f44, (=0x12a)
	cmp     r4, r1
	blo     branch_2045f3e
	add     r1, #0xf
	cmp     r4, r1
	bhi     branch_2045f3e
	mov     r1, #0x1
	strh    r1, [r0, #0x0]
.thumb
branch_2045f3e: @ 2045f3e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2045f42

.align 2
.word 0x12a @ 0x2045f44



.thumb
ScriptCmd_ComparePhraseBoxInput: @ 2045f48 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0xc]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, #0x20
	bl      Function_200b358

	mov     r2, #0x5d
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, #PlMsg_Narc
	lsl     r2, r2, #2
	mov     r3, #0x20
	bl      LoadFromNARC_9
	mov     r5, r0
	ldr     r2, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_200be48
	ldr     r2, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_200be48
	ldr     r2, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_200be48
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, r7
	bl      Function_200be48
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	mov     r3, #0x20
	bl      Function_200b29c
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	bl      Function_2023be0
	cmp     r0, #0x0
	bne     branch_2046016
	mov     r0, #0x1
	b       branch_2046018
@ 0x2046016

.thumb
branch_2046016: @ 2046016 :thumb
	mov     r0, #0x0
.thumb
branch_2046018: @ 2046018 :thumb
	strh    r0, [r6, #0x0]
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x0]
	bl      Function_20237bc_FreeMsg
	mov     r0, r5
	bl      Function_200b190
	mov     r0, r4
	bl      Function_200b3f0
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2046038

.thumb
ScriptCmd_ActivateMysteryGift: @ 2046038 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_0
	mov     r1, #0x1
	bl      Function_2025d6c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204604e


.align 2, 0
.thumb
Function_2046050: @ 2046050 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      Function_205bc50
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204607e


.align 2, 0
.thumb
Function_2046080: @ 2046080 :thumb
	push    {r3,lr}
	bl      Function_2039734
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204608a


.align 2, 0


.thumb
Function_204608c: @ 204608c :thumb
	push    {r3,lr}
	bl      Function_2039794
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2046096


.align 2, 0
.thumb
Function_2046098: @ 2046098 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203a7a8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20460a6


.align 2, 0
.thumb
ScriptCmd_DarkraiFunction: @ 20460a8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_6
	bl      AddVariableAreaAdress_6_MapData4
	str     r4, [r0, #0x0]
	str     r6, [r0, #0x8]
	mov     r1, #0x0
	str     r7, [r0, #0xc]
	mvn     r1, r1
	str     r1, [r0, #0x4]
	mov     r1, #0x1
	str     r1, [r0, #0x10]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2046108

.thumb
Function_2046108: @ 2046108 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	ldr     r2, [r5, #0x8]
	mov     r1, r0
	add     r0, r2, #0x1
	str     r0, [r5, #0x8]
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldrb    r4, [r2, #0x0]
	ldr     r0, [r0, #0x38]
	bl      GetAdressOfSpriteID
	mov     r5, r0
	bne     branch_2046138
	bl      ErrorHandling
.thumb
branch_2046138: @ 2046138 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2062d80
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2046144

.thumb
ScriptCmd_StoreTrainerCardStar: @ 2046144 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      Function_2071f28
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204616a


.align 2, 0


.thumb
ScriptCmd_ShowSaveBox: @ 204616c :thumb
	push    {r3-r5,lr}
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	mov     r1, #0x28
	mov     r0, r5
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      Function_20247e0
	cmp     r0, #0x0
	bne     branch_2046196
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x3
	bl      Function_5_21e1f98
	str     r0, [r4, #0x0]
	bl      Function_5_21e1f04
branch_2046196: @ 2046196 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204619a


.align 2, 0
.thumb
ScriptCmd_HideSaveBox: @ 204619c :thumb
	push    {r3-r5,lr}
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	mov     r1, #0x28
	mov     r0, r5
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      Function_20247e0
	cmp     r0, #0x0
	bne     branch_20461c2
	ldr     r0, [r4, #0x0]
	bl      Function_5_21e1f7c
	ldr     r0, [r4, #0x0]
	bl      Function_5_21e1ff4
branch_20461c2: @ 20461c2 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20461c6


.align 2, 0
.thumb
Function_20461c8: @ 20461c8 :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x8]
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	add     r0, #0x80
	ldrb    r1, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_2070428
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20461de


.align 2, 0


.thumb
ScriptCmd_ShowBTowerSome: @ 20461e0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r7, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	ldrb    r6, [r1, #0x0]
	mov     r0, #0xb
	mov     r1, #0x2c
	bl      malloc2
	mov     r1, #0x0
	mov     r2, #0x2c
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r0, r6
	add     r0, #0xfb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r4, [r7, #0x0]
	cmp     r0, #0x1
	bhi     branch_2046224
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	b       branch_2046226
@ 0x2046224

.thumb
branch_2046224: @ 2046224 :thumb
	mov     r0, #0x0
.thumb
branch_2046226: @ 2046226 :thumb
	str     r0, [r4, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPlayerDataAdress
	str     r0, [r4, #0x4]
	mov     r0, r4
	add     r0, #0x24
	strb    r6, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0x48] @ 0x204628c, (=Unknown_20f8be0)
	ldr     r0, [r0, #0xc]
	mov     r2, r4
	str     r0, [r4, #0x8]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x1c]
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x1c]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0xc]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x10]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x20]
	ldr     r0, [r5, #0x74]
	bl      Function_2050a38
	ldr     r1, [pc, #0xc] @ 0x2046290, (=Function_2041cc8+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x204628c

.word Unknown_20f8be0 @ 0x204628c
.word Function_2041cc8+1 @ 0x2046290



.thumb
ScriptCmd_FloralClockAnimation: @ 2046294 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	mov     r1, #0x10
	mov     r0, r5
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x1
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, r0
	ldr     r2, [r6, #0x78]
	ldr     r3, [r4, #0x0]
	mov     r0, r5
	bl      Function_8_224b67c
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x20462be


.align 2, 0
.thumb
Function_20462c0: @ 20462c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r1, #0x4]
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x0
	beq     branch_20462d8
	mov     r1, #0x1a
	bl      Function_5_21d5f24
	mov     r0, r4
	bl      Call_RemoveTaskFromTaskList
branch_20462d8: @ 20462d8 :thumb
	pop     {r4,pc}
@ 0x20462da


.align 2, 0
.thumb
ScriptCmd_ActTeamGalacticEvents: @ 20462dc :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r1, #0x80
	ldr     r0, [pc, #0xc] @ 0x20462f0, (=Function_20462c0+1)
	ldr     r1, [r1, #0x0]
	mov     r2, #0x80
	bl      AddTaskToTaskList1
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20462f0

.word Function_20462c0+1 @ 0x20462f0



.thumb
Function_20462f4: @ 20462f4 :thumb
	push    {r4,lr}
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdress_6
	bl      GetVariableAreaAdress_6_66
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	ldr     r0, [r0, #0xc]
	bl      Function_5_21d5f24
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2046312


.align 2, 0
.thumb
ScriptCmd_2d8: @ 2046314 :thumb
	push    {r3,lr}
	mov     r1, r0
	ldr     r2, [r1, #0x8]
	add     r0, r2, #0x1
	str     r0, [r1, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r1, #0x74]
	add     r1, #0x80
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x10] @ 0x204633c, (=Unknown_2100af0)
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, r3]
	mov     r3, #0x3
	bl      Function_7_224cda4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x204633a

.align 2
.word Unknown_2100af0 @ 0x204633c



.thumb
ScriptCmd_ShowBArcadeRecors: @ 2046340 :thumb
	push    {r3-r7,lr}
	mov     r5, r0

	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r3, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x80
	lsl     r1, r6, #24
	lsl     r2, r7, #24
	ldr     r0, [r0, #0x0]
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_203e564
	str     r0, [r4, #0x0]
	ldr     r1, [pc, #0x8] @ 0x20463b0, (=Function_2041cc8+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x20463b0

.word Function_2041cc8+1 @ 0x20463b0



.thumb
Function_20463b4: @ 20463b4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x20
	bl      Function_203e608
	str     r0, [r4, #0x0]
	ldr     r1, [pc, #0xc] @ 0x20463e0, (=Function_2041d60+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x20463de

.align 2
.word Function_2041d60+1 @ 0x20463e0



.thumb
Function_20463e4: @ 20463e4 :thumb
	push    {r4,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2046400

.thumb
Function_2046400: @ 2046400 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r0, #0x0]
	lsl     r0, r4, #1
	add     r1, r1, r0
	ldrh    r0, [r1, #0x8]
	strh    r0, [r6, #0x0]
	ldrh    r0, [r1, #0xe]
	strh    r0, [r7, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204645a


.align 2, 0
.thumb
Function_204645c: @ 204645c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	ldr     r1, [pc, #0x6c] @ 0x2046518, (=0xfff)
	str     r0, [sp, #0x0]
	strh    r1, [r6, #0x0]
	strh    r1, [r7, #0x0]
	strh    r1, [r4, #0x0]
	strh    r1, [r0, #0x0]
	bl      PRNG
	mov     r1, #0x7
	and     r0, r1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	ldr     r0, [pc, #0x58] @ 0x204651c, (=Unknown_20eab96)
	lsl     r1, r5, #1
	ldrh    r0, [r0, r1]
	ldr     r1, [pc, #0x4c] @ 0x2046518, (=0xfff)
	strh    r0, [r6, #0x0]
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      Function_2046524
	mov     r1, r0
	cmp     r1, #0x8
	beq     branch_20464e4
	ldr     r0, [pc, #0x3c] @ 0x204651c, (=Unknown_20eab96)
	lsl     r2, r1, #1
	ldrh    r0, [r0, r2]
	strh    r0, [r7, #0x0]
branch_20464e4: @ 20464e4 :thumb
	ldr     r2, [pc, #0x30] @ 0x2046518, (=0xfff)
	mov     r0, r5
	mov     r3, r2
	bl      Function_2046524
	cmp     r0, #0x8
	beq     branch_20464fa
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x24] @ 0x204651c, (=Unknown_20eab96)
	ldrh    r0, [r0, r1]
	strh    r0, [r4, #0x0]
branch_20464fa: @ 20464fa :thumb
	ldr     r0, [pc, #0x1c] @ 0x2046518, (=0xfff)
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_2046568
	cmp     r0, #0x5
	beq     branch_2046514
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x10] @ 0x2046520, (=Unknown_20eab8c)
	ldrh    r1, [r0, r1]
	ldr     r0, [sp, #0x0]
	strh    r1, [r0, #0x0]
branch_2046514: @ 2046514 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2046518

.word 0xfff @ 0x2046518
.word Unknown_20eab96 @ 0x204651c
.word Unknown_20eab8c @ 0x2046520



.thumb
Function_2046524: @ 2046524 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	mov     r4, #0x0
branch_2046530: @ 2046530 :thumb
	bl      PRNG
	mov     r1, #0x9
	blx     _u32_div_f
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	cmp     r0, #0x8
	beq     branch_2046562
	add     r1, r4, #0x1
	lsl     r1, r1, #24
	lsr     r4, r1, #24
	cmp     r4, #0x8
	blo     branch_2046550
	mov     r0, #0x8
	b       branch_2046562
@ 0x2046550

.thumb
branch_2046550: @ 2046550 :thumb
	cmp     r0, r5
	beq     branch_2046530
	cmp     r0, r6
	beq     branch_2046530
	cmp     r0, r7
	beq     branch_2046530
	ldr     r1, [sp, #0x0]
	cmp     r0, r1
	beq     branch_2046530
.thumb
branch_2046562: @ 2046562 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3-r7,pc}
@ 0x2046568

.thumb
Function_2046568: @ 2046568 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	mov     r4, #0x0
.thumb
branch_2046574: @ 2046574 :thumb
	bl      PRNG
	mov     r1, #0x6
	blx     _u32_div_f
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	cmp     r0, #0x5
	beq     branch_20465a6
	add     r1, r4, #0x1
	lsl     r1, r1, #24
	lsr     r4, r1, #24
	cmp     r4, #0x8
	blo     branch_2046594
	mov     r0, #0x5
	b       branch_20465a6
@ 0x2046594

.thumb
branch_2046594: @ 2046594 :thumb
	cmp     r0, r5
	beq     branch_2046574
	cmp     r0, r6
	beq     branch_2046574
	cmp     r0, r7
	beq     branch_2046574
	ldr     r1, [sp, #0x0]
	cmp     r0, r1
	beq     branch_2046574
.thumb
branch_20465a6: @ 20465a6 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3-r7,pc}
@ 0x20465ac


.thumb
Function_20465ac: @ 20465ac :thumb
	push    {r3-r7,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_2039074
	cmp     r0, #0x0
	beq     branch_2046616
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, r7
	mov     r2, r6
	bl      Function_203e6c0
	ldr     r1, [pc, #0x10] @ 0x2046620, (=Function_2041d60+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	b       branch_204661a

branch_2046616: @ 2046616 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
branch_204661a: @ 204661a :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x204661e

.align 2
.word Function_2041d60+1 @ 0x2046620



.thumb
Function_2046624: @ 2046624 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_2039074
	cmp     r0, #0x0
	beq     branch_2046652
	ldrh    r1, [r4, #0x0]
	ldr     r0, [r5, #0x74]
	bl      Function_205749c
.thumb
branch_2046652: @ 2046652 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2046656


.align 2, 0


.thumb
Function_2046658: @ 2046658 :thumb
	push    {r3,lr}
	mov     r1, r0
	ldr     r0, [r1, #0x74]
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r1, [r1, #0xc]
	bl      Function_20985e4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x204666c


.thumb
Function_204666c: @ 204666c :thumb
	push    {r4,lr}
	mov     r4, r0

	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter

	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r1, =RAM_21bf67c
	ldr     r2, [r1, #0x44]
	mov     r1, #0x1
	tst     r2, r1
	beq     branch_204668e
	strh    r1, [r0, #0x0]
branch_204668e: @ 204668e :thumb

	ldr     r1, =RAM_21bf67c
	ldr     r2, [r1, #0x44]
	mov     r1, #0x2
	tst     r1, r2
	beq     branch_204669c
	mov     r1, #0x1
	strh    r1, [r0, #0x0]
branch_204669c: @ 204669c :thumb

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x20466a0

.pool



.thumb
Function_20466a4: @ 20466a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	str     r1, [sp, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	strh    r1, [r7, #0x0]
	strh    r1, [r6, #0x0]
	strh    r1, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	strh    r1, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_204676c
	lsr     r1, r0, #1
	mov     r2, #0x1
	and     r1, r2
	cmp     r1, #0x1
	bne     branch_2046736
	ldr     r1, [sp, #0x4]
	strh    r2, [r1, #0x0]
.thumb
branch_2046736: @ 2046736 :thumb
	lsr     r2, r0, #2
	mov     r1, #0x1
	and     r2, r1
	cmp     r2, #0x1
	bne     branch_2046742
	strh    r1, [r7, #0x0]
.thumb
branch_2046742: @ 2046742 :thumb
	lsr     r2, r0, #3
	mov     r1, #0x1
	and     r2, r1
	cmp     r2, #0x1
	bne     branch_204674e
	strh    r1, [r6, #0x0]
.thumb
branch_204674e: @ 204674e :thumb
	lsr     r2, r0, #4
	mov     r1, #0x1
	and     r2, r1
	cmp     r2, #0x1
	bne     branch_204675a
	strh    r1, [r4, #0x0]
.thumb
branch_204675a: @ 204675a :thumb
	lsr     r1, r0, #5
	mov     r0, #0x1
	and     r1, r0
	cmp     r1, #0x1
	bne     branch_2046766
	strh    r0, [r5, #0x0]
.thumb
branch_2046766: @ 2046766 :thumb
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x204676c

.thumb
Function_204676c: @ 204676c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	mov     r6, #0x0
	bl      LoadPokePartyAdress
	str     r0, [sp, #0x8]
	bl      GetNrOfPkmnInParty
	mov     r7, r0
	mov     r4, r6
	cmp     r7, #0x0
	ble     branch_20467c2
.thumb
branch_2046786: @ 2046786 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r5, r0
	bl      GetPkmnData
	ldr     r1, [pc, #0xc8] @ 0x2046864, (=0x1df)
	cmp     r0, r1
	bne     branch_20467bc
	mov     r0, r5
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_20467bc
	mov     r0, r5
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0x1
	lsl     r1, r0
	orr     r6, r1
.thumb
branch_20467bc: @ 20467bc :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	blt     branch_2046786
.thumb
branch_20467c2: @ 20467c2 :thumb
	ldr     r0, [sp, #0x0]
	bl      LoadVariableAreaAdress_8
	mov     r7, r0
	mov     r4, #0x0
.thumb
branch_20467cc: @ 20467cc :thumb
	mov     r0, r7
	mov     r1, r4
	bl      Function_2026218
	bl      Function_2026220_Dummy

	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	mov     r5, r0
	bl      GetBoxPkmnData

	ldr     r1, [pc, #0x80] @ 0x2046864, (=0x1df)
	cmp     r0, r1
	bne     branch_2046806

	mov     r0, r5
	mov     r1, #PKMNDATA_ISEGG
	mov     r2, #0x0
	bl      GetBoxPkmnData

	cmp     r0, #0x0
	bne     branch_2046806

	mov     r0, r5
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetBoxPkmnData

	mov     r1, #0x1
	lsl     r1, r0
	orr     r6, r1
branch_2046806: @ 2046806 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x2
	blt     branch_20467cc
	ldr     r0, [sp, #0x0]
	bl      LoadVariableAreaAdress_25
	str     r0, [sp, #0x4]
	mov     r7, #0x0
branch_2046816: @ 2046816 :thumb
	mov     r5, #0x0
branch_2046818: @ 2046818 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	mov     r2, r5
	bl      Function_2079c9c

	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	mov     r4, r0
	bl      GetBoxPkmnData

	ldr     r1, [pc, #0x34] @ 0x2046864, (=0x1df)
	cmp     r0, r1
	bne     branch_2046850

	mov     r0, r4
	mov     r1, #PKMNDATA_ISEGG
	mov     r2, #0x0
	bl      GetBoxPkmnData

	cmp     r0, #0x0
	bne     branch_2046850

	mov     r0, r4
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetBoxPkmnData

	mov     r1, #0x1
	lsl     r1, r0
	orr     r6, r1
branch_2046850: @ 2046850 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x1e
	blt     branch_2046818

	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, #0x12
	blo     branch_2046816

	mov     r0, r6
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2046862

.align 2
.word 0x1df @ 0x2046864



.thumb
Function_2046868: @ 2046868 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_14
	mov     r1, r4
	bl      Function_202cfec
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2046886


.align 2, 0


.thumb
Function_2046888: @ 2046888 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r5
	bl      Function_9_224f158
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20468ac


.thumb
Function_20468ac: @ 20468ac :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r5
	bl      Function_9_224f16c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20468d0


.thumb
Function_20468d0: @ 20468d0 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_9_2249fd0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20468de


.align 2, 0
.thumb
Function_20468e0: @ 20468e0 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, #0xb
	bl      Function_20182a4
	mov     r4, r0
	mov     r0, #0x4
	bl      Function_20182a4
	mov     r7, r0
	mov     r0, #0x20
	bl      Function_20182a4
	mov     r5, r0
	cmp     r6, #0x0
	bne     branch_204691a
	ldr     r0, [pc, #0x24] @ 0x2046938, (=RAM_21c07e0)
	str     r4, [r0, #0x8]
	str     r7, [r0, #0x4]
	str     r5, [r0, #0xc]
	b       branch_2046932
@ 0x204691a

.thumb
branch_204691a: @ 204691a :thumb
	ldr     r0, [pc, #0x1c] @ 0x2046938, (=RAM_21c07e0)
	ldr     r0, [r0, #0x8]
	cmp     r4, r0
	beq     branch_2046926
	bl      ErrorHandling
.thumb
branch_2046926: @ 2046926 :thumb
	ldr     r0, [pc, #0x10] @ 0x2046938, (=RAM_21c07e0)
	ldr     r0, [r0, #0xc]
	cmp     r5, r0
	beq     branch_2046932
	bl      ErrorHandling
branch_2046932: @ 2046932 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2046936

.align 2
.word RAM_21c07e0 @ 0x2046938



.thumb
Function_204693c: @ 204693c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_203e714
	ldr     r1, [pc, #0x8] @ 0x2046954, (=Function_2041d60+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2046954

.word Function_2041d60+1 @ 0x2046954
.thumb
Function_2046958: @ 2046958 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r5
	bl      Function_9_224e884
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204697c


.thumb
Function_204697c: @ 204697c :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_9_224e8a8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204698a


.align 2, 0
.thumb
Function_204698c: @ 204698c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	bl      Function_20138ec
	mov     r2, r5
	add     r2, #0xc4
	add     r5, #0xc8
	ldr     r3, [r2, #0x0]
	ldr     r2, [r5, #0x0]
	sub     r3, r0, r3
	sbc     r1, r2
	mov     r2, #0x0
	mov     r0, #0x78
	sub     r0, r3, r0
	sbc     r1, r2
	blt     branch_20469c6
	mov     r0, #0x1
	b       branch_20469c8
@ 0x20469c6

.thumb
branch_20469c6: @ 20469c6 :thumb
	mov     r0, #0x0
.thumb
branch_20469c8: @ 20469c8 :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20469ce


.align 2, 0


.thumb
ScriptCmd_PortalEffect: @ 20469d0 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r6, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	str     r0, [sp, #0x0]
	mov     r1, r5
	bl      Function_2077a9c
	ldr     r0, [sp, #0x0]
	bl      GetNrOfPkmnInParty
	mov     r7, r0
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_2046a44
.thumb
branch_2046a0c: @ 2046a0c :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x4c
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2046a3e
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x18] @ 0x2046a48, (=0x1e7)
	cmp     r0, r1
	bne     branch_2046a3e
	ldr     r0, [r6, #0xc]
	bl      LoadPokedexDataAdress
	mov     r1, r4
	bl      Function_202736c
.thumb
branch_2046a3e: @ 2046a3e :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_2046a0c
.thumb
branch_2046a44: @ 2046a44 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2046a48

.word 0x1e7 @ 0x2046a48
.thumb
Function_2046a4c: @ 2046a4c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	strh    r1, [r0, #0x0]
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	bl      GetNrOfPkmnInParty
	mov     r7, r0
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_2046acc
.thumb
branch_2046a7e: @ 2046a7e :thumb
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x4c
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2046ac6
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0x24] @ 0x2046ad0, (=0x1e6)
	cmp     r0, r1
	bne     branch_2046ac6
	mov     r0, r4
	mov     r1, #0x6e
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x1
	bne     branch_2046ac6
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2046ac6

.thumb
branch_2046ac6: @ 2046ac6 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_2046a7e
.thumb
branch_2046acc: @ 2046acc :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2046ad0

.word 0x1e6 @ 0x2046ad0



.thumb
ScriptCmd_Pokemart: @ 2046ad4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x84
	mov     r7, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r7
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, #0x0
	mov     r6, r4
	mov     r5, r4
.thumb
branch_2046af0: @ 2046af0 :thumb
	mov     r0, r7
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	mov     r1, r5
	bl      CheckBadge
	cmp     r0, #0x1
	bne     branch_2046b0c
	add     r0, r6, #0x1
	lsl     r0, r0, #24
	lsr     r6, r0, #24
.thumb
branch_2046b0c: @ 2046b0c :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, #0x8
	blo     branch_2046af0
	cmp     r6, #0x8
	bhi     branch_2046b50
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2046b26

Jumppoints_2046b26:
.hword branch_2046b38 - Jumppoints_2046b26 - 2
.hword branch_2046b3c - Jumppoints_2046b26 - 2
.hword branch_2046b3c - Jumppoints_2046b26 - 2
.hword branch_2046b40 - Jumppoints_2046b26 - 2
.hword branch_2046b40 - Jumppoints_2046b26 - 2
.hword branch_2046b44 - Jumppoints_2046b26 - 2
.hword branch_2046b44 - Jumppoints_2046b26 - 2
.hword branch_2046b48 - Jumppoints_2046b26 - 2
.hword branch_2046b4c - Jumppoints_2046b26 - 2

.thumb
branch_2046b38: @ 2046b38 :thumb
	mov     r1, #0x1
	b       branch_2046b52

branch_2046b3c: @ 2046b3c :thumb
	mov     r1, #0x2
	b       branch_2046b52

branch_2046b40: @ 2046b40 :thumb
	mov     r1, #0x3
	b       branch_2046b52

branch_2046b44: @ 2046b44 :thumb
	mov     r1, #0x4
	b       branch_2046b52

branch_2046b48: @ 2046b48 :thumb
	mov     r1, #0x5
	b       branch_2046b52

branch_2046b4c: @ 2046b4c :thumb
	mov     r1, #0x6
	b       branch_2046b52

branch_2046b50: @ 2046b50 :thumb
	mov     r1, #0x1
branch_2046b52: @ 2046b52 :thumb
	ldr     r0, [pc, #0x40] @ 0x2046b94, (=Unknown_20ebafc)
	mov     r2, #0x0
	add     r6, sp, #0x4
branch_2046b58: @ 2046b58 :thumb
	lsl     r3, r2, #2
	add     r5, r0, r3
	ldrh    r3, [r5, #0x2]
	cmp     r1, r3
	blt     branch_2046b6e
	ldrh    r5, [r5, #0x0]
	lsl     r3, r4, #1
	strh    r5, [r6, r3]
	add     r3, r4, #0x1
	lsl     r3, r3, #24
	lsr     r4, r3, #24
branch_2046b6e: @ 2046b6e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	cmp     r2, #0x13
	blo     branch_2046b58
	ldr     r1, [pc, #0x1c] @ 0x2046b98, (=0xffff)
	lsl     r0, r4, #1
	add     r2, sp, #0x4
	strh    r1, [r2, r0]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [r7, #0x74]
	add     r7, #0x80
	ldr     r1, [r7, #0x0]
	bl      Function_7_224cda4
	mov     r0, #0x1
	add     sp, #0x84
	pop     {r4-r7,pc}
@ 0x2046b94

.word Unknown_20ebafc @ 0x2046b94
.word 0xffff @ 0x2046b98



.thumb
ScriptCmd_Pokemart1: @ 2046b9c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	cmp     r2, #0x8
	beq     branch_2046bd0
	cmp     r2, #0x9
	beq     branch_2046bd0
	cmp     r2, #0xa
	beq     branch_2046bd0
	cmp     r2, #0xb
	beq     branch_2046bd0
	cmp     r2, #0xc
	beq     branch_2046bd0
	cmp     r2, #0xd
	beq     branch_2046bd0
	cmp     r2, #0x13
	bne     branch_2046bd4
branch_2046bd0: @ 2046bd0 :thumb
	mov     r0, #0x1
	b       branch_2046bd6

branch_2046bd4: @ 2046bd4 :thumb
	mov     r0, #0x0
branch_2046bd6: @ 2046bd6 :thumb
	lsl     r3, r2, #2
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0x14] @ 0x2046bf0, (=Unknown_2100b1c)
	ldr     r0, [r4, #0x74]
	add     r4, #0x80
	ldr     r2, [r2, r3]
	ldr     r1, [r4, #0x0]
	mov     r3, #0x0
	bl      Function_7_224cda4
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2046bf0

.word Unknown_2100b1c @ 0x2046bf0



.thumb
ScriptCmd_Pokemart2: @ 2046bf4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	cmp     r2, #0x1
	bhi     branch_2046c14
	mov     r0, #0x1
	b       branch_2046c16
@ 0x2046c14

.thumb
branch_2046c14: @ 2046c14 :thumb
	mov     r0, #0x0
.thumb
branch_2046c16: @ 2046c16 :thumb
	lsl     r3, r2, #2
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0x14] @ 0x2046c30, (=Unknown_2100af8)
	ldr     r0, [r4, #0x74]
	add     r4, #0x80
	ldr     r2, [r2, r3]
	ldr     r1, [r4, #0x0]
	mov     r3, #0x1
	bl      Function_7_224cda4
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2046c30

.word Unknown_2100af8 @ 0x2046c30



.thumb
ScriptCmd_Pokemart3: @ 2046c34 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	mov     r0, #0x0
	lsl     r3, r2, #2
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0x14] @ 0x2046c68, (=Unknown_2100b00)
	ldr     r0, [r4, #0x74]
	add     r4, #0x80
	ldr     r2, [r2, r3]
	ldr     r1, [r4, #0x0]
	mov     r3, #0x2
	bl      Function_7_224cda4
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2046c68

.word Unknown_2100b00 @ 0x2046c68



.thumb
ScriptCmd_SprtSave: @ 2046c6c :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x10]
	bl      Function_203e518
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2046c7c

.thumb
ScriptCmd_StartOvation: @ 2046c7c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	lsl     r1, r1, #24
	ldr     r0, [r4, #0x0]
	lsr     r1, r1, #24
	bl      Function_2094754
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2046cac

.thumb
ScriptCmd_StopOvation: @ 2046cac :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [r4, #0x64]
	ldr     r1, [pc, #0xc] @ 0x2046cdc, (=Function_2046ce0+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2046cda

.align 2
.word Function_2046ce0+1 @ 0x2046cdc



.thumb
Function_2046ce0: @ 2046ce0 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r4, #0x64]
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_209476c
	pop     {r4,pc}
@ 0x2046cfc


.thumb
Function_2046cfc: @ 2046cfc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x8]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0xc]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2025f04
	mov     r7, r0
	ldr     r1, [sp, #0x8]
	add     r0, sp, #0x14
	strb    r1, [r0, #0x0]
	ldr     r1, [sp, #0x4]
	strb    r1, [r0, #0x1]
	ldr     r1, [sp, #0xc]
	strb    r1, [r0, #0x2]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206a954
	add     r1, sp, #0x14
	strb    r0, [r1, #0x3]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokedexDataAdress
	bl      Function_2027474
	add     r1, sp, #0x14
	strb    r0, [r1, #0x4]
	strb    r6, [r1, #0x5]
	ldr     r0, [sp, #0x10]
	str     r7, [sp, #0x20]
	str     r0, [sp, #0x1c]
	mov     r0, r5
	str     r4, [sp, #0x24]
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_e
	str     r0, [sp, #0x28]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPlayerDataAdress
	str     r0, [sp, #0x2c]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	add     r5, #0x80
	ldr     r0, [r0, #0xc]
	str     r0, [sp, #0x30]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_16
	str     r0, [sp, #0x34]
	add     r0, sp, #0x14
	bl      Function_2093800
	ldr     r1, [sp, #0x0]
	str     r0, [r1, #0x0]
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x0
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x2046e14

.thumb
Function_2046e14: @ 2046e14 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      GetMapName
	add     r5, #0x80
	ldr     r3, [r5, #0x0]
	mov     r2, r0
	ldr     r1, [r3, #0xc]
	add     r3, #0x9c
	ldr     r0, [r4, #0x0]
	ldr     r3, [r3, #0x0]
	bl      Function_2094c44
	ldr     r0, [r4, #0x0]
	bl      Function_2093ad4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2046e60

.thumb
Function_2046e60: @ 2046e60 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r3, r0
	ldr     r0, [r4, #0x0]
	ldr     r2, [r6, #0x0]
	mov     r1, r7
	bl      Function_2094630
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2046eb2


.align 2, 0


.thumb
ScriptCmd_SetvarOtherEntry: @ 2046eb4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r3, r0
	ldr     r0, [r4, #0x0]
	ldr     r2, [r6, #0x0]
	mov     r1, r7
	bl      Function_2094648
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2046f06


.align 2, 0


.thumb
Function_2046f08: @ 2046f08 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r3, r0
	ldr     r0, [r4, #0x0]
	ldr     r2, [r6, #0x0]
	mov     r1, r7
	bl      Function_2094680
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2046f5a


.align 2, 0


.thumb
ScriptCmd_SetvatHiroEntry: @ 2046f5c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, r6
	bl      Function_200b60c
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2046fb6


.align 2, 0
.thumb
Function_2046fb8: @ 2046fb8 :thumb
	push    {r4,lr}
	mov     r4, r0

	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses

	ldr     r0, [r0, #0x0]
	bl      Function_20943b0

	ldr     r1, [pc, #0x8] @ 0x2046fd8, (=Function_2046fdc+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction

	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2046fd8

.word Function_2046fdc+1 @ 0x2046fd8



.thumb
Function_2046fdc: @ 2046fdc :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      Function_20944cc
	pop     {r3,pc}
@ 0x2046ff0


.thumb
ScriptCmd_BlackFlashEffect: @ 2046ff0 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, r0
	ldr     r0, [r4, #0x74]
	ldr     r1, [r1, #0x0]
	bl      Function_20933f8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x204700c

.thumb
ScriptCmd_SetvarTypeContest: @ 204700c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [r6, #0x0]
	bl      Function_20946a4
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047048

.thumb
ScriptCmd_SetvarRankContest: @ 2047048 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [r6, #0x0]
	bl      Function_20946cc
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047084

.thumb
Function_2047084: @ 2047084 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [r6, #0x0]
	bl      Function_20946f0
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20470c0

.thumb
Function_20470c0: @ 20470c0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2094750
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20470ee


.align 2, 0


.thumb
Function_20470f0: @ 20470f0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [r6, #0x0]
	bl      Function_2094720
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204712c

.thumb
Function_204712c: @ 204712c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2094790
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204715a


.align 2, 0


.thumb
ScriptCmd_StorePeopleIdContest: @ 204715c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_20947a4
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204718a


.align 2, 0


.thumb
Function_204718c: @ 204718c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_20947c8
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20471ba


.align 2, 0


.thumb
Function_20471bc: @ 20471bc :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	bl      Function_20947d8
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047200

.thumb
ScriptCmd_ActPeopleContest: @ 2047200 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	bl      Function_20947f0
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047244

.thumb
Function_2047244: @ 2047244 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2094804
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2047272


.align 2, 0


.thumb
Function_2047274: @ 2047274 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r3, [sp, #0x4]
	mov     r1, r6
	mov     r2, r7
	bl      Function_2094828
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20472e6


.align 2, 0


.thumb
Function_20472e8: @ 20472e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2094868
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2047316


.align 2, 0


.thumb
Function_2047318: @ 2047318 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [r6, #0x0]
	mov     r3, #0xb
	bl      Function_2094898
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047356


.align 2, 0


.thumb
Function_2047358: @ 2047358 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2094904
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2047386


.align 2, 0


.thumb
Function_2047388: @ 2047388 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      Function_2094850
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204739e


.align 2, 0


.thumb
Function_20473a0: @ 20473a0 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      Function_2094860
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20473b6


.align 2, 0


.thumb
ScriptCmd_FlashContest: @ 20473b8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      Function_2094a58
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20473e4

.thumb
ScriptCmd_EndFlash: @ 20473e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [pc, #0xc] @ 0x2047400, (=Function_2047404+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20473fe

.align 2
.word Function_2047404+1 @ 0x2047400



.thumb
Function_2047404: @ 2047404 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      Function_2094b1c
	cmp     r0, #0x1
	bne     branch_204741e
	mov     r0, #0x1
	pop     {r3,pc}

branch_204741e: @ 204741e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2047422


.align 2, 0
.thumb
ScriptCmd_CarpetAnimation: @ 2047424 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0, #0x1c]
	bl      Function_5_21ef3fc
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2047436


.align 2, 0
.thumb
Function_2047438: @ 2047438 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0, #0x1c]
	bl      Function_5_21ef3dc
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204744a


.align 2, 0
.thumb
Function_204744c: @ 204744c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x14
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	add     r0, sp, #0xc
	str     r0, [sp, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x18
	add     r2, sp, #0x14
	add     r3, sp, #0x10
	bl      Function_2094bb4
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x1
	beq     branch_204749c
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x1
	beq     branch_204749c
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x1
	beq     branch_204749c
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x1
	bne     branch_20474a2
.thumb
branch_204749c: @ 204749c :thumb
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	b       branch_20474a6
@ 0x20474a2

.thumb
branch_20474a2: @ 20474a2 :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
.thumb
branch_20474a6: @ 20474a6 :thumb
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x20474ac


.thumb
ScriptCmd_ShowLinkCountRecord: @ 20474ac :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x74]
	bl      Function_6_2247a0c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20474b8


.thumb
Function_20474b8: @ 20474b8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	lsl     r2, r2, #24
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	lsr     r2, r2, #24
	bl      Function_200b824
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20474f2


.align 2, 0


.thumb
ScriptCmd_SetVariableHero: @ 20474f4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r6, [r0, #0x0]
	mov     r1, #0xf
	mov     r0, r6
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r4, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	ldrb    r5, [r1, #0x0]
	mov     r0, r6
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_200b498
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047526


.align 2, 0


.thumb
ScriptCmd_SetVariableRival: @ 2047528 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	mov     r1, #0xf
	mov     r0, r4
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r2, [r5, #0x8]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r1, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r2, [r4, #0xc]
	bl      Function_200b4bc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204754c

.thumb
ScriptCmd_SetVariableAlter: @ 204754c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	mov     r1, #0xf
	mov     r0, r4
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r2, [r5, #0x8]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r1, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r2, [r4, #0xc]
	bl      Function_200b4e4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2047570

.thumb
ScriptCmd_SetVariablePokemon: @ 2047570 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r6, [r0, #0x0]
	mov     r1, #0xf
	mov     r0, r6
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r7, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	ldr     r0, [r6, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	ldr     r0, [r7, #0x0]
	mov     r1, r4
	bl      Function_200b538
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20475b6


.align 2, 0
.thumb
Function_20475b8: @ 20475b8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0

	add     r0, r1, #0x1
	str     r0, [r5, #0x8]

	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0

	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200b7ec
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20475ee


.align 2, 0
.thumb
ScriptCmd_SetVariableItem: @ 20475f0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200b70c
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047626


.align 2, 0


.thumb
ScriptCmd_SetVariableItemNum: @ 2047628 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200b7b4
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204765e


.align 2, 0


.thumb
ScriptCmd_SetVariableAttackItem: @ 2047660 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	bl      Function_207d268
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200b630
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204769a


.align 2, 0


.thumb
ScriptCmd_SetVariableAttack: @ 204769c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200b630
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20476d2


.align 2, 0


.thumb
ScriptCmd_SetVariableNumber: @ 20476d4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	bl      Function_205dfc4
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	mov     r2, r5
	bl      Function_200b60c
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x204771c

.thumb
ScriptCmd_SetvarIdNumber: @ 204771c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r7, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r6, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x8]
	ldr     r1, [r5, #0x8]
	add     r2, r1, #0x1
	str     r2, [r5, #0x8]
	ldrb    r4, [r1, #0x0]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r3, [r2, #0x0]
	cmp     r4, #0x0
	bne     branch_2047764
	bl      Function_205dfc4
	lsl     r0, r0, #24
	lsr     r3, r0, #24
.thumb
branch_2047764: @ 2047764 :thumb
	str     r4, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r1, r6
	bl      Function_200b60c
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x204777a


.align 2, 0
.thumb
Function_204777c: @ 204777c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0

	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r7, r0

	add     r0, r1, #0x1
	str     r0, [r5, #0x8]

	mov     r0, r5
	ldrb    r6, [r1, #0x0]
	bl      ScriptHandler_LoadWord
	ldr     r1, [r5, #0x8]
	str     r0, [sp, #0x8]

	add     r2, r1, #0x1
	str     r2, [r5, #0x8]

	ldrb    r4, [r1, #0x0]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]

	ldrb    r3, [r2, #0x0]
	cmp     r4, #0x0
	bne     branch_20477b8
	bl      Function_205dfc4
	lsl     r0, r0, #24
	lsr     r3, r0, #24
branch_20477b8: @ 20477b8 :thumb
	str     r4, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r1, r6
	bl      Function_200b60c

	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x20477ce


.align 2, 0
.thumb
ScriptCmd_SetVariableNickname: @ 20477d0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r6, [r0, #0x0]
	mov     r1, #0xf
	mov     r0, r6
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r7, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80

	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0

	ldr     r0, [r6, #0xc]
	bl      LoadPokePartyAdress

	mov     r1, r5
	bl      GetAdrOfPkmnInParty

	mov     r2, r0
	ldr     r0, [r7, #0x0]
	mov     r1, r4
	bl      Function_200b5cc
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2047816


.align 2, 0
.thumb
ScriptCmd_SetvarIdPokeBoxes: @ 2047818 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdress_25
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	mov     r1, #0x1e
	blx     _s32_div_f
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x1e
	blx     _s32_div_f
	mov     r2, r1
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	bl      Function_2079c9c
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200b5cc
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2047874


.thumb
ScriptCmd_SetVariableObject: @ 2047874 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200b928
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20478aa


.align 2, 0


.thumb
ScriptCmd_SetVariableTrainer: @ 20478ac :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200b960
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20478e2


.align 2, 0
.thumb
ScriptCmd_SetvarWiFiSprite: @ 20478e4 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	mov     r0, r5
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r7, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r7, #0x8]
	mov     r0, r4
	ldrb    r5, [r1, #0x0]
	bl      GetGender
	mov     r7, r0
	mov     r0, r4
	bl      Function_2025f8c
	mov     r1, r0
	mov     r0, r7
	mov     r2, #0x2
	bl      Function_205ca14
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r5
	bl      Function_200b998
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2047930

.thumb
ScriptCmd_SetVarPokemonStored: @ 2047930 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r7, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	ldr     r1, [r5, #0x8]
	str     r0, [sp, #0x8]
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	ldrb    r5, [r1, #0x0]
	mov     r0, r6
	mov     r1, #0x4
	bl      Function_2047998
	mov     r6, r0
	str     r5, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0x0]
	ldr     r3, [sp, #0x8]
	mov     r1, r4
	mov     r2, r6
	bl      Function_200b48c
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2047996


.align 2, 0
.thumb
Function_2047998: @ 2047998 :thumb
	push    {r3-r5,lr}

	mov     r2, #0x67
	mov     r4, r0
	mov     r3, r1
	mov     r0, #0x1
	mov     r1, #PlMsg_Narc
	lsl     r2, r2, #2
	bl      LoadFromNARC_9
	mov     r5, r0
	mov     r1, r4
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, r5
	bl      Function_200b190
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x20479be


.align 2, 0
.thumb
ScriptCmd_SetVarHeroStored: @ 20479c0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r4, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r4, #0x8]
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	ldrb    r5, [r1, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b054
	mov     r1, #0x4
	bl      Function_2047998
	mov     r4, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x0]
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_200b48c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2047a10

.thumb
ScriptCmd_SetVarRivalStored: @ 2047a10 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r4, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r4, #0x8]
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	ldrb    r5, [r1, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b064
	mov     r1, #0x4
	bl      Function_2047998
	mov     r4, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x0]
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_200b48c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2047a60

.thumb
ScriptCmd_SetVarAlterStored: @ 2047a60 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r4, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r4, #0x8]
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	ldrb    r5, [r1, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b08c
	mov     r1, #0x4
	bl      Function_2047998
	mov     r4, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x0]
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_200b48c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2047ab0

.thumb
Function_2047ab0: @ 2047ab0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200bc80
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047ae6


.align 2, 0


.thumb
ScriptCmd_SetvarItemStored: @ 2047ae8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200bb04
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047b1e


.align 2, 0


.thumb
ScriptCmd_SetvarItemStored2: @ 2047b20 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200ba94
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047b56


.align 2, 0
.thumb
ScriptCmd_SetvarSwarmPoke: @ 2047b58 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0

	mov     r0, #0x16
	mov     r1, #0x4
	bl      Function_2023790
	mov     r4, r0

	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #ScriptHandler_Pointer]
	mov     r7, r0
	add     r0, r1, #0x1
	str     r0, [r5, #ScriptHandler_Pointer]

	mov     r0, r5
	ldrb    r6, [r1, #0x0]
	bl      ScriptHandler_LoadHWord

	add     r5, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r5]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, #0x4
	mov     r2, r4
	bl      Function_2071d10
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0x0]
	mov     r1, r6
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_200b48c

	mov     r0, r4
	bl      Function_20237bc_FreeMsg

	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2047bb6


.align 2, 0
.thumb
Function_2047bb8: @ 2047bb8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0

	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r4, #0x8]
	mov     r7, r0

	add     r0, r1, #0x1
	str     r0, [r4, #0x8]

	mov     r0, r4
	ldrb    r6, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	sub     r5, #0x95
	mov     r4, r0

	lsl     r0, r5, #16
	lsr     r0, r0, #16
	mov     r1, #0x20
	bl      Function_209742c
	mov     r5, r0
	cmp     r4, #0x2
	bhs     branch_2047c0e
	mov     r0, #0x1
	b       branch_2047c10
@ 0x2047c0e

.thumb
branch_2047c0e: @ 2047c0e :thumb
	mov     r0, #0x0
.thumb
branch_2047c10: @ 2047c10 :thumb
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0x0]
	mov     r1, r6
	mov     r2, r5
	mov     r3, #0x0
	bl      Function_200b48c
	mov     r0, r5
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2047c2e


.align 2, 0
.thumb
ScriptCmd_SetNaturePokemon: @ 2047c30 :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0

	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]

	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0

	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200b6d8

	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047c66


.align 2, 0
.thumb
ScriptCmd_CheckAccessories: @ 2047c68 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200bfac
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047c9e


.align 2, 0


.thumb
ScriptCmd_SetvarShaymin: @ 2047ca0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r7, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, #0xb
	ldrb    r6, [r1, #0x0]
	mov     r1, r0
	bl      Function_2023790
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_a_3
	bl      Function_2027894
	mov     r1, r0
	mov     r0, r4
	bl      Function_2023d28
	ldr     r0, [pc, #0x20] @ 0x2047cfc, (=CountryOfOriginValue)
	mov     r3, #0x0
	ldrb    r0, [r0, #0x0]
	str     r3, [sp, #0x0]
	mov     r1, r6
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0x0]
	mov     r2, r4
	bl      Function_200b48c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2047cfa

.align 2
.word CountryOfOriginValue @ 0x2047cfc



.thumb
ScriptCmd_SetvarMoveDelete: @ 2047d00 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r6, [r0, #0x0]
	mov     r1, #0xf
	mov     r0, r6
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r4, #0x8]
	mov     r7, r0
	add     r0, r1, #0x1
	str     r0, [r4, #0x8]
	mov     r0, r4
	ldrb    r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	ldr     r0, [r6, #0xc]
	bl      LoadPokePartyAdress
	ldr     r1, [sp, #0x0]
	bl      GetAdrOfPkmnInParty
	add     r4, #0x36
	mov     r1, r4
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	ldr     r0, [r7, #0x0]
	mov     r1, r5
	bl      Function_200b630
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2047d66


.align 2, 0


.thumb
ScriptCmd_SetvarRibbon: @ 2047d68 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	mov     r1, #0x3
	bl      Function_20923c0
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200b668
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047daa


.align 2, 0


.thumb
ScriptCmd_SetvarSealRandom: @ 2047dac :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #16
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	lsr     r2, r2, #16
	bl      Function_200be64
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047de8

.thumb
Function_2047de8: @ 2047de8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200ba08
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047e1e



.align 2, 0
.thumb
ScriptCmd_33c: @ 2047e20 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200b744
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047e56


.align 2, 0


.thumb
ScriptCmd_33d: @ 2047e58 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200b77c
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047e8e


.align 2, 0


.thumb
ScriptCmd_33e: @ 2047e90 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200bcb8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047ec6


.align 2, 0


.thumb
ScriptCmd_33f: @ 2047ec8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200bb3c
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047efe


.align 2, 0


.thumb
ScriptCmd_340: @ 2047f00 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200bacc
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047f36


.align 2, 0


.thumb
ScriptCmd_341: @ 2047f38 :thumb
	push    {r3-r7,lr}
	mov     r5, r0

	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]

	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	ldr     r0, [r5, #0x8]
	mov     r1, r4

	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x8]

	ldr     r0, [r6, #0x0]
	mov     r2, r7
	bl      Function_200b594

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2047f7e


.align 2, 0
.thumb
ScriptCmd_342: @ 2047f80 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldrb    r4, [r1, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b08c
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200b594
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047fb4

.thumb
ScriptCmd_343: @ 2047fb4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200bfe4
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2047fea


.align 2, 0
.thumb
ScriptCmd_344: @ 2047fec :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	bl      Function_200b998
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2048022


.align 2, 0


.thumb
ScriptCmd_345: @ 2048024 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r5, #0x8]
	mov     r6, r0
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	mov     r0, r5
	ldrb    r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #16
	ldr     r0, [r6, #0x0]
	mov     r1, r4
	lsr     r2, r2, #16
	bl      Function_200be98
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2048060

.thumb
ScriptCmd_346: @ 2048060 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r2, [r4, #0x8]
	add     r1, r2, #0x1
	str     r1, [r4, #0x8]
	ldrb    r1, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_200c324
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2048080

.thumb
ScriptCmd_DisplayFloor: @ 2048080 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r1, [r4, #0x8]
	add     r3, r1, #0x1
	str     r3, [r4, #0x8]
	ldrb    r1, [r1, #0x0]
	add     r2, r3, #0x1
	str     r2, [r4, #0x8]
	ldrb    r2, [r3, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_200c338
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x20480a6


thumb_func_start ScriptCmd_CheckLottoNumber
ScriptCmd_CheckLottoNumber: @ 20480a8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      Function_206b2a4
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
thumb_func_end ScriptCmd_CheckLottoNumber


.align 2, 0
.thumb
ScriptCmd_CompareLottoNumber: @ 20480d8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r4, r0
	add     r0, #0x80
	ldr     r7, [r0, #0x0]
	ldr     r0, [r7, #0xc]
	bl      LoadVariableAreaAdress_25
	str     r0, [sp, #0x20]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0xc]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]
	ldr     r0, [r7, #0xc]
	bl      LoadPokePartyAdress
	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	ldr     r0, [pc, #0x108] @ 0x2048250, (=0x0)
	str     r0, [sp, #0x1c]
	str     r0, [sp, #0x18]
	ldr     r5, [sp, #0x1c]
	beq     branch_204819a
.thumb
branch_2048150: @ 2048150 :thumb
	ldr     r0, [r7, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x4c
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2048190
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	lsl     r1, r1, #16
	ldr     r0, [sp, #0x0]
	lsr     r1, r1, #16
	bl      Function_2048268
	cmp     r0, #0x0
	beq     branch_2048190
	ldr     r1, [sp, #0x1c]
	cmp     r1, r0
	bge     branch_2048190
	str     r0, [sp, #0x1c]
	str     r5, [sp, #0x18]
.thumb
branch_2048190: @ 2048190 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, r6
	blo     branch_2048150
.thumb
branch_204819a: @ 204819a :thumb
	mov     r6, #0x0
	str     r6, [sp, #0x14]
	str     r6, [sp, #0x10]
	mov     r7, r6
.thumb
branch_20481a2: @ 20481a2 :thumb
	mov     r5, #0x0
.thumb
branch_20481a4: @ 20481a4 :thumb
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x10]
	mov     r2, r5
	bl      Function_2079c9c
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	mov     r4, r0
	bl      GetBoxPkmnData
	cmp     r0, #0x0
	beq     branch_20481f4
	mov     r0, r4
	mov     r1, #PKMNDATA_ISEGG
	mov     r2, #0x0
	bl      GetBoxPkmnData
	cmp     r0, #0x0
	bne     branch_20481f4
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x0
	bl      GetBoxPkmnData
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	lsl     r1, r1, #16
	ldr     r0, [sp, #0x0]
	lsr     r1, r1, #16
	bl      Function_2048268
	cmp     r0, #0x0
	beq     branch_20481f4
	cmp     r6, r0
	bge     branch_20481f4
	mov     r6, r0
	add     r0, r5, r7
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x14]
branch_20481f4: @ 20481f4 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x1e
	blo     branch_20481a4
	ldr     r0, [sp, #0x10]
	add     r7, #0x1e
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x12
	blo     branch_20481a2
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	bne     branch_2048220
	cmp     r6, #0x0
	bne     branch_2048220
	ldr     r0, [sp, #0xc]
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x8]
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	strh    r1, [r0, #0x0]
	b       branch_204824a
@ 0x2048220

.thumb
branch_2048220: @ 2048220 :thumb
	ldr     r0, [sp, #0x1c]
	cmp     r0, r6
	blo     branch_204823a
	ldr     r1, [sp, #0x18]
	ldr     r0, [sp, #0xc]
	strh    r1, [r0, #0x0]
	ldr     r1, [sp, #0x1c]
	ldr     r0, [sp, #0x8]
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	b       branch_204824a
@ 0x204823a

.thumb
branch_204823a: @ 204823a :thumb
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0xc]
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r1, #0x1
	strh    r6, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	strh    r1, [r0, #0x0]
.thumb
branch_204824a: @ 204824a :thumb
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2048250

.word 0x0 @ 0x2048250
.thumb
Function_2048254: @ 2048254 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b2c8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2048268

.thumb
Function_2048268: @ 2048268 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, #0x0
	mov     r5, r0
	mov     r4, r1
	mov     r7, r6
.thumb
branch_2048274: @ 2048274 :thumb
	mov     r0, r5
	mov     r1, #0xa
	blx     _s32_div_f
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0xa
	blx     _s32_div_f
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	bne     branch_20482c0
	mov     r0, r5
	mov     r1, #0xa
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	mov     r0, r4
	mov     r1, #0xa
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	add     r0, r6, #0x1
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	add     r0, r7, #0x1
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	cmp     r7, #0x5
	blo     branch_2048274
.thumb
branch_20482c0: @ 20482c0 :thumb
	ldr     r1, [pc, #0xc] @ 0x20482d0, (=RAM_21c07f0)
	ldr     r0, [sp, #0x8]
	strh    r0, [r1, #0x2]
	ldr     r0, [sp, #0x4]
	strh    r0, [r1, #0x0]
	mov     r0, r6
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x20482d0

.word RAM_21c07f0 @ 0x20482d0
.thumb
Function_20482d4: @ 20482d4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      Function_2005690
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20482fc

.thumb
ScriptCmd_PlaySound: @ 20482fc :thumb
	push    {r3,lr}
	bl      ScriptHandler_LoadHWord
	bl      Function_200549c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204830a


.align 2, 0


.thumb
ScriptCmd_Stop: @ 204830c :thumb
	push    {r3,lr}
	bl      ScriptHandler_LoadHWord
	bl      Function_20041fc
	mov     r1, #0x0
	bl      Function_20055d0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2048320

.thumb
ScriptCmd_Restart: @ 2048320 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r1, [r0, #0x1c]
	ldr     r1, [r1, #0x0]
	bl      Function_20554a4
	bl      Function_200549c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2048336


.align 2, 0


.thumb
Function_2048338: @ 2048338 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_20553f0
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204834e


.align 2, 0


.thumb
ScriptCmd_SwitchMusic: @ 2048350 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	bl      Function_200564c
	ldr     r1, [pc, #0x8] @ 0x2048374, (=Function_2048378+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2048374

.word Function_2048378+1 @ 0x2048374



.thumb
Function_2048378: @ 2048378 :thumb
	push    {r3,lr}
	bl      Function_2005684
	cmp     r0, #0x0
	bne     branch_2048386
	mov     r0, #0x1
	pop     {r3,pc}

branch_2048386: @ 2048386 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204838a


.align 2, 0
.thumb
ScriptCmd_StoreSayingLearned: @ 204838c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, #0x7f
	mov     r2, #0x0
	bl      Function_200560c
	ldr     r1, [pc, #0xc] @ 0x20483ac, (=Function_2048378+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20483aa

.align 2
.word Function_2048378+1 @ 0x20483ac



.thumb
Function_20483b0: @ 20483b0 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x8]
	add     r3, r1, #0x1
	str     r3, [r0, #0x8]
	ldrb    r2, [r1, #0x0]
	add     r1, r3, #0x1
	str     r1, [r0, #0x8]
	ldrb    r1, [r3, #0x0]
	mov     r0, r2
	bl      Function_20049f4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20483ca


.align 2, 0


.thumb
ScriptCmd_PlaySound2: @ 20483cc :thumb
	push    {r3,lr}
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, #0x4
	bl      Function_2005588
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20483de


.align 2, 0


.thumb
Function_20483e0: @ 20483e0 :thumb
	push    {r3,lr}
	ldr     r2, [r0, #0x8]
	add     r1, r2, #0x1
	str     r1, [r0, #0x8]
	ldrb    r0, [r2, #0x0]
	bl      Function_20041cc
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20483f2


.align 2, 0


.thumb
ScriptCmd_Fanfare: @ 20483f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	bl      Function_2005748
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204840e


.align 2, 0


.thumb
ScriptCmd_Fanfare2: @ 2048410 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, #0x0
	bl      Function_20057a4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204842c

.thumb
ScriptCmd_WaitFanfare: @ 204842c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [r4, #0x64]
	ldr     r1, [pc, #0xc] @ 0x2048450, (=Function_2048454+1)
	mov     r0, r4
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x204844e

.align 2
.word Function_2048454+1 @ 0x2048450



.thumb
Function_2048454: @ 2048454 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x64]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_20057d4
	cmp     r0, #0x0
	bne     branch_2048468
	mov     r0, #0x1
	pop     {r3,pc}

branch_2048468: @ 2048468 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204846c


.thumb
ScriptCmd_Cryfr: @ 204846c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2005844
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204849e


.align 2, 0
.thumb
ScriptCmd_WaitCry: @ 20484a0 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x8] @ 0x20484ac, (=Function_20484b0+1)
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20484ac

.word Function_20484b0+1 @ 0x20484ac



.thumb
Function_20484b0: @ 20484b0 :thumb
	push    {r3,lr}
	bl      Function_200598c
	cmp     r0, #0x0
	bne     branch_20484be
	mov     r0, #0x1
	pop     {r3,pc}

branch_20484be: @ 20484be :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20484c2


.align 2, 0
.thumb
ScriptCmd_Soundfr: @ 20484c4 :thumb
	push    {r3,lr}
	bl      ScriptHandler_LoadHWord
	bl      Function_2006150
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20484d2


.align 2, 0
.thumb
ScriptCmd_FadeDefaultMusic: @ 20484d4 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x8] @ 0x20484e0, (=Function_20484e4+1)
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20484e0

.word Function_20484e4+1 @ 0x20484e0



.thumb
Function_20484e4: @ 20484e4 :thumb
	push    {r3,lr}
	bl      Function_20061e4
	cmp     r0, #0x0
	bne     branch_20484f2
	mov     r0, #0x1
	pop     {r3,pc}

branch_20484f2: @ 20484f2 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20484f6


.align 2, 0
.thumb
ScriptCmd_CheckSayingLearned: @ 20484f8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_16
	bl      Function_2006260
	cmp     r0, #0x1
	bne     branch_2048528
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2048528

.thumb
branch_2048528: @ 2048528 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x204852e


.align 2, 0


.thumb
ScriptCmd_SwitchMusic2: @ 2048530 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	bl      Function_200637c
	cmp     r0, #0x0
	bne     branch_2048554
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2048554

.thumb
branch_2048554: @ 2048554 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x204855a


.align 2, 0


.thumb
ScriptCmd_ActMicrophone: @ 204855c :thumb
	push    {r3,lr}
	bl      Function_20063b8
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2048566


.align 2, 0


.thumb
ScriptCmd_DeactMicrophone: @ 2048568 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_16
	bl      Function_20063c0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x204857c

.thumb
Function_204857c: @ 204857c :thumb
	push    {r3,lr}
	mov     r1, #0x0
	mov     r0, #0x3f
	mov     r2, r1
	bl      Function_2004550
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x204858c

.thumb
Function_204858c: @ 204858c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r5
	bl      Function_2004ad4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20485be


.align 2, 0
.thumb
Function_20485c0: @ 20485c0 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0xc] @ 0x20485d0, (=0x4c2)
	mov     r0, #0x16
	mov     r2, #0x1
	bl      Function_2004550
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20485d0

.word 0x4c2 @ 0x20485d0



.thumb
Function_20485d4: @ 20485d4 :thumb
	push    {r4,lr}
	mov     r4, r0

	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0

	mov     r0, #0x4
	mov     r2, #0x1
	bl      Function_2004550

	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20485f4


.thumb
Function_20485f4: @ 20485f4 :thumb
	push    {r4,lr}
	mov     r4, r0

	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	bl      Function_20041fc
	strh    r0, [r4, #0x0]

	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2048612


.align 2, 0
.thumb
ScriptCmd_BattleId: @ 2048614 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	bne     branch_2048674
	mov     r0, r4
	mov     r1, #0x18
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x18]
	mov     r0, r4
	mov     r1, #0x19
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x1a
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r0, r4
	mov     r1, #0x1b
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r0, r4
	mov     r1, #0x1c
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x14]
	mov     r0, r4
	mov     r1, #0x1d
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x1e
	bl      ScriptHandler_GetSomeScriptAddresses
	b       branch_20486b4
@ 0x2048674

.thumb
branch_2048674: @ 2048674 :thumb
	mov     r0, r4
	mov     r1, #0x1f
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x18]
	mov     r0, r4
	mov     r1, #0x20
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x21
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r0, r4
	mov     r1, #0x22
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r0, r4
	mov     r1, #0x23
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x14]
	mov     r0, r4
	mov     r1, #0x24
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r4
	mov     r1, #0x25
	bl      ScriptHandler_GetSomeScriptAddresses
.thumb
branch_20486b4: @ 20486b4 :thumb
	mov     r7, r0
	ldr     r0, [sp, #0x18]
	ldr     r3, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x14]
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x8]
	str     r5, [sp, #0xc]
	ldr     r1, [r6, #0x0]
	ldr     r2, [r4, #0x3c]
	ldr     r3, [r3, #0x0]
	mov     r0, r4
	bl      Function_2067fb8
	str     r0, [r7, #0x0]
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x20486de


.align 2, 0


.thumb
ScriptCmd_SetvarBattle: @ 20486e0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	cmp     r6, #0x0
	bne     branch_204871e
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1e
	bl      ScriptHandler_GetSomeScriptAddresses
	b       branch_2048728
@ 0x204871e

.thumb
branch_204871e: @ 204871e :thumb
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	mov     r1, #0x25
	bl      ScriptHandler_GetSomeScriptAddresses
.thumb
branch_2048728: @ 2048728 :thumb
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_2048736
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2048736

.thumb
branch_2048736: @ 2048736 :thumb
	bl      Function_2067fd4
	cmp     r0, #0x1
	bne     branch_204874c
	ldr     r0, [r5, #0x0]
	bl      Function_2067fe8
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
.thumb
branch_204874c: @ 204874c :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2048750

.thumb
ScriptCmd_CheckBattleType: @ 2048750 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1c
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	ldrh    r1, [r5, #0x0]
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2048778

.thumb
ScriptCmd_SetvarBattle2: @ 2048778 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1b
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x22
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	cmp     r7, #0x0
	bne     branch_20487c2
	ldrh    r1, [r4, #0x0]
	b       branch_20487c4
@ 0x20487c2

.thumb
branch_20487c2: @ 20487c2 :thumb
	ldrh    r1, [r6, #0x0]
.thumb
branch_20487c4: @ 20487c4 :thumb
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20487ca


.align 2, 0
.thumb
ScriptCmd_StartBattleAnalysis: @ 20487cc :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	mov     r1, #0x8
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r5]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	bl      NormalizeSpriteScriptNr
	strh    r0, [r5]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20487fa


.align 2, 0
.thumb
ScriptCmd_TrainerBattle: @ 20487fc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	add     r0, #ScriptHandler_OverWorldData
	ldr     r4, [r0]

	mov     r1, #0x8
	mov     r0, r4
	bl      ScriptHandler_GetSomeScriptAddresses

	mov     r0, r4
	mov     r1, #0x17
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r7, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0xc]

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x8]

	mov     r0, r5
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	mov     r6, #0x0
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206a984
	cmp     r0, #0x1
	bne     branch_2048862

	ldr     r0, [r4, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b034
	mov     r6, r0
branch_2048862: @ 2048862 :thumb
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]

	ldr     r0, [r5, #ScriptHandler_74]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x8]
	mov     r3, r6
	bl      TrainerBattle

	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x204887a


.align 2, 0
.thumb
ScriptCmd_DoubleBattle: @ 204887c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x17
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r2, r0
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	ldr     r0, [r5, #0x74]
	mov     r1, r7
	mov     r3, r6
	bl      TrainerBattle
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20488e0


.thumb
ScriptCmd_TrainerBattleStored: @ 20488e0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x8
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	bl      NormalizeSpriteScriptNr
	bl      Function_203f28c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bne     branch_2048942
	mov     r0, #0x0
	mov     r1, #0x2
	mov     r2, r0
	b       branch_204895c
@ 0x2048942

.thumb
branch_2048942: @ 2048942 :thumb
	ldrh    r0, [r4, #0x0]
	bl      Function_203f278
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bne     branch_2048956
	mov     r0, #0x3
	mov     r1, #0x5
	mov     r2, #0x6
	b       branch_204895c
@ 0x2048956

.thumb
branch_2048956: @ 2048956 :thumb
	mov     r0, #0x7
	mov     r1, #0x9
	mov     r2, #0xa
.thumb
branch_204895c: @ 204895c :thumb
	strh    r0, [r7, #0x0]
	strh    r1, [r6, #0x0]
	strh    r2, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2048966


.align 2, 0
.thumb
ScriptCmd_TrainerBattleStored2: @ 2048968 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x8
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	bl      NormalizeSpriteScriptNr
	bl      Function_203f28c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bne     branch_20489ca
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	b       branch_20489e4
@ 0x20489ca

.thumb
branch_20489ca: @ 20489ca :thumb
	ldrh    r0, [r4, #0x0]
	bl      Function_203f278
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bne     branch_20489de
	mov     r0, #0x12
	mov     r1, #0x0
	mov     r2, #0x6
	b       branch_20489e4
@ 0x20489de

.thumb
branch_20489de: @ 20489de :thumb
	mov     r0, #0x13
	mov     r1, #0x0
	mov     r2, #0xa
.thumb
branch_20489e4: @ 20489e4 :thumb
	strh    r0, [r7, #0x0]
	strh    r1, [r6, #0x0]
	strh    r2, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20489ee


.align 2, 0
.thumb
ScriptCmd_CheckTrainerStatus: @ 20489f0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x8
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	bl      NormalizeSpriteScriptNr
	bl      Function_203f28c
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2048a22


.align 2, 0
.thumb
ScriptCmd_ActLeagueBattlers: @ 2048a24 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	bl      Function_205560c
	bl      Function_2004950
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2048a42


.align 2, 0
.thumb
ScriptCmd_LostGoPokecenter: @ 2048a44 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x74]
	bl      Function_2052c5c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2048a50


.thumb
ScriptCmd_CheckTrainerLost: @ 2048a50 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x17
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord

	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0

	ldr     r0, [r4, #0x0]
	bl      Function_2052868
	strh    r0, [r5, #0x0]

	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2048a7e


.align 2, 0
.thumb
ScriptCmd_CheckTrainerStatus2: @ 2048a80 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x17
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2052878
	strh    r0, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2048aae


.align 2, 0
.thumb
ScriptCmd_CheckWildBattle2: @ 2048ab0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x17
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2052888
	strh    r0, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2048ade


.align 2, 0
.thumb
ScriptCmd_StorePokePartyDefeated: @ 2048ae0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	bl      Function_2054ab0
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2048b0a


.align 2, 0
.thumb
Function_2048b0c: @ 2048b0c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x17
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, #0xb
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	ldr     r0, [r4, #0x74]
	mov     r1, #0x1
	mov     r3, r2
	bl      TrainerBattle
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2048b34


.thumb
Function_2048b34: @ 2048b34 :thumb
	push    {r3-r5,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      GetSpriteSpriteListFirstSprite
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	bl      GetSpriteID
	mov     r1, r0
	lsl     r1, r1, #16
	mov     r0, r4
	lsr     r1, r1, #16
	bl      SetFlag550
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2048b60


.thumb
Function_2048b60: @ 2048b60 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r5, r0
	mov     r0, r6
	bl      ScriptHandler_LoadWord
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	bl      GetSpriteSpriteListFirstSprite
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	bl      GetSpriteID
	mov     r1, r0
	lsl     r1, r1, #16
	mov     r0, r7
	lsr     r1, r1, #16
	bl      CheckFlag550
	cmp     r0, #0x1
	bne     branch_2048ba4
	ldr     r1, [r6, #0x8]
	mov     r0, r6
	add     r1, r1, r4
	bl      SetScriptHandlerPointer
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_2048ba4: @ 2048ba4 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2048ba8


.thumb
Function_2048ba8: @ 2048ba8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x17
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	ldr     r1, [r5, #0x0]
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2048bd0


/* Input:
r0: Ptr to ScriptHandler-Struct
*/
.thumb
ScriptCmd_21d: @ 2048bd0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0

	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0

	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	ldr     r0, [r0, #OverWorldData_VariableAreaAdress]
	bl      LoadVariableAreaAdress_11
	mov     r5, r0

	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	ldr     r7, [r0, #OverWorldData_VariableAreaAdress]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	cmp     r0, #0x6
	bls     branch_2048c04
	b       branch_2048dd0

branch_2048c04: @ 2048c04 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2048c10

Jumppoints_2048c10:
.hword branch_2048c1e - Jumppoints_2048c10 - 2
.hword branch_2048c54 - Jumppoints_2048c10 - 2
.hword branch_2048c8a - Jumppoints_2048c10 - 2
.hword branch_2048cc0 - Jumppoints_2048c10 - 2
.hword branch_2048cf6 - Jumppoints_2048c10 - 2
.hword branch_2048d2c - Jumppoints_2048c10 - 2
.hword branch_2048d66 - Jumppoints_2048c10 - 2

.thumb
branch_2048c1e: @ 2048c1e :thumb
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0          @ VarArea11_FieldNr

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r4]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	mov     r0, r5
	mov     r1, r6          @ VarArea11_FieldNr
	bl      Function_202b4ac
	strh    r0, [r4, #0x0]

	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}

branch_2048c54: @ 2048c54 :thumb
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0              @ VarArea11_FieldNr

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r4]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	mov     r0, r5
	mov     r1, r6              @ VarArea11_FieldNr
	bl      Function_202b4c4
	strh    r0, [r4, #0x0]

	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}

branch_2048c8a: @ 2048c8a :thumb
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r4]
	bl      ScriptHandler_CheckSaveParameter
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x0]
	mov     r1, r7
	mov     r2, r5
	bl      Function_200c054
	b       branch_2048dd0

branch_2048cc0: @ 2048cc0 :thumb
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r4]
	bl      ScriptHandler_CheckSaveParameter
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x0]
	mov     r1, r7
	mov     r2, r5
	bl      Function_200c054
	b       branch_2048dd0

branch_2048cf6: @ 2048cf6 :thumb
	mov     r1, #VarArea11_Field0
	mov     r0, r5
	mov     r2, r1
	bl      Function_202b42c
	mov     r5, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	str     r5, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #ScriptHandler_74]
	mov     r1, #0x5
	mov     r3, #0x7
	bl      Function_203dfe8

	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}

branch_2048d2c: @ 2048d2c :thumb
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0

	mov     r0, r5
	mov     r1, #VarArea11_Field1
	bl      Function_202b4ac
	mov     r6, r0

	mov     r0, r5
	mov     r1, r7
	mov     r2, #VarArea11_Field1
	bl      VarArea11_CopyStruct

	cmp     r6, #0x0
	beq     branch_2048d60
	add     r4, #ScriptHandler_OverWorldData
	ldr     r0, [r4]
	bl      Function_206d430
branch_2048d60: @ 2048d60 :thumb

	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}

branch_2048d66: @ 2048d66 :thumb
	mov     r0, #0x40
	mov     r1, #0x20
	bl      Function_2023790
	mov     r6, r0

	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	ldr     r0, [r0, #OverWorldData_VariableAreaAdress]
	bl      LoadTrainerDataAdress
	mov     r1, r6
	mov     r7, r0
	bl      Function_2025ef4

	mov     r0, r5
	mov     r1, #VarArea11_Field0
	mov     r2, #0x1
	mov     r3, r6
	bl      Function_202b444

	mov     r0, r7
	bl      GetGender
	mov     r2, r0
	mov     r0, r5
	mov     r1, #VarArea11_Field0
	bl      VarArea11_Set20

	mov     r0, r5
	mov     r1, #VarArea11_Field0
	mov     r2, #0x2
	bl      VarArea11_Set21
	bl      Function_201d35c
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      VarArea11_OneAdvanceRNG

	mov     r0, r6
	bl      Function_20237bc_FreeMsg

	mov     r0, r5
	mov     r1, #VarArea11_Field0
	mov     r2, #VarArea11_Field1
	bl      VarArea11_CopyStruct

	add     r4, #ScriptHandler_OverWorldData
	ldr     r0, [r4]
	bl      Function_206d424
branch_2048dd0: @ 2048dd0 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2048dd6


.align 2, 0
.thumb
ScriptCmd_CheckFurniture: @ 2048dd8 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	cmp     r0, #0x6
	bls     branch_2048de6
	b       branch_2048f68

branch_2048de6: @ 2048de6 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2048df2

Jumppoints_2048df2:
.hword branch_2048e00 - Jumppoints_2048df2 - 2
.hword branch_2048e20 - Jumppoints_2048df2 - 2
.hword branch_2048ebc - Jumppoints_2048df2 - 2
.hword branch_2048e62 - Jumppoints_2048df2 - 2
.hword branch_2048ec6 - Jumppoints_2048df2 - 2
.hword branch_2048efe - Jumppoints_2048df2 - 2
.hword branch_2048f4a - Jumppoints_2048df2 - 2

.thumb
branch_2048e00: @ 2048e00 :thumb
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_6_224660c
	strh    r0, [r5, #0x0]
	b       branch_2048f68

branch_2048e20: @ 2048e20 :thumb
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	ldr     r0, [pc, #0x118] @ 0x2048f6c, (=0x26e)
	add     r4, #0x80
	strh    r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r1, r7
	bl      Function_6_2246978
	strh    r0, [r6, #0x0]
	b       branch_2048f68

branch_2048e62: @ 2048e62 :thumb
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	ldr     r1, [r5, #0x0]
	mov     r2, r6
	mov     r3, r7
	bl      Function_6_22469e0
	b       branch_2048f68

branch_2048ebc: @ 2048ebc :thumb
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	bl      Function_6_22465fc
	b       branch_2048f68

branch_2048ec6: @ 2048ec6 :thumb
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	ldr     r0, [pc, #0x80] @ 0x2048f70, (=0x26f)
	add     r4, #0x80
	strh    r0, [r5, #0x0]
	ldr     r0, [r4, #0x0]
	bl      Function_6_2246b40
	strh    r0, [r6, #0x0]
	b       branch_2048f68

branch_2048efe: @ 2048efe :thumb
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_6_22468b0
	strh    r0, [r5, #0x0]
	b       branch_2048f68

branch_2048f4a: @ 2048f4a :thumb
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_6_2246920
	strh    r0, [r5, #0x0]
branch_2048f68: @ 2048f68 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2048f6c

.word 0x26e @ 0x2048f6c
.word 0x26f @ 0x2048f70



.thumb
Function_2048f74: @ 2048f74 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_206d4ac
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2048f96


.align 2, 0


.thumb
ScriptCmd_StorePokeNickname: @ 2048f98 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r4
	bl      GetAdrOfPkmnInParty
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      Function_206d60c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2048fd0


.thumb
Function_2048fd0: @ 2048fd0 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_206d7c4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2048fde


.align 2, 0
.thumb
Function_2048fe0: @ 2048fe0 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_206db20
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2048fee


.align 2, 0
.thumb
Function_2048ff0: @ 2048ff0 :thumb
	push    {r4,lr}
	mov     r4, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0

	add     r4, #0x80
	lsl     r1, r1, #24
	ldr     r0, [r4, #0x0]
	lsr     r1, r1, #24
	bl      Function_206db5c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2049016


.align 2, 0
.thumb
ScriptCmd_CheckPhraseBoxInput: @ 2049018 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	cmp     r0, #0x0
	beq     branch_2049038
	cmp     r0, #0x1
	beq     branch_2049088
	b       branch_20490e6
@ 0x2049038

.thumb
branch_2049038: @ 2049038 :thumb
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0
	ldr     r0, [pc, #0x74] @ 0x20490ec, (=0x26d)
	add     r5, #0x80
	strh    r0, [r6, #0x0]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r5, #0x0]
	ldr     r2, [r4, #0x0]
	bl      Function_20491d0
	strh    r0, [r7, #0x0]
	b       branch_20490e6
@ 0x2049088

.thumb
branch_2049088: @ 2049088 :thumb
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_14
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r3, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_20491b8
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_202cfec
branch_20490e6: @ 20490e6 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20490ea

.align 2
.word 0x26d @ 0x20490ec



.thumb
ScriptCmd_CheckStatusPhraseBox: @ 20490f0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	bl      Function_20491f4
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204912a


.align 2, 0


.thumb
ScriptCmd_SetvarAmityPokemon: @ 204912c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_202440c
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	cmp     r0, #0x0
	beq     branch_2049150
	cmp     r0, #0x1
	beq     branch_2049182
	cmp     r0, #0x2
	beq     branch_204919c
	b       branch_20491b4
@ 0x2049150

.thumb
branch_2049150: @ 2049150 :thumb
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x4
	bl      Function_206cf48
	b       branch_20491b4
@ 0x2049182

.thumb
branch_2049182: @ 2049182 :thumb
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r4
	bl      Function_206cfb4
	b       branch_20491b4
@ 0x204919c

.thumb
branch_204919c: @ 204919c :thumb
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r4
	bl      Function_206cf9c
.thumb
branch_20491b4: @ 20491b4 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x20491b8

.thumb
Function_20491b8: @ 20491b8 :thumb
	push    {r3,lr}
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r3, r1, #4
	ldr     r1, [pc, #0xc] @ 0x20491cc, (=Unknown_20ebb48)
	ldr     r3, [r1, r3]
	cmp     r3, #0x0
	beq     branch_20491ca
	mov     r1, r2
	blx     r3
branch_20491ca: @ 20491ca :thumb
	pop     {r3,pc}
@ 0x20491cc

.word Unknown_20ebb48 @ 0x20491cc



.thumb
Function_20491d0: @ 20491d0 :thumb
	push    {r4,lr}
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r4, r0, #4
	ldr     r0, [pc, #0x14] @ 0x20491ec, (=Unknown_20ebb4c)
	ldr     r3, [r0, r4]
	cmp     r3, #0x0
	beq     branch_20491e4
	mov     r0, r1
	mov     r1, r2
	blx     r3
branch_20491e4: @ 20491e4 :thumb
	ldr     r0, [pc, #0x8] @ 0x20491f0, (=Unknown_20ebb54)
	ldr     r0, [r0, r4]
	pop     {r4,pc}
@ 0x20491ea

.align 2
.word Unknown_20ebb4c @ 0x20491ec
.word Unknown_20ebb54 @ 0x20491f0



.thumb
Function_20491f4: @ 20491f4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	mov     r5, r1
	bl      Function_202440c
	mov     r1, #0x1
	mov     r2, r5
	bl      Function_202e6b0
	cmp     r0, #0x0
	bne     branch_2049210
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_2049210: @ 2049210 :thumb
	sub     r0, r5, #0x1
	lsl     r1, r0, #4
	ldr     r0, [pc, #0x10] @ 0x2049228, (=Unknown_20ebb50)
	ldr     r1, [r0, r1]
	cmp     r1, #0x0
	bne     branch_2049220
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_2049220: @ 2049220 :thumb
	mov     r0, r4
	blx     r1
	pop     {r3-r5,pc}
@ 0x2049226

.align 2
.word Unknown_20ebb50 @ 0x2049228



.thumb
Function_204922c: @ 204922c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	mov     r0, #0x40
	mov     r1, #0x4
	str     r3, [sp, #0x8]
	bl      Function_2023790
	mov     r1, r7
	mov     r4, r0
	bl      Function_2023d28
	ldr     r0, [sp, #0x24]
	ldr     r3, [sp, #0x8]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x20]
	mov     r1, r6
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r4
	bl      Function_200b48c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2049266


.align 2, 0
.thumb
Function_2049268: @ 2049268 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0xc]
	mov     r4, r1
	bl      LoadPokePartyAdress
	bl      Function_2054a74
	bl      Function_2076b10_Dummy
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_200b538
	pop     {r4,pc}
@ 0x2049286


.align 2, 0
.thumb
Function_2049288: @ 2049288 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0x4]
	mov     r4, r1
	ldr     r0, [r0, #0x14]
	bl      0x2253dd8
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_200b928
	pop     {r4,pc}
@ 0x20492a0


.thumb
Function_20492a0: @ 20492a0 :thumb
	push    {r4,lr}
	add     sp, #-0x20
	ldr     r0, [r0, #0xc]
	mov     r4, r1
	bl      Function_202440c
	bl      Function_202e7e4
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x4
	add     r2, sp, #0x8
	bl      Function_200b274
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r2, sp, #0x8
	mov     r3, r1
	bl      Function_204922c
	add     sp, #0x20
	pop     {r4,pc}
@ 0x20492d2


.align 2, 0
.thumb
Function_20492d4: @ 20492d4 :thumb
	push    {r4,lr}
	add     sp, #-0x20
	ldr     r0, [r0, #0xc]
	mov     r4, r1
	bl      Function_202440c
	bl      Function_202e810
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x4
	add     r2, sp, #0x8
	bl      Function_200b274
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r2, sp, #0x8
	mov     r3, r1
	bl      Function_204922c
	add     sp, #0x20
	pop     {r4,pc}
@ 0x2049306


.align 2, 0
.thumb
Function_2049308: @ 2049308 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	ldr     r0, [r0, #0xc]
	mov     r6, r1
	bl      Function_202440c
	bl      Function_202e81c
	mov     r5, r0
	mov     r0, #0x40
	mov     r1, #0x4
	bl      Function_2023790
	add     r1, r5, #0x6
	mov     r4, r0
	bl      Function_2023d28
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldrb    r3, [r5, #0x2]
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_200b48c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2049348


.thumb
Function_2049348: @ 2049348 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      Function_202440c
	bl      Function_202e7fc
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x2049358


.thumb
Function_2049358: @ 2049358 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_5
	bl      Function_20567e0
	pop     {r3,pc}
@ 0x2049366


.align 2, 0
.thumb
Function_2049368: @ 2049368 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      Function_202440c
	bl      Function_202e7d8
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x2049378


.thumb
Function_2049378: @ 2049378 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_e
	mov     r1, #0x0
	bl      Function_2029d10
	pop     {r3,pc}
@ 0x2049388


.thumb
Function_2049388: @ 2049388 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      Function_202440c
	bl      Function_202e7f0
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x2049398


.thumb
Function_2049398: @ 2049398 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      Function_202440c
	bl      Function_202e7e4
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x20493a8


.thumb
Function_20493a8: @ 20493a8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      Function_202440c
	bl      Function_202e810
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x20493b8


.thumb
Function_20493b8: @ 20493b8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      Function_202440c
	bl      Function_202e81c
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x20493c8


.thumb
Function_20493c8: @ 20493c8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_202440c
	bl      Function_202e808
	ldrb    r0, [r0, #0x7]
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20493f4


.thumb
Function_20493f4: @ 20493f4 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_202440c
	bl      Function_202e81c
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x6
	bhi     branch_20494c4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2049466

Jumppoints_2049466:
.hword branch_20494c4 - Jumppoints_2049466 - 2
.hword branch_20494c4 - Jumppoints_2049466 - 2
.hword branch_20494b0 - Jumppoints_2049466 - 2
.hword branch_20494b0 - Jumppoints_2049466 - 2
.hword branch_2049488 - Jumppoints_2049466 - 2
.hword branch_2049474 - Jumppoints_2049466 - 2
.hword branch_204949c - Jumppoints_2049466 - 2

.thumb
branch_2049474: @ 2049474 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x19
	strh    r1, [r0, #0x0]
	mov     r0, #0x24
	strh    r0, [r7, #0x0]
	mov     r0, #0x0
	strh    r0, [r6, #0x0]
	mov     r0, #0xe
	strh    r0, [r5, #0x0]
	b       branch_20494d6
@ 0x2049488

.thumb
branch_2049488: @ 2049488 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x25
	strh    r1, [r0, #0x0]
	mov     r0, #0x3d
	strh    r0, [r7, #0x0]
	mov     r0, #0x1
	strh    r0, [r6, #0x0]
	mov     r0, #0xf
	strh    r0, [r5, #0x0]
	b       branch_20494d6
@ 0x204949c

.thumb
branch_204949c: @ 204949c :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x3b
	strh    r1, [r0, #0x0]
	mov     r0, #0x3d
	strh    r0, [r7, #0x0]
	mov     r0, #0x1
	strh    r0, [r6, #0x0]
	mov     r0, #0xf
	strh    r0, [r5, #0x0]
	b       branch_20494d6
@ 0x20494b0

.thumb
branch_20494b0: @ 20494b0 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x48
	strh    r1, [r0, #0x0]
	mov     r0, #0x24
	strh    r0, [r7, #0x0]
	mov     r0, #0x0
	strh    r0, [r6, #0x0]
	mov     r0, #0xe
	strh    r0, [r5, #0x0]
	b       branch_20494d6
@ 0x20494c4

.thumb
branch_20494c4: @ 20494c4 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x2f
	strh    r1, [r0, #0x0]
	mov     r0, #0x15
	strh    r0, [r7, #0x0]
	mov     r0, #0x0
	strh    r0, [r6, #0x0]
	mov     r0, #0xe
	strh    r0, [r5, #0x0]
.thumb
branch_20494d6: @ 20494d6 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x20494da


.align 2, 0
.thumb
ScriptCmd_StoreBTowerData: @ 20494dc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r6, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      GetOverWorldData_VariableAreaAdresses
	mov     r1, r4
	mov     r2, r6
	bl      Function_204a124
	add     r5, #0x80
	ldr     r1, [r5, #0x0]
	add     r1, #0xac
	str     r0, [r1, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204950c

.thumb
ScriptCmd_ActivateBTower: @ 204950c :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	add     r0, #0xac
	bl      Function_204a110
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204951c

.thumb
ScriptCmd_CloseBTower: @ 204951c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      Function_204a32c
	add     r4, #0x80
	ldr     r1, [r4, #0x0]
	mov     r0, #0x0
	add     r1, #0xac
	str     r0, [r1, #0x0]
	pop     {r4,pc}
@ 0x2049538


.thumb
ScriptCmd_CallBTowerFunctions: @ 2049538 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	bl      ScriptHandler_LoadHWord
	str     r0, [sp, #0x0]
	mov     r0, r7
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r7
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r7
	bl      ScriptHandler_LoadHWord
	str     r0, [sp, #0x4]
	mov     r0, r7
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x4]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r7
	add     r0, #0x80
	ldr     r2, [r0, #0x0]
	mov     r0, r2
	add     r0, #0xac
	ldr     r5, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x3a
	bgt     branch_2049606
	cmp     r0, #0x0
	blt     branch_204960e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2049590

Jumppoints_2049590:
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_2049610 - Jumppoints_2049590 - 2
.hword branch_2049630 - Jumppoints_2049590 - 2
.hword branch_2049636 - Jumppoints_2049590 - 2
.hword branch_2049642 - Jumppoints_2049590 - 2
.hword branch_2049650 - Jumppoints_2049590 - 2
.hword branch_2049658 - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_2049660 - Jumppoints_2049590 - 2
.hword branch_204966c - Jumppoints_2049590 - 2
.hword branch_204967a - Jumppoints_2049590 - 2
.hword branch_2049688 - Jumppoints_2049590 - 2
.hword branch_2049694 - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_204969e - Jumppoints_2049590 - 2
.hword branch_20496a8 - Jumppoints_2049590 - 2
.hword branch_20496b2 - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_20496c4 - Jumppoints_2049590 - 2
.hword branch_20496dc - Jumppoints_2049590 - 2
.hword branch_20496f6 - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_2049702 - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_204970c - Jumppoints_2049590 - 2
.hword branch_2049716 - Jumppoints_2049590 - 2
.hword branch_2049724 - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_2049734 - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_2049740 - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_204974a - Jumppoints_2049590 - 2
.hword branch_20497ee - Jumppoints_2049590 - 2
.hword branch_2049754 - Jumppoints_2049590 - 2
.hword branch_204975e - Jumppoints_2049590 - 2
.hword branch_204976a - Jumppoints_2049590 - 2
.hword branch_2049776 - Jumppoints_2049590 - 2
.hword branch_204978a - Jumppoints_2049590 - 2
.hword branch_2049794 - Jumppoints_2049590 - 2
.hword branch_204979e - Jumppoints_2049590 - 2
.hword branch_20497a8 - Jumppoints_2049590 - 2
.hword branch_20497b6 - Jumppoints_2049590 - 2
.hword branch_204972c - Jumppoints_2049590 - 2
.hword branch_20497c4 - Jumppoints_2049590 - 2
.hword branch_20497e0 - Jumppoints_2049590 - 2

.thumb
branch_2049606: @ 2049606 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x64
	bne     branch_204960e
	b       branch_20497d0
@ 0x204960e

.thumb
branch_204960e: @ 204960e :thumb
	b       branch_20497ee
@ 0x2049610

.thumb
branch_2049610: @ 2049610 :thumb
	cmp     r6, #0x0
	bne     branch_2049622
	ldrb    r0, [r5, #0xe]
	ldr     r1, [r2, #0xc]
	mov     r2, #0x1
	bl      Function_2049ec4
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x2049622

.thumb
branch_2049622: @ 2049622 :thumb
	ldr     r1, [r2, #0xc]
	mov     r0, r6
	mov     r2, #0x1
	bl      Function_2049ec4
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x2049630

.thumb
branch_2049630: @ 2049630 :thumb
	bl      Function_2049f8c
	b       branch_20497f6
@ 0x2049636

.thumb
branch_2049636: @ 2049636 :thumb
	ldr     r0, [r2, #0xc]
	bl      Function_202d740
	bl      Function_2049f98
	b       branch_20497f6
@ 0x2049642

.thumb
branch_2049642: @ 2049642 :thumb
	ldr     r0, [r2, #0xc]
	bl      Function_202d740
	bl      Function_2049fa0
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x2049650

.thumb
branch_2049650: @ 2049650 :thumb
	mov     r0, r2
	bl      Function_2049fa8
	b       branch_20497f6
@ 0x2049658

.thumb
branch_2049658: @ 2049658 :thumb
	mov     r0, r2
	bl      Function_2049fe8
	b       branch_20497f6
@ 0x2049660

.thumb
branch_2049660: @ 2049660 :thumb
	ldr     r0, [r2, #0xc]
	mov     r1, r6
	bl      Function_2049ff8
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x204966c

.thumb
branch_204966c: @ 204966c :thumb
	ldr     r1, [r2, #0xc]
	mov     r0, #0x0
	mov     r2, #0x2
	bl      Function_204aabc
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x204967a

.thumb
branch_204967a: @ 204967a :thumb
	mov     r0, #0x0
	ldr     r1, [r2, #0xc]
	mov     r2, r0
	bl      Function_204aabc
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x2049688

.thumb
branch_2049688: @ 2049688 :thumb
	lsl     r1, r6, #24
	ldr     r0, [r2, #0xc]
	lsr     r1, r1, #24
	bl      Function_204a030
	b       branch_20497f6
@ 0x2049694

.thumb
branch_2049694: @ 2049694 :thumb
	ldr     r0, [r2, #0xc]
	bl      Function_204a050
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x204969e

.thumb
branch_204969e: @ 204969e :thumb
	ldr     r0, [r2, #0xc]
	bl      Function_204a064
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x20496a8

.thumb
branch_20496a8: @ 20496a8 :thumb
	ldr     r0, [r2, #0xc]
	bl      Function_204a100
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x20496b2

.thumb
branch_20496b2: @ 20496b2 :thumb
	ldrh    r3, [r4, #0x0]
	ldr     r0, [r7, #0x74]
	ldr     r2, [sp, #0x4]
	mov     r1, r6
	bl      Function_206bce4
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x20496c4

.thumb
branch_20496c4: @ 20496c4 :thumb
	mov     r0, r2
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r2, r0
	ldr     r1, [r7, #0x74]
	mov     r0, r5
	bl      Function_204a358
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x20496dc

.thumb
branch_20496dc: @ 20496dc :thumb
	mov     r0, r2
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	add     r7, #0x80
	ldr     r2, [r7, #0x0]
	mov     r1, r0
	ldr     r2, [r2, #0xc]
	mov     r0, r5
	bl      Function_204a378
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x20496f6

.thumb
branch_20496f6: @ 20496f6 :thumb
	ldr     r1, [r2, #0xc]
	mov     r0, r5
	bl      Function_204a410
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x2049702

.thumb
branch_2049702: @ 2049702 :thumb
	mov     r0, r5
	bl      Function_204a57c
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x204970c

.thumb
branch_204970c: @ 204970c :thumb
	ldr     r1, [r2, #0xc]
	mov     r0, r5
	bl      Function_204a660
	b       branch_20497f6
@ 0x2049716

.thumb
branch_2049716: @ 2049716 :thumb
	ldr     r1, [r2, #0xc]
	add     r2, #0x9c
	ldr     r2, [r2, #0x0]
	mov     r0, r5
	bl      Function_204a7a4
	b       branch_20497f6
@ 0x2049724

.thumb
branch_2049724: @ 2049724 :thumb
	mov     r0, r5
	bl      Function_204a8c8
	b       branch_20497f6
@ 0x204972c

.thumb
branch_204972c: @ 204972c :thumb
	mov     r0, r5
	bl      Function_204a97c
	b       branch_20497f6
@ 0x2049734

.thumb
branch_2049734: @ 2049734 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_204a9e0
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x2049740

.thumb
branch_2049740: @ 2049740 :thumb
	mov     r0, r5
	bl      Function_204a9f8
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x204974a

.thumb
branch_204974a: @ 204974a :thumb
	mov     r0, r5
	bl      Function_204a9fc
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x2049754

.thumb
branch_2049754: @ 2049754 :thumb
	ldr     r1, [r2, #0xc]
	mov     r0, r5
	bl      Function_204aa7c
	b       branch_20497f6
@ 0x204975e

.thumb
branch_204975e: @ 204975e :thumb
	ldr     r1, [r2, #0xc]
	mov     r0, r5
	bl      Function_204ab68
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x204976a

.thumb
branch_204976a: @ 204976a :thumb
	ldr     r1, [r2, #0xc]
	mov     r0, r5
	bl      Function_204aba0
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x2049776

.thumb
branch_2049776: @ 2049776 :thumb
	ldrb    r1, [r5, #0x10]
	mov     r0, #0xe0
	bic     r1, r0
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #29
	lsr     r0, r0, #24
	orr     r0, r1
	strb    r0, [r5, #0x10]
	b       branch_20497f6
@ 0x204978a

.thumb
branch_204978a: @ 204978a :thumb
	ldrb    r0, [r5, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #29
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x2049794

.thumb
branch_2049794: @ 2049794 :thumb
	ldr     r1, [r2, #0xc]
	mov     r0, r5
	bl      Function_204a4c8
	b       branch_20497f6
@ 0x204979e

.thumb
branch_204979e: @ 204979e :thumb
	add     r0, r5, r6
	add     r0, #0x2a
	ldrb    r0, [r0, #0x0]
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x20497a8

.thumb
branch_20497a8: @ 20497a8 :thumb
	ldr     r1, [r2, #0xc]
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_204aabc
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x20497b6

.thumb
branch_20497b6: @ 20497b6 :thumb
	lsl     r1, r6, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_2049ae0
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x20497c4

.thumb
branch_20497c4: @ 20497c4 :thumb
	ldr     r1, [r2, #0xc]
	mov     r0, r5
	bl      Function_204abf4
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x20497d0

.thumb
branch_20497d0: @ 20497d0 :thumb
	cmp     r5, #0x0
	bne     branch_20497da
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x20497da

.thumb
branch_20497da: @ 20497da :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	b       branch_20497f6
@ 0x20497e0

.thumb
branch_20497e0: @ 20497e0 :thumb
	ldr     r0, [pc, #0x18] @ 0x20497fc, (=0x884)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x46
	blx     MI_CpuFill8
	b       branch_20497f6
@ 0x20497ee

.thumb
branch_20497ee: @ 20497ee :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
.thumb
branch_20497f6: @ 20497f6 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20497fc

.word 0x884 @ 0x20497fc



.thumb
ScriptCmd_RandomTeamBTower: @ 2049800 :thumb
	push    {r3-r7,lr}
	mov     r5, r0

	mov     r1, r5
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	add     r1, #0xac
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter

	lsl     r2, r6, #4
	add     r2, r6, r2
	mov     r1, #0x38
	lsl     r2, r2, #4
	mul     r1, r7
	add     r2, r4, r2
	add     r3, r2, r1
	mov     r2, #0xb2
	lsl     r2, r2, #2
	ldrh    r1, [r3, r2]
	lsl     r1, r1, #21
	lsr     r4, r1, #21
	ldr     r1, [sp, #0x0]
	strh    r4, [r1, #0x0]
	add     r1, r2, #0x4
	ldrh    r1, [r3, r1]
	strh    r1, [r0, #0x0]

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204987e


.align 2, 0
.thumb
ScriptCmd_StorePrizeNumBTower: @ 2049880 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_206bdbc
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20498a6


.align 2, 0


.thumb
ScriptCmd_StorePeopleIdBTower: @ 20498a8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_206bf04
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20498ce


.align 2, 0


.thumb
ScriptCmd_CallBTowerWireFunction: @ 20498d0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	add     r0, #0xac
	ldr     r6, [r0, #0x0]
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	cmp     r7, #0x0
	beq     branch_204992c
	cmp     r7, #0x1
	beq     branch_2049944
	cmp     r7, #0x2
	beq     branch_2049958
	b       branch_204996c
@ 0x204992c

.thumb
branch_204992c: @ 204992c :thumb
	mov     r0, #0x3e
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r1, [r0, #0x0]
	mov     r0, r1
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0xc]
	bl      Function_204b060
	b       branch_204996c
@ 0x2049944

.thumb
branch_2049944: @ 2049944 :thumb
	mov     r0, #0x3f
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      Function_204b0bc
	b       branch_204996c
@ 0x2049958

.thumb
branch_2049958: @ 2049958 :thumb
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x4]
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      Function_204b0d4
.thumb
branch_204996c: @ 204996c :thumb
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_205e6d8
	cmp     r0, #0x1
	bne     branch_2049996
	bl      Function_203608c
	ldr     r1, [pc, #0x38] @ 0x20499b8, (=0x83e)
	add     r1, r6, r1
	bl      Function_2036614
	cmp     r0, #0x1
	bne     branch_2049990
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	b       branch_20499b0
@ 0x2049990

.thumb
branch_2049990: @ 2049990 :thumb
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2049996

.thumb
branch_2049996: @ 2049996 :thumb
	mov     r0, r6
	bl      Function_209ba80
	ldr     r1, [pc, #0x18] @ 0x20499b8, (=0x83e)
	ldr     r0, [sp, #0x0]
	add     r1, r6, r1
	mov     r2, #0x46
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_20499b0
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
branch_20499b0: @ 20499b0 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20499b6

.align 2
.word 0x83e @ 0x20499b8



.thumb
ScriptCmd_StorePChosenWireBTower: @ 20499bc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	add     r1, #0xac
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r7, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_205e6d8
	cmp     r0, #0x1
	bne     branch_2049a04
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	ldr     r0, [r0, #0x10]
	mov     r2, r7
	bl      Function_206bd88
	b       branch_2049a14

branch_2049a04: @ 2049a04 :thumb
	ldr     r0, [pc, #0x10] @ 0x2049a18, (=0x8da)
	ldr     r1, [pc, #0x14] @ 0x2049a1c, (=Function_2049a20+1)
	strh    r7, [r4, r0]
	.hword  0x1f40 @ sub r0, r0, #0x5
	strb    r6, [r4, r0]
	mov     r0, r5
	bl      ScriptHandler_AddFunction
branch_2049a14: @ 2049a14 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2049a18

.word 0x8da @ 0x2049a18
.word Function_2049a20+1 @ 0x2049a1c



.thumb
Function_2049a20: @ 2049a20 :thumb
	push    {r4,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, r0
	add     r1, #0xac
	ldr     r4, [r1, #0x0]
	ldr     r1, [pc, #0x2c] @ 0x2049a5c, (=0x8da)
	ldrh    r1, [r4, r1]
	bl      ScriptHandler_CheckLoadParameter
	ldr     r1, [pc, #0x28] @ 0x2049a60, (=0x8d5)
	ldrb    r1, [r4, r1]
	cmp     r1, #0x1
	bne     branch_2049a40
	mov     r3, #0x1
	b       branch_2049a42

branch_2049a40: @ 2049a40 :thumb
	mov     r3, #0x2
branch_2049a42: @ 2049a42 :thumb
	ldr     r1, [pc, #0x20] @ 0x2049a64, (=0x8d4)
	ldrb    r2, [r4, r1]
	cmp     r2, r3
	bne     branch_2049a58
	mov     r2, #0x0
	strb    r2, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldrh    r1, [r4, r1]
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}

branch_2049a58: @ 2049a58 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2049a5c

.word 0x8da @ 0x2049a5c
.word 0x8d5 @ 0x2049a60
.word 0x8d4 @ 0x2049a64



.thumb
ScriptCmd_StoreRankDataWireBTower: @ 2049a68 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_202d764
	add     r1, sp, #0x0
	bl      Function_202d708
	add     r0, sp, #0x0
	ldrb    r1, [r0, #0x0]
	strh    r1, [r4, #0x0]
	ldrb    r0, [r0, #0x1]
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2049ab4

.thumb
Function_2049ab4: @ 2049ab4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_202d764
	bl      Function_202d5f0
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2049ade


.align 2, 0
.thumb
Function_2049ae0: @ 2049ae0 :thumb
	cmp     r1, #0x2
	bne     branch_2049aec
	ldrb    r0, [r0, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #29
	bx      lr

branch_2049aec: @ 2049aec :thumb
	cmp     r1, #0x1
	bne     branch_2049b12
	ldrb    r1, [r0, #0xf]
	cmp     r1, #0x2
	bne     branch_2049b04
	ldrb    r0, [r0, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #29
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x20] @ 0x2049b20, (=Unknown_20ebc78)
	ldrh    r0, [r0, r1]
	bx      lr

branch_2049b04: @ 2049b04 :thumb
	ldrb    r0, [r0, #0x12]
	cmp     r0, #0x0
	beq     branch_2049b0e
	mov     r0, #0x61
	bx      lr

branch_2049b0e: @ 2049b0e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2049b12

.thumb
branch_2049b12: @ 2049b12 :thumb
	ldrb    r0, [r0, #0x11]
	cmp     r0, #0x0
	beq     branch_2049b1c
	mov     r0, #0x61
	bx      lr

branch_2049b1c: @ 2049b1c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2049b20

.word Unknown_20ebc78 @ 0x2049b20



.thumb
ScriptCmd_ShowBattlePointsBox: @ 2049b24 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r1, [r5, #0x8]
	ldr     r0, [r0, #0x0]
	add     r2, r1, #0x1
	str     r2, [r5, #0x8]
	ldrb    r6, [r1, #0x0]
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r4, [r2, #0x0]
	mov     r1, #0x26
	bl      ScriptHandler_GetSomeScriptAddresses
	add     r5, #0x80
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	mov     r2, r4
	bl      Function_5_21dd140
	str     r0, [r7, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2049b54


.thumb
ScriptCmd_HideBattlePointsBox: @ 2049b54 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x26
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      Function_5_21dd084
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2049b6a


.align 2, 0
.thumb
ScriptCmd_UpdateBPointsbox: @ 2049b6c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x26
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, r0
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, #0x0]
	bl      Function_5_21dd1a4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2049b8a


.align 2, 0
.thumb
Function_2049b8c: @ 2049b8c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r4, [r1, #0xc]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      Function_202d750
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_202d230
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2049bbc

.thumb
Function_2049bbc: @ 2049bbc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r4, [r1, #0xc]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_14
	mov     r1, #0x44
	mov     r2, r6
	bl      Function_202cf70
	mov     r0, r4
	bl      Function_202d750
	mov     r1, r6
	mov     r2, #0x5
	bl      Function_202d230
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2049bfe


.align 2, 0


.thumb
ScriptCmd_TakeBPoints: @ 2049c00 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r4, [r1, #0xc]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_14
	mov     r1, #0x45
	mov     r2, r6
	bl      Function_202cf70
	mov     r0, r4
	bl      Function_202d750
	mov     r1, r6
	mov     r2, #0x6
	bl      Function_202d230
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2049c42


.align 2, 0


.thumb
ScriptCmd_CheckBPoints: @ 2049c44 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r5, [r1, #0xc]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      Function_202d750
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_202d230
	cmp     r0, r6
	bhs     branch_2049c8a
	mov     r0, #0x0
	b       branch_2049c8c
@ 0x2049c8a

.thumb
branch_2049c8a: @ 2049c8a :thumb
	mov     r0, #0x1
.thumb
branch_2049c8c: @ 2049c8c :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2049c92


.align 2, 0


.thumb
Function_2049c94: @ 2049c94 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	cmp     r7, #0x1
	bne     branch_2049cea
	mov     r1, #0x1a
	b       branch_2049cec
@ 0x2049cea

.thumb
branch_2049cea: @ 2049cea :thumb
	mov     r1, #0x0
.thumb
branch_2049cec: @ 2049cec :thumb
	add     r1, r1, r6
	lsl     r2, r1, #2
	ldr     r1, [pc, #0xc] @ 0x2049d00, (=Unknown_20ebc82)
	ldrh    r1, [r1, r2]
	strh    r1, [r4, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2049d04, (=Unknown_20ebc84)
	ldrh    r1, [r1, r2]
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2049d00

.word Unknown_20ebc82 @ 0x2049d00
.word Unknown_20ebc84 @ 0x2049d04



.thumb
Function_2049d08: @ 2049d08 :thumb
	cmp     r0, #0x6
	bhi     branch_2049d32
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2049d18

Jumppoints_2049d18:
.hword branch_2049d26 - Jumppoints_2049d18 - 2
.hword branch_2049d2a - Jumppoints_2049d18 - 2
.hword branch_2049d2e - Jumppoints_2049d18 - 2
.hword branch_2049d2e - Jumppoints_2049d18 - 2
.hword branch_2049d26 - Jumppoints_2049d18 - 2
.hword branch_2049d26 - Jumppoints_2049d18 - 2
.hword branch_2049d2e - Jumppoints_2049d18 - 2

.thumb
branch_2049d26: @ 2049d26 :thumb
	mov     r0, #0x3
	bx      lr

branch_2049d2a: @ 2049d2a :thumb
	mov     r0, #0x4
	bx      lr

branch_2049d2e: @ 2049d2e :thumb
	mov     r0, #0x2
	bx      lr

branch_2049d32: @ 2049d32 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2049d36


.align 2, 0
.thumb
Function_2049d38: @ 2049d38 :thumb
	push    {r4,r5}
	mov     r5, #0x0
	cmp     r3, #0x0
	ble     branch_2049d5e
.thumb
branch_2049d40: @ 2049d40 :thumb
	ldrh    r4, [r0, #0x0]
	cmp     r1, r4
	bne     branch_2049d56
	cmp     r2, #0x0
	beq     branch_2049d56
	ldrh    r4, [r0, #0x2]
	cmp     r2, r4
	bne     branch_2049d56
	mov     r0, #0x1
	pop     {r4,r5}
	bx      lr
@ 0x2049d56

.thumb
branch_2049d56: @ 2049d56 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r5, r3
	blt     branch_2049d40
.thumb
branch_2049d5e: @ 2049d5e :thumb
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x2049d64

.thumb
Function_2049d64: @ 2049d64 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     lr, r0
	.hword  0x1e68 @ sub r0, r5, #0x1
	mov     r7, #0x0
	mov     r12, r0
	cmp     r0, #0x0
	ble     branch_2049db0
	mov     r3, lr
.thumb
branch_2049d76: @ 2049d76 :thumb
	add     r2, r7, #0x1
	cmp     r2, r5
	bge     branch_2049da6
	ldrh    r6, [r3, #0x0]
	lsl     r1, r2, #2
	mov     r0, lr
	add     r4, r0, r1
.thumb
branch_2049d84: @ 2049d84 :thumb
	ldrh    r0, [r4, #0x0]
	cmp     r6, r0
	bne     branch_2049d8e
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2049d8e

.thumb
branch_2049d8e: @ 2049d8e :thumb
	ldrh    r1, [r3, #0x2]
	cmp     r1, #0x0
	beq     branch_2049d9e
	ldrh    r0, [r4, #0x2]
	cmp     r1, r0
	bne     branch_2049d9e
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2049d9e

.thumb
branch_2049d9e: @ 2049d9e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r2, r5
	blt     branch_2049d84
.thumb
branch_2049da6: @ 2049da6 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	mov     r0, r12
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r7, r0
	blt     branch_2049d76
.thumb
branch_2049db0: @ 2049db0 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2049db4

.thumb
Function_2049db4: @ 2049db4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	str     r0, [sp, #0x0]
	mov     r7, r1
	mov     r6, r2
	add     r0, sp, #0x20
	mov     r1, #0x0
	mov     r2, #0x10
	str     r3, [sp, #0x4]
	blx     MI_CpuFill8
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_2049ebc
	ldr     r0, [sp, #0x0]
	str     r0, [sp, #0x10]
.thumb
branch_2049dd8: @ 2049dd8 :thumb
	ldr     r0, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	add     r0, sp, #0x20
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x10]
	ldrh    r1, [r0, #0x2]
	add     r0, sp, #0x20
	strh    r1, [r0, #0x2]
	ldr     r0, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, r6
	bge     branch_2049eaa
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x0]
	add     r0, r0, r1
	str     r0, [sp, #0xc]
.thumb
branch_2049dfa: @ 2049dfa :thumb
	ldr     r0, [sp, #0xc]
	cmp     r7, #0x2
	ldrh    r1, [r0, #0x0]
	add     r0, sp, #0x20
	strh    r1, [r0, #0x4]
	ldr     r0, [sp, #0xc]
	ldrh    r1, [r0, #0x2]
	add     r0, sp, #0x20
	strh    r1, [r0, #0x6]
	bne     branch_2049e20
	add     r0, sp, #0x20
	mov     r1, r7
	bl      Function_2049d64
	cmp     r0, #0x0
	beq     branch_2049e9a
	add     sp, #0x30
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2049e20

.thumb
branch_2049e20: @ 2049e20 :thumb
	ldr     r0, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, r6
	bge     branch_2049e9a
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x0]
	add     r0, r0, r1
	str     r0, [sp, #0x8]
.thumb
branch_2049e32: @ 2049e32 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r7, #0x3
	ldrh    r1, [r0, #0x0]
	add     r0, sp, #0x20
	strh    r1, [r0, #0x8]
	ldr     r0, [sp, #0x8]
	ldrh    r1, [r0, #0x2]
	add     r0, sp, #0x20
	strh    r1, [r0, #0xa]
	bne     branch_2049e58
	add     r0, sp, #0x20
	mov     r1, r7
	bl      Function_2049d64
	cmp     r0, #0x0
	beq     branch_2049e8a
	add     sp, #0x30
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2049e58

.thumb
branch_2049e58: @ 2049e58 :thumb
	ldr     r0, [sp, #0x14]
	add     r4, r0, #0x1
	cmp     r4, r6
	bge     branch_2049e8a
	ldr     r0, [sp, #0x0]
	lsl     r1, r4, #2
	add     r5, r0, r1
.thumb
branch_2049e66: @ 2049e66 :thumb
	ldrh    r1, [r5, #0x0]
	add     r0, sp, #0x20
	strh    r1, [r0, #0xc]
	ldrh    r1, [r5, #0x2]
	strh    r1, [r0, #0xe]
	add     r0, sp, #0x20
	mov     r1, r7
	bl      Function_2049d64
	cmp     r0, #0x0
	beq     branch_2049e82
	add     sp, #0x30
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2049e82

.thumb
branch_2049e82: @ 2049e82 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r6
	blt     branch_2049e66
.thumb
branch_2049e8a: @ 2049e8a :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, r6
	blt     branch_2049e32
.thumb
branch_2049e9a: @ 2049e9a :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, r6
	blt     branch_2049dfa
.thumb
branch_2049eaa: @ 2049eaa :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x1c]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x4]
	str     r1, [sp, #0x1c]
	cmp     r1, r0
	blt     branch_2049dd8
.thumb
branch_2049ebc: @ 2049ebc :thumb
	mov     r0, #0x0
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x2049ec2


.align 2, 0
.thumb
Function_2049ec4: @ 2049ec4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	str     r0, [sp, #0x0]
	mov     r0, r1
	str     r2, [sp, #0x4]
	bl      LoadPokePartyAdress
	str     r0, [sp, #0xc]
	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	str     r1, [sp, #0x10]
	ldr     r0, [sp, #0x0]
	cmp     r1, r0
	bge     branch_2049eea
	add     sp, #0x2c
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2049eea

.thumb
branch_2049eea: @ 2049eea :thumb
	ldr     r0, [sp, #0x10]
	mov     r7, #0x0
	mov     r4, r7
	cmp     r0, #0x0
	bls     branch_2049f6a
.thumb
branch_2049ef4: @ 2049ef4 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, r7
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	ldr     r0, [sp, #0x8]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_2049f20
	mov     r6, #0x0
.thumb
branch_2049f20: @ 2049f20 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2049f5e
	mov     r0, r5
	bl      Function_2078804
	cmp     r0, #0x1
	beq     branch_2049f5e
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_2049f4e
	add     r0, sp, #0x14
	mov     r1, r5
	mov     r2, r6
	mov     r3, r4
	bl      Function_2049d38
	cmp     r0, #0x1
	beq     branch_2049f5e
.thumb
branch_2049f4e: @ 2049f4e :thumb
	lsl     r1, r4, #2
	add     r0, sp, #0x14
	add     r2, r0, r1
	strh    r5, [r0, r1]
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	strh    r6, [r2, #0x2]
	lsr     r4, r0, #24
.thumb
branch_2049f5e: @ 2049f5e :thumb
	add     r0, r7, #0x1
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	ldr     r0, [sp, #0x10]
	cmp     r7, r0
	blo     branch_2049ef4
.thumb
branch_2049f6a: @ 2049f6a :thumb
	ldr     r0, [sp, #0x0]
	cmp     r4, r0
	bge     branch_2049f76
	add     sp, #0x2c
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2049f76

.thumb
branch_2049f76: @ 2049f76 :thumb
	ldr     r1, [sp, #0x0]
	add     r0, sp, #0x14
	mov     r3, r1
	sub     r3, r4, r3
	mov     r2, r4
	.hword  0x1c5b @ add r3, r3, #0x1
	bl      Function_2049db4
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x2049f8a


.align 2, 0
.thumb
.globl Function_2049f8c
Function_2049f8c: @ 2049f8c :thumb
	ldr     r3, [pc, #0x4] @ 0x2049f94, (=0x20c3ee4)
	mov     r0, #0x0
	bx      r3
@ 0x2049f92

.align 2
.word OS_ResetSystem @ =0x20c3ee4, 0x2049f94



.thumb
Function_2049f98: @ 2049f98 :thumb
	ldr     r3, [pc, #0x0] @ 0x2049f9c, (=Function_202d060+1)
	bx      r3
@ 0x2049f9c

.word Function_202d060+1 @ 0x2049f9c



.thumb
Function_2049fa0: @ 2049fa0 :thumb
	ldr     r3, [pc, #0x0] @ 0x2049fa4, (=Function_202d214+1)
	bx      r3
@ 0x2049fa4

.word Function_202d214+1 @ 0x2049fa4



.thumb
Function_2049fa8: @ 2049fa8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_6
	bl      AddVariableAreaAdress_6_MapData3
	mov     r4, r0
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionY
	mov     r6, r0
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionX
	ldr     r1, [r5, #0x1c]
	ldr     r1, [r1, #0x0]
	str     r1, [r4, #0x0]
	mov     r1, #0x0
	mvn     r1, r1
	str     r1, [r4, #0x4]
	str     r0, [r4, #0x8]
	str     r6, [r4, #0xc]
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	bl      Function_206ad9c
	pop     {r4-r6,pc}
@ 0x2049fe6


.align 2, 0
.thumb
Function_2049fe8: @ 2049fe8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206adac
	pop     {r3,pc}
@ 0x2049ff6


.align 2, 0
.thumb
Function_2049ff8: @ 2049ff8 :thumb
	push    {r4,lr}
	mov     r4, r1
	cmp     r4, #0x5
	bne     branch_204a004
	mov     r0, #0x0
	pop     {r4,pc}

branch_204a004: @ 204a004 :thumb
	cmp     r4, #0x6
	bne     branch_204a020
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	mov     r0, #0x71
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x71
	bl      Function_2030698
	pop     {r4,pc}

branch_204a020: @ 204a020 :thumb
	bl      LoadVariableAreaAdress_17
	lsl     r1, r4, #1
	.hword  0x1c49 @ add r1, r1, #0x1
	mov     r2, #0xff
	bl      Function_2030698
	pop     {r4,pc}
@ 0x204a030


.thumb
Function_204a030: @ 204a030 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_202d750
	cmp     r4, #0x0
	bne     branch_204a046
	mov     r1, #0x5
	mov     r2, #0x2
	bl      Function_202d414
	pop     {r4,pc}

branch_204a046: @ 204a046 :thumb
	mov     r1, #0x5
	mov     r2, #0x1
	bl      Function_202d414
	pop     {r4,pc}
@ 0x204a050


.thumb
Function_204a050: @ 204a050 :thumb
	push    {r3,lr}
	bl      Function_202d750
	mov     r1, #0x5
	mov     r2, #0x0
	bl      Function_202d414
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	pop     {r3,pc}
@ 0x204a064


.thumb
Function_204a064: @ 204a064 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_202d740
	mov     r4, r0
	mov     r0, r5
	bl      Function_202d750
	mov     r1, #0x0
	mov     r6, r0
	mov     r0, r4
	mov     r2, r1
	bl      Function_202d0bc
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x5
	bne     branch_204a08c
	mov     r0, r4
	pop     {r3-r7,pc}

branch_204a08c: @ 204a08c :thumb
	cmp     r4, #0x6
	bne     branch_204a0ac
	mov     r0, r5
	bl      LoadVariableAreaAdress_17
	mov     r7, r0
	mov     r0, #0x64
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r7
	mov     r1, #0x64
	mov     r3, #0x0
	bl      Function_20306e4
	b       branch_204a0bc

branch_204a0ac: @ 204a0ac :thumb
	mov     r1, r4
	add     r1, #0x8
	lsl     r1, r1, #16
	mov     r0, r6
	lsr     r1, r1, #16
	mov     r2, #0x2
	bl      Function_202d414
branch_204a0bc: @ 204a0bc :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_202d3b4
	mov     r0, r5
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	mov     r0, r4
	bl      Function_205e750
	mov     r7, r0
	mov     r0, r4
	bl      Function_205e750
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_20306e4
	cmp     r4, #0x4
	beq     branch_204a0fa
	cmp     r4, #0x6
	beq     branch_204a0fa
	mov     r0, r5
	bl      Function_206c02c
branch_204a0fa: @ 204a0fa :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x204a0fe


.align 2, 0
.thumb
Function_204a100: @ 204a100 :thumb
	push    {r3,lr}
	bl      Function_202d764
	bl      Function_202d5e8
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	pop     {r3,pc}
@ 0x204a110


.thumb
Function_204a110: @ 204a110 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_204a11e
	bl      ErrorHandling
branch_204a11e: @ 204a11e :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x204a124


.thumb
.globl Function_204a124
Function_204a124: @ 204a124 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r6, r0
	ldr     r1, [pc, #0x1ec] @ 0x204a31c, (=0x8dc)
	mov     r0, #0xb
	mov     r7, r2
	bl      malloc
	ldr     r2, [pc, #0x1e4] @ 0x204a31c, (=0x8dc)
	mov     r1, #0x0
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r0, #0xb
	str     r0, [r4, #0x4]
	mov     r0, r6
	bl      Function_202d740
	str     r0, [r4, #0x70]
	mov     r0, r6
	bl      Function_202d750
	str     r0, [r4, #0x74]
	ldr     r0, [pc, #0x1c8] @ 0x204a320, (=0x12345678)
	mov     r1, #0x0
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x70]
	bl      Function_202d21c
	cmp     r5, #0x0
	bne     branch_204a1b4
	strb    r7, [r4, #0xf]
	ldrb    r0, [r4, #0xf]
	bl      Function_2049d08
	strb    r0, [r4, #0xe]
	mov     r0, #0x1
	strb    r0, [r4, #0xc]
	mov     r2, #0x0
	strb    r2, [r4, #0xd]
	mov     r1, #0xff
branch_204a178: @ 204a178 :thumb
	add     r0, r4, r2
	add     r0, #0x2a
	strb    r1, [r0, #0x0]
	add     r0, r2, #0x1
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	cmp     r2, #0x4
	blo     branch_204a178
	ldr     r1, [pc, #0x198] @ 0x204a324, (=0xffff)
	mov     r2, #0x0
branch_204a18c: @ 204a18c :thumb
	lsl     r0, r2, #1
	add     r0, r4, r0
	strh    r1, [r0, #0x3e]
	add     r0, r2, #0x1
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	cmp     r2, #0xe
	blo     branch_204a18c
	ldr     r0, [r4, #0x70]
	bl      Function_202d060
	ldrb    r1, [r4, #0xf]
	add     r0, sp, #0x8
	add     r2, sp, #0x8
	strb    r1, [r0, #0x0]
	ldr     r0, [r4, #0x70]
	mov     r1, #0x0
	bl      Function_202d140
	b       branch_204a272

branch_204a1b4: @ 204a1b4 :thumb
	mov     r1, #0x0
	ldr     r0, [r4, #0x70]
	mov     r2, r1
	bl      Function_202d0bc
	strb    r0, [r4, #0xf]
	ldr     r0, [r4, #0x70]
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_202d0bc
	strb    r0, [r4, #0xc]
	ldrb    r0, [r4, #0xc]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0xd]
	ldrb    r0, [r4, #0xf]
	bl      Function_2049d08
	strb    r0, [r4, #0xe]
	mov     r2, r4
	ldr     r0, [r4, #0x70]
	mov     r1, #0x5
	add     r2, #0x2a
	bl      Function_202d0bc
	mov     r2, r4
	ldr     r0, [r4, #0x70]
	mov     r1, #0x8
	add     r2, #0x3e
	bl      Function_202d0bc
	ldr     r0, [r4, #0x70]
	mov     r1, #0xa
	mov     r2, #0x0
	bl      Function_202d0bc
	str     r0, [r4, #0x8]
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x2
	bne     branch_204a272
	ldr     r0, [r4, #0x70]
	mov     r1, #0x9
	mov     r2, #0x0
	bl      Function_202d0bc
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #29
	ldrb    r1, [r4, #0x10]
	mov     r2, #0xe0
	lsr     r0, r0, #24
	bic     r1, r2
	orr     r0, r1
	strb    r0, [r4, #0x10]
	ldrb    r3, [r4, #0x10]
	ldr     r2, [pc, #0x104] @ 0x204a328, (=0x7e8)
	ldr     r0, [r4, #0x70]
	lsl     r3, r3, #24
	lsr     r3, r3, #29
	add     r2, r4, r2
	lsl     r3, r3, #4
	mov     r1, #0x6
	add     r2, r2, r3
	bl      Function_202d0bc
	ldrb    r0, [r4, #0x10]
	mov     r1, #0x7
	mov     r2, #0x0
	lsl     r0, r0, #24
	lsr     r5, r0, #29
	ldr     r0, [r4, #0x70]
	bl      Function_202d0bc
	mov     r3, r0
	ldr     r0, [pc, #0xdc] @ 0x204a328, (=0x7e8)
	mov     r1, #0xa6
	lsl     r1, r1, #2
	add     r0, r4, r0
	lsl     r2, r5, #4
	add     r0, r0, r2
	add     r2, r5, r2
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	lsl     r2, r2, #4
	add     r1, r1, r2
	mov     r2, #0x4b
	lsl     r2, r2, #2
	add     r2, r5, r2
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	lsr     r2, r2, #16
	bl      Function_204b404
branch_204a272: @ 204a272 :thumb
	mov     r0, r6
	bl      LoadTrainerDataAdress
	bl      GetGender
	strb    r0, [r4, #0x11]
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x5
	beq     branch_204a2f8
	mov     r0, r6
	bl      LoadVariableAreaAdress_17
	mov     r5, r0
	mov     r0, r6
	bl      LoadVariableAreaAdress_14
	ldrb    r1, [r4, #0xf]
	mov     r7, r0
	cmp     r1, #0x6
	bne     branch_204a2a6
	mov     r0, r6
	bl      LoadFlagAdress
	bl      Function_206b6fc
	b       branch_204a2b8

branch_204a2a6: @ 204a2a6 :thumb
	add     r1, #0x8
	lsl     r1, r1, #16
	ldr     r0, [r4, #0x74]
	lsr     r1, r1, #16
	mov     r2, #0x0
	bl      Function_202d414
	lsl     r0, r0, #16
	lsr     r0, r0, #16
branch_204a2b8: @ 204a2b8 :thumb
	cmp     r0, #0x0
	beq     branch_204a2ee
	ldrb    r1, [r4, #0xf]
	cmp     r1, #0x6
	bne     branch_204a2d4
	mov     r0, #0x71
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0x71
	bl      Function_2030698
	b       branch_204a2e0

branch_204a2d4: @ 204a2d4 :thumb
	lsl     r1, r1, #1
	mov     r0, r5
	.hword  0x1c49 @ add r1, r1, #0x1
	mov     r2, #0xff
	bl      Function_2030698
branch_204a2e0: @ 204a2e0 :thumb
	strh    r0, [r4, #0x1a]
	ldrb    r1, [r4, #0xf]
	ldr     r0, [r4, #0x74]
	mov     r2, #0x0
	bl      Function_202d3b4
	strh    r0, [r4, #0x1c]
branch_204a2ee: @ 204a2ee :thumb
	mov     r0, r7
	mov     r1, #0x1d
	bl      Function_202cfb8
	str     r0, [r4, #0x20]
branch_204a2f8: @ 204a2f8 :thumb
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x6
	bne     branch_204a316
	ldrh    r0, [r4, #0x1a]
	mov     r1, #0x7
	blx     _s32_div_f
	mov     r2, r0
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x74]
	mov     r1, #0x6
	lsr     r2, r2, #16
	bl      Function_202d3fc
	strh    r0, [r4, #0x1c]
branch_204a316: @ 204a316 :thumb
	mov     r0, r4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x204a31c

.word 0x8dc @ 0x204a31c
.word 0x12345678 @ 0x204a320
.word 0xffff @ 0x204a324
.word 0x7e8 @ 0x204a328



.thumb
.globl Function_204a32c
Function_204a32c: @ 204a32c :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_204a34e
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x18] @ 0x204a350, (=0x12345678)
	cmp     r1, r0
	beq     branch_204a33e
	bl      ErrorHandling
branch_204a33e: @ 204a33e :thumb
	ldr     r2, [pc, #0x14] @ 0x204a354, (=0x8dc)
	mov     r0, r4
	mov     r1, #0x0
	blx     MI_CpuFill8
	mov     r0, r4
	bl      free
branch_204a34e: @ 204a34e :thumb
	pop     {r4,pc}
@ 0x204a350

.word 0x12345678 @ 0x204a350
.word 0x8dc @ 0x204a354


.thumb
Function_204a358: @ 204a358 :thumb
	push    {r3,lr}
	add     sp, #-0x10
	ldrb    r0, [r0, #0xe]
	mov     r3, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x64
	str     r0, [sp, #0x8]
	mov     r0, r1
	mov     r1, r2
	mov     r2, #0x11
	str     r3, [sp, #0xc]
	bl      Function_206bbfc
	add     sp, #0x10
	pop     {r3,pc}
@ 0x204a378

.thumb
Function_204a378: @ 204a378 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r1, #0x0]
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	add     r0, #0x23
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_204a396
	ldr     r0, [sp, #0x4]
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x7
	bne     branch_204a3a6
.thumb
branch_204a396: @ 204a396 :thumb
	ldr     r0, [sp, #0x4]
	bl      free
	ldr     r1, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x204a3a6

.thumb
branch_204a3a6: @ 204a3a6 :thumb
	mov     r0, r2
	bl      LoadPokePartyAdress
	str     r0, [sp, #0x8]
	ldrb    r0, [r5, #0xe]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_204a3fa
.thumb
branch_204a3b6: @ 204a3b6 :thumb
	ldr     r0, [sp, #0x4]
	add     r0, r0, r4
	add     r0, #0x2c
	ldrb    r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	add     r0, r5, r4
	add     r0, #0x2a
	strb    r1, [r0, #0x0]
	add     r1, r5, r4
	add     r1, #0x2a
	ldrb    r1, [r1, #0x0]
	ldr     r0, [sp, #0x8]
	bl      GetAdrOfPkmnInParty
	lsl     r1, r4, #1
	add     r6, r5, r1
	mov     r7, r0
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r6, #0x2e]
	mov     r0, r7
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r6, #0x36]
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldrb    r0, [r5, #0xe]
	cmp     r4, r0
	blt     branch_204a3b6
.thumb
branch_204a3fa: @ 204a3fa :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	bl      free
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x204a40e


.align 2, 0


.thumb
Function_204a410: @ 204a410 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r0, [sp, #0x0]
	mov     r0, r1
	bl      LoadPokePartyAdress
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	mov     r5, #0x0
	ldrb    r0, [r0, #0xe]
	cmp     r0, #0x0
	ble     branch_204a498
	add     r7, sp, #0xc
	add     r4, sp, #0x14
.thumb
branch_204a42c: @ 204a42c :thumb
	ldr     r1, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	add     r1, r1, r5
	add     r1, #0x2a
	ldrb    r1, [r1, #0x0]
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x8]
	lsl     r6, r5, #1
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, r6]
	ldr     r0, [sp, #0x8]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r7, r6]
	cmp     r5, #0x0
	beq     branch_204a48a
	mov     r0, #0x0
	cmp     r5, #0x0
	bls     branch_204a48a
	ldrh    r1, [r4, r6]
	ldrh    r2, [r7, r6]
.thumb
branch_204a462: @ 204a462 :thumb
	lsl     r6, r0, #1
	ldrh    r3, [r4, r6]
	cmp     r1, r3
	bne     branch_204a470
	add     sp, #0x1c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x204a470

.thumb
branch_204a470: @ 204a470 :thumb
	cmp     r2, #0x0
	beq     branch_204a480
	ldrh    r3, [r7, r6]
	cmp     r2, r3
	bne     branch_204a480
	add     sp, #0x1c
	mov     r0, #0x2
	pop     {r4-r7,pc}
@ 0x204a480

.thumb
branch_204a480: @ 204a480 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, r5
	blo     branch_204a462
.thumb
branch_204a48a: @ 204a48a :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	ldr     r0, [sp, #0x0]
	ldrb    r0, [r0, #0xe]
	cmp     r5, r0
	blt     branch_204a42c
.thumb
branch_204a498: @ 204a498 :thumb
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x204a49e


.align 2, 0


.thumb
Function_204a4a0: @ 204a4a0 :thumb
	push    {r3,r4}
	mov     r4, #0x0
	cmp     r2, #0x0
	bls     branch_204a4c0
.thumb
branch_204a4a8: @ 204a4a8 :thumb
	lsl     r3, r4, #1
	ldrh    r3, [r0, r3]
	cmp     r1, r3
	bne     branch_204a4b6
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x204a4b6

.thumb
branch_204a4b6: @ 204a4b6 :thumb
	add     r3, r4, #0x1
	lsl     r3, r3, #16
	lsr     r4, r3, #16
	cmp     r4, r2
	blo     branch_204a4a8
.thumb
branch_204a4c0: @ 204a4c0 :thumb
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x204a4c6


.align 2, 0
.thumb
.globl Function_204a4c8
Function_204a4c8: @ 204a4c8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldrb    r1, [r5, #0xf]
	cmp     r1, #0x2
	beq     branch_204a4dc
	cmp     r1, #0x6
	beq     branch_204a4dc
	cmp     r1, #0x3
	bne     branch_204a53a

branch_204a4dc: @ 204a4dc :thumb
	cmp     r1, #0x3
	bne     branch_204a4e8
	ldrh    r2, [r5, #0x14]
	ldrh    r0, [r5, #0x1c]
	cmp     r2, r0
	bhi     branch_204a4f6
.thumb
branch_204a4e8: @ 204a4e8 :thumb
	cmp     r1, #0x6
	bne     branch_204a4f4
	ldrh    r2, [r5, #0x14]
	ldrh    r0, [r5, #0x1c]
	cmp     r2, r0
	bhi     branch_204a4f6
.thumb
branch_204a4f4: @ 204a4f4 :thumb
	ldrh    r2, [r5, #0x1c]
.thumb
branch_204a4f6: @ 204a4f6 :thumb
	lsl     r0, r2, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, r5
	str     r0, [sp, #0x4]
	add     r0, #0x3e
	mov     r4, #0x0
	mov     r6, r5
	str     r0, [sp, #0x4]
.thumb
branch_204a508: @ 204a508 :thumb
	lsr     r2, r4, #31
	add     r2, r4, r2
	lsl     r2, r2, #23
	ldrb    r3, [r5, #0xf]
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	lsr     r2, r2, #24
	bl      Function_204b0f0
	mov     r7, r0
	lsl     r2, r4, #16
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	lsr     r2, r2, #16
	bl      Function_204a4a0
	cmp     r0, #0x0
	bne     branch_204a508
	.hword  0x1c64 @ add r4, r4, #0x1
	strh    r7, [r6, #0x3e]
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r4, #0xe
	blt     branch_204a508
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x204a53a

.thumb
branch_204a53a: @ 204a53a :thumb
	str     r0, [sp, #0x8]
	add     r0, #0x3e
	mov     r4, #0x0
	mov     r6, r5
	str     r0, [sp, #0x8]
.thumb
branch_204a544: @ 204a544 :thumb
	ldrh    r1, [r5, #0x1c]
	lsl     r2, r4, #24
	ldrb    r3, [r5, #0xf]
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_204b0f0
	mov     r7, r0
	lsl     r2, r4, #16
	ldr     r0, [sp, #0x8]
	mov     r1, r7
	lsr     r2, r2, #16
	bl      Function_204a4a0
	cmp     r0, #0x0
	bne     branch_204a544
	.hword  0x1c64 @ add r4, r4, #0x1
	strh    r7, [r6, #0x3e]
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r4, #0x7
	blt     branch_204a544
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x204a576


.align 2, 0
.thumb
.globl Function_204a578
Function_204a578: @ 204a578 :thumb
	ldrb    r0, [r0, #0xc]
	bx      lr
@ 0x204a57c


.thumb
.globl Function_204a57c
Function_204a57c: @ 204a57c :thumb
	ldrb    r2, [r0, #0x10]
	lsl     r1, r2, #31
	lsr     r1, r1, #31
	beq     branch_204a588
	mov     r0, #0x1
	bx      lr
@ 0x204a588

.thumb
branch_204a588: @ 204a588 :thumb
	ldrb    r1, [r0, #0xc]
	cmp     r1, #0x7
	bls     branch_204a59c
	mov     r1, #0x1
	bic     r2, r1
	mov     r1, #0x1
	orr     r2, r1
	strb    r2, [r0, #0x10]
	mov     r0, r1
	bx      lr
@ 0x204a59c

.thumb
branch_204a59c: @ 204a59c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x204a5a0

.thumb
Function_204a5a0: @ 204a5a0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0xf]
	mov     r4, r1
	mov     r6, r2
	cmp     r0, #0x0
	beq     branch_204a5b2
	cmp     r0, #0x1
	bne     branch_204a5e8
.thumb
branch_204a5b2: @ 204a5b2 :thumb
	mov     r0, r4
	bl      LoadPokePartyAdress
	ldrb    r1, [r5, #0xf]
	cmp     r1, #0x0
	bne     branch_204a5d4
	add     r5, #0x2a
	ldrb    r1, [r5, #0x0]
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	mov     r3, #0x1
	bl      Function_206dbb0
	pop     {r4-r6,pc}
@ 0x204a5d4

.thumb
branch_204a5d4: @ 204a5d4 :thumb
	add     r5, #0x2a
	ldrb    r1, [r5, #0x0]
	bl      GetAdrOfPkmnInParty
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_206dbb0
.thumb
branch_204a5e8: @ 204a5e8 :thumb
	pop     {r4-r6,pc}
@ 0x204a5ea


.align 2, 0


.thumb
Function_204a5ec: @ 204a5ec :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r2
	ldrb    r2, [r5, #0xf]
	mov     r6, r1
	mov     r4, r3
	cmp     r2, #0x0
	beq     branch_204a606
	cmp     r2, #0x1
	beq     branch_204a60c
	cmp     r2, #0x4
	beq     branch_204a620
	pop     {r3-r7,pc}
@ 0x204a606

.thumb
branch_204a606: @ 204a606 :thumb
	mov     r2, #0x0
	bl      Function_204ae20
.thumb
branch_204a60c: @ 204a60c :thumb
	cmp     r4, #0x7
	blo     branch_204a65e
	mov     r0, r6
	bl      Function_202440c
	mov     r1, r7
	mov     r2, r4
	bl      Function_206cfe4
	pop     {r3-r7,pc}
@ 0x204a620

.thumb
branch_204a620: @ 204a620 :thumb
	mov     r2, #0x1
	bl      Function_204ae20
	ldrh    r1, [r5, #0x28]
	ldrh    r2, [r5, #0x24]
	ldrh    r3, [r5, #0x26]
	lsl     r1, r1, #24
	ldr     r0, [r5, #0x70]
	lsr     r1, r1, #24
	bl      Function_202d1e8
	ldrb    r1, [r5, #0xf]
	add     r0, sp, #0x0
	add     r2, sp, #0x0
	strb    r1, [r0, #0x0]
	ldr     r0, [r5, #0x70]
	mov     r1, #0x0
	bl      Function_202d140
	ldrb    r1, [r5, #0xc]
	add     r0, sp, #0x0
	add     r2, sp, #0x0
	strb    r1, [r0, #0x0]
	ldr     r0, [r5, #0x70]
	mov     r1, #0x1
	bl      Function_202d140
	ldr     r0, [r5, #0x74]
	ldr     r1, [r5, #0x70]
	bl      Function_202d334
.thumb
branch_204a65e: @ 204a65e :thumb
	pop     {r3-r7,pc}
@ 0x204a660


.thumb
.globl Function_204a660
Function_204a660: @ 204a660 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r1
	mov     r5, r0
	mov     r0, r7
	bl      LoadVariableAreaAdress_14
	str     r0, [sp, #0x4]
	mov     r0, r7
	bl      LoadVariableAreaAdress_17
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0xf]
	cmp     r0, #0x5
	bne     branch_204a680
	b       branch_204a79a
@ 0x204a680

.thumb
branch_204a680: @ 204a680 :thumb
	cmp     r0, #0x6
	bne     branch_204a688
	mov     r4, #0x70
	b       branch_204a68a
@ 0x204a688

.thumb
branch_204a688: @ 204a688 :thumb
	lsl     r4, r0, #1
.thumb
branch_204a68a: @ 204a68a :thumb
	mov     r0, r4
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_2030698
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      Function_205e6a8
	mov     r2, r0
	ldrh    r6, [r5, #0x1a]
	ldrb    r3, [r5, #0xd]
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	add     r3, r6, r3
	lsl     r3, r3, #16
	lsr     r3, r3, #16
	bl      Function_2030848
	mov     r6, r0
	cmp     r6, #0x1
	bls     branch_204a6da
	ldr     r1, [sp, #0x8]
	cmp     r1, r6
	blo     branch_204a6d0
	cmp     r1, r6
	bne     branch_204a6da
	mov     r1, #0x7
	blx     _s32_div_f
	cmp     r1, #0x0
	bne     branch_204a6da
.thumb
branch_204a6d0: @ 204a6d0 :thumb
	mov     r0, r5
	mov     r1, r7
	mov     r2, r6
	bl      Function_204a5a0
.thumb
branch_204a6da: @ 204a6da :thumb
	ldrb    r1, [r5, #0xf]
	cmp     r1, #0x6
	bne     branch_204a6fa
	mov     r0, r7
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	mov     r0, #0x64
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, #0x64
	bl      Function_2030698
	b       branch_204a708
@ 0x204a6fa

.thumb
branch_204a6fa: @ 204a6fa :thumb
	add     r1, #0x8
	lsl     r1, r1, #16
	ldr     r0, [r5, #0x74]
	lsr     r1, r1, #16
	mov     r2, #0x0
	bl      Function_202d414
.thumb
branch_204a708: @ 204a708 :thumb
	add     r0, r4, #0x1
	bl      Function_205e6a8
	add     r1, r4, #0x1
	mov     r2, r0
	ldrh    r4, [r5, #0x1a]
	ldrb    r3, [r5, #0xd]
	ldr     r0, [sp, #0x0]
	add     r3, r4, r3
	lsl     r3, r3, #16
	lsr     r3, r3, #16
	bl      Function_20306e4
	ldrb    r1, [r5, #0xf]
	mov     r4, r0
	cmp     r1, #0x6
	bne     branch_204a746
	mov     r0, r7
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	mov     r0, #0x64
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, #0x64
	mov     r3, #0x0
	bl      Function_20306e4
	b       branch_204a754
@ 0x204a746

.thumb
branch_204a746: @ 204a746 :thumb
	add     r1, #0x8
	lsl     r1, r1, #16
	ldr     r0, [r5, #0x74]
	lsr     r1, r1, #16
	mov     r2, #0x2
	bl      Function_202d414
.thumb
branch_204a754: @ 204a754 :thumb
	ldrb    r2, [r5, #0xd]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1d
	bl      Function_202cf70
	ldrb    r1, [r5, #0xf]
	ldr     r0, [r5, #0x74]
	mov     r2, #0x2
	bl      Function_202d3b4
	ldrb    r0, [r5, #0xf]
	cmp     r0, #0x6
	beq     branch_204a77c
	mov     r0, r7
	bl      LoadVariableAreaAdress_14
	mov     r1, #0xf
	mov     r2, #0x1
	bl      Function_202cf70
.thumb
branch_204a77c: @ 204a77c :thumb
	mov     r0, r5
	bl      Function_204acc8
	ldr     r0, [pc, #0x1c] @ 0x204a7a0, (=0x270f)
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	bls     branch_204a78c
	mov     r4, r0
.thumb
branch_204a78c: @ 204a78c :thumb
	lsl     r3, r4, #16
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x0
	lsr     r3, r3, #16
	bl      Function_204a5ec
.thumb
branch_204a79a: @ 204a79a :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x204a79e

.align 2
.word 0x270f @ 0x204a7a0



.thumb
.globl Function_204a7a4
Function_204a7a4: @ 204a7a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldrb    r0, [r5, #0xf]
	mov     r7, r1
	str     r2, [sp, #0x0]
	cmp     r0, #0x5
	bne     branch_204a7b6
	b       branch_204a8c4
@ 0x204a7b6

.thumb
branch_204a7b6: @ 204a7b6 :thumb
	mov     r0, r7
	bl      LoadVariableAreaAdress_14
	str     r0, [sp, #0x8]
	mov     r0, r7
	bl      LoadVariableAreaAdress_17
	ldrb    r1, [r5, #0xf]
	str     r0, [sp, #0x4]
	cmp     r1, #0x6
	bne     branch_204a7d0
	mov     r4, #0x70
	b       branch_204a7d2
@ 0x204a7d0

.thumb
branch_204a7d0: @ 204a7d0 :thumb
	lsl     r4, r1, #1
.thumb
branch_204a7d2: @ 204a7d2 :thumb
	cmp     r1, #0x6
	bne     branch_204a7f0
	mov     r0, r7
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	mov     r0, #0x64
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, #0x64
	bl      Function_2030698
	b       branch_204a7fe
@ 0x204a7f0

.thumb
branch_204a7f0: @ 204a7f0 :thumb
	add     r1, #0x8
	lsl     r1, r1, #16
	ldr     r0, [r5, #0x74]
	lsr     r1, r1, #16
	mov     r2, #0x0
	bl      Function_202d414
.thumb
branch_204a7fe: @ 204a7fe :thumb
	add     r0, r4, #0x1
	bl      Function_205e6a8
	mov     r2, r0
	ldrh    r6, [r5, #0x1a]
	ldrb    r3, [r5, #0xd]
	ldr     r0, [sp, #0x4]
	add     r1, r4, #0x1
	add     r3, r6, r3
	lsl     r3, r3, #16
	lsr     r3, r3, #16
	bl      Function_20306e4
	ldrb    r1, [r5, #0xf]
	mov     r6, r0
	cmp     r1, #0x6
	bne     branch_204a83c
	mov     r0, r7
	bl      LoadVariableAreaAdress_17
	str     r0, [sp, #0xc]
	mov     r0, #0x64
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [sp, #0xc]
	mov     r1, #0x64
	mov     r3, #0x1
	bl      Function_20306e4
	b       branch_204a84a
@ 0x204a83c

.thumb
branch_204a83c: @ 204a83c :thumb
	add     r1, #0x8
	lsl     r1, r1, #16
	ldr     r0, [r5, #0x74]
	lsr     r1, r1, #16
	mov     r2, #0x1
	bl      Function_202d414
.thumb
branch_204a84a: @ 204a84a :thumb
	mov     r0, r4
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	bl      Function_2030698
	mov     r0, r4
	bl      Function_205e6a8
	mov     r2, r0
	lsl     r3, r6, #16
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	lsr     r3, r3, #16
	bl      Function_2030848
	ldr     r0, [sp, #0x8]
	mov     r1, #0x1d
	mov     r2, #0x7
	bl      Function_202cf70
	ldrb    r1, [r5, #0xf]
	ldr     r0, [r5, #0x74]
	mov     r2, #0x3
	bl      Function_202d3b4
	ldrb    r0, [r5, #0xf]
	cmp     r0, #0x6
	beq     branch_204a892
	ldr     r0, [sp, #0x8]
	mov     r1, #0xf
	mov     r2, #0x1
	bl      Function_202cf70
.thumb
branch_204a892: @ 204a892 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, #0xe
	bl      Function_202cfec
	mov     r0, r5
	bl      Function_204acc8
	lsl     r3, r6, #16
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x1
	lsr     r3, r3, #16
	bl      Function_204a5ec
	ldrb    r0, [r5, #0xf]
	cmp     r0, #0x4
	bne     branch_204a8c4
	ldr     r0, [r5, #0x4]
	bl      Function_202c238
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	mov     r2, #0x4
	bl      Function_202b758
branch_204a8c4: @ 204a8c4 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x204a8c8


.thumb
.globl Function_204a8c8
Function_204a8c8: @ 204a8c8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldrb    r1, [r4, #0xf]
	add     r0, sp, #0x0
	add     r2, sp, #0x0
	strb    r1, [r0, #0x0]
	ldr     r0, [r4, #0x70]
	mov     r1, #0x0
	bl      Function_202d140
	ldrb    r1, [r4, #0xc]
	add     r0, sp, #0x0
	add     r2, sp, #0x0
	strb    r1, [r0, #0x0]
	ldr     r0, [r4, #0x70]
	mov     r1, #0x1
	bl      Function_202d140
	mov     r2, r4
	ldr     r0, [r4, #0x70]
	mov     r1, #0x5
	add     r2, #0x2a
	bl      Function_202d140
	ldrh    r1, [r4, #0x28]
	ldrh    r2, [r4, #0x24]
	ldrh    r3, [r4, #0x26]
	lsl     r1, r1, #24
	ldr     r0, [r4, #0x70]
	lsr     r1, r1, #24
	bl      Function_202d1e8
	mov     r2, r4
	ldr     r0, [r4, #0x70]
	mov     r1, #0x8
	add     r2, #0x3e
	bl      Function_202d140
	mov     r2, r4
	ldr     r0, [r4, #0x70]
	mov     r1, #0xa
	add     r2, #0x8
	bl      Function_202d140
	ldr     r0, [r4, #0x70]
	mov     r1, #0x1
	bl      Function_202d21c
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x2
	bne     branch_204a96e
	ldrb    r0, [r4, #0x10]
	add     r2, sp, #0x0
	lsl     r0, r0, #24
	lsr     r1, r0, #29
	add     r0, sp, #0x0
	strb    r1, [r0, #0x0]
	ldr     r0, [r4, #0x70]
	mov     r1, #0x9
	bl      Function_202d140
	ldrb    r3, [r4, #0x10]
	ldr     r2, [pc, #0x2c] @ 0x204a974, (=0x7e8)
	ldr     r0, [r4, #0x70]
	lsl     r3, r3, #24
	lsr     r3, r3, #29
	add     r2, r4, r2
	lsl     r3, r3, #4
	mov     r1, #0x6
	add     r2, r2, r3
	bl      Function_202d140
	ldr     r2, [pc, #0x1c] @ 0x204a978, (=0x838)
	ldr     r0, [r4, #0x70]
	add     r3, r4, r2
	ldrb    r2, [r4, #0x10]
	mov     r1, #0x7
	lsl     r2, r2, #24
	lsr     r2, r2, #29
	add     r2, r3, r2
	bl      Function_202d140
.thumb
branch_204a96e: @ 204a96e :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x204a972


.align 2


.word 0x7e8 @ 0x204a974
.word 0x838 @ 0x204a978
.thumb
Function_204a97c: @ 204a97c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [pc, #0x54] @ 0x204a9d8, (=0x7e8)
	mov     r4, #0x0
	add     r6, r5, r0
	mov     r0, #0xa6
	lsl     r0, r0, #2
	add     r7, r5, r0
	mov     r0, r5
	str     r0, [sp, #0x10]
	add     r0, #0x2e
	str     r0, [sp, #0x10]
	mov     r0, r5
	str     r0, [sp, #0x14]
	add     r0, #0x36
	str     r0, [sp, #0x14]
.thumb
branch_204a99e: @ 204a99e :thumb
	ldr     r0, [sp, #0x10]
	mov     r2, #0x4b
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	lsl     r2, r2, #2
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldr     r0, [r5, #0x4]
	add     r2, r4, r2
	str     r0, [sp, #0xc]
	lsl     r2, r2, #16
	ldrb    r3, [r5, #0xe]
	mov     r0, r5
	mov     r1, r7
	lsr     r2, r2, #16
	bl      Function_204b3b8
	add     r2, r5, r4
	ldr     r1, [pc, #0x18] @ 0x204a9dc, (=0x838)
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r0, [r2, r1]
	mov     r0, #0x11
	lsl     r0, r0, #4
	add     r6, #0x10
	add     r7, r7, r0
	cmp     r4, #0x5
	blt     branch_204a99e
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x204a9d8

.word 0x7e8 @ 0x204a9d8
.word 0x838 @ 0x204a9dc
.thumb
Function_204a9e0: @ 204a9e0 :thumb
	lsl     r2, r1, #4
	add     r1, r1, r2
	lsl     r1, r1, #4
	add     r0, r0, r1
	add     r0, #0x7c
	ldrh    r0, [r0, #0x0]
	ldr     r3, [pc, #0x4] @ 0x204a9f4, (=Function_204af9c+1)
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bx      r3
@ 0x204a9f4

.word Function_204af9c+1 @ 0x204a9f4



.thumb
.globl Function_204a9f8
Function_204a9f8: @ 204a9f8 :thumb
	ldrb    r0, [r0, #0xf]
	bx      lr
@ 0x204a9fc


.thumb
.globl Function_204a9fc
Function_204a9fc: @ 204a9fc :thumb
	ldrb    r0, [r0, #0x10]
	lsl     r0, r0, #29
	lsr     r0, r0, #30
	bx      lr
@ 0x204aa04


.thumb
.globl Function_204aa04
Function_204aa04: @ 204aa04 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0xf]
	cmp     r1, #0x5
	bne     branch_204aa12
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_204aa12: @ 204aa12 :thumb
	cmp     r1, #0x4
	bne     branch_204aa24
	ldr     r0, [r4, #0x74]
	mov     r1, #0x0
	bl      Function_202d2c0
	ldr     r1, [pc, #0x50] @ 0x204aa70, (=Unknown_20ebd44)
	ldrb    r5, [r1, r0]
	b       branch_204aa62

branch_204aa24: @ 204aa24 :thumb
	cmp     r1, #0x3
	beq     branch_204aa2c
	cmp     r1, #0x6
	bne     branch_204aa42
branch_204aa2c: @ 204aa2c :thumb
	ldr     r0, [r4, #0x74]
	mov     r2, #0x0
	bl      Function_202d3b4
	cmp     r0, #0x7
	blo     branch_204aa3c
	mov     r5, #0x12
	b       branch_204aa62

branch_204aa3c: @ 204aa3c :thumb
	ldr     r1, [pc, #0x34] @ 0x204aa74, (=Unknown_20ebd28)
	ldrb    r5, [r1, r0]
	b       branch_204aa62

branch_204aa42: @ 204aa42 :thumb
	ldr     r0, [r4, #0x74]
	mov     r2, #0x0
	bl      Function_202d3b4
	ldrb    r1, [r4, #0x10]
	lsl     r1, r1, #29
	lsr     r1, r1, #30
	beq     branch_204aa56
	mov     r5, #0x14
	b       branch_204aa62

branch_204aa56: @ 204aa56 :thumb
	cmp     r0, #0x7
	blo     branch_204aa5e
	mov     r5, #0x7
	b       branch_204aa62

branch_204aa5e: @ 204aa5e :thumb
	ldr     r1, [pc, #0x18] @ 0x204aa78, (=Unknown_20ebd30)
	ldrb    r5, [r1, r0]
branch_204aa62: @ 204aa62 :thumb
	ldr     r0, [r4, #0x74]
	mov     r1, r5
	mov     r2, #0x5
	bl      Function_202d230
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x204aa70

.word Unknown_20ebd44 @ 0x204aa70
.word Unknown_20ebd28 @ 0x204aa74
.word Unknown_20ebd30 @ 0x204aa78



.thumb
Function_204aa7c: @ 204aa7c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	ldrb    r1, [r4, #0xf]
	bl      Function_2049ff8
	cmp     r0, #0x32
	bhs     branch_204aa90
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204aa90

.thumb
branch_204aa90: @ 204aa90 :thumb
	cmp     r0, #0x64
	ldr     r0, [r4, #0x74]
	blo     branch_204aaa6
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_202d414
	cmp     r0, #0x0
	beq     branch_204aab6
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204aaa6

.thumb
branch_204aaa6: @ 204aaa6 :thumb
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_202d414
	cmp     r0, #0x0
	beq     branch_204aab6
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204aab6

.thumb
branch_204aab6: @ 204aab6 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x204aaba


.align 2, 0


.thumb
Function_204aabc: @ 204aabc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r4, r2
	bl      Function_202d750
	mov     r6, r0
	cmp     r4, #0x0
	beq     branch_204aad8
	cmp     r4, #0x1
	beq     branch_204aae0
	cmp     r4, #0x2
	beq     branch_204ab1c
	b       branch_204ab60
@ 0x204aad8

.thumb
branch_204aad8: @ 204aad8 :thumb
	mov     r1, #0x0
	bl      Function_202d2c0
	pop     {r4-r6,pc}
@ 0x204aae0

.thumb
branch_204aae0: @ 204aae0 :thumb
	mov     r1, #0x4
	mov     r2, #0x2
	bl      Function_202d414
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_202d2c0
	mov     r4, r0
	cmp     r4, #0xa
	bne     branch_204ab02
	ldrb    r1, [r5, #0x10]
	mov     r0, #0x10
	orr     r0, r1
	strb    r0, [r5, #0x10]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204ab02

.thumb
branch_204ab02: @ 204ab02 :thumb
	mov     r0, r6
	mov     r1, #0x3
	bl      Function_202d2c0
	add     r0, r4, #0x1
	cmp     r0, #0x5
	blt     branch_204ab18
	ldrb    r1, [r5, #0x10]
	mov     r0, #0x10
	orr     r0, r1
	strb    r0, [r5, #0x10]
.thumb
branch_204ab18: @ 204ab18 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x204ab1c

.thumb
branch_204ab1c: @ 204ab1c :thumb
	mov     r1, #0x3
	bl      Function_202d288
	mov     r4, r0
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_202d2c0
	cmp     r0, #0x1
	bne     branch_204ab34
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_204ab34: @ 204ab34 :thumb
	sub     r1, r0, #0x1
	ldr     r0, [pc, #0x2c] @ 0x204ab64, (=Unknown_20ebd38)
	ldrb    r0, [r0, r1]
	cmp     r4, r0
	blo     branch_204ab5c
	mov     r0, r6
	mov     r1, #0x4
	bl      Function_202d2c0
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_202d288
	mov     r0, r6
	mov     r1, #0x4
	mov     r2, #0x2
	bl      Function_202d414
	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_204ab5c: @ 204ab5c :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_204ab60: @ 204ab60 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204ab64

.word Unknown_20ebd38 @ 0x204ab64



.thumb
Function_204ab68: @ 204ab68 :thumb
	push    {r3,lr}
	mov     r2, r0
	ldrb    r0, [r2, #0xf]
	cmp     r0, #0x0
	beq     branch_204ab76
	mov     r0, #0x0
	pop     {r3,pc}

branch_204ab76: @ 204ab76 :thumb
	ldrb    r0, [r2, #0x10]
	lsl     r0, r0, #29
	lsr     r0, r0, #30
	cmp     r0, #0x1
	beq     branch_204ab86
	cmp     r0, #0x2
	beq     branch_204ab90
	b       branch_204ab9a
@ 0x204ab86

.thumb
branch_204ab86: @ 204ab86 :thumb
	mov     r0, r1
	mov     r1, #0x1a
	bl      Function_204ac54
	pop     {r3,pc}
@ 0x204ab90

.thumb
branch_204ab90: @ 204ab90 :thumb
	mov     r0, r1
	mov     r1, #0x1b
	bl      Function_204ac54
	pop     {r3,pc}
@ 0x204ab9a

.thumb
branch_204ab9a: @ 204ab9a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204ab9e


.align 2, 0
.thumb
Function_204aba0: @ 204aba0 :thumb
	push    {r4,lr}
	mov     r2, r0
	ldrb    r0, [r2, #0xf]
	cmp     r0, #0x5
	bne     branch_204abae
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204abae

.thumb
branch_204abae: @ 204abae :thumb
	cmp     r0, #0x6
	bne     branch_204abb6
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204abb6

.thumb
branch_204abb6: @ 204abb6 :thumb
	ldrb    r4, [r2, #0x10]
	lsl     r4, r4, #27
	lsr     r4, r4, #31
	bne     branch_204abc2
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204abc2

.thumb
branch_204abc2: @ 204abc2 :thumb
	cmp     r0, #0x4
	bhi     branch_204abea
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x204abd2

Jumppoints_204abd2:
.hword branch_204abea - Jumppoints_204abd2 - 2
.hword branch_204abdc - Jumppoints_204abd2 - 2
.hword branch_204abe0 - Jumppoints_204abd2 - 2
.hword branch_204abe4 - Jumppoints_204abd2 - 2
.hword branch_204abe8 - Jumppoints_204abd2 - 2
.thumb
branch_204abdc: @ 204abdc :thumb
	mov     r3, #0x1c
	b       branch_204abea
@ 0x204abe0

.thumb
branch_204abe0: @ 204abe0 :thumb
	mov     r3, #0x1d
	b       branch_204abea
@ 0x204abe4

.thumb
branch_204abe4: @ 204abe4 :thumb
	mov     r3, #0x1e
	b       branch_204abea
@ 0x204abe8

.thumb
branch_204abe8: @ 204abe8 :thumb
	mov     r3, #0x1f
.thumb
branch_204abea: @ 204abea :thumb
	mov     r0, r1
	mov     r1, r3
	bl      Function_204ac54
	pop     {r4,pc}
@ 0x204abf4


.thumb
Function_204abf4: @ 204abf4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	ldrb    r1, [r5, #0xf]
	cmp     r1, #0x6
	bne     branch_204ac1a
	mov     r0, r4
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	mov     r0, #0x64
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, #0x64
	bl      Function_2030698
	b       branch_204ac28
@ 0x204ac1a

.thumb
branch_204ac1a: @ 204ac1a :thumb
	add     r1, #0x8
	lsl     r1, r1, #16
	ldr     r0, [r5, #0x74]
	lsr     r1, r1, #16
	mov     r2, #0x0
	bl      Function_202d414
.thumb
branch_204ac28: @ 204ac28 :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x0
	bne     branch_204ac38
	mov     r0, r4
	bl      Function_206c02c
	b       branch_204ac3e
@ 0x204ac38

.thumb
branch_204ac38: @ 204ac38 :thumb
	mov     r0, r4
	bl      Function_206c068
.thumb
branch_204ac3e: @ 204ac3e :thumb
	str     r0, [r5, #0x8]
	ldr     r0, [r5, #0x8]
	ldr     r1, [pc, #0xc] @ 0x204ac50, (=0xffff)
	blx     _u32_div_f
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	pop     {r4-r6,pc}
@ 0x204ac4e

.align 2
.word 0xffff @ 0x204ac50



.thumb
Function_204ac54: @ 204ac54 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r7, r2
	mov     r2, #0x1
	add     r1, sp, #0xc
	str     r0, [sp, #0x0]
	strb    r2, [r1, #0x0]
	bl      LoadPokePartyAdress
	mov     r4, #0x0
	str     r4, [sp, #0x8]
	str     r0, [sp, #0x4]
	ldrb    r0, [r7, #0xe]
	cmp     r0, #0x0
	ble     branch_204acb4
branch_204ac74: @ 204ac74 :thumb
	add     r1, r7, r4
	add     r1, #0x2a
	ldrb    r1, [r1, #0x0]
	ldr     r0, [sp, #0x4]
	bl      GetAdrOfPkmnInParty
	mov     r1, r5
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_204acac
	mov     r0, r6
	mov     r1, r5
	add     r2, sp, #0xc
	bl      SetPkmnData
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	mov     r2, r5
	bl      Function_206ddb8
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
branch_204acac: @ 204acac :thumb
	ldrb    r0, [r7, #0xe]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_204ac74
branch_204acb4: @ 204acb4 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	bne     branch_204acc0
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_204acc0: @ 204acc0 :thumb
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x204acc6


.align 2, 0
.thumb
Function_204acc8: @ 204acc8 :thumb
	ldrb    r1, [r0, #0xf]
	cmp     r1, #0x5
	beq     branch_204acda
	cmp     r1, #0x0
	beq     branch_204acda
	cmp     r1, #0x6
	beq     branch_204acda
	cmp     r1, #0x4
	bne     branch_204acde
branch_204acda: @ 204acda :thumb
	mov     r0, #0x0
	bx      lr

branch_204acde: @ 204acde :thumb
	ldrh    r2, [r0, #0x1a]
	ldrb    r1, [r0, #0xd]
	add     r1, r2, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	cmp     r1, #0x32
	bhs     branch_204acf0
	mov     r0, #0x0
	bx      lr

branch_204acf0: @ 204acf0 :thumb
	ldrb    r2, [r0, #0x10]
	mov     r1, #0x10
	orr     r1, r2
	strb    r1, [r0, #0x10]
	mov     r0, #0x1
	bx      lr
@ 0x204acfc


.thumb
Function_204acfc: @ 204acfc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #16
	ldrh    r1, [r1, #0x0]
	ldr     r2, [pc, #0x100] @ 0x204ae18, (=0xfffff800)
	lsr     r3, r0, #16
	lsr     r0, r2, #21
	and     r1, r2
	and     r0, r3
	orr     r1, r0
	ldr     r0, [sp, #0x0]
	mov     r2, #0x0
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x70
	bl      GetPkmnData
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #16
	ldrh    r2, [r1, #0x0]
	ldr     r1, [pc, #0xe4] @ 0x204ae1c, (=0xffff07ff)
	lsr     r0, r0, #16
	lsl     r0, r0, #27
	and     r1, r2
	lsr     r0, r0, #16
	orr     r1, r0
	ldr     r0, [sp, #0x0]
	mov     r2, #0x0
	strh    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x6
	bl      GetPkmnData
	ldr     r1, [sp, #0x0]
	mov     r4, #0x0
	strh    r0, [r1, #0x2]
	mov     r0, r1
	str     r0, [sp, #0x4]
	add     r0, #0x1e
	mov     r6, r1
	mov     r7, r4
	str     r0, [sp, #0x4]
branch_204ad60: @ 204ad60 :thumb
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x36
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r4
	strh    r0, [r6, #0x4]
	mov     r0, r5
	add     r1, #0x3e
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [sp, #0x4]
	lsl     r0, r7
	ldrb    r1, [r1, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	orr     r1, r0
	ldr     r0, [sp, #0x4]
	.hword  0x1cbf @ add r7, r7, #0x2
	strb    r1, [r0, #0x0]
	cmp     r4, #0x4
	blt     branch_204ad60
	mov     r0, r5
	mov     r1, #0xc
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [sp, #0x0]
	mov     r2, #0x0
	strb    r0, [r1, #0x1f]
	mov     r0, r5
	mov     r1, #0x7
	bl      GetPkmnData
	ldr     r1, [sp, #0x0]
	str     r0, [r1, #0xc]
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      GetPkmnData
	ldr     r1, [sp, #0x0]
	mov     r2, #0x0
	str     r0, [r1, #0x10]
	mov     r0, r5
	mov     r1, #0xaf
	bl      GetPkmnData
	ldr     r1, [sp, #0x0]
	mov     r4, #0x0
	str     r0, [r1, #0x14]
	mov     r6, r4
branch_204adcc: @ 204adcc :thumb
	mov     r1, r4
	mov     r0, r5
	add     r1, #0xd
	mov     r2, r6
	bl      GetPkmnData
	ldr     r1, [sp, #0x0]
	add     r1, r1, r4
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r0, [r1, #0x18]
	cmp     r4, #0x6
	blt     branch_204adcc
	mov     r0, r5
	mov     r1, #0xa
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [sp, #0x0]
	mov     r2, #0x0
	add     r1, #0x20
	strb    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, #0x9
	bl      GetPkmnData
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x0]
	add     r1, #0x21
	strb    r0, [r1, #0x0]
	add     r2, #0x22
	mov     r0, r5
	mov     r1, #0x75
	str     r2, [sp, #0x0]
	bl      GetPkmnData
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x204ae16

.align 2
.word 0xfffff800 @ 0x204ae18
.word 0xffff07ff @ 0x204ae1c



.thumb
Function_204ae20: @ 204ae20 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	ldr     r0, [r6, #0x4]
	mov     r4, r1
	mov     r1, #0xa8
	str     r2, [sp, #0x0]
	bl      malloc2
	mov     r1, #0x0
	mov     r2, #0xa8
	str     r0, [sp, #0x4]
	blx     MI_CpuFill8
	mov     r0, r4
	bl      LoadPokePartyAdress
	ldr     r5, [sp, #0x4]
	mov     r7, r0
	mov     r4, #0x0
branch_204ae48: @ 204ae48 :thumb
	add     r1, r6, r4
	add     r1, #0x2a
	ldrb    r1, [r1, #0x0]
	mov     r0, r7
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	mov     r0, r5
	bl      Function_204acfc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x38
	cmp     r4, #0x3
	blt     branch_204ae48
	ldr     r0, [r6, #0x74]
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	bl      Function_202d2f0
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	mov     r2, #0xa8
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x4]
	bl      free
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x204ae82


.align 2, 0
.thumb
.globl Function_204ae84
Function_204ae84: @ 204ae84 :thumb
	cmp     r0, #0x64
	bhs     branch_204ae8c
	mov     r0, #0x3
	bx      lr

branch_204ae8c: @ 204ae8c :thumb
	cmp     r0, #0x78
	bhs     branch_204ae94
	mov     r0, #0x6
	bx      lr

branch_204ae94: @ 204ae94 :thumb
	cmp     r0, #0x8c
	bhs     branch_204ae9c
	mov     r0, #0x9
	bx      lr

branch_204ae9c: @ 204ae9c :thumb
	cmp     r0, #0xa0
	bhs     branch_204aea4
	mov     r0, #0xc
	bx      lr

branch_204aea4: @ 204aea4 :thumb
	cmp     r0, #0xb4
	bhs     branch_204aeac
	mov     r0, #0xf
	bx      lr

branch_204aeac: @ 204aeac :thumb
	cmp     r0, #0xc8
	bhs     branch_204aeb4
	mov     r0, #0x12
	bx      lr

branch_204aeb4: @ 204aeb4 :thumb
	cmp     r0, #0xdc
	bhs     branch_204aebc
	mov     r0, #0x15
	bx      lr

branch_204aebc: @ 204aebc :thumb
	mov     r0, #0x1f
	bx      lr
@ 0x204aec0


.thumb
.globl Function_204aec0
Function_204aec0: @ 204aec0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x6
	bne     branch_204aed0
	bl      PRNG
	pop     {r4,pc}

branch_204aed0: @ 204aed0 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_206bff0
	ldr     r1, [pc, #0xc] @ 0x204aee4, (=0xffff)
	str     r0, [r4, #0x8]
	blx     _u32_div_f
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	pop     {r4,pc}
@ 0x204aee4

.word 0xffff @ 0x204aee4



.thumb
Function_204aee8: @ 204aee8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r4, r0
	mov     r7, r1
	str     r2, [sp, #0x8]
	mov     r0, #0xe
	mov     r1, #0x4
	str     r3, [sp, #0xc]
	ldr     r5, [sp, #0x38]
	bl      Function_2023790
	mov     r6, r0
	mov     r0, #0x2
	mov     r1, #0x4
	bl      Function_2023790
	str     r0, [sp, #0x1c]
	mov     r0, r4
	bl      LoadPokedexDataAdress
	mov     r2, #0x67
	str     r0, [sp, #0x18]

	mov     r0, #0x1
	mov     r1, #PlMsg_Narc
	lsl     r2, r2, #2
	mov     r3, #0x4
	bl      LoadFromNARC_9
	str     r0, [sp, #0x10]
	mov     r0, #0x13
	mov     r1, #0xe
	mov     r2, #0x4
	bl      Function_200b368
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r3, #0x1
	mov     r2, r7
	str     r0, [sp, #0x14]
	str     r3, [sp, #0x4]
	bl      Function_200b60c
	mov     r4, #0x0
branch_204af3e: @ 204af3e :thumb
	mov     r0, r4
	bl      Function_2078824
	mov     r7, r0
	ldr     r0, [sp, #0x18]
	mov     r1, r7
	bl      WasPkmnSeen
	cmp     r0, #0x0
	beq     branch_204af78
	ldr     r0, [sp, #0x10]
	mov     r1, r7
	mov     r2, r6
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [sp, #0xc]
	mov     r2, r6
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldrb    r1, [r5, #0x0]
	ldr     r0, [sp, #0x14]
	ldr     r3, [sp, #0x8]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      Function_200b48c
	ldrb    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x0]
branch_204af78: @ 204af78 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x12
	blo     branch_204af3e
	ldr     r0, [sp, #0x10]
	bl      Function_200b190
	ldr     r0, [sp, #0x1c]
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x14]
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x204af9a


.align 2, 0
.thumb
Function_204af9c: @ 204af9c :thumb
	ldr     r3, [pc, #0x1c] @ 0x204afbc, (=Unknown_20ebd98)
	mov     r2, #0x0
branch_204afa0: @ 204afa0 :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_204afae
	ldr     r0, [pc, #0x18] @ 0x204afc0, (=Unknown_20ebd9a)
	lsl     r1, r2, #2
	ldrh    r0, [r0, r1]
	bx      lr

branch_204afae: @ 204afae :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r2, #0x3f
	blo     branch_204afa0
	mov     r0, #0x3
	bx      lr
@ 0x204afba

.align 2
.word Unknown_20ebd98 @ 0x204afbc
.word Unknown_20ebd9a @ 0x204afc0



.thumb
Function_204afc4: @ 204afc4 :thumb
	push    {r3,r4}
	add     r0, #0xac
	ldr     r3, [r0, #0x0]
	ldrh    r0, [r1, #0x0]
	mov     r2, #0x0
	strb    r0, [r3, #0x12]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r3, #0x16]
	ldrh    r0, [r1, #0x4]
	strh    r0, [r3, #0x18]
	ldrh    r0, [r1, #0x6]
	mov     r1, #0xe0
	strh    r0, [r3, #0x14]
	ldrb    r0, [r3, #0x10]
	bic     r0, r1
	ldrb    r1, [r3, #0x12]
	.hword  0x1d49 @ add r1, r1, #0x5
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	lsl     r1, r1, #29
	lsr     r1, r1, #24
	orr     r0, r1
	strb    r0, [r3, #0x10]
	ldrh    r4, [r3, #0x16]
	ldrh    r1, [r3, #0x2e]
	cmp     r1, r4
	beq     branch_204b000
	ldrh    r0, [r3, #0x18]
	cmp     r1, r0
	bne     branch_204b006
branch_204b000: @ 204b000 :thumb
	add     r0, r2, #0x1
	lsl     r0, r0, #16
	lsr     r2, r0, #16
branch_204b006: @ 204b006 :thumb
	ldrh    r1, [r3, #0x30]
	cmp     r1, r4
	beq     branch_204b012
	ldrh    r0, [r3, #0x18]
	cmp     r1, r0
	bne     branch_204b018
branch_204b012: @ 204b012 :thumb
	add     r0, r2, #0x2
	lsl     r0, r0, #16
	lsr     r2, r0, #16
branch_204b018: @ 204b018 :thumb
	mov     r0, r2
	pop     {r3,r4}
	bx      lr
@ 0x204b01e


.align 2, 0
.thumb
Function_204b020: @ 204b020 :thumb
	push    {r3-r5,lr}
	add     r0, #0xac
	mov     r5, r1
	ldr     r4, [r0, #0x0]
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_204b034
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_204b034: @ 204b034 :thumb
	add     r4, #0x3e
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1c
	blx     MI_CpuCopy8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x204b044


.thumb
Function_204b044: @ 204b044 :thumb
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x10]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	bne     branch_204b056
	ldrh    r0, [r1, #0x0]
	cmp     r0, #0x0
	beq     branch_204b05a
branch_204b056: @ 204b056 :thumb
	mov     r0, #0x1
	bx      lr

branch_204b05a: @ 204b05a :thumb
	mov     r0, #0x0
	bx      lr
@ 0x204b05e


.align 2, 0
.thumb
Function_204b060: @ 204b060 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r0
	mov     r0, r4
	bl      LoadTrainerDataAdress
	bl      GetGender
	ldr     r1, [pc, #0x40] @ 0x204b0b4, (=0x83e)
	strh    r0, [r6, r1]
	mov     r0, r4
	bl      LoadPokePartyAdress
	mov     r7, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_204b080: @ 204b080 :thumb
	add     r1, r6, r4
	add     r1, #0x2a
	ldrb    r1, [r1, #0x0]
	mov     r0, r7
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, #0x21
	lsl     r1, r1, #6
	strh    r0, [r5, r1]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x2
	blt     branch_204b080
	ldr     r0, [r6, #0x74]
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_202d3b4
	ldr     r1, [pc, #0x8] @ 0x204b0b8, (=0x844)
	strh    r0, [r6, r1]
	pop     {r3-r7,pc}
@ 0x204b0b2

.align 2
.word 0x83e @ 0x204b0b4
.word 0x844 @ 0x204b0b8



.thumb
Function_204b0bc: @ 204b0bc :thumb
	ldr     r1, [pc, #0xc] @ 0x204b0cc, (=0x83e)
	mov     r2, r0
	add     r1, r2, r1
	ldr     r3, [pc, #0xc] @ 0x204b0d0, (=MI_CpuCopy8)
	add     r0, #0x3e
	mov     r2, #0x1c
	bx      r3
@ 0x204b0ca

.align 2
.word 0x83e @ 0x204b0cc
.word MI_CpuCopy8 @ =MI_CpuCopy8, 0x204b0d0



.thumb
Function_204b0d4: @ 204b0d4 :thumb
	ldrb    r3, [r0, #0x10]
	mov     r2, #0x8
	bic     r3, r2
	lsl     r2, r1, #24
	lsr     r2, r2, #24
	lsl     r2, r2, #31
	lsr     r2, r2, #28
	orr     r2, r3
	strb    r2, [r0, #0x10]
	ldr     r2, [pc, #0x4] @ 0x204b0ec, (=0x83e)
	strh    r1, [r0, r2]
	bx      lr
@ 0x204b0ec

.word 0x83e @ 0x204b0ec



.thumb
Function_204b0f0: @ 204b0f0 :thumb
	push    {r3-r5,lr}
	cmp     r3, #0x0
	bne     branch_204b10e
	cmp     r1, #0x2
	bne     branch_204b102
	cmp     r2, #0x6
	bne     branch_204b102
	ldr     r0, [pc, #0x6c] @ 0x204b16c, (=0x131)
	pop     {r3-r5,pc}

branch_204b102: @ 204b102 :thumb
	cmp     r1, #0x6
	bne     branch_204b10e
	cmp     r2, #0x6
	bne     branch_204b10e
	ldr     r0, [pc, #0x64] @ 0x204b170, (=0x132)
	pop     {r3-r5,pc}

branch_204b10e: @ 204b10e :thumb
	cmp     r1, #0x7
	bhs     branch_204b15a
	cmp     r2, #0x6
	bne     branch_204b138
	lsl     r5, r1, #2
	ldr     r1, [pc, #0x58] @ 0x204b174, (=Unknown_20ebd78)
	ldrh    r4, [r1, r5]
	bl      Function_204aec0
	ldr     r1, [pc, #0x54] @ 0x204b178, (=Unknown_20ebd7a)
	ldrh    r1, [r1, r5]
	sub     r1, r1, r4
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	blx     _s32_div_f
	add     r0, r4, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	pop     {r3-r5,pc}

branch_204b138: @ 204b138 :thumb
	lsl     r4, r1, #2
	ldr     r1, [pc, #0x40] @ 0x204b17c, (=Unknown_20ebd58)
	ldrh    r5, [r1, r4]
	bl      Function_204aec0
	ldr     r1, [pc, #0x3c] @ 0x204b180, (=Unknown_20ebd5a)
	ldrh    r1, [r1, r4]
	sub     r1, r1, r5
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	blx     _s32_div_f
	add     r0, r5, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	pop     {r3-r5,pc}

branch_204b15a: @ 204b15a :thumb
	bl      Function_204aec0
	mov     r1, #0x64
	blx     _s32_div_f
	add     r1, #0xc8
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	pop     {r3-r5,pc}
@ 0x204b16c

.word 0x131 @ 0x204b16c
.word 0x132 @ 0x204b170
.word Unknown_20ebd78 @ 0x204b174
.word Unknown_20ebd7a @ 0x204b178
.word Unknown_20ebd58 @ 0x204b17c
.word Unknown_20ebd5a @ 0x204b180



.thumb
Function_204b184: @ 204b184 :thumb
	push    {r3-r7,lr}
	mov     r6, r2
	mov     r5, r0
	mov     r4, r1

	mov     r0, #0x1
	mov     r1, #PlMsg_Narc
	mov     r2, #0x15
	mov     r3, r6
	bl      LoadFromNARC_9
	mov     r2, #0x11
	mov     r7, r0

	mov     r0, r5
	mov     r1, #0x0
	lsl     r2, r2, #4
	blx     MI_CpuFill8
	mov     r0, r4
	mov     r1, r6
	bl      LoadFromNARC_PlBtdtr
	mov     r6, r0

	ldr     r0, [pc, #0x30] @ 0x204b1e4, (=0xffff)
	str     r4, [r5, #0x0]
	strh    r0, [r5, #0x18]
	lsl     r0, r4, #1
	add     r0, r4, r0
	strh    r0, [r5, #0x1a]
	ldrh    r0, [r6, #0x0]
	mov     r1, r4
	strh    r0, [r5, #0x4]
	mov     r0, r7
	bl      Function_200b1ec_CallMsgDecrypt
	add     r5, #0x8
	mov     r4, r0
	mov     r1, r5
	mov     r2, #0x8
	bl      Function_2023df0
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, r7
	bl      Function_200b190
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x204b1e4

.word 0xffff @ 0x204b1e4



.thumb
Function_204b1e8: @ 204b1e8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r1
	mov     r4, r0
	mov     r6, r2

	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x38
	str     r3, [sp, #0x0]
	blx     MI_CpuFill8
	add     r0, sp, #0x8
	mov     r1, r6
	bl      LoadFromNARC_PlBtdpm

	add     r2, sp, #0x8
	ldrh    r0, [r5, #0x0]
	ldr     r1, [pc, #0x184] @ 0x204b390, (=0xfffff800)
	ldrh    r3, [r2, #0x0]
	and     r0, r1
	lsr     r1, r1, #21
	and     r1, r3
	orr     r0, r1
	strh    r0, [r5, #0x0]
	ldrh    r1, [r5, #0x0]
	ldr     r0, [pc, #0x178] @ 0x204b394, (=0xffff07ff)
	and     r1, r0
	ldrh    r0, [r2, #0xe]
	lsl     r0, r0, #27
	lsr     r0, r0, #16
	orr     r0, r1
	strh    r0, [r5, #0x0]
	ldr     r0, [sp, #0x3c]
	cmp     r0, #0x0
	beq     branch_204b23a
	add     r0, sp, #0x20
	ldrb    r0, [r0, #0x18]
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x160] @ 0x204b398, (=Unknown_20ebd50)
	ldrh    r0, [r0, r1]
	b       branch_204b23c

branch_204b23a: @ 204b23a :thumb
	ldrh    r0, [r2, #0xc]
branch_204b23c: @ 204b23c :thumb
	strh    r0, [r5, #0x2]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	add     r1, sp, #0x8
	mov     r2, r5
	mov     r3, r0
branch_204b24a: @ 204b24a :thumb
	ldrh    r6, [r1, #0x2]
	strh    r6, [r2, #0x4]
	ldrh    r6, [r1, #0x2]
	cmp     r6, #0xda
	bne     branch_204b256
	str     r3, [sp, #0x4]
branch_204b256: @ 204b256 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r0, #0x4
	blt     branch_204b24a
	ldr     r0, [sp, #0x0]
	ldr     r7, [sp, #0x30]
	str     r0, [r5, #0xc]
	cmp     r7, #0x0
	bne     branch_204b29c
branch_204b26a: @ 204b26a :thumb
	mov     r0, r4
	bl      Function_204aec0
	mov     r6, r0
	mov     r0, r4
	bl      Function_204aec0
	lsl     r0, r0, #16
	mov     r7, r6
	orr     r7, r0
	mov     r0, r7
	bl      PkmnData_DivBy25
	add     r1, sp, #0x8
	ldrb    r1, [r1, #0xb]
	cmp     r1, r0
	bne     branch_204b26a
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	bl      CheckIfShinyPkmn
	cmp     r0, #0x1
	beq     branch_204b26a
	str     r7, [r5, #0x10]
	b       branch_204b29e

branch_204b29c: @ 204b29c :thumb
	str     r7, [r5, #0x10]
branch_204b29e: @ 204b29e :thumb
	add     r0, sp, #0x20
	ldrb    r1, [r0, #0x14]
	ldr     r2, [r5, #0x14]
	mov     r0, #0x1f
	bic     r2, r0
	mov     r0, #0x1f
	and     r0, r1
	orr     r2, r0
	ldr     r0, [pc, #0xec] @ 0x204b39c, (=0xfffffc1f)
	mov     r6, #0x0
	and     r2, r0
	lsl     r0, r1, #27
	lsr     r1, r0, #22
	orr     r2, r1
	ldr     r1, [pc, #0xe4] @ 0x204b3a0, (=0xffff83ff)
	mov     r4, r6
	and     r2, r1
	lsr     r1, r0, #17
	orr     r2, r1
	ldr     r1, [pc, #0xdc] @ 0x204b3a4, (=0xfff07fff)
	and     r2, r1
	lsr     r1, r0, #12
	orr     r2, r1
	ldr     r1, [pc, #0xd8] @ 0x204b3a8, (=0xfe0fffff)
	and     r2, r1
	lsr     r1, r0, #7
	orr     r2, r1
	ldr     r1, [pc, #0xd4] @ 0x204b3ac, (=0xc1ffffff)
	lsr     r0, r0, #2
	and     r1, r2
	orr     r0, r1
	str     r0, [r5, #0x14]
branch_204b2de: @ 204b2de :thumb
	mov     r0, r4
	bl      Function_20787cc
	add     r1, sp, #0x8
	ldrb    r1, [r1, #0xa]
	tst     r0, r1
	beq     branch_204b2ee
	.hword  0x1c76 @ add r6, r6, #0x1
branch_204b2ee: @ 204b2ee :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x6
	blt     branch_204b2de
	ldr     r0, [pc, #0xb8] @ 0x204b3b0, (=0x1fe)
	mov     r1, r6
	blx     _s32_div_f
	cmp     r0, #0xff
	ble     branch_204b302
	mov     r0, #0xff
branch_204b302: @ 204b302 :thumb
	lsl     r0, r0, #24
	mov     r4, #0x0
	lsr     r6, r0, #24
branch_204b308: @ 204b308 :thumb
	mov     r0, r4
	bl      Function_20787cc
	add     r1, sp, #0x8
	ldrb    r1, [r1, #0xa]
	tst     r0, r1
	beq     branch_204b31a
	add     r0, r5, r4
	strb    r6, [r0, #0x18]
branch_204b31a: @ 204b31a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x6
	blt     branch_204b308
	mov     r0, #0x0
	strb    r0, [r5, #0x1e]
	ldr     r0, [pc, #0x8c] @ 0x204b3b4, (=CountryOfOriginValue)
	mov     r1, #0x19
	ldrb    r0, [r0, #0x0]
	strb    r0, [r5, #0x1f]
	ldrh    r0, [r5, #0x0]
	lsl     r0, r0, #21
	lsr     r0, r0, #21
	bl      GetPkmnBaseData1
	cmp     r0, #0x0
	beq     branch_204b35e
	ldr     r2, [r5, #0x10]
	mov     r1, #0x1
	tst     r1, r2
	beq     branch_204b34a
	mov     r1, r5
	add     r1, #0x20
	strb    r0, [r1, #0x0]
	b       branch_204b370

branch_204b34a: @ 204b34a :thumb
	ldrh    r0, [r5, #0x0]
	mov     r1, #0x18
	lsl     r0, r0, #21
	lsr     r0, r0, #21
	bl      GetPkmnBaseData1
	mov     r1, r5
	add     r1, #0x20
	strb    r0, [r1, #0x0]
	b       branch_204b370

branch_204b35e: @ 204b35e :thumb
	ldrh    r0, [r5, #0x0]
	mov     r1, #0x18
	lsl     r0, r0, #21
	lsr     r0, r0, #21
	bl      GetPkmnBaseData1
	mov     r1, r5
	add     r1, #0x20
	strb    r0, [r1, #0x0]
branch_204b370: @ 204b370 :thumb
	mov     r1, r5
	ldr     r0, [sp, #0x4]
	add     r1, #0x21
	strb    r0, [r1, #0x0]
	ldrh    r0, [r5, #0x0]
	add     r5, #0x22
	ldr     r1, [sp, #0x40]
	lsl     r0, r0, #21
	lsr     r0, r0, #21
	mov     r2, r5
	bl      Function_200b274
	mov     r0, r7
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x204b38e

.align 2
.word 0xfffff800 @ 0x204b390
.word 0xffff07ff @ 0x204b394
.word Unknown_20ebd50 @ 0x204b398
.word 0xfffffc1f @ 0x204b39c
.word 0xffff83ff @ 0x204b3a0
.word 0xfff07fff @ 0x204b3a4
.word 0xfe0fffff @ 0x204b3a8
.word 0xc1ffffff @ 0x204b3ac
.word 0x1fe @ 0x204b3b0
.word CountryOfOriginValue @ 0x204b3b4



.thumb
Function_204b3b8: @ 204b3b8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r2
	mov     r5, r1
	str     r0, [sp, #0x14]
	ldr     r2, [sp, #0x3c]
	mov     r6, r3
	mov     r0, r5
	mov     r1, r4
	bl      Function_204b184
	mov     r7, r0
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x30]
	add     r5, #0x30
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x34]
	mov     r1, r7
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x38]
	mov     r2, r4
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x3c]
	mov     r3, r5
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	bl      Function_204b470
	mov     r4, r0
	mov     r0, r7
	bl      free
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x204b402


.align 2, 0
.thumb
Function_204b404: @ 204b404 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x38]
	mov     r5, r1
	str     r0, [sp, #0x38]
	ldr     r0, [sp, #0x3c]
	mov     r4, r2
	str     r0, [sp, #0x3c]
	ldr     r2, [sp, #0x3c]
	mov     r0, r5
	mov     r1, r4
	str     r3, [sp, #0x18]
	bl      Function_204b184
	str     r0, [sp, #0x1c]
	mov     r0, r4
	bl      Function_204ae84
	ldr     r6, [sp, #0x38]
	str     r0, [sp, #0x20]
	mov     r7, #0x0
	mov     r4, r6
	add     r5, #0x30
.thumb
branch_204b434: @ 204b434 :thumb
	ldr     r0, [r6, #0x8]
	ldr     r3, [sp, #0x38]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x20]
	mov     r1, r5
	str     r0, [sp, #0x4]
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x18]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x3c]
	str     r0, [sp, #0x10]
	ldrh    r2, [r4, #0x4]
	ldr     r0, [sp, #0x14]
	ldr     r3, [r3, #0x0]
	bl      Function_204b1e8
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1ca4 @ add r4, r4, #0x2
	add     r5, #0x38
	cmp     r7, #0x2
	blt     branch_204b434
	ldr     r0, [sp, #0x1c]
	bl      free
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x204b46e


.align 2, 0
.thumb
Function_204b470: @ 204b470 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x7c
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x94]
	str     r2, [sp, #0x1c]
	str     r0, [sp, #0x94]
	ldr     r0, [sp, #0x98]
	str     r1, [sp, #0x18]
	str     r0, [sp, #0x98]
	ldr     r0, [sp, #0x9c]
	str     r3, [sp, #0x20]
	str     r0, [sp, #0x9c]
	ldr     r0, [sp, #0xa0]
	str     r0, [sp, #0xa0]
	mov     r0, #0x0
	str     r0, [sp, #0x28]
	add     r0, sp, #0x80
	ldrb    r0, [r0, #0x10]
	cmp     r0, #0x4
	bls     branch_204b49c
	bl      ErrorHandling
.thumb
branch_204b49c: @ 204b49c :thumb
	add     r0, sp, #0x80
	ldrb    r6, [r0, #0x10]
	mov     r4, #0x0
	str     r4, [sp, #0x2c]
	cmp     r6, #0x0
	beq     branch_204b58e
	add     r0, sp, #0x6c
	str     r0, [sp, #0x24]
.thumb
branch_204b4ac: @ 204b4ac :thumb
	ldr     r0, [sp, #0x14]
	bl      Function_204aec0
	ldr     r1, [sp, #0x18]
	ldrh    r1, [r1, #0x2]
	blx     _s32_div_f
	lsl     r0, r1, #24
	lsr     r1, r0, #23
	ldr     r0, [sp, #0x18]
	add     r0, r0, r1
	ldrh    r0, [r0, #0x4]
	str     r0, [sp, #0x30]
	ldr     r1, [sp, #0x30]
	add     r0, sp, #0x3c
	bl      LoadFromNARC_PlBtdpm

	mov     r7, #0x0
	cmp     r4, #0x0
	ble     branch_204b4f0
	add     r5, sp, #0x6c
branch_204b4d6: @ 204b4d6 :thumb
	ldr     r1, [r5, #0x0]
	add     r0, sp, #0x4c
	bl      LoadFromNARC_PlBtdpm

	add     r0, sp, #0x3c
	ldrh    r1, [r0, #0x10]
	ldrh    r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_204b4f0
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, r4
	blt     branch_204b4d6
.thumb
branch_204b4f0: @ 204b4f0 :thumb
	cmp     r7, r4
	bne     branch_204b58a
	ldr     r0, [sp, #0x94]
	cmp     r0, #0x0
	beq     branch_204b518
	mov     r3, #0x0
	cmp     r6, #0x0
	ble     branch_204b514
	mov     r1, r0
	add     r0, sp, #0x3c
	ldrh    r2, [r0, #0x0]
.thumb
branch_204b506: @ 204b506 :thumb
	ldrh    r0, [r1, #0x0]
	cmp     r2, r0
	beq     branch_204b514
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r3, r6
	blt     branch_204b506
.thumb
branch_204b514: @ 204b514 :thumb
	cmp     r3, r6
	bne     branch_204b58a
.thumb
branch_204b518: @ 204b518 :thumb
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x32
	bge     branch_204b580
	mov     r7, #0x0
	cmp     r4, #0x0
	ble     branch_204b544
	add     r5, sp, #0x6c
branch_204b526: @ 204b526 :thumb
	ldr     r1, [r5, #0x0]
	add     r0, sp, #0x4c
	bl      LoadFromNARC_PlBtdpm

	add     r0, sp, #0x3c
	ldrh    r1, [r0, #0x1c]
	cmp     r1, #0x0
	beq     branch_204b53c
	ldrh    r0, [r0, #0xc]
	cmp     r1, r0
	beq     branch_204b544
branch_204b53c: @ 204b53c :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, r4
	blt     branch_204b526
.thumb
branch_204b544: @ 204b544 :thumb
	cmp     r7, r4
	beq     branch_204b550
	ldr     r0, [sp, #0x2c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x2c]
	b       branch_204b58a
@ 0x204b550

.thumb
branch_204b550: @ 204b550 :thumb
	ldr     r0, [sp, #0x98]
	cmp     r0, #0x0
	beq     branch_204b580
	mov     r3, #0x0
	cmp     r6, #0x0
	ble     branch_204b574
	mov     r1, r0
	add     r0, sp, #0x3c
	ldrh    r2, [r0, #0xc]
.thumb
branch_204b562: @ 204b562 :thumb
	ldrh    r0, [r1, #0x0]
	cmp     r2, r0
	bne     branch_204b56c
	cmp     r0, #0x0
	bne     branch_204b574
.thumb
branch_204b56c: @ 204b56c :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r3, r6
	blt     branch_204b562
.thumb
branch_204b574: @ 204b574 :thumb
	cmp     r3, r6
	beq     branch_204b580
	ldr     r0, [sp, #0x2c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x2c]
	b       branch_204b58a
@ 0x204b580

.thumb
branch_204b580: @ 204b580 :thumb
	ldr     r1, [sp, #0x30]
	ldr     r0, [sp, #0x24]
	.hword  0x1c64 @ add r4, r4, #0x1
	stmia   r0!, {r1}
	str     r0, [sp, #0x24]
.thumb
branch_204b58a: @ 204b58a :thumb
	cmp     r4, r6
	bne     branch_204b4ac
.thumb
branch_204b58e: @ 204b58e :thumb
	ldr     r0, [sp, #0x1c]
	bl      Function_204ae84
	str     r0, [sp, #0x38]
	ldr     r0, [sp, #0x14]
	bl      Function_204aec0
	mov     r5, r0
	ldr     r0, [sp, #0x14]
	bl      Function_204aec0
	lsl     r0, r0, #16
	orr     r0, r5
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x32
	blt     branch_204b5b4
	mov     r0, #0x1
	str     r0, [sp, #0x28]
.thumb
branch_204b5b4: @ 204b5b4 :thumb
	mov     r5, #0x0
	cmp     r4, #0x0
	ble     branch_204b5f4
	add     r7, sp, #0x6c
	add     r6, sp, #0x5c
.thumb
branch_204b5be: @ 204b5be :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x38]
	ldr     r1, [sp, #0x20]
	str     r0, [sp, #0x4]
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x28]
	ldr     r3, [sp, #0x34]
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0xa0]
	str     r0, [sp, #0x10]
	ldr     r2, [r7, #0x0]
	ldr     r0, [sp, #0x14]
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	bl      Function_204b1e8
	stmia   r6!, {r0}
	ldr     r0, [sp, #0x20]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r0, #0x38
	.hword  0x1d3f @ add r7, r7, #0x4
	str     r0, [sp, #0x20]
	cmp     r5, r4
	blt     branch_204b5be
.thumb
branch_204b5f4: @ 204b5f4 :thumb
	ldr     r0, [sp, #0x9c]
	cmp     r0, #0x0
	bne     branch_204b600
	ldr     r0, [sp, #0x28]
	add     sp, #0x7c
	pop     {r4-r7,pc}

branch_204b600: @ 204b600 :thumb
	ldr     r1, [sp, #0x34]
	ldr     r2, [sp, #0x9c]
	str     r1, [r0, #0x0]
	mov     r3, #0x0
	add     r0, sp, #0x6c
	add     r1, sp, #0x5c
branch_204b60c: @ 204b60c :thumb
	ldr     r5, [r0, #0x0]
	ldr     r4, [sp, #0x9c]
	.hword  0x1c5b @ add r3, r3, #0x1
	strh    r5, [r4, #0x4]
	ldr     r4, [r1, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r4, [r2, #0x8]
	ldr     r4, [sp, #0x9c]
	.hword  0x1d09 @ add r1, r1, #0x4
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r4, [sp, #0x9c]
	cmp     r3, #0x2
	blt     branch_204b60c
	ldr     r0, [sp, #0x28]
	add     sp, #0x7c
	pop     {r4-r7,pc}
@ 0x204b62e


thumb_func_start LoadFromNARC_PlBtdtr
LoadFromNARC_PlBtdtr: @ 204b630 :thumb
	mov     r3, r0
	mov     r2, r1
	mov     r1, r3
	ldr     r3, =LoadFromNARC_2+1
	mov     r0, #Pl_Btdtr_Narc
	bx      r3
@ 0x204b63c

.pool
thumb_func_end LoadFromNARC_PlBtdtr



thumb_func_start LoadFromNARC_PlBtdpm
LoadFromNARC_PlBtdpm: @ 204b640 :thumb
	ldr     r3, =LoadFromNARC+1
	mov     r2, r1
	mov     r1, #Pl_Btdpm_Narc
	bx      r3
@ 0x204b648

.pool
thumb_func_end LoadFromNARC_PlBtdpm



.thumb
Function_204b64c: @ 204b64c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, r0
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldr     r1, [r1, #0x0]
	bl      Function_2055f00
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204b680


.thumb
Function_204b680: @ 204b680 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	bl      Function_2055f40
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204b6b4


.thumb
Function_204b6b4: @ 204b6b4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	bl      Function_2055f64
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204b6e8


.thumb
Function_204b6e8: @ 204b6e8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	bl      Function_2055f88
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204b71c


.thumb
Function_204b71c: @ 204b71c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	bl      Function_2055fa8
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204b750


.thumb
ScriptCmd_CheckDeoxis: @ 204b750 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	bl      Function_2055e80
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204b782


.align 2, 0
.thumb
Function_204b784: @ 204b784 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_14
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	bl      Function_2055eac
	mov     r0, r6
	mov     r1, #0x4
	bl      Function_202cf28
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204b7cc


.thumb
Function_204b7cc: @ 204b7cc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	cmp     r0, #0x0
	beq     branch_204b7de
	cmp     r0, #0x1
	beq     branch_204b7e8
	b       branch_204b7f2

branch_204b7de: @ 204b7de :thumb
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	bl      Function_20562ac
	b       branch_204b7f6

branch_204b7e8: @ 204b7e8 :thumb
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	bl      Function_20562d8
	b       branch_204b7f6

branch_204b7f2: @ 204b7f2 :thumb
	bl      ErrorHandling
branch_204b7f6: @ 204b7f6 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x204b7fa


.align 2, 0
.thumb
Function_204b7fc: @ 204b7fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_14
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xa
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, r0
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldr     r1, [r1, #0x0]
	bl      Function_2055e00
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_202cfec
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204b830


.thumb
Function_204b830: @ 204b830 :thumb
	str     r1, [r0, #0x0]
	str     r2, [r0, #0x4]
	str     r3, [r0, #0x8]
	bx      lr
@ 0x204b838


.thumb
Function_204b838: @ 204b838 :thumb
	push    {r3,lr}
	bl      Function_202df18
	bl      Function_202df40
	pop     {r3,pc}
@ 0x204b844


.thumb
Function_204b844: @ 204b844 :thumb
	push    {r3,lr}
	bl      Function_202df18
	bl      Function_202df5c
	pop     {r3,pc}
@ 0x204b850


.thumb
Function_204b850: @ 204b850 :thumb
	push    {r3,lr}
	bl      Function_202df18
	bl      Function_202df78
	pop     {r3,pc}
@ 0x204b85c


.thumb
Function_204b85c: @ 204b85c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	cmp     r0, #0x8
	bls     branch_204b86c
	b       branch_204ba44

branch_204b86c: @ 204b86c :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x204b878

Jumppoints_204b878:
.hword branch_204b88a - Jumppoints_204b878 - 2
.hword branch_204b8b4 - Jumppoints_204b878 - 2
.hword branch_204b8e0 - Jumppoints_204b878 - 2
.hword branch_204b900 - Jumppoints_204b878 - 2
.hword branch_204b93c - Jumppoints_204b878 - 2
.hword branch_204b96e - Jumppoints_204b878 - 2
.hword branch_204b9da - Jumppoints_204b878 - 2
.hword branch_204b898 - Jumppoints_204b878 - 2
.hword branch_204b8a6 - Jumppoints_204b878 - 2

.thumb
branch_204b88a: @ 204b88a :thumb
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	mov     r1, #0x20
	ldr     r0, [r0, #0xc]
	bl      Function_202dee4
	b       branch_204ba44

branch_204b898: @ 204b898 :thumb
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0xc]
	bl      Function_202df04
	b       branch_204ba44

branch_204b8a6: @ 204b8a6 :thumb
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0xc]
	bl      Function_202df04
	b       branch_204ba44

branch_204b8b4: @ 204b8b4 :thumb
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_204b838
	cmp     r0, #0x0
	beq     branch_204b8da
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	b       branch_204ba44

branch_204b8da: @ 204b8da :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	b       branch_204ba44

branch_204b8e0: @ 204b8e0 :thumb
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_204b838
	strh    r0, [r5, #0x0]
	b       branch_204ba44

branch_204b900: @ 204b900 :thumb
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_204b838
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r5, r0, #4
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r7, [pc, #0x120] @ 0x204ba4c, (=JumpTable_20ebe94)
	bl      Function_204b844
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	ldr     r2, [r7, r5]
	blx     r2
	strh    r0, [r6, #0x0]
	b       branch_204ba44

branch_204b93c: @ 204b93c :thumb
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_204b838
	.hword  0x1e40 @ sub r0, r0, #0x1
	ldr     r1, [pc, #0x100] @ 0x204ba4c, (=JumpTable_20ebe94)
	lsl     r0, r0, #4
	add     r5, r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_204b844
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r2, [r5, #0x4]
	blx     r2
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	bl      Function_204b850
	b       branch_204ba44

branch_204b96e: @ 204b96e :thumb
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_204b838
	.hword  0x1e40 @ sub r0, r0, #0x1
	ldr     r1, [pc, #0xd0] @ 0x204ba4c, (=JumpTable_20ebe94)
	lsl     r0, r0, #4
	add     r5, r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_204b844
	add     r4, #0x80
	mov     r3, r0
	ldr     r1, [r4, #0x0]
	ldr     r2, [r6, #0x0]
	add     r0, sp, #0x14
	bl      Function_204b830
	ldr     r2, [sp, #0x0]
	ldr     r3, [r5, #0x8]
	add     r0, sp, #0x14
	mov     r1, r7
	blx     r3
	b       branch_204ba44

branch_204b9da: @ 204b9da :thumb
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_204b838
	.hword  0x1e40 @ sub r0, r0, #0x1
	ldr     r1, [pc, #0x64] @ 0x204ba4c, (=JumpTable_20ebe94)
	lsl     r0, r0, #4
	add     r5, r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_204b844
	add     r4, #0x80
	mov     r3, r0
	ldr     r1, [r4, #0x0]
	ldr     r2, [r6, #0x0]
	add     r0, sp, #0x8
	bl      Function_204b830
	ldr     r2, [sp, #0x4]
	ldr     r3, [r5, #0xc]
	add     r0, sp, #0x8
	mov     r1, r7
	blx     r3
branch_204ba44: @ 204ba44 :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x204ba4a

.align 2
.word JumpTable_20ebe94 @ 0x204ba4c



.thumb
Function_204ba50: @ 204ba50 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x6
	bge     branch_204ba64
	mov     r0, #0x1
	pop     {r3,pc}

branch_204ba64: @ 204ba64 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204ba68


.thumb
Function_204ba68: @ 204ba68 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r1, r0

	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]

	ldr     r1, [r1, #0xc]
	ldr     r2, =MANAPHY @ 0x1ea
	mov     r0, #0x20
	bl      Function_2054930

	add     sp, #0x8
	pop     {r3,pc}
@ 0x204ba84

.align 2
.pool



.thumb
Function_204ba88: @ 204ba88 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x204baa8, (=0x17b)
	strh    r0, [r1, #0x0]
	mov     r0, #0xd
	strh    r0, [r2, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_200b498
	pop     {r4,pc}
@ 0x204baa8

.word 0x17b @ 0x204baa8



.thumb
Function_204baac: @ 204baac :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r7, r0

	bl      Function_204b844
	str     r0, [sp, #0x14]

	ldr     r0, [r7, #0xc]
	bl      LoadTrainerDataAdress
	str     r0, [sp, #0x10]

	ldr     r0, [r7, #0xc]
	bl      LoadFlagAdress
	str     r0, [sp, #0xc]

	mov     r0, #0x0
	str     r0, [sp, #0x8]

	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x8]
	mov     r5, r0
	add     r4, r0, #0x4

	mov     r0, r4
	mov     r1, #PKMNDATA_EGGLOCATION2
	add     r5, #0xf0
	bl      GetPkmnData

	mov     r1, #0x0 @ PKMNDATA_PERSONALITYVALUE
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, r1
	bl      GetPkmnData
	str     r0, [sp, #0x18]

	mov     r0, r4
	mov     r1, #PKMNDATA_OTID
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r6, r0

	blx     OS_GetTick
	bl      ARNG_Step
	mov     r1, r0
	ldr     r0, [sp, #0x18]
	str     r1, [sp, #0x38]
	cmp     r0, #0x0
	beq     branch_204bb30
	cmp     r0, #0x1
	bne     branch_204bb2e
	mov     r0, r6
	bl      CheckIfShinyPkmn
	cmp     r0, #0x0
	beq     branch_204bb30
branch_204bb18: @ 204bb18 :thumb
	ldr     r0, [sp, #0x38]
	bl      ARNG_Step
	mov     r1, r0
	mov     r0, r6
	str     r1, [sp, #0x38]
	bl      CheckIfShinyPkmn
	cmp     r0, #0x0
	bne     branch_204bb18
	b       branch_204bb30

branch_204bb2e: @ 204bb2e :thumb
	str     r0, [sp, #0x38]
branch_204bb30: @ 204bb30 :thumb
	ldr     r1, [sp, #0x38]
	mov     r0, r4
	bl      CopyPkmnData
	mov     r0, r4
	bl      Call_DecidePkmnGender
	str     r0, [sp, #0x34]

	mov     r0, r4
	mov     r1, #0x6f
	add     r2, sp, #0x34
	bl      SetPkmnData

	mov     r0, r4
	mov     r1, #PKMNDATA_IVSPD
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x1c]

	mov     r0, r4
	mov     r1, #PKMNDATA_IVSPA
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x20]

	mov     r0, r4
	mov     r1, #PKMNDATA_IVSPE
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x24]

	mov     r0, r4
	mov     r1, #PKMNDATA_IVDEF
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x28]

	mov     r0, r4
	mov     r1, #PKMNDATA_IVHP
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r6, r0

	mov     r0, r4
	mov     r1, #PKMNDATA_IVATK
	mov     r2, #0x0
	bl      GetPkmnData
	add     r1, r6, r0

	ldr     r0, [sp, #0x28]
	add     r1, r0, r1
	ldr     r0, [sp, #0x24]
	add     r1, r0, r1
	ldr     r0, [sp, #0x20]
	add     r1, r0, r1
	ldr     r0, [sp, #0x1c]
	add     r0, r0, r1
	str     r0, [sp, #0x34]
	bne     branch_204bc22

	bl      PRNG
	mov     r6, r0
	mov     r0, #0x1f
	and     r0, r6
	str     r0, [sp, #0x38]

	mov     r0, r4
	mov     r1, #PKMNDATA_IVHP
	add     r2, sp, #0x38
	bl      SetPkmnData

	mov     r0, #0x3e
	lsl     r0, r0, #4
	and     r0, r6
	lsr     r0, r0, #5
	str     r0, [sp, #0x38]

	mov     r0, r4
	mov     r1, #PKMNDATA_IVATK
	add     r2, sp, #0x38
	bl      SetPkmnData

	mov     r0, #0x1f
	lsl     r0, r0, #10
	and     r0, r6
	lsr     r0, r0, #10
	str     r0, [sp, #0x38]

	mov     r0, r4
	mov     r1, #PKMNDATA_IVDEF
	add     r2, sp, #0x38
	bl      SetPkmnData

	bl      PRNG
	mov     r6, r0
	mov     r0, #0x1f
	and     r0, r6
	str     r0, [sp, #0x38]

	mov     r0, r4
	mov     r1, #PKMNDATA_IVSPE
	add     r2, sp, #0x38
	bl      SetPkmnData

	mov     r0, #0x3e
	lsl     r0, r0, #4
	and     r0, r6
	lsr     r0, r0, #5
	str     r0, [sp, #0x38]

	mov     r0, r4
	mov     r1, #PKMNDATA_IVSPA
	add     r2, sp, #0x38
	bl      SetPkmnData

	mov     r0, #0x1f
	lsl     r0, r0, #10
	and     r0, r6
	lsr     r0, r0, #10
	str     r0, [sp, #0x38]

	mov     r0, r4
	mov     r1, #PKMNDATA_IVSPD
	add     r2, sp, #0x38
	bl      SetPkmnData

branch_204bc22: @ 204bc22 :thumb
	ldr     r0, [r7, #0xc]
	bl      LoadVariableAreaAdress_18
	mov     r6, r0

	mov     r0, r4
	mov     r1, #PKMNDATA_SINNOHRIBBON_RED
	mov     r2, #0x0
	bl      GetPkmnData

	cmp     r0, #0x0
	beq     branch_204bc42
	mov     r0, #0x49
	bl      Function_2092444
	ldrb    r1, [r5, #0x0]
	strb    r1, [r6, r0]
branch_204bc42: @ 204bc42 :thumb
	mov     r0, r4
	mov     r1, #PKMNDATA_SINNOHRIBBON_GREEN
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_204bc5a
	mov     r0, #0x4a
	bl      Function_2092444
	ldrb    r1, [r5, #0x1]
	strb    r1, [r6, r0]
branch_204bc5a: @ 204bc5a :thumb

	mov     r0, r4
	mov     r1, #PKMNDATA_SINNOHRIBBON_BLUE
	mov     r2, #0x0
	bl      GetPkmnData

	cmp     r0, #0x0
	beq     branch_204bc72
	mov     r0, #0x4b
	bl      Function_2092444
	ldrb    r1, [r5, #0x2]
	strb    r1, [r6, r0]
branch_204bc72: @ 204bc72 :thumb

	mov     r0, r4
	mov     r1, #PKMNDATA_SINNOHRIBBON_FESTIVAL
	mov     r2, #0x0
	bl      GetPkmnData

	cmp     r0, #0x0
	beq     branch_204bc8a
	mov     r0, #0x4c
	bl      Function_2092444
	ldrb    r1, [r5, #0x3]
	strb    r1, [r6, r0]
branch_204bc8a: @ 204bc8a :thumb

	mov     r0, r4
	mov     r1, #PKMNDATA_SINNOHRIBBON_CARNIVAL
	mov     r2, #0x0
	bl      GetPkmnData

	cmp     r0, #0x0
	beq     branch_204bca2
	mov     r0, #0x4d
	bl      Function_2092444
	ldrb    r1, [r5, #0x4]
	strb    r1, [r6, r0]
branch_204bca2: @ 204bca2 :thumb

	mov     r0, r4
	mov     r1, #PKMNDATA_SINNOHRIBBON_CLASSIC
	mov     r2, #0x0
	bl      GetPkmnData

	cmp     r0, #0x0
	beq     branch_204bcba
	mov     r0, #0x4e
	bl      Function_2092444
	ldrb    r1, [r5, #0x5]
	strb    r1, [r6, r0]
branch_204bcba: @ 204bcba :thumb

	mov     r0, r4
	mov     r1, #PKMNDATA_SINNOHRIBBON_PREMIER
	mov     r2, #0x0
	bl      GetPkmnData

	cmp     r0, #0x0
	beq     branch_204bcd2
	mov     r0, #0x4f
	bl      Function_2092444
	ldrb    r1, [r5, #0x6]
	strb    r1, [r6, r0]
branch_204bcd2: @ 204bcd2 :thumb

	mov     r0, r4
	mov     r1, #PKMNDATA_HOENNRIBBON_MARINE
	mov     r2, #0x0
	bl      GetPkmnData

	cmp     r0, #0x0
	beq     branch_204bcea
	mov     r0, #0x19
	bl      Function_2092444
	ldrb    r1, [r5, #0x7]
	strb    r1, [r6, r0]
branch_204bcea: @ 204bcea :thumb

	mov     r0, r4
	mov     r1, #PKMNDATA_HOENNRIBBON_LAND
	mov     r2, #0x0
	bl      GetPkmnData

	cmp     r0, #0x0
	beq     branch_204bd02
	mov     r0, #0x1a
	bl      Function_2092444
	ldrb    r1, [r5, #0x8]
	strb    r1, [r6, r0]
branch_204bd02: @ 204bd02 :thumb

	mov     r0, r4
	mov     r1, #PKMNDATA_HOENNRIBBON_SKY
	mov     r2, #0x0
	bl      GetPkmnData

	cmp     r0, #0x0
	beq     branch_204bd1a
	mov     r0, #0x1b
	bl      Function_2092444
	ldrb    r1, [r5, #0x9]
	strb    r1, [r6, r0]
branch_204bd1a: @ 204bd1a :thumb
	ldr     r0, [sp, #0x14]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_204bd72
	ldr     r0, [sp, #0x10]
	mov     r1, #0x20
	bl      Function_2025f04
	mov     r5, r0
	ldr     r0, [sp, #0x10]
	bl      GetTrainerID
	str     r0, [sp, #0x30]

	ldr     r0, [sp, #0x10]
	bl      GetGender
	str     r0, [sp, #0x2c]

	mov     r0, #0x20
	bl      AllocPkmnData
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	bl      Function_20775ec

	ldr     r0, [sp, #0x8]
	mov     r1, #PKMNDATA_91
	mov     r2, r5
	bl      SetPkmnData

	ldr     r0, [sp, #0x8]
	mov     r1, #PKMNDATA_OTID
	add     r2, sp, #0x30
	bl      SetPkmnData

	ldr     r0, [sp, #0x8]
	mov     r1, #PKMNDATA_FEMALEOTGENDER
	add     r2, sp, #0x2c
	bl      SetPkmnData

	mov     r0, r5
	ldr     r4, [sp, #0x8]
	bl      Function_20237bc_FreeMsg
branch_204bd72: @ 204bd72 :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, #0x2
	bl      Function_2017070
	mov     r3, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	mov     r0, r4
	mov     r2, #0x4
	bl      Function_209304c

	mov     r0, r4
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData

	ldr     r1, =NrOfPkmn
	cmp     r0, r1
	bne     branch_204bdba

	mov     r0, r4
	mov     r1, #PKMNDATA_FATEFULENCOUNTERED
	mov     r2, #0x0
	bl      GetPkmnData

	cmp     r0, #0x1
	bne     branch_204bdba
	ldr     r0, [sp, #0xc]
	bl      Function_206b5f8
	cmp     r0, #0x0
	bne     branch_204bdba
	ldr     r0, [sp, #0xc]
	mov     r1, #0x1
	bl      Function_206b608
branch_204bdba: @ 204bdba :thumb
	mov     r0, r4
	bl      Function_207418c
	ldr     r0, [r7, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r4
	bl      CopyPkmnDataToParty
	cmp     r0, #0x0
	beq     branch_204bdd8
	ldr     r0, [r7, #0xc]
	mov     r1, r4
	bl      Function_202f180
branch_204bdd8: @ 204bdd8 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_204bde2
	bl      free
branch_204bde2: @ 204bde2 :thumb
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x204bde6

.align 2
.pool



.thumb
Function_204bdec: @ 204bdec :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r6, r2
	bl      Function_204b844
	mov     r7, r0
	ldr     r0, [pc, #0x28] @ 0x204be28, (=0x17b)
	strh    r0, [r4, #0x0]
	mov     r0, #0x7
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_200b498
	add     r0, r7, #0x4
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      Function_200b578
	pop     {r3-r7,pc}
@ 0x204be28

.word 0x17b @ 0x204be28



.thumb
Function_204be2c: @ 204be2c :thumb
	ldr     r0, [pc, #0x8] @ 0x204be38, (=0x17b)
	strh    r0, [r1, #0x0]
	mov     r0, #0x4
	strh    r0, [r2, #0x0]
	bx      lr
@ 0x204be36

.align 2
.word 0x17b @ 0x204be38



.thumb
Function_204be3c: @ 204be3c :thumb
	ldr     r3, [pc, #0x0] @ 0x204be40, (=Function_204baac+1)
	bx      r3
@ 0x204be40

.word Function_204baac+1 @ =0x204baad, 0x204be40



.thumb
Function_204be44: @ 204be44 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r6, r2
	bl      Function_204b844
	mov     r7, r0
	ldr     r0, [pc, #0x28] @ 0x204be80, (=0x17b)
	strh    r0, [r4, #0x0]
	mov     r0, #0x8
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_200b498
	add     r0, r7, #0x4
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      Function_200b538
	pop     {r3-r7,pc}
@ 0x204be80

.word 0x17b @ 0x204be80



.thumb
Function_204be84: @ 204be84 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdressItemList
	mov     r4, r0
	mov     r0, r5
	bl      Function_204b844
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	mov     r2, #0x1
	mov     r3, #0x20
	bl      CheckStoreItem
	pop     {r3-r5,pc}
@ 0x204beaa


.align 2, 0
.thumb
Function_204beac: @ 204beac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdressItemList
	mov     r4, r0
	mov     r0, r5
	bl      Function_204b844
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	mov     r2, #0x1
	mov     r3, #0x20
	bl      TakeItem
	pop     {r3-r5,pc}
@ 0x204bed2


.align 2, 0
.thumb
Function_204bed4: @ 204bed4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r6, r2
	bl      Function_204b844
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #16
	lsr     r7, r0, #16
	ldr     r0, [pc, #0x24] @ 0x204bf10, (=0x17b)
	strh    r0, [r4, #0x0]
	mov     r0, #0x9
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_200b498
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	mov     r2, r7
	bl      Function_200b70c
	pop     {r3-r7,pc}
@ 0x204bf0e

.align 2
.word 0x17b @ 0x204bf10



.thumb
Function_204bf14: @ 204bf14 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r0, [r0, #0xc]
	mov     r6, r2
	bl      LoadVariableAreaAdressItemList
	ldr     r0, [r5, #0x0]
	bl      Function_204b844
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	ldr     r0, [pc, #0x10] @ 0x204bf44, (=0x17b)
	strh    r0, [r4, #0x0]
	mov     r0, #0x5
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, #0x4]
	bl      Function_200b70c
	pop     {r4-r6,pc}
@ 0x204bf42

.align 2
.word 0x17b @ 0x204bf44



.thumb
Function_204bf48: @ 204bf48 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x204bf4c


.thumb
Function_204bf4c: @ 204bf4c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_204b844
	mov     r1, r0
	ldr     r0, [r4, #0xc]
	bl      Function_202613c
	pop     {r4,pc}
@ 0x204bf5e


.align 2, 0
.thumb
Function_204bf60: @ 204bf60 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r6, r2
	bl      Function_204b844
	mov     r7, r0
	ldr     r0, [pc, #0x40] @ 0x204bfb4, (=0x17b)
	strh    r0, [r4, #0x0]
	mov     r0, #0xa
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_200b498
	mov     r0, r7
	mov     r1, #0x20
	bl      Function_202605c
	mov     r4, r0
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_200b48c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x204bfb2

.align 2
.word 0x17b @ 0x204bfb4



.thumb
Function_204bfb8: @ 204bfb8 :thumb
	ldr     r0, [pc, #0x8] @ 0x204bfc4, (=0x17b)
	strh    r0, [r1, #0x0]
	mov     r0, #0x6
	strh    r0, [r2, #0x0]
	bx      lr
@ 0x204bfc2

.align 2
.word 0x17b @ 0x204bfc4



.thumb
Function_204bfc8: @ 204bfc8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_c
	bl      Function_20289a0
	cmp     r0, #0xc8
	bge     branch_204bfdc
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x204bfdc

.thumb
branch_204bfdc: @ 204bfdc :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204bfe0

.thumb
Function_204bfe0: @ 204bfe0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_204b844
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_c
	ldr     r1, [r4, #0x0]
	bl      Function_202895c
	pop     {r3-r5,pc}
@ 0x204bff8

.thumb
Function_204bff8: @ 204bff8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r6, r2
	bl      Function_204b844
	ldr     r7, [r0, #0x0]
	ldr     r0, [pc, #0x24] @ 0x204c030, (=0x17b)
	strh    r0, [r4, #0x0]
	mov     r0, #0xb
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_200b498
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	mov     r2, r7
	bl      Function_200bc80
	pop     {r3-r7,pc}
@ 0x204c02e

.align 2
.word 0x17b @ 0x204c030



.thumb
Function_204c034: @ 204c034 :thumb
	ldr     r0, [pc, #0x8] @ 0x204c040, (=0x17b)
	strh    r0, [r1, #0x0]
	mov     r0, #0x6
	strh    r0, [r2, #0x0]
	bx      lr
@ 0x204c03e

.align 2
.word 0x17b @ 0x204c040



.thumb
Function_204c044: @ 204c044 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_204b844
	ldr     r4, [r0, #0x4]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	beq     branch_204c05e
	cmp     r0, #0x2
	beq     branch_204c06e
	cmp     r0, #0x3
	beq     branch_204c072
	b       branch_204c076
@ 0x204c05e

.thumb
branch_204c05e: @ 204c05e :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_15
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_202cb70
	pop     {r3-r5,pc}
@ 0x204c06e

.thumb
branch_204c06e: @ 204c06e :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x204c072

.thumb
branch_204c072: @ 204c072 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x204c076

.thumb
branch_204c076: @ 204c076 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204c07a


.align 2, 0


.thumb
Function_204c07c: @ 204c07c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_204b844
	ldr     r4, [r0, #0x4]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	beq     branch_204c096
	cmp     r0, #0x2
	beq     branch_204c0a6
	cmp     r0, #0x3
	beq     branch_204c0ba
	pop     {r3-r5,pc}
@ 0x204c096

.thumb
branch_204c096: @ 204c096 :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_15
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_202cae0
	pop     {r3-r5,pc}
@ 0x204c0a6

.thumb
branch_204c0a6: @ 204c0a6 :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_e
	bl      Function_2029d04
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_2029e2c
	pop     {r3-r5,pc}
@ 0x204c0ba

.thumb
branch_204c0ba: @ 204c0ba :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_e
	bl      Function_2029d04
	mov     r1, r4
	bl      Function_2029efc
	pop     {r3-r5,pc}
@ 0x204c0cc

.thumb
Function_204c0cc: @ 204c0cc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r6, r2
	bl      Function_204b844
	ldr     r2, [r0, #0x4]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	beq     branch_204c0ec
	cmp     r0, #0x2
	beq     branch_204c0f6
	cmp     r0, #0x3
	beq     branch_204c100
	b       branch_204c108
@ 0x204c0ec

.thumb
branch_204c0ec: @ 204c0ec :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      Function_200be64
	b       branch_204c108
@ 0x204c0f6

.thumb
branch_204c0f6: @ 204c0f6 :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      Function_200bfac
	b       branch_204c108
@ 0x204c100

.thumb
branch_204c100: @ 204c100 :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      Function_200c01c
.thumb
branch_204c108: @ 204c108 :thumb
	ldr     r0, [pc, #0x18] @ 0x204c124, (=0x17b)
	strh    r0, [r4, #0x0]
	mov     r0, #0xc
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_200b498
	pop     {r4-r6,pc}
@ 0x204c124

.word 0x17b @ 0x204c124



.thumb
Function_204c128: @ 204c128 :thumb
	ldr     r0, [pc, #0x8] @ 0x204c134, (=0x17b)
	strh    r0, [r1, #0x0]
	mov     r0, #0x6
	strh    r0, [r2, #0x0]
	bx      lr
@ 0x204c132

.align 2
.word 0x17b @ 0x204c134



.thumb
Function_204c138: @ 204c138 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdressItemList
	mov     r4, r0
	mov     r0, r5
	bl      Function_204b844
	ldr     r1, [pc, #0xc] @ 0x204c158, (=0x1c6)
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x20
	bl      CheckStoreItem
	pop     {r3-r5,pc}
@ 0x204c158

.word 0x1c6 @ 0x204c158
.thumb
Function_204c15c: @ 204c15c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdressItemList
	mov     r5, r0
	mov     r0, r4
	bl      Function_204b844
	ldr     r0, [r4, #0xc]
	bl      LoadFlagAdress
	mov     r4, r0
	ldr     r1, [pc, #0x14] @ 0x204c18c, (=0x1c6)
	mov     r0, r5
	mov     r2, #0x1
	mov     r3, #0x20
	bl      TakeItem
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_206b144
	pop     {r3-r5,pc}
@ 0x204c18c

.word 0x1c6 @ 0x204c18c
.thumb
Function_204c190: @ 204c190 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r6, r2
	bl      Function_204b844
	ldr     r0, [pc, #0x24] @ 0x204c1c4, (=0x17b)
	strh    r0, [r4, #0x0]
	mov     r0, #0xe
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_200b498
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0xc] @ 0x204c1c8, (=0x1c6)
	mov     r1, #0x1
	bl      Function_200b70c
	pop     {r4-r6,pc}
@ 0x204c1c4

.word 0x17b @ 0x204c1c4
.word 0x1c6 @ 0x204c1c8
.thumb
Function_204c1cc: @ 204c1cc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r0, [r0, #0xc]
	mov     r6, r2
	bl      LoadVariableAreaAdressItemList
	ldr     r0, [r5, #0x0]
	bl      Function_204b844
	ldr     r2, [pc, #0x14] @ 0x204c1f8, (=0x17b)
	mov     r0, #0x5
	strh    r2, [r4, #0x0]
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	add     r2, #0x4b
	bl      Function_200b70c
	pop     {r4-r6,pc}
@ 0x204c1f6

.align 2
.word 0x17b @ 0x204c1f8



.thumb
Function_204c1fc: @ 204c1fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdressItemList
	mov     r4, r0
	mov     r0, r5
	bl      Function_204b844
	mov     r1, #0x71
	mov     r0, r4
	lsl     r1, r1, #2
	mov     r2, #0x1
	mov     r3, #0x20
	bl      CheckStoreItem
	pop     {r3-r5,pc}
@ 0x204c21e


.align 2, 0
.thumb
Function_204c220: @ 204c220 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdressItemList
	mov     r5, r0
	mov     r0, r4
	bl      Function_204b844
	ldr     r0, [r4, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x71
	mov     r4, r0
	mov     r0, r5
	lsl     r1, r1, #2
	mov     r2, #0x1
	mov     r3, #0x20
	bl      TakeItem
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_206b144
	mov     r0, r4
	bl      Function_206b618
	cmp     r0, #0x0
	bne     branch_204c262
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_206b628
branch_204c262: @ 204c262 :thumb
	pop     {r3-r5,pc}
@ 0x204c264


.thumb
Function_204c264: @ 204c264 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r6, r2
	bl      Function_204b844
	ldr     r0, [pc, #0x28] @ 0x204c29c, (=0x17b)
	strh    r0, [r4, #0x0]
	mov     r0, #0xf
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_200b498
	mov     r2, #0x71
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	lsl     r2, r2, #2
	bl      Function_200b70c
	pop     {r4-r6,pc}
@ 0x204c29a

.align 2
.word 0x17b @ 0x204c29c



.thumb
Function_204c2a0: @ 204c2a0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r0, [r0, #0xc]
	mov     r6, r2
	bl      LoadVariableAreaAdressItemList
	ldr     r0, [r5, #0x0]
	bl      Function_204b844
	ldr     r2, [pc, #0x14] @ 0x204c2cc, (=0x17b)
	mov     r0, #0x5
	strh    r2, [r4, #0x0]
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	add     r2, #0x49
	bl      Function_200b70c
	pop     {r4-r6,pc}
@ 0x204c2ca

.align 2
.word 0x17b @ 0x204c2cc



.thumb
Function_204c2d0: @ 204c2d0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdressItemList
	mov     r4, r0
	mov     r0, r5
	bl      Function_204b844
	ldr     r1, [pc, #0xc] @ 0x204c2f0, (=0x1d3 NrOfMoves)
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x20
	bl      CheckStoreItem
	pop     {r3-r5,pc}
@ 0x204c2f0

.word 0x1d3 @ NrOfMoves 0x204c2f0



.thumb
Function_204c2f4: @ 204c2f4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdressItemList
	mov     r5, r0
	mov     r0, r4
	bl      Function_204b844
	ldr     r0, [r4, #0xc]
	bl      LoadFlagAdress
	mov     r4, r0
	ldr     r1, [pc, #0x14] @ 0x204c324, (=0x1d3 NrOfMoves)
	mov     r0, r5
	mov     r2, #0x1
	mov     r3, #0x20
	bl      TakeItem
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_206b144
	pop     {r3-r5,pc}
@ 0x204c324

.word 0x1d3 @ NrOfMoves 0x204c324



.thumb
Function_204c328: @ 204c328 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r6, r2
	bl      Function_204b844
	ldr     r0, [pc, #0x24] @ 0x204c35c, (=0x17b)
	strh    r0, [r4, #0x0]
	mov     r0, #0x11
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_200b498
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0xc] @ 0x204c360, (=0x1d3 NrOfMoves)
	mov     r1, #0x1
	bl      Function_200b70c
	pop     {r4-r6,pc}
@ 0x204c35c

.word 0x17b @ 0x204c35c
.word 0x1d3 @ NrOfMoves 0x204c360



.thumb
Function_204c364: @ 204c364 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r0, [r0, #0xc]
	mov     r6, r2
	bl      LoadVariableAreaAdressItemList
	ldr     r0, [r5, #0x0]
	bl      Function_204b844
	ldr     r2, [pc, #0x14] @ 0x204c390, (=0x17b)
	mov     r0, #0x5
	strh    r2, [r4, #0x0]
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	add     r2, #0x58
	bl      Function_200b70c
	pop     {r4-r6,pc}
@ 0x204c38e

.align 2
.word 0x17b @ 0x204c390



.thumb
Function_204c394: @ 204c394 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdressItemList
	mov     r4, r0
	mov     r0, r5
	bl      Function_204b844
	ldr     r1, [pc, #0xc] @ 0x204c3b4, (=0x1c7)
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x20
	bl      CheckStoreItem
	pop     {r3-r5,pc}
@ 0x204c3b4

.word 0x1c7 @ 0x204c3b4
.thumb
Function_204c3b8: @ 204c3b8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdressItemList
	mov     r5, r0
	mov     r0, r4
	bl      Function_204b844
	ldr     r0, [r4, #0xc]
	bl      LoadFlagAdress
	mov     r4, r0
	ldr     r1, [pc, #0x14] @ 0x204c3e8, (=0x1c7)
	mov     r0, r5
	mov     r2, #0x1
	mov     r3, #0x20
	bl      TakeItem
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_206b144
	pop     {r3-r5,pc}
@ 0x204c3e8

.word 0x1c7 @ 0x204c3e8
.thumb
Function_204c3ec: @ 204c3ec :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r6, r2
	bl      Function_204b844
	ldr     r0, [pc, #0x24] @ 0x204c420, (=0x17b)
	strh    r0, [r4, #0x0]
	mov     r0, #0x10
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_200b498
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0xc] @ 0x204c424, (=0x1c7)
	mov     r1, #0x1
	bl      Function_200b70c
	pop     {r4-r6,pc}
@ 0x204c420

.word 0x17b @ 0x204c420
.word 0x1c7 @ 0x204c424
.thumb
Function_204c428: @ 204c428 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r0, [r0, #0xc]
	mov     r6, r2
	bl      LoadVariableAreaAdressItemList
	ldr     r0, [r5, #0x0]
	bl      Function_204b844
	ldr     r2, [pc, #0x14] @ 0x204c454, (=0x17b)
	mov     r0, #0x5
	strh    r2, [r4, #0x0]
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	add     r2, #0x4c
	bl      Function_200b70c
	pop     {r4-r6,pc}
@ 0x204c452

.align 2
.word 0x17b @ 0x204c454



.thumb
Function_204c458: @ 204c458 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_5
	mov     r4, r0
	mov     r0, r5
	bl      Function_204b844
	mov     r0, r4
	bl      Function_20567e0
	pop     {r3-r5,pc}
@ 0x204c472


.align 2, 0
.thumb
Function_204c474: @ 204c474 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_5
	mov     r4, r0
	mov     r0, r5
	bl      Function_204b844
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	bl      Function_20567f0
	pop     {r3-r5,pc}
@ 0x204c492


.align 2, 0
.thumb
Function_204c494: @ 204c494 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r6, r2
	bl      Function_204b844
	mov     r7, r0
	ldr     r0, [pc, #0x24] @ 0x204c4cc, (=0x17b)
	strh    r0, [r4, #0x0]
	mov     r0, #0x13
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_200b498
	ldr     r0, [r5, #0x4]
	ldr     r2, [r7, #0x0]
	mov     r1, #0x1
	bl      Function_200b928
	pop     {r3-r7,pc}
@ 0x204c4ca

.align 2
.word 0x17b @ 0x204c4cc



.thumb
Function_204c4d0: @ 204c4d0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r6, r2
	bl      Function_204b844
	ldr     r0, [pc, #0x1c] @ 0x204c4fc, (=0x17b)
	strh    r0, [r4, #0x0]
	mov     r0, #0x14
	strh    r0, [r6, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_200b498
	pop     {r4-r6,pc}
@ 0x204c4fa

.align 2
.word 0x17b @ 0x204c4fc



.thumb
ScriptCmd_StopGreatMarsh: @ 204c500 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	cmp     r0, #0x0
	bne     branch_204c536
	mov     r0, r4
	bl      Function_206ae6c
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	bl      Function_20562f8
	b       branch_204c54e

branch_204c536: @ 204c536 :thumb
	cmp     r0, #0x1
	bne     branch_204c54a
	mov     r0, r4
	bl      Function_206ae7c
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	bl      Function_2056328
	b       branch_204c54e

branch_204c54a: @ 204c54a :thumb
	bl      ErrorHandling
branch_204c54e: @ 204c54e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204c552


.align 2, 0
.thumb
ScriptCmd_CheckPokeCatchingShow: @ 204c554 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_20
	mov     r6, r0
	mov     r0, #0x20
	bl      AllocPkmnData
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r6
	bl      Function_202f028
	cmp     r0, #0x6
	bne     branch_204c58c
	mov     r0, #0x1
	b       branch_204c58e

branch_204c58c: @ 204c58c :thumb
	mov     r0, #0x0
branch_204c58e: @ 204c58e :thumb
	strh    r0, [r4, #0x0]

	mov     r0, r5
	bl      free

	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204c59a


.align 2, 0
.thumb
ScriptCmd_CloseCatchingShow: @ 204c59c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0

	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_20
	mov     r7, r0

	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_25
	str     r0, [sp, #0x8]

	mov     r0, #0x20
	bl      AllocPkmnData
	mov     r4, r0

	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	str     r0, [sp, #0x4]

	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokedexDataAdress
	mov     r5, #0x0
branch_204c5e0: @ 204c5e0 :thumb
	mov     r0, r7
	mov     r1, r5
	mov     r2, r4
	bl      Function_202f000

	mov     r0, #0x20
	str     r0, [sp, #0x0]

	ldr     r1, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x2
	mov     r3, #0x0
	bl      Function_209304c

	mov     r0, r4
	bl      Function_2076b10_Dummy

	mov     r1, r0
	ldr     r0, [sp, #0x8]
	bl      Function_2079868
	cmp     r0, #0x0
	bne     branch_204c610
	bl      ErrorHandling
branch_204c610: @ 204c610 :thumb

	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0xc]
	bl      Function_202f180
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x6
	blt     branch_204c5e0

	mov     r0, r4
	bl      free

	mov     r0, r7
	bl      Function_202ef04

	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x204c636


.align 2, 0
.thumb
ScriptCmd_CheckCatchingShowRecords: @ 204c638 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	cmp     r6, #0x3
	bhi     branch_204c6c4
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x204c672

Jumppoints_204c672:
.hword branch_204c67a - Jumppoints_204c672 - 2
.hword branch_204c686 - Jumppoints_204c672 - 2
.hword branch_204c692 - Jumppoints_204c672 - 2
.hword branch_204c69e - Jumppoints_204c672 - 2
.thumb
branch_204c67a: @ 204c67a :thumb
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	bl      Function_20563d0
	strh    r0, [r5, #0x0]
	b       branch_204c6c4

branch_204c686: @ 204c686 :thumb
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	bl      Function_20563e0
	strh    r0, [r5, #0x0]
	b       branch_204c6c4

branch_204c692: @ 204c692 :thumb
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	bl      Function_20563f0
	strh    r0, [r5, #0x0]
	b       branch_204c6c4

branch_204c69e: @ 204c69e :thumb
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_20563e0
	mov     r6, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      Function_20563d0
	add     r4, #0x80
	mov     r7, r0
	ldr     r0, [r4, #0x0]
	bl      Function_20563f0
	add     r0, r7, r0
	add     r0, r6, r0
	strh    r0, [r5, #0x0]
branch_204c6c4: @ 204c6c4 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204c6c8


.thumb
ScriptCmd_ShowCoins: @ 204c6c8 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x26
	bl      ScriptHandler_GetSomeScriptAddresses
	lsl     r1, r6, #24
	lsl     r2, r7, #24
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_5_21dd020
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204c718


.thumb
ScriptCmd_HideCoins: @ 204c718 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x26
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      Function_5_21dd084
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204c72e


thumb_func_start ScriptCmd_UpdateCoins
ScriptCmd_UpdateCoins: @ 204c730 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	mov     r1, #0x26
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, r0

	add     r4, #ScriptHandler_OverWorldData
	ldr     r0, [r4]
	ldr     r1, [r1, #0x0]
	bl      Function_5_21dd098
	mov     r0, #0x0
	pop     {r4,pc}
thumb_func_end ScriptCmd_UpdateCoins


thumb_func_start ScriptCmd_CheckCoins
ScriptCmd_CheckCoins: @ 204c750 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	ldr     r0, [r0, #OverWorldData_VariableAreaAdress]
	bl      LoadPlayerDataAdress_24
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r5]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0

	mov     r0, r4
	bl      CheckCoins
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
thumb_func_end ScriptCmd_CheckCoins


thumb_func_start ScriptCmd_GiveCoins
ScriptCmd_GiveCoins: @ 204c780 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	ldr     r0, [r0, #OverWorldData_VariableAreaAdress]
	bl      LoadPlayerDataAdress_24
	mov     r5, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r4]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r5
	bl      GiveCoins
	mov     r0, #0x0
	pop     {r3-r5,pc}
thumb_func_end ScriptCmd_GiveCoins


.thumb
ScriptCmd_TakeCoins: @ 204c7ac :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	ldr     r0, [r0, #OverWorldData_VariableAreaAdress]
	bl      LoadPlayerDataAdress_24
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r4]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r5
	bl      TakeCoins
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204c7d8


.thumb
ScriptCmd_TakeCoinsCasino: @ 204c7d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPlayerDataAdress_24
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r1, r0
	ldrh    r1, [r1, #0x0]
	mov     r0, r4
	bl      TakeCoins
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204c806


.align 2, 0
.thumb
Function_204c808: @ 204c808 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	mov     r0, r5
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	ldr     r0, [r5, #0xc]
	bl      LoadPlayerDataAdress_24
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadWord
	mov     r4, r0
	mov     r0, r6
	bl      CheckCoins
	cmp     r0, r4
	bhs     branch_204c84c
	mov     r0, #0x0
	b       branch_204c84e

branch_204c84c: @ 204c84c :thumb
	mov     r0, #0x1
branch_204c84e: @ 204c84e :thumb
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204c854


.thumb
ScriptCmd_CheckCoinsCasino: @ 204c854 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	mov     r0, r4
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	ldr     r0, [r4, #0xc]
	bl      LoadPlayerDataAdress_24
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	ldrh    r5, [r0, #0x0]
	mov     r0, r6
	bl      CheckCoins
	cmp     r0, r5
	bhs     branch_204c8a2
	mov     r0, #0x0
	b       branch_204c8a4

branch_204c8a2: @ 204c8a2 :thumb
	mov     r0, #0x1
branch_204c8a4: @ 204c8a4 :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204c8aa


.align 2, 0
.thumb
ScriptCmd_CheckCoinsCasino2: @ 204c8ac :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPlayerDataAdress_24
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r6
	bl      Function_202b5d8
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204c8ee


thumb_func_start ScriptCmd_GiveMoney
ScriptCmd_GiveMoney: @ 204c8f0 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	mov     r5, r0

	mov     r0, r4
	bl      ScriptHandler_LoadWord
	mov     r1, r0
	mov     r0, r5
	bl      GiveMoney
	mov     r0, #0x0
	pop     {r3-r5,pc}
thumb_func_end ScriptCmd_GiveMoney


.thumb
ScriptCmd_TakeMoney: @ 204c914 :thumb
	push    {r3-r5,lr}
	mov     r4, r0

	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      GetOverWorldData_VariableAreaAdresses

	bl      LoadTrainerDataAdress
	mov     r5, r0

	mov     r0, r4
	bl      ScriptHandler_LoadWord
	mov     r1, r0

	mov     r0, r5
	bl      TakeMoney

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204c938


.thumb
ScriptCmd_TakeMoneyDCare: @ 204c938 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r1, r0
	mov     r0, r5
	bl      TakeMoney
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204c966


.align 2, 0
.thumb
ScriptCmd_CheckMoney: @ 204c968 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadWord
	mov     r4, r0
	mov     r0, r6
	bl      GetMoney
	cmp     r0, r4
	bhs     branch_204c9a4
	mov     r0, #0x0
	b       branch_204c9a6

branch_204c9a4: @ 204c9a4 :thumb
	mov     r0, #0x1
branch_204c9a6: @ 204c9a6 :thumb
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204c9ac


.thumb
ScriptCmd_CheckMoneyDCare: @ 204c9ac :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r6
	bl      GetMoney
	cmp     r0, r4
	bhs     branch_204c9f2
	mov     r0, #0x0
	b       branch_204c9f4

branch_204c9f2: @ 204c9f2 :thumb
	mov     r0, #0x1
branch_204c9f4: @ 204c9f4 :thumb
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204c9fa


.align 2, 0
.thumb
ScriptCmd_ShowMoney: @ 204c9fc :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x27
	bl      ScriptHandler_GetSomeScriptAddresses
	lsl     r1, r6, #24
	lsl     r2, r7, #24
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_5_21dceb0
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204ca4c


.thumb
ScriptCmd_HideMoney: @ 204ca4c :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x27
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r0, [r0, #0x0]
	bl      Function_5_21dcf58
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204ca62


.align 2, 0
.thumb
ScriptCmd_UpdateMoney: @ 204ca64 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x27
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, r0
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, #0x0]
	bl      Function_5_21dcf6c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204ca82


.align 2, 0
.thumb
ScriptCmd_ActDcareFunction: @ 204ca84 :thumb
	push    {r3-r5,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	ldr     r5, [r0, #0xc]
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	mov     r0, r5
	bl      LoadVariableAreaAdress_8
	ldr     r1, [r4, #0x0]
	bl      Function_5_21e72bc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204caa4


.thumb
ScriptCmd_StorePDCareNum: @ 204caa4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r4, [r1, #0xc]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x8
	bl      LoadVariableAreaAdress
	bl      Function_5_21e73c8
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204cad2


.align 2, 0
.thumb
ScriptCmd_ActEggDayCMan: @ 204cad4 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x8
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress
	bl      Function_5_21e6b40
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204caea


.align 2, 0
.thumb
ScriptCmd_DeactEggDayCMan: @ 204caec :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	mov     r1, #0x8
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress
	mov     r6, r0
	ldr     r0, [r5, #0xc]
	bl      LoadPokePartyAdress
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	mov     r2, r0
	mov     r0, r6
	mov     r1, r5
	bl      Function_5_21e6ea8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204cb20


.thumb
ScriptCmd_TakePokemonDCare: @ 204cb20 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	mov     r1, #0xf
	mov     r0, r5
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r7, r0
	mov     r0, r4
	ldr     r6, [r5, #0xc]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r6
	mov     r1, #0x8
	bl      LoadVariableAreaAdress
	mov     r6, r0
	ldr     r0, [r5, #0xc]
	bl      LoadPokePartyAdress
	lsl     r3, r4, #24
	ldr     r1, [r7, #0x0]
	mov     r2, r6
	lsr     r3, r3, #24
	bl      Function_5_21e64f8
	ldr     r1, [sp, #0x0]
	strh    r0, [r1, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204cb7e


.align 2, 0
.thumb
ScriptCmd_SetVarPokeAndMoneyDCare: @ 204cb80 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	mov     r1, #0xf
	mov     r0, r5
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r7, r0
	mov     r0, r4
	ldr     r5, [r5, #0xc]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x8
	bl      LoadVariableAreaAdress
	lsl     r1, r4, #24
	ldr     r2, [r7, #0x0]
	lsr     r1, r1, #24
	bl      Function_5_21e6630
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204cbd2


.align 2, 0
.thumb
ScriptCmd_SetVarPokeAndLevelDCare: @ 204cbd4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	ldr     r4, [r0, #0xc]
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x8
	bl      LoadVariableAreaAdress
	ldr     r2, [r6, #0x0]
	mov     r1, r5
	bl      Function_5_21e6640
	strh    r0, [r7, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204cc22


.align 2, 0
.thumb
ScriptCmd_SetVarPokeChosenDCare: @ 204cc24 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	mov     r1, #0xf
	mov     r0, r5
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      LoadPokePartyAdress
	ldr     r2, [r6, #0x0]
	mov     r1, r7
	bl      Function_5_21e73a0
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204cc76


.align 2, 0
.thumb
ScriptCmd_GivePokeDCare: @ 204cc78 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r1, r6
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	ldr     r5, [r4, #0xc]
	bl      ScriptHandler_LoadHWord
	add     r6, #0x80
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	ldr     r0, [r4, #0xc]
	bl      LoadPokePartyAdress
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x8
	bl      LoadVariableAreaAdress
	lsl     r1, r6, #24
	mov     r2, r0
	mov     r0, r4
	lsr     r1, r1, #24
	mov     r3, r5
	bl      Function_5_21e6358
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204ccb6


.align 2, 0
.thumb
ScriptCmd_SetVarDataDayCare: @ 204ccb8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	ldr     r5, [r0, #0xc]
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0xc]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      LoadVariableAreaAdress_8
	lsl     r1, r4, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x0]
	ldr     r1, [r6, #0x0]
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0xc]
	str     r1, [sp, #0x4]
	lsl     r1, r7, #24
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_5_21e7308
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x204cd44


.thumb
ScriptCmd_StorePokeDCareLove: @ 204cd44 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r4, [r1, #0xc]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x8
	bl      LoadVariableAreaAdress
	bl      Function_5_21e7420
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204cd72


.align 2, 0
.thumb
ScriptCmd_CheckStatusSolaceonEvent: @ 204cd74 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r4, [r1, #0xc]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x8
	bl      LoadVariableAreaAdress
	bl      Function_2026234
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204cda2


.align 2, 0
.thumb
Function_204cda4: @ 204cda4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204cdba


.align 2, 0
.thumb
Function_204cdbc: @ 204cdbc :thumb
	mov     r0, #0x0
	bx      lr
@ 0x204cdc0


.thumb
Function_204cdc0: @ 204cdc0 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x204cdc4


.thumb
Function_204cdc4: @ 204cdc4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204cdda


.align 2, 0
.thumb
ScriptCmd_StartAmity: @ 204cddc :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b218
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204cdf0


.thumb
Function_204cdf0: @ 204cdf0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b228
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204ce1a


.align 2, 0
.thumb
Function_204ce1c: @ 204ce1c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	bl      PRNG
	mov     r1, #0x64
	blx     _s32_div_f
	lsl     r0, r1, #16
	lsr     r0, r0, #16
	cmp     r0, #0xf
	bhs     branch_204ce5a
	mov     r0, #0x0
	b       branch_204ce9c

branch_204ce5a: @ 204ce5a :thumb
	cmp     r0, #0x1e
	bhs     branch_204ce62
	mov     r0, #0x1
	b       branch_204ce9c

branch_204ce62: @ 204ce62 :thumb
	cmp     r0, #0x2d
	bhs     branch_204ce6a
	mov     r0, #0x2
	b       branch_204ce9c

branch_204ce6a: @ 204ce6a :thumb
	cmp     r0, #0x3c
	bhs     branch_204ce72
	mov     r0, #0x3
	b       branch_204ce9c

branch_204ce72: @ 204ce72 :thumb
	cmp     r0, #0x46
	bhs     branch_204ce7a
	mov     r0, #0x4
	b       branch_204ce9c

branch_204ce7a: @ 204ce7a :thumb
	cmp     r0, #0x50
	bhs     branch_204ce82
	mov     r0, #0x5
	b       branch_204ce9c

branch_204ce82: @ 204ce82 :thumb
	cmp     r0, #0x58
	bhs     branch_204ce8a
	mov     r0, #0x6
	b       branch_204ce9c

branch_204ce8a: @ 204ce8a :thumb
	cmp     r0, #0x5d
	bhs     branch_204ce92
	mov     r0, #0x7
	b       branch_204ce9c

branch_204ce92: @ 204ce92 :thumb
	cmp     r0, #0x62
	bhs     branch_204ce9a
	mov     r0, #0x8
	b       branch_204ce9c

branch_204ce9a: @ 204ce9a :thumb
	mov     r0, #0x9
branch_204ce9c: @ 204ce9c :thumb
	mov     r2, #0x4b
	lsl     r2, r2, #2
	cmp     r4, r2
	bgt     branch_204ced4
	bge     branch_204cf44
	cmp     r4, #0x36
	bgt     branch_204cec4
	bge     branch_204cf3c
	cmp     r4, #0x19
	bgt     branch_204ceb4
	beq     branch_204cf40
	b       branch_204cf48

branch_204ceb4: @ 204ceb4 :thumb
	cmp     r4, #0x27
	bgt     branch_204cf48
	cmp     r4, #0x23
	blt     branch_204cf48
	beq     branch_204cf40
	cmp     r4, #0x27
	beq     branch_204cf44
	b       branch_204cf48

branch_204cec4: @ 204cec4 :thumb
	cmp     r4, #0xff
	bgt     branch_204cecc
	beq     branch_204cf44
	b       branch_204cf48

branch_204cecc: @ 204cecc :thumb
	sub     r2, #0xf
	cmp     r4, r2
	beq     branch_204cf44
	b       branch_204cf48

branch_204ced4: @ 204ced4 :thumb
	mov     r1, r2
	add     r1, #0x75
	cmp     r4, r1
	bgt     branch_204cf18
	mov     r1, r2
	add     r1, #0x75
	cmp     r4, r1
	bge     branch_204cf40
	mov     r1, r2
	add     r1, #0x57
	cmp     r4, r1
	bgt     branch_204cef4
	add     r2, #0x57
	cmp     r4, r2
	beq     branch_204cf38
	b       branch_204cf48

branch_204cef4: @ 204cef4 :thumb
	add     r2, #0x58
	sub     r1, r4, r2
	cmp     r1, #0x7
	bhi     branch_204cf48
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x204cf08

Jumppoints_204cf08:
.hword branch_204cf38 - Jumppoints_204cf08 - 2
.hword branch_204cf38 - Jumppoints_204cf08 - 2
.hword branch_204cf30 - Jumppoints_204cf08 - 2
.hword branch_204cf30 - Jumppoints_204cf08 - 2
.hword branch_204cf30 - Jumppoints_204cf08 - 2
.hword branch_204cf34 - Jumppoints_204cf08 - 2
.hword branch_204cf34 - Jumppoints_204cf08 - 2
.hword branch_204cf34 - Jumppoints_204cf08 - 2

.thumb
branch_204cf18: @ 204cf18 :thumb
	ldr     r1, [pc, #0x44] @ 0x204cf60, (=0x1ab)
	cmp     r4, r1
	bgt     branch_204cf28
	bge     branch_204cf3c
	.hword  0x1e89 @ sub r1, r1, #0x2
	cmp     r4, r1
	beq     branch_204cf3c
	b       branch_204cf48

branch_204cf28: @ 204cf28 :thumb
	add     r1, #0xd
	cmp     r4, r1
	beq     branch_204cf40
	b       branch_204cf48

branch_204cf30: @ 204cf30 :thumb
	mov     r2, #0x0
	b       branch_204cf4a

branch_204cf34: @ 204cf34 :thumb
	mov     r2, #0x1
	b       branch_204cf4a

branch_204cf38: @ 204cf38 :thumb
	mov     r2, #0x2
	b       branch_204cf4a

branch_204cf3c: @ 204cf3c :thumb
	mov     r2, #0x3
	b       branch_204cf4a

branch_204cf40: @ 204cf40 :thumb
	mov     r2, #0x4
	b       branch_204cf4a

branch_204cf44: @ 204cf44 :thumb
	mov     r2, #0x5
	b       branch_204cf4a

branch_204cf48: @ 204cf48 :thumb
	mov     r2, #0x0
branch_204cf4a: @ 204cf4a :thumb
	mov     r3, r2
	mov     r1, #0x14
	mul     r3, r1
	ldr     r2, [pc, #0x10] @ 0x204cf64, (=Unknown_20ebf84)
	lsl     r1, r0, #1
	add     r0, r2, r3
	ldrh    r0, [r1, r0]
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204cf5e

.align 2
.word 0x1ab @ 0x204cf60
.word Unknown_20ebf84 @ 0x204cf64



.thumb
Function_204cf68: @ 204cf68 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	bl      PRNG
	mov     r1, #0xf
	and     r0, r1
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204cf8a


.align 2, 0
.thumb
Function_204cf8c: @ 204cf8c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	cmp     r5, #0x9
	bhs     branch_204cfba
	mov     r1, #0x0
	b       branch_204cfbc

branch_204cfba: @ 204cfba :thumb
	mov     r1, #0x1
branch_204cfbc: @ 204cfbc :thumb
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204cfc2


.align 2, 0
.thumb
Function_204cfc4: @ 204cfc4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	ldr     r1, [pc, #0xc] @ 0x204cff8, (=Unknown_20ebf64)
	lsl     r2, r5, #1
	ldrh    r1, [r1, r2]
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204cff6

.align 2
.word Unknown_20ebf64 @ 0x204cff8



/* GivePokemon	pkmn=0, lvl=0, item=0, res=0
Input:
r0: Ptr to ScriptHandler-Struct
*/
thumb_func_start ScriptCmd_GivePokemon
ScriptCmd_GivePokemon: @ 204cffc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14

	mov     r4, r0
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	ldr     r0, [r0, #OverWorldData_MapData]
	ldr     r0, [r0, #0x0]
	bl      GetMapName
	mov     r6, r0

	@ Load 1. Parameter (Pokemon Species)
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r5, [r0]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0xc]

	@ Load 2. Parameter (Level)
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0

	@ Load 3. Parameter (Item)
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x10]         @ Item

	@ Load 4. Parameter (ResultVariable)
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r4]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadPokePartyAdress

	ldr     r0, [sp, #0x10]         @ Item
	lsl     r3, r7, #24
	str     r0, [sp, #0x0]          @ Item
	str     r6, [sp, #0x4]          @ GetMapName

	mov     r0, #0x18
	str     r0, [sp, #0x8]

	ldr     r1, [r5, #OverWorldData_VariableAreaAdress]
	ldr     r2, [sp, #0xc]
	mov     r0, #0xb
	lsr     r3, r3, #24
	bl      GivePokemon
	strh    r0, [r4, #0x0]          @ Return the result of the ScriptFunction
    
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
thumb_func_end ScriptCmd_GivePokemon


thumb_func_start ScriptCmd_CheckPokeEgg
ScriptCmd_CheckPokeEgg: @ 204d08c :thumb
	push    {r4-r6,lr}
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0

	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	ldr     r0, [r5, #0xc]
	bl      LoadPokePartyAdress

	ldrh    r1, [r6, #0x0]
	bl      GetAdrOfPkmnInParty

	mov     r1, #PKMNDATA_ISEGG
	mov     r2, #0x0
	mov     r5, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_204d0e0

	mov     r0, r5
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData
	b       branch_204d0e2

branch_204d0e0: @ 204d0e0 :thumb
	mov     r0, #0x0
branch_204d0e2: @ 204d0e2 :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
thumb_func_end ScriptCmd_CheckPokeEgg


.thumb
ScriptCmd_ComparePokeNick: @ 204d0e8 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	add     r0, #0x80
	ldr     r5, [r0, #0x0]
	mov     r0, r5
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	mov     r7, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	ldr     r0, [r5, #0xc]
	bl      LoadPokePartyAdress
	ldrh    r1, [r6, #0x0]
	bl      GetAdrOfPkmnInParty
	mov     r1, #PKMNDATA_OTID
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	mov     r0, r7
	bl      GetTrainerID
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r5, r0
	bne     branch_204d14c
	mov     r0, #0x0
	b       branch_204d14e

branch_204d14c: @ 204d14c :thumb
	mov     r0, #0x1
branch_204d14e: @ 204d14e :thumb
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204d154


thumb_func_start ScriptCmd_GiveEgg
ScriptCmd_GiveEgg: @ 204d154 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0

	add     r0, #0x80
	ldr     r4, [r0, #0x0]
	ldr     r0, [r4, #0xc]
	bl      LoadTrainerDataAdress
	mov     r7, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x8]

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0

	ldr     r0, [r4, #0xc]
	bl      LoadPokePartyAdress
	mov     r6, r0

	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x6
	bhs     branch_204d1d4

	mov     r0, #0xb
	bl      AllocPkmnData
	mov     r4, r0

	bl      ClearCompletePkmnDataStructure

	mov     r0, #0x1
	mov     r1, r5
	bl      Function_2017070

	mov     r1, #0x3
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, r7
	bl      InitEggData

	mov     r0, r6
	mov     r1, r4
	bl      CopyPkmnDataToParty

	mov     r0, r4
	bl      free
branch_204d1d4: @ 204d1d4 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
thumb_func_end ScriptCmd_GiveEgg


thumb_func_start ScriptCmd_98
ScriptCmd_98: @ 204d1dc :thumb
	push    {r3-r7,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r7, r0

	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress

	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_2054988

	mov     r0, #0x0
	pop     {r3-r7,pc}
thumb_func_end ScriptCmd_98


thumb_func_start ScriptCmd_CheckMove
ScriptCmd_CheckMove: @ 204d234 :thumb
	push    {r3-r7,lr}
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r7, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	ldr     r0, [r7, #0xc]
	bl      LoadPokePartyAdress

	mov     r1, r4
	bl      GetAdrOfPkmnInParty

	mov     r2, #0x0
	mov     r1, #PKMNDATA_ISEGG
	mov     r4, r0
	strh    r2, [r6, #0x0]
	bl      GetPkmnData

	cmp     r0, #0x0
	beq     branch_204d296

	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_204d296: @ 204d296 :thumb
	mov     r0, r4
	mov     r1, #PKMNDATA_MOVE1
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r5, r0
	beq     branch_204d2ce

	mov     r0, r4
	mov     r1, #PKMNDATA_MOVE2
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r5, r0
	beq     branch_204d2ce

	mov     r0, r4
	mov     r1, #PKMNDATA_MOVE3
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r5, r0
	beq     branch_204d2ce

	mov     r0, r4
	mov     r1, #PKMNDATA_MOVE4
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r5, r0
	bne     branch_204d2d2

branch_204d2ce: @ 204d2ce :thumb
	mov     r0, #0x1
	strh    r0, [r6, #0x0]

branch_204d2d2: @ 204d2d2 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
thumb_func_end ScriptCmd_CheckMove


.align 2, 0
.thumb
ScriptCmd_CheckPlaceStored: @ 204d2d8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	str     r1, [sp, #0x4]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0

	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress

	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	ldr     r1, [pc, #0x74] @ 0x204d390, (=0x6)
	ldr     r0, [sp, #0x0]
	ldr     r6, [pc, #0x74] @ 0x204d394, (=0x0)
	strh    r1, [r0, #0x0]
	beq     branch_204d388
branch_204d324: @ 204d324 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress

	mov     r1, r6
	bl      GetAdrOfPkmnInParty

	mov     r1, #PKMNDATA_ISEGG
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_204d37e

	mov     r0, r4
	mov     r1, #PKMNDATA_MOVE1
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r5, r0
	beq     branch_204d378

	mov     r0, r4
	mov     r1, #PKMNDATA_MOVE2
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r5, r0
	beq     branch_204d378

	mov     r0, r4
	mov     r1, #PKMNDATA_MOVE3
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r5, r0
	beq     branch_204d378

	mov     r0, r4
	mov     r1, #PKMNDATA_MOVE4
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r5, r0
	bne     branch_204d37e

branch_204d378: @ 204d378 :thumb
	ldr     r0, [sp, #0x0]
	strh    r6, [r0, #0x0]
	b       branch_204d388

branch_204d37e: @ 204d37e :thumb
	add     r0, r6, #0x1
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	cmp     r6, r7
	blo     branch_204d324

branch_204d388: @ 204d388 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x204d38e

.align 2
.word 0x6 @ 0x204d390
.word 0x0 @ 0x204d394



.thumb
ScriptCmd_CheckIsPokemonPoisoned: @ 204d398 :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter

	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress

	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	bl      CheckIsPokemonPoisoned
	strh    r0, [r4, #0x0]

	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204d3dc


.thumb
ScriptCmd_CheckPokemonLevel: @ 204d3dc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r7, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0

	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x4]

	mov     r0, r4
	bl      ScriptHandler_LoadHWord

	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]

	ldr     r0, [r7, #0xc]
	bl      LoadPokePartyAdress

	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r4, #0x0
	ldr     r0, [sp, #0x4]
	mov     r5, r4
	strh    r4, [r0, #0x0]
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	bls     branch_204d466
branch_204d42a: @ 204d42a :thumb
	ldr     r0, [r7, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r4
	bl      GetAdrOfPkmnInParty

	mov     r1, #PKMNDATA_ISEGG
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_204d45a

	mov     r0, r6
	mov     r1, #PKMNDATA_LEVEL
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [sp, #0x0]
	cmp     r0, r1
	bhi     branch_204d45a
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
branch_204d45a: @ 204d45a :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	ldr     r0, [sp, #0x8]
	cmp     r4, r0
	blo     branch_204d42a
branch_204d466: @ 204d466 :thumb
	ldr     r0, [sp, #0x4]
	strh    r5, [r0, #0x0]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x204d470


.thumb
ScriptCmd_CheckPokeLevel: @ 204d470 :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	mov     r1, r5
	add     r1, #0x80
	ldr     r6, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0

	ldr     r0, [r6, #0xc]
	bl      LoadPokePartyAdress

	mov     r1, r5
	bl      GetAdrOfPkmnInParty

	mov     r2, #0x0
	mov     r1, #PKMNDATA_ISEGG
	mov     r5, r0
	strh    r2, [r4, #0x0]
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_204d4c6

	mov     r0, r5
	mov     r1, #PKMNDATA_LEVEL
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x0]
branch_204d4c6: @ 204d4c6 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204d4ca


.align 2, 0
.thumb
ScriptCmd_StorePokeNature: @ 204d4cc :thumb
	push    {r4-r6,lr}
	mov     r6, r0

	mov     r1, r6
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	mov     r0, r6
	bl      ScriptHandler_LoadHWord
	add     r6, #0x80
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	ldr     r0, [r5, #0xc]
	bl      LoadPokePartyAdress

	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r6, r0
	blt     branch_204d512
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	pop     {r4-r6,pc}

branch_204d512: @ 204d512 :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadPokePartyAdress

	mov     r1, r6
	bl      GetAdrOfPkmnInParty

	mov     r1, #PKMNDATA_ISEGG
	mov     r2, #0x0
	mov     r5, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_204d532
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
	pop     {r4-r6,pc}

branch_204d532: @ 204d532 :thumb
	mov     r0, r5
	bl      Function_2075bcc
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204d53e


.align 2, 0
.thumb
ScriptCmd_CheckPokeNature: @ 204d540 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r7, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x4]

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]

	ldr     r0, [r7, #0xc]
	bl      LoadPokePartyAdress

	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	ldr     r1, [pc, #0x44] @ 0x204d5c4, (=0xff)
	ldr     r0, [sp, #0x4]
	ldr     r5, [pc, #0x44] @ 0x204d5c8, (=0x0)
	strh    r1, [r0, #0x0]
	beq     branch_204d5be
branch_204d588: @ 204d588 :thumb
	ldr     r0, [r7, #0xc]
	bl      LoadPokePartyAdress

	mov     r1, r5
	bl      GetAdrOfPkmnInParty

	mov     r1, #PKMNDATA_ISEGG
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_204d5b4

	mov     r0, r4
	bl      Function_2075bcc
	ldr     r1, [sp, #0x0]
	cmp     r1, r0
	bne     branch_204d5b4
	ldr     r0, [sp, #0x4]
	strh    r5, [r0, #0x0]
	b       branch_204d5be

branch_204d5b4: @ 204d5b4 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, r6
	blo     branch_204d588
branch_204d5be: @ 204d5be :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x204d5c4

.word 0xff @ 0x204d5c4
.word 0x0 @ 0x204d5c8



.thumb
ScriptCmd_StoreHappyPoke: @ 204d5cc :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0

	ldr     r0, [r4, #0xc]
	bl      LoadPokePartyAdress

	mov     r1, r5
	bl      GetAdrOfPkmnInParty

	mov     r1, #PKMNDATA_FRIENDSHIP
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r6, #0x0]

	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204d614


.thumb
ScriptCmd_StoreHappyStatus: @ 204d614 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0

	mov     r1, r5
	add     r1, #0x80
	ldr     r6, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter

	add     r5, #0x80
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      GetMapName
	mov     r7, r0

	ldr     r0, [r6, #0xc]
	bl      LoadPokePartyAdress
	ldr     r1, [sp, #0x0]
	bl      GetAdrOfPkmnInParty

	mov     r1, #PKMNDATA_FRIENDSHIP
	mov     r2, #0x0
	mov     r5, r0
	bl      GetPkmnData
	add     r1, sp, #0x4
	strh    r0, [r1, #0x0]
	cmp     r4, #0x0
	beq     branch_204d6c2

	mov     r0, r5
	mov     r1, #PKMNDATA_ITEM
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	mov     r1, #ITEMDATA_BATTLEEFFECT
	mov     r2, #0xb
	bl      GetItemData
	cmp     r0, #0x35
	bne     branch_204d69a
	mov     r0, #150
	mul     r0, r4
	mov     r1, #100
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r4, r0, #16
branch_204d69a: @ 204d69a :thumb
	mov     r0, r5
	mov     r1, #PKMNDATA_POKEBALL
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0xb
	bne     branch_204d6ae
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
branch_204d6ae: @ 204d6ae :thumb
	mov     r0, r5
	mov     r1, #PKMNDATA_EGGLOCATION2
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r7, r0
	bne     branch_204d6c2
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
branch_204d6c2: @ 204d6c2 :thumb
	add     r0, sp, #0x4
	ldrh    r1, [r0, #0x0]
	add     r1, r1, r4
	strh    r1, [r0, #0x0]
	ldrh    r1, [r0, #0x0]
	cmp     r1, #0xff
	bls     branch_204d6d4
	mov     r1, #0xff
	strh    r1, [r0, #0x0]
branch_204d6d4: @ 204d6d4 :thumb
	mov     r0, r5
	mov     r1, #PKMNDATA_FRIENDSHIP
	add     r2, sp, #0x4
	bl      SetPkmnData
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x204d6e4


.thumb
Function_204d6e4: @ 204d6e4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0

	mov     r1, r5
	add     r1, #0x80
	ldr     r6, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0

	ldr     r0, [r6, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r5
	bl      GetAdrOfPkmnInParty

	mov     r1, #PKMNDATA_FRIENDSHIP
	mov     r2, #0x0
	mov     r5, r0
	bl      GetPkmnData

	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	ldrh    r0, [r1, #0x0]
	cmp     r4, r0
	bls     branch_204d738
	mov     r0, #0x0
	b       branch_204d73a

branch_204d738: @ 204d738 :thumb
	sub     r0, r0, r4
branch_204d73a: @ 204d73a :thumb
	strh    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, #PKMNDATA_FRIENDSHIP
	add     r2, sp, #0x0
	bl      SetPkmnData
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x204d74c


.thumb
Function_204d74c: @ 204d74c :thumb
	push    {r3-r7,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r6, r0

	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r7
	bl      GetAdrOfPkmnInParty
	add     r4, #0x13
	mov     r1, r4  @ 0x13 = PKMNDATA_COOLCONTEST
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204d7aa


.align 2, 0
.thumb
ScriptCmd_CheckFirstPokeParty: @ 204d7ac :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0

	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_205e1b4
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204d7d2


.align 2, 0
.thumb
ScriptCmd_CheckPokeType: @ 204d7d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0

	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r7, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0

	ldr     r0, [r4, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r5
	bl      GetAdrOfPkmnInParty

	mov     r4, r0
	mov     r1, #PKMNDATA_b1
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r6, #0x0]

	mov     r0, r4
	mov     r1, #PKMNDATA_b2
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r7, #0x0]

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204d83e


.align 2, 0
.thumb
ScriptCmd_CheckPartyNumber: @ 204d840 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]

	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0

	ldr     r0, [r4, #0xc]
	bl      LoadPokePartyAdress
	bl      GetNrOfPkmnInParty
	strh    r0, [r5, #0x0]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204d86a


.align 2, 0
.thumb
ScriptCmd_CheckPartyNumberUnion: @ 204d86c :thumb
	push    {r3-r7,lr}
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r6, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]

	ldr     r0, [r6, #0xc]
	bl      LoadPokePartyAdress
	bl      GetNrOfPkmnInParty
	mov     r5, #0x0
	mov     r7, r0
	mov     r4, r5
	cmp     r7, #0x0
	ble     branch_204d8ba
branch_204d89a: @ 204d89a :thumb
	ldr     r0, [r6, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, #PKMNDATA_ISEGG
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_204d8b4
	.hword  0x1c64 @ add r4, r4, #0x1
branch_204d8b4: @ 204d8b4 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_204d89a
branch_204d8ba: @ 204d8ba :thumb
	ldr     r0, [sp, #0x0]
	strh    r4, [r0, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204d8c2


.align 2, 0
.thumb
ScriptCmd_CheckPokePartyHealth: @ 204d8c4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r7, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x4]

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]

	ldr     r0, [r7, #0xc]
	bl      LoadPokePartyAdress
	bl      GetNrOfPkmnInParty
	mov     r5, #0x0
	mov     r4, r5
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	ble     branch_204d940
branch_204d908: @ 204d908 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r5, r0
	beq     branch_204d938
	ldr     r0, [r7, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r5
	bl      GetAdrOfPkmnInParty

	mov     r1, #PKMNDATA_ISEGG
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_204d938

	mov     r0, r6
	mov     r1, #PKMNDATA_CURHP
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_204d938
	.hword  0x1c64 @ add r4, r4, #0x1
branch_204d938: @ 204d938 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_204d908
branch_204d940: @ 204d940 :thumb
	ldr     r0, [sp, #0x4]
	strh    r4, [r0, #0x0]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x204d94a


.align 2, 0
.thumb
ScriptCmd_CheckPokePartyNumDCare: @ 204d94c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r7, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]

	ldr     r0, [r7, #0xc]
	bl      LoadVariableAreaAdress_25
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0xc]
	bl      LoadPokePartyAdress
	bl      GetNrOfPkmnInParty
	mov     r5, #0x0
	mov     r4, r5
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	ble     branch_204d9b6
branch_204d984: @ 204d984 :thumb
	ldr     r0, [r7, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r5
	bl      GetAdrOfPkmnInParty

	mov     r1, #PKMNDATA_ISEGG
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_204d9ae

	mov     r0, r6
	mov     r1, #PKMNDATA_CURHP
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_204d9ae
	.hword  0x1c64 @ add r4, r4, #0x1
branch_204d9ae: @ 204d9ae :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blt     branch_204d984
branch_204d9b6: @ 204d9b6 :thumb
	ldr     r0, [sp, #0x4]
	bl      Function_2079bec
	add     r1, r4, r0
	ldr     r0, [sp, #0x0]
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x204d9c8


.thumb
ScriptCmd_CheckEggUnion: @ 204d9c8 :thumb
	push    {r3-r7,lr}
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r6, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]

	ldr     r0, [r6, #0xc]
	bl      LoadPokePartyAdress
	bl      GetNrOfPkmnInParty
	mov     r5, #0x0
	mov     r7, r0
	mov     r4, r5
	cmp     r7, #0x0
	ble     branch_204da16
branch_204d9f6: @ 204d9f6 :thumb
	ldr     r0, [r6, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r5
	bl      GetAdrOfPkmnInParty

	mov     r1, #PKMNDATA_ISEGG
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_204da10
	.hword  0x1c64 @ add r4, r4, #0x1
branch_204da10: @ 204da10 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_204d9f6
branch_204da16: @ 204da16 :thumb
	ldr     r0, [sp, #0x0]
	strh    r4, [r0, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204da1e


.align 2, 0
.thumb
ScriptCmd_StorePokerus: @ 204da20 :thumb
	push    {r3-r7,lr}
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]

	ldr     r0, [r5, #0xc]
	bl      LoadPokePartyAdress
	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	ldr     r4, [pc, #0x34] @ 0x204da80, (=0x0)
	ldr     r0, [sp, #0x0]
	strh    r4, [r0, #0x0]
	beq     branch_204da7c
	mov     r7, #PKMNDATA_POKERUS
branch_204da52: @ 204da52 :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, r7
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_204da72
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	strh    r1, [r0, #0x0]
	b       branch_204da7c

branch_204da72: @ 204da72 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, r6
	blo     branch_204da52
branch_204da7c: @ 204da7c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204da80

.word 0x0 @ 0x204da80



.thumb
Function_204da84: @ 204da84 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, #PKMNDATA_GENDER
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204dacc


.thumb
ScriptCmd_CheckMoveNumDelete: @ 204dacc :thumb
	push    {r4-r6,lr}
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r6, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	ldr     r0, [r6, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #PKMNDATA_ISEGG
	mov     r2, #0x0
	mov     r6, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_204db1a
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	pop     {r4-r6,pc}

branch_204db1a: @ 204db1a :thumb
	mov     r4, #0x0
	mov     r0, r6
	mov     r1, #PKMNDATA_MOVE1
	mov     r2, r4
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_204db30
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
branch_204db30: @ 204db30 :thumb
	mov     r0, r6
	mov     r1, #PKMNDATA_MOVE2
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_204db44
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
branch_204db44: @ 204db44 :thumb
	mov     r0, r6
	mov     r1, #PKMNDATA_MOVE3
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_204db58
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
branch_204db58: @ 204db58 :thumb
	mov     r0, r6
	mov     r1, #PKMNDATA_MOVE4
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_204db6c
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
branch_204db6c: @ 204db6c :thumb
	strh    r4, [r5, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204db72


.align 2, 0
.thumb
ScriptCmd_StoreDeleteMove: @ 204db74 :thumb
	push    {r4-r6,lr}
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	ldr     r0, [r5, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r1, r4
	bl      Function_2077408
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204dbb8


.thumb
ScriptCmd_CheckDeleteMove: @ 204dbb8 :thumb
	push    {r3-r7,lr}
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	ldr     r0, [r5, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r7
	bl      GetAdrOfPkmnInParty
	add     r4, #PKMNDATA_MOVE1
	mov     r1, r4
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204dc16


.align 2, 0
.thumb
Function_204dc18: @ 204dc18 :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0

	ldr     r0, [r4, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, #PKMNDATA_ITEM
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r6, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204dc60


.thumb
ScriptCmd_1f0: @ 204dc60 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	mov     r1, r5
	add     r1, #0x80
	ldr     r4, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0

	ldr     r0, [r4, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r2, #0x0
	add     r1, sp, #0x0
	strh    r2, [r1, #0x0]
	mov     r1, #PKMNDATA_ITEM
	add     r2, sp, #0x0
	bl      SetPkmnData
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204dc98


.thumb
ScriptCmd_CheckPokemonParty2: @ 204dc98 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r7, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x4]

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]

	ldr     r0, [r7, #0xc]
	bl      LoadPokePartyAdress
	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	ldr     r5, [pc, #0x4c] @ 0x204dd24, (=0x0)
	ldr     r0, [sp, #0x4]
	strh    r5, [r0, #0x0]
	beq     branch_204dd1e
branch_204dcde: @ 204dcde :thumb
	ldr     r0, [r7, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r5
	bl      GetAdrOfPkmnInParty

	mov     r1, #PKMNDATA_ISEGG
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_204dd14

	mov     r0, r4
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	bne     branch_204dd14
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	strh    r1, [r0, #0x0]
	b       branch_204dd1e

branch_204dd14: @ 204dd14 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, r6
	blo     branch_204dcde
branch_204dd1e: @ 204dd1e :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x204dd24

.word 0x0 @ 0x204dd24



.thumb
ScriptCmd_CheckPokeParty2: @ 204dd28 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	str     r1, [sp, #0x4]

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r3, #0x0
	mov     r7, r0

	mov     r2, r3
	add     r1, sp, #0xc
branch_204dd60: @ 204dd60 :thumb
	lsl     r0, r3, #1
	strh    r2, [r1, r0]
	add     r0, r3, #0x1
	lsl     r0, r0, #24
	lsr     r3, r0, #24
	cmp     r3, #0x6
	blo     branch_204dd60
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r5, #0x0
	strh    r5, [r6, #0x0]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	bls     branch_204ddfa
	add     r4, sp, #0xc
branch_204dd8c: @ 204dd8c :thumb
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, #PKMNDATA_ISEGG
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_204ddee

	ldr     r0, [sp, #0x8]
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r7, #0x0
	bne     branch_204dde4
	lsl     r1, r5, #1
	strh    r0, [r4, r1]
	mov     r0, #0x0
	cmp     r5, #0x0
	bls     branch_204ddee
	ldrh    r1, [r4, r1]
branch_204ddc6: @ 204ddc6 :thumb
	lsl     r2, r0, #1
	ldrh    r2, [r4, r2]
	cmp     r2, r1
	bne     branch_204ddd8
	mov     r0, #0x1
	strh    r0, [r6, #0x0]
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_204ddd8: @ 204ddd8 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, r5
	blo     branch_204ddc6
	b       branch_204ddee

branch_204dde4: @ 204dde4 :thumb
	cmp     r7, r0
	bne     branch_204ddee
	ldrh    r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r6, #0x0]
branch_204ddee: @ 204ddee :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	ldr     r0, [sp, #0x0]
	cmp     r5, r0
	blo     branch_204dd8c
branch_204ddfa: @ 204ddfa :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x204de00


.thumb
Function_204de00: @ 204de00 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0

	mov     r1, r4
	add     r1, #0x80
	ldr     r7, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x4]

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]

	ldr     r0, [r7, #0xc]
	bl      LoadPokePartyAdress
	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	ldr     r1, [pc, #0x4c] @ 0x204de8c, (=0xff)
	ldr     r0, [sp, #0x4]
	ldr     r5, [pc, #0x4c] @ 0x204de90, (=0x0)
	strh    r1, [r0, #0x0]
	beq     branch_204de86
branch_204de48: @ 204de48 :thumb
	ldr     r0, [r7, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, #PKMNDATA_ISEGG
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_204de7c

	mov     r0, r4
	mov     r1, #PKMNDATA_SPECIES
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	bne     branch_204de7c
	ldr     r0, [sp, #0x4]
	strh    r5, [r0, #0x0]
	b       branch_204de86

branch_204de7c: @ 204de7c :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, r6
	blo     branch_204de48
branch_204de86: @ 204de86 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x204de8c

.word 0xff @ 0x204de8c
.word 0x0 @ 0x204de90



.thumb
Function_204de94: @ 204de94 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r4, #0x0
	mov     r6, r0
	mov     r5, r4
	mov     r7, r4
.thumb
branch_204ded6: @ 204ded6 :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	mov     r1, r7
	bl      Function_20923c0
	mov     r1, r0
	mov     r0, r6
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_204def4
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
.thumb
branch_204def4: @ 204def4 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x50
	blo     branch_204ded6
	ldr     r0, [sp, #0x0]
	strh    r5, [r0, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204df06


.align 2, 0


.thumb
ScriptCmd_CheckRiboonNumber: @ 204df08 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #16
	add     r4, #0x80
	lsr     r6, r0, #16
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0x4]
.thumb
branch_204df46: @ 204df46 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	bls     branch_204df94
	ldr     r0, [sp, #0x8]
	lsl     r0, r0, #24
	lsr     r7, r0, #24
.thumb
branch_204df52: @ 204df52 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x4c
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_204df8a
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_20923c0
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_204df8a
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	b       branch_204df94
@ 0x204df8a

.thumb
branch_204df8a: @ 204df8a :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, r6
	blo     branch_204df52
.thumb
branch_204df94: @ 204df94 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	cmp     r0, #0x50
	blo     branch_204df46
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x204dfae


.align 2, 0


.thumb
ScriptCmd_CheckRibbon: @ 204dfb0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r7
	bl      GetAdrOfPkmnInParty
	mov     r5, r0
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	mov     r1, #0x0
	bl      Function_20923c0
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204e01a


.align 2, 0


.thumb
ScriptCmd_GiveRibbon: @ 204e01c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r1, #0x1
	add     r0, sp, #0x0
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r6, r0
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	mov     r1, #0x0
	bl      Function_20923c0
	mov     r1, r0
	mov     r0, r6
	add     r2, sp, #0x0
	bl      SetPkmnData
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	mov     r1, #0x0
	bl      Function_20923c0
	add     r5, #0x80
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	ldr     r0, [r0, #0xc]
	bl      Function_206ddb8
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x204e094

.thumb
ScriptCmd_StorePokeNumParty: @ 204e094 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #16
	add     r4, #0x80
	lsr     r6, r0, #16
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x4]
.thumb
branch_204e0d0: @ 204e0d0 :thumb
	mov     r5, #0x0
	cmp     r6, #0x0
	bls     branch_204e110
.thumb
branch_204e0d6: @ 204e0d6 :thumb
	mov     r0, r7
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x4c
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_204e106
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_204e106
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	strh    r1, [r0, #0x0]
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204e106

.thumb
branch_204e106: @ 204e106 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, r6
	blo     branch_204e0d6
.thumb
branch_204e110: @ 204e110 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	cmp     r0, #0x50
	blo     branch_204e0d0
	ldr     r1, [sp, #0x0]
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x204e128

.thumb
ScriptCmd_a0: @ 204e128 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x204e12c

.thumb
ScriptCmd_31c: @ 204e12c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r6, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0xc]
	bl      LoadPokePartyAdress
	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	ldr     r1, [pc, #0x5c] @ 0x204e1c8, (=0xff)
	ldr     r0, [sp, #0x4]
	ldr     r5, [pc, #0x5c] @ 0x204e1cc, (=0x0)
	strh    r1, [r0, #0x0]
	beq     branch_204e1c0
.thumb
branch_204e174: @ 204e174 :thumb
	ldr     r0, [r6, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x4c
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_204e1b6
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	bne     branch_204e1b6
	mov     r0, r4
	mov     r1, #0x6e
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x1
	bne     branch_204e1b6
	ldr     r0, [sp, #0x4]
	strh    r5, [r0, #0x0]
	b       branch_204e1c0
@ 0x204e1b6

.thumb
branch_204e1b6: @ 204e1b6 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, r7
	blo     branch_204e174
branch_204e1c0: @ 204e1c0 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x204e1c6

.align 2
.word 0xff @ 0x204e1c8
.word 0x0 @ 0x204e1cc



.thumb
ScriptCmd_32f: @ 204e1d0 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0xc]
	bl      LoadPokePartyAdress
	bl      GetNrOfPkmnInParty
	mov     r6, r0
	mov     r4, #0x0
	ldr     r0, [sp, #0x0]
	cmp     r6, #0x0
	strh    r4, [r0, #0x0]
	ble     branch_204e23a
.thumb
branch_204e214: @ 204e214 :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r7, r0
	bne     branch_204e234
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	strh    r1, [r0, #0x0]
	b       branch_204e23a
@ 0x204e234

.thumb
branch_204e234: @ 204e234 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	blt     branch_204e214
.thumb
branch_204e23a: @ 204e23a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204e23e


.align 2, 0


.thumb
ScriptCmd_CheckFossil: @ 204e240 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r6, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, #0x0
	ldr     r7, [pc, #0x2c] @ 0x204e288, (=Unknown_20ebffc)
	str     r0, [sp, #0x0]
	mov     r5, r4
branch_204e260: @ 204e260 :thumb
	ldr     r0, [r6, #0xc]
	bl      LoadVariableAreaAdressItemList
	lsl     r1, r4, #2
	ldrh    r1, [r7, r1]
	mov     r2, #0x4
	bl      Function_207d730
	add     r0, r5, r0
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x7
	blo     branch_204e260
	ldr     r0, [sp, #0x0]
	strh    r5, [r0, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204e288

.word Unknown_20ebffc @ 0x204e288



.thumb
ScriptCmd_CheckItemChosen: @ 204e28c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, #0x0
	ldr     r2, [pc, #0x20] @ 0x204e2d8, (=Unknown_20ebffc)
	strh    r5, [r4, #0x0]
branch_204e2b8: @ 204e2b8 :thumb
	lsl     r3, r5, #2
	ldrh    r1, [r2, r3]
	cmp     r0, r1
	bne     branch_204e2c8
	ldr     r0, [pc, #0x18] @ 0x204e2dc, (=Unknown_20ebffe)
	ldrh    r0, [r0, r3]
	strh    r0, [r4, #0x0]
	b       branch_204e2d2

branch_204e2c8: @ 204e2c8 :thumb
	add     r1, r5, #0x1
	lsl     r1, r1, #16
	lsr     r5, r1, #16
	cmp     r5, #0x7
	blo     branch_204e2b8
branch_204e2d2: @ 204e2d2 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204e2d6

.align 2
.word Unknown_20ebffc @ 0x204e2d8
.word Unknown_20ebffe @ 0x204e2dc



.thumb
ScriptCmd_CompareItemPokeFossil: @ 204e2e0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r6, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	str     r0, [sp, #0x0]
	mov     r4, #0x0
	ldr     r0, [sp, #0x8]
	mov     r5, r4
	strh    r4, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	strh    r4, [r0, #0x0]
.thumb
branch_204e330: @ 204e330 :thumb
	ldr     r0, [r6, #0xc]
	lsl     r7, r4, #2
	bl      LoadVariableAreaAdressItemList
	ldr     r1, [pc, #0x30] @ 0x204e36c, (=Unknown_20ebffc)
	mov     r2, #0x4
	ldrh    r1, [r1, r7]
	bl      Function_207d730
	add     r0, r5, r0
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	ldr     r0, [sp, #0x0]
	cmp     r5, r0
	blo     branch_204e35c
	ldr     r0, [pc, #0x1c] @ 0x204e36c, (=Unknown_20ebffc)
	ldrh    r1, [r0, r7]
	ldr     r0, [sp, #0x8]
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	strh    r4, [r0, #0x0]
	b       branch_204e366

branch_204e35c: @ 204e35c :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x7
	blo     branch_204e330

branch_204e366: @ 204e366 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x204e36c

.word Unknown_20ebffc @ 0x204e36c



.thumb
ScriptCmd_1f2: @ 204e370 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x204e374


.thumb
ScriptCmd_1f3: @ 204e374 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x204e378


.thumb
ScriptCmd_ChoosePrizeCasino: @ 204e378 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	ldr     r1, [pc, #0x10] @ 0x204e3c4, (=Unknown_20ec018)
	lsl     r2, r4, #2
	ldrh    r1, [r1, r2]
	strh    r1, [r6, #0x0]
	ldr     r1, [pc, #0xc] @ 0x204e3c8, (=Unknown_20ec01a)
	ldrh    r1, [r1, r2]
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204e3c4

.word Unknown_20ec018 @ 0x204e3c4
.word Unknown_20ec01a @ 0x204e3c8



.thumb
ScriptCmd_157: @ 204e3cc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	ldr     r0, [r0, #OverWorldData_VariableAreaAdress]
	bl      LoadPokedexDataAdress
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r5]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0

	mov     r0, r4
	bl      CheckActPokedex
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204e3fa


thumb_func_start ScriptCmd_ActivatePokedex
ScriptCmd_ActivatePokedex: @ 204e3fc :thumb
	push    {r3,lr}
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	ldr     r0, [r0, #OverWorldData_VariableAreaAdress]
	bl      LoadPokedexDataAdress
	bl      ActivatePokedex
	mov     r0, #0x0
	pop     {r3,pc}
thumb_func_end ScriptCmd_ActivatePokedex


.thumb
ScriptCmd_159: @ 204e410 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_6
	bl      AddVariableAreaAdress_6_8c
	bl      Function_205ec40
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204e43e


thumb_func_start ScriptCmd_GiveRunningShoes
ScriptCmd_GiveRunningShoes: @ 204e440 :thumb
	push    {r3,lr}
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	ldr     r0, [r0, #OverWorldData_VariableAreaAdress]
	bl      LoadVariableAreaAdress_6
	bl      AddVariableAreaAdress_6_8c

	mov     r1, #0x1
	bl      SetRunningShoes

	mov     r0, #0x0
	pop     {r3,pc}
thumb_func_end ScriptCmd_GiveRunningShoes


.align 2, 0
.thumb
ScriptCmd_CheckBadge: @ 204e45c :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0

	cmp     r4, #0x8
	blo     branch_204e48e
	bl      ErrorHandling
branch_204e48e: @ 204e48e :thumb
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	mov     r1, r4
	bl      CheckBadge
	strh    r0, [r6, #0x0]

	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204e4a4


.thumb
ScriptCmd_EnableBadge: @ 204e4a4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	cmp     r4, #0x8
	blo     branch_204e4c2

	bl      ErrorHandling
branch_204e4c2: @ 204e4c2 :thumb

	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	mov     r1, r4
	bl      EnableBadge

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204e4d6


.align 2, 0
.thumb
ScriptCmd_15e: @ 204e4d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      CheckFlag_Flag960
	strh    r0, [r4, #0x0]

	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204e502


.align 2, 0
.thumb
ScriptCmd_DisableBadge: @ 204e504 :thumb
	push    {r3-r7,lr}
	mov     r6, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, #0x0
	ldr     r7, [pc, #0x34] @ 0x204e550, (=Unknown_20ec064)
	str     r0, [sp, #0x0]
	mov     r5, r4
branch_204e520: @ 204e520 :thumb
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	ldrb    r1, [r7, r4]
	bl      CheckBadge
	cmp     r0, #0x1
	bne     branch_204e53c
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
branch_204e53c: @ 204e53c :thumb

	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x8
	blo     branch_204e520

	ldr     r0, [sp, #0x0]
	strh    r5, [r0, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204e54e

.align 2
.word Unknown_20ec064 @ 0x204e550



.thumb
ScriptCmd_15f: @ 204e554 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      SetFlag_Flag960
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204e568


.thumb
ScriptCmd_CheckFollow: @ 204e568 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206a984
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204e592


.align 2, 0
.thumb
ScriptCmd_StartFollow: @ 204e594 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206a964
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204e5a8


.thumb
ScriptCmd_StopFollow2: @ 204e5a8 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206a974
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204e5bc


.thumb
ScriptCmd_163: @ 204e5bc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206a9b4
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204e5e6


.align 2, 0
.thumb
ScriptCmd_164: @ 204e5e8 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206a994
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204e5fc


.thumb
ScriptCmd_165: @ 204e5fc :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206a9a4
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204e610


.thumb
ScriptCmd_166: @ 204e610 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r5, #0x80
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206a954
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204e63a


.align 2, 0
.thumb
ScriptCmd_167: @ 204e63c :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206a944
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204e650


.thumb
ScriptCmd_HmFunctions: @ 204e650 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	ldr     r2, [r5, #0x8]
	mov     r4, r0
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]

	ldrb    r1, [r2, #0x0]
	cmp     r1, #0x0
	beq     branch_204e67e
	cmp     r1, #0x1
	beq     branch_204e676
	cmp     r1, #0x2
	beq     branch_204e686
	b       branch_204e6a4

branch_204e676: @ 204e676 :thumb
	mov     r1, #0x1
	bl      Function_206aeac
	b       branch_204e6a8

branch_204e67e: @ 204e67e :thumb
	mov     r1, #0x0
	bl      Function_206aeac
	b       branch_204e6a8

branch_204e686: @ 204e686 :thumb
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_206aeac
	strh    r0, [r5, #0x0]
	b       branch_204e6a8

branch_204e6a4: @ 204e6a4 :thumb
	bl      ErrorHandling
branch_204e6a8: @ 204e6a8 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204e6ac


.thumb
ScriptCmd_FlashDuration: @ 204e6ac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	ldr     r2, [r5, #0x8]
	mov     r4, r0
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r1, [r2, #0x0]
	cmp     r1, #0x0
	beq     branch_204e6d8
	cmp     r1, #0x1
	beq     branch_204e6d2
	cmp     r1, #0x2
	beq     branch_204e6de
	b       branch_204e6fa

branch_204e6d2: @ 204e6d2 :thumb
	bl      Function_206aebc
	b       branch_204e6fe

branch_204e6d8: @ 204e6d8 :thumb
	bl      Function_206aecc
	b       branch_204e6fe

branch_204e6de: @ 204e6de :thumb
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      Function_206aedc
	strh    r0, [r5, #0x0]
	b       branch_204e6fe

branch_204e6fa: @ 204e6fa :thumb
	bl      ErrorHandling
branch_204e6fe: @ 204e6fe :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204e702


.align 2, 0
.thumb
ScriptCmd_DefogDuration: @ 204e704 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	ldr     r2, [r5, #0x8]
	mov     r4, r0
	add     r1, r2, #0x1
	str     r1, [r5, #0x8]
	ldrb    r1, [r2, #0x0]
	cmp     r1, #0x0
	beq     branch_204e730
	cmp     r1, #0x1
	beq     branch_204e72a
	cmp     r1, #0x2
	beq     branch_204e736
	b       branch_204e752

branch_204e72a: @ 204e72a :thumb
	bl      Function_206aeec
	b       branch_204e756

branch_204e730: @ 204e730 :thumb
	bl      Function_206aefc
	b       branch_204e756

branch_204e736: @ 204e736 :thumb
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	bl      Function_206af0c
	strh    r0, [r5, #0x0]
	b       branch_204e756

branch_204e752: @ 204e752 :thumb
	bl      ErrorHandling
branch_204e756: @ 204e756 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204e75a


thumb_func_start ScriptCmd_TakeItem
ScriptCmd_TakeItem: @ 204e75c :thumb
	push    {r3-r7,lr}
	mov     r4, r0

	mov     r1, r4
	add     r1, #ScriptHandler_OverWorldData
	ldr     r5, [r1, #ScriptHandler_OverWorldData_0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0, #ScriptHandler_OverWorldData_0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0, #ScriptHandler_OverWorldData_0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r4, #ScriptHandler_OverWorldData_0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdressItemList

	mov     r1, r6
	mov     r2, r7
	mov     r3, #0x4
	bl      TakeItem
	strh    r0, [r4, #0x0]

	mov     r0, #0x0
	pop     {r3-r7,pc}
thumb_func_end ScriptCmd_TakeItem


/*
.macro	GiveItem ItemId, quantity, return
*/
.thumb
ScriptCmd_GiveItem: @ 204e7b4 :thumb
	push    {r3-r7,lr}
	mov     r4, r0

	mov     r1, r4
	add     r1, #ScriptHandler_OverWorldData
	ldr     r5, [r1]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0              @ ItemID

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0              @ quantity

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #ScriptHandler_OverWorldData
	mov     r1, r0

	ldr     r0, [r4]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0              @ return

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadVariableAreaAdressItemList

	mov     r1, r6      @ ItemID
	mov     r2, r7      @ quantity
	mov     r3, #0x4
	bl      GiveItem
	strh    r0, [r4]            @ return

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204e80c


.thumb
ScriptCmd_CheckStoreItem: @ 204e80c :thumb
	push    {r3-r7,lr}
	mov     r4, r0

	mov     r1, r4
	add     r1, #ScriptHandler_OverWorldData
	ldr     r5, [r1]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r4]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	ldr     r0, [r5, #OverWorldData_VariableAreaAdress]
	bl      LoadVariableAreaAdressItemList

	mov     r1, r6
	mov     r2, r7
	mov     r3, #0x4
	bl      CheckStoreItem
	strh    r0, [r4, #0x0]

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204e864


.thumb
ScriptCmd_CheckItem: @ 204e864 :thumb
	push    {r3-r7,lr}
	mov     r4, r0

	mov     r1, r4
	add     r1, #ScriptHandler_OverWorldData
	ldr     r5, [r1, #ScriptHandler_OverWorldData_0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0, #ScriptHandler_OverWorldData_0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #ScriptHandler_OverWorldData
	ldr     r0, [r0, #ScriptHandler_OverWorldData_0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #ScriptHandler_OverWorldData
	mov     r1, r0
	ldr     r0, [r4, #ScriptHandler_OverWorldData_0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdressItemList

	mov     r1, r6
	mov     r2, r7
	mov     r3, #0xb
	bl      CheckItem
	strh    r0, [r4, #0x0]

	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204e8bc


.thumb
ScriptCmd_2fe: @ 204e8bc :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdressItemList
	mov     r1, r6
	mov     r2, #0xb
	bl      Function_207d730
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204e8fe


.align 2, 0
.thumb
ScriptCmd_StoreItemTaken: @ 204e900 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0

	mov     r0, r4
	bl      StoreItemTaken
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204e934


.thumb
ScriptCmd_StoreItemType: @ 204e934 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	mov     r0, r4
	mov     r1, #ITEMDATA_POCKET
	mov     r2, #0xb
	bl      GetItemData
	strh    r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204e96c


.thumb
Function_204e96c: @ 204e96c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x204e970


.thumb
Function_204e970: @ 204e970 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x204e974


.thumb
ScriptCmd_SendItemType1: @ 204e974 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r5, [r1, #0xc]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      LoadVariableAreaAdress_c
	mov     r1, r6
	bl      Function_202895c
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204e9c8

.thumb
Function_204e9c8: @ 204e9c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204ea02


.align 2, 0
.thumb
ScriptCmd_CheckUndergroundPCStatus: @ 204ea04 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r5, [r1, #0xc]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      LoadVariableAreaAdress_c
	mov     r1, r6
	bl      Function_2028984
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204ea58


.thumb
Function_204ea58: @ 204ea58 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204ea92


.align 2, 0
.thumb
ScriptCmd_SendItemType2: @ 204ea94 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r5, [r1, #0xc]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      LoadVariableAreaAdress_c
	mov     r1, r6
	bl      Function_2028e84
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204eae8


.thumb
Function_204eae8: @ 204eae8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204eb22


.align 2, 0


.thumb
Function_204eb24: @ 204eb24 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204eb5e


.align 2, 0


.thumb
Function_204eb60: @ 204eb60 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204eb9a


.align 2, 0


.thumb
Function_204eb9c: @ 204eb9c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, r5
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r4, [r1, #0xc]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r0, r4
	bl      LoadVariableAreaAdress_c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204ebe4

.thumb
Function_204ebe4: @ 204ebe4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204ec1e


.align 2, 0


.thumb
Function_204ec20: @ 204ec20 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204ec5a


.align 2, 0


.thumb
Function_204ec5c: @ 204ec5c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204ec96


.align 2, 0


.thumb
ScriptCmd_SendItemType3: @ 204ec98 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r1, [r1, #0x0]
	ldr     r5, [r1, #0xc]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	bl      LoadVariableAreaAdress_c
	mov     r1, r6
	mov     r2, r7
	bl      Function_2028cb0
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x204ecf0

.thumb
ScriptCmd_90: @ 204ecf0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204ed2a


.align 2, 0


.thumb
ScriptCmd_91: @ 204ed2c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204ed66


.align 2, 0


.thumb
ScriptCmd_92: @ 204ed68 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204eda2


.align 2, 0
.thumb
ScriptCmd_StorePokeDelete: @ 204eda4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, r5
	add     r1, #0x80
	lsl     r2, r4, #24
	mov     r6, r0
	ldr     r1, [r1, #0x0]
	mov     r0, #0x20
	lsr     r2, r2, #24
	bl      Function_203d6e4
	str     r0, [r6, #0x0]
	ldr     r1, [pc, #0xc] @ 0x204ede8, (=Function_2041d60+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x204ede6

.align 2
.word Function_2041d60+1 @ 0x204ede8



.thumb
ScriptCmd_StoreMoveDelete: @ 204edec :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_204ee18
	bl      ErrorHandling
.thumb
branch_204ee18: @ 204ee18 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_203d750
	strh    r0, [r5, #0x0]
	ldrh    r0, [r5, #0x0]
	cmp     r0, #0x4
	bne     branch_204ee2a
	mov     r0, #0xff
	strh    r0, [r5, #0x0]
.thumb
branch_204ee2a: @ 204ee2a :thumb
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x204ee36


.align 2, 0
.thumb
ScriptCmd_21e: @ 204ee38 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x204ee3c


.thumb
ScriptCmd_CheckMoveRemember: @ 204ee3c :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0

	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0

	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	add     r5, #0x80
	mov     r6, r0

	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress

	mov     r1, r6
	bl      GetAdrOfPkmnInParty

	mov     r1, #0x20
	bl      Function_20997d8
	mov     r5, r0

	bl      Function_20998d8
	strh    r0, [r4, #0x0]

	mov     r0, r5
	bl      free

	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x204ee8e


.align 2, 0
.thumb
Function_204ee90: @ 204ee90 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	add     r0, #0x80
	mov     r7, r1
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	str     r2, [sp, #0x0]
	mov     r6, r3
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x4]
	mov     r0, #0x20
	bl      Function_20997b8
	mov     r4, r0
	ldr     r0, [sp, #0x4]
	str     r4, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	str     r0, [r4, #0x0]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      GetOverWorldData_VariableAreaAdresses
	bl      LoadTrainerDataAdress
	str     r0, [r4, #0x4]
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPlayerDataAdress
	str     r0, [r4, #0x8]
	str     r6, [r4, #0xc]
	mov     r0, r5
	strb    r7, [r4, #0x15]
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	bl      Function_203e284
	ldr     r1, [pc, #0x10] @ 0x204eef8, (=Function_2041d60+1)
	mov     r0, r5
	bl      ScriptHandler_AddFunction
	mov     r0, r6
	bl      free
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x204eef8

.word Function_2041d60+1 @ 0x204eef8



.thumb
ScriptCmd_220: @ 204eefc :thumb
	mov     r0, #0x1
	bx      lr
@ 0x204ef00


.thumb
ScriptCmd_RememberMove: @ 204ef00 :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0

	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress

	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	mov     r4, r0

	mov     r1, #0x20
	bl      Function_20997d8
	mov     r3, r0

	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r4
	bl      Function_204ee90

	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x204ef40


.thumb
ScriptCmd_TeachMove: @ 204ef40 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, r6
	bl      GetAdrOfPkmnInParty
	mov     r6, r0
	mov     r0, #0x20
	mov     r1, #0x4
	bl      malloc
	mov     r3, r0
	ldr     r0, [pc, #0x10] @ 0x204ef9c, (=0xffff)
	strh    r4, [r3, #0x0]
	strh    r0, [r3, #0x2]
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, r6
	bl      Function_204ee90
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x204ef9c

.word 0xffff @ 0x204ef9c
.thumb
ScriptCmd_222: @ 204efa0 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x204efa4

.thumb
ScriptCmd_StoreRememberMove: @ 204efa4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r4, [r0, #0x0]
	cmp     r4, #0x0
	bne     branch_204efce
	bl      ErrorHandling
.thumb
branch_204efce: @ 204efce :thumb
	ldrb    r0, [r4, #0x16]
	cmp     r0, #0x0
	bne     branch_204efd8
	mov     r0, #0x0
	b       branch_204efda
@ 0x204efd8

.thumb
branch_204efd8: @ 204efd8 :thumb
	mov     r0, #0xff
.thumb
branch_204efda: @ 204efda :thumb
	strh    r0, [r5, #0x0]
	mov     r0, r4
	bl      Call_free17
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204efe6


.align 2, 0


.thumb
ScriptCmd_CheckTeachMove: @ 204efe8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	add     r4, #0x80
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	ldr     r4, [r0, #0x0]
	cmp     r4, #0x0
	bne     branch_204f012
	bl      ErrorHandling
.thumb
branch_204f012: @ 204f012 :thumb
	ldrb    r0, [r4, #0x16]
	cmp     r0, #0x0
	bne     branch_204f01c
	mov     r0, #0x0
	b       branch_204f01e
@ 0x204f01c

.thumb
branch_204f01c: @ 204f01c :thumb
	mov     r0, #0xff
.thumb
branch_204f01e: @ 204f01e :thumb
	strh    r0, [r5, #0x0]
	mov     r0, r4
	bl      Call_free17
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204f02a


.align 2, 0


.thumb
ScriptCmd_23f: @ 204f02c :thumb
	push    {r3,lr}
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204f036


.align 2, 0


.thumb
ScriptCmd_240: @ 204f038 :thumb
	push    {r3,lr}
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x204f042


.align 2, 0


.thumb
ScriptCmd_241: @ 204f044 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x204f048

.thumb
ScriptCmd_242: @ 204f048 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x204f04c

.thumb
ScriptCmd_DeleteSavesBFactory: @ 204f04c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r6
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_20300f4
	mov     r2, #0x0
	add     r1, sp, #0x8
	strb    r2, [r1, #0x0]
	lsl     r2, r5, #2
	add     r2, r4, r2
	lsl     r2, r2, #24
	mov     r1, #0xa
	lsr     r2, r2, #24
	add     r3, sp, #0x8
	bl      Function_20300b0
	cmp     r4, #0x3
	bne     branch_204f0c8
	cmp     r5, #0x0
	bne     branch_204f0a6
	mov     r7, #0x66
	b       branch_204f0a8
@ 0x204f0a6

.thumb
branch_204f0a6: @ 204f0a6 :thumb
	mov     r7, #0x68
.thumb
branch_204f0a8: @ 204f0a8 :thumb
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_17
	str     r0, [sp, #0x0]
	mov     r0, r7
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_20306e4
.thumb
branch_204f0c8: @ 204f0c8 :thumb
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_17
	mov     r7, r0
	lsl     r0, r5, #24
	lsl     r1, r4, #24
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	bl      Function_205e430
	str     r0, [sp, #0x4]
	lsl     r0, r5, #24
	lsl     r1, r4, #24
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	bl      Function_205e430
	bl      Function_205e6a8
	mov     r2, r0
	ldr     r1, [sp, #0x4]
	mov     r0, r7
	mov     r3, #0x0
	bl      Function_20306e4
	add     r6, #0x80
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	lsl     r0, r5, #24
	lsl     r1, r4, #24
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	bl      Function_205e488
	mov     r7, r0
	lsl     r0, r5, #24
	lsl     r1, r4, #24
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	bl      Function_205e488
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, r7
	mov     r3, #0x0
	bl      Function_20306e4
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x204f13c

.thumb
ScriptCmd_CheckPokeCastle: @ 204f13c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_2030114
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_203026c
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, r0
	cmp     r7, #0x4
	bhi     branch_204f25a
	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x204f1a8

Jumppoints_204f1a8:
.hword branch_204f1b2 - Jumppoints_204f1a8 - 2
.hword branch_204f1c2 - Jumppoints_204f1a8 - 2
.hword branch_204f1fa - Jumppoints_204f1a8 - 2
.hword branch_204f22a - Jumppoints_204f1a8 - 2
.hword branch_204f23c - Jumppoints_204f1a8 - 2
.thumb
branch_204f1b2: @ 204f1b2 :thumb
	add     r4, #0x80
	ldr     r1, [r4, #0x0]
	mov     r0, r5
	ldr     r1, [r1, #0xc]
	bl      Function_204f268
	strh    r0, [r6, #0x0]
	b       branch_204f262
@ 0x204f1c2

.thumb
branch_204f1c2: @ 204f1c2 :thumb
	cmp     r5, #0x3
	bne     branch_204f1e6
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	mov     r0, #0x6a
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x6a
	bl      Function_2030698
	strh    r0, [r6, #0x0]
	b       branch_204f262
@ 0x204f1e6

.thumb
branch_204f1e6: @ 204f1e6 :thumb
	lsl     r2, r5, #24
	mov     r3, #0x0
	ldr     r0, [sp, #0x4]
	mov     r1, #0x5
	lsr     r2, r2, #24
	str     r3, [sp, #0x0]
	bl      Function_20302b4
	strh    r0, [r6, #0x0]
	b       branch_204f262
@ 0x204f1fa

.thumb
branch_204f1fa: @ 204f1fa :thumb
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	bl      Function_205e55c
	mov     r7, r0
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	bl      Function_205e55c
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r7
	bl      Function_2030698
	strh    r0, [r6, #0x0]
	b       branch_204f262
@ 0x204f22a

.thumb
branch_204f22a: @ 204f22a :thumb
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	lsl     r2, r5, #24
	ldr     r0, [r0, #0xc]
	ldr     r1, [sp, #0x4]
	lsr     r2, r2, #24
	bl      Function_204fa50
	b       branch_204f262
@ 0x204f23c

.thumb
branch_204f23c: @ 204f23c :thumb
	cmp     r5, #0x0
	bne     branch_204f244
	mov     r2, #0x0
	b       branch_204f24e
@ 0x204f244

.thumb
branch_204f244: @ 204f244 :thumb
	cmp     r5, #0x1
	bne     branch_204f24c
	mov     r2, #0x1
	b       branch_204f24e
@ 0x204f24c

.thumb
branch_204f24c: @ 204f24c :thumb
	mov     r2, #0x2
.thumb
branch_204f24e: @ 204f24e :thumb
	ldr     r0, [r4, #0x74]
	bl      Function_204f470
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x204f25a

.thumb
branch_204f25a: @ 204f25a :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	strh    r0, [r6, #0x0]
.thumb
branch_204f262: @ 204f262 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x204f268


.thumb
Function_204f268: @ 204f268 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r0, [sp, #0x0]
	mov     r0, r1
	bl      LoadPokePartyAdress
	str     r0, [sp, #0x4]
	bl      GetNrOfPkmnInParty
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	ldr     r0, [sp, #0x0]
	cmp     r4, r0
	bge     branch_204f28a
	add     sp, #0x1c
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x204f28a

.thumb
branch_204f28a: @ 204f28a :thumb
	mov     r2, #0x0
	mov     r5, r2
	add     r1, sp, #0x10
.thumb
branch_204f290: @ 204f290 :thumb
	lsl     r0, r2, #1
	strh    r5, [r1, r0]
	add     r0, r2, #0x1
	lsl     r0, r0, #24
	lsr     r2, r0, #24
	cmp     r2, #0x6
	blo     branch_204f290
	str     r5, [sp, #0xc]
	cmp     r4, #0x0
	bls     branch_204f302
.thumb
branch_204f2a4: @ 204f2a4 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r7, r0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	mov     r0, r7
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, r7
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_204f2f8
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x1e
	blo     branch_204f2f8
	mov     r0, r6
	bl      Function_2078804
	cmp     r0, #0x1
	beq     branch_204f2f8
	ldr     r0, [sp, #0xc]
	lsl     r1, r5, #1
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	add     r0, sp, #0x10
	strh    r6, [r0, r1]
.thumb
branch_204f2f8: @ 204f2f8 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, r4
	blo     branch_204f2a4
.thumb
branch_204f302: @ 204f302 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x2
	bne     branch_204f34c
	mov     r3, #0x0
	cmp     r4, #0x0
	bls     branch_204f346
	add     r1, sp, #0x10
	mov     r2, r3
.thumb
branch_204f312: @ 204f312 :thumb
	mov     r5, r2
	cmp     r4, #0x0
	bls     branch_204f33c
	lsl     r0, r3, #1
	ldrh    r0, [r1, r0]
.thumb
branch_204f31c: @ 204f31c :thumb
	cmp     r3, r5
	beq     branch_204f332
	cmp     r0, #0x0
	beq     branch_204f332
	lsl     r6, r5, #1
	ldrh    r6, [r1, r6]
	cmp     r0, r6
	bne     branch_204f332
	add     sp, #0x1c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x204f332

.thumb
branch_204f332: @ 204f332 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	lsl     r5, r5, #24
	lsr     r5, r5, #24
	cmp     r5, r4
	blo     branch_204f31c
.thumb
branch_204f33c: @ 204f33c :thumb
	add     r0, r3, #0x1
	lsl     r0, r0, #24
	lsr     r3, r0, #24
	cmp     r3, r4
	blo     branch_204f312
.thumb
branch_204f346: @ 204f346 :thumb
	add     sp, #0x1c
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x204f34c

.thumb
branch_204f34c: @ 204f34c :thumb
	ldr     r1, [sp, #0xc]
	cmp     r1, r0
	blt     branch_204f358
	add     sp, #0x1c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x204f358

.thumb
branch_204f358: @ 204f358 :thumb
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x204f35e


.align 2, 0


.thumb
ScriptCmd_2d1: @ 204f360 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_203026c
	lsl     r2, r4, #24
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	lsr     r2, r2, #24
	ldr     r0, [r0, #0xc]
	bl      Function_204fa50
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204f396


.align 2, 0
.thumb
ScriptCmd_ChooseWirePokeBCastle: @ 204f398 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r2, r0
	ldr     r0, [r5, #0x74]
	mov     r1, r4
	bl      Function_204f3d0
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x204f3ce



.align 2, 0
.thumb
Function_204f3d0: @ 204f3d0 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	mov     r0, #0xb
	mov     r1, #0xc
	mov     r6, r2
	bl      malloc
	mov     r4, r0
	mov     r1, #0x0
	strb    r1, [r4, #0x0]
	strb    r1, [r4, #0x1]
	strb    r1, [r4, #0x2]
	strb    r1, [r4, #0x3]
	strb    r1, [r4, #0x4]
	strb    r1, [r4, #0x5]
	strb    r1, [r4, #0x6]
	strb    r1, [r4, #0x7]
	strb    r1, [r4, #0x8]
	strb    r1, [r4, #0x9]
	strb    r1, [r4, #0xa]
	strb    r1, [r4, #0xb]
	strh    r5, [r4, #0x4]
	str     r6, [r4, #0x8]
	bl      Function_2099514
	ldr     r1, [pc, #0x8] @ 0x204f410, (=Function_204f414+1)
	mov     r0, r7
	mov     r2, r4
	bl      Function_2050944
	pop     {r3-r7,pc}
@ 0x204f410

.word Function_204f414+1 @ 0x204f410



.thumb
Function_204f414: @ 204f414 :thumb
	push    {r4,lr}
	bl      GetUnknownStruct01_c
	mov     r4, r0
	ldrb    r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_204f42c
	cmp     r1, #0x1
	beq     branch_204f442
	cmp     r1, #0x2
	beq     branch_204f462
	b       branch_204f46a

branch_204f42c: @ 204f42c :thumb
	mov     r0, #0x84
	mov     r1, r4
	mov     r2, #0xc
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_204f46a
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_204f46a

branch_204f442: @ 204f442 :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x2
	blo     branch_204f46a
	ldrh    r1, [r4, #0x4]
	ldrh    r0, [r4, #0x6]
	cmp     r1, r0
	bne     branch_204f454
	mov     r1, #0x0
	b       branch_204f456

branch_204f454: @ 204f454 :thumb
	mov     r1, #0x1
branch_204f456: @ 204f456 :thumb
	ldr     r0, [r4, #0x8]
	strh    r1, [r0, #0x0]
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_204f46a

branch_204f462: @ 204f462 :thumb
	bl      free
	mov     r0, #0x1
	pop     {r4,pc}

branch_204f46a: @ 204f46a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204f46e


.align 2, 0
.thumb
Function_204f470: @ 204f470 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r2
	bl      LoadOverWorldDataAdress
	mov     r7, r0
	mov     r0, #0xb
	mov     r1, #0xc
	bl      malloc
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0xc
	blx     MI_CpuFill8
	strb    r6, [r4, #0x4]
	str     r5, [r4, #0x8]
	ldr     r0, [r7, #0x10]
	ldr     r1, [pc, #0x8] @ 0x204f4a0, (=Function_204f4a4+1)
	mov     r2, r4
	bl      Function_2050944
	pop     {r3-r7,pc}
@ 0x204f49e

.align 2
.word Function_204f4a4+1 @ 0x204f4a0



.thumb
Function_204f4a4: @ 204f4a4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x4
	bhi     branch_204f506
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x204f4c8

Jumppoints_204f4c8:
.hword branch_204f4d2 - Jumppoints_204f4c8 - 2
.hword branch_204f4de - Jumppoints_204f4c8 - 2
.hword branch_204f4e8 - Jumppoints_204f4c8 - 2
.hword branch_204f4f4 - Jumppoints_204f4c8 - 2
.hword branch_204f4fe - Jumppoints_204f4c8 - 2

.thumb
branch_204f4d2: @ 204f4d2 :thumb
	mov     r1, r5
	mov     r2, #0xb
	bl      Function_204f50c
	str     r0, [r4, #0x0]
	b       branch_204f506

branch_204f4de: @ 204f4de :thumb
	mov     r1, r5
	bl      Function_204f5d8
	str     r0, [r4, #0x0]
	b       branch_204f506

branch_204f4e8: @ 204f4e8 :thumb
	mov     r1, r5
	mov     r2, #0xb
	bl      Function_204f628
	str     r0, [r4, #0x0]
	b       branch_204f506

branch_204f4f4: @ 204f4f4 :thumb
	mov     r1, r5
	bl      Function_204f6b0
	str     r0, [r4, #0x0]
	b       branch_204f506

branch_204f4fe: @ 204f4fe :thumb
	bl      free
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_204f506: @ 204f506 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204f50a


.align 2, 0
.thumb
Function_204f50c: @ 204f50c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0xb
	mov     r1, #0x40
	bl      malloc
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, #0x40
	blx     MIi_CpuClearFast
	ldr     r0, [r6, #0xc]
	bl      LoadPokePartyAdress
	str     r0, [r4, #0x0]
	ldr     r0, [r6, #0xc]
	bl      LoadVariableAreaAdressItemList
	str     r0, [r4, #0x4]
	ldr     r0, [r6, #0xc]
	bl      LoadVariableAreaAdress_f
	str     r0, [r4, #0x8]
	ldr     r0, [r6, #0xc]
	bl      LoadPlayerDataAdress
	mov     r1, r4
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	add     r1, #0x21
	strb    r0, [r1, #0x0]
	mov     r1, r4
	mov     r2, #0x16
	add     r1, #0x20
	strb    r2, [r1, #0x0]
	str     r6, [r4, #0x1c]
	mov     r1, r4
	ldrb    r2, [r5, #0x5]
	add     r1, #0x22
	strb    r2, [r1, #0x0]
branch_204f560: @ 204f560 :thumb
	add     r1, r5, r0
	ldrb    r2, [r1, #0x6]
	add     r1, r4, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	add     r1, #0x2c
	lsr     r0, r0, #24
	strb    r2, [r1, #0x0]
	cmp     r0, #0x2
	blo     branch_204f560
	mov     r0, r4
	mov     r1, #0x1e
	add     r0, #0x33
	strb    r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0x32
	ldrb    r2, [r1, #0x0]
	mov     r7, #0xf
	mov     r1, #0x1
	bic     r2, r7
	orr     r2, r1
	mov     r1, r4
	add     r1, #0x32
	strb    r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x32
	ldrb    r3, [r1, #0x0]
	mov     r1, #0xf0
	mov     r2, #0x10
	bic     r3, r1
	orr     r3, r2
	mov     r2, r4
	add     r2, #0x32
	strb    r3, [r2, #0x0]
	mov     r0, r4
	ldrb    r2, [r5, #0x4]
	add     r0, #0x32
	cmp     r2, #0x1
	bne     branch_204f5c2
	ldrb    r2, [r0, #0x0]
	mov     r3, #0x2
	bic     r2, r7
	orr     r2, r3
	strb    r2, [r0, #0x0]
	ldrb    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x20
	orr     r1, r2
	strb    r1, [r0, #0x0]
branch_204f5c2: @ 204f5c2 :thumb
	ldr     r1, [pc, #0x10] @ 0x204f5d4, (=Unknown_20f1e88)
	mov     r0, r6
	mov     r2, r4
	bl      OverWorldData_AllocAndInitOverlayData
	ldr     r0, [r5, #0x8]
	str     r4, [r0, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x204f5d4

.word Unknown_20f1e88 @ 0x204f5d4



.thumb
Function_204f5d8: @ 204f5d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r1
	bl      Function_20509b4
	cmp     r0, #0x0
	beq     branch_204f5ea
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_204f5ea: @ 204f5ea :thumb
	ldr     r0, [r5, #0x8]
	ldr     r4, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x6
	beq     branch_204f600
	cmp     r0, #0x7
	bne     branch_204f604
	mov     r0, #0x4
	pop     {r3-r5,pc}

branch_204f600: @ 204f600 :thumb
	mov     r0, #0x4
	pop     {r3-r5,pc}

branch_204f604: @ 204f604 :thumb
	mov     r0, r4
	add     r0, #0x2c
	add     r1, r5, #0x6
	mov     r2, #0x2
	blx     MI_CpuCopy8
	mov     r0, r4
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	strb    r0, [r5, #0x5]
	mov     r0, r4
	bl      free
	ldr     r0, [r5, #0x8]
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x204f628


.thumb
Function_204f628: @ 204f628 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r6, r0
	ldr     r5, [r7, #0xc]
	mov     r0, r2
	mov     r1, #0x30
	bl      malloc2
	mov     r1, #0x0
	mov     r2, #0x30
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r0, r5
	bl      LoadPlayerDataAdress
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      LoadPokePartyAdress
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_207a274
	str     r0, [r4, #0x1c]
	mov     r0, r5
	bl      Function_208c324
	str     r0, [r4, #0x2c]
	mov     r0, #0x1
	strb    r0, [r4, #0x11]
	ldrb    r0, [r6, #0x5]
	strb    r0, [r4, #0x14]
	ldr     r0, [r4, #0x0]
	bl      GetNrOfPkmnInParty
	strb    r0, [r4, #0x13]
	mov     r0, #0x0
	strh    r0, [r4, #0x18]
	strb    r0, [r4, #0x12]
	mov     r0, r5
	bl      LoadVariableAreaAdress_18
	str     r0, [r4, #0x20]
	ldr     r1, [pc, #0x24] @ 0x204f6a8, (=Unknown_20ec06c)
	mov     r0, r4
	bl      Function_208d720
	mov     r0, r5
	bl      LoadTrainerDataAdress
	mov     r1, r0
	mov     r0, r4
	bl      Function_208e9c0
	ldr     r1, [pc, #0x14] @ 0x204f6ac, (=Unknown_20f410c)
	mov     r0, r7
	mov     r2, r4
	bl      OverWorldData_AllocAndInitOverlayData
	ldr     r0, [r6, #0x8]
	str     r4, [r0, #0x0]
	mov     r0, #0x3
	pop     {r3-r7,pc}
@ 0x204f6a8

.word Unknown_20ec06c @ 0x204f6a8
.word Unknown_20f410c @ 0x204f6ac



.thumb
Function_204f6b0: @ 204f6b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_20509b4
	cmp     r0, #0x0
	beq     branch_204f6c2
	mov     r0, #0x3
	pop     {r4,pc}

branch_204f6c2: @ 204f6c2 :thumb
	ldr     r0, [r4, #0x8]
	ldr     r0, [r0, #0x0]
	ldrb    r1, [r0, #0x14]
	strb    r1, [r4, #0x5]
	bl      free
	ldr     r1, [r4, #0x8]
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	pop     {r4,pc}
@ 0x204f6d6



.align 2, 0
.thumb
ScriptCmd_324: @ 204f6d8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	str     r0, [sp, #0x8]
	add     r0, #0x80
	ldr     r7, [r0, #0x0]
	mov     r1, #0xf
	mov     r0, r7
	bl      ScriptHandler_GetSomeScriptAddresses
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x8]
	ldr     r1, [r0, #0x8]
	add     r2, r1, #0x1
	str     r2, [r0, #0x8]
	ldrb    r0, [r1, #0x0]
	add     r1, r2, #0x1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x8]
	str     r1, [r0, #0x8]
	ldrb    r0, [r2, #0x0]
	add     r2, r1, #0x1
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x8]
	str     r2, [r0, #0x8]
	ldrb    r0, [r1, #0x0]
	add     r1, r2, #0x1
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x8]
	str     r1, [r0, #0x8]
	ldrb    r0, [r2, #0x0]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x8]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	ldr     r0, [sp, #0x8]
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r5, r0
	ldr     r0, [sp, #0x8]
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	ldr     r0, [sp, #0x8]
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x2c]
	ldr     r0, [r7, #0xc]
	mov     r4, #0x0
	bl      Function_20247c8
	cmp     r0, #0x0
	bne     branch_204f758
	ldr     r1, [sp, #0x10]
	mov     r0, r4
	strh    r0, [r1, #0x0]
	add     sp, #0x30
	pop     {r3-r7,pc}

branch_204f758: @ 204f758 :thumb
	ldr     r0, [r7, #0xc]
	mov     r1, #0x20
	add     r2, sp, #0x2c
	bl      Function_20308a0
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x1
	bne     branch_204f782
	mov     r6, r4
branch_204f76c: @ 204f76c :thumb
	ldr     r0, [r7, #0xc]
	ldr     r1, [sp, #0x28]
	mov     r2, #0x0
	mov     r3, r6
	bl      Function_20308bc
	add     r4, r4, r0
	ldr     r0, [pc, #0x124] @ 0x204f8a0, (=NrOfPkmn)
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blo     branch_204f76c
branch_204f782: @ 204f782 :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x0
	beq     branch_204f78c
	bl      free
branch_204f78c: @ 204f78c :thumb
	mov     r0, r4
	bl      Function_205dfc4
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x24]
	ldr     r1, [sp, #0x20]
	ldr     r0, [r0, #0x0]
	mov     r2, r4
	bl      Function_200b60c
	ldrh    r1, [r5, #0x0]
	mov     r6, #0x0
	mov     r7, r6
	str     r1, [sp, #0xc]
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x2f
	bhs     branch_204f7da
	ldr     r2, [sp, #0xc]
	ldr     r0, [pc, #0xec] @ 0x204f8a4, (=Unknown_20ec078)
	lsl     r2, r2, #3
	add     r0, r0, r2
branch_204f7bc: @ 204f7bc :thumb
	ldr     r2, [r0, #0x0]
	cmp     r2, r4
	bhi     branch_204f7d2
	ldr     r2, [r0, #0x4]
	mov     r7, r1
	add     r2, r6, r2
	lsl     r2, r2, #16
	lsr     r6, r2, #16
	ldrh    r2, [r5, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r2, [r5, #0x0]
branch_204f7d2: @ 204f7d2 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r0, #0x8
	cmp     r1, #0x2f
	blo     branch_204f7bc
branch_204f7da: @ 204f7da :thumb
	ldr     r0, [sp, #0x8]
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_14
	mov     r1, #0x44
	mov     r2, r6
	bl      Function_202cf70
	cmp     r6, #0x0
	beq     branch_204f808
	ldr     r0, [sp, #0x8]
	add     r0, #0x80
	str     r0, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_202d750
	mov     r1, r6
	mov     r2, #0x5
	bl      Function_202d230
branch_204f808: @ 204f808 :thumb
	cmp     r4, #0x0
	bne     branch_204f814
	ldr     r0, [sp, #0x10]
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	b       branch_204f83a

branch_204f814: @ 204f814 :thumb
	ldrh    r1, [r5, #0x0]
	ldr     r0, [sp, #0xc]
	cmp     r0, r1
	beq     branch_204f822
	mov     r1, #0x1
	ldr     r0, [sp, #0x10]
	b       branch_204f826

branch_204f822: @ 204f822 :thumb
	ldr     r0, [sp, #0x10]
	mov     r1, #0x2
branch_204f826: @ 204f826 :thumb
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x2f
	blo     branch_204f83a
	ldr     r0, [sp, #0x10]
	mov     r1, #0x3
	strh    r1, [r0, #0x0]
	add     sp, #0x30
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_204f83a: @ 204f83a :thumb
	ldr     r0, [pc, #0x68] @ 0x204f8a4, (=Unknown_20ec078)
	lsl     r1, r7, #3
	ldr     r4, [r0, r1]
	mov     r0, r4
	bl      Function_205dfc4
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x24]
	ldr     r1, [sp, #0x1c]
	ldr     r0, [r0, #0x0]
	mov     r2, r4
	bl      Function_200b60c
	ldrh    r0, [r5, #0x0]
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x44] @ 0x204f8a4, (=Unknown_20ec078)
	ldr     r0, [r0, r1]
	bl      Function_205dfc4
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldrh    r2, [r5, #0x0]
	ldr     r0, [sp, #0x24]
	ldr     r1, [sp, #0x18]
	lsl     r4, r2, #3
	ldr     r2, [pc, #0x2c] @ 0x204f8a4, (=Unknown_20ec078)
	ldr     r0, [r0, #0x0]
	ldr     r2, [r2, r4]
	bl      Function_200b60c
	mov     r0, r6
	bl      Function_205dfc4
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x24]
	ldr     r1, [sp, #0x14]
	ldr     r0, [r0, #0x0]
	mov     r2, r6
	bl      Function_200b60c
	mov     r0, #0x0
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x204f8a0

.word NrOfPkmn @ 0x204f8a0
.word Unknown_20ec078 @ 0x204f8a4



.thumb
ScriptCmd_325: @ 204f8a8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r5, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0xc]
	bl      Function_20247c8
	cmp     r0, #0x0
	bne     branch_204f8e0
	ldr     r1, [sp, #0x0]
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	add     sp, #0xc
	pop     {r4-r7,pc}

branch_204f8e0: @ 204f8e0 :thumb
	ldr     r0, [r5, #0xc]
	mov     r1, #0x20
	add     r2, sp, #0x8
	bl      Function_20308a0
	mov     r7, r0
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x1
	beq     branch_204f8f8
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	b       branch_204f936

branch_204f8f8: @ 204f8f8 :thumb
	mov     r4, #0x0
branch_204f8fa: @ 204f8fa :thumb
	ldr     r0, [r5, #0xc]
	mov     r1, r7
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_20308bc
	mov     r1, #0x0
	add     r6, r1, r0
	ldr     r0, [r5, #0xc]
	mov     r1, r7
	mov     r2, #0x1
	mov     r3, r4
	bl      Function_20308bc
	add     r6, r6, r0
	ldr     r0, [r5, #0xc]
	mov     r1, r7
	mov     r2, #0x2
	mov     r3, r4
	bl      Function_20308bc
	add     r0, r6, r0
	beq     branch_204f92e
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
branch_204f92e: @ 204f92e :thumb
	ldr     r0, [pc, #0x1c] @ 0x204f94c, (=NrOfPkmn)
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blo     branch_204f8fa
branch_204f936: @ 204f936 :thumb
	cmp     r7, #0x0
	beq     branch_204f940
	mov     r0, r7
	bl      free
branch_204f940: @ 204f940 :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x204f94c

.word NrOfPkmn @ 0x204f94c



.thumb
ScriptCmd_326: @ 204f950 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x80
	ldr     r6, [r1, #0x0]
	bl      ScriptHandler_LoadHWord
	add     r4, #0x80
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0xc]
	mov     r4, #0x0
	bl      Function_20247c8
	cmp     r0, #0x0
	bne     branch_204f986
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	strh    r0, [r1, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}

branch_204f986: @ 204f986 :thumb
	ldr     r0, [r6, #0xc]
	mov     r1, #0x20
	add     r2, sp, #0x4
	bl      Function_20308a0
	mov     r7, r0
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_204f9b0
	mov     r5, r4
branch_204f99a: @ 204f99a :thumb
	ldr     r0, [r6, #0xc]
	mov     r1, r7
	mov     r2, #0x0
	mov     r3, r5
	bl      Function_20308bc
	add     r4, r4, r0
	ldr     r0, [pc, #0x20] @ 0x204f9cc, (=NrOfPkmn)
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r0
	blo     branch_204f99a
branch_204f9b0: @ 204f9b0 :thumb
	cmp     r7, #0x0
	beq     branch_204f9ba
	mov     r0, r7
	bl      free
branch_204f9ba: @ 204f9ba :thumb
	ldr     r0, [pc, #0x14] @ 0x204f9d0, (=0x2710)
	cmp     r4, r0
	bls     branch_204f9c2
	mov     r4, r0
branch_204f9c2: @ 204f9c2 :thumb
	ldr     r0, [sp, #0x0]
	strh    r4, [r0, #0x0]
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x204f9cc

.word NrOfPkmn @ 0x204f9cc
.word 0x2710 @ 0x204f9d0



thumb_func_start ScriptCmd_32a
ScriptCmd_32a: @ 204f9d4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	mov     r0, #0x0
	bl      Function_205e55c
	mov     r1, r0
	mov     r0, r6
	mov     r2, #0xff
	bl      Function_2030698
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_17
	mov     r5, r0
	mov     r0, #0x0
	bl      Function_205e50c
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0xff
	bl      Function_2030698
	mov     r1, #0x0
	strh    r1, [r4, #0x0]
	cmp     r0, #0x32
	bne     branch_204fa30
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
branch_204fa30: @ 204fa30 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
thumb_func_end ScriptCmd_32a


.thumb
Function_204fa34: @ 204fa34 :thumb
	push    {r4-r6,lr}
	mov     r4, r3
	mov     r5, r0
	ldrb    r0, [r4, #0x1]
	mov     r6, r2
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	bl      Function_203608c
	cmp     r5, r0
	beq     branch_204fa4e
	ldrh    r0, [r6, #0x4]
	strh    r0, [r4, #0x6]
branch_204fa4e: @ 204fa4e :thumb

	pop     {r4-r6,pc}
@ 0x204fa50


.thumb
.globl Function_204fa50
Function_204fa50: @ 204fa50 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r3, #0x0
	add     r0, sp, #0x4
	strb    r3, [r0, #0x0]
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r1
	mov     r1, #0x5
	mov     r4, r2
	bl      Function_2030280
	cmp     r4, #0x3
	bne     branch_204fa88

	mov     r0, r5
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	mov     r0, #0x6a
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, #0x6a
	mov     r3, #0x0
	bl      Function_20306e4

branch_204fa88: @ 204fa88 :thumb
	mov     r0, r5
	bl      LoadVariableAreaAdress_17
	mov     r5, r0
	mov     r0, r4
	bl      Function_205e50c
	mov     r6, r0
	mov     r0, r4
	bl      Function_205e50c
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_20306e4
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x204fab2


.align 2, 0
.thumb
ScriptCmd_2d2: @ 204fab4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      ScriptHandler_LoadHWord
	mov     r7, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0
	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_20302dc
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_203041c
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, r0
	cmp     r7, #0x4
	bhi     branch_204fba4
	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x204fb20

Jumppoints_204fb20:
.hword branch_204fb2a - Jumppoints_204fb20 - 2
.hword branch_204fb3c - Jumppoints_204fb20 - 2
.hword branch_204fba4 - Jumppoints_204fb20 - 2
.hword branch_204fb74 - Jumppoints_204fb20 - 2
.hword branch_204fb86 - Jumppoints_204fb20 - 2
.thumb
branch_204fb2a: @ 204fb2a :thumb
	add     r4, #0x80
	ldr     r1, [r4, #0x0]
	mov     r0, r5
	ldr     r1, [r1, #0xc]
	mov     r2, #0x0
	bl      Function_2049ec4
	strh    r0, [r6, #0x0]
	b       branch_204fbac
@ 0x204fb3c

.thumb
branch_204fb3c: @ 204fb3c :thumb
	cmp     r5, #0x3
	bne     branch_204fb60
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	mov     r0, #0x6c
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x6c
	bl      Function_2030698
	strh    r0, [r6, #0x0]
	b       branch_204fbac
@ 0x204fb60

.thumb
branch_204fb60: @ 204fb60 :thumb
	lsl     r2, r5, #24
	mov     r3, #0x0
	ldr     r0, [sp, #0x4]
	mov     r1, #0x9
	lsr     r2, r2, #24
	str     r3, [sp, #0x0]
	bl      Function_2030470
	strh    r0, [r6, #0x0]
	b       branch_204fbac
@ 0x204fb74

.thumb
branch_204fb74: @ 204fb74 :thumb
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	lsl     r2, r5, #24
	ldr     r0, [r0, #0xc]
	ldr     r1, [sp, #0x4]
	lsr     r2, r2, #24
	bl      Function_204fbec
	b       branch_204fbac
@ 0x204fb86

.thumb
branch_204fb86: @ 204fb86 :thumb
	cmp     r5, #0x0
	bne     branch_204fb8e
	mov     r2, #0x0
	b       branch_204fb98
@ 0x204fb8e

.thumb
branch_204fb8e: @ 204fb8e :thumb
	cmp     r5, #0x1
	bne     branch_204fb96
	mov     r2, #0x1
	b       branch_204fb98
@ 0x204fb96

.thumb
branch_204fb96: @ 204fb96 :thumb
	mov     r2, #0x2
branch_204fb98: @ 204fb98 :thumb
	ldr     r0, [r4, #0x74]
	bl      Function_204fdb4
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x204fba4

.thumb
branch_204fba4: @ 204fba4 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	strh    r0, [r6, #0x0]
.thumb
branch_204fbac: @ 204fbac :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x204fbb2


.align 2, 0
.thumb
ScriptCmd_2d5: @ 204fbb4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_203041c
	lsl     r2, r4, #24
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	lsr     r2, r2, #24
	ldr     r0, [r0, #0xc]
	bl      Function_204fbec
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204fbea


.align 2, 0
.thumb
Function_204fbec: @ 204fbec :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x4]
	mov     r3, #0x0
	add     r0, sp, #0x8
	strb    r3, [r0, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r1
	mov     r1, #0x9
	mov     r5, r2
	bl      Function_2030430
	cmp     r5, #0x3
	bne     branch_204fc24
	ldr     r0, [sp, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	mov     r0, #0x6c
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x6c
	mov     r3, #0x0
	bl      Function_20306e4
.thumb
branch_204fc24: @ 204fc24 :thumb
	ldr     r0, [sp, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	mov     r0, r5
	bl      Function_205e5e0
	mov     r6, r0
	mov     r0, r5
	bl      Function_205e5e0
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_20306e4
	ldr     r0, [sp, #0x4]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	mov     r0, r5
	bl      Function_205e630
	mov     r6, r0
	mov     r0, r5
	bl      Function_205e630
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_20306e4
	mov     r4, #0x0
.thumb
branch_204fc72: @ 204fc72 :thumb
	ldr     r0, [sp, #0x4]
	bl      LoadVariableAreaAdress_17
	lsl     r1, r4, #24
	mov     r6, r0
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_205e5b4
	lsl     r1, r4, #24
	mov     r7, r0
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_205e5b4
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, r7
	mov     r3, #0x1
	bl      Function_20306e4
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_204fc72
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x204fcaa


.align 2, 0
.thumb
ScriptCmd_2d3: @ 204fcac :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0
	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r3, r0
	ldr     r0, [r5, #0x74]
	mov     r1, r4
	mov     r2, r6
	bl      Function_204fcf8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x204fcf8


.thumb
Function_204fcf8: @ 204fcf8 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	mov     r5, r1
	mov     r0, #0xb
	mov     r1, #0x10
	mov     r6, r2
	mov     r7, r3
	bl      malloc
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x10
	mov     r0, #0x0
.thumb
branch_204fd12: @ 204fd12 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_204fd12
	strh    r5, [r4, #0x4]
	strh    r6, [r4, #0x6]
	mov     r0, r4
	str     r7, [r4, #0xc]
	bl      Function_2099514
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x8] @ 0x204fd34, (=Function_204fd38+1)
	mov     r2, r4
	bl      Function_2050944
	pop     {r3-r7,pc}
@ 0x204fd32

.align 2
.word Function_204fd38+1 @ 0x204fd34



.thumb
Function_204fd38: @ 204fd38 :thumb
	push    {r4,lr}
	bl      GetUnknownStruct01_c
	mov     r4, r0
	ldrb    r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_204fd50
	cmp     r1, #0x1
	beq     branch_204fd66
	cmp     r1, #0x2
	beq     branch_204fda6
	b       branch_204fdae

branch_204fd50: @ 204fd50 :thumb
	mov     r0, #0x85
	mov     r1, r4
	mov     r2, #0x10
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_204fdae
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_204fdae

branch_204fd66: @ 204fd66 :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x2
	blo     branch_204fdae
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldrh    r1, [r4, #0x4]
	ldrh    r0, [r4, #0x8]
	cmp     r1, r0
	beq     branch_204fd80
	ldrh    r0, [r4, #0xa]
	cmp     r1, r0
	bne     branch_204fd88
branch_204fd80: @ 204fd80 :thumb
	ldr     r1, [r4, #0xc]
	ldrh    r0, [r1, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r1, #0x0]
branch_204fd88: @ 204fd88 :thumb
	ldrh    r1, [r4, #0x6]
	ldrh    r0, [r4, #0x8]
	cmp     r1, r0
	beq     branch_204fd96
	ldrh    r0, [r4, #0xa]
	cmp     r1, r0
	bne     branch_204fd9e
branch_204fd96: @ 204fd96 :thumb
	ldr     r1, [r4, #0xc]
	ldrh    r0, [r1, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r0, [r1, #0x0]
branch_204fd9e: @ 204fd9e :thumb
	ldrb    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_204fdae

branch_204fda6: @ 204fda6 :thumb
	bl      free
	mov     r0, #0x1
	pop     {r4,pc}

branch_204fdae: @ 204fdae :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x204fdb2


.align 2, 0
.thumb
Function_204fdb4: @ 204fdb4 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r2
	bl      LoadOverWorldDataAdress
	mov     r7, r0
	mov     r0, #0xb
	mov     r1, #0x10
	bl      malloc
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x10
	blx     MI_CpuFill8
	strb    r6, [r4, #0x4]
	str     r5, [r4, #0xc]
	ldr     r0, [r7, #0x10]
	ldr     r1, [pc, #0x8] @ 0x204fde4, (=Function_204fde8+1)
	mov     r2, r4
	bl      Function_2050944
	pop     {r3-r7,pc}
@ 0x204fde2

.align 2
.word Function_204fde8+1 @ 0x204fde4



.thumb
Function_204fde8: @ 204fde8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadOverWorldDataAdress
	mov     r5, r0
	mov     r0, r4
	bl      GetUnknownStruct01_c
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x4
	bhi     branch_204fe4a
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x204fe0c

Jumppoints_204fe0c:
.hword branch_204fe16 - Jumppoints_204fe0c - 2
.hword branch_204fe22 - Jumppoints_204fe0c - 2
.hword branch_204fe2c - Jumppoints_204fe0c - 2
.hword branch_204fe38 - Jumppoints_204fe0c - 2
.hword branch_204fe42 - Jumppoints_204fe0c - 2

.thumb
branch_204fe16: @ 204fe16 :thumb
	mov     r1, r5
	mov     r2, #0xb
	bl      Function_204fe50
	str     r0, [r4, #0x0]
	b       branch_204fe4a

branch_204fe22: @ 204fe22 :thumb
	mov     r1, r5
	bl      Function_204ff1c
	str     r0, [r4, #0x0]
	b       branch_204fe4a

branch_204fe2c: @ 204fe2c :thumb
	mov     r1, r5
	mov     r2, #0xb
	bl      Function_204ff6c
	str     r0, [r4, #0x0]
	b       branch_204fe4a

branch_204fe38: @ 204fe38 :thumb
	mov     r1, r5
	bl      Function_204fff4
	str     r0, [r4, #0x0]
	b       branch_204fe4a

branch_204fe42: @ 204fe42 :thumb
	bl      free
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_204fe4a: @ 204fe4a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x204fe4e


.align 2, 0
.thumb
Function_204fe50: @ 204fe50 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0xb
	mov     r1, #0x40
	bl      malloc
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, #0x40
	blx     MIi_CpuClearFast
	ldr     r0, [r6, #0xc]
	bl      LoadPokePartyAdress
	str     r0, [r4, #0x0]
	ldr     r0, [r6, #0xc]
	bl      LoadVariableAreaAdressItemList
	str     r0, [r4, #0x4]
	ldr     r0, [r6, #0xc]
	bl      LoadVariableAreaAdress_f
	str     r0, [r4, #0x8]
	ldr     r0, [r6, #0xc]
	bl      LoadPlayerDataAdress
	mov     r1, r4
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	add     r1, #0x21
	strb    r0, [r1, #0x0]
	mov     r1, r4
	mov     r2, #0x17
	add     r1, #0x20
	strb    r2, [r1, #0x0]
	str     r6, [r4, #0x1c]
	mov     r1, r4
	ldrb    r2, [r5, #0x5]
	add     r1, #0x22
	strb    r2, [r1, #0x0]
branch_204fea4: @ 204fea4 :thumb
	add     r1, r5, r0
	ldrb    r2, [r1, #0x6]
	add     r1, r4, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	add     r1, #0x2c
	lsr     r0, r0, #24
	strb    r2, [r1, #0x0]
	cmp     r0, #0x3
	blo     branch_204fea4
	mov     r0, r4
	mov     r1, #0x64
	add     r0, #0x33
	strb    r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0x32
	ldrb    r2, [r1, #0x0]
	mov     r7, #0xf
	mov     r1, #0x3
	bic     r2, r7
	orr     r2, r1
	mov     r1, r4
	add     r1, #0x32
	strb    r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x32
	ldrb    r3, [r1, #0x0]
	mov     r1, #0xf0
	mov     r2, #0x30
	bic     r3, r1
	orr     r3, r2
	mov     r2, r4
	add     r2, #0x32
	strb    r3, [r2, #0x0]
	mov     r0, r4
	ldrb    r2, [r5, #0x4]
	add     r0, #0x32
	cmp     r2, #0x2
	bne     branch_204ff06
	ldrb    r2, [r0, #0x0]
	mov     r3, #0x2
	bic     r2, r7
	orr     r2, r3
	strb    r2, [r0, #0x0]
	ldrb    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x20
	orr     r1, r2
	strb    r1, [r0, #0x0]
branch_204ff06: @ 204ff06 :thumb
	ldr     r1, [pc, #0x10] @ 0x204ff18, (=Unknown_20f1e88)
	mov     r0, r6
	mov     r2, r4
	bl      OverWorldData_AllocAndInitOverlayData
	ldr     r0, [r5, #0xc]
	str     r4, [r0, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x204ff18

.word Unknown_20f1e88 @ 0x204ff18



.thumb
Function_204ff1c: @ 204ff1c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r1
	bl      Function_20509b4
	cmp     r0, #0x0
	beq     branch_204ff2e
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_204ff2e: @ 204ff2e :thumb
	ldr     r0, [r5, #0xc]
	ldr     r4, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x6
	beq     branch_204ff44
	cmp     r0, #0x7
	bne     branch_204ff48
	mov     r0, #0x4
	pop     {r3-r5,pc}

branch_204ff44: @ 204ff44 :thumb
	mov     r0, #0x4
	pop     {r3-r5,pc}

branch_204ff48: @ 204ff48 :thumb
	mov     r0, r4
	add     r0, #0x2c
	add     r1, r5, #0x6
	mov     r2, #0x3
	blx     MI_CpuCopy8
	mov     r0, r4
	add     r0, #0x22
	ldrb    r0, [r0, #0x0]
	strb    r0, [r5, #0x5]
	mov     r0, r4
	bl      free
	ldr     r0, [r5, #0xc]
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x204ff6c


.thumb
Function_204ff6c: @ 204ff6c :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r6, r0
	ldr     r5, [r7, #0xc]
	mov     r0, r2
	mov     r1, #0x30
	bl      malloc2
	mov     r1, #0x0
	mov     r2, #0x30
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r0, r5
	bl      LoadPlayerDataAdress
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      LoadPokePartyAdress
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_207a274
	str     r0, [r4, #0x1c]
	mov     r0, r5
	bl      Function_208c324
	str     r0, [r4, #0x2c]
	mov     r0, #0x1
	strb    r0, [r4, #0x11]
	ldrb    r0, [r6, #0x5]
	strb    r0, [r4, #0x14]
	ldr     r0, [r4, #0x0]
	bl      GetNrOfPkmnInParty
	strb    r0, [r4, #0x13]
	mov     r0, #0x0
	strh    r0, [r4, #0x18]
	strb    r0, [r4, #0x12]
	mov     r0, r5
	bl      LoadVariableAreaAdress_18
	str     r0, [r4, #0x20]
	ldr     r1, [pc, #0x24] @ 0x204ffec, (=Unknown_20ec1f0)
	mov     r0, r4
	bl      Function_208d720
	mov     r0, r5
	bl      LoadTrainerDataAdress
	mov     r1, r0
	mov     r0, r4
	bl      Function_208e9c0
	ldr     r1, [pc, #0x14] @ 0x204fff0, (=Unknown_20f410c)
	mov     r0, r7
	mov     r2, r4
	bl      OverWorldData_AllocAndInitOverlayData
	ldr     r0, [r6, #0xc]
	str     r4, [r0, #0x0]
	mov     r0, #0x3
	pop     {r3-r7,pc}
@ 0x204ffec

.word Unknown_20ec1f0 @ 0x204ffec
.word Unknown_20f410c @ 0x204fff0



.thumb
Function_204fff4: @ 204fff4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_20509b4
	cmp     r0, #0x0
	beq     branch_2050006
	mov     r0, #0x3
	pop     {r4,pc}

branch_2050006: @ 2050006 :thumb
	ldr     r0, [r4, #0xc]
	ldr     r0, [r0, #0x0]
	ldrb    r1, [r0, #0x14]
	strb    r1, [r4, #0x5]
	bl      free
	ldr     r1, [r4, #0xc]
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	pop     {r4,pc}
@ 0x205001a


.align 2, 0
.thumb
Function_205001c: @ 205001c :thumb
	push    {r4-r6,lr}
	mov     r4, r3
	mov     r6, r0
	ldrb    r0, [r4, #0x1]
	mov     r5, r2
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	bl      Function_203608c
	cmp     r6, r0
	beq     branch_205003a
	ldrh    r0, [r5, #0x4]
	strh    r0, [r4, #0x8]
	ldrh    r0, [r5, #0x6]
	strh    r0, [r4, #0xa]
branch_205003a: @ 205003a :thumb
	pop     {r4-r6,pc}
@ 0x205003c


thumb_func_start ScriptCmd_2d9
ScriptCmd_2d9: @ 205003c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0

	bl      ScriptHandler_LoadHWord
	mov     r7, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r5, r0

	mov     r0, r4
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r6, r0

	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_20304a0
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_20305b8
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x13
	bl      ScriptHandler_GetSomeScriptAddresses
	mov     r1, r0
	cmp     r7, #0x4
	bhi     branch_205012c

	add     r0, r7, r7
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x20500a8

Jumppoints_20500a8:
.hword branch_20500b2 - Jumppoints_20500a8 - 2
.hword branch_20500c4 - Jumppoints_20500a8 - 2
.hword branch_205012c - Jumppoints_20500a8 - 2
.hword branch_20500fc - Jumppoints_20500a8 - 2
.hword branch_205010e - Jumppoints_20500a8 - 2

.thumb
branch_20500b2: @ 20500b2 :thumb
	add     r4, #0x80
	ldr     r1, [r4, #0x0]
	mov     r0, r5
	ldr     r1, [r1, #0xc]
	mov     r2, #0x0
	bl      Function_2049ec4
	strh    r0, [r6, #0x0]
	b       branch_2050134

branch_20500c4: @ 20500c4 :thumb
	cmp     r5, #0x3
	bne     branch_20500e8
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_17
	mov     r4, r0
	mov     r0, #0x6e
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x6e
	bl      Function_2030698
	strh    r0, [r6, #0x0]
	b       branch_2050134

branch_20500e8: @ 20500e8 :thumb
	lsl     r2, r5, #24
	mov     r3, #0x0
	ldr     r0, [sp, #0x4]
	mov     r1, #0x8
	lsr     r2, r2, #24
	str     r3, [sp, #0x0]
	bl      Function_2030600
	strh    r0, [r6, #0x0]
	b       branch_2050134

branch_20500fc: @ 20500fc :thumb
	add     r4, #0x80
	ldr     r0, [r4, #0x0]
	lsl     r2, r5, #24
	ldr     r0, [r0, #0xc]
	ldr     r1, [sp, #0x4]
	lsr     r2, r2, #24
	bl      Function_2050174
	b       branch_2050134

branch_205010e: @ 205010e :thumb
	cmp     r5, #0x0
	bne     branch_2050116
	mov     r2, #0x0
	b       branch_2050120

branch_2050116: @ 2050116 :thumb
	cmp     r5, #0x1
	bne     branch_205011e
	mov     r2, #0x1
	b       branch_2050120

branch_205011e: @ 205011e :thumb
	mov     r2, #0x2
branch_2050120: @ 2050120 :thumb
	ldr     r0, [r4, #0x74]
	bl      Function_20502e0
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_205012c: @ 205012c :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	strh    r0, [r6, #0x0]
branch_2050134: @ 2050134 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
thumb_func_end ScriptCmd_2d9


thumb_func_start ScriptCmd_2dc
ScriptCmd_2dc: @ 205013c :thumb
	push    {r3-r5,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	bl      Function_20305b8
	lsl     r2, r4, #24
	add     r5, #0x80
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	lsr     r2, r2, #24
	ldr     r0, [r0, #0xc]
	bl      Function_2050174
	mov     r0, #0x0
	pop     {r3-r5,pc}
thumb_func_end ScriptCmd_2dc


thumb_func_start Function_2050174
Function_2050174: @ 2050174 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r3, #0x0
	add     r0, sp, #0x4
	strb    r3, [r0, #0x0]
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r1
	mov     r1, #0x8
	mov     r4, r2
	bl      Function_20305cc
	cmp     r4, #0x3
	bne     branch_20501ac
	mov     r0, r5
	bl      LoadVariableAreaAdress_17
	mov     r6, r0
	mov     r0, #0x6e
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r6
	mov     r1, #0x6e
	mov     r3, #0x0
	bl      Function_20306e4
branch_20501ac: @ 20501ac :thumb
	mov     r0, r5
	bl      LoadVariableAreaAdress_17
	mov     r5, r0
	mov     r0, r4
	bl      Function_205e700
	mov     r6, r0
	mov     r0, r4
	bl      Function_205e700
	bl      Function_205e6a8
	mov     r2, r0
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_20306e4
	add     sp, #0x8
	pop     {r4-r6,pc}
thumb_func_end Function_2050174


thumb_func_start ScriptCmd_2da
ScriptCmd_2da: @ 20501d8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r4, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckSaveParameter
	mov     r6, r0

	mov     r0, r5
	bl      ScriptHandler_LoadHWord
	mov     r1, r0
	mov     r0, r5
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	bl      ScriptHandler_CheckLoadParameter
	mov     r3, r0

	ldr     r0, [r5, #0x74]
	mov     r1, r4
	mov     r2, r6
	bl      Function_2050224
	mov     r0, #0x1
	pop     {r4-r6,pc}
thumb_func_end ScriptCmd_2da


