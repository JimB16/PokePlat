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
	.hword 0xfd13
@ 2a

Script_7: @ 2a
	CheckFlag 0xe3
	CompareLastResultJump LESSER, Script_branch_121
	If 0x40df, 0x2
	CompareLastResultJump 0x5, Script_branch_57
	CallBTowerFunctions 0x37, 0x2, 0x4009
	If 0x4009, 0x0
	CompareLastResultJump EQUAL, Script_branch_121
Script_branch_57: @ 57
	ClearFlag 0x1ec
Script_branch_5b: @ 5b
	CheckFlag 0xe4
	CompareLastResultJump LESSER, Script_branch_12d
	If 0x40df, 0x2
	CompareLastResultJump 0x5, Script_branch_88
	CallBTowerFunctions 0x37, 0x2, 0x4009
	If 0x4009, 0x1
	CompareLastResultJump EQUAL, Script_branch_12d
Script_branch_88: @ 88
	ClearFlag 0x1ed
Script_branch_8c: @ 8c
	CheckFlag 0xe5
	CompareLastResultJump LESSER, Script_branch_139
	If 0x40df, 0x2
	CompareLastResultJump 0x5, Script_branch_b9
	CallBTowerFunctions 0x37, 0x2, 0x4009
	If 0x4009, 0x2
	CompareLastResultJump EQUAL, Script_branch_139
Script_branch_b9: @ b9
	ClearFlag 0x1ee
Script_branch_bd: @ bd
	CheckFlag 0xe6
	CompareLastResultJump LESSER, Script_branch_145
	If 0x40df, 0x2
	CompareLastResultJump 0x5, Script_branch_ea
	CallBTowerFunctions 0x37, 0x2, 0x4009
	If 0x4009, 0x3
	CompareLastResultJump EQUAL, Script_branch_145
Script_branch_ea: @ ea
	ClearFlag 0x1ef
Script_branch_ee: @ ee
	CheckFlag 0xe7
	CompareLastResultJump LESSER, Script_branch_151
	If 0x40df, 0x2
	CompareLastResultJump 0x5, Script_branch_11b
	CallBTowerFunctions 0x37, 0x2, 0x4009
	If 0x4009, 0x4
	CompareLastResultJump EQUAL, Script_branch_151
Script_branch_11b: @ 11b
	ClearFlag 0x1f0
Script_branch_11f: @ 11f
	End
@ 121

Script_branch_121: @ 121
	SetFlag 0x1ec
	Jump Script_branch_5b
	End
@ 12d

Script_branch_12d: @ 12d
	SetFlag 0x1ed
	Jump Script_branch_8c
	End
@ 139

Script_branch_139: @ 139
	SetFlag 0x1ee
	Jump Script_branch_bd
	End
@ 145

Script_branch_145: @ 145
	SetFlag 0x1ef
	Jump Script_branch_ee
	End
@ 151

Script_branch_151: @ 151
	SetFlag 0x1f0
	Jump Script_branch_11f
	End
@ 15d

Script_8: @ 15d
	If 0x40df, 0x1
	CompareLastResultCall EQUAL, Script_branch_179
	If 0x40df, 0x2
	CompareLastResultJump EQUAL, Script_branch_17f
	End
@ 179

Script_branch_179: @ 179
	RemovePeople2 0xff
	Return
@ 17f

Script_branch_17f: @ 17f
	SetOwPosition 0x0, 0x8, 0x0, 0x3, 0x1
	End
@ 18d

Script_9: @ 18d
	LockAll
	SetVar 0x40df, 0x0
	Call Function_4a6
	Message 0x0
	CloseMsgOnKeyPress
	CallBTowerFunctions 0x38, 0x0, 0x0
	ReleaseAll
	End
@ 1ac

Script_1: @ 1ac
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarHero 0x0
	Message 0x1
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1d4
	Message 0x0
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d4

Script_branch_1d4: @ 1d4
	CloseMsgOnKeyPress
	ReleaseAll
	SetVar 0x40d8, 0x3
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x146, 0x0, 0xb, 0x6, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 204

Script_10: @ 204
	LockAll
	SetVar 0x40df, 0x0
	Message 0x2
	CloseMsgOnKeyPress
	Call Function_4e0
	SetVar 0x40db, 0x2
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x147, 0x0, 0x3, 0x6, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 245

Function_245: @ 245
	RandomTeamBTower 0x4009, 0x0, 0x8004, 0x8005
	SetVarPokeStored 0x0, 0x8004, 0x0, 0x0
	SetVarAtk 0x1, 0x8005
	RandomTeamBTower 0x4009, 0x1, 0x8004, 0x8005
	SetVarPokeStored 0x2, 0x8004, 0x0, 0x0
	SetVarAtk 0x3, 0x8005
	Return
@ 275

Script_2: @ 275
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40df, 0x2
	CompareLastResultJump EQUAL, Script_branch_2d2
	SetVar 0x4009, 0x0
	RandomTeamBTower 0x4009, 0x0, 0x8004, 0x8005
	Cmd_341 0x400, 0x80
	Nop0
	SetVarAtk 0x1, 0x8005
	RandomTeamBTower 0x4009, 0x1, 0x8004, 0x8005
	Cmd_341 0x402, 0x80
	Nop0
	SetVarAtk 0x3, 0x8005
	Message 0x6
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2dd
Script_branch_2d2: @ 2d2
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2dd

Script_branch_2dd: @ 2dd
	CallBTowerFunctions 0x32, 0x4009, 0x0
	SetVar 0x40df, 0x2
	Message 0x8
	CloseMsgOnKeyPress
	ReleaseAll
	Lock 0x1
	Jump Script_branch_55c
	End
@ 2fe

Script_3: @ 2fe
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40df, 0x2
	CompareLastResultJump EQUAL, Script_branch_336
	SetVar 0x4009, 0x1
	Call Function_245
	SetVarHero 0x4
	Message 0xf
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_341
Script_branch_336: @ 336
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 341

Script_branch_341: @ 341
	CallBTowerFunctions 0x32, 0x4009, 0x0
	SetVar 0x40df, 0x2
	SetVarHero 0x0
	Message 0x11
	CloseMsgOnKeyPress
	ReleaseAll
	Lock 0x2
	Jump Script_branch_5a1
	End
@ 365

Script_4: @ 365
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40df, 0x2
	CompareLastResultJump EQUAL, Script_branch_39a
	SetVar 0x4009, 0x2
	Call Function_245
	Message 0x3
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_3a5
Script_branch_39a: @ 39a
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3a5

Script_branch_3a5: @ 3a5
	CallBTowerFunctions 0x32, 0x4009, 0x0
	SetVar 0x40df, 0x2
	Message 0x5
	CloseMsgOnKeyPress
	ReleaseAll
	Lock 0x3
	Jump Script_branch_5e6
	End
@ 3c6

Script_5: @ 3c6
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40df, 0x2
	CompareLastResultJump EQUAL, Script_branch_3fb
	SetVar 0x4009, 0x3
	Call Function_245
	Message 0xc
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_406
Script_branch_3fb: @ 3fb
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 406

Script_branch_406: @ 406
	CallBTowerFunctions 0x32, 0x4009, 0x0
	SetVar 0x40df, 0x2
	Message 0xe
	CloseMsgOnKeyPress
	ReleaseAll
	Lock 0x4
	Jump Script_branch_62b
	End
@ 427

Script_6: @ 427
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x40df, 0x2
	CompareLastResultJump EQUAL, Script_branch_45c
	SetVar 0x4009, 0x4
	Call Function_245
	Message 0x9
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_467
Script_branch_45c: @ 45c
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 467

Script_branch_467: @ 467
	CallBTowerFunctions 0x32, 0x4009, 0x0
	SetVar 0x40df, 0x2
	Message 0xb
	CloseMsgOnKeyPress
	ReleaseAll
	Lock 0x5
	Jump Script_branch_670
	End
@ 488

Function_488: @ 488
	PrepareDoorAnimation 0x0, 0x0, 0x8, 0x2, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	Return
@ 49b

Function_49b: @ 49b
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	Return
@ 4a6

Function_4a6: @ 4a6
	Call Function_488
	ApplyMovement 0x0, Movement_6c8
	WaitMovement
	AddPeople2 0xff
	ApplyMovement 0xff, Movement_6b8
	WaitMovement
	Call Function_49b
	ApplyMovement 0x0, Movement_6d8
	WaitMovement
	ApplyMovement 0xff, Movement_6c0
	WaitMovement
	Return
@ 4e0

Function_4e0: @ 4e0
	Call Function_488
	ApplyMovement 0x0, Movement_70c
	ApplyMovement 0xff, Movement_700
	WaitMovement
	Call Function_49b
	Return
@ 500

Script_branch_500: @ 500
	ApplyMovement 0x4000, Movement_718
	WaitMovement
	ApplyMovement 0x0, Movement_6e4
	WaitMovement
	Call Function_488
	ApplyMovement 0x4000, Movement_720
	WaitMovement
	Call Function_49b
	ApplyMovement 0x0, Movement_6f4
	WaitMovement
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x1ed, 0x0, 0x8, 0x4, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 55c

Script_branch_55c: @ 55c
	SetVar 0x4000, 0x1
	CheckSpritePosition 0x8000, 0x8001
	If 0x8000, 0xc
	CompareLastResultJump EQUAL, Script_branch_57d
	Jump Script_branch_58f
	End
@ 57d

Script_branch_57d: @ 57d
	ApplyMovement 0x1, Movement_72c
	WaitMovement
	Jump Script_branch_500
	End
@ 58f

Script_branch_58f: @ 58f
	ApplyMovement 0x1, Movement_740
	WaitMovement
	Jump Script_branch_500
	End
@ 5a1

Script_branch_5a1: @ 5a1
	SetVar 0x4000, 0x2
	CheckSpritePosition 0x8000, 0x8001
	If 0x8000, 0x4
	CompareLastResultJump EQUAL, Script_branch_5c2
	Jump Script_branch_5d4
	End
@ 5c2

Script_branch_5c2: @ 5c2
	ApplyMovement 0x2, Movement_758
	WaitMovement
	Jump Script_branch_500
	End
@ 5d4

Script_branch_5d4: @ 5d4
	ApplyMovement 0x2, Movement_768
	WaitMovement
	Jump Script_branch_500
	End
@ 5e6

Script_branch_5e6: @ 5e6
	SetVar 0x4000, 0x3
	CheckSpritePosition 0x8000, 0x8001
	If 0x8001, 0x7
	CompareLastResultJump EQUAL, Script_branch_607
	Jump Script_branch_619
	End
@ 607

Script_branch_607: @ 607
	ApplyMovement 0x3, Movement_774
	WaitMovement
	Jump Script_branch_500
	End
@ 619

Script_branch_619: @ 619
	ApplyMovement 0x3, Movement_784
	WaitMovement
	Jump Script_branch_500
	End
@ 62b

Script_branch_62b: @ 62b
	SetVar 0x4000, 0x4
	CheckSpritePosition 0x8000, 0x8001
	If 0x8001, 0x9
	CompareLastResultJump EQUAL, Script_branch_64c
	Jump Script_branch_65e
	End
@ 64c

Script_branch_64c: @ 64c
	ApplyMovement 0x4, Movement_790
	WaitMovement
	Jump Script_branch_500
	End
@ 65e

Script_branch_65e: @ 65e
	ApplyMovement 0x4, Movement_7a4
	WaitMovement
	Jump Script_branch_500
	End
@ 670

Script_branch_670: @ 670
	SetVar 0x4000, 0x5
	CheckSpritePosition 0x8000, 0x8001
	If 0x8000, 0x8
	CompareLastResultJump EQUAL, Script_branch_691
	Jump Script_branch_6a3
	End
@ 691

Script_branch_691: @ 691
	ApplyMovement 0x5, Movement_7b8
	WaitMovement
	Jump Script_branch_500
	End
@ 6a3

Script_branch_6a3: @ 6a3
	ApplyMovement 0x5, Movement_7c8
	WaitMovement
	Jump Script_branch_500
	End
@ 6b5

.byte 0x0 @ 0x6b5
.byte 0x0 @ 0x6b6
.byte 0x0 @ 0x6b7

Movement_6b8: @ 6b8
	WalkDownFast 0x2
	EndMovement 0x0
@ 6c0

Movement_6c0: @ 6c0
	SeeUp 0x1
	EndMovement 0x0
@ 6c8

Movement_6c8: @ 6c8
	WalkDownFast 0x2
	WalkLeftFast 0x1
	SeeRight 0x1
	EndMovement 0x0
@ 6d8

Movement_6d8: @ 6d8
	WalkRightFast 0x1
	SeeDown 0x1
	EndMovement 0x0
@ 6e4

Movement_6e4: @ 6e4
	SeeDown 0x1
	WalkLeftVeryFast 0x1
	SeeRight 0x1
	EndMovement 0x0
@ 6f4

Movement_6f4: @ 6f4
	WalkRightVeryFast 0x1
	SeeDown 0x1
	EndMovement 0x0
@ 700

Movement_700: @ 700
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 70c

Movement_70c: @ 70c
	WalkUpFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 718

Movement_718: @ 718
	SeeUp 0x1
	EndMovement 0x0
@ 720

Movement_720: @ 720
	WalkUpVeryFast  0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 72c

Movement_72c: @ 72c
	WalkDownVeryFast  0x1
	WalkLeftVeryFast 0x3
	WalkUpVeryFast  0x7
	WalkLeftVeryFast 0x2
	EndMovement 0x0
@ 740

Movement_740: @ 740
	WalkLeftVeryFast 0x1
	WalkUpVeryFast  0x1
	WalkLeftVeryFast 0x2
	WalkUpVeryFast  0x5
	WalkLeftVeryFast 0x2
	EndMovement 0x0
@ 758

Movement_758: @ 758
	WalkRightVeryFast 0x1
	WalkUpVeryFast  0x2
	WalkRightVeryFast 0x3
	EndMovement 0x0
@ 768

Movement_768: @ 768
	WalkUpVeryFast  0x2
	WalkRightVeryFast 0x4
	EndMovement 0x0
@ 774

Movement_774: @ 774
	WalkLeftVeryFast 0x1
	WalkUpVeryFast  0x4
	WalkLeftVeryFast 0x2
	EndMovement 0x0
@ 784

Movement_784: @ 784
	WalkUpVeryFast  0x4
	WalkLeftVeryFast 0x3
	EndMovement 0x0
@ 790

Movement_790: @ 790
	WalkDownVeryFast  0x1
	WalkRightVeryFast 0x4
	WalkUpVeryFast  0x7
	WalkRightVeryFast 0x2
	EndMovement 0x0
@ 7a4

Movement_7a4: @ 7a4
	WalkUpVeryFast  0x1
	WalkRightVeryFast 0x4
	WalkUpVeryFast  0x5
	WalkRightVeryFast 0x2
	EndMovement 0x0
@ 7b8

Movement_7b8: @ 7b8
	WalkLeftVeryFast 0x1
	WalkUpVeryFast  0x5
	WalkRightVeryFast 0x2
	EndMovement 0x0
@ 7c8

Movement_7c8: @ 7c8
	WalkRightVeryFast 0x3
	WalkUpVeryFast  0x5
	WalkLeftVeryFast 0x2
	EndMovement 0x0
@ 7d8

@ end_0x7d8
