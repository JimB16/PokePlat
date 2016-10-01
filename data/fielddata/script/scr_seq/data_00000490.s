.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_31
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_79
	End
@ 31

Script_branch_31: @ 31
	Message 0x1
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Soundfr 0x48e
	Cmd_4f
	HealPokemon
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Message 0x2
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_31
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_79
	End
@ 79

Script_branch_79: @ 79
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 84

@ end_0x84
