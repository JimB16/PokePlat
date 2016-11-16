.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	SetFlag 0x9f1
	End
@ 14

Script_2: @ 14
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xf5
	CompareLastResultJump EQUAL, Script_branch_dc
	CheckFlag 0xf6
	CompareLastResultJump EQUAL, Script_branch_46
	Message 0x0
	Cmd_22b
	SetFlag 0xf6
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 46

Script_branch_46: @ 46
	Message 0x2
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_60
	Jump Script_branch_d1
@ 60

Script_branch_60: @ 60
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChooseTradePokemon
	StorePokeMenu2 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_d1
	SetTradeId 0x3
	CopyVar 0x8004, 0x800c
	CheckPokeEgg 0x8004, 0x8005
	CheckPokemonTrade 0x800c
	If2 0x8005, 0x800c
	CompareLastResultJump 0x5, Script_branch_c4
	TradeChosenPokemon 0x8004
	StopTrade
	SetFlag 0xf5
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c4

Script_branch_c4: @ c4
	StopTrade
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d1

Script_branch_d1: @ d1
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ dc

Script_branch_dc: @ dc
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e7

Script_3: @ e7
	PlayFanfare 0x5dc
	LockAll
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ end_0xf8
@ f8

