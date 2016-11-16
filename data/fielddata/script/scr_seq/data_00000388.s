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
	Cmd_2f2
	End
@ 1e

Script_2: @ 1e
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x246, 0x0, 0xf, 0x19, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 44

Script_3: @ 44
	LockAll
	ApplyMovement 0x80, Movement_28c
	ApplyMovement 0xff, Movement_204
	WaitMovement
	Message 0x0
	CloseMsgOnKeyPress
	ApplyMovement 0x80, Movement_29c
	WaitMovement
	SetVar 0x4055, 0x8
	End
@ 6f

Script_4: @ 6f
	LockAll
	Message 0x1
	CloseMsgOnKeyPress
	ApplyMovement 0x81, Movement_308
	ApplyMovement 0x80, Movement_2ac
	WaitMovement
	Message 0x2
	Message 0x4
	Cmd_32
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 96

Script_5: @ 96
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	CloseMsgOnKeyPress
	TrainerBattle 0x194, 0x0
	CheckTrainerLost 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1ce
	SetVar 0x4055, 0xa
	Message 0x6
	CloseMsgOnKeyPress
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x56
	CompareLastResultJump EQUAL, Script_branch_e6
	ApplyMovement 0xff, Movement_210
	Jump Script_branch_ee
@ e6

Script_branch_e6: @ e6
	ApplyMovement 0xff, Movement_248
Script_branch_ee: @ ee
	ApplyMovement 0x81, Movement_314
	ApplyMovement 0x80, Movement_2dc
	WaitMovement
	Cmd_312 0x81
	ApplyMovement 0x80, Movement_2bc
	WaitMovement
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x4a
	CompareLastResultJump EQUAL, Script_branch_12f
	ApplyMovement 0xff, Movement_254
	Jump Script_branch_13f
@ 12f

Script_branch_12f: @ 12f
	ApplyMovement 0x80, Movement_2e8
	ApplyMovement 0xff, Movement_264
Script_branch_13f: @ 13f
	Message 0x7
	WaitMovement
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x4a
	CompareLastResultJump EQUAL, Script_branch_16d
	ApplyMovement 0x80, Movement_2f8
	ApplyMovement 0xff, Movement_274
	Jump Script_branch_17d
@ 16d

Script_branch_16d: @ 16d
	ApplyMovement 0x80, Movement_300
	ApplyMovement 0xff, Movement_280
Script_branch_17d: @ 17d
	SetVarHero 0x0
	Message 0x8
	Soundfr 0x48e
	Cmd_4f
	HealPokemon
	WaitMovement
	Message 0x9
	CloseMsgOnKeyPress
	ApplyMovement 0x80, Movement_2c8
	CheckSpritePosition 0x8004, 0x8005
	If 0x8005, 0x4a
	CompareLastResultJump EQUAL, Script_branch_1bb
	ApplyMovement 0xff, Movement_220
	Jump Script_branch_1c3
@ 1bb

Script_branch_1bb: @ 1bb
	ApplyMovement 0xff, Movement_234
Script_branch_1c3: @ 1c3
	WaitMovement
	Message 0xa
	WaitButton
	CloseMsgOnKeyPress
	End
@ 1ce

Script_branch_1ce: @ 1ce
	SetVar 0x4055, 0x9
	LostGoPc
	ReleaseAll
	End
@ 1da

Script_6: @ 1da
	PlayFanfare 0x5dc
	LockAll
	If 0x4055, 0xa
	CompareLastResultJump 0x4, Script_branch_1f8
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1f8

Script_branch_1f8: @ 1f8
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 203

.byte 0x0 @ 0x203

Movement_204: @ 204
	Move_41 0x2
	MoveUpFast 0x1
	EndMovement 0x0
@ 210

Movement_210: @ 210
	WalkRightFast 0x1
	MoveLeftFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 220

Movement_220: @ 220
	WalkLeftFast 0x1
	WalkUpFast 0x7
	WalkRightFast 0x4
	MoveDownFast 0x1
	EndMovement 0x0
@ 234

Movement_234: @ 234
	WalkLeftFast 0x1
	WalkUpFast 0x6
	WalkRightFast 0x4
	MoveDownFast 0x1
	EndMovement 0x0
@ 248

Movement_248: @ 248
	Move_3f 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 254

Movement_254: @ 254
	Move_42 0x2
	Move_41 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 264

Movement_264: @ 264
	Move_42 0x2
	Move_41 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 274

Movement_274: @ 274
	Move_3e 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 280

Movement_280: @ 280
	Move_3e 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 28c

Movement_28c: @ 28c
	Move_41 0x2
	MoveUpFast 0x1
	Move_41 0x2
	EndMovement 0x0
@ 29c

Movement_29c: @ 29c
	WalkRightFast 0x1
	Move_75 0x1
	WalkUpFast 0x7
	EndMovement 0x0
@ 2ac

Movement_2ac: @ 2ac
	Move_3f 0x3
	WalkLeftFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 2bc

Movement_2bc: @ 2bc
	WalkRightFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 2c8

Movement_2c8: @ 2c8
	WalkUpFast 0x6
	WalkRightFast 0x4
	WalkDownFast 0x1
	MoveUpFast 0x1
	EndMovement 0x0
@ 2dc

Movement_2dc: @ 2dc
	Move_41 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 2e8

Movement_2e8: @ 2e8
	Move_42 0x2
	Move_3f 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ 2f8

Movement_2f8: @ 2f8
	MoveDownFast 0x1
	EndMovement 0x0
@ 300

Movement_300: @ 300
	MoveRightFast 0x1
	EndMovement 0x0
@ 308

Movement_308: @ 308
	WalkDownFast 0x4
	MoveLeftFast 0x1
	EndMovement 0x0
@ 314

Movement_314: @ 314
	WalkDownFast 0x7
	Move_76 0x1
	Move_41 0x1
	EndMovement 0x0
@ 324

@ end_0x324
