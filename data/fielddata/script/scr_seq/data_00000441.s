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
	CheckTime 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_6d
	If 0x4000, 0x1
	CompareLastResultJump EQUAL, Script_branch_7f
	If 0x4000, 0x2
	CompareLastResultJump EQUAL, Script_branch_7f
	If 0x4000, 0x3
	CompareLastResultJump EQUAL, Script_branch_7f
	If 0x4000, 0x4
	CompareLastResultJump EQUAL, Script_branch_7f
	End
@ 6d

Script_branch_6d: @ 6d
	ClearFlag 0x26d
	ClearFlag 0x26f
	SetFlag 0x26c
	SetFlag 0x26e
	End
@ 7f

Script_branch_7f: @ 7f
	ClearFlag 0x26c
	ClearFlag 0x26e
	SetFlag 0x26d
	SetFlag 0x26f
	End
@ 91

Script_1: @ 91
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a4

Script_2: @ a4
	PlayFanfare 0x5dc
	LockAll
	If 0x408a, 0x1
	CompareLastResultJump EQUAL, Script_branch_102
	CheckItem 0x6f, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1bc
	Message 0x2
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_e6
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e6

Script_branch_e6: @ e6
	SetVarHero 0x0
	Message 0x3
	WaitButton
	GiveItem 0x6f, 0x1, 0x800c
	SetVar 0x408a, 0x1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 102

Script_branch_102: @ 102
	RandomHallowes 0x800c
	If 0x800c, 0x20
	CompareLastResultJump 0x4, Script_branch_14d
	If 0x800c, 0x1d
	CompareLastResultJump 0x4, Script_branch_1b1
	If 0x800c, 0x16
	CompareLastResultJump 0x4, Script_branch_1a6
	If 0x800c, 0xf
	CompareLastResultJump 0x4, Script_branch_19b
	If 0x800c, 0x8
	CompareLastResultJump 0x4, Script_branch_190
	Jump Script_branch_185
Script_branch_14d: @ 14d
	WaitFanfare 0x5dc
	PlayCry 0x1ba, 0x0
	Message 0x9
	WaitCry
	CloseMsgOnKeyPress
	WildBattle 0x1ba, 0x19
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_17f
	SetVar 0x408a, 0x0
	Cmd_26f
	End
@ 17f

Script_branch_17f: @ 17f
	LostGoPc
	ReleaseAll
	End
@ 185

Script_branch_185: @ 185
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 190

Script_branch_190: @ 190
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 19b

Script_branch_19b: @ 19b
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1a6

Script_branch_1a6: @ 1a6
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1b1

Script_branch_1b1: @ 1b1
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1bc

Script_branch_1bc: @ 1bc
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1c7

Script_5: @ 1c7
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x8004, 0x1be
	Cmd_33c 0x0, 0x8004
	Cmd_346 0x0
	CheckFlag 0xa2
	CompareLastResultJump EQUAL, Script_branch_20b
	Message 0xa
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_254
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_249
	End
@ 20b

Script_branch_20b: @ 20b
	SetVarItem 0x0, 0x8004
	Message 0xc
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_233
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_23e
	End
@ 233

Script_branch_233: @ 233
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 23e

Script_branch_23e: @ 23e
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 249

Script_branch_249: @ 249
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 254

Script_branch_254: @ 254
	SetVarItem 0x0, 0x8004
	Message 0xb
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	SetFlag 0xa2
	Jump Script_branch_20b
Script_3: @ 270
	CallMessageBox 0x12, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 287

Script_4: @ 287
	CallMessageBox 0x13, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 29e

Script_9: @ 29e
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x14, 0x800c
	CallStandard 0x7d0
	End
@ 2b3

Script_6: @ 2b3
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2c6

Script_7: @ 2c6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2d9

.byte 0x0 @ 0x2d9
.byte 0x0 @ 0x2da
.byte 0x0 @ 0x2db

@ end_0x2dc
