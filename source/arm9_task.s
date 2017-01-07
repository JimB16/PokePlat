
/* Input:
r0: TaskList
r1: Task
*/
thumb_func_start InitSingleTask
InitSingleTask: @ 201ccf0 :thumb
	str     r0, [r1, #Task_TaskList]
	.hword  0x1d00 @ add r0, r0, #TaskList_Header_TaskStruct
	str     r0, [r1, #Task_NextTask]
	str     r0, [r1, #Task_PrevTask]

	mov     r0, #0x0
	str     r0, [r1, #Task_Priority]
	str     r0, [r1, #Task_ArgumentPtr]
	str     r0, [r1, #Task_FunctionPtr]
	bx      lr
thumb_func_end InitSingleTask


/* Input:
r0: TaskList
*/
thumb_func_start InitAllTasksInTaskList
InitAllTasksInTaskList: @ 201cd04 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrh    r0, [r5, #TaskList_Header_MaxTaskNr]
	mov     r7, #0x0
	cmp     r0, #0x0
	ble     branch_201cd32

	mov     r4, r7
	mov     r6, r7
branch_201cd14: @ 201cd14 :thumb
	ldr     r1, [r5, #TaskList_Header_EndOfTaskPtrs]
	mov     r0, r5
	add     r1, r1, r4
	bl      InitSingleTask

	ldr     r0, [r5, #TaskList_Header_EndOfTaskPtrs]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r1, r0, r4
	ldr     r0, [r5, #TaskList_Header_StartOfTaskPtrs]
	add     r4, #Task_Size
	str     r1, [r0, r6]

	ldrh    r0, [r5, #TaskList_Header_MaxTaskNr]
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r7, r0
	blt     branch_201cd14

branch_201cd32: @ 201cd32 :thumb
	mov     r0, #0x0
	strh    r0, [r5, #TaskList_Header_NrOfTasks]
	pop     {r3-r7,pc}
thumb_func_end InitAllTasksInTaskList


/* Input:
r0: TaskList
r1: Ptr to Function
r2: Ptr to UnknownStruct
*/
thumb_func_start GetAdrOfFreeTask
GetAdrOfFreeTask: @ 201cd38 :thumb
	ldrh    r3, [r0, #TaskList_Header_NrOfTasks]
	ldrh    r1, [r0, #TaskList_Header_MaxTaskNr]
	cmp     r3, r1
	bne     branch_201cd44
	mov     r0, #0x0
	bx      lr

branch_201cd44: @ 201cd44 :thumb
	ldr     r2, [r0, #TaskList_Header_StartOfTaskPtrs]
	lsl     r1, r3, #2
	ldr     r2, [r2, r1]

	add     r1, r3, #0x1            @ NrOfTasks++
	strh    r1, [r0, #TaskList_Header_NrOfTasks]

	mov     r0, r2
	bx      lr
thumb_func_end GetAdrOfFreeTask


/* Input:
r0: TaskList
r1: Task
*/
thumb_func_start ClearTaskStruct
ClearTaskStruct: @ 201cd54 :thumb
	ldrh    r2, [r0, #TaskList_Header_NrOfTasks]
	cmp     r2, #0x0
	bne     branch_201cd5e
	mov     r0, #0x0
	bx      lr

branch_201cd5e: @ 201cd5e :thumb
	str     r0, [r1, #Task_TaskList]
	add     r2, r0, #TaskList_Header_TaskStruct
	str     r2, [r1, #Task_NextTask]
	str     r2, [r1, #Task_PrevTask]

	mov     r2, #0x0
	str     r2, [r1, #Task_Priority]
	str     r2, [r1, #Task_ArgumentPtr]
	str     r2, [r1, #Task_FunctionPtr]

	ldrh    r2, [r0, #TaskList_Header_NrOfTasks]
	.hword  0x1e52 @ sub r2, r2, #0x1
	strh    r2, [r0, #TaskList_Header_NrOfTasks]

	ldr     r2, [r0, #TaskList_Header_StartOfTaskPtrs]
	ldrh    r0, [r0, #TaskList_Header_NrOfTasks]
	lsl     r0, r0, #2
	str     r1, [r2, r0]

	mov     r0, #0x1
	bx      lr
thumb_func_end ClearTaskStruct


thumb_func_start GetAllocSizeForTasks
GetAllocSizeForTasks: @ 201cd80 :thumb
	lsl     r0, r0, #5
	add     r0, #TaskList_HeaderSize
	bx      lr
thumb_func_end GetAllocSizeForTasks


/* Input:
r0: MaxNr of Tasks
r1: Ptr to allocated memory

Return:
r0: Ptr to TaskList
*/
thumb_func_start InitTaskList
InitTaskList: @ 201cd88 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bne     branch_201cd94
	bl      ErrorHandling
branch_201cd94: @ 201cd94 :thumb

	mov     r1, r4
	add     r1, #TaskList_HeaderSize
	lsl     r0, r5, #2
	str     r1, [r4, #TaskList_Header_StartOfTaskPtrs]
	add     r0, r1, r0
	str     r0, [r4, #TaskList_Header_EndOfTaskPtrs]

	strh    r5, [r4, #TaskList_Header_MaxTaskNr]

	mov     r0, #0x0
	strh    r0, [r4, #TaskList_Header_NrOfTasks]
	str     r0, [r4, #TaskList_Header_Protected]

	mov     r0, r4
	bl      InitTaskList2

	mov     r0, r4
	pop     {r3-r5,pc}
thumb_func_end InitTaskList


/* Input:
r0: TaskList
*/
thumb_func_start InitTaskList2
InitTaskList2: @ 201cdb4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      InitAllTasksInTaskList

	str     r4, [r4, #TaskList_Header_TaskStruct + Task_TaskList]

	add     r0, r4, #TaskList_Header_TaskStruct
	str     r0, [r4, #TaskList_Header_TaskStruct + Task_NextTask]
	str     r0, [r4, #TaskList_Header_TaskStruct + Task_PrevTask]

	mov     r0, #0x0
	str     r0, [r4, #TaskList_Header_TaskStruct + Task_Priority]
	str     r0, [r4, #TaskList_Header_TaskStruct + Task_ArgumentPtr]
	str     r0, [r4, #TaskList_Header_TaskStruct + Task_FunctionPtr]

	ldr     r0, [r4, #TaskList_Header_TaskStruct + Task_NextTask]
	str     r0, [r4, #TaskList_Header_CurTask]

	pop     {r4,pc}
thumb_func_end InitTaskList2


/* Run the tasks
Input:
r0: Ptr to TaskList
*/
thumb_func_start RunTasks
RunTasks: @ 201cdd4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0

	ldr     r0, [r5, #TaskList_Header_Protected]
	cmp     r0, #0x0
	bne     endRunTask

	ldr     r1, [r5, #TaskList_Header_TaskStruct + Task_NextTask]
	add     r4, r5, #TaskList_Header_TaskStruct
	str     r1, [r5, #TaskList_Header_CurTask]
	cmp     r1, r4
	beq     emptyTaskList

	mov     r6, #0x0
branch_201cdea: @ 201cdea :thumb
	ldr     r0, [r1, #Task_NextTask]
	str     r0, [r5, #TaskList_Header_NextTask]

	ldr     r0, [r5, #TaskList_Header_CurTask]
	ldr     r1, [r0, #Task_isDeactivated]
	cmp     r1, #0x0
	bne     branch_201ce02

	ldr     r2, [r0, #Task_FunctionPtr]
	cmp     r2, #0x0
	beq     branch_201ce04

	ldr     r1, [r0, #Task_ArgumentPtr]
	blx     r2
	b       branch_201ce04

branch_201ce02: @ 201ce02 :thumb
	str     r6, [r0, #Task_isDeactivated]
branch_201ce04: @ 201ce04 :thumb
	ldr     r1, [r5, #TaskList_Header_NextTask]
	str     r1, [r5, #TaskList_Header_CurTask]
	cmp     r1, r4
	bne     branch_201cdea

emptyTaskList: @ 201ce0c :thumb
	mov     r0, #0x0
	str     r0, [r1, #Task_FunctionPtr]

endRunTask: @ 201ce10 :thumb
	pop     {r4-r6,pc}
thumb_func_end RunTasks


/* Input:
r0: TaskList
r1: Ptr to Function
r2: Ptr to Argument
r3: Priority
*/
thumb_func_start AddTaskToTaskList
AddTaskToTaskList: @ 201ce14 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, #0x1
	str     r5, [r4, #TaskList_Header_Protected]

	bl      AddTask

	mov     r1, #0x0
	str     r1, [r4, #TaskList_Header_Protected]
	pop     {r3-r5,pc}
thumb_func_end AddTaskToTaskList


/* Input:
r0: TaskList
r1: Ptr to Function
r2: Ptr to Argument
r3: Priority
*/
thumb_func_start AddTask
AddTask: @ 201ce28 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	mov     r4, r3

	bl      GetAdrOfFreeTask
	cmp     r0, #0x0
	bne     branch_201ce3e
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_201ce3e: @ 201ce3e :thumb
	str     r4, [r0, #Task_Priority]                   @ New Task
	str     r7, [r0, #Task_ArgumentPtr]         @ New Task
	str     r6, [r0, #Task_FunctionPtr]         @ New Task
	ldr     r2, [r5, #TaskList_Header_CurTask]  @ CurTask
	ldr     r1, [r2, #Task_FunctionPtr]
	cmp     r1, #0x0
	beq     branch_201ce5e

	ldr     r1, [r2, #Task_Priority] @ CurTask
	cmp     r1, r4
	bhi     curTaskHasHigherPriority

	mov     r1, #0x1
	str     r1, [r0, #Task_isDeactivated]          @ New Task
	b       branch_201ce62

curTaskHasHigherPriority: @ 201ce58 :thumb
	mov     r1, #0x0
	str     r1, [r0, #Task_isDeactivated]          @ New Task
	b       branch_201ce62

branch_201ce5e: @ 201ce5e :thumb
	mov     r1, #0x0
	str     r1, [r0, #Task_isDeactivated]          @ New Task
branch_201ce62: @ 201ce62 :thumb
	ldr     r3, [r5, #TaskList_Header_TaskStruct + Task_NextTask]
	add     r2, r5, #TaskList_Header_TaskStruct
	cmp     r3, r2
	beq     branch_201ce8e

	ldr     r4, [r0, #Task_Priority]           @ New Task
branch_201ce6c: @ 201ce6c :thumb
	ldr     r1, [r3, #Task_Priority]
	cmp     r1, r4
	bls     branch_201ce88

	ldr     r1, [r3, #Task_PrevTask]
	str     r1, [r0, #Task_PrevTask]    @ New Task
	str     r3, [r0, #Task_NextTask]    @ New Task
	ldr     r1, [r3, #Task_PrevTask]
	str     r0, [r1, #Task_NextTask]
	str     r0, [r3, #Task_PrevTask]

	ldr     r1, [r5, #TaskList_Header_NextTask]
	cmp     r3, r1
	bne     branch_201cea6

	str     r0, [r5, #TaskList_Header_NextTask]
	pop     {r3-r7,pc}

branch_201ce88: @ 201ce88 :thumb
	ldr     r3, [r3, #Task_NextTask]
	cmp     r3, r2
	bne     branch_201ce6c

branch_201ce8e: @ 201ce8e :thumb
	ldr     r2, [r5, #TaskList_Header_NextTask]
	add     r1, r5, #TaskList_Header_TaskStruct
	cmp     r2, r1
	bne     branch_201ce98
	str     r0, [r5, #TaskList_Header_NextTask]
branch_201ce98: @ 201ce98 :thumb

	ldr     r1, [r5, #TaskList_Header_TaskStruct + Task_PrevTask]
	str     r1, [r0, #Task_PrevTask]                @ New Task
	add     r1, r5, #TaskList_Header_TaskStruct
	str     r1, [r0, #Task_NextTask]                @ New Task
	ldr     r1, [r5, #TaskList_Header_TaskStruct + Task_PrevTask]
	str     r0, [r1, #Task_NextTask]
	str     r0, [r5, #TaskList_Header_TaskStruct + Task_PrevTask]
branch_201cea6: @ 201cea6 :thumb
	pop     {r3-r7,pc}
thumb_func_end AddTask


/* Input:
r0: Task
*/
thumb_func_start RemoveTaskFromTaskList
RemoveTaskFromTaskList: @ 201cea8 :thumb
	mov     r1, r0
	ldr     r2, [r1, #Task_TaskList]
	ldr     r0, [r2, #TaskList_Header_NextTask]
	cmp     r0, r1
	bne     branch_201ceb6
	ldr     r0, [r1, #Task_NextTask]
	str     r0, [r2, #TaskList_Header_NextTask]
branch_201ceb6: @ 201ceb6 :thumb

	ldr     r2, [r1, #Task_NextTask]
	ldr     r0, [r1, #Task_PrevTask]
	ldr     r3, =ClearTaskStruct+1
	str     r2, [r0, #Task_NextTask]        @ PrevTask
	ldr     r2, [r1, #Task_PrevTask]
	ldr     r0, [r1, #Task_NextTask]
	str     r2, [r0, #Task_PrevTask]        @ PrevTask
	ldr     r0, [r1, #Task_TaskList]
	bx      r3
@ 0x201cec8

.align 2
.pool
thumb_func_end RemoveTaskFromTaskList
