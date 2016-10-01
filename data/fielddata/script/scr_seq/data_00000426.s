.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

.byte 0x2 @ 0x6
.byte 0x0 @ 0x7

Script_1: @ 8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	Jump Script_branch_1b
	End
@ 1b

Script_branch_1b: @ 1b
	Message 0x1
	Multi2 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x9, 0x0
	Cmd_42 0xa, 0x1
	Cmd_42 0xb, 0x2
	Cmd_42 0xc, 0x3
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_d0
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_121
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_78
	Jump Script_branch_6d
	End
@ 6d

Script_branch_6d: @ 6d
	Message 0x21
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 78

Script_branch_78: @ 78
	Message 0x20
	WaitButton
	Jump Script_branch_1b
	End
@ 85

Function_85: @ 85
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	ReleaseAll
	Return
@ 97

Function_97: @ 97
	CallEnd
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Return
@ af

Script_branch_af: @ af
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ba

Script_branch_ba: @ ba
	Message 0x6
	Jump Script_branch_6d
	End
@ c5

Script_branch_c5: @ c5
	Message 0x7
	Jump Script_branch_6d
	End
@ d0

Script_branch_d0: @ d0
	CheckItem 0x1c1, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_af
	SetVarBTowerChs 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_ba
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_c5
	Return2 0x1e, 0x800c
	Call Function_85
	BerryPoffin 0x0
	Call Function_97
	Jump Script_branch_6d
	End
@ 121

Script_branch_121: @ 121
	CheckItem 0x1c1, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_af
	SetVarBTowerChs 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_ba
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_c5
	CallStandard 0x7d6
	CopyVar 0x800c, 0x4000
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_173
	Jump Script_branch_6d
	End
@ 173

Script_branch_173: @ 173
	Message 0xd
	Multi 0x1e, 0x1, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xd, 0x0
	Cmd_42 0xe, 0x1
	Cmd_42 0x5, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1b7
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_20d
	Jump Script_branch_6d
	End
@ 1b7

Script_branch_1b7: @ 1b7
	Message 0x2
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_173
	CloseMsgOnKeyPress
	ChsFriend 0x6, 0x0, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1f9
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_203
	Jump Script_branch_263
	End
@ 1f9

Script_branch_1f9: @ 1f9
	DeleteEntry
	Jump Script_branch_173
	End
@ 203

Script_branch_203: @ 203
	DeleteEntry
	Jump Script_branch_173
	End
@ 20d

Script_branch_20d: @ 20d
	Message 0x2
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_173
	CloseMsgOnKeyPress
	WireBattleWait 0x6, 0x0, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_24f
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_259
	Jump Script_branch_263
	End
@ 24f

Script_branch_24f: @ 24f
	DeleteEntry
	Jump Script_branch_173
	End
@ 259

Script_branch_259: @ 259
	DeleteEntry
	Jump Script_branch_173
	End
@ 263

Script_branch_263: @ 263
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ReleaseAll
	BerryPoffin 0x1
	DeleteEntry
	Call Function_97
	Jump Script_branch_6d
	End
@ 285

.byte 0x0 @ 0x285
.byte 0x0 @ 0x286
.byte 0x0 @ 0x287

@ end_0x288
