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
	ShowMoney 0x14, 0x2
	Message 0x0
	YesNoBox 0x800c
	CloseMsgOnKeyPress
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_3e
	HideMoney
	ReleaseAll
	End
@ 3e

Script_branch_3e: @ 3e
	CheckMoney 0x800c, 0x64
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_6b
	TakeMoney 0x64
	UpdateMoney
	PlayFanfare 0x644
	WaitFanfare 0x644
	HideMoney
	Gmbynocule
	ReleaseAll
	End
@ 6b

Script_branch_6b: @ 6b
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 78

Script_2: @ 78
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 8b

Script_3: @ 8b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9e

Script_4: @ 9e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b1

Script_5: @ b1
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c4

@ end_0xc4
