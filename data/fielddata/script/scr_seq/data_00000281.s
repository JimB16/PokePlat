.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	SetFlag 0x9d0
	ShayminAnm 0x0, 0x1
	End
@ 15

Script_2: @ 15
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFacePosition 0x8004
	CheckItem 0x1c5, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_52
	Message 0x1
	YesNoBox 0x800c
	CloseMsgOnKeyPress
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5d
	Jump Script_branch_98
@ 52

Script_branch_52: @ 52
	Message 0x0
	CloseMsgOnKeyPress
	Jump Script_branch_5d
@ 5d

Script_branch_5d: @ 5d
	Call Function_a3
	If 0x8004, 0x1
	CompareLastResultCall EQUAL, Script_branch_bd
	If 0x8004, 0x3
	CompareLastResultCall EQUAL, Script_branch_d7
	If 0x8004, 0x0
	CompareLastResultCall EQUAL, Script_branch_f1
	ShipAnimation 0x0, 0x2, 0x21, 0x2c, 0x2ee
	ReleaseAll
	End
@ 98

Script_branch_98: @ 98
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a3

Function_a3: @ a3
	ApplyMovement 0x0, Movement_10c
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0x0, Movement_118
	WaitMovement
	Return
@ bd

Script_branch_bd: @ bd
	ApplyMovement 0xff, Movement_120
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0xff, Movement_118
	WaitMovement
	Return
@ d7

Script_branch_d7: @ d7
	ApplyMovement 0xff, Movement_130
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0xff, Movement_118
	WaitMovement
	Return
@ f1

Script_branch_f1: @ f1
	ApplyMovement 0xff, Movement_13c
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0xff, Movement_118
	WaitMovement
	Return
@ 10b

.byte 0x0 @ 0x10b

Movement_10c: @ 10c
	WalkRightFast 0x1
	Move_40 0x1
	EndMovement 0x0
@ 118

Movement_118: @ 118
	WaitDisappear 0x1
	EndMovement 0x0
@ 120

Movement_120: @ 120
	WalkDownFast 0x1
	WalkRightFast 0x2
	Move_40 0x1
	EndMovement 0x0
@ 130

Movement_130: @ 130
	WalkRightFast 0x2
	Move_40 0x1
	EndMovement 0x0
@ 13c

Movement_13c: @ 13c
	WalkUpFast 0x1
	WalkRightFast 0x2
	Move_40 0x1
	EndMovement 0x0
@ 14c

@ end_0x14c
