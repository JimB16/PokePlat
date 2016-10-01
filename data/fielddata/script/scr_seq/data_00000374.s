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
	script Script_11
	script Script_12
	script Script_13
	script Script_14
	script Script_15
	script Script_16
	script Script_17
	script Script_18
	script Script_19
	script Script_20
	script Script_21
	script Script_22
	script Script_23
	script Script_24
	script Script_25
	script Script_26
	script Script_27
	script Script_28
	script Script_29
	script Script_30
	script Script_31
	script Script_32
	script Script_33
	script Script_34
	script Script_35
	script Script_36
	script Script_37
	script Script_38
	.hword 0xfd13
@ 9a

Script_38: @ 9a
	SetFlag 0x2cb
	CheckStatusPhraseBox 0x13, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_d5
	Cmd_329 0x4001, 0x4002, 0x4003, 0x4004
	ChangeOwPosition 0x1d, 0x4001, 0x4002
	ReleaseOw 0x1d, 0x4003
	ChangeOwMovement 0x1d, 0x4004
	ClearFlag 0x2c3
	End
@ d5

Script_branch_d5: @ d5
	SetFlag 0x2c3
	End
@ db

Script_2: @ db
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ ee

Script_3: @ ee
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 101

Script_4: @ 101
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 114

Script_5: @ 114
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 127

Script_6: @ 127
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 13a

Script_7: @ 13a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 14d

Script_8: @ 14d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 160

Script_9: @ 160
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 173

Script_10: @ 173
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 186

Script_11: @ 186
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 199

Script_12: @ 199
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1ac

Script_13: @ 1ac
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1bf

Script_14: @ 1bf
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d2

Script_15: @ 1d2
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1e5

Script_16: @ 1e5
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1f8

Script_17: @ 1f8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 20b

Script_18: @ 20b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 21e

Script_19: @ 21e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 231

Script_20: @ 231
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 244

Script_21: @ 244
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x13
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 257

Script_22: @ 257
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x14
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 26a

Script_23: @ 26a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x15
	FreezeMessageBox
	Cmd_2d8 0x1
	ReleaseAll
	End
@ 27e

Script_24: @ 27e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Cmd_2e2
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 2a6

Script_25: @ 2a6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x17
	FreezeMessageBox
	Cmd_2d8 0x0
	ReleaseAll
	End
@ 2ba

Script_26: @ 2ba
	CallMessageBox 0x18, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 2d1

Script_27: @ 2d1
	CallMessageBox 0x19, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 2e8

Script_28: @ 2e8
	CallMessageBox 0x1a, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 2ff

Script_29: @ 2ff
	CallMessageBox 0x1b, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 316

Script_30: @ 316
	CallMessageBox 0x1c, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 32d

Script_31: @ 32d
	PlayFanfare 0x5dc
	LockAll
	Message 0x1d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 33e

Script_32: @ 33e
	PlayFanfare 0x5dc
	LockAll
	Message 0x1e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 34f

Script_33: @ 34f
	PlayFanfare 0x5dc
	LockAll
	Message 0x1f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 360

Script_34: @ 360
	LockAll
	ApplyMovement 0xff, Movement_398
	WaitMovement
	PlayFanfare 0x603
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x233, 0x0, 0x19, 0x9, 0x2
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 396

.byte 0x0 @ 0x396
.byte 0x0 @ 0x397

Movement_398: @ 398
	WalkLeftVeryFast 0x5
	EndMovement 0x0
@ 3a0

Script_35: @ 3a0
	LockAll
	ApplyMovement 0xff, Movement_3d8
	WaitMovement
	PlayFanfare 0x603
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x234, 0x0, 0x15, 0x9, 0x2
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 3d6

.byte 0x0 @ 0x3d6
.byte 0x0 @ 0x3d7

Movement_3d8: @ 3d8
	WalkLeftVeryFast 0x6
	EndMovement 0x0
@ 3e0

Script_36: @ 3e0
	LockAll
	ApplyMovement 0xff, Movement_418
	WaitMovement
	PlayFanfare 0x603
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x235, 0x0, 0x1, 0x6, 0x3
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 416

.byte 0x0 @ 0x416
.byte 0x0 @ 0x417

Movement_418: @ 418
	WalkRightVeryFast 0x5
	EndMovement 0x0
@ 420

Script_37: @ 420
	LockAll
	ApplyMovement 0xff, Movement_458
	WaitMovement
	PlayFanfare 0x603
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x232, 0x0, 0x1, 0x7, 0x3
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 456

.byte 0x0 @ 0x456
.byte 0x0 @ 0x457

Movement_458: @ 458
	WalkRightVeryFast 0x6
	EndMovement 0x0
@ 460

Script_1: @ 460
	End
@ 462

.byte 0x0 @ 0x462
.byte 0x0 @ 0x463

@ end_0x464
