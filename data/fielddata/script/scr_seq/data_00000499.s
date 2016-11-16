.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	.hword 0xfd13
@ 6

Script_1: @ 6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	ShowBattlePointsBox 0x15, 0x1
	CheckFlag 0x72
	CompareLastResultJump EQUAL, Script_branch_31
	SetFlag 0x72
	SetVariableNumber 0x0, 0x1
	Message 0xf
	Jump Script_branch_41
@ 2f

.byte 0x2 @ 0x2f
.byte 0x0 @ 0x30

Script_branch_31: @ 31
	SetVariableNumber 0x0, 0x1
	Message 0x0
	Jump Script_branch_41
@ 3f

.byte 0x2 @ 0x3f
.byte 0x0 @ 0x40

Script_branch_41: @ 41
	Message 0x1
	Multi2 0x1e, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x2, 0x0
	Cmd_42 0x3, 0x1
	Cmd_42 0x4, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_85
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_15d
	Jump Script_branch_152
@ 83

.byte 0x2 @ 0x83
.byte 0x0 @ 0x84

Script_branch_85: @ 85
	SetVariableNumber 0x2, 0x1
	Message 0x7
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_152
	CheckBPoints 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_147
	TakeBPoints 0x1
	UpdateBattlePointsBox
	Message 0xa
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	HideBattlePointsBox
	CloseMsgOnKeyPress
	Cmd_2e2
	Cmd_2e4 0x0, 0x4000, 0x4001
	Cmd_2e4 0x1, 0x4002, 0x4003
	Cmd_2e4 0x2, 0x4004, 0x4005
	Cmd_2e3
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetVar 0x8000, 0x0
	Call Function_17a
	If 0x8000, 0x0
	CompareLastResultJump EQUAL, Script_branch_1ab
	SetVariableNumber 0x0, 0x8000
	Message 0xb
	If 0x4001, 0x0
	CompareLastResultCall 0x5, Script_branch_1b6
	If 0x4003, 0x0
	CompareLastResultCall 0x5, Script_branch_200
	If 0x4005, 0x0
	CompareLastResultCall 0x5, Script_branch_24a
	Message 0x5
	Jump Script_branch_172
@ 145

.byte 0x2 @ 0x145
.byte 0x0 @ 0x146

Script_branch_147: @ 147
	Message 0xe
	Jump Script_branch_168
@ 150

.byte 0x2 @ 0x150
.byte 0x0 @ 0x151

Script_branch_152: @ 152
	Message 0x5
	Jump Script_branch_168
@ 15b

.byte 0x2 @ 0x15b
.byte 0x0 @ 0x15c

Script_branch_15d: @ 15d
	Message 0x6
	Jump Script_branch_41
@ 166

.byte 0x2 @ 0x166
.byte 0x0 @ 0x167

Script_branch_168: @ 168
	WaitButton
	CloseMsgOnKeyPress
	HideBattlePointsBox
	ReleaseAll
	End
@ 172

Script_branch_172: @ 172
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 17a

Function_17a: @ 17a
	If 0x4001, 0x0
	CompareLastResultCall 0x5, Script_branch_1a3
	If 0x4003, 0x0
	CompareLastResultCall 0x5, Script_branch_1a3
	If 0x4005, 0x0
	CompareLastResultCall 0x5, Script_branch_1a3
	Return
@ 1a3

Script_branch_1a3: @ 1a3
	ScriptCmd_AddValue 0x8000, 0x1
	Return
@ 1ab

Script_branch_1ab: @ 1ab
	Message 0x5
	Jump Script_branch_172
@ 1b4

.byte 0x2 @ 0x1b4
.byte 0x0 @ 0x1b5

Script_branch_1b6: @ 1b6
	If 0x4001, 0x1
	CompareLastResultJump GREATER, Script_branch_1ce
	SetVarItem 0x0, 0x4000
	Jump Script_branch_1d3
@ 1ce

Script_branch_1ce: @ 1ce
	Cmd_33d 0x0, 0x4000
Script_branch_1d3: @ 1d3
	SetVariableNumber 0x1, 0x4001
	CheckStoreItem 0x4000, 0x4001, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_294
	Soundfr 0x486
	Message 0xd
	TakeItem 0x4000, 0x4001, 0x800c
	Cmd_4f
	Return
@ 200

Script_branch_200: @ 200
	If 0x4003, 0x1
	CompareLastResultJump GREATER, Script_branch_218
	SetVarItem 0x0, 0x4002
	Jump Script_branch_21d
@ 218

Script_branch_218: @ 218
	Cmd_33d 0x0, 0x4002
Script_branch_21d: @ 21d
	SetVariableNumber 0x1, 0x4003
	CheckStoreItem 0x4002, 0x4003, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_294
	Soundfr 0x486
	Message 0xd
	TakeItem 0x4002, 0x4003, 0x800c
	Cmd_4f
	Return
@ 24a

Script_branch_24a: @ 24a
	If 0x4005, 0x1
	CompareLastResultJump GREATER, Script_branch_262
	SetVarItem 0x0, 0x4004
	Jump Script_branch_267
@ 262

Script_branch_262: @ 262
	Cmd_33d 0x0, 0x4004
Script_branch_267: @ 267
	SetVariableNumber 0x1, 0x4005
	CheckStoreItem 0x4004, 0x4005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_294
	Soundfr 0x486
	Message 0xd
	TakeItem 0x4004, 0x4005, 0x800c
	Cmd_4f
	Return
@ 294

Script_branch_294: @ 294
	Message 0xc
	Return
@ 299

.byte 0x0 @ 0x299
.byte 0x0 @ 0x29a
.byte 0x0 @ 0x29b

@ end_0x29c
