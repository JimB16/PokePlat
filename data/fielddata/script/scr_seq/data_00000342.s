.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	.hword 0xfd13
@ 1e

Script_1: @ 1e
	PlayFanfare 0x5dc
	LockAll
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3e
	Jump Script_branch_74
Script_branch_3e: @ 3e
	SetVarHero 0x0
	Message 0x1
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Soundfr 0x48e
	Cmd_4f
	HealPokemon
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetVarHero 0x0
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 74

Script_branch_74: @ 74
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7a

Script_2: @ 7a
	PlayFanfare 0x5dc
	LockAll
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 8b

Script_3: @ 8b
	PlayFanfare 0x5dc
	LockAll
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9c

Script_4: @ 9c
	PlayFanfare 0x5dc
	LockAll
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ad

Script_5: @ ad
	PlayFanfare 0x5dc
	LockAll
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ be

Script_7: @ be
	PlayFanfare 0x5dc
	LockAll
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ cf

Script_6: @ cf
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_10a
	Message 0x5
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_10a
	Message 0x6
	Jump Script_branch_10a
	End
@ 10a

Script_branch_10a: @ 10a
	SetVarHero 0x0
	Message 0x4
	Jump Script_branch_118
	End
@ 118

Script_branch_118: @ 118
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 120

@ end_0x120
