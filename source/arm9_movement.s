/* Input:
r0: Adr to SpriteStruct
r1: Adr to MovementScript
*/
thumb_func_start Malloc_MovementScript
Malloc_MovementScript: @ 2065700 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1

	mov     r0, #0x4
	mov     r1, #MovementScriptStruct_Size
	bl      malloc2
	mov     r4, r0
	bne     branch_2065716
	bl      ErrorHandling
branch_2065716: @ 2065716 :thumb

	mov     r2, r4
	mov     r1, #MovementScriptStruct_Size
	mov     r0, #0x0
clearMovementScript: @ 206571c :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     clearMovementScript

	mov     r0, r5
	bl      GetSpriteSpriteList
	bl      GetSpriteListc
	sub     r2, r0, #0x1
	ldr     r0, [pc, #0x14] @ 0x2065748, (=MovementScript_Initializer+1)
	mov     r1, r4
	bl      AddTaskToTaskList1
	mov     r7, r0
	bne     branch_2065740
	bl      ErrorHandling
branch_2065740: @ 2065740 :thumb

	str     r5, [r4, #MovementScriptStruct_SpriteStruct]
	str     r6, [r4, #MovementScriptStruct_AdrOfMovementScript]
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x2065748

.word MovementScript_Initializer+1 @ 0x2065748
thumb_func_end Malloc_MovementScript



.thumb
.globl Function_206574c
Function_206574c: @ 206574c :thumb
	push    {r3,lr}
	bl      Function_201ced0
	ldr     r0, [r0, #0x4]
	pop     {r3,pc}
@ 0x2065756


.align 2, 0
.thumb
.globl Function_2065758
Function_2065758: @ 2065758 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_201ced0
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      Function_2065684
	cmp     r0, #0x1
	beq     branch_2065770
	bl      ErrorHandling
branch_2065770: @ 2065770 :thumb

	ldr     r0, [r4, #0xc]
	bl      Function_20656ac
	mov     r0, #0x4
	mov     r1, r4
	bl      Function_2018238
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	pop     {r3-r5,pc}
@ 0x2065786


/* Input:
r1: Ptr to MovementScriptStruct
*/
thumb_func_start MovementScript_Initializer
MovementScript_Initializer: @ 2065788 :thumb
	push    {r3-r5,lr}
	ldr     r4, =JumpTable_MovementScriptStateFunctions
	mov     r5, r1
branch_206578e: @ 206578e :thumb
	ldr     r1, [r5, #MovementScriptStruct_State]
	mov     r0, r5
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	blx     r1
	cmp     r0, #0x1
	beq     branch_206578e

	pop     {r3-r5,pc}
@ 0x206579e

.align 2
.pool
thumb_func_end MovementScript_Initializer



/* Input:
r0: Ptr to MovementScriptStruct
*/
.thumb
Function_20657a4: @ 20657a4 :thumb
	mov     r1, #0x0
	str     r1, [r0, #MovementScriptStruct_Counter]
	mov     r1, #0x1
	str     r1, [r0, #MovementScriptStruct_State]
	mov     r0, r1
	bx      lr
@ 0x20657b0


/* Input:
r0: Ptr to MovementScriptStruct
*/
thumb_func_start SetSpriteMovementWhenPossible
SetSpriteMovementWhenPossible: @ 20657b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #MovementScriptStruct_SpriteStruct]
	bl      IsSpriteMovable
	cmp     r0, #0x0
	bne     branch_20657c2

	mov     r0, #0x0
	pop     {r4,pc}

branch_20657c2: @ 20657c2 :thumb
	mov     r0, #0x2
	str     r0, [r4, #MovementScriptStruct_State]
	mov     r0, #0x1
	pop     {r4,pc}
thumb_func_end SetSpriteMovementWhenPossible


/* Input:
r0: Ptr to MovementScriptStruct
*/
thumb_func_start LoadMovementScriptCmdIntoSpriteStruct
LoadMovementScriptCmdIntoSpriteStruct: @ 20657cc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #MovementScriptStruct_AdrOfMovementScript]
	ldr     r0, [r4, #MovementScriptStruct_SpriteStruct]
	ldrh    r1, [r1, #0x0]
	bl      Function_2065638
	mov     r0, #0x3
	str     r0, [r4, #MovementScriptStruct_State]

	mov     r0, #0x0
	pop     {r4,pc}
thumb_func_end LoadMovementScriptCmdIntoSpriteStruct


/* Input:
r0: Ptr to MovementScriptStruct
*/
.align 2, 0
.thumb
Function_20657e4: @ 20657e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #MovementScriptStruct_SpriteStruct]
	bl      Function_2065684
	cmp     r0, #0x0
	bne     branch_20657f6
	mov     r0, #0x0
	pop     {r4,pc}

branch_20657f6: @ 20657f6 :thumb
	mov     r0, #0x4
	str     r0, [r4, #MovementScriptStruct_State]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20657fe


/* Input:
r0: Ptr to MovementScriptStruct
*/
thumb_func_start ExecuteSpriteMovementCmdAsOftenAsSet
ExecuteSpriteMovementCmdAsOftenAsSet: @ 2065800 :thumb
	ldr     r1, [r0, #MovementScriptStruct_Counter]
	ldr     r3, [r0, #MovementScriptStruct_AdrOfMovementScript]
	add     r2, r1, #0x1
	str     r2, [r0, #MovementScriptStruct_Counter]
	ldrh    r1, [r3, #0x2]
	cmp     r2, r1
	bge     branch_2065816
	mov     r1, #0x1
	str     r1, [r0, #MovementScriptStruct_State]
	mov     r0, r1
	bx      lr

branch_2065816: @ 2065816 :thumb
	add     r1, r3, #0x4
	str     r1, [r0, #MovementScriptStruct_AdrOfMovementScript]
	ldrh    r1, [r3, #0x4]
	cmp     r1, #0xfe
	beq     reachedEndOfMovementScript

	mov     r1, #0x0
	str     r1, [r0, #MovementScriptStruct_State]
	mov     r0, #0x1
	bx      lr

reachedEndOfMovementScript: @ 2065828 :thumb
	mov     r1, #0x1
	str     r1, [r0, #MovementScriptStruct_4]
	mov     r1, #0x5
	str     r1, [r0, #MovementScriptStruct_State]
	mov     r0, #0x0
	bx      lr
thumb_func_end ExecuteSpriteMovementCmdAsOftenAsSet


/* Input:
r0: Ptr to MovementScriptStruct
*/
.thumb
Function_2065834: @ 2065834 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2065838


.thumb
.globl Function_2065838
Function_2065838: @ 2065838 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r4, r1
	cmp     r7, #0x4
	blt     branch_2065846
	bl      ErrorHandling
branch_2065846: @ 2065846 :thumb

	ldr     r3, [pc, #0x30] @ 0x2065878, (=Unknown_20ee31c)
	ldr     r6, [r3, #0x0]
	cmp     r6, #0x0
	beq     branch_2065870

	mov     r1, #0x0
branch_2065850: @ 2065850 :thumb
	mov     r2, r1
	mov     r5, r6
branch_2065854: @ 2065854 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r4, r0
	bne     branch_2065860

	lsl     r0, r7, #2
	ldr     r0, [r6, r0]
	pop     {r3-r7,pc}

branch_2065860: @ 2065860 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r2, #0x4
	blt     branch_2065854

	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r6, [r3, #0x0]
	cmp     r6, #0x0
	bne     branch_2065850

branch_2065870: @ 2065870 :thumb
	bl      ErrorHandling
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2065878

.word Unknown_20ee31c @ 0x2065878



.thumb
Function_206587c: @ 206587c :thumb
	push    {r4,r5}
	ldr     r4, [pc, #0x30] @ 0x20658b0, (=Unknown_20ee31c)
	ldr     r5, [r4, #0x0]
	cmp     r5, #0x0
	beq     branch_20658a6

	mov     r2, #0x0
branch_2065888: @ 2065888 :thumb
	mov     r3, r2
branch_206588a: @ 206588a :thumb
	ldr     r1, [r5, #0x0]
	cmp     r0, r1
	bne     branch_2065896

	mov     r0, r3
	pop     {r4,r5}
	bx      lr

branch_2065896: @ 2065896 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r3, #0x4
	blt     branch_206588a

	.hword  0x1d24 @ add r4, r4, #0x4
	ldr     r5, [r4, #0x0]
	cmp     r5, #0x0
	bne     branch_2065888

branch_20658a6: @ 20658a6 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4,r5}
	bx      lr
@ 0x20658ae

.align 2
.word Unknown_20ee31c @ 0x20658b0



thumb_func_start ExecuteMovementFunctions
ExecuteMovementFunctions: @ 20658b4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
branch_20658b8: @ 20658b8 :thumb
	mov     r0, r5
	bl      GetSpriteMovementNr
	mov     r4, r0
	cmp     r4, #0xff
	beq     branch_20658d8

	mov     r0, r5
	bl      GetSpriteMovementState
	mov     r2, r0              @ MovementState
	mov     r0, r5
	mov     r1, r4              @ MovementNr
	bl      Call_Movement_JumpTables
	cmp     r0, #0x0
	bne     branch_20658b8

branch_20658d8: @ 20658d8 :thumb
	pop     {r3-r5,pc}
thumb_func_end ExecuteMovementFunctions


thumb_func_start ExecuteMovement
ExecuteMovement: @ 20658dc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      ExecuteMovementFunctions

	mov     r0, r4
	mov     r1, #Sprite_Flags_EndMovement
	bl      CheckSpriteFlags
	cmp     r0, #0x0
	bne     branch_20658f4
	mov     r0, #0x0
	pop     {r4,pc}

branch_20658f4: @ 20658f4 :thumb
	mov     r0, r4
	mov     r1, #Sprite_Flags_EndMovement
	bl      UnsetSpriteFlags

	mov     r0, r4
	mov     r1, #0xff
	bl      SetSpriteMovementNr

	mov     r0, r4
	mov     r1, #0x0
	bl      SetSpriteMovementState

	mov     r0, #0x1
	pop     {r4,pc}
thumb_func_end ExecuteMovement


/* Input:
r1: MovementNr
r2: MovementState
*/
thumb_func_start Call_Movement_JumpTables
Call_Movement_JumpTables: @ 2065910 :thumb
	push    {r3,lr}
	lsl     r3, r1, #2
	ldr     r1, =Movement_JumpTables
	ldr     r3, [r1, r3]
	lsl     r1, r2, #2
	ldr     r1, [r3, r1]
	blx     r1
	pop     {r3,pc}
@ 0x2065920

.align 2
.pool
thumb_func_end Call_Movement_JumpTables


thumb_func_start Movement_EndMovement
Movement_EndMovement: @ 2065924 :thumb
	push    {r3,lr}
	mov     r1, #Sprite_Flags_EndMovement
	bl      SetSpriteFlags
	mov     r0, #0x0
	pop     {r3,pc}
thumb_func_end Movement_EndMovement


thumb_func_start Movement_ChangeFaceDirection
Movement_ChangeFaceDirection: @ 2065930 :thumb
	push    {r4,lr}
	mov     r4, r0

	bl      ChangeSpriteFaceDirection_WithCheck

	mov     r0, r4
	mov     r1, #0x0
	bl      SetSpritea0

	mov     r0, r4
	bl      CopySpritePositionsFromOldToNew

	mov     r0, r4
	bl      IncreaseSpriteMovementState
	pop     {r4,pc}
thumb_func_end Movement_ChangeFaceDirection


thumb_func_start Movement_SeeUp
Movement_SeeUp: @ 2065950 :thumb
	push    {r3,lr}
	mov     r1, #ORIENT_UP
	bl      Movement_ChangeFaceDirection
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_SeeUp


thumb_func_start Movement_SeeDown
Movement_SeeDown: @ 206595c :thumb
	push    {r3,lr}
	mov     r1, #ORIENT_DOWN
	bl      Movement_ChangeFaceDirection
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_SeeDown


thumb_func_start Movement_SeeLeft
Movement_SeeLeft: @ 2065968 :thumb
	push    {r3,lr}
	mov     r1, #ORIENT_LEFT
	bl      Movement_ChangeFaceDirection
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_SeeLeft


thumb_func_start Movement_SeeRight
Movement_SeeRight: @ 2065974 :thumb
	push    {r3,lr}
	mov     r1, #ORIENT_RIGHT
	bl      Movement_ChangeFaceDirection
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_SeeRight


/* Input:
r0: PtrToSpriteStruct
r1: Orientation/Direction
r2: delta position
r3: Length of Animation
*/
thumb_func_start Movement_WalkMovement
Movement_WalkMovement: @ 2065980 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, #0xc
	mov     r5, r0
	mov     r6, r2
	mov     r7, r3
	bl      GetSpriteAdrf8AndClearMem
	add     r1, sp, #0x8
	ldrh    r1, [r1, #0x10]
	strh    r1, [r0, #Sprite_f8_0]
	strh    r7, [r0, #Sprite_f8_Length]
	str     r4, [r0, #Sprite_f8_Direction] @ Orientation
	str     r6, [r0, #Sprite_f8_DeltaPos] @ delta position

	mov     r0, r5
	mov     r1, r4
	bl      MoveSpriteForWalk

	mov     r0, r5
	mov     r1, r4
	bl      ChangeBothSpriteFaceDirections

	add     r1, sp, #0x8
	ldrh    r1, [r1, #0x10]
	mov     r0, r5
	bl      SetSpritea0

	mov     r0, r5
	mov     r1, #Sprite_Flags_4
	bl      SetSpriteFlags

	mov     r0, r5
	bl      IncreaseSpriteMovementState
	pop     {r3-r7,pc}
thumb_func_end Movement_WalkMovement


/* Input:
r0: PtrToSpriteStruct
*/
thumb_func_start Movement_ContinueWalking
Movement_ContinueWalking: @ 20659c8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      GetSpriteAdrf8
	mov     r4, r0

	ldr     r1, [r4, #Sprite_f8_Direction]
	ldr     r2, [r4, #Sprite_f8_DeltaPos]
	mov     r0, r5
	bl      Movement_AddDeltaPositionToSprite70

	mov     r0, r5
	bl      Function_20642f8

	mov     r0, #Sprite_f8_Length
	ldsh    r1, [r4, r0]        @ Length of Animation in Frames
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r4, #Sprite_f8_Length]

	ldsh    r0, [r4, r0]
	cmp     r0, #0x0            @ Has the animation ended?
	ble     branch_20659f4
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_20659f4: @ 20659f4 :thumb
	mov     r0, r5
	mov     r1, #Sprite_Flags_EndMovement|Sprite_Flags_8
	bl      SetSpriteFlags

	mov     r0, r5
	bl      CopySpritePositionsFromOldToNew

	mov     r0, r5
	bl      Function_2062b68

	mov     r0, r5
	mov     r1, #0x0
	bl      SetSpritea0

	mov     r0, r5
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	pop     {r3-r5,pc}
thumb_func_end Movement_ContinueWalking


thumb_func_start Movement_WalkUpSlow
Movement_WalkUpSlow: @ 2065a1c :thumb
	push    {r3,lr}
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	mov     r1, #ORIENT_UP  @ Orientation/Direction
	lsl     r2, r2, #11     @ delta position
	mov     r3, #32         @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_WalkUpSlow


.thumb
Movement_WalkDownSlow: @ 2065a30 :thumb
	push    {r3,lr}
	mov     r1, #0x1        @ Orientation/Direction ORIENT_DOWN
	lsl     r2, r1, #11     @ delta position
	mov     r3, #32         @ Length of Animation
	str     r1, [sp, #0x0]
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065a42


thumb_func_start Movement_WalkLeftSlow
Movement_WalkLeftSlow: @ 2065a44 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	mov     r1, #0x2        @ Orientation/Direction ORIENT_LEFT
	lsl     r2, r1, #10     @ delta position
	mov     r3, #32         @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_WalkLeftSlow


.thumb
Movement_WalkRightSlow: @ 2065a58 :thumb
	push    {r3,lr}
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	mov     r1, #ORIENT_RIGHT @ Orientation/Direction
	lsl     r2, r2, #11     @ delta position
	mov     r3, #32         @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065a6c


thumb_func_start Movement_WalkUp
Movement_WalkUp: @ 2065a6c :thumb
	push    {r3,lr}
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	mov     r1, #ORIENT_UP  @ Orientation/Direction
	lsl     r2, r2, #11     @ delta position
	mov     r3, #16         @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_WalkUp


thumb_func_start Movement_WalkDown
Movement_WalkDown: @ 2065a80 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	mov     r1, #ORIENT_DOWN  @ Orientation/Direction
	lsl     r2, r1, #12     @ delta position
	mov     r3, #16         @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_WalkDown


thumb_func_start Movement_WalkLeft
Movement_WalkLeft: @ 2065a94 :thumb
	push    {r3,lr}
	mov     r1, #0x2            @ Orientation/Direction ORIENT_LEFT
	lsl     r2, r1, #11     @ delta position
	mov     r3, #16         @ Length of Animation
	str     r1, [sp, #0x0]
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_WalkLeft


thumb_func_start Movement_WalkRight
Movement_WalkRight: @ 2065aa8 :thumb
	push    {r3,lr}
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	mov     r1, #ORIENT_RIGHT @ Orientation/Direction
	lsl     r2, r2, #11     @ delta position
	mov     r3, #16         @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_WalkRight


.thumb
Movement_WalkUpFast: @ 2065abc :thumb
	push    {r3,lr}
	mov     r1, #0x3
	mov     r2, #0x2
	str     r1, [sp, #0x0]
	mov     r1, #ORIENT_UP  @ Orientation/Direction
	lsl     r2, r2, #12     @ delta position
	mov     r3, #8          @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065ad2


.align 2, 0
.thumb
Movement_WalkDownFast: @ 2065ad4 :thumb
	push    {r3,lr}
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r1, #0x1        @ Orientation/Direction ORIENT_DOWN
	lsl     r2, r1, #13     @ delta position
	mov     r3, #8          @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065ae8

.thumb
Movement_WalkLeftFast: @ 2065ae8 :thumb
	push    {r3,lr}
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r1, #0x2        @ Orientation/Direction ORIENT_LEFT
	lsl     r2, r1, #12     @ delta position
	mov     r3, #8          @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065afc

.thumb
Movement_WalkRightFast: @ 2065afc :thumb
	push    {r3,lr}
	mov     r2, #0x2
	mov     r1, #ORIENT_RIGHT @ Orientation/Direction
	lsl     r2, r2, #12     @ delta position
	mov     r3, #8          @ Length of Animation
	str     r1, [sp, #0x0]
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065b10

.thumb
Movement_WalkUpVeryFast: @ 2065b10 :thumb
	push    {r3,lr}
	mov     r3, #4          @ Length of Animation
	mov     r1, #ORIENT_UP  @ Orientation/Direction
	lsl     r2, r3, #12     @ delta position
	str     r3, [sp, #0x0]
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065b22


thumb_func_start Movement_WalkDownVeryFast
Movement_WalkDownVeryFast: @ 2065b24 :thumb
	push    {r3,lr}
	mov     r1, #0x1        @ Orientation/Direction ORIENT_DOWN
	mov     r3, #4          @ Length of Animation
	lsl     r2, r1, #14     @ delta position
	str     r3, [sp, #0x0]
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_WalkDownVeryFast


thumb_func_start Movement_WalkLeftVeryFast
Movement_WalkLeftVeryFast: @ 2065b38 :thumb
	push    {r3,lr}
	mov     r1, #0x2        @ Orientation/Direction ORIENT_LEFT
	mov     r3, #4          @ Length of Animation
	lsl     r2, r1, #13     @ delta position
	str     r3, [sp, #0x0]
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_WalkLeftVeryFast


thumb_func_start Movement_WalkRightVeryFast
Movement_WalkRightVeryFast: @ 2065b4c :thumb
	push    {r3,lr}
	mov     r3, #4          @ Length of Animation
	mov     r1, #ORIENT_RIGHT @ Orientation/Direction
	lsl     r2, r3, #12     @ delta position
	str     r3, [sp, #0x0]
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_WalkRightVeryFast


thumb_func_start Movement_RunUp
Movement_RunUp: @ 2065b60 :thumb
	push    {r3,lr}
	mov     r1, #0x5
	mov     r2, #0x2
	str     r1, [sp, #0x0]
	mov     r1, #ORIENT_UP  @ Orientation/Direction
	lsl     r2, r2, #14     @ delta position
	mov     r3, #2          @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_RunUp


thumb_func_start Movement_RunDown
Movement_RunDown: @ 2065b78 :thumb
	push    {r3,lr}
	mov     r1, #0x5
	str     r1, [sp, #0x0]
	mov     r1, #ORIENT_DOWN @ Orientation/Direction
	lsl     r2, r1, #15     @ delta position
	mov     r3, #2          @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_RunDown


.thumb
Movement_RunLeft: @ 2065b8c :thumb
	push    {r3,lr}
	mov     r1, #0x5
	str     r1, [sp, #0x0]
	mov     r1, #0x2        @ Orientation/Direction ORIENT_LEFT
	lsl     r2, r1, #14     @ delta position
	mov     r3, r1          @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065ba0

.thumb
Movement_RunRight: @ 2065ba0 :thumb
	push    {r3,lr}
	mov     r1, #0x5
	mov     r2, #0x2
	str     r1, [sp, #0x0]
	mov     r1, #ORIENT_RIGHT @ Orientation/Direction
	lsl     r2, r2, #14     @ delta position
	mov     r3, #2          @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065bb6


thumb_func_start Movement_PauseHoverUp
Movement_PauseHoverUp: @ 2065bb8 :thumb
	push    {r3,lr}
	mov     r2, #0x1
	mov     r1, #0x0        @ Orientation/Direction ORIENT_UP
	lsl     r2, r2, #16     @ delta position
	mov     r3, #1          @ Length of Animation
	str     r1, [sp, #0x0]
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_PauseHoverUp

.thumb
Movement_PauseHoverDown: @ 2065bcc :thumb
	push    {r3,lr}
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r1, #0x1        @ Orientation/Direction ORIENT_DOWN
	lsl     r2, r1, #16     @ delta position
	mov     r3, r1          @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065be0

.thumb
Movement_PauseHoverLeft: @ 2065be0 :thumb
	push    {r3,lr}
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r1, #0x2        @ Orientation/Direction ORIENT_LEFT
	lsl     r2, r1, #15     @ delta position
	mov     r3, #1          @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065bf4

.thumb
Movement_PauseHoverRight: @ 2065bf4 :thumb
	push    {r3,lr}
	mov     r1, #0x0
	mov     r2, #0x1
	str     r1, [sp, #0x0]
	mov     r1, #ORIENT_RIGHT @ Orientation/Direction
	lsl     r2, r2, #16     @ delta position
	mov     r3, #1          @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065c0a


thumb_func_start Movement_PauseReverseUp
Movement_PauseReverseUp: @ 2065c0c :thumb
	push    {r3,lr}
	mov     r1, #0x9
	mov     r2, #0x1
	str     r1, [sp, #0x0]
	mov     r1, #ORIENT_UP  @ Orientation/Direction
	lsl     r2, r2, #14     @ delta position
	mov     r3, #4          @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_PauseReverseUp


thumb_func_start Movement_PauseReverseDown
Movement_PauseReverseDown: @ 2065c24 :thumb
	push    {r3,lr}
	mov     r1, #0x9
	str     r1, [sp, #0x0]
	mov     r1, #0x1        @ Orientation/Direction ORIENT_DOWN
	lsl     r2, r1, #14     @ delta position
	mov     r3, #4          @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
thumb_func_end Movement_PauseReverseDown

.thumb
Movement_PauseReverseLeft: @ 2065c38 :thumb
	push    {r3,lr}
	mov     r1, #0x9
	str     r1, [sp, #0x0]
	mov     r1, #0x2        @ Orientation/Direction ORIENT_LEFT
	lsl     r2, r1, #13     @ delta position
	mov     r3, #4          @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065c4c


.thumb
Movement_PauseReverseRight: @ 2065c4c :thumb
	push    {r3,lr}
	mov     r1, #0x9
	mov     r2, #0x1
	str     r1, [sp, #0x0]
	mov     r1, #ORIENT_RIGHT @ Orientation/Direction
	lsl     r2, r2, #14     @ delta position
	mov     r3, #4          @ Length of Animation
	bl      Movement_WalkMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065c62


thumb_func_start Movement_MoveMovement
Movement_MoveMovement: @ 2065c64 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r6, r2
	mov     r4, r3
	mov     r1, #0xc
	mov     r5, r0
	bl      GetSpriteAdrf8AndClearMem
	strh    r4, [r0, #Sprite_f8_0]
	add     r1, r6, #0x1
	strh    r1, [r0, #Sprite_f8_Length]

	mov     r0, r5
	mov     r1, r7
	bl      ChangeSpriteFaceDirection_WithCheck

	mov     r0, r5
	mov     r1, r4
	bl      SetSpritea0

	mov     r0, r5
	bl      CopySpritePositionsFromOldToNew

	mov     r0, r5
	bl      IncreaseSpriteMovementState
	pop     {r3-r7,pc}
thumb_func_end Movement_MoveMovement


.thumb
Movement_ContinueMoving: @ 2065c98 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      GetSpriteAdrf8
	mov     r1, #Sprite_f8_Length
	ldsh    r2, [r0, r1]
	.hword  0x1e52 @ sub r2, r2, #0x1
	strh    r2, [r0, #Sprite_f8_Length]
	ldsh    r0, [r0, r1]
	cmp     r0, #0x0        @ End of Animation?
	ble     branch_2065cb2
	mov     r0, #0x0
	pop     {r4,pc}

branch_2065cb2: @ 2065cb2 :thumb
	mov     r0, r4
	mov     r1, #Sprite_Flags_EndMovement
	bl      SetSpriteFlags

	mov     r0, r4
	mov     r1, #0x0
	bl      SetSpritea0

	mov     r0, r4
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2065ccc

.thumb
Movement_MoveUpSlow: @ 2065ccc :thumb
	push    {r3,lr}
	mov     r1, #0x0
	mov     r2, #0x20
	mov     r3, #0x1
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065cdc

.thumb
Movement_MoveDownSlow: @ 2065cdc :thumb
	push    {r3,lr}
	mov     r1, #0x1
	mov     r2, #0x20
	mov     r3, r1
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065cec

.thumb
Movement_MoveLeftSlow: @ 2065cec :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x20
	mov     r3, #0x1
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065cfc

.thumb
Movement_MoveRightSlow: @ 2065cfc :thumb
	push    {r3,lr}
	mov     r1, #0x3
	mov     r2, #0x20
	mov     r3, #0x1
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065d0c

.thumb
Movement_MoveUp: @ 2065d0c :thumb
	push    {r3,lr}
	mov     r1, #0x0
	mov     r2, #0x10
	mov     r3, #0x2
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065d1c

.thumb
Movement_MoveDown: @ 2065d1c :thumb
	push    {r3,lr}
	mov     r1, #0x1
	mov     r2, #0x10
	mov     r3, #0x2
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065d2c

.thumb
Movement_MoveLeft: @ 2065d2c :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x10
	mov     r3, r1
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065d3c

.thumb
Movement_MoveRight: @ 2065d3c :thumb
	push    {r3,lr}
	mov     r1, #0x3
	mov     r2, #0x10
	mov     r3, #0x2
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065d4c

.thumb
Movement_MoveUpFast: @ 2065d4c :thumb
	push    {r3,lr}
	mov     r1, #0x0
	mov     r2, #0x8
	mov     r3, #0x3
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065d5c

.thumb
Movement_MoveDownFast: @ 2065d5c :thumb
	push    {r3,lr}
	mov     r1, #0x1
	mov     r2, #0x8
	mov     r3, #0x3
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065d6c

.thumb
Movement_MoveLeftFast: @ 2065d6c :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x8
	mov     r3, #0x3
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065d7c

.thumb
Movement_MoveRightFast: @ 2065d7c :thumb
	push    {r3,lr}
	mov     r1, #0x3
	mov     r2, #0x8
	mov     r3, r1
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065d8c

.thumb
Movement_MoveUpVeryFast: @ 2065d8c :thumb
	push    {r3,lr}
	mov     r2, #0x4
	mov     r1, #0x0
	mov     r3, r2
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065d9c

.thumb
Movement_MoveDownVeryFast: @ 2065d9c :thumb
	push    {r3,lr}
	mov     r2, #0x4
	mov     r1, #0x1
	mov     r3, r2
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065dac

.thumb
Movement_MoveLeftVeryFast: @ 2065dac :thumb
	push    {r3,lr}
	mov     r2, #0x4
	mov     r1, #0x2
	mov     r3, r2
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065dbc

.thumb
Movement_MoveRightVeryFast: @ 2065dbc :thumb
	push    {r3,lr}
	mov     r2, #0x4
	mov     r1, #0x3
	mov     r3, r2
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065dcc

.thumb
Function_2065dcc: @ 2065dcc :thumb
	push    {r3,lr}
	mov     r1, #0x0
	mov     r2, #0x2
	mov     r3, #0x5
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065ddc

.thumb
Function_2065ddc: @ 2065ddc :thumb
	push    {r3,lr}
	mov     r1, #0x1
	mov     r2, #0x2
	mov     r3, #0x5
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065dec

.thumb
Function_2065dec: @ 2065dec :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, r1
	mov     r3, #0x5
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065dfc

.thumb
Function_2065dfc: @ 2065dfc :thumb
	push    {r3,lr}
	mov     r1, #0x3
	mov     r2, #0x2
	mov     r3, #0x5
	bl      Movement_MoveMovement
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2065e0c


.thumb
Function_2065e0c: @ 2065e0c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, #0x10
	mov     r5, r0
	mov     r6, r2
	mov     r7, r3
	bl      GetSpriteAdrf8AndClearMem
	strb    r4, [r0, #Sprite_f8_c]
	str     r6, [r0, #Sprite_f8_0]
	strb    r7, [r0, #Sprite_f8_d]
	add     r2, sp, #0x8
	ldrh    r1, [r2, #0x10]
	strb    r1, [r0, #Sprite_f8_e]
	mov     r1, #0x14
	ldsh    r1, [r2, r1]
	cmp     r6, #0x0
	strb    r1, [r0, #Sprite_f8_f]
	ldrh    r1, [r2, #0x18]
	strh    r1, [r0, #Sprite_f8_DeltaPos]
	bne     branch_2065e3e

	mov     r0, r5
	bl      CopySpritePositionsFromOldToNew
	b       branch_2065e46

branch_2065e3e: @ 2065e3e :thumb
	mov     r0, r5
	mov     r1, r4
	bl      MoveSpriteForWalk
branch_2065e46: @ 2065e46 :thumb
	ldr     r1, [pc, #0x30] @ 0x2065e78, (=0x10004) Sprite_Flags_10000|Sprite_Flags_4
	mov     r0, r5
	bl      SetSpriteFlags
	mov     r0, r5
	mov     r1, r4
	bl      ChangeBothSpriteFaceDirections
	add     r1, sp, #0x8
	ldrh    r1, [r1, #0x10]
	mov     r0, r5
	bl      SetSpritea0
	mov     r0, r5
	bl      IncreaseSpriteMovementState
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x0
	beq     branch_2065e74
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2005748
branch_2065e74: @ 2065e74 :thumb

	pop     {r3-r7,pc}
@ 0x2065e76

.align 2
.word 0x10004 @ 0x2065e78



.thumb
Function_2065e7c: @ 2065e7c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	add     r5, sp, #0x10
	ldrh    r4, [r5, #0x10]
	str     r4, [sp, #0x0]
	mov     r4, #0x14
	ldsh    r4, [r5, r4]
	str     r4, [sp, #0x4]
	ldrh    r4, [r5, #0x18]
	str     r4, [sp, #0x8]
	ldr     r4, [pc, #0x8] @ 0x2065e9c, (=0x60b)
	str     r4, [sp, #0xc]
	bl      Function_2065e0c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2065e9c

.word 0x60b @ 0x2065e9c



.thumb
Movement_ContinueJumping: @ 2065ea0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0
	bl      GetSpriteAdrf8
	mov     r4, r0
	ldr     r2, [r4, #Sprite_f8_0]
	cmp     r2, #0x0
	beq     branch_2065ef0
	mov     r1, #Sprite_f8_c
	ldsb    r1, [r4, r1]
	mov     r0, r5
	bl      Movement_AddDeltaPositionToSprite70
	mov     r0, r5
	bl      Function_20642f8
	mov     r0, #0x1
	ldr     r1, [r4, #Sprite_f8_Direction]
	lsl     r0, r0, #16
	cmp     r1, r0
	blt     branch_2065ee2
	mov     r0, #0x0
	str     r0, [r4, #Sprite_f8_Direction]
	mov     r1, #Sprite_f8_c
	ldsb    r1, [r4, r1]
	mov     r0, r5
	bl      MoveSpriteForWalk
	mov     r0, r5
	mov     r1, #0x4
	bl      SetSpriteFlags
branch_2065ee2: @ 2065ee2 :thumb
	ldr     r1, [r4, #Sprite_f8_0]
	cmp     r1, #0x0
	bge     branch_2065eea
	neg     r1, r1
branch_2065eea: @ 2065eea :thumb

	ldr     r0, [r4, #Sprite_f8_Direction]
	add     r0, r0, r1
	str     r0, [r4, #Sprite_f8_Direction]
branch_2065ef0: @ 2065ef0 :thumb
	ldrh    r1, [r4, #Sprite_f8_a]
	ldrh    r0, [r4, #Sprite_f8_DeltaPos]
	add     r0, r1, r0
	strh    r0, [r4, #Sprite_f8_a]
	mov     r0, #0xf
	ldrh    r1, [r4, #Sprite_f8_a]
	lsl     r0, r0, #8
	cmp     r1, r0
	bls     branch_2065f04
	strh    r0, [r4, #Sprite_f8_a]
branch_2065f04: @ 2065f04 :thumb

	mov     r1, #0xf
	ldsb    r1, [r4, r1]
	ldrh    r0, [r4, #Sprite_f8_a]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x6c] @ 0x2065f7c, (=Unknown_2100b84)
	lsr     r0, r0, #8
	lsl     r0, r0, #16
	ldr     r2, [r1, r2]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	lsr     r0, r0, #14
	ldr     r0, [r2, r0]
	str     r0, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r0, r5
	add     r1, sp, #0xc
	bl      Function_2063088
	mov     r0, #Sprite_f8_d
	ldsb    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, #Sprite_f8_d]
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_2065f3c
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_2065f3c: @ 2065f3c :thumb
	add     r1, sp, #0x0
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, r5
	bl      Function_2063088
	ldr     r1, [pc, #0x30] @ 0x2065f80, (=0x20028)
	mov     r0, r5
	bl      SetSpriteFlags
	mov     r0, r5
	bl      CopySpritePositionsFromOldToNew
	mov     r0, r5
	bl      Function_2062b68
	mov     r0, r5
	mov     r1, #0x0
	bl      SetSpritea0
	mov     r0, r5
	bl      IncreaseSpriteMovementState
	ldr     r0, [pc, #0x14] @ 0x2065f84, (=0x647)
	bl      Function_2005748
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2065f7a

.align 2
.word Unknown_2100b84 @ 0x2065f7c
.word 0x20028 @ 0x2065f80
.word 0x647 @ 0x2065f84



.thumb
Movement_JumpFacingUpSlow: @ 2065f88 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	add     r2, #0xfe
	str     r2, [sp, #0x8]
	mov     r2, r1
	mov     r3, #0x10
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x2065fa6


.align 2, 0
.thumb
Movement_JumpFacingDownSlow: @ 2065fa8 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	add     r1, #0xfe
	str     r1, [sp, #0x8]
	mov     r1, #0x1
	mov     r3, #0x10
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x2065fc6


.align 2, 0
.thumb
Movement_JumpFacingLeftSlow: @ 2065fc8 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, #0x2
	mov     r3, r1
	str     r1, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	add     r3, #0xfe
	str     r3, [sp, #0x8]
	mov     r3, #0x10
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x2065fe6


thumb_func_start Movement_JumpFacingRightSlow
Movement_JumpFacingRightSlow: @ 2065fe8 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	add     r1, #0xfe
	str     r1, [sp, #0x8]
	mov     r1, #0x3
	mov     r3, #0x10
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
thumb_func_end Movement_JumpFacingRightSlow


thumb_func_start Movement_JumpFacingUp
Movement_JumpFacingUp: @ 2066008 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r1, #0x0
	mov     r2, #0x2
	str     r1, [sp, #0x4]
	lsl     r2, r2, #8
	str     r2, [sp, #0x8]
	mov     r2, r1
	mov     r3, #0x8
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
thumb_func_end Movement_JumpFacingUp


.thumb
Movement_JumpFacingDown: @ 2066028 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r2, #0x0
	mov     r1, #0x2
	str     r2, [sp, #0x4]
	lsl     r1, r1, #8
	str     r1, [sp, #0x8]
	mov     r1, #0x1
	mov     r3, #0x8
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x2066048


.thumb
Movement_JumpFacingLeft: @ 2066048 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r2, #0x0
	mov     r1, #0x2
	str     r2, [sp, #0x4]
	lsl     r1, r1, #8
	str     r1, [sp, #0x8]
	mov     r1, #0x2
	mov     r3, #0x8
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x2066068

.thumb
Movement_JumpFacingRight: @ 2066068 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, #0x3
	mov     r3, #0x2
	str     r1, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	lsl     r3, r3, #8
	str     r3, [sp, #0x8]
	mov     r3, #0x8
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x2066086


thumb_func_start Movement_JumpUpOne
Movement_JumpUpOne: @ 2066088 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r1, #0x0
	mov     r2, #0x2
	str     r1, [sp, #0x4]
	lsl     r2, r2, #8
	str     r2, [sp, #0x8]
	lsl     r2, r2, #4
	mov     r3, #0x8
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
thumb_func_end Movement_JumpUpOne

.thumb
Movement_JumpDownOne: @ 20660a8 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	mov     r1, #0x2
	lsl     r1, r1, #8
	str     r1, [sp, #0x8]
	mov     r1, #0x1
	lsl     r2, r1, #13
	mov     r3, #0x8
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x20660ca


.align 2, 0
.thumb
Movement_JumpLeftOne: @ 20660cc :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	mov     r1, #0x2
	lsl     r1, r1, #8
	str     r1, [sp, #0x8]
	mov     r1, #0x2
	lsl     r2, r1, #12
	mov     r3, #0x8
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x20660ee


.align 2, 0
.thumb
Movement_JumpRightOne: @ 20660f0 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r2, #0x2
	lsl     r2, r2, #8
	str     r2, [sp, #0x8]
	lsl     r2, r2, #4
	mov     r3, #0x8
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x2066110

.thumb
Movement_JumpUpTwo: @ 2066110 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, #0x3
	str     r2, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	add     r2, #0xfd
	str     r2, [sp, #0x8]
	mov     r2, #0x2
	lsl     r2, r2, #12
	mov     r3, #0x10
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x2066130

.thumb
Movement_JumpDownTwo: @ 2066130 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, #0x3
	str     r2, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	add     r2, #0xfd
	mov     r1, #0x1
	str     r2, [sp, #0x8]
	lsl     r2, r1, #13
	mov     r3, #0x10
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x2066150

.thumb
Movement_JumpLeftTwo: @ 2066150 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, #0x3
	str     r2, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	add     r2, #0xfd
	mov     r1, #0x2
	str     r2, [sp, #0x8]
	lsl     r2, r1, #12
	mov     r3, #0x10
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x2066170

.thumb
Movement_JumpRightTwo: @ 2066170 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r2, r1
	add     r2, #0xfd
	str     r2, [sp, #0x8]
	mov     r2, #0x2
	lsl     r2, r2, #12
	mov     r3, #0x10
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x2066192


.align 2, 0
.thumb
Movement_PauseJumpLeftOne: @ 2066194 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, #0x9
	str     r1, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	mov     r1, #0xf0
	str     r1, [sp, #0x8]
	mov     r1, #0x2
	lsl     r2, r1, #11
	mov     r3, #0x10
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x20661b4

.thumb
Movement_PauseJumpRightOne: @ 20661b4 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, #0x9
	str     r1, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	mov     r1, #0xf0
	mov     r2, #0x1
	str     r1, [sp, #0x8]
	mov     r1, #0x3
	lsl     r2, r2, #12
	mov     r3, #0x10
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x20661d6


.align 2, 0
.thumb
Movement_PauseJumpLeftTwo: @ 20661d8 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, #0xa
	str     r2, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	lsl     r1, r2, #5
	str     r1, [sp, #0x8]
	mov     r1, #0x2
	lsl     r2, r1, #13
	mov     r3, #0xc
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x20661f8

.thumb
Movement_PauseJumpRightTwo: @ 20661f8 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, #0xa
	str     r2, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	lsl     r1, r2, #5
	mov     r2, #0x1
	str     r1, [sp, #0x8]
	mov     r1, #0x3
	lsl     r2, r2, #14
	mov     r3, #0xc
	bl      Function_2065e7c
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x206621a


.align 2, 0
.thumb
Function_206621c: @ 206621c :thumb
	push    {r3,lr}
	add     sp, #-0x10
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	mov     r2, #0xa0
	str     r2, [sp, #0x8]
	mov     r2, #0x2
	lsl     r2, r2, #12
	mov     r3, #0x18
	str     r1, [sp, #0xc]
	bl      Function_2065e0c
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3,pc}
@ 0x206623e


.align 2, 0
.thumb
Function_2066240: @ 2066240 :thumb
	push    {r3,lr}
	add     sp, #-0x10
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r1, #0xa0
	str     r1, [sp, #0x8]
	mov     r1, #0x1
	str     r2, [sp, #0xc]
	lsl     r2, r1, #13
	mov     r3, #0x18
	bl      Function_2065e0c
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3,pc}
@ 0x2066262


.align 2, 0
.thumb
Function_2066264: @ 2066264 :thumb
	push    {r3,lr}
	add     sp, #-0x10
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	mov     r1, #0xa0
	str     r1, [sp, #0x8]
	mov     r1, #0x2
	str     r2, [sp, #0xc]
	lsl     r2, r1, #12
	mov     r3, #0x18
	bl      Function_2065e0c
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3,pc}
@ 0x2066286


.align 2, 0
.thumb
Function_2066288: @ 2066288 :thumb
	push    {r3,lr}
	add     sp, #-0x10
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	mov     r2, #0xa0
	str     r2, [sp, #0x8]
	mov     r2, #0x2
	str     r3, [sp, #0xc]
	lsl     r2, r2, #12
	mov     r3, #0x18
	bl      Function_2065e0c
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3,pc}
@ 0x20662aa


.align 2, 0
.thumb
Function_20662ac: @ 20662ac :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x4
	bl      GetSpriteAdrf8AndClearMem
	str     r4, [r0, #0x0]
	mov     r0, r5
	bl      IncreaseSpriteMovementState
	pop     {r3-r5,pc}
@ 0x20662c2


.align 2, 0
.thumb
Function_20662c4: @ 20662c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      GetSpriteAdrf8
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_20662da

	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}

branch_20662da: @ 20662da :thumb
	mov     r0, r4
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20662e4


.thumb
Function_20662e4: @ 20662e4 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	bl      Function_20662ac
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20662f0

.thumb
Function_20662f0: @ 20662f0 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	bl      Function_20662ac
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20662fc

.thumb
Function_20662fc: @ 20662fc :thumb
	push    {r3,lr}
	mov     r1, #0x4
	bl      Function_20662ac
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2066308

.thumb
Function_2066308: @ 2066308 :thumb
	push    {r3,lr}
	mov     r1, #0x8
	bl      Function_20662ac
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2066314

.thumb
Function_2066314: @ 2066314 :thumb
	push    {r3,lr}
	mov     r1, #0xf
	bl      Function_20662ac
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2066320

.thumb
Function_2066320: @ 2066320 :thumb
	push    {r3,lr}
	mov     r1, #0x10
	bl      Function_20662ac
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x206632c

.thumb
Function_206632c: @ 206632c :thumb
	push    {r3,lr}
	mov     r1, #0x20
	bl      Function_20662ac
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2066338

.thumb
Function_2066338: @ 2066338 :thumb
	push    {r4,lr}
	mov     r1, #0x8
	mov     r4, r0
	bl      GetSpriteAdrf8AndClearMem
	mov     r1, #0x1
	lsl     r1, r1, #16
	str     r1, [r0, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	bl      SetSpritea0
	mov     r0, r4
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x206635a


.align 2, 0
.thumb
Function_206635c: @ 206635c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      GetSpriteAdrf8
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	add     r0, r1, r0
	str     r0, [r4, #0x0]
	add     r1, sp, #0x0
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	ldr     r0, [r4, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_2063088
	ldr     r1, [r4, #0x0]
	asr     r0, r1, #14
	lsr     r0, r0, #17
	add     r0, r1, r0
	asr     r0, r0, #15
	cmp     r0, #0x28
	bge     branch_2066398
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}

branch_2066398: @ 2066398 :thumb
	mov     r0, r5
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x20663a4


.thumb
Function_20663a4: @ 20663a4 :thumb
	push    {r4,lr}
	mov     r1, #0x8
	mov     r4, r0
	bl      GetSpriteAdrf8AndClearMem
	mov     r1, #0x5
	lsl     r1, r1, #18
	str     r1, [r0, #0x0]
	ldr     r1, [pc, #0x14] @ 0x20663cc, (=0xffff0000)
	str     r1, [r0, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	bl      SetSpritea0
	mov     r0, r4
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x20663ca

.align 2
.word 0xffff0000 @ 0x20663cc



.thumb
Function_20663d0: @ 20663d0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      GetSpriteAdrf8
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	add     r0, r1, r0
	str     r0, [r4, #0x0]
	bpl     branch_20663ea
	mov     r0, #0x0
	str     r0, [r4, #0x0]
branch_20663ea: @ 20663ea :thumb

	add     r1, sp, #0x0
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	ldr     r0, [r4, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_2063088
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	ble     branch_206640a
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}

branch_206640a: @ 206640a :thumb
	mov     r0, r5
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2066416


thumb_func_start Movement_WaitDisappear
Movement_WaitDisappear: @ 2066418 :thumb
	push    {r4,lr}
	mov     r1, #0x2
	mov     r4, r0
	lsl     r1, r1, #8 @ Sprite_Flags_200
	bl      SetSpriteFlags

	mov     r0, r4
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	pop     {r4,pc}
thumb_func_end Movement_WaitDisappear


.align 2, 0
.thumb
Function_2066430: @ 2066430 :thumb
	push    {r4,lr}
	mov     r1, #0x2
	mov     r4, r0
	lsl     r1, r1, #8 @ Sprite_Flags_200
	bl      UnsetSpriteFlags

	mov     r0, r4
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2066446


.align 2, 0
.thumb
Function_2066448: @ 2066448 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #Sprite_Flags_80
	bl      SetSpriteFlags

	mov     r0, r4
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x206645c


.thumb
Function_206645c: @ 206645c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #Sprite_Flags_80
	bl      UnsetSpriteFlags
	mov     r0, r4
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2066470


.thumb
Function_2066470: @ 2066470 :thumb
	push    {r4,lr}
	mov     r1, #0x1
	mov     r4, r0
	lsl     r1, r1, #8 @ Sprite_Flags_100
	bl      SetSpriteFlags
	mov     r0, r4
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2066486


.align 2, 0
.thumb
Function_2066488: @ 2066488 :thumb
	push    {r4,lr}
	mov     r1, #0x1
	mov     r4, r0
	lsl     r1, r1, #8 @ Sprite_Flags_100
	bl      UnsetSpriteFlags
	mov     r0, r4
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x206649e


.align 2, 0
.thumb
Function_20664a0: @ 20664a0 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r1, #0x8
	mov     r5, r0
	mov     r7, r2
	bl      GetSpriteAdrf8AndClearMem
	mov     r4, r0
	str     r6, [r4, #0x0]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x1
	mov     r3, r7
	bl      Function_5_21f5d8c
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      IncreaseSpriteMovementState
	pop     {r3-r7,pc}
@ 0x20664c8


.thumb
Movement_ContinueSpeechBubble: @ 20664c8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      GetSpriteAdrf8
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      Function_5_21f5c4c
	cmp     r0, #0x1
	bne     branch_20664ec
	ldr     r0, [r4, #0x4]
	bl      Function_207136c
	mov     r0, r5
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_20664ec: @ 20664ec :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x20664f0


.thumb
Movement_Exclamation: @ 20664f0 :thumb
	push    {r3,lr}
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_20664a0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20664fe


.align 2, 0
.thumb
Function_2066500: @ 2066500 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_20664a0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x206650e


.align 2, 0
.thumb
Function_2066510: @ 2066510 :thumb
	push    {r3,lr}
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_20664a0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x206651e


.align 2, 0
.thumb
Function_2066520: @ 2066520 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, #0x8
	mov     r5, r0
	mov     r7, r2
	mov     r6, r3
	bl      GetSpriteAdrf8AndClearMem
	strh    r4, [r0, #0x0]
	strh    r6, [r0, #0x2]
	strh    r7, [r0, #0x4]
	mov     r0, r5
	mov     r1, r4
	bl      MoveSpriteForWalk
	mov     r0, r5
	mov     r1, r4
	bl      ChangeBothSpriteFaceDirections
	mov     r0, r5
	mov     r1, r6
	bl      SetSpritea0
	mov     r0, r5
	mov     r1, #0x4
	bl      SetSpriteFlags
	mov     r0, r5
	bl      IncreaseSpriteMovementState
	pop     {r3-r7,pc}
@ 0x206655e


.align 2, 0
.thumb
Function_2066560: @ 2066560 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	bl      GetSpriteAdrf8
	mov     r4, r0
	mov     r2, #0x6
	ldsh    r2, [r4, r2]
	mov     r1, #0x0
	ldsh    r1, [r4, r1]
	lsl     r2, r2, #2
	ldr     r2, [r6, r2]
	mov     r0, r5
	bl      Movement_AddDeltaPositionToSprite70
	mov     r0, r5
	bl      Function_20642f8
	mov     r0, #0x6
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x6]
	ldsh    r1, [r4, r0]
	mov     r0, #0x4
	ldsh    r0, [r4, r0]
	cmp     r1, r0
	bge     branch_206659a
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_206659a: @ 206659a :thumb
	mov     r0, r5
	mov     r1, #0x28
	bl      SetSpriteFlags
	mov     r0, r5
	bl      CopySpritePositionsFromOldToNew
	mov     r0, r5
	bl      Function_2062b68
	mov     r0, r5
	mov     r1, #0x0
	bl      SetSpritea0
	mov     r0, r5
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x20665c0


.thumb
Movement_PauseWalkUpSlow: @ 20665c0 :thumb
	push    {r3,lr}
	mov     r2, #0x6
	mov     r1, #0x0
	mov     r3, r2
	bl      Function_2066520
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20665d0


.thumb
Movement_PauseWalkDownSlow: @ 20665d0 :thumb
	push    {r3,lr}
	mov     r2, #0x6
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2066520
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20665e0

.thumb
Movement_PauseWalkLeftSlow: @ 20665e0 :thumb
	push    {r3,lr}
	mov     r2, #0x6
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_2066520
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20665f0

.thumb
Movement_PauseWalkRightSlow: @ 20665f0 :thumb
	push    {r3,lr}
	mov     r2, #0x6
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2066520
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2066600

.thumb
Movement_ContinuePauseWalkingSlow: @ 2066600 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x10] @ 0x2066614, (=Unknown_20eee6c)
	bl      Function_2066560
	cmp     r0, #0x1
	bne     branch_2066610
	mov     r0, #0x1
	pop     {r3,pc}

branch_2066610: @ 2066610 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2066614

.word Unknown_20eee6c @ 0x2066614



.thumb
Movement_PauseWalkUp: @ 2066618 :thumb
	push    {r3,lr}
	mov     r1, #0x0
	mov     r2, #0x3
	mov     r3, #0x7
	bl      Function_2066520
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2066628

.thumb
Movement_PauseWalkDown: @ 2066628 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, #0x7
	bl      Function_2066520
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2066638

.thumb
Movement_PauseWalkLeft: @ 2066638 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, #0x7
	bl      Function_2066520
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2066648

.thumb
Movement_PauseWalkRight: @ 2066648 :thumb
	push    {r3,lr}
	mov     r1, #0x3
	mov     r2, r1
	mov     r3, #0x7
	bl      Function_2066520
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2066658


.thumb
Movement_ContinuePauseWalking: @ 2066658 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x10] @ 0x206666c, (=Unknown_20eecec)
	bl      Function_2066560
	cmp     r0, #0x1
	bne     branch_2066668
	mov     r0, #0x1
	pop     {r3,pc}

branch_2066668: @ 2066668 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x206666c

.word Unknown_20eecec @ 0x206666c



.thumb
Function_2066670: @ 2066670 :thumb
	push    {r3,lr}
	mov     r1, #0x0
	mov     r2, #0x7
	mov     r3, #0x8
	bl      Function_2066520
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2066680


.thumb
Function_2066680: @ 2066680 :thumb
	push    {r3,lr}
	mov     r1, #0x1
	mov     r2, #0x7
	mov     r3, #0x8
	bl      Function_2066520
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2066690

.thumb
Function_2066690: @ 2066690 :thumb
	push    {r3,lr}
	mov     r1, #0x2
	mov     r2, #0x7
	mov     r3, #0x8
	bl      Function_2066520
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20666a0

.thumb
Function_20666a0: @ 20666a0 :thumb
	push    {r3,lr}
	mov     r1, #0x3
	mov     r2, #0x7
	mov     r3, #0x8
	bl      Function_2066520
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x20666b0


.thumb
Function_20666b0: @ 20666b0 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x10] @ 0x20666c4, (=Unknown_20eee84)
	bl      Function_2066560
	cmp     r0, #0x1
	bne     branch_20666c0
	mov     r0, #0x1
	pop     {r3,pc}

branch_20666c0: @ 20666c0 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20666c4

.word Unknown_20eee84 @ 0x20666c4



.thumb
Function_20666c8: @ 20666c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x4
	bl      GetSpriteAdrf8AndClearMem
	mov     r0, r4
	mov     r1, #0x9
	bl      SetSpritea0
	mov     r0, r4
	bl      IncreaseSpriteMovementState
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x20666e4

.thumb
Function_20666e4: @ 20666e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      GetSpriteAdrf8
	ldr     r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
	cmp     r1, #0x8
	blt     branch_206670c
	mov     r0, r4
	mov     r1, #0x1
	bl      ChangeSpriteFaceDirection_WithCheck
	mov     r0, r4
	mov     r1, #0x0
	bl      SetSpritea0
	mov     r0, r4
	bl      IncreaseSpriteMovementState
branch_206670c: @ 206670c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2066710


.thumb
Function_2066710: @ 2066710 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r1, #0x4
	bl      GetSpriteAdrf8AndClearMem
	mov     r0, r4
	bl      Function_206a224
	cmp     r0, #0x0
	beq     branch_206672a
	bl      Function_207136c
branch_206672a: @ 206672a :thumb
	add     r1, sp, #0x0
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, r4
	bl      Function_2063088
	mov     r0, r4
	bl      Function_5_21f3f10
	ldr     r1, [pc, #0x1c] @ 0x2066760, (=0x10004)
	mov     r0, r4
	bl      SetSpriteFlags
	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #20
	bl      UnsetSpriteFlags
	mov     r0, r4
	bl      IncreaseSpriteMovementState
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x206675e

.align 2
.word 0x10004 @ 0x2066760



.thumb
Function_2066764: @ 2066764 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      GetSpriteAdrf8
	mov     r4, r0
	ldr     r0, [pc, #0x50] @ 0x20667c4, (=Unknown_2100b84)
	add     r1, sp, #0x0
	ldr     r2, [r0, #0x0]
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	ldr     r0, [r4, #0x0]
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_2063088
	ldr     r0, [r4, #0x0]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [r4, #0x0]
	cmp     r0, #0x10
	bhs     branch_206679c
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x206679c

.thumb
branch_206679c: @ 206679c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2063088
	ldr     r1, [pc, #0x1c] @ 0x20667c8, (=0x20028)
	mov     r0, r5
	bl      SetSpriteFlags
	mov     r0, r5
	bl      Function_206a230
	mov     r0, r5
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x20667c2

.align 2
.word Unknown_2100b84 @ 0x20667c4
.word 0x20028 @ 0x20667c8



.thumb
Function_20667cc: @ 20667cc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x4
	bl      GetSpriteAdrf8AndClearMem
	mov     r0, r4
	mov     r1, #0x0
	bl      SetSpritea0
	mov     r0, r4
	bl      IncreaseSpriteMovementState
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x20667e8

.thumb
Function_20667e8: @ 20667e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x4
	bl      GetSpriteAdrf8AndClearMem
	mov     r0, r4
	mov     r1, #0x1
	bl      SetSpritea0
	mov     r0, r4
	bl      IncreaseSpriteMovementState
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2066804


.thumb
Function_2066804: @ 2066804 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      GetSpriteAdrf8
	ldr     r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
	cmp     r1, #0x15
	bhs     branch_206681a
	mov     r0, #0x0
	pop     {r4,pc}

branch_206681a: @ 206681a :thumb
	mov     r0, r4
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2066824


.thumb
Function_2066824: @ 2066824 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, #0x10
	mov     r5, r0
	mov     r6, r2
	mov     r7, r3
	bl      GetSpriteAdrf8AndClearMem
	ldr     r1, [sp, #0x18]
	mov     r3, r4
	str     r1, [r0, #0x0]
	add     r2, r0, #0x4
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, r6
	str     r0, [r2, #0x0]
	mov     r0, r5
	bl      ChangeSpriteFaceDirection_WithCheck
	mov     r0, r5
	mov     r1, r7
	bl      ChangeSpriteFace2Direction
	add     r1, sp, #0x8
	ldrb    r1, [r1, #0x14]
	mov     r0, r5
	bl      SetSpritea0
	mov     r0, r5
	bl      SetSpriteFlag_4
	mov     r0, r5
	bl      LoadSpritePositionX
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteX2
	mov     r0, r5
	bl      LoadSpritePositionZ
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteZ2
	mov     r0, r5
	bl      LoadSpritePositionY
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteY2
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bge     branch_20668a0

	mov     r1, #0x0
	mov     r0, r5
	mvn     r1, r1
	bl      AddSpritePositionX
	b       branch_20668aa

branch_20668a0: @ 20668a0 :thumb
	ble     branch_20668aa
	mov     r0, r5
	mov     r1, #0x1
	bl      AddSpritePositionX
branch_20668aa: @ 20668aa :thumb

	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bge     branch_20668bc

	mov     r1, #0x1
	mov     r0, r5
	mvn     r1, r1
	bl      AddSpritePositionZ
	b       branch_20668c6

branch_20668bc: @ 20668bc :thumb
	ble     branch_20668c6
	mov     r0, r5
	mov     r1, #0x2
	bl      AddSpritePositionZ
branch_20668c6: @ 20668c6 :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	bge     branch_20668d8
	mov     r1, #0x0
	mov     r0, r5
	mvn     r1, r1
	bl      AddSpritePositionY
	b       branch_20668e2

branch_20668d8: @ 20668d8 :thumb
	ble     branch_20668e2
	mov     r0, r5
	mov     r1, #0x1
	bl      AddSpritePositionY
branch_20668e2: @ 20668e2 :thumb
	mov     r0, r5
	bl      IncreaseSpriteMovementState
	pop     {r3-r7,pc}
@ 0x20668ea


.align 2, 0
.thumb
Function_20668ec: @ 20668ec :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      GetSpriteAdrf8
	mov     r4, r0
	mov     r0, r5
	add     r1, r4, #0x4
	bl      Function_2064270
	ldr     r0, [r4, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x0]
	cmp     r0, #0x0
	ble     branch_206690c

	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_206690c: @ 206690c :thumb
	mov     r0, r5
	mov     r1, #0x28
	bl      SetSpriteFlags
	mov     r0, r5
	bl      CopySpritePositionsFromOldToNew
	mov     r0, r5
	bl      Function_2062b68
	mov     r0, r5
	mov     r1, #0x0
	bl      SetSpritea0
	mov     r0, r5
	bl      IncreaseSpriteMovementState
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2066932


.align 2, 0
.thumb
Function_2066934: @ 2066934 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066964, (=Unknown_20eecc8)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x2
	mov     r3, #0x0
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066962

.align 2
.word Unknown_20eecc8 @ 0x2066964



.thumb
Function_2066968: @ 2066968 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x24] @ 0x2066994, (=Unknown_20eecd4)
	mov     r3, r0
	ldmia   r5!, {r0,r1}
	add     r2, sp, #0x8
	mov     r4, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	str     r0, [r2, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r2, #0x3
	mov     r0, r3
	mov     r3, #0x1
	str     r2, [sp, #0x4]
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066994

.word Unknown_20eecd4 @ 0x2066994



.thumb
Function_2066998: @ 2066998 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x20669c8, (=Unknown_20eed4c)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x20669c6

.align 2
.word Unknown_20eed4c @ 0x20669c8



.thumb
Function_20669cc: @ 20669cc :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x24] @ 0x20669f8, (=Unknown_20eece0)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x8
	mov     r4, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	str     r0, [r3, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r3, #0x3
	mov     r0, r2
	mov     r2, #0x0
	str     r3, [sp, #0x4]
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x20669f8

.word Unknown_20eece0 @ 0x20669f8



.thumb
Function_20669fc: @ 20669fc :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x24] @ 0x2066a28, (=Unknown_20eee48)
	mov     r3, r0
	ldmia   r5!, {r0,r1}
	add     r2, sp, #0x8
	mov     r4, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	str     r0, [r2, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r2, #0x3
	mov     r0, r3
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066a28

.word Unknown_20eee48 @ 0x2066a28



.thumb
Function_2066a2c: @ 2066a2c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066a5c, (=Unknown_20eee3c)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x2
	mov     r3, #0x1
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066a5a

.align 2
.word Unknown_20eee3c @ 0x2066a5c



.thumb
Function_2066a60: @ 2066a60 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066a90, (=Unknown_20eee30)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066a8e

.align 2
.word Unknown_20eee30 @ 0x2066a90



.thumb
Function_2066a94: @ 2066a94 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066ac4, (=Unknown_20eee24)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066ac2

.align 2
.word Unknown_20eee24 @ 0x2066ac4



.thumb
Function_2066ac8: @ 2066ac8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066af8, (=Unknown_20eee18)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066af6

.align 2
.word Unknown_20eee18 @ 0x2066af8



.thumb
Function_2066afc: @ 2066afc :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066b2c, (=Unknown_20eee0c)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066b2a

.align 2
.word Unknown_20eee0c @ 0x2066b2c



.thumb
Function_2066b30: @ 2066b30 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x24] @ 0x2066b5c, (=Unknown_20eee00)
	mov     r3, r0
	ldmia   r5!, {r0,r1}
	add     r2, sp, #0x8
	mov     r4, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	str     r0, [r2, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r2, #0x3
	mov     r0, r3
	mov     r3, #0x2
	str     r2, [sp, #0x4]
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066b5c

.word Unknown_20eee00 @ 0x2066b5c



.thumb
Function_2066b60: @ 2066b60 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x24] @ 0x2066b8c, (=Unknown_20eedf4)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x8
	mov     r4, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	str     r0, [r3, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r3, #0x3
	mov     r0, r2
	mov     r2, #0x2
	str     r3, [sp, #0x4]
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066b8c

.word Unknown_20eedf4 @ 0x2066b8c



.thumb
Function_2066b90: @ 2066b90 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x24] @ 0x2066bbc, (=Unknown_20eede8)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066bbc

.word Unknown_20eede8 @ 0x2066bbc



.thumb
Function_2066bc0: @ 2066bc0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x24] @ 0x2066bec, (=Unknown_20eeddc)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066bec

.word Unknown_20eeddc @ 0x2066bec



.thumb
Function_2066bf0: @ 2066bf0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x24] @ 0x2066c1c, (=Unknown_20eedd0)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x3
	mov     r3, #0x2
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066c1c

.word Unknown_20eedd0 @ 0x2066c1c



.thumb
Function_2066c20: @ 2066c20 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x24] @ 0x2066c4c, (=Unknown_20eedc4)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x2
	mov     r3, #0x3
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066c4c

.word Unknown_20eedc4 @ 0x2066c4c



.thumb
Function_2066c50: @ 2066c50 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066c80, (=Unknown_20eedb8)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066c7e

.align 2
.word Unknown_20eedb8 @ 0x2066c80



.thumb
Function_2066c84: @ 2066c84 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066cb4, (=Unknown_20eedac)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066cb2

.align 2
.word Unknown_20eedac @ 0x2066cb4



.thumb
Function_2066cb8: @ 2066cb8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x24] @ 0x2066ce4, (=Unknown_20eeda0)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x8
	mov     r4, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	str     r0, [r3, #0x0]
	mov     r3, #0x2
	str     r3, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x3
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066ce4

.word Unknown_20eeda0 @ 0x2066ce4



.thumb
Function_2066ce8: @ 2066ce8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x24] @ 0x2066d14, (=Unknown_20eed94)
	mov     r3, r0
	ldmia   r5!, {r0,r1}
	add     r2, sp, #0x8
	mov     r4, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	str     r0, [r2, #0x0]
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	mov     r0, r3
	mov     r3, #0x3
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066d14

.word Unknown_20eed94 @ 0x2066d14



.thumb
Function_2066d18: @ 2066d18 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066d48, (=Unknown_20eed88)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x2
	mov     r3, #0x0
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066d46

.align 2
.word Unknown_20eed88 @ 0x2066d48



.thumb
Function_2066d4c: @ 2066d4c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066d7c, (=Unknown_20eed7c)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x3
	mov     r3, #0x1
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066d7a

.align 2
.word Unknown_20eed7c @ 0x2066d7c



.thumb
Function_2066d80: @ 2066d80 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066db0, (=Unknown_20eed70)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066dae

.align 2
.word Unknown_20eed70 @ 0x2066db0



.thumb
Function_2066db4: @ 2066db4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066de4, (=Unknown_20eed64)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x0
	mov     r3, #0x3
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066de2

.align 2
.word Unknown_20eed64 @ 0x2066de4



.thumb
Function_2066de8: @ 2066de8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066e18, (=Unknown_20eed58)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066e16

.align 2
.word Unknown_20eed58 @ 0x2066e18



.thumb
Function_2066e1c: @ 2066e1c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066e4c, (=Unknown_20eed1c)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x2
	mov     r3, #0x1
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066e4a

.align 2
.word Unknown_20eed1c @ 0x2066e4c



.thumb
Function_2066e50: @ 2066e50 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066e80, (=Unknown_20eed40)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066e7e

.align 2
.word Unknown_20eed40 @ 0x2066e80



.thumb
Function_2066e84: @ 2066e84 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066eb4, (=Unknown_20eed10)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066eb2

.align 2
.word Unknown_20eed10 @ 0x2066eb4



.thumb
Function_2066eb8: @ 2066eb8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066ee8, (=Unknown_20eed34)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066ee6

.align 2
.word Unknown_20eed34 @ 0x2066ee8



.thumb
Function_2066eec: @ 2066eec :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066f1c, (=Unknown_20eed04)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066f1a

.align 2
.word Unknown_20eed04 @ 0x2066f1c



.thumb
Function_2066f20: @ 2066f20 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066f50, (=Unknown_20eed28)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x3
	mov     r3, #0x2
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066f4e

.align 2
.word Unknown_20eed28 @ 0x2066f50



.thumb
Function_2066f54: @ 2066f54 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	ldr     r5, [pc, #0x28] @ 0x2066f84, (=Unknown_20eecf8)
	mov     r2, r0
	ldmia   r5!, {r0,r1}
	add     r4, sp, #0x8
	mov     r3, r4
	stmia   r4!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r4, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	mov     r0, r2
	mov     r2, #0x2
	mov     r3, #0x3
	bl      Function_2066824
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2066f82

.align 2
.word Unknown_20eecf8 @ 0x2066f84



.thumb
Function_2066f88: @ 2066f88 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r1, #0x10
	mov     r5, r0
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r7, #0x1
	bl      GetSpriteAdrf8AndClearMem
	mov     r6, r0
	add     r0, sp, #0x10
	ldrb    r1, [r0, #0x10]
	strb    r1, [r6, #0x0]
	str     r4, [r6, #0x4]
	ldrb    r1, [r0, #0x18]
	strb    r1, [r6, #0x2]
	ldrb    r0, [r0, #0x1c]
	strb    r0, [r6, #0x1]
	add     r0, sp, #0x30
	ldrb    r0, [r0, #0x0]
	strb    r0, [r6, #0x3]
	ldrb    r1, [r6, #0x0]
	lsl     r0, r7, #12
	blx     _s32_div_f
	strh    r0, [r6, #0xe]
	ldr     r1, [sp, #0x0]
	mov     r0, r5
	bl      ChangeSpriteFaceDirection_WithCheck
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	bl      ChangeSpriteFace2Direction
	add     r1, sp, #0x10
	ldrb    r1, [r1, #0x14]
	mov     r0, r5
	bl      SetSpritea0
	mov     r0, r5
	bl      SetSpriteFlag_4
	mov     r0, r5
	bl      LoadSpritePositionX
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteX2
	mov     r0, r5
	bl      LoadSpritePositionZ
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteZ2
	mov     r0, r5
	bl      LoadSpritePositionY
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteY2
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x18]
	cmp     r0, #0x2
	bls     branch_2067014
	bl      ErrorHandling
branch_2067014: @ 2067014 :thumb

	cmp     r4, #0x0
	beq     branch_206705e
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x18]
	cmp     r0, #0x0
	beq     branch_206702a
	cmp     r0, #0x1
	beq     branch_206703c
	cmp     r0, #0x2
	beq     branch_206704e
	b       branch_206705e

branch_206702a: @ 206702a :thumb
	cmp     r4, #0x0
	bge     branch_2067032
	mov     r7, #0x0
	mvn     r7, r7
branch_2067032: @ 2067032 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      AddSpritePositionX
	b       branch_206705e

branch_206703c: @ 206703c :thumb
	cmp     r4, #0x0
	bge     branch_2067044
	mov     r7, #0x0
	mvn     r7, r7
branch_2067044: @ 2067044 :thumb
	mov     r0, r5
	lsl     r1, r7, #1
	bl      AddSpritePositionZ
	b       branch_206705e

branch_206704e: @ 206704e :thumb
	cmp     r4, #0x0
	bge     branch_2067056
	mov     r7, #0x0
	mvn     r7, r7
branch_2067056: @ 2067056 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      AddSpritePositionY
branch_206705e: @ 206705e :thumb
	mov     r0, r5
	bl      IncreaseSpriteMovementState
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2067068


.thumb
Function_2067068: @ 2067068 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	bl      GetSpriteAdrf8
	mov     r4, r0
	mov     r0, r5
	add     r1, sp, #0x18
	bl      CopySprite70Struct
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x0
	beq     branch_206708c
	cmp     r0, #0x1
	beq     branch_2067096
	cmp     r0, #0x2
	beq     branch_20670a0
	b       branch_20670a8

branch_206708c: @ 206708c :thumb
	ldr     r1, [sp, #0x18]
	ldr     r0, [r4, #0x4]
	add     r0, r1, r0
	str     r0, [sp, #0x18]
	b       branch_20670a8

branch_2067096: @ 2067096 :thumb
	ldr     r1, [sp, #0x1c]
	ldr     r0, [r4, #0x4]
	add     r0, r1, r0
	str     r0, [sp, #0x1c]
	b       branch_20670a8

branch_20670a0: @ 20670a0 :thumb
	ldr     r1, [sp, #0x20]
	ldr     r0, [r4, #0x4]
	add     r0, r1, r0
	str     r0, [sp, #0x20]
branch_20670a8: @ 20670a8 :thumb
	mov     r0, r5
	add     r1, sp, #0x18
	bl      CopyToSprite70Struct
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	bge     branch_20670b8
	neg     r1, r1
branch_20670b8: @ 20670b8 :thumb

	ldr     r0, [r4, #0x8]
	add     r0, r0, r1
	str     r0, [r4, #0x8]
	ldrh    r1, [r4, #0xc]
	ldrh    r0, [r4, #0xe]
	add     r0, r1, r0
	strh    r0, [r4, #0xc]
	mov     r0, #0xf
	ldrh    r1, [r4, #0xc]
	lsl     r0, r0, #8
	cmp     r1, r0
	bls     branch_20670d2
	strh    r0, [r4, #0xc]
branch_20670d2: @ 20670d2 :thumb
	add     r1, sp, #0xc
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	ldr     r0, [pc, #0x104] @ 0x20671e4, (=Unknown_2100b84)
	ldr     r1, [r0, #0x4]
	ldrh    r0, [r4, #0xc]
	lsr     r0, r0, #8
	lsl     r0, r0, #16
	lsr     r0, r0, #14
	ldr     r1, [r1, r0]
	ldrb    r0, [r4, #0x3]
	cmp     r0, #0x1
	bne     branch_20670f2
	neg     r1, r1
branch_20670f2: @ 20670f2 :thumb

	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2067102
	cmp     r0, #0x1
	beq     branch_2067106
	cmp     r0, #0x2
	beq     branch_206710a
	b       branch_206710c

branch_2067102: @ 2067102 :thumb
	str     r1, [sp, #0xc]
	b       branch_206710c

branch_2067106: @ 2067106 :thumb
	str     r1, [sp, #0x10]
	b       branch_206710c

branch_206710a: @ 206710a :thumb
	str     r1, [sp, #0x14]
branch_206710c: @ 206710c :thumb
	mov     r0, r5
	add     r1, sp, #0xc
	bl      Function_2063088
	ldrb    r0, [r4, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x0]
	mov     r0, #0x1
	ldr     r2, [r4, #0x8]
	lsl     r0, r0, #16
	cmp     r2, r0
	blt     branch_206719a
	ldrb    r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_206719a
	sub     r0, r2, r0
	str     r0, [r4, #0x8]
	mov     r0, r5
	mov     r6, #0x1
	ldr     r7, [r4, #0x4]
	bl      LoadSpritePositionX
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteX2
	mov     r0, r5
	bl      LoadSpritePositionZ
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteZ2
	mov     r0, r5
	bl      LoadSpritePositionY
	mov     r1, r0
	mov     r0, r5
	bl      SetSpriteY2
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x0
	beq     branch_206716c
	cmp     r0, #0x1
	beq     branch_206717c
	cmp     r0, #0x2
	beq     branch_206718c
	b       branch_206719a

branch_206716c: @ 206716c :thumb
	cmp     r7, #0x0
	bge     branch_2067172
	.hword  0x1eb6 @ sub r6, r6, #0x2
branch_2067172: @ 2067172 :thumb

	mov     r0, r5
	mov     r1, r6
	bl      AddSpritePositionX
	b       branch_206719a

branch_206717c: @ 206717c :thumb
	cmp     r7, #0x0
	bge     branch_2067182
	.hword  0x1eb6 @ sub r6, r6, #0x2
branch_2067182: @ 2067182 :thumb
	mov     r0, r5
	lsl     r1, r6, #1
	bl      AddSpritePositionZ
	b       branch_206719a

branch_206718c: @ 206718c :thumb
	cmp     r7, #0x0
	bge     branch_2067192
	.hword  0x1eb6 @ sub r6, r6, #0x2
branch_2067192: @ 2067192 :thumb

	mov     r0, r5
	mov     r1, r6
	bl      AddSpritePositionY
branch_206719a: @ 206719a :thumb
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_20671a6

	add     sp, #0x24
	mov     r0, #0x0
	pop     {r4-r7,pc}

branch_20671a6: @ 20671a6 :thumb
	add     r1, sp, #0x0
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	mov     r0, r5
	bl      Function_2063088
	ldr     r1, [pc, #0x30] @ 0x20671e8, (=0x20028)
	mov     r0, r5
	bl      SetSpriteFlags
	mov     r0, r5
	bl      CopySpritePositionsFromOldToNew
	mov     r0, r5
	bl      Function_2062b68
	mov     r0, r5
	mov     r1, #0x0
	bl      SetSpritea0
	mov     r0, r5
	bl      IncreaseSpriteMovementState
	ldr     r0, [pc, #0x10] @ 0x20671ec, (=0x647)
	bl      Function_2005748
	mov     r0, #0x1
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x20671e4

.word Unknown_2100b84 @ 0x20671e4
.word 0x20028 @ 0x20671e8
.word 0x647 @ 0x20671ec

