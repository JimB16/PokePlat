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
	script Script_39
	script Script_40
	script Script_41
	script Script_42
	script Script_43
	script Script_44
	script Script_45
	.hword 0xfd13
@ b6

Script_1: @ b6
	SetFlag 0x9cc
	SetFlag 0x2a1
	Cmd_2df 0x40ab
	CheckIdPlayer 0x4002, 0x5
	If 0x4002, 0x0
	CompareLastResultJump EQUAL, Script_branch_fe
	If 0x4002, 0x1
	CompareLastResultJump EQUAL, Script_branch_108
	If 0x4002, 0x2
	CompareLastResultJump EQUAL, Script_branch_112
	If 0x4002, 0x3
	CompareLastResultJump EQUAL, Script_branch_11c
	End
@ fe

Script_branch_fe: @ fe
	ChangeOwPosition 0xf, 0x1c, 0xe
	End
@ 108

Script_branch_108: @ 108
	ChangeOwPosition 0xf, 0x26, 0x8
	End
@ 112

Script_branch_112: @ 112
	ChangeOwPosition 0xf, 0x28, 0x15
	End
@ 11c

Script_branch_11c: @ 11c
	ChangeOwPosition 0xf, 0x30, 0x29
	End
@ 126

Script_2: @ 126
	LockAll
	SetVar 0x8001, 0x1
	ApplyMovement 0xff, Movement_3b0
	WaitMovement
	Jump Script_branch_15a
	End
@ 140

Script_4: @ 140
	LockAll
	SetVar 0x8001, 0x2
	ApplyMovement 0xff, Movement_3b8
	WaitMovement
	Jump Script_branch_15a
	End
@ 15a

Script_branch_15a: @ 15a
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_195
	Jump Script_branch_174
	End
@ 174

Script_branch_174: @ 174
	SetVar 0x4000, 0x0
	Jump Script_branch_994
	End
@ 182

Script_branch_182: @ 182
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_3c0
	WaitMovement
	ReleaseAll
	End
@ 195

Script_branch_195: @ 195
	SetVar 0x4000, 0x1
	Jump Script_branch_acc
	End
@ 1a3

Script_branch_1a3: @ 1a3
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_3c0
	WaitMovement
	ReleaseAll
	End
@ 1b6

Script_branch_1b6: @ 1b6
	SetVar 0x400a, 0x0
	CheckPartyNumber 0x400b
	SetVar 0x400c, 0x0
	Jump Script_branch_1ce
	End
@ 1ce

Script_branch_1ce: @ 1ce
	CheckPokeEgg 0x400a, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_26d
	If 0x4000, 0x0
	CompareLastResultCall EQUAL, Script_branch_c50
	If 0x4000, 0x1
	CompareLastResultCall EQUAL, Script_branch_d36
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_26d
	SetVarPokeNick 0x0, 0x400a
	If 0x400c, 0x0
	CompareLastResultJump EQUAL, Script_branch_229
	If 0x400c, 0x0
	CompareLastResultJump 0x5, Script_branch_24b
	End
@ 229

Script_branch_229: @ 229
	ScriptCmd_AddValue 0x400c, 0x1
	Message 0x2
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_299
	Jump Script_branch_26d
	End
@ 24b

Script_branch_24b: @ 24b
	ScriptCmd_AddValue 0x400c, 0x1
	Message 0x4
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_299
	Jump Script_branch_26d
	End
@ 26d

Script_branch_26d: @ 26d
	ScriptCmd_AddValue 0x400a, 0x1
	ScriptCmd_SubValue 0x400b, 0x1
	If 0x400b, 0x0
	CompareLastResultJump 0x5, Script_branch_1ce
	Message 0x5
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_3c0
	WaitMovement
	ReleaseAll
	End
@ 299

Script_branch_299: @ 299
	HealPokemon
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	CopyVar 0x409d, 0x400a
	CheckPokeEgg 0x400a, 0x409a
	Jump Script_branch_e48
	End
@ 2bb

Script_branch_2bb: @ 2bb
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 2c9

Script_branch_2c9: @ 2c9
	AddPeople 0x8002
	If 0x8001, 0x1
	CompareLastResultCall EQUAL, Script_branch_32a
	If 0x8001, 0x2
	CompareLastResultCall EQUAL, Script_branch_338
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetVar 0x4099, 0x1
	StartAmity
	Call Function_3dc
	SetvarAmityPokemon 0x0, 0x409d
	Message 0x3
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_3c8
	ApplyMovement 0x8002, Movement_3c8
	WaitMovement
	StartFollow
	FollowHero 0x8002, 0x30
	ReleaseAll
	End
@ 32a

Script_branch_32a: @ 32a
	SetOwPosition 0x8002, 0xc, 0x2, 0x2f, 0x2
	Return
@ 338

Script_branch_338: @ 338
	SetOwPosition 0x8002, 0x33, 0x2, 0x2f, 0x3
	Return
@ 346

.byte 0xbc @ 0x346
.byte 0x0 @ 0x347
.byte 0x6 @ 0x348
.byte 0x0 @ 0x349
.byte 0x1 @ 0x34a
.byte 0x0 @ 0x34b
.byte 0x1 @ 0x34c
.byte 0x0 @ 0x34d
.byte 0x0 @ 0x34e
.byte 0x0 @ 0x34f
.byte 0xbd @ 0x350
.byte 0x0 @ 0x351
.byte 0x2c @ 0x352
.byte 0x0 @ 0x353
.byte 0x5 @ 0x354
.byte 0x34 @ 0x355
.byte 0x0 @ 0x356
.byte 0x5e @ 0x357
.byte 0x0 @ 0x358
.byte 0xff @ 0x359
.byte 0x0 @ 0x35a
.byte 0x61 @ 0x35b
.byte 0x0 @ 0x35c
.byte 0x0 @ 0x35d
.byte 0x0 @ 0x35e
.byte 0x5f @ 0x35f
.byte 0x0 @ 0x360
.byte 0x61 @ 0x361
.byte 0x0 @ 0x362
.byte 0x2 @ 0x363
.byte 0x0 @ 0x364

Script_3: @ 365
Script_5: @ 365
	LockAll
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	StopFollow
	Jump Script_branch_37d
	End
@ 37d

Script_branch_37d: @ 37d
	RemovePeople 0x5
	Jump Script_branch_389
	End
@ 389

Script_branch_389: @ 389
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetVar 0x4099, 0x0
	Message 0x6
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_3c0
	WaitMovement
	ReleaseAll
	End
@ 3ae

.byte 0x0 @ 0x3ae
.byte 0x0 @ 0x3af

Movement_3b0: @ 3b0
	MoveLeftFast 0x1
	EndMovement 0x0
@ 3b8

Movement_3b8: @ 3b8
	MoveRightFast 0x1
	EndMovement 0x0
@ 3c0

Movement_3c0: @ 3c0
	WalkDownFast 0x1
	EndMovement 0x0
@ 3c8

Movement_3c8: @ 3c8
	WalkUpFast 0x1
	EndMovement 0x0
@ 3d0

.byte 0x55 @ 0x3d0
.byte 0x0 @ 0x3d1
.byte 0x2 @ 0x3d2
.byte 0x0 @ 0x3d3
.byte 0x2 @ 0x3d4
.byte 0x0 @ 0x3d5
.byte 0x1 @ 0x3d6
.byte 0x0 @ 0x3d7
.byte 0xfe @ 0x3d8
.byte 0x0 @ 0x3d9
.byte 0x0 @ 0x3da
.byte 0x0 @ 0x3db

Function_3dc: @ 3dc
	CheckIdPlayer 0x800c, 0x5
	If 0x800c, 0x0
	CompareLastResultCall EQUAL, Script_branch_40a
	If 0x800c, 0x0
	CompareLastResultCall 0x5, Script_branch_412
	Cmd_217 0x409c, 0x409a
	Jump Script_branch_41a
	End
@ 40a

Script_branch_40a: @ 40a
	SetVar 0x409b, 0x0
	Return
@ 412

Script_branch_412: @ 412
	SetVar 0x409b, 0x1
	Return
@ 41a

Script_branch_41a: @ 41a
	CheckIdPlayer 0x800c, 0x64
	If 0x800c, 0x14
	CompareLastResultJump LESSER, Script_branch_490
	If 0x800c, 0x23
	CompareLastResultJump LESSER, Script_branch_498
	If 0x800c, 0x32
	CompareLastResultJump LESSER, Script_branch_4a0
	If 0x800c, 0x41
	CompareLastResultJump LESSER, Script_branch_4a8
	If 0x800c, 0x48
	CompareLastResultJump LESSER, Script_branch_4b0
	If 0x800c, 0x4f
	CompareLastResultJump LESSER, Script_branch_4b8
	If 0x800c, 0x56
	CompareLastResultJump LESSER, Script_branch_4c0
	If 0x800c, 0x5d
	CompareLastResultJump LESSER, Script_branch_4c8
	Jump Script_branch_4d0
	End
@ 490

Script_branch_490: @ 490
	SetVar 0x409f, 0xb0
	Return
@ 498

Script_branch_498: @ 498
	SetVar 0x409f, 0xaf
	Return
@ 4a0

Script_branch_4a0: @ 4a0
	SetVar 0x409f, 0xb1
	Return
@ 4a8

Script_branch_4a8: @ 4a8
	SetVar 0x409f, 0xb2
	Return
@ 4b0

Script_branch_4b0: @ 4b0
	SetVar 0x409f, 0xb3
	Return
@ 4b8

Script_branch_4b8: @ 4b8
	SetVar 0x409f, 0xb4
	Return
@ 4c0

Script_branch_4c0: @ 4c0
	SetVar 0x409f, 0xb5
	Return
@ 4c8

Script_branch_4c8: @ 4c8
	SetVar 0x409f, 0xb6
	Return
@ 4d0

Script_branch_4d0: @ 4d0
	SetVar 0x409f, 0xb7
	Return
@ 4d8

Script_branch_4d8: @ 4d8
	CopyVar 0x8000, 0x409b
	StartAmity
	Call Function_3dc
	If 0x8000, 0x0
	CompareLastResultJump EQUAL, Script_branch_4fb
	Jump Script_branch_56c
	End
@ 4fb

Script_branch_4fb: @ 4fb
	CopyVar 0x8004, 0x409f
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_595
	Jump Script_branch_54d
	End
@ 524

Script_branch_524: @ 524
	CopyVar 0x8004, 0x409f
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5dd
	Jump Script_branch_54d
	End
@ 54d

Script_branch_54d: @ 54d
	PlayCry 0x409a, 0x0
	Message 0x16
	WaitCry
	SetvarAmityPokemon 0x1, 0x8004
	RandomEvent 0x33
	CallStandard 0x7e0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 56c

Script_branch_56c: @ 56c
	CopyVar 0x8004, 0x409c
	SetVar 0x8005, 0x1
	CheckAccessories 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_524
	Jump Script_branch_5be
	End
@ 595

Script_branch_595: @ 595
	CopyVar 0x8004, 0x409c
	SetVar 0x8005, 0x1
	CheckAccessories 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5dd
	Jump Script_branch_5be
	End
@ 5be

Script_branch_5be: @ 5be
	PlayCry 0x409a, 0x0
	Message 0x16
	WaitCry
	SetvarAmityPokemon 0x2, 0x8004
	RandomEvent 0x33
	CallStandard 0x7df
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5dd

Script_branch_5dd: @ 5dd
	SetVarPokeNick 0x0, 0x409d
	PlayCry 0x409a, 0x0
	If 0x409a, 0x184
	CompareLastResultJump EQUAL, Script_branch_719
	If 0x409a, 0x185
	CompareLastResultJump EQUAL, Script_branch_719
	If 0x409a, 0x187
	CompareLastResultJump EQUAL, Script_branch_719
	If 0x409a, 0x188
	CompareLastResultJump EQUAL, Script_branch_719
	If 0x409a, 0x18a
	CompareLastResultJump EQUAL, Script_branch_719
	If 0x409a, 0x18b
	CompareLastResultJump EQUAL, Script_branch_719
	CheckIdPlayer 0x800c, 0x9
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6ac
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_6b7
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_6c2
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_6cd
	If 0x800c, 0x4
	CompareLastResultJump EQUAL, Script_branch_6d8
	If 0x800c, 0x5
	CompareLastResultJump EQUAL, Script_branch_6e3
	If 0x800c, 0x6
	CompareLastResultJump EQUAL, Script_branch_6ee
	If 0x800c, 0x7
	CompareLastResultJump EQUAL, Script_branch_6f9
	Jump Script_branch_704
	End
@ 6ac

Script_branch_6ac: @ 6ac
	Message 0xd
	Jump Script_branch_70f
	End
@ 6b7

Script_branch_6b7: @ 6b7
	Message 0xe
	Jump Script_branch_70f
	End
@ 6c2

Script_branch_6c2: @ 6c2
	Message 0xf
	Jump Script_branch_70f
	End
@ 6cd

Script_branch_6cd: @ 6cd
	Message 0x10
	Jump Script_branch_70f
	End
@ 6d8

Script_branch_6d8: @ 6d8
	Message 0x11
	Jump Script_branch_70f
	End
@ 6e3

Script_branch_6e3: @ 6e3
	Message 0x12
	Jump Script_branch_70f
	End
@ 6ee

Script_branch_6ee: @ 6ee
	Message 0x13
	Jump Script_branch_70f
	End
@ 6f9

Script_branch_6f9: @ 6f9
	Message 0x14
	Jump Script_branch_70f
	End
@ 704

Script_branch_704: @ 704
	Message 0x15
	Jump Script_branch_70f
	End
@ 70f

Script_branch_70f: @ 70f
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 719

Script_branch_719: @ 719
	CheckIdPlayer 0x800c, 0x9
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_78f
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_79a
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_7a5
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_7b0
	If 0x800c, 0x4
	CompareLastResultJump EQUAL, Script_branch_7bb
	If 0x800c, 0x5
	CompareLastResultJump EQUAL, Script_branch_7c6
	If 0x800c, 0x6
	CompareLastResultJump EQUAL, Script_branch_7d1
	If 0x800c, 0x7
	CompareLastResultJump EQUAL, Script_branch_7dc
	Jump Script_branch_7e7
	End
@ 78f

Script_branch_78f: @ 78f
	Message 0x17
	Jump Script_branch_70f
	End
@ 79a

Script_branch_79a: @ 79a
	Message 0xe
	Jump Script_branch_70f
	End
@ 7a5

Script_branch_7a5: @ 7a5
	Message 0xf
	Jump Script_branch_70f
	End
@ 7b0

Script_branch_7b0: @ 7b0
	Message 0x18
	Jump Script_branch_70f
	End
@ 7bb

Script_branch_7bb: @ 7bb
	Message 0x11
	Jump Script_branch_70f
	End
@ 7c6

Script_branch_7c6: @ 7c6
	Message 0x19
	Jump Script_branch_70f
	End
@ 7d1

Script_branch_7d1: @ 7d1
	Message 0x1a
	Jump Script_branch_70f
	End
@ 7dc

Script_branch_7dc: @ 7dc
	Message 0x1b
	Jump Script_branch_70f
	End
@ 7e7

Script_branch_7e7: @ 7e7
	Message 0x15
	Jump Script_branch_70f
	End
@ 7f2

Script_7: @ 7f2
	SetVar 0x400a, 0x0
	Jump Script_branch_80e
	End
@ 800

Script_8: @ 800
	SetVar 0x400a, 0x1
	Jump Script_branch_80e
	End
@ 80e

Script_branch_80e: @ 80e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarPokeNick 0x0, 0x409d
	CheckIdPlayer 0x800c, 0x6
	If 0x800c, 0x0
	CompareLastResultCall EQUAL, Script_branch_884
	If 0x800c, 0x1
	CompareLastResultCall EQUAL, Script_branch_889
	If 0x800c, 0x2
	CompareLastResultCall EQUAL, Script_branch_88e
	If 0x800c, 0x3
	CompareLastResultCall EQUAL, Script_branch_893
	If 0x800c, 0x4
	CompareLastResultCall EQUAL, Script_branch_898
	If 0x800c, 0x5
	CompareLastResultCall EQUAL, Script_branch_89d
	If 0x400a, 0x0
	CompareLastResultJump EQUAL, Script_branch_8a2
	Jump Script_branch_8b4
	End
@ 884

Script_branch_884: @ 884
	Message 0x7
	Return
@ 889

Script_branch_889: @ 889
	Message 0x8
	Return
@ 88e

Script_branch_88e: @ 88e
	Message 0x9
	Return
@ 893

Script_branch_893: @ 893
	Message 0xa
	Return
@ 898

Script_branch_898: @ 898
	Message 0xb
	Return
@ 89d

Script_branch_89d: @ 89d
	Message 0xc
	Return
@ 8a2

Script_branch_8a2: @ 8a2
	WaitButton
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_8c8
	WaitMovement
	ReleaseAll
	End
@ 8b4

Script_branch_8b4: @ 8b4
	WaitButton
	CloseMsgOnKeyPress
	ApplyMovement 0x1, Movement_8d0
	WaitMovement
	ReleaseAll
	End
@ 8c6

.byte 0x0 @ 0x8c6
.byte 0x0 @ 0x8c7

Movement_8c8: @ 8c8
	SeeRight 0x1
	EndMovement 0x0
@ 8d0

Movement_8d0: @ 8d0
	SeeLeft 0x1
	EndMovement 0x0
@ 8d8

Script_9: @ 8d8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 8eb

Script_10: @ 8eb
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x1a9, 0x0
	Message 0x1d
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 90a

Script_11: @ 90a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 91d

Script_12: @ 91d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1f
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 930

Script_13: @ 930
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x20
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 943

Script_14: @ 943
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x19, 0x0
	Message 0x21
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 962

Script_15: @ 962
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x22
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 975

Script_16: @ 975
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x23, 0x0
	Message 0x23
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 994

Script_branch_994: @ 994
	CheckPokeParty 0x800c, 0x19
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x23
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x36
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x1a1
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x1a9
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x1ab
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x1b8
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x183
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x184
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x185
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x186
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x187
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x188
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x189
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x18a
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x18b
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	Jump Script_branch_182
	End
@ acc

Script_branch_acc: @ acc
	CheckPokeParty 0x800c, 0x19
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x23
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x36
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x1a1
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x1a9
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x1ab
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x1b8
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x27
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0xff
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x12c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x11d
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x183
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x184
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x185
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x186
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x187
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x188
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x189
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x18a
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	CheckPokeParty 0x800c, 0x18b
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1b6
	Jump Script_branch_1a3
	End
@ c50

Script_branch_c50: @ c50
	CheckPokeEgg 0x400a, 0x800c
	If 0x800c, 0x19
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x23
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x36
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x1a1
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x1a9
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x1ab
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x1b8
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x183
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x184
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x185
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x186
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x187
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x188
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x189
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x18a
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x18b
	CompareLastResultJump EQUAL, Script_branch_d2e
	SetVar 0x800c, 0x0
	Return
@ d2e

Script_branch_d2e: @ d2e
	SetVar 0x800c, 0x1
	Return
@ d36

Script_branch_d36: @ d36
	CheckPokeEgg 0x400a, 0x800c
	If 0x800c, 0x19
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x23
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x36
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x1a1
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x1a9
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x1ab
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x1b8
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x27
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x12c
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x11d
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x183
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x184
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x185
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x186
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x187
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x188
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x189
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x18a
	CompareLastResultJump EQUAL, Script_branch_d2e
	If 0x800c, 0x18b
	CompareLastResultJump EQUAL, Script_branch_d2e
	SetVar 0x800c, 0x0
	Return
@ e48

Script_branch_e48: @ e48
	CopyVar 0x8008, 0x409a
	If 0x8008, 0x19
	CompareLastResultJump EQUAL, Script_branch_f5a
	If 0x8008, 0xff
	CompareLastResultJump EQUAL, Script_branch_f68
	If 0x8008, 0x23
	CompareLastResultJump EQUAL, Script_branch_f76
	If 0x8008, 0x36
	CompareLastResultJump EQUAL, Script_branch_f84
	If 0x8008, 0x1a1
	CompareLastResultJump EQUAL, Script_branch_f92
	If 0x8008, 0x1a9
	CompareLastResultJump EQUAL, Script_branch_fa0
	If 0x8008, 0x1ab
	CompareLastResultJump EQUAL, Script_branch_fae
	If 0x8008, 0x1b8
	CompareLastResultJump EQUAL, Script_branch_fbc
	If 0x8008, 0x27
	CompareLastResultJump EQUAL, Script_branch_fca
	If 0x8008, 0x12c
	CompareLastResultJump EQUAL, Script_branch_fd8
	If 0x8008, 0x11d
	CompareLastResultJump EQUAL, Script_branch_fe6
	If 0x8008, 0x183
	CompareLastResultJump EQUAL, Script_branch_ff4
	If 0x8008, 0x184
	CompareLastResultJump EQUAL, Script_branch_1002
	If 0x8008, 0x185
	CompareLastResultJump EQUAL, Script_branch_1010
	If 0x8008, 0x186
	CompareLastResultJump EQUAL, Script_branch_101e
	If 0x8008, 0x187
	CompareLastResultJump EQUAL, Script_branch_102c
	If 0x8008, 0x188
	CompareLastResultJump EQUAL, Script_branch_103a
	If 0x8008, 0x189
	CompareLastResultJump EQUAL, Script_branch_1048
	If 0x8008, 0x18a
	CompareLastResultJump EQUAL, Script_branch_1056
	If 0x8008, 0x18b
	CompareLastResultJump EQUAL, Script_branch_1064
	Jump Script_branch_2bb
	End
@ f5a

Script_branch_f5a: @ f5a
	SetVar 0x4020, 0x47
	Jump Script_branch_1072
	End
@ f68

Script_branch_f68: @ f68
	SetVar 0x4020, 0x4e
	Jump Script_branch_1072
	End
@ f76

Script_branch_f76: @ f76
	SetVar 0x4020, 0x48
	Jump Script_branch_1072
	End
@ f84

Script_branch_f84: @ f84
	SetVar 0x4020, 0x4a
	Jump Script_branch_1072
	End
@ f92

Script_branch_f92: @ f92
	SetVar 0x4020, 0xcc
	Jump Script_branch_1072
	End
@ fa0

Script_branch_fa0: @ fa0
	SetVar 0x4020, 0xb9
	Jump Script_branch_1072
	End
@ fae

Script_branch_fae: @ fae
	SetVar 0x4020, 0xce
	Jump Script_branch_1072
	End
@ fbc

Script_branch_fbc: @ fbc
	SetVar 0x4020, 0xcf
	Jump Script_branch_1072
	End
@ fca

Script_branch_fca: @ fca
	SetVar 0x4020, 0x49
	Jump Script_branch_1072
	End
@ fd8

Script_branch_fd8: @ fd8
	SetVar 0x4020, 0x4f
	Jump Script_branch_1072
	End
@ fe6

Script_branch_fe6: @ fe6
	SetVar 0x4020, 0xcd
	Jump Script_branch_1072
	End
@ ff4

Script_branch_ff4: @ ff4
	SetVar 0x4020, 0xdc
	Jump Script_branch_1072
	End
@ 1002

Script_branch_1002: @ 1002
	SetVar 0x4020, 0xdd
	Jump Script_branch_1072
	End
@ 1010

Script_branch_1010: @ 1010
	SetVar 0x4020, 0xde
	Jump Script_branch_1072
	End
@ 101e

Script_branch_101e: @ 101e
	SetVar 0x4020, 0xdf
	Jump Script_branch_1072
	End
@ 102c

Script_branch_102c: @ 102c
	SetVar 0x4020, 0xe0
	Jump Script_branch_1072
	End
@ 103a

Script_branch_103a: @ 103a
	SetVar 0x4020, 0xe1
	Jump Script_branch_1072
	End
@ 1048

Script_branch_1048: @ 1048
	SetVar 0x4020, 0xe2
	Jump Script_branch_1072
	End
@ 1056

Script_branch_1056: @ 1056
	SetVar 0x4020, 0xe3
	Jump Script_branch_1072
	End
@ 1064

Script_branch_1064: @ 1064
	SetVar 0x4020, 0xe4
	Jump Script_branch_1072
	End
@ 1072

Script_branch_1072: @ 1072
	SetVar 0x8002, 0x5
	ClearFlag 0x2a1
	Jump Script_branch_2c9
	End
@ 1084

Script_6: @ 1084
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarPokeNick 0x0, 0x409d
	Cmd_216 0x800c
	If 0x800c, 0xc8
	CompareLastResultJump 0x4, Script_branch_4d8
	Jump Script_branch_5dd
	End
@ 10aa

Script_17: @ 10aa
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xab5
	CompareLastResultJump EQUAL, Script_branch_117c
	Message 0x24
	Cmd_2e1 0x40ab, 0x8004
	Cmd_2e0 0x40ab, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_10e1
	Jump Script_branch_1136
	End
@ 10e1

Script_branch_10e1: @ 10e1
	SetVarItem 0x0, 0x8004
	Message 0x25
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1161
	SetVar 0x8005, 0x5
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1172
	SetVarHero 0x0
	Cmd_33d 0x1, 0x8004
	Soundfr 0x486
	Message 0x28
	Cmd_4f
	TakeItem 0x8004, 0x8005, 0x800c
	Jump Script_branch_117c
	End
@ 1136

Script_branch_1136: @ 1136
	CheckAccessories3 0x0, 0x8004
	Message 0x25
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1161
	SetVar 0x8005, 0x1
	CallStandard 0x7df
	Jump Script_branch_117c
	End
@ 1161

Script_branch_1161: @ 1161
	Message 0x26
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 116c

.byte 0x34 @ 0x116c
.byte 0x0 @ 0x116d
.byte 0x61 @ 0x116e
.byte 0x0 @ 0x116f
.byte 0x2 @ 0x1170
.byte 0x0 @ 0x1171

Script_branch_1172: @ 1172
	CallStandard 0x7e1
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 117c

Script_branch_117c: @ 117c
	SetFlag 0xab5
	Message 0x27
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 118b

Script_18: @ 118b
	SetVar 0x8003, 0x1
	Jump Script_branch_1305
	End
@ 1199

Script_19: @ 1199
	SetVar 0x8003, 0x2
	Jump Script_branch_1305
	End
@ 11a7

Script_20: @ 11a7
	SetVar 0x8003, 0x3
	Jump Script_branch_1305
	End
@ 11b5

Script_21: @ 11b5
	SetVar 0x8003, 0x4
	Jump Script_branch_1305
	End
@ 11c3

Script_22: @ 11c3
	SetVar 0x8003, 0x5
	Jump Script_branch_1305
	End
@ 11d1

Script_23: @ 11d1
	SetVar 0x8003, 0x6
	Jump Script_branch_1305
	End
@ 11df

Script_24: @ 11df
	SetVar 0x8003, 0x7
	Jump Script_branch_1305
	End
@ 11ed

Script_25: @ 11ed
	SetVar 0x8003, 0x8
	Jump Script_branch_1305
	End
@ 11fb

Script_26: @ 11fb
	SetVar 0x8003, 0x9
	Jump Script_branch_1305
	End
@ 1209

Script_27: @ 1209
	SetVar 0x8003, 0xa
	Jump Script_branch_1305
	End
@ 1217

Script_28: @ 1217
	SetVar 0x8003, 0xb
	Jump Script_branch_1305
	End
@ 1225

Script_29: @ 1225
	SetVar 0x8003, 0xc
	Jump Script_branch_1305
	End
@ 1233

Script_30: @ 1233
	SetVar 0x8003, 0xd
	Jump Script_branch_1305
	End
@ 1241

Script_31: @ 1241
	SetVar 0x8003, 0xe
	Jump Script_branch_1305
	End
@ 124f

Script_32: @ 124f
	SetVar 0x8003, 0xf
	Jump Script_branch_1305
	End
@ 125d

Script_33: @ 125d
	SetVar 0x8003, 0x10
	Jump Script_branch_1305
	End
@ 126b

Script_34: @ 126b
	SetVar 0x8003, 0x11
	Jump Script_branch_1305
	End
@ 1279

Script_35: @ 1279
	SetVar 0x8003, 0x12
	Jump Script_branch_1305
	End
@ 1287

Script_36: @ 1287
	SetVar 0x8003, 0x13
	Jump Script_branch_1305
	End
@ 1295

Script_37: @ 1295
	SetVar 0x8003, 0x14
	Jump Script_branch_1305
	End
@ 12a3

Script_38: @ 12a3
	SetVar 0x8003, 0x15
	Jump Script_branch_1305
	End
@ 12b1

Script_39: @ 12b1
	SetVar 0x8003, 0x16
	Jump Script_branch_1305
	End
@ 12bf

Script_40: @ 12bf
	SetVar 0x8003, 0x17
	Jump Script_branch_1305
	End
@ 12cd

Script_41: @ 12cd
	SetVar 0x8003, 0x18
	Jump Script_branch_1305
	End
@ 12db

Script_42: @ 12db
	SetVar 0x8003, 0x19
	Jump Script_branch_1305
	End
@ 12e9

Script_43: @ 12e9
	SetVar 0x8003, 0x1a
	Jump Script_branch_1305
	End
@ 12f7

Script_44: @ 12f7
	SetVar 0x8003, 0x1b
	Jump Script_branch_1305
	End
@ 1305

Script_branch_1305: @ 1305
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	LockAll
	Return2 0x1, 0x800c
	Cmd_32d
	Cmd_338
	ApplyMovement 0x5, Movement_1758
	WaitMovement
	PlayFanfare 0x632
	If 0x8003, 0x1
	CompareLastResultCall EQUAL, Script_branch_14c2
	If 0x8003, 0x2
	CompareLastResultCall EQUAL, Script_branch_14da
	If 0x8003, 0x3
	CompareLastResultCall EQUAL, Script_branch_14f2
	If 0x8003, 0x4
	CompareLastResultCall EQUAL, Script_branch_150a
	If 0x8003, 0x5
	CompareLastResultCall EQUAL, Script_branch_1522
	If 0x8003, 0x6
	CompareLastResultCall EQUAL, Script_branch_153a
	If 0x8003, 0x7
	CompareLastResultCall EQUAL, Script_branch_1552
	If 0x8003, 0x8
	CompareLastResultCall EQUAL, Script_branch_156a
	If 0x8003, 0x9
	CompareLastResultCall EQUAL, Script_branch_1582
	If 0x8003, 0xa
	CompareLastResultCall EQUAL, Script_branch_159a
	If 0x8003, 0xb
	CompareLastResultCall EQUAL, Script_branch_15b2
	If 0x8003, 0xc
	CompareLastResultCall EQUAL, Script_branch_15ca
	If 0x8003, 0xd
	CompareLastResultCall EQUAL, Script_branch_15e2
	If 0x8003, 0xe
	CompareLastResultCall EQUAL, Script_branch_15fa
	If 0x8003, 0xf
	CompareLastResultCall EQUAL, Script_branch_1612
	If 0x8003, 0x10
	CompareLastResultCall EQUAL, Script_branch_162a
	If 0x8003, 0x11
	CompareLastResultCall EQUAL, Script_branch_1642
	If 0x8003, 0x12
	CompareLastResultCall EQUAL, Script_branch_165a
	If 0x8003, 0x13
	CompareLastResultCall EQUAL, Script_branch_1672
	If 0x8003, 0x14
	CompareLastResultCall EQUAL, Script_branch_168a
	If 0x8003, 0x15
	CompareLastResultCall EQUAL, Script_branch_16a2
	If 0x8003, 0x16
	CompareLastResultCall EQUAL, Script_branch_16ba
	If 0x8003, 0x17
	CompareLastResultCall EQUAL, Script_branch_16d2
	If 0x8003, 0x18
	CompareLastResultCall EQUAL, Script_branch_16ea
	If 0x8003, 0x19
	CompareLastResultCall EQUAL, Script_branch_1702
	If 0x8003, 0x1a
	CompareLastResultCall EQUAL, Script_branch_171a
	If 0x8003, 0x1b
	CompareLastResultCall EQUAL, Script_branch_1732
	ApplyMovement 0xff, Movement_1764
	WaitMovement
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ApplyMovement 0x5, Movement_1764
	WaitMovement
	ReleaseAll
	ApplyMovement 0xff, Movement_1770
	WaitMovement
	Cmd_32e
	Cmd_339
	Return2 0x2, 0x800c
	End
@ 14c2

Script_branch_14c2: @ 14c2
	ApplyMovement 0xff, Movement_1778
	WaitMovement
	SetOwPosition 0x5, 0x23, 0x2, 0xf, 0x1
	Return
@ 14da

Script_branch_14da: @ 14da
	ApplyMovement 0xff, Movement_1780
	WaitMovement
	SetOwPosition 0x5, 0x23, 0x2, 0xf, 0x1
	Return
@ 14f2

Script_branch_14f2: @ 14f2
	ApplyMovement 0xff, Movement_178c
	WaitMovement
	SetOwPosition 0x5, 0x23, 0x2, 0xf, 0x1
	Return
@ 150a

Script_branch_150a: @ 150a
	ApplyMovement 0xff, Movement_1798
	WaitMovement
	SetOwPosition 0x5, 0x11, 0x2, 0x10, 0x1
	Return
@ 1522

Script_branch_1522: @ 1522
	ApplyMovement 0xff, Movement_17a4
	WaitMovement
	SetOwPosition 0x5, 0x11, 0x2, 0x10, 0x1
	Return
@ 153a

Script_branch_153a: @ 153a
	ApplyMovement 0xff, Movement_17b0
	WaitMovement
	SetOwPosition 0x5, 0x11, 0x2, 0x10, 0x1
	Return
@ 1552

Script_branch_1552: @ 1552
	ApplyMovement 0xff, Movement_17bc
	WaitMovement
	SetOwPosition 0x5, 0x2f, 0x4, 0x8, 0x1
	Return
@ 156a

Script_branch_156a: @ 156a
	ApplyMovement 0xff, Movement_17c8
	WaitMovement
	SetOwPosition 0x5, 0x21, 0x5, 0x7, 0x1
	Return
@ 1582

Script_branch_1582: @ 1582
	ApplyMovement 0xff, Movement_17d4
	WaitMovement
	SetOwPosition 0x5, 0xf, 0x4, 0xa, 0x1
	Return
@ 159a

Script_branch_159a: @ 159a
	ApplyMovement 0xff, Movement_17e0
	WaitMovement
	SetOwPosition 0x5, 0x34, 0x4, 0x19, 0x1
	Return
@ 15b2

Script_branch_15b2: @ 15b2
	ApplyMovement 0xff, Movement_17ec
	WaitMovement
	SetOwPosition 0x5, 0xf, 0x4, 0xa, 0x1
	Return
@ 15ca

Script_branch_15ca: @ 15ca
	ApplyMovement 0xff, Movement_17f8
	WaitMovement
	SetOwPosition 0x5, 0x21, 0x5, 0x7, 0x1
	Return
@ 15e2

Script_branch_15e2: @ 15e2
	ApplyMovement 0xff, Movement_1804
	WaitMovement
	SetOwPosition 0x5, 0x34, 0x4, 0x19, 0x1
	Return
@ 15fa

Script_branch_15fa: @ 15fa
	ApplyMovement 0xff, Movement_1810
	WaitMovement
	SetOwPosition 0x5, 0x1a, 0x6, 0x9, 0x1
	Return
@ 1612

Script_branch_1612: @ 1612
	ApplyMovement 0xff, Movement_181c
	WaitMovement
	SetOwPosition 0x5, 0x29, 0x3, 0x10, 0x1
	Return
@ 162a

Script_branch_162a: @ 162a
	ApplyMovement 0xff, Movement_1828
	WaitMovement
	SetOwPosition 0x5, 0x34, 0x4, 0x19, 0x1
	Return
@ 1642

Script_branch_1642: @ 1642
	ApplyMovement 0xff, Movement_1834
	WaitMovement
	SetOwPosition 0x5, 0x29, 0x3, 0x10, 0x1
	Return
@ 165a

Script_branch_165a: @ 165a
	ApplyMovement 0xff, Movement_1840
	WaitMovement
	SetOwPosition 0x5, 0x1a, 0x6, 0x9, 0x1
	Return
@ 1672

Script_branch_1672: @ 1672
	ApplyMovement 0xff, Movement_184c
	WaitMovement
	SetOwPosition 0x5, 0x2f, 0x4, 0x8, 0x1
	Return
@ 168a

Script_branch_168a: @ 168a
	ApplyMovement 0xff, Movement_1854
	WaitMovement
	SetOwPosition 0x5, 0x2f, 0x2, 0x22, 0x1
	Return
@ 16a2

Script_branch_16a2: @ 16a2
	ApplyMovement 0xff, Movement_1860
	WaitMovement
	SetOwPosition 0x5, 0xf, 0x4, 0xa, 0x1
	Return
@ 16ba

Script_branch_16ba: @ 16ba
	ApplyMovement 0xff, Movement_186c
	WaitMovement
	SetOwPosition 0x5, 0x2f, 0x4, 0x8, 0x1
	Return
@ 16d2

Script_branch_16d2: @ 16d2
	ApplyMovement 0xff, Movement_1878
	WaitMovement
	SetOwPosition 0x5, 0x21, 0x5, 0x7, 0x1
	Return
@ 16ea

Script_branch_16ea: @ 16ea
	ApplyMovement 0xff, Movement_1884
	WaitMovement
	SetOwPosition 0x5, 0x2f, 0x2, 0x22, 0x1
	Return
@ 1702

Script_branch_1702: @ 1702
	ApplyMovement 0xff, Movement_1890
	WaitMovement
	SetOwPosition 0x5, 0x34, 0x4, 0x19, 0x1
	Return
@ 171a

Script_branch_171a: @ 171a
	ApplyMovement 0xff, Movement_189c
	WaitMovement
	SetOwPosition 0x5, 0xf, 0x4, 0xa, 0x1
	Return
@ 1732

Script_branch_1732: @ 1732
	ApplyMovement 0xff, Movement_18a8
	WaitMovement
	SetOwPosition 0x5, 0x21, 0x5, 0x7, 0x1
	Return
@ 174a

Script_45: @ 174a
	LockAll
	SetVar 0x40ac, 0x0
	ReleaseAll
	End
@ 1756

.byte 0x0 @ 0x1756
.byte 0x0 @ 0x1757

Movement_1758: @ 1758
	SeeDown 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 1764

Movement_1764: @ 1764
	SeeDown 0x1
	Move_46 0x1
	EndMovement 0x0
@ 1770

Movement_1770: @ 1770
	WalkDownFast 0x1
	EndMovement 0x0
@ 1778

Movement_1778: @ 1778
	RunRight 0x12
	EndMovement 0x0
@ 1780

Movement_1780: @ 1780
	RunRight 0x13
	RunUp 0x1
	EndMovement 0x0
@ 178c

Movement_178c: @ 178c
	RunRight 0x11
	RunUp 0x1
	EndMovement 0x0
@ 1798

Movement_1798: @ 1798
	RunLeft 0x12
	RunDown 0x2
	EndMovement 0x0
@ 17a4

Movement_17a4: @ 17a4
	RunLeft 0x11
	RunDown 0x1
	EndMovement 0x0
@ 17b0

Movement_17b0: @ 17b0
	RunLeft 0x13
	RunDown 0x1
	EndMovement 0x0
@ 17bc

Movement_17bc: @ 17bc
	RunLeft 0x5
	RunUp 0x10
	EndMovement 0x0
@ 17c8

Movement_17c8: @ 17c8
	RunLeft 0x12
	RunUp 0x12
	EndMovement 0x0
@ 17d4

Movement_17d4: @ 17d4
	RunLeft 0x26
	RunUp 0xf
	EndMovement 0x0
@ 17e0

Movement_17e0: @ 17e0
	RunRight 0x5
	RunDown 0x12
	EndMovement 0x0
@ 17ec

Movement_17ec: @ 17ec
	RunLeft 0x1f
	RunDown 0x2
	EndMovement 0x0
@ 17f8

Movement_17f8: @ 17f8
	RunLeft 0xf
	RunUp 0x1
	EndMovement 0x0
@ 1804

Movement_1804: @ 1804
	RunRight 0x25
	RunDown 0x10
	EndMovement 0x0
@ 1810

Movement_1810: @ 1810
	RunRight 0xc
	RunUp 0x1
	EndMovement 0x0
@ 181c

Movement_181c: @ 181c
	RunRight 0x19
	RunDown 0x6
	EndMovement 0x0
@ 1828

Movement_1828: @ 1828
	RunRight 0x13
	RunDown 0x13
	EndMovement 0x0
@ 1834

Movement_1834: @ 1834
	RunRight 0x9
	RunDown 0x9
	EndMovement 0x0
@ 1840

Movement_1840: @ 1840
	RunLeft 0x8
	RunDown 0x2
	EndMovement 0x0
@ 184c

Movement_184c: @ 184c
	RunRight 0x15
	EndMovement 0x0
@ 1854

Movement_1854: @ 1854
	RunRight 0x16
	RunDown 0x19
	EndMovement 0x0
@ 1860

Movement_1860: @ 1860
	RunLeft 0xc
	RunDown 0x1
	EndMovement 0x0
@ 186c

Movement_186c: @ 186c
	RunRight 0x6
	RunUp 0x7
	EndMovement 0x0
@ 1878

Movement_1878: @ 1878
	RunLeft 0x7
	RunUp 0x9
	EndMovement 0x0
@ 1884

Movement_1884: @ 1884
	RunRight 0x5
	RunDown 0x12
	EndMovement 0x0
@ 1890

Movement_1890: @ 1890
	RunRight 0x5
	RunUp 0x8
	EndMovement 0x0
@ 189c

Movement_189c: @ 189c
	RunLeft 0x1f
	RunUp 0x18
	EndMovement 0x0
@ 18a8

Movement_18a8: @ 18a8
	RunLeft 0xf
	RunUp 0x1b
	EndMovement 0x0
@ 18b4

@ end_0x18b4
