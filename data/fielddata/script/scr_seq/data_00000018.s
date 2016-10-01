.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFloor 0x40ce
	CopyVar 0x8008, 0x40ce
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_4e
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_5a
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_66
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_72
	End
@ 4e

Script_branch_4e: @ 4e
	DisplayFloor 0x0, 0x4
	Jump Script_branch_7e
	End
@ 5a

Script_branch_5a: @ 5a
	DisplayFloor 0x0, 0x3
	Jump Script_branch_7e
	End
@ 66

Script_branch_66: @ 66
	DisplayFloor 0x0, 0x2
	Jump Script_branch_7e
	End
@ 72

Script_branch_72: @ 72
	DisplayFloor 0x0, 0x1
	Jump Script_branch_7e
	End
@ 7e

Script_branch_7e: @ 7e
	StartLift 0x14, 0x1, 0x40ce, 0x40ce
	Message 0x0
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x77, 0x0
	Cmd_42 0x76, 0x1
	Cmd_42 0x75, 0x2
	Cmd_42 0x74, 0x3
	Cmd_42 0x7c, 0x4
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1dc
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_18b
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_13a
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_e9
	Jump Script_branch_283
	End
@ e9

Script_branch_e9: @ e9
	Return2 0x1, 0x800c
	CheckFloor 0x40ce
	WarpMapElevator 0xb, 0x2, 0x12, 0x2, 0x1
	If 0x40ce, 0x3
	CompareLastResultJump EQUAL, Script_branch_26c
	If 0x40ce, 0x3
	CompareLastResultCall GREATER, Script_branch_22d
	If 0x40ce, 0x3
	CompareLastResultCall LESSER, Script_branch_238
	Call Function_243
	SetVar 0x40ce, 0x3
	Jump Script_branch_261
	End
@ 13a

Script_branch_13a: @ 13a
	Return2 0x1, 0x800c
	CheckFloor 0x40ce
	WarpMapElevator 0xc, 0x3, 0x12, 0x2, 0x1
	If 0x40ce, 0x2
	CompareLastResultJump EQUAL, Script_branch_26c
	If 0x40ce, 0x2
	CompareLastResultCall GREATER, Script_branch_22d
	If 0x40ce, 0x2
	CompareLastResultCall LESSER, Script_branch_238
	Call Function_243
	SetVar 0x40ce, 0x2
	Jump Script_branch_261
	End
@ 18b

Script_branch_18b: @ 18b
	Return2 0x1, 0x800c
	CheckFloor 0x40ce
	WarpMapElevator 0xd, 0x4, 0x12, 0x2, 0x1
	If 0x40ce, 0x1
	CompareLastResultJump EQUAL, Script_branch_26c
	If 0x40ce, 0x1
	CompareLastResultCall GREATER, Script_branch_22d
	If 0x40ce, 0x1
	CompareLastResultCall LESSER, Script_branch_238
	Call Function_243
	SetVar 0x40ce, 0x1
	Jump Script_branch_261
	End
@ 1dc

Script_branch_1dc: @ 1dc
	Return2 0x1, 0x800c
	CheckFloor 0x40ce
	WarpMapElevator 0xe, 0x1, 0x12, 0x2, 0x1
	If 0x40ce, 0x0
	CompareLastResultJump EQUAL, Script_branch_26c
	If 0x40ce, 0x0
	CompareLastResultCall GREATER, Script_branch_22d
	If 0x40ce, 0x0
	CompareLastResultCall LESSER, Script_branch_238
	Call Function_243
	SetVar 0x40ce, 0x0
	Jump Script_branch_261
	End
@ 22d

Script_branch_22d: @ 22d
	Message 0x2
	SetVar 0x8004, 0x0
	Return
@ 238

Script_branch_238: @ 238
	Message 0x3
	SetVar 0x8004, 0x1
	Return
@ 243

Function_243: @ 243
	SetVar 0x40ce, 0xffff
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_29c
	WaitMovement
	WaitFanfare 0x5dc
	StoreElevatorDirection 0x8004, 0x4
	Return
@ 261

Script_branch_261: @ 261
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 26c

Script_branch_26c: @ 26c
	SetVar 0x40ce, 0xffff
	Return2 0x1, 0x800c
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 283

Script_branch_283: @ 283
	SetVar 0x40ce, 0xffff
	Return2 0x1, 0x800c
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 29a

.byte 0x0 @ 0x29a
.byte 0x0 @ 0x29b

Movement_29c: @ 29c
	MoveDownFast 0x1
	EndMovement 0x0
@ 2a4

@ end_0x2a4
