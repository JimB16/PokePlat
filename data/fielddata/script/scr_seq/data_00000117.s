.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x131
	CompareLastResultJump EQUAL, Script_branch_105
	CheckFlag 0x97e
	CompareLastResultJump EQUAL, Script_branch_33
	SetFlag 0x97e
	Message 0x0
	Jump Script_branch_3e
@ 31

.byte 0x2 @ 0x31
.byte 0x0 @ 0x32

Script_branch_33: @ 33
	Message 0x1
	Jump Script_branch_3e
@ 3c

.byte 0x2 @ 0x3c
.byte 0x0 @ 0x3d

Script_branch_3e: @ 3e
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_57
	Jump Script_branch_fa
@ 55

.byte 0x2 @ 0x55
.byte 0x0 @ 0x56

Script_branch_57: @ 57
	CheckPartyNumber 0x800c
	If 0x800c, 0x6
	CompareLastResultJump EQUAL, Script_branch_ef
	Message 0x2
	Soundfr 0x486
	SetVarHero 0x0
	Message 0x3
	Cmd_4f
	GivePokemon 0x85, 0x14, 0x0, 0x800c
	SetFlag 0x131
	Message 0x4
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_a8
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_e9
	End
@ a8

Script_branch_a8: @ a8
	CloseMsgOnKeyPress
	CheckPartyNumber 0x4000
	ScriptCmd_SubValue 0x4000, 0x1
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChoosePokeNick 0x4000, 0x800c
	If 0x800c, 0x1
	CompareLastResultCall 0x5, Script_branch_e3
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ e3

Script_branch_e3: @ e3
	RandomEvent 0x31
	Return
@ e9

Script_branch_e9: @ e9
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ef

Script_branch_ef: @ ef
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ fa

Script_branch_fa: @ fa
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 105

Script_branch_105: @ 105
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_122
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 122

Script_branch_122: @ 122
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12d

.byte 0x0 @ 0x12d
.byte 0x0 @ 0x12e
.byte 0x0 @ 0x12f

@ end_0x130
