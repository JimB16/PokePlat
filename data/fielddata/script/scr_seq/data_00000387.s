.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	script Script_8
	.hword 0xfd13
@ 22

Script_1: @ 22
	Cmd_2f2
	End
@ 26

Script_2: @ 26
	If 0x4055, 0x7
	CompareLastResultJump 0x1, Script_branch_80
	CheckFlag 0x9ad
	CompareLastResultJump 0x1, Script_branch_51
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 51

Script_3: @ 51
Script_branch_51: @ 51
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	CloseMsgOnKeyPress
	SetFlag 0x977
	ApplyMovement 0x86, Movement_108
	WaitMovement
	ApplyMovement 0x86, Movement_11c
	WaitMovement
	SetVar 0x4055, 0x7
	ReleaseAll
	End
@ 80

Script_4: @ 80
Script_branch_80: @ 80
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 93

Script_5: @ 93
	LockAll
	PlayCry 0x1e1, 0x0
	Message 0x0
	CloseMsgOnKeyPress
	WaitCry
	ApplyMovement 0x83, Movement_130
	WaitMovement
	Cmd_312 0x83
	ReleaseAll
	End
@ b4

Script_6: @ b4
	LockAll
	PlayCry 0x1e0, 0x0
	Message 0x1
	CloseMsgOnKeyPress
	WaitCry
	ApplyMovement 0x84, Movement_130
	WaitMovement
	Cmd_312 0x84
	ReleaseAll
	End
@ d5

Script_7: @ d5
	LockAll
	PlayCry 0x1e2, 0x0
	Message 0x2
	CloseMsgOnKeyPress
	WaitCry
	ApplyMovement 0x85, Movement_130
	WaitMovement
	Cmd_312 0x85
	ReleaseAll
	End
@ f6

Script_8: @ f6
	PlayFanfare 0x5dc
	LockAll
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 107

.byte 0x0 @ 0x107

Movement_108: @ 108
	Move_42 0x1
	MoveDownFast 0x1
	Exclamation 0x1
	Move_42 0x1
	EndMovement 0x0
@ 11c

Movement_11c: @ 11c
	WalkDownFast 0x1
	Move_76 0x1
	WalkLeftFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 130

Movement_130: @ 130
	Move_43 0x1
	EndMovement 0x0
@ 138

@ end_0x138
