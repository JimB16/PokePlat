.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	Cmd_2f2
	End
@ e

Script_2: @ e
	PlayFanfare 0x5dc
	LockAll
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_2e
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2e

Script_branch_2e: @ 2e
	SetVarHero 0x0
	Message 0x1
	CloseMsgOnKeyPress
	PlayFanfare 0x5d2
	Cmd_328 0x0
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x10e, 0x0, 0xb, 0xf, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 64

@ end_0x64
