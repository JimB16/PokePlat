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
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_32
	Jump Script_branch_b3
	End
@ 32

Script_branch_32: @ 32
	Message 0x1
	Cmd_30
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChsPokemenu
	StorePokeMenu2 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_b3
	CopyVar 0x8005, 0x800c
	CheckPokeEgg 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_be
	ComparePokeNick 0x8005, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_c9
	SetVarPokeNick 0x0, 0x8005
	Message 0x2
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_d9
	Jump Script_branch_b3
	End
@ b3

Script_branch_b3: @ b3
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ be

Script_branch_be: @ be
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c9

Script_branch_c9: @ c9
	SetVarPokeNick 0x0, 0x8005
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d9

Script_branch_d9: @ d9
	Message 0x3
	Cmd_30
	CloseMsgOnKeyPress
	SetVar 0x800c, 0x0
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChoosePokeNick 0x8005, 0x800c
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_129
	StorePokeNickname 0x8005
	RandomEvent 0x31
	SetVarPokeNick 0x0, 0x8005
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 129

Script_branch_129: @ 129
	SetVarPokeNick 0x0, 0x8005
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 139

Script_2: @ 139
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x86
	CompareLastResultJump EQUAL, Script_branch_1e4
	Message 0x9
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_168
	Jump Script_branch_1d9
	End
@ 168

Script_branch_168: @ 168
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChooseTradePokemon
	StorePokeMenu2 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_1d9
	SetTradeId 0x1
	CopyVar 0x8004, 0x800c
	CheckPokeEgg 0x8004, 0x8005
	CheckPokemonTrade 0x800c
	If2 0x8005, 0x800c
	CompareLastResultJump 0x5, Script_branch_1cc
	TradeChosenPokemon 0x8004
	StopTrade
	SetFlag 0x86
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1cc

Script_branch_1cc: @ 1cc
	StopTrade
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d9

Script_branch_1d9: @ 1d9
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1e4

Script_branch_1e4: @ 1e4
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1ef

Script_3: @ 1ef
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckTime 0x800c
	If 0x800c, 0x4
	CompareLastResultJump EQUAL, Script_branch_21b
	Jump Script_branch_210
	End
@ 210

Script_branch_210: @ 210
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 21b

Script_branch_21b: @ 21b
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 226

.byte 0x0 @ 0x226
.byte 0x0 @ 0x227

@ end_0x228
