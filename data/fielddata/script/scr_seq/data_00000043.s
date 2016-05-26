.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	.hword 0xfd13
@ 1a

Script_5: @ 1a
	SetFlag 0x2c9
	If 0x4056, 0x2
	CompareLastResultCall 0x1, Script_branch_2d
	End
@ 2d

Script_branch_2d: @ 2d
	ClearFlag 0x2c9
	Return
@ 33

Script_1: @ 33
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xa8
	CompareLastResultJump 0x1, Script_branch_51
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 51

Script_branch_51: @ 51
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5c

Script_2: @ 5c
	PlayFanfare 0x5dc
	LockAll
	If 0x4056, 0x3
	CompareLastResultJump 0x4, Script_branch_82
	Message 0x2
	Jump Script_branch_7a
@ 78

.byte 0x2 @ 0x78
.byte 0x0 @ 0x79

Script_branch_7a: @ 7a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 82

Script_branch_82: @ 82
	SetVarHero 0x0
	Message 0xd
	Jump Script_branch_7a
@ 8e

.byte 0x2 @ 0x8e
.byte 0x0 @ 0x8f

Script_3: @ 90
	PlayFanfare 0x5dc
	LockAll
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a1

Script_4: @ a1
	PlayFanfare 0x5dc
	LockAll
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b2

Script_6: @ b2
	LockAll
	ApplyMovement 0x1, Movement_19c
	WaitMovement
	Message 0x5
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_104
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_e1
	End
@ e1

Script_branch_e1: @ e1
	Message 0x6
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_104
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_e1
	End
@ 104

Script_branch_104: @ 104
	Message 0x7
	CloseMsgOnKeyPress
	ApplyMovement 0x1, Movement_1b4
	WaitMovement
	Message 0x8
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_159
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_136
	End
@ 136

Script_branch_136: @ 136
	Message 0x9
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_159
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_136
	End
@ 159

Script_branch_159: @ 159
	Message 0xa
	CloseMsgOnKeyPress
	ApplyMovement 0x1, Movement_1c4
	WaitMovement
	Message 0xb
	CloseMsgOnKeyPress
	ApplyMovement 0x1, Movement_1cc
	WaitMovement
	Message 0xc
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_1e0
	ApplyMovement 0x1, Movement_1d4
	WaitMovement
	RemovePeople 0x1
	SetVar 0x4056, 0x3
	ReleaseAll
	End
@ 19c

Movement_19c: @ 19c
	MoveRightFast 0x1
	Exclamation 0x1
	WalkRightFast 0x1
	WalkUpFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 1b4

Movement_1b4: @ 1b4
	MoveDownFast 0x1
	MoveUpFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 1c4

Movement_1c4: @ 1c4
	MoveLeftFast 0x1
	EndMovement 0x0
@ 1cc

Movement_1cc: @ 1cc
	MoveRightFast 0x1
	EndMovement 0x0
@ 1d4

Movement_1d4: @ 1d4
	Move_3f 0x2
	WalkRightFast 0x2
	EndMovement 0x0
@ 1e0

Movement_1e0: @ 1e0
	WalkDownFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 1ec

@ end_0x1ec
