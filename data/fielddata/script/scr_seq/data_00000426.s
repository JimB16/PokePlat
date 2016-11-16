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
@ 19

.byte 0x2 @ 0x19
.byte 0x0 @ 0x1a

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
@ 6b

.byte 0x2 @ 0x6b
.byte 0x0 @ 0x6c

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
@ 83

.byte 0x2 @ 0x83
.byte 0x0 @ 0x84

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
@ c3

.byte 0x2 @ 0xc3
.byte 0x0 @ 0xc4

Script_branch_c5: @ c5
	Message 0x7
	Jump Script_branch_6d
@ ce

.byte 0x2 @ 0xce
.byte 0x0 @ 0xcf

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
@ 11f

.byte 0x2 @ 0x11f
.byte 0x0 @ 0x120

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
@ 171

.byte 0x2 @ 0x171
.byte 0x0 @ 0x172

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
@ 1b5

.byte 0x2 @ 0x1b5
.byte 0x0 @ 0x1b6

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
@ 1f7

.byte 0x2 @ 0x1f7
.byte 0x0 @ 0x1f8

Script_branch_1f9: @ 1f9
	DeleteEntry
	Jump Script_branch_173
@ 201

.byte 0x2 @ 0x201
.byte 0x0 @ 0x202

Script_branch_203: @ 203
	DeleteEntry
	Jump Script_branch_173
@ 20b

.byte 0x2 @ 0x20b
.byte 0x0 @ 0x20c

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
@ 24d

.byte 0x2 @ 0x24d
.byte 0x0 @ 0x24e

Script_branch_24f: @ 24f
	DeleteEntry
	Jump Script_branch_173
@ 257

.byte 0x2 @ 0x257
.byte 0x0 @ 0x258

Script_branch_259: @ 259
	DeleteEntry
	Jump Script_branch_173
@ 261

.byte 0x2 @ 0x261
.byte 0x0 @ 0x262

Script_branch_263: @ 263
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ReleaseAll
	BerryPoffin 0x1
	DeleteEntry
	Call Function_97
	Jump Script_branch_6d
@ 283

.byte 0x2 @ 0x283
.byte 0x0 @ 0x284
.byte 0x0 @ 0x285
.byte 0x0 @ 0x286
.byte 0x0 @ 0x287

@ end_0x288
