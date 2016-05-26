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
	CheckFlag 0xaad
	CompareLastResultJump 0x1, Script_branch_64
	Cmd_27f 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_7a
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_6f
	Cmd_27d 0x800c, 0x0
	If 0x800c, 0xffff
	CompareLastResultJump 0x1, Script_branch_7a
	SetFlag 0xaad
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 64

Script_branch_64: @ 64
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6f

Script_branch_6f: @ 6f
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7a

Script_branch_7a: @ 7a
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 85

Script_2: @ 85
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_b0
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_296
	End
@ b0

Script_branch_b0: @ b0
	Message 0x9
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChsPokemenu
	StorePokeMenu2 0x8000
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8000, 0xff
	CompareLastResultJump 0x1, Script_branch_296
	CheckPokeEgg 0x8000, 0x8001
	If 0x8001, 0x0
	CompareLastResultJump 0x1, Script_branch_28b
	Cmd_2e5 0x8000, 0x2, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_2a1
	SetVarPokeNick 0x0, 0x8000
	Message 0xc
	Cmd_2e6 0x8000, 0x2, 0x800c
	CopyVar 0x8003, 0x800c
	If 0x8003, 0xfffe
	CompareLastResultJump 0x1, Script_branch_296
	Cmd_2ea 0x8003, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_2ac
	CheckMoveNumDelete 0x800c, 0x8000
	CopyVar 0x8002, 0x800c
	If 0x800c, 0x4
	CompareLastResultJump 0x1, Script_branch_161
	Jump Script_branch_256
@ 15f

.byte 0x2 @ 0x15f
.byte 0x0 @ 0x160

Script_branch_161: @ 161
	SetVarPokeNick 0x0, 0x8000
	SetVarAtk 0x1, 0x8003
	Message 0x10
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_21b
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	Cmd_2e7 0x8000, 0x8003
	Cmd_2e8 0x8002
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8002, 0x4
	CompareLastResultJump 0x1, Script_branch_21b
	CheckDeleteMove 0x800c, 0x8000, 0x8002
	SetVarAtk 0x1, 0x800c
	Message 0x13
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_21b
	SetVarPokeNick 0x0, 0x8000
	CheckDeleteMove 0x800c, 0x8000, 0x8002
	SetVarAtk 0x1, 0x800c
	Message 0x14
	PlayFanfare 0x5e6
	WaitFanfare 0x5e6
	Return2 0x1e, 0x800c
	Message 0x15
	Return2 0x20, 0x800c
	Soundfr 0x483
	SetVarAtk 0x1, 0x8003
	Message 0x16
	Cmd_4f
	Return2 0x10, 0x800c
	Jump Script_branch_277
@ 219

.byte 0x2 @ 0x219
.byte 0x0 @ 0x21a

Script_branch_21b: @ 21b
	SetVarPokeNick 0x0, 0x8000
	SetVarAtk 0x1, 0x8003
	Message 0x11
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_241
	Jump Script_branch_161
@ 23f

.byte 0x2 @ 0x23f
.byte 0x0 @ 0x240

Script_branch_241: @ 241
	SetVarPokeNick 0x0, 0x8000
	SetVarAtk 0x1, 0x8003
	Message 0x12
	Jump Script_branch_296
@ 254

.byte 0x2 @ 0x254
.byte 0x0 @ 0x255

Script_branch_256: @ 256
	SetVarPokeNick 0x0, 0x8000
	SetVarAtk 0x1, 0x8003
	Message 0xf
	Soundfr 0x483
	Cmd_4f
	Return2 0x10, 0x800c
	Jump Script_branch_277
@ 275

.byte 0x2 @ 0x275
.byte 0x0 @ 0x276

Script_branch_277: @ 277
	Cmd_2eb 0x8003
	Cmd_2e9 0x8000, 0x8002, 0x8003
	Jump Script_branch_296
@ 289

.byte 0x2 @ 0x289
.byte 0x0 @ 0x28a

Script_branch_28b: @ 28b
	Message 0x17
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 296

Script_branch_296: @ 296
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2a1

Script_branch_2a1: @ 2a1
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2ac

Script_branch_2ac: @ 2ac
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2b7

.byte 0x0 @ 0x2b7

@ end_0x2b8
