.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	.hword 0xfd13
@ 1e

Script_7: @ 1e
	End
@ 20

Script_1: @ 20
	End
@ 22

Script_2: @ 22
	LockAll
	ApplyMovement 0xff, Movement_194
	WaitMovement
	CheckSpritePosition 0x4000, 0x4001
	If 0x4000, 0x5
	CompareLastResultCall EQUAL, Script_branch_17d
	ShowMoney 0x14, 0x2
	Message 0x0
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_6a
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_156
	End
@ 6a

Script_branch_6a: @ 6a
	CheckBoxesNumber 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x5, Script_branch_8c
	CheckPartyNumber 0x800c
	If 0x800c, 0x6
	CompareLastResultJump EQUAL, Script_branch_168
Script_branch_8c: @ 8c
	Message 0x1
	CheckMoney 0x800c, 0x1f4
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_141
	PlayFanfare 0x644
	TakeMoney 500
	UpdateMoney
	Message 0x2
	SetVarHero 0x0
	Message 0x3
	Message 0x4
	CloseMsgOnKeyPress
	HideMoney
	CheckSpritePosition 0x8004, 0x8005
	If 0x8004, 0x4
	CompareLastResultJump EQUAL, Script_branch_e2
	If 0x8004, 0x5
	CompareLastResultJump EQUAL, Script_branch_f2
	End
@ e2

Script_branch_e2: @ e2
	ApplyMovement 0xff, Movement_19c
	WaitMovement
	Jump Script_branch_102
@ f2

Script_branch_f2: @ f2
	ApplyMovement 0xff, Movement_1b4
	WaitMovement
	Jump Script_branch_102
@ 102

Script_branch_102: @ 102
	SetVar 0x40da, 0x1
	GreatMarshFunction 0x0
	WarpMapElevator 0x7d, 0x2, 0x5, 0x2, 0x1
	PlayFanfare 0x603
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x1fd, 0x0, 0x44, 0x74, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 141

Script_branch_141: @ 141
	Message 0x6
	CloseMsgOnKeyPress
	HideMoney
	ApplyMovement 0xff, Movement_1c4
	WaitMovement
	ReleaseAll
	End
@ 156

Script_branch_156: @ 156
	CloseMsgOnKeyPress
	HideMoney
	ApplyMovement 0xff, Movement_1c4
	WaitMovement
	ReleaseAll
	End
@ 168

Script_branch_168: @ 168
	HideMoney
	Message 0x7
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_1c4
	WaitMovement
	ReleaseAll
	End
@ 17d

Script_branch_17d: @ 17d
	ApplyMovement 0xff, Movement_18c
	WaitMovement
	Return
@ 189

.byte 0x0 @ 0x189
.byte 0x0 @ 0x18a
.byte 0x0 @ 0x18b

Movement_18c: @ 18c
	WalkLeftFast 0x1
	EndMovement 0x0
@ 194

Movement_194: @ 194
	MoveLeftFast 0x1
	EndMovement 0x0
@ 19c

Movement_19c: @ 19c
	MoveUpFast 0x1
	WalkUpFast 0x3
	WalkRightFast 0x1
	WalkUpFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 1b4

Movement_1b4: @ 1b4
	MoveUpFast 0x1
	WalkUpFast 0x4
	WaitDisappear 0x1
	EndMovement 0x0
@ 1c4

Movement_1c4: @ 1c4
	WalkDownFast 0x1
	EndMovement 0x0
@ 1cc

Script_3: @ 1cc
	LockAll
	Message 0x9
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1f1
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_24e
	End
@ 1f1

Script_branch_1f1: @ 1f1
	Message 0xa
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_280
	WaitMovement
	SetVar 0x40da, 0x0
	GreatMarshFunction 0x1
	Cmd_31b 0x4002
	If 0x4002, 0x5
	CompareLastResultJump 0x4, Script_branch_21e
	ReleaseAll
	End
@ 21e

Script_branch_21e: @ 21e
	CheckFlag 0xa3
	CompareLastResultJump EQUAL, Script_branch_24a
	ApplyMovement 0x2, Movement_334
	WaitMovement
	Message 0x12
	SetVar 0x8004, 0x16
	CallStandard 0x7d9
	SetFlag 0xa3
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 24a

Script_branch_24a: @ 24a
	ReleaseAll
	End
@ 24e

Script_branch_24e: @ 24e
	CloseMsgOnKeyPress
	ApplyMovement 0xff, Movement_288
	WaitMovement
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x1fd, 0x0, 0x44, 0x74, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 280

Movement_280: @ 280
	WalkDownFast 0x5
	EndMovement 0x0
@ 288

Movement_288: @ 288
	SeeUp 0x1
	WalkUpFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 298

Script_4: @ 298
	LockAll
	ApplyMovement 0xff, Movement_280
	WaitMovement
	SetVar 0x40da, 0x0
	Cmd_31b 0x4002
	If 0x4002, 0x5
	CompareLastResultJump 0x4, Script_branch_21e
	ReleaseAll
	End
@ 2bf

Script_5: @ 2bf
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xc
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_2ea
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2f5
	End
@ 2ea

Script_branch_2ea: @ 2ea
	Message 0xd
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2f5

Script_branch_2f5: @ 2f5
	Message 0xe
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 300

Script_6: @ 300
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xa3
	CompareLastResultJump EQUAL, Script_branch_31e
	Message 0xf
	Jump Script_branch_329
@ 31c

.byte 0x2 @ 0x31c
.byte 0x0 @ 0x31d

Script_branch_31e: @ 31e
	Message 0x13
	Jump Script_branch_329
@ 327

.byte 0x2 @ 0x327
.byte 0x0 @ 0x328

Script_branch_329: @ 329
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 331

.byte 0x0 @ 0x331
.byte 0x0 @ 0x332
.byte 0x0 @ 0x333

Movement_334: @ 334
	WalkRightFast 0x4
	MoveUpFast 0x1
	EndMovement 0x0
@ 340

.byte 0xe @ 0x340
.byte 0x0 @ 0x341
.byte 0x1 @ 0x342
.byte 0x0 @ 0x343
.byte 0x23 @ 0x344
.byte 0x0 @ 0x345
.byte 0x1 @ 0x346
.byte 0x0 @ 0x347
.byte 0xfe @ 0x348
.byte 0x0 @ 0x349
.byte 0x0 @ 0x34a
.byte 0x0 @ 0x34b
.byte 0xf @ 0x34c
.byte 0x0 @ 0x34d
.byte 0x1 @ 0x34e
.byte 0x0 @ 0x34f
.byte 0x22 @ 0x350
.byte 0x0 @ 0x351
.byte 0x1 @ 0x352
.byte 0x0 @ 0x353
.byte 0xfe @ 0x354
.byte 0x0 @ 0x355
.byte 0x0 @ 0x356
.byte 0x0 @ 0x357

@ end_0x358
