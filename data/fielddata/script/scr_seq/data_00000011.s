.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	script Script_8
	script Script_9
	.hword 0xfd13
@ 26

Script_8: @ 26
	End
@ 28

Script_1: @ 28
	End
@ 2a

Script_2: @ 2a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3d

Script_3: @ 3d
	End
@ 3f

Script_4: @ 3f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40f2, 0x0
	CompareLastResultJump 0x5, Script_branch_257
	CheckFlag 0xab3
	CompareLastResultJump 0x1, Script_branch_a0
	CheckFlag 0xaa9
	CompareLastResultJump 0x1, Script_branch_84
	Message 0x1
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_b6
	Jump Script_branch_ab
@ 84

Script_branch_84: @ 84
	Message 0x12
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_b6
	Jump Script_branch_ab
@ 9e

.byte 0x2 @ 0x9e
.byte 0x0 @ 0x9f

Script_branch_a0: @ a0
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ab

Script_branch_ab: @ ab
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b6

Script_branch_b6: @ b6
	SetFlag 0xaa9
	Message 0x4
	CheckLotoNumber 0x8000
	SetvarIdNumber 0x0, 0x8000, 0x2, 0x5
	Message 0x5
	CompareLotoNumber 0x8001, 0x8002, 0x8003, 0x8000
	If 0x8002, 0x0
	CompareLastResultJump 0x1, Script_branch_f5
	If 0x8003, 0x0
	CompareLastResultJump 0x1, Script_branch_100
	Jump Script_branch_10e
@ f5

Script_branch_f5: @ f5
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 100

Script_branch_100: @ 100
	SetVarPokeNick 0x0, 0x8001
	Message 0x6
	Jump Script_branch_11c
@ 10e

Script_branch_10e: @ 10e
	SetvarIdPokeBoxes 0x0, 0x8001
	Message 0x7
	Jump Script_branch_11c
@ 11c

Script_branch_11c: @ 11c
	CopyVar 0x8008, 0x8002
	If 0x8008, 0x1
	CompareLastResultJump 0x1, Script_branch_165
	If 0x8008, 0x2
	CompareLastResultJump 0x1, Script_branch_170
	If 0x8008, 0x3
	CompareLastResultJump 0x1, Script_branch_179
	If 0x8008, 0x4
	CompareLastResultJump 0x1, Script_branch_182
	If 0x8008, 0x5
	CompareLastResultJump 0x1, Script_branch_18b
	End
@ 165

Script_branch_165: @ 165
	Message 0x9
	Jump Script_branch_194
@ 16e

.byte 0x2 @ 0x16e
.byte 0x0 @ 0x16f

Script_branch_170: @ 170
	Message 0xb
	Jump Script_branch_194
@ 179

Script_branch_179: @ 179
	Message 0xc
	Jump Script_branch_194
@ 182

Script_branch_182: @ 182
	Message 0xd
	Jump Script_branch_194
@ 18b

Script_branch_18b: @ 18b
	Message 0xe
	Jump Script_branch_194
@ 194

Script_branch_194: @ 194
	CopyVar 0x8008, 0x8002
	If 0x8008, 0x1
	CompareLastResultJump 0x1, Script_branch_1dd
	If 0x8008, 0x2
	CompareLastResultJump 0x1, Script_branch_1eb
	If 0x8008, 0x3
	CompareLastResultJump 0x1, Script_branch_1f7
	If 0x8008, 0x4
	CompareLastResultJump 0x1, Script_branch_203
	If 0x8008, 0x5
	CompareLastResultJump 0x1, Script_branch_20f
	End
@ 1dd

Script_branch_1dd: @ 1dd
	SetVar 0x8003, 0x2
	Jump Script_branch_21b
@ 1e9

.byte 0x2 @ 0x1e9
.byte 0x0 @ 0x1ea

Script_branch_1eb: @ 1eb
	SetVar 0x8003, 0x33
	Jump Script_branch_21b
@ 1f7

Script_branch_1f7: @ 1f7
	SetVar 0x8003, 0xd8
	Jump Script_branch_21b
@ 203

Script_branch_203: @ 203
	SetVar 0x8003, 0x1d
	Jump Script_branch_21b
@ 20f

Script_branch_20f: @ 20f
	SetVar 0x8003, 0x1
	Jump Script_branch_21b
@ 21b

Script_branch_21b: @ 21b
	CopyVar 0x8004, 0x8003
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_246
	CallStandard 0x7fc
	Jump Script_branch_269
@ 246

Script_branch_246: @ 246
	CopyVar 0x40f2, 0x8002
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 257

Script_branch_257: @ 257
	SetVarHero 0x0
	Message 0x10
	CopyVar 0x8002, 0x40f2
	Jump Script_branch_194
@ 269

Script_branch_269: @ 269
	SetVar 0x40f2, 0x0
	SetFlag 0xab3
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 27e

Script_5: @ 27e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x13
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 291

Script_6: @ 291
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x14
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2a4

Script_7: @ 2a4
	End
@ 2a6

Script_9: @ 2a6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x15
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2b9

.byte 0x0 @ 0x2b9
.byte 0x0 @ 0x2ba
.byte 0x0 @ 0x2bb

@ end_0x2bc
