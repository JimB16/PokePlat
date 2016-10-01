.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xd2
	CompareLastResultJump EQUAL, Script_branch_c7
	CheckFlag 0xe8
	CompareLastResultJump EQUAL, Script_branch_4f
	CheckItem 0x1a8, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_44
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 44

Script_branch_44: @ 44
	Message 0x1
	Jump Script_branch_4f
	End
@ 4f

Script_branch_4f: @ 4f
	ApplyMovement 0x0, Movement_d4
	WaitMovement
	Message 0x2
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_7c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_b8
	End
@ 7c

Script_branch_7c: @ 7c
	Message 0x3
	SetVar 0x8004, 0x4b
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_ae
	SetFlag 0xd2
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ae

Script_branch_ae: @ ae
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b8

Script_branch_b8: @ b8
	SetFlag 0xe8
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c7

Script_branch_c7: @ c7
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d2

.byte 0x0 @ 0xd2
.byte 0x0 @ 0xd3

Movement_d4: @ d4
	Exclamation 0x1
	EndMovement 0x0
@ dc

@ end_0xdc
