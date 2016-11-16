.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	.hword 0xfd13
@ 1a

Script_1: @ 1a
	SetFlag 0x9eb
	SetFlag 0x257
	SetFlag 0x258
	CheckFlag 0xab6
	CompareLastResultJump LESSER, Script_branch_33
	End
@ 33

Script_branch_33: @ 33
	CheckIdPlayer 0x404c, 0x5
	ScriptCmd_AddValue 0x404c, 0x5
	SetFlag 0xab6
	Cmd_24 0x37c
	Cmd_24 0x37d
	End
@ 4d

Script_2: @ 4d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_4a8
	WaitMovement
	ReleaseAll
	End
@ 6a

Script_3: @ 6a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ApplyMovement 0x1, Movement_4b0
	WaitMovement
	ReleaseAll
	End
@ 87

Script_4: @ 87
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	ClearTrainerId 0x37c
	CompareLastResultJump EQUAL, Script_branch_396
	ClearTrainerId 0x37d
	CompareLastResultJump EQUAL, Script_branch_396
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_cb
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_e5
	Jump Script_branch_ff
@ c9

.byte 0x2 @ 0xc9
.byte 0x0 @ 0xca

Script_branch_cb: @ cb
	ApplyMovement 0x2, Movement_3ec
	ApplyMovement 0xff, Movement_42c
	WaitMovement
	Jump Script_branch_ff
@ e3

.byte 0x2 @ 0xe3
.byte 0x0 @ 0xe4

Script_branch_e5: @ e5
	ApplyMovement 0x2, Movement_3f4
	ApplyMovement 0xff, Movement_43c
	WaitMovement
	Jump Script_branch_ff
@ fd

.byte 0x2 @ 0xfd
.byte 0x0 @ 0xfe

Script_branch_ff: @ ff
	CheckFlag 0x166
	CompareLastResultCall LESSER, Script_branch_45a
	CheckFlag 0x166
	CompareLastResultCall EQUAL, Script_branch_467
	SetFlag 0x166
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_471
	SetTrainerId 0x37c
	SetTrainerId 0x37d
	Message 0x5
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_3fc
	WaitMovement
	SetVar 0x404d, 0x0
	SetVar 0x8005, 0x0
	ClearFlag 0x257
	AddPeople 0x5
	ApplyMovement 0x5, Movement_420
	WaitMovement
	Message 0xf
	CloseMsgOnKeyPress
	TrainerBattle 0x381, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_484
	ScriptCmd_AddValue 0x8005, 0x404d
	Message 0x10
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_414
	WaitMovement
	ApplyMovement 0x5, Movement_420
	WaitMovement
	Message 0x11
	CloseMsgOnKeyPress
	TrainerBattle 0x382, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_484
	ScriptCmd_AddValue 0x8005, 0x404d
	Message 0x12
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_414
	WaitMovement
	ApplyMovement 0x5, Movement_420
	WaitMovement
	Message 0x13
	CloseMsgOnKeyPress
	TrainerBattle 0x383, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_484
	ScriptCmd_AddValue 0x8005, 0x404d
	Message 0x14
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_414
	WaitMovement
	ApplyMovement 0x5, Movement_420
	WaitMovement
	Message 0x15
	CloseMsgOnKeyPress
	TrainerBattle 0x384, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_484
	ScriptCmd_AddValue 0x8005, 0x404d
	Message 0x16
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_414
	WaitMovement
	ApplyMovement 0x2, Movement_408
	WaitMovement
	SetVariableNumber 0x0, 0x404c
	SetVariableNumber 0x1, 0x8005
	Message 0x6
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_3fc
	WaitMovement
	ApplyMovement 0x5, Movement_420
	WaitMovement
	Message 0x17
	CloseMsgOnKeyPress
	TrainerBattle 0x385, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_484
	ScriptCmd_AddValue 0x8005, 0x404d
	Message 0x18
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_414
	WaitMovement
	RemovePeople 0x5
	ApplyMovement 0x2, Movement_408
	WaitMovement
	SetVariableNumber 0x0, 0x404c
	SetVariableNumber 0x1, 0x8005
	Message 0x7
	If2 0x8005, 0x404c
	CompareLastResultJump 0x5, Script_branch_44c
	CheckIdPlayer 0x8006, 0x2
	If 0x8006, 0x0
	CompareLastResultCall EQUAL, Script_branch_3a1
	If 0x8006, 0x1
	CompareLastResultCall EQUAL, Script_branch_3b7
	CloseMsgOnKeyPress
	ApplyMovement 0x2, Movement_3fc
	WaitMovement
	ClearFlag 0x258
	AddPeople 0x4
	ApplyMovement 0x4, Movement_420
	WaitMovement
	If 0x8006, 0x0
	CompareLastResultCall EQUAL, Script_branch_3cd
	If 0x8006, 0x1
	CompareLastResultCall EQUAL, Script_branch_3d2
	CloseMsgOnKeyPress
	TrainerBattle 0x8007, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_484
	SetTrainerId 0x37c
	SetTrainerId 0x37d
	If 0x8006, 0x0
	CompareLastResultCall EQUAL, Script_branch_3d7
	If 0x8006, 0x1
	CompareLastResultCall EQUAL, Script_branch_3dc
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_414
	WaitMovement
	RemovePeople 0x4
	ApplyMovement 0x2, Movement_408
	WaitMovement
	If 0x8006, 0x0
	CompareLastResultCall EQUAL, Script_branch_3e1
	If 0x8006, 0x1
	CompareLastResultCall EQUAL, Script_branch_3e6
	Jump Script_branch_396
@ 394

.byte 0x2 @ 0x394
.byte 0x0 @ 0x395

Script_branch_396: @ 396
	Message 0xd
	Jump Script_branch_47c
@ 39f

.byte 0x2 @ 0x39f
.byte 0x0 @ 0x3a0

Script_branch_3a1: @ 3a1
	SetVar 0x8007, 0x37c
	SetVar 0x4020, 0x3e
	Cmd_2f3 0x2, 0x8007
	Message 0x8
	Return
@ 3b7

Script_branch_3b7: @ 3b7
	SetVar 0x8007, 0x37d
	SetVar 0x4020, 0x3f
	Cmd_2f3 0x2, 0x8007
	Message 0x9
	Return
@ 3cd

Script_branch_3cd: @ 3cd
	Message 0x19
	Return
@ 3d2

Script_branch_3d2: @ 3d2
	Message 0x1b
	Return
@ 3d7

Script_branch_3d7: @ 3d7
	Message 0x1a
	Return
@ 3dc

Script_branch_3dc: @ 3dc
	Message 0x1c
	Return
@ 3e1

Script_branch_3e1: @ 3e1
	Message 0xa
	Return
@ 3e6

Script_branch_3e6: @ 3e6
	Message 0xb
	Return
@ 3eb

.byte 0x0 @ 0x3eb

Movement_3ec: @ 3ec
	MoveRightFast 0x1
	EndMovement 0x0
@ 3f4

Movement_3f4: @ 3f4
	MoveRightFast 0x1
	EndMovement 0x0
@ 3fc

Movement_3fc: @ 3fc
	WalkUpFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 408

Movement_408: @ 408
	WalkDownFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 414

Movement_414: @ 414
	MoveLeftFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 420

Movement_420: @ 420
	Move_46 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 42c

Movement_42c: @ 42c
	WalkRightFast 0x1
	WalkUpFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 43c

Movement_43c: @ 43c
	WalkRightFast 0x1
	WalkDownFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 44c

Script_branch_44c: @ 44c
	Message 0xc
	Message 0xd
	Jump Script_branch_47c
@ 458

.byte 0x2 @ 0x458
.byte 0x0 @ 0x459

Script_branch_45a: @ 45a
	Message 0x2
	SetVariableNumber 0x0, 0x404c
	Message 0x3
	Return
@ 467

Script_branch_467: @ 467
	SetVariableNumber 0x0, 0x404c
	Message 0x3
	Return
@ 471

Script_branch_471: @ 471
	Message 0x4
	Jump Script_branch_47c
@ 47a

.byte 0x2 @ 0x47a
.byte 0x0 @ 0x47b

Script_branch_47c: @ 47c
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 484

Script_branch_484: @ 484
	LostGoPc
	ReleaseAll
	End
@ 48a

Script_5: @ 48a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ApplyMovement 0x3, Movement_4c0
	WaitMovement
	ReleaseAll
	End
@ 4a7

.byte 0x0 @ 0x4a7

Movement_4a8: @ 4a8
	SeeDown 0x1
	EndMovement 0x0
@ 4b0

Movement_4b0: @ 4b0
	SeeDown 0x1
	EndMovement 0x0
@ 4b8

.byte 0x3 @ 0x4b8
.byte 0x0 @ 0x4b9
.byte 0x1 @ 0x4ba
.byte 0x0 @ 0x4bb
.byte 0xfe @ 0x4bc
.byte 0x0 @ 0x4bd
.byte 0x0 @ 0x4be
.byte 0x0 @ 0x4bf

Movement_4c0: @ 4c0
	SeeLeft 0x1
	EndMovement 0x0
@ 4c8

Script_6: @ 4c8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 4db

.byte 0x0 @ 0x4db

@ end_0x4dc
