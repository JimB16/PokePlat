.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	.hword 0xfd13
@ 16

Script_1: @ 16
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Jump Script_branch_34
	ApplyMovement 0x0, Movement_c8
	WaitMovement
	Jump Script_branch_44
Script_branch_34: @ 34
	ApplyMovement 0x0, Movement_d8
	WaitMovement
	Jump Script_branch_44
Script_branch_44: @ 44
	Message 0x0
	CloseMsgOnKeyPress
	HMEffect 0x2, 0x8005
	Return2 0xa, 0x800c
	RemovePeople 0x1
Script_branch_59: @ 59
	Return2 0x1, 0x800c
	If 0x8005, 0x0
	CompareLastResultJump EQUAL, Script_branch_59
	FacePlayer
	Message 0x1
	CloseMsgOnKeyPress
	Jump Script_branch_91
	ApplyMovement 0x0, Movement_b4
	ApplyMovement 0xff, Movement_e8
	WaitMovement
	Jump Script_branch_a1
Script_branch_91: @ 91
	ApplyMovement 0x0, Movement_c0
	WaitMovement
	Jump Script_branch_a1
Script_branch_a1: @ a1
	RemovePeople 0x0
	SetFlag 0x7a
	SetFlag 0x17c
	ReleaseAll
	End
@ b1

.byte 0x0 @ 0xb1
.byte 0x0 @ 0xb2
.byte 0x0 @ 0xb3

Movement_b4: @ b4
	WalkUpFast 0x1
	WalkRightFast 0xa
	EndMovement 0x0
@ c0

Movement_c0: @ c0
	WalkRightFast 0xa
	EndMovement 0x0
@ c8

Movement_c8: @ c8
	Move_3f 0x2
	MoveUpFast 0x1
	Move_3f 0x4
	EndMovement 0x0
@ d8

Movement_d8: @ d8
	Move_3f 0x2
	MoveRightFast 0x1
	Move_3f 0x4
	EndMovement 0x0
@ e8

Movement_e8: @ e8
	Move_3f 0x1
	MoveUpFast 0x1
	Move_3f 0x2
	MoveRightFast 0x1
	EndMovement 0x0
@ fc

Script_2: @ fc
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x42, 0x0
	Message 0x2
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 11b

Script_3: @ 11b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x42, 0x0
	Message 0x3
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13a

Script_4: @ 13a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x42, 0x0
	Message 0x4
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 159

Script_5: @ 159
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 16c

@ end_0x16c
