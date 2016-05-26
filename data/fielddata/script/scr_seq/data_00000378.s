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
	CompareLastResultCall 0x1, Script_branch_664
	If 0x4004, 0x1
	CompareLastResultCall 0x1, Script_branch_669
	Jump Script_branch_b7
@ b5

.byte 0x2 @ 0xb5
.byte 0x0 @ 0xb6

Script_branch_b7: @ b7
	If 0x4004, 0x0
	CompareLastResultCall 0x1, Script_branch_66e
	If 0x4004, 0x1
	CompareLastResultCall 0x1, Script_branch_686
	Cmd_42 0x29, 0x2
	Cmd_42 0x2a, 0x3
	CloseMulti
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_152
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_17f
	If 0x800c, 0x2
	CompareLastResultJump 0x1, Script_branch_117
	If 0x800c, 0x4
	CompareLastResultJump 0x1, Script_branch_1ac
	Jump Script_branch_139
@ 115

.byte 0x2 @ 0x115
.byte 0x0 @ 0x116

Script_branch_117: @ 117
	If 0x4004, 0x0
	CompareLastResultCall 0x1, Script_branch_69a
	If 0x4004, 0x1
	CompareLastResultCall 0x1, Script_branch_69f
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
	SetVar 0x40bc, 0x0
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 152

Script_branch_152: @ 152
	SetVar 0x40bd, 0x0
	Cmd_2d2 0x0, 0x3, 0x800c
	SetVariableNumber 0x0, 0x3
	SetVariableNumber 0x1, 0x3
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1d9
	Jump Script_branch_1ff
@ 17d

.byte 0x2 @ 0x17d
.byte 0x0 @ 0x17e

Script_branch_17f: @ 17f
	SetVar 0x40bd, 0x1
	Cmd_2d2 0x0, 0x3, 0x800c
	SetVariableNumber 0x0, 0x3
	SetVariableNumber 0x1, 0x3
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1d9
	Jump Script_branch_1ff
@ 1aa

.byte 0x2 @ 0x1aa
.byte 0x0 @ 0x1ab

Script_branch_1ac: @ 1ac
	SetVar 0x40bd, 0x2
	Cmd_2d2 0x0, 0x2, 0x800c
	SetVariableNumber 0x0, 0x2
	SetVariableNumber 0x1, 0x2
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1ec
	Jump Script_branch_1ff
@ 1d7

.byte 0x2 @ 0x1d7
.byte 0x0 @ 0x1d8

Script_branch_1d9: @ 1d9
	Message 0x8
	BCastleFunctReturn 0x9, 0x3, 0x0, 0x0
	Jump Script_branch_139
@ 1ea

.byte 0x2 @ 0x1ea
.byte 0x0 @ 0x1eb

Script_branch_1ec: @ 1ec
	Message 0x8
	BCastleFunctReturn 0x9, 0x2, 0x0, 0x0
	Jump Script_branch_139
@ 1fd

.byte 0x2 @ 0x1fd
.byte 0x0 @ 0x1fe

Script_branch_1ff: @ 1ff
	Message 0x7
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Cmd_2d2 0x4, 0x40bd, 0x800c
	Cmd_2d4 0x4002, 0x4005, 0x4006
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x4002, 0xff
	CompareLastResultJump 0x1, Script_branch_139
	Cmd_31e 0x4002, 0x800c
	If 0x800c, 0xff
	CompareLastResultJump 0x1, Script_branch_5d5
	Cmd_31e 0x4005, 0x800c
	If 0x800c, 0xff
	CompareLastResultJump 0x1, Script_branch_5d5
	Cmd_31e 0x4006, 0x800c
	If 0x800c, 0xff
	CompareLastResultJump 0x1, Script_branch_5d5
	CheckPokeEgg 0x4002, 0x4001
	If 0x4001, 0x0
	CompareLastResultJump 0x1, Script_branch_139
	Jump Script_branch_28f
@ 28d

.byte 0x2 @ 0x28d
.byte 0x0 @ 0x28e

Script_branch_28f: @ 28f
	Jump Script_branch_297
@ 295

.byte 0x2 @ 0x295
.byte 0x0 @ 0x296

Script_branch_297: @ 297
	If 0x40bd, 0x0
	CompareLastResultCall 0x1, Script_branch_43c
	If 0x40bd, 0x1
	CompareLastResultCall 0x1, Script_branch_43c
	SetVar 0x4000, 0x0
	HealPokemon
	CallStandard 0x7d6
	CopyVar 0x800c, 0x4000
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_139
	If 0x40bd, 0x2
	CompareLastResultJump 0x1, Script_branch_2e5
	Jump Script_branch_49d
@ 2e3

.byte 0x2 @ 0x2e3
.byte 0x0 @ 0x2e4

Script_branch_2e5: @ 2e5
	Message 0x2b
	Multi 0x1e, 0x1, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xd, 0x0
	Cmd_42 0xe, 0x1
	Cmd_42 0x5, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump 0x1, Script_branch_329
	If 0x8008, 0x1
	CompareLastResultJump 0x1, Script_branch_37d
	Jump Script_branch_139
@ 327

.byte 0x2 @ 0x327
.byte 0x0 @ 0x328

Script_branch_329: @ 329
	Message 0x2c
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_2e5
	CloseMsgOnKeyPress
	ChsFriend 0x1f, 0x0, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_36b
	If 0x800c, 0x3
	CompareLastResultJump 0x1, Script_branch_373
	Jump Script_branch_3d1
@ 369

.byte 0x2 @ 0x369
.byte 0x0 @ 0x36a

Script_branch_36b: @ 36b
	Jump Script_branch_2e5
@ 371

.byte 0x2 @ 0x371
.byte 0x0 @ 0x372

Script_branch_373: @ 373
	DeleteEntry
	Jump Script_branch_2e5
@ 37b

.byte 0x2 @ 0x37b
.byte 0x0 @ 0x37c

Script_branch_37d: @ 37d
	Message 0x2c
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_2e5
	CloseMsgOnKeyPress
	WireBattleWait 0x1f, 0x0, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_3bf
	If 0x800c, 0x3
	CompareLastResultJump 0x1, Script_branch_3c7
	Jump Script_branch_3d1
@ 3bd

.byte 0x2 @ 0x3bd
.byte 0x0 @ 0x3be

Script_branch_3bf: @ 3bf
	Jump Script_branch_2e5
@ 3c5

.byte 0x2 @ 0x3c5
.byte 0x0 @ 0x3c6

Script_branch_3c7: @ 3c7
	DeleteEntry
	Jump Script_branch_2e5
@ 3cf

.byte 0x2 @ 0x3cf
.byte 0x0 @ 0x3d0

Script_branch_3d1: @ 3d1
	FriendBT2
	FriendBT 0x88
	CheckPokeEgg 0x4002, 0x8000
	CheckPokeEgg 0x4005, 0x8001
	Cmd_2d3 0x8000, 0x8001, 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x1
	CompareLastResultJump 0x1, Script_branch_444
	If 0x8008, 0x2
	CompareLastResultJump 0x1, Script_branch_45a
	If 0x8008, 0x3
	CompareLastResultJump 0x1, Script_branch_470
	FriendBT2
	FriendBT 0x8a
	Message 0x2d
	If 0x40bd, 0x2
	CompareLastResultCall 0x1, Script_branch_43c
	Call Function_6cb
	Jump Script_branch_49d
@ 43a

.byte 0x2 @ 0x43a
.byte 0x0 @ 0x43b

Function_43c: @ 43c
Script_branch_43c: @ 43c
	SetVar 0x40bc, 0xff
	Return
@ 444

Script_branch_444: @ 444
	Call Function_493
	SetVarPoke 0x0, 0x4002
	Message 0x1d
	Jump Script_branch_48b
@ 458

.byte 0x2 @ 0x458
.byte 0x0 @ 0x459

Script_branch_45a: @ 45a
	Call Function_493
	SetVarPoke 0x0, 0x4005
	Message 0x1d
	Jump Script_branch_48b
@ 46e

.byte 0x2 @ 0x46e
.byte 0x0 @ 0x46f

Script_branch_470: @ 470
	Call Function_493
	SetVarPoke 0x0, 0x4002
	SetVarPoke 0x1, 0x4005
	Message 0x1e
	Jump Script_branch_48b
@ 489

.byte 0x2 @ 0x489
.byte 0x0 @ 0x48a

Script_branch_48b: @ 48b
	Jump Script_branch_139
@ 491

.byte 0x2 @ 0x491
.byte 0x0 @ 0x492

Function_493: @ 493
	FriendBT2
	FriendBT 0x8b
	DeleteEntry
	Return
@ 49d

Script_branch_49d: @ 49d
	If 0x40bd, 0x0
	CompareLastResultCall 0x1, Script_branch_53d
	If 0x40bd, 0x1
	CompareLastResultCall 0x1, Script_branch_558
	If 0x40bd, 0x2
	CompareLastResultCall 0x1, Script_branch_573
	PlayFanfare 0x603
	Jump Script_branch_4d0
@ 4ce

.byte 0x2 @ 0x4ce
.byte 0x0 @ 0x4cf

Script_branch_4d0: @ 4d0
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	If 0x40bd, 0x0
	CompareLastResultCall 0x1, Script_branch_599
	If 0x40bd, 0x1
	CompareLastResultCall 0x1, Script_branch_5ad
	If 0x40bd, 0x2
	CompareLastResultCall 0x1, Script_branch_5c1
	RandomEvent 0x3a
	DeActivateLeader 0x26, 0x0, 0x0, 0x0, 0x0
	PreWfc
	ShowBTowerSome 0xb
	If 0x40bd, 0x2
	CompareLastResultCall 0x1, Script_branch_539
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Cmd_313 0x1
	End
@ 539

Script_branch_539: @ 539
	DeleteEntry
	Return
@ 53d

Script_branch_53d: @ 53d
	Message 0x20
	Cmd_30
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_5e4
	ApplyMovement 0x800d, Movement_604
	WaitMovement
	Return
@ 558

Script_branch_558: @ 558
	Message 0x20
	Cmd_30
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_5e4
	ApplyMovement 0x800d, Movement_604
	WaitMovement
	Return
@ 573

Script_branch_573: @ 573
	Message4 0x20
	Return2 0xa, 0x800c
	FriendBT2
	FriendBT 0x89
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_5f0
	ApplyMovement 0x800d, Movement_610
	WaitMovement
	Return
@ 599

Script_branch_599: @ 599
	ApplyMovement 0xff, Movement_624
	ApplyMovement 0x800d, Movement_648
	WaitMovement
	Return
@ 5ad

Script_branch_5ad: @ 5ad
	ApplyMovement 0xff, Movement_624
	ApplyMovement 0x800d, Movement_648
	WaitMovement
	Return
@ 5c1

Script_branch_5c1: @ 5c1
	ApplyMovement 0xff, Movement_634
	ApplyMovement 0x800d, Movement_654
	WaitMovement
	Return
@ 5d5

Script_branch_5d5: @ 5d5
	SetVar 0x40bc, 0x0
	CallStandard 0x809
	End
@ 5e1

.byte 0x0 @ 0x5e1
.byte 0x0 @ 0x5e2
.byte 0x0 @ 0x5e3

Movement_5e4: @ 5e4
	WalkLeftFast 0x6
	WaitDisappear 0x1
	EndMovement 0x0
@ 5f0

Movement_5f0: @ 5f0
	WalkLeftFast 0x3
	WalkUpFast 0x1
	WalkLeftFast 0x3
	WaitDisappear 0x1
	EndMovement 0x0
@ 604

Movement_604: @ 604
	WalkLeftFast 0x5
	WaitDisappear 0x1
	EndMovement 0x0
@ 610

Movement_610: @ 610
	WalkLeftFast 0x2
	WalkUpFast 0x1
	WalkLeftFast 0x3
	WaitDisappear 0x1
	EndMovement 0x0
@ 624

Movement_624: @ 624
	RunRight 0x6
	Move_46 0x1
	SeeLeft 0x1
	EndMovement 0x0
@ 634

Movement_634: @ 634
	RunRight 0x6
	RunDown 0x1
	Move_46 0x1
	SeeLeft 0x1
	EndMovement 0x0
@ 648

Movement_648: @ 648
	RunRight 0x5
	Move_46 0x1
	EndMovement 0x0
@ 654

Movement_654: @ 654
	RunDown 0x1
	RunRight 0x5
	Move_46 0x1
	EndMovement 0x0
@ 664

Script_branch_664: @ 664
	Message 0x0
	Return
@ 669

Script_branch_669: @ 669
	Message 0x3
	Return
@ 66e

Script_branch_66e: @ 66e
	Multi2 0x1f, 0x9, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x26, 0x0
	Cmd_42 0x27, 0x1
	Message 0x1
	Return
@ 686

Script_branch_686: @ 686
	Multi2 0x1f, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x28, 0x4
	Message 0x4
	Return
@ 69a

Script_branch_69a: @ 69a
	Message 0x2
	Return
@ 69f

Script_branch_69f: @ 69f
	Message 0x5
	Return
@ 6a4

Script_2: @ 6a4
	Cmd_313 0x0
	SetVar 0x4003, 0x1
	SetVar 0x40bc, 0x0
	Message 0x21
	Call Script_branch_43c
	Call Function_6cb
	Jump Script_branch_49d
@ 6c9

.byte 0x2 @ 0x6c9
.byte 0x0 @ 0x6ca

Function_6cb: @ 6cb
	ShowClockSave
	CheckSaveData 0x800c
	HideClockSave
	PlayFanfare 0x61b
	WaitFanfare 0x61b
	Return
@ 6dd

Script_3: @ 6dd
	Message 0x22
	Cmd_2d5 0x40bd
	Jump Script_branch_139
@ 6ea

.byte 0x2 @ 0x6ea
.byte 0x0 @ 0x6eb

Script_4: @ 6ec
	If 0x40bd, 0x0
	CompareLastResultCall 0x1, Script_branch_728
	If 0x40bd, 0x1
	CompareLastResultCall 0x1, Script_branch_728
	If 0x4052, 0x1
	CompareLastResultCall 0x1, Script_branch_72e
	If 0x4052, 0x3
	CompareLastResultCall 0x1, Script_branch_745
	Jump Script_branch_139
@ 726

.byte 0x2 @ 0x726
.byte 0x0 @ 0x727

Script_branch_728: @ 728
	Cmd_30a 0x27
	Return
@ 72e

Script_branch_72e: @ 72e
	Message 0x23
	SetVarHero 0x0
	Message 0x25
	Soundfr 0x486
	Cmd_4f
	SetVar 0x4052, 0x2
	Return
@ 745

Script_branch_745: @ 745
	Message 0x23
	SetVarHero 0x0
	Message 0x24
	Soundfr 0x486
	Cmd_4f
	SetVar 0x4052, 0x4
	CallStandard 0x806
	Return
@ 760

Script_5: @ 760
	Jump Script_branch_139
@ 766

.byte 0x2 @ 0x766
.byte 0x0 @ 0x767
.byte 0xc @ 0x768
.byte 0x0 @ 0x769
.byte 0x2 @ 0x76a
.byte 0x0 @ 0x76b
.byte 0x3f @ 0x76c
.byte 0x0 @ 0x76d
.byte 0x1 @ 0x76e
.byte 0x0 @ 0x76f
.byte 0xc @ 0x770
.byte 0x0 @ 0x771
.byte 0x1 @ 0x772
.byte 0x0 @ 0x773
.byte 0xfe @ 0x774
.byte 0x0 @ 0x775
.byte 0x0 @ 0x776
.byte 0x0 @ 0x777
.byte 0xc @ 0x778
.byte 0x0 @ 0x779
.byte 0x2 @ 0x77a
.byte 0x0 @ 0x77b
.byte 0x3f @ 0x77c
.byte 0x0 @ 0x77d
.byte 0x1 @ 0x77e
.byte 0x0 @ 0x77f
.byte 0xc @ 0x780
.byte 0x0 @ 0x781
.byte 0x1 @ 0x782
.byte 0x0 @ 0x783
.byte 0xfe @ 0x784
.byte 0x0 @ 0x785
.byte 0x0 @ 0x786
.byte 0x0 @ 0x787

Script_7: @ 788
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 79b

Script_8: @ 79b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7ae

Script_9: @ 7ae
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x30
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7c1

Script_10: @ 7c1
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x31
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7d4

Script_11: @ 7d4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x32
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7e7

Script_12: @ 7e7
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x33
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7fa

Script_13: @ 7fa
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x34
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 80d

.byte 0x0 @ 0x80d
.byte 0x0 @ 0x80e
.byte 0x0 @ 0x80f

@ end_0x810
