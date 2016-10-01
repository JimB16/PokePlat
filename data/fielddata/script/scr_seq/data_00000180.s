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
	CheckFlag 0xf4
	CompareLastResultJump EQUAL, Script_branch_28
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 28

Script_branch_28: @ 28
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 33

Script_2: @ 33
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xf4
	CompareLastResultJump EQUAL, Script_branch_dc
	Message 0x2
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_60
	Jump Script_branch_d1
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
	SetTradeId 0x2
	CopyVar 0x8004, 0x800c
	CheckPokeEgg 0x8004, 0x8005
	CheckPokemonTrade 0x800c
	If2 0x8005, 0x800c
	CompareLastResultJump 0x5, Script_branch_c4
	TradeChosenPokemon 0x8004
	StopTrade
	SetFlag 0xf4
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

.byte 0x0 @ 0xe7

@ end_0xe8
