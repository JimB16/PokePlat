.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xaac
	CompareLastResultJump 0x1, Script_branch_d5
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_eb
	Message 0x1
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChsPokemenu
	StorePokeMenu2 0x4000
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x4000, 0xff
	CompareLastResultJump 0x1, Script_branch_eb
	CheckPokeEgg 0x4000, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_e0
	Message 0x3
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	PlayFanfare 0x662
	WaitFanfare 0x662
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetVarPokeNick 0x0, 0x4000
	Message 0x4
	SetFlag 0xaac
	StoreHappyStatus 0x3, 0x4000
	CheckMassage 0x8004
	If 0x8004, 0xffff
	CompareLastResultJump 0x1, Script_branch_f6
	Message 0x7
	SetVar 0x8005, 0x1
	CallStandard 0x7ff
	Jump Script_branch_f6
@ d5

Script_branch_d5: @ d5
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e0

Script_branch_e0: @ e0
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ eb

Script_branch_eb: @ eb
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f6

Script_branch_f6: @ f6
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 101

Script_2: @ 101
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 114

Script_3: @ 114
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x1a1, 0x0
	Message 0xa
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 133

.byte 0x0 @ 0x133

@ end_0x134
