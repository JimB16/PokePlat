.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	SetFlag 0x9e4
	ShayminAnm 0x1, 0x1
	ClearFlag 0x279
	CheckFlag 0x158
	CompareLastResultCall LESSER, Script_branch_24
	End
@ 24

Script_branch_24: @ 24
	If 0x40f8, 0x2
	CompareLastResultJump 0x5, Script_branch_35
	SetFlag 0x279
Script_branch_35: @ 35
	Return
@ 37

Script_2: @ 37
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFacePosition 0x8004
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5d
	Jump Script_branch_9d
Script_branch_5d: @ 5d
	Message 0x1
	CloseMsgOnKeyPress
	Call Function_a8
	If 0x8004, 0x1
	CompareLastResultCall EQUAL, Script_branch_c2
	If 0x8004, 0x2
	CompareLastResultCall EQUAL, Script_branch_dc
	If 0x8004, 0x0
	CompareLastResultCall EQUAL, Script_branch_f6
	ShipAnimation 0x0, 0x2, 0x21, 0x2c, 0x2ee
	ReleaseAll
	End
@ 9d

Script_branch_9d: @ 9d
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a8

Function_a8: @ a8
	ApplyMovement 0x0, Movement_110
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0x0, Movement_11c
	WaitMovement
	Return
@ c2

Script_branch_c2: @ c2
	ApplyMovement 0xff, Movement_124
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0xff, Movement_11c
	WaitMovement
	Return
@ dc

Script_branch_dc: @ dc
	ApplyMovement 0xff, Movement_134
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0xff, Movement_11c
	WaitMovement
	Return
@ f6

Script_branch_f6: @ f6
	ApplyMovement 0xff, Movement_140
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0xff, Movement_11c
	WaitMovement
	Return
@ 110

Movement_110: @ 110
	WalkLeftFast 0x1
	Move_40 0x1
	EndMovement 0x0
@ 11c

Movement_11c: @ 11c
	WaitDisappear 0x1
	EndMovement 0x0
@ 124

Movement_124: @ 124
	WalkDownFast 0x1
	WalkLeftFast 0x2
	Move_40 0x1
	EndMovement 0x0
@ 134

Movement_134: @ 134
	WalkLeftFast 0x2
	Move_40 0x1
	EndMovement 0x0
@ 140

Movement_140: @ 140
	WalkUpFast 0x1
	WalkLeftFast 0x2
	Move_40 0x1
	EndMovement 0x0
@ 150

@ end_0x150
