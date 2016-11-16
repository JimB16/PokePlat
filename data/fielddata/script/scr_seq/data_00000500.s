.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	.hword 0xfd13
@ 1a

Script_1: @ 1a
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8000, 0x1
	Jump Script_branch_2e
@ 2c

.byte 0x2 @ 0x2c
.byte 0x0 @ 0x2d

Script_branch_2e: @ 2e
	Call Function_299
	Call Function_29e
	CopyVar 0x8008, 0x8001
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_31d
	If 0x8008, 0xfffe
	CompareLastResultJump EQUAL, Script_branch_31d
	Call Function_32b
	Jump Script_branch_2e
@ 66

.byte 0x2 @ 0x66
.byte 0x0 @ 0x67

Script_2: @ 68
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8000, 0x1
	Jump Script_branch_7c
@ 7a

.byte 0x2 @ 0x7a
.byte 0x0 @ 0x7b

Script_branch_7c: @ 7c
	Call Function_299
	Call Function_29e
	CopyVar 0x8008, 0x8001
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_31d
	If 0x8008, 0xfffe
	CompareLastResultJump EQUAL, Script_branch_31d
	Call Function_32b
	Jump Script_branch_7c
@ b4

.byte 0x2 @ 0xb4
.byte 0x0 @ 0xb5

Script_3: @ b6
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8000, 0x2
	Jump Script_branch_ca
@ c8

.byte 0x2 @ 0xc8
.byte 0x0 @ 0xc9

Script_branch_ca: @ ca
	Call Function_299
	Call Function_29e
	CopyVar 0x8008, 0x8001
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_31d
	If 0x8008, 0xfffe
	CompareLastResultJump EQUAL, Script_branch_31d
	Call Function_32b
	Jump Script_branch_ca
@ 102

.byte 0x2 @ 0x102
.byte 0x0 @ 0x103

Script_4: @ 104
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8000, 0x5
	Jump Script_branch_118
@ 116

.byte 0x2 @ 0x116
.byte 0x0 @ 0x117

Script_branch_118: @ 118
	Call Function_299
	Call Function_29e
	CopyVar 0x8008, 0x8001
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_31d
	If 0x8008, 0xfffe
	CompareLastResultJump EQUAL, Script_branch_31d
	CheckPokeCastle 0x1, 0x8001, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_174
	CheckPokeCastle 0x2, 0x8001, 0x800c
	SetVarPokeStored 0x0, 0x800c, 0x0, 0x0
	Message 0x7
	Jump Script_branch_17f
@ 172

.byte 0x2 @ 0x172
.byte 0x0 @ 0x173

Script_branch_174: @ 174
	Message 0x6
	Jump Script_branch_17f
@ 17d

.byte 0x2 @ 0x17d
.byte 0x0 @ 0x17e

Script_branch_17f: @ 17f
	SetVar 0x8002, 0x0
	SetVar 0x8004, 0x0
	SetVar 0x8005, 0x0
	Jump Script_branch_199
@ 197

.byte 0x2 @ 0x197
.byte 0x0 @ 0x198

Script_branch_199: @ 199
	Call Function_2bd
	If 0x8002, 0x9
	CompareLastResultJump EQUAL, Script_branch_118
	If 0x8002, 0xfffe
	CompareLastResultJump EQUAL, Script_branch_118
	SetVar 0x8003, 0x0
	SetVar 0x8006, 0x0
	SetVar 0x8007, 0x0
	Jump Script_branch_1d3
@ 1d1

.byte 0x2 @ 0x1d1
.byte 0x0 @ 0x1d2

Script_branch_1d3: @ 1d3
	Cmd_2de 0x8001, 0x8002, 0x8003, 0x8006, 0x8007
	If 0x8003, 0xfffe
	CompareLastResultJump EQUAL, Script_branch_199
	Call Function_32b
	Message 0x6
	Jump Script_branch_1d3
@ 1fb

.byte 0x2 @ 0x1fb
.byte 0x0 @ 0x1fc

Script_5: @ 1fd
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8000, 0x4
	Jump Script_branch_211
@ 20f

.byte 0x2 @ 0x20f
.byte 0x0 @ 0x210

Script_branch_211: @ 211
	Call Function_299
	Call Function_29e
	CopyVar 0x8008, 0x8001
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_31d
	If 0x8008, 0xfffe
	CompareLastResultJump EQUAL, Script_branch_31d
	Call Function_32b
	Jump Script_branch_211
@ 249

.byte 0x2 @ 0x249
.byte 0x0 @ 0x24a

Script_6: @ 24b
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8000, 0x6
	Jump Script_branch_25f
@ 25d

.byte 0x2 @ 0x25d
.byte 0x0 @ 0x25e

Script_branch_25f: @ 25f
	Call Function_299
	Call Function_29e
	CopyVar 0x8008, 0x8001
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_31d
	If 0x8008, 0xfffe
	CompareLastResultJump EQUAL, Script_branch_31d
	Call Function_32b
	Jump Script_branch_25f
@ 297

.byte 0x2 @ 0x297
.byte 0x0 @ 0x298

Function_299: @ 299
	Message 0x0
	Return
@ 29e

Function_29e: @ 29e
	Multi2 0x1f, 0x9, 0x0, 0x1, 0x8001
	Cmd_33a 0x1
	Cmd_42 0x1, 0x0
	Cmd_42 0x2, 0x1
	Cmd_42 0x3, 0x2
	Cmd_42 0x4, 0x3
	CloseMulti
	Return
@ 2bd

Function_2bd: @ 2bd
	Multi4 0x19, 0x1, 0x0, 0x1, 0x8002
	TxtMsgScrpMulti 0x8, 0xff, 0x0
	TxtMsgScrpMulti 0x9, 0xff, 0x1
	TxtMsgScrpMulti 0xa, 0xff, 0x2
	TxtMsgScrpMulti 0xb, 0xff, 0x3
	TxtMsgScrpMulti 0xc, 0xff, 0x4
	TxtMsgScrpMulti 0xd, 0xff, 0x5
	TxtMsgScrpMulti 0xe, 0xff, 0x6
	TxtMsgScrpMulti 0xf, 0xff, 0x7
	TxtMsgScrpMulti 0x10, 0xff, 0x8
	TxtMsgScrpMulti 0x5, 0xff, 0x9
	Cmd_306 0x8004, 0x8005
	Return
@ 31d

Script_branch_31d: @ 31d
	CloseMsgOnKeyPress
	Jump Script_branch_327
@ 325

.byte 0x2 @ 0x325
.byte 0x0 @ 0x326

Script_branch_327: @ 327
	ReleaseAll
	End
@ 32b

Function_32b: @ 32b
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	Call Function_341
	Return
@ 341

Function_341: @ 341
	ShowBArcadeRecors 0x8001, 0x8000, 0x8003
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Return
@ 359

.byte 0x0 @ 0x359
.byte 0x0 @ 0x35a
.byte 0x0 @ 0x35b

@ end_0x35c
