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
	.hword 0xfd13
@ 66

Script_1: @ 66
	SetFlag 0x1bd
	If 0x40f8, 0x2
	CompareLastResultCall 0x1, Script_branch_f8
	If 0x40f8, 0x3
	CompareLastResultCall 0x1, Script_branch_100
	Call Function_168
	If 0x4000, 0x0
	CompareLastResultCall 0x1, Script_branch_1e7
	If 0x4000, 0x1
	CompareLastResultCall 0x1, Script_branch_116
	If 0x4078, 0x1
	CompareLastResultCall 0x1, Script_branch_132
	If 0x4078, 0x2
	CompareLastResultCall 0x1, Script_branch_132
	If 0x4078, 0x4
	CompareLastResultCall 0x1, Script_branch_11c
	If 0x4078, 0x5
	CompareLastResultCall 0x1, Script_branch_158
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_148
	If 0x4000, 0x1
	CompareLastResultJump 0x1, Script_branch_150
	End
@ f8

Script_branch_f8: @ f8
	SetVar 0x40f8, 0x0
	Return
@ 100

Script_branch_100: @ 100
	ChangeOwPosition 0x10, 0x37, 0x2cc
	ReleaseOw 0x10, 0x3
	ChangeOwMovement 0x10, 0x11
	Return
@ 116

Script_branch_116: @ 116
	ClearFlag 0x240
	Return
@ 11c

Script_branch_11c: @ 11c
	ChangeOwPosition 0xb, 0x25, 0x2d1
	ReleaseOw 0xb, 0x1
	ChangeOwMovement 0xb, 0xf
	Return
@ 132

Script_branch_132: @ 132
	ChangeOwPosition 0xb, 0x27, 0x2dd
	ReleaseOw 0xb, 0x0
	ChangeOwMovement 0xb, 0xe
	Return
@ 148

Script_branch_148: @ 148
	SetVar 0x4020, 0x61
	End
@ 150

Script_branch_150: @ 150
	SetVar 0x4020, 0x0
	End
@ 158

Script_branch_158: @ 158
	SetFlag 0x1b3
	SetFlag 0x1b5
	SetVar 0x4078, 0x6
	Return
@ 168

Function_168: @ 168
	CheckFlag 0x158
	CompareLastResultJump 0x1, Script_branch_1ca
	CheckFlag 0x964
	CompareLastResultJump 0x0, Script_branch_1ca
	CheckNatPokedexStatus 0x2, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_1ca
	CheckItem 0x1c6, 0x1, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_1ca
	UnkFunct2 0x0, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_1ca
	CheckFlag 0x12c
	CompareLastResultJump 0x0, Script_branch_1ca
	SetVar 0x4000, 0x1
	Return
@ 1ca

Script_branch_1ca: @ 1ca
	SetVar 0x4000, 0x0
	Return
@ 1d2

Script_24: @ 1d2
	Call Function_168
	If 0x4000, 0x0
	CompareLastResultCall 0x1, Script_branch_1e7
	End
@ 1e7

Script_branch_1e7: @ 1e7
	SetTileLocked 0x0, 0x3a, 0x2c9
	SetTilePassable 0x5, 0x3b, 0x2c8
	Return
@ 1f9

Script_2: @ 1f9
	LockAll
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x2d3
	CompareLastResultJump 0x1, Script_branch_244
	If 0x8005, 0x2d4
	CompareLastResultJump 0x1, Script_branch_252
	If 0x8005, 0x2d5
	CompareLastResultJump 0x1, Script_branch_260
	If 0x8005, 0x2d6
	CompareLastResultJump 0x1, Script_branch_26e
	If 0x8005, 0x2d7
	CompareLastResultJump 0x1, Script_branch_27c
	End
@ 244

Script_branch_244: @ 244
	ChangeOwPosition 0xb, 0x26, 0x2d3
	Jump Script_branch_28a
@ 252

Script_branch_252: @ 252
	ChangeOwPosition 0xb, 0x26, 0x2d4
	Jump Script_branch_28a
@ 260

Script_branch_260: @ 260
	ChangeOwPosition 0xb, 0x26, 0x2d5
	Jump Script_branch_28a
@ 26e

Script_branch_26e: @ 26e
	ChangeOwPosition 0xb, 0x26, 0x2d6
	Jump Script_branch_28a
@ 27c

Script_branch_27c: @ 27c
	ChangeOwPosition 0xb, 0x26, 0x2d7
	Jump Script_branch_28a
@ 28a

Script_branch_28a: @ 28a
	ChangeOwMovement 0xb, 0x11
	ClearFlag 0x1b2
	AddPeople 0xb
	ApplyMovement 0xb, Movement_340
	WaitMovement
	CallStandard 0x7fa
	ApplyMovement 0xb, Movement_354
	WaitMovement
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x0
	CloseMsgOnKeyPress
	StoreStarter 0x800c
	If 0x800c, 0x183
	CompareLastResultJump 0x1, Script_branch_2eb
	If 0x800c, 0x186
	CompareLastResultJump 0x1, Script_branch_2f7
	Jump Script_branch_2df
@ 2df

Script_branch_2df: @ 2df
	TrainerBattle 0x1dc, 0x0
	Jump Script_branch_303
@ 2eb

Script_branch_2eb: @ 2eb
	TrainerBattle 0x1dd, 0x0
	Jump Script_branch_303
@ 2f7

Script_branch_2f7: @ 2f7
	TrainerBattle 0x1de, 0x0
	Jump Script_branch_303
@ 303

Script_branch_303: @ 303
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_334
	SetVariableRival 0x0
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0xb, Movement_35c
	WaitMovement
	RemovePeople 0xb
	SetVar 0x4078, 0x1
	ReleaseAll
	End
@ 334

Script_branch_334: @ 334
	SetFlag 0x1b2
	LostGoPc
	ReleaseAll
	End
@ 33e

.byte 0x0 @ 0x33e
.byte 0x0 @ 0x33f

Movement_340: @ 340
	WalkRightVeryFast 0x4
	Move_3f 0x1
	Exclamation 0x1
	Move_3f 0x1
	EndMovement 0x0
@ 354

Movement_354: @ 354
	WalkRightVeryFast 0x4
	EndMovement 0x0
@ 35c

Movement_35c: @ 35c
	WalkLeftVeryFast 0x9
	EndMovement 0x0
@ 364

Script_3: @ 364
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 377

Script_4: @ 377
	LockAll
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0xb, Movement_3ac
	ApplyMovement 0xff, Movement_3bc
	WaitMovement
	RemovePeople 0xb
	SetVar 0x4078, 0x3
	SetVar 0x40b2, 0x1
	ReleaseAll
	End
@ 3aa

.byte 0x0 @ 0x3aa
.byte 0x0 @ 0x3ab

Movement_3ac: @ 3ac
	WalkDownVeryFast  0x1
	WalkLeftVeryFast 0x5
	WalkUpVeryFast  0xa
	EndMovement 0x0
@ 3bc

Movement_3bc: @ 3bc
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 3c8

Script_5: @ 3c8
	LockAll
	ApplyMovement 0xd, Movement_498
	WaitMovement
	Message 0x5
	CloseMsgOnKeyPress
	ClearFlag 0x1b4
	AddPeople 0xe
	Lock 0xe
	ApplyMovement 0xe, Movement_4ac
	WaitMovement
	Message 0x6
	CloseMsgOnKeyPress
	ApplyMovement 0xe, Movement_4b8
	WaitMovement
	RemovePeople 0xe
	ApplyMovement 0xb, Movement_4c0
	WaitMovement
	SetVariableRival 0x0
	Message 0x7
	CloseMsgOnKeyPress
	ApplyMovement 0xb, Movement_4c8
	WaitMovement
	RemovePeople 0xb
	ApplyMovement 0xd, Movement_4a0
	WaitMovement
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x8
	CloseMsgOnKeyPress
	ApplyMovement 0xc, Movement_490
	WaitMovement
	Return2 0xf, 0x800c
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_45e
	Jump Script_branch_46a
@ 45e

Script_branch_45e: @ 45e
	SetVarHero 0x0
	Message 0x9
	Jump Script_branch_473
@ 46a

Script_branch_46a: @ 46a
	Message 0xa
	Jump Script_branch_473
@ 473

Script_branch_473: @ 473
	WaitButton
	CloseMsgOnKeyPress
	SetVar 0x4078, 0x5
	ClearFlag 0x194
	ClearFlag 0x175
	ClearFlag 0x293
	ReleaseAll
	End
@ 48d

.byte 0x0 @ 0x48d
.byte 0x0 @ 0x48e
.byte 0x0 @ 0x48f

Movement_490: @ 490
	MoveLeftFast 0x1
	EndMovement 0x0
@ 498

Movement_498: @ 498
	MoveDownFast 0x1
	EndMovement 0x0
@ 4a0

Movement_4a0: @ 4a0
	Move_3f 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ 4ac

Movement_4ac: @ 4ac
	WalkLeftVeryFast 0x5
	WalkUpVeryFast  0x2
	EndMovement 0x0
@ 4b8

Movement_4b8: @ 4b8
	WalkDownVeryFast  0x6
	EndMovement 0x0
@ 4c0

Movement_4c0: @ 4c0
	MoveUpFast 0x1
	EndMovement 0x0
@ 4c8

Movement_4c8: @ 4c8
	WalkDownVeryFast  0x3
	WalkRightVeryFast 0x9
	EndMovement 0x0
@ 4d4

Script_6: @ 4d4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4e7

Script_7: @ 4e7
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_506
	Jump Script_branch_50f
@ 506

Script_branch_506: @ 506
	Message 0xb
	Jump Script_branch_518
@ 50f

Script_branch_50f: @ 50f
	Message 0xc
	Jump Script_branch_518
@ 518

Script_branch_518: @ 518
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 520

Script_8: @ 520
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xa8
	CompareLastResultJump 0x1, Script_branch_53c
	Message 0xe
	Jump Script_branch_545
@ 53c

Script_branch_53c: @ 53c
	Message 0xf
	Jump Script_branch_545
@ 545

Script_branch_545: @ 545
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 54d

Script_9: @ 54d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xa8
	CompareLastResultJump 0x1, Script_branch_586
	CheckBadge 0x5, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_591
	Jump Script_branch_57b
@ 579

.byte 0x2 @ 0x579
.byte 0x0 @ 0x57a

Script_branch_57b: @ 57b
	Message 0x10
	Jump Script_branch_545
@ 584

.byte 0x2 @ 0x584
.byte 0x0 @ 0x585

Script_branch_586: @ 586
	Message 0x11
	Jump Script_branch_545
@ 58f

.byte 0x2 @ 0x58f
.byte 0x0 @ 0x590

Script_branch_591: @ 591
	If 0x4078, 0x5
	CompareLastResultJump 0x4, Script_branch_57b
	Message 0x12
	Jump Script_branch_545
@ 5a7

.byte 0x2 @ 0x5a7
.byte 0x0 @ 0x5a8

Script_10: @ 5a9
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xa8
	CompareLastResultJump 0x1, Script_branch_5c5
	Message 0x13
	Jump Script_branch_545
@ 5c5

Script_branch_5c5: @ 5c5
	Message 0x14
	Jump Script_branch_545
@ 5ce

Script_11: @ 5ce
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xa8
	CompareLastResultJump 0x1, Script_branch_5ea
	Message 0x15
	Jump Script_branch_545
@ 5ea

Script_branch_5ea: @ 5ea
	Message 0x16
	Jump Script_branch_545
@ 5f3

Script_12: @ 5f3
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xa8
	CompareLastResultJump 0x1, Script_branch_615
	PlayCry 0x36, 0x0
	Message 0x17
	Jump Script_branch_545
@ 615

Script_branch_615: @ 615
	PlayCry 0x36, 0x0
	Message 0x18
	Jump Script_branch_545
@ 624

Script_13: @ 624
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xa8
	CompareLastResultJump 0x1, Script_branch_640
	Message 0x19
	Jump Script_branch_545
@ 640

Script_branch_640: @ 640
	Message 0x1a
	Jump Script_branch_545
@ 649

Script_14: @ 649
	CallMessageBox 0x24, 0x0, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 660

Script_15: @ 660
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x25, 0x800c
	CallStandard 0x7d0
	End
@ 675

Script_16: @ 675
	CallMessageBox 0x26, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 68c

Script_17: @ 68c
	CallMessageBox 0x27, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 6a3

Script_18: @ 6a3
	CallMessageBox 0x28, 0x2, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 6ba

Script_19: @ 6ba
	Call Function_168
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_6e2
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x2a, 0x800c
	CallStandard 0x7d0
	End
@ 6e2

Script_branch_6e2: @ 6e2
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x29, 0x800c
	CallStandard 0x7d0
	End
@ 6f7

Script_21: @ 6f7
	PlayFanfare 0x5dc
	LockAll
	Message 0x2b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 708

Script_20: @ 708
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFacePosition 0x8004
	FacePlayer
	If 0x4106, 0x2
	CompareLastResultJump 0x1, Script_branch_900
	Message 0x1b
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0xd5, 0x0
	CheckFlag 0x133
	CompareLastResultCall 0x1, Script_branch_790
	CheckFlag 0x13c
	CompareLastResultCall 0x1, Script_branch_78a
	Cmd_42 0xda, 0x4
	CloseMulti
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_796
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_7d1
	If 0x800c, 0x2
	CompareLastResultJump 0x1, Script_branch_80c
	If 0x800c, 0x3
	CompareLastResultJump 0x1, Script_branch_847
	Jump Script_branch_847
@ 788

.byte 0x2 @ 0x788
.byte 0x0 @ 0x789

Script_branch_78a: @ 78a
	Cmd_42 0xd7, 0x2
	Return
@ 790

Script_branch_790: @ 790
	Cmd_42 0xd6, 0x1
	Return
@ 796

Script_branch_796: @ 796
	Call Function_852
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_871
	If 0x8004, 0x3
	CompareLastResultCall 0x1, Script_branch_88b
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_8a5
	ShipAnm 0x3, 0x3, 0x120, 0x64, 0x1f6
	ReleaseAll
	End
@ 7d1

Script_branch_7d1: @ 7d1
	Call Function_852
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_871
	If 0x8004, 0x3
	CompareLastResultCall 0x1, Script_branch_88b
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_8a5
	ShipAnm 0x3, 0x2, 0x104, 0x27, 0x115
	ReleaseAll
	End
@ 80c

Script_branch_80c: @ 80c
	Call Function_852
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_871
	If 0x8004, 0x3
	CompareLastResultCall 0x1, Script_branch_88b
	If 0x8004, 0x0
	CompareLastResultCall 0x1, Script_branch_8a5
	ShipAnm 0x3, 0x3, 0x140, 0x98, 0x115
	ReleaseAll
	End
@ 847

Script_branch_847: @ 847
	Message 0x1d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 852

Function_852: @ 852
	Message 0x1c
	CloseMsgOnKeyPress
	ApplyMovement 0x10, Movement_8c0
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0x10, Movement_8cc
	WaitMovement
	Return
@ 871

Script_branch_871: @ 871
	ApplyMovement 0xff, Movement_8d4
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0xff, Movement_8cc
	WaitMovement
	Return
@ 88b

Script_branch_88b: @ 88b
	ApplyMovement 0xff, Movement_8e4
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0xff, Movement_8cc
	WaitMovement
	Return
@ 8a5

Script_branch_8a5: @ 8a5
	ApplyMovement 0xff, Movement_8f0
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0xff, Movement_8cc
	WaitMovement
	Return
@ 8bf

.byte 0x0 @ 0x8bf

Movement_8c0: @ 8c0
	SeeRight 0x1
	Move_40 0x1
	EndMovement 0x0
@ 8cc

Movement_8cc: @ 8cc
	WaitDisappear 0x1
	EndMovement 0x0
@ 8d4

Movement_8d4: @ 8d4
	WalkDownFast 0x1
	SeeRight 0x1
	Move_40 0x1
	EndMovement 0x0
@ 8e4

Movement_8e4: @ 8e4
	WalkRightFast 0x1
	Move_40 0x1
	EndMovement 0x0
@ 8f0

Movement_8f0: @ 8f0
	WalkUpFast 0x1
	SeeRight 0x1
	Move_40 0x1
	EndMovement 0x0
@ 900

Script_22: @ 900
Script_branch_900: @ 900
	CheckItem 0x1c5, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_94e
	Message 0x1f
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_938
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_943
	End
@ 938

Script_branch_938: @ 938
	Message 0x20
	CloseMsgOnKeyPress
	Jump Script_branch_7d1
@ 943

Script_branch_943: @ 943
	Message 0x21
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 94e

Script_branch_94e: @ 94e
	Message 0x22
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 959

Script_23: @ 959
	LockAll
	ApplyMovement 0x10, Movement_99c
	WaitMovement
	Message 0x23
	CloseMsgOnKeyPress
	ApplyMovement 0x10, Movement_9ac
	WaitMovement
	RemovePeople 0x10
	ChangeOwPosition 0x10, 0x2d, 0x2ee
	ReleaseOw 0x10, 0x2
	ChangeOwMovement 0x10, 0x10
	AddPeople 0x10
	SetVar 0x40f8, 0x4
	ReleaseAll
	End
@ 99a

.byte 0x0 @ 0x99a
.byte 0x0 @ 0x99b

Movement_99c: @ 99c
	Exclamation 0x1
	WalkRightFast 0x3
	WalkUpFast 0x1
	EndMovement 0x0
@ 9ac

Movement_9ac: @ 9ac
	WalkDownFast 0x1
	WalkLeftFast 0x3
	WalkDownFast 0x8
	EndMovement 0x0
@ 9bc

Script_25: @ 9bc
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckItem 0x1a7, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_9fa
	CheckPlaceStored 0x800c, 0x46
	If 0x800c, 0x6
	CompareLastResultJump 0x5, Script_branch_9fa
	SetVariableRival 0x0
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9fa

Script_branch_9fa: @ 9fa
	SetVariableRival 0x0
	Message 0x4
	CloseMsgOnKeyPress
	ApplyMovement 0x12, Movement_a38
	WaitMovement
	PrepareDoorAnimation 0x1, 0x16, 0x5, 0xe, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	ApplyMovement 0x12, Movement_a40
	WaitMovement
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	RemovePeople 0x12
	ReleaseAll
	End
@ a38

Movement_a38: @ a38
	MoveUpFast 0x1
	EndMovement 0x0
@ a40

Movement_a40: @ a40
	WalkUpFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ a4c

@ end_0xa4c
