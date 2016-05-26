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
	FacePlayer
	If 0x4086, 0x3
	CompareLastResultJump 0x4, Script_branch_3d
	SetVarHero 0x1
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3d

Script_branch_3d: @ 3d
	If 0x40ca, 0x5
	CompareLastResultJump 0x4, Script_branch_9c
	If 0x40ca, 0x4
	CompareLastResultJump 0x1, Script_branch_aa
	If 0x40ca, 0x3
	CompareLastResultJump 0x1, Script_branch_ba
	If 0x40ca, 0x2
	CompareLastResultJump 0x1, Script_branch_ca
	If 0x40ca, 0x1
	CompareLastResultJump 0x1, Script_branch_dd
	SetVariableRival 0x0
	Message 0x2
	WaitButton
	Jump Script_branch_ed
@ 8c

.byte 0x2 @ 0x8c
.byte 0x0 @ 0x8d
.byte 0xce @ 0x8e
.byte 0x0 @ 0x8f
.byte 0x0 @ 0x90
.byte 0x2c @ 0x91
.byte 0x0 @ 0x92
.byte 0x8 @ 0x93
.byte 0x31 @ 0x94
.byte 0x0 @ 0x95
.byte 0x34 @ 0x96
.byte 0x0 @ 0x97
.byte 0x61 @ 0x98
.byte 0x0 @ 0x99
.byte 0x2 @ 0x9a
.byte 0x0 @ 0x9b

Script_branch_9c: @ 9c
	SetVariableRival 0x0
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ aa

Script_branch_aa: @ aa
	SetVariableRival 0x0
	Message 0x6
	WaitButton
	Jump Script_branch_ed
@ b8

.byte 0x2 @ 0xb8
.byte 0x0 @ 0xb9

Script_branch_ba: @ ba
	SetVariableRival 0x0
	Message 0x5
	WaitButton
	Jump Script_branch_ed
@ c8

.byte 0x2 @ 0xc8
.byte 0x0 @ 0xc9

Script_branch_ca: @ ca
	SetVariableRival 0x0
	SetVarStrRival 0x1
	Message 0x4
	WaitButton
	Jump Script_branch_ed
@ db

.byte 0x2 @ 0xdb
.byte 0x0 @ 0xdc

Script_branch_dd: @ dd
	SetVariableRival 0x0
	Message 0x3
	WaitButton
	Jump Script_branch_ed
@ eb

.byte 0x2 @ 0xeb
.byte 0x0 @ 0xec

Script_branch_ed: @ ed
	SetValue 0x40ca, 0x1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f9

Script_2: @ f9
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40cb, 0x2
	CompareLastResultJump 0x4, Script_branch_126
	If 0x40cb, 0x1
	CompareLastResultJump 0x1, Script_branch_131
	SetVariableRival 0x0
	Jump Script_branch_13c
@ 124

.byte 0x2 @ 0x124
.byte 0x0 @ 0x125

Script_branch_126: @ 126
	SetVariableRival 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 131

Script_branch_131: @ 131
	SetVariableRival 0x0
	Jump Script_branch_13c
@ 13a

.byte 0x2 @ 0x13a
.byte 0x0 @ 0x13b

Script_branch_13c: @ 13c
	WaitButton
	CloseMsgOnKeyPress
	SetValue 0x40cb, 0x1
	ReleaseAll
	End
@ 14a

Script_3: @ 14a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40e8, 0x2
	CompareLastResultJump 0x4, Script_branch_185
	If 0x40e8, 0x1
	CompareLastResultJump 0x1, Script_branch_17a
	SetVarHero 0x0
	Message 0xc
	Jump Script_branch_193
@ 178

.byte 0x2 @ 0x178
.byte 0x0 @ 0x179

Script_branch_17a: @ 17a
	Message 0xd
	Jump Script_branch_193
@ 183

.byte 0x2 @ 0x183
.byte 0x0 @ 0x184

Script_branch_185: @ 185
	SetVarHero 0x0
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 193

Script_branch_193: @ 193
	SetValue 0x40e8, 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1a1

Script_4: @ 1a1
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40e1, 0x3
	CompareLastResultJump 0x4, Script_branch_1f4
	If 0x40e1, 0x2
	CompareLastResultJump 0x1, Script_branch_1e9
	If 0x40e1, 0x1
	CompareLastResultJump 0x1, Script_branch_1de
	SetVarHero 0x0
	Message 0x2a
	Jump Script_branch_1ff
@ 1dc

.byte 0x2 @ 0x1dc
.byte 0x0 @ 0x1dd

Script_branch_1de: @ 1de
	Message 0x2b
	Jump Script_branch_1ff
@ 1e7

.byte 0x2 @ 0x1e7
.byte 0x0 @ 0x1e8

Script_branch_1e9: @ 1e9
	Message 0x2c
	Jump Script_branch_1ff
@ 1f2

.byte 0x2 @ 0x1f2
.byte 0x0 @ 0x1f3

Script_branch_1f4: @ 1f4
	Message 0x2d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1ff

Script_branch_1ff: @ 1ff
	SetValue 0x40e1, 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 20d

Script_5: @ 20d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40e2, 0x2
	CompareLastResultJump 0x4, Script_branch_248
	If 0x40e2, 0x1
	CompareLastResultJump 0x1, Script_branch_23d
	SetVarHero 0x0
	Message 0x13
	Jump Script_branch_256
@ 23b

.byte 0x2 @ 0x23b
.byte 0x0 @ 0x23c

Script_branch_23d: @ 23d
	Message 0x14
	Jump Script_branch_256
@ 246

.byte 0x2 @ 0x246
.byte 0x0 @ 0x247

Script_branch_248: @ 248
	SetVarHero 0x0
	Message 0x15
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 256

Script_branch_256: @ 256
	SetValue 0x40e2, 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 264

.byte 0x2 @ 0x264
.byte 0x0 @ 0x265

Script_6: @ 266
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40e4, 0x1
	CompareLastResultJump 0x4, Script_branch_289
	SetVarHero 0x0
	Message 0x26
	Jump Script_branch_294
@ 287

.byte 0x2 @ 0x287
.byte 0x0 @ 0x288

Script_branch_289: @ 289
	Message 0x27
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 294

Script_branch_294: @ 294
	SetValue 0x40e4, 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2a2

.byte 0x0 @ 0x2a2
.byte 0x0 @ 0x2a3

@ end_0x2a4
