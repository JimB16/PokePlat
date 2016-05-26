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
	.hword 0xfd13
@ 3e

Script_1: @ 3e
	CheckFlag 0x97d
	CompareLastResultJump 0x1, Script_branch_4b
	End
@ 4b

Script_branch_4b: @ 4b
	ChangeOwPosition 0x0, 0x9, 0x6
	End
@ 55

Script_2: @ 55
	GalactAnm
	End
@ 59

Script_3: @ 59
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x97d
	CompareLastResultJump 0x1, Script_branch_109
	CheckFlag 0xad
	CompareLastResultJump 0x1, Script_branch_114
	Message 0x0
	CloseMsgOnKeyPress
	TrainerBattle 0x199, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_11f
	SetFlag 0xad
	SetVar 0x410d, 0x1
	Message 0x1
	CloseMsgOnKeyPress
	CheckFacePosition 0x8004
	CopyVar 0x4002, 0x8004
	If 0x8004, 0x0
	CompareLastResultJump 0x1, Script_branch_d5
	If 0x8004, 0x2
	CompareLastResultJump 0x1, Script_branch_e5
	If 0x8004, 0x3
	CompareLastResultJump 0x1, Script_branch_f5
	End
@ d5

Script_branch_d5: @ d5
	ApplyMovement 0x0, Movement_128
	WaitMovement
	Jump Script_branch_105
@ e5

Script_branch_e5: @ e5
	ApplyMovement 0x0, Movement_134
	WaitMovement
	Jump Script_branch_105
@ f5

Script_branch_f5: @ f5
	ApplyMovement 0x0, Movement_140
	WaitMovement
	Jump Script_branch_105
@ 105

Script_branch_105: @ 105
	ReleaseAll
	End
@ 109

Script_branch_109: @ 109
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 114

Script_branch_114: @ 114
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 11f

Script_branch_11f: @ 11f
	LostGoPc
	ReleaseAll
	End
@ 125

.byte 0x0 @ 0x125
.byte 0x0 @ 0x126
.byte 0x0 @ 0x127

Movement_128: @ 128
	WalkRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 134

Movement_134: @ 134
	WalkDownFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 140

Movement_140: @ 140
	WalkRightFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 14c

Script_4: @ 14c
	PlayFanfare 0x5dc
	LockAll
	CheckFlag 0x97d
	CompareLastResultJump 0x1, Script_branch_168
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 168

Script_branch_168: @ 168
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 173

Script_5: @ 173
	PlayFanfare 0x5dc
	LockAll
	CheckFlag 0x97d
	CompareLastResultJump 0x1, Script_branch_18f
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 18f

Script_branch_18f: @ 18f
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 19a

Script_6: @ 19a
	PlayFanfare 0x5dc
	LockAll
	CheckFlag 0x97d
	CompareLastResultJump 0x1, Script_branch_1b6
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1b6

Script_branch_1b6: @ 1b6
	Message 0x12
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1c1

Script_7: @ 1c1
	End
@ 1c3

Script_8: @ 1c3
	End
@ 1c5

Script_9: @ 1c5
	End
@ 1c7

Script_10: @ 1c7
	PlayFanfare 0x5dc
	LockAll
	CheckFlag 0x97d
	CompareLastResultJump 0x1, Script_branch_347
	Message 0xa
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_1fb
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_341
	End
@ 1fb

Script_branch_1fb: @ 1fb
	SetVar 0x410d, 0x0
	PlayFanfare 0x5e5
	SetVarHero 0x0
	Message 0xb
	CloseMsgOnKeyPress
	ClearFlag 0x295
	SetFlag 0x97d
	GalactAnm2
	Return2 0x1e, 0x800c
	ApplyMovement 0x2, Movement_36c
	ApplyMovement 0x1, Movement_374
	ApplyMovement 0x3, Movement_37c
	WaitMovement
	ChangeOwPosition 0x2, 0x2, 0x6
	ChangeOwPosition 0x1, 0xe, 0x6
	ChangeOwPosition 0x3, 0x8, 0xc
	Call Function_296
	Call Function_296
	Call Function_296
	RemovePeople 0x2
	RemovePeople 0x1
	RemovePeople 0x3
	If 0x4002, 0x0
	CompareLastResultJump 0x1, Script_branch_2c0
	If 0x4002, 0x2
	CompareLastResultJump 0x1, Script_branch_2da
	If 0x4002, 0x3
	CompareLastResultJump 0x1, Script_branch_2f4
	End
@ 296

Function_296: @ 296
	RemovePeople 0x2
	RemovePeople 0x1
	RemovePeople 0x3
	Return2 0x2, 0x800c
	ClearFlag 0x236
	AddPeople 0x2
	AddPeople 0x1
	AddPeople 0x3
	Return2 0x2, 0x800c
	Return
@ 2c0

Script_branch_2c0: @ 2c0
	ApplyMovement 0x0, Movement_354
	ApplyMovement 0xff, Movement_384
	WaitMovement
	Jump Script_branch_30e
@ 2d8

.byte 0x2 @ 0x2d8
.byte 0x0 @ 0x2d9

Script_branch_2da: @ 2da
	ApplyMovement 0x0, Movement_360
	ApplyMovement 0xff, Movement_38c
	WaitMovement
	Jump Script_branch_30e
@ 2f2

.byte 0x2 @ 0x2f2
.byte 0x0 @ 0x2f3

Script_branch_2f4: @ 2f4
	ApplyMovement 0x0, Movement_354
	ApplyMovement 0xff, Movement_384
	WaitMovement
	Jump Script_branch_30e
@ 30c

.byte 0x2 @ 0x30c
.byte 0x0 @ 0x30d

Script_branch_30e: @ 30e
	Message 0x3
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	RemovePeople 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetFlag 0x235
	ClearFlag 0x182
	SetVar 0x40a9, 0x1
	ReleaseAll
	End
@ 341

Script_branch_341: @ 341
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 347

Script_branch_347: @ 347
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 352

.byte 0x0 @ 0x352
.byte 0x0 @ 0x353

Movement_354: @ 354
	Move_3f 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 360

Movement_360: @ 360
	Move_3f 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 36c

Movement_36c: @ 36c
	WalkDownFast 0x2
	EndMovement 0x0
@ 374

Movement_374: @ 374
	WalkDownFast 0x2
	EndMovement 0x0
@ 37c

Movement_37c: @ 37c
	WalkDownFast 0x2
	EndMovement 0x0
@ 384

Movement_384: @ 384
	MoveRightFast 0x1
	EndMovement 0x0
@ 38c

Movement_38c: @ 38c
	MoveDownFast 0x1
	EndMovement 0x0
@ 394

Script_14: @ 394
	LockAll
	ApplyMovement 0x0, Movement_3bc
	WaitMovement
	Message 0x4
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_3b4
	WaitMovement
	ReleaseAll
	End
@ 3b3

.byte 0x0 @ 0x3b3

Movement_3b4: @ 3b4
	WalkUpFast 0x1
	EndMovement 0x0
@ 3bc

Movement_3bc: @ 3bc
	MoveDownFast 0x1
	EndMovement 0x0
@ 3c4

Script_11: @ 3c4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3d7

Script_12: @ 3d7
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3ea

Script_13: @ 3ea
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3fd

Script_15: @ 3fd
	PlayFanfare 0x5dc
	LockAll
	CheckFlag 0xad
	CompareLastResultJump 0x1, Script_branch_450
	ApplyMovement 0x4, Movement_470
	WaitMovement
	Message 0x5
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_460
	WaitMovement
	Return2 0x14, 0x800c
	Message 0x6
	Message 0x7
	CloseMsgOnKeyPress
	Return2 0x14, 0x800c
	ApplyMovement 0x0, Movement_468
	WaitMovement
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 450

Script_branch_450: @ 450
	FacePlayer
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 45d

.byte 0x0 @ 0x45d
.byte 0x0 @ 0x45e
.byte 0x0 @ 0x45f

Movement_460: @ 460
	MoveLeftFast 0x1
	EndMovement 0x0
@ 468

Movement_468: @ 468
	MoveUpFast 0x1
	EndMovement 0x0
@ 470

Movement_470: @ 470
	MoveUpFast 0x1
	EndMovement 0x0
@ 478

@ end_0x478
