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
	CompareLastResultJump EQUAL, Script_branch_68
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_72
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_7c
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_86
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_90
	If 0x8008, 0x5
	CompareLastResultJump EQUAL, Script_branch_9a
	End
@ 68

Script_branch_68: @ 68
	DisplayFloor 0x0, 0x5
	Jump Script_branch_a6
Script_branch_72: @ 72
	DisplayFloor 0x0, 0x4
	Jump Script_branch_a6
Script_branch_7c: @ 7c
	DisplayFloor 0x0, 0x3
	Jump Script_branch_a6
Script_branch_86: @ 86
	DisplayFloor 0x0, 0x2
	Jump Script_branch_a6
Script_branch_90: @ 90
	DisplayFloor 0x0, 0x1
	Jump Script_branch_a6
Script_branch_9a: @ 9a
	DisplayFloor 0x0, 0x0
	Jump Script_branch_a6
	End
@ a6

Script_branch_a6: @ a6
	StartLift 0x14, 0x1, 0x40ce, 0x40ce
	Message 0x0
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x78, 0x0
	Cmd_42 0x77, 0x1
	Cmd_42 0x76, 0x2
	Cmd_42 0x75, 0x3
	Cmd_42 0x74, 0x4
	Cmd_42 0x79, 0x5
	Cmd_42 0x7c, 0x6
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_2bc
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_26d
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_21e
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_1cf
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_180
	If 0x8008, 0x5
	CompareLastResultJump EQUAL, Script_branch_131
	Jump Script_branch_3f6
Script_branch_131: @ 131
	Return2 0x1, 0x800c
	CheckFloor 0x40ce
	WarpMapElevator 0x236, 0x1, 0x12, 0x2, 0x1
	If 0x40ce, 0x5
	CompareLastResultJump EQUAL, Script_branch_3df
	If 0x40ce, 0x5
	CompareLastResultCall GREATER, Script_branch_30b
	If 0x40ce, 0x5
	CompareLastResultCall LESSER, Script_branch_316
	Call Function_321
	SetVar 0x40ce, 0x5
	Jump Script_branch_33f
Script_branch_180: @ 180
	Return2 0x1, 0x800c
	CheckFloor 0x40ce
	WarpMapElevator 0x89, 0x2, 0x12, 0x2, 0x1
	If 0x40ce, 0x4
	CompareLastResultJump EQUAL, Script_branch_3df
	If 0x40ce, 0x4
	CompareLastResultCall GREATER, Script_branch_30b
	If 0x40ce, 0x4
	CompareLastResultCall LESSER, Script_branch_316
	Call Function_321
	SetVar 0x40ce, 0x4
	Jump Script_branch_33f
Script_branch_1cf: @ 1cf
	Return2 0x1, 0x800c
	CheckFloor 0x40ce
	WarpMapElevator 0x8a, 0x2, 0x12, 0x2, 0x1
	If 0x40ce, 0x3
	CompareLastResultJump EQUAL, Script_branch_3df
	If 0x40ce, 0x3
	CompareLastResultCall GREATER, Script_branch_30b
	If 0x40ce, 0x3
	CompareLastResultCall LESSER, Script_branch_316
	Call Function_321
	SetVar 0x40ce, 0x3
	Jump Script_branch_33f
Script_branch_21e: @ 21e
	Return2 0x1, 0x800c
	CheckFloor 0x40ce
	WarpMapElevator 0x8b, 0x2, 0x12, 0x2, 0x1
	If 0x40ce, 0x2
	CompareLastResultJump EQUAL, Script_branch_3df
	If 0x40ce, 0x2
	CompareLastResultCall GREATER, Script_branch_30b
	If 0x40ce, 0x2
	CompareLastResultCall LESSER, Script_branch_316
	Call Function_321
	SetVar 0x40ce, 0x2
	Jump Script_branch_33f
Script_branch_26d: @ 26d
	Return2 0x1, 0x800c
	CheckFloor 0x40ce
	WarpMapElevator 0x8c, 0x2, 0x12, 0x2, 0x1
	If 0x40ce, 0x1
	CompareLastResultJump EQUAL, Script_branch_3df
	If 0x40ce, 0x1
	CompareLastResultCall GREATER, Script_branch_30b
	If 0x40ce, 0x1
	CompareLastResultCall LESSER, Script_branch_316
	Call Function_321
	SetVar 0x40ce, 0x1
	Jump Script_branch_33f
Script_branch_2bc: @ 2bc
	Return2 0x1, 0x800c
	CheckFloor 0x40ce
	WarpMapElevator 0x8d, 0x1, 0x12, 0x2, 0x1
	If 0x40ce, 0x0
	CompareLastResultJump EQUAL, Script_branch_3df
	If 0x40ce, 0x0
	CompareLastResultCall GREATER, Script_branch_30b
	If 0x40ce, 0x0
	CompareLastResultCall LESSER, Script_branch_316
	Call Function_321
	SetVar 0x40ce, 0x0
	Jump Script_branch_33f
Script_branch_30b: @ 30b
	Message 0x2
	SetVar 0x8004, 0x0
	Return
@ 316

Script_branch_316: @ 316
	Message 0x3
	SetVar 0x8004, 0x1
	Return
@ 321

Function_321: @ 321
	SetVar 0x40ce, 0xffff
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_410
	WaitMovement
	WaitFanfare 0x5dc
	StoreElevatorDirection 0x8004, 0x4
	Return
@ 33f

Script_branch_33f: @ 33f
	CopyVar 0x8008, 0x40ce
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_395
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_3a0
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_3ab
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_3b6
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_3c1
	If 0x8008, 0x5
	CompareLastResultJump EQUAL, Script_branch_3cc
	End
@ 395

Script_branch_395: @ 395
	Message 0x9
	Jump Script_branch_3d7
	End
@ 3a0

Script_branch_3a0: @ 3a0
	Message 0x8
	Jump Script_branch_3d7
	End
@ 3ab

Script_branch_3ab: @ 3ab
	Message 0x7
	Jump Script_branch_3d7
	End
@ 3b6

Script_branch_3b6: @ 3b6
	Message 0x6
	Jump Script_branch_3d7
	End
@ 3c1

Script_branch_3c1: @ 3c1
	Message 0x5
	Jump Script_branch_3d7
	End
@ 3cc

Script_branch_3cc: @ 3cc
	Message 0xa
	Jump Script_branch_3d7
	End
@ 3d7

Script_branch_3d7: @ 3d7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3df

Script_branch_3df: @ 3df
	SetVar 0x40ce, 0xffff
	Return2 0x1, 0x800c
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3f6

Script_branch_3f6: @ 3f6
	SetVar 0x40ce, 0xffff
	Return2 0x1, 0x800c
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 40d

.byte 0x0 @ 0x40d
.byte 0x0 @ 0x40e
.byte 0x0 @ 0x40f

Movement_410: @ 410
	MoveDownFast 0x1
	EndMovement 0x0
@ 418

@ end_0x418
