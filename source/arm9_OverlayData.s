
/* Input:
r0: Ptr to JumpTable
r1: RAM_2101d38
*/
thumb_func_start AllocAndInitOverlayData
AllocAndInitOverlayData: @ 20067e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1

	mov     r0, r2
	mov     r1, #OverlayData_Size
	bl      malloc
	mov     r3, r0
	mov     r2, r3

	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}

	mov     r0, #0x0
	str     r0, [r3, #OverlayData_FunctionCounter]
	str     r0, [r3, #OverlayData_14]
	str     r4, [r3, #OverlayData_18]
	str     r0, [r3, #OverlayData_1c]
	str     r0, [r3, #OverlayData_20]
	str     r0, [r3, #OverlayData_24]

	mov     r0, r3
	pop     {r3-r5,pc}
thumb_func_end AllocAndInitOverlayData


thumb_func_start Call_free2
Call_free2: @ 2006814 :thumb
	ldr     r3, =free+1
	bx      r3
@ 0x2006818

.align 2
.pool
thumb_func_end Call_free2


/* Input:
r0: Ptr to OverlayData
r1: Size
r2: Flags
*/
thumb_func_start MallocSomeDataAndStorePtrInOverlayData1c
MallocSomeDataAndStorePtrInOverlayData1c: @ 200681c :thumb
	push    {r4,lr}
	mov     r4, r0

	mov     r0, r2
	bl      malloc
	str     r0, [r4, #OverlayData_1c]
	pop     {r4,pc}
thumb_func_end MallocSomeDataAndStorePtrInOverlayData1c


/* Input:
r0: Ptr to OverlayData
*/
thumb_func_start LoadOverlayData1c
LoadOverlayData1c: @ 200682c :thumb
	ldr     r0, [r0, #OverlayData_1c]
	bx      lr
thumb_func_end LoadOverlayData1c


/* Input:
r0: Ptr to OverlayData
*/
thumb_func_start FreeSomeDataAndStore0InOverlayData1c
FreeSomeDataAndStore0InOverlayData1c: @ 2006830 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #OverlayData_1c]
	bl      free

	mov     r0, #0x0
	str     r0, [r4, #OverlayData_1c]
	pop     {r4,pc}
thumb_func_end FreeSomeDataAndStore0InOverlayData1c


/* Input:
r0: Ptr to OverlayData
*/
thumb_func_start LoadPtrToOverWorldDataIn18
LoadPtrToOverWorldDataIn18: @ 2006840 :thumb
	ldr     r0, [r0, #OverlayData_18]
	bx      lr
thumb_func_end LoadPtrToOverWorldDataIn18


/* Input:
r0: Ptr to OverlayData
*/
thumb_func_start CallOverlayDataJumpTable
CallOverlayDataJumpTable: @ 2006844 :thumb
	push    {r4,lr}
	mov     r4, r0

	ldr     r1, [r4, #OverlayData_FunctionCounter]
	cmp     r1, #0x3
	bhi     endCallOverlayDataJumpTable

	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x200685a

Jumppoints_200685a:
.hword loadOverlayAndCallFirstFunction - Jumppoints_200685a - 2
.hword callOverlayDataFirstFunction - Jumppoints_200685a - 2
.hword callOverlayDataSecondFunction - Jumppoints_200685a - 2
.hword callOverlayDataThirdFunctionAndUnloadOverlay - Jumppoints_200685a - 2

loadOverlayAndCallFirstFunction: @ 2006862 :thumb
	mov     r1, #0x0
	ldr     r0, [r4, #OverlayData_JumpTable3]
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2006872
	mov     r1, #0x2
	bl      LoadOverlay
branch_2006872: @ 2006872 :thumb

	mov     r0, #0x1
	str     r0, [r4, #OverlayData_FunctionCounter]

callOverlayDataFirstFunction: @ 2006876 :thumb
	mov     r1, r4
	ldr     r2, [r4, #OverlayData_JumpTable0]
	mov     r0, r4
	add     r1, #OverlayData_14
	blx     r2
	cmp     r0, #0x1
	bne     endCallOverlayDataJumpTable

	mov     r0, #0x2
	str     r0, [r4, #OverlayData_FunctionCounter]
	mov     r0, #0x0
	str     r0, [r4, #OverlayData_14]
	b       endCallOverlayDataJumpTable

callOverlayDataSecondFunction: @ 200688e :thumb
	mov     r1, r4
	ldr     r2, [r4, #OverlayData_JumpTable1]
	add     r1, #OverlayData_14
	blx     r2
	cmp     r0, #0x1
	bne     endCallOverlayDataJumpTable

	mov     r0, #0x3
	str     r0, [r4, #OverlayData_FunctionCounter]
	mov     r0, #0x0
	str     r0, [r4, #OverlayData_14]
	b       endCallOverlayDataJumpTable

callOverlayDataThirdFunctionAndUnloadOverlay: @ 20068a4 :thumb
	mov     r1, r4
	ldr     r2, [r4, #OverlayData_JumpTable2]
	add     r1, #OverlayData_14
	blx     r2
	cmp     r0, #0x1
	bne     endCallOverlayDataJumpTable

	mov     r1, #0x0
	ldr     r0, [r4, #OverlayData_JumpTable3]
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_20068be
	bl      UnloadOverlay
branch_20068be: @ 20068be :thumb

	mov     r0, #0x1
	pop     {r4,pc}

endCallOverlayDataJumpTable: @ 20068c2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
thumb_func_end CallOverlayDataJumpTable
