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

Script_4: @ 22
	SetFlag 0xc8
	CheckFlag 0xab7
	CompareLastResultJump LESSER, Script_branch_39
	Call Function_140
	End
@ 39

Script_branch_39: @ 39
	SetFlag 0xab7
	Cmd_2f4 0x4065, 0x4066, 0x4067, 0x4068
	Call Function_140
	ClearFlag 0x2a2
	ClearFlag 0x2a3
	ClearFlag 0x2a4
	ClearFlag 0x2a5
	If 0x4022, 0xfff
	CompareLastResultCall EQUAL, Script_branch_ed
	If 0x4023, 0xfff
	CompareLastResultCall EQUAL, Script_branch_f3
	If 0x4024, 0xfff
	CompareLastResultCall EQUAL, Script_branch_f9
	If 0x4024, 0x8d
	CompareLastResultCall EQUAL, Script_branch_ff
	If 0x4024, 0x8e
	CompareLastResultCall EQUAL, Script_branch_10c
	If 0x4024, 0x8f
	CompareLastResultCall EQUAL, Script_branch_119
	If 0x4024, 0x90
	CompareLastResultCall EQUAL, Script_branch_126
	If 0x4024, 0x91
	CompareLastResultCall EQUAL, Script_branch_133
	ClearFlag 0x1
	ClearFlag 0x2
	ClearFlag 0x3
	ClearFlag 0x4
	ClearFlag 0x5
	ClearFlag 0x6
	ClearFlag 0x7
	ClearFlag 0x8
	CheckIdPlayer 0x4061, 0x2
	End
@ ed

Script_branch_ed: @ ed
	SetFlag 0x2a3
	Return
@ f3

Script_branch_f3: @ f3
	SetFlag 0x2a4
	Return
@ f9

Script_branch_f9: @ f9
	SetFlag 0x2a5
	Return
@ ff

Script_branch_ff: @ ff
	CheckFlag 0xe3
	CompareLastResultCall LESSER, Script_branch_f9
	Return
@ 10c

Script_branch_10c: @ 10c
	CheckFlag 0xe5
	CompareLastResultCall LESSER, Script_branch_f9
	Return
@ 119

Script_branch_119: @ 119
	CheckFlag 0xe6
	CompareLastResultCall LESSER, Script_branch_f9
	Return
@ 126

Script_branch_126: @ 126
	CheckFlag 0xe7
	CompareLastResultCall LESSER, Script_branch_f9
	Return
@ 133

Script_branch_133: @ 133
	CheckFlag 0xe4
	CompareLastResultCall LESSER, Script_branch_f9
	Return
@ 140

Function_140: @ 140
	CopyVar 0x4021, 0x4065
	CopyVar 0x4022, 0x4066
	CopyVar 0x4023, 0x4067
	CopyVar 0x4024, 0x4068
	Return
@ 15a

Script_1: @ 15a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xd7
	CompareLastResultJump EQUAL, Script_branch_178
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 178

Script_branch_178: @ 178
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 183

Script_2: @ 183
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetFlag 0x125
	Message 0x5
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x7
	CompareLastResultCall EQUAL, Script_branch_1d5
	If 0x8005, 0x8
	CompareLastResultCall EQUAL, Script_branch_1e9
	If 0x8005, 0x9
	CompareLastResultCall EQUAL, Script_branch_1fd
	PlayFanfare 0x603
	RemovePeople 0x1
	SetFlag 0xe7
	SetFlag 0x1d6
	ReleaseAll
	End
@ 1d5

Script_branch_1d5: @ 1d5
	ApplyMovement 0xff, Movement_214
	ApplyMovement 0x1, Movement_240
	WaitMovement
	Return
@ 1e9

Script_branch_1e9: @ 1e9
	ApplyMovement 0xff, Movement_220
	ApplyMovement 0x1, Movement_254
	WaitMovement
	Return
@ 1fd

Script_branch_1fd: @ 1fd
	ApplyMovement 0xff, Movement_234
	ApplyMovement 0x1, Movement_264
	WaitMovement
	Return
@ 211

.byte 0x0 @ 0x211
.byte 0x0 @ 0x212
.byte 0x0 @ 0x213

Movement_214: @ 214
	Move_3f 0x2
	MoveLeftFast 0x1
	EndMovement 0x0
@ 220

Movement_220: @ 220
	Move_3f 0x1
	MoveDownFast 0x1
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 234

Movement_234: @ 234
	Move_3f 0x2
	MoveLeftFast 0x1
	EndMovement 0x0
@ 240

Movement_240: @ 240
	WalkLeftFast 0x1
	WalkDownFast 0x1
	WalkLeftFast 0x3
	WalkDownFast 0x2
	EndMovement 0x0
@ 254

Movement_254: @ 254
	WalkDownFast 0x1
	WalkLeftFast 0x4
	WalkDownFast 0x2
	EndMovement 0x0
@ 264

Movement_264: @ 264
	WalkLeftFast 0x1
	WalkDownFast 0x1
	WalkLeftFast 0x3
	WalkDownFast 0x2
	EndMovement 0x0
@ 278

Script_3: @ 278
	LockAll
	SetVar 0x40c1, 0x1
	ApplyMovement 0x0, Movement_2a0
	WaitMovement
	ApplyMovement 0xff, Movement_2a8
	WaitMovement
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 29f

.byte 0x0 @ 0x29f

Movement_2a0: @ 2a0
	Exclamation 0x1
	EndMovement 0x0
@ 2a8

Movement_2a8: @ 2a8
	WalkUpFast 0x2
	WalkRightFast 0x4
	EndMovement 0x0
@ 2b4

Script_5: @ 2b4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarHero 0x0
	CopyVar 0x4001, 0x4021
	CheckFlag 0x5
	CompareLastResultJump EQUAL, Script_branch_34d
	Call Function_118a
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_34d
	CheckFlag 0x1
	CompareLastResultCall LESSER, Script_branch_36e
	CheckFlag 0x1
	CompareLastResultCall EQUAL, Script_branch_376
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_386
	Call Function_32f
	If 0x8000, 0x0
	CompareLastResultJump EQUAL, Script_branch_398
	SetFlag 0x5
	Call Function_1091
	Jump Script_branch_34d
	End
@ 32f

Function_32f: @ 32f
	Call Function_811
	CloseMsgOnKeyPress
	RandomEvent 0x39
	Call Function_605
	TrainerBattle 0x4005, 0x0
	CheckTrainerLost 0x8000
	Return
@ 34d

Script_branch_34d: @ 34d
	Call Function_571
	If 0x8001, 0x2
	CompareLastResultJump EQUAL, Script_branch_39e
	Call Function_afc
	Jump Script_branch_37e
	End
@ 36e

Script_branch_36e: @ 36e
	Call Function_718
	Return
@ 376

Script_branch_376: @ 376
	Call Function_a03
	Return
@ 37e

Script_branch_37e: @ 37e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 386

Script_branch_386: @ 386
	SetFlag 0x1
	Call Function_90a
	Jump Script_branch_37e
	End
@ 398

Script_branch_398: @ 398
	LostGoPc
	ReleaseAll
	End
@ 39e

Script_branch_39e: @ 39e
	If 0x4001, 0x7e
	CompareLastResultCall EQUAL, Script_branch_3c0
	If 0x4001, 0x84
	CompareLastResultCall EQUAL, Script_branch_3c5
	Jump Script_branch_37e
	End
@ 3c0

Script_branch_3c0: @ 3c0
	Message 0x16
	Return
@ 3c5

Script_branch_3c5: @ 3c5
	Message 0x49
	Return
@ 3ca

Script_6: @ 3ca
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarHero 0x0
	CopyVar 0x4001, 0x4022
	CheckFlag 0x6
	CompareLastResultJump EQUAL, Script_branch_34d
	Call Function_118a
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_34d
	CheckFlag 0x2
	CompareLastResultCall LESSER, Script_branch_36e
	CheckFlag 0x2
	CompareLastResultCall EQUAL, Script_branch_376
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_445
	Call Function_32f
	If 0x8000, 0x0
	CompareLastResultJump EQUAL, Script_branch_398
	SetFlag 0x6
	Call Function_1091
	Jump Script_branch_34d
	End
@ 445

Script_branch_445: @ 445
	SetFlag 0x2
	Call Function_90a
	Jump Script_branch_37e
	End
@ 457

Script_7: @ 457
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarHero 0x0
	CopyVar 0x4001, 0x4023
	CheckFlag 0x7
	CompareLastResultJump EQUAL, Script_branch_34d
	Call Function_118a
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_34d
	CheckFlag 0x3
	CompareLastResultCall LESSER, Script_branch_36e
	CheckFlag 0x3
	CompareLastResultCall EQUAL, Script_branch_376
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_4d2
	Call Function_32f
	If 0x8000, 0x0
	CompareLastResultJump EQUAL, Script_branch_398
	SetFlag 0x7
	Call Function_1091
	Jump Script_branch_34d
	End
@ 4d2

Script_branch_4d2: @ 4d2
	SetFlag 0x3
	Call Function_90a
	Jump Script_branch_37e
	End
@ 4e4

Script_8: @ 4e4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarHero 0x0
	CopyVar 0x4001, 0x4024
	CheckFlag 0x8
	CompareLastResultJump EQUAL, Script_branch_34d
	Call Function_118a
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_34d
	CheckFlag 0x4
	CompareLastResultCall LESSER, Script_branch_36e
	CheckFlag 0x4
	CompareLastResultCall EQUAL, Script_branch_376
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_55f
	Call Function_32f
	If 0x8000, 0x0
	CompareLastResultJump EQUAL, Script_branch_398
	SetFlag 0x8
	Call Function_1091
	Jump Script_branch_34d
	End
@ 55f

Script_branch_55f: @ 55f
	SetFlag 0x4
	Call Function_90a
	Jump Script_branch_37e
	End
@ 571

Function_571: @ 571
	SetVar 0x8001, 0x0
	If 0x4001, 0x7e
	CompareLastResultJump EQUAL, Script_branch_593
	If 0x4001, 0x84
	CompareLastResultJump EQUAL, Script_branch_593
	Return
@ 593

Script_branch_593: @ 593
	If 0x4021, 0x7e
	CompareLastResultCall EQUAL, Script_branch_5fd
	If 0x4022, 0x7e
	CompareLastResultCall EQUAL, Script_branch_5fd
	If 0x4023, 0x7e
	CompareLastResultCall EQUAL, Script_branch_5fd
	If 0x4024, 0x7e
	CompareLastResultCall EQUAL, Script_branch_5fd
	If 0x4021, 0x84
	CompareLastResultCall EQUAL, Script_branch_5fd
	If 0x4022, 0x84
	CompareLastResultCall EQUAL, Script_branch_5fd
	If 0x4023, 0x84
	CompareLastResultCall EQUAL, Script_branch_5fd
	If 0x4024, 0x84
	CompareLastResultCall EQUAL, Script_branch_5fd
	Return
@ 5fd

Script_branch_5fd: @ 5fd
	ScriptCmd_AddValue 0x8001, 0x1
	Return
@ 605

Function_605: @ 605
	If 0x4001, 0x7e
	CompareLastResultCall EQUAL, Script_branch_6b0
	If 0x4001, 0x7f
	CompareLastResultCall EQUAL, Script_branch_6b8
	If 0x4001, 0x80
	CompareLastResultCall EQUAL, Script_branch_6c0
	If 0x4001, 0x81
	CompareLastResultCall EQUAL, Script_branch_6c8
	If 0x4001, 0x82
	CompareLastResultCall EQUAL, Script_branch_6d0
	If 0x4001, 0x83
	CompareLastResultCall EQUAL, Script_branch_6d8
	If 0x4001, 0x84
	CompareLastResultCall EQUAL, Script_branch_6e0
	If 0x4001, 0x85
	CompareLastResultCall EQUAL, Script_branch_6e8
	If 0x4001, 0x8d
	CompareLastResultCall EQUAL, Script_branch_6f0
	If 0x4001, 0x8e
	CompareLastResultCall EQUAL, Script_branch_6f8
	If 0x4001, 0x8f
	CompareLastResultCall EQUAL, Script_branch_700
	If 0x4001, 0x90
	CompareLastResultCall EQUAL, Script_branch_708
	If 0x4001, 0x91
	CompareLastResultCall EQUAL, Script_branch_710
	Return
@ 6b0

Script_branch_6b0: @ 6b0
	SetVar 0x4005, 0x35a
	Return
@ 6b8

Script_branch_6b8: @ 6b8
	SetVar 0x4005, 0x359
	Return
@ 6c0

Script_branch_6c0: @ 6c0
	SetVar 0x4005, 0x35b
	Return
@ 6c8

Script_branch_6c8: @ 6c8
	SetVar 0x4005, 0x356
	Return
@ 6d0

Script_branch_6d0: @ 6d0
	SetVar 0x4005, 0x35c
	Return
@ 6d8

Script_branch_6d8: @ 6d8
	SetVar 0x4005, 0x355
	Return
@ 6e0

Script_branch_6e0: @ 6e0
	SetVar 0x4005, 0x358
	Return
@ 6e8

Script_branch_6e8: @ 6e8
	SetVar 0x4005, 0x357
	Return
@ 6f0

Script_branch_6f0: @ 6f0
	SetVar 0x4005, 0x361
	Return
@ 6f8

Script_branch_6f8: @ 6f8
	SetVar 0x4005, 0x35d
	Return
@ 700

Script_branch_700: @ 700
	SetVar 0x4005, 0x35f
	Return
@ 708

Script_branch_708: @ 708
	SetVar 0x4005, 0x35e
	Return
@ 710

Script_branch_710: @ 710
	SetVar 0x4005, 0x360
	Return
@ 718

Function_718: @ 718
	If 0x4061, 0x1
	CompareLastResultJump EQUAL, Script_branch_bf5
	If 0x4001, 0x7e
	CompareLastResultCall EQUAL, Script_branch_7d0
	If 0x4001, 0x7f
	CompareLastResultCall EQUAL, Script_branch_7d5
	If 0x4001, 0x80
	CompareLastResultCall EQUAL, Script_branch_7da
	If 0x4001, 0x81
	CompareLastResultCall EQUAL, Script_branch_7df
	If 0x4001, 0x82
	CompareLastResultCall EQUAL, Script_branch_7e4
	If 0x4001, 0x83
	CompareLastResultCall EQUAL, Script_branch_7e9
	If 0x4001, 0x84
	CompareLastResultCall EQUAL, Script_branch_7ee
	If 0x4001, 0x85
	CompareLastResultCall EQUAL, Script_branch_7f3
	If 0x4001, 0x8d
	CompareLastResultCall EQUAL, Script_branch_7f8
	If 0x4001, 0x8e
	CompareLastResultCall EQUAL, Script_branch_7fd
	If 0x4001, 0x8f
	CompareLastResultCall EQUAL, Script_branch_802
	If 0x4001, 0x90
	CompareLastResultCall EQUAL, Script_branch_807
	If 0x4001, 0x91
	CompareLastResultCall EQUAL, Script_branch_80c
	Return
@ 7d0

Script_branch_7d0: @ 7d0
	Message 0xc
	Return
@ 7d5

Script_branch_7d5: @ 7d5
	Message 0x17
	Return
@ 7da

Script_branch_7da: @ 7da
	Message 0x35
	Return
@ 7df

Script_branch_7df: @ 7df
	Message 0x2b
	Return
@ 7e4

Script_branch_7e4: @ 7e4
	Message 0x21
	Return
@ 7e9

Script_branch_7e9: @ 7e9
	Message 0x4a
	Return
@ 7ee

Script_branch_7ee: @ 7ee
	Message 0x3f
	Return
@ 7f3

Script_branch_7f3: @ 7f3
	Message 0x54
	Return
@ 7f8

Script_branch_7f8: @ 7f8
	Message 0x5e
	Return
@ 7fd

Script_branch_7fd: @ 7fd
	Message 0x72
	Return
@ 802

Script_branch_802: @ 802
	Message 0x7c
	Return
@ 807

Script_branch_807: @ 807
	Message 0x86
	Return
@ 80c

Script_branch_80c: @ 80c
	Message 0x68
	Return
@ 811

Function_811: @ 811
	If 0x4061, 0x1
	CompareLastResultJump EQUAL, Script_branch_ce1
	If 0x4001, 0x7e
	CompareLastResultCall EQUAL, Script_branch_8c9
	If 0x4001, 0x7f
	CompareLastResultCall EQUAL, Script_branch_8ce
	If 0x4001, 0x80
	CompareLastResultCall EQUAL, Script_branch_8d3
	If 0x4001, 0x81
	CompareLastResultCall EQUAL, Script_branch_8d8
	If 0x4001, 0x82
	CompareLastResultCall EQUAL, Script_branch_8dd
	If 0x4001, 0x83
	CompareLastResultCall EQUAL, Script_branch_8e2
	If 0x4001, 0x84
	CompareLastResultCall EQUAL, Script_branch_8e7
	If 0x4001, 0x85
	CompareLastResultCall EQUAL, Script_branch_8ec
	If 0x4001, 0x8d
	CompareLastResultCall EQUAL, Script_branch_8f1
	If 0x4001, 0x8e
	CompareLastResultCall EQUAL, Script_branch_8f6
	If 0x4001, 0x8f
	CompareLastResultCall EQUAL, Script_branch_8fb
	If 0x4001, 0x90
	CompareLastResultCall EQUAL, Script_branch_900
	If 0x4001, 0x91
	CompareLastResultCall EQUAL, Script_branch_905
	Return
@ 8c9

Script_branch_8c9: @ 8c9
	Message 0xd
	Return
@ 8ce

Script_branch_8ce: @ 8ce
	Message 0x18
	Return
@ 8d3

Script_branch_8d3: @ 8d3
	Message 0x36
	Return
@ 8d8

Script_branch_8d8: @ 8d8
	Message 0x2c
	Return
@ 8dd

Script_branch_8dd: @ 8dd
	Message 0x22
	Return
@ 8e2

Script_branch_8e2: @ 8e2
	Message 0x4b
	Return
@ 8e7

Script_branch_8e7: @ 8e7
	Message 0x40
	Return
@ 8ec

Script_branch_8ec: @ 8ec
	Message 0x55
	Return
@ 8f1

Script_branch_8f1: @ 8f1
	Message 0x5f
	Return
@ 8f6

Script_branch_8f6: @ 8f6
	Message 0x73
	Return
@ 8fb

Script_branch_8fb: @ 8fb
	Message 0x7d
	Return
@ 900

Script_branch_900: @ 900
	Message 0x87
	Return
@ 905

Script_branch_905: @ 905
	Message 0x69
	Return
@ 90a

Function_90a: @ 90a
	If 0x4061, 0x1
	CompareLastResultJump EQUAL, Script_branch_dcd
	If 0x4001, 0x7e
	CompareLastResultCall EQUAL, Script_branch_9c2
	If 0x4001, 0x7f
	CompareLastResultCall EQUAL, Script_branch_9c7
	If 0x4001, 0x80
	CompareLastResultCall EQUAL, Script_branch_9cc
	If 0x4001, 0x81
	CompareLastResultCall EQUAL, Script_branch_9d1
	If 0x4001, 0x82
	CompareLastResultCall EQUAL, Script_branch_9d6
	If 0x4001, 0x83
	CompareLastResultCall EQUAL, Script_branch_9db
	If 0x4001, 0x84
	CompareLastResultCall EQUAL, Script_branch_9e0
	If 0x4001, 0x85
	CompareLastResultCall EQUAL, Script_branch_9e5
	If 0x4001, 0x8d
	CompareLastResultCall EQUAL, Script_branch_9ea
	If 0x4001, 0x8e
	CompareLastResultCall EQUAL, Script_branch_9ef
	If 0x4001, 0x8f
	CompareLastResultCall EQUAL, Script_branch_9f4
	If 0x4001, 0x90
	CompareLastResultCall EQUAL, Script_branch_9f9
	If 0x4001, 0x91
	CompareLastResultCall EQUAL, Script_branch_9fe
	Return
@ 9c2

Script_branch_9c2: @ 9c2
	Message 0xe
	Return
@ 9c7

Script_branch_9c7: @ 9c7
	Message 0x19
	Return
@ 9cc

Script_branch_9cc: @ 9cc
	Message 0x37
	Return
@ 9d1

Script_branch_9d1: @ 9d1
	Message 0x2d
	Return
@ 9d6

Script_branch_9d6: @ 9d6
	Message 0x23
	Return
@ 9db

Script_branch_9db: @ 9db
	Message 0x4c
	Return
@ 9e0

Script_branch_9e0: @ 9e0
	Message 0x41
	Return
@ 9e5

Script_branch_9e5: @ 9e5
	Message 0x56
	Return
@ 9ea

Script_branch_9ea: @ 9ea
	Message 0x60
	Return
@ 9ef

Script_branch_9ef: @ 9ef
	Message 0x74
	Return
@ 9f4

Script_branch_9f4: @ 9f4
	Message 0x7e
	Return
@ 9f9

Script_branch_9f9: @ 9f9
	Message 0x88
	Return
@ 9fe

Script_branch_9fe: @ 9fe
	Message 0x6a
	Return
@ a03

Function_a03: @ a03
	If 0x4061, 0x1
	CompareLastResultJump EQUAL, Script_branch_eb9
	If 0x4001, 0x7e
	CompareLastResultCall EQUAL, Script_branch_abb
	If 0x4001, 0x7f
	CompareLastResultCall EQUAL, Script_branch_ac0
	If 0x4001, 0x80
	CompareLastResultCall EQUAL, Script_branch_ac5
	If 0x4001, 0x81
	CompareLastResultCall EQUAL, Script_branch_aca
	If 0x4001, 0x82
	CompareLastResultCall EQUAL, Script_branch_acf
	If 0x4001, 0x83
	CompareLastResultCall EQUAL, Script_branch_ad4
	If 0x4001, 0x84
	CompareLastResultCall EQUAL, Script_branch_ad9
	If 0x4001, 0x85
	CompareLastResultCall EQUAL, Script_branch_ade
	If 0x4001, 0x8d
	CompareLastResultCall EQUAL, Script_branch_ae3
	If 0x4001, 0x8e
	CompareLastResultCall EQUAL, Script_branch_ae8
	If 0x4001, 0x8f
	CompareLastResultCall EQUAL, Script_branch_aed
	If 0x4001, 0x90
	CompareLastResultCall EQUAL, Script_branch_af2
	If 0x4001, 0x91
	CompareLastResultCall EQUAL, Script_branch_af7
	Return
@ abb

Script_branch_abb: @ abb
	Message 0xf
	Return
@ ac0

Script_branch_ac0: @ ac0
	Message 0x1a
	Return
@ ac5

Script_branch_ac5: @ ac5
	Message 0x38
	Return
@ aca

Script_branch_aca: @ aca
	Message 0x2e
	Return
@ acf

Script_branch_acf: @ acf
	Message 0x24
	Return
@ ad4

Script_branch_ad4: @ ad4
	Message 0x4d
	Return
@ ad9

Script_branch_ad9: @ ad9
	Message 0x42
	Return
@ ade

Script_branch_ade: @ ade
	Message 0x57
	Return
@ ae3

Script_branch_ae3: @ ae3
	Message 0x61
	Return
@ ae8

Script_branch_ae8: @ ae8
	Message 0x75
	Return
@ aed

Script_branch_aed: @ aed
	Message 0x7f
	Return
@ af2

Script_branch_af2: @ af2
	Message 0x89
	Return
@ af7

Script_branch_af7: @ af7
	Message 0x6b
	Return
@ afc

Function_afc: @ afc
	If 0x4061, 0x1
	CompareLastResultJump EQUAL, Script_branch_fa5
	If 0x4001, 0x7e
	CompareLastResultCall EQUAL, Script_branch_bb4
	If 0x4001, 0x7f
	CompareLastResultCall EQUAL, Script_branch_bb9
	If 0x4001, 0x80
	CompareLastResultCall EQUAL, Script_branch_bbe
	If 0x4001, 0x81
	CompareLastResultCall EQUAL, Script_branch_bc3
	If 0x4001, 0x82
	CompareLastResultCall EQUAL, Script_branch_bc8
	If 0x4001, 0x83
	CompareLastResultCall EQUAL, Script_branch_bcd
	If 0x4001, 0x84
	CompareLastResultCall EQUAL, Script_branch_bd2
	If 0x4001, 0x85
	CompareLastResultCall EQUAL, Script_branch_bd7
	If 0x4001, 0x8d
	CompareLastResultCall EQUAL, Script_branch_bdc
	If 0x4001, 0x8e
	CompareLastResultCall EQUAL, Script_branch_be1
	If 0x4001, 0x8f
	CompareLastResultCall EQUAL, Script_branch_be6
	If 0x4001, 0x90
	CompareLastResultCall EQUAL, Script_branch_beb
	If 0x4001, 0x91
	CompareLastResultCall EQUAL, Script_branch_bf0
	Return
@ bb4

Script_branch_bb4: @ bb4
	Message 0x10
	Return
@ bb9

Script_branch_bb9: @ bb9
	Message 0x1b
	Return
@ bbe

Script_branch_bbe: @ bbe
	Message 0x39
	Return
@ bc3

Script_branch_bc3: @ bc3
	Message 0x2f
	Return
@ bc8

Script_branch_bc8: @ bc8
	Message 0x25
	Return
@ bcd

Script_branch_bcd: @ bcd
	Message 0x4e
	Return
@ bd2

Script_branch_bd2: @ bd2
	Message 0x43
	Return
@ bd7

Script_branch_bd7: @ bd7
	Message 0x58
	Return
@ bdc

Script_branch_bdc: @ bdc
	Message 0x62
	Return
@ be1

Script_branch_be1: @ be1
	Message 0x76
	Return
@ be6

Script_branch_be6: @ be6
	Message 0x80
	Return
@ beb

Script_branch_beb: @ beb
	Message 0x8a
	Return
@ bf0

Script_branch_bf0: @ bf0
	Message 0x6c
	Return
@ bf5

Script_branch_bf5: @ bf5
	If 0x4001, 0x7e
	CompareLastResultCall EQUAL, Script_branch_ca0
	If 0x4001, 0x7f
	CompareLastResultCall EQUAL, Script_branch_ca5
	If 0x4001, 0x80
	CompareLastResultCall EQUAL, Script_branch_caa
	If 0x4001, 0x81
	CompareLastResultCall EQUAL, Script_branch_caf
	If 0x4001, 0x82
	CompareLastResultCall EQUAL, Script_branch_cb4
	If 0x4001, 0x83
	CompareLastResultCall EQUAL, Script_branch_cb9
	If 0x4001, 0x84
	CompareLastResultCall EQUAL, Script_branch_cbe
	If 0x4001, 0x85
	CompareLastResultCall EQUAL, Script_branch_cc3
	If 0x4001, 0x8d
	CompareLastResultCall EQUAL, Script_branch_cc8
	If 0x4001, 0x8e
	CompareLastResultCall EQUAL, Script_branch_ccd
	If 0x4001, 0x8f
	CompareLastResultCall EQUAL, Script_branch_cd2
	If 0x4001, 0x90
	CompareLastResultCall EQUAL, Script_branch_cd7
	If 0x4001, 0x91
	CompareLastResultCall EQUAL, Script_branch_cdc
	Return
@ ca0

Script_branch_ca0: @ ca0
	Message 0x11
	Return
@ ca5

Script_branch_ca5: @ ca5
	Message 0x1c
	Return
@ caa

Script_branch_caa: @ caa
	Message 0x3a
	Return
@ caf

Script_branch_caf: @ caf
	Message 0x30
	Return
@ cb4

Script_branch_cb4: @ cb4
	Message 0x26
	Return
@ cb9

Script_branch_cb9: @ cb9
	Message 0x4f
	Return
@ cbe

Script_branch_cbe: @ cbe
	Message 0x44
	Return
@ cc3

Script_branch_cc3: @ cc3
	Message 0x59
	Return
@ cc8

Script_branch_cc8: @ cc8
	Message 0x63
	Return
@ ccd

Script_branch_ccd: @ ccd
	Message 0x77
	Return
@ cd2

Script_branch_cd2: @ cd2
	Message 0x81
	Return
@ cd7

Script_branch_cd7: @ cd7
	Message 0x8b
	Return
@ cdc

Script_branch_cdc: @ cdc
	Message 0x6d
	Return
@ ce1

Script_branch_ce1: @ ce1
	If 0x4001, 0x7e
	CompareLastResultCall EQUAL, Script_branch_d8c
	If 0x4001, 0x7f
	CompareLastResultCall EQUAL, Script_branch_d91
	If 0x4001, 0x80
	CompareLastResultCall EQUAL, Script_branch_d96
	If 0x4001, 0x81
	CompareLastResultCall EQUAL, Script_branch_d9b
	If 0x4001, 0x82
	CompareLastResultCall EQUAL, Script_branch_da0
	If 0x4001, 0x83
	CompareLastResultCall EQUAL, Script_branch_da5
	If 0x4001, 0x84
	CompareLastResultCall EQUAL, Script_branch_daa
	If 0x4001, 0x85
	CompareLastResultCall EQUAL, Script_branch_daf
	If 0x4001, 0x8d
	CompareLastResultCall EQUAL, Script_branch_db4
	If 0x4001, 0x8e
	CompareLastResultCall EQUAL, Script_branch_db9
	If 0x4001, 0x8f
	CompareLastResultCall EQUAL, Script_branch_dbe
	If 0x4001, 0x90
	CompareLastResultCall EQUAL, Script_branch_dc3
	If 0x4001, 0x91
	CompareLastResultCall EQUAL, Script_branch_dc8
	Return
@ d8c

Script_branch_d8c: @ d8c
	Message 0x12
	Return
@ d91

Script_branch_d91: @ d91
	Message 0x1d
	Return
@ d96

Script_branch_d96: @ d96
	Message 0x3b
	Return
@ d9b

Script_branch_d9b: @ d9b
	Message 0x31
	Return
@ da0

Script_branch_da0: @ da0
	Message 0x27
	Return
@ da5

Script_branch_da5: @ da5
	Message 0x50
	Return
@ daa

Script_branch_daa: @ daa
	Message 0x45
	Return
@ daf

Script_branch_daf: @ daf
	Message 0x5a
	Return
@ db4

Script_branch_db4: @ db4
	Message 0x64
	Return
@ db9

Script_branch_db9: @ db9
	Message 0x78
	Return
@ dbe

Script_branch_dbe: @ dbe
	Message 0x82
	Return
@ dc3

Script_branch_dc3: @ dc3
	Message 0x8c
	Return
@ dc8

Script_branch_dc8: @ dc8
	Message 0x6e
	Return
@ dcd

Script_branch_dcd: @ dcd
	If 0x4001, 0x7e
	CompareLastResultCall EQUAL, Script_branch_e78
	If 0x4001, 0x7f
	CompareLastResultCall EQUAL, Script_branch_e7d
	If 0x4001, 0x80
	CompareLastResultCall EQUAL, Script_branch_e82
	If 0x4001, 0x81
	CompareLastResultCall EQUAL, Script_branch_e87
	If 0x4001, 0x82
	CompareLastResultCall EQUAL, Script_branch_e8c
	If 0x4001, 0x83
	CompareLastResultCall EQUAL, Script_branch_e91
	If 0x4001, 0x84
	CompareLastResultCall EQUAL, Script_branch_e96
	If 0x4001, 0x85
	CompareLastResultCall EQUAL, Script_branch_e9b
	If 0x4001, 0x8d
	CompareLastResultCall EQUAL, Script_branch_ea0
	If 0x4001, 0x8e
	CompareLastResultCall EQUAL, Script_branch_ea5
	If 0x4001, 0x8f
	CompareLastResultCall EQUAL, Script_branch_eaa
	If 0x4001, 0x90
	CompareLastResultCall EQUAL, Script_branch_eaf
	If 0x4001, 0x91
	CompareLastResultCall EQUAL, Script_branch_eb4
	Return
@ e78

Script_branch_e78: @ e78
	Message 0x13
	Return
@ e7d

Script_branch_e7d: @ e7d
	Message 0x1e
	Return
@ e82

Script_branch_e82: @ e82
	Message 0x3c
	Return
@ e87

Script_branch_e87: @ e87
	Message 0x32
	Return
@ e8c

Script_branch_e8c: @ e8c
	Message 0x28
	Return
@ e91

Script_branch_e91: @ e91
	Message 0x51
	Return
@ e96

Script_branch_e96: @ e96
	Message 0x46
	Return
@ e9b

Script_branch_e9b: @ e9b
	Message 0x5b
	Return
@ ea0

Script_branch_ea0: @ ea0
	Message 0x65
	Return
@ ea5

Script_branch_ea5: @ ea5
	Message 0x79
	Return
@ eaa

Script_branch_eaa: @ eaa
	Message 0x83
	Return
@ eaf

Script_branch_eaf: @ eaf
	Message 0x8d
	Return
@ eb4

Script_branch_eb4: @ eb4
	Message 0x6f
	Return
@ eb9

Script_branch_eb9: @ eb9
	If 0x4001, 0x7e
	CompareLastResultCall EQUAL, Script_branch_f64
	If 0x4001, 0x7f
	CompareLastResultCall EQUAL, Script_branch_f69
	If 0x4001, 0x80
	CompareLastResultCall EQUAL, Script_branch_f6e
	If 0x4001, 0x81
	CompareLastResultCall EQUAL, Script_branch_f73
	If 0x4001, 0x82
	CompareLastResultCall EQUAL, Script_branch_f78
	If 0x4001, 0x83
	CompareLastResultCall EQUAL, Script_branch_f7d
	If 0x4001, 0x84
	CompareLastResultCall EQUAL, Script_branch_f82
	If 0x4001, 0x85
	CompareLastResultCall EQUAL, Script_branch_f87
	If 0x4001, 0x8d
	CompareLastResultCall EQUAL, Script_branch_f8c
	If 0x4001, 0x8e
	CompareLastResultCall EQUAL, Script_branch_f91
	If 0x4001, 0x8f
	CompareLastResultCall EQUAL, Script_branch_f96
	If 0x4001, 0x90
	CompareLastResultCall EQUAL, Script_branch_f9b
	If 0x4001, 0x91
	CompareLastResultCall EQUAL, Script_branch_fa0
	Return
@ f64

Script_branch_f64: @ f64
	Message 0x14
	Return
@ f69

Script_branch_f69: @ f69
	Message 0x1f
	Return
@ f6e

Script_branch_f6e: @ f6e
	Message 0x3d
	Return
@ f73

Script_branch_f73: @ f73
	Message 0x33
	Return
@ f78

Script_branch_f78: @ f78
	Message 0x29
	Return
@ f7d

Script_branch_f7d: @ f7d
	Message 0x52
	Return
@ f82

Script_branch_f82: @ f82
	Message 0x47
	Return
@ f87

Script_branch_f87: @ f87
	Message 0x5c
	Return
@ f8c

Script_branch_f8c: @ f8c
	Message 0x66
	Return
@ f91

Script_branch_f91: @ f91
	Message 0x7a
	Return
@ f96

Script_branch_f96: @ f96
	Message 0x84
	Return
@ f9b

Script_branch_f9b: @ f9b
	Message 0x8e
	Return
@ fa0

Script_branch_fa0: @ fa0
	Message 0x70
	Return
@ fa5

Script_branch_fa5: @ fa5
	If 0x4001, 0x7e
	CompareLastResultCall EQUAL, Script_branch_1050
	If 0x4001, 0x7f
	CompareLastResultCall EQUAL, Script_branch_1055
	If 0x4001, 0x80
	CompareLastResultCall EQUAL, Script_branch_105a
	If 0x4001, 0x81
	CompareLastResultCall EQUAL, Script_branch_105f
	If 0x4001, 0x82
	CompareLastResultCall EQUAL, Script_branch_1064
	If 0x4001, 0x83
	CompareLastResultCall EQUAL, Script_branch_1069
	If 0x4001, 0x84
	CompareLastResultCall EQUAL, Script_branch_106e
	If 0x4001, 0x85
	CompareLastResultCall EQUAL, Script_branch_1073
	If 0x4001, 0x8d
	CompareLastResultCall EQUAL, Script_branch_1078
	If 0x4001, 0x8e
	CompareLastResultCall EQUAL, Script_branch_107d
	If 0x4001, 0x8f
	CompareLastResultCall EQUAL, Script_branch_1082
	If 0x4001, 0x90
	CompareLastResultCall EQUAL, Script_branch_1087
	If 0x4001, 0x91
	CompareLastResultCall EQUAL, Script_branch_108c
	Return
@ 1050

Script_branch_1050: @ 1050
	Message 0x15
	Return
@ 1055

Script_branch_1055: @ 1055
	Message 0x20
	Return
@ 105a

Script_branch_105a: @ 105a
	Message 0x3e
	Return
@ 105f

Script_branch_105f: @ 105f
	Message 0x34
	Return
@ 1064

Script_branch_1064: @ 1064
	Message 0x2a
	Return
@ 1069

Script_branch_1069: @ 1069
	Message 0x53
	Return
@ 106e

Script_branch_106e: @ 106e
	Message 0x48
	Return
@ 1073

Script_branch_1073: @ 1073
	Message 0x5d
	Return
@ 1078

Script_branch_1078: @ 1078
	Message 0x67
	Return
@ 107d

Script_branch_107d: @ 107d
	Message 0x7b
	Return
@ 1082

Script_branch_1082: @ 1082
	Message 0x85
	Return
@ 1087

Script_branch_1087: @ 1087
	Message 0x8f
	Return
@ 108c

Script_branch_108c: @ 108c
	Message 0x71
	Return
@ 1091

Function_1091: @ 1091
	If 0x4001, 0x7e
	CompareLastResultCall EQUAL, Script_branch_113c
	If 0x4001, 0x7f
	CompareLastResultCall EQUAL, Script_branch_1142
	If 0x4001, 0x80
	CompareLastResultCall EQUAL, Script_branch_1148
	If 0x4001, 0x81
	CompareLastResultCall EQUAL, Script_branch_114e
	If 0x4001, 0x82
	CompareLastResultCall EQUAL, Script_branch_1154
	If 0x4001, 0x83
	CompareLastResultCall EQUAL, Script_branch_115a
	If 0x4001, 0x84
	CompareLastResultCall EQUAL, Script_branch_1160
	If 0x4001, 0x85
	CompareLastResultCall EQUAL, Script_branch_1166
	If 0x4001, 0x8d
	CompareLastResultCall EQUAL, Script_branch_116c
	If 0x4001, 0x8e
	CompareLastResultCall EQUAL, Script_branch_1172
	If 0x4001, 0x8f
	CompareLastResultCall EQUAL, Script_branch_1178
	If 0x4001, 0x90
	CompareLastResultCall EQUAL, Script_branch_117e
	If 0x4001, 0x91
	CompareLastResultCall EQUAL, Script_branch_1184
	Return
@ 113c

Script_branch_113c: @ 113c
	SetFlag 0xab8
	Return
@ 1142

Script_branch_1142: @ 1142
	SetFlag 0xab9
	Return
@ 1148

Script_branch_1148: @ 1148
	SetFlag 0xaba
	Return
@ 114e

Script_branch_114e: @ 114e
	SetFlag 0xabb
	Return
@ 1154

Script_branch_1154: @ 1154
	SetFlag 0xac5
	Return
@ 115a

Script_branch_115a: @ 115a
	SetFlag 0xac6
	Return
@ 1160

Script_branch_1160: @ 1160
	SetFlag 0xac7
	Return
@ 1166

Script_branch_1166: @ 1166
	SetFlag 0xac8
	Return
@ 116c

Script_branch_116c: @ 116c
	SetFlag 0xac9
	Return
@ 1172

Script_branch_1172: @ 1172
	SetFlag 0xaca
	Return
@ 1178

Script_branch_1178: @ 1178
	SetFlag 0xacb
	Return
@ 117e

Script_branch_117e: @ 117e
	SetFlag 0xacc
	Return
@ 1184

Script_branch_1184: @ 1184
	SetFlag 0xacd
	Return
@ 118a

Function_118a: @ 118a
	SetVar 0x800c, 0x0
	If 0x4001, 0x7e
	CompareLastResultJump EQUAL, Script_branch_123b
	If 0x4001, 0x7f
	CompareLastResultJump EQUAL, Script_branch_1248
	If 0x4001, 0x80
	CompareLastResultJump EQUAL, Script_branch_1255
	If 0x4001, 0x81
	CompareLastResultJump EQUAL, Script_branch_1262
	If 0x4001, 0x82
	CompareLastResultJump EQUAL, Script_branch_126f
	If 0x4001, 0x83
	CompareLastResultJump EQUAL, Script_branch_127c
	If 0x4001, 0x84
	CompareLastResultJump EQUAL, Script_branch_1289
	If 0x4001, 0x85
	CompareLastResultJump EQUAL, Script_branch_1296
	If 0x4001, 0x8d
	CompareLastResultJump EQUAL, Script_branch_12a3
	If 0x4001, 0x8e
	CompareLastResultJump EQUAL, Script_branch_12b0
	If 0x4001, 0x8f
	CompareLastResultJump EQUAL, Script_branch_12bd
	If 0x4001, 0x90
	CompareLastResultJump EQUAL, Script_branch_12ca
	If 0x4001, 0x91
	CompareLastResultJump EQUAL, Script_branch_12d7
	Return
@ 123b

Script_branch_123b: @ 123b
	CheckFlag 0xab8
	CompareLastResultJump EQUAL, Script_branch_12e4
	Return
@ 1248

Script_branch_1248: @ 1248
	CheckFlag 0xab9
	CompareLastResultJump EQUAL, Script_branch_12e4
	Return
@ 1255

Script_branch_1255: @ 1255
	CheckFlag 0xaba
	CompareLastResultJump EQUAL, Script_branch_12e4
	Return
@ 1262

Script_branch_1262: @ 1262
	CheckFlag 0xabb
	CompareLastResultJump EQUAL, Script_branch_12e4
	Return
@ 126f

Script_branch_126f: @ 126f
	CheckFlag 0xac5
	CompareLastResultJump EQUAL, Script_branch_12e4
	Return
@ 127c

Script_branch_127c: @ 127c
	CheckFlag 0xac6
	CompareLastResultJump EQUAL, Script_branch_12e4
	Return
@ 1289

Script_branch_1289: @ 1289
	CheckFlag 0xac7
	CompareLastResultJump EQUAL, Script_branch_12e4
	Return
@ 1296

Script_branch_1296: @ 1296
	CheckFlag 0xac8
	CompareLastResultJump EQUAL, Script_branch_12e4
	Return
@ 12a3

Script_branch_12a3: @ 12a3
	CheckFlag 0xac9
	CompareLastResultJump EQUAL, Script_branch_12e4
	Return
@ 12b0

Script_branch_12b0: @ 12b0
	CheckFlag 0xaca
	CompareLastResultJump EQUAL, Script_branch_12e4
	Return
@ 12bd

Script_branch_12bd: @ 12bd
	CheckFlag 0xacb
	CompareLastResultJump EQUAL, Script_branch_12e4
	Return
@ 12ca

Script_branch_12ca: @ 12ca
	CheckFlag 0xacc
	CompareLastResultJump EQUAL, Script_branch_12e4
	Return
@ 12d7

Script_branch_12d7: @ 12d7
	CheckFlag 0xacd
	CompareLastResultJump EQUAL, Script_branch_12e4
	Return
@ 12e4

Script_branch_12e4: @ 12e4
	SetVar 0x800c, 0x1
	Return
@ 12ec

@ end_0x12ec
