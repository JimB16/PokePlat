.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	.hword 0xfd13
@ 1a

Script_6: @ 1a
	CheckStatusPhraseBox 0xb, 0x4000
	If 0x4000, 0x0
	CompareLastResultCall 0x1, Script_branch_4f
	End
@ 2f

Script_5: @ 2f
	CheckStatusPhraseBox 0xb, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x5, Script_branch_55
	CheckFlag 0x217
	CompareLastResultCall 0x0, Script_branch_4f
	End
@ 4f

Script_branch_4f: @ 4f
	SetFlag 0x217
	Return
@ 55

Script_branch_55: @ 55
	CheckFlag 0x217
	CompareLastResultJump 0x1, Script_branch_66
	ClearFlag 0x217
	End
@ 66

Script_branch_66: @ 66
	ClearFlag 0x217
	AddPeople 0x4
	End
@ 70

Script_1: @ 70
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 83

Script_2: @ 83
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 96

Script_3: @ 96
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a9

Script_4: @ a9
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ bc

@ end_0xbc
