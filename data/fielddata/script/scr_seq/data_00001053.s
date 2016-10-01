.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x90
	CompareLastResultJump EQUAL, Script_branch_b0
	If 0x4095, 0x1
	CompareLastResultJump 0x4, Script_branch_82
	CheckFlag 0x6e
	CompareLastResultJump EQUAL, Script_branch_90
	CheckFlag 0xea
	CompareLastResultJump EQUAL, Script_branch_9e
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_6b
	End
@ 5c

Script_branch_5c: @ 5c
	SetVarHero 0x0
	SetVariableRival 0x1
	Message 0x0
	Jump Script_branch_7a
Script_branch_6b: @ 6b
	SetVarHero 0x0
	SetVariableRival 0x1
	Message 0x1
	Jump Script_branch_7a
Script_branch_7a: @ 7a
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 82

Script_branch_82: @ 82
	SetVariableRival 0x1
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 90

Script_branch_90: @ 90
	SetVariableRival 0x1
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9e

Script_branch_9e: @ 9e
	SetFlag 0x6e
	SetVariableRival 0x1
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b0

Script_branch_b0: @ b0
	SetVariableRival 0x1
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ be

.byte 0x0 @ 0xbe
.byte 0x0 @ 0xbf

@ end_0xc0
