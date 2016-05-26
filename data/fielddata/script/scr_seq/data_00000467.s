.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_2: @ a
	CheckIdPlayer 0x4032, 0x4
	CheckStatusPhraseBox 0xf, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_62
	CheckStatusPhraseBox 0x10, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_62
	CheckStatusPhraseBox 0x11, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_62
	CheckStatusPhraseBox 0x12, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_62
	ClearFlag 0x2c2
	End
@ 62

Script_branch_62: @ 62
	SetFlag 0x2c2
	End
@ 68

Script_1: @ 68
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckRuinManiac 0x4000
	If 0x4000, 0x1a
	CompareLastResultJump 0x4, Script_branch_8c
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 8c

Script_branch_8c: @ 8c
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 97

.byte 0x0 @ 0x97

@ end_0x98
