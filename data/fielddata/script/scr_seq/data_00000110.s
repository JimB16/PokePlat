.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_3: @ e
	CheckStatusPhraseBox 0xd, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_27
	ClearFlag 0x219
	End
@ 27

Script_branch_27: @ 27
	SetFlag 0x219
	End
@ 2d

Script_1: @ 2d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 40

Script_2: @ 40
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 53

.byte 0x0 @ 0x53

@ end_0x54
