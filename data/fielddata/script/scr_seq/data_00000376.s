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
	.hword 0xfd13
@ 3a

Script_14: @ 3a
	CheckStatusPhraseBox 0x13, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_53
	ClearFlag 0x2c3
	End
@ 53

Script_branch_53: @ 53
	SetFlag 0x2c3
	End
@ 59

Script_1: @ 59
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x4003, 0x0
	SetVar 0x4004, 0x0
	Jump Script_branch_91
@ 73

.byte 0x2 @ 0x73
.byte 0x0 @ 0x74

Script_6: @ 75
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x4003, 0x0
	SetVar 0x4004, 0x1
	Jump Script_branch_91
@ 8f

.byte 0x2 @ 0x8f
.byte 0x0 @ 0x90

Script_branch_91: @ 91
	Cmd_313 0x0
	If 0x4004, 0x0
	CompareLastResultCall 0x1, Script_branch_570
	If 0x4004, 0x1
	CompareLastResultCall 0x1, Script_branch_575
	Jump Script_branch_b7
@ b5

.byte 0x2 @ 0xb5
.byte 0x0 @ 0xb6

Script_branch_b7: @ b7
	If 0x4004, 0x0
	CompareLastResultCall 0x1, Script_branch_57a
	If 0x4004, 0x1
	CompareLastResultCall 0x1, Script_branch_592
	Cmd_42 0x13, 0x2
	Cmd_42 0x14, 0x3
	CloseMulti
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_152
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_160
	If 0x800c, 0x2
	CompareLastResultJump 0x1, Script_branch_117
	If 0x800c, 0x4
	CompareLastResultJump 0x1, Script_branch_16e
	Jump Script_branch_139
@ 115

.byte 0x2 @ 0x115
.byte 0x0 @ 0x116

Script_branch_117: @ 117
	If 0x4004, 0x0
	CompareLastResultCall 0x1, Script_branch_5a6
	If 0x4004, 0x1
	CompareLastResultCall 0x1, Script_branch_5ab
	Jump Script_branch_b7
@ 137

.byte 0x2 @ 0x137
.byte 0x0 @ 0x138

Script_branch_139: @ 139
	Jump Script_branch_141
@ 13f

.byte 0x2 @ 0x13f
.byte 0x0 @ 0x140

Script_branch_141: @ 141
	SetVar 0x40b7, 0x0
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 152

Script_branch_152: @ 152
	SetVar 0x40b8, 0x0
	Jump Script_branch_17c
@ 15e

.byte 0x2 @ 0x15e
.byte 0x0 @ 0x15f

Script_branch_160: @ 160
	SetVar 0x40b8, 0x1
	Jump Script_branch_17c
@ 16c

.byte 0x2 @ 0x16c
.byte 0x0 @ 0x16d

Script_branch_16e: @ 16e
	SetVar 0x40b8, 0x2
	Jump Script_branch_17c
@ 17a

.byte 0x2 @ 0x17a
.byte 0x0 @ 0x17b

Script_branch_17c: @ 17c
	Message 0x7
	Multi2 0x1f, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x15, 0x0
	Cmd_42 0x16, 0x1
	Cmd_42 0x17, 0x2
	CloseMulti
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1ba
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_1c8
	Jump Script_branch_139
@ 1b8

.byte 0x2 @ 0x1b8
.byte 0x0 @ 0x1b9

Script_branch_1ba: @ 1ba
	SetVar 0x40b9, 0x0
	Jump Script_branch_1d6
@ 1c6

.byte 0x2 @ 0x1c6
.byte 0x0 @ 0x1c7

Script_branch_1c8: @ 1c8
	SetVar 0x40b9, 0x1
	Jump Script_branch_1d6
@ 1d4

.byte 0x2 @ 0x1d4
.byte 0x0 @ 0x1d5

Script_branch_1d6: @ 1d6
	Jump Script_branch_1de
@ 1dc

.byte 0x2 @ 0x1dc
.byte 0x0 @ 0x1dd

Script_branch_1de: @ 1de
	If 0x40b8, 0x0
	CompareLastResultCall 0x1, Script_branch_386
	If 0x40b8, 0x1
	CompareLastResultCall 0x1, Script_branch_386
	SetVar 0x4000, 0x0
	HealPokemon
	CallStandard 0x7d6
	CopyVar 0x800c, 0x4000
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_139
	If 0x40b8, 0x2
	CompareLastResultJump 0x1, Script_branch_22c
	Jump Script_branch_38e
@ 22a

.byte 0x2 @ 0x22a
.byte 0x0 @ 0x22b

Script_branch_22c: @ 22c
	Message 0x18
	Multi 0x1e, 0x1, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xd, 0x0
	Cmd_42 0xe, 0x1
	Cmd_42 0x5, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump 0x1, Script_branch_270
	If 0x8008, 0x1
	CompareLastResultJump 0x1, Script_branch_2ec
	Jump Script_branch_139
@ 26e

.byte 0x2 @ 0x26e
.byte 0x0 @ 0x26f

Script_branch_270: @ 270
	Message 0x19
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_22c
	CloseMsgOnKeyPress
	If 0x40b9, 0x0
	CompareLastResultCall 0x1, Script_branch_2c2
	If 0x40b9, 0x1
	CompareLastResultCall 0x1, Script_branch_2ce
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_2da
	If 0x800c, 0x3
	CompareLastResultJump 0x1, Script_branch_2e2
	Jump Script_branch_368
@ 2c0

.byte 0x2 @ 0x2c0
.byte 0x0 @ 0x2c1

Script_branch_2c2: @ 2c2
	ChsFriend 0x1b, 0x0, 0x0, 0x800c
	Return
@ 2ce

Script_branch_2ce: @ 2ce
	ChsFriend 0x1c, 0x0, 0x0, 0x800c
	Return
@ 2da

Script_branch_2da: @ 2da
	Jump Script_branch_22c
@ 2e0

.byte 0x2 @ 0x2e0
.byte 0x0 @ 0x2e1

Script_branch_2e2: @ 2e2
	DeleteEntry
	Jump Script_branch_22c
@ 2ea

.byte 0x2 @ 0x2ea
.byte 0x0 @ 0x2eb

Script_branch_2ec: @ 2ec
	Message 0x19
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_22c
	CloseMsgOnKeyPress
	If 0x40b9, 0x0
	CompareLastResultCall 0x1, Script_branch_33e
	If 0x40b9, 0x1
	CompareLastResultCall 0x1, Script_branch_34a
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_356
	If 0x800c, 0x3
	CompareLastResultJump 0x1, Script_branch_35e
	Jump Script_branch_368
@ 33c

.byte 0x2 @ 0x33c
.byte 0x0 @ 0x33d

Script_branch_33e: @ 33e
	WireBattleWait 0x1b, 0x0, 0x0, 0x800c
	Return
@ 34a

Script_branch_34a: @ 34a
	WireBattleWait 0x1c, 0x0, 0x0, 0x800c
	Return
@ 356

Script_branch_356: @ 356
	Jump Script_branch_22c
@ 35c

.byte 0x2 @ 0x35c
.byte 0x0 @ 0x35d

Script_branch_35e: @ 35e
	DeleteEntry
	Jump Script_branch_22c
@ 366

.byte 0x2 @ 0x366
.byte 0x0 @ 0x367

Script_branch_368: @ 368
	Message 0x1a
	If 0x40b8, 0x2
	CompareLastResultCall 0x1, Script_branch_386
	Call Function_5d7
	Jump Script_branch_38e
@ 384

.byte 0x2 @ 0x384
.byte 0x0 @ 0x385

Function_386: @ 386
Script_branch_386: @ 386
	SetVar 0x40b7, 0xff
	Return
@ 38e

Script_branch_38e: @ 38e
	If 0x40b8, 0x0
	CompareLastResultCall 0x1, Script_branch_42e
	If 0x40b8, 0x1
	CompareLastResultCall 0x1, Script_branch_449
	If 0x40b8, 0x2
	CompareLastResultCall 0x1, Script_branch_464
	PlayFanfare 0x603
	Jump Script_branch_3c1
@ 3bf

.byte 0x2 @ 0x3bf
.byte 0x0 @ 0x3c0

Script_branch_3c1: @ 3c1
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	If 0x40b8, 0x0
	CompareLastResultCall 0x1, Script_branch_48a
	If 0x40b8, 0x1
	CompareLastResultCall 0x1, Script_branch_49e
	If 0x40b8, 0x2
	CompareLastResultCall 0x1, Script_branch_4b2
	RandomEvent 0x3a
	DeActivateLeader 0x25, 0x0, 0x0, 0x0, 0x0
	PreWfc
	ShowBTowerSome 0x3
	If 0x40b8, 0x2
	CompareLastResultCall 0x1, Script_branch_42a
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Cmd_313 0x1
	End
@ 42a

Script_branch_42a: @ 42a
	DeleteEntry
	Return
@ 42e

Script_branch_42e: @ 42e
	Message 0x9
	Cmd_30
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_4c8
	ApplyMovement 0x800d, Movement_4f0
	WaitMovement
	Return
@ 449

Script_branch_449: @ 449
	Message 0x9
	Cmd_30
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_4c8
	ApplyMovement 0x800d, Movement_4f0
	WaitMovement
	Return
@ 464

Script_branch_464: @ 464
	Message4 0x9
	Return2 0xf, 0x800c
	FriendBT2
	FriendBT 0xa9
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_4dc
	ApplyMovement 0x800d, Movement_504
	WaitMovement
	Return
@ 48a

Script_branch_48a: @ 48a
	ApplyMovement 0xff, Movement_518
	ApplyMovement 0x800d, Movement_548
	WaitMovement
	Return
@ 49e

Script_branch_49e: @ 49e
	ApplyMovement 0xff, Movement_518
	ApplyMovement 0x800d, Movement_548
	WaitMovement
	Return
@ 4b2

Script_branch_4b2: @ 4b2
	ApplyMovement 0xff, Movement_530
	ApplyMovement 0x800d, Movement_55c
	WaitMovement
	Return
@ 4c6

.byte 0x0 @ 0x4c6
.byte 0x0 @ 0x4c7

Movement_4c8: @ 4c8
	WalkUpFast 0x3
	WalkRightFast 0x1
	WalkUpFast 0x4
	WaitDisappear 0x1
	EndMovement 0x0
@ 4dc

Movement_4dc: @ 4dc
	WalkUpFast 0x3
	WalkLeftFast 0x1
	WalkUpFast 0x4
	WaitDisappear 0x1
	EndMovement 0x0
@ 4f0

Movement_4f0: @ 4f0
	WalkUpFast 0x2
	WalkRightFast 0x1
	WalkUpFast 0x4
	WaitDisappear 0x1
	EndMovement 0x0
@ 504

Movement_504: @ 504
	WalkUpFast 0x2
	WalkLeftFast 0x1
	WalkUpFast 0x4
	WaitDisappear 0x1
	EndMovement 0x0
@ 518

Movement_518: @ 518
	RunDown 0x3
	RunLeft 0x1
	RunDown 0x4
	SeeUp 0x1
	Move_46 0x1
	EndMovement 0x0
@ 530

Movement_530: @ 530
	RunDown 0x3
	RunRight 0x1
	RunDown 0x4
	SeeUp 0x1
	Move_46 0x1
	EndMovement 0x0
@ 548

Movement_548: @ 548
	RunDown 0x2
	RunLeft 0x1
	RunDown 0x4
	Move_46 0x1
	EndMovement 0x0
@ 55c

Movement_55c: @ 55c
	RunDown 0x2
	RunRight 0x1
	RunDown 0x4
	Move_46 0x1
	EndMovement 0x0
@ 570

Script_branch_570: @ 570
	Message 0x0
	Return
@ 575

Script_branch_575: @ 575
	Message 0x3
	Return
@ 57a

Script_branch_57a: @ 57a
	Multi2 0x1f, 0x9, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x10, 0x0
	Cmd_42 0x11, 0x1
	Message 0x1
	Return
@ 592

Script_branch_592: @ 592
	Multi2 0x1f, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x12, 0x4
	Message 0x4
	Return
@ 5a6

Script_branch_5a6: @ 5a6
	Message 0x2
	Return
@ 5ab

Script_branch_5ab: @ 5ab
	Message 0x5
	Return
@ 5b0

Script_2: @ 5b0
	Cmd_313 0x0
	SetVar 0x4003, 0x1
	SetVar 0x40b7, 0x0
	Message 0xb
	Call Script_branch_386
	Call Function_5d7
	Jump Script_branch_38e
@ 5d5

.byte 0x2 @ 0x5d5
.byte 0x0 @ 0x5d6

Function_5d7: @ 5d7
	ShowClockSave
	CheckSaveData 0x800c
	HideClockSave
	PlayFanfare 0x61b
	WaitFanfare 0x61b
	Return
@ 5e9

Script_3: @ 5e9
	Message 0xc
	DeleteSavesBFactory 0x40b8, 0x40b9
	Jump Script_branch_139
@ 5f8

.byte 0x2 @ 0x5f8
.byte 0x0 @ 0x5f9

Script_4: @ 5fa
	If 0x40b8, 0x0
	CompareLastResultCall 0x1, Script_branch_636
	If 0x40b8, 0x1
	CompareLastResultCall 0x1, Script_branch_636
	If 0x4050, 0x1
	CompareLastResultCall 0x1, Script_branch_63c
	If 0x4050, 0x3
	CompareLastResultCall 0x1, Script_branch_653
	Jump Script_branch_139
@ 634

.byte 0x2 @ 0x634
.byte 0x0 @ 0x635

Script_branch_636: @ 636
	Cmd_30a 0x26
	Return
@ 63c

Script_branch_63c: @ 63c
	Message 0xd
	SetVarHero 0x0
	Message 0xf
	Soundfr 0x486
	Cmd_4f
	SetVar 0x4050, 0x2
	Return
@ 653

Script_branch_653: @ 653
	Message 0xd
	SetVarHero 0x0
	Message 0xe
	Soundfr 0x486
	Cmd_4f
	SetVar 0x4050, 0x4
	CallStandard 0x806
	Return
@ 66e

Script_5: @ 66e
	Jump Script_branch_139
@ 674

.byte 0x2 @ 0x674
.byte 0x0 @ 0x675
.byte 0x0 @ 0x676
.byte 0x0 @ 0x677
.byte 0xc @ 0x678
.byte 0x0 @ 0x679
.byte 0x2 @ 0x67a
.byte 0x0 @ 0x67b
.byte 0x3f @ 0x67c
.byte 0x0 @ 0x67d
.byte 0x1 @ 0x67e
.byte 0x0 @ 0x67f
.byte 0xc @ 0x680
.byte 0x0 @ 0x681
.byte 0x1 @ 0x682
.byte 0x0 @ 0x683
.byte 0xfe @ 0x684
.byte 0x0 @ 0x685
.byte 0x0 @ 0x686
.byte 0x0 @ 0x687
.byte 0xc @ 0x688
.byte 0x0 @ 0x689
.byte 0x2 @ 0x68a
.byte 0x0 @ 0x68b
.byte 0x3f @ 0x68c
.byte 0x0 @ 0x68d
.byte 0x1 @ 0x68e
.byte 0x0 @ 0x68f
.byte 0xc @ 0x690
.byte 0x0 @ 0x691
.byte 0x1 @ 0x692
.byte 0x0 @ 0x693
.byte 0xfe @ 0x694
.byte 0x0 @ 0x695
.byte 0x0 @ 0x696
.byte 0x0 @ 0x697

Script_7: @ 698
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6ab

Script_8: @ 6ab
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6be

Script_9: @ 6be
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6d1

Script_10: @ 6d1
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6e4

Script_11: @ 6e4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6f7

Script_12: @ 6f7
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x20
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 70a

Script_13: @ 70a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x21
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 71d

.byte 0x0 @ 0x71d
.byte 0x0 @ 0x71e
.byte 0x0 @ 0x71f

@ end_0x720
