.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xbc
	CompareLastResultJump EQUAL, Script_branch_ef
	Message 0x0
	Message 0x1
	CloseMsgOnKeyPress
	CheckFacePosition 0x800c
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_5f
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6f
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_7f
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_8f
	End
@ 5f

Script_branch_5f: @ 5f
	ApplyMovement 0x0, Movement_144
	WaitMovement
	Jump Script_branch_9f
Script_branch_6f: @ 6f
	ApplyMovement 0x0, Movement_168
	WaitMovement
	Jump Script_branch_9f
Script_branch_7f: @ 7f
	ApplyMovement 0x0, Movement_fc
	WaitMovement
	Jump Script_branch_9f
Script_branch_8f: @ 8f
	ApplyMovement 0x0, Movement_120
	WaitMovement
	Jump Script_branch_9f
Script_branch_9f: @ 9f
	Message 0x2
	Multi 0x1, 0x1, 0x0, 0x0, 0x8000
	Cmd_42 0xae, 0x0
	Cmd_42 0xaf, 0x1
	CloseMulti
	CheckIdPlayer 0x800c, 0x2
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_e4
	Message 0x4
	SetVar 0x8004, 0x1bc
	SetVar 0x8005, 0x1
	SetFlag 0xbc
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e4

Script_branch_e4: @ e4
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ef

Script_branch_ef: @ ef
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ fa

.byte 0x0 @ 0xfa
.byte 0x0 @ 0xfb

Movement_fc: @ fc
	SeeUp 0x1
	Move_3d 0x1
	SeeRight 0x1
	Move_3d 0x1
	SeeDown 0x1
	Move_3d 0x1
	SeeLeft 0x1
	Move_3d 0x1
	EndMovement 0x0
@ 120

Movement_120: @ 120
	SeeRight 0x1
	Move_3d 0x1
	SeeDown 0x1
	Move_3d 0x1
	SeeLeft 0x1
	Move_3d 0x1
	SeeUp 0x1
	Move_3d 0x1
	EndMovement 0x0
@ 144

Movement_144: @ 144
	SeeDown 0x1
	Move_3d 0x1
	SeeLeft 0x1
	Move_3d 0x1
	SeeUp 0x1
	Move_3d 0x1
	SeeRight 0x1
	Move_3d 0x1
	EndMovement 0x0
@ 168

Movement_168: @ 168
	SeeLeft 0x1
	Move_3d 0x1
	SeeUp 0x1
	Move_3d 0x1
	SeeRight 0x1
	Move_3d 0x1
	SeeDown 0x1
	Move_3d 0x1
	EndMovement 0x0
@ 18c

Script_2: @ 18c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 19f

.byte 0x0 @ 0x19f

@ end_0x1a0
