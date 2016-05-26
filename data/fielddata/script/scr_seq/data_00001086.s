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
	SetFlag 0x980
	End
@ 38

Script_4: @ 38
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x1
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_6e
	If 0x800c, 0x1
	CompareLastResultJump 0x1, Script_branch_63
	End
@ 63

Script_branch_63: @ 63
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6e

Script_branch_6e: @ 6e
	Message 0x2
	CloseMsgOnKeyPress
	TrainerBattle 0x1a0, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_191
	Message 0x4
	CloseMsgOnKeyPress
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_bc
	If 0x800c, 0x2
	CompareLastResultJump 0x1, Script_branch_ec
	If 0x800c, 0x3
	CompareLastResultJump 0x1, Script_branch_114
	End
@ bc

Script_branch_bc: @ bc
	ApplyMovement 0x2, Movement_198
	ApplyMovement 0xff, Movement_1e0
	WaitMovement
	Call Function_13c
	ApplyMovement 0x3, Movement_1b4
	ApplyMovement 0xff, Movement_204
	WaitMovement
	Jump Script_branch_166
@ ec

Script_branch_ec: @ ec
	ApplyMovement 0x2, Movement_198
	ApplyMovement 0xff, Movement_1f0
	WaitMovement
	Call Function_13c
	ApplyMovement 0x3, Movement_1c0
	WaitMovement
	Jump Script_branch_166
@ 114

Script_branch_114: @ 114
	ApplyMovement 0x2, Movement_1a4
	ApplyMovement 0xff, Movement_1fc
	WaitMovement
	Call Function_13c
	ApplyMovement 0x3, Movement_1d0
	WaitMovement
	Jump Script_branch_166
@ 13c

Function_13c: @ 13c
	RemovePeople 0x2
	RemovePeople 0x3
	ChangeOwPosition 0x3, 0x1d2, 0x213
	ReleaseOw 0x3, 0x0
	ChangeOwMovement 0x3, 0xe
	ClearFlag 0x1ac
	AddPeople 0x3
	Lock 0x3
	Return
@ 166

Script_branch_166: @ 166
	Message 0x5
	SetVarHero 0x0
	SetVarItem 0x1, 0x1b7
	Soundfr 0x486
	Message 0x6
	Cmd_4f
	GiveItem 0x1b7, 0x1, 0x800c
	SetFlag 0xa6
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 191

Script_branch_191: @ 191
	LostGoPc
	ReleaseAll
	End
@ 197

.byte 0x0 @ 0x197

Movement_198: @ 198
	WalkLeftVeryFast 0x3
	WalkDownVeryFast  0x9
	EndMovement 0x0
@ 1a4

Movement_1a4: @ 1a4
	WalkDownVeryFast  0x2
	WalkLeftVeryFast 0x3
	WalkDownVeryFast  0x7
	EndMovement 0x0
@ 1b4

Movement_1b4: @ 1b4
	WalkUpFast 0x8
	WalkLeftFast 0x2
	EndMovement 0x0
@ 1c0

Movement_1c0: @ 1c0
	WalkUpFast 0x8
	WalkLeftFast 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ 1d0

Movement_1d0: @ 1d0
	WalkUpFast 0x8
	WalkLeftFast 0x4
	MoveUpFast 0x1
	EndMovement 0x0
@ 1e0

Movement_1e0: @ 1e0
	MoveLeftFast 0x1
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 1f0

Movement_1f0: @ 1f0
	Move_3f 0x3
	MoveDownFast 0x1
	EndMovement 0x0
@ 1fc

Movement_1fc: @ 1fc
	MoveDownFast 0x1
	EndMovement 0x0
@ 204

Movement_204: @ 204
	Move_3f 0x8
	Move_3e 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 214

.byte 0x3f @ 0x214
.byte 0x0 @ 0x215
.byte 0x8 @ 0x216
.byte 0x0 @ 0x217
.byte 0x21 @ 0x218
.byte 0x0 @ 0x219
.byte 0x1 @ 0x21a
.byte 0x0 @ 0x21b
.byte 0xfe @ 0x21c
.byte 0x0 @ 0x21d
.byte 0x0 @ 0x21e
.byte 0x0 @ 0x21f
.byte 0x3f @ 0x220
.byte 0x0 @ 0x221
.byte 0x9 @ 0x222
.byte 0x0 @ 0x223
.byte 0x21 @ 0x224
.byte 0x0 @ 0x225
.byte 0x1 @ 0x226
.byte 0x0 @ 0x227
.byte 0xfe @ 0x228
.byte 0x0 @ 0x229
.byte 0x0 @ 0x22a
.byte 0x0 @ 0x22b

Script_3: @ 22c
	LockAll
	ApplyMovement 0xff, Movement_264
	ApplyMovement 0x3, Movement_25c
	WaitMovement
	Call Function_24a
	ReleaseAll
	End
@ 24a

Function_24a: @ 24a
	SetVar 0x40f1, 0x1
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	Return
@ 259

.byte 0x0 @ 0x259
.byte 0x0 @ 0x25a
.byte 0x0 @ 0x25b

Movement_25c: @ 25c
	MoveRightFast 0x1
	EndMovement 0x0
@ 264

Movement_264: @ 264
	SeeLeft 0x1
	EndMovement 0x0
@ 26c

Script_2: @ 26c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xa6
	CompareLastResultJump 0x1, Script_branch_289
	Call Function_24a
	ReleaseAll
	End
@ 289

Script_branch_289: @ 289
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 294

Script_5: @ 294
	LockAll
	ApplyMovement 0xff, Movement_2e0
	ApplyMovement 0x4, Movement_2e8
	WaitMovement
	Message 0x9
	ApplyMovement 0x4, Movement_2f4
	WaitMovement
	Message 0xa
	CloseMsgOnKeyPress
	ApplyMovement 0x4, Movement_2fc
	WaitMovement
	SetVar 0x4074, 0x2
	SetFlag 0x299
	Return2 0xc, 0x800c
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2df

.byte 0x0 @ 0x2df

Movement_2e0: @ 2e0
	MoveRightFast 0x1
	EndMovement 0x0
@ 2e8

Movement_2e8: @ 2e8
	Exclamation 0x1
	WalkLeftFast 0x2
	EndMovement 0x0
@ 2f4

Movement_2f4: @ 2f4
	MoveUpFast 0x1
	EndMovement 0x0
@ 2fc

Movement_2fc: @ 2fc
	MoveLeftFast 0x1
	EndMovement 0x0
@ 304

Script_6: @ 304
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 317

Script_7: @ 317
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xc
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 32a

Script_8: @ 32a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 33d

Script_9: @ 33d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 350

Script_10: @ 350
	CallMessageBox 0xf, 0x0, 0x0, 0x800c
	TypeMessageBox 0x3
	NoMapMessageBox
	StoreMenuStatus 0x800c
	CallStandard 0x7d0
	End
@ 367

Script_11: @ 367
	PlayFanfare 0x5dc
	LockAll
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 378

Script_12: @ 378
	PlayFanfare 0x5dc
	LockAll
	Message 0x11
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 389

.byte 0x0 @ 0x389
.byte 0x0 @ 0x38a
.byte 0x0 @ 0x38b

@ end_0x38c
