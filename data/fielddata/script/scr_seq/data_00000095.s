.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckBadge 0x4, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_6a
	Message 0x1
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_4c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_57
	End
@ 4c

Script_branch_4c: @ 4c
	Message 0x2
	Jump Script_branch_62
	End
@ 57

Script_branch_57: @ 57
	Message 0x3
	Jump Script_branch_62
	End
@ 62

Script_branch_62: @ 62
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6a

Script_branch_6a: @ 6a
	SetVarHero 0x0
	Message 0x4
	Jump Script_branch_62
	End
@ 78

Script_2: @ 78
	PlayFanfare 0x5dc
	LockAll
	CheckBadge 0x4, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_a2
	SetVariableRival 0x0
	SetVariableRival 0x1
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a2

Script_branch_a2: @ a2
	SetVariableRival 0x0
	SetVarHero 0x1
	SetVariableRival 0x2
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b6

Script_3: @ b6
	LockAll
	ApplyMovement 0x0, Movement_dc
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_f0
	WaitMovement
	SetVar 0x40d1, 0x1
	ReleaseAll
	End
@ db

.byte 0x0 @ 0xdb

Movement_dc: @ dc
	Exclamation 0x1
	Move_3f 0x1
	WalkLeftFast 0x1
	WalkDownFast 0x1
	EndMovement 0x0
@ f0

Movement_f0: @ f0
	WalkUpFast 0x1
	WalkRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 100

@ end_0x100
