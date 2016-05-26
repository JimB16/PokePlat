.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 21

Script_2: @ 21
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_4c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_232
	End
@ 4c

Script_branch_4c: @ 4c
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
	CompareLastResultJump 0x1, Script_branch_232
	CheckPokeEgg 0x8000, 0x8001
	If 0x8001, 0x0
	CompareLastResultJump 0x1, Script_branch_227
	Cmd_2e5 0x8000, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_23d
	SetVarPokeNick 0x0, 0x8000
	Message 0x5
	Cmd_2e6 0x8000, 0x1, 0x800c
	CopyVar 0x8003, 0x800c
	If 0x8003, 0xfffe
	CompareLastResultJump 0x1, Script_branch_232
	Cmd_2ea 0x8003, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_248
	CheckMoveNumDelete 0x800c, 0x8000
	CopyVar 0x8002, 0x800c
	If 0x800c, 0x4
	CompareLastResultJump 0x1, Script_branch_fd
	Jump Script_branch_1f2
@ fb

.byte 0x2 @ 0xfb
.byte 0x0 @ 0xfc

Script_branch_fd: @ fd
	SetVarPokeNick 0x0, 0x8000
	SetVarAtk 0x1, 0x8003
	Message 0x9
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_1b7
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	Cmd_2e7 0x8000, 0x8003
	Cmd_2e8 0x8002
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8002, 0x4
	CompareLastResultJump 0x1, Script_branch_1b7
	CheckDeleteMove 0x800c, 0x8000, 0x8002
	SetVarAtk 0x1, 0x800c
	Message 0xc
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_1b7
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
	Jump Script_branch_213
@ 1b5

.byte 0x2 @ 0x1b5
.byte 0x0 @ 0x1b6

Script_branch_1b7: @ 1b7
	SetVarPokeNick 0x0, 0x8000
	SetVarAtk 0x1, 0x8003
	Message 0xa
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1dd
	Jump Script_branch_fd
@ 1db

.byte 0x2 @ 0x1db
.byte 0x0 @ 0x1dc

Script_branch_1dd: @ 1dd
	SetVarPokeNick 0x0, 0x8000
	SetVarAtk 0x1, 0x8003
	Message 0xb
	Jump Script_branch_232
@ 1f0

.byte 0x2 @ 0x1f0
.byte 0x0 @ 0x1f1

Script_branch_1f2: @ 1f2
	SetVarPokeNick 0x0, 0x8000
	SetVarAtk 0x1, 0x8003
	Message 0x8
	Soundfr 0x483
	Cmd_4f
	Return2 0x10, 0x800c
	Jump Script_branch_213
@ 211

.byte 0x2 @ 0x211
.byte 0x0 @ 0x212

Script_branch_213: @ 213
	Cmd_2eb 0x8003
	Cmd_2e9 0x8000, 0x8002, 0x8003
	Jump Script_branch_232
@ 225

.byte 0x2 @ 0x225
.byte 0x0 @ 0x226

Script_branch_227: @ 227
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 232

Script_branch_232: @ 232
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 23d

Script_branch_23d: @ 23d
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 248

Script_branch_248: @ 248
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 253

Script_3: @ 253
	PlayFanfare 0x5dc
	LockAll
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 264

@ end_0x264
