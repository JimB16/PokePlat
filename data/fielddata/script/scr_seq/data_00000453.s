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
	script Script_10
	.hword 0xfd13
@ 2a

Script_10: @ 2a
	CheckTime 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_71
	If 0x4000, 0x1
	CompareLastResultJump 0x1, Script_branch_71
	If 0x4000, 0x2
	CompareLastResultJump 0x1, Script_branch_71
	If 0x4000, 0x3
	CompareLastResultJump 0x1, Script_branch_93
	If 0x4000, 0x4
	CompareLastResultJump 0x1, Script_branch_93
	End
@ 71

Script_branch_71: @ 71
	ClearFlag 0x260
	ClearFlag 0x262
	ClearFlag 0x264
	ClearFlag 0x266
	SetFlag 0x261
	SetFlag 0x263
	SetFlag 0x265
	SetFlag 0x267
	End
@ 93

Script_branch_93: @ 93
	ClearFlag 0x261
	ClearFlag 0x263
	ClearFlag 0x265
	ClearFlag 0x267
	SetFlag 0x260
	SetFlag 0x262
	SetFlag 0x264
	SetFlag 0x266
	End
@ b5

Script_1: @ b5
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c8

Script_2: @ c8
	CallMessageBox 0x6, 0x1, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ df

Script_3: @ df
	CallMessageBox 0x7, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ f6

Script_4: @ f6
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x8, 0x800c
	CallStandard 0x7d0
	End
@ 10b

Script_5: @ 10b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 11e

Script_6: @ 11e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 131

Script_7: @ 131
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 144

Script_8: @ 144
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 157

Script_9: @ 157
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 16a

.byte 0x0 @ 0x16a
.byte 0x0 @ 0x16b

@ end_0x16c
