.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	.hword 0xfd13
@ 16

Script_1: @ 16
	SetFlag 0x9ec
	End
@ 1c

Script_2: @ 1c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2f

Script_3: @ 2f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 42

Script_4: @ 42
	PlayFanfare 0x5dc
	LockAll
	Message 0x13
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 53

Script_5: @ 53
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_7e
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_264
	End
@ 7e

Script_branch_7e: @ 7e
	Message 0x2
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChsPokemenu
	StorePokeMenu2 0x8000
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8000, 0xff
	CompareLastResultJump EQUAL, Script_branch_264
	CheckPokeEgg 0x8000, 0x8001
	If 0x8001, 0x0
	CompareLastResultJump EQUAL, Script_branch_259
	Cmd_2e5 0x8000, 0x0, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_26f
	SetVarPokeNick 0x0, 0x8000
	Message 0x5
	Cmd_2e6 0x8000, 0x0, 0x800c
	CopyVar 0x8003, 0x800c
	If 0x8003, 0xfffe
	CompareLastResultJump EQUAL, Script_branch_264
	Cmd_2ea 0x8003, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_27a
	CheckMoveNumDelete 0x800c, 0x8000
	CopyVar 0x8002, 0x800c
	If 0x800c, 0x4
	CompareLastResultJump EQUAL, Script_branch_12f
	Jump Script_branch_224
@ 12d

.byte 0x2 @ 0x12d
.byte 0x0 @ 0x12e

Script_branch_12f: @ 12f
	SetVarPokeNick 0x0, 0x8000
	SetVarAtk 0x1, 0x8003
	Message 0x9
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1e9
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	Cmd_2e7 0x8000, 0x8003
	Cmd_2e8 0x8002
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8002, 0x4
	CompareLastResultJump EQUAL, Script_branch_1e9
	CheckDeleteMove 0x800c, 0x8000, 0x8002
	SetVarAtk 0x1, 0x800c
	Message 0xc
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1e9
	SetVarPokeNick 0x0, 0x8000
	CheckDeleteMove 0x800c, 0x8000, 0x8002
	SetVarAtk 0x1, 0x800c
	Message 0xd
	PlayFanfare 0x5e6
	WaitFanfare 0x5e6
	Return2 0x1e, 0x800c
	Message 0xe
	Return2 0x20, 0x800c
	Soundfr 0x483
	SetVarAtk 0x1, 0x8003
	Message 0xf
	Cmd_4f
	Return2 0x10, 0x800c
	Jump Script_branch_245
@ 1e7

.byte 0x2 @ 0x1e7
.byte 0x0 @ 0x1e8

Script_branch_1e9: @ 1e9
	SetVarPokeNick 0x0, 0x8000
	SetVarAtk 0x1, 0x8003
	Message 0xa
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_20f
	Jump Script_branch_12f
@ 20d

.byte 0x2 @ 0x20d
.byte 0x0 @ 0x20e

Script_branch_20f: @ 20f
	SetVarPokeNick 0x0, 0x8000
	SetVarAtk 0x1, 0x8003
	Message 0xb
	Jump Script_branch_264
@ 222

.byte 0x2 @ 0x222
.byte 0x0 @ 0x223

Script_branch_224: @ 224
	SetVarPokeNick 0x0, 0x8000
	SetVarAtk 0x1, 0x8003
	Message 0x8
	Soundfr 0x483
	Cmd_4f
	Return2 0x10, 0x800c
	Jump Script_branch_245
@ 243

.byte 0x2 @ 0x243
.byte 0x0 @ 0x244

Script_branch_245: @ 245
	Cmd_2eb 0x8003
	Cmd_2e9 0x8000, 0x8002, 0x8003
	Jump Script_branch_264
@ 257

.byte 0x2 @ 0x257
.byte 0x0 @ 0x258

Script_branch_259: @ 259
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 264

Script_branch_264: @ 264
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 26f

Script_branch_26f: @ 26f
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 27a

Script_branch_27a: @ 27a
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 285

.byte 0x0 @ 0x285
.byte 0x0 @ 0x286
.byte 0x0 @ 0x287

@ end_0x288
