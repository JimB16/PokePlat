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

Script_5: @ 22
	SetFlag 0x9f4
	SetFlag 0x282
	SetFlag 0x283
	SetFlag 0x284
	SetFlag 0x285
	ClearFlag 0x286
	ClearFlag 0x287
	ClearFlag 0x288
	ClearFlag 0x289
	ClearFlag 0xb0
	ClearFlag 0xb1
	ClearFlag 0xb2
	ClearFlag 0xb3
	CheckFlag 0xaf
	CompareLastResultJump EQUAL, Script_branch_63
	End
@ 63

Script_branch_63: @ 63
	ChangeOwPosition 0x0, 0xc, 0x3
	End
@ 6d

Script_1: @ 6d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xaf
	CompareLastResultJump EQUAL, Script_branch_f7
	Message 0x2
	CloseMsgOnKeyPress
	Soundfr 0x489
	Cmd_4f
	CheckFacePosition 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_b8
	If 0x800c, 0x2
	CompareLastResultJump EQUAL, Script_branch_c8
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_d8
	End
@ b8

Script_branch_b8: @ b8
	ApplyMovement 0x0, Movement_104
	WaitMovement
	Jump Script_branch_e8
@ c8

Script_branch_c8: @ c8
	ApplyMovement 0x0, Movement_110
	WaitMovement
	Jump Script_branch_e8
@ d8

Script_branch_d8: @ d8
	ApplyMovement 0x0, Movement_11c
	WaitMovement
	Jump Script_branch_e8
@ e8

Script_branch_e8: @ e8
	SetFlag 0xaf
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ f7

Script_branch_f7: @ f7
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 102

.byte 0x0 @ 0x102
.byte 0x0 @ 0x103

Movement_104: @ 104
	WalkRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 110

Movement_110: @ 110
	WalkLeftFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 11c

Movement_11c: @ 11c
	WalkRightFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 128

Script_2: @ 128
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart 0x1
	ReleaseAll
	End
@ 13e

Script_3: @ 13e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart1 0x12
	ReleaseAll
	End
@ 154

Script_4: @ 154
	LockAll
	ClearFlag 0x21d
	AddPeople 0x5
	CallStandard 0x7fa
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0xa
	CompareLastResultJump EQUAL, Script_branch_191
	If 0x8004, 0xb
	CompareLastResultJump EQUAL, Script_branch_1a1
	If 0x8004, 0xc
	CompareLastResultJump EQUAL, Script_branch_1b1
	End
@ 191

Script_branch_191: @ 191
	ApplyMovement 0x5, Movement_2c0
	WaitMovement
	Jump Script_branch_1c1
@ 1a1

Script_branch_1a1: @ 1a1
	ApplyMovement 0x5, Movement_2d0
	WaitMovement
	Jump Script_branch_1c1
@ 1b1

Script_branch_1b1: @ 1b1
	ApplyMovement 0x5, Movement_2d8
	WaitMovement
	Jump Script_branch_1c1
@ 1c1

Script_branch_1c1: @ 1c1
	ApplyMovement 0xff, Movement_2b8
	WaitMovement
	SetVariableRival 0x0
	Message 0x0
	CloseMsgOnKeyPress
	StoreStarter 0x800c
	If 0x800c, 0x183
	CompareLastResultJump EQUAL, Script_branch_203
	If 0x800c, 0x186
	CompareLastResultJump EQUAL, Script_branch_20f
	Jump Script_branch_1f7
@ 1f7

Script_branch_1f7: @ 1f7
	TrainerBattle 0x1df, 0x0
	Jump Script_branch_21b
@ 203

Script_branch_203: @ 203
	TrainerBattle 0x1e0, 0x0
	Jump Script_branch_21b
@ 20f

Script_branch_20f: @ 20f
	TrainerBattle 0x1e1, 0x0
	Jump Script_branch_21b
@ 21b

Script_branch_21b: @ 21b
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2ac
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x1
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0xa
	CompareLastResultJump EQUAL, Script_branch_266
	If 0x8004, 0xb
	CompareLastResultJump EQUAL, Script_branch_276
	If 0x8004, 0xc
	CompareLastResultJump EQUAL, Script_branch_286
	End
@ 266

Script_branch_266: @ 266
	ApplyMovement 0x5, Movement_2e8
	WaitMovement
	Jump Script_branch_296
@ 276

Script_branch_276: @ 276
	ApplyMovement 0x5, Movement_2f8
	WaitMovement
	Jump Script_branch_296
@ 286

Script_branch_286: @ 286
	ApplyMovement 0x5, Movement_300
	WaitMovement
	Jump Script_branch_296
@ 296

Script_branch_296: @ 296
	PlayFanfare 0x603
	RemovePeople 0x5
	WaitFanfare 0x603
	SetVar 0x40ef, 0x1
	ReleaseAll
	End
@ 2ac

Script_branch_2ac: @ 2ac
	SetFlag 0x21d
	LostGoPc
	ReleaseAll
	End
@ 2b6

.byte 0x0 @ 0x2b6
.byte 0x0 @ 0x2b7

Movement_2b8: @ 2b8
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ 2c0

Movement_2c0: @ 2c0
	WalkUpVeryFast  0x3
	WalkLeftVeryFast 0x1
	WalkUpVeryFast  0x3
	EndMovement 0x0
@ 2d0

Movement_2d0: @ 2d0
	WalkUpVeryFast  0x6
	EndMovement 0x0
@ 2d8

Movement_2d8: @ 2d8
	WalkUpVeryFast  0x3
	WalkRightVeryFast 0x1
	WalkUpVeryFast  0x3
	EndMovement 0x0
@ 2e8

Movement_2e8: @ 2e8
	WalkDownVeryFast  0x3
	WalkRightVeryFast 0x1
	WalkDownVeryFast  0x3
	EndMovement 0x0
@ 2f8

Movement_2f8: @ 2f8
	WalkDownVeryFast  0x6
	EndMovement 0x0
@ 300

Movement_300: @ 300
	WalkDownVeryFast  0x3
	WalkLeftVeryFast 0x1
	WalkDownVeryFast  0x3
	EndMovement 0x0
@ 310

Script_6: @ 310
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 323

Script_7: @ 323
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 336

Script_8: @ 336
	SetVar 0x8007, 0x3
	CallStandard 0x7d2
	End
@ 342

.byte 0x0 @ 0x342
.byte 0x0 @ 0x343

@ end_0x344
