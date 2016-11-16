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
	.hword 0xfd13
@ 46

Script_15: @ 46
	CheckStatusPhraseBox 0x13, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_5f
	ClearFlag 0x2c3
	End
@ 5f

Script_branch_5f: @ 5f
	SetFlag 0x2c3
	End
@ 65

Script_1: @ 65
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x4003, 0x0
	SetVar 0x4004, 0x0
	Jump Script_branch_9d
@ 7f

.byte 0x2 @ 0x7f
.byte 0x0 @ 0x80

Script_6: @ 81
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x4003, 0x0
	SetVar 0x4004, 0x1
	Jump Script_branch_9d
@ 9b

.byte 0x2 @ 0x9b
.byte 0x0 @ 0x9c

Script_branch_9d: @ 9d
	Cmd_313 0x0
	If 0x4004, 0x0
	CompareLastResultCall EQUAL, Script_branch_678
	If 0x4004, 0x1
	CompareLastResultCall EQUAL, Script_branch_67d
	Jump Script_branch_c3
@ c1

.byte 0x2 @ 0xc1
.byte 0x0 @ 0xc2

Script_branch_c3: @ c3
	If 0x4004, 0x0
	CompareLastResultCall EQUAL, Script_branch_682
	If 0x4004, 0x1
	CompareLastResultCall EQUAL, Script_branch_69a
	Cmd_42 0x29, 0x2
	Cmd_42 0x2a, 0x3
	CloseMulti
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_15e
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_18b
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_123
	If 0x800c, 0x4
	CompareLastResultJump EQUAL, Script_branch_1b8
	Jump Script_branch_145
@ 121

.byte 0x2 @ 0x121
.byte 0x0 @ 0x122

Script_branch_123: @ 123
	If 0x4004, 0x0
	CompareLastResultCall EQUAL, Script_branch_6ae
	If 0x4004, 0x1
	CompareLastResultCall EQUAL, Script_branch_6b3
	Jump Script_branch_c3
@ 143

.byte 0x2 @ 0x143
.byte 0x0 @ 0x144

Script_branch_145: @ 145
	Jump Script_branch_14d
@ 14b

.byte 0x2 @ 0x14b
.byte 0x0 @ 0x14c

Script_branch_14d: @ 14d
	SetVar 0x40bf, 0x0
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 15e

Script_branch_15e: @ 15e
	SetVar 0x40be, 0x0
	Cmd_2d9 0x0, 0x3, 0x800c
	SetVariableNumber 0x0, 0x3
	SetVariableNumber 0x1, 0x3
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1e5
	Jump Script_branch_20b
@ 189

.byte 0x2 @ 0x189
.byte 0x0 @ 0x18a

Script_branch_18b: @ 18b
	SetVar 0x40be, 0x1
	Cmd_2d9 0x0, 0x3, 0x800c
	SetVariableNumber 0x0, 0x3
	SetVariableNumber 0x1, 0x3
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1e5
	Jump Script_branch_20b
@ 1b6

.byte 0x2 @ 0x1b6
.byte 0x0 @ 0x1b7

Script_branch_1b8: @ 1b8
	SetVar 0x40be, 0x2
	Cmd_2d9 0x0, 0x2, 0x800c
	SetVariableNumber 0x0, 0x2
	SetVariableNumber 0x1, 0x2
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1f8
	Jump Script_branch_20b
@ 1e3

.byte 0x2 @ 0x1e3
.byte 0x0 @ 0x1e4

Script_branch_1e5: @ 1e5
	Message 0x8
	BCastleFunctReturn 0x9, 0x3, 0x0, 0x0
	Jump Script_branch_145
@ 1f6

.byte 0x2 @ 0x1f6
.byte 0x0 @ 0x1f7

Script_branch_1f8: @ 1f8
	Message 0x8
	BCastleFunctReturn 0x9, 0x2, 0x0, 0x0
	Jump Script_branch_145
@ 209

.byte 0x2 @ 0x209
.byte 0x0 @ 0x20a

Script_branch_20b: @ 20b
	Message 0x7
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Cmd_2d9 0x4, 0x40be, 0x800c
	Cmd_2db 0x4002, 0x4005, 0x4006
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x4002, 0xff
	CompareLastResultJump EQUAL, Script_branch_145
	Cmd_31e 0x4002, 0x800c
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_5e1
	Cmd_31e 0x4005, 0x800c
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_5e1
	Cmd_31e 0x4006, 0x800c
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_5e1
	CheckPokeEgg 0x4002, 0x4001
	If 0x4001, 0x0
	CompareLastResultJump EQUAL, Script_branch_145
	Jump Script_branch_29b
@ 299

.byte 0x2 @ 0x299
.byte 0x0 @ 0x29a

Script_branch_29b: @ 29b
	Jump Script_branch_2a3
@ 2a1

.byte 0x2 @ 0x2a1
.byte 0x0 @ 0x2a2

Script_branch_2a3: @ 2a3
	If 0x40be, 0x0
	CompareLastResultCall EQUAL, Script_branch_448
	If 0x40be, 0x1
	CompareLastResultCall EQUAL, Script_branch_448
	SetVar 0x4000, 0x0
	HealPokemon
	CallStandard 0x7d6
	CopyVar 0x800c, 0x4000
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_145
	If 0x40be, 0x2
	CompareLastResultJump EQUAL, Script_branch_2f1
	Jump Script_branch_4a9
@ 2ef

.byte 0x2 @ 0x2ef
.byte 0x0 @ 0x2f0

Script_branch_2f1: @ 2f1
	Message 0x2b
	Multi 0x1e, 0x1, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xd, 0x0
	Cmd_42 0xe, 0x1
	Cmd_42 0x5, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_335
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_389
	Jump Script_branch_145
@ 333

.byte 0x2 @ 0x333
.byte 0x0 @ 0x334

Script_branch_335: @ 335
	Message 0x2c
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2f1
	CloseMsgOnKeyPress
	ChsFriend 0x20, 0x0, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_377
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_37f
	Jump Script_branch_3dd
@ 375

.byte 0x2 @ 0x375
.byte 0x0 @ 0x376

Script_branch_377: @ 377
	Jump Script_branch_2f1
@ 37d

.byte 0x2 @ 0x37d
.byte 0x0 @ 0x37e

Script_branch_37f: @ 37f
	DeleteEntry
	Jump Script_branch_2f1
@ 387

.byte 0x2 @ 0x387
.byte 0x0 @ 0x388

Script_branch_389: @ 389
	Message 0x2c
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2f1
	CloseMsgOnKeyPress
	WireBattleWait 0x20, 0x0, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_3cb
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_3d3
	Jump Script_branch_3dd
@ 3c9

.byte 0x2 @ 0x3c9
.byte 0x0 @ 0x3ca

Script_branch_3cb: @ 3cb
	Jump Script_branch_2f1
@ 3d1

.byte 0x2 @ 0x3d1
.byte 0x0 @ 0x3d2

Script_branch_3d3: @ 3d3
	DeleteEntry
	Jump Script_branch_2f1
@ 3db

.byte 0x2 @ 0x3db
.byte 0x0 @ 0x3dc

Script_branch_3dd: @ 3dd
	FriendBT2
	FriendBT 0x9a
	CheckPokeEgg 0x4002, 0x8000
	CheckPokeEgg 0x4005, 0x8001
	Cmd_2da 0x8000, 0x8001, 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_450
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_466
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_47c
	FriendBT2
	FriendBT 0x9c
	Message 0x2d
	If 0x40be, 0x2
	CompareLastResultCall EQUAL, Script_branch_448
	Call Function_6df
	Jump Script_branch_4a9
@ 446

.byte 0x2 @ 0x446
.byte 0x0 @ 0x447

Function_448: @ 448
Script_branch_448: @ 448
	SetVar 0x40bf, 0xff
	Return
@ 450

Script_branch_450: @ 450
	Call Function_49f
	SetVarPoke 0x0, 0x4002
	Message 0x1d
	Jump Script_branch_497
@ 464

.byte 0x2 @ 0x464
.byte 0x0 @ 0x465

Script_branch_466: @ 466
	Call Function_49f
	SetVarPoke 0x0, 0x4005
	Message 0x1d
	Jump Script_branch_497
@ 47a

.byte 0x2 @ 0x47a
.byte 0x0 @ 0x47b

Script_branch_47c: @ 47c
	Call Function_49f
	SetVarPoke 0x0, 0x4002
	SetVarPoke 0x1, 0x4005
	Message 0x1e
	Jump Script_branch_497
@ 495

.byte 0x2 @ 0x495
.byte 0x0 @ 0x496

Script_branch_497: @ 497
	Jump Script_branch_145
@ 49d

.byte 0x2 @ 0x49d
.byte 0x0 @ 0x49e

Function_49f: @ 49f
	FriendBT2
	FriendBT 0x9d
	DeleteEntry
	Return
@ 4a9

Script_branch_4a9: @ 4a9
	If 0x40be, 0x0
	CompareLastResultCall EQUAL, Script_branch_549
	If 0x40be, 0x1
	CompareLastResultCall EQUAL, Script_branch_564
	If 0x40be, 0x2
	CompareLastResultCall EQUAL, Script_branch_57f
	PlayFanfare 0x603
	Jump Script_branch_4dc
@ 4da

.byte 0x2 @ 0x4da
.byte 0x0 @ 0x4db

Script_branch_4dc: @ 4dc
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	If 0x40be, 0x0
	CompareLastResultCall EQUAL, Script_branch_5a5
	If 0x40be, 0x1
	CompareLastResultCall EQUAL, Script_branch_5b9
	If 0x40be, 0x2
	CompareLastResultCall EQUAL, Script_branch_5cd
	RandomEvent 0x3a
	DeActivateLeader 0x28, 0x0, 0x0, 0x0, 0x0
	PreWfc
	ShowBTowerSome 0xf
	If 0x40be, 0x2
	CompareLastResultCall EQUAL, Script_branch_545
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Cmd_313 0x1
	End
@ 545

Script_branch_545: @ 545
	DeleteEntry
	Return
@ 549

Script_branch_549: @ 549
	Message 0x20
	Cmd_30
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_5f0
	ApplyMovement 0x800d, Movement_610
	WaitMovement
	Return
@ 564

Script_branch_564: @ 564
	Message 0x20
	Cmd_30
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_5f0
	ApplyMovement 0x800d, Movement_610
	WaitMovement
	Return
@ 57f

Script_branch_57f: @ 57f
	Message4 0x20
	Return2 0xa, 0x800c
	FriendBT2
	FriendBT 0x9b
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_604
	ApplyMovement 0x800d, Movement_624
	WaitMovement
	Return
@ 5a5

Script_branch_5a5: @ 5a5
	ApplyMovement 0xff, Movement_630
	ApplyMovement 0x800d, Movement_658
	WaitMovement
	Return
@ 5b9

Script_branch_5b9: @ 5b9
	ApplyMovement 0xff, Movement_630
	ApplyMovement 0x800d, Movement_658
	WaitMovement
	Return
@ 5cd

Script_branch_5cd: @ 5cd
	ApplyMovement 0xff, Movement_648
	ApplyMovement 0x800d, Movement_66c
	WaitMovement
	Return
@ 5e1

Script_branch_5e1: @ 5e1
	SetVar 0x40bf, 0x0
	CallStandard 0x809
	End
@ 5ed

.byte 0x0 @ 0x5ed
.byte 0x0 @ 0x5ee
.byte 0x0 @ 0x5ef

Movement_5f0: @ 5f0
	WalkUpFast 0x2
	WalkRightFast 0x1
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 604

Movement_604: @ 604
	WalkUpFast 0x4
	WaitDisappear 0x1
	EndMovement 0x0
@ 610

Movement_610: @ 610
	WalkUpFast 0x1
	WalkRightFast 0x1
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 624

Movement_624: @ 624
	WalkUpFast 0x3
	WaitDisappear 0x1
	EndMovement 0x0
@ 630

Movement_630: @ 630
	RunDown 0x2
	RunLeft 0x1
	RunDown 0x2
	SeeUp 0x1
	Move_46 0x1
	EndMovement 0x0
@ 648

Movement_648: @ 648
	RunDown 0x4
	SeeUp 0x1
	Move_46 0x1
	EndMovement 0x0
@ 658

Movement_658: @ 658
	RunDown 0x1
	RunLeft 0x1
	RunDown 0x2
	Move_46 0x1
	EndMovement 0x0
@ 66c

Movement_66c: @ 66c
	RunDown 0x3
	Move_46 0x1
	EndMovement 0x0
@ 678

Script_branch_678: @ 678
	Message 0x0
	Return
@ 67d

Script_branch_67d: @ 67d
	Message 0x3
	Return
@ 682

Script_branch_682: @ 682
	Multi2 0x1f, 0x9, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x26, 0x0
	Cmd_42 0x27, 0x1
	Message 0x1
	Return
@ 69a

Script_branch_69a: @ 69a
	Multi2 0x1f, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x28, 0x4
	Message 0x4
	Return
@ 6ae

Script_branch_6ae: @ 6ae
	Message 0x2
	Return
@ 6b3

Script_branch_6b3: @ 6b3
	Message 0x5
	Return
@ 6b8

Script_2: @ 6b8
	Cmd_313 0x0
	SetVar 0x4003, 0x1
	SetVar 0x40bf, 0x0
	Message 0x21
	Call Script_branch_448
	Call Function_6df
	Jump Script_branch_4a9
@ 6dd

.byte 0x2 @ 0x6dd
.byte 0x0 @ 0x6de

Function_6df: @ 6df
	ShowClockSave
	CheckSaveData 0x800c
	HideClockSave
	PlayFanfare 0x61b
	WaitFanfare 0x61b
	Return
@ 6f1

Script_3: @ 6f1
	Message 0x22
	Cmd_2dc 0x40be
	Jump Script_branch_145
@ 6fe

.byte 0x2 @ 0x6fe
.byte 0x0 @ 0x6ff

Script_4: @ 700
	If 0x40be, 0x0
	CompareLastResultCall EQUAL, Script_branch_73c
	If 0x40be, 0x1
	CompareLastResultCall EQUAL, Script_branch_73c
	If 0x4053, 0x1
	CompareLastResultCall EQUAL, Script_branch_742
	If 0x4053, 0x3
	CompareLastResultCall EQUAL, Script_branch_759
	Jump Script_branch_145
@ 73a

.byte 0x2 @ 0x73a
.byte 0x0 @ 0x73b

Script_branch_73c: @ 73c
	Cmd_30a 0x29
	Return
@ 742

Script_branch_742: @ 742
	Message 0x23
	SetVarHero 0x0
	Message 0x25
	Soundfr 0x486
	Cmd_4f
	SetVar 0x4053, 0x2
	Return
@ 759

Script_branch_759: @ 759
	Message 0x23
	SetVarHero 0x0
	Message 0x24
	Soundfr 0x486
	Cmd_4f
	SetVar 0x4053, 0x4
	CallStandard 0x806
	Return
@ 774

Script_5: @ 774
	Jump Script_branch_145
@ 77a

.byte 0x2 @ 0x77a
.byte 0x0 @ 0x77b
.byte 0xc @ 0x77c
.byte 0x0 @ 0x77d
.byte 0x2 @ 0x77e
.byte 0x0 @ 0x77f
.byte 0x3f @ 0x780
.byte 0x0 @ 0x781
.byte 0x1 @ 0x782
.byte 0x0 @ 0x783
.byte 0xc @ 0x784
.byte 0x0 @ 0x785
.byte 0x1 @ 0x786
.byte 0x0 @ 0x787
.byte 0xfe @ 0x788
.byte 0x0 @ 0x789
.byte 0x0 @ 0x78a
.byte 0x0 @ 0x78b
.byte 0xc @ 0x78c
.byte 0x0 @ 0x78d
.byte 0x2 @ 0x78e
.byte 0x0 @ 0x78f
.byte 0x3f @ 0x790
.byte 0x0 @ 0x791
.byte 0x1 @ 0x792
.byte 0x0 @ 0x793
.byte 0xc @ 0x794
.byte 0x0 @ 0x795
.byte 0x1 @ 0x796
.byte 0x0 @ 0x797
.byte 0xfe @ 0x798
.byte 0x0 @ 0x799
.byte 0x0 @ 0x79a
.byte 0x0 @ 0x79b

Script_7: @ 79c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7af

Script_8: @ 7af
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7c2

Script_9: @ 7c2
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x30
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7d5

Script_10: @ 7d5
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x31
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7e8

Script_11: @ 7e8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x32
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7fb

Script_12: @ 7fb
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x33
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 80e

Script_13: @ 80e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x34
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 821

Script_14: @ 821
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x35
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 834

Script_16: @ 834
	PlayFanfare 0x5dc
	LockAll
	Message 0x36
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 845

Script_17: @ 845
	PlayFanfare 0x5dc
	LockAll
	Message 0x37
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 856

.byte 0x0 @ 0x856
.byte 0x0 @ 0x857

@ end_0x858
