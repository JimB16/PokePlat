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
	.hword 0xfd13
@ 5a

Script_22: @ 5a
	Cmd_325 0x4000
	If 0x4000, 0xb
	CompareLastResultCall 0x4, Script_branch_90
	If 0x4000, 0x65
	CompareLastResultCall 0x4, Script_branch_7a
	End
@ 7a

Script_branch_7a: @ 7a
	ChangeOwPosition 0xc, 0x8, 0xb
	SetOwPosition 0xc, 0x8, 0x0, 0xb, 0x2
	Return
@ 90

Script_branch_90: @ 90
	ChangeOwPosition 0xc, 0xd, 0xb
	SetOwPosition 0xc, 0xd, 0x0, 0xb, 0x2
	Return
@ a6

Script_21: @ a6
	If 0x40ba, 0x1
	CompareLastResultJump EQUAL, Script_branch_b5
	End
@ b5

Script_branch_b5: @ b5
	Call Function_15d
	CheckIdPlayer 0x4007, 0x64
	CheckFlag 0x2cb
	CompareLastResultCall LESSER, Script_branch_db
	If 0x4007, 0x1e
	CompareLastResultJump LESSER, Script_branch_e5
	End
@ db

Script_branch_db: @ db
	RemovePeople 0xd
	SetFlag 0x2cb
	Return
@ e5

Script_branch_e5: @ e5
	CheckFlag 0xac4
	CompareLastResultJump LESSER, Script_branch_f2
	End
@ f2

Script_branch_f2: @ f2
	SetFlag 0xac4
	Cmd_326 0x4008
	If 0x4008, 0x2710
	CompareLastResultJump 0x4, Script_branch_123
	If 0x4008, 0x3e8
	CompareLastResultJump 0x4, Script_branch_131
	If 0x4008, 0x1f4
	CompareLastResultJump 0x4, Script_branch_13f
	End
@ 123

Script_branch_123: @ 123
	CheckIdPlayer 0x4063, 0x4
	Jump Script_branch_14d
	End
@ 131

Script_branch_131: @ 131
	CheckIdPlayer 0x4063, 0x2
	Jump Script_branch_14d
	End
@ 13f

Script_branch_13f: @ 13f
	SetVar 0x4063, 0x0
	Jump Script_branch_14d
	End
@ 14d

Script_branch_14d: @ 14d
	ClearFlag 0x2cb
	Call Function_1df
	AddPeople 0xd
	End
@ 15d

Function_15d: @ 15d
	CheckFlag 0x2c1
	CompareLastResultCall LESSER, Script_branch_19c
	CheckStatusPhraseBox 0xe, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_196
	Cmd_32a 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_196
	ClearFlag 0x2c1
	AddPeople 0xa
	Return
@ 196

Script_branch_196: @ 196
	SetFlag 0x2c1
	Return
@ 19c

Script_branch_19c: @ 19c
	RemovePeople 0xa
	SetFlag 0x2c1
	Return
@ 1a6

Script_16: @ 1a6
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultCall EQUAL, Script_branch_25d
	If 0x4000, 0x1
	CompareLastResultCall EQUAL, Script_branch_265
	Call Function_1df
	CheckStatusPhraseBox 0xe, 0x4000
	If 0x4000, 0x0
	CompareLastResultCall EQUAL, Script_branch_196
	End
@ 1df

Function_1df: @ 1df
	If 0x4063, 0x0
	CompareLastResultCall EQUAL, Script_branch_215
	If 0x4063, 0x1
	CompareLastResultCall EQUAL, Script_branch_245
	If 0x4063, 0x2
	CompareLastResultCall EQUAL, Script_branch_24d
	If 0x4063, 0x3
	CompareLastResultCall EQUAL, Script_branch_255
	Return
@ 215

Script_branch_215: @ 215
	CheckGender 0x4009
	If 0x4009, 0x0
	CompareLastResultJump EQUAL, Script_branch_235
	If 0x4009, 0x1
	CompareLastResultJump EQUAL, Script_branch_23d
	Return
@ 235

Script_branch_235: @ 235
	SetVar 0x4021, 0x61
	Return
@ 23d

Script_branch_23d: @ 23d
	SetVar 0x4021, 0x0
	Return
@ 245

Script_branch_245: @ 245
	SetVar 0x4021, 0x8c
	Return
@ 24d

Script_branch_24d: @ 24d
	SetVar 0x4021, 0xa6
	Return
@ 255

Script_branch_255: @ 255
	SetVar 0x4021, 0xa7
	Return
@ 25d

Script_branch_25d: @ 25d
	SetVar 0x4023, 0x7
	Return
@ 265

Script_branch_265: @ 265
	SetVar 0x4023, 0x4
	Return
@ 26d

Script_1: @ 26d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x4003, 0x0
	SetVar 0x4004, 0x0
	Jump Script_branch_2a5
	End
@ 289

Script_6: @ 289
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x4003, 0x0
	SetVar 0x4004, 0x1
	Jump Script_branch_2a5
	End
@ 2a5

Script_branch_2a5: @ 2a5
	Cmd_313 0x0
	If 0x4004, 0x0
	CompareLastResultCall EQUAL, Script_branch_874
	If 0x4004, 0x1
	CompareLastResultCall EQUAL, Script_branch_879
	Jump Script_branch_2cb
	End
@ 2cb

Script_branch_2cb: @ 2cb
	If 0x4004, 0x0
	CompareLastResultCall EQUAL, Script_branch_87e
	If 0x4004, 0x1
	CompareLastResultCall EQUAL, Script_branch_896
	Cmd_42 0x13, 0x2
	Cmd_42 0x14, 0x3
	CloseMulti
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_366
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_389
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_32b
	If 0x800c, 0x4
	CompareLastResultJump EQUAL, Script_branch_3ac
	Jump Script_branch_34d
	End
@ 32b

Script_branch_32b: @ 32b
	If 0x4004, 0x0
	CompareLastResultCall EQUAL, Script_branch_8aa
	If 0x4004, 0x1
	CompareLastResultCall EQUAL, Script_branch_8af
	Jump Script_branch_2cb
	End
@ 34d

Script_branch_34d: @ 34d
	Jump Script_branch_355
	End
@ 355

Script_branch_355: @ 355
	SetVar 0x40ba, 0x0
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 366

Script_branch_366: @ 366
	SetVar 0x40bb, 0x0
	CheckPokeCastle 0x0, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3cf
	Jump Script_branch_3f5
	End
@ 389

Script_branch_389: @ 389
	SetVar 0x40bb, 0x1
	CheckPokeCastle 0x0, 0x2, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3e2
	Jump Script_branch_3f5
	End
@ 3ac

Script_branch_3ac: @ 3ac
	SetVar 0x40bb, 0x2
	CheckPokeCastle 0x0, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3cf
	Jump Script_branch_3f5
	End
@ 3cf

Script_branch_3cf: @ 3cf
	Message 0x23
	BCastleFunctReturn 0x25, 0x1, 0x0, 0x0
	Jump Script_branch_34d
	End
@ 3e2

Script_branch_3e2: @ 3e2
	Message 0x24
	BCastleFunctReturn 0x25, 0x2, 0x0, 0x0
	Jump Script_branch_34d
	End
@ 3f5

Script_branch_3f5: @ 3f5
	Message 0x21
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CheckPokeCastle 0x4, 0x40bb, 0x800c
	Cmd_2d0 0x4002, 0x4005
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x4002, 0xff
	CompareLastResultJump EQUAL, Script_branch_34d
	Cmd_31e 0x4002, 0x800c
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_7c8
	Cmd_31e 0x4005, 0x800c
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_7c8
	CheckPokeEgg 0x4002, 0x4001
	If 0x4001, 0x0
	CompareLastResultJump EQUAL, Script_branch_34d
	CheckPokeCastle 0x1, 0x40bb, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_4f4
	CheckPokeCastle 0x2, 0x40bb, 0x800c
	SetVarPokeStored 0x0, 0x800c, 0x0, 0x0
	If2 0x800c, 0x4001
	CompareLastResultJump EQUAL, Script_branch_4f4
	Jump Script_branch_4a2
	End
@ 4a2

Script_branch_4a2: @ 4a2
	SetVarPokeStored 0x1, 0x4001, 0x0, 0x0
	Message 0x22
	Multi3 0x19, 0xd, 0x1, 0x1, 0x800c
	TxtMsgScrpMulti 0x29, 0xff, 0x0
	TxtMsgScrpMulti 0x2a, 0xff, 0x1
	Cmd_327 0x6
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_4e4
	Jump Script_branch_34d
	End
@ 4e4

Script_branch_4e4: @ 4e4
	CheckPokeCastle 0x3, 0x40bb, 0x800c
	Jump Script_branch_4f4
	End
@ 4f4

Script_branch_4f4: @ 4f4
	Jump Script_branch_4fc
	End
@ 4fc

Script_branch_4fc: @ 4fc
	If 0x40bb, 0x0
	CompareLastResultCall EQUAL, Script_branch_673
	If 0x40bb, 0x1
	CompareLastResultCall EQUAL, Script_branch_673
	SetVar 0x4000, 0x0
	HealPokemon
	CallStandard 0x7d6
	CopyVar 0x800c, 0x4000
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_34d
	If 0x40bb, 0x2
	CompareLastResultJump EQUAL, Script_branch_54a
	Jump Script_branch_690
	End
@ 54a

Script_branch_54a: @ 54a
	Message 0x1e
	Multi 0x1e, 0x1, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xd, 0x0
	Cmd_42 0xe, 0x1
	Cmd_42 0x5, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_58e
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_5e2
	Jump Script_branch_34d
	End
@ 58e

Script_branch_58e: @ 58e
	Message 0x1f
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_54a
	CloseMsgOnKeyPress
	ChsFriend 0x1e, 0x0, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_5d0
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_5d8
	Jump Script_branch_636
	End
@ 5d0

Script_branch_5d0: @ 5d0
	Jump Script_branch_54a
	End
@ 5d8

Script_branch_5d8: @ 5d8
	DeleteEntry
	Jump Script_branch_54a
	End
@ 5e2

Script_branch_5e2: @ 5e2
	Message 0x1f
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_54a
	CloseMsgOnKeyPress
	WireBattleWait 0x1e, 0x0, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_624
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_62c
	Jump Script_branch_636
	End
@ 624

Script_branch_624: @ 624
	Jump Script_branch_54a
	End
@ 62c

Script_branch_62c: @ 62c
	DeleteEntry
	Jump Script_branch_54a
	End
@ 636

Script_branch_636: @ 636
	FriendBT2
	FriendBT 0x6c
	ChooseWirePokeBCastle 0x4001, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_67b
	FriendBT2
	FriendBT 0x6e
	Message 0x20
	If 0x40bb, 0x2
	CompareLastResultCall EQUAL, Script_branch_673
	Call Function_8db
	Jump Script_branch_690
	End
@ 673

Function_673: @ 673
Script_branch_673: @ 673
	SetVar 0x40ba, 0xff
	Return
@ 67b

Script_branch_67b: @ 67b
	Call Function_68c
	Message 0x39
	Jump Script_branch_34d
	End
@ 68c

Function_68c: @ 68c
	DeleteEntry
	Return
@ 690

Script_branch_690: @ 690
	If 0x40bb, 0x0
	CompareLastResultCall EQUAL, Script_branch_730
	If 0x40bb, 0x1
	CompareLastResultCall EQUAL, Script_branch_74b
	If 0x40bb, 0x2
	CompareLastResultCall EQUAL, Script_branch_766
	PlayFanfare 0x603
	Jump Script_branch_6c3
	End
@ 6c3

Script_branch_6c3: @ 6c3
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	If 0x40bb, 0x0
	CompareLastResultCall EQUAL, Script_branch_78c
	If 0x40bb, 0x1
	CompareLastResultCall EQUAL, Script_branch_7a0
	If 0x40bb, 0x2
	CompareLastResultCall EQUAL, Script_branch_7b4
	RandomEvent 0x3a
	DeActivateLeader 0x27, 0x0, 0x0, 0x0, 0x0
	PreWfc
	ShowBTowerSome 0x9
	If 0x40bb, 0x2
	CompareLastResultCall EQUAL, Script_branch_72c
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Cmd_313 0x1
	End
@ 72c

Script_branch_72c: @ 72c
	DeleteEntry
	Return
@ 730

Script_branch_730: @ 730
	Message 0x9
	Cmd_30
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_7d4
	ApplyMovement 0x800d, Movement_7fc
	WaitMovement
	Return
@ 74b

Script_branch_74b: @ 74b
	Message 0x9
	Cmd_30
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_7d4
	ApplyMovement 0x800d, Movement_7fc
	WaitMovement
	Return
@ 766

Script_branch_766: @ 766
	Message4 0x9
	Return2 0xa, 0x800c
	FriendBT2
	FriendBT 0x6d
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_7e4
	ApplyMovement 0x800d, Movement_80c
	WaitMovement
	Return
@ 78c

Script_branch_78c: @ 78c
	ApplyMovement 0xff, Movement_824
	ApplyMovement 0x800d, Movement_854
	WaitMovement
	Return
@ 7a0

Script_branch_7a0: @ 7a0
	ApplyMovement 0xff, Movement_824
	ApplyMovement 0x800d, Movement_854
	WaitMovement
	Return
@ 7b4

Script_branch_7b4: @ 7b4
	ApplyMovement 0xff, Movement_838
	ApplyMovement 0x800d, Movement_864
	WaitMovement
	Return
@ 7c8

Script_branch_7c8: @ 7c8
	SetVar 0x40ba, 0x0
	CallStandard 0x809
	End
@ 7d4

Movement_7d4: @ 7d4
	WalkLeftFast 0x4
	WalkDownFast 0x3
	WaitDisappear 0x1
	EndMovement 0x0
@ 7e4

Movement_7e4: @ 7e4
	WalkLeftFast 0x2
	WalkUpFast 0x1
	WalkLeftFast 0x2
	WalkDownFast 0x3
	WaitDisappear 0x1
	EndMovement 0x0
@ 7fc

Movement_7fc: @ 7fc
	WalkLeftFast 0x3
	WalkDownFast 0x3
	WaitDisappear 0x1
	EndMovement 0x0
@ 80c

Movement_80c: @ 80c
	WalkLeftFast 0x1
	WalkUpFast 0x1
	WalkLeftFast 0x2
	WalkDownFast 0x3
	WaitDisappear 0x1
	EndMovement 0x0
@ 824

Movement_824: @ 824
	RunRight 0x4
	RunUp 0x3
	SeeLeft 0x1
	Move_46 0x1
	EndMovement 0x0
@ 838

Movement_838: @ 838
	RunRight 0x2
	RunDown 0x1
	RunRight 0x2
	RunUp 0x3
	SeeLeft 0x1
	Move_46 0x1
	EndMovement 0x0
@ 854

Movement_854: @ 854
	RunUp 0x3
	RunRight 0x3
	Move_46 0x1
	EndMovement 0x0
@ 864

Movement_864: @ 864
	RunUp 0x2
	RunRight 0x3
	Move_46 0x1
	EndMovement 0x0
@ 874

Script_branch_874: @ 874
	Message 0x0
	Return
@ 879

Script_branch_879: @ 879
	Message 0x3
	Return
@ 87e

Script_branch_87e: @ 87e
	Multi2 0x1f, 0x9, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x10, 0x0
	Cmd_42 0x11, 0x1
	Message 0x1
	Return
@ 896

Script_branch_896: @ 896
	Multi2 0x1f, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0x12, 0x4
	Message 0x4
	Return
@ 8aa

Script_branch_8aa: @ 8aa
	Message 0x2
	Return
@ 8af

Script_branch_8af: @ 8af
	Message 0x5
	Return
@ 8b4

Script_2: @ 8b4
	Cmd_313 0x0
	SetVar 0x4003, 0x1
	SetVar 0x40ba, 0x0
	Message 0xb
	Call Script_branch_673
	Call Function_8db
	Jump Script_branch_690
	End
@ 8db

Function_8db: @ 8db
	ShowClockSave
	CheckSaveData 0x800c
	HideClockSave
	PlayFanfare 0x61b
	WaitFanfare 0x61b
	Return
@ 8ed

Script_3: @ 8ed
	Message 0xc
	Cmd_2d1 0x40bb
	Jump Script_branch_34d
	End
@ 8fc

Script_4: @ 8fc
	If 0x40bb, 0x0
	CompareLastResultCall EQUAL, Script_branch_938
	If 0x40bb, 0x1
	CompareLastResultCall EQUAL, Script_branch_938
	If 0x4051, 0x1
	CompareLastResultCall EQUAL, Script_branch_93e
	If 0x4051, 0x3
	CompareLastResultCall EQUAL, Script_branch_955
	Jump Script_branch_34d
	End
@ 938

Script_branch_938: @ 938
	Cmd_30a 0x28
	Return
@ 93e

Script_branch_93e: @ 93e
	Message 0xd
	SetVarHero 0x0
	Message 0xf
	Soundfr 0x486
	Cmd_4f
	SetVar 0x4051, 0x2
	Return
@ 955

Script_branch_955: @ 955
	Message 0xd
	SetVarHero 0x0
	Message 0xe
	Soundfr 0x486
	Cmd_4f
	SetVar 0x4051, 0x4
	CallStandard 0x806
	Return
@ 970

Script_5: @ 970
	Jump Script_branch_34d
	End
@ 978

.byte 0xc @ 0x978
.byte 0x0 @ 0x979
.byte 0x2 @ 0x97a
.byte 0x0 @ 0x97b
.byte 0x3f @ 0x97c
.byte 0x0 @ 0x97d
.byte 0x1 @ 0x97e
.byte 0x0 @ 0x97f
.byte 0xc @ 0x980
.byte 0x0 @ 0x981
.byte 0x1 @ 0x982
.byte 0x0 @ 0x983
.byte 0xfe @ 0x984
.byte 0x0 @ 0x985
.byte 0x0 @ 0x986
.byte 0x0 @ 0x987
.byte 0xc @ 0x988
.byte 0x0 @ 0x989
.byte 0x2 @ 0x98a
.byte 0x0 @ 0x98b
.byte 0x3f @ 0x98c
.byte 0x0 @ 0x98d
.byte 0x1 @ 0x98e
.byte 0x0 @ 0x98f
.byte 0xc @ 0x990
.byte 0x0 @ 0x991
.byte 0x1 @ 0x992
.byte 0x0 @ 0x993
.byte 0xfe @ 0x994
.byte 0x0 @ 0x995
.byte 0x0 @ 0x996
.byte 0x0 @ 0x997

Script_7: @ 998
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9ab

Script_8: @ 9ab
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9be

Script_9: @ 9be
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9d1

Script_10: @ 9d1
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x1a1, 0x0
	Message 0x3e
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9f0

Script_11: @ 9f0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a03

Script_12: @ a03
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x40
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a16

Script_13: @ a16
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x41
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a29

Script_14: @ a29
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x42
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a3c

Script_15: @ a3c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x43
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a4f

Script_17: @ a4f
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xbe
	CompareLastResultJump LESSER, Script_branch_ad7
	Cmd_324 0x1, 0x2, 0x3, 0x4, 0x4062, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_aad
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_ab8
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_ac9
	SetVarHero 0x0
	Message 0x45
	Message 0x46
	Soundfr 0x4c5
	Message 0x48
	Cmd_4f
	Jump Script_branch_ae6
	End
@ aad

Script_branch_aad: @ aad
	Message 0x44
	Jump Script_branch_ae6
	End
@ ab8

Script_branch_ab8: @ ab8
	SetVarHero 0x0
	Message 0x49
	Message 0x47
	Jump Script_branch_ae6
	End
@ ac9

Script_branch_ac9: @ ac9
	SetVarHero 0x0
	Message 0x4a
	Jump Script_branch_ae6
	End
@ ad7

Script_branch_ad7: @ ad7
	SetFlag 0xbe
	Message 0x44
	Jump Script_branch_ae6
	End
@ ae6

Script_branch_ae6: @ ae6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ aee

Script_18: @ aee
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_c22
	Jump Script_branch_b0f
	End
@ b0f

Script_branch_b0f: @ b0f
	SetVarHero 0x0
	Cmd_325 0x8005
	If 0x8005, 0x1db
	CompareLastResultJump 0x4, Script_branch_b96
	If 0x8005, 0x15f
	CompareLastResultJump 0x4, Script_branch_ba1
	If 0x8005, 0xfb
	CompareLastResultJump 0x4, Script_branch_bac
	If 0x8005, 0x97
	CompareLastResultJump 0x4, Script_branch_bb7
	If 0x8005, 0x65
	CompareLastResultJump 0x4, Script_branch_bc2
	If 0x8005, 0x33
	CompareLastResultJump 0x4, Script_branch_bcd
	If 0x8005, 0x1f
	CompareLastResultJump 0x4, Script_branch_bd8
	If 0x8005, 0xb
	CompareLastResultJump 0x4, Script_branch_be3
	If 0x8005, 0x1
	CompareLastResultJump 0x4, Script_branch_bee
	Message 0x4b
	Jump Script_branch_bf9
	End
@ b96

Script_branch_b96: @ b96
	Message 0x54
	Jump Script_branch_bf9
	End
@ ba1

Script_branch_ba1: @ ba1
	Message 0x53
	Jump Script_branch_bf9
	End
@ bac

Script_branch_bac: @ bac
	Message 0x52
	Jump Script_branch_bf9
	End
@ bb7

Script_branch_bb7: @ bb7
	Message 0x51
	Jump Script_branch_bf9
	End
@ bc2

Script_branch_bc2: @ bc2
	Message 0x50
	Jump Script_branch_bf9
	End
@ bcd

Script_branch_bcd: @ bcd
	Message 0x4f
	Jump Script_branch_bf9
	End
@ bd8

Script_branch_bd8: @ bd8
	Message 0x4e
	Jump Script_branch_bf9
	End
@ be3

Script_branch_be3: @ be3
	Message 0x4d
	Jump Script_branch_bf9
	End
@ bee

Script_branch_bee: @ bee
	Message 0x4c
	Jump Script_branch_bf9
	End
@ bf9

Script_branch_bf9: @ bf9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c01

Script_19: @ c01
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckGender 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_b0f
	Jump Script_branch_c22
	End
@ c22

Script_branch_c22: @ c22
	SetVarHero 0x0
	Cmd_325 0x8005
	If 0x8005, 0x1db
	CompareLastResultJump 0x4, Script_branch_ca9
	If 0x8005, 0x15f
	CompareLastResultJump 0x4, Script_branch_cb4
	If 0x8005, 0xfb
	CompareLastResultJump 0x4, Script_branch_cbf
	If 0x8005, 0x97
	CompareLastResultJump 0x4, Script_branch_cca
	If 0x8005, 0x65
	CompareLastResultJump 0x4, Script_branch_cd5
	If 0x8005, 0x33
	CompareLastResultJump 0x4, Script_branch_ce0
	If 0x8005, 0x1f
	CompareLastResultJump 0x4, Script_branch_ceb
	If 0x8005, 0xb
	CompareLastResultJump 0x4, Script_branch_cf6
	If 0x8005, 0x1
	CompareLastResultJump 0x4, Script_branch_d01
	Message 0x55
	Jump Script_branch_d0c
	End
@ ca9

Script_branch_ca9: @ ca9
	Message 0x5e
	Jump Script_branch_d0c
	End
@ cb4

Script_branch_cb4: @ cb4
	Message 0x5d
	Jump Script_branch_d0c
	End
@ cbf

Script_branch_cbf: @ cbf
	Message 0x5c
	Jump Script_branch_d0c
	End
@ cca

Script_branch_cca: @ cca
	Message 0x5b
	Jump Script_branch_d0c
	End
@ cd5

Script_branch_cd5: @ cd5
	Message 0x5a
	Jump Script_branch_d0c
	End
@ ce0

Script_branch_ce0: @ ce0
	Message 0x59
	Jump Script_branch_d0c
	End
@ ceb

Script_branch_ceb: @ ceb
	Message 0x58
	Jump Script_branch_d0c
	End
@ cf6

Script_branch_cf6: @ cf6
	Message 0x57
	Jump Script_branch_d0c
	End
@ d01

Script_branch_d01: @ d01
	Message 0x56
	Jump Script_branch_d0c
	End
@ d0c

Script_branch_d0c: @ d0c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ d14

Script_20: @ d14
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarHero 0x0
	CopyVar 0x4001, 0x4021
	If 0x4001, 0x0
	CompareLastResultJump EQUAL, Script_branch_d68
	If 0x4001, 0x61
	CompareLastResultJump EQUAL, Script_branch_d73
	If 0x4001, 0x8c
	CompareLastResultJump EQUAL, Script_branch_d7e
	If 0x4001, 0xa6
	CompareLastResultJump EQUAL, Script_branch_d89
	If 0x4001, 0xa7
	CompareLastResultJump EQUAL, Script_branch_d94
	End
@ d68

Script_branch_d68: @ d68
	Message 0x60
	Jump Script_branch_d9f
	End
@ d73

Script_branch_d73: @ d73
	Message 0x5f
	Jump Script_branch_d9f
	End
@ d7e

Script_branch_d7e: @ d7e
	Message 0x61
	Jump Script_branch_d9f
	End
@ d89

Script_branch_d89: @ d89
	Message 0x62
	Jump Script_branch_d9f
	End
@ d94

Script_branch_d94: @ d94
	Message 0x63
	Jump Script_branch_d9f
	End
@ d9f

Script_branch_d9f: @ d9f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ da7

.byte 0x0 @ 0xda7

@ end_0xda8
