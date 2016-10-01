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
	CheckFlag 0x97
	CompareLastResultJump EQUAL, Script_branch_109
	CheckFlag 0xb5
	CompareLastResultJump EQUAL, Script_branch_37
	SetFlag 0xb5
	Message 0x0
	Jump Script_branch_42
	End
@ 37

Script_branch_37: @ 37
	Message 0x1
	Jump Script_branch_42
	End
@ 42

Script_branch_42: @ 42
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5b
	Jump Script_branch_fe
	End
@ 5b

Script_branch_5b: @ 5b
	CheckPartyNumber 0x800c
	If 0x800c, 0x6
	CompareLastResultJump EQUAL, Script_branch_f3
	Message 0x2
	Soundfr 0x486
	SetVarHero 0x0
	Message 0x3
	Cmd_4f
	GivePokemon 0x89, 0x19, 0x0, 0x800c
	SetFlag 0x97
	Message 0x4
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_ac
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_ed
	End
@ ac

Script_branch_ac: @ ac
	CloseMsgOnKeyPress
	CheckPartyNumber 0x4000
	ScriptCmd_SubValue 0x4000, 0x1
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChoosePokeNick 0x4000, 0x800c
	If 0x800c, 0x1
	CompareLastResultCall 0x5, Script_branch_e7
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ e7

Script_branch_e7: @ e7
	RandomEvent 0x31
	Return
@ ed

Script_branch_ed: @ ed
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f3

Script_branch_f3: @ f3
	Message 0x5
	Jump Script_branch_114
	End
@ fe

Script_branch_fe: @ fe
	Message 0x6
	Jump Script_branch_114
	End
@ 109

Script_branch_109: @ 109
	Message 0x7
	Jump Script_branch_114
	End
@ 114

Script_branch_114: @ 114
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 11c

Script_2: @ 11c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 12f

.byte 0x0 @ 0x12f

@ end_0x130
