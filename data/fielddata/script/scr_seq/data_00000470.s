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
	CompareLastResultJump EQUAL, Script_branch_39
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_66
	End
@ 39

Script_branch_39: @ 39
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Soundfr 0x48e
	Cmd_4f
	HealPokemon
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 66

Script_branch_66: @ 66
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 71

Script_2: @ 71
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 84

Script_3: @ 84
	PlayFanfare 0x5dc
	LockAll
	Message 0x4
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_ad
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_e3
	End
@ ad

Script_branch_ad: @ ad
	SetVarHero 0x0
	Message 0x5
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Soundfr 0x48e
	Cmd_4f
	HealPokemon
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetVarHero 0x0
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e3

Script_branch_e3: @ e3
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e9

.byte 0x0 @ 0xe9
.byte 0x0 @ 0xea
.byte 0x0 @ 0xeb

@ end_0xec
