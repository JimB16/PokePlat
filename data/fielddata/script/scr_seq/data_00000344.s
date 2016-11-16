.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	LockAll
	ApplyMovement 0x0, Movement_e8
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_f0
	WaitMovement
	Message 0x1
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x8
	CompareLastResultJump EQUAL, Script_branch_54
	If 0x8004, 0x9
	CompareLastResultJump EQUAL, Script_branch_64
	End
@ 54

Script_branch_54: @ 54
	ApplyMovement 0x0, Movement_f8
	WaitMovement
	Jump Script_branch_74
@ 64

Script_branch_64: @ 64
	ApplyMovement 0x0, Movement_100
	WaitMovement
	Jump Script_branch_74
@ 74

Script_branch_74: @ 74
	TrainerBattle 0x193, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_e1
	Message 0x2
	SetVar 0x8004, 0x1
	SetVar 0x8005, 0x1
	CheckStoreItem 0x8004, 0x8005, 0x800c
	If 0x800c, 0x1
	CompareLastResultCall EQUAL, Script_branch_db
	Message 0x3
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_110
	WaitMovement
	Message 0x4
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_124
	WaitMovement
	RemovePeople 0x0
	SetVar 0x40d6, 0x1
	ReleaseAll
	End
@ db

Script_branch_db: @ db
	CallStandard 0x7fc
	Return
@ e1

Script_branch_e1: @ e1
	LostGoPc
	ReleaseAll
	End
@ e7

.byte 0x0 @ 0xe7

Movement_e8: @ e8
	MoveDownFast 0x1
	EndMovement 0x0
@ f0

Movement_f0: @ f0
	WalkDownFast 0x1
	EndMovement 0x0
@ f8

Movement_f8: @ f8
	WalkDownFast 0x1
	EndMovement 0x0
@ 100

Movement_100: @ 100
	WalkDownFast 0x1
	WalkRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 110

Movement_110: @ 110
	WalkUpFast 0x1
	WalkRightFast 0x4
	WalkUpFast 0x3
	MoveDownFast 0x1
	EndMovement 0x0
@ 124

Movement_124: @ 124
	WalkRightFast 0x7
	EndMovement 0x0
@ 12c

Script_2: @ 12c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckItem 0x1b8, 0x1, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_154
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 154

Script_branch_154: @ 154
	Message 0x6
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_177
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1ab
	End
@ 177

Script_branch_177: @ 177
	SetVarHero 0x0
	Message 0x7
	WaitButton
	WaitFanfare 0x5dc
	PlayFanfare 0x608
	ApplyMovement 0x1, Movement_1b4
	ApplyMovement 0x2, Movement_1bc
	WaitMovement
	SetFlag 0x226
	RemovePeople 0x1
	RemovePeople 0x2
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1ab

Script_branch_1ab: @ 1ab
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1b1

.byte 0x0 @ 0x1b1
.byte 0x0 @ 0x1b2
.byte 0x0 @ 0x1b3

Movement_1b4: @ 1b4
	WalkLeftVeryFast 0x1
	EndMovement 0x0
@ 1bc

Movement_1bc: @ 1bc
	WalkRightVeryFast 0x1
	EndMovement 0x0
@ 1c4

Script_3: @ 1c4
	PlayFanfare 0x5dc
	LockAll
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1d5

Script_4: @ 1d5
	PlayFanfare 0x5dc
	LockAll
	Message 0x9
	Jump Script_branch_1e6
@ 1e4

.byte 0x2 @ 0x1e4
.byte 0x0 @ 0x1e5

Script_branch_1e6: @ 1e6
	Message 0xa
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	ChoiceMulti 0x10c, 0x0
	ChoiceMulti 0x10d, 0x1
	ChoiceMulti 0x10e, 0x2
	ChoiceMulti 0x10f, 0x3
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_240
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_24b
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_256
	Jump Script_branch_261
@ 23e

.byte 0x2 @ 0x23e
.byte 0x0 @ 0x23f

Script_branch_240: @ 240
	Message 0xb
	Jump Script_branch_1e6
@ 249

.byte 0x2 @ 0x249
.byte 0x0 @ 0x24a

Script_branch_24b: @ 24b
	Message 0xc
	Jump Script_branch_1e6
@ 254

.byte 0x2 @ 0x254
.byte 0x0 @ 0x255

Script_branch_256: @ 256
	Message 0xd
	Jump Script_branch_1e6
@ 25f

.byte 0x2 @ 0x25f
.byte 0x0 @ 0x260

Script_branch_261: @ 261
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 267

.byte 0x0 @ 0x267

@ end_0x268
