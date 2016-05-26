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
	.hword 0xfd13
@ 32

Script_1: @ 32
	If 0x407f, 0x1
	CompareLastResultJump 0x4, Script_branch_41
	End
@ 41

Script_branch_41: @ 41
	SetFlag 0x1f3
	End
@ 47

Script_3: @ 47
	LockAll
	ApplyMovement 0x6, Movement_9c
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_88
	Jump Script_branch_72
@ 70

.byte 0x2 @ 0x70
.byte 0x0 @ 0x71

Script_branch_72: @ 72
	ApplyMovement 0x6, Movement_a4
	ApplyMovement 0xff, Movement_ac
	WaitMovement
	ReleaseAll
	End
@ 88

Script_branch_88: @ 88
	CheckFlag 0x964
	CompareLastResultJump 0x0, Script_branch_72
	Jump Script_branch_111
@ 99

.byte 0x0 @ 0x99
.byte 0x0 @ 0x9a
.byte 0x0 @ 0x9b

Movement_9c: @ 9c
	MoveLeftFast 0x1
	EndMovement 0x0
@ a4

Movement_a4: @ a4
	MoveDownFast 0x1
	EndMovement 0x0
@ ac

Movement_ac: @ ac
	WalkDownFast 0x1
	EndMovement 0x0
@ b4

Script_2: @ b4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckNatPokedexStatus 0x2, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_df
	Jump Script_branch_d4
@ d4

Script_branch_d4: @ d4
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ df

Script_branch_df: @ df
	CheckFlag 0x964
	CompareLastResultJump 0x0, Script_branch_d4
	If 0x407f, 0x0
	CompareLastResultJump 0x1, Script_branch_102
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 102

Script_branch_102: @ 102
	Message 0x0
	CloseMsgOnKeyPress
	Call Function_11b
	ReleaseAll
	End
@ 111

Script_branch_111: @ 111
	Call Function_11b
	ReleaseAll
	End
@ 11b

Function_11b: @ 11b
	Return2 0x1e, 0x800c
	ClearFlag 0x1f3
	AddPeople 0x7
	ApplyMovement 0x7, Movement_16c
	WaitMovement
	Message 0x3
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_164
	ApplyMovement 0x6, Movement_15c
	WaitMovement
	SetVar 0x407f, 0x1
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	Return
@ 159

.byte 0x0 @ 0x159
.byte 0x0 @ 0x15a
.byte 0x0 @ 0x15b

Movement_15c: @ 15c
	SeeDown 0x1
	EndMovement 0x0
@ 164

Movement_164: @ 164
	MoveDownFast 0x1
	EndMovement 0x0
@ 16c

Movement_16c: @ 16c
	WalkUpFast 0x7
	EndMovement 0x0
@ 174

Script_4: @ 174
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 187

Script_5: @ 187
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 19a

Script_6: @ 19a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1ad

Script_7: @ 1ad
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1c0

Script_8: @ 1c0
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	If 0x407f, 0x1
	CompareLastResultJump 0x4, Script_branch_1e0
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1e0

Script_branch_1e0: @ 1e0
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1eb

Script_9: @ 1eb
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1fe

Script_10: @ 1fe
	CallMessageBox 0x12, 0x0, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 215

Script_11: @ 215
	ColorMsgBox 0x3, 0x0
	TypeMessageBox 0x3
	NoMapMessageBox
	CallTextMsgBox 0x13, 0x800c
	CallStandard 0x7d0
	End
@ 22a

Script_12: @ 22a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x964
	CompareLastResultJump 0x0, Script_branch_260
	Message 0xa
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_276
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_26b
	End
@ 260

Script_branch_260: @ 260
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 26b

Script_branch_26b: @ 26b
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 276

Script_branch_276: @ 276
	CheckFlag 0x157
	CompareLastResultCall 0x0, Script_branch_2a0
	Message 0xb
	CloseMsgOnKeyPress
	Call Function_35c
	Call Function_376
	ShipAnm 0x2, 0x3, 0xbc, 0x26f, 0x1b2
	ReleaseAll
	End
@ 2a0

Script_branch_2a0: @ 2a0
	ClearFlag 0x256
	AddPeople 0xa
	Lock 0xa
	CloseMsgOnKeyPress
	ApplyMovement 0xa, Movement_320
	WaitMovement
	Message 0xf
	ApplyMovement 0xff, Movement_30c
	WaitMovement
	CloseMsgOnKeyPress
	ApplyMovement 0xa, Movement_334
	WaitMovement
	Return2 0xf, 0x800c
	Message 0x10
	CloseMsgOnKeyPress
	ApplyMovement 0xa, Movement_33c
	WaitMovement
	Message 0x11
	CloseMsgOnKeyPress
	ApplyMovement 0xa, Movement_348
	WaitMovement
	RemovePeople 0xa
	ApplyMovement 0xff, Movement_318
	WaitMovement
	SetFlag 0x157
	Return
@ 309

.byte 0x0 @ 0x309
.byte 0x0 @ 0x30a
.byte 0x0 @ 0x30b

Movement_30c: @ 30c
	Exclamation 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 318

Movement_318: @ 318
	MoveDownFast 0x1
	EndMovement 0x0
@ 320

Movement_320: @ 320
	WalkLeftFast 0x4
	WalkDownFast 0x2
	WalkLeftFast 0x6
	WalkDownFast 0x2
	EndMovement 0x0
@ 334

Movement_334: @ 334
	WalkRightFast 0x1
	EndMovement 0x0
@ 33c

Movement_33c: @ 33c
	WalkLeftFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 348

Movement_348: @ 348
	WalkUpFast 0x2
	WalkRightFast 0x3
	WalkUpFast 0x2
	WalkRightFast 0x7
	EndMovement 0x0
@ 35c

Function_35c: @ 35c
	ApplyMovement 0x8, Movement_390
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0x8, Movement_39c
	WaitMovement
	Return
@ 376

Function_376: @ 376
	ApplyMovement 0xff, Movement_3a4
	WaitMovement
	PlayFanfare 0x603
	ApplyMovement 0xff, Movement_39c
	WaitMovement
	Return
@ 390

Movement_390: @ 390
	SeeDown 0x1
	Move_40 0x1
	EndMovement 0x0
@ 39c

Movement_39c: @ 39c
	WaitDisappear 0x1
	EndMovement 0x0
@ 3a4

Movement_3a4: @ 3a4
	WalkDownFast 0x1
	Move_40 0x1
	EndMovement 0x0
@ 3b0

@ end_0x3b0
