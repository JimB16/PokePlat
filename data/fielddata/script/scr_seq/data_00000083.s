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
	.hword 0xfd13
@ 2e

Script_8: @ 2e
	End
@ 30

Script_7: @ 30
	SetFlag 0x2bb
	SetFlag 0x2bc
	SetFlag 0x2bd
	SetFlag 0x2be
	SetFlag 0x2bf
	UnkFunct2 0x3, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_a5
	Cmd_302 0x4000, 0x4001, 0x4002, 0x4003, 0x4004
	If 0x4000, 0x0
	CompareLastResultCall 0x1, Script_branch_cf
	If 0x4001, 0x0
	CompareLastResultCall 0x1, Script_branch_d5
	If 0x4002, 0x0
	CompareLastResultCall 0x1, Script_branch_db
	If 0x4003, 0x0
	CompareLastResultCall 0x1, Script_branch_e1
	If 0x4004, 0x0
	CompareLastResultCall 0x1, Script_branch_e7
	End
@ a5

Script_branch_a5: @ a5
	SetTileLocked 0x0, 0x4, 0x1
	SetTileLocked 0x1, 0x4, 0x1
	SetTileLocked 0x2, 0x4, 0x1
	SetTileLocked 0x3, 0x4, 0x1
	SetTileLocked 0x4, 0x4, 0x1
	End
@ cf

Script_branch_cf: @ cf
	ClearFlag 0x2bb
	Return
@ d5

Script_branch_d5: @ d5
	ClearFlag 0x2bc
	Return
@ db

Script_branch_db: @ db
	ClearFlag 0x2bd
	Return
@ e1

Script_branch_e1: @ e1
	ClearFlag 0x2be
	Return
@ e7

Script_branch_e7: @ e7
	ClearFlag 0x2bf
	Return
@ ed

Script_1: @ ed
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8004, 0x1
	Jump Script_branch_151
@ ff

.byte 0x2 @ 0xff
.byte 0x0 @ 0x100

Script_2: @ 101
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8004, 0x3
	Jump Script_branch_151
@ 113

.byte 0x2 @ 0x113
.byte 0x0 @ 0x114

Script_3: @ 115
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8004, 0x2
	Jump Script_branch_151
@ 127

.byte 0x2 @ 0x127
.byte 0x0 @ 0x128

Script_4: @ 129
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8004, 0x4
	Jump Script_branch_151
@ 13b

.byte 0x2 @ 0x13b
.byte 0x0 @ 0x13c

Script_5: @ 13d
	PlayFanfare 0x5dc
	LockAll
	SetVar 0x8004, 0x5
	Jump Script_branch_151
@ 14f

.byte 0x2 @ 0x14f
.byte 0x0 @ 0x150

Script_branch_151: @ 151
	CheckPokeParty 0x800c, 0x1df
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_6de
	CheckItem 0x1d3, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_6de
	UnkFunct2 0x3, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_6de
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_6c5
	If 0x8004, 0x3
	CompareLastResultCall 0x1, Script_branch_6ca
	If 0x8004, 0x2
	CompareLastResultCall 0x1, Script_branch_6cf
	If 0x8004, 0x4
	CompareLastResultCall 0x1, Script_branch_6d4
	If 0x8004, 0x5
	CompareLastResultCall 0x1, Script_branch_6d9
	Cmd_303 0x8003, 0x800c
	If 0x8003, 0x1
	CompareLastResultJump 0x4, Script_branch_254
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_740
	Jump Script_branch_1f8
@ 1f6

.byte 0x2 @ 0x1f6
.byte 0x0 @ 0x1f7

Script_branch_1f8: @ 1f8
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_69d
	If 0x8004, 0x3
	CompareLastResultCall 0x1, Script_branch_6a5
	If 0x8004, 0x2
	CompareLastResultCall 0x1, Script_branch_6ad
	If 0x8004, 0x4
	CompareLastResultCall 0x1, Script_branch_6b5
	If 0x8004, 0x5
	CompareLastResultCall 0x1, Script_branch_6bd
	CheckPokeParty2 0x800c, 0x1df
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_3f5
	Jump Script_branch_403
@ 252

.byte 0x2 @ 0x252
.byte 0x0 @ 0x253

Script_branch_254: @ 254
	Multi2 0x1f, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xf, 0x0
	Cmd_42 0x10, 0x1
	Cmd_42 0xe, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump 0x1, Script_branch_1f8
	If 0x8008, 0x2
	CompareLastResultJump 0x1, Script_branch_295
	Jump Script_branch_740
@ 293

.byte 0x2 @ 0x293
.byte 0x0 @ 0x294

Script_branch_295: @ 295
	Cmd_303 0x8003, 0x800c
	CopyVar 0x8000, 0x800c
	If 0x8003, 0x2
	CompareLastResultJump 0x4, Script_branch_37b
	Jump Script_branch_2b6
@ 2b4

.byte 0x2 @ 0x2b4
.byte 0x0 @ 0x2b5

Script_branch_2b6: @ 2b6
	SetVarPokeNick 0x0, 0x8000
	Message 0xb
	Cmd_304 0x8000, 0x0, 0x0, 0x0
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	Cmd_305 0x8000, 0x8004
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_349
	If 0x8004, 0x4
	CompareLastResultCall 0x1, Script_branch_367
	If 0x8004, 0x3
	CompareLastResultCall 0x1, Script_branch_353
	If 0x8004, 0x2
	CompareLastResultCall 0x1, Script_branch_35d
	If 0x8004, 0x5
	CompareLastResultCall 0x1, Script_branch_371
	Jump Script_branch_325
@ 323

.byte 0x2 @ 0x323
.byte 0x0 @ 0x324

Script_branch_325: @ 325
	CheckSpritePosition 0x8006, 0x8007
	CheckFacePosition 0x800c
	Warp 0x23b, 0x0, 0x8006, 0x8007, 0x800c
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 349

Script_branch_349: @ 349
	ClearFlag 0x2bb
	AddPeople 0x0
	Return
@ 353

Script_branch_353: @ 353
	ClearFlag 0x2bd
	AddPeople 0x2
	Return
@ 35d

Script_branch_35d: @ 35d
	ClearFlag 0x2bc
	AddPeople 0x3
	Return
@ 367

Script_branch_367: @ 367
	ClearFlag 0x2be
	AddPeople 0x1
	Return
@ 371

Script_branch_371: @ 371
	ClearFlag 0x2bf
	AddPeople 0x4
	Return
@ 37b

Script_branch_37b: @ 37b
	Message 0x7
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	ChsPokemenu
	StorePokeMenu2 0x8000
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8000, 0xff
	CompareLastResultJump 0x1, Script_branch_3f3
	CheckPokeEgg 0x8000, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_45d
	If 0x800c, 0x1df
	CompareLastResultJump 0x5, Script_branch_468
	Cmd_305 0x8000, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_3e8
	Jump Script_branch_2b6
@ 3e6

.byte 0x2 @ 0x3e6
.byte 0x0 @ 0x3e7

Script_branch_3e8: @ 3e8
	Message 0x11
	Jump Script_branch_7a2
@ 3f1

.byte 0x2 @ 0x3f1
.byte 0x0 @ 0x3f2

Script_branch_3f3: @ 3f3
	End
@ 3f5

Script_branch_3f5: @ 3f5
	Cmd_2dd 0x8000, 0x1df
	Jump Script_branch_473
@ 401

.byte 0x2 @ 0x401
.byte 0x0 @ 0x402

Script_branch_403: @ 403
	Message 0x7
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	ChsPokemenu
	StorePokeMenu2 0x8000
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8000, 0xff
	CompareLastResultJump 0x1, Script_branch_740
	CheckPokeEgg 0x8000, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_45d
	If 0x800c, 0x1df
	CompareLastResultJump 0x5, Script_branch_468
	Jump Script_branch_473
@ 45b

.byte 0x2 @ 0x45b
.byte 0x0 @ 0x45c

Script_branch_45d: @ 45d
	Message 0x8
	Jump Script_branch_7a2
@ 466

.byte 0x2 @ 0x466
.byte 0x0 @ 0x467

Script_branch_468: @ 468
	Message 0x9
	Jump Script_branch_7a2
@ 471

.byte 0x2 @ 0x471
.byte 0x0 @ 0x472

Script_branch_473: @ 473
	CheckMove 0x800c, 0x13b, 0x8000
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_4fd
	CheckMove 0x800c, 0x3b, 0x8000
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_4fd
	CheckMove 0x800c, 0x38, 0x8000
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_4fd
	CheckMove 0x800c, 0x193, 0x8000
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_4fd
	CheckMove 0x800c, 0x1b5, 0x8000
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_4fd
	CheckMoveNumDelete 0x800c, 0x8000
	CopyVar 0x8002, 0x800c
	If 0x800c, 0x4
	CompareLastResultJump 0x1, Script_branch_51b
	Jump Script_branch_50b
@ 4fb

.byte 0x2 @ 0x4fb
.byte 0x0 @ 0x4fc

Script_branch_4fd: @ 4fd
	SetVar 0x8002, 0x0
	Jump Script_branch_50b
@ 509

.byte 0x2 @ 0x509
.byte 0x0 @ 0x50a

Script_branch_50b: @ 50b
	SetVarPokeNick 0x0, 0x8000
	Message 0xa
	Jump Script_branch_613
@ 519

.byte 0x2 @ 0x519
.byte 0x0 @ 0x51a

Script_branch_51b: @ 51b
	SetVarPokeNick 0x0, 0x8000
	SetVarAtk 0x1, 0x8001
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_5fe
	Jump Script_branch_541
@ 53f

.byte 0x2 @ 0x53f
.byte 0x0 @ 0x540

Script_branch_541: @ 541
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	Cmd_2e7 0x8000, 0x8001
	Cmd_2e8 0x8002
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8002, 0x4
	CompareLastResultJump 0x1, Script_branch_5dd
	CheckDeleteMove 0x800c, 0x8000, 0x8002
	SetVarAtk 0x1, 0x800c
	Message 0x3
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_5fe
	SetVarPokeNick 0x0, 0x8000
	CheckDeleteMove 0x800c, 0x8000, 0x8002
	SetVarAtk 0x1, 0x800c
	Message 0x4
	PlayFanfare 0x5e6
	WaitFanfare 0x5e6
	Return2 0x1e, 0x800c
	Message 0x5
	Return2 0x20, 0x800c
	Soundfr 0x483
	SetVarAtk 0x1, 0x8001
	Message 0x6
	Cmd_4f
	Return2 0x10, 0x800c
	Jump Script_branch_613
@ 5db

.byte 0x2 @ 0x5db
.byte 0x0 @ 0x5dc

Script_branch_5dd: @ 5dd
	SetVarAtk 0x1, 0x8001
	Message 0x1
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_541
	Jump Script_branch_5fe
@ 5fc

.byte 0x2 @ 0x5fc
.byte 0x0 @ 0x5fd

Script_branch_5fe: @ 5fe
	SetVarPokeNick 0x0, 0x8000
	SetVarAtk 0x1, 0x8001
	Message 0x2
	Jump Script_branch_7a2
@ 611

.byte 0x2 @ 0x611
.byte 0x0 @ 0x612

Script_branch_613: @ 613
	Cmd_304 0x8000, 0x8002, 0x8001, 0x8004
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CloseMsgOnKeyPress
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_67f
	If 0x8004, 0x4
	CompareLastResultCall 0x1, Script_branch_691
	If 0x8004, 0x3
	CompareLastResultCall 0x1, Script_branch_685
	If 0x8004, 0x2
	CompareLastResultCall 0x1, Script_branch_68b
	If 0x8004, 0x5
	CompareLastResultCall 0x1, Script_branch_697
	CheckFlag 0x77
	CompareLastResultJump 0x0, Script_branch_80c
	Jump Script_branch_325
@ 67d

.byte 0x2 @ 0x67d
.byte 0x0 @ 0x67e

Script_branch_67f: @ 67f
	RemovePeople 0x0
	Return
@ 685

Script_branch_685: @ 685
	RemovePeople 0x2
	Return
@ 68b

Script_branch_68b: @ 68b
	RemovePeople 0x3
	Return
@ 691

Script_branch_691: @ 691
	RemovePeople 0x1
	Return
@ 697

Script_branch_697: @ 697
	RemovePeople 0x4
	Return
@ 69d

Script_branch_69d: @ 69d
	SetVar 0x8001, 0x13b
	Return
@ 6a5

Script_branch_6a5: @ 6a5
	SetVar 0x8001, 0x3b
	Return
@ 6ad

Script_branch_6ad: @ 6ad
	SetVar 0x8001, 0x38
	Return
@ 6b5

Script_branch_6b5: @ 6b5
	SetVar 0x8001, 0x193
	Return
@ 6bd

Script_branch_6bd: @ 6bd
	SetVar 0x8001, 0x1b5
	Return
@ 6c5

Script_branch_6c5: @ 6c5
	Message 0x14
	Return
@ 6ca

Script_branch_6ca: @ 6ca
	Message 0x17
	Return
@ 6cf

Script_branch_6cf: @ 6cf
	Message 0x1a
	Return
@ 6d4

Script_branch_6d4: @ 6d4
	Message 0x1d
	Return
@ 6d9

Script_branch_6d9: @ 6d9
	Message 0x20
	Return
@ 6de

Script_branch_6de: @ 6de
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_727
	If 0x8004, 0x3
	CompareLastResultCall 0x1, Script_branch_72c
	If 0x8004, 0x2
	CompareLastResultCall 0x1, Script_branch_731
	If 0x8004, 0x4
	CompareLastResultCall 0x1, Script_branch_736
	If 0x8004, 0x5
	CompareLastResultCall 0x1, Script_branch_73b
	Jump Script_branch_7a2
@ 725

.byte 0x2 @ 0x725
.byte 0x0 @ 0x726

Script_branch_727: @ 727
	Message 0x13
	Return
@ 72c

Script_branch_72c: @ 72c
	Message 0x16
	Return
@ 731

Script_branch_731: @ 731
	Message 0x19
	Return
@ 736

Script_branch_736: @ 736
	Message 0x1c
	Return
@ 73b

Script_branch_73b: @ 73b
	Message 0x1f
	Return
@ 740

Script_branch_740: @ 740
	If 0x8004, 0x1
	CompareLastResultCall 0x1, Script_branch_789
	If 0x8004, 0x3
	CompareLastResultCall 0x1, Script_branch_78e
	If 0x8004, 0x2
	CompareLastResultCall 0x1, Script_branch_793
	If 0x8004, 0x4
	CompareLastResultCall 0x1, Script_branch_798
	If 0x8004, 0x5
	CompareLastResultCall 0x1, Script_branch_79d
	Jump Script_branch_7a2
@ 787

.byte 0x2 @ 0x787
.byte 0x0 @ 0x788

Script_branch_789: @ 789
	Message 0x15
	Return
@ 78e

Script_branch_78e: @ 78e
	Message 0x18
	Return
@ 793

Script_branch_793: @ 793
	Message 0x1b
	Return
@ 798

Script_branch_798: @ 798
	Message 0x1e
	Return
@ 79d

Script_branch_79d: @ 79d
	Message 0x21
	Return
@ 7a2

Script_branch_7a2: @ 7a2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7aa

Script_6: @ 7aa
	PlayFanfare 0x5dc
	LockAll
	Message 0x22
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7bb

Script_9: @ 7bb
	PlayFanfare 0x5dc
	LockAll
	Cmd_303 0x8003, 0x800c
	If 0x8003, 0x0
	CompareLastResultJump 0x1, Script_branch_801
	Message 0xd
	Multi2 0x1f, 0xf, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xe, 0x0
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump 0x1, Script_branch_295
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 801

Script_branch_801: @ 801
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 80c

Script_branch_80c: @ 80c
	SetFlag 0x77
	SetVar 0x411b, 0x1
	Jump Script_branch_325
@ 81c

.byte 0x2 @ 0x81c
.byte 0x0 @ 0x81d

Script_11: @ 81e
	LockAll
	ClearFlag 0x2c0
	PlayFanfare 0x603
	AddPeople 0x6
	WaitFanfare 0x603
	ApplyMovement 0xff, Movement_8ac
	ApplyMovement 0x6, Movement_8d4
	WaitMovement
	SetVarHero 0x0
	Message 0x23
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8006, 0x8007
	If 0x8006, 0xa
	CompareLastResultCall 0x4, Script_branch_8a8
	If 0x8006, 0x4
	CompareLastResultCall 0x3, Script_branch_8aa
	ApplyMovement 0x6, Movement_8dc
	WaitMovement
	Message 0x24
	CloseMsgOnKeyPress
	ApplyMovement 0x6, Movement_8f4
	WaitMovement
	Message 0x25
	CloseMsgOnKeyPress
	ApplyMovement 0x6, Movement_900
	WaitMovement
	PlayFanfare 0x603
	RemovePeople 0x6
	WaitFanfare 0x603
	SetVar 0x411b, 0x2
	ReleaseAll
	End
@ 8a8

Script_branch_8a8: @ 8a8
	Return
@ 8aa

Script_branch_8aa: @ 8aa
	Return
@ 8ac

Movement_8ac: @ 8ac
	MoveDownFast 0x1
	Exclamation 0x1
	EndMovement 0x0
@ 8b8

.byte 0x22 @ 0x8b8
.byte 0x0 @ 0x8b9
.byte 0x1 @ 0x8ba
.byte 0x0 @ 0x8bb
.byte 0xfe @ 0x8bc
.byte 0x0 @ 0x8bd
.byte 0x0 @ 0x8be
.byte 0x0 @ 0x8bf
.byte 0x23 @ 0x8c0
.byte 0x0 @ 0x8c1
.byte 0x1 @ 0x8c2
.byte 0x0 @ 0x8c3
.byte 0xfe @ 0x8c4
.byte 0x0 @ 0x8c5
.byte 0x0 @ 0x8c6
.byte 0x0 @ 0x8c7
.byte 0x3f @ 0x8c8
.byte 0x0 @ 0x8c9
.byte 0x1 @ 0x8ca
.byte 0x0 @ 0x8cb
.byte 0x21 @ 0x8cc
.byte 0x0 @ 0x8cd
.byte 0x1 @ 0x8ce
.byte 0x0 @ 0x8cf
.byte 0xfe @ 0x8d0
.byte 0x0 @ 0x8d1
.byte 0x0 @ 0x8d2
.byte 0x0 @ 0x8d3

Movement_8d4: @ 8d4
	WalkUpFast 0x2
	EndMovement 0x0
@ 8dc

Movement_8dc: @ 8dc
	WalkLeftFast 0x2
	MoveUpFast 0x1
	Move_3f 0x2
	WalkRightFast 0x4
	MoveUpFast 0x1
	EndMovement 0x0
@ 8f4

Movement_8f4: @ 8f4
	WalkLeftFast 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ 900

Movement_900: @ 900
	WalkDownFast 0x2
	EndMovement 0x0
@ 908

Script_10: @ 908
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x26
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_9cf
	Message 0x27
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_9cf
	Message 0x28
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_9cf
	Message 0x29
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_9cf
	Message 0x2a
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_9cf
	Message 0x2b
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_9cf
	Message 0x2c
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_9cf
	Message 0x2d
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_9cf
	Message 0x2e
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_9cf
	Message 0x2f
	Jump Script_branch_9d5
@ 9cd

.byte 0x2 @ 0x9cd
.byte 0x0 @ 0x9ce

Script_branch_9cf: @ 9cf
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9d5

Script_branch_9d5: @ 9d5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9dd

.byte 0x0 @ 0x9dd
.byte 0x0 @ 0x9de
.byte 0x0 @ 0x9df

@ end_0x9e0
