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
	CheckFlag 0x85
	CompareLastResultJump EQUAL, Script_branch_b7
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3b
	Jump Script_branch_ac
@ 3b

Script_branch_3b: @ 3b
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChooseTradePokemon
	StorePokeMenu2 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_ac
	SetTradeId 0x0
	CopyVar 0x8004, 0x800c
	CheckPokeEgg 0x8004, 0x8005
	CheckPokemonTrade 0x800c
	If2 0x8005, 0x800c
	CompareLastResultJump 0x5, Script_branch_9f
	TradeChosenPokemon 0x8004
	StopTrade
	SetFlag 0x85
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9f

Script_branch_9f: @ 9f
	StopTrade
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ac

Script_branch_ac: @ ac
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b7

Script_branch_b7: @ b7
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c2

Script_2: @ c2
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d5

Script_3: @ d5
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e8

@ end_0xe8
