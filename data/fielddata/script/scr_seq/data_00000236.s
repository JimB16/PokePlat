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
	.hword 0xfd13
@ 22

Script_1: @ 22
	SetFlag 0x9c7
	Call Function_c7
	Call Function_62
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_52
	If 0x4000, 0x1
	CompareLastResultJump EQUAL, Script_branch_5a
	End
@ 52

Script_branch_52: @ 52
	SetVar 0x4020, 0x61
	End
@ 5a

Script_branch_5a: @ 5a
	SetVar 0x4020, 0x0
	End
@ 62

Function_62: @ 62
	Cmd_166 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_c5
	CheckNatPokedexStatus 0x2, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_c5
	CheckItem 0x1c7, 0x1, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_c5
	UnkFunct2 0x2, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_c5
	CheckFlag 0x11e
	CompareLastResultJump EQUAL, Script_branch_c5
	SetVar 0x4118, 0x1
	Jump Script_branch_c5
@ c3

.byte 0x2 @ 0xc3
.byte 0x0 @ 0xc4

Script_branch_c5: @ c5
	Return
@ c7

Function_c7: @ c7
	StoreFurniture 0x4098
	If 0x4098, 0x0
	CompareLastResultJump EQUAL, Script_branch_101
	If 0x4098, 0x1
	CompareLastResultJump EQUAL, Script_branch_101
	If 0x4098, 0x2
	CompareLastResultJump EQUAL, Script_branch_101
	If 0x4098, 0x3
	CompareLastResultJump EQUAL, Script_branch_101
	Return
@ 101

Script_branch_101: @ 101
	SetFlag 0x1c5
	Return
@ 107

Script_2: @ 107
	End
@ 109

Function_109: @ 109
	StoreMtCoronet 0x800c
	CopyVar 0x8004, 0x8005
	If 0x800c, 0xa
	CompareLastResultJump EQUAL, Script_branch_133
	If 0x800c, 0xc
	CompareLastResultJump EQUAL, Script_branch_133
	CopyVar 0x8004, 0x8006
Script_branch_133: @ 133
	Return
@ 135

.byte 0x4d @ 0x135
.byte 0x1 @ 0x136
.byte 0xc @ 0x137
.byte 0x80 @ 0x138
.byte 0x29 @ 0x139
.byte 0x0 @ 0x13a
.byte 0x4 @ 0x13b
.byte 0x80 @ 0x13c
.byte 0x5 @ 0x13d
.byte 0x80 @ 0x13e
.byte 0x11 @ 0x13f
.byte 0x0 @ 0x140
.byte 0xc @ 0x141
.byte 0x80 @ 0x142
.byte 0x1 @ 0x143
.byte 0x0 @ 0x144
.byte 0x1c @ 0x145
.byte 0x0 @ 0x146
.byte 0x1 @ 0x147
.byte 0x6 @ 0x148
.byte 0x0 @ 0x149
.byte 0x0 @ 0x14a
.byte 0x0 @ 0x14b
.byte 0x29 @ 0x14c
.byte 0x0 @ 0x14d
.byte 0x4 @ 0x14e
.byte 0x80 @ 0x14f
.byte 0x6 @ 0x150
.byte 0x80 @ 0x151
.byte 0x1b @ 0x152
.byte 0x0 @ 0x153

Script_3: @ 154
	LockAll
	ApplyMovement 0x0, Movement_1e4
	ApplyMovement 0x3, Movement_1f4
	WaitMovement
	StorePokePartyDefeated 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_1a6
	Jump Script_branch_181
@ 17f

.byte 0x2 @ 0x17f
.byte 0x0 @ 0x180

Script_branch_181: @ 181
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_204
	WaitMovement
	ApplyMovement 0x0, Movement_1ec
	ApplyMovement 0x3, Movement_1fc
	WaitMovement
	ReleaseAll
	End
@ 1a6

Script_branch_1a6: @ 1a6
	Call Function_1ca
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1db
	SetVar 0x4098, 0x1
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1ca

Function_1ca: @ 1ca
	Message 0x0
	CloseMsgOnKeyPress
	TrainerBattle 0x209, 0x20f
	CheckTrainerLost 0x800c
	Return
@ 1db

Script_branch_1db: @ 1db
	LostGoPc
	ReleaseAll
	End
@ 1e1

.byte 0x0 @ 0x1e1
.byte 0x0 @ 0x1e2
.byte 0x0 @ 0x1e3

Movement_1e4: @ 1e4
	MoveRightFast 0x1
	EndMovement 0x0
@ 1ec

Movement_1ec: @ 1ec
	MoveDownFast 0x1
	EndMovement 0x0
@ 1f4

Movement_1f4: @ 1f4
	MoveLeftFast 0x1
	EndMovement 0x0
@ 1fc

Movement_1fc: @ 1fc
	MoveDownFast 0x1
	EndMovement 0x0
@ 204

Movement_204: @ 204
	Move_3e 0x5
	WalkDownFast 0x1
	EndMovement 0x0
@ 210

Script_6: @ 210
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 223

Script_7: @ 223
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 236

Script_8: @ 236
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2b
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 249

Script_5: @ 249
	LockAll
	Call Function_36f
	Message 0x3
	Message 0x4
	CloseMsgOnKeyPress
	Call Function_2dc
	SetVariableRival 0x0
	Message 0x5
	Message 0x7
	Message 0x8
	Message 0x9
	CloseMsgOnKeyPress
	Call Function_424
	DoubleBattle 0x8004, 0x210, 0x197
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2d0
	Call Function_456
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0xa
	Soundfr 0x48e
	Cmd_4f
	HealPokemon
	Message 0xb
	Message 0xc
	CloseMsgOnKeyPress
	SetOwsFollow 0xff, 0x1
	ApplyMovement 0x5, Movement_500
	WaitMovement
	RemovePeople 0x5
	SetVar 0x4098, 0x2
	Jump Script_branch_508
@ 2ce

.byte 0x2 @ 0x2ce
.byte 0x0 @ 0x2cf

Script_branch_2d0: @ 2d0
	SetVar 0x4098, 0x1
	LostGoPc
	ReleaseAll
	End
@ 2dc

Function_2dc: @ 2dc
	ClearFlag 0x1c5
	CheckSpritePosition 0x8004, 0x8005
	CopyVar 0x8008, 0x8004
	If 0x8008, 0x1e
	CompareLastResultJump EQUAL, Script_branch_315
	If 0x8008, 0x1f
	CompareLastResultJump EQUAL, Script_branch_333
	If 0x8008, 0x20
	CompareLastResultJump EQUAL, Script_branch_351
	Return
@ 315

Script_branch_315: @ 315
	ChangeOwPosition 0x5, 0x1f, 0x28
	AddPeople 0x5
	ApplyMovement 0x5, Movement_4f4
	WaitMovement
	SetOwsFollow 0x5, 0x3
	Return
@ 333

Script_branch_333: @ 333
	ChangeOwPosition 0x5, 0x1e, 0x28
	AddPeople 0x5
	ApplyMovement 0x5, Movement_4f4
	WaitMovement
	SetOwsFollow 0x5, 0x2
	Return
@ 351

Script_branch_351: @ 351
	ChangeOwPosition 0x5, 0x1f, 0x28
	AddPeople 0x5
	ApplyMovement 0x5, Movement_4f4
	WaitMovement
	SetOwsFollow 0x5, 0x2
	Return
@ 36f

Function_36f: @ 36f
	CheckSpritePosition 0x8004, 0x8005
	CopyVar 0x8008, 0x8004
	If 0x8008, 0x1e
	CompareLastResultJump EQUAL, Script_branch_3a4
	If 0x8008, 0x1f
	CompareLastResultJump EQUAL, Script_branch_3be
	If 0x8008, 0x20
	CompareLastResultJump EQUAL, Script_branch_3d8
	Return
@ 3a4

Script_branch_3a4: @ 3a4
	SetOwsFollow 0xff, 0x2
	ApplyMovement 0x4, Movement_3f4
	ApplyMovement 0x2, Movement_3fc
	WaitMovement
	Return
@ 3be

Script_branch_3be: @ 3be
	SetOwsFollow 0xff, 0x3
	ApplyMovement 0x4, Movement_404
	ApplyMovement 0x2, Movement_40c
	WaitMovement
	Return
@ 3d8

Script_branch_3d8: @ 3d8
	SetOwsFollow 0xff, 0x3
	ApplyMovement 0x4, Movement_414
	ApplyMovement 0x2, Movement_41c
	WaitMovement
	Return
@ 3f2

.byte 0x0 @ 0x3f2
.byte 0x0 @ 0x3f3

Movement_3f4: @ 3f4
	MoveRightFast 0x1
	EndMovement 0x0
@ 3fc

Movement_3fc: @ 3fc
	WalkLeftFast 0x1
	EndMovement 0x0
@ 404

Movement_404: @ 404
	MoveRightFast 0x1
	EndMovement 0x0
@ 40c

Movement_40c: @ 40c
	WalkLeftFast 0x1
	EndMovement 0x0
@ 414

Movement_414: @ 414
	WalkRightFast 0x1
	EndMovement 0x0
@ 41c

Movement_41c: @ 41c
	MoveLeftFast 0x1
	EndMovement 0x0
@ 424

Function_424: @ 424
	StoreStarter 0x800c
	SetVar 0x8004, 0x26c
	If 0x800c, 0x186
	CompareLastResultJump EQUAL, Script_branch_454
	SetVar 0x8004, 0x26b
	If 0x800c, 0x183
	CompareLastResultJump EQUAL, Script_branch_454
	SetVar 0x8004, 0x25f
Script_branch_454: @ 454
	Return
@ 456

Function_456: @ 456
	CheckSpritePosition 0x8004, 0x8005
	CopyVar 0x8008, 0x8004
	If 0x8008, 0x1e
	CompareLastResultJump EQUAL, Script_branch_48b
	If 0x8008, 0x1f
	CompareLastResultJump EQUAL, Script_branch_499
	If 0x8008, 0x20
	CompareLastResultJump EQUAL, Script_branch_4a7
	Return
@ 48b

Script_branch_48b: @ 48b
	SetOwsFollow 0xff, 0x3
	SetOwsFollow 0x5, 0x2
	Return
@ 499

Script_branch_499: @ 499
	SetOwsFollow 0xff, 0x2
	SetOwsFollow 0x5, 0x3
	Return
@ 4a7

Script_branch_4a7: @ 4a7
	SetOwsFollow 0xff, 0x2
	SetOwsFollow 0x5, 0x3
	Return
@ 4b5

.byte 0x5e @ 0x4b5
.byte 0x0 @ 0x4b6
.byte 0x4 @ 0x4b7
.byte 0x0 @ 0x4b8
.byte 0xf @ 0x4b9
.byte 0x0 @ 0x4ba
.byte 0x0 @ 0x4bb
.byte 0x0 @ 0x4bc
.byte 0x5e @ 0x4bd
.byte 0x0 @ 0x4be
.byte 0x2 @ 0x4bf
.byte 0x0 @ 0x4c0
.byte 0x1b @ 0x4c1
.byte 0x0 @ 0x4c2
.byte 0x0 @ 0x4c3
.byte 0x0 @ 0x4c4
.byte 0x5f @ 0x4c5
.byte 0x0 @ 0x4c6
.byte 0x1b @ 0x4c7
.byte 0x0 @ 0x4c8
.byte 0x0 @ 0x4c9
.byte 0x0 @ 0x4ca
.byte 0x0 @ 0x4cb
.byte 0x3 @ 0x4cc
.byte 0x0 @ 0x4cd
.byte 0x1 @ 0x4ce
.byte 0x0 @ 0x4cf
.byte 0x47 @ 0x4d0
.byte 0x0 @ 0x4d1
.byte 0x1 @ 0x4d2
.byte 0x0 @ 0x4d3
.byte 0xa @ 0x4d4
.byte 0x0 @ 0x4d5
.byte 0x1 @ 0x4d6
.byte 0x0 @ 0x4d7
.byte 0x48 @ 0x4d8
.byte 0x0 @ 0x4d9
.byte 0x1 @ 0x4da
.byte 0x0 @ 0x4db
.byte 0xfe @ 0x4dc
.byte 0x0 @ 0x4dd
.byte 0x0 @ 0x4de
.byte 0x0 @ 0x4df
.byte 0x2 @ 0x4e0
.byte 0x0 @ 0x4e1
.byte 0x1 @ 0x4e2
.byte 0x0 @ 0x4e3
.byte 0x47 @ 0x4e4
.byte 0x0 @ 0x4e5
.byte 0x1 @ 0x4e6
.byte 0x0 @ 0x4e7
.byte 0xb @ 0x4e8
.byte 0x0 @ 0x4e9
.byte 0x1 @ 0x4ea
.byte 0x0 @ 0x4eb
.byte 0x48 @ 0x4ec
.byte 0x0 @ 0x4ed
.byte 0x1 @ 0x4ee
.byte 0x0 @ 0x4ef
.byte 0xfe @ 0x4f0
.byte 0x0 @ 0x4f1
.byte 0x0 @ 0x4f2
.byte 0x0 @ 0x4f3

Movement_4f4: @ 4f4
	Move_3e 0x2
	WalkUpVeryFast  0x8
	EndMovement 0x0
@ 500

Movement_500: @ 500
	WalkDownVeryFast  0x8
	EndMovement 0x0
@ 508

Script_4: @ 508
Script_branch_508: @ 508
	ApplyMovement 0xff, Movement_5b8
	WaitMovement
	CheckSpritePosition 0x8000, 0x8001
	LockCam 0x8000, 0x8001
	Call Function_5c0
	WaitMovement
	SetVar 0x8005, 0xd
	SetVar 0x8006, 0x44
	Call Function_109
	Message3 0x8004
	CloseMsgOnKeyPress
	SwitchMusic 0x0, 0x1e
	SetvarMtCoronet 0x0, 0x800c
	Return2 0xa, 0x800c
	PlayFanfare 0x5c8
	Return2 0x14, 0x800c
	PlaySound 0x478
	Cmd_5d
	Jump Script_branch_567
@ 565

.byte 0x2 @ 0x565
.byte 0x0 @ 0x566

Script_branch_567: @ 567
	SetvarMtCoronet 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_567
	Cmd_2fb
	SetFlag 0x1c8
	SetFlag 0x1c9
	SetFlag 0x1ca
	SetVar 0x4098, 0x3
	SetFlag 0x981
	ClearFlag 0x1c7
	SetFlag 0x132
	SetVar 0x40c3, 0x1
	Cmd_31a 0x1e3
	Cmd_31a 0x1e4
	ZoomCam
	Warp 0xdd, 0x0, 0x1e, 0x1e, 0x0
	End
@ 5b7

.byte 0x0 @ 0x5b7

Movement_5b8: @ 5b8
	MoveUpFast 0x1
	EndMovement 0x0
@ 5c0

Function_5c0: @ 5c0
	CheckSpritePosition 0x8004, 0x8005
	CopyVar 0x8008, 0x8004
	If 0x8008, 0x1d
	CompareLastResultJump EQUAL, Script_branch_60f
	If 0x8008, 0x1e
	CompareLastResultJump EQUAL, Script_branch_619
	If 0x8008, 0x1f
	CompareLastResultJump EQUAL, Script_branch_623
	If 0x8008, 0x20
	CompareLastResultJump EQUAL, Script_branch_62d
	If 0x8008, 0x21
	CompareLastResultJump EQUAL, Script_branch_637
	Return
@ 60f

Script_branch_60f: @ 60f
	ApplyMovement 0xf1, Movement_644
	Return
@ 619

Script_branch_619: @ 619
	ApplyMovement 0xf1, Movement_654
	Return
@ 623

Script_branch_623: @ 623
	ApplyMovement 0xf1, Movement_664
	Return
@ 62d

Script_branch_62d: @ 62d
	ApplyMovement 0xf1, Movement_670
	Return
@ 637

Script_branch_637: @ 637
	ApplyMovement 0xf1, Movement_680
	Return
@ 641

.byte 0x0 @ 0x641
.byte 0x0 @ 0x642
.byte 0x0 @ 0x643

Movement_644: @ 644
	Move_3f 0x1
	WalkUpFast 0x6
	WalkRightFast 0x2
	EndMovement 0x0
@ 654

Movement_654: @ 654
	Move_3f 0x1
	WalkUpFast 0x6
	WalkRightFast 0x1
	EndMovement 0x0
@ 664

Movement_664: @ 664
	Move_3f 0x1
	WalkUpFast 0x6
	EndMovement 0x0
@ 670

Movement_670: @ 670
	Move_3f 0x1
	WalkUpFast 0x6
	WalkLeftFast 0x1
	EndMovement 0x0
@ 680

Movement_680: @ 680
	Move_3f 0x1
	WalkUpFast 0x6
	WalkLeftFast 0x2
	EndMovement 0x0
@ 690

@ end_0x690
