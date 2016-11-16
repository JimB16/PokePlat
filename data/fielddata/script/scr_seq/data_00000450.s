.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	.hword 0xfd13
@ a

Script_1: @ a
	SetFlag 0x9ea
	End
@ 10

Script_2: @ 10
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x100
	CompareLastResultJump EQUAL, Script_branch_41
	SetFlag 0x100
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_5b
	Jump Script_branch_a2
@ 41

Script_branch_41: @ 41
	Message 0x1
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_5b
	Jump Script_branch_a2
@ 5b

Script_branch_5b: @ 5b
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 66

Script_branch_66: @ 66
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 71

Script_branch_71: @ 71
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7c

Script_branch_7c: @ 7c
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 87

Script_branch_87: @ 87
	SetVarAtk 0x0, 0x1b2
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 97

Script_branch_97: @ 97
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a2

Script_branch_a2: @ a2
	CheckPartyNumber 0x4000
Script_branch_a6: @ a6
	ScriptCmd_SubValue 0x4000, 0x1
	CheckPokeEgg 0x4000, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_fc
	CheckPokeType 0x8004, 0x8005, 0x4000
	If 0x8004, 0x10
	CompareLastResultJump EQUAL, Script_branch_e7
	If 0x8005, 0x10
	CompareLastResultJump EQUAL, Script_branch_e7
	Jump Script_branch_fc
@ e7

Script_branch_e7: @ e7
	CheckMove 0x800c, 0x1b2, 0x4000
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_10f
Script_branch_fc: @ fc
	If 0x4000, 0x0
	CompareLastResultJump 0x5, Script_branch_a6
	Jump Script_branch_66
@ 10f

Script_branch_10f: @ 10f
	Message 0x4
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChsPokemenu
	StorePokeMenu2 0x8000
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8000, 0xff
	CompareLastResultJump EQUAL, Script_branch_5b
	CheckPokeEgg 0x8000, 0x8001
	If 0x8001, 0x0
	CompareLastResultJump EQUAL, Script_branch_7c
	Call Function_1d7
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_71
	CheckMove 0x800c, 0x1b2, 0x8000
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_87
	StoreHappyPoke 0x800c, 0x8000
	If 0x800c, 0xff
	CompareLastResultJump LESSER, Script_branch_97
	SetVar 0x8003, 0x1b2
	Jump Script_branch_19b
@ 19b

Script_branch_19b: @ 19b
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	TeachMove 0x8000, 0x1b2
	CheckTeachMove 0x800c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_5b
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d7

Function_1d7: @ 1d7
	CheckPokeType 0x8004, 0x8005, 0x8000
	If 0x8004, 0x10
	CompareLastResultJump EQUAL, Script_branch_201
	If 0x8005, 0x10
	CompareLastResultJump EQUAL, Script_branch_201
	SetVar 0x800c, 0x0
	Return
@ 201

Script_branch_201: @ 201
	SetVar 0x800c, 0x1
	Return
@ 209

.byte 0x0 @ 0x209
.byte 0x0 @ 0x20a
.byte 0x0 @ 0x20b

@ end_0x20c
