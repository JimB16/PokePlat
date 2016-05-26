.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_4: @ 12
	CheckStatusPhraseBox 0xd, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_2b
	ClearFlag 0x219
	End
@ 2b

Script_branch_2b: @ 2b
	SetFlag 0x219
	End
@ 31

Script_1: @ 31
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 44

Script_2: @ 44
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 57

Script_3: @ 57
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x19, 0x0
	Message 0x2
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 76

.byte 0x0 @ 0x76
.byte 0x0 @ 0x77

@ end_0x78
