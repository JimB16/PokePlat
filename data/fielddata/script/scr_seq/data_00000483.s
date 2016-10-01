.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	SetFlag 0x9f0
	End
@ 10

Script_2: @ 10
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckPokeParty 0x800c, 0xdf
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_cf
	Message 0x1
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChsPokemenu
	StorePokeMenu2 0x8002
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8002, 0xff
	CompareLastResultJump EQUAL, Script_branch_11e
	CheckPokeEgg 0x8002, 0x8001
	If 0x8001, 0xdf
	CompareLastResultJump 0x5, Script_branch_108
	CopyPokemonHeight 0x800c, 0x8002
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_ed
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_da
	ComparePokemonHeight 0x0, 0x1, 0x8002
	Message 0x2
	SetVar 0x8004, 0x6
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_113
	CallStandard 0x7fc
	SetVariablePokemonHeight 0x8002
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cf

Script_branch_cf: @ cf
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ da

Script_branch_da: @ da
	CheckPokemonHeight 0x0, 0x1, 0xdf
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ed

Script_branch_ed: @ ed
	ComparePokemonHeight 0x0, 0x1, 0x8002
	CheckPokemonHeight 0x2, 0x3, 0xdf
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 108

Script_branch_108: @ 108
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 113

Script_branch_113: @ 113
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 11e

Script_branch_11e: @ 11e
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 129

.byte 0x0 @ 0x129
.byte 0x0 @ 0x12a
.byte 0x0 @ 0x12b

@ end_0x12c
